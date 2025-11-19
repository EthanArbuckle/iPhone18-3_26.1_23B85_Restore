void *std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 3);
    if (v3 < 1)
    {
      result -= (511 - v3) >> 9;
    }

    else
    {
      result += v3 >> 9;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(char *a1, unint64_t *a2, char *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = *a3;
  v5 = a2 - *a1;
  v6 = v5 >> 3;
  v7 = ((a4 - *a3) >> 3) + ((a3 - a1) << 6) - (v5 >> 3);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((510 - v6) >> 9)] + 8 * (~(510 - v6) & 0x1FF));
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v6 + 1) & 0x1FF));
      }

      if (v4 == a4)
      {
        a4 = *(a3 - 1) + 4096;
      }

      v20 = *v9;
      v21 = *a2;
      v22 = *(a4 - 8);
      if (*v9 < *a2)
      {
        if (v22 >= v20)
        {
          *a2 = v20;
          *v9 = v21;
          v34 = *(a4 - 8);
          if (v34 >= v21)
          {
            return 1;
          }

          *v9 = v34;
        }

        else
        {
          *a2 = v22;
        }

        *(a4 - 8) = v21;
        return 1;
      }

      if (v22 >= v20)
      {
        return 1;
      }

      *v9 = v22;
      *(a4 - 8) = v20;
LABEL_103:
      v64 = *a2;
      if (*v9 < *a2)
      {
        *a2 = *v9;
        *v9 = v64;
      }

      return 1;
    }

    if (v7 != 4)
    {
      if (v7 != 5)
      {
        goto LABEL_17;
      }

      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((510 - v6) >> 9)] + 8 * (~(510 - v6) & 0x1FF));
        if (v5 != -8)
        {
          v23 = (*&a1[-8 * ((509 - v6) >> 9)] + 8 * (~(509 - v6) & 0x1FF));
          if (v6 < 0xFFFFFFFFFFFFFFFELL)
          {
            v25 = (*&a1[-8 * ((508 - v6) >> 9)] + 8 * (~(508 - v6) & 0x1FF));
LABEL_37:
            if (v4 == a4)
            {
              a4 = *(a3 - 1) + 4096;
            }

            v26 = *v9;
            v27 = *a2;
            v28 = *v23;
            if (*v9 >= *a2)
            {
              if (v28 >= v26)
              {
                v26 = *v23;
              }

              else
              {
                *v9 = v28;
                *v23 = v26;
                v29 = *a2;
                if (*v9 < *a2)
                {
                  *a2 = *v9;
                  *v9 = v29;
                  v26 = *v23;
                }
              }

              goto LABEL_88;
            }

            if (v28 >= v26)
            {
              *a2 = v26;
              *v9 = v27;
              v26 = *v23;
              if (*v23 >= v27)
              {
                goto LABEL_88;
              }

              *v9 = v26;
            }

            else
            {
              *a2 = v28;
            }

            *v23 = v27;
            v26 = v27;
LABEL_88:
            if (*v25 < v26)
            {
              *v23 = *v25;
              *v25 = v26;
              v57 = *v9;
              if (*v23 < *v9)
              {
                *v9 = *v23;
                *v23 = v57;
                v58 = *a2;
                if (*v9 < *a2)
                {
                  *a2 = *v9;
                  *v9 = v58;
                }
              }
            }

            v59 = *(a4 - 8);
            v60 = *v25;
            if (v59 >= *v25)
            {
              return 1;
            }

            *v25 = v59;
            *(a4 - 8) = v60;
            v61 = *v23;
            if (*v25 >= *v23)
            {
              return 1;
            }

            *v23 = *v25;
            *v25 = v61;
LABEL_101:
            v63 = *v9;
            if (*v23 >= *v9)
            {
              return 1;
            }

            *v9 = *v23;
            *v23 = v63;
            goto LABEL_103;
          }

          v24 = 1;
LABEL_36:
          v25 = (*&a1[(v24 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v24 & 0x1FF));
          goto LABEL_37;
        }

        v10 = 1;
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v6 + 1) & 0x1FF));
        v10 = v6 + 2;
      }

      v23 = (*&a1[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF));
      v24 = v6 + 3;
      goto LABEL_36;
    }

    if (v6 < 0)
    {
      v9 = (*&a1[-8 * ((510 - v6) >> 9)] + 8 * (~(510 - v6) & 0x1FF));
      if (v5 != -8)
      {
        v23 = (*&a1[-8 * ((509 - v6) >> 9)] + 8 * (~(509 - v6) & 0x1FF));
LABEL_48:
        if (v4 == a4)
        {
          a4 = *(a3 - 1) + 4096;
        }

        v30 = *v9;
        v31 = *a2;
        v32 = *v23;
        if (*v9 >= *a2)
        {
          if (v32 >= v30)
          {
            v30 = *v23;
          }

          else
          {
            *v9 = v32;
            *v23 = v30;
            v33 = *a2;
            if (*v9 < *a2)
            {
              *a2 = *v9;
              *v9 = v33;
              v30 = *v23;
            }
          }

          goto LABEL_99;
        }

        if (v32 >= v30)
        {
          *a2 = v30;
          *v9 = v31;
          v30 = *v23;
          if (*v23 >= v31)
          {
LABEL_99:
            v62 = *(a4 - 8);
            if (v62 >= v30)
            {
              return 1;
            }

            *v23 = v62;
            *(a4 - 8) = v30;
            goto LABEL_101;
          }

          *v9 = v30;
        }

        else
        {
          *a2 = v32;
        }

        *v23 = v31;
        v30 = v31;
        goto LABEL_99;
      }

      v19 = 1;
    }

    else
    {
      v9 = (*&a1[((v6 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v6 + 1) & 0x1FF));
      v19 = v6 + 2;
    }

    v23 = (*&a1[(v19 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v19 & 0x1FF));
    goto LABEL_48;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    if (v4 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v11 = *(a4 - 8);
    v12 = *a2;
    if (v11 < *a2)
    {
      *a2 = v11;
      *(a4 - 8) = v12;
    }

    return 1;
  }

LABEL_17:
  if (v6 <= -2)
  {
    v13 = &a1[-8 * ((509 - v6) >> 9)];
    v14 = *v13;
    v15 = (*v13 + 8 * (~(509 - v6) & 0x1FF));
    v18 = 510 - v6;
  }

  else
  {
    v13 = &a1[8 * ((v6 + 2) >> 9)];
    v14 = *v13;
    v15 = (*v13 + 8 * ((v6 + 2) & 0x1FF));
    v16 = __CFADD__(v6, 1);
    v17 = v6 + 1;
    if (!v16)
    {
      v35 = (*&a1[(v17 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v17 & 0x1FF));
      goto LABEL_59;
    }

    v18 = 511;
  }

  v35 = (*&a1[-8 * (v18 >> 9)] + 8 * (~v18 & 0x1FF));
LABEL_59:
  v36 = *v35;
  v37 = *a2;
  v38 = *v15;
  if (*v35 >= *a2)
  {
    if (v38 < v36)
    {
      *v35 = v38;
      *v15 = v36;
      v39 = *a2;
      if (*v35 < *a2)
      {
        *a2 = *v35;
        *v35 = v39;
      }
    }
  }

  else
  {
    if (v38 >= v36)
    {
      *a2 = v36;
      *v35 = v37;
      if (*v15 >= v37)
      {
        goto LABEL_68;
      }

      *v35 = *v15;
    }

    else
    {
      *a2 = v38;
    }

    *v15 = v37;
  }

LABEL_68:
  v40 = v15 - v14;
  if (v40 < 0)
  {
    v45 = 510 - v40;
    v42 = &v13[-8 * (v45 >> 9)];
    v43 = *v42;
    v44 = ~v45 & 0x1FFLL;
  }

  else
  {
    v41 = v40 + 1;
    v42 = &v13[8 * (v41 >> 9)];
    v43 = *v42;
    v44 = v41 & 0x1FF;
  }

  v46 = &v43[v44];
  if (v46 == a4)
  {
    return 1;
  }

  v47 = 0;
  while (1)
  {
    v48 = v46;
    v49 = v42;
    v50 = v43;
    v51 = *v46;
    v52 = *v15;
    if (v51 < *v15)
    {
      v53 = v48;
      do
      {
        v54 = v15;
        *v53 = v52;
        if (v15 == a2)
        {
          break;
        }

        if (v15 == v14)
        {
          v55 = *(v13 - 1);
          v13 -= 8;
          v14 = v55;
          v15 = v55 + 512;
        }

        v56 = *--v15;
        v52 = v56;
        v53 = v54;
      }

      while (v51 < v56);
      *v54 = v51;
      if (++v47 == 8)
      {
        break;
      }
    }

    v46 = v48 + 1;
    v43 = v50;
    v42 = v49;
    if ((v48 + 1) - v50 == 4096)
    {
      v42 = v49 + 8;
      v43 = *(v49 + 1);
      v46 = v43;
    }

    result = 1;
    v14 = v50;
    v13 = v49;
    v15 = v48;
    if (v46 == a4)
    {
      return result;
    }
  }

  v65 = v48 + 1;
  if ((v48 + 1) - v50 == 4096)
  {
    v65 = *(v49 + 1);
  }

  return v65 == a4;
}

void std::deque<std::pair<unsigned short,unsigned short>>::erase(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (v5 + 8 * (v4 >> 10));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 4 * (*(a1 + 32) & 0x3FFLL);
  }

  if (a3 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((a3 - *a2) >> 2) + ((a2 - v7) << 7) - ((v8 - *v7) >> 2);
  }

  v10 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100]((v5 + 8 * (v4 >> 10)), v8, v9);
  v12 = v10;
  v13 = v11;
  v14 = *(a1 + 40);
  v15 = (v11 - *v10) >> 2;
  if (v9 <= (v14 - 1) >> 1)
  {
    if (v15 < 0)
    {
      v19 = &v10[-((1022 - v15) >> 10)];
      v20 = *v19 + 4 * (~(1022 - v15) & 0x3FF);
    }

    else
    {
      v19 = &v10[(v15 + 1) >> 10];
      v20 = *v19 + 4 * ((v15 + 1) & 0x3FF);
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(v26, (v5 + 8 * (v4 >> 10)), v8, v10, v11, v19, v20);
    v25 = vaddq_s64(*(a1 + 32), xmmword_1B42AF9C0);
    *(a1 + 32) = v25;
    if (v25.i64[0] >= 0x800uLL)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 1024;
    }
  }

  else
  {
    if (v15 < 0)
    {
      v21 = 1022 - v15;
      v17 = &v10[-(v21 >> 10)];
      v18 = &(*v17)[4 * (~v21 & 0x3FF)];
    }

    else
    {
      v16 = v15 + 1;
      v17 = &v10[v16 >> 10];
      v18 = &(*v17)[4 * (v16 & 0x3FF)];
    }

    v22 = v14 + v4;
    v23 = (v5 + 8 * (v22 >> 10));
    if (v6 == v5)
    {
      v24 = 0;
    }

    else
    {
      v24 = &(*v23)[4 * (v22 & 0x3FF)];
    }

    v26[0].n128_u64[0] = v12;
    v26[0].n128_u64[1] = v13;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>>>(v17, v18, v23, v24, v26);
    --*(a1 + 40);
    std::deque<std::pair<unsigned short,unsigned short>>::__maybe_remove_back_spare[abi:ne200100](a1);
  }
}

void std::deque<unsigned long>::resize(void *a1, unint64_t a2)
{
  v4 = a1[5];
  v5 = a2 >= v4;
  v6 = a2 > v4;
  v7 = a2 - v4;
  if (v6)
  {

    std::deque<unsigned long>::__append(a1, v7);
  }

  else if (!v5)
  {
    v8 = a1[4];
    v10 = a1[1];
    v9 = a1[2];
    v11 = (v10 + 8 * (v8 >> 9));
    if (v9 == v10)
    {
      v12 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v11, 0, a2);
      v15 = 0;
      v14 = (v10 + 8 * ((v8 + v4) >> 9));
    }

    else
    {
      v12 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v11, *v11 + 8 * (v8 & 0x1FF), a2);
      v14 = (v10 + 8 * ((v8 + v4) >> 9));
      v15 = *v14 + 8 * ((v8 + v4) & 0x1FF);
    }

    if (v15 != v13)
    {
      v16 = ((v15 - *v14) >> 3) + ((v14 - v12) << 6) - ((v13 - *v12) >> 3);
      if (v16 >= 1)
      {
        a1[5] = v4 - v16;
          ;
        }
      }
    }
  }
}

BOOL std::deque<std::pair<unsigned short,unsigned short>>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 7) - 1;
  }

  v4 = v3 - (a1[5] + a1[4]);
  if (v4 >= 0x800)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }

  return v4 > 0x7FF;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(__n128 *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (a2 == a4)
  {
    v11 = a3;
    v12 = a5;
    v13 = a6;
    v14 = a7;
  }

  else
  {
    v17 = a4 - 1;
    v16 = *a4;
    v18 = a5;
    v13 = a6;
    v14 = a7;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v21, v16, v18, v13, v14);
      v14 = v22.n128_i64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a2)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a3;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v21, v11, v12, v13, v14);
  result = v22;
  a1->n128_u64[0] = a4;
  a1->n128_u64[1] = a5;
  a1[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    a3 = a2;
  }

  else
  {
    v5 = *a4;
    v6 = a3;
    while (1)
    {
      if ((v6 - a2) >> 2 >= (a5 - v5) >> 2)
      {
        v7 = (a5 - v5) >> 2;
      }

      else
      {
        v7 = (v6 - a2) >> 2;
      }

      if (v7)
      {
        v8 = (v6 - 2);
        v9 = -4 * v7;
        do
        {
          *(a5 - 4) = *(v8 - 1);
          a5 -= 4;
          v10 = *v8;
          v8 -= 2;
          *(a5 + 2) = v10;
          v9 += 4;
        }

        while (v9);
      }

      v6 -= 4 * v7;
      if (v6 == a2)
      {
        break;
      }

      v11 = *--a4;
      v5 = v11;
      a5 = v11 + 4096;
    }

    if (v5 + 4096 == a5)
    {
      v12 = a4[1];
      ++a4;
      a5 = v12;
    }
  }

  *result = a3;
  result[1] = a4;
  result[2] = a5;
  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>>>(char **a1, char *a2, char **a3, char *a4, char **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = a5[1];
    for (i = *a1 + 4096; ; i = v12 + 4096)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v14, a2, i, v7, v8);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v14, a2, a4, v7, v8);
  result = *&v15;
  *a5 = v15;
  return result;
}

char **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(char **result, char *a2, char *a3, char *a4, char *a5)
{
  if (a2 == a3)
  {
    v9 = a2;
    goto LABEL_15;
  }

  v5 = *a4;
  while (1)
  {
    v6 = (v5 + 2048);
    v7 = (v5 + 2048) - a5;
    v8 = (a3 - a2) >> 2 >= v7 >> 2 ? v7 >> 2 : (a3 - a2) >> 2;
    if (v8)
    {
      break;
    }

LABEL_11:
    v10 = *(a4 + 1);
    a4 += 8;
    v5 = v10;
    a5 = v10;
  }

  v9 = &a2[4 * v8];
  do
  {
    *a5 = *a2;
    *(a5 + 1) = *(a2 + 1);
    a2 += 4;
    a5 += 4;
  }

  while (a2 != v9);
  if (v9 != a3)
  {
    a2 = v9;
    goto LABEL_11;
  }

  if (a5 == v6)
  {
    v11 = *(a4 + 1);
    a4 += 8;
    a5 = v11;
  }

LABEL_15:
  *result = v9;
  result[1] = a4;
  result[2] = a5;
  return result;
}

uint64_t std::deque<unsigned long>::deque(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a2)
  {
    std::deque<unsigned long>::__append(a1, a2);
  }

  return a1;
}

void std::deque<unsigned long>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v4) << 6) - 1;
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = v8 + v9;
  v11 = v7 - (v8 + v9);
  v12 = a2 >= v11;
  v13 = a2 - v11;
  if (v13 != 0 && v12)
  {
    if (v5 == v4)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v13;
    }

    if ((v14 & 0x1FF) != 0)
    {
      v15 = (v14 >> 9) + 1;
    }

    else
    {
      v15 = v14 >> 9;
    }

    if (v15 >= v9 >> 9)
    {
      v16 = v9 >> 9;
    }

    else
    {
      v16 = v15;
    }

    if (v15 <= v9 >> 9)
    {
      for (a1[4] = v9 - (v16 << 9); v16; --v16)
      {
        v24 = a1[1];
        __p[0] = *v24;
        a1[1] = v24 + 1;
        std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, __p);
      }
    }

    else
    {
      v17 = v15 - v16;
      v18 = a1[3] - *a1;
      if (v15 - v16 > (v18 >> 3) - (v6 >> 3))
      {
        v19 = v6 >> 3;
        v20 = v18 >> 2;
        v21 = v17 + (v6 >> 3);
        if (v20 <= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        v23 = v19 - v16;
        v38 = a1;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v22);
        }

        __p[0] = 0;
        __p[1] = (8 * v23);
        v37 = 8 * v23;
        operator new();
      }

      if (v17)
      {
        if (a1[3] != a1[2])
        {
          operator new();
        }

        operator new();
      }

      for (a1[4] = v9 - (v16 << 9); v16; --v16)
      {
        v25 = a1[1];
        __p[0] = *v25;
        a1[1] = v25 + 1;
        std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, __p);
      }
    }

    v8 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v10 = a1[4] + v8;
  }

  v26 = (v4 + 8 * (v10 >> 9));
  if (v5 == v4)
  {
    v27 = 0;
  }

  else
  {
    v27 = (*v26 + 8 * (v10 & 0x1FF));
  }

  v28 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v26, v27, a2);
  if (v27 != v29)
  {
    v30 = v28;
    v31 = v29;
    do
    {
      if (v26 == v30)
      {
        v32 = v31;
      }

      else
      {
        v32 = *v26 + 4096;
      }

      if (v27 == v32)
      {
        v34 = v27;
      }

      else
      {
        v33 = (v32 - v27) & 0xFFFFFFFFFFFFFFF8;
        bzero(v27, v33);
        v34 = &v27[v33];
        v8 = a1[5];
      }

      v8 += (v34 - v27) >> 3;
      a1[5] = v8;
      if (v26 == v30)
      {
        break;
      }

      v35 = v26[1];
      ++v26;
      v27 = v35;
    }

    while (v35 != v31);
  }
}

void sub_1B4250A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        result = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

