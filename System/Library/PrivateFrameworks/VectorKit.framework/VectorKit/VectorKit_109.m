uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(uint64_t result, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
      v9 = result;
LABEL_31:
      *v4 = *v9;
      return result;
    }

    if (a3 == 2)
    {
      v9 = (a2 - 8);
      v8 = *(a2 - 8);
      if ((v8[32] & 1) != 0 || (*(*result + 32) & 1) == 0 && *(*v8 + 88) - *(*v8 + 80) > *(**result + 88) - *(**result + 80))
      {
        v9 = result;
      }

      else
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      goto LABEL_31;
    }

    if (a3 > 8)
    {
      v20 = result + 8 * (a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = v6 + 8 * (a3 >> 1);
      while (v21 != a2)
      {
        v22 = *v21;
        if ((*(*v21 + 32) & 1) != 0 || (v23 = *v6, (*(*v6 + 32) & 1) == 0) && *(*v22 + 88) - *(*v22 + 80) > *(*v23 + 88) - *(*v23 + 80))
        {
          *v4 = v22;
          v21 += 8;
        }

        else
        {
          *v4 = v23;
          v6 += 8;
        }

        ++v4;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v25 = *v21;
            v21 += 8;
            *v4++ = v25;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v24 = *v6;
        v6 += 8;
        *v4++ = v24;
      }
    }

    else if (result != a2)
    {
      v10 = result + 8;
      *a4 = *result;
      if (result + 8 != a2)
      {
        v11 = 0;
        v12 = a4;
        v13 = a4;
        do
        {
          v15 = *v13++;
          v14 = v15;
          v16 = *v10;
          if ((*(*v10 + 32) & 1) != 0 || (v14[32] & 1) == 0 && *(*v16 + 88) - *(*v16 + 80) > *(*v14 + 88) - *(*v14 + 80))
          {
            v12[1] = v14;
            v17 = a4;
            if (v12 != a4)
            {
              v18 = v11;
              while (1)
              {
                v19 = *(a4 + v18 - 8);
                if ((*(*v10 + 32) & 1) == 0)
                {
                  if (v19[32])
                  {
                    v17 = (a4 + v18);
                    goto LABEL_24;
                  }

                  if (*(**v10 + 88) - *(**v10 + 80) <= *(*v19 + 88) - *(*v19 + 80))
                  {
                    break;
                  }
                }

                --v12;
                *(a4 + v18) = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  goto LABEL_24;
                }
              }

              v17 = v12;
            }

LABEL_24:
            *v17 = *v10;
          }

          else
          {
            *v13 = v16;
          }

          v10 += 8;
          v11 += 8;
          v12 = v13;
        }

        while (v10 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = *a2;
      v13 = a4;
      for (i = v11; ; i += 8)
      {
        v15 = *i;
        if (*(*a2 + 32))
        {
          break;
        }

        if ((v15[32] & 1) == 0 && *(*v12 + 88) - *(*v12 + 80) > *(*v15 + 88) - *(*v15 + 80))
        {
          a4 = v13;
          v11 = i;
          break;
        }

        if (!--v13)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = v12;
          *a2 = v15;
          return result;
        }

        v22 = a4 / 2;
        v18 = &v11[8 * (a4 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v23 = (a3 - a2) >> 3;
          v24 = *v18;
          v17 = a2;
          do
          {
            v25 = v23 >> 1;
            v26 = &v17[8 * (v23 >> 1)];
            if ((*(*v26 + 32) & 1) != 0 || (v24[32] & 1) == 0 && *(**v26 + 88) - *(**v26 + 80) > *(*v24 + 88) - *(*v24 + 80))
            {
              v17 = v26 + 8;
              v25 = v23 + ~v25;
            }

            v23 = v25;
          }

          while (v25);
        }

        v16 = (v17 - a2) >> 3;
      }

      else
      {
        v16 = v8 / 2;
        v17 = &a2[8 * (v8 / 2)];
        v18 = a2;
        if (a2 != v11)
        {
          v19 = (a2 - v11) >> 3;
          v18 = v11;
          do
          {
            v20 = v19 >> 1;
            if ((*(*v17 + 32) & 1) == 0)
            {
              v21 = &v18[8 * v20];
              if ((*(*v21 + 32) & 1) != 0 || *(**v17 + 88) - *(**v17 + 80) <= *(**v21 + 88) - *(**v21 + 80))
              {
                v18 = v21 + 8;
                v20 = v19 + ~v20;
              }
            }

            v19 = v20;
          }

          while (v20);
        }

        v22 = (v18 - v11) >> 3;
      }

      v27 = v17;
      v28 = a2 - v18;
      if (a2 != v18)
      {
        v27 = v18;
        if (a2 != v17)
        {
          if (v18 + 8 == a2)
          {
            v68 = *v18;
            v70 = a6;
            v29 = v17 - a2;
            v30 = a3;
            memmove(v18, a2, v17 - a2);
            a3 = v30;
            a6 = v70;
            v27 = &v18[v29];
            *v27 = v68;
          }

          else if (a2 + 8 == v17)
          {
            v31 = *(v17 - 1);
            v27 = v18 + 8;
            if (v17 - 8 != v18)
            {
              v69 = *(v17 - 1);
              v71 = a6;
              v32 = a3;
              memmove(v18 + 8, v18, v17 - 8 - v18);
              v31 = v69;
              a6 = v71;
              a3 = v32;
            }

            *v18 = v31;
          }

          else
          {
            v33 = v28 >> 3;
            v34 = v17 - a2;
            if (v28 >> 3 == (v17 - a2) >> 3)
            {
              v35 = v18 + 8;
              v36 = a2 + 8;
              do
              {
                v37 = *(v35 - 1);
                *(v35 - 1) = *(v36 - 1);
                *(v36 - 1) = v37;
                if (v35 == a2)
                {
                  break;
                }

                v35 += 8;
                v38 = v36 == v17;
                v36 += 8;
              }

              while (!v38);
              v27 = a2;
            }

            else
            {
              v39 = v34 >> 3;
              v40 = v28 >> 3;
              do
              {
                v41 = v40;
                v40 = v39;
                v39 = v41 % v39;
              }

              while (v39);
              v42 = &v18[8 * v40];
              do
              {
                v44 = *(v42 - 1);
                v42 -= 8;
                v43 = v44;
                v45 = &v42[v28];
                v46 = v42;
                do
                {
                  v47 = v45;
                  *v46 = *v45;
                  v48 = &v45[8 * v33];
                  v49 = __OFSUB__(v33, (v17 - v45) >> 3);
                  v51 = v33 - ((v17 - v45) >> 3);
                  v50 = (v51 < 0) ^ v49;
                  v45 = &v18[8 * v51];
                  if (v50)
                  {
                    v45 = v48;
                  }

                  v46 = v47;
                }

                while (v45 != v42);
                *v47 = v43;
              }

              while (v42 != v18);
              v27 = &v18[v34];
            }
          }
        }
      }

      a4 -= v22;
      v8 -= v16;
      if (v22 + v16 >= a4 + v8)
      {
        v53 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v27, v17, a3, a4, v8);
        a2 = v18;
        v8 = v16;
        a4 = v22;
        a3 = v27;
      }

      else
      {
        v52 = v11;
        v53 = a6;
        v54 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v52, v18, v27, v22, v16);
        a3 = v54;
        v11 = v27;
        a2 = v17;
      }

      a6 = v53;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != v11)
      {
        v63 = a6;
        v64 = v11;
        do
        {
          v65 = *v64++;
          *v63 = v65;
          v63 += 8;
        }

        while (v64 != a2);
        while (a2 != a3)
        {
          v66 = *a2;
          if ((*(*a2 + 32) & 1) != 0 || (v67 = *a6, (*(*a6 + 32) & 1) == 0) && *(*v66 + 88) - *(*v66 + 80) > *(*v67 + 88) - *(*v67 + 80))
          {
            *v11 = v66;
            a2 += 8;
          }

          else
          {
            *v11 = v67;
            a6 += 8;
          }

          v11 += 8;
          if (a6 == v63)
          {
            return result;
          }
        }

        return memmove(v11, a6, v63 - a6);
      }
    }

    else if (a2 != a3)
    {
      v55 = a6;
      v56 = a2;
      do
      {
        v57 = *v56;
        v56 += 8;
        *v55 = v57;
        v55 += 8;
      }

      while (v56 != a3);
      while (a2 != v11)
      {
        v58 = a2 - 8;
        v59 = *(a2 - 1);
        v60 = *(v55 - 1);
        if ((v60[32] & 1) == 0 && ((v59[32] & 1) != 0 || *(*v60 + 88) - *(*v60 + 80) <= *(*v59 + 88) - *(*v59 + 80)))
        {
          v59 = *(v55 - 1);
          v58 = a2;
          v55 -= 8;
        }

        *(a3 - 1) = v59;
        a3 -= 8;
        a2 = v58;
        if (v55 == a6)
        {
          return result;
        }
      }

      if (v55 != a6)
      {
        v61 = -8;
        do
        {
          v62 = *(v55 - 1);
          v55 -= 8;
          *&a3[v61] = v62;
          v61 -= 8;
        }

        while (v55 != a6);
      }
    }
  }

  return result;
}

void std::vector<md::TransitLink *>::insert[abi:nn200100]<std::__tree_const_iterator<md::TransitLink *,std::__tree_node<md::TransitLink *,void *> *,long>,0>(void *a1, char *__src, void *a3, void *a4)
{
  if (a3 != a4)
  {
    v4 = a3;
    v5 = __src;
    v7 = 0;
    v8 = a3;
    do
    {
      v9 = v7;
      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      ++v7;
      v8 = v11;
    }

    while (v11 != a4);
    v13 = a1[1];
    v14 = a1[2];
    if (v9 >= (v14 - v13) >> 3)
    {
      v20 = *a1;
      v21 = v7 + (&v13[-*a1] >> 3);
      if (v21 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = v14 - v20;
      if (v22 >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v23);
      }

      v31 = 8 * ((__src - v20) >> 3);
      v32 = (v31 + 8 * v7);
      v33 = v31;
      do
      {
        *v33 = v4[4];
        v33 += 8;
        v34 = v4[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v4[2];
            v12 = *v35 == v4;
            v4 = v35;
          }

          while (!v12);
        }

        v4 = v35;
      }

      while (v33 != v32);
      memcpy(v32, __src, a1[1] - __src);
      v36 = *a1;
      v37 = &v32[a1[1] - v5];
      a1[1] = v5;
      v38 = v5 - v36;
      v39 = (v31 - (v5 - v36));
      memcpy(v39, v36, v38);
      v40 = *a1;
      *a1 = v39;
      a1[1] = v37;
      a1[2] = 0;
      if (v40)
      {

        operator delete(v40);
      }
    }

    else
    {
      v15 = (v13 - __src) >> 3;
      if (v15 <= v9)
      {
        if (v15 < 0)
        {
          v41 = (v13 - __src) >> 3;
          v42 = a3;
          do
          {
            v43 = *v42;
            if (*v42)
            {
              do
              {
                v24 = v43;
                v43 = v43[1];
              }

              while (v43);
            }

            else
            {
              do
              {
                v24 = v42[2];
                v12 = *v24 == v42;
                v42 = v24;
              }

              while (v12);
            }

            v42 = v24;
          }

          while (!__CFADD__(v41++, 1));
        }

        else
        {
          v24 = a3;
          if (v13 != __src)
          {
            v25 = (v13 - __src) >> 3;
            v26 = a3;
            do
            {
              v27 = v26[1];
              if (v27)
              {
                do
                {
                  v24 = v27;
                  v27 = *v27;
                }

                while (v27);
              }

              else
              {
                do
                {
                  v24 = v26[2];
                  v12 = *v24 == v26;
                  v26 = v24;
                }

                while (!v12);
              }

              v26 = v24;
              v28 = v25-- <= 1;
            }

            while (!v28);
          }
        }

        if (v24 == a4)
        {
          v45 = a1[1];
        }

        else
        {
          v46 = v24;
          v45 = a1[1];
          do
          {
            *v45 = v46[4];
            v47 = v46[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v46[2];
                v12 = *v48 == v46;
                v46 = v48;
              }

              while (!v12);
            }

            v45 += 8;
            v46 = v48;
          }

          while (v48 != a4);
        }

        a1[1] = v45;
        if (v15 >= 1)
        {
          v49 = &__src[8 * v7];
          v50 = &v45[-8 * v7];
          v51 = v45;
          while (v50 < v13)
          {
            v52 = *v50;
            v50 += 8;
            *v51 = v52;
            v51 += 8;
          }

          a1[1] = v51;
          if (v45 != v49)
          {
            memmove(&__src[8 * v7], __src, v45 - v49);
          }

          if (v24 != v4)
          {
            do
            {
              *v5 = v4[4];
              v53 = v4[1];
              if (v53)
              {
                do
                {
                  v54 = v53;
                  v53 = *v53;
                }

                while (v53);
              }

              else
              {
                do
                {
                  v54 = v4[2];
                  v12 = *v54 == v4;
                  v4 = v54;
                }

                while (!v12);
              }

              v5 += 8;
              v4 = v54;
            }

            while (v54 != v24);
          }
        }
      }

      else
      {
        v16 = &__src[8 * v7];
        v17 = &v13[-8 * v7];
        v18 = a1[1];
        while (v17 < v13)
        {
          v19 = *v17;
          v17 += 8;
          *v18++ = v19;
        }

        a1[1] = v18;
        if (v13 != v16)
        {
          memmove(&__src[8 * v7], __src, v13 - v16);
        }

        *v5 = v4[4];
        if (v9)
        {
          do
          {
            v29 = v4[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v4[2];
                v12 = *v30 == v4;
                v4 = v30;
              }

              while (!v12);
            }

            *(v5 + 1) = v30[4];
            v5 += 8;
            v4 = v30;
            v28 = v7-- <= 2;
          }

          while (!v28);
        }
      }
    }
  }
}

char *std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(char *result, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (*(v7 + 112) - *(v7 + 104) > *(*result + 112) - *(*result + 104))
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[8 * (a3 >> 1)];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(result, v20, v21, a4);
        v22 = &v18[8 * v19];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v22);
        v23 = &v18[8 * a3];
        v24 = v22;
        while (v24 != v23)
        {
          v25 = *v24;
          v26 = *(*v24 + 112) - *(*v24 + 104);
          v27 = *(*v18 + 112) - *(*v18 + 104);
          v28 = v26 > v27;
          v29 = v26 <= v27;
          v30 = v28;
          if (!v28)
          {
            v25 = *v18;
          }

          v18 += 8 * v29;
          v24 += v30;
          *v6 = v25;
          v6 += 8;
          if (v18 == v22)
          {
            while (v24 != v23)
            {
              v32 = *v24++;
              *v6 = v32;
              v6 += 8;
            }

            return result;
          }
        }

        while (v18 != v22)
        {
          v31 = *v18;
          v18 += 8;
          *v6 = v31;
          v6 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(result, v20, v21, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v18, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5);
      }
    }

    else if (result != a2)
    {
      v10 = result + 8;
      if (result + 8 != a2)
      {
        v11 = 0;
        v12 = result;
        do
        {
          v13 = *v12;
          v12 = v10;
          v14 = *v10;
          if (*(v14 + 112) - *(v14 + 104) > *(v13 + 112) - *(v13 + 104))
          {
            v15 = v11;
            while (1)
            {
              *&result[v15 + 8] = v13;
              if (!v15)
              {
                break;
              }

              v13 = *&result[v15 - 8];
              v15 -= 8;
              if (*(v14 + 112) - *(v14 + 104) <= *(v13 + 112) - *(v13 + 104))
              {
                v16 = &result[v15 + 8];
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = v14;
          }

          v10 = v12 + 8;
          v11 += 8;
        }

        while (v12 + 8 != a2);
      }
    }
  }

  return result;
}

void **std::vector<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo,std::allocator<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 13);
        if (v5 != *(v3 - 11))
        {
          free(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<md::TransitSystemAndColor,unsigned int>,std::__map_value_compare<md::TransitSystemAndColor,std::__value_type<md::TransitSystemAndColor,unsigned int>,std::less<md::TransitSystemAndColor>,true>,std::allocator<std::__value_type<md::TransitSystemAndColor,unsigned int>>>::__find_equal<md::TransitSystemAndColor>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        if (v6 == v8)
        {
          break;
        }

        if (v6 >= v8)
        {
          if (v8 >= v6)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }

LABEL_8:
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (bswap32(*(a3 + 2)) < bswap32(*(v7 + 10)))
      {
        goto LABEL_8;
      }

      if (bswap32(*(v7 + 10)) >= bswap32(*(a3 + 2)))
      {
        goto LABEL_14;
      }

LABEL_11:
      result = v7 + 1;
      v4 = v7[1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = result;
LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_8:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 8);
      v9 = *(v8 + 112) - *(v8 + 104);
      v10 = *(*result + 112) - *(*result + 104);
      if (v9 <= v10)
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      if (v9 <= v10)
      {
        v6 = a2 - 8;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v20 = result + 8 * (a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = v6 + 8 * (a3 >> 1);
      while (v21 != a2)
      {
        v22 = *v21;
        v23 = *(*v21 + 112) - *(*v21 + 104);
        v24 = *(*v6 + 112) - *(*v6 + 104);
        v25 = v23 > v24;
        v26 = v23 <= v24;
        v27 = v25;
        if (!v25)
        {
          v22 = *v6;
        }

        v21 += 8 * v27;
        v6 += 8 * v26;
        *v4++ = v22;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v29 = *v21;
            v21 += 8;
            *v4++ = v29;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v28 = *v6;
        v6 += 8;
        *v4++ = v28;
      }
    }

    else if (result != a2)
    {
      v11 = result + 8;
      *a4 = *result;
      if (result + 8 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (*(*v11 + 112) - *(*v11 + 104) <= *(v16 + 112) - *(v16 + 104))
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = v15;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 8);
                if (*(*v11 + 112) - *(*v11 + 104) <= *(v19 + 112) - *(v19 + 104))
                {
                  break;
                }

                *v17 = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            *v17 = *v11;
          }

          v11 += 8;
          v12 += 8;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (1)
      {
        v12 = *v11;
        if (*(*a2 + 112) - *(*a2 + 104) > *(*v11 + 112) - *(*v11 + 104))
        {
          break;
        }

        v11 += 8;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = *a2;
          *a2 = v12;
          return result;
        }

        v21 = a4 / 2;
        v15 = &v11[8 * (a4 / 2)];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = (a3 - a2) >> 3;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 8;
            v22 += ~(v22 >> 1);
            if (*(v26 + 112) - *(v26 + 104) > *(*v15 + 112) - *(*v15 + 104))
            {
              v14 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = (v14 - a2) >> 3;
      }

      else
      {
        v13 = v8 / 2;
        v14 = &a2[8 * (v8 / 2)];
        v15 = a2;
        if (a2 != v11)
        {
          v16 = (a2 - v11) >> 3;
          v15 = v11;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[8 * (v16 >> 1)];
            v20 = *v18;
            v19 = v18 + 8;
            v16 += ~(v16 >> 1);
            if (*(*v14 + 112) - *(*v14 + 104) > *(v20 + 112) - *(v20 + 104))
            {
              v16 = v17;
            }

            else
            {
              v15 = v19;
            }
          }

          while (v16);
        }

        v21 = (v15 - v11) >> 3;
      }

      v27 = v14;
      v28 = a2 - v15;
      if (a2 != v15)
      {
        v27 = v15;
        v29 = v14 - a2;
        if (v14 != a2)
        {
          if (v15 + 8 == a2)
          {
            v73 = *v15;
            v75 = v21;
            v77 = a6;
            v30 = a3;
            v31 = v13;
            memmove(v15, a2, v14 - a2);
            v13 = v31;
            v21 = v75;
            a6 = v77;
            a3 = v30;
            v27 = &v15[v29];
            *&v15[v29] = v73;
          }

          else if (a2 + 8 == v14)
          {
            v32 = *(v14 - 1);
            v27 = v15 + 8;
            if (v14 - 8 != v15)
            {
              v76 = v21;
              v78 = a6;
              v33 = a3;
              v34 = v13;
              v74 = *(v14 - 1);
              memmove(v15 + 8, v15, v14 - 8 - v15);
              v32 = v74;
              v21 = v76;
              v13 = v34;
              a3 = v33;
              a6 = v78;
            }

            *v15 = v32;
          }

          else
          {
            v35 = v28 >> 3;
            if (v28 >> 3 == v29 >> 3)
            {
              v36 = v15 + 8;
              v37 = a2 + 8;
              do
              {
                v38 = *(v36 - 1);
                *(v36 - 1) = *(v37 - 1);
                *(v37 - 1) = v38;
                if (v36 == a2)
                {
                  break;
                }

                v36 += 8;
                v39 = v37 == v14;
                v37 += 8;
              }

              while (!v39);
              v27 = a2;
            }

            else
            {
              v40 = v29 >> 3;
              v41 = v28 >> 3;
              do
              {
                v42 = v41;
                v41 = v40;
                v40 = v42 % v40;
              }

              while (v40);
              v43 = &v15[8 * v41];
              do
              {
                v45 = *(v43 - 1);
                v43 -= 8;
                v44 = v45;
                v46 = &v43[v28];
                v47 = v43;
                do
                {
                  v48 = v46;
                  *v47 = *v46;
                  v49 = &v46[8 * v35];
                  v50 = __OFSUB__(v35, (v14 - v46) >> 3);
                  v51 = v35 - ((v14 - v46) >> 3);
                  v70 = (v51 < 0) ^ v50;
                  v46 = &v15[8 * v51];
                  if (v70)
                  {
                    v46 = v49;
                  }

                  v47 = v48;
                }

                while (v46 != v43);
                *v48 = v44;
              }

              while (v43 != v15);
              v27 = &v15[v29];
            }
          }
        }
      }

      a4 -= v21;
      v8 -= v13;
      if (v21 + v13 >= a4 + v8)
      {
        v55 = v21;
        v56 = a4;
        v57 = v13;
        v53 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v27, v14, a3, v56, v8);
        v14 = v15;
        v8 = v57;
        a4 = v55;
        a3 = v27;
      }

      else
      {
        v52 = v11;
        v53 = a6;
        v54 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v52, v15, v27, v21, v13);
        a3 = v54;
        v11 = v27;
      }

      a2 = v14;
      a6 = v53;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != v11)
      {
        v64 = a6;
        v65 = v11;
        do
        {
          v66 = *v65;
          v65 += 8;
          *v64 = v66;
          v64 += 8;
        }

        while (v65 != a2);
        while (a2 != a3)
        {
          v67 = *a2;
          v68 = *(*a2 + 112) - *(*a2 + 104);
          v69 = *(*a6 + 112) - *(*a6 + 104);
          v70 = v68 > v69;
          v71 = v68 <= v69;
          if (v70)
          {
            v72 = 1;
          }

          else
          {
            v72 = 0;
          }

          if (!v70)
          {
            v67 = *a6;
          }

          a2 += 8 * v72;
          a6 += 8 * v71;
          *v11 = v67;
          v11 += 8;
          if (a6 == v64)
          {
            return result;
          }
        }

        return memmove(v11, a6, v64 - a6);
      }
    }

    else if (a2 != a3)
    {
      v58 = a6;
      v59 = a2;
      do
      {
        v60 = *v59;
        v59 += 8;
        *v58 = v60;
        v58 += 8;
      }

      while (v59 != a3);
      while (a2 != v11)
      {
        v61 = *(v58 - 1);
        if (*(v61 + 112) - *(v61 + 104) <= *(*(a2 - 1) + 112) - *(*(a2 - 1) + 104))
        {
          v58 -= 8;
        }

        else
        {
          v61 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v61;
        a3 -= 8;
        if (v58 == a6)
        {
          return result;
        }
      }

      if (v58 != a6)
      {
        v62 = -8;
        do
        {
          v63 = *(v58 - 1);
          v58 -= 8;
          *&a3[v62] = v63;
          v62 -= 8;
        }

        while (v58 != a6);
      }
    }
  }

  return result;
}

