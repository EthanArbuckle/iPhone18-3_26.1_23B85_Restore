void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  v4 = *a1;
  v5 = a3 - a2 + 1;
  if (v5 > (a1[1] - *a1) >> 3)
  {
    v7 = 0;
    std::vector<unsigned long>::resize(a1, v5, &v7);
    v4 = *a1;
  }

  ++*(v4 + 8 * v3);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274D52FFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v10 = a2 - 1;
  v109 = a2 - 3;
  v110 = a2 - 2;
  v11 = a1;
  v111 = a2;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:
        v65 = (*a3)(v11 + 1, v11);
        v66 = (*a3)(v10, v11 + 1);
        if (v65)
        {
          v64 = *v11;
          if (v66)
          {
LABEL_110:
            *v11 = *v10;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v64;
            if (!(*a3)(v10, v11 + 1))
            {
              return result;
            }

            v64 = v11[1];
            v11[1] = *v10;
          }

          *v10 = v64;
          return result;
        }

        if (!v66)
        {
          return result;
        }

        v103 = v11[1];
        v11[1] = *v10;
        *v10 = v103;
        goto LABEL_185;
      case 4uLL:
        v67 = (*a3)(v11 + 1, v11);
        v68 = (*a3)(v11 + 2, v11 + 1);
        if (v67)
        {
          v69 = *v11;
          if (v68)
          {
            *v11 = v11[2];
            v11[2] = v69;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v69;
            if ((*a3)(v11 + 2, v11 + 1))
            {
              *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
            }
          }
        }

        else if (v68)
        {
          *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
          if ((*a3)(v11 + 1, v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v10, v11 + 2))
        {
          return result;
        }

        v108 = v11[2];
        v11[2] = *v10;
        *v10 = v108;
        if (!(*a3)(v11 + 2, v11 + 1))
        {
          return result;
        }

        *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
LABEL_185:
        if ((*a3)(v11 + 1, v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
        return result;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v70 = v11 + 1;
      v71 = v11 == a2 || v70 == a2;
      v72 = v71;
      if (a5)
      {
        if ((v72 & 1) == 0)
        {
          v73 = 0;
          v74 = v11;
          do
          {
            v75 = v74;
            v74 = v70;
            if ((*a3)(v70, v75))
            {
              v113 = *v74;
              v76 = v73;
              while (1)
              {
                *(v11 + v76 + 8) = *(v11 + v76);
                if (!v76)
                {
                  break;
                }

                v76 -= 8;
                if (((*a3)(&v113, (v11 + v76)) & 1) == 0)
                {
                  v77 = (v11 + v76 + 8);
                  goto LABEL_130;
                }
              }

              v77 = v11;
LABEL_130:
              *v77 = v113;
            }

            v70 = v74 + 1;
            v73 += 8;
          }

          while (v74 + 1 != a2);
        }
      }

      else if ((v72 & 1) == 0)
      {
        v104 = v11 - 1;
        do
        {
          v105 = a1;
          a1 = v70;
          if ((*a3)(v70, v105))
          {
            v113 = *a1;
            v106 = v104;
            do
            {
              v106[2] = v106[1];
              v107 = (*a3)(&v113, v106--);
            }

            while ((v107 & 1) != 0);
            v106[2] = v113;
          }

          v70 = a1 + 1;
          ++v104;
        }

        while (a1 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v78 = v13 >> 1;
        v79 = v13 >> 1;
        do
        {
          v80 = v79;
          if (v78 >= v79)
          {
            v81 = (2 * v79) | 1;
            v82 = &a1[v81];
            if (2 * v79 + 2 < v12 && (*a3)(&a1[v81], v82 + 1))
            {
              ++v82;
              v81 = 2 * v80 + 2;
            }

            v83 = &a1[v80];
            if (((*a3)(v82, v83) & 1) == 0)
            {
              v113 = *v83;
              do
              {
                v84 = v82;
                *v83 = *v82;
                if (v78 < v81)
                {
                  break;
                }

                v85 = (2 * v81) | 1;
                v82 = &a1[v85];
                v86 = 2 * v81 + 2;
                if (v86 < v12 && (*a3)(&a1[v85], v82 + 1))
                {
                  ++v82;
                  v85 = v86;
                }

                v83 = v84;
                v81 = v85;
              }

              while (!(*a3)(v82, &v113));
              *v84 = v113;
            }
          }

          v79 = v80 - 1;
        }

        while (v80);
        v87 = v111;
        do
        {
          v88 = v87;
          v89 = 0;
          v112 = *a1;
          v90 = a1;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v94 = 2 * v89 + 2;
            if (v94 < v12)
            {
              v95 = v91 + 2;
              if ((*a3)(v91 + 1, v91 + 2))
              {
                v92 = v95;
                v93 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
            v89 = v93;
          }

          while (v93 <= ((v12 - 2) >> 1));
          v87 = v88 - 1;
          if (v92 == v88 - 1)
          {
            *v92 = v112;
          }

          else
          {
            *v92 = *v87;
            *v87 = v112;
            v96 = (v92 - a1 + 8) >> 3;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = &a1[v98 >> 1];
              if ((*a3)(v100, v92))
              {
                v101 = v87;
                v113 = *v92;
                do
                {
                  v102 = v100;
                  *v92 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = &a1[v99];
                  v92 = v102;
                }

                while (((*a3)(v100, &v113) & 1) != 0);
                *v102 = v113;
                v87 = v101;
              }
            }
          }

          v97 = v12-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = &v11[v12 >> 1];
    v15 = *a3;
    if (v12 >= 0x81)
    {
      v16 = v15(&a1[v12 >> 1], a1);
      v17 = (*a3)(v10, &a1[v12 >> 1]);
      if (v16)
      {
        v18 = *a1;
        if (v17)
        {
          *a1 = *v10;
          goto LABEL_26;
        }

        *a1 = *v14;
        *v14 = v18;
        if ((*a3)(v10, &a1[v12 >> 1]))
        {
          v18 = *v14;
          *v14 = *v10;
LABEL_26:
          *v10 = v18;
        }
      }

      else if (v17)
      {
        v22 = *v14;
        *v14 = *v10;
        *v10 = v22;
        if ((*a3)(&a1[v12 >> 1], a1))
        {
          v23 = *a1;
          *a1 = *v14;
          *v14 = v23;
        }
      }

      v26 = v14 - 1;
      v27 = (*a3)(v14 - 1, a1 + 1);
      v28 = (*a3)(v110, v14 - 1);
      if (v27)
      {
        v29 = a1[1];
        if (v28)
        {
          v30 = v110;
          a1[1] = *v110;
          goto LABEL_38;
        }

        a1[1] = *v26;
        *v26 = v29;
        if ((*a3)(v110, v14 - 1))
        {
          v29 = *v26;
          v30 = v110;
          *v26 = *v110;
LABEL_38:
          *v30 = v29;
        }
      }

      else if (v28)
      {
        v31 = *v26;
        *v26 = *v110;
        *v110 = v31;
        if ((*a3)(v14 - 1, a1 + 1))
        {
          v32 = a1[1];
          a1[1] = *v26;
          *v26 = v32;
        }
      }

      v33 = (*a3)(v14 + 1, a1 + 2);
      v34 = (*a3)(v109, v14 + 1);
      if (v33)
      {
        v35 = a1[2];
        if (v34)
        {
          v36 = v109;
          a1[2] = *v109;
          goto LABEL_47;
        }

        a1[2] = v14[1];
        v14[1] = v35;
        if ((*a3)(v109, v14 + 1))
        {
          v35 = v14[1];
          v36 = v109;
          v14[1] = *v109;
LABEL_47:
          *v36 = v35;
        }
      }

      else if (v34)
      {
        v37 = v14[1];
        v14[1] = *v109;
        *v109 = v37;
        if ((*a3)(v14 + 1, a1 + 2))
        {
          v38 = a1[2];
          a1[2] = v14[1];
          v14[1] = v38;
        }
      }

      v39 = (*a3)(v14, v14 - 1);
      v40 = (*a3)(v14 + 1, v14);
      if (v39)
      {
        v41 = *v26;
        if (v40)
        {
          v42 = *v14;
          *v26 = v14[1];
          v14[1] = v41;
LABEL_57:
          v46 = *a1;
          *a1 = v42;
          *v14 = v46;
          goto LABEL_58;
        }

        *v26 = *v14;
        *v14 = v41;
        v45 = (*a3)(v14 + 1, v14);
        v42 = *v14;
        if (!v45)
        {
          goto LABEL_57;
        }

        v44 = v14[1];
        *v14 = v44;
        v14[1] = v42;
      }

      else
      {
        v42 = *v14;
        if (!v40)
        {
          goto LABEL_57;
        }

        *v14 = v14[1];
        v14[1] = v42;
        v43 = (*a3)(v14, v14 - 1);
        v42 = *v14;
        if (!v43)
        {
          goto LABEL_57;
        }

        v44 = *v26;
        *v26 = v42;
        *v14 = v44;
      }

      v42 = v44;
      goto LABEL_57;
    }

    v19 = v15(a1, &a1[v12 >> 1]);
    v20 = (*a3)(v10, a1);
    if ((v19 & 1) == 0)
    {
      if (v20)
      {
        v24 = *a1;
        *a1 = *v10;
        *v10 = v24;
        if ((*a3)(a1, &a1[v12 >> 1]))
        {
          v25 = *v14;
          *v14 = *a1;
          *a1 = v25;
        }
      }

      goto LABEL_58;
    }

    v21 = *v14;
    if (v20)
    {
      *v14 = *v10;
LABEL_35:
      *v10 = v21;
      goto LABEL_58;
    }

    *v14 = *a1;
    *a1 = v21;
    if ((*a3)(v10, a1))
    {
      v21 = *a1;
      *a1 = *v10;
      goto LABEL_35;
    }

LABEL_58:
    --a4;
    if (a5)
    {
      v47 = *a1;
LABEL_61:
      v49 = 0;
      v113 = v47;
      do
      {
        ++v49;
      }

      while (((*a3)(&a1[v49], &v113) & 1) != 0);
      v50 = &a1[v49];
      v51 = v111;
      v71 = v49 == 1;
      a2 = v111;
      if (v71)
      {
        v51 = v111;
        do
        {
          if (v50 >= v51)
          {
            break;
          }

          --v51;
        }

        while (((*a3)(v51, &v113) & 1) == 0);
      }

      else
      {
        do
        {
          --v51;
        }

        while (!(*a3)(v51, &v113));
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

          while (((*a3)(v52, &v113) & 1) != 0);
          do
          {
            --v53;
          }

          while (!(*a3)(v53, &v113));
        }

        while (v52 < v53);
        v55 = v52 - 1;
      }

      if (v55 != a1)
      {
        *a1 = *v55;
      }

      *v55 = v113;
      if (v50 < v51)
      {
        goto LABEL_82;
      }

      v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*>(a1, v55, a3);
      v11 = v55 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*>(v55 + 1, v111, a3))
      {
        a2 = v55;
        if (!v56)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v56)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,false>(a1, v55, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v55 + 1;
      }
    }

    else
    {
      v48 = (*a3)(a1 - 1, a1);
      v47 = *a1;
      if (v48)
      {
        goto LABEL_61;
      }

      v113 = *a1;
      if ((*a3)(&v113, v10))
      {
        v11 = a1;
        do
        {
          ++v11;
        }

        while (((*a3)(&v113, v11) & 1) == 0);
      }

      else
      {
        v57 = a1 + 1;
        do
        {
          v11 = v57;
          if (v57 >= a2)
          {
            break;
          }

          v58 = (*a3)(&v113, v57);
          v57 = v11 + 1;
        }

        while (!v58);
      }

      v59 = a2;
      if (v11 < a2)
      {
        v59 = a2;
        do
        {
          --v59;
        }

        while (((*a3)(&v113, v59) & 1) != 0);
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

        while (!(*a3)(&v113, v11));
        do
        {
          --v59;
        }

        while (((*a3)(&v113, v59) & 1) != 0);
      }

      v61 = v11 - 1;
      if (v11 - 1 != a1)
      {
        *a1 = *v61;
      }

      a5 = 0;
      *v61 = v113;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_9;
  }

  if ((*a3)(v10, v11))
  {
    v64 = *v11;
    goto LABEL_110;
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
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
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
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

void std::vector<xgboost::Entry>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
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

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<xgboost::Entry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
}

void *std::vector<xgboost::Entry>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::Entry>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::Entry>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274D54470(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D544E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D5464C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lambda_rank_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::LambdaRankParam>(v7, *v4, (a1 + 16));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D548B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "rank:pairwise");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5)
{
  v142 = *MEMORY[0x277D85DE8];
  __p = ((*(*a2 + 8) - **a2) >> 2);
  v132 = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (__p != v132)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v132);
  }

  LODWORD(v140.__ptr_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v132, 2uLL);
  v10 = (a3 + 48);
  v11 = *(a3 + 48);
  v12 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v13 = v132;
  *(v132 + 1) = v12;
  v14 = *(a3 + 56);
  if (v14 == v11)
  {
    v10 = &v132;
  }

  else
  {
    v13 = v11;
  }

  v125 = v10;
  if (v14 == v11)
  {
    v15 = v133;
  }

  else
  {
    v15 = (a3 + 56);
  }

  if (*v15 == v13 || v12 != *(*v15 - 1))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v140);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu", 768);
    v104 = dmlc::LogMessageFatal::GetEntry(&v140);
    v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Check failed: gptr.size() != 0 && gptr.back() == info.labels.Size()", 67);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, ": ", 2);
    v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "group structure not consistent with #rows", 41);
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, ", ", 2);
    v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, "group ponter size: ", 19);
    v110 = MEMORY[0x277C68E50](v109, (*v15 - *v125) >> 2);
    v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, ", ", 2);
    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "labels size: ", 13);
    v113 = MEMORY[0x277C68E50](v112, (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
    v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, ", ", 2);
    v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "group pointer back: ", 20);
    if (*v15 == *v125)
    {
      v116 = 0;
    }

    else
    {
      v116 = *(*v15 - 1);
    }

    MEMORY[0x277C68E30](v115, v116);
    dmlc::LogMessageFatal::~LogMessageFatal(&v140);
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v8, v9) + 4) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(&v140, &__p, 818, 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "Computing ", 10);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "rank:pairwise", 13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " gradients on CPU.", 18);
    xgboost::ConsoleLogger::~ConsoleLogger(&v140);
    if (SHIBYTE(v136) < 0)
    {
      operator delete(__p);
    }
  }

  v18 = v133;
  if (v14 != v11)
  {
    v18 = (a3 + 56);
  }

  v19 = (*v18 - *v125) >> 2;
  v20 = (v19 - 1);
  if (v19 == 1)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 0.0;
    v22 = **(a3 + 72);
    v23 = (v19 - 1);
    do
    {
      if (*(*(a3 + 72) + 8) == **(a3 + 72))
      {
        v24 = 1.0;
      }

      else
      {
        v24 = *v22;
      }

      v21 = v21 + v24;
      ++v22;
      --v23;
    }

    while (v23);
  }

  v25 = *(*(a3 + 24) + 8);
  v117 = **(a3 + 24);
  v26 = *(a3 + 40);
  v27 = *a5;
  v121 = *a2;
  v28 = (v121[1] - *v121) >> 2;
  v140.__ptr_ = 0;
  v123 = v26;
  v124 = v27;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v27, v28, &v140);
  v140.__ptr_ = 0;
  v141[0].__m_.__sig = 850045863;
  memset(v141[0].__m_.__opaque, 0, sizeof(v141[0].__m_.__opaque));
  v29 = (3 * (1111 * a4 + 1111)) >> 32;
  v30 = 1111 * a4 + 1111 + (((v29 + ((1111 * a4 + 1111 - v29) >> 1)) >> 30) | ((v29 + ((1111 * a4 + 1111 - v29) >> 1)) >> 30 << 31));
  if (v30 <= 1)
  {
    v30 = 1;
  }

  v137 = v30;
  __p = 0;
  v135 = 0;
  v136 = 0;
  if (v20)
  {
    v31 = 0;
    __src = 0;
    v32 = v20;
    v33 = 0;
    v118 = v32;
    v34 = v32 / v21;
    v120 = (v25 - v117) >> 2;
    v122 = 4 * v123;
    do
    {
      v35 = *(*v125 + v31);
      v130 = v31;
      v126 = v31 + 1;
      if (v35 >= *(*v125 + v31 + 1))
      {
        v38 = __src;
      }

      else
      {
        v36 = (v117 + v122 * v35);
        v37 = v123 * (v35 - 1);
        v38 = __src;
        do
        {
          v37 += v123;
          if (v37 >= v120)
          {
            __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
          }

          v39 = &v38[-__src];
          v40 = 0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2);
          v41 = v40 + 1;
          if (v40 + 1 > 0x1555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-__src >> 2) > v41)
          {
            v41 = 0x5555555555555556 * (-__src >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v42 = 0x1555555555555555;
          }

          else
          {
            v42 = v41;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v42);
          }

          v43 = (4 * (&v38[-__src] >> 2));
          v44 = *v36;
          *v43 = *(*v121 + 4 * v35);
          v43[1] = v44;
          v43[2] = v35;
          v38 = (v43 + 3);
          memcpy((12 * v40 + 12 * (v39 / -12)), __src, v39);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 12 * v40 + 12 * (v39 / -12);
          v36 = (v36 + v122);
          *(*v124 + 8 * v35++) = 0;
        }

        while (v35 < *(*v125 + v126));
      }

      v138 = xgboost::obj::ListEntry::CmpPred;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(__src, v38, &v138);
      std::vector<std::pair<float,unsigned int>>::resize(&__p, 0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2));
      v46 = __p;
      if (v38 != __src)
      {
        v47 = (__p + 4);
        v48 = (__src + 4);
        v49 = 1;
        do
        {
          v50 = *v48;
          v48 += 3;
          v45 = v50;
          *(v47 - 1) = v50;
          *v47 = v49 - 1;
          v47 += 2;
        }

        while (0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2) > v49++);
      }

      v139 = xgboost::common::CmpFirst;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v46, v135, &v139, v45);
      v52 = __p;
      v53 = v135;
      if (v135 == __p)
      {
        v57 = v33;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = (v135 - __p) >> 3;
        v57 = v33;
        do
        {
          v58 = &v52[2 * v54];
          v59 = v56 - 2;
          v60 = 1;
          do
          {
            v61 = v60;
            v62 = v59;
            v54 = v55 + v60;
            if (v56 <= v54)
            {
              break;
            }

            ++v60;
            --v59;
          }

          while (v52[2 * v54] == *v58);
          if (v62 != -1)
          {
            v63 = *(a1 + 24);
            if (v63)
            {
              v128 = v54;
              do
              {
                v129 = v63;
                if (v55 < v54)
                {
                  v64 = v61;
                  v65 = (8 * v55) | 4;
                  do
                  {
                    LODWORD(v139) = 0;
                    HIDWORD(v139) = v62;
                    v66 = std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v137, &v139);
                    if (v66 >= v55)
                    {
                      v69 = **(a3 + 72);
                      if (*(*(a3 + 72) + 8) == v69)
                      {
                        v70 = 1.0;
                      }

                      else
                      {
                        v70 = *(v69 + 4 * v130);
                      }

                      v77 = __p + 8 * v61 + 8 * v66;
                      v72 = v34 * v70;
                      v73 = v57 - v33;
                      v78 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v33) >> 2);
                      v79 = v78 + 1;
                      if (v78 + 1 > 0x1555555555555555)
                      {
LABEL_103:
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v33 >> 2) > v79)
                      {
                        v79 = 0x5555555555555556 * (-v33 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v80 = 0x1555555555555555;
                      }

                      else
                      {
                        v80 = v79;
                      }

                      if (v80)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v80);
                      }

                      v81 = 12 * v78;
                      v82 = *(__p + v65);
                      v83 = *(v77 + 1);
                    }

                    else
                    {
                      v67 = **(a3 + 72);
                      if (*(*(a3 + 72) + 8) == v67)
                      {
                        v68 = 1.0;
                      }

                      else
                      {
                        v68 = *(v67 + 4 * v130);
                      }

                      v71 = __p + 8 * v66;
                      v72 = v34 * v68;
                      v73 = v57 - v33;
                      v74 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v33) >> 2);
                      v75 = v74 + 1;
                      if (v74 + 1 > 0x1555555555555555)
                      {
                        goto LABEL_103;
                      }

                      if (0x5555555555555556 * (-v33 >> 2) > v75)
                      {
                        v75 = 0x5555555555555556 * (-v33 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v76 = 0x1555555555555555;
                      }

                      else
                      {
                        v76 = v75;
                      }

                      if (v76)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v76);
                      }

                      v81 = 12 * v74;
                      v82 = *(v71 + 1);
                      v83 = *(__p + v65);
                    }

                    *v81 = v82;
                    *(v81 + 4) = v83;
                    *(v81 + 8) = v72;
                    v57 = (v81 + 12);
                    v84 = v81 - v73;
                    memcpy((v81 - v73), v33, v73);
                    if (v33)
                    {
                      operator delete(v33);
                    }

                    v33 = v84;
                    v65 += 8;
                    --v64;
                  }

                  while (v64);
                }

                v63 = v129 - 1;
                v54 = v128;
              }

              while (v129 != 1);
              v52 = __p;
              v53 = v135;
            }
          }

          v56 = (v53 - v52) >> 3;
          v55 = v54;
        }

        while (v56 > v54);
      }

      v85 = 1.0 / *(a1 + 24);
      v86 = *(a1 + 32);
      if (v86 != 0.0)
      {
        v85 = v85 * (v86 / (*(*v125 + v126) - *(*v125 + v130)));
      }

      if (v33 != v57)
      {
        v87 = *v124;
        v88 = v33;
        do
        {
          v89 = __src + 12 * *v88;
          v90 = __src + 12 * *(v88 + 1);
          v91 = v85 * v88[2];
          v92 = *v89 - *v90;
          if (v92 >= -88.7)
          {
            v93 = -v92;
          }

          else
          {
            v93 = 88.7;
          }

          v94 = 1.0 / ((expf(v93) + 1.0) + 1.0e-16);
          v95 = v94 + -1.0;
          v96 = v94 * (1.0 - v94);
          if (v96 < 1.0e-16)
          {
            v96 = 1.0e-16;
          }

          v97 = (v91 + v91) * v96;
          v98 = (v87 + 8 * *(v89 + 8));
          v99 = v98[1] + v97;
          *v98 = *v98 + (v91 * v95);
          v98[1] = v99;
          v100 = (v87 + 8 * *(v90 + 8));
          v101 = v100[1] + v97;
          *v100 = *v100 - (v91 * v95);
          v100[1] = v101;
          v88 += 3;
        }

        while (v88 != v57);
      }

      v31 = v126;
    }

    while (v126 != v118);
    if (__p)
    {
      v135 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      operator delete(__src);
    }

    if (v33)
    {
      operator delete(v33);
    }
  }

  dmlc::OMPException::Rethrow(&v140);
  std::mutex::~mutex(v141);
  std::exception_ptr::~exception_ptr(&v140);
  if (v132)
  {
    v133[0] = v132;
    operator delete(v132);
  }

  v102 = *MEMORY[0x277D85DE8];
}