char *std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(char *result, char *a2, unint64_t *a3, char *a4, unint64_t *a5, void *a6, unint64_t *a7, uint64_t a8, char *a9, unint64_t *a10, void *a11, unint64_t *a12)
{
  v44 = result;
  if (a7 != a10)
  {
    v16 = a7;
    v20 = 0;
    do
    {
      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,unsigned long,std::__identity const,std::__less<void,void>>(a2, a3, a4, a5, *v16);
      a2 = result;
      if (a3 == v21)
      {
        if (v20)
        {
          *a12++ = *v21;
          if ((a12 - *a11) == 4096)
          {
            v23 = a11[1];
            ++a11;
            a12 = v23;
          }

          a3 = v21 + 1;
          if ((v21 - *result + 8) == 4096)
          {
            a2 = result + 8;
            a3 = *(result + 1);
          }

          ++v16;
          v22 = 0;
          if ((v16 - *a6) == 4096)
          {
            v24 = a6[1];
            ++a6;
            v16 = v24;
          }

          goto LABEL_15;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      a3 = v21;
LABEL_15:
      if (a3 == a5)
      {
        break;
      }

      v25 = *a3;
      if (a10 == v16 || *v16 >= v25)
      {
        v34 = v16;
      }

      else
      {
        v26 = 1;
        v27 = v16;
        while (1)
        {
          v28 = v27;
          v29 = a6;
          if (a10 == v27)
          {
            v30 = 0;
          }

          else
          {
            v30 = ((a10 - *a9) >> 3) + ((a9 - a6) << 6) - ((v27 - *a6) >> 3);
          }

          if (v30 <= v26)
          {
            v31 = v26;
          }

          else
          {
            v31 = v30;
          }

          if (v30 >= v26)
          {
            v30 = v26;
          }

          if (v26 < 0)
          {
            v30 = v31;
          }

          v27 = v28;
          if (v30)
          {
            v32 = v30 + ((v28 - *a6) >> 3);
            if (v32 < 1)
            {
              v33 = 511 - v32;
              a6 -= v33 >> 9;
              v27 = (*a6 + 8 * (~v33 & 0x1FF));
            }

            else
            {
              a6 += v32 >> 9;
              v27 = (*a6 + 8 * (v32 & 0x1FF));
            }
          }

          if (v27 == a10)
          {
            break;
          }

          v26 *= 2;
          if (*v27 >= v25)
          {
            goto LABEL_50;
          }
        }

        v27 = a10;
LABEL_50:
        if (v30 == 1)
        {
          v34 = v27;
        }

        else
        {
          a6 = v29;
          v34 = v28;
        }

        if (v30 >= 2)
        {
          do
          {
            v38 = v30 >> 1;
            if (v30 == 1)
            {
              v39 = v28;
              v40 = v29;
            }

            else
            {
              v41 = v38 + ((v28 - *v29) >> 3);
              if (v41 < 1)
              {
                v42 = 511 - v41;
                LOWORD(v41) = ~(511 - v41);
                v40 = &v29[-(v42 >> 9)];
              }

              else
              {
                v40 = &v29[v41 >> 9];
              }

              v39 = (*v40 + 8 * (v41 & 0x1FF));
            }

            if (*v39 < v25)
            {
              v28 = v39 + 1;
              if ((v39 - *v40 + 8) == 4096)
              {
                v43 = v40[1];
                ++v40;
                v28 = v43;
              }

              v38 = v30 + ~v38;
              v29 = v40;
            }

            v30 = v38;
          }

          while (v38);
          a6 = v29;
          v34 = v28;
        }
      }

      if (v16 != v34)
      {
        goto LABEL_38;
      }

      if (!v22)
      {
        v20 = 1;
        goto LABEL_47;
      }

      *a12++ = v25;
      if ((a12 - *a11) == 4096)
      {
        v35 = a11[1];
        ++a11;
        a12 = v35;
      }

      if ((++a3 - *a2) == 4096)
      {
        v36 = *(a2 + 1);
        a2 += 8;
        a3 = v36;
      }

      if ((++v34 - *a6) == 4096)
      {
        v20 = 0;
        v37 = a6[1];
        ++a6;
        v34 = v37;
      }

      else
      {
LABEL_38:
        v20 = 0;
      }

LABEL_47:
      v16 = v34;
    }

    while (v34 != a10);
  }

  *v44 = a4;
  v44[1] = a5;
  v44[2] = a9;
  v44[3] = a10;
  v44[4] = a11;
  v44[5] = a12;
  return result;
}

char *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,unsigned long,std::__identity const,std::__less<void,void>>(char *result, unint64_t *a2, char *a3, unint64_t *a4, unint64_t a5)
{
  if (a2 != a4 && *a2 < a5)
  {
    for (i = 1; ; i *= 2)
    {
      if (a4 == a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = ((a4 - *a3) >> 3) + ((a3 - result) << 6) - ((a2 - *result) >> 3);
      }

      if (v6 <= i)
      {
        v7 = i;
      }

      else
      {
        v7 = v6;
      }

      if (v6 >= i)
      {
        v6 = i;
      }

      if (i < 0)
      {
        v6 = v7;
      }

      if (v6)
      {
        v8 = v6 + ((a2 - *result) >> 3);
        if (v8 < 1)
        {
          v11 = 511 - v8;
          LOWORD(v8) = ~(511 - v8);
          v9 = &result[-8 * (v11 >> 9)];
        }

        else
        {
          v9 = &result[8 * (v8 >> 9)];
        }

        v10 = (*v9 + 8 * (v8 & 0x1FF));
      }

      else
      {
        v10 = a2;
        v9 = result;
      }

      if (v10 == a4 || *v10 >= a5)
      {
        break;
      }

      result = v9;
      a2 = v10;
    }

    if (v6 == 1)
    {
      return v9;
    }

    else if (v6)
    {
      do
      {
        v12 = v6 >> 1;
        if (v6 == 1)
        {
          v13 = a2;
          v14 = result;
        }

        else
        {
          v15 = v12 + ((a2 - *result) >> 3);
          if (v15 < 1)
          {
            v16 = 511 - v15;
            LOWORD(v15) = ~(511 - v15);
            v14 = &result[-8 * (v16 >> 9)];
          }

          else
          {
            v14 = &result[8 * (v15 >> 9)];
          }

          v13 = (*v14 + 8 * (v15 & 0x1FF));
        }

        if (*v13 < a5)
        {
          a2 = v13 + 1;
          if ((v13 - *v14 + 8) == 4096)
          {
            v17 = *(v14 + 1);
            v14 += 8;
            a2 = v17;
          }

          v12 = v6 + ~v12;
          result = v14;
        }

        v6 = v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t nms::minMaxEdgeOfQuad<double>(uint64_t result)
{
  v1 = (result + 8);
  v2 = 1.79769313e308;
  v3 = 2.22507386e-308;
  for (i = 2; i != 10; i += 2)
  {
    v5 = (result + 8 * (i & 6));
    v6 = sqrt((*v1 - v5[1]) * (*v1 - v5[1]) + (*(v1 - 1) - *v5) * (*(v1 - 1) - *v5));
    if (v6 < v2)
    {
      v2 = v6;
    }

    if (v3 < v6)
    {
      v3 = v6;
    }

    v1 += 2;
  }

  return result;
}

double nms::PyramidNMS<unsigned short,double,unsigned char>::computeAggregatedScore(uint64_t a1, void *a2)
{
  v2 = a2[5];
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 968);
    v5 = 0.0;
    while (1)
    {
      v6 = (*(a2[1] + (((v3 + a2[4]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + a2[4]) & 0x3FF));
      v7 = *v6;
      if (v4[5] <= v7)
      {
        std::__throw_out_of_range[abi:ne200100]("deque");
      }

      v8 = (*(v4[1] + 8 * ((v4[4] + v7) / 0x14)) + 200 * ((v4[4] + v7) % 0x14));
      v9 = v8 + 23;
      v10 = v8[23];
      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v8[23];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
      if (v12 == v9 || v12[4] || (v13 = v12[5] - 5, v13 > 3))
      {
LABEL_11:
        v14 = -1;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v14 = qword_1B42AFA78[v13];
      }

      do
      {
        v15 = v10;
        v10 = *v10;
      }

      while (v10);
      if (v15 == v9 || v15[4] || (v16 = v15[5], v16 > 8))
      {
LABEL_17:
        v17 = 0.0;
        goto LABEL_18;
      }

      v17 = dbl_1B42AFA98[v16];
LABEL_18:
      v18 = (*(v8[11] + ((v8[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8[14]);
      v19 = v14 + *&v17 * v6[1];
      if (v19 < (v18[1] - *v18) >> 3)
      {
        v5 = v5 + *(*v18 + 8 * v19);
      }

      if (++v3 == v2)
      {
        return v5 * *(a1 + 1016);
      }
    }
  }

  v5 = 0.0;
  return v5 * *(a1 + 1016);
}

double *nms::normalizeL2<double>(double *result, double *a2)
{
  if (a2 != result)
  {
    v2 = a2 - result;
    v3 = *result * *result;
    if (v2 >= 2)
    {
      v4 = v2 - 1;
      v5 = result + 1;
      do
      {
        v6 = *v5++;
        v3 = v3 + v6 * v6;
        --v4;
      }

      while (v4);
    }

    v7 = sqrt(v3);
    v8 = fabs(v7);
    if (v8 > v8 * 2.22044605e-16)
    {
      do
      {
        *result = *result / v7;
        ++result;
      }

      while (result != a2);
    }
  }

  return result;
}

BOOL nms::PyramidNMS<unsigned short,double,unsigned char>::checkValidityOfCosAngleInDistributionCheckInProcessingContainment(uint64_t a1, double **a2, double **a3, uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  std::valarray<double>::resize(&v15, 2uLL);
  v8 = *a2;
  v9 = *a3;
  v10 = (*a2)[1] - (*a3)[1];
  v12 = v15;
  v11 = v16;
  *v15 = v10;
  v12[1] = *v9 - *v8;
  nms::normalizeL2<double>(v12, v11);
  v13 = fabs(*(*a4 + 8) * v12[1] + **a4 * *v12) >= *(a1 + 1136);
  operator delete(v12);
  return v13;
}

char *std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(char *result, char *a2, unint64_t *a3, char *a4, unint64_t *a5, char *a6, unint64_t *a7, uint64_t a8, char *a9, unint64_t *a10, void *a11, unint64_t *a12)
{
  v28 = result;
  if (a7 != a10)
  {
    v15 = a7;
    v19 = 0;
    while (1)
    {
      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,unsigned long,std::__identity const,std::__less<void,void>>(a2, a3, a4, a5, *v15);
      a2 = result;
      if (a3 != v20)
      {
        break;
      }

      if ((v19 & 1) == 0)
      {
        v21 = 1;
        goto LABEL_14;
      }

      *a12++ = *v20;
      if ((a12 - *a11) == 4096)
      {
        v22 = a11[1];
        ++a11;
        a12 = v22;
      }

      a3 = v20 + 1;
      if ((v20 - *result + 8) == 4096)
      {
        a2 = result + 8;
        a3 = *(result + 1);
      }

      ++v15;
      v21 = 0;
      if ((v15 - *a6) == 4096)
      {
        v23 = *(a6 + 1);
        a6 += 8;
        v15 = v23;
      }

LABEL_15:
      if (a3 == a5)
      {
        goto LABEL_2;
      }

      v24 = *a3;
      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,unsigned long,std::__identity const,std::__less<void,void>>(a6, v15, a9, a10, *a3);
      a6 = result;
      if (v15 == v25)
      {
        if (v21)
        {
          *a12++ = v24;
          if ((a12 - *a11) == 4096)
          {
            v26 = a11[1];
            ++a11;
            a12 = v26;
          }

          if ((++a3 - *a2) == 4096)
          {
            v27 = *(a2 + 1);
            a2 += 8;
            a3 = v27;
          }

          v15 = v25 + 1;
          v19 = 0;
          if ((v25 - *result + 8) == 4096)
          {
            a6 = result + 8;
            v15 = *(result + 1);
          }

          goto LABEL_27;
        }

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      v15 = v25;
LABEL_27:
      if (v15 == a10)
      {
        goto LABEL_2;
      }
    }

    v21 = 0;
LABEL_14:
    a3 = v20;
    goto LABEL_15;
  }

LABEL_2:
  *v28 = a4;
  v28[1] = a5;
  v28[2] = a9;
  v28[3] = a10;
  v28[4] = a11;
  v28[5] = a12;
  return result;
}

int **std::__copy_impl::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(int **result, int *a2, int *a3, int *a4, char *a5)
{
  if (a2 == a3)
  {
    v9 = a2;
    goto LABEL_15;
  }

  v5 = *a4;
  while (1)
  {
    v6 = (v5 + 1024);
    v7 = (v5 + 1024) - a5;
    v8 = a3 - a2 >= v7 >> 2 ? v7 >> 2 : a3 - a2;
    if (v8)
    {
      break;
    }

LABEL_11:
    v11 = *(a4 + 1);
    a4 += 2;
    v5 = v11;
    a5 = v11;
  }

  v9 = &a2[v8];
  do
  {
    v10 = *a2++;
    *a5 = v10;
    a5 += 4;
  }

  while (a2 != v9);
  if (v9 != a3)
  {
    a2 = v9;
    goto LABEL_11;
  }

  if (a5 == v6)
  {
    v12 = *(a4 + 1);
    a4 += 2;
    a5 = v12;
  }

LABEL_15:
  *result = v9;
  result[1] = a4;
  result[2] = a5;
  return result;
}

void *std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    a3 = a2;
  }

  else
  {
    v5 = *a4;
    v6 = a3;
    while (1)
    {
      if ((v6 - a2) >> 2 >= (a5 - v5) >> 2)
      {
        v7 = (a5 - v5) >> 2;
      }

      else
      {
        v7 = (v6 - a2) >> 2;
      }

      if (v7)
      {
        v8 = v6 - 2;
        v9 = -4 * v7;
        do
        {
          *(a5 - 4) = *(v8 - 2);
          a5 -= 4;
          v8 -= 4;
          v9 += 4;
        }

        while (v9);
      }

      v6 -= 4 * v7;
      if (v6 == a2)
      {
        break;
      }

      v10 = *--a4;
      v5 = v10;
      a5 = v10 + 4096;
    }

    if (v5 + 4096 == a5)
    {
      v11 = a4[1];
      ++a4;
      a5 = v11;
    }
  }

  *result = a3;
  result[1] = a4;
  result[2] = a5;
  return result;
}

uint64_t std::deque<unsigned short>::deque(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = (v3 >> 8) & 0xFFFFFFFFFFFFF8;
  v5 = a2[1];
  if (a2[2] == v5)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = (*(v5 + v4) + 2 * (a2[4] & 0x7FFLL));
  v7 = a2[5] + v3;
  v8 = (v7 >> 8) & 0xFFFFFFFFFFFFF8;
  v9 = v7 & 0x7FF;
  if ((*(v5 + v8) + 2 * v9) == v6)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = (v9 | ((v8 - v4) << 8)) - (a2[4] & 0x7FFLL);
LABEL_6:
  std::deque<unsigned short>::__append_with_size[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>>(a1, (v5 + v4), v6, v10);
  return a1;
}

uint64_t std::deque<nms::RectForest<unsigned short,double>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x14];
    v7 = v3[(*(a1 + 40) + v5) / 0x14] + 200 * ((*(a1 + 40) + v5) % 0x14);
    if (*v6 + 200 * (v5 % 0x14) != v7)
    {
      v8 = (*v6 + 200 * (v5 % 0x14));
      do
      {
        v9 = *v8;
        v8 += 25;
        (*v9)();
        if (v8 - *v6 == 4000)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 10;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 20;
  }

  *(a1 + 32) = v13;
LABEL_18:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *nms::PyramidNMS<unsigned short,double,unsigned char>::PyramidNMS(void *a1)
{
  *a1 = &unk_1F2BAF708;
  bzero(a1 + 1, 0x3C8uLL);
  nms::PyramidNMSConfig::PyramidNMSConfig((a1 + 122), 0, 0);
  nms::PyramidNMSConfig::PyramidNMSConfig(&v3, 0, 0);
  memcpy(a1 + 123, v4, 0x148uLL);
  return a1;
}

void CRMinAreaRect::findMinAreaRect(float a1, uint64_t a2, uint64_t a3, double *a4)
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = (v5 - *a3) >> 3;
  if (v6 >= 3)
  {
    v8 = v6 - 1;
    v9 = 0;
    v72 = 0;
    v11 = *v4;
    v10 = v4[1];
    v12 = v4 + 3;
    v13 = 0.0;
    v14 = 0.0;
    ExtremeIndex = 1;
    v16 = 3.4028e38;
    v17 = 1;
    v18 = 1;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      ExtremeIndex = findExtremeIndex(v4, v5, v9, ExtremeIndex, 0);
      v23 = findExtremeIndex(v4, v5, v9, v17, 2);
      v17 = v23;
      if (v9)
      {
        v24 = v18;
      }

      else
      {
        v24 = v23;
      }

      v18 = findExtremeIndex(v4, v5, v9, v24, 1);
      v26 = &v4[2 * v17];
      v27 = (*v26 - v11);
      v28 = (v26[1] - v10);
      v29 = &v4[2 * v18];
      v30 = (*v29 - v11);
      v31 = (v29[1] - v10);
      v32 = *(v12 - 1);
      v33 = (v32 - v11);
      v34 = *v12;
      v35 = (*v12 - v10);
      v36 = sqrt((v11 - v32) * (v11 - v32) + (v10 - v34) * (v10 - v34));
      *&v27 = v28 * v35 + v27 * v33;
      v37 = *&v27 / v36;
      *&v28 = v31 * v35 + v30 * v33;
      v38 = *&v28 / v36;
      *&v30 = (v4[2 * ExtremeIndex] - v11) * v35 - (v4[2 * ExtremeIndex + 1] - v10) * v33;
      v39 = fabsf(*&v30) / v36;
      if (((v37 - v38) * v39) < v16)
      {
        v72 = v9;
        v22 = v39;
        v21 = v36;
        v20 = v38;
        v13 = v37;
        v19 = (v34 - v10);
        v14 = (v32 - v11);
        v16 = (v37 - v38) * v39;
      }

      ++v9;
      v12 += 2;
      v10 = v34;
      v11 = v32;
    }

    while (v8 != v9);
    v40 = v21 + 0.0000001;
    v41 = v22;
    v42 = a4;
    v43 = v14 / v40;
    v44 = v19 / v40;
    v45 = &v4[2 * v72];
    v46 = *v45;
    LODWORD(v45) = v45[1];
    v47 = v46 + v43 * v20;
    v48 = v45 + v44 * v20;
    *a4 = v47;
    a4[1] = v48;
    v49 = v46 + v43 * v13;
    v50 = v45 + v44 * v13;
    a4[2] = v49;
    a4[3] = v50;
    a4[4] = v49 - v44 * v22;
    a4[5] = v50 + v43 * v22;
    a4[6] = v47 - v44 * v22;
    a4[7] = v48 + v43 * v22;
    v51 = (v13 - v20);
    a4[8] = v51;
    a4[9] = v22;
    v74.x = CRDetectorUtils::makeCenterPoint(a4, v25);
    v74.y = v52;
    v71 = *&v74.x;
    v73 = *&v52;
    if (v22 >= v51)
    {
      if (v19 == 0.0)
      {
        v54 = 90.0;
      }

      else
      {
        v60 = v14;
        if (v60 >= 0.0)
        {
          v61 = 1;
        }

        else
        {
          v61 = -1;
        }

        v59 = v19;
        if (v59 < 0.0)
        {
          v61 = -v61;
        }

        v54 = atan2(fabs(v14) * v61, fabs(v19)) / 3.14159265 * 180.0;
      }

      v42[8] = v41;
      v42[9] = v51;
      v58 = v51;
    }

    else
    {
      if (v14 == 0.0)
      {
        v54 = 90.0;
      }

      else
      {
        v56 = v14;
        if (v56 >= 0.0)
        {
          v57 = 1;
        }

        else
        {
          v57 = -1;
        }

        v55 = v19;
        if (v55 > 0.0)
        {
          v57 = -v57;
        }

        v54 = atan2(fabs(v19) * v57, fabs(v14)) / 3.14159265 * 180.0;
      }

      v58 = v22;
      v41 = v51;
    }

    v42[10] = v54;
    if (a1 != 0.0)
    {
      v62 = (a1 + a1);
      v42[8] = v41 + v62;
      v42[9] = v58 + v62;
      CRDetectorUtils::rotatePolygon(v42, &v74, v75, (v54 / 180.0) * 3.14159265, v53);
      v64 = 0;
      v65 = vdupq_lane_s64(v71, 0);
      v66 = vdupq_lane_s64(COERCE__INT64(-a1), 0);
      v67 = vdupq_lane_s64(COERCE__INT64(a1), 0);
      v68 = vdupq_lane_s64(v73, 0);
      do
      {
        v69 = &v75[v64];
        v77 = vld2q_f64(&v69->x);
        v78.val[0] = vaddq_f64(v77.val[0], vbslq_s8(vcgtq_f64(v65, v77.val[0]), v66, v67));
        v78.val[1] = vaddq_f64(v77.val[1], vbslq_s8(vcgtq_f64(v68, v77.val[1]), v66, v67));
        vst2q_f64(&v69->x, v78);
        v64 += 2;
      }

      while (v64 != 4);
      CRDetectorUtils::rotatePolygon(v75, &v74, v42, (v54 / -180.0) * 3.14159265, v63);
    }
  }
}

unint64_t findExtremeIndex(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5)
{
  v6 = a4;
  v9 = (a1 + 8 * a3);
  v10 = (a1 + 8 * a4);
  v11 = *v9;
  v12 = v9[1];
  v13 = (v9[2] - *v9);
  v14 = (v9[3] - v12);
  if (analyzeState(a5, (*v10 - v11), (v10[1] - v12), (v10[2] - v11), (v10[3] - v12), (v9[2] - v11), v14))
  {
    v15 = a2 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = (a2 - a1) >> 3;
    v17 = 1;
    do
    {
      v6 = (v6 + 1) % (v16 - 1);
      if (analyzeState(a5, (*(a1 + 8 * v6) - v11), (*(a1 + 8 * v6 + 4) - v12), (*(a1 + (((v6 << 32) + 0x100000000) >> 29)) - v11), (*(a1 + (((v6 << 32) + 0x100000000) >> 29) + 4) - v12), v13, v14))
      {
        v18 = v16 > v17;
      }

      else
      {
        v18 = 0;
      }

      ++v17;
    }

    while (v18);
  }

  return v6;
}

void CRMinAreaRect::findMinAreaMaxContourRect(int a1, uint64_t a2, CRDetectorUtils *this, float a4, float a5, uint64_t *a6)
{
  v132 = *MEMORY[0x1E69E9840];
  v113 = *(a2 + 8);
  v115 = *a2;
  v6 = v113 - *a2;
  v7 = v6 >> 3;
  if ((v6 >> 3) >= 3)
  {
    v9 = this;
    v10 = v115 + 1;
    v11 = 0.0;
    v12 = 3.4028e38;
    v13 = v6 >> 3;
    v14 = 3.4028e38;
    v15 = 0.0;
    do
    {
      v16 = *(v10 - 1);
      v12 = fmin(v12, v16);
      v17 = *v10;
      v14 = fmin(v14, v17);
      v11 = fmax(v11, v16);
      v15 = fmax(v15, v17);
      v10 += 2;
      --v13;
    }

    while (v13);
    if (v6 == 8)
    {
      v18 = 0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
    }

    else
    {
      v100 = a4;
      v24 = 0;
      v104 = 0;
      v25 = *a6;
      v112 = a6[1];
      v26 = (v112 - *a6) >> 3;
      v27 = fmin((((v11 - v12) + (v11 - v12)) + ((v15 - v14) * 2.0)), v26);
      v102 = v27;
      v110 = 1.0 - a5;
      v111 = v26;
      if (v26 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = (v112 - v25) >> 3;
      }

      v29 = *v115;
      v30 = v115[1];
      v109 = v7 - 2;
      v108 = 0.0;
      v116 = 0.0;
      v31 = 1;
      v32 = 1;
      v120 = 1;
      v117 = 0.0;
      v105 = 0.0;
      v106 = 0.0;
      v103 = 0.0;
      v107 = 0.0;
      do
      {
        ExtremeIndex = findExtremeIndex(v115, v113, v24, v31, 0);
        v34 = findExtremeIndex(v115, v113, v24, v32, 2);
        v35 = v34;
        if (v24)
        {
          v36 = v120;
        }

        else
        {
          v36 = v34;
        }

        v37 = findExtremeIndex(v115, v113, v24, v36, 1);
        v119 = v35;
        v38 = &v115[2 * v35];
        v39 = (*v38 - v29);
        v40 = (v38[1] - v30);
        v120 = v37;
        v41 = &v115[2 * v37];
        v42 = (*v41 - v29);
        v43 = (v41[1] - v30);
        v44 = v24 + 1;
        v45 = &v115[2 * v24 + 2];
        v46 = v45[1];
        v47 = (*v45 - v29);
        v48 = (v46 - v30);
        v49 = *v45;
        v50 = sqrt((v29 - *v45) * (v29 - *v45) + (v30 - v46) * (v30 - v46));
        *&v39 = v40 * v48 + v39 * v47;
        v51 = *&v39 / v50;
        *&v39 = v43 * v48 + v42 * v47;
        v52 = *&v39 / v50;
        *&v39 = (v115[2 * ExtremeIndex] - v29) * v48 - (v115[2 * ExtremeIndex + 1] - v30) * v47;
        v53 = fabsf(*&v39) / v50;
        v55 = expf(((v51 - v52) * v53) / v111);
        v56 = v50 + 0.0000001;
        v57 = v47 / v56;
        v58 = v48 / v56;
        v125.x = v29 + v57 * v52;
        v125.y = v30 + v58 * v52;
        v126 = v29 + v57 * v51;
        v127 = v30 + v58 * v51;
        v128 = v126 - v58 * v53;
        v129 = v127 + v57 * v53;
        v130 = v125.x - v58 * v53;
        v131 = v125.y + v57 * v53;
        if (v112 != v25)
        {
          v118 = v55;
          v59 = 0;
          v60 = 0.0;
          do
          {
            v61 = *(v25 + 8 * v59);
            v62.i64[0] = v61;
            v62.i64[1] = SHIDWORD(v61);
            v122 = vcvtq_f64_s64(v62);
            v63 = &v125;
            v64 = 3.4028e38;
            for (i = 1; i != 5; ++i)
            {
              v124 = v122;
              v66 = CRDetectorUtils::distPointToLine(&v124, v63, &v125 + (i & 3), v54);
              if (v66 < v64)
              {
                v64 = v66;
              }

              ++v63;
            }

            if (v64 > 0.0 && v64 <= 1.0)
            {
              v60 = v60 + 1.0;
            }

            ++v59;
          }

          while (v59 != v28);
          v44 = v24 + 1;
          v55 = v118;
          if (v60 > 5.0)
          {
            v68 = expf(-v60 / v102);
            v55 = v118;
            v116 = (1.0 / (v68 + 1.0)) + -0.5;
          }
        }

        if (((v110 * (1.0 / (v55 + 1.0))) + (a5 * v116)) > v117)
        {
          v107 = v48;
          v108 = v47;
          v104 = v24;
          v103 = v53;
          v105 = v51;
          v106 = v52;
          v117 = (v110 * (1.0 / (v55 + 1.0))) + (a5 * v116);
        }

        v30 = v46;
        v29 = v49;
        v69 = v24 == v109;
        v24 = v44;
        v31 = ExtremeIndex;
        v32 = v119;
      }

      while (!v69);
      v18 = v104;
      v22 = v103;
      v9 = this;
      a4 = v100;
      v20 = v107;
      v21 = v108;
      v23 = v105;
      v19 = v106;
    }

    v70 = &v115[2 * v18];
    v71 = *v70;
    v72 = v70[1];
    v73 = sqrt((*v70 - v70[2]) * (*v70 - v70[2]) + (v72 - v70[3]) * (v72 - v70[3]));
    v74 = v73 + 0.0000001;
    v75 = v21 / v74;
    v76 = v20 / v74;
    v77 = *v70 + v75 * v19;
    v78 = v72 + v76 * v19;
    *v9 = v77;
    v9[1] = v78;
    v79 = v71 + v75 * v23;
    v80 = v72 + v76 * v23;
    v9[2] = v79;
    v9[3] = v80;
    v9[4] = v79 - v76 * v22;
    v9[5] = v80 + v75 * v22;
    v9[6] = v77 - v76 * v22;
    v9[7] = v78 + v75 * v22;
    v81 = (v23 - v19);
    v9[8] = v81;
    v9[9] = v22;
    v124.x = CRDetectorUtils::makeCenterPoint(v9, a2);
    v124.y = v82;
    v121 = *&v124.x;
    v123 = *&v82;
    if (v22 >= v81)
    {
      if (v20 == 0.0)
      {
        v84 = 90.0;
      }

      else
      {
        v90 = v21;
        if (v90 >= 0.0)
        {
          v91 = 1;
        }

        else
        {
          v91 = -1;
        }

        v89 = v20;
        if (v89 < 0.0)
        {
          v91 = -v91;
        }

        v84 = atan2(fabs(v21) * v91, fabs(v20)) / 3.14159265 * 180.0;
      }

      v9[8] = v22;
      v9[9] = v81;
      v88 = v81;
    }

    else
    {
      if (v21 == 0.0)
      {
        v84 = 90.0;
      }

      else
      {
        v86 = v21;
        if (v86 >= 0.0)
        {
          v87 = 1;
        }

        else
        {
          v87 = -1;
        }

        v85 = v20;
        if (v85 > 0.0)
        {
          v87 = -v87;
        }

        v84 = atan2(fabs(v20) * v87, fabs(v21)) / 3.14159265 * 180.0;
      }

      v88 = v22;
      v22 = v81;
    }

    v9[10] = v84;
    if (a4 != 0.0)
    {
      v92 = (a4 + a4);
      v9[8] = v22 + v92;
      v9[9] = v88 + v92;
      CRDetectorUtils::rotatePolygon(v9, &v124, &v125, (v84 / 180.0) * 3.14159265, v83);
      v94 = 0;
      v95 = vdupq_lane_s64(v121, 0);
      v96 = vdupq_lane_s64(COERCE__INT64(-a4), 0);
      v97 = vdupq_lane_s64(COERCE__INT64(a4), 0);
      v98 = vdupq_lane_s64(v123, 0);
      do
      {
        v99 = (&v125.x + v94);
        v133 = vld2q_f64(v99);
        v134.val[0] = vaddq_f64(v133.val[0], vbslq_s8(vcgtq_f64(v95, v133.val[0]), v96, v97));
        v134.val[1] = vaddq_f64(v133.val[1], vbslq_s8(vcgtq_f64(v98, v133.val[1]), v96, v97));
        vst2q_f64(v99, v134);
        v94 += 32;
      }

      while (v94 != 64);
      CRDetectorUtils::rotatePolygon(&v125, &v124, v9, (v84 / -180.0) * 3.14159265, v93);
    }
  }
}

void CRMinAreaRect::sortMinAreaRectCorners(int a1, CRDetectorUtils *this)
{
  v18 = *MEMORY[0x1E69E9840];
  CenterPoint = CRDetectorUtils::makeCenterPoint(this, this);
  v5 = v4;
  v13.x = CenterPoint;
  v13.y = v4;
  v6 = *(this + 10) / 180.0 * 3.14159265;
  CRDetectorUtils::rotatePolygon(this, &v13, &v14, v6, v7);
  v8 = 0;
  p_y = &v14.y;
  while (*(p_y - 1) >= CenterPoint || *p_y >= v5)
  {
    ++v8;
    p_y += 2;
    if (v8 == 4)
    {
      v8 = 0;
      break;
    }
  }

  for (i = 0; i != 64; i += 16)
  {
    *(&v14 + i) = *(this + (v8++ & 3));
  }

  v11 = v15;
  *this = v14;
  *(this + 1) = v11;
  v12 = v17;
  *(this + 2) = v16;
  *(this + 3) = v12;
}

uint64_t analyzeState(int a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 == 2)
  {
    v12 = a3 * a7 + a2 * a6;
    v13 = a5 * a7 + a4 * a6;
  }

  else
  {
    if (a1 == 1)
    {
      v7 = a3 * a7 + a2 * a6;
      v8 = a5 * a7 + a4 * a6;
      v9 = v7 - v8;
      v10 = fabsf(v9) < 0.0000001;
      return v9 > 0.0 || v10;
    }

    v14 = a2 * a7 - a3 * a6;
    v15 = a4 * a7 - a5 * a6;
    v12 = fabsf(v14);
    v13 = fabsf(v15);
  }

  v16 = v12 - v13;
  v17 = fabsf(v16) < 0.0000001;
  return v16 <= 0.0 || v17;
}

void sub_1B4252F78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B4254A54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B4259274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TRShouldLogImages(void)
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 persistentDomainForName:@"com.apple.CoreRecognition"];

  v2 = [v1 objectForKey:@"LogAllImages"];
  if ([v2 BOOLValue])
  {
  }

  else
  {
    v3 = [v1 objectForKey:@"ImageLogLevel"];
    v4 = [v3 BOOLValue];

    if (!v4)
    {
      v6 = 0;
      TRShouldLogImages(void)::_shouldLogImages = 0;
      goto LABEL_6;
    }
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___Z17TRShouldLogImagesv_block_invoke;
  block[3] = &unk_1E7BC25C0;
  v9 = v1;
  dispatch_async(v5, block);

  v6 = TRShouldLogImages(void)::_shouldLogImages;
LABEL_6:

  return v6;
}

void sub_1B425D480(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___Z17TRShouldLogImagesv_block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKey:@"LogAllImages"];
  if ([v3 BOOLValue])
  {
    TRShouldLogImages(void)::_shouldLogImages = 5;
  }

  else
  {
    v2 = [*(a1 + 32) objectForKey:@"ImageLogLevel"];
    TRShouldLogImages(void)::_shouldLogImages = [v2 integerValue];
  }
}

void sub_1B425DCE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void CRLattice::CRLattice(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, uint64_t a6, double a7, double a8)
{
  v15 = a2;
  a3;
  v16 = a5;
  *a1 = 0;
  v17 = v15;
  *(a1 + 16) = 0u;
  *(a1 + 8) = v17;
  *(a1 + 32) = 0u;
  std::vector<BreakPoint>::__init_with_size[abi:ne200100]<BreakPoint*,BreakPoint*>(a1 + 24, *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3));
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 72) = v16;
  *(a1 + 80) = a6;
  *(a1 + 64) = *(a6 + 113);
  objc_storeStrong((a1 + 16), a3);
  CRLattice::build();
}

{
  CRLattice::CRLattice(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1B425F214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  v7 = v6;

  std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1B425F9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42)
{
  a19 = v42 - 184;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void CRLattice::~CRLattice(id *this)
{
  v2 = *this;
  if (v2)
  {
    CRCHNetwork::~CRCHNetwork(v2);
    MEMORY[0x1B8C73EF0]();
    *this = 0;
  }

  v3 = this + 3;
  std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void CRLattice::symbolIDStringFromRepresentationString(NSString *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = [(NSString *)v4 length];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v5)
  {
    std::vector<float>::__vallocate[abi:ne200100](&v11, 4 * v5);
  }

  v10 = 0;
  if (![NSString getBytes:v4 maxLength:"getBytes:maxLength:usedLength:encoding:options:range:remainingRange:" usedLength:0 encoding:0 options:0 range:? remainingRange:?])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696A248] reason:@"Conversion from representation string to symbol ID string failed" userInfo:0];
    objc_exception_throw(v6);
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v11, v11 + (v10 & 0xFFFFFFFFFFFFFFFCLL), v10 >> 2);
  iv2s(&__p, 0, a2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_1B425FDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double CRLattice::undersegmentationFactor(CRLattice *this, int a2, int a3)
{
  v3 = 1.0;
  if (a2 + 1 <= (a3 - 1))
  {
    v5 = a3 - 1;
    v6 = a2 + 1;
    v7 = 40 * a2;
    do
    {
      v8 = *(this + 3) + v7;
      if (!*(v8 + 44))
      {
        [*(v8 + 64) bounds];
        v10 = v9;
        [*(v8 + 56) bounds];
        v12 = v11;
        [*(v8 + 56) bounds];
        v3 = v3 * exp(fmax((v10 - (v12 + v13)) * [*(this + 1) width], 0.0) * -0.5);
      }

      ++v6;
      v7 += 40;
    }

    while (v6 <= v5);
  }

  return v3;
}

id CRLattice::getNetworkEdges(CRLattice *this)
{
  v1 = *this;
  if (*this)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v3 = *(v1 + 88);
    v4 = *(v1 + 96);
    __str.__r_.__value_.__r.__words[0] = &v18;
    __str.__r_.__value_.__s.__data_[8] = 0;
    if (v4 != v3)
    {
      std::vector<NetworkEdge>::__vallocate[abi:ne200100](&v18, 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4));
    }

    v5 = [MEMORY[0x1E695DF70] array];
    v6 = v18;
    v7 = v19;
    if (v18 != v19)
    {
      v8 = 0;
      do
      {
        v9 = *(*this + 144) + 24 * *(v6 + 2);
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *v9, *(v9 + 8));
        }

        else
        {
          v10 = *v9;
          __str.__r_.__value_.__r.__words[2] = *(v9 + 16);
          *&__str.__r_.__value_.__l.__data_ = v10;
        }

        w2i32(&__str, &__p);
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [v11 initWithBytes:__p length:v16 - __p encoding:2617245952];
        v13 = [[CRLatticeEdge alloc] initWithSymbol:v12 index:v8 score:*v6 startNode:*(v6 + 1) endNode:*(v6 + 4)];
        [v5 addObject:v13];

        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v6 = (v6 + 80);
        ++v8;
      }

      while (v6 != v7);
    }

    __str.__r_.__value_.__r.__words[0] = &v18;
    std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CRLattice::augmentConfusableCandidates(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v70 objects:v78 count:16];
  v4 = v2;
  v5 = v2;
  if (!v3)
  {
LABEL_48:

    goto LABEL_49;
  }

  v6 = *v71;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v71 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = [v2 objectForKeyedSubscript:*(*(&v70 + 1) + 8 * i)];
      [v9 doubleValue];
      v11 = v10;

      v7 = v7 + v11;
    }

    v3 = [v2 countByEnumeratingWithState:&v70 objects:v78 count:16];
  }

  while (v3);

  v5 = v2;
  if (v7 > 0.0)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v4 = 0;
    v12 = [(h8 *)&unk_1F2C00628 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (!v12)
    {
      goto LABEL_38;
    }

    v13 = *v67;
    v14 = -INFINITY;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(&unk_1F2C00628);
        }

        v16 = *(*(&v66 + 1) + 8 * j);
        v17 = [v2 objectForKey:v16];
        [v17 doubleValue];
        if (v18 > v14)
        {
          [v17 doubleValue];
          v14 = v19;
          v20 = v16;

          v4 = v20;
        }
      }

      v12 = [(h8 *)&unk_1F2C00628 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v12);
    if (v4 && v14 < 0.6)
    {
      v52 = [(h8 *)&unk_1F2C00718 objectForKey:v4];
      v21 = [v2 mutableCopy];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v52;
      v22 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (v22)
      {
        v23 = *v63;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v63 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v62 + 1) + 8 * k);
            v26 = [obj objectForKeyedSubscript:v25];
            [v26 doubleValue];
            v28 = v27;

            v29 = [v21 objectForKey:v25];
            v30 = v29;
            if (!v29 || ([v29 doubleValue], v14 > v31))
            {
              v32 = [MEMORY[0x1E696AD98] numberWithDouble:v14 * v28];

              v30 = v32;
            }

            [v21 setObject:v30 forKey:v25];
          }

          v22 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
        }

        while (v22);
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v33 = v21;
      v34 = [v33 countByEnumeratingWithState:&v58 objects:v75 count:16];
      if (v34)
      {
        v35 = *v59;
        v36 = 0.0;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v59 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [v33 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * m)];
            [v38 doubleValue];
            v40 = v39;

            v36 = v36 + v40;
          }

          v34 = [v33 countByEnumeratingWithState:&v58 objects:v75 count:16];
        }

        while (v34);
      }

      else
      {
        v36 = 0.0;
      }

      v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v33, "count")}];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v33;
      v43 = [v42 countByEnumeratingWithState:&v54 objects:v74 count:16];
      if (v43)
      {
        v44 = *v55;
        do
        {
          for (n = 0; n != v43; ++n)
          {
            if (*v55 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v46 = *(*(&v54 + 1) + 8 * n);
            v47 = [v42 objectForKeyedSubscript:v46];
            [v47 doubleValue];
            v49 = v48;

            v50 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * v49 / v36];
            [v41 setObject:v50 forKeyedSubscript:v46];
          }

          v43 = [v42 countByEnumeratingWithState:&v54 objects:v74 count:16];
        }

        while (v43);
      }

      v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v41];
    }

    else
    {
LABEL_38:
      v5 = v2;
    }

    goto LABEL_48;
  }