float md::TransitJunction::findDominantLinkDirection(md::TransitJunction *this)
{
  v1 = *(this + 3);
  _D1 = 0;
  if (v1 != (this + 32))
  {
    do
    {
      v3 = *(v1 + 1);
      v4 = v1;
      if (v3)
      {
        do
        {
          v5 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v5 = *(v4 + 2);
          _ZF = *v5 == v4;
          v4 = v5;
        }

        while (!_ZF);
      }

      _D1 = vsub_f32(_D1, *(*(*(v1 + 4) + 64) - 56));
      v1 = v5;
    }

    while (v5 != (this + 32));
  }

  v7 = *(this + 6);
  if (v7 != (this + 56))
  {
    do
    {
      v8 = *(v7 + 1);
      v9 = v7;
      if (v8)
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = *(v9 + 2);
          _ZF = *v10 == v9;
          v9 = v10;
        }

        while (!_ZF);
      }

      _D1 = vadd_f32(_D1, **(*(v7 + 4) + 56));
      v7 = v10;
    }

    while (v10 != (this + 56));
  }

  _S2 = _D1.i32[1];
  __asm { FMLA            S0, S2, V1.S[1] }

  return (1.0 / sqrtf(_S0)) * _D1.f32[0];
}

float md::TransitJunction::calculateOffsetForLineSegment(md::TransitJunction *this, unint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 17);
  v6 = 0.0;
  if (v5)
  {
    v7 = *(*(*a2 + 16) + 40);
    v8 = v4 + 34;
    do
    {
      v9 = *(v5 + 4);
      v10 = v9 >= v7;
      v11 = v9 < v7;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[2 * v11];
    }

    while (v5);
    if (v8 != v4 + 34 && *(v8 + 4) <= v7)
    {
      v6 = v8[10];
    }
  }

  v12 = *(this + 9);
  if (v12)
  {
    v13 = v12 == v4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    LODWORD(v14) = *(a2 + 40);
    if (!v12)
    {
      goto LABEL_65;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v12 == v4 || *(v12 + 112) == *(v12 + 104))
  {
    goto LABEL_65;
  }

  v16 = *(this + 1);
  if (md::TransitJunction::tangentsForLinks(v16, *(a2 + 8), v12, &v58, &v57, &v56))
  {
    v17 = vaddv_f32(vmul_f32(v57, v58));
    if (fabsf(v17) < 0.087156)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v17 = 0.0;
  }

  v18 = *(*v4 + 48);
  if (v17 < 0.0)
  {
    v19 = *(this + 80) != (v18 == v16);
  }

  else
  {
    v19 = *(this + 80) == (v18 == v16);
  }

  v20 = +[VKDebugSettings sharedSettings];
  v21 = [v20 disableIntraLinkTransitLineCrossings];

  if (v21)
  {
    v22 = *(v4 + 13);
    v23 = *(v4 + 14);
    v24 = v23 - v22;
    if (v23 != v22)
    {
      if (!((v24 >> 3) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v24 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v19)
    {
      std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *,true>(0, 0, 0, 1);
    }

    else
    {
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    }

    v14 = *(4 * *(a2 + 40));
    v37 = *(this + 9);
    v40 = *(v37 + 136);
    v38 = v37 + 136;
    v39 = v40;
    if (v40)
    {
      v41 = *(*(**(*(v38 - 32) + 8 * v14) + 16) + 40);
      v42 = v38;
      do
      {
        v43 = *(v39 + 32);
        v10 = v43 >= v41;
        v44 = v43 < v41;
        if (v10)
        {
          v42 = v39;
        }

        v39 = *(v39 + 8 * v44);
      }

      while (v39);
      v45 = 0.0;
      if (v42 != v38 && *(v42 + 32) <= v41)
      {
        v45 = *(v42 + 40);
      }

      if (v19)
      {
        v6 = -v45;
      }

      else
      {
        v6 = v45;
      }
    }

    else
    {
      if (v19)
      {
        v6 = -0.0;
      }

      else
      {
        v6 = 0.0;
      }

      operator delete(0);
    }
  }

  else
  {
    v25 = 44;
    if (v18 == v16)
    {
      v25 = 48;
    }

    v26 = *(a2 + v25);
    LODWORD(v14) = *(a2 + v25);
    v27 = *(this + 9);
    v28 = v27[13];
    if (v26 < (v27[14] - v28) >> 3)
    {
      v31 = v27[17];
      v29 = (v27 + 17);
      v30 = v31;
      v32 = 0.0;
      if (v31)
      {
        v33 = *(*(**(v28 + 8 * v26) + 16) + 40);
        v34 = v29;
        do
        {
          v35 = *(v30 + 4);
          v10 = v35 >= v33;
          v36 = v35 < v33;
          if (v10)
          {
            v34 = v30;
          }

          v30 = *&v30[2 * v36];
        }

        while (v30);
        if (v34 != v29 && *(v34 + 4) <= v33)
        {
          v32 = v34[10];
        }
      }

      if (v19)
      {
        v6 = -v32;
      }

      else
      {
        v6 = v32;
      }
    }
  }

LABEL_65:
  v46 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v47 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v46 >> 47) ^ v46);
  v48 = 0x9DDFEA08EB382D69 * (v47 ^ (v47 >> 47));
  v49 = *(this + 176);
  if (!*&v49)
  {
    goto LABEL_82;
  }

  v50 = vcnt_s8(v49);
  v50.i16[0] = vaddlv_u8(v50);
  if (v50.u32[0] > 1uLL)
  {
    v51 = 0x9DDFEA08EB382D69 * (v47 ^ (v47 >> 47));
    if (v48 >= *&v49)
    {
      v51 = v48 % *&v49;
    }
  }

  else
  {
    v51 = v48 & (*&v49 - 1);
  }

  v52 = *(*(this + 21) + 8 * v51);
  if (!v52 || (v53 = *v52) == 0)
  {
LABEL_82:
    operator new();
  }

  while (1)
  {
    v54 = v53[1];
    if (v54 == v48)
    {
      break;
    }

    if (v50.u32[0] > 1uLL)
    {
      if (v54 >= *&v49)
      {
        v54 %= *&v49;
      }
    }

    else
    {
      v54 &= *&v49 - 1;
    }

    if (v54 != v51)
    {
      goto LABEL_82;
    }

LABEL_81:
    v53 = *v53;
    if (!v53)
    {
      goto LABEL_82;
    }
  }

  if (v53[2] != a2)
  {
    goto LABEL_81;
  }

  *(v53 + 6) = v14;
  *(v53 + 7) = v6;
  return v6;
}