void sub_274D55710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a37);
  if (v37)
  {
    operator delete(v37);
  }

  JUMPOUT(0x274D558A4);
}

void sub_274D55720(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v2)
  {
    operator delete(v2);
  }

  if (a2 == v3 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D55580);
  }

  JUMPOUT(0x274D55820);
}

void sub_274D55730(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v2)
  {
    operator delete(v2);
  }

  if (a2 == v3 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D55580);
  }

  JUMPOUT(0x274D55820);
}

void sub_274D557F0()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5585CLL);
}

void sub_274D557FC()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5585CLL);
}

void sub_274D5580C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    operator delete(v35);
  }

  JUMPOUT(0x274D558A4);
}

void sub_274D55814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = a37;
  a37 = 0;
  if (v38)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a37, v38);
  }

  _Unwind_Resume(a1);
}

void sub_274D55838()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D558A4);
}

void sub_274D5589C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D558A4);
  }

  __clang_call_terminate(a1);
}

void xgboost::FromJson<xgboost::obj::LambdaRankParam>(void *a1, char **a2, _BYTE *a3)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a2);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v14[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4);
      v5 = std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
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
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  if (*a3 == 1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6768, a3, v13, v14, 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6768, a3, v13, v14, a1, 0);
    *a3 = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void sub_274D55A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(va, v5);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::obj::LambdaRankParam>(xgboost::obj::LambdaRankParam *a1)
{
  *(a1 + 1) = 0x300000000;
  *a1 = &unk_2883E6E50;
  *(a1 + 3) = 0;
  *(a1 + 2) = a1 + 24;
  v1 = a1 + 16;
  *(a1 + 4) = 0;
  xgboost::obj::LambdaRankParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(&stru_280AF6768, v3);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v4, v3[0], v3[1]);
  v6 = v3;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = v4;
  if (v4 != &v5)
  {
    xgboost::JsonString::JsonString(v3, (v4 + 56));
    v6 = (v2 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v1, (v2 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v4, v5);
}

void sub_274D55BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::obj::LambdaRankParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6768, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6768, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274D55CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<float,unsigned int>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(uint64_t a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (&a2[-a1] >> 2);
  if (&a2[-a1] < 1537)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = 0xAAAAAAAAAAAAAAABLL * (&a2[-a1] >> 2);
    while (1)
    {
      v9 = operator new(12 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_274D55F8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(uint64_t result, char *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = a2 - 12;
      result = (*a3)((a2 - 12), result);
      if (result)
      {
        v10 = *(v8 + 8);
        v11 = *v8;
        v12 = *(a2 - 1);
        *v8 = *v9;
        *(v8 + 8) = v12;
        *v9 = v11;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v24 = a5;
      v25 = a4 >> 1;
      v26 = result + 12 * (a4 >> 1);
      v27 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(result, v26, a3, v27, a5);
        v28 = v24 + 12 * v25;
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v8 + 12 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), v28);
        v29 = v24 + 12 * a4;
        v30 = v28;
        while (v30 != v29)
        {
          result = (*a3)(v30, v24);
          if (result)
          {
            v31 = *v30;
            *(v8 + 8) = *(v30 + 8);
            *v8 = v31;
            v30 += 12;
          }

          else
          {
            v32 = *v24;
            *(v8 + 8) = *(v24 + 8);
            *v8 = v32;
            v24 += 12;
          }

          v8 += 12;
          if (v24 == v28)
          {
            while (v30 != v29)
            {
              v34 = *v30;
              *(v8 + 8) = *(v30 + 8);
              *v8 = v34;
              v8 += 12;
              v30 += 12;
            }

            return result;
          }
        }

        while (v24 != v28)
        {
          v33 = *v24;
          *(v8 + 8) = *(v24 + 8);
          *v8 = v33;
          v8 += 12;
          v24 += 12;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(result, v26, a3, v27, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v8 + 12 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), v24, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v8, (v8 + 12 * (a4 >> 1)), a2, a3, a4 >> 1, a4 - (a4 >> 1), v24, a6);
      }
    }

    else if (result != a2)
    {
      v14 = result + 12;
      if ((result + 12) != a2)
      {
        v15 = 0;
        v16 = result;
        do
        {
          v17 = v16;
          v16 = v14;
          result = (*a3)(v14, v17);
          if (result)
          {
            v18 = *v16;
            v36 = *(v16 + 8);
            v35 = v18;
            v19 = v15;
            while (1)
            {
              v20 = v8 + v19;
              *(v20 + 12) = *(v8 + v19);
              *(v20 + 20) = *(v8 + v19 + 8);
              if (!v19)
              {
                break;
              }

              v19 -= 12;
              result = (*a3)(&v35, v19 + v8);
              if ((result & 1) == 0)
              {
                v21 = v8 + v19 + 12;
                goto LABEL_16;
              }
            }

            v21 = v8;
LABEL_16:
            v22 = v35;
            *(v21 + 8) = v36;
            *v21 = v22;
          }

          v14 = v16 + 12;
          v15 += 12;
        }

        while ((v16 + 12) != a2);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v9 = result;
    if (a4 == 2)
    {
      v11 = (a2 - 12);
      result = (*a3)(a2 - 12, result);
      if (result)
      {
        v12 = *v11;
        *(v5 + 8) = *(v11 + 2);
        *v5 = v12;
        v13 = *v9;
        v14 = *(v9 + 8);
      }

      else
      {
        v23 = *v9;
        *(v5 + 8) = *(v9 + 8);
        *v5 = v23;
        v13 = *v11;
        v14 = *(v11 + 2);
      }

      *(v5 + 20) = v14;
      *(v5 + 12) = v13;
    }

    else if (a4 == 1)
    {
      v10 = *result;
      *(a5 + 8) = *(result + 8);
      *a5 = v10;
    }

    else if (a4 > 8)
    {
      v24 = result + 12 * (a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v9 + 12 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), v5 + 12 * (a4 >> 1), a4 - (a4 >> 1));
      v25 = v9 + 12 * (a4 >> 1);
      while (v25 != a2)
      {
        result = (*a3)(v25, v9);
        if (result)
        {
          v26 = *v25;
          *(v5 + 8) = *(v25 + 8);
          *v5 = v26;
          v25 += 12;
        }

        else
        {
          v27 = *v9;
          *(v5 + 8) = *(v9 + 8);
          *v5 = v27;
          v9 += 12;
        }

        v5 += 12;
        if (v9 == v24)
        {
          while (v25 != a2)
          {
            v29 = *v25;
            *(v5 + 8) = *(v25 + 8);
            *v5 = v29;
            v5 += 12;
            v25 += 12;
          }

          return result;
        }
      }

      while (v9 != v24)
      {
        v28 = *v9;
        *(v5 + 8) = *(v9 + 8);
        *v5 = v28;
        v5 += 12;
        v9 += 12;
      }
    }

    else if (result != a2)
    {
      v15 = *result;
      *(a5 + 8) = *(result + 8);
      *a5 = v15;
      v16 = result + 12;
      if (result + 12 != a2)
      {
        v17 = 0;
        v18 = a5;
        do
        {
          v19 = v18;
          v18 += 12;
          result = (*a3)(v16, v19);
          v20 = v18;
          if (result)
          {
            *v18 = *v19;
            *(v18 + 8) = *(v19 + 8);
            v20 = v5;
            if (v19 != v5)
            {
              v21 = v17;
              while (1)
              {
                v20 = v5 + v21;
                result = (*a3)(v16, v5 + v21 - 12);
                if (!result)
                {
                  break;
                }

                *v20 = *(v5 + v21 - 12);
                *(v20 + 8) = *(v5 + v21 - 4);
                v21 -= 12;
                if (!v21)
                {
                  v20 = v5;
                  break;
                }
              }
            }
          }

          v22 = *v16;
          *(v20 + 8) = *(v16 + 8);
          *v20 = v22;
          v16 += 12;
          v17 += 12;
        }

        while (v16 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(uint64_t result, char *a2, char *a3, uint64_t (**a4)(char *, uint64_t), int64_t a5, int64_t a6, uint64_t a7, int64_t a8)
{
  v83 = a6;
  if (a6)
  {
    while (a5 > a8 && v83 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = result;
        v15 = &v12[result];
        v16 = a2;
        result = (*a4)(a2, &v12[result]);
        if (result)
        {
          break;
        }

        v12 += 12;
        v17 = __CFADD__(v13++, 1);
        result = v14;
        a2 = v16;
        if (v17)
        {
          return result;
        }
      }

      v18 = v83;
      v80 = a3;
      v81 = a7;
      if (-v13 >= v83)
      {
        v22 = v14;
        v20 = v16;
        if (v13 == -1)
        {
          v75 = &v12[v14];
          v94 = *&v12[v14 + 8];
          v90 = *&v12[v14];
          v76 = *v16;
          *(v75 + 2) = *(v16 + 2);
          *v75 = v76;
          *v16 = v90;
          *(v16 + 2) = v94;
          return result;
        }

        v26 = -v13 / 2;
        v21 = v16;
        if (v16 != a3)
        {
          v84 = v14 + 12 * v26;
          v86 = a4;
          v27 = *a4;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v16) >> 2);
          v21 = v16;
          do
          {
            v29 = &v21[12 * (v28 >> 1)];
            v30 = v27(v29, &v12[v84]);
            if (v30)
            {
              v28 += ~(v28 >> 1);
            }

            else
            {
              v28 >>= 1;
            }

            if (v30)
            {
              v21 = v29 + 12;
            }
          }

          while (v28);
          a4 = v86;
          v22 = v14;
          v20 = v16;
          v18 = v83;
          v26 = -v13 / 2;
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 2);
        v23 = &v12[12 * v26 + v22];
        v25 = v26;
      }

      else
      {
        v19 = v83 / 2;
        v20 = v16;
        v21 = &v16[12 * (v83 / 2)];
        v22 = v14;
        v23 = v16;
        if (&v16[-v14] != v12)
        {
          v85 = a4;
          v24 = 0xAAAAAAAAAAAAAAABLL * ((&v16[-v14] - v12) >> 2);
          v23 = v15;
          do
          {
            if ((*v85)(v21, &v23[12 * (v24 >> 1)]))
            {
              v24 >>= 1;
            }

            else
            {
              v23 += 12 * (v24 >> 1) + 12;
              v24 += ~(v24 >> 1);
            }
          }

          while (v24);
          v19 = v83 / 2;
          a4 = v85;
          v22 = v14;
          v20 = v16;
          v18 = v83;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((&v23[-v22] - v12) >> 2);
      }

      v31 = v21;
      v32 = v20 - v23;
      if (v20 != v23)
      {
        v31 = v23;
        v33 = v21 - v20;
        if (v21 != v20)
        {
          if (v23 + 12 == v20)
          {
            v87 = *v23;
            v91 = *(v23 + 2);
            v34 = v19;
            memmove(v23, v20, v21 - v20);
            v19 = v34;
            v18 = v83;
            v22 = v14;
            v31 = &v23[v33];
            *v31 = v87;
            *(v31 + 2) = v91;
          }

          else if (v20 + 12 == v21)
          {
            v31 = v23 + 12;
            v88 = *(v21 - 12);
            v92 = *(v21 - 1);
            if (v21 - 12 != v23)
            {
              v35 = v19;
              memmove(v23 + 12, v23, v21 - 12 - v23);
              v31 = v23 + 12;
              v19 = v35;
              v18 = v83;
              v22 = v14;
            }

            *v23 = v88;
            *(v23 + 2) = v92;
          }

          else
          {
            v36 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 2);
            if (0xAAAAAAAAAAAAAAABLL * (v32 >> 2) == v36)
            {
              v37 = v23 + 12;
              v38 = v20 + 12;
              do
              {
                v39 = *(v37 - 1);
                v40 = *(v37 - 12);
                v41 = *(v38 - 1);
                *(v37 - 12) = *(v38 - 12);
                *(v37 - 1) = v41;
                *(v38 - 12) = v40;
                *(v38 - 1) = v39;
                if (v37 == v20)
                {
                  break;
                }

                v37 += 12;
                v62 = v38 == v21;
                v38 += 12;
              }

              while (!v62);
              v31 = v20;
            }

            else
            {
              v42 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
              do
              {
                v43 = v42;
                v42 = v36;
                v36 = v43 % v36;
              }

              while (v36);
              v44 = &v23[12 * v42];
              do
              {
                v45 = *(v44 - 12);
                v44 -= 12;
                v89 = v45;
                v93 = *(v44 + 2);
                v46 = &v44[v32];
                v47 = v44;
                do
                {
                  v48 = v46;
                  v49 = *v46;
                  *(v47 + 2) = *(v48 + 2);
                  *v47 = v49;
                  v46 = v48 + 4 * (v32 >> 2);
                  if (v32 >= v21 - v48)
                  {
                    v46 = &v20[-(v21 - v48)];
                  }

                  v47 = v48;
                }

                while (v46 != v44);
                *(v48 + 2) = v93;
                *v48 = v89;
              }

              while (v44 != v23);
              v31 = &v23[v33];
            }
          }
        }
      }

      a5 = -(v25 + v13);
      v50 = v18 - v19;
      if ((v25 + v19) >= (v18 - (v25 + v19) - v13))
      {
        v51 = v19;
        v52 = v31;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v31, v21, v80, a4, -(v25 + v13), v18 - v19, v81, a8);
        v21 = v23;
        v50 = v51;
        a5 = v25;
        a3 = v52;
      }

      else
      {
        v15 = v31;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(&v12[v22], v23, v31, a4, v25, v19, v81, a8);
        a3 = v80;
      }

      v83 = v50;
      result = v15;
      a2 = v21;
      a7 = v81;
      if (!v50)
      {
        return result;
      }
    }

    if (a5 <= v83)
    {
      if (a2 != result)
      {
        v65 = -a7;
        v66 = a7;
        v67 = result;
        do
        {
          v68 = *v67;
          v66[2] = *(v67 + 8);
          *v66 = v68;
          v66 += 3;
          v67 += 12;
          v65 -= 12;
        }

        while (v67 != a2);
        while (a2 != a3)
        {
          v69 = a3;
          v70 = result;
          v71 = a2;
          if ((*a4)(a2, a7))
          {
            v72 = *v71;
            v73 = v70;
            *(v70 + 8) = *(v71 + 2);
            *v70 = v72;
            a2 = v71 + 12;
          }

          else
          {
            v74 = *a7;
            v73 = v70;
            *(v70 + 8) = *(a7 + 8);
            *v70 = v74;
            a7 += 12;
            a2 = v71;
          }

          result = v73 + 12;
          a3 = v69;
          if (v66 == a7)
          {
            return result;
          }
        }

        return memmove(result, a7, -(a7 + v65));
      }
    }

    else if (a2 != a3)
    {
      v53 = 0;
      do
      {
        v54 = (a7 + v53);
        v55 = *&a2[v53];
        *(v54 + 2) = *&a2[v53 + 8];
        *v54 = v55;
        v53 += 12;
      }

      while (&a2[v53] != a3);
      v56 = (a7 + v53);
      while (a2 != result)
      {
        v57 = a2 - 12;
        v58 = result;
        v59 = a3;
        v60 = a2;
        v61 = (*a4)(v56 - 12, (a2 - 12));
        a2 = v60;
        v62 = v61 == 0;
        result = v58;
        if (v62)
        {
          v63 = v56 - 12;
        }

        else
        {
          v63 = v57;
        }

        v64 = *(v63 + 2);
        *(v59 - 12) = *v63;
        a3 = v59 - 12;
        if (v62)
        {
          v56 -= 12;
        }

        else
        {
          a2 = v57;
        }

        *(v59 - 1) = v64;
        if (v56 == a7)
        {
          return result;
        }
      }

      if (v56 != a7)
      {
        v77 = -12;
        do
        {
          v78 = *(v56 - 12);
          v56 -= 12;
          v79 = &a3[v77];
          *(v79 + 2) = *(v56 + 2);
          *v79 = v78;
          v77 -= 12;
        }

        while (v56 != a7);
      }
    }
  }

  return result;
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, _DWORD *a2)
{
  result = a2[1];
  v5 = result - *a2;
  if (result != *a2)
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v10, a1, 0x20uLL);
      return std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v10);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 31;
      if (((v6 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v10, a1, v8 - v7);
      do
      {
        v9 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v10);
      }

      while (v9 >= v6);
      return *a2 + v9;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      LODWORD(v4) = 32;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    LODWORD(result) = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = ((v6 - 1) & *(a1 + 48)) + v12;
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = ((v18 - 1) & v17) + v23;
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lambda_rank_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::LambdaRankParam>(v7, *v4, (a1 + 16));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D56FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "rank:ndcg");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5)
{
  v185 = *MEMORY[0x277D85DE8];
  __p = ((*(*a2 + 8) - **a2) >> 2);
  v174.__ptr_ = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (__p != v174.__ptr_)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v174);
  }

  LODWORD(v183.__ptr_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v172, 2uLL);
  v11 = (a3 + 48);
  v12 = *(a3 + 48);
  v13 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v14 = v172;
  *(v172 + 1) = v13;
  v15 = *(a3 + 56);
  if (v15 == v12)
  {
    v11 = &v172;
  }

  else
  {
    v14 = v12;
  }

  v165 = v11;
  if (v15 == v12)
  {
    v16 = v173;
  }

  else
  {
    v16 = (a3 + 56);
  }

  if (*v16 == v14 || v13 != *(*v16 - 1))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v183);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu", 768);
    v142 = dmlc::LogMessageFatal::GetEntry(&v183);
    v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v142, "Check failed: gptr.size() != 0 && gptr.back() == info.labels.Size()", 67);
    v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, ": ", 2);
    v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, "group structure not consistent with #rows", 41);
    v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, ", ", 2);
    v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, "group ponter size: ", 19);
    v148 = MEMORY[0x277C68E50](v147, (*v16 - *v165) >> 2);
    v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, ", ", 2);
    v150 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v149, "labels size: ", 13);
    v151 = MEMORY[0x277C68E50](v150, (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
    v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, ", ", 2);
    v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, "group pointer back: ", 20);
    if (*v16 == *v165)
    {
      v154 = 0;
    }

    else
    {
      v154 = *(*v16 - 1);
    }

    MEMORY[0x277C68E30](v153, v154);
    dmlc::LogMessageFatal::~LogMessageFatal(&v183);
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, v10) + 4) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(&v183, &__p, 818, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v183, "Computing ", 10);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "rank:ndcg", 9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " gradients on CPU.", 18);
    xgboost::ConsoleLogger::~ConsoleLogger(&v183);
    if (v182 < 0)
    {
      operator delete(__p);
    }
  }

  v19 = v173;
  if (v15 != v12)
  {
    v19 = (a3 + 56);
  }

  v20 = (*v19 - *v165) >> 2;
  v21 = (v20 - 1);
  if (v20 == 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 0.0;
    v23 = **(a3 + 72);
    v24 = (v20 - 1);
    do
    {
      if (*(*(a3 + 72) + 8) == **(a3 + 72))
      {
        v25 = 1.0;
      }

      else
      {
        v25 = *v23;
      }

      v22 = v22 + v25;
      ++v23;
      --v24;
    }

    while (v24);
  }

  v26 = *(*(a3 + 24) + 8);
  v155 = **(a3 + 24);
  v27 = *(a3 + 40);
  v28 = *a5;
  v161 = *a2;
  v29 = (v161[1] - *v161) >> 2;
  v183.__ptr_ = 0;
  v163 = v27;
  v164 = v28;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v28, v29, &v183);
  v183.__ptr_ = 0;
  v184[0].__m_.__sig = 850045863;
  memset(v184[0].__m_.__opaque, 0, sizeof(v184[0].__m_.__opaque));
  v30 = (3 * (1111 * a4 + 1111)) >> 32;
  v31 = 1111 * a4 + 1111 + (((v30 + ((1111 * a4 + 1111 - v30) >> 1)) >> 30) | ((v30 + ((1111 * a4 + 1111 - v30) >> 1)) >> 30 << 31));
  if (v31 <= 1)
  {
    v31 = 1;
  }

  v177 = v31;
  v174.__ptr_ = 0;
  v175 = 0;
  v176 = 0;
  if (v21)
  {
    v171 = a3;
    v32 = 0;
    __src = 0;
    v33 = 0;
    v156 = v21;
    v160 = (v26 - v155) >> 2;
    v34 = v21 / v22;
    v162 = 4 * v163;
    v35 = -1.0;
    while (1)
    {
      v36 = *(*v165 + v32);
      v170 = v32;
      v166 = v32 + 1;
      if (v36 >= *(*v165 + v32 + 1))
      {
        v39 = __src;
      }

      else
      {
        v37 = (v155 + v162 * v36);
        v38 = v163 * (v36 - 1);
        v39 = __src;
        do
        {
          v38 += v163;
          if (v38 >= v160)
          {
            __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
          }

          v40 = &v39[-__src];
          v41 = 0xAAAAAAAAAAAAAAABLL * (&v39[-__src] >> 2);
          v42 = v41 + 1;
          if (v41 + 1 > 0x1555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-__src >> 2) > v42)
          {
            v42 = 0x5555555555555556 * (-__src >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v43 = 0x1555555555555555;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v43);
          }

          v44 = 12 * v41;
          v45 = *v37;
          *v44 = *(*v161 + 4 * v36);
          *(v44 + 4) = v45;
          *(v44 + 8) = v36;
          v39 = (12 * v41 + 12);
          v46 = (v44 + 12 * (v40 / -12));
          memcpy(v46, __src, v40);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v46;
          v37 = (v37 + v162);
          *(*v164 + 8 * v36++) = 0;
        }

        while (v36 < *(*v165 + v166));
      }

      v178 = xgboost::obj::ListEntry::CmpPred;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(__src, v39, &v178);
      std::vector<std::pair<float,unsigned int>>::resize(&v174, 0xAAAAAAAAAAAAAAABLL * (&v39[-__src] >> 2));
      ptr = v174.__ptr_;
      if (v39 != __src)
      {
        v49 = (v174.__ptr_ + 4);
        v50 = (__src + 4);
        v51 = 1;
        do
        {
          v52 = *v50;
          v50 += 3;
          v47 = v52;
          *(v49 - 1) = v52;
          *v49 = v51 - 1;
          v49 += 2;
          v53 = 0xAAAAAAAAAAAAAAABLL * (&v39[-__src] >> 2) > v51++;
        }

        while (v53);
      }

      v179 = xgboost::common::CmpFirst;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(ptr, v175, &v179, v47);
      v157 = 0xAAAAAAAAAAAAAAABLL * (&v39[-__src] >> 2);
      v158 = v39;
      v54 = v174.__ptr_;
      v55 = v175;
      if (v175 == v174.__ptr_)
      {
        v59 = v33;
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = (v175 - v174.__ptr_) >> 3;
        v59 = v33;
        do
        {
          v60 = &v54[2 * v56];
          v61 = v58 - 2;
          v62 = 1;
          do
          {
            v63 = v62;
            v64 = v61;
            v56 = v57 + v62;
            if (v58 <= v56)
            {
              break;
            }

            ++v62;
            --v61;
          }

          while (v54[2 * v56] == *v60);
          if (v64 != -1)
          {
            v65 = *(a1 + 24);
            if (v65)
            {
              v168 = v56;
              do
              {
                v169 = v65;
                if (v57 < v56)
                {
                  v66 = v63;
                  v67 = (8 * v57) | 4;
                  do
                  {
                    LODWORD(v179) = 0;
                    HIDWORD(v179) = v64;
                    v68 = std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v177, &v179);
                    if (v68 >= v57)
                    {
                      v71 = **(v171 + 72);
                      if (*(*(v171 + 72) + 8) == v71)
                      {
                        v72 = 1.0;
                      }

                      else
                      {
                        v72 = *(v71 + 4 * v170);
                      }

                      v79 = v174.__ptr_ + 8 * v63 + 8 * v68;
                      v74 = v34 * v72;
                      v75 = v59 - v33;
                      v80 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v33) >> 2);
                      v81 = v80 + 1;
                      if (v80 + 1 > 0x1555555555555555)
                      {
LABEL_140:
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v33 >> 2) > v81)
                      {
                        v81 = 0x5555555555555556 * (-v33 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v82 = 0x1555555555555555;
                      }

                      else
                      {
                        v82 = v81;
                      }

                      if (v82)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v82);
                      }

                      v83 = 12 * v80;
                      v84 = *(v174.__ptr_ + v67);
                      v85 = *(v79 + 1);
                    }

                    else
                    {
                      v69 = **(v171 + 72);
                      if (*(*(v171 + 72) + 8) == v69)
                      {
                        v70 = 1.0;
                      }

                      else
                      {
                        v70 = *(v69 + 4 * v170);
                      }

                      v73 = v174.__ptr_ + 8 * v68;
                      v74 = v34 * v70;
                      v75 = v59 - v33;
                      v76 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v33) >> 2);
                      v77 = v76 + 1;
                      if (v76 + 1 > 0x1555555555555555)
                      {
                        goto LABEL_140;
                      }

                      if (0x5555555555555556 * (-v33 >> 2) > v77)
                      {
                        v77 = 0x5555555555555556 * (-v33 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v78 = 0x1555555555555555;
                      }

                      else
                      {
                        v78 = v77;
                      }

                      if (v78)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v78);
                      }

                      v83 = 12 * v76;
                      v84 = *(v73 + 1);
                      v85 = *(v174.__ptr_ + v67);
                    }

                    *v83 = v84;
                    *(v83 + 4) = v85;
                    *(v83 + 8) = v74;
                    v59 = (v83 + 12);
                    v86 = v83 - v75;
                    memcpy((v83 - v75), v33, v75);
                    if (v33)
                    {
                      operator delete(v33);
                    }

                    v33 = v86;
                    v67 += 8;
                    --v66;
                  }

                  while (v66);
                }

                v65 = v169 - 1;
                v56 = v168;
              }

              while (v169 != 1);
              v54 = v174.__ptr_;
              v55 = v175;
            }
          }

          v58 = (v55 - v54) >> 3;
          v57 = v56;
        }

        while (v58 > v56);
      }

      std::vector<float>::vector[abi:ne200100](&__p, v157);
      v88 = __p;
      if (v158 != __src)
      {
        if (v157 <= 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = v157;
        }

        v90 = (__src + 4);
        v91 = __p;
        do
        {
          v92 = *v90;
          v90 += 3;
          v87 = v92;
          *v91++ = v92;
          --v89;
        }

        while (v89);
      }

      v93 = v181;
      v94 = v181 - v88;
      v95 = MEMORY[0x277D826F0];
      if (v94 < 129)
      {
        v98 = 0;
LABEL_102:
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v88, v93, v94, 0, v98, v87);
      }

      else
      {
        v96 = v181 - v88;
        while (1)
        {
          v97 = operator new(4 * v96, v95);
          if (v97)
          {
            break;
          }

          v98 = v96 >> 1;
          v53 = v96 > 1;
          v96 >>= 1;
          if (!v53)
          {
            goto LABEL_102;
          }
        }

        v99 = v97;
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v88, v93, v94, v97, v96, v87);
        operator delete(v99);
      }

      v100 = __p;
      if (((v181 - __p) & 0x3FFFFFFFCLL) == 0)
      {
        break;
      }

      v101 = 0;
      v102 = ((v181 - __p) >> 2);
      v103 = 0.0;
      do
      {
        v104 = v100[v101];
        v105 = 0.0;
        if (v104)
        {
          v105 = (~(-1 << v104) / log2f((v101 + 2)));
        }

        v103 = v103 + v105;
        ++v101;
      }

      while (v102 != v101);
      v106 = v103;
      v181 = v100;
      operator delete(v100);
      if (v106 == 0.0)
      {
        goto LABEL_118;
      }

      if (v33 != v59)
      {
        v107 = v33;
        v108 = 1.0 / v106;
        do
        {
          v109 = *(v107 + 1);
          v110 = *(__src + 12 * *v107 + 4);
          v111 = *(__src + 12 * v109 + 4);
          v112 = 1.0 / log2f(*v107 + 2.0);
          v35 = -1.0;
          v113 = log2f(v109 + 2.0);
          v114 = v108 * ((((1.0 / v113) * ~(-1 << v111)) + (~(-1 << v110) * v112)) - (((1.0 / v113) * ~(-1 << v110)) + (~(-1 << v111) * v112)));
          v115 = -v114;
          if (v114 >= 0.0)
          {
            v115 = v114;
          }

          v107[2] = v107[2] * v115;
          v107 += 3;
        }

        while (v107 != v59);
      }