LABEL_49:

  return v5;
}

void CRLattice::kBestPaths(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8)
{
  v13 = a8;
  LXLexiconCreateRootCursor();
  if (a5)
  {
    LXLexiconCreateRootCursor();
  }

  v19 = [CRCHPatternNetwork rootCursorForContentType:a7 inNetwork:v13];
  v18 = a3;
  v14 = std::set<unsigned long>::set[abi:ne200100](v21, *a1 + 64);
  v15 = *(v21[0] + 32);
  std::__tree<CRCHuint128>::destroy(v14, v21[1]);
  LOBYTE(v17) = a6;
  LODWORD(v16) = a7;
  CRCHNetwork::kBestPaths(0, v15, &v20, v13, v19, v16, v18, v17, &__block_literal_global_31, &__block_literal_global_122);
}

double ___ZN9CRLattice10kBestPathsEiPvPK10_LXLexiconPS1_bbP18CRCHPatternNetworkbRKNSt3__18functionIFvRKNS7_6vectorImNS7_9allocatorImEEEEddddddEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 144);
  v3 = **(a2 + 56);
  v4 = v3[8];
  if (v2 > v4)
  {
    *(a2 + 144) = v4;
    v2 = v4;
  }

  v5 = *(a2 + 128);
  if (v5 > v4)
  {
    *(a2 + 128) = v4;
    v5 = v4;
  }

  v6 = *(a2 + 176);
  if (v6 > v4)
  {
    *(a2 + 176) = v4;
    v6 = v4;
  }

  return v3[1] * (v5 + *(a2 + 120)) + v3[2] * (v2 + *(a2 + 136)) + v3[5] * (*(a2 + 184) + *(a2 + 192)) + v3[3] * (v6 + *(a2 + 168)) + v3[6] * *(a2 + 200);
}