void sub_1B2FB2924(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *,true>(uint64_t result, unsigned int *a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = xmmword_1B33B0550;
  v8 = vdupq_n_s64(1uLL);
  v9 = xmmword_1B33B0560;
  v10 = vdupq_n_s64(4uLL);
  v205 = v8;
  v204 = v10;
  while (2)
  {
    v11 = v6;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v6 = v11;
          v12 = a2 - v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v146 = v11[1];
                v147 = *(a2 - 1);
                if (v146 <= v147)
                {
                  v148 = *(a2 - 1);
                }

                else
                {
                  v148 = v11[1];
                }

                if (v146 >= v147)
                {
                  v146 = *(a2 - 1);
                }

                *(a2 - 1) = v146;
                v11[1] = v148;
                v149 = *(a2 - 1);
                if (v149 <= *v11)
                {
                  v150 = *v11;
                }

                else
                {
                  v150 = *(a2 - 1);
                }

                if (v149 >= *v11)
                {
                  v149 = *v11;
                }

                *(a2 - 1) = v149;
                v152 = *v11;
                v151 = v11[1];
                if (v150 <= v151)
                {
                  v152 = v11[1];
                }

                if (v150 < v151)
                {
                  v151 = v150;
                }

                *v11 = v152;
                v11[1] = v151;
                return result;
              case 4:
                v154 = v11[1];
                v153 = v11[2];
                if (*v11 <= v153)
                {
                  v155 = v11[2];
                }

                else
                {
                  v155 = *v11;
                }

                if (*v11 < v153)
                {
                  v153 = *v11;
                }

                v11[2] = v153;
                *v11 = v155;
                v156 = *(a2 - 1);
                if (v154 <= v156)
                {
                  v157 = *(a2 - 1);
                }

                else
                {
                  v157 = v154;
                }

                if (v154 < v156)
                {
                  v156 = v154;
                }

                *(a2 - 1) = v156;
                v158 = *v11;
                if (*v11 <= v157)
                {
                  v159 = v157;
                }

                else
                {
                  v159 = *v11;
                }

                if (v158 >= v157)
                {
                  v158 = v157;
                }

                *v11 = v159;
                v11[1] = v158;
                v160 = v11[2];
                v161 = *(a2 - 1);
                if (v160 <= v161)
                {
                  v162 = *(a2 - 1);
                }

                else
                {
                  v162 = v11[2];
                }

                if (v160 >= v161)
                {
                  v160 = *(a2 - 1);
                }

                *(a2 - 1) = v160;
                v163 = v11[1];
                if (v163 <= v162)
                {
                  v164 = v162;
                }

                else
                {
                  v164 = v11[1];
                }

                if (v163 >= v162)
                {
                  v163 = v162;
                }

                v11[1] = v164;
                v11[2] = v163;
                return result;
              case 5:
                v124 = *v11;
                v125 = v11[1];
                if (*v11 <= v125)
                {
                  v126 = v11[1];
                }

                else
                {
                  v126 = *v11;
                }

                if (v124 >= v125)
                {
                  v124 = v11[1];
                }

                *v11 = v126;
                v11[1] = v124;
                v127 = v11[3];
                v128 = *(a2 - 1);
                if (v127 <= v128)
                {
                  v129 = *(a2 - 1);
                }

                else
                {
                  v129 = v11[3];
                }

                if (v127 >= v128)
                {
                  v127 = *(a2 - 1);
                }

                *(a2 - 1) = v127;
                v11[3] = v129;
                v130 = *(a2 - 1);
                v131 = v11[2];
                if (v130 <= v131)
                {
                  v132 = v11[2];
                }

                else
                {
                  v132 = *(a2 - 1);
                }

                if (v130 >= v131)
                {
                  v130 = v11[2];
                }

                *(a2 - 1) = v130;
                v134 = v11[2];
                v133 = v11[3];
                v135 = v11[1];
                if (v132 <= v133)
                {
                  v134 = v11[3];
                }

                if (v132 < v133)
                {
                  v133 = v132;
                }

                v11[2] = v134;
                v11[3] = v133;
                v136 = *(a2 - 1);
                if (v135 <= v136)
                {
                  v137 = *(a2 - 1);
                }

                else
                {
                  v137 = v135;
                }

                if (v135 < v136)
                {
                  v136 = v135;
                }

                *(a2 - 1) = v136;
                v138 = *v11;
                v140 = v11[2];
                v139 = v11[3];
                if (v139 <= *v11)
                {
                  v141 = *v11;
                }

                else
                {
                  v141 = v11[3];
                }

                if (v139 >= v138)
                {
                  v139 = *v11;
                }

                if (v141 <= v140)
                {
                  v138 = v11[2];
                }

                if (v141 < v140)
                {
                  v140 = v141;
                }

                if (v139 <= v137)
                {
                  v142 = v137;
                }

                else
                {
                  v142 = v139;
                }

                if (v139 >= v137)
                {
                  v139 = v137;
                }

                if (v142 <= v140)
                {
                  v137 = v140;
                }

                *v11 = v138;
                v11[1] = v137;
                if (v142 >= v140)
                {
                  v143 = v140;
                }

                else
                {
                  v143 = v142;
                }

                v11[2] = v143;
                v11[3] = v139;
                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              v144 = *(a2 - 1);
              v145 = *v11;
              if (v144 > *v11)
              {
                *v11 = v144;
                *(a2 - 1) = v145;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v165 = v11 + 1;
            v167 = v11 == a2 || v165 == a2;
            if (a4)
            {
              if (!v167)
              {
                v168 = 4;
                v169 = v11;
                do
                {
                  v171 = *v169;
                  v170 = v169[1];
                  v169 = v165;
                  if (v170 > v171)
                  {
                    v172 = v168;
                    while (1)
                    {
                      *(v11 + v172) = v171;
                      v173 = v172 - 4;
                      if (v172 == 4)
                      {
                        break;
                      }

                      v171 = *(v11 + v172 - 8);
                      v172 -= 4;
                      if (v170 <= v171)
                      {
                        v174 = (v11 + v173);
                        goto LABEL_286;
                      }
                    }

                    v174 = v11;
LABEL_286:
                    *v174 = v170;
                  }

                  v165 = v169 + 1;
                  v168 += 4;
                }

                while (v169 + 1 != a2);
              }
            }

            else if (!v167)
            {
              do
              {
                v203 = *v6;
                v202 = v6[1];
                v6 = v165;
                if (v202 > v203)
                {
                  do
                  {
                    *v165 = v203;
                    v203 = *(v165 - 2);
                    --v165;
                  }

                  while (v202 > v203);
                  *v165 = v202;
                }

                v165 = v6 + 1;
              }

              while (v6 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v175 = (v12 - 2) >> 1;
              v176 = v175;
              do
              {
                v177 = v176;
                if (v175 >= v176)
                {
                  v178 = (2 * v176) | 1;
                  v179 = &v11[v178];
                  if (2 * v177 + 2 >= v12)
                  {
                    v180 = *v179;
                  }

                  else
                  {
                    v180 = v179[1];
                    v181 = *v179 > v180;
                    if (*v179 < v180)
                    {
                      v180 = *v179;
                    }

                    if (v181)
                    {
                      ++v179;
                      v178 = 2 * v177 + 2;
                    }
                  }

                  v182 = &v11[v177];
                  v183 = *v182;
                  if (v180 <= *v182)
                  {
                    do
                    {
                      *v182 = v180;
                      v182 = v179;
                      if (v175 < v178)
                      {
                        break;
                      }

                      v184 = (2 * v178) | 1;
                      v179 = &v11[v184];
                      v178 = 2 * v178 + 2;
                      if (v178 >= v12)
                      {
                        v180 = *v179;
                        v178 = v184;
                      }

                      else
                      {
                        v180 = *v179;
                        result = v179[1];
                        if (*v179 >= result)
                        {
                          v180 = v179[1];
                        }

                        if (*v179 <= result)
                        {
                          v178 = v184;
                        }

                        else
                        {
                          ++v179;
                        }
                      }
                    }

                    while (v180 <= v183);
                    *v182 = v183;
                  }
                }

                v176 = v177 - 1;
              }

              while (v177);
              do
              {
                v185 = 0;
                v186 = *v11;
                v187 = v11;
                do
                {
                  v188 = &v187[v185];
                  v189 = v188 + 1;
                  v190 = (2 * v185) | 1;
                  v185 = 2 * v185 + 2;
                  if (v185 >= v12)
                  {
                    v191 = *v189;
                    v185 = v190;
                  }

                  else
                  {
                    v193 = v188[2];
                    v192 = v188 + 2;
                    v191 = v193;
                    v194 = *(v192 - 1);
                    v195 = v194 > v193;
                    if (v194 < v193)
                    {
                      v191 = *(v192 - 1);
                    }

                    if (v195)
                    {
                      v189 = v192;
                    }

                    else
                    {
                      v185 = v190;
                    }
                  }

                  *v187 = v191;
                  v187 = v189;
                }

                while (v185 <= ((v12 - 2) >> 1));
                if (v189 == --a2)
                {
                  *v189 = v186;
                }

                else
                {
                  *v189 = *a2;
                  *a2 = v186;
                  v196 = (v189 - v11 + 4) >> 2;
                  v21 = v196 < 2;
                  v197 = v196 - 2;
                  if (!v21)
                  {
                    v198 = v197 >> 1;
                    v199 = &v11[v198];
                    v200 = *v199;
                    v201 = *v189;
                    if (*v199 > *v189)
                    {
                      do
                      {
                        *v189 = v200;
                        v189 = v199;
                        if (!v198)
                        {
                          break;
                        }

                        v198 = (v198 - 1) >> 1;
                        v199 = &v11[v198];
                        v200 = *v199;
                      }

                      while (*v199 > v201);
                      *v189 = v201;
                    }
                  }
                }

                v21 = v12-- <= 2;
              }

              while (!v21);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = *(a2 - 1);
          if (v12 < 0x81)
          {
            v49 = *v11;
            if (*v11 <= v14)
            {
              v50 = *(a2 - 1);
            }

            else
            {
              v50 = *v11;
            }

            if (v49 >= v14)
            {
              v49 = *(a2 - 1);
            }

            *(a2 - 1) = v49;
            *v11 = v50;
            v51 = *(a2 - 1);
            v52 = v11[v13];
            if (v51 <= v52)
            {
              v53 = v11[v13];
            }

            else
            {
              v53 = *(a2 - 1);
            }

            if (v51 >= v52)
            {
              v51 = v11[v13];
            }

            *(a2 - 1) = v51;
            v54 = *v11;
            v55 = v53 > *v11;
            if (v53 > *v11)
            {
              v54 = v11[v13];
            }

            v11[v13] = v54;
            v48 = *v11;
            if (!v55)
            {
              v48 = v53;
            }

            *v11 = v48;
          }

          else
          {
            v15 = &v11[v13];
            v16 = *v15;
            if (*v15 <= v14)
            {
              v17 = *(a2 - 1);
            }

            else
            {
              v17 = *v15;
            }

            if (v16 >= v14)
            {
              v16 = *(a2 - 1);
            }

            *(a2 - 1) = v16;
            *v15 = v17;
            v18 = *(a2 - 1);
            if (v18 <= *v11)
            {
              v19 = *v11;
            }

            else
            {
              v19 = *(a2 - 1);
            }

            if (v18 >= *v11)
            {
              v18 = *v11;
            }

            *(a2 - 1) = v18;
            v20 = *v15;
            v21 = v19 > *v15;
            if (v19 > *v15)
            {
              v20 = *v11;
            }

            *v11 = v20;
            v22 = *v15;
            if (!v21)
            {
              v22 = v19;
            }

            *v15 = v22;
            v23 = *(v15 - 1);
            v24 = *(a2 - 2);
            if (v23 <= v24)
            {
              v25 = *(a2 - 2);
            }

            else
            {
              v25 = *(v15 - 1);
            }

            if (v23 >= v24)
            {
              v23 = *(a2 - 2);
            }

            *(a2 - 2) = v23;
            *(v15 - 1) = v25;
            v26 = *(a2 - 2);
            v27 = v11[1];
            if (v26 <= v27)
            {
              v28 = v11[1];
            }

            else
            {
              v28 = *(a2 - 2);
            }

            if (v26 >= v27)
            {
              v26 = v11[1];
            }

            *(a2 - 2) = v26;
            v29 = *(v15 - 1);
            v30 = v28 > v29;
            if (v28 > v29)
            {
              v29 = v11[1];
            }

            v11[1] = v29;
            v31 = *(v15 - 1);
            if (!v30)
            {
              v31 = v28;
            }

            *(v15 - 1) = v31;
            v32 = v15[1];
            v33 = *(a2 - 3);
            if (v32 <= v33)
            {
              v34 = *(a2 - 3);
            }

            else
            {
              v34 = v15[1];
            }

            if (v32 >= v33)
            {
              v32 = *(a2 - 3);
            }

            *(a2 - 3) = v32;
            v15[1] = v34;
            v35 = *(a2 - 3);
            v36 = v11[2];
            if (v35 <= v36)
            {
              v37 = v11[2];
            }

            else
            {
              v37 = *(a2 - 3);
            }

            if (v35 >= v36)
            {
              v35 = v11[2];
            }

            *(a2 - 3) = v35;
            v38 = v15[1];
            v39 = v37 > v38;
            if (v37 > v38)
            {
              v38 = v11[2];
            }

            v11[2] = v38;
            v41 = *v15;
            v40 = v15[1];
            if (!v39)
            {
              v40 = v37;
            }

            if (v41 <= v40)
            {
              v42 = v40;
            }

            else
            {
              v42 = *v15;
            }

            if (v41 < v40)
            {
              v40 = *v15;
            }

            v43 = *(v15 - 1);
            if (v40 <= v43)
            {
              v44 = *(v15 - 1);
            }

            else
            {
              v44 = v40;
            }

            if (v40 >= v43)
            {
              v40 = *(v15 - 1);
            }

            v15[1] = v40;
            if (v43 <= v42)
            {
              v45 = v42;
            }

            else
            {
              v45 = v43;
            }

            if (v43 <= v42)
            {
              v46 = v44;
            }

            else
            {
              v46 = v42;
            }

            *(v15 - 1) = v45;
            *v15 = v46;
            v47 = *v11;
            *v11 = v46;
            *v15 = v47;
            v48 = *v11;
          }

          --a3;
          if ((a4 & 1) == 0 && *(v11 - 1) <= v48)
          {
            if (v48 <= *(a2 - 1))
            {
              v116 = v11 + 1;
              do
              {
                v11 = v116;
                if (v116 >= a2)
                {
                  break;
                }

                ++v116;
              }

              while (v48 <= *v11);
            }

            else
            {
              do
              {
                v115 = v11[1];
                ++v11;
              }

              while (v48 <= v115);
            }

            v117 = a2;
            if (v11 < a2)
            {
              v117 = a2;
              do
              {
                v118 = *--v117;
              }

              while (v48 > v118);
            }

            if (v11 < v117)
            {
              v119 = *v11;
              v120 = *v117;
              do
              {
                *v11 = v120;
                *v117 = v119;
                do
                {
                  v121 = v11[1];
                  ++v11;
                  v119 = v121;
                }

                while (v48 <= v121);
                do
                {
                  v122 = *--v117;
                  v120 = v122;
                }

                while (v48 > v122);
              }

              while (v11 < v117);
            }

            v123 = v11 - 1;
            if (v11 - 1 != v6)
            {
              *v6 = *v123;
            }

            a4 = 0;
            *v123 = v48;
            continue;
          }

          break;
        }

        if (v48 <= *(a2 - 1))
        {
          v58 = v11 + 1;
          do
          {
            v56 = v58;
            if (v58 >= a2)
            {
              break;
            }

            ++v58;
          }

          while (v48 <= *v56);
        }

        else
        {
          v56 = v11;
          do
          {
            v57 = v56[1];
            ++v56;
          }

          while (v48 <= v57);
        }

        v59 = a2;
        if (v56 < a2)
        {
          v59 = a2;
          do
          {
            v60 = *--v59;
          }

          while (v48 > v60);
        }

        v61 = v56;
        if (v56 < v59)
        {
          v62 = *v56;
          *v56 = *v59;
          v61 = v56 + 1;
          *v59 = v62;
        }

        v63 = v59 - 1;
        v64 = (v59 - 1) - v61;
        if (v64 < 505)
        {
          v65 = 0;
          v93 = v64 >> 2;
          v91 = 1;
LABEL_125:
          v97 = v93 + 1;
          v94 = (v93 + 1) / 2;
          v95 = v97 - v97 / 2;
          goto LABEL_126;
        }

        v65 = 0;
        v66 = 0;
        v67 = vdupq_n_s32(v48);
        do
        {
          if (v66)
          {
            if (v65)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v68 = 0uLL;
            v69 = v9;
            v70 = v7;
            v71 = 0uLL;
            do
            {
              v72 = vcgeq_u32(v67, *(v61 + v66));
              v73.i64[0] = v72.u32[2];
              v73.i64[1] = v72.u32[3];
              v74 = vandq_s8(v73, v8);
              v73.i64[0] = v72.u32[0];
              v73.i64[1] = v72.u32[1];
              v71 = vorrq_s8(vshlq_u64(v74, v70), v71);
              v68 = vorrq_s8(vshlq_u64(vandq_s8(v73, v8), v69), v68);
              v70 = vaddq_s64(v70, v10);
              v69 = vaddq_s64(v69, v10);
              v66 += 16;
            }

            while (v66 != 256);
            v75 = vorrq_s8(v68, v71);
            v66 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
            if (v65)
            {
LABEL_105:
              if (!v66)
              {
                goto LABEL_116;
              }

              goto LABEL_113;
            }
          }

          v76 = 0uLL;
          v77 = 0x3FFFFFFFFFFFFFFDLL;
          v78 = v9;
          v79 = v7;
          v80 = 0uLL;
          do
          {
            v81 = vrev64q_s32(*&v63[v77]);
            v82 = vcgtq_u32(vextq_s8(v81, v81, 8uLL), v67);
            v83.i64[0] = v82.u32[2];
            v83.i64[1] = v82.u32[3];
            v84 = vdupq_n_s64(1uLL);
            v85 = vandq_s8(v83, v84);
            v83.i64[0] = v82.u32[0];
            v83.i64[1] = v82.u32[1];
            v80 = vorrq_s8(vshlq_u64(v85, v79), v80);
            v76 = vorrq_s8(vshlq_u64(vandq_s8(v83, v84), v78), v76);
            v86 = vdupq_n_s64(4uLL);
            v79 = vaddq_s64(v79, v86);
            v78 = vaddq_s64(v78, v86);
            v77 -= 4;
          }

          while (v77 != -67);
          v87 = vorrq_s8(v76, v80);
          v65 = vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
          if (!v66)
          {
            goto LABEL_116;
          }

LABEL_113:
          if (v65)
          {
            do
            {
              v88 = __clz(__rbit64(v66));
              v66 &= v66 - 1;
              v89 = &v63[-__clz(__rbit64(v65))];
              v90 = v61[v88];
              v61[v88] = *v89;
              *v89 = v90;
              v65 &= v65 - 1;
            }

            while (v65 && v66);
          }

LABEL_116:
          v61 += 64 * (v66 == 0);
          v91 = v65 == 0;
          if (v65)
          {
            v92 = 0;
          }

          else
          {
            v92 = -256;
          }

          v63 = (v63 + v92);
        }

        while (v63 - v61 > 504);
        v93 = v63 - v61;
        if (!(v66 | v65))
        {
          goto LABEL_125;
        }

        v94 = v93 - 63;
        v95 = 64;
        v96 = 64;
        if (v66)
        {
          if (v65)
          {
            goto LABEL_135;
          }

LABEL_132:
          if (v94 >= 1)
          {
            v99 = 0;
            v65 = 0;
            v100 = v63;
            do
            {
              v101 = *v100--;
              v65 |= (v101 > v48) << v99++;
            }

            while (v94 != v99);
            goto LABEL_135;
          }

          if (v66)
          {
            v109 = 0;
          }

          else
          {
            v109 = v96;
          }

          v11 = &v61[v109];
LABEL_152:
          if (v66)
          {
            v63 -= v94;
            goto LABEL_154;
          }

          goto LABEL_158;
        }

LABEL_126:
        if (v94 < 1)
        {
          v66 = 0;
        }

        else
        {
          v98 = 0;
          v66 = 0;
          do
          {
            v66 |= (v61[v98] <= v48) << v98;
            ++v98;
          }

          while (v94 != v98);
        }

        v96 = v94;
        v94 = v95;
        if (v91)
        {
          goto LABEL_132;
        }

LABEL_135:
        if (v66 && v65)
        {
          do
          {
            v102 = __clz(__rbit64(v66));
            v66 &= v66 - 1;
            v103 = &v63[-__clz(__rbit64(v65))];
            v104 = v61[v102];
            v61[v102] = *v103;
            *v103 = v104;
            v65 &= v65 - 1;
          }

          while (v65 && v66);
        }

        if (v66)
        {
          v105 = 0;
        }

        else
        {
          v105 = v96;
        }

        v11 = &v61[v105];
        if (!v65)
        {
          goto LABEL_152;
        }

        if (v66)
        {
          do
          {
LABEL_154:
            v110 = __clz(v66) ^ 0x3F;
            v111 = &v11[v110];
            if (v63 != v111)
            {
              v112 = *v111;
              *v111 = *v63;
              *v63 = v112;
            }

            v66 &= ~(-1 << v110);
            --v63;
          }

          while (v66);
          v11 = v63 + 1;
        }

        else
        {
          do
          {
            v106 = __clz(v65) ^ 0x3F;
            v107 = &v63[-v106];
            if (v11 != v107)
            {
              v108 = *v107;
              *v107 = *v11;
              *v11 = v108;
            }

            v65 &= ~(-1 << v106);
            ++v11;
          }

          while (v65);
        }

LABEL_158:
        v113 = v11 - 1;
        if (v11 - 1 != v6)
        {
          *v6 = *v113;
        }

        *v113 = v48;
        if (v56 < v59)
        {
LABEL_163:
          result = std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *,true>(v6, v11 - 1, a3, a4 & 1);
          v10 = v204;
          v9 = xmmword_1B33B0560;
          v8 = v205;
          v7 = xmmword_1B33B0550;
          a4 = 0;
          continue;
        }

        break;
      }

      v114 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *>(v6, v11 - 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *>(v11, a2);
      if (!result)
      {
        v8 = v205;
        v7 = xmmword_1B33B0550;
        v10 = v204;
        v9 = xmmword_1B33B0560;
        if (!v114)
        {
          goto LABEL_163;
        }

        continue;
      }

      break;
    }

    a2 = v11 - 1;
    v8 = v205;
    v7 = xmmword_1B33B0550;
    v10 = v204;
    v9 = xmmword_1B33B0560;
    if (!v114)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *>(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

uint64_t md::TransitJunction::normalForLinkPair(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[12];
  if (v3)
  {
    v4 = a3 ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3 ^ a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(a1[11] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (i[2] == a2 && i[3] == a3)
          {
            return (i + 4);
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v11 = a1[1];
  if (*(*a2 + 48) == v11)
  {
    return *(a2 + 64) - 48;
  }

  if (*(*a2 + 40) == v11)
  {
    return *(a2 + 56) + 8;
  }

  return 0;
}

void std::vector<std::unique_ptr<std::vector<gm::Matrix<float,2,1>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<std::vector<gm::Matrix<float,2,1>>>::operator()[abi:nn200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::hash<GeoCodecsConnectivityJunction const*>,std::equal_to<GeoCodecsConnectivityJunction const*>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::equal_to<GeoCodecsConnectivityJunction const*>,std::hash<GeoCodecsConnectivityJunction const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction const*,GeoCodecsConnectivityJunction const*&,md::TransitJunction>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1B2FB3EA0(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[10]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[7]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void md::PolygonOverlayMeshBuilder::buildMesh(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  if (v4 != a3)
  {
    v156 = 0;
    v154 = a4 << 32;
    v157 = vneg_f32(0x80000000800000);
    __asm { FMOV            V12.2S, #1.0 }

    do
    {
      v10 = *(v4 + 32);
      if (v10 < *(v4 + 33))
      {
        v161 = (v4 + 16);
        v159 = v4;
        do
        {
          memset(__src, 0, sizeof(__src));
          *v172 = 0u;
          *&v174 = v154 | v156;
          *(&v174 + 1) = geo::Polygon2<double>::boundingBox(**v161, (*v161)[1]);
          *&v175 = v11;
          *(&v175 + 1) = v12;
          v176 = v13;
          v160 = v10;
          v185 = v10;
          v14 = *(a2 + 1);
          v15 = *(a2 + 4);
          v16 = *(a2 + 8);
          v182 = 0;
          v183 = 0;
          v184 = 0;
          std::vector<gm::Matrix<double,2,1>>::reserve(&v182, 4uLL);
          v17 = 1.0 / (1 << v14);
          v18 = v17 * ((1 << v14) + ~v15);
          v19 = v160 + v17 * v16;
          v21 = v183;
          v20 = v184;
          if (v183 >= v184)
          {
            v23 = v182;
            v24 = (v183 - v182) >> 4;
            v25 = v24 + 1;
            if ((v24 + 1) >> 60)
            {
              goto LABEL_225;
            }

            if ((v184 - v182) >> 3 > v25)
            {
              v25 = (v184 - v182) >> 3;
            }

            if (v184 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v26 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v26);
            }

            v27 = (16 * v24);
            *v27 = v19;
            v27[1] = v18;
            if (v23 != v21)
            {
              v28 = 0;
              do
              {
                v29 = *v23;
                v23 += 2;
                *v28++ = v29;
              }

              while (v23 != v21);
              v23 = v182;
            }

            v20 = 0;
            v22 = v27 + 2;
            v182 = 0;
            v184 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v183 = v19;
            v21[1] = v18;
            v22 = v21 + 2;
          }

          v30 = v18 + v17;
          if (v22 >= v20)
          {
            v32 = v182;
            v33 = (v22 - v182) >> 4;
            v34 = v33 + 1;
            if ((v33 + 1) >> 60)
            {
              goto LABEL_225;
            }

            if ((v20 - v182) >> 3 > v34)
            {
              v34 = (v20 - v182) >> 3;
            }

            if (v20 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v35);
            }

            v36 = (16 * v33);
            *v36 = v19;
            v36[1] = v30;
            if (v32 != v22)
            {
              v37 = 0;
              do
              {
                v38 = *v32;
                v32 += 2;
                *v37++ = v38;
              }

              while (v32 != v22);
              v32 = v182;
            }

            v20 = 0;
            v31 = v36 + 2;
            v182 = 0;
            v183 = v36 + 2;
            v184 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v22 = v19;
            v22[1] = v30;
            v31 = v22 + 2;
          }

          v39 = v19 + v17;
          if (v31 >= v20)
          {
            v42 = v182;
            v43 = (v31 - v182) >> 4;
            v44 = v43 + 1;
            if ((v43 + 1) >> 60)
            {
              goto LABEL_225;
            }

            if ((v20 - v182) >> 3 > v44)
            {
              v44 = (v20 - v182) >> 3;
            }

            if (v20 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v44;
            }

            if (v45)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v45);
            }

            v46 = (16 * v43);
            *v46 = v39;
            v46[1] = v30;
            if (v42 != v31)
            {
              v47 = 0;
              do
              {
                v48 = *v42;
                v42 += 2;
                *v47++ = v48;
              }

              while (v42 != v31);
              v42 = v182;
            }

            v41 = 0;
            v40 = v46 + 2;
            v182 = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v31 = v39;
            v31[1] = v30;
            v40 = v31 + 2;
            v41 = v184;
          }

          if (v40 >= v41)
          {
            v50 = v182;
            v51 = (v40 - v182) >> 4;
            v52 = v51 + 1;
            if ((v51 + 1) >> 60)
            {
LABEL_225:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if ((v41 - v182) >> 3 > v52)
            {
              v52 = (v41 - v182) >> 3;
            }

            if (v41 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v53 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v53);
            }

            v54 = (16 * v51);
            *v54 = v39;
            v54[1] = v18;
            v162 = 0;
            if (v50 != v40)
            {
              v55 = 0;
              do
              {
                v56 = *v50;
                v50 += 2;
                *v55++ = v56;
              }

              while (v50 != v40);
              v50 = v182;
            }

            v49 = v54 + 2;
            if (v50)
            {
              operator delete(v50);
            }
          }

          else
          {
            *v40 = v39;
            v40[1] = v18;
            v49 = v40 + 2;
            v162 = v182;
          }

          v182 = 0;
          v183 = 0;
          v184 = 0;
          std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](&v180, *v161);
          v57 = 0;
          v58 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v178 = 0;
          v59 = (v49 - v162) >> 4;
          v163 = v59;
          do
          {
            if (v58 == v59)
            {
              v109 = __p[1];
              goto LABEL_146;
            }

            v165 = v58 + 1;
            if (v58 + 1 == v59)
            {
              v60 = 0;
            }

            else
            {
              v60 = v58 + 1;
            }

            v61 = v180;
            if (v181 == v180)
            {
              v168 = 0u;
              v106 = 0uLL;
            }

            else
            {
              v62 = 0;
              v166 = vsubq_f64(v162[v60], v162[v58]);
              v167 = v162[v58];
              v63 = v162[v58].f64[1];
              v64 = (v181 - 8);
              f64 = (v181 - 16);
              v66 = 0uLL;
              v168 = 0u;
              do
              {
                v169 = v66;
                v67 = *f64;
                v68 = *v64;
                f64 = v61[v62].f64;
                v64 = f64 + 1;
                v69 = f64[1];
                v70 = (v68 - v63) * v166.f64[0];
                v71 = (v67 - v167.f64[0]) * v166.f64[1];
                v72 = (v69 - v63) * v166.f64[0];
                v73 = (*f64 - v167.f64[0]) * v166.f64[1];
                if (v70 >= v71 == v72 < v73)
                {
                  v74 = *f64 - v67;
                  v75 = v69 - v68;
                  v76 = -(v74 * v166.f64[1] - v75 * v166.f64[0]);
                  if (v76 != 0.0)
                  {
                    v77 = (v71 - v70) / v76;
                    v78 = (*(&v169 + 1) - v169) >> 4;
                    v79 = v78 + 1;
                    if ((v78 + 1) >> 60)
                    {
                      goto LABEL_225;
                    }

                    if (-v169 >> 3 > v79)
                    {
                      v79 = -v169 >> 3;
                    }

                    if (-v169 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v80 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v80 = v79;
                    }

                    if (v80)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v80);
                    }

                    v81 = (16 * v78);
                    *v81 = v67 + v77 * v74;
                    v81[1] = v68 + v77 * v75;
                    if (v169 != *(&v169 + 1))
                    {
                      v82 = v169;
                      v83 = 0;
                      do
                      {
                        v84 = *v82++;
                        *v83++ = v84;
                      }

                      while (v82 != *(&v169 + 1));
                    }

                    v85 = (v81 + 2);
                    if (v169)
                    {
                      operator delete(v169);
                    }

                    v86 = (*(&v168 + 1) - v168) >> 3;
                    v87 = v86 + 1;
                    if ((v86 + 1) >> 61)
                    {
                      goto LABEL_226;
                    }

                    if (-v168 >> 2 > v87)
                    {
                      v87 = -v168 >> 2;
                    }

                    if (-v168 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v88 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v88 = v87;
                    }

                    if (v88)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v88);
                    }

                    v89 = (8 * v86);
                    *v89 = (v85 >> 4) - 1;
                    v90 = v89 + 1;
                    memcpy(0, v168, *(&v168 + 1) - v168);
                    if (v168)
                    {
                      operator delete(v168);
                    }

                    *&v91 = 0;
                    *(&v91 + 1) = v85;
                    v169 = v91;
                    *&v91 = 0;
                    *(&v91 + 1) = v90;
                    v168 = v91;
                  }
                }

                if (v72 < v73)
                {
                  v92 = (*(&v169 + 1) - v169) >> 4;
                  v93 = v92 + 1;
                  if ((v92 + 1) >> 60)
                  {
                    goto LABEL_225;
                  }

                  if (-v169 >> 3 > v93)
                  {
                    v93 = -v169 >> 3;
                  }

                  if (-v169 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v94 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v94 = v93;
                  }

                  if (v94)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v94);
                  }

                  *(16 * v92) = *f64;
                  if (v169 != *(&v169 + 1))
                  {
                    v95 = v169;
                    v96 = 0;
                    do
                    {
                      v97 = *v95++;
                      *v96++ = v97;
                    }

                    while (v95 != *(&v169 + 1));
                  }

                  if (v169)
                  {
                    operator delete(v169);
                  }

                  *&v98 = 0;
                  *(&v98 + 1) = 16 * v92 + 16;
                  v169 = v98;
                  v99 = __p[0];
                  if (__p[0] != __p[1])
                  {
                    while (*v99 != v62)
                    {
                      if (++v99 == __p[1])
                      {
                        goto LABEL_132;
                      }
                    }
                  }

                  if (v99 != __p[1])
                  {
                    v100 = (*(&v168 + 1) - v168) >> 3;
                    v101 = v100 + 1;
                    if ((v100 + 1) >> 61)
                    {
                      goto LABEL_226;
                    }

                    if (-v168 >> 2 > v101)
                    {
                      v101 = -v168 >> 2;
                    }

                    if (-v168 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v102 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v102 = v101;
                    }

                    if (v102)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v102);
                    }

                    v103 = (8 * v100);
                    *v103 = ((16 * v92 + 16) >> 4) - 1;
                    v104 = v103 + 1;
                    memcpy(0, v168, *(&v168 + 1) - v168);
                    if (v168)
                    {
                      operator delete(v168);
                    }

                    *&v105 = 0;
                    *(&v105 + 1) = v104;
                    v168 = v105;
                  }
                }

LABEL_132:
                v106 = v169;
                ++v62;
                v61 = v180;
                v66 = v169;
              }

              while (v62 < (v181 - v180) >> 4);
            }

            *v186 = v106;
            *&v186[16] = 0;
            if (v61)
            {
              *&v181 = v61;
              v170 = v106;
              operator delete(v61);
              *&v106 = v170;
            }

            v107 = v106;
            v180 = v106;
            v181 = *&v186[8];
            if (__p[0])
            {
              operator delete(__p[0]);
              v107 = v180;
              v108 = v181;
            }

            else
            {
              v108 = *&v186[8];
            }

            *__p = v168;
            v178 = 0;
            v57 = v168;
            v58 = v165;
            _ZF = v108 == v107;
            v59 = v163;
          }

          while (!_ZF);
          if (v168)
          {
            operator delete(v168);
          }

          v57 = 0;
          v109 = 0;
LABEL_146:
          v171 = v109;
          std::vector<gm::Matrix<float,2,1>>::reserve(v172, (v181 - v180) >> 4);
          v110 = v171 - v57;
          if (v171 != v57)
          {
            if (!((v110 >> 3) >> 61))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v110 >> 3);
            }

LABEL_226:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v111 = v180;
          if (v181 != v180)
          {
            v112 = 0;
            v113 = v157;
            do
            {
              v114 = v57;
              if (v171 != v57)
              {
                v114 = v57;
                while (*v114 != v112)
                {
                  v114 += 8;
                  if (v114 == v171)
                  {
                    v114 = v171;
                    break;
                  }
                }
              }

              v115 = v111[v112];
              v116 = 1 << *(a2 + 1);
              v117 = 1.0 / v116;
              v118.f64[0] = v185 + v117 * *(a2 + 8);
              v118.f64[1] = v117 * (v116 + ~*(a2 + 4));
              v119 = vminnm_f32(vmaxnm_f32(vcvt_f32_f64(vmulq_n_f64(vsubq_f64(v115, v118), v116)), 0), _D12);
              if (*&v113 == *&v119)
              {
                if (v114 != v171 && !v171)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
                }

                v119 = v113;
              }

              else
              {
                v120 = v172[1];
                if (v172[1] >= __src[0])
                {
                  v122 = (v172[1] - v172[0]) >> 3;
                  if ((v122 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v123 = (__src[0] - v172[0]) >> 2;
                  if (v123 <= v122 + 1)
                  {
                    v123 = v122 + 1;
                  }

                  if ((__src[0] - v172[0]) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v124 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v124 = v123;
                  }

                  if (v124)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v124);
                  }

                  v125 = (8 * v122);
                  *v125 = v119;
                  v121 = (8 * v122 + 8);
                  v126 = v172[0];
                  v127 = v172[1];
                  v128 = (v125 + v172[0] - v172[1]);
                  if (v172[1] != v172[0])
                  {
                    v129 = v128;
                    do
                    {
                      v130 = *v126++;
                      *v129++ = v130;
                    }

                    while (v126 != v127);
                    v126 = v172[0];
                  }

                  v172[0] = v128;
                  v172[1] = v121;
                  __src[0] = 0;
                  if (v126)
                  {
                    operator delete(v126);
                  }
                }

                else
                {
                  *v172[1] = v119;
                  v121 = v120 + 8;
                }

                v172[1] = v121;
                if (v114 != v171)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
                }
              }

              ++v112;
              v111 = v180;
              v113 = v119;
            }

            while (v112 < (v181 - v180) >> 4);
          }

          v131 = v172[1];
          if (v172[1] == v172[0])
          {
            v132 = v172[1];
          }

          else if (*v172[0] == *(v172[1] - 1))
          {
            std::vector<gm::Matrix<float,2,1>>::resize(v172, ((v172[1] - v172[0]) >> 3) - 1);
            v131 = v172[0];
            v132 = v172[1];
          }

          else
          {
            v132 = v172[1];
            v131 = v172[0];
          }

          *v186 = 0;
          __p[0] = v186;
          __p[1] = v161;
          v178 = a2;
          v179 = &v185;
          std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(&__src[1], (v132 - v131) >> 3);
          if (v172[1] != v172[0])
          {
            v133 = 0;
            v134 = (v172[1] - v172[0]) >> 3;
            do
            {
              v135 = v133 + 1;
              if (v133 + 1 == v134)
              {
                v136 = 0;
              }

              else
              {
                v136 = v133 + 1;
              }

              v137 = __src[2];
              if (__src[2] >= __src[3])
              {
                v139 = __src[1];
                v140 = __src[2] - __src[1];
                v141 = (__src[2] - __src[1]) >> 4;
                v142 = v141 + 1;
                if ((v141 + 1) >> 60)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v143 = __src[3] - __src[1];
                if ((__src[3] - __src[1]) >> 3 > v142)
                {
                  v142 = v143 >> 3;
                }

                if (v143 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v144 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v144 = v142;
                }

                if (v144)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v144);
                }

                v145 = (__src[2] - __src[1]) >> 4;
                v146 = (16 * v141);
                *v146 = v133;
                v146[1] = v136;
                v138 = (16 * v141 + 16);
                v147 = (16 * v141 - 16 * v145);
                memcpy(&v146[-2 * v145], v139, v140);
                v148 = __src[1];
                __src[1] = v147;
                *&__src[2] = v138;
                if (v148)
                {
                  operator delete(v148);
                }
              }

              else
              {
                *__src[2] = v133;
                v137[1] = v136;
                v138 = v137 + 2;
              }

              __src[2] = v138;
              v134 = (v172[1] - v172[0]) >> 3;
              v133 = v135;
            }

            while (v135 < v134);
          }

          v149 = *v186;
          *v186 = 0;
          if (v149)
          {
            std::default_delete<std::vector<gm::Matrix<float,2,1>>>::operator()[abi:nn200100](v149);
          }

          if (v180)
          {
            *&v181 = v180;
            operator delete(v180);
          }

          if (v57)
          {
            operator delete(v57);
          }

          if (v162)
          {
            operator delete(v162);
          }

          if (v182)
          {
            operator delete(v182);
          }

          if (v172[1] != v172[0])
          {
            v150 = a1[1];
            if (v150 >= a1[2])
            {
              v153 = std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__emplace_back_slow_path<md::PolygonOverlayMeshBuilder::MeshInfo>(a1, v172);
            }

            else
            {
              *(v150 + 16) = 0;
              *(v150 + 24) = 0;
              *v150 = 0;
              *(v150 + 8) = 0;
              *v150 = *v172;
              *(v150 + 16) = __src[0];
              v172[0] = 0;
              v172[1] = 0;
              __src[0] = 0;
              *(v150 + 32) = 0;
              *(v150 + 40) = 0;
              *(v150 + 24) = *&__src[1];
              *(v150 + 40) = __src[3];
              memset(&__src[1], 0, 24);
              v151 = v174;
              v152 = v175;
              *(v150 + 80) = v176;
              *(v150 + 48) = v151;
              *(v150 + 64) = v152;
              v153 = v150 + 88;
            }

            a1[1] = v153;
          }

          if (__src[1])
          {
            __src[2] = __src[1];
            operator delete(__src[1]);
          }

          if (v172[0])
          {
            v172[1] = v172[0];
            operator delete(v172[0]);
          }

          v10 = (v160 + 1);
          v4 = v159;
        }

        while (v10 < *(v159 + 33));
      }

      ++v156;
      v4 = *(v4 + 8);
    }

    while (v4 != a3);
  }
}