LABEL_127:
      v123 = 1.0 / *(a1 + 24);
      v124 = *(a1 + 32);
      if (v124 != 0.0)
      {
        v123 = v123 * (v124 / (*(*v165 + v166) - *(*v165 + v170)));
      }

      if (v33 != v59)
      {
        v125 = *v164;
        v126 = v33;
        do
        {
          v127 = __src + 12 * *v126;
          v128 = __src + 12 * *(v126 + 1);
          v129 = v123 * v126[2];
          v130 = *v127 - *v128;
          if (v130 >= -88.7)
          {
            v131 = -v130;
          }

          else
          {
            v131 = 88.7;
          }

          v132 = 1.0 / ((expf(v131) + 1.0) + 1.0e-16);
          v133 = v132 + v35;
          v134 = v132 * (1.0 - v132);
          if (v134 < 1.0e-16)
          {
            v134 = 1.0e-16;
          }

          v135 = (v129 + v129) * v134;
          v136 = (v125 + 8 * *(v127 + 8));
          v137 = v136[1] + v135;
          *v136 = *v136 + (v129 * v133);
          v136[1] = v137;
          v138 = (v125 + 8 * *(v128 + 8));
          v139 = v138[1] + v135;
          *v138 = *v138 - (v129 * v133);
          v138[1] = v139;
          v126 += 3;
        }

        while (v126 != v59);
      }

      v32 = v166;
      if (v166 == v156)
      {
        if (v174.__ptr_)
        {
          v175 = v174.__ptr_;
          operator delete(v174.__ptr_);
        }

        if (__src)
        {
          operator delete(__src);
        }

        if (v33)
        {
          operator delete(v33);
        }

        goto LABEL_148;
      }
    }

    if (__p)
    {
      v181 = __p;
      operator delete(__p);
    }