id CRLattice::decodePath(uint64_t *a1, void *a2, void *a3, void *a4, int a5)
{
  v8 = 0x1E695D000uLL;
  v79 = [MEMORY[0x1E695DF70] array];
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v84 = a2;
  std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(&v101, a2[36], a2[37], (a2[37] - a2[36]) >> 4);
  v9 = v102;
  v10 = v102 - v101;
  if (v102 == v101)
  {
    v11 = ((a2[12] - a2[11]) >> 3) - 1;
    if (v102 >= v103)
    {
      v12 = v103 - v101;
      if ((v103 - v101) >> 3 <= ((v10 >> 4) + 1))
      {
        v13 = (v10 >> 4) + 1;
      }

      else
      {
        v13 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(&v101, v14);
    }

    *v102 = 0;
    *(v9 + 1) = v11;
    v102 = v9 + 16;
  }

  if (a4)
  {
    v77 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v77 = 0;
  }

  if (a3)
  {
    v76 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v76 = 0;
  }

  v15 = v101;
  v78 = v102;
  if (v101 != v102)
  {
    v16 = 0;
    v82 = 0;
    v91 = a5;
    do
    {
      v17 = *(v15 + 1);
      v86 = [MEMORY[0x1E696AD60] string];
      if (a4)
      {
        v83 = [*(v8 + 3952) array];
      }

      else
      {
        v83 = 0;
      }

      if ([v86 length])
      {
        [v86 appendString:@" "];
      }

      v81 = v15;
      if (v17)
      {
        v18 = 0;
        v19 = v16;
        do
        {
          v87 = v17;
          v88 = v19 + 1;
          v20 = (*(*a1 + 40) + 56 * *(v84[8] + 8 * v19));
          v21 = (*(*a1 + 88) + 80 * v20[2] + 80 * *(v84[11] + 8 * (v19 + 1)));
          v22 = *(*a1 + 144) + 24 * v21[2];
          if (*(v22 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *v22, *(v22 + 8));
          }

          else
          {
            v23 = *v22;
            __str.__r_.__value_.__r.__words[2] = *(v22 + 16);
            *&__str.__r_.__value_.__l.__data_ = v23;
          }

          w2i32(&__str, &v98);
          v24 = objc_alloc(MEMORY[0x1E696AEC0]);
          v25 = [v24 initWithBytes:v98 length:v99 - v98 encoding:2617245952];

          [v86 appendString:v25];
          v89 = v25;
          if (a4)
          {
            v90 = objc_alloc_init(CRTextFeature);
            [(CRTextFeature *)v90 setStringValue:v25];
            [(CRTextFeature *)v90 setBounds:Segmenter::imageRegionBetweenBreakpoints((a1[3] + 40 * *v21), (a1[3] + 40 * v21[1]), a1 + 3)];
            [(CRTextFeature *)v90 bounds];
            [(CRTextFeature *)v90 setTopLeft:?];
            [(CRTextFeature *)v90 bounds];
            v27 = v26;
            [(CRTextFeature *)v90 bounds];
            v29 = v28;
            [(CRTextFeature *)v90 bounds];
            [(CRTextFeature *)v90 setBottomLeft:v27, v29 + v30];
            [(CRTextFeature *)v90 bounds];
            v32 = v31;
            [(CRTextFeature *)v90 bounds];
            v34 = v33;
            [(CRTextFeature *)v90 bounds];
            [(CRTextFeature *)v90 setTopRight:v32 + v34];
            [(CRTextFeature *)v90 bounds];
            v36 = v35;
            [(CRTextFeature *)v90 bounds];
            v38 = v37;
            [(CRTextFeature *)v90 bounds];
            v40 = v39;
            [(CRTextFeature *)v90 bounds];
            [(CRTextFeature *)v90 setBottomRight:v36 + v38, v40 + v41];
            __p = 0;
            v96 = 0;
            v97 = 0;
            v42 = *v20;
            if (*v20)
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              do
              {
                v46 = *(*a1 + 88) + 80 * v20[2] + v43;
                if (*(v46 + 8) == v21[1])
                {
                  if (v44 >= v97)
                  {
                    v47 = (v44 - __p) >> 3;
                    if ((v47 + 1) >> 61)
                    {
                      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                    }

                    v48 = (v97 - __p) >> 2;
                    if (v48 <= v47 + 1)
                    {
                      v48 = v47 + 1;
                    }

                    if (v97 - __p >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v49 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v49 = v48;
                    }

                    if (v49)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge const*>>(&__p, v49);
                    }

                    v50 = (8 * v47);
                    *v50 = v46;
                    v44 = (8 * v47 + 8);
                    v51 = v50 - (v96 - __p);
                    memcpy(v51, __p, v96 - __p);
                    v52 = __p;
                    __p = v51;
                    v96 = v44;
                    v97 = 0;
                    if (v52)
                    {
                      operator delete(v52);
                    }
                  }

                  else
                  {
                    *v44++ = v46;
                  }

                  v96 = v44;
                  v42 = *v20;
                }

                ++v45;
                v43 += 80;
              }

              while (v45 < v42);
              v53 = __p;
            }

            else
            {
              v44 = 0;
              v53 = 0;
            }

            v54 = 126 - 2 * __clz(v44 - v53);
            if (v44 == v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v54;
            }

            std::__introsort<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**,false>(v53, v44, v55, 1);
            v56 = [*(v8 + 3952) array];
            v57 = [*(v8 + 3952) array];
            v58 = a1;
            [(CRTextFeature *)v90 setBestCandidateIndex:-1];
            v60 = __p;
            v59 = v96;
            if (__p != v96)
            {
              v61 = 0;
              do
              {
                v62 = *v60;
                if ([v56 count] == v91)
                {
                  break;
                }

                v63 = *(*v58 + 144) + 24 * *(v62 + 16);
                if (*(v63 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v94, *v63, *(v63 + 8));
                }

                else
                {
                  v64 = *v63;
                  v94.__r_.__value_.__r.__words[2] = *(v63 + 16);
                  *&v94.__r_.__value_.__l.__data_ = v64;
                }

                w2i32(&v94, &v92);
                v65 = objc_alloc(MEMORY[0x1E696AEC0]);
                v66 = [v65 initWithBytes:v92 length:v93 - v92 encoding:2617245952];
                [v56 addObject:v66];
                v67 = [MEMORY[0x1E696AD98] numberWithDouble:__exp10(-*(v62 + 32))];
                [v57 addObject:v67];

                if (v62 == v21)
                {
                  [(CRTextFeature *)v90 setBestCandidateIndex:v61];
                }

                if (v92)
                {
                  v93 = v92;
                  operator delete(v92);
                }

                if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v94.__r_.__value_.__l.__data_);
                }

                ++v60;
                ++v61;
              }

              while (v60 != v59);
            }

            [(CRTextFeature *)v90 setStringValueCandidates:v56];
            v8 = 0x1E695D000;
            [(CRTextFeature *)v90 setCandidateProbs:v57];
            [v83 addObject:v90];

            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            a1 = v58;
          }

          if (v98)
          {
            v99 = v98;
            operator delete(v98);
          }

          v16 = v88;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v68 = v89;
          v69 = [v89 length];
          v19 = v88;
          v18 = v89;
          v17 = v87 - v69;
        }

        while (v87 != v69);
      }

      else
      {
        v68 = 0;
      }

      [v79 addObject:v86];
      if (a4)
      {
        [v77 addObject:v83];
      }

      if (a3)
      {
        v70 = (v82 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v71 = 3;
        if ((*(v84[48] + v70) & (1 << v82)) == 0)
        {
          v71 = 1;
        }

        if ((*(v84[51] + v70) & (1 << v82)) != 0)
        {
          v72 = v71 | 4;
        }

        else
        {
          v72 = v71;
        }

        v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v72];
        [v76 addObject:v73];
      }

      ++v82;

      v15 = v81 + 16;
    }

    while (v81 + 16 != v78);
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E695DEC8] arrayWithArray:v77];
  }

  if (a3)
  {
    *a3 = [MEMORY[0x1E695DEC8] arrayWithArray:v76];
  }

  v74 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  return v74;
}

void sub_1B42612E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37)
{
  v39 = *(v37 - 144);
  if (v39)
  {
    *(v37 - 136) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 32) < *(*v8 + 32))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 4);
      v90 = *(*v8 + 32);
      v91 = *(v87 + 32);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_174;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_174:
            v85 = v87;
            goto LABEL_175;
          }
        }

LABEL_167:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_175:
      v140 = *(a2 - 1);
      if (*(v140 + 32) < *(v85 + 4))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 32);
        if (v143 < *(v142 + 32))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 32))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 8;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 32);
            if (v101 < *(v100 + 32))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102) = v100;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v100 = *(v8 + v102 - 16);
                v102 -= 8;
                if (v101 >= *(v100 + 32))
                {
                  v104 = (v8 + v103);
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v138 = *v7;
          v137 = v7[1];
          v7 = v94;
          v139 = *(v137 + 32);
          if (v139 < *(v138 + 32))
          {
            do
            {
              *v94 = v138;
              v138 = *(v94 - 2);
              --v94;
            }

            while (v139 < *(v138 + 32));
            *v94 = v137;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            if (2 * v107 + 2 < v9 && *(*v109 + 32) < *(v109[1] + 32))
            {
              ++v109;
              v108 = 2 * v107 + 2;
            }

            v110 = &v8[v107];
            v111 = *v109;
            v112 = *v110;
            v113 = *(*v110 + 32);
            if (*(*v109 + 32) >= v113)
            {
              do
              {
                v114 = v109;
                *v110 = v111;
                if (v105 < v108)
                {
                  break;
                }

                v115 = 2 * v108;
                v108 = (2 * v108) | 1;
                v109 = &v8[v108];
                v116 = v115 + 2;
                if (v116 < v9)
                {
                  result = v109[1];
                  if (*(*v109 + 32) < *(result + 32))
                  {
                    ++v109;
                    v108 = v116;
                  }
                }

                v111 = *v109;
                v110 = v114;
              }

              while (*(*v109 + 32) >= v113);
              *v114 = v112;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = v8;
          do
          {
            v120 = v119;
            v121 = &v119[v117];
            v119 = v121 + 1;
            v122 = 2 * v117;
            v117 = (2 * v117) | 1;
            v123 = v122 + 2;
            if (v123 < v9)
            {
              v125 = v121[2];
              v124 = v121 + 2;
              if (*(*(v124 - 1) + 32) < *(v125 + 32))
              {
                v119 = v124;
                v117 = v123;
              }
            }

            *v120 = *v119;
          }

          while (v117 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v118;
          }

          else
          {
            *v119 = *a2;
            *a2 = v118;
            v126 = (v119 - v8 + 8) >> 3;
            v127 = v126 < 2;
            v128 = v126 - 2;
            if (!v127)
            {
              v129 = v128 >> 1;
              v130 = &v8[v129];
              v131 = *v130;
              v132 = *v119;
              v133 = *(*v119 + 32);
              if (*(*v130 + 32) < v133)
              {
                do
                {
                  v134 = v130;
                  *v119 = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v8[v129];
                  v131 = *v130;
                  v119 = v134;
                }

                while (*(*v130 + 32) < v133);
                *v134 = v132;
              }
            }
          }

          v127 = v9-- <= 2;
        }

        while (!v127);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 32);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 32);
      v17 = *(*v8 + 32);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 32) < *(*v8 + 32))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 32) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 32);
      v29 = *(v27 + 32);
      v30 = *(a2 - 2);
      v31 = *(v30 + 32);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 32) < *(v32 + 32))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 32) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 32);
      v40 = *(v38 + 32);
      v41 = *(a2 - 3);
      v42 = *(v41 + 32);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 32) < *(v43 + 32))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 32) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 32);
      v48 = *(*v25 + 32);
      v49 = *v35;
      v50 = *(*v35 + 32);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 32);
    v21 = *(*v11 + 32);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 32) < *(*v11 + 32))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 32) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 32);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 32) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 32) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 32) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 32) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 32) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 32);
      if (*(*(v8 - 1) + 32) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 32))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 32));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 32));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 32));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 32));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 32));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 32);
  v81 = *(*v8 + 32);
  v82 = *(a2 - 1);
  v83 = *(v82 + 32);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v136 = *v8;
      v135 = v8[1];
      if (*(v135 + 32) < *(*v8 + 32))
      {
        *v8 = v135;
        v8[1] = v136;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 32) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 32);
  v8 = *(*result + 32);
  v9 = *a3;
  v10 = *(*a3 + 32);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 32) < *(*result + 32))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 32) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 32) < *(v5 + 32))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 32) < *(*a2 + 32))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 32) < *(*result + 32))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 32) < *(*a4 + 32))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 32) < *(*a3 + 32))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 32) < *(*a2 + 32))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 32) < *(*result + 32))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 32);
      v8 = *(*a1 + 32);
      v9 = *(a2 - 1);
      v10 = *(v9 + 32);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 32) < *(*a1 + 32))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 32) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRLattice::decodePath(CRCHLatticePath const&,NSArray<NSNumber *> * {__autoreleasing}*,NSArray* {__autoreleasing}*<NSArray*<CRTextFeature *>>,int)::$_0 &,NetworkEdge const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 32);
    v26 = *(*a1 + 32);
    v27 = *(v23 + 32);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 32) < *(v21 + 32))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 32);
          if (v45 < *(v44 + 32))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 32))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 32) < *(*a1 + 32))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 32);
  v16 = *(*a1 + 32);
  v17 = *(v11 + 32);
  if (v15 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v18 = v11;
    *v19 = v14;
    goto LABEL_27;
  }

  if (v17 < v15)
  {
    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 32);
    if (v38 < *(v37 + 32))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 32))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t nms::PyramidNMSConfig::PyramidNMSConfig(uint64_t result, uint64_t a2, unint64_t a3)
{
  *(result + 32) = 267;
  *(result + 34) = 0;
  *(result + 40) = 0x3FE3333333333333;
  *(result + 80) = 0xBFF0000000000000;
  *(result + 96) = 50;
  *(result + 120) = 16843009;
  *(result + 124) = 257;
  *(result + 128) = 3;
  *(result + 144) = 0x3FB0000000000000;
  *(result + 48) = 1;
  *(result + 56) = xmmword_1B42AFCC0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(result + 104) = _Q0;
  *(result + 136) = 0;
  *(result + 152) = 1;
  *(result + 176) = 256;
  *(result + 184) = xmmword_1B42AFCD0;
  *(result + 216) = xmmword_1B42AFCD0;
  *(result + 160) = 0x3FEB333333333333;
  *(result + 168) = 0;
  *(result + 200) = xmmword_1B42AFCE0;
  *(result + 232) = xmmword_1B42AFCE0;
  *(result + 248) = xmmword_1B42AFCF0;
  *(result + 264) = 0x3FEB333333333333;
  *(result + 272) = xmmword_1B42AFD00;
  *(result + 288) = xmmword_1B42AFD00;
  *(result + 304) = xmmword_1B42AF260;
  *(result + 320) = xmmword_1B42AFD10;
  *result = &unk_1F2BAF6C8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  if (a3 <= 1)
  {
    *(result + 24) = 0;
  }

  return result;
}