void sub_1B2FB4EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (v42)
  {
    operator delete(v42);
  }

  v46 = *(v44 - 248);
  if (v46)
  {
    *(v44 - 240) = v46;
    operator delete(v46);
  }

  if (v43)
  {
    operator delete(v43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v47 = *(v44 - 224);
  if (v47)
  {
    operator delete(v47);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

double geo::Polygon2<double>::boundingBox(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1.79769313e308;
  }

  do
  {
    v2 = 0;
    v3 = &v8;
    v4 = 1;
    do
    {
      v5 = *(a1 + 8 * v2);
      v6 = v4;
      *v3 = fmin(v5, *v3);
      *&v9[8 * v2 + 8] = fmax(*&v9[8 * v2 + 8], v5);
      v3 = v9;
      v2 = 1;
      v4 = 0;
    }

    while ((v6 & 1) != 0);
    a1 += 16;
  }

  while (a1 != a2);
  return v8;
}

uint64_t md::PolygonOverlayMeshBuilder::tileCut(geo::QuadTile const&,std::shared_ptr<geo::Polygon2<double>> const&,md::PolygonOverlayMeshBuilder::MeshInfo &,signed char)::$_0::operator()(float ****a1, float *a2, float *a3)
{
  if (!**a1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  while (gm::LineSegment<float,2>::distanceSquaredTo(v4, v6, v7) >= 0.00000011921 || gm::LineSegment<float,2>::distanceSquaredTo(v4, v8, v9) >= 0.00000011921)
  {
    v4 += 4;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return 1;
}

void md::PolygonOverlayMeshBuilder::buildOverlayRenderableFromMeshInfos(float a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, void *a6, void *a7, uint64_t *a8, uint64_t a9, _DWORD *a10)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v15 = *a4;
  v16 = a4[1];
  if (*a4 != v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (geo::effectiveVertexCount<float>(v15))
      {
        v17 += (v15[1] - *v15) >> 3;
        v18 += geo::triangulatedIndexCount<float>(v15);
      }

      v15 += 11;
    }

    while (v15 != v16);
    v27[6] = v18;
    v27[7] = v17;
    if (v17 && v18)
    {
      operator new();
    }
  }

  v19 = a6[1];
  v26[0] = *a6;
  v26[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a7[1];
  v25[0] = *a7;
  v25[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a9 == 1;
  if (a9 == 2)
  {
    v21 = 2;
  }

  LOBYTE(v24) = v21;
  LODWORD(v28[0]) = *a10;
  md::PolygonOverlayMeshBuilder::buildStrokeRibbon(v27, *a4, a4[1], a1, a5, v26, v25, a8, &v24, v28);
}

void sub_1B2FB6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  MEMORY[0x1B8C62190](v17, 0x10F1C4063721C39);
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(a1);
}

void md::PolygonOverlayMeshBuilder::buildStrokeRibbon(void *a1, uint64_t *a2, uint64_t *a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, char *a9, int *a10)
{
  v72 = *MEMORY[0x1E69E9840];
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  if (a2 != a3)
  {
    v11 = a8;
    v12 = a3;
    v13 = a2;
    v14 = a10;
    do
    {
      v15 = v13[3];
      v16 = v13[4];
      if (v16 != v15)
      {
        v17 = *v14;
        v19 = *v15;
        v18 = *(v15 + 1);
        v67 = v18;
        v68[0] = v19;
        v20 = *v11;
        if (*v11)
        {
          v22 = *(v20 + 32);
          v21 = *(v20 + 40);
          v65 = v22;
          v66 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v15 = v13[3];
            v16 = v13[4];
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v69[0] = v58;
        v69[1] = v68;
        v69[2] = &v67;
        v69[3] = v13;
        v69[4] = &v65;
        v69[5] = a9;
        v70 = a4;
        v71 = v17;
        if ((v16 - v15) >= 0x11)
        {
          v23 = 0;
          v24 = 1;
          do
          {
            v25 = &v15[v23 * 8];
            v26 = *&v15[v23 * 8 + 16];
            if (*(v25 + 3) >= v26)
            {
              if (v26 != v18)
              {
                md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(v69);
                v68[0] = *(v25 + 2);
              }
            }

            else
            {
              v27 = md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(v69);
              v28 = v13[3];
              v29 = v28[v23 + 1];
              v31 = *(v25 + 2);
              v30 = *(v25 + 3);
              v32 = *v28;
              v33 = mdm::zone_mallocator::instance(v27);
              v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(v33);
              v35 = 2;
              if (v29 == v31)
              {
                v35 = 3;
              }

              if (v30 == v32)
              {
                v36 = v35 + 1;
              }

              else
              {
                v36 = v35;
              }

              v37 = *a9;
              v38 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v34, v36);
              *v38 = &unk_1F2A2D908;
              *(v38 + 104) = 0;
              *(v38 + 112) = 0;
              *(v38 + 120) = 0;
              *(v38 + 121) = v37;
              *(v38 + 124) = a4;
              *(v38 + 128) = v17;
              v64 = v38;
              *(v38 + 96) = 0;
              v39 = *(v25 + 2);
              v40 = *v13;
              if (v28[v23 + 1] == v39)
              {
                v41 = (v40 + 8 * v28[v23]);
                v42 = *(v38 + 72);
                *v42 = *v41;
                v42[1] = v41[1];
                v43 = 1;
              }

              else
              {
                v43 = 0;
                v42 = *(v38 + 72);
              }

              v44 = (v40 + 8 * v39);
              v45 = &v42[2 * v43];
              *v45 = *v44;
              v45[1] = v44[1];
              v46 = *(v25 + 3);
              v47 = (v40 + 8 * v46);
              v45[2] = *v47;
              v45[3] = v47[1];
              if (v46 == *v28)
              {
                v48 = (v40 + 8 * v28[1]);
                v45[4] = *v48;
                v45[5] = v48[1];
              }

              v61 = 0;
              v62 = 0;
              v63 = 0;
              LODWORD(v60) = 0;
              v49 = v65;
              v50 = v66;
              if (v66)
              {
                atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                v51 = v62;
                v61 = v49;
                v62 = v50;
                if (v51)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v51);
                  v52 = v60;
                }

                else
                {
                  v52 = 0;
                }
              }

              else
              {
                v52 = 0;
                v61 = v65;
              }

              v68[1] = &v60;
              v53 = std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(v58, v52, v63);
              std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v53 + 6), &v64);
              v67 = *(v25 + 3);
              v68[0] = v67;
              if (v62)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v62);
              }

              std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](&v64);
            }

            v18 = *(v25 + 3);
            v67 = v18;
            ++v24;
            v15 = v13[3];
            v23 += 2;
          }

          while (v24 < (v13[4] - v15) >> 4);
          v19 = v68[0];
          v12 = a3;
          v11 = a8;
          v14 = a10;
        }

        if (v18 > v19)
        {
          md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(v69);
        }

        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        }
      }

      v13 += 11;
    }

    while (v13 != v12);
  }

  *a1 = 0;
  operator new();
}

void sub_1B2FB68C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v9 = 0;
  std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(uint64_t result, uint64_t **a2)
{
  v2 = result;
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      result = geo::effectiveVertexCount<float>(v3);
      if (result)
      {
        v6 += (v3[1] - *v3) >> 3;
        result = geo::triangulatedIndexCount<float>(v3);
        v5 += result;
      }

      v3 += 11;
    }

    while (v3 != v4);
    v7 = v5;
    v8 = v6;
    if (v6 && v5)
    {
      operator new();
    }
  }

  *v2 = 0;
  return result;
}

void sub_1B2FB6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  _Unwind_Resume(a1);
}

uint64_t geo::effectiveVertexCount<float>(uint64_t *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2A3AD58;
  v7[1] = a1;
  v7[3] = v7;
  v2 = *a1;
  v1 = a1[1];
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v6, v7);
  geo::effectiveVertexCount<float>((v1 - v2) >> 3, v6);
  v4 = v3;
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v6);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v7);
  return v4;
}

void sub_1B2FB6DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

uint64_t geo::triangulatedIndexCount<float>(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F2A1E450;
  v8[1] = a1;
  v8[3] = v8;
  v2 = *a1;
  v1 = a1[1];
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v7, v8);
  v3 = (v1 - v2) >> 3;
  if (v3 >= 3)
  {
    std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v9, v7);
    geo::effectiveVertexCount<float>(v3, v9);
    v4 = 3 * v5 - 6;
    std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    v4 = 0;
  }

  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v7);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v8);
  return v4;
}

void sub_1B2FB6EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v2 - 56);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v22, **(**(a1 + 16) + 64), 0, **(a1 + 24), 1, 1, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v20, *(**(a1 + 16) + 96), 0, **(a1 + 32), 1, 1, v3);
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      v9 = geo::triangulatedIndexCount<float>(v5);
      if (!v9)
      {
        goto LABEL_25;
      }

      v10 = v5[1] - *v5;
      if (v10)
      {
        v11 = v10 >> 3;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = (v22[5] + 8 * v7 + 4);
        v13 = (*v5 + 4);
        do
        {
          v14 = (*v13 * 16803.0);
          *(v12 - 2) = (*(v13 - 1) * 16803.0);
          *(v12 - 1) = v14;
          *v12 = 0;
          v12 += 2;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v23.i64[1] = 0;
      v24 = 0;
      v23.i64[0] = &v23.i64[1];
      v25 = xmmword_1B33B1630;
      v30 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v29 = 0;
      v31 = 4;
      v33 = 0;
      v34 = 0;
      __p = 0;
      md::Triangulator<float>::triangulate(&v23, v5);
      v15 = __p;
      v16 = v33 - __p;
      if (v9 == (v33 - __p) >> 1)
      {
        if (v33 != __p)
        {
          v17 = 0;
          v18 = v21 + 2 * v8;
          do
          {
            *(v18 + 2 * v17) = v15[v17] + v7;
            ++v17;
          }

          while (v9 != v17);
LABEL_22:
          v33 = v15;
          operator delete(v15);
          goto LABEL_23;
        }
      }

      else
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v19 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v36 = v9;
          v37 = 2048;
          v38 = (v33 - __p) >> 1;
          _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "Mismatching number of indices, indexCount: %zu, triangulatedIndexCount: %zu", buf, 0x16u);
        }

        bzero((v21 + 2 * v8), 2 * v9);
        v15 = __p;
      }

      if (v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&v23);
      if (v9 != v16 >> 1)
      {
        **(a1 + 40) = 1;
        break;
      }

      v8 += v9;
      v7 += (v5[1] - *v5) >> 3;
LABEL_25:
      v5 += 11;
    }

    while (v5 != v6);
  }

  ggl::BufferMemory::~BufferMemory(v20);
  ggl::BufferMemory::~BufferMemory(v22);
}

void md::Triangulator<float>::triangulate(float32x4_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (a2[1] - v3) >> 3;
  a1[4].i64[1] = 0;
  if ((geo::Triangulator<float,unsigned short>::_triangulatePolygon(a1, v3, v4, &a1[5].i64[1]) & 1) == 0)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      md::Triangulator<float>::_describePoints(__p, *a2, (a2[1] - *a2) >> 3);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315138;
      v10 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Triangulator failed to fully triangulate polygon: %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v24 = &v25;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v24, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v26;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = v25;
    v10 = *a1;
    do
    {
      if (v5)
      {
        v11 = 0;
        v12 = v10[4];
        do
        {
          v13 = v12 + 56 * v11;
          if (!v9)
          {
            goto LABEL_21;
          }

          v14 = &v25;
          v15 = v9;
          do
          {
            v16 = v15;
            v17 = v14;
            v18 = v15[4];
            if (v18 >= v13)
            {
              v14 = v15;
            }

            v15 = v15[v18 < v13];
          }

          while (v15);
          if (v14 == &v25)
          {
            goto LABEL_21;
          }

          if (v18 < v13)
          {
            v16 = v17;
          }

          if (v13 < v16[4])
          {
LABEL_21:
            *(v13 + 52) = -1;
          }

          ++v11;
        }

        while (v11 != v5);
      }

      v19 = v10[1];
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
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v10 = v20;
    }

    while (v20 != v7);
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v21 = v6[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v6[2];
          v8 = *v22 == v6;
          v6 = v22;
        }

        while (!v8);
      }

      v6 = v22;
    }

    while (v22 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v25);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2FB7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Triangulator<float,unsigned short>::_triangulatePolygon(float32x4_t *a1, uint64_t *a2, unint64_t a3, void *a4)
{
  a4[1] = *a4;
  if (a3 < 3)
  {
    return 0;
  }

  geo::Triangulator<float,unsigned short>::initializeHasherFromVertices(a1, a2, a3);
  LinkedList = geo::Triangulator<float,unsigned short>::createLinkedList(a1, a2, a3, 0, 1);
  if (!LinkedList)
  {
    return 0;
  }

  v9 = *(LinkedList + 24);
  geo::Triangulator<float,unsigned short>::linkListInHashSpace(v9, a1[4].f32[0]);

  return geo::Triangulator<float,unsigned short>::earclipPolygon(a1, v9, a4, v10, v11, v12, v13, v14, v15);
}

_BYTE *md::Triangulator<float>::_describePoints(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (!a3)
  {
    result[23] = 0;
    *result = 0;
    return result;
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "(", 1);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ")", 1);
  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = a2 + 12;
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, ", (", 3);
      v10 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ", ", 2);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ")", 1);
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  if ((v22 & 0x10) != 0)
  {
    v13 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v13 = v18;
    }

    locale = v17[4].__locale_;
    goto LABEL_13;
  }

  if ((v22 & 8) != 0)
  {
    locale = v17[1].__locale_;
    v13 = v17[3].__locale_;
LABEL_13:
    v12 = v13 - locale;
    if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v3[23] = v12;
    if (v12)
    {
      memmove(v3, locale, v12);
    }

    goto LABEL_19;
  }

  v12 = 0;
  v3[23] = 0;
LABEL_19:
  v3[v12] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v23);
}

void sub_1B2FB78BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

float32x4_t *geo::Triangulator<float,unsigned short>::initializeHasherFromVertices(float32x4_t *result, uint64_t *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[5].i32[0];
  if ((v4 & 4) != 0)
  {
    if (!a3)
    {
      v5 = xmmword_1B33B0730;
      goto LABEL_10;
    }
  }

  else if (a3 < 0x33 || (v4 & 2) == 0)
  {
    return result;
  }

  v5 = xmmword_1B33B0730;
  do
  {
    v6 = *a2++;
    v7.i64[0] = v6;
    v7.i64[1] = v6;
    v8.i32[0] = vmovn_s32(vcgtq_f32(v5, v7)).u32[0];
    v8.i32[1] = vmovn_s32(vcgtq_f32(v7, v5)).i32[1];
    v5 = vbslq_s8(vmovl_s16(v8), v7, v5);
    --a3;
  }

  while (a3);
LABEL_10:
  result[3] = v5;
  v9 = vsub_f32(*&vextq_s8(v5, v5, 8uLL), *v5.f32);
  v10 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x41EFFFFFFFE00000uLL), vcvtq_f64_f32(v9)));
  if (v10.i32[0] & v10.i32[1])
  {
    v11 = fmaxf(v9.f32[0], v9.f32[1]);
  }

  else
  {
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Cannot properly hash this geometry. Its space is too large.\n", 60);
    v11 = 0.0;
  }

  v3[4].f32[0] = v11;
  return result;
}

uint64_t geo::Triangulator<float,unsigned short>::createLinkedList(float32x2_t *a1, float32x2_t *a2, uint64_t a3, char a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  v9 = &a2[a3];
  v11 = v9[-1].f32[0];
  LODWORD(v10) = v9[-1].i32[1];
  v12 = a2 + 1;
  v13 = 0.0;
  v14 = a3;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    v10 = ((*&v10 + *v12) * (v11 - v15));
    v13 = v13 + v10;
    v12 += 2;
    *&v10 = v16;
    v11 = v15;
    --v14;
  }

  while (v14);
  v17 = 0;
  if (a5 != 2)
  {
    a4 = 0;
  }

  v19 = a1[9];
  v20 = vdup_n_s32(0x477FFF00u);
  v21 = 0uLL;
  do
  {
    v22 = a1[5];
    if (!v22)
    {
      geo::Pool<geo::Triangulator<float,unsigned short>::Node>::allocateSlab(a1);
      v21 = 0uLL;
      v22 = a1[5];
    }

    a1[5] = *v22;
    *v22 = v19;
    *(v22 + 4) = *v7;
    *(v22 + 16) = v21;
    *(v22 + 32) = v21;
    *(v22 + 45) = 0;
    if (v17)
    {
      v23 = (v17 + 24);
      v24 = *(v17 + 24);
      *(v22 + 16) = v17;
      *(v22 + 24) = v24;
      *(v24 + 16) = v22;
    }

    else
    {
      *(v22 + 16) = v22;
      v23 = (v22 + 24);
    }

    *v23 = v22;
    *(v22 + 52) = a4;
    LODWORD(v10) = a1[8].i32[0];
    if (*&v10 != 0.0)
    {
      v25 = vrev64_s32(vcvt_u32_f32(vdiv_f32(vmul_f32(vsub_f32(*v7, a1[6]), v20), vdup_lane_s32(*&v10, 0))));
      v26 = *&vorr_s8(vshl_n_s32(v25, 8uLL), v25) & 0xFF00FF00FF00FFLL;
      v27 = *&vorr_s8(vshl_n_s32(v26, 4uLL), v26) & 0xFF0FFF0FFF0FFF0FLL;
      v28 = vand_s8(vorr_s8(vshl_n_s32(v27, 2uLL), v27), 0x3333333333333333);
      v29 = vshl_u32(v28, 0x100000002);
      v28.i32[0] *= 2;
      v30 = vand_s8(vorr_s8(v29, v28), 0x55555555AAAAAAAALL);
      v10 = COERCE_DOUBLE(vorr_s8(v30, vdup_lane_s32(v30, 1)));
      *(v22 + 48) = LODWORD(v10);
    }

    v19 = *&a1[9] + 1;
    a1[9] = v19;
    ++v7;
    v17 = v22;
    --v6;
  }

  while (v6);
  if (*(v22 + 4) == *(*(v22 + 24) + 4))
  {
    v31 = *(v22 + 16);
    geo::Triangulator<float,unsigned short>::removeNode(a1, v22);
    v22 = v31;
  }

  if (a5 != 1 && v13 > 0.0 || a5 != 2 && v13 < 0.0)
  {
    v32 = v22;
    do
    {
      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      *(v32 + 16) = v33;
      *(v32 + 24) = v34;
      v32 = v33;
    }

    while (v33 != v22);
  }

  return v22;
}