LABEL_118:
    if (v33 != v59)
    {
      v116 = 0;
      v117 = (v59 - v33 - 12) / 0xC;
      v118 = (v117 + 4) & 0x3FFFFFFFFFFFFFFCLL;
      v119 = vdupq_n_s64(v117);
      v120 = (v33 + 32);
      do
      {
        v121 = vdupq_n_s64(v116);
        v122 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(v121, xmmword_274E1F3B0)));
        if (vuzp1_s16(v122, *v119.i8).u8[0])
        {
          *(v120 - 6) = 0;
        }

        if (vuzp1_s16(v122, *&v119).i8[2])
        {
          *(v120 - 3) = 0;
        }

        if (vuzp1_s16(*&v119, vmovn_s64(vcgeq_u64(v119, vorrq_s8(v121, xmmword_274E1FC60)))).i32[1])
        {
          *v120 = 0;
          v120[3] = 0;
        }

        v116 += 4;
        v120 += 12;
      }

      while (v118 != v116);
    }

    goto LABEL_127;
  }

LABEL_148:
  dmlc::OMPException::Rethrow(&v183);
  std::mutex::~mutex(v184);
  std::exception_ptr::~exception_ptr(&v183);
  if (v172)
  {
    v173[0] = v172;
    operator delete(v172);
  }

  v140 = *MEMORY[0x277D85DE8];
}

void sub_274D580E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a47);
  if (v47)
  {
    operator delete(v47);
  }

  JUMPOUT(0x274D58274);
}

void sub_274D580F0(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D57F54);
  }

  JUMPOUT(0x274D581F0);
}

void sub_274D58100(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D57F54);
  }

  JUMPOUT(0x274D581F0);
}

void sub_274D581C0()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5822CLL);
}

void sub_274D581CC()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5822CLL);
}

void sub_274D581DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (v49)
  {
    operator delete(v49);
  }

  JUMPOUT(0x274D58274);
}

void sub_274D581E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v48 = a47;
  a47 = 0;
  if (v48)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a47, v48);
  }

  _Unwind_Resume(a1);
}

void sub_274D5826C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D58274);
  }

  __clang_call_terminate(a1);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(float *a1, float *a2, unint64_t a3, float *a4, uint64_t a5, float a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *a1;
      if (v8 > *a1)
      {
        *a1 = v8;
        *(a2 - 1) = v9;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      v20 = a3 >> 1;
      v21 = &a1[a3 >> 1];
      v22 = a3 >> 1;
      if (a3 <= a5)
      {
        v23 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(a1, v21, v22, a4, a6);
        v24 = &v19[v20];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v19[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *v26;
          v28 = *v26 > *v19;
          if (*v26 <= *v19)
          {
            v27 = *v19;
          }

          v19 += *v26 <= *v19;
          v26 += v28;
          *v7++ = v27;
          if (v19 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              *v7++ = v30;
            }

            return;
          }
        }

        while (v19 != v24)
        {
          v29 = *v19++;
          *v7++ = v29;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(a1, v21, v22, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v19, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v19, a5);
      }
    }

    else if (a1 != a2)
    {
      v11 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v12 = 0;
        v13 = a1;
        do
        {
          v14 = *v13;
          v13 = v11;
          v15 = *v11;
          if (*v11 > v14)
          {
            v16 = v12;
            while (1)
            {
              *(a1 + v16 + 4) = v14;
              if (!v16)
              {
                break;
              }

              v14 = *(a1 + v16 - 4);
              v16 -= 4;
              if (v15 <= v14)
              {
                v17 = (a1 + v16 + 4);
                goto LABEL_16;
              }
            }

            v17 = a1;
LABEL_16:
            *v17 = v15;
          }

          v11 = v13 + 1;
          v12 += 4;
        }

        while (v13 + 1 != a2);
      }
    }
  }
}