__n128 nms::PyramidNMSConfig::PyramidNMSConfig(nms::PyramidNMSConfig *this, const PyramidNMSConfig *a2)
{
  *this = &unk_1F2BAF6C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 267;
  *(this + 34) = 0;
  *(this + 5) = 0x3FE3333333333333;
  *(this + 48) = 1;
  *(this + 56) = xmmword_1B42AFCC0;
  *(this + 72) = 0;
  *(this + 10) = 0xBFF0000000000000;
  *(this + 88) = 0;
  *(this + 12) = 50;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 104) = _Q0;
  *(this + 30) = 16843009;
  *(this + 62) = 257;
  *(this + 16) = 3;
  *(this + 68) = 0;
  *(this + 18) = 0x3FB0000000000000;
  *(this + 152) = 1;
  *(this + 20) = 0x3FEB333333333333;
  *(this + 21) = 0;
  *(this + 88) = 256;
  *(this + 184) = xmmword_1B42AFCD0;
  *(this + 200) = xmmword_1B42AFCE0;
  *(this + 216) = xmmword_1B42AFCD0;
  *(this + 232) = xmmword_1B42AFCE0;
  *(this + 248) = xmmword_1B42AFCF0;
  *(this + 264) = xmmword_1B42AFD20;
  *(this + 280) = xmmword_1B42AFD20;
  *(this + 296) = xmmword_1B42AFD30;
  *(this + 312) = xmmword_1B42AFD40;
  *(this + 41) = 0x3FEB333333333333;
  *(this + 8) = *&a2->methodType;
  *(this + 16) = *&a2->scoreMapMinThreshold;
  *(this + 3) = *&a2->scoreMinThreshold;
  *(this + 34) = a2->scoreUseArea;
  *(this + 5) = *&a2->scoreAggregationScalingFactor;
  *(this + 48) = a2->scoreUseNumSubDatums;
  *(this + 56) = *&a2->scoreNumSubDatumsUpperClip;
  *(this + 72) = a2->ignoreOrphansInFullTile;
  *(this + 88) = a2->computeIntrascaleGeometricRelationships;
  *(this + 12) = a2->intersectionNumSamples;
  *(this + 104) = *&a2->iouMinThresholdToAcceptContainedDatum;
  *(this + 30) = *&a2->pendingInvalidRejectCompetingDatums;
  *(this + 62) = *&a2->processOverlap;
  useOverlappingWordsInProcessingContainment = a2->useOverlappingWordsInProcessingContainment;
  *(this + 16) = a2->favorSubDatumUndersegmentationInProcessingCoincidence;
  *(this + 68) = *&a2->favorLargerAreaInProcessingCoincidence;
  *(this + 18) = *&a2->datumMinHeightRatioToUseFullTile;
  *(this + 152) = useOverlappingWordsInProcessingContainment;
  *(this + 20) = *&a2->minValidCosAngleInDistributionCheckInProcessingContainment;
  *(this + 21) = a2->favorSubDatumUndersegmentationInProcessingContainment;
  *(this + 176) = a2->favorLargerAreaInProcessingContainment;
  *(this + 177) = a2->favorFullTileInProcessingContainment;
  *(this + 184) = *&a2->heightRatioFineToFullMinThresholdFavorFullTileInProcessingContainment;
  *(this + 200) = *&a2->widthRatioFineToFullMinThresholdFavorFullTileInProcessingContainment;
  *(this + 216) = *&a2->heightRatioFineToFullMinThresholdFavorFullTileInProcessingSingleConstituentContainment;
  *(this + 232) = *&a2->widthRatioFineToFullMinThresholdFavorFullTileInProcessingSingleConstituentContainment;
  *(this + 248) = *&a2->favorFullTileInProcessingOverlap;
  *(this + 33) = *&a2->coincidenceIOMinMinThreshold;
  *(this + 17) = *&a2->containmentIOUMaxThreshold;
  *(this + 18) = *&a2->constitutionIOUMaxThreshold;
  *(this + 19) = *&a2->overlapIOUMinThreshold;
  result = *&a2->overlapIOMinMinThreshold;
  *(this + 20) = result;
  return result;
}

double nms::PyramidNMSConfigV3::PyramidNMSConfigV3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = nms::PyramidNMSConfig::PyramidNMSConfig(a1, a2, a3);
  *v3 = &unk_1F2BAF6A8;
  *(v3 + 96) = 20;
  result = 0.02;
  *(v3 + 104) = xmmword_1B42AF980;
  *(v3 + 304) = 0x3FC999999999999ALL;
  *(v3 + 144) = 0x3FA1EB851EB851ECLL;
  *(v3 + 34) = 1;
  *(v3 + 40) = 0x4004000000000000;
  *(v3 + 160) = 0x3FE6666666666666;
  *(v3 + 216) = 0x3FE6666666666666;
  *(v3 + 184) = 0x3FE0000000000000;
  return result;
}

{
  v3 = nms::PyramidNMSConfig::PyramidNMSConfig(a1, a2, a3);
  *v3 = &unk_1F2BAF6A8;
  *(v3 + 96) = 20;
  result = 0.02;
  *(v3 + 104) = xmmword_1B42AF980;
  *(v3 + 304) = 0x3FC999999999999ALL;
  *(v3 + 144) = 0x3FA1EB851EB851ECLL;
  *(v3 + 34) = 1;
  *(v3 + 40) = 0x4004000000000000;
  *(v3 + 160) = 0x3FE6666666666666;
  *(v3 + 216) = 0x3FE6666666666666;
  *(v3 + 184) = 0x3FE0000000000000;
  return result;
}

unint64_t CRDetectorOutputMaps::createMaps@<X0>(unint64_t this@<X0>, CGSize a2@<0:D0, 8:D1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (this)
  {
    if (!(this >> 61))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void CRDetectorOutputMaps::scaleMaps(CRDetectorOutputMaps *this, int a2)
{
  v3 = *this;
  v4 = **(this + 4);
  v5 = **(this + 5);
  __B = 5.0;
  vDSP_vsdiv(*v3, 1, &__B, *v3, 1, v3[1] * v3[2]);
  if (a2)
  {
    for (i = v3[2] * v3[1]; i; --i)
    {
      v7 = *v4;
      if (*v4 > 0.1 && *v5 > 0.1)
      {
        if (v7 < *v5)
        {
          v7 = *v5;
        }

        *v5 = v7;
        *v4 = v7;
      }

      ++v5;
      ++v4;
    }
  }
}

void CRDetectorOutputMaps::aggregateMaps(CRDetectorOutputMaps *this, CRTextDetectorModelV3Output *a2, const CGSize *a3, const CGPoint *a4)
{
  v16 = a2;
  v4 = [(CRTextDetectorModelV3Output *)v16 region_score];
  v5 = [v4 shape];
  v6 = [v5 objectAtIndexedSubscript:2];
  [v6 integerValue];

  v7 = [(CRTextDetectorModelV3Output *)v16 region_score];
  v8 = [v7 shape];
  v9 = [v8 objectAtIndexedSubscript:1];
  [v9 integerValue];

  v10 = [(CRTextDetectorModelV3Output *)v16 region_score];
  v11 = [v10 strides];
  v12 = [v11 objectAtIndexedSubscript:1];
  [v12 integerValue];

  v13 = [(CRTextDetectorModelV3Output *)v16 region_score];
  v14 = [v13 shape];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 integerValue];

  operator new();
}

void sub_1B4263E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, void **a19, void **a20)
{
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](&a19, 0);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](&a20, 0);

  _Unwind_Resume(a1);
}

void CRDetectorOutputMaps::applyFunctionToMaps<void (*)(float const*,unsigned long,unsigned long,char *,float *,unsigned long,unsigned long,unsigned long)>(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, id a7, uint64_t **a8, double a9, double a10, uint64_t a11)
{
  v19 = a10 / a3;
  if (v19 >= a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = v19;
  }

  v21 = a7;
  v45 = [a7 dataPointer];
  if (v20 >= 1)
  {
    v22 = a3;
    v23 = 0;
    v24 = a11;
    v25 = **a8;
    v26 = a9 / a3;
    if (v26 >= a1)
    {
      v26 = a1;
    }

    v43 = a5;
    v44 = a3;
    v27 = v26;
    v28 = 4 * a5;
    v29 = a4;
    v30 = 4 * a3;
    v31 = v45;
    v32 = a11;
    v42 = a6;
    do
    {
      v33 = *a6 + (a6[1] + (v23 * v22)) * v29;
      v34 = (v25 + 4 * v33);
      if (v24)
      {
        if (v27)
        {
          v35 = v27;
          v36 = v31;
          v37 = v32;
          do
          {
            if (*v36 >= *v34)
            {
              *v34 = *v36;
              *v37 = 1;
            }

            ++v37;
            ++v36;
            v34 = (v34 + v30);
            --v35;
          }

          while (v35);
        }
      }

      else
      {
        v38 = v20;
        v39 = v22;
        v40 = v25;
        v41 = v28;
        vDSP_vmax((v45 + 4 * v23 * a5), 1, v34, v44, (v25 + 4 * v33), v44, v27);
        v28 = v41;
        v25 = v40;
        v24 = 0;
        a6 = v42;
        a5 = v43;
        v22 = v39;
        v20 = v38;
      }

      ++v23;
      v32 += a5;
      v31 = (v31 + v28);
    }

    while (v23 != v20);
  }
}

void CRDetectorOutputMaps::updateMultiChannelData(void *a1, uint64_t **a2, int a3, double *a4, uint64_t a5)
{
  v8 = a1;
  v10 = *a2;
  v9 = a2[1];
  v40 = v8;
  v11 = [v8 shape];
  v12 = [v11 objectAtIndexedSubscript:1];
  v38 = [v12 integerValue];

  v13 = [v40 shape];
  v14 = [v13 objectAtIndexedSubscript:2];
  v15 = [v14 integerValue];

  v16 = [v40 strides];
  v17 = [v16 objectAtIndexedSubscript:0];
  v18 = [v17 integerValue];

  v19 = [v40 strides];
  v20 = [v19 objectAtIndexedSubscript:1];
  v21 = [v20 integerValue];

  v22 = *a4;
  v23 = a4[1];
  v24 = **a2;
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  v27 = [v40 dataPointer];
  v28 = v9 - v10;
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = *a2;
    v31 = v38 * a3;
    v32 = v15 * a3;
    do
    {
      if (v31)
      {
        v33 = 0;
        v34 = *v30[v29] + 4 * (v23 * 0.5) * v26;
        v35 = (v23 * 0.5);
        do
        {
          if (v35 < v25 && v32)
          {
            v36 = 0;
            v37 = (v22 * 0.5);
            do
            {
              if (v37 < v26 && *(a5 + v21 * v33 + v36) >= 1)
              {
                *(v34 + 4 * v37) = *(v27 + 4 * v21 * v33 + 4 * v36);
              }

              ++v37;
              v36 += a3;
            }

            while (v36 < v32);
          }

          ++v35;
          v33 += a3;
          v34 += 4 * v26;
        }

        while (v33 < v31);
      }

      ++v29;
      v27 += 4 * v18;
    }

    while (v29 != v28);
  }
}

void ***std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      free(*v2);
    }

    JUMPOUT(0x1B8C73EF0);
  }

  return result;
}

void sub_1B4265520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 176);
  if (v35)
  {
    *(v33 - 168) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_1B4265834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x1B8C73EF0](v10, 0x1080C40ABB4582ELL);

  _Unwind_Resume(a1);
}

void sub_1B4265A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12)
{
  a12 = a11;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_1B42666DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose(&a51, 8);
  a45 = a11;
  std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Block_object_dispose(&a60, 8);

  _Block_object_dispose(&a66, 8);
  std::deque<unsigned char>::~deque[abi:ne200100](&a72);

  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x398], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);

  _Block_object_dispose(&STACK[0x408], 8);
  CRDetectorOutputMaps::~CRDetectorOutputMaps(&STACK[0x438]);
  _Block_object_dispose(&STACK[0x4A0], 8);
  CRDetectorOutputMaps::~CRDetectorOutputMaps(&STACK[0x4D0]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(void *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  a1[6] = v2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  *(a1 + 7) = *(a2 + 56);
  v3 = *(a2 + 80);
  a1[9] = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  a1[10] = v3;
  v4 = *(a2 + 88);
  *(a2 + 88) = 0;
  a1[11] = v4;
  v5 = *(a2 + 96);
  *(a2 + 96) = 0;
  a1[12] = v5;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  *(a1 + 13) = *(a2 + 104);
  a1[15] = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  result = *(a2 + 128);
  *(a1 + 8) = result;
  a1[18] = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  return result;
}

void ***__Block_byref_object_dispose__14(uint64_t a1)
{
  v3 = (a1 + 128);
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 104);
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100]((a1 + 96), 0);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100]((a1 + 88), 0);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100]((a1 + 80), 0);
  v3 = (a1 + 56);
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&v3);

  return std::unique_ptr<CRImageBuffer>::reset[abi:ne200100]((a1 + 48), 0);
}

void CRDetectorOutputMaps::~CRDetectorOutputMaps(void ***this)
{
  v2 = (this + 10);
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 7);
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](this + 6, 0);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](this + 4, 0);
  v2 = (this + 1);
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](this, 0);
}

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1B4267604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

void sub_1B4267B38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);

  _Unwind_Resume(a1);
}

double __Block_byref_object_copy__21(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

__n128 __Block_byref_object_copy__24(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1B426B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void sub_1B426C700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  a33 = &a26;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](&a33);
  a33 = &a29;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](&a33);

  _Unwind_Resume(a1);
}

uint64_t std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__emplace_back_slow_path<CRDetectorUtils::CRTextDetectorQuadFeature const&>(a1, a2);
  }

  else
  {
    std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__construct_one_at_end[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuadFeature const&>(a1, a2);
    result = v3 + 168;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>>(result, 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 168 * v6;
    v14 = 168 * v6;
    if (0xCF3CF3CF3CF3CF3DLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(&v12);
  }

  return result;
}

void sub_1B426C8E4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B426C8D0);
}

uint64_t std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CRDetectorUtils::CRTextDetectorQuad>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B426D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<CRDetectorUtils::CRTextDetectorQuad>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuad>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuad>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuad>,CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      *(v4 + 32) = v6[2];
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      *(v4 + 64) = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v4 + 64, *(v6 + 8), *(v6 + 9), (*(v6 + 9) - *(v6 + 8)) >> 4);
      v10 = *(v6 + 88);
      v11 = *(v6 + 104);
      v12 = *(v6 + 120);
      *(v4 + 136) = *(v6 + 17);
      *(v4 + 120) = v12;
      *(v4 + 104) = v11;
      *(v4 + 88) = v10;
      v6 += 9;
      v4 = v17 + 144;
      v17 += 144;
    }

    while (v6 != a3);
  }

  v15 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuad>,CRDetectorUtils::CRTextDetectorQuad*>>::~__exception_guard_exceptions[abi:ne200100](v14);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuad>,CRDetectorUtils::CRTextDetectorQuad*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuad>,CRDetectorUtils::CRTextDetectorQuad*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuad>,CRDetectorUtils::CRTextDetectorQuad*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 80);
    if (v3)
    {
      *(v1 - 72) = v3;
      operator delete(v3);
    }

    v1 -= 144;
  }
}

void std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CRDetectorUtils::CRTextDetectorQuad>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<CRDetectorUtils::CRTextDetectorQuad>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 144)
  {
    v4 = *(i - 80);
    if (v4)
    {
      *(i - 72) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void CRDetectorUtils::CRTextDetectorQuadFeature::~CRTextDetectorQuadFeature(CRDetectorUtils::CRTextDetectorQuadFeature *this)
{
  v3 = (this + 144);
  std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }
}

void std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        std::__list_imp<unsigned long>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<CRImageBuffer>>::__vdeallocate(void ****a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<CRImageBuffer>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 168;
        std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__construct_one_at_end[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuadFeature const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 + 32) = a2[2];
  *(v4 + 48) = v7;
  *v4 = v5;
  *(v4 + 16) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v4 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 4);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  v11 = *(a2 + 17);
  *(v4 + 144) = 0;
  *(v4 + 136) = v11;
  *(v4 + 120) = v10;
  *(v4 + 104) = v9;
  *(v4 + 88) = v8;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  result = std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v4 + 144, *(a2 + 18), *(a2 + 19), 0x8E38E38E38E38E39 * ((*(a2 + 19) - *(a2 + 18)) >> 4));
  *(a1 + 8) = v4 + 168;
  return result;
}

void sub_1B426D664(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 72) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__emplace_back_slow_path<CRDetectorUtils::CRTextDetectorQuadFeature const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>>(a1, v6);
  }

  v7 = 168 * v2;
  v22 = 0;
  v23 = v7;
  v24 = 168 * v2;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  *(v7 + 32) = a2[2];
  *(v7 + 48) = v10;
  *v7 = v8;
  *(v7 + 16) = v9;
  v11 = 168 * v2;
  *(v11 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v11 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 4);
  v12 = *(a2 + 88);
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  v15 = *(a2 + 17);
  *(v7 + 144) = 0;
  *(v7 + 136) = v15;
  *(v7 + 120) = v14;
  *(v7 + 104) = v13;
  *(v7 + 88) = v12;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v7 + 144, *(a2 + 18), *(a2 + 19), 0x8E38E38E38E38E39 * ((*(a2 + 19) - *(a2 + 18)) >> 4));
  *&v24 = v24 + 168;
  v16 = a1[1];
  v17 = v23 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(&v22);
  return v21;
}

void sub_1B426D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 72) = v7;
    operator delete(v7);
  }

  std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 16);
      v10 = *(v7 + 48);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v10;
      *a4 = v8;
      *(a4 + 16) = v9;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = 0;
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v11 = *(v7 + 88);
      v12 = *(v7 + 104);
      v13 = *(v7 + 136);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v12;
      *(a4 + 88) = v11;
      *(a4 + 136) = v13;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 160) = *(v7 + 160);
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      v7 += 168;
      a4 += 168;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    do
    {
      std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](a1, v5);
      v5 += 168;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