uint64_t geo::Triangulator<float,unsigned short>::linkListInHashSpace(uint64_t result, float a2)
{
  if (a2 != 0.0)
  {
    if (!result)
    {
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Called linkListInHashSpace with a NULL head.", 44);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v19);
      std::ostream::put();
      return std::ostream::flush();
    }

    v2 = result;
    do
    {
      v3 = v2;
      v4 = v2[2];
      v2 = v2[3];
      v3[4] = v4;
      v3[5] = v2;
    }

    while (v2 != result);
    *(v2[4] + 40) = 0;
    v2[4] = 0;
    v5 = 1;
    do
    {
      v6 = 0;
      v7 = 0;
      v8 = v2;
      do
      {
        v9 = 0;
        v10 = v8;
        if (v5)
        {
          do
          {
            ++v9;
            v10 = *(v10 + 40);
            if (!v10)
            {
              goto LABEL_11;
            }
          }

          while (v5 != v9);
          v9 = v5;
        }

LABEL_11:
        ++v6;
        v11 = v5;
        while (1)
        {
          v12 = !v11 || v10 == 0;
          v13 = !v12;
          if (!v9)
          {
            break;
          }

          if (!v13 || *(v8 + 12) <= *(v10 + 48))
          {
            v14 = v8[5];
            --v9;
            v15 = v10;
            result = v8;
            goto LABEL_25;
          }

LABEL_24:
          v15 = *(v10 + 40);
          --v11;
          v14 = v8;
          result = v10;
LABEL_25:
          v16 = result;
          if (v7)
          {
            *(v7 + 40) = result;
            v16 = v2;
          }

          *(result + 32) = v7;
          v2 = v16;
          v8 = v14;
          v10 = v15;
          v7 = result;
        }

        if (v13)
        {
          v9 = 0;
          goto LABEL_24;
        }

        v8 = v10;
      }

      while (v10);
      *(v7 + 40) = 0;
      v5 *= 2;
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t geo::Triangulator<float,unsigned short>::earclipPolygon(uint64_t a1, unsigned __int16 *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  if (a2)
  {
    v9 = a2;
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    if (v10 == v11)
    {
      return 1;
    }

    v14 = vdup_n_s32(0x477FFF00u);
    __asm { FMOV            V9.2S, #1.0 }

LABEL_4:
    v19 = *(v9 + 2);
    v20 = v9;
    while (1)
    {
      v21 = v10;
      v23 = *(v10 + 4);
      v22 = (v10 + 4);
      v24 = v23;
      v25 = v11;
      v27 = *(v11 + 2);
      v26 = (v11 + 2);
      v28 = v27;
      v29 = vmul_f32(vsub_f32(v27, v19), vrev64_s32(vsub_f32(v19, v24)));
      if ((vcgt_f32(v29, vdup_lane_s32(v29, 1)).u8[0] & 1) == 0)
      {
        LODWORD(a9.f64[0]) = *(a1 + 64);
        if (*a9.f64 != 0.0)
        {
          v30 = *&v24.i32[1];
          v31 = vcgt_f32(v19, v24).u8[0];
          if (v31)
          {
            v32 = -1;
          }

          else
          {
            v32 = 0;
          }

          v33 = vbsl_s8(vdup_n_s32(v32), v24, v19);
          if (v31)
          {
            v34 = v21;
          }

          else
          {
            v34 = v20;
          }

          if (vcgt_f32(v28, v33).u8[0])
          {
            v35 = v34;
          }

          else
          {
            v35 = v25;
          }

          v36 = (v21 + 4);
          v37 = v20 + 4;
          v38 = (v25 + 4);
          if (v30 >= *&v19.i32[1])
          {
            v39 = (v20 + 4);
            if (*&v19.i32[1] >= v28.f32[1])
            {
              goto LABEL_34;
            }
          }

          else
          {
            v39 = (v21 + 4);
            if (v30 < v28.f32[1])
            {
              goto LABEL_35;
            }

LABEL_34:
            v39 = (v25 + 4);
          }

LABEL_35:
          v56.i32[0] = *(v35 + 1);
          v57 = *v39;
          v58 = v22->f32[0];
          if (*v19.i32 <= v26->f32[0])
          {
            v59 = v26;
          }

          else
          {
            v59 = (v20 + 2);
          }

          if (v58 <= v26->f32[0])
          {
            v60 = v26;
          }

          else
          {
            v60 = v22;
          }

          if (v58 > *v19.i32)
          {
            v59 = v60;
          }

          v61 = *v36;
          if (*&v19.i32[1] <= *v38)
          {
            v37 = v25 + 4;
          }

          if (v61 <= *v38)
          {
            v36 = (v25 + 4);
          }

          if (v61 > *&v19.i32[1])
          {
            v62 = v36;
          }

          else
          {
            v62 = v37;
          }

          v63 = *(a1 + 48);
          *&a9.f64[0] = vmul_f32(v14, vdiv_f32(_D9, vdup_lane_s32(*&a9.f64[0], 0)));
          v64 = *(v20 + 5);
          if (v64)
          {
            v65.i32[0] = *v59;
            v65.i32[1] = *v62;
            v66 = vrev64_s32(vcvt_u32_f32(vmul_f32(vsub_f32(v65, v63), *&a9.f64[0])));
            v67 = *&vorr_s8(vshl_n_s32(v66, 8uLL), v66) & 0xFF00FF00FF00FFLL;
            v68 = *&vorr_s8(vshl_n_s32(v67, 4uLL), v67) & 0xFF0FFF0FFF0FFF0FLL;
            v69 = vand_s8(vorr_s8(vshl_n_s32(v68, 2uLL), v68), 0x3333333333333333);
            v70 = vshl_u32(v69, 0x100000002);
            v69.i32[0] *= 2;
            v71 = vand_s8(vorr_s8(v70, v69), 0x55555555AAAAAAAALL);
            v72 = vorr_s8(v71, vdup_lane_s32(v71, 1)).u32[0];
            v73 = vcvtq_f64_f32(v19);
            while (*(v64 + 12) <= v72)
            {
              if (v64 != v21 && v64 != v25)
              {
                v74 = *v64;
                if (*v21 != v74 && *v20 != v74 && *v25 != v74)
                {
                  v75 = *(v64 + 2);
                  v76 = vmul_f32(vsub_f32(*(*(v64 + 3) + 4), v75), vrev64_s32(vsub_f32(v75, *(*(v64 + 2) + 4))));
                  if ((vcgt_f32(vdup_lane_s32(v76, 1), v76).u8[0] & 1) == 0)
                  {
                    v77 = vcvtq_f64_f32(*v22);
                    v78 = vcvtq_f64_f32(v75);
                    v79 = vsubq_f64(v78, v77);
                    v80 = vmulq_f64(vextq_s8(v79, v79, 8uLL), vsubq_f64(v73, v77));
                    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v80, 1), v80)).u8[0] & 1) == 0)
                    {
                      v28 = *v26;
                      v81 = vcvtq_f64_f32(*v26);
                      v82 = vsubq_f64(v78, v73);
                      v83 = vmulq_f64(vsubq_f64(v81, v73), vextq_s8(v82, v82, 8uLL));
                      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v83, 1), v83)).u8[0] & 1) == 0)
                      {
                        v84 = vsubq_f64(v78, v81);
                        v85 = vmulq_f64(vsubq_f64(v77, v81), vextq_s8(v84, v84, 8uLL));
                        if (vmovn_s64(vcgeq_f64(v85, vdupq_laneq_s64(v85, 1))).u8[0])
                        {
                          goto LABEL_6;
                        }
                      }
                    }
                  }
                }
              }

              v64 = *(v64 + 5);
              if (!v64)
              {
                break;
              }
            }
          }

          v86 = *(v20 + 4);
          if (v86)
          {
            v56.i32[1] = v57;
            v87 = vrev64_s32(vcvt_u32_f32(vmul_f32(vsub_f32(v56, v63), *&a9.f64[0])));
            v88 = *&vorr_s8(vshl_n_s32(v87, 8uLL), v87) & 0xFF00FF00FF00FFLL;
            v89 = *&vorr_s8(vshl_n_s32(v88, 4uLL), v88) & 0xFF0FFF0FFF0FFF0FLL;
            v90 = vand_s8(vorr_s8(vshl_n_s32(v89, 2uLL), v89), 0x3333333333333333);
            v91 = vshl_u32(v90, 0x100000002);
            v90.i32[0] *= 2;
            v92 = vand_s8(vorr_s8(v91, v90), 0x55555555AAAAAAAALL);
            v93 = vorr_s8(v92, vdup_lane_s32(v92, 1)).u32[0];
            v94 = vcvtq_f64_f32(v19);
            while (*(v86 + 12) >= v93)
            {
              if (v86 != v21 && v86 != v25)
              {
                v95 = *v86;
                if (*v21 != v95 && *v20 != v95 && *v25 != v95)
                {
                  v96 = *(v86 + 2);
                  v97 = vmul_f32(vsub_f32(*(*(v86 + 3) + 4), v96), vrev64_s32(vsub_f32(v96, *(*(v86 + 2) + 4))));
                  if ((vcgt_f32(vdup_lane_s32(v97, 1), v97).u8[0] & 1) == 0)
                  {
                    v98 = vcvtq_f64_f32(*v22);
                    v99 = vcvtq_f64_f32(v96);
                    v100 = vsubq_f64(v99, v98);
                    v101 = vmulq_f64(vextq_s8(v100, v100, 8uLL), vsubq_f64(v94, v98));
                    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v101, 1), v101)).u8[0] & 1) == 0)
                    {
                      v28 = *v26;
                      v102 = vcvtq_f64_f32(*v26);
                      v103 = vsubq_f64(v99, v94);
                      a9 = vmulq_f64(vsubq_f64(v102, v94), vextq_s8(v103, v103, 8uLL));
                      *&a9.f64[0] = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(a9, 1), a9));
                      if ((LOBYTE(a9.f64[0]) & 1) == 0)
                      {
                        v104 = vsubq_f64(v99, v102);
                        v105 = vmulq_f64(vsubq_f64(v98, v102), vextq_s8(v104, v104, 8uLL));
                        if (vmovn_s64(vcgeq_f64(v105, vdupq_laneq_s64(v105, 1))).u8[0])
                        {
                          goto LABEL_6;
                        }
                      }
                    }
                  }
                }
              }

              v86 = *(v86 + 4);
              if (!v86)
              {
                break;
              }
            }
          }

LABEL_76:
          std::vector<unsigned short>::push_back[abi:nn200100](a3, v21);
          std::vector<unsigned short>::push_back[abi:nn200100](a3, v20);
          std::vector<unsigned short>::push_back[abi:nn200100](a3, v25);
          geo::Triangulator<float,unsigned short>::removeNode(a1, v20);
          v9 = *(v25 + 3);
          if (v9)
          {
            v10 = *(v9 + 2);
            v11 = *(v9 + 3);
            if (v10 != v11)
            {
              goto LABEL_4;
            }
          }

LABEL_78:
          if (v21)
          {
            geo::Triangulator<float,unsigned short>::removeNode(a1, v21);
          }

          geo::Triangulator<float,unsigned short>::removeNode(a1, v25);
          return 1;
        }

        v40 = *(v25 + 3);
        if (v40 == v21)
        {
          goto LABEL_76;
        }

        v41 = vcvtq_f64_f32(v19);
        v42 = vcvtq_f64_f32(v24);
        v43 = vsubq_f64(v41, v42);
        v44 = vcvtq_f64_f32(v28);
        a9 = vsubq_f64(v44, v41);
        v45 = vsubq_f64(v42, v44);
        while (1)
        {
          v46 = *v40;
          if (*v21 != v46 && *v20 != v46 && *v25 != v46)
          {
            v47 = *(v40 + 2);
            v48 = vmul_f32(vrev64_s32(vsub_f32(*(*(v40 + 3) + 4), v47)), vsub_f32(v47, *(*(v40 + 2) + 4)));
            if ((vcgt_f32(v48, vdup_lane_s32(v48, 1)).u8[0] & 1) == 0)
            {
              v49 = vcvtq_f64_f32(v47);
              v50 = vsubq_f64(v49, v42);
              v51 = vmulq_f64(vextq_s8(v50, v50, 8uLL), v43);
              if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v51, 1), v51)).u8[0] & 1) == 0)
              {
                v52 = vsubq_f64(v49, v41);
                v53 = vmulq_f64(a9, vextq_s8(v52, v52, 8uLL));
                if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v53, 1), v53)).u8[0] & 1) == 0)
                {
                  v54 = vsubq_f64(v49, v44);
                  v55 = vmulq_f64(v45, vextq_s8(v54, v54, 8uLL));
                  if (vmovn_s64(vcgeq_f64(v55, vdupq_laneq_s64(v55, 1))).u8[0])
                  {
                    break;
                  }
                }
              }
            }
          }

          v40 = *(v40 + 3);
          if (v40 == v21)
          {
            goto LABEL_76;
          }
        }
      }

LABEL_6:
      if (v25 == v9)
      {
        break;
      }

      v10 = *(v25 + 2);
      v11 = *(v25 + 3);
      v19 = v28;
      v20 = v25;
      if (v10 == v11)
      {
        goto LABEL_78;
      }
    }

    v109 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Wrapped around the polygon without finishing... :-(", 51);
    std::ios_base::getloc((v109 + *(*v109 - 24)));
    v110 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v110->__vftable[2].~facet_0)(v110, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v111 = 0;
    v112 = v25;
    do
    {
      ++v111;
      v112 = *(v112 + 3);
    }

    while (v112 != v9 && v112 != 0);
    v114 = MEMORY[0x1E69E5310];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "List has ", 9);
    std::to_string(&__p, v111);
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

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v114, p_p, size);
    v117 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], " nodes:", 7);
    std::ios_base::getloc((v117 + *(*v117 - 24)));
    v118 = std::locale::use_facet(&v127, MEMORY[0x1E69E5318]);
    (v118->__vftable[2].~facet_0)(v118, 10);
    std::locale::~locale(&v127);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\t", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v119 = MEMORY[0x1E69E5310];
    v120 = v25;
    do
    {
      std::to_string(&__p, *v120);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &__p;
      }

      else
      {
        v121 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v122 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v119, v121, v122);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v119, " ", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v120 = *(v120 + 3);
    }

    while (v120 != v9 && v120);
    std::ios_base::getloc((v119 + *(*v119 - 24)));
    v123 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v123->__vftable[2].~facet_0)(v123, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v124 = *(v25 + 2);
    if (v124)
    {
      do
      {
        v125 = v25;
        v25 = *(v25 + 3);
        geo::Triangulator<float,unsigned short>::removeNode(a1, v125);
      }

      while (v25 != v124);
      geo::Triangulator<float,unsigned short>::removeNode(a1, v25);
    }
  }

  else
  {
    v107 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Called earclipPolygon with a NULL head. Probably wrong to do so.", 64);
    std::ios_base::getloc((v107 + *(*v107 - 24)));
    v108 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v108->__vftable[2].~facet_0)(v108, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  return 0;
}

uint64_t geo::Triangulator<float,unsigned short>::removeNode(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v2 = *(a2 + 24);
    if (v2)
    {
      *(v2 + 16) = v3;
    }

    if (v3)
    {
      *(v3 + 24) = v2;
    }

    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    if (v4)
    {
      *(v4 + 40) = v5;
    }

    if (v5)
    {
      *(v5 + 32) = v4;
    }

    if (*(result + 16))
    {
      *(a2 + 52) = -1;
      *a2 = *(result + 40);
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t geo::Pool<geo::Triangulator<float,unsigned short>::Node>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(56 * *(a1 + 24), 0x1022040AC22688FuLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[56 * *(a1 + 24) - 56];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 56;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 56;
  }

  *(a1 + 40) = v4;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E4E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedCompressedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A8C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

float geo::effectiveVertexCount<float>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 3)
  {
    v10 = 0;
    v4 = *(a2 + 24);
    if (v4 && ((*(*v4 + 48))(v4, &v10), v10 = a1 - 1, (v5 = *(a2 + 24)) != 0))
    {
      result = (*(*v5 + 48))(v5, &v10);
      v10 = __PAIR64__(v7, LODWORD(result));
    }

    else
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__function::__func<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1},std::allocator<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1}>,gm::Matrix<float,2,1> ()(unsigned long)>::operator()(v8, v9);
    }
  }

  return result;
}

uint64_t std::__function::__func<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1},std::allocator<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1}>,gm::Matrix<float,2,1> ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1E450;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned long geo::effectiveVertexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1},std::allocator<unsigned long geo::effectiveVertexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1}>,gm::Matrix<float,2,1> ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3AD58;
  a2[1] = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::PolylineOverlayBatchKey const,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<md::PolylineOverlayBatchKey const,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 32;
  std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void sub_1B2FB902C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x1B8C62190](v3, v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildStrokeRibbon(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildStrokeRibbon(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E5E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t (****md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(uint64_t a1))(void)
{
  v2 = *(a1 + 40);
  v3 = mdm::zone_mallocator::instance(a1);
  v4 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(v3);
  v5 = *v2;
  v6 = *(a1 + 48);
  *(v4 + 49) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 0;
  *(v4 + 9) = 0;
  *v4 = &unk_1F2A2D908;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v4[120] = 0;
  v4[121] = v5;
  *(v4 + 124) = v6;
  v20[0] = v4;
  *(v4 + 48) = 0;
  v7 = **(a1 + 8);
  v8 = **(a1 + 16);
  if (v7 >= v8)
  {
    v9 = **(a1 + 16);
  }

  else
  {
    v9 = **(a1 + 8);
  }

  if (v7 <= v8)
  {
    v7 = **(a1 + 16);
  }

  *(v4 + 11) = v7 - v9 + 1;
  v10 = *(a1 + 32);
  *(v4 + 9) = **(a1 + 24) + 8 * v9;
  v19 = 0;
  v16 = 0;
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v12;
  v18 = v11;
  v13 = *a1;
  v20[1] = &v16;
  v14 = std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(v13, 0, 0);
  std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v14 + 6), v20);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  return std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](v20);
}

void sub_1B2FB9220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }

  std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x88uLL, 0x10A1040BF033D72uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(void *a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_19;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (*(v7 + 4) != a2 || *(v7 + 40) != a3)
  {
    goto LABEL_18;
  }

  return v7;
}

void sub_1B2FB971C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineOverlayRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::PolylineOverlayBatchKey const,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::PolylineOverlayRibbon::~PolylineOverlayRibbon(md::PolylineOverlayRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(**(a1 + 16) + 64);
  v5 = **(a1 + 32);
  ggl::BufferMemory::BufferMemory(v35);
  ggl::ResourceAccessor::accessIndexData(v36, v3, v4, 0, v5, 1, 1);
  ggl::BufferMemory::operator=(v35, v36);
  ggl::BufferMemory::~BufferMemory(v36);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v36, *(**(a1 + 16) + 96), 0, **(a1 + 40), 1, 1, v3);
  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = vdup_n_s32(0x46FFFF00u);
    do
    {
      if (geo::effectiveVertexCount<float>(v7))
      {
        v16 = v7[3];
        v15 = v7[4];
        if (v15 != v16)
        {
          v17 = *v7;
          v18 = v7[1] - *v7;
          if (v18)
          {
            v19 = 0;
            if ((v18 >> 3) <= 1)
            {
              v20 = 1;
            }

            else
            {
              v20 = v18 >> 3;
            }

            v21 = (v17 + 4);
            v22 = (v35[5] + 16 * v9 + 28);
            do
            {
              if ((v18 >> 3) - 1 == v19)
              {
                v23 = 0;
              }

              else
              {
                v23 = v19 + 1;
              }

              if (v19)
              {
                v24 = v19;
              }

              else
              {
                v24 = v18 >> 3;
              }

              v25 = v19 + 1;
              v26 = (v17 + 8 * v23);
              v12.i32[0] = *(v21 - 1);
              v13.i32[0] = *v21;
              v27 = v17 + 8 * v24;
              v14.i32[0] = *(v27 - 8);
              v28.i32[0] = *(v27 - 4);
              LODWORD(v27) = (*v12.i32 * 65535.0);
              v29 = (*v21 * 65535.0);
              *(v22 - 10) = v27;
              *(v22 - 9) = v29;
              *(v22 - 2) = v27;
              *(v22 - 1) = v29;
              v14.i32[1] = v12.i32[0];
              v12.i32[1] = *v26;
              *v12.i8 = vsub_f32(*v12.i8, *v14.f32);
              v28.i32[1] = v13.i32[0];
              v13.i32[1] = v26[1];
              *v13.i8 = vsub_f32(*v13.i8, v28);
              *v14.f32 = vdiv_f32(v11, vsqrt_f32(vmla_f32(vmul_f32(*v12.i8, *v12.i8), *v13.i8, *v13.i8)));
              v14 = vzip1q_s32(v14, v14);
              v12 = vcvtq_s32_f32(vmulq_f32(v14, vzip1q_s32(v12, v13)));
              *v12.i8 = vmovn_s32(v12);
              *(v22 - 7) = v12.i64[0];
              *(v22 - 3) = v12.i64[0];
              *(v22 - 4) = 1065353216;
              *v22 = 0;
              v22 += 8;
              v21 += 2;
              v19 = v25;
            }

            while (v20 != v25);
          }

          v30 = v18 >> 2;
          v31 = 2 * (((v15 - v16) >> 3) + ((v15 - v16) >> 4));
          v32 = (v36[5] + 2 * v10 + 6);
          do
          {
            v33 = v9 + 2 * *v16;
            *(v32 - 3) = v33;
            v34 = v9 + 2 * *(v16 + 8);
            *(v32 - 2) = v9 + 2 * *(v16 + 8);
            *(v32 - 1) = ++v33;
            *v32 = v33;
            v32[1] = v34;
            v32[2] = v34 + 1;
            v16 += 16;
            v32 += 6;
          }

          while (v16 != v15);
          v9 += v30;
          v10 += v31;
        }
      }

      v7 += 11;
    }

    while (v7 != v8);
  }

  ggl::BufferMemory::~BufferMemory(v36);
  ggl::BufferMemory::~BufferMemory(v35);
}

void sub_1B2FB9A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  ggl::BufferMemory::~BufferMemory(&a15);
  ggl::BufferMemory::~BufferMemory(&a9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E5A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolygonOverlay::AntialiasVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1E528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v23, **(**(a1 + 16) + 64), 0, **(a1 + 24), *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v21, *(**(a1 + 16) + 96), 0, **(a1 + 32), 1, 1, v3);
  v20 = a1;
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      v9 = geo::triangulatedIndexCount<float>(v5);
      if (!v9)
      {
        goto LABEL_25;
      }

      v10 = v5[1] - *v5;
      if (v10)
      {
        v11 = v10 >> 3;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = (v23[5] + 8 * v7 + 4);
        v13 = (*v5 + 4);
        do
        {
          v14 = (*v13 * 65535.0);
          *(v12 - 2) = (*(v13 - 1) * 65535.0);
          *(v12 - 1) = v14;
          *v12 = 0x7FFF;
          v12 += 2;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v24.i64[1] = 0;
      v25 = 0;
      v24.i64[0] = &v24.i64[1];
      v26 = xmmword_1B33B1630;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v30 = 0;
      v32 = 4;
      v34 = 0;
      v35 = 0;
      __p = 0;
      md::Triangulator<float>::triangulate(&v24, v5);
      v15 = __p;
      v16 = v34 - __p;
      if (v9 == (v34 - __p) >> 1)
      {
        if (v34 != __p)
        {
          v17 = 0;
          v18 = v22 + 2 * v8;
          do
          {
            *(v18 + 2 * v17) = v15[v17] + v7;
            ++v17;
          }

          while (v9 != v17);
LABEL_22:
          v34 = v15;
          operator delete(v15);
          goto LABEL_23;
        }
      }

      else
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v19 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v37 = v9;
          v38 = 2048;
          v39 = (v34 - __p) >> 1;
          _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "Mismatching number of indices, indexCount: %zu, triangulatedIndexCount: %zu", buf, 0x16u);
        }

        bzero((v22 + 2 * v8), 2 * v9);
        v15 = __p;
      }

      if (v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&v24);
      if (v9 != v16 >> 1)
      {
        **(v20 + 40) = 1;
        break;
      }

      v8 += v9;
      v7 += (v5[1] - *v5) >> 3;