float std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(float *a1, float *a2, unint64_t a3, float *a4, float result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      result = *v7;
      *v5 = *v7;
      return result;
    }

    if (a3 == 2)
    {
      v9 = *(a2 - 1);
      v10 = v9 <= *a1;
      if (v9 <= *a1)
      {
        v9 = *a1;
      }

      *a4 = v9;
      v5 = a4 + 1;
      if (v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(a1, v19, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        result = *v20;
        v21 = *v20 <= *v7;
        if (*v20 <= *v7)
        {
          result = *v7;
        }

        v20 += *v20 > *v7;
        v7 += v21;
        *v5++ = result;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v23 = *v20++;
            result = v23;
            *v5++ = v23;
          }

          return result;
        }
      }

      while (v7 != v19)
      {
        v22 = *v7++;
        result = v22;
        *v5++ = v22;
      }
    }

    else if (a1 != a2)
    {
      v11 = a1 + 1;
      result = *a1;
      *a4 = *a1;
      if (a1 + 1 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v15 = *v14++;
          result = v15;
          if (*v11 <= v15)
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = result;
            v16 = a4;
            if (v13 != a4)
            {
              v17 = v12;
              while (1)
              {
                v16 = (a4 + v17);
                v18 = *(a4 + v17 - 4);
                if (*v11 <= v18)
                {
                  break;
                }

                *v16 = v18;
                v17 -= 4;
                if (!v17)
                {
                  v16 = a4;
                  break;
                }
              }
            }

            result = *v11;
            *v16 = *v11;
          }

          ++v11;
          v12 += 4;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

float *std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v10 = result;
    while (a4 > a7 && v7 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v11 = 0;
      v12 = *a2;
      v13 = -a4;
      while (1)
      {
        v14 = v10[v11 / 4];
        if (v12 > v14)
        {
          break;
        }

        v11 += 4;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v17 = &v10[v11 / 4];
      if (-v13 >= v7)
      {
        if (v13 == -1)
        {
          v10[v11 / 4] = v12;
          *a2 = v14;
          return result;
        }

        v26 = v16 / 2;
        v27 = &v10[v16 / 2];
        v19 = a2;
        if (a2 != a3)
        {
          v28 = a3 - a2;
          v19 = a2;
          do
          {
            v29 = v28 >> 1;
            v30 = &v19[v28 >> 1];
            v32 = *v30;
            v31 = v30 + 1;
            v28 += ~(v28 >> 1);
            if (v32 > v27[v11 / 4])
            {
              v19 = v31;
            }

            else
            {
              v28 = v29;
            }
          }

          while (v28);
        }

        v18 = v19 - a2;
        v20 = &v27[v11 / 4];
      }

      else
      {
        v18 = v7 / 2;
        v19 = &a2[v7 / 2];
        v20 = a2;
        if (a2 - v10 != v11)
        {
          v21 = (a2 - v10 - v11) >> 2;
          v20 = &v10[v11 / 4];
          do
          {
            v22 = v21 >> 1;
            v23 = &v20[v21 >> 1];
            v25 = *v23;
            v24 = v23 + 1;
            v21 += ~(v21 >> 1);
            if (*v19 > v25)
            {
              v21 = v22;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v21);
        }

        v26 = (v20 - v10 - v11) >> 2;
      }

      v33 = v19;
      v34 = a2 - v20;
      if (a2 != v20)
      {
        v33 = v20;
        v35 = v19 - a2;
        if (v19 != a2)
        {
          if (v20 + 1 == a2)
          {
            v36 = *v20;
            v81 = a6;
            v83 = a7;
            v37 = a3;
            v79 = v18;
            v38 = v26;
            memmove(v20, a2, v19 - a2);
            v26 = v38;
            v18 = v79;
            a6 = v81;
            v17 = &v10[v11 / 4];
            a7 = v83;
            a3 = v37;
            v33 = (v20 + v35);
            *(v20 + v35) = v36;
          }

          else if (a2 + 1 == v19)
          {
            v39 = *(v19 - 1);
            v33 = v20 + 1;
            if (v19 - 1 != v20)
            {
              v82 = a6;
              v84 = a7;
              v40 = a3;
              v80 = v18;
              v41 = v26;
              memmove(v20 + 1, v20, (v19 - 1) - v20);
              v26 = v41;
              v18 = v80;
              a6 = v82;
              v17 = &v10[v11 / 4];
              a7 = v84;
              a3 = v40;
            }

            *v20 = v39;
          }

          else
          {
            v42 = v34 >> 2;
            if (v34 >> 2 == v35 >> 2)
            {
              v43 = v20 + 1;
              v44 = a2 + 1;
              do
              {
                v45 = *(v43 - 1);
                *(v43 - 1) = *(v44 - 1);
                *(v44 - 1) = v45;
                if (v43 == a2)
                {
                  break;
                }

                ++v43;
              }

              while (v44++ != v19);
              v33 = a2;
            }

            else
            {
              v47 = v35 >> 2;
              v48 = v34 >> 2;
              do
              {
                v49 = v48;
                v48 = v47;
                v47 = v49 % v47;
              }

              while (v47);
              v50 = &v20[v48];
              do
              {
                v51 = *(v50-- - 1);
                v52 = v51;
                v53 = (v50 + v34);
                v54 = v50;
                do
                {
                  v55 = v53;
                  *v54 = *v53;
                  v56 = &v53[v42];
                  v57 = __OFSUB__(v42, v19 - v53);
                  v59 = v42 - (v19 - v53);
                  v58 = (v59 < 0) ^ v57;
                  v53 = &v20[v59];
                  if (v58)
                  {
                    v53 = v56;
                  }

                  v54 = v55;
                }

                while (v53 != v50);
                *v55 = v52;
              }

              while (v50 != v20);
              v33 = (v20 + v35);
            }
          }
        }
      }

      a4 = -(v26 + v13);
      v60 = v7 - v18;
      if (v26 + v18 >= v7 - (v26 + v18) - v13)
      {
        v65 = v26;
        v66 = -(v26 + v13);
        v67 = v18;
        v62 = a6;
        v63 = a7;
        v10 = v17;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v33, v19, a3, v66, v60);
        v19 = v20;
        v60 = v67;
        a4 = v65;
        a3 = v33;
      }

      else
      {
        v61 = &v10[v11 / 4];
        v62 = a6;
        v63 = a7;
        v64 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v61, v20, v33, v26, v18);
        a3 = v64;
        v10 = v33;
      }

      v7 = v60;
      a2 = v19;
      a6 = v62;
      a7 = v63;
      if (!v60)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (a2 != v10)
      {
        v71 = -a6;
        v72 = a6;
        v73 = v10;
        do
        {
          v74 = *v73++;
          *v72++ = v74;
          v71 -= 4;
        }

        while (v73 != a2);
        while (a2 != a3)
        {
          v75 = *a2;
          v76 = *a2 <= *a6;
          if (*a2 <= *a6)
          {
            v75 = *a6;
          }

          a2 += *a2 > *a6;
          a6 += v76;
          *v10++ = v75;
          if (v72 == a6)
          {
            return result;
          }
        }

        return memmove(v10, a6, -(a6 + v71));
      }
    }

    else if (a2 != a3)
    {
      v68 = 0;
      do
      {
        a6[v68] = a2[v68];
        ++v68;
      }

      while (&a2[v68] != a3);
      v69 = &a6[v68];
      while (a2 != v10)
      {
        v70 = *(v69 - 1);
        if (v70 <= *(a2 - 1))
        {
          --v69;
        }

        else
        {
          v70 = *--a2;
        }

        *--a3 = v70;
        if (v69 == a6)
        {
          return result;
        }
      }

      if (v69 != a6)
      {
        v77 = 0x3FFFFFFFFFFFFFFFLL;
        do
        {
          v78 = *--v69;
          a3[v77--] = v78;
        }

        while (v69 != a6);
      }
    }
  }

  return result;
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lambda_rank_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::LambdaRankParam>(v7, *v4, (a1 + 16));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D58CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "rank:map");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5)
{
  v161 = *MEMORY[0x277D85DE8];
  __p = ((*(*a2 + 8) - **a2) >> 2);
  v151 = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (__p != v151)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v151);
  }

  LODWORD(v159.__ptr_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v151, 2uLL);
  v11 = *(a3 + 48);
  v12 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v13 = v151;
  *(v151 + 1) = v12;
  v14 = *(a3 + 56);
  if (v14 == v11)
  {
    v15 = &v151;
  }

  else
  {
    v13 = v11;
    v15 = (a3 + 48);
  }

  if (v14 == v11)
  {
    v16 = v152;
  }

  else
  {
    v16 = (a3 + 56);
  }

  if (*v16 == v13 || v12 != *(*v16 - 1))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v159);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu", 768);
    v121 = dmlc::LogMessageFatal::GetEntry(&v159);
    v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "Check failed: gptr.size() != 0 && gptr.back() == info.labels.Size()", 67);
    v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, ": ", 2);
    v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, "group structure not consistent with #rows", 41);
    v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, ", ", 2);
    v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "group ponter size: ", 19);
    v127 = MEMORY[0x277C68E50](v126, (*v16 - *v15) >> 2);
    v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, ", ", 2);
    v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, "labels size: ", 13);
    v130 = MEMORY[0x277C68E50](v129, (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
    v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, ", ", 2);
    v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, "group pointer back: ", 20);
    if (*v16 == *v15)
    {
      v133 = 0;
    }

    else
    {
      v133 = *(*v16 - 1);
    }

    MEMORY[0x277C68E30](v132, v133);
    dmlc::LogMessageFatal::~LogMessageFatal(&v159);
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, v10) + 4) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(&v159, &__p, 818, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "Computing ", 10);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "rank:map", 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " gradients on CPU.", 18);
    xgboost::ConsoleLogger::~ConsoleLogger(&v159);
    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }
  }

  v19 = v152;
  if (v14 != v11)
  {
    v19 = (a3 + 56);
  }

  v20 = (*v19 - *v15) >> 2;
  v21 = (v20 - 1);
  if (v20 == 1)
  {
    v24 = 0;
    v22 = 0.0;
  }

  else
  {
    v22 = 0.0;
    v23 = **(a3 + 72);
    v24 = (v20 - 1);
    do
    {
      if (*(*(a3 + 72) + 8) == **(a3 + 72))
      {
        v25 = 1.0;
      }

      else
      {
        v25 = *v23;
      }

      v22 = v22 + v25;
      ++v23;
      --v21;
    }

    while (v21);
  }

  v26 = *(*(a3 + 24) + 8);
  v134 = **(a3 + 24);
  v27 = *(a3 + 40);
  v28 = *a5;
  v142 = *a2;
  v29 = (v142[1] - *v142) >> 2;
  v159.__ptr_ = 0;
  v144 = v27;
  v145 = v28;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v28, v29, &v159);
  v159.__ptr_ = 0;
  v160[0].__m_.__sig = 850045863;
  memset(v160[0].__m_.__opaque, 0, sizeof(v160[0].__m_.__opaque));
  v30 = (3 * (1111 * a4 + 1111)) >> 32;
  v31 = 1111 * a4 + 1111 + (((v30 + ((1111 * a4 + 1111 - v30) >> 1)) >> 30) | ((v30 + ((1111 * a4 + 1111 - v30) >> 1)) >> 30 << 31));
  if (v31 <= 1)
  {
    v31 = 1;
  }

  v156 = v31;
  __p = 0;
  v154 = 0;
  v155 = 0;
  if (v24)
  {
    __src = 0;
    v32 = 0;
    v135 = v24;
    v33 = v24 / v22;
    v141 = (v26 - v134) >> 2;
    v143 = 4 * v144;
    v149 = a3;
    v34 = 0;
    v137 = v15;
    do
    {
      v35 = *(*v15 + v34);
      v150 = v34;
      v139 = v34 + 1;
      if (v35 >= *(*v15 + v34 + 1))
      {
        v38 = __src;
      }

      else
      {
        v36 = (v134 + v143 * v35);
        v37 = v144 * (v35 - 1);
        v38 = __src;
        do
        {
          v37 += v144;
          if (v37 >= v141)
          {
            __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
          }

          v39 = &v38[-__src];
          v40 = 0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2);
          v41 = v40 + 1;
          if (v40 + 1 > 0x1555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-__src >> 2) > v41)
          {
            v41 = 0x5555555555555556 * (-__src >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v42 = 0x1555555555555555;
          }

          else
          {
            v42 = v41;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v42);
          }

          v43 = (4 * (&v38[-__src] >> 2));
          v44 = *v36;
          *v43 = *(*v142 + 4 * v35);
          v43[1] = v44;
          v43[2] = v35;
          v38 = (v43 + 3);
          v45 = 12 * v40 + 12 * (v39 / -12);
          memcpy(&v43[3 * (v39 / -12)], __src, v39);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v45;
          v36 = (v36 + v143);
          *(*v145 + 8 * v35++) = 0;
        }

        while (v35 < *(*v15 + v139));
      }

      v157 = xgboost::obj::ListEntry::CmpPred;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(__src, v38, &v157);
      std::vector<std::pair<float,unsigned int>>::resize(&__p, 0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2));
      v47 = __p;
      if (v38 != __src)
      {
        v48 = (__p + 4);
        v49 = (__src + 4);
        v50 = 1;
        do
        {
          v51 = *v49;
          v49 += 3;
          v46 = v51;
          *(v48 - 1) = v51;
          *v48 = v50 - 1;
          v48 += 2;
          v92 = 0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2) > v50++;
        }

        while (v92);
      }

      v158 = xgboost::common::CmpFirst;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v47, v154, &v158, v46);
      v136 = 0xAAAAAAAAAAAAAAABLL * (&v38[-__src] >> 2);
      v138 = v38;
      v52 = __p;
      v53 = v154;
      if (v154 == __p)
      {
        v57 = v32;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = (v154 - __p) >> 3;
        v57 = v32;
        v58 = v149;
        do
        {
          v59 = &v52[2 * v54];
          v60 = v56 - 2;
          v61 = 1;
          do
          {
            v62 = v61;
            v63 = v60;
            v54 = v55 + v61;
            if (v56 <= v54)
            {
              break;
            }

            ++v61;
            --v60;
          }

          while (v52[2 * v54] == *v59);
          if (v63 != -1)
          {
            v64 = *(a1 + 24);
            if (v64)
            {
              v147 = v54;
              do
              {
                v148 = v64;
                if (v55 < v54)
                {
                  v65 = v62;
                  v66 = (8 * v55) | 4;
                  do
                  {
                    LODWORD(v158) = 0;
                    HIDWORD(v158) = v63;
                    v67 = std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v156, &v158);
                    if (v67 >= v55)
                    {
                      v70 = **(v58 + 72);
                      if (*(*(v58 + 72) + 8) == v70)
                      {
                        v71 = 1.0;
                      }

                      else
                      {
                        v71 = *(v70 + 4 * v150);
                      }

                      v78 = __p + 8 * v62 + 8 * v67;
                      v73 = v33 * v71;
                      v74 = v57 - v32;
                      v79 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v32) >> 2);
                      v80 = v79 + 1;
                      if (v79 + 1 > 0x1555555555555555)
                      {
LABEL_138:
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v32 >> 2) > v80)
                      {
                        v80 = 0x5555555555555556 * (-v32 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v32 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v81 = 0x1555555555555555;
                      }

                      else
                      {
                        v81 = v80;
                      }

                      if (v81)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v81);
                      }

                      v82 = 12 * v79;
                      v83 = *(__p + v66);
                      v84 = *(v78 + 1);
                    }

                    else
                    {
                      v68 = **(v58 + 72);
                      if (*(*(v58 + 72) + 8) == v68)
                      {
                        v69 = 1.0;
                      }

                      else
                      {
                        v69 = *(v68 + 4 * v150);
                      }

                      v72 = __p + 8 * v67;
                      v73 = v33 * v69;
                      v74 = v57 - v32;
                      v75 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v32) >> 2);
                      v76 = v75 + 1;
                      if (v75 + 1 > 0x1555555555555555)
                      {
                        goto LABEL_138;
                      }

                      if (0x5555555555555556 * (-v32 >> 2) > v76)
                      {
                        v76 = 0x5555555555555556 * (-v32 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v32 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v77 = 0x1555555555555555;
                      }

                      else
                      {
                        v77 = v76;
                      }

                      if (v77)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v77);
                      }

                      v82 = 12 * v75;
                      v83 = *(v72 + 1);
                      v84 = *(__p + v66);
                    }

                    *v82 = v83;
                    *(v82 + 4) = v84;
                    *(v82 + 8) = v73;
                    v57 = (v82 + 12);
                    v85 = v82 - v74;
                    memcpy((v82 - v74), v32, v74);
                    if (v32)
                    {
                      operator delete(v32);
                    }

                    v32 = v85;
                    v58 = v149;
                    v66 += 8;
                    --v65;
                  }

                  while (v65);
                }

                v64 = v148 - 1;
                v54 = v147;
              }

              while (v148 != 1);
              v52 = __p;
              v53 = v154;
            }
          }

          v56 = (v53 - v52) >> 3;
          v55 = v54;
        }

        while (v56 > v54);
      }

      if (v138 != __src)
      {
        if (!(v136 >> 60))
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v34 = v139;
      if (v32 != v57)
      {
        v86 = v32;
        do
        {
          v87 = *v86;
          v88 = *(v86 + 4);
          v89 = 0.0;
          if (*v86 != v88 && MEMORY[0xFFFFFFFFC] != 0.0)
          {
            v90 = *(__src + 12 * v87 + 4);
            v91 = *(__src + 12 * v88 + 4);
            v92 = v87 <= v88;
            if (v87 > v88)
            {
              v93 = *(v86 + 4);
            }

            else
            {
              v93 = *v86;
            }

            if (v87 <= v88)
            {
              v87 = *(v86 + 4);
            }

            if (v92)
            {
              v94 = v90;
            }

            else
            {
              v94 = *(__src + 12 * v88 + 4);
            }

            if (!v92)
            {
              v91 = v90;
            }

            v95 = (16 * v87);
            v96 = *v95;
            if (v93)
            {
              v96 = v96 - *(16 * v93 - 16);
            }

            v92 = v94 <= 0.0;
            v89 = 0.0;
            if (v92)
            {
              v97 = 0.0;
            }

            else
            {
              v97 = 1.0;
            }

            if (v91 <= 0.0)
            {
              v98 = 0.0;
            }

            else
            {
              v98 = 1.0;
            }

            if (v97 != v98)
            {
              if (v97 >= v98)
              {
                v99 = *(v95 - 3) - *(16 * v93 + 4);
                v100 = *(16 * v87 + 0xC);
                v93 = v87;
              }

              else
              {
                v99 = *(v95 - 2) - *(16 * v93 + 8);
                v100 = *(16 * v93 + 0xC) + 1.0;
              }

              v101 = (((v99 + 0.0) + (v100 / (v93 + 1))) - v96) / MEMORY[0xFFFFFFFFC];
              if (v101 >= 0.0)
              {
                v89 = (((v99 + 0.0) + (v100 / (v93 + 1))) - v96) / MEMORY[0xFFFFFFFFC];
              }

              else
              {
                v89 = -v101;
              }
            }
          }

          *(v86 + 8) = v89 * *(v86 + 8);
          v86 += 12;
        }

        while (v86 != v57);
      }

      v102 = 1.0 / *(a1 + 24);
      v103 = *(a1 + 32);
      if (v103 != 0.0)
      {
        v102 = v102 * (v103 / (*(*v137 + v139) - *(*v137 + v150)));
      }

      if (v32 == v57)
      {
        v15 = v137;
      }

      else
      {
        v104 = *v145;
        v105 = v32;
        do
        {
          v106 = __src + 12 * *v105;
          v107 = __src + 12 * *(v105 + 1);
          v108 = v102 * v105[2];
          v109 = *v106 - *v107;
          if (v109 >= -88.7)
          {
            v110 = -v109;
          }

          else
          {
            v110 = 88.7;
          }

          v111 = 1.0 / ((expf(v110) + 1.0) + 1.0e-16);
          v112 = v111 + -1.0;
          v113 = v111 * (1.0 - v111);
          if (v113 < 1.0e-16)
          {
            v113 = 1.0e-16;
          }

          v114 = (v108 + v108) * v113;
          v115 = (v104 + 8 * *(v106 + 8));
          v116 = v115[1] + v114;
          *v115 = *v115 + (v108 * v112);
          v115[1] = v116;
          v117 = (v104 + 8 * *(v107 + 8));
          v118 = v117[1] + v114;
          *v117 = *v117 - (v108 * v112);
          v117[1] = v118;
          v105 += 3;
        }

        while (v105 != v57);
        v15 = v137;
      }
    }

    while (v139 != v135);
    if (__p)
    {
      v154 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      operator delete(__src);
    }

    if (v32)
    {
      operator delete(v32);
    }
  }

  dmlc::OMPException::Rethrow(&v159);
  std::mutex::~mutex(v160);
  std::exception_ptr::~exception_ptr(&v159);
  if (v151)
  {
    v152[0] = v151;
    operator delete(v151);
  }

  v119 = *MEMORY[0x277D85DE8];
}

void sub_274D59D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a39);
  if (v39)
  {
    operator delete(v39);
  }

  JUMPOUT(0x274D59EC4);
}

void sub_274D59D3C(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D59BA8);
  }

  JUMPOUT(0x274D59E40);
}

void sub_274D59D50(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D59BA8);
  }

  JUMPOUT(0x274D59E40);
}

void sub_274D59E10()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D59E7CLL);
}

void sub_274D59E1C()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D59E7CLL);
}

void sub_274D59E2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    operator delete(v37);
  }

  JUMPOUT(0x274D59EC4);
}

void sub_274D59E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v40 = a39;
  a39 = 0;
  if (v40)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a39, v40);
  }

  _Unwind_Resume(a1);
}

void sub_274D59EBC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D59EC4);
  }

  __clang_call_terminate(a1);
}