void std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 144);
  std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 64);
  if (v3)
  {
    *(a2 + 72) = v3;
    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 168;
      std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(void **a1)
{
  std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 168;
    std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](v4, i - 168);
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(__n128 *a1, __n128 *a2, __n128 *a3, unint64_t *a4, _BYTE *a5, __n128 result)
{
  v6 = &a2->n128_f64[1];
  v7 = 1;
  if (*a5)
  {
    v7 = 0;
    v6 = a2;
  }

  v8 = *v6;
  v9 = &a3->n128_f64[1];
  if (*a5)
  {
    v9 = a3;
  }

  v10 = *v9;
  v11 = a2->n128_f64[v7];
  if (v8 >= a1->n128_f64[v7])
  {
    if (v10 < v11)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v12 = &a2->n128_f64[1];
      v13 = 1;
      if (*a5)
      {
        v13 = 0;
        v12 = a2;
      }

      if (*v12 < a1->n128_f64[v13])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v10 < v11)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v14 = &a3->n128_f64[1];
    v15 = 1;
    if (*a5)
    {
      v15 = 0;
      v14 = a3;
    }

    if (*v14 < a2->n128_f64[v15])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

LABEL_18:
  v16 = a4 + 1;
  v17 = 1;
  if (*a5)
  {
    v17 = 0;
    v16 = a4;
  }

  result.n128_u64[0] = *v16;
  if (*v16 < a3->n128_f64[v17])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v18 = &a3->n128_u64[1];
    v19 = 1;
    if (*a5)
    {
      v19 = 0;
      v18 = a3;
    }

    result.n128_u64[0] = *v18;
    if (*v18 < a2->n128_f64[v19])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v20 = &a2->n128_u64[1];
      v21 = 1;
      if (*a5)
      {
        v21 = 0;
        v20 = a2;
      }

      result.n128_u64[0] = *v20;
      if (*v20 < a1->n128_f64[v21])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *>(__n128 *a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = a1 + 1;
        v28 = a2 - 1;
        n128_f64 = &a1[1].n128_f64[1];
        v30 = &a2[-1].n128_f64[1];
        v31 = 1;
        if (*a3)
        {
          v31 = 0;
          n128_f64 = a1[1].n128_f64;
        }

        v32 = *n128_f64;
        if (*a3)
        {
          v33 = a2[-1].n128_f64;
        }

        else
        {
          v33 = &a2[-1].n128_f64[1];
        }

        v34 = *v33;
        v35 = v8->n128_f64[v31];
        if (v32 >= a1->n128_f64[v31])
        {
          if (v34 < v35)
          {
            v46 = *v8;
            *v8 = *v28;
            *v28 = v46;
            v9 = &a1[1].n128_f64[1];
            v10 = 1;
            if (*a3)
            {
              v10 = 0;
              v9 = a1[1].n128_f64;
            }

            goto LABEL_6;
          }
        }

        else
        {
          if (v34 >= v35)
          {
            v51 = *a1;
            *a1 = *v8;
            *v8 = v51;
            v52 = 1;
            if (*a3)
            {
              v52 = 0;
              v30 = a2[-1].n128_f64;
            }

            if (*v30 >= v8->n128_f64[v52])
            {
              return 1;
            }

            v36 = *v8;
            *v8 = *v28;
          }

          else
          {
            v36 = *a1;
            *a1 = *v28;
          }

          *v28 = v36;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(a1, a1 + 1, a1 + 2, a2[-1].n128_u64, a3, a4);
        break;
      case 5:
        v12 = a1 + 1;
        v13 = a1 + 2;
        v14 = a1 + 3;
        v15 = a2 - 1;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(a1, a1 + 1, a1 + 2, a1[3].n128_u64, a3, a4);
        v16 = &a2[-1].n128_f64[1];
        v17 = 1;
        if (*a3)
        {
          v17 = 0;
          v16 = a2[-1].n128_f64;
        }

        if (*v16 < v14->n128_f64[v17])
        {
          v18 = *v14;
          *v14 = *v15;
          *v15 = v18;
          v19 = &a1[3].n128_f64[1];
          v20 = 1;
          if (*a3)
          {
            v20 = 0;
            v19 = a1[3].n128_f64;
          }

          if (*v19 < v13->n128_f64[v20])
          {
            v21 = *v13;
            *v13 = *v14;
            *v14 = v21;
            v22 = &a1[2].n128_f64[1];
            v23 = 1;
            if (*a3)
            {
              v23 = 0;
              v22 = a1[2].n128_f64;
            }

            if (*v22 < v12->n128_f64[v23])
            {
              v24 = *v12;
              *v12 = *v13;
              *v13 = v24;
              v25 = &a1[1].n128_f64[1];
              v26 = 1;
              if (*a3)
              {
                v26 = 0;
                v25 = a1[1].n128_f64;
              }

              if (*v25 < a1->n128_f64[v26])
              {
                v27 = *a1;
                *a1 = *v12;
                *v12 = v27;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_32;
    }

    return 1;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    v8 = a2 - 1;
    v9 = &a2[-1].n128_f64[1];
    v10 = 1;
    if (*a3)
    {
      v10 = 0;
      v9 = a2[-1].n128_f64;
    }

LABEL_6:
    if (*v9 < a1->n128_f64[v10])
    {
      v11 = *a1;
      *a1 = *v8;
      *v8 = v11;
    }

    return 1;
  }

LABEL_32:
  v37 = a1 + 2;
  v38 = a1[2].n128_f64[0];
  v39 = a1 + 1;
  v40 = &a1[1].n128_f64[1];
  v41 = 1;
  if (*a3)
  {
    v41 = 0;
    v40 = a1[1].n128_f64;
  }

  v42 = a1[2].n128_f64[1];
  if (*a3)
  {
    v43 = a1[2].n128_f64[0];
  }

  else
  {
    v43 = a1[2].n128_f64[1];
  }

  v44 = v39->n128_f64[v41];
  if (*v40 >= a1->n128_f64[v41])
  {
    if (v43 < v44)
    {
      v47 = *v39;
      *v39 = *v37;
      *v37 = v47;
      v48 = &a1[1].n128_f64[1];
      v49 = 1;
      if (*a3)
      {
        v49 = 0;
        v48 = a1[1].n128_f64;
      }

      if (*v48 < a1->n128_f64[v49])
      {
        v50 = *a1;
        *a1 = *v39;
        *v39 = v50;
      }
    }
  }

  else
  {
    if (v43 < v44)
    {
      v45 = *a1;
      *a1 = *v37;
LABEL_60:
      *v37 = v45;
      goto LABEL_61;
    }

    v53 = *a1;
    *a1 = *v39;
    *v39 = v53;
    v54 = 1;
    if (*a3)
    {
      v54 = 0;
    }

    else
    {
      v38 = v42;
    }

    if (v38 < v39->n128_f64[v54])
    {
      v45 = *v39;
      *v39 = *v37;
      goto LABEL_60;
    }
  }

LABEL_61:
  v55 = a1[3].n128_f64;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  while (1)
  {
    v59 = *v55;
    v58 = v55[1];
    v60 = *a3 ? 0 : 8;
    v61 = *a3 ? *v55 : v55[1];
    if (v61 < *(v37->n128_f64 + v60))
    {
      v62 = v56;
      while (1)
      {
        *(a1 + v62 + 48) = *(a1 + v62 + 32);
        if (v62 == -32)
        {
          break;
        }

        if (*a3)
        {
          v63 = 0;
        }

        else
        {
          v63 = 8;
        }

        if (*a3)
        {
          v64 = v59;
        }

        else
        {
          v64 = v58;
        }

        v65 = *(a1[1].n128_f64 + v62 + v63);
        v62 -= 16;
        if (v64 >= v65)
        {
          v66 = (a1[3].n128_f64 + v62);
          goto LABEL_81;
        }
      }

      v66 = a1;
LABEL_81:
      *v66 = v59;
      v66[1] = v58;
      if (++v57 == 8)
      {
        return v55 + 2 == a2;
      }
    }

    v37 = v55;
    v56 += 16;
    v55 += 2;
    if (v55 == a2)
    {
      return 1;
    }
  }
}

void ****std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(void *a1, _BYTE *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  v19 = a5;
  if (a1 != a3)
  {
    v8 = a1 + 1;
    std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](&v19, a2, (*a1 + 4096));
    if (v8 != a3)
    {
      v10 = *a5;
      v9 = *(a5 + 8);
      do
      {
        v11 = 0;
        v12 = *v8;
        v14 = *v10++;
        v13 = v14;
        while (1)
        {
          v15 = v13 - v9 + 4096;
          if (4096 - v11 >= v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = 4096 - v11;
          }

          if (v16)
          {
            memmove(v9, &v12[v11], v16);
          }

          v11 += v16;
          if (v11 == 4096)
          {
            break;
          }

          v17 = *v10++;
          v13 = v17;
          v9 = v17;
        }

        v9 += v16;
        if (*(v10 - 1) + 4096 == v9)
        {
          v9 = *v10;
        }

        else
        {
          --v10;
        }

        *a5 = v10;
        *(a5 + 8) = v9;
        ++v8;
      }

      while (v8 != a3);
    }

    a2 = *v8;
  }

  return std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](&v19, a2, a4);
}

void ****std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](void ****result, _BYTE *__src, _BYTE *a3)
{
  v3 = *result;
  v5 = **result;
  v4 = (*result)[1];
  if (__src != a3)
  {
    v7 = __src;
    v8 = result;
    v10 = *v5++;
    v9 = v10;
    while (1)
    {
      v11 = v9 - v4 + 4096;
      if (a3 - v7 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a3 - v7;
      }

      if (v12)
      {
        result = memmove(v4, v7, v12);
      }

      v7 += v12;
      if (v7 == a3)
      {
        break;
      }

      v13 = *v5++;
      v9 = v13;
      v4 = v13;
    }

    v4 = (v4 + v12);
    if (*(v5 - 1) + 4096 == v4)
    {
      v4 = *v5;
    }

    else
    {
      --v5;
    }

    v3 = *v8;
  }

  *v3 = v5;
  v3[1] = v4;
  return result;
}

void *std::deque<unsigned char>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(v2, v16);
    }
  }

  return result;
}

void sub_1B426F4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CRDetectorUtils::CRTextDetectorQuad>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<CRDetectorUtils::CRTextDetectorQuad>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1B426FD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4271B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36)
{
  CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::~CTCGreedyDecoder(v37);
  CoreRecognition::decoder::Context::~Context(&a36);
  a36 = (v38 - 208);
  std::vector<CoreRecognition::decoder::ActivationMatrix>::__destroy_vector::operator()[abi:ne200100](&a36);
  CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::~CTCGreedyDecoder((v38 - 160));

  _Unwind_Resume(a1);
}

void *CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::~SpaceSegmentedPathBuilder(void *a1)
{
  *a1 = &unk_1F2BAF938;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B4271D3C(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::decode(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  __p = 0;
  v52 = 0;
  v53 = 0;
  std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::reserve(&__p, *a2 + 1);
  v6 = v52;
  if (v52 >= v53)
  {
    v7 = std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<>(&__p);
  }

  else
  {
    v52[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
    *(v6 + 8) = &unk_1F2BAF768;
    *(v6 + 9) = 0;
    v7 = (v6 + 5);
  }

  v52 = v7;
  *(v7 - 24) = 0;
  *(v7 - 48) = 0;
  *(v7 - 80) = xmmword_1B42AFDD0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v49 = &unk_1F2BAF768;
  v50 = 0;
  v8 = *a2;
  if (*a2)
  {
    v9 = 0;
    v10 = -1;
    do
    {
      v11 = a2[1];
      v12 = v11 * v9;
      v14 = a2[8];
      v13 = a2[9];
      v15 = (v13 + 4 * v11 * v9);
      if (v13)
      {
        v16 = -1.0;
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
      }

      v17 = (v14 + 4 * v12);
      v18 = v9 + 1;
      v19 = v11 * (v9 + 1);
      v20 = (v14 + 4 * v19);
      v22 = v12 == v19;
      v21 = v17 + 1;
      v22 = v22 || v21 == v20;
      if (!v22)
      {
        v23 = v16 + 1.0;
        if (v15)
        {
          v23 = v16;
        }

        v24 = v15 + 1;
        if (!v15)
        {
          v24 = 0;
        }

        v25 = 4 * v11 - 4;
        do
        {
          v26 = *v17;
          if (*v17 > -0.0010005)
          {
            v26 = -0.0010005;
          }

          v27 = *v21;
          if (*v21 > -0.0010005)
          {
            v27 = -0.0010005;
          }

          if (v26 < v27)
          {
            v15 = v24;
            v17 = v21;
            v16 = v23;
          }

          ++v21;
          v28 = v24 == 0;
          if (v24)
          {
            ++v24;
          }

          else
          {
            v24 = 0;
          }

          if (v28)
          {
            v23 = v23 + 1.0;
          }

          v25 -= 4;
        }

        while (v25);
      }

      if (v15)
      {
        v16 = *v15;
      }

      v29 = *v17;
      v30 = v16;
      if (v29 <= -0.0010005)
      {
        v31 = v29;
      }

      else
      {
        v31 = -0.0010005;
      }

      *&v45 = v30;
      *(&v48 + 1) = v7 - 80;
      v32 = v31;
      if (v10 == v30)
      {
        v33 = *(a1 + 32);
        v34 = *(a1 + 40);
        if (v33 != v34)
        {
          while (*v33 != *(v7 - 80))
          {
            if (++v33 == v34)
            {
              goto LABEL_56;
            }
          }
        }

        if (v33 != v34 && *(a1 + 24) == 1 && *(v7 - 40) < v32)
        {
          *(v7 - 72) = v9;
          *(v7 - 40) = v32;
        }
      }

      else if (*(a1 + 8) == v30)
      {
        v10 = v30;
      }

      else
      {
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        if (v35 != v36)
        {
          while (*v35 != v30)
          {
            if (++v35 == v36)
            {
              goto LABEL_52;
            }
          }
        }

        if (v35 != v36)
        {
          *(&v45 + 1) = v9;
          *(&v47 + 1) = v31;
        }

LABEL_52:
        *&v47 = *(v7 - 48);
        if (v7 >= v53)
        {
          v7 = std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>&>(&__p, &v45);
        }

        else
        {
          v37 = v45;
          v38 = v46;
          v39 = v48;
          *(v7 + 32) = v47;
          *(v7 + 48) = v39;
          *v7 = v37;
          *(v7 + 16) = v38;
          *(v7 + 64) = &unk_1F2BAF768;
          *(v7 + 72) = v50;
          v7 += 80;
        }

        v52 = v7;
        v10 = v45;
        v8 = *a2;
      }

LABEL_56:
      *(v7 - 48) = v32 + *(v7 - 48);
      v9 = v18;
    }

    while (v18 < v8);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  CoreRecognition::decoder::SegmentedPathBuilderBase<CoreRecognition::decoder::BaseState>::createResultPathFromBeamEntry(a1 + 16, v7 - 80, v8, &v42);
  v40 = a3[1];
  if (v40 >= a3[2])
  {
    v41 = std::vector<CoreRecognition::decoder::DecodingPath>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingPath>(a3, &v42);
  }

  else
  {
    *v40 = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = v42;
    *(v40 + 16) = v43;
    v42 = 0uLL;
    v43 = 0;
    *(v40 + 24) = v44;
    v41 = v40 + 40;
  }

  a3[1] = v41;
  v54 = &v42;
  std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v54);
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }
}

void sub_1B42720FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  *(v27 - 104) = v26;
  std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100]((v27 - 104));
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_40c100_ZTSN15CoreRecognition7decoder16CTCGreedyDecoderINS0_25SpaceSegmentedPathBuilderINS0_9BaseStateEEEEE104c86_ZTSKNSt3__16vectorIN15CoreRecognition7decoder16ActivationMatrixENS_9allocatorIS3_EEEE128c40_ZTSKN15CoreRecognition7decoder7ContextE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = &unk_1F2BAFBC0;
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = &unk_1F2BAF938;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v5 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 96) = v5;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<CoreRecognition::decoder::ActivationMatrix>::__init_with_size[abi:ne200100]<CoreRecognition::decoder::ActivationMatrix*,CoreRecognition::decoder::ActivationMatrix*>(a1 + 104, *(a2 + 104), *(a2 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 112) - *(a2 + 104)) >> 4));
  v6 = *(a2 + 128);
  if (v6)
  {
    CFRetain(*(a2 + 128));
  }

  *(a1 + 128) = v6;
  result = *(a2 + 136);
  *(a1 + 136) = result;
  return result;
}

void *CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::~CTCGreedyDecoder(void *a1)
{
  *a1 = &unk_1F2BAFBC0;
  a1[2] = &unk_1F2BAF938;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void __destroy_helper_block_ea8_40c100_ZTSN15CoreRecognition7decoder16CTCGreedyDecoderINS0_25SpaceSegmentedPathBuilderINS0_9BaseStateEEEEE104c86_ZTSKNSt3__16vectorIN15CoreRecognition7decoder16ActivationMatrixENS_9allocatorIS3_EEEE128c40_ZTSKN15CoreRecognition7decoder7ContextE(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = (a1 + 104);
  std::vector<CoreRecognition::decoder::ActivationMatrix>::__destroy_vector::operator()[abi:ne200100](&v4);
  *(a1 + 40) = &unk_1F2BAFBC0;
  *(a1 + 56) = &unk_1F2BAF938;
  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;

    operator delete(v3);
  }
}

void sub_1B427264C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v12 = *(v10 - 120);
  if (v12)
  {
    *(v10 - 112) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1B4272974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  std::vector<CoreRecognition::decoder::ActivationMatrix>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void std::vector<espresso_buffer_t>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<espresso_buffer_t>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 168 * a2;
  }
}

void CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::~SpaceSegmentedPathBuilder(void *a1)
{
  *a1 = &unk_1F2BAF938;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::SegmentedPathBuilderBase<CoreRecognition::decoder::BaseState>::createResultPathFromBeamEntry(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5 = *(a2 + 32);
  *(a4 + 24) = v5 + *(a2 + 48);
  *(a4 + 32) = v5;
  v66 = 0u;
  v67 = 0u;
  *__src = 0u;
  v64 = 0;
  v65 = v5;
  v6 = (a2 + 56);
  if (!*(a2 + 56))
  {
    goto LABEL_77;
  }

  v8 = a2;
  do
  {
    ++*(&v67 + 1);
    v10 = (*(*a1 + 48))(a1, *v8);
    v11 = v10;
    if (v10 != 2)
    {
      if (!v10)
      {
        v15 = __src[1];
        if (__src[1] >= v64)
        {
          v24 = __src[0];
          v25 = __src[1] - __src[0];
          v26 = (__src[1] - __src[0]) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
LABEL_80:
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v28 = v64 - __src[0];
          if ((v64 - __src[0]) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          v22 = v28 >= 0x7FFFFFFFFFFFFFF8;
          v29 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v29);
          }

          v39 = (8 * v26);
          v40 = *v8;
          v41 = &v39[-((__src[1] - __src[0]) >> 3)];
          *v39 = v40;
          v16 = v39 + 1;
          memcpy(v41, v24, v25);
          v42 = __src[0];
          __src[0] = v41;
          __src[1] = v16;
          v64 = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *__src[1] = *v8;
          v16 = v15 + 8;
        }

        __src[1] = v16;
        goto LABEL_49;
      }

      if (v10 == 1)
      {
        v12 = __src[1];
        if (__src[1] >= v64)
        {
          v17 = __src[0];
          v18 = __src[1] - __src[0];
          v19 = (__src[1] - __src[0]) >> 3;
          v20 = v19 + 1;
          if ((v19 + 1) >> 61)
          {
            goto LABEL_80;
          }

          v21 = v64 - __src[0];
          if ((v64 - __src[0]) >> 2 > v20)
          {
            v20 = v21 >> 2;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
          v23 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v23);
          }

          *(8 * v19) = *v8;
          v13 = (8 * v19 + 8);
          memcpy(0, v17, v18);
          v30 = __src[0];
          __src[0] = 0;
          __src[1] = v13;
          v64 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *__src[1] = *v8;
          v13 = v12 + 8;
        }

        __src[1] = v13;
        v14 = v8[1];
      }

      else
      {
LABEL_10:
        v14 = v8[1] + 1;
      }

      *(&v66 + 1) = v14;
      *&v67 = a3;
      v31 = *(a4 + 8);
      if (v31 >= *(a4 + 16))
      {
        v33 = std::vector<CoreRecognition::decoder::DecodingToken>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingToken&>(a4, __src);
      }

      else
      {
        v32 = std::vector<CoreRecognition::decoder::DecodingToken>::__construct_one_at_end[abi:ne200100]<CoreRecognition::decoder::DecodingToken&>(a4, __src);
        v33 = v31 + 64;
      }

      *(a4 + 8) = v33;
      v34 = __src[0];
      __src[1] = __src[0];
      *(&v67 + 1) = 0;
      if (v11 == 2)
      {
        if (__src[0] >= v64)
        {
          v36 = (v64 - __src[0]) >> 2;
          if (v36 <= 1)
          {
            v36 = 1;
          }

          if ((v64 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v37);
        }

        *__src[0] = *v8;
        __src[1] = v34 + 8;
      }

      else if (!*v6)
      {
        v35 = 0.0;
LABEL_45:
        v38 = v8[5];
        v65 = v35;
        *&v66 = v38;
        a3 = v14;
        goto LABEL_49;
      }

      v35 = (*(*a1 + 56))(a1, v32);
      goto LABEL_45;
    }

    if (__src[0] != __src[1])
    {
      goto LABEL_10;
    }

LABEL_49:
    v8 = *v6;
    v43 = *v6;
    v44 = v43[7];
    v6 = v43 + 7;
  }

  while (v44);
  if (__src[0] == __src[1])
  {
    v47 = *a4;
    v46 = *(a4 + 8);
    if (*a4 != v46)
    {
      *(v46 - 24) = 0;
    }
  }

  else
  {
    *(&v66 + 1) = 0;
    *&v67 = a3;
    v45 = *(a4 + 8);
    if (v45 >= *(a4 + 16))
    {
      v46 = std::vector<CoreRecognition::decoder::DecodingToken>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingToken&>(a4, __src);
    }

    else
    {
      std::vector<CoreRecognition::decoder::DecodingToken>::__construct_one_at_end[abi:ne200100]<CoreRecognition::decoder::DecodingToken&>(a4, __src);
      v46 = v45 + 64;
    }

    *(a4 + 8) = v46;
    v47 = *a4;
  }

  if (v47 != v46)
  {
    v48 = v47 + 64;
    v49 = v47;
    do
    {
      if (v48 == v46)
      {
        break;
      }

      *(v49 + 24) = *(v49 + 24) - *(v48 + 24);
      v49 += 64;
      v48 += 64;
    }

    while (v49 != v46);
  }

  if (v47 != v46)
  {
    v50 = v46 - 64;
    if (v46 - 64 > v47)
    {
      do
      {
        v51 = *v47;
        v62 = *(v47 + 8);
        *(v47 + 8) = 0;
        *(v47 + 16) = 0;
        *v47 = 0;
        v68 = *(v47 + 24);
        v52 = *(v47 + 40);
        v53 = *(v47 + 48);
        v54 = *(v47 + 56);
        std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__move_assign(v47, v50);
        *(v47 + 24) = *(v50 + 24);
        *(v47 + 40) = *(v50 + 40);
        *(v47 + 48) = *(v50 + 48);
        v55 = *v50;
        if (*v50)
        {
          *(v50 + 8) = v55;
          operator delete(v55);
        }

        *v50 = v51;
        *(v50 + 8) = v62;
        *(v50 + 24) = v68;
        *(v50 + 40) = v52;
        *(v50 + 48) = v53;
        *(v50 + 56) = v54;
        v47 += 64;
        v50 -= 64;
      }

      while (v47 < v50);
      v47 = *a4;
      v46 = *(a4 + 8);
    }
  }

  while (v47 != v46)
  {
    v56 = *v47;
    v57 = *(v47 + 8);
    v58 = (v57 - 8);
    if (*v47 != v57 && v58 > v56)
    {
      v60 = v56 + 8;
      do
      {
        v61 = *(v60 - 8);
        *(v60 - 8) = *v58;
        *v58-- = v61;
        v22 = v60 >= v58;
        v60 += 8;
      }

      while (!v22);
    }

    v47 += 64;
  }

LABEL_77:
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_1B4274BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::updateActivationProgression(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5 && *(result + 8) == 1 && *(a2 + 40) < a4)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

uint64_t CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::updateActivationExtension(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

uint64_t CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::needsToBeCommitted(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 24);
        return 2 * (v2 != v3);
      }
    }
  }

  return 2 * (v2 != v3);
}

double CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::getCumulativeTokenScore(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (*(a1 + 40) == 1)
  {
    v3 = *(a2 + 56);
    if (v3 && a3 == 0)
    {
      return (*(a2 + 32) + *(v3 + 32)) * 0.5;
    }
  }

  return *(a2 + 32);
}

__n128 std::vector<CoreRecognition::decoder::DecodingToken>::__construct_one_at_end[abi:ne200100]<CoreRecognition::decoder::DecodingToken&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  result = *(a2 + 24);
  v6 = *(a2 + 40);
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 40) = v6;
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t std::vector<CoreRecognition::decoder::DecodingToken>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingToken&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingToken>>(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  v19 = v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  *(v8 + 56) = *(a2 + 56);
  *(v8 + 40) = v10;
  *(v8 + 24) = v9;
  *&v19 = v19 + 64;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingToken>,CoreRecognition::decoder::DecodingToken*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<CoreRecognition::decoder::DecodingToken>::~__split_buffer(&v17);
  return v16;
}

void sub_1B4274F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CoreRecognition::decoder::DecodingToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingToken>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingToken>,CoreRecognition::decoder::DecodingToken*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      v9 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v9;
        operator delete(v9);
      }

      v5 += 64;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingToken>,CoreRecognition::decoder::DecodingToken*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingToken>,CoreRecognition::decoder::DecodingToken*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingToken>,CoreRecognition::decoder::DecodingToken*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingToken>,CoreRecognition::decoder::DecodingToken*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 64);
      v3 -= 64;
      v4 = v5;
      if (v5)
      {
        *(v1 - 56) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<CoreRecognition::decoder::DecodingToken>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CoreRecognition::decoder::DecodingToken>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CoreRecognition::decoder::DecodingToken>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 64);
    *(a1 + 16) = v2 - 64;
    if (v5)
    {
      *(v2 - 56) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }
}

void std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CoreRecognition::decoder::DecodingToken>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<CoreRecognition::decoder::DecodingToken>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 64);
      v4 -= 64;
      v5 = v6;
      if (v6)
      {
        *(v2 - 56) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 5;
        v6 = v4;
        std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::~CTCGreedyDecoder(void *a1)
{
  *a1 = &unk_1F2BAFBC0;
  a1[2] = &unk_1F2BAF938;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::Context::~Context(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<CoreRecognition::decoder::ActivationMatrix>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 10;
        std::allocator<CoreRecognition::decoder::ActivationMatrix>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<CoreRecognition::decoder::ActivationMatrix>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void *std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>>(result, a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B4275548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 **std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__swap_out_circular_buffer(__int128 **result, void *a2)
{
  v2 = a2[1];
  v3 = *result;
  v4 = result[1];
  v5 = (v2 - (v4 - *result));
  if (v4 != *result)
  {
    v6 = v2 - 16 * (v4 - *result) + 64;
    v7 = v5;
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v10 = v3[3];
      v7[2] = v3[2];
      v7[3] = v10;
      *v7 = v8;
      v7[1] = v9;
      *(v7 + 8) = &unk_1F2BAF768;
      *(v7 + 9) = *(v3 + 9);
      v3 += 5;
      v7 += 5;
      v6 += 80;
    }

    while (v3 != v4);
    v3 = *result;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v11 = result[1];
  result[1] = a2[2];
  a2[2] = v11;
  v12 = result[2];
  result[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x333333333333333)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v2)
  {
    v2 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v4 = 0x333333333333333;
  }

  else
  {
    v4 = v2;
  }

  v12 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>>(a1, v4);
  }

  v5 = 80 * v1;
  __p = 0;
  v9 = v5;
  v11 = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = &unk_1F2BAF768;
  *(v5 + 72) = 0;
  v10 = 80 * v1 + 80;
  std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__swap_out_circular_buffer(a1, &__p);
  v6 = *(a1 + 8);
  if (v10 != v9)
  {
    v10 = (v10 - v9 - 80) % 0x50uLL + v9;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_1B4275804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>&>(uint64_t a1, __int128 *a2)
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>>(a1, v6);
  }

  v7 = 80 * v2;
  __p = 0;
  v14 = v7;
  v16 = 0;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  *(v7 + 32) = a2[2];
  *(v7 + 48) = v10;
  *v7 = v8;
  *(v7 + 16) = v9;
  *(v7 + 64) = &unk_1F2BAF768;
  *(v7 + 72) = *(a2 + 9);
  v15 = 80 * v2 + 80;
  std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__swap_out_circular_buffer(a1, &__p);
  v11 = *(a1 + 8);
  if (v15 != v14)
  {
    v15 = (v15 - v14 - 80) % 0x50uLL + v14;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_1B42759A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CoreRecognition::decoder::DecodingPath>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingPath>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingPath>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  *&v16 = 40 * v2 + 40;
  v8 = *(a1 + 8);
  v9 = 40 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingPath>,CoreRecognition::decoder::DecodingPath*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<CoreRecognition::decoder::DecodingPath>::~__split_buffer(&v14);
  return v13;
}

void sub_1B4275B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CoreRecognition::decoder::DecodingPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingPath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingPath>,CoreRecognition::decoder::DecodingPath*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    do
    {
      v12 = v5;
      std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 5;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingPath>,CoreRecognition::decoder::DecodingPath*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingPath>,CoreRecognition::decoder::DecodingPath*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingPath>,CoreRecognition::decoder::DecodingPath*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CoreRecognition::decoder::DecodingPath>,CoreRecognition::decoder::DecodingPath*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 5;
    v3 = v1;
    std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<CoreRecognition::decoder::DecodingPath>::~__split_buffer(void **a1)
{
  std::__split_buffer<CoreRecognition::decoder::DecodingPath>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CoreRecognition::decoder::DecodingPath>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 40);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<CoreRecognition::decoder::ActivationMatrix>::__init_with_size[abi:ne200100]<CoreRecognition::decoder::ActivationMatrix*,CoreRecognition::decoder::ActivationMatrix*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::ActivationMatrix>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::ActivationMatrix>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B4275F80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::ActivationMatrix>,CoreRecognition::decoder::ActivationMatrix*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 16) = 0;
      *(a3 + 16) = *(v5 + 1);
      *(a3 + 32) = v5[4];
      v5[2] = 0;
      v5[3] = 0;
      v5[4] = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 40) = *(v5 + 5);
      *(a3 + 56) = v5[7];
      v5[5] = 0;
      v5[6] = 0;
      v5[7] = 0;
      *(a3 + 64) = *(v5 + 4);
      v5 += 10;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      std::allocator<CoreRecognition::decoder::ActivationMatrix>::destroy[abi:ne200100](v4);
      v4 += 10;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<CoreRecognition::decoder::ActivationMatrix>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::allocator<CoreRecognition::decoder::ActivationMatrix>::destroy[abi:ne200100]((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<espresso_buffer_t>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCF3CF3CF3CF3CF3DLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x186186186186186)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xC30C30C30C30C3)
    {
      v9 = 0x186186186186186;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(a1, v9);
    }

    v11 = 168 * v6;
    v12 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
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

void sub_1B42767EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1B4277444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, char a30)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v37 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void cv::Mat::create(void *a1, int a2, int *a3, int a4)
{
  cv::Mat::createInfo(a1, a2, a3, a4, a3);
  v5 = a1[72];
  if (v5)
  {
    v6[0] = &unk_1F2BAF728;
    v6[1] = malloc_type_malloc(v5, 0x4D6363E7uLL);
    v7 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *v7 = 1;
    cv::SmartPtr::operator=((a1 + 36), v6, v8);
    v8[0] = &unk_1F2BAF728;
    cv::SmartPtr::release(v8);
    v6[0] = &unk_1F2BAF728;
    cv::SmartPtr::release(v6);
  }

  a1[1] = a1[37];
}

void *cv::Mat::Mat(void *a1, int a2, int a3, int a4)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2BAF748;
  a1[37] = 0;
  a1[38] = 0;
  a1[36] = &unk_1F2BAF728;
  v6[0] = a2;
  v6[1] = a3;
  cv::Mat::create(a1, 2, v6, a4);
  return a1;
}

void sub_1B427826C(_Unwind_Exception *a1)
{
  *v1 = v2;
  cv::SmartPtr::release(v1);
  _Unwind_Resume(a1);
}

uint64_t cv::Mat::elemSize(cv::Mat *this)
{
  v1 = *(this + 79) >> 4;
  if (v1 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1B42AFFC4[v1];
  }

  return v2 * (*(this + 79) & 0xFu);
}

void cv::Mat::createInfo(uint64_t a1, int a2, int *a3, int a4, int *a5)
{
  v6 = a4;
  *(a1 + 316) = a4;
  v10 = (a1 + 156);
  bzero((a1 + 156), 0x80uLL);
  bzero((a1 + 28), 0x80uLL);
  bzero((a1 + 320), 0x80uLL);
  bzero((a1 + 448), 0x80uLL);
  *(a1 + 16) = a2;
  if (a2 >= 1)
  {
    v11 = a2;
    v12 = -1;
    v13 = a1;
    do
    {
      v14 = *a5++;
      v10[v12 + *(a1 + 16)] = v14;
      v15 = *a3++;
      *(v13 + 28) = v15;
      *(v13 + 448) = v15;
      v13 += 4;
      --v12;
      --v11;
    }

    while (v11);
  }

  *(a1 + 20) = *(a1 + 28);
  if (v6 > 32)
  {
    if (v6 != 33)
    {
      if (v6 == 49)
      {
        v6 = 8;
      }

      else
      {
        if (v6 != 65)
        {
          goto LABEL_16;
        }

        v6 = 2;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((v6 - 3) < 2 || v6 == 1)
  {
    goto LABEL_15;
  }

  if (v6 == 17)
  {
LABEL_13:
    v6 = 4;
LABEL_15:
    *(a1 + 312) = v6;
  }

LABEL_16:
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(a1 + 312);
    *(a1 + 576) = v17;
    if (v16 >= 1)
    {
      do
      {
        v18 = *v10++;
        v17 *= v18;
        --v16;
      }

      while (v16);
      *(a1 + 576) = v17;
    }
  }

  else
  {
    *(a1 + 576) = 0;
  }
}

void cv::Mat::~Mat(cv::Mat *this)
{
  *this = &unk_1F2BAF748;
  *(this + 36) = &unk_1F2BAF728;
  cv::SmartPtr::release((this + 288));
}

{
  *this = &unk_1F2BAF748;
  *(this + 36) = &unk_1F2BAF728;
  cv::SmartPtr::release((this + 288));

  JUMPOUT(0x1B8C73EF0);
}

void cv::Mat::clear(cv::Mat *this)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
LABEL_5:
    v5 = *(this + 1);
    v6 = *(this + 72);

    bzero(v5, v6);
  }

  else
  {
    v3 = v2 - 1;
    v4 = 28;
    while (*(this + v4) == *(this + v3 + 39))
    {
      --v3;
      v4 += 4;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    if (*(this + 5) >= 1)
    {
      v7 = *(this + 39);
      v8 = cv::Mat::elemSize(this);
      v9 = 0;
      v10 = v7 * v8;
      v11 = *(this + 6) * v8;
      v12 = *(this + 1);
      do
      {
        bzero(v12, v11);
        v12 += v10;
        ++v9;
      }

      while (v9 < *(this + 5));
    }
  }
}

void CRDetectorPostProcessV3::extractAvgAndMaxValueInComponents(uint64_t a1, uint64_t *a2, float **a3, uint64_t *a4, float **a5, uint64_t *a6, uint64_t *a7)
{
  std::vector<float>::vector[abi:ne200100](__p, a3[1] - *a3);
  v14 = *(a1 + 112);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    v18 = *a4;
    v19 = *a6;
    v20 = *(a1 + 104);
    v21 = *a1;
    v22 = *(a1 + 120);
    do
    {
      if (v20)
      {
        v23 = *a3;
        v24 = *a5;
        v25 = (v19 + 4 * v15);
        v26 = __p[0];
        v27 = *a7;
        v28 = (v18 + 4 * v15);
        v29 = (v17 + 4 * v15);
        v15 += v20;
        v30 = v21;
        v31 = v20;
        do
        {
          v32 = *v30++;
          v33 = v32 - v22;
          if (v32 >= v22)
          {
            v23[v33] = *v29 + v23[v33];
            v24[v33] = *v28 + v24[v33];
            v26[v33] = v26[v33] + 1.0;
            if (*(v27 + 4 * v33) < *v25)
            {
              *(v27 + 4 * v33) = *v25;
            }
          }

          ++v25;
          ++v28;
          ++v29;
          --v31;
        }

        while (v31);
      }

      ++v16;
      v21 += v20;
    }

    while (v16 != v14);
  }

  v34 = *a3;
  v35 = __p[0];
  v36 = a3[1] - *a3;
  if (v36)
  {
    v37 = v36 >> 2;
    v38 = *a5;
    if (v37 <= 1)
    {
      v37 = 1;
    }

    v39 = __p[0];
    do
    {
      *v34 = *v34 / *v39;
      ++v34;
      v40 = *v39++;
      *v38 = *v38 / v40;
      ++v38;
      --v37;
    }

    while (v37);
  }

  else if (!__p[0])
  {
    return;
  }

  __p[1] = v35;
  operator delete(v35);
}