LABEL_25:
      v5 += 11;
    }

    while (v5 != v6);
  }

  ggl::BufferMemory::~BufferMemory(v21);
  ggl::BufferMemory::~BufferMemory(v23);
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E498;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::PolygonOverlayMeshBuilder::buildPolygonMeshesFromMeshInfos(uint64_t *a1, uint64_t **a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, int *a7)
{
  *a1 = 0;
  a1[1] = 0;
  md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(&v21, a2);
  v14 = v21;
  v21 = 0;
  std::unique_ptr<md::Mesh>::reset[abi:nn200100](a1, v14);
  std::unique_ptr<md::Mesh>::reset[abi:nn200100](&v21, 0);
  v15 = a4[1];
  v20[0] = *a4;
  v20[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a5[1];
  v19[0] = *a5;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v17 = *a7;
  md::PolygonOverlayMeshBuilder::buildStrokeRibbon(&v21, *a2, a2[1], 0.0, a3, v20, v19, a6, &v18, &v17);
}

void sub_1B2FBA2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  MEMORY[0x1B8C62190](v17, 0x10F1C4063721C39);
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  v19 = v16[1];
  v16[1] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::unique_ptr<md::Mesh>::reset[abi:nn200100](v16, 0);
  _Unwind_Resume(a1);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1E6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::BuildingFacade::BuildingMesh::~BuildingMesh(ggl::BuildingFacade::BuildingMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::BuildingFacade::BuildingMesh::~BuildingMesh(ggl::BuildingFacade::BuildingMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

double md::MapDataAccess::groundCoordinateForScreenCursor(double *a1, uint64_t a2, double *a3, int32x2_t a4)
{
  v6 = *(a2 + 16);
  if (*(v6 + 376) * *(v6 + 368) == 0.0)
  {
    v7 = vdupq_n_s64(0xC00921FB54442D18);
    *a1 = v7;
    a1[2] = 0.0;
  }

  else
  {
    v7.i64[0] = gdc::ViewDataAccess::worldRayFromScreenCursor(v11, v6, a3, a4).n128_u64[0];
    v9 = *(a2 + 9);
    if ((v9 - 1) < 2)
    {
      md::MapDataAccess::_globeGroundCoordinateForScreenPoint(a1, a2, a3, v11, 0, 0);
    }

    else if (v9 == 3)
    {
      *a1 = *a3;
      v7.i64[0] = a3[2];
      a1[2] = *v7.i64;
    }

    else if (!*(a2 + 9))
    {
      *v7.i64 = md::MapDataAccess::_mercatorGroundCoordinateForScreenPoint(a1, v11, a3[2]);
    }
  }

  return *v7.i64;
}

double md::MapDataAccess::upForCoordinate(unsigned __int8 a1, double *a2)
{
  if (a1 - 1 > 2)
  {
    return 0.0;
  }

  v17[3] = v9;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = v6;
  v17[7] = v5;
  v17[8] = v4;
  v17[9] = v2;
  v17[10] = v3;
  v10 = a2[1];
  v11 = a2[2];
  v12 = __sincos_stret(*a2);
  v13 = 6378137.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0);
  v14 = (v13 + v11) * v12.__cosval;
  v15 = __sincos_stret(v10);
  v17[0] = v14 * v15.__cosval;
  v17[1] = v14 * v15.__sinval;
  v17[2] = (v11 + v13 * 0.99330562) * v12.__sinval;
  return gm::Matrix<double,3,1>::normalized<int,void>(v17);
}

float md::MapDataAccess::cameraFromFrame(gdc::Camera *a1, gdc::Camera *this, uint64_t a3)
{
  v6 = gdc::Camera::widestFieldOfView(this);
  v7 = *gdc::Camera::near(this);
  v8 = gdc::Camera::far(this);
  v9 = gdc::Camera::Camera(a1, a3, this + 368, v6, v7, *v8, *(this + 60));
  v10 = gdc::Camera::horizontalOffset(v9, *(this + 123));
  gdc::Camera::setVerticalOffset(a1, v10);
  v12 = gdc::Camera::horizontalOffset(v11, *(this + 122));

  return gdc::Camera::setHorizontalOffset(a1, v12);
}

void md::Anchor::setMercatorPoint(uint64_t a1, double a2, double a3, double a4)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  if (*(a1 + 16) != *&a2 || *(a1 + 24) != *&a3 || *(a1 + 32) != *&a4)
  {
    *(a1 + 32) = a4;
    *(a1 + 16) = v14;
    v7 = *(a1 + 16) * 6.28318531;
    v8 = exp(*(a1 + 24) * 6.28318531 + -3.14159265);
    v13 = atan(v8);
    v9 = fmod(v7, 6.28318531);
    v10 = fmod(v9 + 6.28318531, 6.28318531);
    v11 = *(a1 + 32);
    v12.f64[0] = v13;
    v12.f64[1] = v10;
    *(a1 + 40) = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v12);
    *(a1 + 56) = v11;

    md::Anchor::worldPointDidChange(a1);
  }
}

double md::MercatorAnchor::worldPoint(md::MercatorAnchor *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  (*(*this + 56))(this);
  return result;
}

void md::GlobeMercatorAnchor::worldPointWithRouteElevationOffset(md::GlobeMercatorAnchor *this)
{
  if (*(this + 1))
  {
    v1 = (*(*this + 56))(this) * 6.28318531;
    v3 = exp(v2 * 6.28318531 + -3.14159265);
    v4 = atan(v3) * 2.0 + -1.57079633;
    v5 = fmod(v1, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
    __sincos_stret(v4);
    __sincos_stret(v6);
  }
}

void md::GlobeMercatorAnchor::worldPoint(md::GlobeMercatorAnchor *this)
{
  if (*(this + 1))
  {
    v1 = (*(*this + 56))(this) * 6.28318531;
    v3 = exp(v2 * 6.28318531 + -3.14159265);
    v4 = atan(v3) * 2.0 + -1.57079633;
    v5 = fmod(v1, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
    __sincos_stret(v4);
    __sincos_stret(v6);
  }
}

void md::GlobeMercatorAnchor::~GlobeMercatorAnchor(md::GlobeMercatorAnchor *this)
{
  md::Anchor::~Anchor(this);

  JUMPOUT(0x1B8C62190);
}

void *md::MercatorTerrainAnchor::resetAnchorManager(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    this = md::AnchorManager::clearTerrainHeightForAnchor(*(v1 + 16), this);
    v2[1] = 0;
  }

  return this;
}

void md::MercatorTerrainAnchor::setMercatorPoint(md::MercatorTerrainAnchor *a1, double a2, double a3, double a4)
{
  if ((*(*a1 + 56))(a1) != *&a2 || v8 != *&a3 || v9 != *&a4)
  {
    v12 = *(a1 + 1);
    if (v12)
    {
      md::AnchorManager::clearTerrainHeightForAnchor(*(v12 + 16), a1);

      md::Anchor::setMercatorPoint(a1, a2, a3, a4);
    }
  }
}

double md::GlobeMercatorTerrainAnchor::worldPointWithRouteElevationOffset(md::GlobeMercatorTerrainAnchor *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = md::AnchorManager::mercatorTerrainPointForAnchor(*(this + 1), this);
    v5 = v4 + *(v1 + 68);
  }

  else
  {
    (*(*this + 56))(this);
    v5 = v6;
  }

  v7 = v2 * 6.28318531;
  v8 = exp(v3 * 6.28318531 + -3.14159265);
  v9 = atan(v8) * 2.0 + -1.57079633;
  v10 = fmod(v7, 6.28318531);
  v11 = fmod(v10 + 6.28318531, 6.28318531) + -3.14159265;
  v12 = __sincos_stret(v9);
  return (6378137.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0) + v5) * v12.__cosval * __sincos_stret(v11).__cosval;
}

void md::GlobeMercatorTerrainAnchor::worldPoint(md::GlobeMercatorTerrainAnchor *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = md::AnchorManager::mercatorTerrainPointForAnchor(v2, this) * 6.28318531;
    v5 = exp(v4 * 6.28318531 + -3.14159265);
    v6 = atan(v5) * 2.0 + -1.57079633;
    v7 = fmod(v3, 6.28318531);
    v8 = fmod(v7 + 6.28318531, 6.28318531) + -3.14159265;
    __sincos_stret(v6);
    __sincos_stret(v8);
  }

  else
  {
    v11[0] = (*(*this + 56))(this);
    v11[1] = v9;
    v11[2] = v10;
    geo::Geocentric<double>::Geocentric<double>(&v12, v11);
  }
}

void md::GlobeMercatorTerrainAnchor::~GlobeMercatorTerrainAnchor(md::GlobeMercatorTerrainAnchor *this)
{
  md::MercatorTerrainAnchor::~MercatorTerrainAnchor(this);

  JUMPOUT(0x1B8C62190);
}

void md::TrafficSkeletonTileDecoder::decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E69E9840];
  if (((*(**a3 + 16))() & 1) == 0)
  {
    operator new();
  }

  operator new();
}

void std::__shared_ptr_emplace<md::TrafficSkeletonTileResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::TrafficSkeletonTileResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1EA60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<zilch::TrafficSkeletonTile>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<zilch::TrafficSkeletonTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1EA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void **std::default_delete<zilch::TrafficSkeletonTile>::operator()[abi:nn200100](void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<zilch::TrafficSkeletonTile *,std::shared_ptr<zilch::TrafficSkeletonTile>::__shared_ptr_default_delete<zilch::TrafficSkeletonTile,zilch::TrafficSkeletonTile>,std::allocator<zilch::TrafficSkeletonTile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::OcclusionTest::generatePixelRectangleTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::resize(&v9, *(a1 + 239));
  v7 = v9;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  md::OcclusionTest::generatePixelRectPoints(a1, *(a1 + 80), a4, v9, v8);
  md::OcclusionTest::setupPointProbes(a1, a3, a4, v7, v8);
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
}

void sub_1B2FBBC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::OcclusionTest::generatePixelRectPoints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8))
  {
    v10 = 1.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v11 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
    v12 = v13;
    v10 = v14;
  }

  if (*(a1 + 228) == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      *(&v46 + i) = *(a1 + 216 + 4 * i);
    }

    v16 = v47;
    v54 = -(*(&v46 + 1) * v10 - v47 * v12);
    v55 = -(v47 * v11 - *&v46 * v10);
    v56 = -(*&v46 * v12 - *(&v46 + 1) * v11);
    v57 = v11;
    v58 = v12;
    v59 = v10;
    v60 = v46;
  }

  else
  {
    for (j = 0; j != 24; j += 8)
    {
      *(&v46 + j) = *(a3 + 136 + j) - *(a2 + j);
    }

    v18 = -(v47 * v11 - *&v46 * v10);
    v19 = -(*&v46 * v12 - *(&v46 + 1) * v11);
    *&v46 = -(*(&v46 + 1) * v10 - v47 * v12);
    *(&v46 + 1) = v18;
    v47 = v19;
    v20 = gm::Matrix<double,3,1>::normalized<int,void>(&v46);
    v22 = -(v20 * v10 - v21 * v11);
    v54 = v20;
    v55 = v23;
    v56 = v21;
    v57 = v11;
    v16 = -(v23 * v11 - v20 * v12);
    v58 = v12;
    v59 = v10;
    *&v60 = -(v21 * v12 - v23 * v10);
    *(&v60 + 1) = v22;
  }

  v61 = v16;
  for (k = 0; k != 24; k += 8)
  {
    *(&v46 + k) = *(a2 + k) - *(a3 + 136 + k);
  }

  v25 = 0;
  v26 = 0.0;
  do
  {
    v26 = v26 + *(a3 + 160 + v25) * *(&v46 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  v27 = 0;
  v28 = *(a3 + 320) * v26;
  do
  {
    *(&v54 + v27) = *(&v54 + v27) * v28;
    v27 += 8;
  }

  while (v27 != 24);
  do
  {
    *(&v54 + v27) = *(&v54 + v27) * v28;
    v27 += 8;
  }

  while (v27 != 48);
  v29 = 0;
  v30 = &v46;
  v31 = &v54;
  do
  {
    v32 = 0;
    v33 = v30;
    do
    {
      *v33 = v31[v32];
      v33 += 2;
      v32 += 3;
    }

    while (v32 != 9);
    ++v29;
    v30 = (v30 + 8);
    ++v31;
  }

  while (v29 != 3);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = *a2;
  v52 = *(a2 + 16);
  v53 = 0x3FF0000000000000;
  v34 = *(a1 + 204);
  v35 = *(a1 + 208);
  v36 = *(a1 + 212) - v34;
  *&v64 = *(a1 + 200);
  *(&v64 + 1) = (v34 + (v36 * 0.25));
  v65 = 0;
  v66[0] = v35;
  v66[1] = *(&v64 + 1);
  v66[2] = 0.0;
  *&v67 = v64;
  *(&v67 + 1) = (v34 + (v36 * 0.75));
  v68 = 0;
  v69[0] = v35;
  v69[1] = *(&v67 + 1);
  v69[2] = 0.0;
  if (a5)
  {
    v37 = 0;
    v38 = 0.0;
    do
    {
      v39 = v38;
      v40 = 0;
      if (v37)
      {
        v62 = v64;
        v63 = v65;
        do
        {
          *(&v62 + v40 * 8) = *(&v62 + v40 * 8) + (v66[v40] - *(&v62 + v40 * 8)) * v39;
          ++v40;
        }

        while (v40 != 3);
      }

      else
      {
        v62 = v67;
        v63 = v68;
        do
        {
          *(&v62 + v40 * 8) = *(&v62 + v40 * 8) + (v69[v40] - *(&v62 + v40 * 8)) * v39;
          ++v40;
        }

        while (v40 != 3);
      }

      v41 = a4 + 24 * v37;
      v44 = v62;
      v45 = v63;
      *v41 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(&v46, &v44);
      *(v41 + 8) = v42;
      *(v41 + 16) = v43;
      v38 = v38 + (1.0 / (a5 - 1));
      ++v37;
    }

    while (v37 != a5);
  }
}

void md::OcclusionTest::setupPointProbes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (*(a1 + 237) - 1 >= 2)
  {
    if (!*(a1 + 237))
    {
      v11 = *(a1 + 8);

      md::OcclusionTest::populatePointProbe(v11, a2, a3, 0, a4, a5);
    }
  }

  else if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      md::OcclusionTest::populatePointProbe(*(a1 + 8), a2, a3, i, v6, 1);
      v6 += 24;
    }
  }
}

void md::OcclusionTest::populatePointProbe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 8 * a4);
  v11 = 3 * v10;
  md::OcclusionQueryResource::initialize(*(a2 + 96) + 24 * v10);
  v12 = (*(a2 + 96) + 8 * v11);
  *(*v12 + 24) = *(a2 + 80);
  ggl::BufferData::resize(**(v12[2] + 64), a6);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v22, **(v12[2] + 64), 0, a6);
  if (a6)
  {
    v13 = 0;
    v14 = v22[5];
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *&v22[i + 6] = *(a5 + i * 8) - *(a3 + 136 + i * 8);
      }

      for (j = 0; j != 3; ++j)
      {
        v17 = *&v22[j + 6];
        *(&v20 + j) = v17;
      }

      v18 = v14 + 16 * v13;
      v19 = v21;
      *v18 = v20;
      *(v18 + 8) = v19;
      *(v18 + 12) = 1065353216;
      ++v13;
      a5 += 24;
    }

    while (v13 != a6);
  }

  ggl::BufferMemory::~BufferMemory(v22);
}

void md::OcclusionTest::generateLabeledCylinderTest(uint64_t a1, uint64_t a2, float *a3, uint64_t a4)
{
  v6 = 0;
  v56[12] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 80);
  v8 = a4 + 136;
  do
  {
    *(&v54 + v6) = *(a4 + v6 + 136) - *(v7 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  for (i = 0; i != 3; ++i)
  {
    v10 = *(&v54 + i);
    v51[i] = v10;
  }

  v11 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + (*(a1 + v11 * 4 + 184) * v51[v11]);
    ++v11;
  }

  while (v11 != 3);
  for (j = 0; j != 3; ++j)
  {
    *(&v47 + j) = *(a1 + 4 * j + 184);
  }

  v14 = 0;
  v15 = v12;
  do
  {
    *(&v54 + v14) = *(&v47 + v14) * v15;
    v14 += 8;
  }

  while (v14 != 24);
  v16 = 0;
  v52 = v54;
  v53 = v55;
  do
  {
    *(&v54 + v16) = *(&v52 + v16) + *(v7 + v16);
    v16 += 8;
  }

  while (v16 != 24);
  v17 = 0;
  v49 = v54;
  v50 = v55;
  do
  {
    *(&v54 + v17) = *(a4 + v17 + 136) - *(&v49 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v18 = 0;
  v19 = 0.0;
  do
  {
    v19 = v19 + *(&v54 + v18) * *(&v54 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  v20 = sqrt(v19);
  v21 = *(a1 + 196);
  if (v21 >= v20)
  {
    v22 = 1;
    goto LABEL_21;
  }

  if (a3[4] < v20)
  {
    v22 = 2;
LABEL_21:
    *(a1 + 238) = v22;
    return;
  }

  for (k = 0; k != 3; ++k)
  {
    *(&v54 + k * 4) = (v21 * v51[k]) * (1.0 / v20);
  }

  v24 = 0;
  *&v47 = v54;
  DWORD2(v47) = DWORD2(v54);
  do
  {
    *(&v52 + v24) = *(&v47 + v24);
    ++v24;
  }

  while (v24 != 3);
  for (m = 0; m != 24; m += 8)
  {
    *(&v54 + m) = *(&v52 + m) + *(v7 + m);
  }

  v26 = a3[6];
  if (v26 != 3.4028e38)
  {
    v27 = 0;
    v28 = 0.0;
    do
    {
      v28 = v28 + (v51[v27] * v51[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = 0;
    v30 = fabs(v15) / sqrtf(v28);
    v31 = (a3[5] + ((fminf(v26, v20) - a3[5]) * v30));
    v32 = &v54;
    do
    {
      for (n = 0; n != 24; n += 8)
      {
        *(&v52 + n) = *(v32 + n) - *(v8 + n);
      }

      v34 = 0;
      v47 = v52;
      v48 = v53;
      v35 = 0.0;
      do
      {
        v35 = v35 + *(&v47 + v34) * *(&v47 + v34);
        v34 += 8;
      }

      while (v34 != 24);
      if (sqrt(v35) > v31)
      {
        v36 = &v54 + 24 * v29;
        v37 = gm::Matrix<double,3,1>::normalized<int,void>(&v47);
        v38 = 0;
        *v44 = v37;
        v44[1] = v39;
        v44[2] = v40;
        do
        {
          *(&v52 + v38 * 8) = *&v44[v38] * v31;
          ++v38;
        }

        while (v38 != 3);
        v41 = 0;
        v45 = v52;
        v46 = v53;
        do
        {
          *(&v52 + v41) = *(&v45 + v41) + *(v8 + v41);
          v41 += 8;
        }

        while (v41 != 24);
        v42 = v53;
        *v36 = v52;
        *(v36 + 2) = v42;
      }

      ++v29;
      v32 = (v32 + 24);
    }

    while (v29 != 5);
  }

  md::OcclusionTest::generatePixelRectPoints(a1, &v54, a4, v56, 4);
  md::OcclusionTest::setupPointProbes(a1, a3, a4, &v54, 5);
}

void md::OcclusionTest::generateLineSegmentTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 8);
  v9 = 3 * v8;
  md::OcclusionQueryResource::initialize(*(a3 + 96) + 24 * v8);
  v10 = 0;
  v11 = (*(a3 + 96) + 8 * v9);
  *(*v11 + 24) = *(a3 + 48);
  v12 = *(a1 + 80);
  do
  {
    *(&v35 + v10) = *(v12 + v10) - *(a4 + 136 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  for (i = 0; i != 3; ++i)
  {
    v14 = *(&v35 + i);
    *(&v37 + i) = v14;
  }

  v15 = *(a1 + 196);
  v16 = 0.0;
  if (*(a2 + 281) == 2)
  {
    v16 = *(a1 + 232);
  }

  v17 = v16 + v15;
  if (v15 == (v16 + v15))
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  ggl::BufferData::resize(**(v11[2] + 64), v18);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v35, **(v11[2] + 64), 0, v18);
  v19 = 0;
  v20 = v38;
  v21 = v36;
  *v36 = v37;
  *(v21 + 2) = v20;
  *(v21 + 3) = 1065353216;
  v22 = a1 + 184;
  v23 = *(a3 + 8);
  do
  {
    v24 = v23 * v15;
    *(&v39 + v19) = *(v22 + v19) * v24;
    v19 += 4;
  }

  while (v19 != 12);
  v25 = 0;
  v33 = v39;
  v34 = v40;
  do
  {
    *(&v39 + v25) = *(&v33 + v25) + *(&v37 + v25);
    v25 += 4;
  }

  while (v25 != 12);
  v26 = v40;
  v21[2] = v39;
  *(v21 + 6) = v26;
  *(v21 + 7) = 1065353216;
  if (v15 != v17)
  {
    v27 = 0;
    v28 = v23 * v17;
    do
    {
      *(&v39 + v27) = *(v22 + v27) * v28;
      v27 += 4;
    }

    while (v27 != 12);
    v29 = 0;
    v31 = v39;
    v32 = v40;
    do
    {
      *(&v39 + v29) = *(&v31 + v29) + *(&v37 + v29);
      v29 += 4;
    }

    while (v29 != 12);
    v30 = v40;
    v21[4] = v39;
    *(v21 + 10) = v30;
    *(v21 + 11) = 1065353216;
  }

  ggl::BufferMemory::~BufferMemory(&v35);
}

void geo::small_vector_base<gm::Matrix<double,3,1>>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(24 * v9, 0x1000040504FFAC1uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v14 += 24;
      v12 += 3;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

uint64_t md::StandardLabeler::stylesheetAnimationDidFinish(uint64_t this)
{
  v1 = *(this + 72);
  v2 = *(this + 80);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    this = md::Label::stopStyleAnimation(v3);
  }

  return this;
}

void md::StandardLabeler::layoutDisplayableLabelsForStaging(md::StandardLabeler *this)
{
  v4 = 257;
  v5 = 1;
  v1 = *(this + 9);
  for (i = *(this + 10); v1 != i; v1 += 2)
  {
    if (*(*v1 + 844) == 2)
    {
      md::Label::layoutForStaging(*v1, *(this + 3), *(this + 6), &v4);
    }
  }
}

uint64_t md::StandardLabeler::resetOcclusionQueries(uint64_t this)
{
  v1 = *(this + 72);
  for (i = *(this + 80); v1 != i; v1 += 2)
  {
    v3 = *v1;
    v3[480] = 1;
    if (v3[844] != 2)
    {
      v3[485] = 0;
    }
  }

  return this;
}

uint64_t md::GenericLabelCollidableItem::collidesWithObject(md::GenericLabelCollidableItem *this, const md::CollisionObject *a2)
{
  v2 = a2;
  if (*(this + 216) == 0 || (*(a2 + 200) & *(this + 256)) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 21);
  if (*(this + 28))
  {
    v5 = (this + 56);
    if (v4)
    {
      return md::CollisionObject::circlesCollideWithCircles(v5, a2);
    }

    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if (v4)
  {
    a2 = (this + 56);
    v5 = v2;
    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if ((*(this + 252) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 56), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 56), a2);
  }
}

void md::GenericLabelCollidableItem::~GenericLabelCollidableItem(void **this)
{
  *this = &unk_1F2A1EDF0;
  md::CollisionObject::~CollisionObject(this + 7);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1EDF0;
  md::CollisionObject::~CollisionObject(this + 7);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTile>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::Label>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void ggl::DaVinci::ElevatedStrokeColorPipelineState::~ElevatedStrokeColorPipelineState(ggl::DaVinci::ElevatedStrokeColorPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

uint64_t ggl::DaVinci::ElevatedStrokeColorPipelineSetup::textureIsEnabled(ggl::DaVinci::ElevatedStrokeColorPipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 2) + 339);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::ElevatedStrokeColorPipelineSetup::constantDataIsEnabled(ggl::DaVinci::ElevatedStrokeColorPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 339);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 336);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::DaVinci::ElevatedStrokeColorPipelineSetup::~ElevatedStrokeColorPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState::~ElevatedStrokeColorWithDistancePipelineState(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::typedReflection(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection();
    ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection(void)::r;
    unk_1EB82E1A0 = &ggl::DaVinci::pipelineDataElevatedStrokeColorWithDistancePipelineDeviceStructs(void)::ref;
    qword_1EB82E1A8 = 0;
    {
      ggl::DaVinci::pipelineDataElevatedStrokeColorWithDistancePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB82E0F8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB82E100 = ggl::Tile::Clipping::reflection(void)::reflection;
      unk_1EB82E108 = ggl::DaVinci::ClippedStroke::reflection(void)::reflection;
      qword_1EB82E110 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB82E1B0 = &ggl::DaVinci::pipelineDataElevatedStrokeColorWithDistancePipelineConstantStructs(void)::ref;
    unk_1EB82E1B8 = xmmword_1B33B1000;
  }
}

uint64_t ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::textureIsEnabled(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 2) + 339);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::constantDataIsEnabled(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 339);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 336);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::~ElevatedStrokeColorWithDistancePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::ARWalkingArrivalLabelFeature::styleAttributes@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 200);
  *a2 = *(result + 192);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::ARWalkingArrivalLabelFeature::populateStyleQueries(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = (*(*a1 + 496))(a1);
  if (v2)
  {
    v2 = (*(*a1 + 488))(a1, 0);
    if (v2)
    {
      operator new();
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v9[4] = v13;
  v3 = mdm::zone_mallocator::instance(v2);
  v4 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v3, 1);
  *v4 = 0x100010060;
  v5 = (v4 + 1);
  v6 = v4 - (v11 - v10);
  memcpy(v6, v10, v11 - v10);
  v7 = v10;
  v8 = v12;
  v10 = v6;
  v11 = v5;
  v12 = v5;
  v9[2] = v7;
  v9[3] = v8;
  v9[0] = v7;
  v9[1] = v7;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(v9);
  v11 = v5;
  (*(*a1 + 560))(a1, &v10);
  _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2FBD8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x1B8C62190](v9, 0x1012C40B602C572);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
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

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

void sub_1B2FBDB90(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingArrivalLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 256);
  *a2 = *(this + 248);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::ARWalkingArrivalLabelFeature::facingVector(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 264);
  v3 = *(result + 272);
  if (v2 != v3)
  {
    while (*a2 != *v2)
    {
      v2 += 160;
      if (v2 == v3)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      return *(v2 + 56);
    }
  }

  return result;
}

__int128 *md::ARWalkingArrivalLabelFeature::labelPoint(md::LabelPoint *a1, _DWORD *a2)
{
  v2 = *(a1 + 33);
  v3 = *(a1 + 34);
  if (v2 != v3)
  {
    while (*a2 != *v2)
    {
      v2 += 40;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    if (v2 != v3)
    {
      return (v2 + 2);
    }
  }

LABEL_7:
  md::LabelPoint::NullPoint(a1);
  return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
}

void md::ARWalkingArrivalLabelFeature::newRootPart(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(**(a3 + 8) + 112))(*(a3 + 8), a3 + 48);
  md::LabelPoint::coordinate(&v15, v4);
  v5 = tan(v15.f64[0] * 0.00872664626 + 0.785398163);
  log(v5);
  v6 = a1[12];
  __asm { FMOV            V0.4S, #1.0 }

  if ((a1[13] - v6) >= 0x11)
  {
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      v14 = a1[27];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      LOBYTE(v20) = 0;
      v23 = 0;
      v17 = 0;
      v18 = 0;
      __p = 0;
      v19 = 0;
      md::LabelStyle::pointIconImageKey();
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  operator new();
}

void sub_1B2FBE244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    if (!v40)
    {
LABEL_3:
      if (!v38)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  if (!v38)
  {
LABEL_4:
    if (!v39)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  v39 = a28;
  if (!a28)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  goto LABEL_6;
}

void md::ARArrivalExternalMeshRequest::~ARArrivalExternalMeshRequest(md::ARArrivalExternalMeshRequest *this)
{
  md::ARArrivalExternalMeshRequest::~ARArrivalExternalMeshRequest(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1F238;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelExternalMeshRequest::~LabelExternalMeshRequest(this);
}

void std::__shared_ptr_emplace<md::ARArrivalExternalMeshRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1F200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TextureBackedLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A205C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARWalkingArrivalLabelFeature::~ARWalkingArrivalLabelFeature(md::ARWalkingArrivalLabelFeature *this)
{
  *this = &unk_1F2A1EEE8;
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 28) = &unk_1F2A39040;

  v4 = *(this + 27);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1EEE8;
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 28) = &unk_1F2A39040;

  v4 = *(this + 27);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::LabelFeature::~LabelFeature(this);
}

void geo::_retain_ptr<VKARWalkingArrivalFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A39040;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingArrivalFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A39040;

  return a1;
}

void *geo::_retain_ptr<VKARWalkingArrivalFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A39040;
  a1[1] = v3;
  return a1;
}

double geo::OrientedBox<double,2u,double,double>::operator=(uint64_t a1, uint64_t a2)
{
  for (i = 24; i != 48; i += 8)
  {
    *(a1 + i) = *(a2 + i);
  }

  v3 = 0;
  *(a1 + 48) = *(a2 + 48);
  do
  {
    *(a1 + v3) = *(a2 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<ARArrivalFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARArrivalFeatureDedupingGroup>,std::allocator<ARArrivalFeatureDedupingGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ARArrivalFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARArrivalFeatureDedupingGroup>,std::allocator<ARArrivalFeatureDedupingGroup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *ARArrivalFeatureDedupingGroup::prepareForCollision(ARArrivalFeatureDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 != v4)
  {
    while (((*(**v5 + 16))() & 1) != 0)
    {
      ++v5;
LABEL_4:
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    v6 = v4 - 1;
    while (v6 != v5)
    {
      v4 = v6;
      v7 = *v6--;
      if ((*(*v7 + 16))(v7))
      {
        v8 = *v5;
        *v5++ = *v4;
        *v4 = v8;
        goto LABEL_4;
      }
    }
  }

  v4 = v5;
LABEL_11:
  v9 = *(this + 1);
  v10 = 126 - 2 * __clz((v4 - v9) >> 3);
  v11 = *(a2 + 53) + 136;
  v19[0] = this;
  v19[1] = v11;
  if (v4 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,false>(v9, v4, v19, v12, 1);
  v13 = *(this + 2);
  v14 = *(this + 1);
  if (v14 != v13)
  {
    v15 = 0;
    v16 = *(this + 1);
    do
    {
      v17 = *v16++;
      *(v17 + 32) = v15++;
    }

    while (v16 != v13);
    *(this + 9) = *v14;
  }

  return std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 10);
}

int8x16_t *std::__introsort<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,false>(int8x16_t *result, unint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v469 = result;
LABEL_2:
  v462 = a2 - 1;
  v6 = v469;
  while (1)
  {
    v7 = a2;
    v8 = (a2 - v6) >> 3;
    v469 = v6;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return result;
    }

    result = v6;
    v7 = a2;
    if (v8 == 2)
    {
      v296 = *v462;
      v297 = v6->i64[0];
      v470 = v6->i64[0];
      v471 = v296;
      v298 = *a3;
      v299 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v296);
      if (v299)
      {
        v300 = v299[3];
      }

      else
      {
        v300 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v296 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v298 + 80), v296) + 3) = v300;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v298 + 80), v297);
      if (result)
      {
        v427 = *&result[1].i64[1];
      }

      else
      {
        v427 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v297 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v298 + 80), v297);
        *&result[1].i64[1] = v427;
      }

      if (v300 < v427)
      {
        v428 = v6->i64[0];
        v429 = a2 - 1;
        v6->i64[0] = *v462;
LABEL_440:
        *v429 = v428;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v306 = &result->u64[1];
      v307 = result == v7 || v306 == v7;
      v308 = v307;
      if (a5)
      {
        if ((v308 & 1) == 0)
        {
          v309 = 0;
          do
          {
            v311 = v6->i64[0];
            v310 = v6->u64[1];
            v6 = v306;
            v470 = v311;
            v471 = v310;
            v312 = *a3;
            v313 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v310);
            if (v313)
            {
              v314 = v313[3];
              v315 = v311;
            }

            else
            {
              v314 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v310 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v312 + 80), v310) + 3) = v314;
              v315 = v470;
            }

            result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v312 + 80), v315);
            if (result)
            {
              v316 = *&result[1].i64[1];
            }

            else
            {
              v316 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v311 + 616);
              v472 = &v470;
              result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v312 + 80), v315);
              *&result[1].i64[1] = v316;
            }

            v317 = a2;
            if (v314 < v316)
            {
              v318 = v6->i64[0];
              v319 = v309;
              v320 = v469;
              while (1)
              {
                v321 = (v320 + v319);
                v321[1] = *v321;
                if (!v319)
                {
                  break;
                }

                v322 = *(v321 - 1);
                v470 = v322;
                v471 = v318;
                v323 = *a3;
                v324 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v318);
                if (v324)
                {
                  v325 = v324[3];
                  v326 = v322;
                }

                else
                {
                  v325 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v318 + 616);
                  v472 = &v471;
                  *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v323 + 80), v318) + 3) = v325;
                  v326 = v470;
                }

                result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v323 + 80), v326);
                if (result)
                {
                  v327 = *&result[1].i64[1];
                }

                else
                {
                  v327 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v322 + 616);
                  v472 = &v470;
                  result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v323 + 80), v326);
                  *&result[1].i64[1] = v327;
                }

                v319 -= 8;
                v320 = v469;
                if (v325 >= v327)
                {
                  v328 = (v469 + v319 + 8);
                  goto LABEL_325;
                }
              }

              v328 = v469;