uint64_t rabit::c_api::Allreduce(rabit::engine *a1, const char *a2, int a3, int a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (a3 > 3)
      {
        if (a3 < 8)
        {
          goto LABEL_36;
        }
      }

      else if (a3 >= 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_12;
      }

      if (a3 > 3)
      {
        if (a3 <= 5)
        {
          goto LABEL_36;
        }

        if (a3 == 6 || a3 == 7)
        {
          v4 = "DataType does not support bitwise or operation";
          goto LABEL_33;
        }
      }

      else if (a3 >= 0)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    v4 = "unknown data_type";
LABEL_33:

    rabit::utils::Error(v4, a2);
  }

  if (!a4)
  {
    if (a3 > 3)
    {
      if (a3 < 8)
      {
        goto LABEL_36;
      }
    }

    else if (a3 >= 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a4 != 1)
  {
LABEL_12:
    v4 = "unknown enum_op";
    goto LABEL_33;
  }

  if (a3 <= 3)
  {
    if (a3 >= 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a3 > 6 && a3 != 7)
  {
    goto LABEL_32;
  }

LABEL_36:
  v5 = *(*rabit::engine::GetEngine(a1) + 8);

  return v5();
}

void sub_274D5A6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t rabit::c_api::Allgather(rabit::c_api *this, const char *a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  if (a6 > 3)
  {
    if (a6 < 8)
    {
      goto LABEL_5;
    }

LABEL_8:

    rabit::utils::Error("unknown data_type", a2);
  }

  if (a6 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = **rabit::engine::GetEngine(this);

  return v6();
}

uint64_t RabitInit(rabit::engine *a1, int a2, char **a3)
{
  v3 = rabit::engine::Init(a1, a2, a3);
  if ((v3 & 1) == 0)
  {
    XGBAPISetLastError("Failed to initialize RABIT.");
  }

  return v3;
}

uint64_t RabitFinalize(rabit::engine *a1)
{
  v1 = rabit::engine::Finalize(a1);
  if ((v1 & 1) == 0)
  {
    XGBAPISetLastError("Failed to shutdown RABIT worker.");
  }

  return v1;
}

uint64_t RabitGetRingPrevRank(rabit::engine *a1)
{
  v1 = *(*rabit::engine::GetEngine(a1) + 56);

  return v1();
}

uint64_t RabitGetRank(rabit::engine *a1)
{
  v1 = *(*rabit::engine::GetEngine(a1) + 64);

  return v1();
}

uint64_t RabitGetWorldSize(rabit::engine *a1)
{
  v1 = *(*rabit::engine::GetEngine(a1) + 72);

  return v1();
}

uint64_t RabitTrackerPrint(char *__s)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(__p, __s);
  Engine = rabit::engine::GetEngine(v1);
  (*(*Engine + 96))(Engine, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_274D5AA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, std::string *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 2)
  {
    v16 = __cxa_begin_catch(exception_object);
    v17 = (*(*v16 + 16))(v16);
    XGBAPISetLastError(v17);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v18 = __cxa_begin_catch(exception_object);
    v19 = (*(*v18 + 16))(v18);
    std::string::basic_string[abi:ne200100]<0>(&a11, v19);
    std::runtime_error::runtime_error(&a10, &a11);
    a10.__vftable = &unk_2883DE270;
    v20 = std::runtime_error::what(&a10);
    XGBAPISetLastError(v20);
    std::runtime_error::~runtime_error(&a10);
    if (a16 < 0)
    {
      operator delete(a11);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D5AA54);
}

void RabitGetProcessorName(rabit::engine *a1, std::string::size_type *a2, std::string::size_type a3)
{
  Engine = rabit::engine::GetEngine(a1);
  (*(*Engine + 88))(&v10);
  size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  if (size > a3)
  {
    std::string::resize(&v10, a3 - 1, 0);
    v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  if ((v8 & 0x80) != 0)
  {
    v9 = v10.__r_.__value_.__r.__words[0];
    strcpy(a1, v10.__r_.__value_.__l.__data_);
    *a2 = v10.__r_.__value_.__l.__size_;
    operator delete(v9);
  }

  else
  {
    strcpy(a1, &v10);
    *a2 = v8;
  }
}

void sub_274D5AC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RabitBroadcast(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  Engine = rabit::engine::GetEngine(a1);
  (*(*Engine + 16))(Engine, a1, a2, a3);
  return 0;
}

uint64_t RabitLoadCheckPoint(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4)
{
  v7 = a1;
  if ((atomic_load_explicit(&_MergedGlobals_10, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&_MergedGlobals_10);
    if (a1)
    {
      qword_280AF67C8 = 0;
      unk_280AF67D0 = 0;
      qword_280AF67C0 = 0;
      __cxa_atexit(MEMORY[0x277D82640], &qword_280AF67C0, &dword_274CA4000);
      __cxa_guard_release(&_MergedGlobals_10);
    }
  }

  if ((atomic_load_explicit(&qword_280AF67B8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_280AF67B8);
    if (a1)
    {
      qword_280AF67E0 = 0;
      unk_280AF67E8 = 0;
      qword_280AF67D8 = 0;
      __cxa_atexit(MEMORY[0x277D82640], &qword_280AF67D8, &dword_274CA4000);
      __cxa_guard_release(&qword_280AF67B8);
    }
  }

  v21[0] = &unk_2883E2790;
  v21[1] = &qword_280AF67C0;
  v20[0] = &unk_2883E2790;
  v20[1] = &qword_280AF67D8;
  Engine = rabit::engine::GetEngine(a1);
  v10 = *(*Engine + 24);
  if (a3)
  {
    result = v10(Engine, v21, v20, v9);
    if (byte_280AF67D7 < 0)
    {
      if (qword_280AF67C8)
      {
        v12 = qword_280AF67C0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (byte_280AF67D7)
    {
      v12 = &qword_280AF67C0;
    }

    else
    {
      v12 = 0;
    }

    *v7 = v12;
    v14 = byte_280AF67D7;
    if (byte_280AF67D7 < 0)
    {
      v14 = qword_280AF67C8;
    }

    *a2 = v14;
    if (byte_280AF67EF < 0)
    {
      v15 = qword_280AF67D8;
      if (!qword_280AF67E0)
      {
        v15 = 0;
      }
    }

    else if (byte_280AF67EF)
    {
      v15 = &qword_280AF67D8;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    v16 = &qword_280AF67E0;
    v17 = &byte_280AF67EF;
    a2 = a4;
  }

  else
  {
    result = v10(Engine, v21, 0, v9);
    if (byte_280AF67D7 < 0)
    {
      if (qword_280AF67C8)
      {
        v13 = qword_280AF67C0;
      }

      else
      {
        v13 = 0;
      }
    }

    else if (byte_280AF67D7)
    {
      v13 = &qword_280AF67C0;
    }

    else
    {
      v13 = 0;
    }

    *v7 = v13;
    v16 = &qword_280AF67C8;
    v17 = &byte_280AF67D7;
  }

  v18 = *v17;
  v19 = *v16;
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  *a2 = v19;
  return result;
}

uint64_t RabitCheckPoint(rabit::engine *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = &unk_2883E27E8;
  v10[1] = a1;
  v10[2] = a2;
  v9[0] = &unk_2883E27E8;
  v9[1] = a3;
  v9[2] = a4;
  Engine = rabit::engine::GetEngine(a1);
  v6 = *Engine + 32;
  if (a3)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return (*(*Engine + 32))(Engine, v10, v7);
}

uint64_t RabitVersionNumber(rabit::engine *a1)
{
  v1 = *(*rabit::engine::GetEngine(a1) + 48);

  return v1();
}

void rabit::c_api::ReadWrapper::Load(uint64_t a1, uint64_t (***a2)(void, std::string::size_type *, uint64_t))
{
  __n = 0;
  v4 = (**a2)(a2, &__n, 8) != 0;
  rabit::utils::Assert(v4, "Read pickle string", v5);
  std::string::resize(*(a1 + 8), __n, 0);
  if (__n)
  {
    v6 = *(a1 + 8);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = (**a2)(a2, v6) != 0;
    rabit::utils::Assert(v7, "Read pickle string", v8);
  }
}

uint64_t rabit::c_api::WriteWrapper::Save(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  (*(*a2 + 8))(a2, &v5, 8);
  return (*(*a2 + 8))(a2, *(a1 + 8), *(a1 + 16));
}

char *rabit::op::Reducer<rabit::op::Max,char>(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *rabit::op::Reducer<rabit::op::Max,unsigned char>(unsigned __int8 *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Max,int>(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned int *rabit::op::Reducer<rabit::op::Max,unsigned int>(unsigned int *result, unsigned int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::Max,long>(uint64_t *result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *rabit::op::Reducer<rabit::op::Max,float>(float *result, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 < *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *rabit::op::Reducer<rabit::op::Max,double>(double *result, double *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 < *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::Min,char>(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *rabit::op::Reducer<rabit::op::Min,unsigned char>(unsigned __int8 *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Min,int>(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned int *rabit::op::Reducer<rabit::op::Min,unsigned int>(unsigned int *result, unsigned int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::Min,long>(uint64_t *result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t *rabit::op::Reducer<rabit::op::Min,unsigned long>(unint64_t *result, unint64_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *rabit::op::Reducer<rabit::op::Min,float>(float *result, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 > *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *rabit::op::Reducer<rabit::op::Min,double>(double *result, double *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 > *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::Sum,char>(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::Sum,unsigned char>(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Sum,int>(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Sum,unsigned int>(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::Sum,long>(uint64_t *result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::BitOR,char>(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::BitOR,unsigned char>(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::BitOR,int>(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::BitOR,unsigned int>(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::BitOR,long>(uint64_t *result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::BitOR,unsigned long>(uint64_t *result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t dmlc::RecordIOWriter::WriteRecord(dmlc::RecordIOWriter *this, char *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 29)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 12);
    v7 = dmlc::LogMessageFatal::GetEntry(&v18);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: size < (1 << 29U)", 31);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RecordIO only accept record less than 2^29 bytes", 48);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
  }

  v18 = -824761590;
  if (v3 <= 3)
  {
    goto LABEL_17;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    if (a2[v10] == v18 && __PAIR64__(a2[v10 + 2], a2[v10 + 1]) == __PAIR64__(BYTE2(v18), BYTE1(v18)) && a2[v10 + 3] == HIBYTE(v18))
    {
      if (v11)
      {
        v12 = 0x40000000;
      }

      else
      {
        v12 = 0x20000000;
      }

      v17 = v12 | (v10 - v11);
      (*(**this + 8))(*this, &v18, 4);
      (*(**this + 8))(*this, &v17, 4);
      if (v10 != v11)
      {
        (*(**this + 8))(*this, &a2[v11], (v10 - v11));
      }

      ++*(this + 2);
      v11 = v10 + 4;
    }

    v10 += 4;
  }

  while (v10 < (v3 & 0xFFFFFFFC));
  if (v11)
  {
    v13 = 1610612736;
  }

  else
  {
LABEL_17:
    v11 = 0;
    v13 = 0;
  }

  v14 = (v3 + 3) & 0xFFFFFFFC;
  v17 = v13 | (v3 - v11);
  (*(**this + 8))(*this, &v18, 4);
  result = (*(**this + 8))(*this, &v17, 4);
  if (v3 != v11)
  {
    result = (*(**this + 8))(*this, &a2[v11], v3 - v11);
  }

  v16 = 0;
  if (v14 != v3)
  {
    return (*(**this + 8))(*this, &v16, v14 - v3);
  }

  return result;
}

uint64_t dmlc::RecordIOReader::NextRecord(void *a1, std::string *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((a1[2] & 1) == 0)
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    v5 = 0;
    while (1)
    {
      result = (***a1)(*a1, &v27, 8);
      if (result != 8)
      {
        if (!result)
        {
          *(a1 + 16) = 1;
          goto LABEL_34;
        }

        Entry = dmlc::LogMessageFatal::GetEntry(&v26);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 64);
        v7 = dmlc::LogMessageFatal::GetEntry(&v26);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: nread == sizeof(header)", 37);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Inavlid RecordIO File", 21);
        dmlc::LogMessageFatal::~LogMessageFatal(&v26);
      }

      if (v27 != -824761590)
      {
        v10 = dmlc::LogMessageFatal::GetEntry(&v26);
        dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 65);
        v11 = dmlc::LogMessageFatal::GetEntry(&v26);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: header[0] == RecordIOWriter::kMagic", 49);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Invalid RecordIO File", 21);
        dmlc::LogMessageFatal::~LogMessageFatal(&v26);
      }

      v14 = v28;
      v15 = v28 & 0x1FFFFFFF;
      v16 = ((v28 & 0x1FFFFFFF) + 3) & 0x3FFFFFFC;
      std::string::resize(a2, v5 + v16, 0);
      if (v16)
      {
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          v17 = a2->__r_.__value_.__l.__size_ ? a2->__r_.__value_.__r.__words[0] : 0;
        }

        else
        {
          v17 = *(&a2->__r_.__value_.__s + 23) ? a2 : 0;
        }

        if ((***a1)(*a1, v17 + v5, v16) != v16)
        {
          v18 = dmlc::LogMessageFatal::GetEntry(&v26);
          dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 71);
          v19 = dmlc::LogMessageFatal::GetEntry(&v26);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: stream_->Read(BeginPtr(*out_rec) + size, upper_align) == upper_align", 82);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Invalid RecordIO File upper_align=", 34);
          MEMORY[0x277C68E30](v22, v16);
          dmlc::LogMessageFatal::~LogMessageFatal(&v26);
        }
      }

      v23 = v5 + v15;
      std::string::resize(a2, v23, 0);
      if (!(v14 >> 29) || v14 >> 29 == 3)
      {
        result = 1;
        goto LABEL_34;
      }

      v5 = v23 + 4;
      std::string::resize(a2, v23 + 4, 0);
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (a2->__r_.__value_.__l.__size_)
        {
          v24 = a2->__r_.__value_.__r.__words[0];
        }

        else
        {
          v24 = 0;
        }
      }

      else if (*(&a2->__r_.__value_.__s + 23))
      {
        v24 = a2;
      }

      else
      {
        v24 = 0;
      }

      *(&v24->__r_.__value_.__l.__data_ + v23) = -824761590;
    }
  }

  result = 0;
LABEL_34:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void *dmlc::RecordIOChunkReader::RecordIOChunkReader(void *a1, uint64_t a2, char *a3, unsigned int a4, unsigned int a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = (&a3[a5 - 1] / a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = v9 * a4;
  if (v10 >= a3)
  {
    v10 = a3;
  }

  NextRecordIOHead = dmlc::FindNextRecordIOHead((a2 + v10), &a3[a2], a3);
  v13 = v9 * (a4 + 1);
  if (v13 >= a3)
  {
    v13 = a3;
  }

  a1[3] = NextRecordIOHead;
  a1[4] = dmlc::FindNextRecordIOHead((a2 + v13), &a3[a2], v12);
  return a1;
}

void sub_274D5C148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *dmlc::FindNextRecordIOHead(dmlc *this, char *a2, char *a3)
{
  v3 = a2;
  v6 = 0;
  v7 = this & 3;
  if ((this & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v6);
  }

  v6 = 0;
  v7 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v6);
  }

  v4 = (this + 4);
  if (this + 4 < a2)
  {
    while (*(v4 - 1) != -824761590 || *v4 >> 30)
    {
      if (++v4 >= a2)
      {
        return v3;
      }
    }

    return (v4 - 1);
  }

  return v3;
}

void sub_274D5C33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL dmlc::RecordIOChunkReader::NextRecord(std::string *this, void *a2)
{
  data = this[1].__r_.__value_.__l.__data_;
  size = this[1].__r_.__value_.__l.__size_;
  if (data < size)
  {
    if (*data != -824761590)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v40);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 117);
      v7 = dmlc::LogMessageFatal::GetEntry(&v40);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v40);
    }

    v9 = *(data + 1);
    if (v9 >> 29 != 1)
    {
      if (!(v9 >> 29))
      {
        v10 = v9 & 0x1FFFFFFF;
        v11 = this[1].__r_.__value_.__l.__size_;
        v12 = this[1].__r_.__value_.__r.__words[0] + 8;
        *a2 = v12;
        v13 = v12 + ((v10 + 3) & 0x3FFFFFFC);
        this[1].__r_.__value_.__r.__words[0] = v13;
        if (v13 > v11)
        {
          v14 = dmlc::LogMessageFatal::GetEntry(&v39);
          dmlc::LogMessageFatal::Entry::Init(v14, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 125);
          v15 = dmlc::LogMessageFatal::GetEntry(&v39);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: pbegin_ <= pend_", 30);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Invalid RecordIO Format", 23);
          dmlc::LogMessageFatal::~LogMessageFatal(&v39);
        }

        v18 = v10;
LABEL_44:
        a2[1] = v18;
        return data < size;
      }

      v19 = dmlc::LogMessageFatal::GetEntry(&v38);
      dmlc::LogMessageFatal::Entry::Init(v19, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 131);
      v20 = dmlc::LogMessageFatal::GetEntry(&v38);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Check failed: cflag == 1U", 25);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v38);
    }

    std::string::resize(this, 0, 0);
    while (1)
    {
      v23 = this[1].__r_.__value_.__l.__data_;
      if ((v23 + 8) > this[1].__r_.__value_.__l.__size_)
      {
        v24 = dmlc::LogMessageFatal::GetEntry(&v37);
        dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 134);
        v25 = dmlc::LogMessageFatal::GetEntry(&v37);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: pbegin_ + 2 * sizeof(uint32_t) <= pend_", 53);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v37);
        v23 = this[1].__r_.__value_.__l.__data_;
      }

      if (*v23 != -824761590)
      {
        v27 = dmlc::LogMessageFatal::GetEntry(&v36);
        dmlc::LogMessageFatal::Entry::Init(v27, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 136);
        v28 = dmlc::LogMessageFatal::GetEntry(&v36);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v36);
      }

      v30 = *(v23 + 1);
      v31 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v31 & 0x8000000000000000) != 0)
      {
        v31 = this->__r_.__value_.__l.__size_;
      }

      std::string::resize(this, v31 + (v30 & 0x1FFFFFFF), 0);
      if ((v30 & 0x1FFFFFFF) != 0)
      {
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          if (this->__r_.__value_.__l.__size_)
          {
            v32 = this->__r_.__value_.__r.__words[0];
          }

          else
          {
            v32 = 0;
          }
        }

        else if (*(&this->__r_.__value_.__s + 23))
        {
          v32 = this;
        }

        else
        {
          v32 = 0;
        }

        memcpy(v32 + v31, (this[1].__r_.__value_.__r.__words[0] + 8), v30 & 0x1FFFFFFF);
        v31 += v30 & 0x1FFFFFFF;
      }

      this[1].__r_.__value_.__r.__words[0] += (((v30 & 0x1FFFFFFF) + 3) & 0x3FFFFFFC) + 8;
      if (v30 >> 29 == 3)
      {
        break;
      }

      std::string::resize(this, v31 + 4, 0);
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        if (this->__r_.__value_.__l.__size_)
        {
          v33 = this->__r_.__value_.__r.__words[0];
        }

        else
        {
          v33 = 0;
        }
      }

      else if (*(&this->__r_.__value_.__s + 23))
      {
        v33 = this;
      }

      else
      {
        v33 = 0;
      }

      *(&v33->__r_.__value_.__l.__data_ + v31) = -824761590;
    }

    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      if (this->__r_.__value_.__l.__size_)
      {
        v34 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        v34 = 0;
      }
    }

    else if (*(&this->__r_.__value_.__s + 23))
    {
      v34 = this;
    }

    else
    {
      v34 = 0;
    }

    *a2 = v34;
    v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = this->__r_.__value_.__l.__size_;
    }

    goto LABEL_44;
  }

  return data < size;
}

uint64_t xgboost::Version::Load(char ***this, const xgboost::Json *a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*this);
  std::string::basic_string[abi:ne200100]<0>(__p, "version");
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 16, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*this) + 24;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 == v4)
  {
    return -1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "version");
  v6 = (*(**this + 3))(*this, __p);
  v7 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v6);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(v7 + 2);
  if (*(v7 + 3) == v8 || (v9 = xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v8), v10 = *(v7 + 2), (*(v7 + 3) - v10) < 9) || (v11 = v9, v12 = xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v10 + 8)), v13 = *(v7 + 2), (*(v7 + 3) - v13) <= 0x10))
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = v12;
  v15 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v13 + 16)) + 4);
  return v11[4] | (v14[2] << 32);
}

void sub_274D5C8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 31);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Invaid version format in loaded JSON object: ", 45);
    xgboost::operator<<(v18, *v15);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __cxa_end_catch();
    JUMPOUT(0x274D5C888);
  }

  _Unwind_Resume(a1);
}