uint64_t CRDetectorPostProcessV3::splitIsthmusMergedComponents(CRDetectorPostProcessV3 *this, CRDetectorUtils::CRTextDetectorConnectedComponentResult *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2) - *(this + 1);
  if (v2)
  {
    v4 = 0;
    v5 = v2 >> 3;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    do
    {
      if (CRDetectorUtils::estimateVerticalIsthmusMergedLineCountInConnectedComponents(this, v4, 0xAuLL) == 2 && (*(*(this + 4) + 32 * v4 + 24) - *(*(this + 4) + 32 * v4 + 16) + 1) / (*(*(this + 4) + 32 * v4 + 8) - *(*(this + 4) + 32 * v4) + 1) >= 1.4)
      {
        *__src = 0u;
        v14 = 0u;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__src[1], *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 3);
        memset(v15, 0, sizeof(v15));
        v8 = *(this + 4);
        v7 = *(this + 5);
        if (v7 != v8)
        {
          std::vector<CGRect>::__vallocate[abi:ne200100](v15, (v7 - v8) >> 5);
        }

        memset(__p, 0, sizeof(__p));
        std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(__p, *(this + 7), *(this + 8), (*(this + 8) - *(this + 7)) >> 4);
        memset(v17, 0, 24);
        v9 = *(this + 10);
        v10 = *(this + 11);
        v21 = v17;
        LOBYTE(v22) = 0;
        if (v10 != v9)
        {
          std::vector<std::vector<CGPoint>>::__vallocate[abi:ne200100](v17, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
        }

        v11 = *(this + 14);
        v17[3] = *(this + 13);
        v17[4] = v11;
        v18 = *(this + 30);
        v19 = *(this + 16);
        v20 = *(this + 68);
        operator new[]();
      }

      v4 = (v4 + 1);
    }

    while (v4 != v6);
  }

  return 0;
}

void sub_1B427980C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(a13 + 88) = v28;
  CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult(&a17);
  _Unwind_Resume(a1);
}

double CRDetectorPostProcessV3::getRotatedRectFromConvexHull@<D0>(uint64_t *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = a3;
  v10 = __sincosf_stret(v9);
  cosval = v10.__cosval;
  if (v6 == v5)
  {
    v17 = -3.4028e38;
    v18 = 3.4028e38;
    v15 = 3.4028e38;
    v16 = -3.4028e38;
  }

  else
  {
    sinval = v10.__sinval;
    v13 = (v6 - v5) >> 3;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (v5 + 4);
    v15 = 3.4028e38;
    v16 = -3.4028e38;
    v17 = -3.4028e38;
    v18 = 3.4028e38;
    do
    {
      v19 = *v14 - v7;
      v20 = *(v14 - 1) - v8;
      v21 = v8 + v20 * cosval - v19 * sinval;
      v22 = v7 + v19 * cosval + v20 * sinval;
      v23 = v21;
      v24 = v22;
      if (v16 < v23)
      {
        v16 = v21;
      }

      if (v15 > v23)
      {
        v15 = v21;
      }

      if (v17 < v24)
      {
        v17 = v24;
      }

      if (v18 > v24)
      {
        v18 = v24;
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v25 = v15 - v8;
  v26 = v18 - v7;
  v27 = -v10.__sinval;
  v28 = -(v26 * v27);
  v29 = v8 + v25 * cosval - v26 * v27;
  v30 = v26 * cosval;
  *a2 = v29;
  a2[1] = v7 + v30 + v25 * v27;
  v31 = v16 - v8;
  a2[2] = v8 + v28 + v31 * cosval;
  a2[3] = v7 + v30 + v31 * v27;
  v32 = v17 - v7;
  v33 = -(v32 * v27);
  v34 = v8 + v31 * cosval - v32 * v27;
  v35 = v32 * cosval;
  a2[4] = v34;
  a2[5] = v7 + v35 + v31 * v27;
  a2[6] = v8 + v33 + v25 * cosval;
  a2[7] = v7 + v35 + v25 * v27;
  result = (v16 - v15);
  a2[8] = result;
  a2[9] = (v17 - v18);
  a2[10] = a3;
  return result;
}

void CRDetectorPostProcessV3::extractTableBoxes(void *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = a2;
  if (a1)
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v13 = a1[1];
    v12 = a1[2];
    std::vector<float>::vector[abi:ne200100](&__src, v12 * v13);
    LODWORD(v17) = 1061997773;
    v16[0] = 1056964608;
    MEMORY[0x1B8C75260](*a1, 1, &v17, v16, __src, 1, a1[2] * a1[1]);
    v4 = MEMORY[0x1B8C75280](__src, 1, v16, __src, 1, a1[2] * a1[1]);
    CRLogger = CRLogger::getCRLogger(v4);
    if (*CRLogger == 1 && (CRLogger[8] & 1) != 0)
    {
      v6 = malloc_type_calloc(a1[1] * a1[2], 4uLL, 0x100004052888210uLL);
      v7 = a1[1];
      v8 = a1[2];
      *v24 = v6;
      *&v24[8] = v7;
      v25 = v8;
      v26 = 4 * v8;
      if (v23 != __src)
      {
        memmove(v6, __src, v23 - __src);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%f_tableMap.png", rand()];
      CRDetectorUtils::writeImageBufferToFile(v24, v9, v10);
      free(*v24);
    }

    CRDetectorUtils::CRTextDetectorConnectedComponentResult::CRTextDetectorConnectedComponentResult(buf, v12, v13, 1, 1, 1);
  }

  v11 = CROSLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_ERROR, "Nil tableMap buffer in extractTableBoxes.", buf, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_1B427B364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  __p = &a34;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  if (a48)
  {
    a49 = a48;
    operator delete(a48);
  }

  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  a51 = &a54;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a51);
  a54 = &a57;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a54);
  if (v63)
  {
    operator delete(v63);
  }

  a57 = &a60;
  std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&a57);
  CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult(&a63);
  a63 = &STACK[0x248];
  std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&a63);

  _Unwind_Resume(a1);
}

void *std::vector<CRNormalizedQuad * {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(a2);
    }

    std::vector<std::pair<float,float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

float getWeightedMedianAngle(void *a1)
{
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 != *a1)
  {
    if (!((v2 >> 2) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,float>>>(v2 >> 2);
    }

    std::vector<std::pair<float,float>>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,false>(0, 0, 0, 1);
  return 0.0;
}

void sub_1B427B950(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CRDetectorPostProcessV3::saveConnectedComponentsMap(CRDetectorPostProcessV3 *this, const CRDetectorUtils::CRTextDetectorConnectedComponentResult *a2, void *a3, void *a4, NSString *a5)
{
  v8 = a4;
  v9 = malloc_type_calloc(a3 * a2, 4uLL, 0x100004052888210uLL);
  v30[0] = v9;
  v30[1] = a3;
  v11 = 4 * a2;
  v30[2] = a2;
  v30[3] = (4 * a2);
  v12 = *(this + 2) - *(this + 1);
  if (v12)
  {
    v13 = 0;
    v14 = v12 >> 3;
    v15 = *(this + 4);
    v16 = *(this + 30);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v17 = 19;
    do
    {
      v18 = v15 + 32 * v13;
      v10 = *v18;
      v19 = *(v18 + 8);
      if (*v18 < v19)
      {
        v22 = v18 + 16;
        v20 = *(v18 + 16);
        v21 = *(v22 + 8);
        v10 = v10;
        v23 = &v9[4 * v20 + v11 * v10];
        v24 = 8 * *(this + 13);
        v25 = *this + v24 * v10 + 8 * v20;
        do
        {
          v26 = v25;
          v27 = v23;
          v28 = v21 - v20;
          if (v20 < v21)
          {
            do
            {
              v29 = *v26++;
              if (v29 == v13 + v16)
              {
                *v27 = v17 / 255.0;
              }

              ++v27;
              --v28;
            }

            while (v28);
          }

          v10 = (v10 + 1);
          v23 = (v23 + v11);
          v25 += v24;
        }

        while (v10 != v19);
      }

      v17 = (v17 + 19) % 255;
      ++v13;
    }

    while (v13 != v14);
  }

  CRDetectorUtils::writeImageBufferToFile(v30, v8, v10);
  free(v30[0]);
}

void CRDetectorPostProcessV3::extractMaxValueInComponents(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16) - *(a1 + 8);
  v7 = v6 >> 3;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = v9 - *a3;
  v11 = v10 >> 2;
  if (v6 >> 3 <= (v10 >> 2))
  {
    if (v7 >= v11)
    {
      goto LABEL_14;
    }

    v16 = v8 + 4 * v7;
  }

  else
  {
    v12 = v7 - v11;
    v13 = *(a3 + 16);
    if (v12 > (v13 - v9) >> 2)
    {
      if (!(v7 >> 62))
      {
        v14 = v13 - v8;
        if (v14 >> 1 > v7)
        {
          v7 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v7;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v15);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a3 + 8), (((v6 >> 1) - v10 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v16 = v9 + 4 * v12;
  }

  *(a3 + 8) = v16;
LABEL_14:
  v17 = *(a1 + 112);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = *a2;
    v21 = *(a1 + 104);
    v22 = *a1;
    v23 = *(a1 + 120);
    do
    {
      if (v21)
      {
        v24 = *a3;
        v25 = (v20 + 4 * v18);
        v18 += v21;
        v26 = v22;
        v27 = v21;
        do
        {
          v28 = *v26++;
          v29 = v28 - v23;
          if (v28 >= v23 && *(v24 + 4 * v29) < *v25)
          {
            *(v24 + 4 * v29) = *v25;
          }

          ++v25;
          --v27;
        }

        while (v27);
      }

      ++v19;
      v22 += v21;
    }

    while (v19 != v17);
  }
}

void CRDetectorPostProcessV3::getSplitComponents(void *a1, void *a2, const CRImageBuffer *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = a2;
  a4;
  v8 = *(a3 + 1);
  v7 = *(a3 + 2);
  if (v8 * v7)
  {
    v9 = malloc_type_calloc(v8 * v7, 4uLL, 0xB0BD58F2uLL);
    bzero(v9, 4 * v8 * v7);
  }

  else
  {
    v9 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v21;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        drawRect(v14, a3, v9, 1.0);
      }

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:{16, v20}];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v20;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        drawRect(v19, a3, v9, 0.0);
      }

      v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  CRDetectorUtils::CRTextDetectorConnectedComponentResult::CRTextDetectorConnectedComponentResult(&v22, v7, v8, 1, 1, 1);
}

void drawRect(CRTextFeature *a1, const CRImageBuffer *a2, float *a3, float a4)
{
  v7 = a1;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v10 = *a2;
  v39 = v7;
  [(CRTextFeature *)v7 bounds];
  v12 = v11;
  [(CRTextFeature *)v39 bounds];
  v14 = v13;
  [(CRTextFeature *)v39 bounds];
  v16 = v15;
  [(CRTextFeature *)v39 bounds];
  v18 = v17;
  [(CRTextFeature *)v39 bounds];
  v20 = v19;
  [(CRTextFeature *)v39 bounds];
  v22 = fmax(v12 * v9, 0.0);
  v23 = fmin(v9, (v14 + v16) * v9);
  if (v22 < v23)
  {
    v24 = fmax(v18 * v8, 0.0);
    v25 = v23;
    v26 = v22;
    v38 = v24;
    v27 = fmin(v8, (v20 + v21) * v8);
    v28 = v9;
    v29 = v8;
    v30 = v8 * v22;
    v31 = &a3[v30];
    v32 = 4 * v8;
    v33 = v10 + 4 * v30;
    do
    {
      if (v24 < v27)
      {
        v34 = v38;
        do
        {
          v35 = [(CRTextFeature *)v39 boundingQuad];
          v36 = [v35 containsNormalizedPoint:{(v34 / v29), (v26 / v28)}];

          if (v36)
          {
            if (*(v33 + 4 * v34) <= 0.06)
            {
              v37 = 0.0;
            }

            else
            {
              v37 = 1.0;
            }

            v31[v34] = v37 * a4;
          }

          ++v34;
        }

        while (v34 < v27);
      }

      ++v26;
      v31 = (v31 + v32);
      v33 += v32;
    }

    while (v26 < v25);
  }
}

uint64_t *extractContourFromLabelMap(uint64_t *result, int a2, uint64_t a3, uint64_t a4, int a5, const void **a6, const void **a7)
{
  v9 = result[13];
  v8 = result[14];
  v10 = (result[4] + 32 * (a2 - *(result + 30)));
  v11 = v10[2];
  v12 = v10[3];
  v14 = *v10;
  v13 = v10[1];
  v15 = 2 * a5;
  v16 = 8 * a4;
  if (v14 <= v13)
  {
    v18 = v14;
    v19 = a3 + 8 * a4 * v14;
    v20 = *result + 8 * v9 * v14;
    do
    {
      v21 = v11;
      if (v11 <= v12)
      {
        do
        {
          if (*(v20 + 8 * v21) == a2)
          {
            v17 = *(v19 + 8 * v21);
          }

          else
          {
            v17 = 0;
          }

          if (v21 >= v12)
          {
            break;
          }

          ++v21;
        }

        while (!v17);
      }

      else
      {
        v17 = 0;
      }

      if (v18 >= v13)
      {
        break;
      }

      ++v18;
      v19 += v16;
      v20 += 8 * v9;
    }

    while (!v17);
  }

  else
  {
    v17 = 0;
  }

  v22 = fmax((v14 - v15), 0.0);
  v23 = fmin((v15 + 2 + v13), v8);
  v24 = v9;
  if (v22 >= v23)
  {
    v26 = 0;
    v25 = 0;
    v39 = 0.0;
    v33 = result[14];
    v32 = result[13];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = fmin((v15 + 2 + v12), v24);
    v29 = fmax((v11 - v15), 0.0);
    v30 = v22;
    v31 = (a3 + 8 * a4 * v22 + 8 * v29);
    v32 = result[13];
    v33 = result[14];
    do
    {
      if (v29 < v28)
      {
        v34 = v30;
        v35 = v31;
        v36 = v29;
        v37 = v28 - v29;
        do
        {
          v38 = *v35++;
          if (v38 == v17)
          {
            LODWORD(v32) = fmin(v36, v32);
            v25 = fmax(v36, v25);
            LODWORD(v33) = fmin(v34, v33);
            v26 = fmax(v34, v26);
            ++v27;
          }

          ++v36;
          --v37;
        }

        while (v37);
      }

      ++v30;
      v31 = (v31 + v16);
    }

    while (v30 != v23);
    v39 = v27;
  }

  v40 = sqrt(v39 * fmin((v25 - v32 + 1), (v26 - v33 + 1)) / ((v25 - v32 + 1) * (v26 - v33 + 1)));
  v41 = fmax(v15, (v40 + v40));
  v42 = fmax((v33 - v41), 0.0);
  v43 = v41 + 2;
  v44 = fmin((v41 + 2 + v26), v8);
  v45 = fmax((v32 - v41), 0.0);
  v46 = fmin((v41 + 2 + v25), v24);
  v100 = result[14];
  v102 = v45;
  v49 = v44 == v8 || v45 == 0 || v46 == v9;
  if (v42)
  {
    v50 = v49;
  }

  else
  {
    v50 = 1;
  }

  if (v42 < v44)
  {
    v51 = v41 + 1;
    v52 = (v51 * 0.6);
    v53 = v51 + (v51 >> 31);
    v54 = v51 / -2;
    v55 = v51 - v51 / 2;
    if (v43 < 3)
    {
      v56 = 1;
    }

    else
    {
      v56 = v50;
    }

    v57 = -v52;
    v58 = (v53 >> 1);
    v59 = v54;
    v60 = a2;
    if (!v52)
    {
      v56 = 1;
    }

    v104 = v56;
    v105 = v46;
    v61 = v55;
    v62 = v42;
    v106 = result[13];
    v107 = result;
    v101 = v44;
    while (v102 >= v46)
    {
LABEL_82:
      if (++v62 == v101)
      {
        return result;
      }
    }

    v63 = v102;
    v64 = fmax(-v62, v57);
    v65 = fmin((v100 - v62), v58);
    v108 = 8 * (v62 + v64);
    v109 = v64;
    v66 = 8 * v102;
    while (1)
    {
      v67 = *result;
      v68 = result[13];
      if (v64 < v65)
      {
        break;
      }

LABEL_50:
      if (*(v67 + 8 * v68 * v62 + 8 * v63) == v60)
      {
        v76 = 0;
        goto LABEL_53;
      }

LABEL_81:
      ++v63;
      v66 += 8;
      if (v63 == v46)
      {
        goto LABEL_82;
      }
    }

    v69 = fmin((v9 - v63), v61);
    v70 = fmax(-v63, v59);
    v71 = (v67 + v66 + v108 * v68 + 8 * v70);
    v72 = v64;
    while (1)
    {
      v73 = v69 - v70;
      v74 = v71;
      if (v70 < v69)
      {
        break;
      }

LABEL_49:
      ++v72;
      v71 += v68;
      if (v72 == v65)
      {
        goto LABEL_50;
      }
    }

    while (1)
    {
      v75 = *v74++;
      if (v75 == v60)
      {
        break;
      }

      if (!--v73)
      {
        goto LABEL_49;
      }
    }

    v76 = 1;
LABEL_53:
    v78 = a6[1];
    v77 = a6[2];
    if (v78 >= v77)
    {
      v80 = *a6;
      v81 = v78 - *a6;
      v82 = v81 >> 3;
      v83 = (v81 >> 3) + 1;
      if (v83 >> 61)
      {
        goto LABEL_84;
      }

      v84 = v77 - v80;
      if (v84 >> 2 > v83)
      {
        v83 = v84 >> 2;
      }

      v85 = v84 >= 0x7FFFFFFFFFFFFFF8;
      v86 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v85)
      {
        v86 = v83;
      }

      if (v86)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a6, v86);
      }

      v87 = (8 * v82);
      *v87 = v63;
      v87[1] = v62;
      v79 = 8 * v82 + 8;
      memcpy(0, v80, v81);
      v88 = *a6;
      *a6 = 0;
      a6[1] = v79;
      a6[2] = 0;
      if (v88)
      {
        operator delete(v88);
      }

      LODWORD(v9) = v106;
      result = v107;
      v46 = v105;
      v64 = v109;
    }

    else
    {
      *v78 = v63;
      *(v78 + 1) = v62;
      v79 = (v78 + 8);
    }

    a6[1] = v79;
    if (v76 && ((v104 & 1) != 0 || *(*result + 8 * result[13] * v62 + 8 * v63) != v60))
    {
      v90 = a7[1];
      v89 = a7[2];
      if (v90 >= v89)
      {
        v92 = *a7;
        v93 = v90 - *a7;
        v94 = v93 >> 3;
        v95 = (v93 >> 3) + 1;
        if (v95 >> 61)
        {
LABEL_84:
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v96 = v89 - v92;
        if (v96 >> 2 > v95)
        {
          v95 = v96 >> 2;
        }

        v85 = v96 >= 0x7FFFFFFFFFFFFFF8;
        v97 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v85)
        {
          v97 = v95;
        }

        if (v97)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a7, v97);
        }

        v98 = (8 * v94);
        *v98 = v63;
        v98[1] = v62;
        v91 = 8 * v94 + 8;
        memcpy(0, v92, v93);
        v99 = *a7;
        *a7 = 0;
        a7[1] = v91;
        a7[2] = 0;
        if (v99)
        {
          operator delete(v99);
        }

        LODWORD(v9) = v106;
        result = v107;
        v46 = v105;
        v64 = v109;
      }

      else
      {
        *v90 = v63;
        *(v90 + 1) = v62;
        v91 = (v90 + 8);
      }

      a7[1] = v91;
    }

    goto LABEL_81;
  }

  return result;
}