LABEL_325:
              *v328 = v318;
              v317 = a2;
            }

            v306 = &v6->u64[1];
            v309 += 8;
          }

          while (&v6->u64[1] != v317);
        }
      }

      else if ((v308 & 1) == 0)
      {
        do
        {
          v406 = *v469;
          v405 = v469[1];
          v469 = v306;
          v470 = v406;
          v471 = v405;
          v407 = *a3;
          v408 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v405);
          if (v408)
          {
            v409 = v408[3];
            v410 = v406;
          }

          else
          {
            v409 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v405 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v407 + 80), v405) + 3) = v409;
            v410 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v407 + 80), v410);
          if (result)
          {
            v411 = *&result[1].i64[1];
          }

          else
          {
            v411 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v406 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v407 + 80), v410);
            *&result[1].i64[1] = v411;
          }

          v412 = v469;
          if (v409 < v411)
          {
            v413 = *v469;
            do
            {
              v414 = *(v412 - 2);
              *v412 = *(v412 - 1);
              v470 = v414;
              v471 = v413;
              v415 = *a3;
              v416 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v413);
              if (v416)
              {
                v417 = v416[3];
                v418 = v414;
              }

              else
              {
                v417 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v413 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v415 + 80), v413) + 3) = v417;
                v418 = v470;
              }

              result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v415 + 80), v418);
              if (result)
              {
                v419 = *&result[1].i64[1];
              }

              else
              {
                v419 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v414 + 616);
                v472 = &v470;
                result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v415 + 80), v418);
                *&result[1].i64[1] = v419;
              }

              --v412;
            }

            while (v417 < v419);
            *v412 = v413;
            v412 = v469;
          }

          v306 = (v412 + 1);
        }

        while (v412 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (result != v7)
      {
        v329 = (v8 - 2) >> 1;
        v330 = v329;
        v331 = v6;
        v463 = (a2 - v6) >> 3;
        v467 = v329;
        do
        {
          v332 = v330;
          if (v329 >= v330)
          {
            v333 = (2 * v330) | 1;
            v334 = v331 + v333;
            v335 = *a3;
            if (2 * v330 + 2 < v8)
            {
              v336 = *v334;
              v337 = v334[1];
              v470 = v337;
              v471 = v336;
              v338 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v336);
              if (v338)
              {
                v339 = v338[3];
                v340 = v337;
              }

              else
              {
                v339 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v336 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v336) + 3) = v339;
                v340 = v470;
              }

              v341 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v340);
              if (v341)
              {
                v342 = v341[3];
              }

              else
              {
                v342 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v337 + 616);
                v472 = &v470;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v340) + 3) = v342;
              }

              v8 = v463;
              if (v339 < v342)
              {
                ++v334;
                v333 = 2 * v332 + 2;
              }

              v335 = *a3;
              v331 = v469;
            }

            v343 = v331 + v332;
            v344 = *v334;
            v345 = *v343;
            v470 = *v343;
            v471 = v344;
            v346 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v344);
            if (v346)
            {
              v347 = v346[3];
              v348 = v345;
            }

            else
            {
              v347 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v344 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v344) + 3) = v347;
              v348 = v470;
            }

            result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v348);
            if (result)
            {
              v349 = *&result[1].i64[1];
            }

            else
            {
              v349 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v345 + 616);
              v472 = &v470;
              result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v348);
              *&result[1].i64[1] = v349;
            }

            v329 = v467;
            v331 = v469;
            if (v347 >= v349)
            {
              v461 = v332;
              v350 = *v343;
              do
              {
                v351 = v334;
                *v343 = *v334;
                if (v329 < v333)
                {
                  break;
                }

                v352 = (2 * v333) | 1;
                v334 = v331 + v352;
                v333 = 2 * v333 + 2;
                v353 = *a3;
                if (v333 >= v8)
                {
                  v333 = v352;
                }

                else
                {
                  v354 = *v334;
                  v355 = v334[1];
                  v470 = v355;
                  v471 = v354;
                  v356 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v354);
                  if (v356)
                  {
                    v357 = v356[3];
                    v358 = v355;
                  }

                  else
                  {
                    v357 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v354 + 616);
                    v472 = &v471;
                    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v354) + 3) = v357;
                    v358 = v470;
                  }

                  v359 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v358);
                  if (v359)
                  {
                    v360 = v359[3];
                  }

                  else
                  {
                    v360 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v355 + 616);
                    v472 = &v470;
                    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v358) + 3) = v360;
                  }

                  v8 = v463;
                  if (v357 >= v360)
                  {
                    v333 = v352;
                  }

                  else
                  {
                    ++v334;
                  }

                  v353 = *a3;
                  v329 = v467;
                }

                v361 = *v334;
                v470 = v350;
                v471 = v361;
                v362 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v361);
                if (v362)
                {
                  v363 = v362[3];
                  v364 = v350;
                }

                else
                {
                  v363 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v361 + 616);
                  v472 = &v471;
                  *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v361) + 3) = v363;
                  v364 = v470;
                }

                result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v364);
                if (result)
                {
                  v365 = *&result[1].i64[1];
                }

                else
                {
                  v365 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v350 + 616);
                  v472 = &v470;
                  result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v364);
                  *&result[1].i64[1] = v365;
                }

                v343 = v351;
                v331 = v469;
              }

              while (v363 >= v365);
              *v351 = v350;
              v332 = v461;
            }
          }

          v330 = v332 - 1;
        }

        while (v332);
        do
        {
          v366 = 0;
          v367 = v469;
          v464 = *v469;
          v368 = (v8 - 2) / 2;
          v468 = v368;
          do
          {
            v369 = &v367[v366];
            v370 = v369 + 1;
            v371 = (2 * v366) | 1;
            v372 = 2 * v366 + 2;
            if (v372 >= v8)
            {
              v366 = (2 * v366) | 1;
            }

            else
            {
              v373 = v8;
              v376 = v369[2];
              v374 = v369 + 2;
              v375 = v376;
              v377 = *(v374 - 1);
              v470 = v376;
              v471 = v377;
              v378 = *a3;
              v379 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v377);
              if (v379)
              {
                v380 = v379[3];
                v381 = v375;
              }

              else
              {
                v380 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v377 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v378 + 80), v377) + 3) = v380;
                v381 = v470;
              }

              result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v378 + 80), v381);
              if (result)
              {
                v382 = *&result[1].i64[1];
              }

              else
              {
                v382 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v375 + 616);
                v472 = &v470;
                result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v378 + 80), v381);
                *&result[1].i64[1] = v382;
              }

              v8 = v373;
              if (v380 >= v382)
              {
                v366 = v371;
              }

              else
              {
                v370 = v374;
                v366 = v372;
              }

              v368 = v468;
            }

            *v367 = *v370;
            v367 = v370;
          }

          while (v366 <= v368);
          v383 = a2 - 1;
          v307 = v370 == --a2;
          if (v307)
          {
            *v370 = v464;
          }

          else
          {
            *v370 = *v383;
            *v383 = v464;
            v384 = (v370 - v469 + 8) >> 3;
            v385 = v384 < 2;
            v386 = v384 - 2;
            if (!v385)
            {
              v387 = v386 >> 1;
              v388 = &v469[v386 >> 1];
              v389 = *v388;
              v390 = *v370;
              v470 = *v370;
              v471 = v389;
              v391 = *a3;
              v392 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v389);
              if (v392)
              {
                v393 = v392[3];
                v394 = v390;
              }

              else
              {
                v393 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v389 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v391 + 80), v389) + 3) = v393;
                v394 = v470;
              }

              result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v391 + 80), v394);
              if (result)
              {
                v395 = *&result[1].i64[1];
              }

              else
              {
                v395 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v390 + 616);
                v472 = &v470;
                result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v391 + 80), v394);
                *&result[1].i64[1] = v395;
              }

              v396 = v469;
              if (v393 < v395)
              {
                v397 = *v370;
                do
                {
                  v398 = v388;
                  *v370 = *v388;
                  if (!v387)
                  {
                    break;
                  }

                  v387 = (v387 - 1) >> 1;
                  v388 = &v396[v387];
                  v399 = *v388;
                  v470 = v397;
                  v471 = v399;
                  v400 = *a3;
                  v401 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v399);
                  if (v401)
                  {
                    v402 = v401[3];
                    v403 = v397;
                  }

                  else
                  {
                    v402 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v399 + 616);
                    v472 = &v471;
                    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v400 + 80), v399) + 3) = v402;
                    v403 = v470;
                  }

                  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v400 + 80), v403);
                  if (result)
                  {
                    v404 = *&result[1].i64[1];
                  }

                  else
                  {
                    v404 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v397 + 616);
                    v472 = &v470;
                    result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v400 + 80), v403);
                    *&result[1].i64[1] = v404;
                  }

                  v370 = v398;
                  v396 = v469;
                }

                while (v402 < v404);
                *v398 = v397;
              }
            }
          }

          v385 = v8-- <= 2;
        }

        while (!v385);
      }

      return result;
    }

    v9 = v8 >> 1;
    if (v8 < 0x81)
    {
      v16 = result->i64[0];
      v17 = result->u64[v9];
      v470 = v17;
      v471 = v16;
      v18 = *a3;
      v19 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v16);
      if (v19)
      {
        v20 = v19[3];
        v21 = v17;
      }

      else
      {
        v20 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v16 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v18 + 80), v16) + 3) = v20;
        v21 = v470;
      }

      v24 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v18 + 80), v21);
      if (v24)
      {
        v25 = v24[3];
      }

      else
      {
        v25 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v17 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v18 + 80), v21) + 3) = v25;
      }

      v32 = *v462;
      v33 = *v469;
      v470 = *v469;
      v471 = v32;
      v34 = *a3;
      v35 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v32);
      if (v35)
      {
        v36 = v35[3];
        v37 = v33;
      }

      else
      {
        v36 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v32 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v34 + 80), v32) + 3) = v36;
        v37 = v470;
      }

      v40 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v34 + 80), v37);
      if (v40)
      {
        v41 = v40[3];
      }

      else
      {
        v41 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v33 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v34 + 80), v37) + 3) = v41;
      }

      v51 = v469;
      if (v20 >= v25)
      {
        if (v36 < v41)
        {
          v53 = *v469;
          *v469 = *v462;
          *v462 = v53;
          v54 = *v469;
          v55 = v469[v9];
          v470 = v55;
          v471 = v54;
          v56 = *a3;
          v57 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v54);
          if (v57)
          {
            v58 = v57[3];
            v59 = v55;
          }

          else
          {
            v58 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v54 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v56 + 80), v54) + 3) = v58;
            v59 = v470;
          }

          v72 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v56 + 80), v59);
          if (v72)
          {
            v73 = v72[3];
          }

          else
          {
            v73 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v55 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v56 + 80), v59) + 3) = v73;
          }

          v51 = v469;
          if (v58 < v73)
          {
            v79 = v469[v9];
            v469[v9] = *v469;
            v51 = v469;
            *v469 = v79;
          }
        }
      }

      else
      {
        v52 = v469[v9];
        if (v36 >= v41)
        {
          v469[v9] = *v469;
          *v469 = v52;
          v65 = *v462;
          v470 = v52;
          v471 = v65;
          v66 = *a3;
          v67 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v65);
          if (v67)
          {
            v68 = v67[3];
            v69 = v52;
          }

          else
          {
            v68 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v65 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v66 + 80), v65) + 3) = v68;
            v69 = v470;
          }

          v76 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v66 + 80), v69);
          if (v76)
          {
            v77 = v76[3];
          }

          else
          {
            v77 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v52 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v66 + 80), v69) + 3) = v77;
          }

          v51 = v469;
          if (v68 < v77)
          {
            v112 = *v469;
            *v469 = *v462;
            v51 = v469;
            *v462 = v112;
          }
        }

        else
        {
          v469[v9] = *v462;
          *v462 = v52;
        }
      }

      goto LABEL_175;
    }

    v10 = result->u64[v9];
    v11 = result->i64[0];
    v470 = result->i64[0];
    v471 = v10;
    v12 = *a3;
    v13 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v10);
    if (v13)
    {
      v14 = v13[3];
      v15 = v11;
    }

    else
    {
      v14 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v10 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v12 + 80), v10) + 3) = v14;
      v15 = v470;
    }

    v22 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v12 + 80), v15);
    if (v22)
    {
      v23 = v22[3];
    }

    else
    {
      v23 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v11 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v12 + 80), v15) + 3) = v23;
    }

    v26 = *v462;
    v27 = v469[v9];
    v470 = v27;
    v471 = v26;
    v28 = *a3;
    v29 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v26);
    if (v29)
    {
      v30 = v29[3];
      v31 = v27;
    }

    else
    {
      v30 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v26 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v28 + 80), v26) + 3) = v30;
      v31 = v470;
    }

    v38 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v28 + 80), v31);
    if (v38)
    {
      v39 = v38[3];
    }

    else
    {
      v39 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v27 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v28 + 80), v31) + 3) = v39;
    }

    v42 = v469;
    if (v14 >= v23)
    {
      if (v30 < v39)
      {
        v44 = v469[v9];
        v469[v9] = *v462;
        *v462 = v44;
        v45 = v469[v9];
        v46 = *v469;
        v470 = *v469;
        v471 = v45;
        v47 = *a3;
        v48 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v45);
        if (v48)
        {
          v49 = v48[3];
          v50 = v46;
        }

        else
        {
          v49 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v45 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v47 + 80), v45) + 3) = v49;
          v50 = v470;
        }

        v70 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v47 + 80), v50);
        if (v70)
        {
          v71 = v70[3];
        }

        else
        {
          v71 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v46 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v47 + 80), v50) + 3) = v71;
        }

        v42 = v469;
        if (v49 < v71)
        {
          v78 = *v469;
          *v469 = v469[v9];
          v42 = v469;
          v469[v9] = v78;
        }
      }
    }

    else
    {
      v43 = *v469;
      if (v30 >= v39)
      {
        *v469 = v469[v9];
        v469[v9] = v43;
        v60 = *v462;
        v470 = v43;
        v471 = v60;
        v61 = *a3;
        v62 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v60);
        if (v62)
        {
          v63 = v62[3];
          v64 = v43;
        }

        else
        {
          v63 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v60 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v61 + 80), v60) + 3) = v63;
          v64 = v470;
        }

        v74 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v61 + 80), v64);
        if (v74)
        {
          v75 = v74[3];
        }

        else
        {
          v75 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v43 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v61 + 80), v64) + 3) = v75;
        }

        v42 = v469;
        if (v63 < v75)
        {
          v80 = v469[v9];
          v469[v9] = *v462;
          v42 = v469;
          *v462 = v80;
        }
      }

      else
      {
        *v469 = *v462;
        *v462 = v43;
      }
    }

    v81 = v9 - 1;
    v82 = v42[v9 - 1];
    v83 = v42[1];
    v470 = v83;
    v471 = v82;
    v84 = *a3;
    v85 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v82);
    if (v85)
    {
      v86 = v85[3];
      v87 = v83;
    }

    else
    {
      v86 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v82 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v84 + 80), v82) + 3) = v86;
      v87 = v470;
    }

    v88 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v84 + 80), v87);
    if (v88)
    {
      v89 = v88[3];
    }

    else
    {
      v89 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v83 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v84 + 80), v87) + 3) = v89;
    }

    v90 = *(a2 - 2);
    v91 = v469[v81];
    v470 = v91;
    v471 = v90;
    v92 = *a3;
    v93 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v90);
    if (v93)
    {
      v94 = v93[3];
      v95 = v91;
    }

    else
    {
      v94 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v90 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v92 + 80), v90) + 3) = v94;
      v95 = v470;
    }

    v96 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v92 + 80), v95);
    if (v96)
    {
      v97 = v96[3];
    }

    else
    {
      v97 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v91 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v92 + 80), v95) + 3) = v97;
    }

    v98 = v469;
    if (v86 >= v89)
    {
      if (v94 < v97)
      {
        v100 = v469[v81];
        v469[v81] = *(a2 - 2);
        *(a2 - 2) = v100;
        v101 = v469[v81];
        v102 = v469[1];
        v470 = v102;
        v471 = v101;
        v103 = *a3;
        v104 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v101);
        if (v104)
        {
          v105 = v104[3];
          v106 = v102;
        }

        else
        {
          v105 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v101 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v103 + 80), v101) + 3) = v105;
          v106 = v470;
        }

        v113 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v103 + 80), v106);
        if (v113)
        {
          v114 = v113[3];
        }

        else
        {
          v114 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v102 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v103 + 80), v106) + 3) = v114;
        }

        v98 = v469;
        if (v105 < v114)
        {
          v117 = v469[1];
          v469[1] = v469[v81];
          v98 = v469;
          v469[v81] = v117;
        }
      }
    }

    else
    {
      v99 = v469[1];
      if (v94 >= v97)
      {
        v469[1] = v469[v81];
        v469[v81] = v99;
        v107 = *(a2 - 2);
        v470 = v99;
        v471 = v107;
        v108 = *a3;
        v109 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v107);
        if (v109)
        {
          v110 = v109[3];
          v111 = v99;
        }

        else
        {
          v110 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v107 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v108 + 80), v107) + 3) = v110;
          v111 = v470;
        }

        v115 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v108 + 80), v111);
        if (v115)
        {
          v116 = v115[3];
        }

        else
        {
          v116 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v99 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v108 + 80), v111) + 3) = v116;
        }

        v98 = v469;
        if (v110 < v116)
        {
          v118 = v469[v81];
          v469[v81] = *(a2 - 2);
          v98 = v469;
          *(a2 - 2) = v118;
        }
      }

      else
      {
        v469[1] = *(a2 - 2);
        *(a2 - 2) = v99;
      }
    }

    v119 = v9 + 1;
    v120 = v98[v9 + 1];
    v121 = v98[2];
    v470 = v121;
    v471 = v120;
    v122 = *a3;
    v123 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v120);
    if (v123)
    {
      v124 = v123[3];
      v125 = v121;
    }

    else
    {
      v124 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v120 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v122 + 80), v120) + 3) = v124;
      v125 = v470;
    }

    v126 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v122 + 80), v125);
    if (v126)
    {
      v127 = v126[3];
    }

    else
    {
      v127 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v121 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v122 + 80), v125) + 3) = v127;
    }

    v128 = *(a2 - 3);
    v129 = v469[v119];
    v470 = v129;
    v471 = v128;
    v130 = *a3;
    v131 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v128);
    if (v131)
    {
      v132 = v131[3];
      v133 = v129;
    }

    else
    {
      v132 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v128 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v130 + 80), v128) + 3) = v132;
      v133 = v470;
    }

    v134 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v130 + 80), v133);
    if (v134)
    {
      v135 = v134[3];
    }

    else
    {
      v135 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v129 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v130 + 80), v133) + 3) = v135;
    }

    v136 = v469;
    if (v124 >= v127)
    {
      if (v132 < v135)
      {
        v138 = v469[v119];
        v469[v119] = *(a2 - 3);
        *(a2 - 3) = v138;
        v139 = v469[v119];
        v140 = v469[2];
        v470 = v140;
        v471 = v139;
        v141 = *a3;
        v142 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v139);
        if (v142)
        {
          v143 = v142[3];
          v144 = v140;
        }

        else
        {
          v143 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v139 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v141 + 80), v139) + 3) = v143;
          v144 = v470;
        }

        v150 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v141 + 80), v144);
        if (v150)
        {
          v151 = v150[3];
        }

        else
        {
          v151 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v140 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v141 + 80), v144) + 3) = v151;
        }

        v136 = v469;
        if (v143 < v151)
        {
          v154 = v469[2];
          v469[2] = v469[v119];
          v136 = v469;
          v469[v119] = v154;
        }
      }
    }

    else
    {
      v137 = v469[2];
      if (v132 >= v135)
      {
        v469[2] = v469[v119];
        v469[v119] = v137;
        v145 = *(a2 - 3);
        v470 = v137;
        v471 = v145;
        v146 = *a3;
        v147 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v145);
        if (v147)
        {
          v148 = v147[3];
          v149 = v137;
        }

        else
        {
          v148 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v145 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v146 + 80), v145) + 3) = v148;
          v149 = v470;
        }

        v152 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v146 + 80), v149);
        if (v152)
        {
          v153 = v152[3];
        }

        else
        {
          v153 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v137 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v146 + 80), v149) + 3) = v153;
        }

        v136 = v469;
        if (v148 < v153)
        {
          v155 = v469[v119];
          v469[v119] = *(a2 - 3);
          v136 = v469;
          *(a2 - 3) = v155;
        }
      }

      else
      {
        v469[2] = *(a2 - 3);
        *(a2 - 3) = v137;
      }
    }

    v156 = v136[v9];
    v157 = v136[v81];
    v470 = v157;
    v471 = v156;
    v158 = *a3;
    v159 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v156);
    if (v159)
    {
      v160 = v159[3];
      v161 = v157;
    }

    else
    {
      v160 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v156 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v158 + 80), v156) + 3) = v160;
      v161 = v470;
    }

    v162 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v158 + 80), v161);
    if (v162)
    {
      v163 = v162[3];
    }

    else
    {
      v163 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v157 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v158 + 80), v161) + 3) = v163;
    }

    v164 = v469[v119];
    v165 = v469[v9];
    v470 = v165;
    v471 = v164;
    v166 = *a3;
    v167 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v164);
    if (v167)
    {
      v168 = v167[3];
      v169 = v165;
    }

    else
    {
      v168 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v164 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v166 + 80), v164) + 3) = v168;
      v169 = v470;
    }

    v170 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v166 + 80), v169);
    if (v170)
    {
      v171 = v170[3];
    }

    else
    {
      v171 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v165 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v166 + 80), v169) + 3) = v171;
    }

    if (v160 >= v163)
    {
      v173 = v469[v9];
      if (v168 >= v171)
      {
        goto LABEL_174;
      }

      v174 = v469[v119];
      v469[v9] = v174;
      v469[v119] = v173;
      v175 = v469[v81];
      v470 = v175;
      v471 = v174;
      v176 = *a3;
      v177 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v174);
      if (v177)
      {
        v178 = v177[3];
        v179 = v175;
      }

      else
      {
        v178 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v174 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v176 + 80), v174) + 3) = v178;
        v179 = v470;
      }

      v185 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v176 + 80), v179);
      if (v185)
      {
        v186 = v185[3];
      }

      else
      {
        v186 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v175 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v176 + 80), v179) + 3) = v186;
      }

      v173 = v469[v9];
      if (v178 >= v186)
      {
        goto LABEL_174;
      }

      v189 = v469[v81];
      v469[v81] = v173;
      v469[v9] = v189;