void *xgboost::operator<<(void *a1, atomic_uint *a2)
{
  memset(&__p, 0, sizeof(__p));
  v7 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  xgboost::Json::Dump(&v7, &__p, 16);
  if (a2 && atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*a2 + 8))(a2);
  }

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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_274D5CA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Version::Load(uint64_t (***a1)(void, std::string *, std::string::size_type))
{
  v47 = 0;
  v46 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v43, "Incorrect version format found in binary file.  Binary file from XGBoost < 1.0.0 is no longer supported. Please generate it again.");
  std::string::basic_string[abi:ne200100]<0>(&__p, "version:");
  memset(&v39, 0, sizeof(v39));
  if ((v42 & 0x80u) == 0)
  {
    v2 = v42;
  }

  else
  {
    v2 = v41;
  }

  std::string::resize(&v39, v2, 0);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v39;
  }

  else
  {
    v3 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v4 = v42;
  }

  else
  {
    v4 = v41;
  }

  v5 = (**a1)(a1, v3, v4);
  v6 = v42;
  if ((v42 & 0x80u) != 0)
  {
    v6 = v41;
  }

  v36 = v6;
  v37 = v5;
  if (v5 != v6)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v37, &v36);
  }

  if ((v42 & 0x80u) == 0)
  {
    v7 = v42;
  }

  else
  {
    v7 = v41;
  }

  size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  if (v7 != size || ((v42 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = &v39) : (v10 = v39.__r_.__value_.__r.__words[0]), memcmp(p_p, v10, v7)))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 49);
    v12 = dmlc::LogMessageFatal::GetEntry(&v38);
    if ((v45 & 0x80u) == 0)
    {
      v13 = &v43;
    }

    else
    {
      v13 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v14 = v45;
    }

    else
    {
      v14 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  if ((**a1)(a1, (&v47 + 4), 4) != 4)
  {
    v18 = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 52);
    v19 = dmlc::LogMessageFatal::GetEntry(&v38);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: fi->Read(&major)", 30);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
    if ((v45 & 0x80u) == 0)
    {
      v22 = &v43;
    }

    else
    {
      v22 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v23 = v45;
    }

    else
    {
      v23 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  if ((**a1)(a1, &v47, 4) != 4)
  {
    v24 = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 53);
    v25 = dmlc::LogMessageFatal::GetEntry(&v38);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: fi->Read(&minor)", 30);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    if ((v45 & 0x80u) == 0)
    {
      v28 = &v43;
    }

    else
    {
      v28 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v29 = v45;
    }

    else
    {
      v29 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  if ((**a1)(a1, &v46, 4) != 4)
  {
    v30 = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(v30, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 54);
    v31 = dmlc::LogMessageFatal::GetEntry(&v38);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Check failed: fi->Read(&patch)", 30);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
    if ((v45 & 0x80u) == 0)
    {
      v34 = &v43;
    }

    else
    {
      v34 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v35 = v45;
    }

    else
    {
      v35 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  v16 = v47;
  v15 = HIDWORD(v47);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(__p);
  }

  if (v45 < 0)
  {
    operator delete(v43);
  }

  return v15 | (v16 << 32);
}

void sub_274D5CF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D5D384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 144) = v19;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100]((v20 - 144));
  *(v20 - 144) = &a19;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100]((v20 - 144));
  v22 = 16;
  while (1)
  {
    v23 = *(v20 - 96 + v22);
    if (v23 && atomic_fetch_add_explicit(v23 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v23 + 8))(v23);
    }

    v22 -= 8;
    if (v22 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void xgboost::Version::Save(uint64_t a1)
{
  v7 = 6;
  v8 = 1;
  v6 = 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "version:");
  if ((v5 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v3 = v5;
  }

  else
  {
    v3 = __p[1];
  }

  (*(*a1 + 8))(a1, v2, v3);
  (*(*a1 + 8))(a1, &v8, 4);
  (*(*a1 + 8))(a1, &v7, 4);
  (*(*a1 + 8))(a1, &v6, 4);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D5D5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Version::String(unsigned int *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v2 = MEMORY[0x277C68E20](&v9, *a1);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, ".", 1);
  v4 = MEMORY[0x277C68E20](v3, a1[1]);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ".", 1);
  MEMORY[0x277C68E20](v5, a1[2]);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v9 = v6;
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x277C690D0](&v13);
}

void sub_274D5D7A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](v2 + 128);
  _Unwind_Resume(a1);
}

uint64_t xgboost::data::SparsePageDMatrix::Info(xgboost::data::SparsePageDMatrix *this)
{
  return this + 8;
}

{
  return this + 8;
}

uint64_t xgboost::data::detail::NSamplesDevice(xgboost::data::detail *this, xgboost::data::DMatrixProxy *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/common.h", 239);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  return 0;
}

uint64_t xgboost::data::detail::NFeaturesDevice(xgboost::data::detail *this, xgboost::data::DMatrixProxy *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/common.h", 239);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  return 0;
}

void xgboost::data::SparsePageDMatrix::SparsePageDMatrix(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2883E2830;
  xgboost::MetaInfo::MetaInfo((a1 + 1));
}

void sub_274D5E0D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xgboost::MetaInfo *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v31 = *(a13 + 472);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(a13 + 456);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(a13 + 440);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(a13 + 424);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(a13 + 408);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(a13 + 392);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(a13 + 375) < 0)
  {
    operator delete(*(a13 + 352));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(*a10);
  xgboost::MetaInfo::~MetaInfo(a15);
}

uint64_t xgboost::data::MakeProxy(xgboost::data *this, void *a2)
{
  if (!this)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./proxy_dmatrix.h", 119);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: proxy_handle", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Invalid proxy handle.", 21);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  return *this;
}

void xgboost::data::SparsePageDMatrix::GetRowBatchesImpl(std::__shared_weak_count **this@<X0>, std::__shared_weak_count **a2@<X8>)
{
  xgboost::data::SparsePageDMatrix::InitializeSparsePage(this);
  v5 = this[48];
  v4 = this[49];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *a2 = v5;
  a2[1] = v4;
}

void xgboost::data::SparsePageDMatrix::InitializeSparsePage(xgboost::data::SparsePageDMatrix *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".row.page");
  if (*(this + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 44), *(this + 45));
  }

  else
  {
    v10 = *(this + 352);
  }

  xgboost::data::MakeCache(v13, this, __p, &v10, this + 256);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (**std::map<std::string,xgboost::Json>::at(this + 256, v13) != 1)
  {
    v9 = *(this + 296);
    v4 = *(this + 36);
    xgboost::data::MakeProxy(*(this + 35), v2);
    v5 = *(this + 49);
    *(this + 48) = 0;
    *(this + 49) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::map<std::string,xgboost::Json>::at(this + 256, v13);
    operator new();
  }

  v3 = *(this + 48);
  if (!v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v15);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_dmatrix.cc", 106);
    v7 = dmlc::LogMessageFatal::GetEntry(&v15);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: sparse_page_source_", 33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    v3 = *(this + 48);
  }

  (*(*v3 + 56))(v3);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_274D5E87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a31);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::MakeCache(const void **a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
  }

  else
  {
    v17 = *a4;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v23);
  MEMORY[0x277C68DE0](&v24, a2);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v10 = &v22;
  std::string::basic_string[abi:ne200100](&v22, size + 1);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v17;
    }

    else
    {
      v11 = v17.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, size);
  }

  *(&v10->__r_.__value_.__l.__data_ + size) = 45;
  std::stringbuf::str();
  if ((v21 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v13 = v21;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v22, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v19 = v14->__r_.__value_.__r.__words[2];
  *v18 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v23[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v24 = v16;
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  MEMORY[0x277C690D0](&v28);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, a3, a1);
  if (a5 + 8 == std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a5, a1))
  {
    v23[0] = a1;
    std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a1);
    operator new();
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_274D5EF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::locale a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x277C69180](v51, 0x1012C40982C4C30);
  if (*(v50 + 23) < 0)
  {
    operator delete(*v50);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::SparsePageDMatrix::GetColumnBatches(xgboost::data::SparsePageDMatrix *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".col.page");
  if (*(this + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(this + 44), *(this + 45));
  }

  else
  {
    v11 = *(this + 352);
  }

  xgboost::data::MakeCache(v14, this, __p, &v11, this + 256);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = (**this)(this);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  v10 = 0;
  if (!v6)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(v5, &v10);
  }

  xgboost::data::SparsePageDMatrix::InitializeSparsePage(this);
  v7 = *(this + 52);
  if (!v7)
  {
    (**this)(this);
    std::map<std::string,xgboost::Json>::at(this + 256, v14);
    operator new();
  }

  (*(*v7 + 56))(v7);
  v9 = *(this + 52);
  v8 = *(this + 53);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a2 = v9;
  a2[1] = v8;
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_274D5F4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  xgboost::data::PageSourceIncMixIn<xgboost::CSCPage>::~PageSourceIncMixIn(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (!v31)
    {
      goto LABEL_4;
    }
  }

  else if (!v31)
  {
LABEL_4:
    std::__shared_weak_count::~__shared_weak_count(v30);
    operator delete(v35);
    if (a30 < 0)
    {
      operator delete(a25);
    }

    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  goto LABEL_4;
}

void xgboost::data::SparsePageDMatrix::GetSortedColumnBatches(xgboost::data::SparsePageDMatrix *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".sorted.col.page");
  if (*(this + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(this + 44), *(this + 45));
  }

  else
  {
    v11 = *(this + 352);
  }

  xgboost::data::MakeCache(v14, this, __p, &v11, this + 256);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = (**this)(this);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  v10 = 0;
  if (!v6)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(v5, &v10);
  }

  xgboost::data::SparsePageDMatrix::InitializeSparsePage(this);
  v7 = *(this + 54);
  if (!v7)
  {
    (**this)(this);
    std::map<std::string,xgboost::Json>::at(this + 256, v14);
    operator new();
  }

  (*(*v7 + 56))(v7);
  v9 = *(this + 54);
  v8 = *(this + 55);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a2 = v9;
  a2[1] = v8;
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_274D5F9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  xgboost::data::PageSourceIncMixIn<xgboost::SortedCSCPage>::~PageSourceIncMixIn(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (!v31)
    {
      goto LABEL_4;
    }
  }

  else if (!v31)
  {
LABEL_4:
    std::__shared_weak_count::~__shared_weak_count(v30);
    operator delete(v35);
    if (a30 < 0)
    {
      operator delete(a25);
    }

    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  goto LABEL_4;
}

void xgboost::data::SparsePageDMatrix::GetGradientIndex(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  LODWORD(v41[0]) = *(a2 + 1);
  LODWORD(__p[0]) = 2;
  if (SLODWORD(v41[0]) < 2)
  {
    dmlc::LogCheckFormat<int,int>(v41, __p);
  }

  std::string::basic_string[abi:ne200100]<0>(v39, ".gradient_index.page");
  if (*(a1 + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(a1 + 352), *(a1 + 360));
  }

  else
  {
    v38 = *(a1 + 352);
  }

  xgboost::data::MakeCache(v41, a1, v39, &v38, a1 + 256);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  xgboost::data::SparsePageDMatrix::InitializeSparsePage(a1);
  if (**std::map<std::string,xgboost::Json>::at(a1 + 256, v41) != 1)
  {
    goto LABEL_25;
  }

  v8 = *(a1 + 216);
  v6.n128_u64[0] = *(a1 + 248);
  v9 = *a2;
  v7.n128_u64[0] = a2[4];
  v10 = HIDWORD(*a2);
  if (a2[1])
  {
    if (v10 || v9 != -1 || a2[2])
    {
      goto LABEL_18;
    }
  }

  else if (v10 || v9 != -1)
  {
LABEL_18:
    if ((a2[3] & 1) == 0 && v8 == v9 && !((v9 ^ v8) >> 32) && v6.n128_f64[0] == v7.n128_f64[0])
    {
      goto LABEL_22;
    }

LABEL_25:
    v12 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 256, v41);
    if (a1 + 264 != v12)
    {
      v13 = v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v16 = v12;
        do
        {
          v15 = v16[2];
          v17 = *v15 == v16;
          v16 = v15;
        }

        while (!v17);
      }

      if (*(a1 + 256) == v12)
      {
        *(a1 + 256) = v15;
      }

      v18 = *(a1 + 264);
      --*(a1 + 272);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v18, v13);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>((v13 + 4));
      operator delete(v13);
    }

    std::string::basic_string[abi:ne200100]<0>(v34, ".gradient_index.page");
    if (*(a1 + 375) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, *(a1 + 352), *(a1 + 360));
    }

    else
    {
      v33 = *(a1 + 352);
    }

    xgboost::data::MakeCache(&v36, a1, v34, &v33, a1 + 256);
    if (v37 < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v19, v20) + 4) >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_dmatrix.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v32, __p, 167, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Generating new Gradient Index.", 30);
      xgboost::ConsoleLogger::~ConsoleLogger(&v32);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v21 = *(a2 + 24);
    v22 = *(a2 + 1);
    v28 = a2[1];
    v29 = a2[2];
    xgboost::common::SketchOnDMatrix(&v32);
  }

LABEL_22:
  v11 = *(a1 + 464);
  if (!v11)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v32);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_dmatrix.cc", 182);
    v26 = dmlc::LogMessageFatal::GetEntry(&v32);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: ghist_index_source_", 33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v32);
    v11 = *(a1 + 464);
  }

  (*(*v11 + 56))(v11, v6, v7);
  v23 = *(a1 + 464);
  v24 = *(a1 + 472);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *a3 = v23;
  a3[1] = v24;
  if (v42 < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_274D6031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (*(v17 - 113) < 0)
  {
    operator delete(*(v17 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_274D60AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::~SketchContainerImpl(va);
  v9 = *(v8 - 136);
  if (v9)
  {
    *(v8 - 128) = v9;
    operator delete(v9);
  }

  *(v8 - 136) = v8 - 112;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100]((v8 - 136));
  xgboost::common::HistogramCuts::~HistogramCuts(v7);
}

BOOL xgboost::DMatrix::IsDense(xgboost::DMatrix *this)
{
  v2 = *((*(*this + 24))(this) + 16);
  v3 = *(*(*this + 24))(this);
  return v2 == *((*(*this + 24))(this) + 8) * v3;
}

void xgboost::data::SparsePageDMatrix::GetEllpackBatches(uint64_t a1@<X0>, void *a2@<X8>)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v8);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/common.h", 239);
  v5 = dmlc::LogMessageFatal::GetEntry(&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  v7 = *(a1 + 400);
  v6 = *(a1 + 408);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a2 = v7;
  a2[1] = v6;
}

void xgboost::data::SparsePageDMatrix::~SparsePageDMatrix(xgboost::data::SparsePageDMatrix *this, float a2, __n128 a3)
{
  xgboost::data::SparsePageDMatrix::~SparsePageDMatrix(this, a2, a3);
}

{
  *this = &unk_2883E2830;
  v4 = *(this + 49);
  *(this + 48) = 0;
  *(this + 49) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 51);
  *(this + 50) = 0;
  *(this + 51) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 53);
  *(this + 52) = 0;
  *(this + 53) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 55);
  *(this + 54) = 0;
  *(this + 55) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 59);
  *(this + 58) = 0;
  *(this + 59) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 32);
  if (v9 != (this + 264))
  {
    v10 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a2, a3);
    do
    {
      v11 = *(v9 + 7);
      if (!v11)
      {
        Entry = dmlc::LogMessageFatal::GetEntry(v35);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_dmatrix.h", 95);
        v23 = dmlc::LogMessageFatal::GetEntry(v35);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: kv.second", 23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(v35);
        v11 = *(v9 + 7);
      }

      xgboost::data::Cache::ShardName(v11, v31);
      if ((v32 & 0x80u) == 0)
      {
        v13 = v31;
      }

      else
      {
        v13 = v31[0];
      }

      if (remove(v13, v12) && *(v10 + 4) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h");
        xgboost::ConsoleLogger::ConsoleLogger(v35, __p, 32, 1);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Couldn't remove external memory cache file ", 43);
        v16 = (v32 & 0x80u) == 0 ? v31 : v31[0];
        v17 = (v32 & 0x80u) == 0 ? v32 : v31[1];
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; you may want to remove it manually", 36);
        xgboost::ConsoleLogger::~ConsoleLogger(v35);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v19 = *(v9 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v9 + 2);
          v21 = *v20 == v9;
          v9 = v20;
        }

        while (!v21);
      }

      v9 = v20;
    }

    while (v20 != (this + 264));
  }

  v25 = *(this + 59);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(this + 57);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(this + 55);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(this + 53);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(this + 51);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(this + 49);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(*(this + 33));
  xgboost::MetaInfo::~MetaInfo((this + 8));
}

uint64_t xgboost::data::SparsePageDMatrix::Slice()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_dmatrix.h", 107);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Slicing DMatrix is not supported for external memory.", 53);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

void dmlc::any::~any(dmlc::any *this)
{
  if (*this)
  {
    v2 = **this;
    if (v2)
    {
      v2(this + 8);
    }

    *this = 0;
  }
}

void dmlc::any::check_type<std::shared_ptr<xgboost::data::CSRArrayAdapter>>(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v22);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 319);
    v4 = dmlc::LogMessageFatal::GetEntry(&v22);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: type_ != nullptr", 30);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "The any container is empty", 26);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " requested=", 11);
    v9 = strlen((0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, 0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL, v9);
    dmlc::LogMessageFatal::~LogMessageFatal(&v22);
    v2 = *a1;
  }

  {
    v10 = dmlc::LogMessageFatal::GetEntry(&v21);
    dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 322);
    v11 = dmlc::LogMessageFatal::GetEntry(&v21);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: *(type_->ptype_info) == typeid(T)", 47);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "The stored type mismatch", 24);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " stored=", 8);
    v16 = *(*(*a1 + 16) + 8);
    v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " requested=", 11);
    v20 = strlen((0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL, v20);
    dmlc::LogMessageFatal::~LogMessageFatal(&v21);
  }
}

void dmlc::any::check_type<std::shared_ptr<xgboost::data::ArrayAdapter>>(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v22);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 319);
    v4 = dmlc::LogMessageFatal::GetEntry(&v22);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: type_ != nullptr", 30);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "The any container is empty", 26);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " requested=", 11);
    v9 = strlen((0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, 0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL, v9);
    dmlc::LogMessageFatal::~LogMessageFatal(&v22);
    v2 = *a1;
  }

  {
    v10 = dmlc::LogMessageFatal::GetEntry(&v21);
    dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 322);
    v11 = dmlc::LogMessageFatal::GetEntry(&v21);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: *(type_->ptype_info) == typeid(T)", 47);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "The stored type mismatch", 24);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " stored=", 8);
    v16 = *(*(*a1 + 16) + 8);
    v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " requested=", 11);
    v20 = strlen((0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL, v20);
    dmlc::LogMessageFatal::~LogMessageFatal(&v21);
  }
}

void xgboost::data::Cache::ShardName(xgboost::data::Cache *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(this + 1), *(this + 2));
  }

  else
  {
    v5 = *(this + 8);
  }

  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 4), *(this + 5));
  }

  else
  {
    __p = *(this + 32);
  }

  xgboost::data::Cache::ShardName(&v5.__r_.__value_.__l.__data_, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_274D6135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_pointer<xgboost::data::Cache *,std::shared_ptr<xgboost::data::Cache>::__shared_ptr_default_delete<xgboost::data::Cache,xgboost::data::Cache>,std::allocator<xgboost::data::Cache>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::data::Cache *,std::shared_ptr<xgboost::data::Cache>::__shared_ptr_default_delete<xgboost::data::Cache,xgboost::data::Cache>,std::allocator<xgboost::data::Cache>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::default_delete<xgboost::data::Cache>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 56);
    if (v2)
    {
      *(v1 + 64) = v2;
      operator delete(v2);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t xgboost::data::Cache::ShardName@<X0>(const void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  if (a2[23] < 0)
  {
    v4 = *a2;
  }

  v6 = 46;
  if (*v4 != 46)
  {
    dmlc::LogCheckFormat<char,char>(v4, &v6);
  }

  return std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, a3);
}

void sub_274D61754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SortedSketchContainer::SortedSketchContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  v5 = **(a3 + 168);
  v6 = *(*(a3 + 168) + 8) - v5;
  v7 = v5;
  xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::SketchContainerImpl();
}

void sub_274D61950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v18 + 184) = v21;
    operator delete(v21);
  }

  xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::~SketchContainerImpl(v18);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::SortedQuantile>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::common::SortedQuantile>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

uint64_t xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::~SketchContainerImpl(uint64_t a1)
{
  xgboost::common::Monitor::~Monitor((a1 + 112));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 24);
  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = a1;
  std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

void std::vector<xgboost::common::SortedQuantile>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::SortedQuantile>>(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::SortedQuantile>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::LimitSizeLevel(unint64_t a1, uint64_t *a2, unint64_t *a3, double a4)
{
  v4 = 1;
  do
  {
    *a2 = v4;
    v5 = vcvtpd_u64_f64(v4 / a4);
    if (v5 + 1 < a1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = a1;
    }

    *a3 = v6;
    v4 = *a2 + 1;
  }

  while (v6 << *a2 < a1);
  v7 = (v6 * a4);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  if (*a2 > v7)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/quantile.h", 568);
    v9 = dmlc::LogMessageFatal::GetEntry(&v12);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Check failed: nlevel <= std::max(static_cast<size_t>(1), static_cast<size_t>(limit_size * eps))", 95);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "invalid init parameter", 22);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  }
}

void xgboost::common::SortedSketchContainer::~SortedSketchContainer(xgboost::common::SortedSketchContainer *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  xgboost::common::Monitor::~Monitor(this + 14);
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

  v5 = (this + 24);
  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this;
  std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void xgboost::common::HistogramCuts::HistogramCuts(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = -1082130432;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::GHistIndexMatrix>::~PageSourceIncMixIn(void *a1)
{
  *a1 = &unk_2883E2970;
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::~SparsePageSourceImpl(a1);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::operator*(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 190);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 72);
  }

  return result;
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::GHistIndexMatrix>::operator++(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v11, (a1 + 8));
  if (*(a1 + 160) == 1)
  {
    xgboost::data::SparsePageSource::operator++(*(a1 + 144));
  }

  v2 = *(a1 + 104) + 1;
  *(a1 + 104) = v2;
  v7 = v2 == *(a1 + 108);
  *(a1 + 88) = v7;
  if (v7)
  {
    v3 = *(a1 + 112);
    if ((*v3 & 1) == 0)
    {
      v5 = *(v3 + 56);
      v4 = *(v3 + 64);
      v6 = v5 + 1;
      v7 = v5 == v4 || v6 == v4;
      if (!v7)
      {
        v8 = *v5;
        do
        {
          v8 += *v6;
          *v6++ = v8;
        }

        while (v6 != v4);
      }

      *v3 = 1;
    }

    v10 = 1;
    if (!v2)
    {
      dmlc::LogCheckFormat<unsigned int,int>((a1 + 104), &v10);
    }
  }

  else
  {
    (*(*a1 + 48))(a1);
  }

  if (*(a1 + 160) == 1)
  {
    v10 = *(*(a1 + 144) + 104);
    if (v10 != *(a1 + 104))
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(&v10, (a1 + 104));
    }
  }

  std::mutex::unlock(v11);
  return a1;
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::Reset(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v2, (a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  (*(*a1 + 48))(a1);
  std::mutex::unlock(v2);
}

uint64_t xgboost::data::SparsePageSource::operator++(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v14, (a1 + 8));
  v2 = *(a1 + 104) + 1;
  *(a1 + 104) = v2;
  if (**(a1 + 112))
  {
    v8 = v2 == *(a1 + 108);
    *(a1 + 88) = v8;
    if (!v8)
    {
LABEL_6:
      xgboost::data::SparsePageSource::Fetch(a1);
    }
  }

  else
  {
    v3 = (*(a1 + 160))(*(a1 + 144));
    *(a1 + 88) = v3 == 0;
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 112);
    if ((*v4 & 1) == 0)
    {
      v6 = *(v4 + 56);
      v5 = *(v4 + 64);
      v7 = v6 + 1;
      v8 = v6 == v5 || v7 == v5;
      if (!v8)
      {
        v9 = *v6;
        do
        {
          v9 += *v7;
          *v7++ = v9;
        }

        while (v7 != v5);
      }

      *v4 = 1;
    }
  }

  v10 = *(a1 + 108);
  v11 = *(a1 + 104);
  if (v10)
  {
    if (v11 != v10)
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>((a1 + 104), (a1 + 108));
    }

    v11 = *(a1 + 104);
  }

  v13 = 1;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned int,int>((a1 + 104), &v13);
  }

  *(a1 + 168) = 0;
  std::mutex::unlock(v14);
  return a1;
}

xgboost::data::TryLockGuard *xgboost::data::TryLockGuard::TryLockGuard(xgboost::data::TryLockGuard *this, std::mutex *a2)
{
  *this = a2;
  if (!std::mutex::try_lock(a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 74);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: lock_.try_lock()", 30);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Multiple threads attempting to use Sparse DMatrix.", 50);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  return this;
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 107);
    v24 = dmlc::LogMessageFatal::GetEntry(&v26);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Check failed: !at_end_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }

  v2 = **(a1 + 112);
  if (v2 == 1)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      *(a1 + 128) = 0;
      (*(*v3 + 24))(v3);
      std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::resize(*(a1 + 136), *(a1 + 108));
    }

    v4 = *(a1 + 108);
    if (v4 >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    v29 = v5;
    LODWORD(v28) = 0;
    if (!v4)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v29, &v28);
    }

    v6 = *(a1 + 104);
    v28 = v6;
    v7 = v29;
    if (v29)
    {
      v8 = 0;
      do
      {
        v9 = v6 % *(a1 + 108);
        v28 = v9;
        v10 = **(a1 + 136);
        if (v9 >= (*(*(a1 + 136) + 8) - v10) >> 3)
        {
          std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
        }

        if (!*(v10 + 8 * v9))
        {
          v27 = (*(*(a1 + 112) + 64) - *(*(a1 + 112) + 56)) >> 3;
          if (v9 >= v27)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v28, &v27);
          }

          *&v26 = v28;
          *(&v26 + 1) = a1;
          std::async[abi:ne200100]<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>(1, &v26, &v27);
          v11 = **(a1 + 136);
          if (v28 >= (*(*(a1 + 136) + 8) - v11) >> 3)
          {
            std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = v27;
          v27 = 0;
          v13 = *(v11 + 8 * v28);
          *(v11 + 8 * v28) = v12;
          if (v13 && !atomic_fetch_add(v13 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v13 + 16))(v13);
          }

          v14 = v27;
          if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v14 + 16))(v14);
          }

          v9 = v28;
          v7 = v29;
        }

        ++v8;
        v6 = v9 + 1;
        v28 = v6;
      }

      while (v8 < v7);
    }

    v15 = *(a1 + 136);
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v16 == v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        if (*v16++)
        {
          ++v18;
        }
      }

      while (v16 != v17);
    }

    v27 = v18;
    if (v18 != v7)
    {
      dmlc::LogCheckFormat<long,unsigned long>(&v27, &v29);
    }

    std::future<std::shared_ptr<xgboost::SparsePage>>::get((**(a1 + 136) + 8 * *(a1 + 104)), &v26);
    v20 = v26;
    v26 = 0uLL;
    v21 = *(a1 + 80);
    *(a1 + 72) = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      if (*(&v26 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
      }
    }
  }

  return v2;
}

void _ZN7xgboost4data19HostAdapterDispatchIZNS0_16SparsePageSource5FetchEvEUlRKT_E_EEDcPKNS0_12DMatrixProxyES3_Pb(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 216);
  v45 = v6;
  if (v6)
  {
    (*(v6 + 8))(&v46, a1 + 224);
    v7 = *(v45 + 16);
  }

  else
  {
    v7 = MEMORY[0x277D827F0];
  }

  if (v45 && *v45)
  {
    (*v45)(&v46);
  }

  if (v8)
  {
    v9 = *(a1 + 216);
    v43 = v9;
    if (v9)
    {
      (v9[1])(v44, a1 + 224);
    }

    dmlc::any::check_type<std::shared_ptr<xgboost::data::CSRArrayAdapter>>(&v43);
    v10 = (*(*v44[0] + 32))(v44[0]);
    v11 = *(v10 + 8);
    v45 = *v10;
    v46 = v11;
    v12 = *(v10 + 16);
    v13 = *(v10 + 32);
    LOWORD(v49) = *(v10 + 48);
    v48 = v13;
    v47 = v12;
    v14 = *(v10 + 64);
    *(&v49 + 1) = *(v10 + 56);
    v50 = v14;
    v15 = *(v10 + 104);
    v16 = *(v10 + 88);
    v51 = *(v10 + 72);
    v52 = v16;
    v53 = v15;
    v17 = *(v10 + 120);
    v54 = *(v10 + 112);
    v55 = v17;
    v18 = *(v10 + 128);
    v19 = *(v10 + 144);
    v58 = *(v10 + 160);
    v57 = v19;
    v56 = v18;
    v59 = *(v10 + 168);
    if (v43 && *v43)
    {
      (*v43)(v44);
    }

    if (a3)
    {
      *a3 = 0;
    }

    v20 = *(a2 + 72);
    v21 = *(a2 + 92);
    v22 = *(a2 + 96);
    xgboost::SparsePage::Push<xgboost::data::CSRArrayAdapterBatch>();
  }

  v23 = *(a1 + 216);
  v45 = v23;
  if (v23)
  {
    (*(v23 + 8))(&v46, a1 + 224);
    v24 = *(v45 + 16);
  }

  else
  {
    v24 = MEMORY[0x277D827F0];
  }

  if (v45 && *v45)
  {
    (*v45)(&v46);
  }

  if (v25)
  {
    v26 = *(a1 + 216);
    v43 = v26;
    if (v26)
    {
      (v26[1])(v44, a1 + 224);
    }

    dmlc::any::check_type<std::shared_ptr<xgboost::data::ArrayAdapter>>(&v43);
    v27 = (*(*v44[0] + 32))(v44[0]);
    v28 = *(v27 + 8);
    v45 = *v27;
    v46 = v28;
    v30 = *(v27 + 32);
    v29 = *(v27 + 48);
    v31 = *(v27 + 16);
    LOWORD(v50) = *(v27 + 64);
    v49 = v29;
    v47 = v31;
    v48 = v30;
    if (v43 && *v43)
    {
      (*v43)(v44);
    }

    if (a3)
    {
      *a3 = 0;
    }

    v32 = *(a2 + 72);
    v33 = *(a2 + 92);
    v34 = *(a2 + 96);
    xgboost::SparsePage::Push<xgboost::data::ArrayAdapterBatch>();
  }

  if (a3)
  {
    *a3 = 1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v43);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./proxy_dmatrix.h", 144);
    v36 = dmlc::LogMessageFatal::GetEntry(&v43);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unknown type: ", 14);
    v38 = *(a1 + 216);
    v45 = v38;
    if (v38 && ((*(v38 + 8))(&v46, a1 + 224), v45))
    {
      v39 = *(v45 + 16);
    }

    else
    {
      v39 = MEMORY[0x277D827F0];
    }

    v40 = *(v39 + 8);
    v41 = strlen((v40 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v40 & 0x7FFFFFFFFFFFFFFFLL, v41);
    if (v45 && *v45)
    {
      (*v45)(&v46);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v43);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_274D631F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::WriteCache(uint64_t a1)
{
  if (**(a1 + 112) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 153);
    v17 = dmlc::LogMessageFatal::GetEntry(__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: !cache_info_->written", 35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  std::chrono::steady_clock::now();
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  v3 = xgboost::data::CreatePageFormat<xgboost::SparsePage>(__p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 128);
  if (!v4)
  {
    xgboost::data::Cache::ShardName(*(a1 + 112), __p);
    if (v22 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = dmlc::Stream::Create(v5, "w", 0);
    v7 = *(a1 + 128);
    *(a1 + 128) = v6;
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 128);
  }

  v8 = (*(*v3 + 24))(v3, *(a1 + 72), v4);
  v23 = v8;
  v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v10, v11) + 4) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h");
    xgboost::ConsoleLogger::ConsoleLogger(__p, v19, 164, 2);
    v12 = MEMORY[0x277C68E00](__p, vcvtd_n_f64_u64(v8, 0xAuLL) * 0.0009765625);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " MB written in ", 15);
    v14 = MEMORY[0x277C68E00](v13, (v9.__d_.__rep_ - v2.__d_.__rep_) / 1000000000.0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " seconds.", 9);
    xgboost::ConsoleLogger::~ConsoleLogger(__p);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  std::vector<unsigned long>::push_back[abi:ne200100]((*(a1 + 112) + 56), &v23);
  return (*(*v3 + 8))(v3);
}

void _ZNSt3__120__shared_ptr_emplaceIN7xgboost10SparsePageENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2883E2A50;
  xgboost::SparsePage::SparsePage((a1 + 3));
}

void std::__shared_ptr_emplace<xgboost::SparsePage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E2A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::resize(atomic_ullong *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 8 * a2);
    }
  }

  else
  {
    std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__append(a1, a2 - v2);
  }
}

uint64_t std::async[abi:ne200100]<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v3 = *a2;
    std::__make_async_assoc_state[abi:ne200100]<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>();
  }

  if ((result & 2) != 0)
  {
    v4 = *a2;
    std::__make_deferred_assoc_state[abi:ne200100]<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>();
  }

  *a3 = 0;
  return result;
}

void std::future<std::shared_ptr<xgboost::SparsePage>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_274D63850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (!atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
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

    v17 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, v11);
    }

    v14 = 0;
    v15 = 8 * v9;
    bzero((8 * v9), 8 * a2);
    v16 = 8 * v9 + 8 * a2;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>(a1, v6, v5, 0);
    v12 = *a1;
    *a1 = 0;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::~__split_buffer(&v14);
  }
}

void sub_274D639C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v7 + 16))(v7);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

atomic_ullong *std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>::operator()[abi:ne200100](atomic_ullong *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        result = (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::~__split_buffer(atomic_ullong *a1)
{
  std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::__destruct_at_end[abi:ne200100](atomic_ullong *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      v4[2] = v2 - 8;
      if (result)
      {
        if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          result = (*(*result + 16))(result);
        }
      }

      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

atomic_ullong *std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

void sub_274D63DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D63F10(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::__on_zero_shared(a1);
}

void sub_274D640E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274D640D8);
}