LABEL_173:
      v173 = v189;
      goto LABEL_174;
    }

    v172 = v469[v81];
    if (v168 >= v171)
    {
      v469[v81] = v469[v9];
      v469[v9] = v172;
      v180 = v469[v119];
      v470 = v172;
      v471 = v180;
      v181 = *a3;
      v182 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v180);
      if (v182)
      {
        v183 = v182[3];
        v184 = v172;
      }

      else
      {
        v183 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v180 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v181 + 80), v180) + 3) = v183;
        v184 = v470;
      }

      v187 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v181 + 80), v184);
      if (v187)
      {
        v188 = v187[3];
      }

      else
      {
        v188 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v172 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v181 + 80), v184) + 3) = v188;
      }

      v173 = v469[v9];
      if (v183 >= v188)
      {
        goto LABEL_174;
      }

      v189 = v469[v119];
      v469[v9] = v189;
      v469[v119] = v173;
      goto LABEL_173;
    }

    v469[v81] = v469[v119];
    v469[v119] = v172;
    v173 = v469[v9];
LABEL_174:
    v190 = *v469;
    *v469 = v173;
    v469[v9] = v190;
    v51 = v469;
LABEL_175:
    --a4;
    v191 = *v51;
    if ((a5 & 1) != 0
      || ((v192 = *(v51 - 1), v470 = *v51, v471 = v192, v193 = *a3, (v194 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v192)) == 0) ? (v195 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v192 + 616), v472 = &v471, *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v193 + 80), v192) + 3) = v195, v196 = v470) : (v195 = v194[3], v196 = v191),
          (v197 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v193 + 80), v196)) == 0 ? (v198 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616), v472 = &v470, *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v193 + 80), v196) + 3) = v198) : (v198 = v197[3]),
          v51 = v469,
          v191 = *v469,
          v195 < v198))
    {
      v199 = v51;
      do
      {
        v201 = v199[1];
        ++v199;
        v200 = v201;
        v470 = v191;
        v471 = v201;
        v202 = *a3;
        v203 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v201);
        if (v203)
        {
          v204 = v203[3];
          v205 = v191;
        }

        else
        {
          v204 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v200 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v202 + 80), v200) + 3) = v204;
          v205 = v470;
        }

        v206 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v202 + 80), v205);
        if (v206)
        {
          v207 = v206[3];
        }

        else
        {
          v207 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v202 + 80), v205) + 3) = v207;
        }
      }

      while (v204 < v207);
      v208 = v199 - 1;
      v209 = a2;
      if (v199 - 1 == v469)
      {
        v209 = a2;
        do
        {
          if (v199 >= v209)
          {
            break;
          }

          v219 = *--v209;
          v218 = v219;
          v470 = v191;
          v471 = v219;
          v220 = *a3;
          v221 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v219);
          if (v221)
          {
            v222 = v221[3];
            v223 = v191;
          }

          else
          {
            v222 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v218 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v220 + 80), v218) + 3) = v222;
            v223 = v470;
          }

          v224 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v220 + 80), v223);
          if (v224)
          {
            v225 = v224[3];
          }

          else
          {
            v225 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v220 + 80), v223) + 3) = v225;
          }
        }

        while (v222 >= v225);
      }

      else
      {
        do
        {
          v211 = *--v209;
          v210 = v211;
          v470 = v191;
          v471 = v211;
          v212 = *a3;
          v213 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v211);
          if (v213)
          {
            v214 = v213[3];
            v215 = v191;
          }

          else
          {
            v214 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v210 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v212 + 80), v210) + 3) = v214;
            v215 = v470;
          }

          v216 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v212 + 80), v215);
          if (v216)
          {
            v217 = v216[3];
          }

          else
          {
            v217 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v212 + 80), v215) + 3) = v217;
          }
        }

        while (v214 >= v217);
      }

      if (v199 < v209)
      {
        v226 = v199;
        v227 = v209;
        do
        {
          v228 = *v226;
          *v226 = *v227;
          *v227 = v228;
          do
          {
            v230 = v226[1];
            ++v226;
            v229 = v230;
            v470 = v191;
            v471 = v230;
            v231 = *a3;
            v232 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v230);
            if (v232)
            {
              v233 = v232[3];
              v234 = v191;
            }

            else
            {
              v233 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v229 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v231 + 80), v229) + 3) = v233;
              v234 = v470;
            }

            v235 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v231 + 80), v234);
            if (v235)
            {
              v236 = v235[3];
            }

            else
            {
              v236 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
              v472 = &v470;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v231 + 80), v234) + 3) = v236;
            }
          }

          while (v233 < v236);
          v208 = v226 - 1;
          do
          {
            v238 = *--v227;
            v237 = v238;
            v470 = v191;
            v471 = v238;
            v239 = *a3;
            v240 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v238);
            if (v240)
            {
              v241 = v240[3];
              v242 = v191;
            }

            else
            {
              v241 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v237 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v239 + 80), v237) + 3) = v241;
              v242 = v470;
            }

            v243 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v239 + 80), v242);
            if (v243)
            {
              v244 = v243[3];
            }

            else
            {
              v244 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
              v472 = &v470;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v239 + 80), v242) + 3) = v244;
            }
          }

          while (v241 >= v244);
        }

        while (v226 < v227);
      }

      result = v469;
      if (v208 != v469)
      {
        *v469 = *v208;
      }

      *v208 = v191;
      if (v199 < v209)
      {
        goto LABEL_233;
      }

      v245 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**>(v469, v208, a3);
      v6 = (v208 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**>(v208 + 1, a2, a3);
      if (result)
      {
        a2 = v208;
        if (!v245)
        {
          goto LABEL_2;
        }

        return result;
      }

      result = v469;
      if (!v245)
      {
LABEL_233:
        result = std::__introsort<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,false>(result, v208, a3, a4, a5 & 1);
        a5 = 0;
        v6 = (v208 + 1);
      }
    }

    else
    {
      v246 = *v462;
      v470 = *v462;
      v471 = v191;
      v247 = *a3;
      v248 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
      if (v248)
      {
        v249 = v248[3];
        v250 = v246;
      }

      else
      {
        v249 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v247 + 80), v191) + 3) = v249;
        v250 = v470;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v247 + 80), v250);
      if (result)
      {
        v251 = *&result[1].i64[1];
      }

      else
      {
        v251 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v246 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v247 + 80), v250);
        *&result[1].i64[1] = v251;
      }

      v6 = v469;
      if (v249 >= v251)
      {
        v259 = (v469 + 1);
        do
        {
          v6 = v259;
          if (v259 >= a2)
          {
            break;
          }

          v260 = v259->i64[0];
          v470 = v259->i64[0];
          v471 = v191;
          v261 = *a3;
          v262 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v262)
          {
            v263 = v262[3];
            v264 = v260;
          }

          else
          {
            v263 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v261 + 80), v191) + 3) = v263;
            v264 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v261 + 80), v264);
          if (result)
          {
            v265 = *&result[1].i64[1];
          }

          else
          {
            v265 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v260 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v261 + 80), v264);
            *&result[1].i64[1] = v265;
          }

          v259 = &v6->u64[1];
        }

        while (v263 >= v265);
      }

      else
      {
        do
        {
          v253 = v6->u64[1];
          v6 = (v6 + 8);
          v252 = v253;
          v470 = v253;
          v471 = v191;
          v254 = *a3;
          v255 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v255)
          {
            v256 = v255[3];
            v257 = v252;
          }

          else
          {
            v256 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v254 + 80), v191) + 3) = v256;
            v257 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v254 + 80), v257);
          if (result)
          {
            v258 = *&result[1].i64[1];
          }

          else
          {
            v258 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v252 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v254 + 80), v257);
            *&result[1].i64[1] = v258;
          }
        }

        while (v256 >= v258);
      }

      v266 = a2;
      if (v6 < a2)
      {
        v266 = a2;
        do
        {
          v268 = v266[-1].u64[1];
          v266 = (v266 - 8);
          v267 = v268;
          v470 = v268;
          v471 = v191;
          v269 = *a3;
          v270 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v270)
          {
            v271 = v270[3];
            v272 = v267;
          }

          else
          {
            v271 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v269 + 80), v191) + 3) = v271;
            v272 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v269 + 80), v272);
          if (result)
          {
            v273 = *&result[1].i64[1];
          }

          else
          {
            v273 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v267 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v269 + 80), v272);
            *&result[1].i64[1] = v273;
          }
        }

        while (v271 < v273);
      }

      while (v6 < v266)
      {
        v274 = v6->i64[0];
        v6->i64[0] = v266->i64[0];
        v266->i64[0] = v274;
        do
        {
          v276 = v6->u64[1];
          v6 = (v6 + 8);
          v275 = v276;
          v470 = v276;
          v471 = v191;
          v277 = *a3;
          v278 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v278)
          {
            v279 = v278[3];
            v280 = v275;
          }

          else
          {
            v279 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v277 + 80), v191) + 3) = v279;
            v280 = v470;
          }

          v281 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v277 + 80), v280);
          if (v281)
          {
            v282 = v281[3];
          }

          else
          {
            v282 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v275 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v277 + 80), v280) + 3) = v282;
          }
        }

        while (v279 >= v282);
        do
        {
          v284 = v266[-1].u64[1];
          v266 = (v266 - 8);
          v283 = v284;
          v470 = v284;
          v471 = v191;
          v285 = *a3;
          v286 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v286)
          {
            v287 = v286[3];
            v288 = v283;
          }

          else
          {
            v287 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v285 + 80), v191) + 3) = v287;
            v288 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v285 + 80), v288);
          if (result)
          {
            v289 = *&result[1].i64[1];
          }

          else
          {
            v289 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v283 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v285 + 80), v288);
            *&result[1].i64[1] = v289;
          }
        }

        while (v287 < v289);
      }

      v290 = &v6[-1].u64[1];
      if (&v6[-1].u64[1] != v469)
      {
        *v469 = *v290;
      }

      a5 = 0;
      *v290 = v191;
    }
  }

  result = v6;
  if (v8 != 3)
  {
    if (v8 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(v6, &v6->u64[1], &v6[1], v462, a3);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(v6, &v6->u64[1], &v6[1], &v6[1].u64[1], a3);
      v291 = *v462;
      v292 = v6[1].u64[1];
      v470 = v292;
      v471 = v291;
      v293 = *a3;
      v294 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v291);
      if (v294)
      {
        v295 = v294[3];
      }

      else
      {
        v295 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v291 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v293 + 80), v291) + 3) = v295;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v293 + 80), v292);
      if (result)
      {
        v420 = *&result[1].i64[1];
      }

      else
      {
        v420 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v292 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v293 + 80), v292);
        *&result[1].i64[1] = v420;
      }

      if (v295 >= v420)
      {
        return result;
      }

      v421 = v6[1].u64[1];
      v6[1].i64[1] = *v462;
      *v462 = v421;
      v422 = v6[1].u64[0];
      v423 = v6[1].u64[1];
      v470 = v422;
      v471 = v423;
      v424 = *a3;
      v425 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v423);
      if (v425)
      {
        v426 = v425[3];
      }

      else
      {
        v426 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v423 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v424 + 80), v423) + 3) = v426;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v424 + 80), v422);
      if (result)
      {
        v446 = *&result[1].i64[1];
      }

      else
      {
        v446 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v422 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v424 + 80), v422);
        *&result[1].i64[1] = v446;
      }

      if (v426 >= v446)
      {
        return result;
      }

      v447 = v6[1].i64[0];
      v448 = v6[1].u64[1];
      v449 = v6->u64[1];
      v6[1].i64[0] = v448;
      v6[1].i64[1] = v447;
      v470 = v449;
      v471 = v448;
      v450 = *a3;
      v451 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v448);
      if (v451)
      {
        v452 = v451[3];
      }

      else
      {
        v452 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v448 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v450 + 80), v448) + 3) = v452;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v450 + 80), v449);
      if (result)
      {
        v453 = *&result[1].i64[1];
      }

      else
      {
        v453 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v449 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v450 + 80), v449);
        *&result[1].i64[1] = v453;
      }

      if (v452 >= v453)
      {
        return result;
      }

      v454 = v6->i64[1];
      v441 = v6[1].u64[0];
      v440 = v6->i64[0];
      v6->i64[1] = v441;
      v6[1].i64[0] = v454;
      goto LABEL_471;
    }

    goto LABEL_10;
  }

  v301 = v6->i64[0];
  v302 = v6->u64[1];
  v470 = v6->i64[0];
  v471 = v302;
  v303 = *a3;
  v304 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v302);
  if (v304)
  {
    v305 = v304[3];
  }

  else
  {
    v305 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v302 + 616);
    v472 = &v471;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v303 + 80), v302) + 3) = v305;
  }

  v430 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v303 + 80), v301);
  if (v430)
  {
    v431 = v430[3];
  }

  else
  {
    v431 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v301 + 616);
    v472 = &v470;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v303 + 80), v301) + 3) = v431;
  }

  v432 = *v462;
  v433 = v6->u64[1];
  v470 = v433;
  v471 = v432;
  v434 = *a3;
  v435 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v432);
  if (v435)
  {
    v436 = v435[3];
  }

  else
  {
    v436 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v432 + 616);
    v472 = &v471;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v434 + 80), v432) + 3) = v436;
  }

  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v434 + 80), v433);
  if (result)
  {
    v437 = *&result[1].i64[1];
  }

  else
  {
    v437 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v433 + 616);
    v472 = &v470;
    result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v434 + 80), v433);
    *&result[1].i64[1] = v437;
  }

  if (v305 >= v431)
  {
    if (v436 >= v437)
    {
      return result;
    }

    v439 = v6->u64[1];
    v6->i64[1] = *v462;
    *v462 = v439;
    v440 = v6->i64[0];
    v441 = v6->u64[1];
LABEL_471:
    v470 = v440;
    v471 = v441;
    v455 = *a3;
    v456 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v441);
    if (v456)
    {
      v457 = v456[3];
    }

    else
    {
      v457 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v441 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v455 + 80), v441) + 3) = v457;
    }

    result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v455 + 80), v440);
    if (result)
    {
      v458 = *&result[1].i64[1];
    }

    else
    {
      v458 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v440 + 616);
      v472 = &v470;
      result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v455 + 80), v440);
      *&result[1].i64[1] = v458;
    }

    if (v457 < v458)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }

    return result;
  }

  v438 = v6->i64[0];
  if (v436 >= v437)
  {
    v6->i64[0] = v6->i64[1];
    v6->i64[1] = v438;
    v442 = *v462;
    v470 = v438;
    v471 = v442;
    v443 = *a3;
    v444 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v442);
    if (v444)
    {
      v445 = v444[3];
    }

    else
    {
      v445 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v442 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v443 + 80), v442) + 3) = v445;
    }

    result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v443 + 80), v438);
    if (result)
    {
      v459 = *&result[1].i64[1];
    }

    else
    {
      v459 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v438 + 616);
      v472 = &v470;
      result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v443 + 80), v438);
      *&result[1].i64[1] = v459;
    }

    if (v445 < v459)
    {
      v428 = v6->i64[1];
      v429 = a2 - 1;
      v6->i64[1] = *v462;
      goto LABEL_440;
    }
  }

  else
  {
    v6->i64[0] = *v462;
    *v462 = v438;
  }

  return result;
}