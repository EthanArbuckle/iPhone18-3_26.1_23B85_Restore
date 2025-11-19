void sub_2246E983C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (STACK[0x270])
  {
    operator delete(STACK[0x270]);
  }

  if (a17)
  {
    operator delete(a17);
    v57 = a56;
    if (!a56)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v57 = a56;
    if (!a56)
    {
      goto LABEL_7;
    }
  }

  operator delete(v57);
  _Unwind_Resume(a1);
}

uint64_t peridot::sMatrixOversized<unsigned short,3u,27u>::~sMatrixOversized(uint64_t result)
{
  *result = &unk_283809CC0;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C80BDFB0063);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = **a3;
      a7.n128_u32[0] = *(v9 + 4 * v7);
      if (a7.n128_f32[0] > *(v9 + 4 * *a1))
      {
        *a1 = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a4 > 128)
    {
      v19 = a4 >> 1;
      v20 = 8 * (a4 >> 1);
      v21 = a4 - (a4 >> 1);
      v22 = &a1[v20];
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v22, a3, a4 >> 1, a5);
        v31 = &a5[v19];
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(&a1[v20], a2, a3, v21, v31);
        v32 = *a3;
        v33 = -1;
        v34 = v31;
        v35 = a5;
        v36 = a1;
        v37 = &a5[a4];
        do
        {
          ++v33;
          if (v34 == v37)
          {
            if (v35 == v31)
            {
              return a7.n128_f64[0];
            }

            v51 = &a5[v20 / 8] - v35 - 8;
            if (v51 >= 0x38)
            {
              if ((&a1[8 * v33] - v35) >= 0x20)
              {
                v53 = v36 + 1;
                v54 = (v51 >> 3) + 1;
                v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                v52 = &v35[v55];
                v56 = (v35 + 2);
                v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  a7 = v56[-1];
                  v58 = *v56;
                  v53[-1] = a7;
                  *v53 = v58;
                  v53 += 2;
                  v56 += 2;
                  v57 -= 4;
                }

                while (v57);
                if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return a7.n128_f64[0];
                }

                v36 = (v36 + v55 * 8);
              }

              else
              {
                v52 = v35;
              }
            }

            else
            {
              v52 = v35;
            }

            do
            {
              v59 = *v52++;
              v36->n128_u64[0] = v59;
              v36 = (v36 + 8);
            }

            while (v52 != v31);
            return a7.n128_f64[0];
          }

          v38 = v34;
          v39 = *v34;
          a7.n128_u32[0] = *(*v32 + 4 * v39);
          v40 = *(*v32 + 4 * *v35);
          if (a7.n128_f32[0] <= v40)
          {
            v41 = *v35;
          }

          else
          {
            v41 = v39;
          }

          v35 += a7.n128_f32[0] <= v40;
          v42 = a7.n128_f32[0] > v40;
          v34 = &v38[v42];
          v36->n128_u64[0] = v41;
          v36 = (v36 + 8);
        }

        while (v35 != v31);
        if (v34 == v37)
        {
          return a7.n128_f64[0];
        }

        v43 = v37 - &v38[v42] - 8;
        if (v43 <= 0x57 || (&a1[8 * v33] - &v38[v42] + 8) < 0x20)
        {
          goto LABEL_35;
        }

        v44 = v36 + 1;
        v45 = (v43 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v34 = (v34 + v46);
        v47 = &v38[v42 + 2];
        v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          a7 = v47[-1];
          v49 = *v47;
          v44[-1] = a7;
          *v44 = v49;
          v44 += 2;
          v47 += 2;
          v48 -= 4;
        }

        while (v48);
        if (v45 != (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v36 = (v36 + v46);
          do
          {
LABEL_35:
            v50 = *v34++;
            v36->n128_u64[0] = v50;
            v36 = (v36 + 8);
          }

          while (v34 != v37);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v22, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(&a1[v20], a2, a3, v21, a5, a6);

        a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, &a1[v20], a2, a3, v19, v21, a5, a6, v27).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v10 = a1 + 8;
      if (a1 + 8 != a2)
      {
        v11 = 0;
        v12 = **a3;
        v13 = a1;
        do
        {
          v15 = *v13;
          v13 = v10;
          v16 = *v10;
          a7.n128_u32[0] = *(v12 + 4 * v16);
          if (a7.n128_f32[0] > *(v12 + 4 * v15))
          {
            v17 = v11;
            do
            {
              *&a1[v17 + 8] = v15;
              if (!v17)
              {
                v14 = a1;
                goto LABEL_11;
              }

              v15 = *&a1[v17 - 8];
              v17 -= 8;
            }

            while (a7.n128_f32[0] > *(v12 + 4 * v15));
            v14 = &a1[v17 + 8];
LABEL_11:
            *v14 = v16;
          }

          v10 = v13 + 8;
          v11 += 8;
        }

        while (v13 + 8 != a2);
      }
    }
  }

  return a7.n128_f64[0];
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

double std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      if (*(**a3 + 8 * v6) > *(**a3 + 8 * *a1))
      {
        *a1 = v6;
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v17 = a4 >> 1;
      v18 = 8 * (a4 >> 1);
      v19 = a4 - (a4 >> 1);
      v20 = &a1[v18];
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(a1, v20, a3, a4 >> 1, a5);
        v29 = &a5[v17];
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(&a1[v18], a2, a3, v19, v29);
        v30 = *a3;
        v31 = -1;
        v32 = v29;
        v33 = a5;
        v34 = a1;
        v35 = &a5[a4];
        do
        {
          ++v31;
          if (v32 == v35)
          {
            if (v33 == v29)
            {
              return v25.n128_f64[0];
            }

            v53 = &a5[v18 / 8] - v33 - 8;
            if (v53 >= 0x38)
            {
              if ((&a1[8 * v31] - v33) >= 0x20)
              {
                v55 = v34 + 1;
                v56 = (v53 >> 3) + 1;
                v57 = v56 & 0x3FFFFFFFFFFFFFFCLL;
                v54 = &v33[v57];
                v58 = (v33 + 2);
                v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v25 = v58[-1];
                  v60 = *v58;
                  v55[-1] = v25;
                  *v55 = v60;
                  v55 += 2;
                  v58 += 2;
                  v59 -= 4;
                }

                while (v59);
                if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v25.n128_f64[0];
                }

                v34 = (v34 + v57 * 8);
              }

              else
              {
                v54 = v33;
              }
            }

            else
            {
              v54 = v33;
            }

            do
            {
              v61 = *v54++;
              v34->n128_u64[0] = v61;
              v34 = (v34 + 8);
            }

            while (v54 != v29);
            return v25.n128_f64[0];
          }

          v36 = v32;
          v37 = *v32;
          v38 = *(*v30 + 8 * v37);
          v39 = *(*v30 + 8 * *v33);
          v40 = v38 > v39;
          v41 = v38 <= v39;
          v42 = v40;
          if (v40)
          {
            v43 = v37;
          }

          else
          {
            v43 = *v33;
          }

          v33 += v41;
          v44 = v42;
          v32 = &v36[v44];
          v34->n128_u64[0] = v43;
          v34 = (v34 + 8);
        }

        while (v33 != v29);
        if (v32 == v35)
        {
          return v25.n128_f64[0];
        }

        v45 = v35 - &v36[v44] - 8;
        if (v45 <= 0x57 || (&a1[8 * v31] - &v36[v44] + 8) < 0x20)
        {
          goto LABEL_38;
        }

        v46 = v34 + 1;
        v47 = (v45 >> 3) + 1;
        v48 = 8 * (v47 & 0x3FFFFFFFFFFFFFFCLL);
        v32 = (v32 + v48);
        v49 = &v36[v44 + 2];
        v50 = v47 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = v49[-1];
          v51 = *v49;
          v46[-1] = v25;
          *v46 = v51;
          v46 += 2;
          v49 += 2;
          v50 -= 4;
        }

        while (v50);
        if (v47 != (v47 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v34 = (v34 + v48);
          do
          {
LABEL_38:
            v52 = *v32++;
            v34->n128_u64[0] = v52;
            v34 = (v34 + 8);
          }

          while (v32 != v35);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(a1, v20, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(&a1[v18], a2, a3, v19, a5, a6);

        v25.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(a1, &a1[v18], a2, a3, v17, v19, a5, a6).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v8 = a1 + 8;
      if (a1 + 8 != a2)
      {
        v9 = 0;
        v10 = **a3;
        v11 = a1;
        do
        {
          v13 = *v11;
          v11 = v8;
          v14 = *v8;
          if (*(v10 + 8 * v14) > *(v10 + 8 * v13))
          {
            v15 = v9;
            do
            {
              *&a1[v15 + 8] = v13;
              if (!v15)
              {
                v12 = a1;
                goto LABEL_11;
              }

              v13 = *&a1[v15 - 8];
              v15 -= 8;
            }

            while (*(v10 + 8 * v14) > *(v10 + 8 * v13));
            v12 = &a1[v15 + 8];
LABEL_11:
            *v12 = v14;
          }

          v8 = v11 + 8;
          v9 += 8;
        }

        while (v11 + 8 != a2);
      }
    }
  }

  return v25.n128_f64[0];
}

double std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = **a3;
      a7.n128_u32[0] = *(v9 + 4 * v7);
      if (a7.n128_f32[0] > *(v9 + 4 * *a1))
      {
        *a1 = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a4 > 128)
    {
      v19 = a4 >> 1;
      v20 = 8 * (a4 >> 1);
      v21 = a4 - (a4 >> 1);
      v22 = &a1[v20];
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(a1, v22, a3, a4 >> 1, a5);
        v31 = &a5[v19];
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(&a1[v20], a2, a3, v21, v31);
        v32 = *a3;
        v33 = -1;
        v34 = v31;
        v35 = a5;
        v36 = a1;
        v37 = &a5[a4];
        do
        {
          ++v33;
          if (v34 == v37)
          {
            if (v35 == v31)
            {
              return a7.n128_f64[0];
            }

            v51 = &a5[v20 / 8] - v35 - 8;
            if (v51 >= 0x38)
            {
              if ((&a1[8 * v33] - v35) >= 0x20)
              {
                v53 = v36 + 1;
                v54 = (v51 >> 3) + 1;
                v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                v52 = &v35[v55];
                v56 = (v35 + 2);
                v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  a7 = v56[-1];
                  v58 = *v56;
                  v53[-1] = a7;
                  *v53 = v58;
                  v53 += 2;
                  v56 += 2;
                  v57 -= 4;
                }

                while (v57);
                if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return a7.n128_f64[0];
                }

                v36 = (v36 + v55 * 8);
              }

              else
              {
                v52 = v35;
              }
            }

            else
            {
              v52 = v35;
            }

            do
            {
              v59 = *v52++;
              v36->n128_u64[0] = v59;
              v36 = (v36 + 8);
            }

            while (v52 != v31);
            return a7.n128_f64[0];
          }

          v38 = v34;
          v39 = *v34;
          a7.n128_u32[0] = *(*v32 + 4 * v39);
          v40 = *(*v32 + 4 * *v35);
          if (a7.n128_f32[0] <= v40)
          {
            v41 = *v35;
          }

          else
          {
            v41 = v39;
          }

          v35 += a7.n128_f32[0] <= v40;
          v42 = a7.n128_f32[0] > v40;
          v34 = &v38[v42];
          v36->n128_u64[0] = v41;
          v36 = (v36 + 8);
        }

        while (v35 != v31);
        if (v34 == v37)
        {
          return a7.n128_f64[0];
        }

        v43 = v37 - &v38[v42] - 8;
        if (v43 <= 0x57 || (&a1[8 * v33] - &v38[v42] + 8) < 0x20)
        {
          goto LABEL_35;
        }

        v44 = v36 + 1;
        v45 = (v43 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v34 = (v34 + v46);
        v47 = &v38[v42 + 2];
        v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          a7 = v47[-1];
          v49 = *v47;
          v44[-1] = a7;
          *v44 = v49;
          v44 += 2;
          v47 += 2;
          v48 -= 4;
        }

        while (v48);
        if (v45 != (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v36 = (v36 + v46);
          do
          {
LABEL_35:
            v50 = *v34++;
            v36->n128_u64[0] = v50;
            v36 = (v36 + 8);
          }

          while (v34 != v37);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(a1, v22, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(&a1[v20], a2, a3, v21, a5, a6);

        a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, &a1[v20], a2, a3, v19, v21, a5, a6, v27).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v10 = a1 + 8;
      if (a1 + 8 != a2)
      {
        v11 = 0;
        v12 = **a3;
        v13 = a1;
        do
        {
          v15 = *v13;
          v13 = v10;
          v16 = *v10;
          a7.n128_u32[0] = *(v12 + 4 * v16);
          if (a7.n128_f32[0] > *(v12 + 4 * v15))
          {
            v17 = v11;
            do
            {
              *&a1[v17 + 8] = v15;
              if (!v17)
              {
                v14 = a1;
                goto LABEL_11;
              }

              v15 = *&a1[v17 - 8];
              v17 -= 8;
            }

            while (a7.n128_f32[0] > *(v12 + 4 * v15));
            v14 = &a1[v17 + 8];
LABEL_11:
            *v14 = v16;
          }

          v10 = v13 + 8;
          v11 += 8;
        }

        while (v13 + 8 != a2);
      }
    }
  }

  return a7.n128_f64[0];
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, uint64_t **a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v22 = a4 >> 1;
      v23 = a4 >> 1;
      v24 = &result[v23 * 8];
      v25 = result;
      v29 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(v24, a2, a3, a4 - v22, &v29[v23], a4 - v22);
      v30 = *a3;
      v31 = -1;
      v32 = v29;
      v33 = v24;
      do
      {
        ++v31;
        if (v33 == a2)
        {
          if (v25 == v24)
          {
            return result;
          }

          v48 = v24 - v25 - 8;
          if (v48 >= 0x38 && (&v29[v31] - v25) >= 0x20)
          {
            v49 = v32 + 2;
            v50 = (v48 >> 3) + 1;
            v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
            v32 = (v32 + v51);
            v52 = (v25 + 2);
            v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v54 = *v52;
              *(v49 - 1) = *(v52 - 1);
              *v49 = v54;
              v52 += 2;
              v49 += 2;
              v53 -= 4;
            }

            while (v53);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v25 = (v25 + v51);
          }

          do
          {
            v55 = *v25++;
            *v32++ = v55;
          }

          while (v25 != v24);
          return result;
        }

        v34 = v33;
        v35 = *v33;
        v36 = *(*v30 + 4 * v35);
        v37 = *(*v30 + 4 * *v25);
        if (v36 <= v37)
        {
          v38 = *v25;
        }

        else
        {
          v38 = v35;
        }

        v39 = v36 > v37;
        v33 = &v34[v39];
        v25 += v36 <= v37;
        *v32++ = v38;
      }

      while (v25 != v24);
      if (v33 == a2)
      {
        return result;
      }

      v40 = a2 - &v34[v39] - 8;
      if (v40 < 0x58 || (&v29[v31] - &v34[v39] + 8) < 0x20)
      {
        goto LABEL_36;
      }

      v41 = v32 + 2;
      v42 = (v40 >> 3) + 1;
      v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
      v32 = (v32 + v43);
      v44 = &v34[v39 + 2];
      v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v46 = *v44;
        *(v41 - 1) = *(v44 - 1);
        *v41 = v46;
        v44 += 2;
        v41 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v33 = (v33 + v43);
        do
        {
LABEL_36:
          v47 = *v33++;
          *v32++ = v47;
        }

        while (v33 != a2);
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result;
      result += 8;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (*(v14 + 4 * *result) <= *(v14 + 4 * v18))
          {
            *v16 = *result;
          }

          else
          {
            v15[1] = v17;
            v19 = a5;
            if (v15 != a5)
            {
              v20 = v13;
              while (1)
              {
                v19 = (a5 + v20);
                v21 = *(a5 + v20 - 8);
                if (*(v14 + 4 * *result) <= *(v14 + 4 * v21))
                {
                  break;
                }

                *v19 = v21;
                v20 -= 8;
                if (!v20)
                {
                  v19 = a5;
                  break;
                }
              }
            }

            *v19 = *result;
          }

          result += 8;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, uint64_t **a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 8 * v7);
      v10 = *(v8 + 8 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v22 = a4 >> 1;
      v23 = a4 >> 1;
      v24 = &result[v23 * 8];
      v25 = result;
      v29 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(v24, a2, a3, a4 - v22, &v29[v23], a4 - v22);
      v30 = *a3;
      v31 = -1;
      v32 = v29;
      v33 = v24;
      do
      {
        ++v31;
        if (v33 == a2)
        {
          if (v25 == v24)
          {
            return result;
          }

          v51 = v24 - v25 - 8;
          if (v51 >= 0x38 && (&v29[v31] - v25) >= 0x20)
          {
            v52 = v32 + 2;
            v53 = (v51 >> 3) + 1;
            v54 = 8 * (v53 & 0x3FFFFFFFFFFFFFFCLL);
            v32 = (v32 + v54);
            v55 = (v25 + 2);
            v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v57 = *v55;
              *(v52 - 1) = *(v55 - 1);
              *v52 = v57;
              v55 += 2;
              v52 += 2;
              v56 -= 4;
            }

            while (v56);
            if (v53 == (v53 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v25 = (v25 + v54);
          }

          do
          {
            v58 = *v25++;
            *v32++ = v58;
          }

          while (v25 != v24);
          return result;
        }

        v34 = v33;
        v35 = *v33;
        v36 = *(*v30 + 8 * v35);
        v37 = *(*v30 + 8 * *v25);
        v38 = v36 > v37;
        v39 = v36 <= v37;
        v40 = v38;
        if (v38)
        {
          v41 = v35;
        }

        else
        {
          v41 = *v25;
        }

        v42 = v40;
        v33 = &v34[v42];
        v25 += v39;
        *v32++ = v41;
      }

      while (v25 != v24);
      if (v33 == a2)
      {
        return result;
      }

      v43 = a2 - &v34[v42] - 8;
      if (v43 < 0x58 || (&v29[v31] - &v34[v42] + 8) < 0x20)
      {
        goto LABEL_39;
      }

      v44 = v32 + 2;
      v45 = (v43 >> 3) + 1;
      v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
      v32 = (v32 + v46);
      v47 = &v34[v42 + 2];
      v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v49 = *v47;
        *(v44 - 1) = *(v47 - 1);
        *v44 = v49;
        v47 += 2;
        v44 += 2;
        v48 -= 4;
      }

      while (v48);
      if (v45 != (v45 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v33 = (v33 + v46);
        do
        {
LABEL_39:
          v50 = *v33++;
          *v32++ = v50;
        }

        while (v33 != a2);
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result;
      result += 8;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (*(v14 + 8 * *result) <= *(v14 + 8 * v18))
          {
            *v16 = *result;
          }

          else
          {
            v15[1] = v17;
            v19 = a5;
            if (v15 != a5)
            {
              v20 = v13;
              while (1)
              {
                v19 = (a5 + v20);
                v21 = *(a5 + v20 - 8);
                if (*(v14 + 8 * *result) <= *(v14 + 8 * v21))
                {
                  break;
                }

                *v19 = v21;
                v20 -= 8;
                if (!v20)
                {
                  v19 = a5;
                  break;
                }
              }
            }

            *v19 = *result;
          }

          result += 8;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  v9 = a6;
  while (v9 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v13 = **a4;
    while (1)
    {
      v14 = *a1;
      if (*(v13 + 8 * *a2) > *(v13 + 8 * *a1))
      {
        break;
      }

      a1 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    v72 = a3;
    __src = a7;
    if (a5 >= v9)
    {
      if (a5 == 1)
      {
        *a1 = *a2;
        *a2 = v14;
        return result;
      }

      v23 = a5 / 2;
      v17 = &a1[8 * (a5 / 2)];
      v16 = a2;
      if (a2 != a3)
      {
        v24 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v25 = v24 >> 1;
          v26 = &v16[8 * (v24 >> 1)];
          v28 = *v26;
          v27 = v26 + 8;
          v24 += ~(v24 >> 1);
          if (*(v13 + 8 * v28) > *(v13 + 8 * *v17))
          {
            v16 = v27;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
      }

      v15 = (v16 - a2) >> 3;
    }

    else
    {
      v15 = v9 / 2;
      v16 = &a2[8 * (v9 / 2)];
      v17 = a2;
      if (a2 != a1)
      {
        v18 = (a2 - a1) >> 3;
        v17 = a1;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(v13 + 8 * *v16) > *(v13 + 8 * v22))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1) >> 3;
    }

    a5 -= v23;
    v9 -= v15;
    v29 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v17, a2, v16);
    v30 = v29;
    if (v23 + v15 >= a5 + v9)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(v29, v16, v72, a4, a5, v9, __src, a8);
      v9 = v15;
      a7 = __src;
      a5 = v23;
      a3 = v30;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(a1, v17, v29, a4, v23, v15, __src, a8);
      a7 = __src;
      a1 = v30;
      a3 = v72;
      a2 = v16;
      if (!v9)
      {
        return result;
      }
    }
  }

  if (a5 <= v9)
  {
    if (a2 == a1)
    {
      return result;
    }

    v41 = a2 - a1 - 8;
    v42 = a7;
    v43 = a1;
    if (v41 >= 0x18)
    {
      v42 = a7;
      v43 = a1;
      if ((a7 - a1) > 0x1F)
      {
        v44 = (v41 >> 3) + 1;
        v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
        v42 = &a7[v45];
        v46 = (a1 + 16);
        v47 = (a7 + 16);
        v48 = v44 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          result = v46[-1];
          v49 = *v46;
          v47[-1] = result;
          *v47 = v49;
          v46 += 2;
          v47 += 2;
          v48 -= 4;
        }

        while (v48);
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_47:
          v51 = *a4;
          while (a2 != a3)
          {
            v52 = *a2;
            v53 = *(*v51 + 8 * *a2);
            v54 = *(*v51 + 8 * *a7);
            v55 = v53 > v54;
            v56 = v53 <= v54;
            v57 = v55;
            if (!v55)
            {
              v52 = *a7;
            }

            a2 += 8 * v57;
            a7 += 8 * v56;
            *a1 = v52;
            a1 += 8;
            if (a7 == v42)
            {
              return result;
            }
          }

          memmove(a1, a7, v42 - a7);
          return result;
        }

        v43 = &a1[v45];
      }
    }

    do
    {
      v50 = *v43;
      v43 += 8;
      *v42 = v50;
      v42 += 8;
    }

    while (v43 != a2);
    goto LABEL_47;
  }

  if (a2 == a3)
  {
    return result;
  }

  v32 = a3 - a2 - 8;
  if (v32 < 0x18)
  {
    v33 = a7;
    v34 = a2;
  }

  else
  {
    v33 = a7;
    v34 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v35 = (v32 >> 3) + 1;
      v36 = 8 * (v35 & 0x3FFFFFFFFFFFFFFCLL);
      v33 = &a7[v36];
      v37 = (a2 + 16);
      v38 = (a7 + 16);
      v39 = v35 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v37[-1];
        v40 = *v37;
        v38[-1] = result;
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 4;
      }

      while (v39);
      if (v35 == (v35 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_62;
      }

      v34 = &a2[v36];
    }
  }

  do
  {
    v58 = *v34;
    v34 += 8;
    *v33 = v58;
    v33 += 8;
  }

  while (v34 != a3);
LABEL_62:
  v59 = 0;
  v60 = *a4;
  v61 = a3;
  while (a2 != a1)
  {
    v62 = *(a2 - 1);
    if (*(*v60 + 8 * *(v33 - 1)) > *(*v60 + 8 * v62))
    {
      a2 -= 8;
    }

    else
    {
      v62 = *(v33 - 1);
      v33 -= 8;
    }

    *(v61 - 1) = v62;
    v61 -= 8;
    ++v59;
    if (v33 == a7)
    {
      return result;
    }
  }

  v63 = v33 - a7;
  if (v33 != a7)
  {
    v64 = v63 - 8;
    if ((v63 - 8) < 0x48 || (v33 - a3 + 8 * v59) < 0x20)
    {
      v65 = v33;
      goto LABEL_73;
    }

    v68 = (v61 - 16);
    v69 = (v64 >> 3) + 1;
    v65 = &v33[-8 * (v69 & 0x3FFFFFFFFFFFFFFCLL)];
    v70 = (v33 - 16);
    v71 = v69 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v70;
      v68[-1] = v70[-1];
      *v68 = result;
      v68 -= 2;
      v70 -= 2;
      v71 -= 4;
    }

    while (v71);
    if (v69 != (v69 & 0x3FFFFFFFFFFFFFFCLL))
    {
      v61 -= 8 * (v69 & 0x3FFFFFFFFFFFFFFCLL);
LABEL_73:
      v66 = v61 - 8;
      do
      {
        v67 = *(v65 - 1);
        v65 -= 8;
        *v66 = v67;
        v66 -= 8;
      }

      while (v65 != a7);
    }
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, uint64_t **a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v22 = a4 >> 1;
      v23 = a4 >> 1;
      v24 = &result[v23 * 8];
      v25 = result;
      v29 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(v24, a2, a3, a4 - v22, &v29[v23], a4 - v22);
      v30 = *a3;
      v31 = -1;
      v32 = v29;
      v33 = v24;
      do
      {
        ++v31;
        if (v33 == a2)
        {
          if (v25 == v24)
          {
            return result;
          }

          v48 = v24 - v25 - 8;
          if (v48 >= 0x38 && (&v29[v31] - v25) >= 0x20)
          {
            v49 = v32 + 2;
            v50 = (v48 >> 3) + 1;
            v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
            v32 = (v32 + v51);
            v52 = (v25 + 2);
            v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v54 = *v52;
              *(v49 - 1) = *(v52 - 1);
              *v49 = v54;
              v52 += 2;
              v49 += 2;
              v53 -= 4;
            }

            while (v53);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v25 = (v25 + v51);
          }

          do
          {
            v55 = *v25++;
            *v32++ = v55;
          }

          while (v25 != v24);
          return result;
        }

        v34 = v33;
        v35 = *v33;
        v36 = *(*v30 + 4 * v35);
        v37 = *(*v30 + 4 * *v25);
        if (v36 <= v37)
        {
          v38 = *v25;
        }

        else
        {
          v38 = v35;
        }

        v39 = v36 > v37;
        v33 = &v34[v39];
        v25 += v36 <= v37;
        *v32++ = v38;
      }

      while (v25 != v24);
      if (v33 == a2)
      {
        return result;
      }

      v40 = a2 - &v34[v39] - 8;
      if (v40 < 0x58 || (&v29[v31] - &v34[v39] + 8) < 0x20)
      {
        goto LABEL_36;
      }

      v41 = v32 + 2;
      v42 = (v40 >> 3) + 1;
      v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
      v32 = (v32 + v43);
      v44 = &v34[v39 + 2];
      v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v46 = *v44;
        *(v41 - 1) = *(v44 - 1);
        *v41 = v46;
        v44 += 2;
        v41 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v33 = (v33 + v43);
        do
        {
LABEL_36:
          v47 = *v33++;
          *v32++ = v47;
        }

        while (v33 != a2);
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result;
      result += 8;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (*(v14 + 4 * *result) <= *(v14 + 4 * v18))
          {
            *v16 = *result;
          }

          else
          {
            v15[1] = v17;
            v19 = a5;
            if (v15 != a5)
            {
              v20 = v13;
              while (1)
              {
                v19 = (a5 + v20);
                v21 = *(a5 + v20 - 8);
                if (*(v14 + 4 * *result) <= *(v14 + 4 * v21))
                {
                  break;
                }

                *v19 = v21;
                v20 -= 8;
                if (!v20)
                {
                  v19 = a5;
                  break;
                }
              }
            }

            *v19 = *result;
          }

          result += 8;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __n128 result)
{
  if (!a6)
  {
    return result;
  }

  v10 = a6;
  while (v10 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v14 = **a4;
    result.n128_u32[0] = *(v14 + 4 * *a2);
    while (1)
    {
      v15 = *a1;
      if (result.n128_f32[0] > *(v14 + 4 * *a1))
      {
        break;
      }

      a1 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    v68 = a3;
    __src = a7;
    if (a5 >= v10)
    {
      if (a5 == 1)
      {
        *a1 = *a2;
        *a2 = v15;
        return result;
      }

      v24 = a5 / 2;
      v18 = &a1[8 * (a5 / 2)];
      v17 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v17 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v17[8 * (v25 >> 1)];
          v29 = *v27;
          v28 = v27 + 8;
          v25 += ~(v25 >> 1);
          if (*(v14 + 4 * v29) > *(v14 + 4 * *v18))
          {
            v17 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v16 = (v17 - a2) >> 3;
    }

    else
    {
      v16 = v10 / 2;
      v17 = &a2[8 * (v10 / 2)];
      v18 = a2;
      if (a2 != a1)
      {
        v19 = (a2 - a1) >> 3;
        v18 = a1;
        do
        {
          v20 = v19 >> 1;
          v21 = &v18[8 * (v19 >> 1)];
          v23 = *v21;
          v22 = v21 + 8;
          v19 += ~(v19 >> 1);
          if (*(v14 + 4 * *v17) > *(v14 + 4 * v23))
          {
            v19 = v20;
          }

          else
          {
            v18 = v22;
          }
        }

        while (v19);
      }

      v24 = (v18 - a1) >> 3;
    }

    a5 -= v24;
    v10 -= v16;
    v30 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v18, a2, v17);
    v31 = v30;
    if (v24 + v16 >= a5 + v10)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(v30, v17, v68, a4, a5, v10, __src, a8);
      v10 = v16;
      a7 = __src;
      a5 = v24;
      a3 = v31;
      a2 = v18;
      if (!v16)
      {
        return result;
      }
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v18, v30, a4, v24, v16, __src, a8);
      a7 = __src;
      a1 = v31;
      a3 = v68;
      a2 = v17;
      if (!v10)
      {
        return result;
      }
    }
  }

  if (a5 <= v10)
  {
    if (a2 == a1)
    {
      return result;
    }

    v41 = a2 - a1 - 8;
    v42 = a7;
    v43 = a1;
    if (v41 >= 0x18)
    {
      v42 = a7;
      v43 = a1;
      if ((a7 - a1) > 0x1F)
      {
        v44 = (v41 >> 3) + 1;
        v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
        v42 = &a7[v45];
        v46 = (a1 + 16);
        v47 = (a7 + 16);
        v48 = v44 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          result = v46[-1];
          v49 = *v46;
          v47[-1] = result;
          *v47 = v49;
          v46 += 2;
          v47 += 2;
          v48 -= 4;
        }

        while (v48);
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_47:
          v51 = *a4;
          while (a2 != a3)
          {
            v52 = *a2;
            result.n128_u32[0] = *(*v51 + 4 * *a2);
            v53 = *(*v51 + 4 * *a7);
            if (result.n128_f32[0] <= v53)
            {
              v52 = *a7;
            }

            a2 += 8 * (result.n128_f32[0] > v53);
            a7 += 8 * (result.n128_f32[0] <= v53);
            *a1 = v52;
            a1 += 8;
            if (a7 == v42)
            {
              return result;
            }
          }

          memmove(a1, a7, v42 - a7);
          return result;
        }

        v43 = &a1[v45];
      }
    }

    do
    {
      v50 = *v43;
      v43 += 8;
      *v42 = v50;
      v42 += 8;
    }

    while (v43 != a2);
    goto LABEL_47;
  }

  if (a2 == a3)
  {
    return result;
  }

  v32 = a3 - a2 - 8;
  if (v32 < 0x18)
  {
    v33 = a7;
    v34 = a2;
  }

  else
  {
    v33 = a7;
    v34 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v35 = (v32 >> 3) + 1;
      v36 = 8 * (v35 & 0x3FFFFFFFFFFFFFFCLL);
      v33 = &a7[v36];
      v37 = (a2 + 16);
      v38 = (a7 + 16);
      v39 = v35 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v37[-1];
        v40 = *v37;
        v38[-1] = result;
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 4;
      }

      while (v39);
      if (v35 == (v35 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_59;
      }

      v34 = &a2[v36];
    }
  }

  do
  {
    v54 = *v34;
    v34 += 8;
    *v33 = v54;
    v33 += 8;
  }

  while (v34 != a3);
LABEL_59:
  v55 = 0;
  v56 = *a4;
  v57 = a3;
  while (a2 != a1)
  {
    v58 = *(a2 - 1);
    result.n128_u32[0] = *(*v56 + 4 * *(v33 - 1));
    if (result.n128_f32[0] > *(*v56 + 4 * v58))
    {
      a2 -= 8;
    }

    else
    {
      v58 = *(v33 - 1);
      v33 -= 8;
    }

    *(v57 - 1) = v58;
    v57 -= 8;
    ++v55;
    if (v33 == a7)
    {
      return result;
    }
  }

  v59 = v33 - a7;
  if (v33 != a7)
  {
    v60 = v59 - 8;
    if ((v59 - 8) < 0x48 || (v33 - a3 + 8 * v55) < 0x20)
    {
      v61 = v33;
      goto LABEL_70;
    }

    v64 = (v57 - 16);
    v65 = (v60 >> 3) + 1;
    v61 = &v33[-8 * (v65 & 0x3FFFFFFFFFFFFFFCLL)];
    v66 = (v33 - 16);
    v67 = v65 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v66;
      v64[-1] = v66[-1];
      *v64 = result;
      v64 -= 2;
      v66 -= 2;
      v67 -= 4;
    }

    while (v67);
    if (v65 != (v65 & 0x3FFFFFFFFFFFFFFCLL))
    {
      v57 -= 8 * (v65 & 0x3FFFFFFFFFFFFFFCLL);
LABEL_70:
      v62 = v57 - 8;
      do
      {
        v63 = *(v61 - 1);
        v61 -= 8;
        *v62 = v63;
        v62 -= 8;
      }

      while (v61 != a7);
    }
  }

  return result;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    v10 = __n;
    bzero(this->__end_, 4 * __n);
    this->__end_ = &end[v10];
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t MatrixNxPts<1u,BOOL>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809C90;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_283809C90;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,BOOL>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809C90;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t peridot::HDUnfoldClass::UnFoldRes::UnFoldRes(uint64_t this)
{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

__CFData *peridot::CalibManager::createIspFirmwareCalibV4(peridot::CalibManager *this, _PeridotCalib *a2, const __CFDictionary *a3)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 536);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 536);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    bzero(MutableBytePtr, 0x218uLL);
    peridot::CalibManager::getFwSpotLocations(this, a2, v96);
    *MutableBytePtr = 4;
    v8 = *(this + 8);
    v9 = *(this + 24);
    *(MutableBytePtr + 40) = *(this + 40);
    *(MutableBytePtr + 24) = v9;
    *(MutableBytePtr + 8) = v8;
    v10 = *(this + 56);
    v11 = *(this + 72);
    v12 = *(this + 88);
    *(MutableBytePtr + 26) = *(this + 26);
    *(MutableBytePtr + 88) = v12;
    *(MutableBytePtr + 72) = v11;
    *(MutableBytePtr + 56) = v10;
    v13 = *(this + 346204);
    v14 = *(this + 346220);
    *(MutableBytePtr + 360) = *(this + 346232);
    *(MutableBytePtr + 332) = v13;
    *(MutableBytePtr + 348) = v14;
    v15 = *(this + 346204);
    v17 = *(this + 346220);
    *(MutableBytePtr + 404) = *(this + 346232);
    *(MutableBytePtr + 376) = v15;
    *(MutableBytePtr + 392) = v17;
    v16 = MutableBytePtr + 420;
    v17.f32[0] = v96[1];
    v18 = vcvtms_s32_f32(v96[0]);
    if (v18 >= 82)
    {
      v18 = 82;
    }

    MutableBytePtr[108] = v18 & ~(v18 >> 31);
    v19 = v96[4];
    v20 = vcvtms_s32_f32(v96[2]);
    if (v20 >= 82)
    {
      v20 = 82;
    }

    MutableBytePtr[110] = v20 & ~(v20 >> 31);
    v17.f32[1] = v96[3];
    v21 = vcvtms_s32_f32(v19);
    if (v21 >= 82)
    {
      v21 = 82;
    }

    MutableBytePtr[112] = v21 & ~(v21 >> 31);
    v17.f32[2] = v96[5];
    v23 = v96[8];
    v22.f32[0] = v96[9];
    v24 = vcvtms_s32_f32(v96[6]);
    if (v24 >= 82)
    {
      v24 = 82;
    }

    v17.f32[3] = v96[7];
    MutableBytePtr[114] = v24 & ~(v24 >> 31);
    v25 = vcvtms_s32_f32(v23);
    if (v25 >= 82)
    {
      v25 = 82;
    }

    MutableBytePtr[116] = v25 & ~(v25 >> 31);
    v26 = vcvtms_s32_f32(v96[10]);
    if (v26 >= 82)
    {
      v26 = 82;
    }

    v22.f32[1] = v96[11];
    MutableBytePtr[118] = v26 & ~(v26 >> 31);
    v27 = v96[14];
    v28 = vcvtms_s32_f32(v96[12]);
    if (v28 >= 82)
    {
      v28 = 82;
    }

    v22.f32[2] = v96[13];
    MutableBytePtr[120] = v28 & ~(v28 >> 31);
    v29 = vcvtms_s32_f32(v27);
    if (v29 >= 82)
    {
      v29 = 82;
    }

    v22.f32[3] = v96[15];
    v30 = vmax_s8(vmin_s8(vmovn_s16(vuzp1q_s16(vcvtq_s32_f32(vrndaq_f32(v17)), vcvtq_s32_f32(vrndaq_f32(v22)))), 0x6A6A6A6A6A6A6A6ALL), 0);
    MutableBytePtr[109] = v30.i8[0];
    MutableBytePtr[111] = v30.u8[1];
    MutableBytePtr[113] = v30.u8[2];
    MutableBytePtr[115] = v30.u8[3];
    MutableBytePtr[117] = v30.u8[4];
    MutableBytePtr[119] = v30.u8[5];
    MutableBytePtr[121] = v30.u8[6];
    MutableBytePtr[122] = v29 & ~(v29 >> 31);
    MutableBytePtr[123] = v30.u8[7];
    *v16 = vand_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v30, 0) & 0xFF00FF00FF00FFLL))), v17), vcgtq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v30, 0) & 0xFF00FF00FF00FFLL))), v22))), 0x101010101010101);
    v17.f32[0] = v96[17];
    v31 = vcvtms_s32_f32(v96[16]);
    if (v31 >= 82)
    {
      v31 = 82;
    }

    MutableBytePtr[124] = v31 & ~(v31 >> 31);
    v32 = v96[20];
    v33 = vcvtms_s32_f32(v96[18]);
    if (v33 >= 82)
    {
      v33 = 82;
    }

    v17.f32[1] = v96[19];
    MutableBytePtr[126] = v33 & ~(v33 >> 31);
    v34 = vcvtms_s32_f32(v32);
    if (v34 >= 82)
    {
      v34 = 82;
    }

    v17.f32[2] = v96[21];
    MutableBytePtr[128] = v34 & ~(v34 >> 31);
    v35 = v96[24];
    v36 = vcvtms_s32_f32(v96[22]);
    if (v36 >= 82)
    {
      v36 = 82;
    }

    v17.f32[3] = v96[23];
    *v37.f32 = vmax_s16(vmin_s16(vmovn_s32(vcvtq_s32_f32(vrndaq_f32(v17))), 0x6A006A006A006ALL), 0);
    MutableBytePtr[130] = v36 & ~(v36 >> 31);
    MutableBytePtr[125] = v37.i8[0];
    MutableBytePtr[127] = v37.u8[2];
    MutableBytePtr[129] = v37.u8[4];
    MutableBytePtr[131] = v37.u8[6];
    v38 = vand_s8(vmovn_s32(vcgtq_f32(vcvtq_f32_u32(vmovl_u16((v37.i64[0] & 0x80FF80FF80FF80FFLL))), v17)), 0x1000100010001);
    v37.f32[0] = floorf(v35);
    v39 = v97;
    v40 = v99;
    v37.i32[1] = roundf(v97);
    v37.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(roundf(v99)), COERCE_UNSIGNED_INT(floorf(v98)));
    v41 = vmax_s16(vmin_s16(vmovn_s32(vcvtq_s32_f32(v37)), 0x6A0052006A0052), 0);
    *(MutableBytePtr + 107) = vuzp1_s8(v38, 0).u32[0];
    MutableBytePtr[432] = v39 < v41.u8[2];
    *(MutableBytePtr + 33) = vuzp1_s8(v41, v41).u32[0];
    MutableBytePtr[433] = v40 < v41.u8[6];
    v42 = (MutableBytePtr + 434);
    v43 = MutableBytePtr + 137;
    for (i = 28; i != 56; i += 2)
    {
      v45 = v96[i + 1];
      v46 = vcvtms_s32_f32(v96[i]);
      v47 = llroundf(v45);
      if (v46 >= 82)
      {
        v46 = 82;
      }

      *(v43 - 1) = v46 & ~(v46 >> 31);
      if (v47 >= 106)
      {
        v48 = 106;
      }

      else
      {
        v48 = v47;
      }

      v49 = v48 & ~(v48 >> 31);
      *v43 = v49;
      v43 += 2;
      *v42++ = v45 < v49;
    }

    v50 = (MutableBytePtr + 448);
    v51 = MutableBytePtr + 165;
    for (j = 56; j != 84; j += 2)
    {
      v53 = v96[j + 1];
      v54 = vcvtms_s32_f32(v96[j]);
      v55 = llroundf(v53);
      if (v54 >= 82)
      {
        v54 = 82;
      }

      *(v51 - 1) = v54 & ~(v54 >> 31);
      if (v55 >= 106)
      {
        v56 = 106;
      }

      else
      {
        v56 = v55;
      }

      v57 = v56 & ~(v56 >> 31);
      *v51 = v57;
      v51 += 2;
      *v50++ = v53 < v57;
    }

    v58 = (MutableBytePtr + 462);
    v59 = MutableBytePtr + 193;
    do
    {
      v60 = v96[j + 1];
      v61 = vcvtms_s32_f32(v96[j]);
      v62 = llroundf(v60);
      if (v61 >= 82)
      {
        v61 = 82;
      }

      *(v59 - 1) = v61 & ~(v61 >> 31);
      if (v62 >= 106)
      {
        v63 = 106;
      }

      else
      {
        v63 = v62;
      }

      v64 = v63 & ~(v63 >> 31);
      *v59 = v64;
      v59 += 2;
      *v58++ = v60 < v64;
      j += 2;
    }

    while (j != 112);
    v65 = (MutableBytePtr + 476);
    v66 = MutableBytePtr + 221;
    do
    {
      v67 = v96[j + 1];
      v68 = vcvtms_s32_f32(v96[j]);
      v69 = llroundf(v67);
      if (v68 >= 82)
      {
        v68 = 82;
      }

      *(v66 - 1) = v68 & ~(v68 >> 31);
      if (v69 >= 106)
      {
        v70 = 106;
      }

      else
      {
        v70 = v69;
      }

      v71 = v70 & ~(v70 >> 31);
      *v66 = v71;
      v66 += 2;
      *v65++ = v67 < v71;
      j += 2;
    }

    while (j != 140);
    v72 = (MutableBytePtr + 490);
    v73 = MutableBytePtr + 249;
    do
    {
      v74 = v96[j + 1];
      v75 = vcvtms_s32_f32(v96[j]);
      v76 = llroundf(v74);
      if (v75 >= 82)
      {
        v75 = 82;
      }

      *(v73 - 1) = v75 & ~(v75 >> 31);
      if (v76 >= 106)
      {
        v77 = 106;
      }

      else
      {
        v77 = v76;
      }

      v78 = v77 & ~(v77 >> 31);
      *v73 = v78;
      v73 += 2;
      *v72++ = v74 < v78;
      j += 2;
    }

    while (j != 168);
    v79 = (MutableBytePtr + 504);
    v80 = MutableBytePtr + 277;
    do
    {
      v81 = v96[j + 1];
      v82 = vcvtms_s32_f32(v96[j]);
      v83 = llroundf(v81);
      if (v82 >= 82)
      {
        v82 = 82;
      }

      *(v80 - 1) = v82 & ~(v82 >> 31);
      if (v83 >= 106)
      {
        v84 = 106;
      }

      else
      {
        v84 = v83;
      }

      v85 = v84 & ~(v84 >> 31);
      *v80 = v85;
      v80 += 2;
      *v79++ = v81 < v85;
      j += 2;
    }

    while (j != 196);
    v86 = (MutableBytePtr + 518);
    v87 = MutableBytePtr + 305;
    do
    {
      v88 = v96[j + 1];
      v89 = vcvtms_s32_f32(v96[j]);
      v90 = llroundf(v88);
      if (v89 >= 82)
      {
        v89 = 82;
      }

      *(v87 - 1) = v89 & ~(v89 >> 31);
      if (v90 >= 106)
      {
        v91 = 106;
      }

      else
      {
        v91 = v90;
      }

      v92 = v91 & ~(v91 >> 31);
      *v87 = v92;
      v87 += 2;
      *v86++ = v88 < v92;
      j += 2;
    }

    while (j != 224);
    v93 = +[PDUserDefaults defaults];
    v94 = [v93 disableDynamicHS2];

    if (v94)
    {
      *(v16 + 5) = 0u;
      *(v16 + 6) = 0u;
      *(v16 + 3) = 0u;
      *(v16 + 4) = 0u;
      *(v16 + 1) = 0u;
      *(v16 + 2) = 0u;
      *v16 = 0u;
    }
  }

  return v6;
}

double peridot::PeridotBankTempMeas::PeridotBankTempMeas(peridot::PeridotBankTempMeas *this)
{
  *(this + 2) = 1109393408;
  *&result = vdupq_n_s32(0x42200000u).u64[0];
  *this = result;
  return result;
}

{
  *(this + 2) = 1109393408;
  *&result = vdupq_n_s32(0x42200000u).u64[0];
  *this = result;
  return result;
}

float *peridot::PeridotBankTempMeas::updateTempMeas(float *result, uint64_t a2, int a3, unsigned int a4, int a5, double a6, double a7, double a8, double a9)
{
  v9 = 0.0;
  if (a3 && a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = (a2 + 12);
    do
    {
      v13 = v12;
      v14 = a4;
      do
      {
        if ((*v13 & 7) == 5)
        {
          LOWORD(a9) = *(v13 - 2);
          a9 = *&a9;
          v9 = v9 + -14.969 + a9 * 0.051287;
          ++v10;
        }

        v13 += 9280;
        --v14;
      }

      while (v14);
      ++v11;
      v12 += 9280 * a4;
    }

    while (v11 != a3);
    if (v10)
    {
      v9 = v9 / v10;
    }
  }

  if (a5 != 2)
  {
    if (a5 != 1)
    {
      if (a5)
      {
        return result;
      }

      *result = v9;
    }

    result[1] = v9;
  }

  result[2] = v9;
  return result;
}

float peridot::PeridotBankTempMeas::getTempMeas(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      a1 += 8;
    }

    else
    {
      result = 0.0;
      if (a2 != 1)
      {
        return result;
      }

      a1 += 4;
    }
  }

  return *a1;
}

void sub_2246ECA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::vector<std::vector<unsigned long>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2246EE614(_Unwind_Exception *a1)
{
  GlobalEstimationResult::~GlobalEstimationResult(&STACK[0x278]);
  std::array<std::vector<unsigned char>,8ul>::~array(&STACK[0xD10]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::array<std::vector<unsigned char>,8ul>::~array(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void GlobalEstimationResult::~GlobalEstimationResult(GlobalEstimationResult *this)
{
  v2 = *(this + 125);
  if (v2)
  {
    *(this + 126) = v2;
    operator delete(v2);
  }

  *(this + 6) = &unk_283809BF8;
  if (*(this + 7) && *(this + 72) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 7) = 0;
    *(this + 10) = 0;
    *(this + 72) = 0;
  }

  *(this + 8) = 0;
  *(this + 1) = &unk_283809D90;
  if (*(this + 2) && *(this + 32) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 2) = 0;
    *(this + 5) = 0;
    *(this + 32) = 0;
  }

  *(this + 3) = 0;
}

void MatrixNxPts<1u,unsigned int>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809D90;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t MatrixNxPts<1u,unsigned int>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809D90;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

peridot::PFactorCalculator *peridot::PFactorCalculator::PFactorCalculator(peridot::PFactorCalculator *this)
{
  *this = 0x409000003E19999ALL;
  v2 = (this + 3852);
  memcpy(this + 8, &peridot::gPFactorLUTFixedDxAndMaxRange, 0xF04uLL);
  *(this + 3916) = xmmword_2247A81F0;
  *(this + 3932) = unk_2247A8200;
  *(this + 3948) = xmmword_2247A8210;
  *(this + 3960) = *(&xmmword_2247A8210 + 12);
  *v2 = peridot::gPFactorLUTRangeFixedDxAndMaxRange;
  *(this + 3868) = unk_2247A81C0;
  *(this + 3884) = xmmword_2247A81D0;
  *(this + 3900) = unk_2247A81E0;
  return this;
}

{
  *this = 0x409000003E19999ALL;
  v2 = (this + 3852);
  memcpy(this + 8, &peridot::gPFactorLUTFixedDxAndMaxRange, 0xF04uLL);
  *(this + 3916) = xmmword_2247A81F0;
  *(this + 3932) = unk_2247A8200;
  *(this + 3948) = xmmword_2247A8210;
  *(this + 3960) = *(&xmmword_2247A8210 + 12);
  *v2 = peridot::gPFactorLUTRangeFixedDxAndMaxRange;
  *(this + 3868) = unk_2247A81C0;
  *(this + 3884) = xmmword_2247A81D0;
  *(this + 3900) = unk_2247A81E0;
  return this;
}

double peridot::PFactorCalculator::CalcLUT(void *a1, _OWORD *a2, float a3, float a4)
{
  if (fabs(a3 + -0.15) >= 0.00000999999975 || fabs(a4 + -4.5) >= 0.00000999999975)
  {
    __assert_rtn("CalcLUT", "PFactorCalculator.mm", 40, "!Shouldn't calculate LUT in runtime, check CalcLUT if parameters are changed, and if so, update the PFactorLUT buffers accordingly\\n");
  }

  memcpy(a1, &peridot::gPFactorLUTFixedDxAndMaxRange, 0xF04uLL);
  a2[4] = xmmword_2247A81F0;
  a2[5] = unk_2247A8200;
  a2[6] = xmmword_2247A8210;
  *(a2 + 108) = *(&xmmword_2247A8210 + 12);
  *a2 = peridot::gPFactorLUTRangeFixedDxAndMaxRange;
  a2[1] = unk_2247A81C0;
  result = 0.0562500134;
  a2[2] = xmmword_2247A81D0;
  a2[3] = unk_2247A81E0;
  return result;
}

void peridot::PFactorCalculator::calculatePFactor(peridot::PFactorCalculator *this, float a2, float a3, unint64_t a4, unint64_t a5, float a6, const unint64_t *a7, uint64_t a8, float *a9)
{
  v10 = a8;
  v11 = a4 - a2;
  v12 = a5 - a3;
  if (a8)
  {
    v14 = v11 + -2.0;
    v15 = v12 + -2.0;
    v16 = a7 + 2;
    v17 = 1.0 / a6;
    do
    {
      v18 = v14 + *(v16 - 1);
      v19 = v15 + *(v16 - 2);
      v21 = *v16;
      v20 = v16[1];
      v16 += 4;
      v22 = v18 * v17;
      v23 = (v18 + v20) * v17;
      v24 = v19 * v17;
      v25 = (v19 + v21) * v17;
      v27 = 0;
      v28 = 0;
      peridot::PFactorCalculator::G0(this, v23, v25, &v28 + 1);
      peridot::PFactorCalculator::G0(this, v22, v24, &v28);
      peridot::PFactorCalculator::G0(this, v22, v25, &v27 + 1);
      peridot::PFactorCalculator::G0(this, v23, v24, &v27);
      v26 = fmax(((*&v28 + *(&v28 + 1)) - (*(&v27 + 1) + *&v27)), 0.0);
      *a9++ = v26;
      --v10;
    }

    while (v10);
  }
}

float *peridot::PFactorCalculator::G0(float *this, float a2, float a3, float *a4)
{
  if (a2 < 0.0)
  {
    a2 = -a2;
LABEL_5:
    this = peridot::PFactorCalculator::G0(this, a2, a3, a4);
    v5 = -*a4;
    goto LABEL_25;
  }

  if (a3 < 0.0)
  {
    a3 = -a3;
    goto LABEL_5;
  }

  v7 = *this;
  v6 = this[1];
  v8 = fminf(a2, v6);
  v9 = fminf(a3, v6);
  v10 = 1.0 / *this;
  v11 = vcvtms_u32_f32(v8 * v10);
  v12 = floorf(v9 * v10);
  v13 = vcvtms_u32_f32(v9 * v10);
  v14 = v8 - (*this * floorf(v8 * v10));
  if (*this >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *this;
  }

  if (v14 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = v9 - (v7 * v12);
  if (v7 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *this;
  }

  if (v16 >= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = vcvtas_u32_f32(v6 * v10);
  if (v11 == v19)
  {
    v20 = *this;
  }

  else
  {
    v20 = v15;
  }

  if (v11 == v19)
  {
    LODWORD(v11) = v19 - 1;
  }

  if (v13 == v19)
  {
    v18 = *this;
    LODWORD(v13) = v19 - 1;
  }

  v21 = v20 * v10;
  v22 = v19 + 1;
  v23 = v11 + v13 * v22;
  v24 = this[31 * (v23 % 0x1F) + 2 + v23 / 0x1F];
  v25 = v23 + v22;
  v26 = v21 * this[31 * ((v23 + 1) % 0x1F) + 2 + (v23 + 1) / 0x1F];
  v5 = (v26 + ((1.0 - v21) * v24)) + (((((v21 * this[31 * ((v25 + 1) % 0x1F) + 2 + (v25 + 1) / 0x1F]) + ((1.0 - v21) * this[31 * (v25 % 0x1F) + 2 + v25 / 0x1F])) - (v26 + ((1.0 - v21) * v24))) * v18) * v10);
LABEL_25:
  *a4 = v5;
  return this;
}

void peridot::PeridotAlgo::PeridotAlgo(peridot::PeridotAlgo *this)
{
  operator new();
}

{
  operator new();
}

void peridot::PeridotAlgo::Impl::Impl(peridot::PeridotAlgo::Impl *this)
{
  *this = 0;
  *(this + 402536) = 0u;
  *(this + 403473) = 257;
  *(this + 403475) = 0;
  peridot::PeridotDXP::PeridotDXP((this + 403488));
}

void sub_2246EFD60(_Unwind_Exception *a1)
{
  peridot::PeridotNearRangeIndicator::~PeridotNearRangeIndicator((v1 + v3));
  peridot::PeridotDXP::~PeridotDXP((v1 + v6));
  peridot::PeridotDXP::~PeridotDXP((v1 + v2));
  peridot::PeridotDXP::~PeridotDXP((v1 + v7));
  peridot::PeridotDXP::~PeridotDXP((v1 + v5));
  peridot::PeridotDXP::~PeridotDXP((v1 + v4));
  peridot::PeridotDXP::~PeridotDXP((v1 + 92648));
  peridot::PeridotDXP::~PeridotDXP((v1 + 71542));
  peridot::PeridotDXP::~PeridotDXP((v1 + 50436));
  peridot::PeridotAlgo::PeridotUnitInfo::~PeridotUnitInfo(v1 + 1);

  _Unwind_Resume(a1);
}

void peridot::PeridotAlgo::PeridotUnitInfo::~PeridotUnitInfo(id *this)
{
  v1 = this + 50176;
}

void peridot::PeridotAlgo::~PeridotAlgo(id **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    peridot::PeridotAlgo::Impl::~Impl(v2);
    MEMORY[0x22AA531A0]();
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    peridot::PeridotAlgo::Impl::~Impl(v2);
    MEMORY[0x22AA531A0]();
  }
}

void peridot::PeridotAlgo::Impl::~Impl(id *this)
{
  v2 = (this + 221953);
  v3 = this + 220296;
  v4 = this + 50317;

  v5 = *(v2 + 2);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  peridot::PeridotDXP::~PeridotDXP((this + 198178));
  peridot::PeridotDXP::~PeridotDXP((this + 177072));
  peridot::PeridotDXP::~PeridotDXP((this + 155966));
  peridot::PeridotDXP::~PeridotDXP((this + 134860));
  peridot::PeridotDXP::~PeridotDXP((this + 113754));
  peridot::PeridotDXP::~PeridotDXP((this + 92648));
  peridot::PeridotDXP::~PeridotDXP((this + 71542));
  peridot::PeridotDXP::~PeridotDXP((this + 50436));
}

uint64_t peridot::PeridotAlgo::Impl::init(uint64_t a1, _PeridotCalib *a2, void *a3, int a4, int a5)
{
  v9 = a1 + 402536;
  v10 = a3;
  v11 = v10;
  if (a2)
  {
    memcpy((a1 + 8), a2, 0x62460uLL);
    if (!v11)
    {
      v13 = peridot::CalibManager::getPeridotCamera(a2, v12);
      goto LABEL_6;
    }

LABEL_5:
    v13 = v11;
LABEL_6:
    v14 = *v9;
    *v9 = v13;

    *(v9 + 920) = a4;
    v15 = objc_opt_new();
    v16 = *(v9 + 8);
    *(v9 + 8) = v15;

    bzero((a1 + 402552), 0x388uLL);
    *(v9 + 928) = a5;
    v17 = peridot::presetToRunMode(a5);
    *(v9 + 939) = BYTE2(v17);
    *(v9 + 937) = v17;
    v18 = [[Gmo alloc] initWithUnitInfo:a1 + 8 sessionState:0];
    v19 = *a1;
    *a1 = v18;

    *(a1 + 1766872) = 0;
    peridot::PeridotDXP::init(a1 + 403488, a2, *v9, 0, *(v9 + 937) | (*(v9 + 939) << 16));
  }

  if (v10)
  {
    goto LABEL_5;
  }

  peridot_depth_log("Both PeridotCalib and CameraCalibrationData are empty");

  return 1;
}

uint64_t peridot::PeridotAlgo::prepare(void *a1, int a2)
{
  v2 = *a1;
  v33 = *a1 + 1665648;
  v34 = *a1 + 1690784;
  v31 = *a1 + 1585424;
  v32 = *a1 + 1627888;
  v30 = *a1 + 1521936;
  v28 = *a1 + 1459040;
  v29 = *a1 + 1496800;
  v26 = *a1 + 1353088;
  v27 = *a1 + 1416576;
  v24 = *a1 + 1290192;
  v25 = *a1 + 1327952;
  v22 = *a1 + 1184240;
  v23 = *a1 + 1247728;
  v20 = *a1 + 1121344;
  v21 = *a1 + 1159104;
  v18 = *a1 + 1015392;
  v19 = *a1 + 1078880;
  v16 = *a1 + 952496;
  v17 = *a1 + 990256;
  v14 = *a1 + 846544;
  v15 = *a1 + 910032;
  v12 = *a1 + 783648;
  v13 = *a1 + 821408;
  v3 = (*a1 + 741184);
  v4 = (*a1 + 677696);
  v5 = (*a1 + 652560);
  v6 = (*a1 + 614800);
  v7 = (*a1 + 572336);
  v8 = (*a1 + 508848);
  v9 = (*a1 + 483712);
  *(v2 + 403464) = a2;
  v10 = peridot::presetToRunMode(a2);
  *(v2 + 403473) = v10;
  *(v2 + 403475) = BYTE2(v10);
  *(v2 + 403488) = v10;
  *(v2 + 403490) = BYTE2(v10);
  *(v2 + 445952) = v10;
  *(v2 + 445954) = BYTE2(v10);
  *(v2 + 446756) = v10;
  *(v2 + 446758) = BYTE2(v10);
  *v9 = v10;
  *(v2 + 483714) = BYTE2(v10);
  *v8 = v10;
  *(v2 + 508850) = BYTE2(v10);
  *v7 = v10;
  *(v2 + 572338) = BYTE2(v10);
  *v6 = v10;
  *(v2 + 614802) = BYTE2(v10);
  *(v2 + 615604) = v10;
  *(v2 + 615606) = BYTE2(v10);
  *v5 = v10;
  *(v2 + 652562) = BYTE2(v10);
  *v4 = v10;
  *(v2 + 677698) = BYTE2(v10);
  *v3 = v10;
  *(v2 + 741186) = BYTE2(v10);
  *v12 = v10;
  *(v12 + 2) = BYTE2(v10);
  *(v2 + 784452) = v10;
  *(v2 + 784454) = BYTE2(v10);
  *v13 = v10;
  *(v13 + 2) = BYTE2(v10);
  *v14 = v10;
  *(v14 + 2) = BYTE2(v10);
  *v15 = v10;
  *(v15 + 2) = BYTE2(v10);
  *v16 = v10;
  *(v16 + 2) = BYTE2(v10);
  *(v2 + 953300) = v10;
  *(v2 + 953302) = BYTE2(v10);
  *v17 = v10;
  *(v17 + 2) = BYTE2(v10);
  *v18 = v10;
  *(v18 + 2) = BYTE2(v10);
  *v19 = v10;
  *(v19 + 2) = BYTE2(v10);
  *v20 = v10;
  *(v20 + 2) = BYTE2(v10);
  *(v2 + 1122148) = v10;
  *(v2 + 1122150) = BYTE2(v10);
  *v21 = v10;
  *(v21 + 2) = BYTE2(v10);
  *v22 = v10;
  *(v22 + 2) = BYTE2(v10);
  *v23 = v10;
  *(v23 + 2) = BYTE2(v10);
  *v24 = v10;
  *(v24 + 2) = BYTE2(v10);
  *(v2 + 1290996) = v10;
  *(v2 + 1290998) = BYTE2(v10);
  *v25 = v10;
  *(v25 + 2) = BYTE2(v10);
  *v26 = v10;
  *(v26 + 2) = BYTE2(v10);
  *v27 = v10;
  *(v27 + 2) = BYTE2(v10);
  *v28 = v10;
  *(v28 + 2) = BYTE2(v10);
  *(v2 + 1459844) = v10;
  *(v2 + 1459846) = BYTE2(v10);
  *v29 = v10;
  *(v29 + 2) = BYTE2(v10);
  *v30 = v10;
  *(v30 + 2) = BYTE2(v10);
  *v31 = v10;
  *(v31 + 2) = BYTE2(v10);
  *v32 = v10;
  *(v32 + 2) = BYTE2(v10);
  *(v2 + 1628692) = v10;
  *(v2 + 1628694) = BYTE2(v10);
  *v33 = v10;
  *(v33 + 2) = BYTE2(v10);
  *v34 = v10;
  *(v34 + 2) = BYTE2(v10);
  return 0;
}

uint64_t peridot::PeridotAlgo::Impl::prepare(uint64_t a1, int a2)
{
  v35 = a1 + 1665648;
  v36 = a1 + 1690784;
  v33 = a1 + 1585424;
  v34 = a1 + 1627888;
  v32 = a1 + 1521936;
  v30 = a1 + 1459040;
  v31 = a1 + 1496800;
  v28 = a1 + 1353088;
  v29 = a1 + 1416576;
  v26 = a1 + 1290192;
  v27 = a1 + 1327952;
  v24 = a1 + 1184240;
  v25 = a1 + 1247728;
  v22 = a1 + 1121344;
  v23 = a1 + 1159104;
  v20 = a1 + 1015392;
  v21 = a1 + 1078880;
  v18 = a1 + 952496;
  v19 = a1 + 990256;
  v16 = a1 + 846544;
  v17 = a1 + 910032;
  v14 = a1 + 783648;
  v15 = a1 + 821408;
  v3 = a1 + 741184;
  v4 = a1 + 677696;
  v5 = a1 + 652560;
  v6 = a1 + 614800;
  v7 = a1 + 572336;
  v8 = a1 + 508848;
  v9 = a1 + 483712;
  v10 = a1 + 403464;
  *(a1 + 403464) = a2;
  v11 = a1 + 445952;
  v12 = peridot::presetToRunMode(a2);
  *(v10 + 9) = v12;
  *(v10 + 11) = BYTE2(v12);
  *(v10 + 24) = v12;
  *(v10 + 26) = BYTE2(v12);
  *v11 = v12;
  *(v11 + 2) = BYTE2(v12);
  *(a1 + 446756) = v12;
  *(a1 + 446758) = BYTE2(v12);
  *v9 = v12;
  *(v9 + 2) = BYTE2(v12);
  *v8 = v12;
  *(v8 + 2) = BYTE2(v12);
  *v7 = v12;
  *(v7 + 2) = BYTE2(v12);
  *v6 = v12;
  *(v6 + 2) = BYTE2(v12);
  *(a1 + 615604) = v12;
  *(a1 + 615606) = BYTE2(v12);
  *v5 = v12;
  *(v5 + 2) = BYTE2(v12);
  *v4 = v12;
  *(v4 + 2) = BYTE2(v12);
  *v3 = v12;
  *(v3 + 2) = BYTE2(v12);
  *v14 = v12;
  *(v14 + 2) = BYTE2(v12);
  *(a1 + 784452) = v12;
  *(a1 + 784454) = BYTE2(v12);
  *v15 = v12;
  *(v15 + 2) = BYTE2(v12);
  *v16 = v12;
  *(v16 + 2) = BYTE2(v12);
  *v17 = v12;
  *(v17 + 2) = BYTE2(v12);
  *v18 = v12;
  *(v18 + 2) = BYTE2(v12);
  *(a1 + 953300) = v12;
  *(a1 + 953302) = BYTE2(v12);
  *v19 = v12;
  *(v19 + 2) = BYTE2(v12);
  *v20 = v12;
  *(v20 + 2) = BYTE2(v12);
  *v21 = v12;
  *(v21 + 2) = BYTE2(v12);
  *v22 = v12;
  *(v22 + 2) = BYTE2(v12);
  *(a1 + 1122148) = v12;
  *(a1 + 1122150) = BYTE2(v12);
  *v23 = v12;
  *(v23 + 2) = BYTE2(v12);
  *v24 = v12;
  *(v24 + 2) = BYTE2(v12);
  *v25 = v12;
  *(v25 + 2) = BYTE2(v12);
  *v26 = v12;
  *(v26 + 2) = BYTE2(v12);
  *(a1 + 1290996) = v12;
  *(a1 + 1290998) = BYTE2(v12);
  *v27 = v12;
  *(v27 + 2) = BYTE2(v12);
  *v28 = v12;
  *(v28 + 2) = BYTE2(v12);
  *v29 = v12;
  *(v29 + 2) = BYTE2(v12);
  *v30 = v12;
  *(v30 + 2) = BYTE2(v12);
  *(a1 + 1459844) = v12;
  *(a1 + 1459846) = BYTE2(v12);
  *v31 = v12;
  *(v31 + 2) = BYTE2(v12);
  *v32 = v12;
  *(v32 + 2) = BYTE2(v12);
  *v33 = v12;
  *(v33 + 2) = BYTE2(v12);
  *v34 = v12;
  *(v34 + 2) = BYTE2(v12);
  *(a1 + 1628692) = v12;
  *(a1 + 1628694) = BYTE2(v12);
  *v35 = v12;
  *(v35 + 2) = BYTE2(v12);
  *v36 = v12;
  *(v36 + 2) = BYTE2(v12);
  return 0;
}

void peridot::PeridotAlgo::getOptimizedAnchors(peridot::PeridotAlgo *this, unsigned int a2, CGPoint *a3, unsigned __int8 *a4, unsigned __int8 *a5, double a6, double a7, double a8, int32x4_t a9)
{
  if (!a2)
  {
    __assert_rtn("translateSpotLocationsToAnchors", "PeridotAlgo.mm", 361, "count > 0");
  }

  if (a2 < 4)
  {
    v9 = 0;
    goto LABEL_4;
  }

  v9 = 0;
  v21 = &a4[a2];
  v22 = &a5[a2];
  v23 = &a3[a2];
  v25 = v23 > a4 && v21 > a3;
  v27 = v23 > a5 && v22 > a3;
  v28 = v21 > a5 && v22 > a4;
  if (v28 || v25 || v27)
  {
    goto LABEL_4;
  }

  __asm
  {
    FMOV            V0.2D, #-0.5
    FMOV            V1.2D, #0.5
  }

  if (a2 >= 0x10)
  {
    v9 = a2 & 0xFFFFFFF0;
    v48 = a3;
    v49 = a4;
    v50 = a5;
    v51 = v9;
    do
    {
      p_x = &v48->x;
      v67 = vld2q_f64(p_x);
      p_x += 4;
      v69 = vld2q_f64(p_x);
      v53 = &v48[4].x;
      v70 = vld2q_f64(v53);
      v54 = &v48[6].x;
      *v75.val[0].i8 = vld2q_f64(v54);
      v55 = &v48[8].x;
      *v75.val[2].i8 = vld2q_f64(v55);
      v56 = &v48[10].x;
      v71 = vld2q_f64(v56);
      v57 = &v48[12].x;
      v72 = vld2q_f64(v57);
      v58 = &v48[14].x;
      v73 = vld2q_f64(v58);
      v74.val[3] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v72.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v73.val[0], _Q0))));
      v74.val[2] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v75.val[2], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v71.val[0], _Q0))));
      v74.val[1] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v70.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v75.val[0], _Q0))));
      v74.val[0] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v67.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v69.val[0], _Q0))));
      *v49++ = vqtbl4q_s8(v74, xmmword_2247A4600);
      v70.val[0] = vrndmq_f64(vaddq_f64(v75.val[3], _Q1));
      v75.val[3] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v72.val[1], _Q1))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v73.val[1], _Q1))));
      v75.val[2] = vuzp1q_s32(vcvtq_u64_f64(v70.val[0]), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v71.val[1], _Q1))));
      v75.val[1] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v70.val[1], _Q1))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v75.val[1], _Q1))));
      v75.val[0] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v67.val[1], _Q1))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v69.val[1], _Q1))));
      a9 = vqtbl4q_s8(v75, xmmword_2247A4600);
      *v50++ = a9;
      v48 += 16;
      v51 -= 16;
    }

    while (v51);
    if (v9 == a2)
    {
      goto LABEL_6;
    }

    if ((a2 & 0xC) == 0)
    {
LABEL_4:
      v10 = a2 - v9;
      v11 = &a5[v9];
      v12 = &a4[v9];
      p_y = &a3[v9].y;
      do
      {
        *v12++ = vcvtmd_u64_f64(*(p_y - 1) + -0.5);
        v14 = *p_y;
        p_y += 2;
        *v11++ = vcvtmd_u64_f64(v14 + 0.5);
        --v10;
      }

      while (v10);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v59 = v9;
  v9 = a2 & 0xFFFFFFFC;
  v60 = v59 - v9;
  v61 = &a5[v59];
  v62 = &a4[v59];
  v63 = &a3[v59];
  do
  {
    v64 = &v63->x;
    v66 = vld2q_f64(v64);
    v64 += 4;
    v68 = vld2q_f64(v64);
    v65 = vmovn_s32(vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v66.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v68.val[0], _Q0)))));
    v66.val[0] = vaddq_f64(v66.val[1], _Q1);
    a9 = vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v68.val[1], _Q1)));
    *v62 = vuzp1_s8(v65, *&_Q0.f64[0]).u32[0];
    v62 += 4;
    *v61 = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(v66.val[0])), a9)), *&_Q0.f64[0]).u32[0];
    v61 += 4;
    v63 += 4;
    v60 += 4;
  }

  while (v60);
  if (v9 != a2)
  {
    goto LABEL_4;
  }

LABEL_6:
  if (a2 < 4 || &a5[a2] > a4 && &a4[a2] > a5)
  {
    v15 = 0;
    goto LABEL_10;
  }

  if (a2 < 0x20)
  {
    v15 = 0;
LABEL_45:
    v43 = v15;
    v15 = a2 & 0xFFFFFFFC;
    v44 = v43 - v15;
    v45 = &a5[v43];
    v46 = &a4[v43];
    do
    {
      a9.i32[0] = *v46;
      v47 = vuzp1_s8(vmin_u16(*&vmovl_u8(*a9.i8), 0x54005400540054), 0x54005400540054);
      *v46++ = v47.i32[0];
      v47.i32[0] = *v45;
      *a9.i8 = vuzp1_s8(vmax_u16(vmin_u16(*&vmovl_u8(v47), 0x6C006C006C006CLL), 0x2000200020002), 0x54005400540054);
      *v45 = a9.i32[0];
      v45 += 4;
      v44 += 4;
    }

    while (v44);
    if (v15 == a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v15 = a2 & 0xFFFFFFE0;
  v35 = (a5 + 16);
  v36 = (a4 + 16);
  v37.i64[0] = 0x5454545454545454;
  v37.i64[1] = 0x5454545454545454;
  v38.i64[0] = 0x6C6C6C6C6C6C6C6CLL;
  v38.i64[1] = 0x6C6C6C6C6C6C6C6CLL;
  v39.i64[0] = 0x202020202020202;
  v39.i64[1] = 0x202020202020202;
  v40 = v15;
  do
  {
    v41 = vminq_u8(*v36, v37);
    v36[-1] = vminq_u8(v36[-1], v37);
    *v36 = v41;
    a9 = vmaxq_u8(vminq_u8(v35[-1], v38), v39);
    v42 = vmaxq_u8(vminq_u8(*v35, v38), v39);
    v35[-1] = a9;
    *v35 = v42;
    v35 += 2;
    v36 += 2;
    v40 -= 32;
  }

  while (v40);
  if (v15 == a2)
  {
    return;
  }

  if ((a2 & 0x1C) != 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  v16 = a2 - v15;
  v17 = &a5[v15];
  v18 = &a4[v15];
  do
  {
    v19 = *v18;
    if (v19 >= 0x54)
    {
      LOBYTE(v19) = 84;
    }

    *v18++ = v19;
    v20 = *v17;
    if (v20 >= 0x6C)
    {
      v20 = 108;
    }

    if (v20 <= 2)
    {
      LOBYTE(v20) = 2;
    }

    *v17++ = v20;
    --v16;
  }

  while (v16);
}

const double *peridot::PeridotAlgo::Impl::translateSpotLocationsToAnchors(peridot::PeridotAlgo::Impl *this, unsigned int a2, CGPoint *a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6, double a7, double a8, double a9, double a10, uint8x16_t a11)
{
  if (!a2)
  {
    __assert_rtn("translateSpotLocationsToAnchors", "PeridotAlgo.mm", 361, "count > 0");
  }

  v11 = a6 != 0;
  if (a6)
  {
    v12 = 83;
  }

  else
  {
    v12 = 84;
  }

  if (a6)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  if (a6)
  {
    v14 = 107;
  }

  else
  {
    v14 = 108;
  }

  if (a2 < 4)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
  v31 = &a4[a2];
  v32 = &a5[a2];
  v33 = &a3[a2];
  v35 = v33 > a4 && v31 > a3;
  v37 = v33 > a5 && v32 > a3;
  v38 = v31 > a5 && v32 > a4;
  if (v38 || v35 || v37)
  {
    goto LABEL_13;
  }

  __asm
  {
    FMOV            V0.2D, #-0.5
    FMOV            V1.2D, #0.5
  }

  if (a2 >= 0x10)
  {
    v15 = a2 & 0xFFFFFFF0;
    v63 = a3;
    v64 = a4;
    v65 = a5;
    v66 = v15;
    do
    {
      p_x = &v63->x;
      v82 = vld2q_f64(p_x);
      p_x += 4;
      v83 = vld2q_f64(p_x);
      v68 = &v63[4].x;
      v84 = vld2q_f64(v68);
      v69 = &v63[6].x;
      *v89.val[0].i8 = vld2q_f64(v69);
      v70 = &v63[8].x;
      *v89.val[2].i8 = vld2q_f64(v70);
      v71 = &v63[10].x;
      v85 = vld2q_f64(v71);
      v72 = &v63[12].x;
      v86 = vld2q_f64(v72);
      result = &v63[14].x;
      v87 = vld2q_f64(result);
      v88.val[3] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v86.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v87.val[0], _Q0))));
      v88.val[2] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v89.val[2], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v85.val[0], _Q0))));
      v88.val[1] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v84.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v89.val[0], _Q0))));
      v88.val[0] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v82.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v83.val[0], _Q0))));
      *v64++ = vqtbl4q_s8(v88, xmmword_2247A4600);
      v82.val[0] = vaddq_f64(v82.val[1], _Q1);
      v84.val[0] = vrndmq_f64(vaddq_f64(v89.val[3], _Q1));
      v89.val[3] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v86.val[1], _Q1))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v87.val[1], _Q1))));
      v89.val[2] = vuzp1q_s32(vcvtq_u64_f64(v84.val[0]), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v85.val[1], _Q1))));
      v89.val[1] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v84.val[1], _Q1))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v89.val[1], _Q1))));
      a11 = vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v83.val[1], _Q1)));
      v89.val[0] = vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(v82.val[0])), a11);
      *v65++ = vqtbl4q_s8(v89, xmmword_2247A4600);
      v63 += 16;
      v66 -= 16;
    }

    while (v66);
    if (v15 == a2)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC) == 0)
    {
LABEL_13:
      v16 = a2 - v15;
      v17 = &a5[v15];
      v18 = &a4[v15];
      p_y = &a3[v15].y;
      do
      {
        *v18++ = vcvtmd_u64_f64(*(p_y - 1) + -0.5);
        v20 = *p_y;
        p_y += 2;
        *v17++ = vcvtmd_u64_f64(v20 + 0.5);
        --v16;
      }

      while (v16);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
  }

  v74 = v15;
  v15 = a2 & 0xFFFFFFFC;
  v75 = v74 - v15;
  v76 = &a5[v74];
  v77 = &a4[v74];
  v78 = &a3[v74];
  do
  {
    v79 = &v78->x;
    v81 = vld2q_f64(v79);
    result = v79 + 4;
    *a11.i8 = vld2q_f64(result);
    *a11.i8 = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v81.val[0], _Q0))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(a11, _Q0))))), *&_Q0.f64[0]);
    *v77 = a11.i32[0];
    v77 += 4;
    *v76 = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v81.val[1], _Q1))), vcvtq_u64_f64(vrndmq_f64(vaddq_f64(v80, _Q1))))), *&_Q0.f64[0]).u32[0];
    v76 += 4;
    v78 += 4;
    v75 += 4;
  }

  while (v75);
  if (v15 != a2)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (a2 <= 3 || &a5[a2] > a4 && &a4[a2] > a5)
  {
    v21 = 0;
    goto LABEL_19;
  }

  if (a2 < 0x10)
  {
    v21 = 0;
LABEL_60:
    v52 = v21;
    v53 = vdup_n_s16(v11);
    v54 = vdup_n_s16(v12);
    v55 = vdup_n_s16(v13);
    v21 = a2 & 0xFFFFFFFC;
    v56 = vdup_n_s16(v14);
    v57 = v52 - v21;
    v58 = &a5[v52];
    v59 = &a4[v52];
    do
    {
      a11.i32[0] = *v59;
      v60 = vmovl_u8(*a11.i8).u64[0];
      v61 = vuzp1_s8(vbsl_s8(vcgt_u16(v53, v60), v53, vmin_u16(v60, v54)), v53);
      *v59++ = v61.i32[0];
      v61.i32[0] = *v58;
      v62 = vmovl_u8(v61).u64[0];
      *a11.i8 = vuzp1_s8(vbsl_s8(vcgt_u16(v55, v62), v55, vmin_u16(v62, v56)), v53);
      *v58 = a11.i32[0];
      v58 += 4;
      v57 += 4;
    }

    while (v57);
    if (v21 == a2)
    {
      return result;
    }

    goto LABEL_19;
  }

  v45 = vdupq_n_s8(v11);
  v46 = vdupq_n_s8(v12);
  v47 = vdupq_n_s8(v13);
  v21 = a2 & 0xFFFFFFF0;
  v48 = vdupq_n_s8(v14);
  v49 = a4;
  v50 = a5;
  v51 = v21;
  do
  {
    *v49 = vbslq_s8(vcgtq_u8(v45, *v49), v45, vminq_u8(*v49, v46));
    ++v49;
    a11 = vbslq_s8(vcgtq_u8(v47, *v50), v47, vminq_u8(*v50, v48));
    *v50++ = a11;
    v51 -= 16;
  }

  while (v51);
  if (v21 == a2)
  {
    return result;
  }

  if ((a2 & 0xC) != 0)
  {
    goto LABEL_60;
  }

LABEL_19:
  v22 = a2 - v21;
  v23 = &a5[v21];
  v24 = &a4[v21];
  do
  {
    v25 = *v24;
    if (v25 >= v12)
    {
      v26 = v12;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= v11)
    {
      v27 = v26;
    }

    else
    {
      v27 = a6 != 0;
    }

    *v24++ = v27;
    v28 = *v23;
    if (v28 >= v14)
    {
      v29 = v14;
    }

    else
    {
      v29 = *v23;
    }

    if (v28 >= v13)
    {
      v30 = v29;
    }

    else
    {
      v30 = v13;
    }

    *v23++ = v30;
    --v22;
  }

  while (v22);
  return result;
}

uint64_t peridot::PeridotAlgo::Impl::processSuperFrame(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v50 = v5;
  v7 = v6;
  v8 = v4;
  v72 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v62 = 0;
  v61 = 0;
  if ((PeridotSuperFrame::loadFromBuffer(&v61, v9, v10, 0) & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = v62;
  if (!v62)
  {
    peridot_depth_log("Empty frame");
    goto LABEL_6;
  }

  if (v62 > *v7)
  {
    peridot_depth_log("Number of banks provided by frame larger then requested");
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v19 = 0;
  *v7 = v62;
  v49 = (v8 + 403488);
  v48 = v8;
  for (i = 3728; v15; v19 += 4504)
  {
    v21 = v50 + v19;
    LODWORD(v11) = HIDWORD(v49[21106 * (*(v64[*(&v61 + i)] + 2) - 1) + 5304]);
    v51 = v11;
    *(v50 + v19 + 4312) = *(v64[*(&v61 + i)] + 2) - 1;
    bzero(v50 + v19, 0x10D8uLL);
    v21[612] = 1;
    v21[920] = 2;
    v21[1228] = 3;
    v21[1536] = 4;
    v21[1844] = 5;
    v21[2152] = 6;
    v21[2460] = 7;
    v21[2768] = 8;
    v21[3076] = 9;
    v21[3384] = 10;
    v21[3692] = 11;
    v21[4000] = 12;
    v21[4308] = 13;
    *(v21 + 540) = *(v8 + 220932);
    *(v21 + 541) = *(v8 + 220933);
    *(v21 + 542) = *(v8 + 220934);
    *(v21 + 543) = *(v8 + 220935);
    *(v21 + 544) = *(v8 + 220936);
    *(v21 + 545) = *(v8 + 220937);
    *(v21 + 546) = *(v8 + 220938);
    *(v21 + 547) = *(v8 + 220939);
    *(v21 + 548) = *(v8 + 220940);
    v13 = v51;
    *(v21 + 1102) = LODWORD(v51);
    *(v21 + 553) = vmul_n_f32(0x3FC0000040400000, *&v51);
    v12 = 2.3;
    v11 = *&v51 * 2.3;
    *&v11 = v11;
    *(v21 + 1109) = LODWORD(v11);
    *&v11 = *&v13 + *&v13;
    *(v21 + 1110) = *&v51 + *&v51;
    v22 = v50 + v19 + 4408;
    *(v22 + 17) = 1017370378;
    *(v22 + 60) = 0x4009999A3FD9999ALL;
    *(v21 + 4484) = 0x3189705F2FA4ED3FLL;
    --v15;
    i += 8;
  }

  if (v67 == -1 || v69 == -1)
  {
    v24 = v67 == -1 && v69 == -1;
    v26 = v8;
    v27 = (v8 + 402544);
    if (!v24)
    {
      peridot_depth_log("Only MNormal/Normal mode is supported currently");
      goto LABEL_6;
    }

    v25 = 0;
  }

  else
  {
    v25 = 2;
    v26 = v8;
    v27 = (v8 + 402544);
  }

  *(v27 + 231) = v25;
  v52 = v26 + 1754272;
  if (v62 >> 1)
  {
    if (*(v64[0] + 75) && *(v64[1] + 75))
    {
      v28 = *(v63 + 9280 * v65 + 52);
      v29 = (v28 >> 4) * (v28 >> 12);
      if (v29 != 12 || (v30 = *(v63 + 9280 * v66 + 52), (v30 >> 4) * (v30 >> 12) != 12))
      {
        peridot_depth_log("Wrong super frame - expected %zu normal frames, got %zu", 0xCuLL, v29);
        goto LABEL_6;
      }

      v58 = v63 + 9280 * v65;
      v57[0] = v63 + 9280 * v66;
      if ((*(v27 + 231) - 1) > 1)
      {
        v31 = 0;
        v32 = 0;
        v59 = 0;
        v60 = 0;
      }

      else
      {
        v59 = v63 + 9280 * v67;
        v60 = v63 + 9280 * v69;
        v31 = v63 + 9280 * v68;
        v32 = v63 + 9280 * v70;
      }

      v57[1] = v31;
      v57[2] = v32;
      v33 = *(v64[v64[351]] + 2) - 1;
      v34 = *(v64[v64[352]] + 2) - 1;
      peridot::PeridotAlgo::Impl::updateTempMeas(v26, &v58, v57, v33, v34, v11, v12, v13, v14);
      v56 = 0;
      v35 = &v49[21106 * v33];
      peridot::PeridotDXP::configure(v35, &v61, *(v27 + 231), v26 + 8, 0, &v56);
      if (!v39)
      {
        LODWORD(v40) = peridot::PeridotT0::configure((v52 + 776 * v33), &v61, 0, &v56, v36, v37, v38).u32[0];
        v41 = *(v27 + 231);
        if ((v41 - 1) <= 1 && *(v35 + 168488) == 1)
        {
          peridot::PeridotAlgo::Impl::macroProcessingDelayCalib(v26, v33, v41, v40);
        }

        v55 = 0;
        peridot::PeridotDXP::configure(&v49[21106 * v34], &v61, v41, v26 + 8, 1, &v55);
        LODWORD(v46) = peridot::PeridotT0::configure((v52 + 776 * v34), &v61, 1, &v55, v42, v43, v44).u32[0];
        v47 = *(v27 + 231);
        if ((v47 - 1) <= 1 && LOBYTE(v49[21106 * v34 + 21061]) == 1)
        {
          peridot::PeridotAlgo::Impl::macroProcessingDelayCalib(v48, v34, *&v45, v46);
        }

        bzero(v54, 0x4CCuLL);
        bzero(v53, 0x4CCuLL);
        peridot::PeridotDXP::refPixelDetectorEstimator(v35, &v58, v47);
      }

      peridot_depth_log("Wrong Configuration: configuration failed for bank %d", v33);
      v16 = 4;
    }

    else
    {
      peridot_depth_log("trgouten flag is null - projector is off");
      v16 = 3;
    }
  }

  else
  {
    ++*(v8 + 220859);
    [*v27 commit];
    PeridotTelemetry::frameProcessed((v26 + 1775856), &v61, v50);
    v16 = 0;
  }

LABEL_7:
  v17 = v71;
  v71 = 0;
  if (v17)
  {
    MEMORY[0x22AA53170](v17, 0x1000C801E9FC43BLL);
  }

  return v16;
}

void sub_2246F1D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(&a34);
  peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(&a62);
  v63 = STACK[0x65C8];
  STACK[0x65C8] = 0;
  if (v63)
  {
    MEMORY[0x22AA53170](v63, 0x1000C801E9FC43BLL);
  }

  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotAlgo::Impl::updateTempMeas(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5, double a6, double a7, double a8, double a9)
{
  v9 = 0;
  v10 = *a2;
  v11 = 0.0;
  v12 = 3;
  do
  {
    if ((*(v10 + 12) & 7) == 5)
    {
      LOWORD(a9) = *(v10 + 8);
      a9 = *&a9;
      v11 = v11 + -14.969 + a9 * 0.051287;
      ++v9;
    }

    if ((*(v10 + 9292) & 7) == 5)
    {
      LOWORD(a9) = *(v10 + 9288);
      a9 = *&a9;
      v11 = v11 + -14.969 + a9 * 0.051287;
      ++v9;
    }

    if ((*(v10 + 18572) & 7) == 5)
    {
      LOWORD(a9) = *(v10 + 18568);
      a9 = *&a9;
      v11 = v11 + -14.969 + a9 * 0.051287;
      ++v9;
    }

    if ((*(v10 + 27852) & 7) == 5)
    {
      LOWORD(a9) = *(v10 + 27848);
      a9 = *&a9;
      v11 = v11 + -14.969 + a9 * 0.051287;
      ++v9;
    }

    v10 += 37120;
    --v12;
  }

  while (v12);
  v13 = a1 + 1760480;
  v14 = (a1 + 1760480 + 12 * a4);
  if (v9)
  {
    *&a9 = v9;
    v11 = v11 / v9;
  }

  *v14 = v11;
  v14[1] = v11;
  v14[2] = v11;
  v15 = *(a1 + 403468);
  if (v15 == 2)
  {
    v16 = a2[1];
    v17 = *(v16 + 12) & 7;
    v18 = 0;
    v19 = 0.0;
    v20 = 0;
    if (v17 == 5)
    {
      LOWORD(v20) = *(v16 + 8);
      *&v20 = v20 * 0.051287 + -14.969;
      v19 = 1.0;
    }

    v21 = *&v20 / v19;
    if (v17 == 5)
    {
      *&v20 = v21;
    }

    *(v14 + 1) = v20;
    *(v14 + 2) = v20;
    v22 = a2[2];
    v23 = *(v22 + 12) & 7;
    a9 = 0.0;
    if (v23 == 5)
    {
      LOWORD(v18) = *(v22 + 8);
      *&a9 = v18 * 0.051287 + -14.969;
      LODWORD(v18) = 1.0;
    }

    v24 = *&a9 / *&v18;
    if (v23 != 5)
    {
      v24 = *&a9;
    }

    v14[2] = v24;
  }

  v25 = 0;
  v26 = 3;
  v27 = *a3;
  v28 = 0.0;
  result = 18568;
  do
  {
    if ((*(v27 + 12) & 7) == 5)
    {
      LOWORD(a9) = *(v27 + 8);
      a9 = *&a9;
      v28 = v28 + -14.969 + a9 * 0.051287;
      ++v25;
    }

    if ((*(v27 + 9292) & 7) == 5)
    {
      LOWORD(a9) = *(v27 + 9288);
      a9 = *&a9;
      v28 = v28 + -14.969 + a9 * 0.051287;
      ++v25;
    }

    if ((*(v27 + 18572) & 7) == 5)
    {
      LOWORD(a9) = *(v27 + 18568);
      a9 = *&a9;
      v28 = v28 + -14.969 + a9 * 0.051287;
      ++v25;
    }

    if ((*(v27 + 27852) & 7) == 5)
    {
      LOWORD(a9) = *(v27 + 27848);
      a9 = *&a9;
      v28 = v28 + -14.969 + a9 * 0.051287;
      ++v25;
    }

    v27 += 37120;
    --v26;
  }

  while (v26);
  v30 = (v13 + 12 * a5);
  if (v25)
  {
    v28 = v28 / v25;
  }

  *v30 = v28;
  v30[1] = v28;
  v30[2] = v28;
  if (v15 == 2)
  {
    v31 = a3[1];
    v32 = *(v31 + 12) & 7;
    v33 = 0;
    v34 = 0.0;
    v35 = 0;
    if (v32 == 5)
    {
      LOWORD(v35) = *(v31 + 8);
      *&v35 = v35 * 0.051287 + -14.969;
      v34 = 1.0;
    }

    v36 = *&v35 / v34;
    if (v32 == 5)
    {
      *&v35 = v36;
    }

    *(v30 + 1) = v35;
    *(v30 + 2) = v35;
    v37 = a3[2];
    v38 = *(v37 + 12) & 7;
    v39 = 0.0;
    if (v38 == 5)
    {
      LOWORD(v33) = *(v37 + 8);
      v39 = v33 * 0.051287 + -14.969;
      LODWORD(v33) = 1.0;
    }

    v40 = v39 / *&v33;
    if (v38 != 5)
    {
      v40 = v39;
    }

    v30[2] = v40;
  }

  return result;
}

void peridot::PeridotAlgo::Impl::macroProcessingDelayCalib(peridot::PeridotAlgo::Impl *this, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](this, a2, a3, a4);
  v6 = v4 + 168848 * v5;
  v7 = v4 + 776 * v5;
  *(v6 + 407008) = 0;
  *(v7 + 1754932) = 0;
  *(v7 + 1754272) = 0u;
  *(v7 + 1754288) = 0u;
  *(v7 + 1754304) = 0u;
  *(v7 + 1754320) = 0;
  *(v7 + 1754328) = 0;
  *(v7 + 1754332) = 0u;
  *(v7 + 1754348) = 0u;
  v8 = vdupq_n_s32(0x461E5800u).u64[0];
  *(v6 + 406960) = 1176393728;
  *(v6 + 406952) = v8;
  *(v6 + 482384) = xmmword_2247A49A0;
  *(v6 + 508920) = 1176393728;
  *(v6 + 508912) = v8;
  *(v6 + 482400) = xmmword_2247A49B0;
  *(v6 + 407000) = vdup_n_s32(0x45EDD000u);
  *(v6 + 406936) = 786163455;
  *(v6 + 406928) = vdupq_n_s32(0x2EDBE6FFu).u64[0];
  *(v6 + 540456) = 786163455;
  *(v6 + 571904) = 786163455;
  v9 = *(v6 + 407032);
  v10 = *(v6 + 407040);
  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_2246F7528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, char a49)
{
  peridot::PeridotDepth::~PeridotDepth(&a49);
  peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(&STACK[0xBC8]);
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1E40]);
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1E58]);
  operator delete(v49);
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1E70]);
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1E88]);
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1EA0]);
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1EB8]);
  operator delete(a45);
  if (a36)
  {
    operator delete(a36);
  }

  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1ED0]);
  operator delete(a37);
  operator delete(a43);
  if (STACK[0x1F78])
  {
    operator delete(STACK[0x1F78]);
    v51 = STACK[0x1F60];
    if (!STACK[0x1F60])
    {
LABEL_5:
      v52 = STACK[0x1F48];
      if (!STACK[0x1F48])
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v51 = STACK[0x1F60];
    if (!STACK[0x1F60])
    {
      goto LABEL_5;
    }
  }

  operator delete(v51);
  v52 = STACK[0x1F48];
  if (!STACK[0x1F48])
  {
LABEL_6:
    v53 = STACK[0x1F30];
    if (!STACK[0x1F30])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(v52);
  v53 = STACK[0x1F30];
  if (!STACK[0x1F30])
  {
LABEL_8:
    std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1EE8]);
    std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1F00]);
    std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](&STACK[0x1F18]);
    operator delete(a48);
    if (a41)
    {
      operator delete(a41);
    }

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v53);
  goto LABEL_8;
}

void peridot::PeridotAlgo::Impl::runBankWithT0(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  v38 = *MEMORY[0x277D85DE8];
  v14 = (v4 + 168848 * v9);
  v15 = *(v7 + 120);
  v16 = *(v7 + 124);
  v17 = vaddq_f32(*(v7 + 104), vaddq_f32(*(v7 + 72), *(v7 + 88)));
  v17.f32[0] = vaddv_f32(*&vpaddq_f32(v17, v17));
  v18 = vaddq_f32(*(v7 + 160), vaddq_f32(*(v7 + 128), *(v7 + 144)));
  v17.i32[1] = vaddv_f32(*&vpaddq_f32(v18, v18));
  v15.i32[1] = *(v7 + 176);
  v16.i32[1] = *(v7 + 180);
  *v17.f32 = vmul_f32(vadd_f32(*v17.f32, vadd_f32(v15, v16)), vdup_n_s32(0x3D924925u));
  v19 = vdiv_f32(vbic_s8(*v17.f32, vcltz_f32(*v17.f32)), v14[50866]);
  v34[0][0][0] = v19;
  v20 = vaddq_f32(*(v7 + 216), vaddq_f32(*(v7 + 184), *(v7 + 200)));
  v21 = (vaddv_f32(*&vpaddq_f32(v20, v20)) + (*(v7 + 232) + *(v7 + 236))) * 0.071429;
  v22 = 0.0;
  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  v23 = v21 / v14[50867].f32[0];
  *&v34[0][0][1] = v23;
  __asm
  {
    FMOV            V3.2S, #1.5
    FMOV            V4.2S, #-1.5
  }

  v32 = vbic_s8(vadd_f32(v19, _D4), vcgt_f32(_D3, v19));
  if (v23 >= 1.5)
  {
    v22 = v23 + -1.5;
  }

  v33 = v22;
  v31[0] = vcvt_f32_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(vsub_f32(v19, vdup_lane_s32(v19, 0))), vdupq_n_s64(0x4059000000000000uLL))), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  v36 = v31[0];
  v30 = round((v23 - v19.f32[0]) * 100.0) * 0.01;
  *&v31[1] = v30;
  v37 = v30;
  peridot::PeridotDXPBaselineRemoval::strayPeakUpdate(&v14[55751], v34, v31, &v32, &v36);
  peridot::PeridotDXP::run(v14 + 403488, v12, v8, v14 + 445880, v13 + 112 * v10 + 402552, &v36, &v35, v6);
}

void peridot::PeridotAlgo::Impl::fillGmoInput(float a1, double a2, float a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *a11)
{
  v13 = (a10 + 0x2000);
  v14 = &a5[a8];
  v15 = v14[494];
  v16 = a5[2] + 9280 * v15;
  v17 = *(v16 + 52) >> 4;
  *(a10 + 32) = v17;
  v18 = *(v16 + 52);
  *(a10 + 24) = v18 >> 12;
  v19 = a5 + 227;
  v20 = a5[v15 + 227];
  LOWORD(a1) = *(v20 + 4);
  LOBYTE(a3) = *(a5 + v15 + 3616);
  v21 = 0.000000020833 / (LODWORD(a1) + (((*(v20 + 6) << 8) + LODWORD(a3)) * 0.000015259));
  *(a10 + 40) = v21;
  *(a10 + 44) = v21;
  *(a10 + 48) = v21;
  if (v17)
  {
    v22 = 0;
    v23 = (a10 + 1564);
    v24 = 9280 * v15 + 10200;
    v25 = v17;
    do
    {
      if (v25 && v18 >= 0x1000)
      {
        v26 = 0;
        v27 = a5[2];
        v28 = v27 + 9280 * v15;
        v29 = *(a10 + 24);
        v30 = *(a10 + 32);
        v31 = (v27 + v24);
        v32 = v23;
        v33 = v18 >> 12;
        do
        {
          if (v33)
          {
            v34 = a10 + 860 + 48 * v22 + 2688 * v26;
            v35 = (v28 + 9280 * v33 * v26 + 640 * v22);
            v36 = v35[115].u32[0];
            v37 = vdupq_n_s32(v36);
            v38.i32[0] = v36;
            v38.i32[1] = v36 >> 2;
            v38.u64[1] = vshl_u32(*v37.i8, 0xFFFFFFFAFFFFFFFCLL);
            v39 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v37, xmmword_2247A49C0), vmovl_u16(v35[113]), 2uLL));
            *v34 = vcvtq_f32_u32(vsliq_n_s32(v38, vmovl_u16(v35[112]), 2uLL));
            *(v34 + 16) = v39;
            *(v34 + 32) = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v37, xmmword_2247A49D0), vmovl_u16(v35[114]), 2uLL));
            v17 = v30;
            v33 = v29;
            if (v29 >= 2)
            {
              v40 = v31;
              v41 = v32;
              for (i = 1; i != v29; ++i)
              {
                v43 = vdupq_n_s32(*v40);
                v44.i32[0] = *v40;
                v44.i32[1] = *v40 >> 2;
                v44.u64[1] = vshl_u32(*v43.i8, 0xFFFFFFFAFFFFFFFCLL);
                v45 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v43, xmmword_2247A49C0), vmovl_u16(*(v40 - 4)), 2uLL));
                v41[-2] = vcvtq_f32_u32(vsliq_n_s32(v44, vmovl_u16(*(v40 - 6)), 2uLL));
                v41[-1] = v45;
                *v41 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v43, xmmword_2247A49D0), vmovl_u16(*(v40 - 2)), 2uLL));
                v41 += 42;
                v40 += 2320;
              }

              v17 = v30;
              v33 = v29;
            }
          }

          ++v26;
          v32 += 168;
          v31 += 2320 * v29;
          v25 = v17;
        }

        while (v26 < v17);
      }

      ++v22;
      v23 += 3;
      v24 += 640;
    }

    while (v22 != 14);
  }

  *a10 = (*(a5[v14[466] + 115] + 2) - 1);
  *(a10 + 8) = a8;
  *(a10 + 16) = a9;
  time = *a11;
  *(a10 + 64) = CMTimeGetSeconds(&time);
  v46 = &a5[v15];
  v47 = v46[3];
  v48 = *(v47 + 4);
  *(a10 + 8930) = *(v47 + 10);
  *(a10 + 8924) = v48;
  v49 = v46[3];
  v50 = *(v49 + 38);
  *(a10 + 8938) = *(v49 + 32);
  *(a10 + 8944) = v50;
  v51 = a5[v15 + 115];
  v13[760] = (v51[2] & 0x120000) == 0x100000;
  v13[761] = (v51[3] & 0x120000) == 0x100000;
  v13[762] = (v51[4] & 0x120000) == 0x100000;
  v13[763] = (v51[5] & 0x120000) == 0x100000;
  v13[764] = (v51[6] & 0x120000) == 0x100000;
  v13[765] = (v51[7] & 0x120000) == 0x100000;
  v13[766] = (v51[8] & 0x120000) == 0x100000;
  v13[767] = (v51[9] & 0x120000) == 0x100000;
  v13[768] = (v51[10] & 0x120000) == 0x100000;
  v13[769] = (v51[11] & 0x120000) == 0x100000;
  v13[770] = (v51[12] & 0x120000) == 0x100000;
  v13[771] = (v51[13] & 0x120000) == 0x100000;
  v13[772] = (v51[14] & 0x120000) == 0x100000;
  v13[773] = (v51[15] & 0x120000) == 0x100000;
  v52 = *(a10 + 24);
  v53 = *(a10 + 32);
  if (v53)
  {
    if (!v52)
    {
      goto LABEL_24;
    }

    v54 = 0;
    v55 = a10 + 8974;
    v56 = 8 * v52;
    v57 = &a5[v15 + 228];
    v58 = *(a10 + 24);
    do
    {
      if (v58)
      {
        v59 = v58 * v54;
        v60 = *(v19[v59 + v15] + 48);
        *(a10 + 8966 + 8 * v59) = vzip2_s16(vzip1_s16(v60, vext_s8(v60, v60, 6uLL)), v60);
        v58 = v52;
        if (v52 != 1)
        {
          v61 = 0;
          do
          {
            v62 = *(*(v57 + 8 * v61) + 48);
            *(v55 + 8 * v61++) = vzip2_s16(vzip1_s16(v62, vext_s8(v62, v62, 6uLL)), v62);
          }

          while (v52 - 1 != v61);
          v58 = v52;
        }
      }

      ++v54;
      v55 += v56;
      v57 += v56;
    }

    while (v54 < v53);
  }

  if (v52)
  {
    bzero((a10 + 24 * v52 + 8966), 8 * v52);
  }

LABEL_24:
  v63 = 0;
  v64 = (a6 + 88);
  v65 = (a7 + 64);
  v66 = 412;
  do
  {
    v67 = a10 + v63;
    v68 = *(v65 - 8);
    v69 = (a10 + v66);
    v70 = *v65;
    v65 += 24;
    *&v71 = *(v64 - 11);
    v72 = v68[2];
    *v69 = *v68;
    v69[1] = v72;
    v73 = v70[2];
    v69[4] = *v70;
    v69[5] = v73;
    DWORD2(v71) = *(v64 - 15);
    HIDWORD(v71) = *v64;
    v74 = v64[1];
    *(v67 + 76) = v71;
    LODWORD(v71) = v64[7];
    *(v67 + 92) = v74;
    *(v67 + 96) = v71;
    LODWORD(v71) = v68[22];
    v69[2] = v68[20];
    v69[3] = v71;
    LODWORD(v71) = v70[22];
    v63 += 24;
    v69[6] = v70[20];
    v69[7] = v71;
    v64 += 77;
    v66 += 32;
  }

  while (v63 != 336);
  v75 = a5[v15 + 339];
  *(a10 + 52) = *(v75 + 26);
  v76 = *(v75 + 8);
  *(a10 + 72) = 0;
  v77 = (a10 + 72);
  *(a10 + 56) = v76;
  v78 = *a5;
  v79 = a5[339];
  v80 = (v79 + 4);
  v81 = *a5 + 1;
  if (v81 >= 0x11 && (v77 >= v79 + 8 || v80 >= a10 + 73))
  {
    v84 = v81 & 0xF;
    if ((v81 & 0xF) == 0)
    {
      v84 = 16;
    }

    v82 = v81 - v84;
    v85 = *v80;
    v86 = v82;
    do
    {
      if (v85)
      {
        *v77 = 1;
      }

      v86 -= 16;
    }

    while (v86);
  }

  else
  {
    v82 = 0;
  }

  for (j = v78 - v82; j; --j)
  {
    if (*v80)
    {
      *v77 = 1;
    }
  }
}

void peridot::PeridotAlgo::Impl::calcRxArrayCoords(peridot::PeridotAlgo::Impl *this, int a2, peridot::PeridotUserOutput *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v3.i32[0] = *a3;
  v3.i32[1] = *(a3 + 77);
  v4 = vcvtq_f64_f32(v3);
  v3.i32[0] = *(a3 + 154);
  v3.i32[1] = *(a3 + 231);
  v5 = vcvtq_f64_f32(v3);
  v6 = vdupq_n_s64(0x424171F27D620000uLL);
  v7 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v4, v6)), vmulq_f64(v5, v6));
  LODWORD(v4.f64[0]) = *(a3 + 44);
  HIDWORD(v4.f64[0]) = *(a3 + 121);
  LODWORD(v5.f64[0]) = *(a3 + 198);
  HIDWORD(v5.f64[0]) = *(a3 + 275);
  v8.i32[0] = *(a3 + 176);
  v8.i32[1] = *(a3 + 253);
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*&v4.f64[0]), v6)), vmulq_f64(vcvtq_f64_f32(*&v5.f64[0]), v6));
  v10 = vcvtq_f64_f32(v8);
  v8.i32[0] = *(a3 + 330);
  v8.i32[1] = *(a3 + 407);
  v11 = vmulq_f64(vcvtq_f64_f32(v8), v6);
  v12.i32[0] = *(a3 + 308);
  v13 = vcvt_f32_f64(vmulq_f64(v10, v6));
  v12.i32[1] = *(a3 + 385);
  LODWORD(v10.f64[0]) = *(a3 + 22);
  v14.i32[0] = *(a3 + 352);
  v15 = vcvt_hight_f32_f64(v13, v11);
  HIDWORD(v10.f64[0]) = *(a3 + 99);
  LODWORD(v11.f64[0]) = *(a3 + 462);
  v16.i32[0] = *(a3 + 484);
  HIDWORD(v11.f64[0]) = *(a3 + 539);
  v17 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v12), v6)), vmulq_f64(vcvtq_f64_f32(*&v11.f64[0]), v6));
  LODWORD(v11.f64[0]) = *(a3 + 506);
  v23[42] = v7;
  v23[43] = v17;
  v14.i32[1] = *(a3 + 429);
  HIDWORD(v11.f64[0]) = *(a3 + 583);
  v18 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v14), v6)), vmulq_f64(vcvtq_f64_f32(*&v11.f64[0]), v6));
  LODWORD(v11.f64[0]) = *(a3 + 616);
  v17.i32[0] = *(a3 + 638);
  v16.i32[1] = *(a3 + 561);
  v17.i32[1] = *(a3 + 715);
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v16), v6)), vmulq_f64(vcvtq_f64_f32(*v17.f32), v6));
  v17.i32[0] = *(a3 + 660);
  v23[46] = v15;
  v23[47] = v19;
  v15.i32[0] = *(a3 + 770);
  HIDWORD(v11.f64[0]) = *(a3 + 693);
  v15.i32[1] = *(a3 + 847);
  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*&v11.f64[0]), v6)), vmulq_f64(vcvtq_f64_f32(*v15.f32), v6));
  v15.i32[0] = *(a3 + 814);
  v17.i32[1] = *(a3 + 737);
  v15.i32[1] = *(a3 + 891);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v17.f32), v6)), vmulq_f64(vcvtq_f64_f32(*v15.f32), v6));
  v15.i32[0] = *(a3 + 792);
  v23[50] = v18;
  v23[51] = v21;
  v18.i32[0] = *(a3 + 924);
  v21.i32[0] = *(a3 + 946);
  v18.i32[1] = *(a3 + 1001);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v18.f32), v6)), vmulq_f64(vcvtq_f64_f32(*&v10.f64[0]), v6));
  LODWORD(v10.f64[0]) = *(a3 + 968);
  v23[44] = v20;
  v23[45] = v22;
  v15.i32[1] = *(a3 + 869);
  v21.i32[1] = *(a3 + 1023);
  v23[48] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v15.f32), v6)), vmulq_f64(vcvtq_f64_f32(*v21.f32), v6));
  v23[49] = v9;
  HIDWORD(v10.f64[0]) = *(a3 + 1045);
  v24 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*&v10.f64[0]), v6));
  peridot::PeridotAlgo::Impl::compensateCurrentLocationsForParallax(this, a2, &v23[42], v23);
}

void peridot::PeridotAlgo::Impl::compensateCurrentLocationsForParallax(peridot::PeridotAlgo::Impl *this, int a2, const float (*a3)[14], CGPoint (*a4)[14])
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = vcvtq_f64_f32(*(this + 112 * a2 + 402560));
  v11 = vcvtq_f64_f32(*(this + 112 * a2 + 402552));
  v12 = v4;
  v5 = vcvtq_f64_f32(*(this + 112 * a2 + 402576));
  v13 = vcvtq_f64_f32(*(this + 112 * a2 + 402568));
  v14 = v5;
  v6 = vcvtq_f64_f32(*(this + 112 * a2 + 402592));
  v15 = vcvtq_f64_f32(*(this + 112 * a2 + 402584));
  v16 = v6;
  v7 = vcvtq_f64_f32(*(this + 112 * a2 + 402608));
  v17 = vcvtq_f64_f32(*(this + 112 * a2 + 402600));
  v18 = v7;
  v8 = vcvtq_f64_f32(*(this + 112 * a2 + 402624));
  v19 = vcvtq_f64_f32(*(this + 112 * a2 + 402616));
  v20 = v8;
  v9 = vcvtq_f64_f32(*(this + 112 * a2 + 402640));
  v21 = vcvtq_f64_f32(*(this + 112 * a2 + 402632));
  v22 = v9;
  v10 = vcvtq_f64_f32(*(this + 112 * a2 + 402656));
  v23 = vcvtq_f64_f32(*(this + 112 * a2 + 402648));
  v24 = v10;
  operator new();
}

void ****std::__exception_guard_exceptions<std::vector<std::vector<peridot::ImgHistogram>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 3;
          v7 = v8;
          if (v8)
          {
            v9 = *(v4 - 2);
            v10 = v7;
            if (v9 != v7)
            {
              v11 = v9 - 24;
              v12 = v9 - 24;
              v13 = v9 - 24;
              do
              {
                v14 = *v13;
                v13 -= 24;
                (*v14)(v12);
                v11 -= 24;
                v15 = v12 == v7;
                v12 = v13;
              }

              while (!v15);
              v10 = *v6;
            }

            *(v4 - 2) = v7;
            operator delete(v10);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<peridot::ImgHistogram>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 3;
        v7 = v4 - 3;
        v8 = v4 - 3;
        do
        {
          v9 = *v8;
          v8 -= 3;
          (*v9)(v7);
          v6 -= 3;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2246F8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  peridot::PeridotSpotRefDepth::~PeridotSpotRefDepth(va);
  _Unwind_Resume(a1);
}

void ***std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            v10 = v8 - 24;
            v11 = v8 - 24;
            v12 = v8 - 24;
            do
            {
              v13 = *v12;
              v12 -= 24;
              (*v13)(v11);
              v10 -= 24;
              v14 = v11 == v6;
              v11 = v12;
            }

            while (!v14);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void peridot::PeridotAlgo::Impl::runBankWithT0_MPDC(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, peridot::PeridotDepth *a15)
{
  v15 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v48 = v16;
  v49 = v17;
  v46 = v18;
  v47 = v19;
  v45 = v20;
  v22 = v21;
  v24 = v23;
  v25 = v15;
  v57 = *MEMORY[0x277D85DE8];
  v27 = (v15 + 168848 * a10);
  v28 = &v27[50436];
  v29 = *(a11 + 120);
  v30 = *(a11 + 124);
  v31 = vaddq_f32(*(a11 + 104), vaddq_f32(*(a11 + 72), *(a11 + 88)));
  v31.f32[0] = vaddv_f32(*&vpaddq_f32(v31, v31));
  v32 = vaddq_f32(*(a11 + 160), vaddq_f32(*(a11 + 128), *(a11 + 144)));
  v31.i32[1] = vaddv_f32(*&vpaddq_f32(v32, v32));
  v29.i32[1] = *(a11 + 176);
  v30.i32[1] = *(a11 + 180);
  *v31.f32 = vmul_f32(vadd_f32(*v31.f32, vadd_f32(v29, v30)), vdup_n_s32(0x3D924925u));
  v33 = vdiv_f32(vbic_s8(*v31.f32, vcltz_f32(*v31.f32)), v27[50866]);
  v52 = v33;
  v34 = vaddq_f32(*(a11 + 216), vaddq_f32(*(a11 + 184), *(a11 + 200)));
  v35 = (vaddv_f32(*&vpaddq_f32(v34, v34)) + (*(a11 + 232) + *(a11 + 236))) * 0.071429;
  v36 = 0.0;
  if (v35 < 0.0)
  {
    v35 = 0.0;
  }

  v37 = v35 / v27[50867].f32[0];
  v53 = v37;
  __asm
  {
    FMOV            V3.2S, #1.5
    FMOV            V4.2S, #-1.5
  }

  v50 = vbic_s8(vadd_f32(v33, _D4), vcgt_f32(_D3, v33));
  if (v37 >= 1.5)
  {
    v36 = v37 + -1.5;
  }

  v51 = v36;
  v54[0] = vcvt_f32_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(vsub_f32(v33, vdup_lane_s32(v33, 0))), vdupq_n_s64(0x4059000000000000uLL))), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  v55 = v54[0];
  v44 = round((v37 - v33.f32[0]) * 100.0) * 0.01;
  *&v54[1] = v44;
  v56 = v44;
  peridot::PeridotDXPBaselineRemoval::strayPeakUpdate(&v27[55751], &v52, v54, &v50, &v55);
  memset(v54, 0, 14);
  peridot::PeridotDXP::run_MPDC(v28, v24, v22, v45, v46, v47, v48, v49, a11, v54, v25 + 112 * a10 + 402552, a15);
}

void peridot::PeridotAlgo::reportSessionStatistics(peridot::PeridotAlgo *this)
{
  v1 = *this;
  if (*(*this + 1775856))
  {
    PeridotTelemetry::reportSessionStatistics((v1 + 1775856));
    v2 = *(v1 + 1775856);
    *(v1 + 1775856) = 0;
  }
}

void peridot::PeridotAlgo::Impl::reportSessionStatistics(peridot::PeridotAlgo::Impl *this)
{
  if (*(this + 221982))
  {
    PeridotTelemetry::reportSessionStatistics((this + 1775856));
    v2 = *(this + 221982);
    *(this + 221982) = 0;
  }
}

id peridot::PeridotAlgo::getInternalState(id **this)
{
  v1 = [**this copySessionState];

  return v1;
}

id peridot::PeridotAlgo::Impl::getInternalState(id *this)
{
  v1 = [*this copySessionState];

  return v1;
}

uint64_t peridot::readFileToArr(uint64_t a1, uint64_t a2, void *a3)
{
  v13[19] = *MEMORY[0x277D85DE8];
  v13[6] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  v13[0] = MEMORY[0x277D82858] + 64;
  v5 = MEMORY[0x277D82808];
  v6 = *(MEMORY[0x277D82808] + 16);
  v11[0] = *(MEMORY[0x277D82808] + 8);
  *(v11 + *(v11[0] - 24)) = v6;
  v11[1] = 0;
  v7 = (v11 + *(v11[0] - 24));
  std::ios_base::init(v7, v12);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v11[0] = v8;
  v13[0] = v4;
  MEMORY[0x22AA52F30](v12);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v11 + *(v11[0] - 24)), *(&v12[2] + *(v11[0] - 24)) | 4);
  }

  if (v12[15])
  {
    std::istream::tellg();
    *a3 = v10;
    operator new[]();
  }

  v11[0] = *v5;
  *(v11 + *(v11[0] - 24)) = v5[3];
  MEMORY[0x22AA52F40](v12);
  std::istream::~istream();
  MEMORY[0x22AA53140](v13);
  return 1;
}

void sub_2246F98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ifstream::~ifstream(&a26);
  MEMORY[0x22AA53140](v26);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x22AA52F40](a1 + 2);

  return std::istream::~istream();
}

uint64_t peridot::grangerPixelsToPeridotCamera(uint64_t this, unint64_t a2, const CGPoint *a3, CGPoint *a4)
{
  if (this >= 1)
  {
    if (this <= 3 || (a2 + 16 * this > a3 ? (v4 = &a3[this] > a2) : (v4 = 0), v4))
    {
      v5 = 0;
    }

    else
    {
      v5 = this & 0x7FFFFFFC;
      v6 = &a3[2];
      v7 = (a2 + 32);
      v8 = vdupq_n_s64(0x4055000000000000uLL);
      v9 = v5;
      do
      {
        v10 = v7 - 4;
        v17 = vld2q_f64(v10);
        v18 = vld2q_f64(v7);
        v17.val[0] = vsubq_f64(v8, v17.val[0]);
        p_x = &v6[-2].x;
        vst2q_f64(p_x, v17);
        v18.val[0] = vsubq_f64(v8, v18.val[0]);
        vst2q_f64(&v6->x, v18);
        v6 += 4;
        v7 += 8;
        v9 -= 4;
      }

      while (v9);
      if (v5 == this)
      {
        return this;
      }
    }

    v12 = this - v5;
    v13 = (16 * v5) | 8;
    v14 = (&a3->x + v13);
    v15 = (a2 + v13);
    do
    {
      v16 = *v15;
      *(v14 - 1) = 84.0 - *(v15 - 1);
      *v14 = v16;
      v14 += 2;
      v15 += 2;
      --v12;
    }

    while (v12);
  }

  return this;
}

uint64_t peridot::peridotCameraPixelsToGranger(uint64_t this, unint64_t a2, const CGPoint *a3, CGPoint *a4)
{
  if (this >= 1)
  {
    if (this <= 3 || (a2 + 16 * this > a3 ? (v4 = &a3[this] > a2) : (v4 = 0), v4))
    {
      v5 = 0;
    }

    else
    {
      v5 = this & 0x7FFFFFFC;
      v6 = &a3[2];
      v7 = (a2 + 32);
      v8 = vdupq_n_s64(0x4055000000000000uLL);
      v9 = v5;
      do
      {
        v10 = v7 - 4;
        v17 = vld2q_f64(v10);
        v18 = vld2q_f64(v7);
        v17.val[0] = vsubq_f64(v8, v17.val[0]);
        p_x = &v6[-2].x;
        vst2q_f64(p_x, v17);
        v18.val[0] = vsubq_f64(v8, v18.val[0]);
        vst2q_f64(&v6->x, v18);
        v6 += 4;
        v7 += 8;
        v9 -= 4;
      }

      while (v9);
      if (v5 == this)
      {
        return this;
      }
    }

    v12 = this - v5;
    v13 = (16 * v5) | 8;
    v14 = (&a3->x + v13);
    v15 = (a2 + v13);
    do
    {
      v16 = *v15;
      *(v14 - 1) = 84.0 - *(v15 - 1);
      *v14 = v16;
      v14 += 2;
      v15 += 2;
      --v12;
    }

    while (v12);
  }

  return this;
}

void peridot::compensateForParallax(void *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v12 = a1;
  if (a2)
  {
    operator new();
  }

  memset(v15, 0, sizeof(v15));
  [v12 undistort:0 distortedPixels:0 outUndistorted:0];
  common::utils::getDistanceToPlane(v12, 0, v15, a4, a5, &v14);
  common::utils::getDistanceToPlane(v12, 0, v15, a6, a7, &__p);
  [v12 intrinsicMatrix];
  [v12 distort:0 undistortedPixels:0 outDistorted:0];
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }
}

void sub_2246F9F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v21 = a15;
    if (a15)
    {
LABEL_9:
      operator delete(v21);
      if (v20)
      {
LABEL_10:
        operator delete(v20);
        if (!v19)
        {
LABEL_6:

          _Unwind_Resume(a1);
        }

LABEL_5:
        operator delete(v19);
        goto LABEL_6;
      }

LABEL_4:
      if (!v19)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v21 = a15;
    if (a15)
    {
      goto LABEL_9;
    }
  }

  if (v20)
  {
    goto LABEL_10;
  }

  goto LABEL_4;
}

void sub_2246F9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    JUMPOUT(0x2246F9F98);
  }

  JUMPOUT(0x2246F9F4CLL);
}

void sub_2246F9FC4()
{
  if (v0)
  {
    JUMPOUT(0x2246F9FA0);
  }

  JUMPOUT(0x2246F9F50);
}

void sub_2246F9FD0()
{
  if (v0)
  {
    JUMPOUT(0x2246F9FA0);
  }

  JUMPOUT(0x2246F9F50);
}

void sub_2246FA5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  operator delete(v15);
  operator delete(v14);
  operator delete(v13);
  operator delete(v12);

  _Unwind_Resume(a1);
}

float *peridot::anchorsForSpotLocations(float *result, BOOL *a2)
{
  v2 = a2 + 2;
  v3 = result + 1;
  v4 = 14;
  do
  {
    v5 = *v3;
    v6 = vcvtms_s32_f32(*(v3 - 1));
    v7 = llroundf(*v3);
    if (v6 >= 82)
    {
      v6 = 82;
    }

    *(v2 - 2) = v6 & ~(v6 >> 31);
    if (v7 >= 106)
    {
      v8 = 106;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 & ~(v8 >> 31);
    *(v2 - 1) = v9;
    *v2 = v5 < v9;
    v2 += 3;
    v3 += 2;
    --v4;
  }

  while (v4);
  v10 = result + 29;
  v11 = a2 + 44;
  v12 = 14;
  do
  {
    v13 = *v10;
    v14 = vcvtms_s32_f32(*(v10 - 1));
    v15 = llroundf(*v10);
    if (v14 >= 82)
    {
      v14 = 82;
    }

    *(v11 - 2) = v14 & ~(v14 >> 31);
    if (v15 >= 106)
    {
      v16 = 106;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 & ~(v16 >> 31);
    *(v11 - 1) = v17;
    *v11 = v13 < v17;
    v11 += 3;
    v10 += 2;
    --v12;
  }

  while (v12);
  v18 = result + 57;
  v19 = a2 + 86;
  v20 = 14;
  do
  {
    v21 = *v18;
    v22 = vcvtms_s32_f32(*(v18 - 1));
    v23 = llroundf(*v18);
    if (v22 >= 82)
    {
      v22 = 82;
    }

    *(v19 - 2) = v22 & ~(v22 >> 31);
    if (v23 >= 106)
    {
      v24 = 106;
    }

    else
    {
      v24 = v23;
    }

    v25 = v24 & ~(v24 >> 31);
    *(v19 - 1) = v25;
    *v19 = v21 < v25;
    v19 += 3;
    v18 += 2;
    --v20;
  }

  while (v20);
  v26 = result + 85;
  v27 = a2 + 128;
  v28 = 14;
  do
  {
    v29 = *v26;
    v30 = vcvtms_s32_f32(*(v26 - 1));
    v31 = llroundf(*v26);
    if (v30 >= 82)
    {
      v30 = 82;
    }

    *(v27 - 2) = v30 & ~(v30 >> 31);
    if (v31 >= 106)
    {
      v32 = 106;
    }

    else
    {
      v32 = v31;
    }

    v33 = v32 & ~(v32 >> 31);
    *(v27 - 1) = v33;
    *v27 = v29 < v33;
    v27 += 3;
    v26 += 2;
    --v28;
  }

  while (v28);
  v34 = result + 113;
  v35 = a2 + 170;
  v36 = 14;
  do
  {
    v37 = *v34;
    v38 = vcvtms_s32_f32(*(v34 - 1));
    v39 = llroundf(*v34);
    if (v38 >= 82)
    {
      v38 = 82;
    }

    *(v35 - 2) = v38 & ~(v38 >> 31);
    if (v39 >= 106)
    {
      v40 = 106;
    }

    else
    {
      v40 = v39;
    }

    v41 = v40 & ~(v40 >> 31);
    *(v35 - 1) = v41;
    *v35 = v37 < v41;
    v35 += 3;
    v34 += 2;
    --v36;
  }

  while (v36);
  v42 = result + 141;
  v43 = a2 + 212;
  v44 = 14;
  do
  {
    v45 = *v42;
    v46 = vcvtms_s32_f32(*(v42 - 1));
    v47 = llroundf(*v42);
    if (v46 >= 82)
    {
      v46 = 82;
    }

    *(v43 - 2) = v46 & ~(v46 >> 31);
    if (v47 >= 106)
    {
      v48 = 106;
    }

    else
    {
      v48 = v47;
    }

    v49 = v48 & ~(v48 >> 31);
    *(v43 - 1) = v49;
    *v43 = v45 < v49;
    v43 += 3;
    v42 += 2;
    --v44;
  }

  while (v44);
  v50 = result + 169;
  v51 = a2 + 254;
  v52 = 14;
  do
  {
    v53 = *v50;
    v54 = vcvtms_s32_f32(*(v50 - 1));
    v55 = llroundf(*v50);
    if (v54 >= 82)
    {
      v54 = 82;
    }

    *(v51 - 2) = v54 & ~(v54 >> 31);
    if (v55 >= 106)
    {
      v56 = 106;
    }

    else
    {
      v56 = v55;
    }

    v57 = v56 & ~(v56 >> 31);
    *(v51 - 1) = v57;
    *v51 = v53 < v57;
    v51 += 3;
    v50 += 2;
    --v52;
  }

  while (v52);
  v58 = result + 197;
  v59 = a2 + 296;
  v60 = 14;
  do
  {
    v61 = *v58;
    v62 = vcvtms_s32_f32(*(v58 - 1));
    v63 = llroundf(*v58);
    if (v62 >= 82)
    {
      v62 = 82;
    }

    *(v59 - 2) = v62 & ~(v62 >> 31);
    if (v63 >= 106)
    {
      v64 = 106;
    }

    else
    {
      v64 = v63;
    }

    v65 = v64 & ~(v64 >> 31);
    *(v59 - 1) = v65;
    *v59 = v61 < v65;
    v59 += 3;
    v58 += 2;
    --v60;
  }

  while (v60);
  return result;
}

void peridot::checkSpViolations(peridot *this, PDAnchors *a2, spViolations *a3)
{
  v3 = 0;
  v4 = 0;
  v85 = *MEMORY[0x277D85DE8];
  a2->banks[0].anchors[0].x = 0;
  p_y = &a2->banks[0].anchors[0].y;
  v5 = this + 1;
  v6 = 1;
  v7 = MEMORY[0x277D86220];
  v71 = a2;
  do
  {
    v8 = 0;
    v64 = v6;
    v68 = v5;
    do
    {
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = (*(v5 - 1) - 82) >= 0xB0u && (*v5 - 106) >= 0x98u;
      v12 = !v11;
      if (!v11)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316930;
          v73 = "checkSpViolations";
          v74 = 2048;
          v75 = v4;
          v76 = 2048;
          v77 = v8;
          v78 = 1024;
          v79 = v9;
          v80 = 1024;
          v81 = v10;
          v82 = 2048;
          *v83 = 0x3FF8000000000000;
          *&v83[8] = 2048;
          *v84 = 0x4054600000000000;
          *&v84[8] = 2048;
          *&v84[10] = 0x405A600000000000;
          _os_log_impl(&dword_224668000, v7, OS_LOG_TYPE_DEFAULT, "GMO: %s: validation failed (distance from boundaries) in bank:%zu, spot:%zu (x:%d, y:%d), BORDER_DISTANCE_MIN:%f, (SPAD_RES[0] - 1 - BORDER_DISTANCE_MIN):%f, (SPAD_RES[1] - 1 - BORDER_DISTANCE_MIN):%f", buf, 0x4Au);
        }

        v3 = 1;
        a2 = v71;
      }

      *(&a2->banks[0].anchors[0].x + v6) = v12;
      v5 += 3;
      a2->banks[0].anchors[0].x = v3 & 1;
      ++v8;
      v6 += 4;
    }

    while (v8 != 14);
    ++v4;
    v6 = v64 + 56;
    v5 = v68 + 42;
  }

  while (v4 != 8);
  v13 = 0;
  p_useNorthHS2 = &a2->banks[0].anchors[0].useNorthHS2;
  v15 = &byte_2247A8558;
  v16 = this + 1;
  while (2)
  {
    v17 = 0;
    v60 = v13;
    v62 = &p_y[56 * v13];
    v56 = v16;
    v57 = v15;
    v58 = p_useNorthHS2;
    do
    {
      v18 = (*(v15 - 224) + 1);
      v19 = (*(v15 - 8) - 1);
      v20 = (*v15 - 2);
      v21 = *(v16 - 1);
      v22 = (*(v15 - 232) + 1);
      if (v22 <= v21)
      {
        v25 = *v16;
        v24 = v21 > v19 || v25 > v20 || v25 < v18;
        *p_useNorthHS2 = v24;
        v23 = p_useNorthHS2;
        if (v24 != 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = &v62[4 * v17 + 1];
        v24 = 1;
        *p_useNorthHS2 = 1;
      }

      v65 = v23;
      v69 = v19;
      v28 = v3;
      v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      x = v28;
      if (v29)
      {
        v31 = *v16;
        *buf = 136317186;
        v73 = "checkSpViolations";
        v74 = 2048;
        v75 = v60;
        v76 = 2048;
        v77 = v17;
        v78 = 1024;
        v79 = v21;
        v80 = 1024;
        v81 = v31;
        v82 = 1024;
        *v83 = v22;
        *&v83[4] = 1024;
        *&v83[6] = v18;
        *v84 = 1024;
        *&v84[2] = v69;
        *&v84[6] = 1024;
        *&v84[8] = v20;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: validation failed (bounding box boundaries) in bank:%zu, spot:%zu (x:%d, y:%d), min(x:%d, y:%d), max(x:%d, y:%d)", buf, 0x44u);
        x = v71->banks[0].anchors[0].x;
        v24 = *v65;
      }

      v3 = v24 | x;
      a2 = v71;
LABEL_19:
      v15 += 16;
      a2->banks[0].anchors[0].x = v3 & 1;
      ++v17;
      p_useNorthHS2 += 4;
      v16 += 3;
    }

    while (v17 != 14);
    v13 = v60 + 1;
    p_useNorthHS2 = v58 + 56;
    v16 = v56 + 42;
    v15 = v57 + 448;
    if (v60 != 7)
    {
      continue;
    }

    break;
  }

  v32 = 0;
  v33 = this + 13;
  v34 = 3;
  v35 = MEMORY[0x277D86220];
  do
  {
    v37 = 0;
    v66 = v33;
    v38 = v34;
    do
    {
      v39 = *(v33 - 12);
      v40 = *v33;
      *(&a2->banks[0].anchors[0].x + v38) = v40 - 12 < v39;
      if (v40 - 12 < v39)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v73 = "checkSpViolations";
          v74 = 2048;
          v75 = v32;
          v76 = 2048;
          v77 = v37;
          v78 = 1024;
          v79 = v39;
          v80 = 1024;
          v81 = v40;
          v82 = 2048;
          *v83 = 0x4028000000000000;
          _os_log_impl(&dword_224668000, v35, OS_LOG_TYPE_DEFAULT, "GMO: %s: validation failed (minimum Y distance) in bank:%zu, spot:%zu (y:%d), (y+4:%d), (CENTER_DISTANCE_MIN:%f)", buf, 0x36u);
          a2 = v71;
          LOBYTE(v3) = *(&v71->banks[0].anchors[0].x + v38) | v71->banks[0].anchors[0].x;
        }

        else
        {
          LOBYTE(v3) = 1;
          a2 = v71;
        }
      }

      v33 += 3;
      a2->banks[0].anchors[0].x = v3 & 1;
      ++v37;
      v38 += 4;
    }

    while (v37 != 10);
    v36 = &p_y[56 * v32];
    v36[42] = 0;
    v36[46] = 0;
    v36[50] = 0;
    v36[54] = 0;
    ++v32;
    v34 += 56;
    v33 = v66 + 42;
  }

  while (v32 != 8);
  v41 = 0;
  a2->banks[0].anchors[1].y = 0;
  a2->banks[0].anchors[2].useNorthHS2 = 0;
  a2->banks[0].anchors[4].x = 0;
  a2->banks[0].anchors[5].y = 0;
  a2->banks[0].anchors[6].useNorthHS2 = 0;
  a2->banks[0].anchors[8].x = 0;
  a2->banks[0].anchors[9].y = 0;
  a2->banks[0].anchors[10].useNorthHS2 = 0;
  a2->banks[0].anchors[12].x = 0;
  a2->banks[0].anchors[13].y = 0;
  a2->banks[1].anchors[0].useNorthHS2 = 0;
  a2->banks[1].anchors[2].x = 0;
  a2->banks[1].anchors[3].y = 0;
  a2->banks[1].anchors[4].useNorthHS2 = 0;
  a2->banks[1].anchors[6].x = 0;
  a2->banks[1].anchors[7].y = 0;
  a2->banks[1].anchors[8].useNorthHS2 = 0;
  a2->banks[1].anchors[10].x = 0;
  a2->banks[1].anchors[11].y = 0;
  a2->banks[1].anchors[12].useNorthHS2 = 0;
  a2->banks[2].anchors[0].x = 0;
  a2->banks[2].anchors[1].y = 0;
  a2->banks[2].anchors[2].useNorthHS2 = 0;
  a2->banks[2].anchors[4].x = 0;
  a2->banks[2].anchors[5].y = 0;
  a2->banks[2].anchors[6].useNorthHS2 = 0;
  a2->banks[2].anchors[8].x = 0;
  a2->banks[2].anchors[9].y = 0;
  a2->banks[2].anchors[10].useNorthHS2 = 0;
  a2->banks[2].anchors[12].x = 0;
  a2->banks[2].anchors[13].y = 0;
  a2->banks[3].anchors[0].useNorthHS2 = 0;
  a2->banks[3].anchors[2].x = 0;
  a2->banks[3].anchors[3].y = 0;
  a2->banks[3].anchors[4].useNorthHS2 = 0;
  a2->banks[3].anchors[6].x = 0;
  a2->banks[3].anchors[7].y = 0;
  a2->banks[3].anchors[8].useNorthHS2 = 0;
  a2->banks[3].anchors[10].x = 0;
  a2->banks[3].anchors[11].y = 0;
  a2->banks[3].anchors[12].useNorthHS2 = 0;
  a2->banks[4].anchors[0].x = 0;
  a2->banks[4].anchors[1].y = 0;
  a2->banks[4].anchors[2].useNorthHS2 = 0;
  a2->banks[4].anchors[4].x = 0;
  a2->banks[4].anchors[5].y = 0;
  a2->banks[4].anchors[6].useNorthHS2 = 0;
  a2->banks[4].anchors[8].x = 0;
  a2->banks[4].anchors[9].y = 0;
  a2->banks[4].anchors[10].useNorthHS2 = 0;
  a2->banks[4].anchors[12].x = 0;
  a2->banks[4].anchors[13].y = 0;
  a2->banks[5].anchors[0].useNorthHS2 = 0;
  a2->banks[5].anchors[2].x = 0;
  a2->banks[5].anchors[3].y = 0;
  a2->banks[5].anchors[4].useNorthHS2 = 0;
  a2->banks[5].anchors[6].x = 0;
  a2->banks[5].anchors[7].y = 0;
  a2->banks[5].anchors[8].useNorthHS2 = 0;
  a2->banks[5].anchors[10].x = 0;
  a2->banks[5].anchors[11].y = 0;
  a2->banks[5].anchors[12].useNorthHS2 = 0;
  a2->banks[6].anchors[0].x = 0;
  a2->banks[6].anchors[1].y = 0;
  a2->banks[6].anchors[2].useNorthHS2 = 0;
  a2->banks[6].anchors[4].x = 0;
  a2->banks[6].anchors[5].y = 0;
  a2->banks[6].anchors[6].useNorthHS2 = 0;
  a2->banks[6].anchors[8].x = 0;
  a2->banks[6].anchors[9].y = 0;
  a2->banks[6].anchors[10].useNorthHS2 = 0;
  a2->banks[6].anchors[12].x = 0;
  a2->banks[6].anchors[13].y = 0;
  a2->banks[7].anchors[0].useNorthHS2 = 0;
  a2->banks[7].anchors[2].x = 0;
  a2->banks[7].anchors[3].y = 0;
  a2->banks[7].anchors[4].useNorthHS2 = 0;
  a2->banks[7].anchors[6].x = 0;
  a2->banks[7].anchors[7].y = 0;
  a2->banks[7].anchors[8].useNorthHS2 = 0;
  a2->banks[7].anchors[10].x = 0;
  a2->banks[7].anchors[11].y = 0;
  a2->banks[7].anchors[12].useNorthHS2 = 0;
  a2[1].banks[0].anchors[0].x = 0;
  a2[1].banks[0].anchors[1].y = 0;
  a2[1].banks[0].anchors[2].useNorthHS2 = 0;
  a2[1].banks[0].anchors[4].x = 0;
  a2[1].banks[0].anchors[5].y = 0;
  a2[1].banks[0].anchors[6].useNorthHS2 = 0;
  a2[1].banks[0].anchors[8].x = 0;
  a2[1].banks[0].anchors[9].y = 0;
  a2[1].banks[0].anchors[10].useNorthHS2 = 0;
  a2[1].banks[0].anchors[12].x = 0;
  a2[1].banks[0].anchors[13].y = 0;
  a2[1].banks[1].anchors[0].useNorthHS2 = 0;
  a2[1].banks[1].anchors[2].x = 0;
  a2[1].banks[1].anchors[3].y = 0;
  a2[1].banks[1].anchors[4].useNorthHS2 = 0;
  a2[1].banks[1].anchors[6].x = 0;
  a2[1].banks[1].anchors[7].y = 0;
  a2[1].banks[1].anchors[8].useNorthHS2 = 0;
  a2[1].banks[1].anchors[10].x = 0;
  a2[1].banks[1].anchors[11].y = 0;
  a2[1].banks[1].anchors[12].useNorthHS2 = 0;
  a2[1].banks[2].anchors[0].x = 0;
  a2[1].banks[2].anchors[1].y = 0;
  a2[1].banks[2].anchors[2].useNorthHS2 = 0;
  a2[1].banks[2].anchors[4].x = 0;
  a2[1].banks[2].anchors[5].y = 0;
  v63 = this + 1;
  a2[1].banks[2].anchors[6].useNorthHS2 = 0;
  a2[1].banks[2].anchors[8].x = 0;
  a2[1].banks[2].anchors[9].y = 0;
  do
  {
    v42 = 0;
    v61 = this + 42 * v41;
    v67 = v41;
    v70 = &p_y[56 * v41];
    do
    {
      v43 = &v70[4 * v42];
      v45 = v43[3];
      v44 = v43 + 3;
      if ((v45 & 1) == 0)
      {
        v46 = v63;
        v47 = &v61[3 * v42];
        v48 = 14;
        do
        {
          if (v42 + v48 != 14)
          {
            v49 = *(v46 - 1);
            v50 = *v47;
            v51 = v49 - v50;
            if (v49 - v50 < 0)
            {
              v51 = v50 - v49;
            }

            if (v51 <= 0xB)
            {
              v52 = *v46;
              v53 = v47[1];
              v54 = v52 - v53;
              if (v52 - v53 < 0)
              {
                v54 = v53 - v52;
              }

              if (v54 <= 0xB)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316930;
                  v73 = "checkSpViolations";
                  v74 = 2048;
                  v75 = v67;
                  v76 = 2048;
                  v77 = v42;
                  v78 = 1024;
                  v79 = v50;
                  v80 = 1024;
                  v81 = v53;
                  v82 = 1024;
                  *v83 = v49;
                  *&v83[4] = 1024;
                  *&v83[6] = v52;
                  *v84 = 2048;
                  *&v84[2] = 0x4028000000000000;
                  _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: validation failed (nearest neighbor) in bank:%zu, spot:%zu (x:%d, y:%d), spotIdInner(x:%d, y:%d), CENTER_DISTANCE_MIN:%f", buf, 0x42u);
                }

                *v44 = 1;
                v71->banks[0].anchors[0].x = 1;
              }
            }
          }

          v46 += 3;
          --v48;
        }

        while (v48);
      }

      ++v42;
    }

    while (v42 != 14);
    v41 = v67 + 1;
    v63 += 42;
  }

  while (v67 != 7);
}

uint64_t peridot::presetToRunMode(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      v1 = 1;
      v2 = 256;
      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      v3 = +[PDUserDefaults defaults];
      v1 = [v3 enableDepthPerPixel];

      v4 = +[PDUserDefaults defaults];
      v5 = [v4 enableMacroRanges];

      if (v5)
      {
        v2 = 256;
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_13;
    }

    if (a1 == 1)
    {
      goto LABEL_9;
    }
  }

  peridot_depth_log("Unknown preset: %d", a1);
LABEL_9:
  v1 = 0;
  v2 = 256;
LABEL_13:
  v6 = +[PDUserDefaults defaults];
  v7 = [v6 doubleBounceFlagOnly];

  peridot_depth_log("doubleBounceFlagOnly: %d", v7);
  if (v7)
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  return v2 | v1 | v8;
}

float peridot::peridotTempToCelcius(peridot *this, float a2)
{
  v2 = -1;
  v3 = peridot::peridotTempToCelcius(float)::PeridotlutTemp;
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5;
    ++v2;
  }

  while (v5 < a2);
  if (v2)
  {
    return ((v2 + ((a2 - v6) / (v4 - peridot::peridotTempToCelcius(float)::PeridotlutTemp[v2 - 1]))) * 5.0) + -15.0;
  }

  else
  {
    return -15.0;
  }
}

uint64_t peridot::getThermalStateString@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 thermalState];

  if (v4 > 3)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_27852C6C8[v4];
  }

  return MEMORY[0x22AA52EE0](a1, v5);
}

void sub_2246FB318(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2246FB32C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2246FB3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void common::utils::getDistanceToPlane(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v11 = a1;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (a5)
  {
    if (a5 != 1)
    {
      __assert_rtn("getDistanceToPlane", "PeridotDepthCommonUtils.mm", 42, "false");
    }
  }

  else
  {
    [v11 backProject:0 undistortedPixels:*a3 withR:a4 outPoints:0];
  }
}

void sub_2246FB6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    *(v11 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

float32x2_t common::utils::rotationMatrixFromAngles(_OWORD *a1)
{
  v4 = *a1;
  __sincosf_stret(COERCE_FLOAT(*a1));
  cosval = __sincosf_stret(*(&v4 + 4)).__cosval;
  v1 = __sincosf_stret(*(&v4 + 2));
  return vmul_n_f32(__PAIR64__(LODWORD(v1.__sinval), LODWORD(v1.__cosval)), cosval);
}

double common::utils::rotationMatrixToAngles(common::utils *this, const simd::float3x3 *a2)
{
  v3 = *(this + 6);
  v4 = *(this + 10);
  v8 = atan2f(v3, v4);
  v6 = *this;
  v7 = atan2f(-COERCE_FLOAT(*(this + 1)), sqrtf((v3 * v3) + (v4 * v4)));
  atan2f(*(&v6 + 1), *&v6);
  return COERCE_DOUBLE(__PAIR64__(LODWORD(v7), LODWORD(v8)));
}

uint64_t common::utils::getCurrentPlatform(common::utils *this)
{
  v1 = MGGetProductType();
  if (v1 > 2619317133)
  {
    if (v1 <= 3241053351)
    {
      if (v1 <= 2941181570)
      {
        if (v1 != 2619317134)
        {
          if (v1 != 2795618603)
          {
            return 0xFFFFFFFFLL;
          }

          return 3;
        }

        return 2;
      }

      if (v1 != 2941181571)
      {
        v3 = 3048527336;
        goto LABEL_24;
      }

      return 1;
    }

    if (v1 <= 3667751752)
    {
      if (v1 == 3241053352)
      {
        return 2;
      }

      v3 = 3591055299;
LABEL_24:
      if (v1 == v3)
      {
        return 6;
      }

      return 0xFFFFFFFFLL;
    }

    if (v1 != 3667751753 && v1 != 4184216061)
    {
      return 0xFFFFFFFFLL;
    }

    return 5;
  }

  if (v1 <= 369845483)
  {
    switch(v1)
    {
      case 133314240:
        return 1;
      case 185765807:
        return 5;
      case 330877086:
        return 3;
    }
  }

  else
  {
    if (v1 > 689804741)
    {
      if (v1 == 689804742)
      {
        return 0;
      }

      v2 = 2487868872;
    }

    else
    {
      if (v1 == 369845484)
      {
        return 5;
      }

      v2 = 555503454;
    }

    if (v1 == v2)
    {
      return 2;
    }
  }

  return 0xFFFFFFFFLL;
}

void common::utils::SafeSerialQueue::~SafeSerialQueue(id **this)
{
  if (*this)
  {
    peridot_depth_log("Safe serial queue is invalidating");
    [(*this)[1] invalidate];
    v2 = *this;
    if (*this)
    {

      MEMORY[0x22AA531A0](v2, 0x80C40803F642BLL);
    }

    *this = 0;
    peridot_depth_log("Safe serial queue was invalidated");
  }
}

void common::utils::SafeSerialQueue::invalidate(id **this)
{
  if (*this)
  {
    peridot_depth_log("Safe serial queue is invalidating");
    [(*this)[1] invalidate];
    v2 = *this;
    if (*this)
    {

      MEMORY[0x22AA531A0](v2, 0x80C40803F642BLL);
    }

    *this = 0;

    peridot_depth_log("Safe serial queue was invalidated");
  }
}

void common::utils::SafeSerialQueue::queueBlock(NSObject ***a1, void *a2)
{
  v3 = a2;
  v4 = (*a1)[1];
  v5 = **a1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZN6common5utils15SafeSerialQueue10queueBlockEU13block_pointerFvvE_block_invoke;
  v8[3] = &unk_27852C6F0;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

double peridot::PeridotDxpDetector::PeridotDxpDetector(peridot::PeridotDxpDetector *this)
{
  *this = 257;
  *(this + 2) = 0;
  *(this + 1) = &unk_283809EC8;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 12) = &unk_283809E68;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  *(this + 16) = 0;
  *(this + 17) = &unk_283809E68;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 21) = 0;
  *(this + 22) = &unk_283809E68;
  *(this + 26) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 200) = 0;
  *(this + 28) = &unk_283809E68;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 37) = 0;
  *(this + 32) = 0;
  *(this + 33) = &unk_283809E68;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 288) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 44) = 1;
  *(this + 360) = 0;
  *(this + 46) = 0;
  *(this + 42) = &unk_28380A0A8;
  *(this + 43) = 0;
  result = 0.0;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  return result;
}

{
  *this = 257;
  *(this + 2) = 0;
  *(this + 1) = &unk_283809EC8;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 12) = &unk_283809E68;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  *(this + 16) = 0;
  *(this + 17) = &unk_283809E68;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 21) = 0;
  *(this + 22) = &unk_283809E68;
  *(this + 26) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 200) = 0;
  *(this + 28) = &unk_283809E68;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 37) = 0;
  *(this + 32) = 0;
  *(this + 33) = &unk_283809E68;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 288) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 44) = 1;
  *(this + 360) = 0;
  *(this + 46) = 0;
  *(this + 42) = &unk_28380A0A8;
  *(this + 43) = 0;
  result = 0.0;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  return result;
}

void peridot::PeridotDxpDetector::~PeridotDxpDetector(peridot::PeridotDxpDetector *this)
{
  v2 = *(this + 75);
  if (v2)
  {
    *(this + 76) = v2;
    operator delete(v2);
  }

  v3 = *(this + 72);
  if (v3)
  {
    *(this + 73) = v3;
    operator delete(v3);
  }

  v4 = *(this + 69);
  if (v4)
  {
    *(this + 70) = v4;
    operator delete(v4);
  }

  v5 = *(this + 66);
  if (v5)
  {
    *(this + 67) = v5;
    operator delete(v5);
  }

  peridot::HDUnfoldClass::~HDUnfoldClass((this + 8));
}

{
  v2 = *(this + 75);
  if (v2)
  {
    *(this + 76) = v2;
    operator delete(v2);
  }

  v3 = *(this + 72);
  if (v3)
  {
    *(this + 73) = v3;
    operator delete(v3);
  }

  v4 = *(this + 69);
  if (v4)
  {
    *(this + 70) = v4;
    operator delete(v4);
  }

  v5 = *(this + 66);
  if (v5)
  {
    *(this + 67) = v5;
    operator delete(v5);
  }

  peridot::HDUnfoldClass::~HDUnfoldClass((this + 8));
}

__n128 peridot::PeridotDxpDetector::init(uint64_t a1, __n128 *a2, int a3)
{
  *a1 = a3;
  *(a1 + 2) = BYTE2(a3);
  *(a1 + 392) = 257;
  *(a1 + 400) = xmmword_2247A49F0;
  *(a1 + 416) = xmmword_2247A4A00;
  *(a1 + 432) = xmmword_2247A4A10;
  *(a1 + 448) = xmmword_2247A4A20;
  *(a1 + 464) = 2;
  *(a1 + 488) = 1085276160;
  *(a1 + 472) = xmmword_2247A4A30;
  *(a1 + 496) = xmmword_2247A4A40;
  *(a1 + 512) = 8;
  result = a2[250];
  *(a1 + 680) = result;
  return result;
}

uint64_t peridot::PeridotDxpDetector::setRunMode(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  return result;
}

uint64_t peridot::PeridotDxpDetector::configure(peridot::PeridotDxpDetector *this, const peridot::PeridotDXPCalib *a2)
{
  *(this + 130) = *a2;
  *(this + 262) = *(a2 + 2);
  v4 = (this + 528);
  if (v4 != (a2 + 3792))
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4, *(a2 + 474), *(a2 + 475), (*(a2 + 475) - *(a2 + 474)) >> 2);
  }

  if (this + 552 != a2 + 3816)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 69, *(a2 + 477), *(a2 + 478), (*(a2 + 478) - *(a2 + 477)) >> 2);
  }

  if (this + 576 != a2 + 3696)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 72, *(a2 + 462), *(a2 + 463), (*(a2 + 463) - *(a2 + 462)) >> 2);
  }

  if (this + 600 != a2 + 3672)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 75, *(a2 + 459), *(a2 + 460), (*(a2 + 460) - *(a2 + 459)) >> 2);
  }

  *(this + 664) = *(a2 + 3520);
  *(this + 665) = *(a2 + 3521);
  *(this + 668) = *(a2 + 502);
  v5 = *(a2 + 431);
  *(this + 158) = *(a2 + 864);
  *(this + 78) = v5;
  v6 = *(a2 + 3464);
  *(this + 82) = *(a2 + 435);
  *(this + 40) = v6;

  return peridot::HDUnfoldClass::configure((this + 8), a2);
}

uint64_t peridot::PeridotDxpDetector::process(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  *(a5 + 680) = 0u;
  *(a5 + 696) = 0u;
  *(a5 + 648) = 0u;
  *(a5 + 664) = 0u;
  *(a5 + 616) = 0u;
  *(a5 + 632) = 0u;
  *(a5 + 584) = 0u;
  *(a5 + 600) = 0u;
  *(a5 + 568) = 0u;
  *(a5 + 719) = 0;
  *(a5 + 715) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 216) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 392) = 0u;
  *(a5 + 408) = 0u;
  *(a5 + 424) = 0u;
  *(a5 + 440) = 0u;
  *(a5 + 456) = 0u;
  *(a5 + 251) = 0u;
  *(a5 + 235) = 0u;
  *(a5 + 308) = 0u;
  *(a5 + 283) = 0u;
  *(a5 + 299) = 0u;
  *(a5 + 267) = 0u;
  *(a5 + 548) = 0u;
  *(a5 + 523) = 0u;
  *(a5 + 539) = 0u;
  *(a5 + 491) = 0u;
  *(a5 + 507) = 0u;
  *(a5 + 475) = 0u;
  v9 = a1 + 600;
  v10 = *(a1 + 496);
  v39 = *(a1 + 456);
  v40 = v10;
  v51 = *(a1 + 392);
  v52 = *(a1 + 665) + *(a1 + 664);
  v53 = a1 + 600;
  v54 = *(a1 + 680);
  v11 = *(a1 + 640);
  v12 = *(a1 + 648);
  v13 = *(a1 + 656);
  v32 = a4 + 50;
  v33 = a4 + 80;
  v38 = a4[98];
  v36 = a4 + 86;
  v37 = a4 + 56;
  v34 = a4 + 92;
  v35 = a4 + 62;
  v41 = *(a3 + 51);
  v42 = a3[53];
  v43 = *(a3 + 22);
  v44 = a3[46];
  v45 = *(a3 + 47);
  v46 = a3[49];
  v50 = *(a3 + 62);
  v14 = a3[34];
  v47 = *(a3 + 16);
  if (v12 < v11)
  {
    v11 = v12;
  }

  v15 = a3[30];
  if (v13 >= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  v48 = v14;
  v49 = v15;
  peridot::PeridotDxpDetector::blrDetector(a1, &v32, a5, a4);
  v18 = *(a5 + 8);
  *(a5 + 232) = *a5 > v16;
  *(a5 + 233) = v18 > v16;
  *(a5 + 234) = *(a5 + 16) > v16;
  if (*a1 == 1)
  {
    v19 = *(a1 + 496);
    v39 = *(a1 + 456);
    v40 = v19;
    v51 = *(a1 + 392);
    v52 = *(a1 + 665);
    v53 = v9;
    v54 = *(a1 + 680);
    v20 = *(a1 + 640);
    if (*(a1 + 648) < v20)
    {
      v20 = *(a1 + 648);
    }

    if (*(a1 + 656) >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = *(a1 + 656);
    }

    v32 = a4 + 100;
    v33 = a4 + 130;
    v38 = a4[148];
    v36 = a4 + 136;
    v37 = a4 + 106;
    v34 = a4 + 142;
    v35 = a4 + 112;
    v41 = *(a3 + 81);
    v42 = a3[83];
    v43 = *(a3 + 37);
    v44 = a3[76];
    v45 = *(a3 + 77);
    v46 = a3[79];
    v22 = a3[64];
    v47 = *(a3 + 31);
    v50 = *(a3 + 122);
    v23 = a3[60];
    v48 = v22;
    v49 = v23;
    peridot::PeridotDxpDetector::blrDetector(a1, &v32, a5 + 240, v17);
    v24 = *(a5 + 248);
    *(a5 + 472) = *(a5 + 240) > v21;
    *(a5 + 473) = v24 > v21;
    *(a5 + 474) = *(a5 + 256) > v21;
  }

  v25 = *(a1 + 504);
  v39 = *(a1 + 464);
  v40 = v25;
  v51 = 0;
  v52 = *(a1 + 666);
  v53 = a1 + 576;
  v54 = *(a1 + 688);
  v26 = *(a1 + 640);
  if (*(a1 + 648) < v26)
  {
    v26 = *(a1 + 648);
  }

  if (*(a1 + 656) >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = *(a1 + 656);
  }

  v32 = a4;
  v33 = a4 + 30;
  v36 = a4 + 36;
  v37 = a4 + 6;
  v38 = a4[48];
  v34 = a4 + 42;
  v35 = a4 + 12;
  v41 = *(a3 + 21);
  v42 = a3[23];
  v43 = *(a3 + 7);
  v44 = a3[16];
  v45 = *(a3 + 17);
  v46 = a3[19];
  v28 = a3[4];
  v47 = *(a3 + 1);
  v29 = *a3;
  v50 = *(a3 + 2);
  v48 = v28;
  v49 = v29;
  peridot::PeridotDxpDetector::blrDetector(a1, &v32, a5 + 480, v17);
  v30 = *(a5 + 488);
  *(a5 + 712) = *(a5 + 480) > v27;
  *(a5 + 713) = v30 > v27;
  *(a5 + 714) = *(a5 + 496) > v27;
  return 0;
}

uint64_t peridot::PeridotDxpDetector::blrDetector(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v74 = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  if (*(a2 + 180) == 1)
  {
    v5 = *(a1 + 488);
  }

  v60 = *(*(a2 + 192) + 8);
  v61 = **(a2 + 192);
  v6 = 0.0;
  memset(v73, 0, sizeof(v73));
  v50 = *(a1 + 525);
  if (*(a1 + 525))
  {
    v7 = 0;
    v8 = (v60 - v61) >> 2;
    v9 = (v8 >> 1);
    v10 = *(a2 + 8);
    v47 = **(a2 + 16);
    v49 = (*(*(a2 + 16) + 8) - v47) >> 3;
    v45 = a2 + 120;
    v46 = a2 + 96;
    v11 = a2 + 72;
    v12 = *(a2 + 200);
    v13 = 2 * v12;
    v57 = v8;
    v58 = a1 + 624;
    if (v8 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v60 - v61) >> 2;
    }

    v53 = v14;
    v55 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(a2 + 64);
    v51 = 0xFFFFFFFF00000000 * v9;
    v52 = -v9;
    v48 = *(a2 + 32);
    v56 = *(a2 + 24);
    v59 = *(a2 + 200);
    v54 = 0xFFFFFFFF00000000 * v12;
    while (1)
    {
      v72 = 0;
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v64 = 0;
      v63 = 0;
      v62 = 0;
      if (v7 == v49 || v7 >= (v48[1] - *v48) >> 3)
      {
LABEL_36:
        std::vector<float>::__throw_out_of_range[abi:ne200100]();
      }

      a1 = peridot::PeridotDxpDetector::takeEchoes(a1, *(v47 + 8 * v7), *(*v48 + 8 * v7), a4, *(v4 + 512), *(v46 + 8 * v7), *(v45 + 8 * v7), v5, v44, &v71, &v68, &v66, &v64, &v62);
      if (v68 || v69 || v70)
      {
        break;
      }

LABEL_8:
      if (++v7 == v50)
      {
        goto LABEL_35;
      }
    }

    v15 = 0;
    while (1)
    {
      v18 = *(&v68 + v15);
      if (!v18)
      {
        v16 = *(&v71 + v15);
        goto LABEL_16;
      }

      v16 = *(&v71 + v15);
      v19 = expf((*(v4 + 484) - v16) * *(v4 + 480));
      v20 = &v73[9 * v7 + 3 * v15];
      v20[3] = 1.0 / (v19 + 1.0);
      if (v60 == v61)
      {
        v24 = 0.0;
      }

      else
      {
        if (v7 >= (v56[1] - *v56) >> 3)
        {
          goto LABEL_36;
        }

        v21 = *(v11 + 8 * v7) + 1;
        v22 = *(*(*v56 + 8 * v7) + 8);
        if (v57 >= 2)
        {
          v25 = v51 + (v18 << 32);
          v26 = 0;
          v27 = v61;
          v28 = v55;
          do
          {
            v29 = *v27++;
            v30.i32[0] = *(v22 + 4 * ((v25 >> 32) % v21));
            v30.i32[1] = *(v22 + 4 * (((v25 + 0x100000000) >> 32) % v21));
            v26 = vmla_f32(v26, v30, vmul_f32(v29, v29));
            v25 += 0x200000000;
            v28 -= 2;
          }

          while (v28);
          v24 = vaddv_f32(v26);
          v23 = v55;
          if (v57 == v55)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0.0;
        }

        v31 = v53 - v23;
        v32 = v61 + v23;
        v33 = (v52 + v23 + v18) << 32;
        do
        {
          v34 = *v32++;
          v24 = v24 + ((v34 * v34) * *(v22 + 4 * ((v33 >> 32) % v21)));
          v33 += 0x100000000;
          --v31;
        }

        while (v31);
      }

LABEL_28:
      v20[7] = v24;
      if (v7 >= (v10[1] - *v10) >> 3)
      {
        goto LABEL_36;
      }

      v35 = *(v11 + 8 * v7) + 1;
      v36 = *(*(*v10 + 8 * v7) + 8);
      if (v13)
      {
        v37 = v54 + (v18 << 32);
        v38 = 0.0;
        v39 = v13;
        v40 = 0.0;
        do
        {
          v38 = *(v36 + 4 * ((v37 >> 32) % v35)) + v38;
          v40 = *(v36 + 4 * (((v37 + 0x100000000) >> 32) % v35)) + v40;
          v37 += 0x200000000;
          v39 -= 2;
        }

        while (v39);
        v41 = v40 + v38;
      }

      else
      {
        v41 = 0.0;
      }

      v20[4] = fmaxf(((*(v36 + 4 * ((v13 + v18 - v59) % v35)) + v41) * 0.25) / *(v58 + 4 * v7), 0.0);
LABEL_16:
      v17 = &v73[9 * v7 + 3 * v15];
      *(v17 + 6) = *(&v64 + v15);
      *(v17 + 40) = 1;
      *(v17 + 2) = v16;
      *v17 = v18;
      v6 = *(&v62 + v15);
      *(v17 + 8) = *(&v66 + v15);
      *(v17 + 9) = v6;
      if (++v15 == 3)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_35:
  peridot::PeridotDxpDetector::hdUnfold(v4, v73, a2, v6);
  return 0;
}

uint64_t peridot::PeridotDxpDetector::hdUnfold(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v44 = *MEMORY[0x277D85DE8];
  if (*(v6 + 180))
  {
    v11 = v4;
    v12 = *(v6 + 104);
    v39[0] = *(v6 + 96);
    v39[1] = v12;
    v39[2] = *(v6 + 112);
    v39[3] = *(v4 + 640) - *(v6 + 120);
    v39[4] = *(v4 + 648) - *(v6 + 128);
    v39[5] = *(v4 + 656) - *(v6 + 136);
    v42 = 0.0;
    bzero(__src, 0x1010uLL);
    *v40 = 0;
    peridot::HDUnfoldClass::crtUnfold(v11 + 8, v10, v9 + 168, v13, v39, __src, &v42, v41, &v40[1], v40);
    v14 = v40[0];
    peridot::HDUnfoldClass::calcConf(v11 + 8, v15, __src, v16, v9 + 144, (v9 + 168), v9, *(v9 + 184), v42, v40[0], v8, v38);
    *(v8 + 235) = v40[1];
    *(v8 + 236) = v14;
  }

  else
  {
    v18 = 0;
    v19 = v5 + 2;
    v20 = 3;
    do
    {
      v21 = *(v19 - 2);
      v22 = v21;
      v23 = *(v6 + 172);
      v24 = *(v6 + 176);
      v25 = fminf(fabsf((v21 - v5[18]) + v23), 3.4028e38);
      v26 = fminf(fabsf((v21 - v5[36]) + v24), 3.4028e38);
      v27 = fabsf((v21 - v5[24]) + v23);
      v28 = fabsf((v21 - v5[42]) + v24);
      if (v27 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v27;
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      v31 = fabsf((v22 - v5[30]) + v23);
      v32 = fabsf((v22 - v5[48]) + v24);
      if (v31 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = v31;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = *(v6 + 56);
      if (v33 <= v35 && v34 <= v35 && v21 != 0)
      {
        *v7 = v21;
        *(v7 + 24) = 2139095039;
        operator new();
      }

      ++v18;
      v19 += 6;
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t peridot::PeridotDxpDetector::takeEchoes(peridot::PeridotDxpDetector *this, peridot::Histogram *a2, peridot::Histogram *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, float a8, unint64_t a9, float *a10, unint64_t *a11, float *a12, float *a13, float *a14)
{
  MEMORY[0x28223BE20](this, a2, a3, a8);
  v68[367] = *MEMORY[0x277D85DE8];
  v21 = *(v14 + 16) - 2;
  if (v21 >= v18)
  {
    v21 = v18;
  }

  v22 = v17 + 1;
  if (v17 + 1 >= v21)
  {
    return 0;
  }

  v23 = 0;
  v24 = *(v14 + 8);
  v25 = (v24 + 4 * v17 + 8);
  do
  {
    v26 = *(v25 - 1);
    if (v26 > 0.0 && (v26 * v26) > ((v20 * v20) * *(*(v15 + 8) + 4 * v22)))
    {
      if ((v27 = *(v25 - 2), v27 < v26) && (v26 > *v25 || vabds_f32(v26, v27) > 0.000001 && vabds_f32(v26, *v25) < 0.000001) || vabds_f32(v27, v26) < 0.000001 && v26 > *v25 && vabds_f32(v26, *v25) > 0.000001)
      {
        *&v67[8 * v23++] = v22;
      }
    }

    ++v22;
    ++v25;
  }

  while (v21 != v22);
  if (!v23)
  {
    return 0;
  }

  v28 = *(v15 + 8);
  if (v23 == 1)
  {
    v29 = 0;
LABEL_23:
    v34 = v23 - v29;
    v35 = &v65[v29];
    v36 = &v67[8 * v29];
    do
    {
      v37 = *v36++;
      *v35++ = *(v24 + 4 * v37) / sqrtf(*(v28 + 4 * v37));
      --v34;
    }

    while (v34);
    goto LABEL_25;
  }

  v29 = v23 & 0xFFFFFFFFFFFFFFFELL;
  v30 = &v66;
  v31 = v68;
  v32 = v23 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v33 = *(v24 + 4 * *v31) / sqrtf(*(v28 + 4 * *v31));
    *(v30 - 1) = *(v24 + 4 * *(v31 - 1)) / sqrtf(*(v28 + 4 * *(v31 - 1)));
    *v30 = v33;
    v30 += 2;
    v31 += 2;
    v32 -= 2;
  }

  while (v32);
  if (v23 != v29)
  {
    goto LABEL_23;
  }

LABEL_25:
  v38 = 0;
  v39 = v23;
  do
  {
    v40 = 0;
    v41 = 0;
    v42 = *v65;
    do
    {
      if (*&v67[8 * v40])
      {
        v43 = *&v65[v40];
        if (v43 > v42 && vabds_f32(v43, v42) > 0.000001)
        {
          v42 = *&v65[v40];
          v41 = v40;
        }
      }

      ++v40;
    }

    while (v23 != v40);
    if (v42 == -10000.0)
    {
      break;
    }

    v44 = *&v67[8 * v41];
    v45 = *(v24 + 4 * v44);
    LODWORD(v46) = v44 - v19;
    if (v44 - v19 <= v17)
    {
      LODWORD(v46) = v17;
    }

    v46 = v46;
    if (v21 >= v44 + v19)
    {
      v47 = v44 + v19;
    }

    else
    {
      v47 = v21;
    }

    v48 = v45 * 0.5;
    if (v44 <= v46)
    {
      v49 = 0;
    }

    else
    {
      v49 = 0;
      v50 = v46;
      do
      {
        v51 = *(v24 + 4 * v50);
        if (v51 < v48)
        {
          v46 = v50;
        }

        v49 |= v51 < v48;
        ++v50;
      }

      while (v44 != v50);
    }

    v52 = *&v67[8 * v41];
    while (1)
    {
      v53 = v52 + 1;
      if (v52 + 1 > v47)
      {
        break;
      }

      v54 = *(v24 + 4 + 4 * v52++);
      if (v54 < v48)
      {
        v55 = v53 - 1;
        v56 = (2 * (v53 - v44)) | 1;
        v57 = v55 - v46 + 2;
        if ((v49 & 1) == 0)
        {
          v57 = v56;
        }

        goto LABEL_53;
      }
    }

    v57 = (2 * (v44 - v46)) | 1;
    if ((v49 & 1) == 0)
    {
      v57 = v19 + 1;
    }

LABEL_53:
    if (v44 == *a11 || v44 == a11[1] || v44 == a11[2] || v57 > v19)
    {
      *&v67[8 * v41] = 0;
      --v39;
      v65[v41] = -971227136;
      if (!v39)
      {
        return 0;
      }
    }

    else
    {
      a10[v38] = v42;
      a11[v38] = v44;
      a12[v38] = v45;
      a13[v38] = *(v28 + 4 * v44);
      a14[v38] = v57;
      v58 = v44 - v16;
      v59 = v44 + v16;
      v60 = v65;
      v61 = v67;
      v62 = v23;
      do
      {
        if (*v61 >= v58 && *v61 - 1 < v59)
        {
          *v61 = 0;
          --v39;
          *v60 = -971227136;
        }

        ++v60;
        ++v61;
        --v62;
      }

      while (v62);
      ++v38;
      if (!v39)
      {
        return 0;
      }
    }
  }

  while (v38 < 3);
  return 0;
}

void peridot::Histogram::~Histogram(peridot::Histogram *this)
{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v2 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v2;
    v1 = vars8;
  }

  *(this + 2) = 0;

  JUMPOUT(0x22AA531A0);
}

{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v1 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v1;
  }

  *(this + 2) = 0;
}

{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v1 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v1;
  }

  *(this + 2) = 0;
}

void peridot::RefHistogram::~RefHistogram(peridot::RefHistogram *this)
{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v2 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v2;
    v1 = vars8;
  }

  *(this + 2) = 0;

  JUMPOUT(0x22AA531A0);
}

{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v1 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v1;
  }

  *(this + 2) = 0;
}

{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v1 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v1;
  }

  *(this + 2) = 0;
}

void peridot::ImgHistogram::~ImgHistogram(peridot::ImgHistogram *this)
{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v2 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v2;
    v1 = vars8;
  }

  *(this + 2) = 0;

  JUMPOUT(0x22AA531A0);
}

{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v1 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v1;
  }

  *(this + 2) = 0;
}

{
  *this = off_283809F88;
  if (*(this + 1))
  {
    v1 = this;
    MEMORY[0x22AA53170](*(this + 1), 0x1000C8052888210);
    this = v1;
  }

  *(this + 2) = 0;
}

void peridot::Histogram::Histogram(peridot::Histogram *this, uint64_t a2)
{
  *this = off_283809F88;
  *(this + 2) = a2;
  operator new[]();
}

{
  *this = off_283809F88;
  *(this + 2) = a2;
  operator new[]();
}

void peridot::Histogram::Histogram(peridot::Histogram *this, uint64_t a2, float a3)
{
  *this = off_283809F88;
  *(this + 2) = a2;
  operator new[]();
}

{
  *this = off_283809F88;
  *(this + 2) = a2;
  operator new[]();
}

void peridot::Histogram::Histogram(peridot::Histogram *this, const peridot::Histogram *a2)
{
  v2 = *(a2 + 2);
  *this = off_283809F88;
  *(this + 2) = v2;
  operator new[]();
}

{
  v2 = *(a2 + 2);
  *this = off_283809F88;
  *(this + 2) = v2;
  operator new[]();
}

uint64_t peridot::Histogram::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    if (v4 != *(a1 + 16))
    {
      peridot_depth_log("Trying to copy histogram of different size");
      v5 = *(a1 + 8);
      if (v5)
      {
        MEMORY[0x22AA53170](v5, 0x1000C8052888210);
      }

      *(a1 + 16) = *(a2 + 16);
      operator new[]();
    }

    memcpy(*(a1 + 8), *(a2 + 8), 4 * v4);
  }

  return a1;
}

void *peridot::Histogram::copyFrom(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  if (*(a1 + 16) != v6 >> 2)
  {
    peridot_depth_log("Warning!! Trying to copy histogram of different size");
    v4 = *a2;
    v6 = 4 * *(a1 + 16);
  }

  v7 = *(a1 + 8);

  return memcpy(v7, v4, v6);
}

void *peridot::Histogram::copyFrom(peridot::Histogram *this, const float *a2, uint64_t a3)
{
  if (*(this + 2) != a3)
  {
    v4 = a2;
    peridot_depth_log("Warning!! Trying to copy histogram of different size");
    a2 = v4;
    a3 = *(this + 2);
  }

  v5 = *(this + 1);
  v6 = 4 * a3;

  return memcpy(v5, a2, v6);
}

void peridot::Histogram::copyFrom(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a4 + a3 >= (a2[1] - *a2) >> 2)
  {
    peridot_depth_log("Warning!! Trying to copy from invalid memory");
  }

  else if (*(a1 + 16) >= a4)
  {
    memcpy(*(a1 + 8), (*a2 + 4 * a3), 4 * a4);
  }

  else
  {
    peridot_depth_log("Warning!! Trying to copy histogram of different size");
  }
}

uint64_t peridot::Histogram::compareTo(peridot::Histogram *this, const peridot::Histogram *a2, float a3, float a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 1;
  }

  v9 = 0;
  if (a4 > 0.0)
  {
    while (1)
    {
      v16 = *(*(this + 1) + 4 * v9);
      v17 = *(*(a2 + 1) + 4 * v9);
      if (v16 == 0.0)
      {
        break;
      }

      v18 = *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff;
      if (v17 == 0.0)
      {
        goto LABEL_26;
      }

      v20 = vabds_f32(v17, v16);
      v21 = v20 / v16;
      if (*&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff < v21)
      {
        *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff = v21;
      }

      if (v21 > a3 && v20 > a4)
      {
        return 0;
      }

LABEL_21:
      if (++v9 >= v4)
      {
        return 1;
      }
    }

    if (v17 == 0.0)
    {
      goto LABEL_21;
    }

    v18 = *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff;
LABEL_26:
    v19 = vabds_f32(v17, v16);
    if (v18 < v19)
    {
      *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff = v19;
      peridot_depth_log("maxDiff %.10f", v19);
    }

    if (v19 > a4)
    {
      return 0;
    }

    v4 = *(this + 2);
    goto LABEL_21;
  }

  while (1)
  {
    v10 = *(*(this + 1) + 4 * v9);
    v11 = *(*(a2 + 1) + 4 * v9);
    if (v10 != 0.0)
    {
      break;
    }

    if (v11 == 0.0)
    {
      goto LABEL_5;
    }

    v12 = *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff;
LABEL_10:
    v13 = vabds_f32(v11, v10);
    if (v12 < v13)
    {
      *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff = v13;
      peridot_depth_log("maxDiff %.10f", v13);
    }

    if (v13 > a4)
    {
      return 0;
    }

    v4 = *(this + 2);
LABEL_5:
    if (++v9 >= v4)
    {
      return 1;
    }
  }

  v12 = *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff;
  if (v11 == 0.0)
  {
    goto LABEL_10;
  }

  v14 = vabds_f32(v11, v10) / v10;
  if (*&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff < v14)
  {
    *&peridot::Histogram::compareTo(peridot::Histogram const&,float,float)const::maxDiff = v14;
  }

  if (v14 <= a3)
  {
    goto LABEL_5;
  }

  return 0;
}

void peridot::Histogram::zeros(peridot::Histogram *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    bzero(*(this + 1), 4 * v1);
  }
}

uint64_t peridot::Histogram::debugPrint(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  puts(v3);
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      printf("%.15f,", *(*(a1 + 8) + 4 * v4));
      if (10 * (v4 / 0xA) + 9 == v4)
      {
        putchar(10);
      }

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  return putchar(10);
}

uint64_t peridot::Histogram::pprint(peridot::Histogram *this)
{
  if (*(this + 2))
  {
    v3 = 0;
    do
    {
      printf("[%zu] %.15f, ", v3, *(*(this + 1) + 4 * v3));
      if (10 * (v3 / 0xA) + 9 == v3)
      {
        putchar(10);
      }

      ++v3;
    }

    while (v3 < *(this + 2));
    v1 = vars8;
  }

  return putchar(10);
}

uint64_t peridot::Histogram::print(peridot::Histogram *this)
{
  if (*(this + 2))
  {
    v3 = 0;
    do
    {
      printf("%.15f\n", *(*(this + 1) + 4 * v3++));
    }

    while (v3 < *(this + 2));
    v1 = vars8;
  }

  return putchar(10);
}

void peridot::RefHistogram::RefHistogram(peridot::RefHistogram *this)
{
  *this = off_283809F88;
  *(this + 2) = 64;
  operator new[]();
}

{
  *this = off_283809F88;
  *(this + 2) = 64;
  operator new[]();
}

void peridot::RefHistogram::RefHistogram(peridot::RefHistogram *this, float a2)
{
  *this = off_283809F88;
  *(this + 2) = 64;
  operator new[]();
}

{
  *this = off_283809F88;
  *(this + 2) = 64;
  operator new[]();
}

void peridot::ImgHistogram::ImgHistogram(peridot::ImgHistogram *this)
{
  *this = off_283809F88;
  *(this + 2) = 92;
  operator new[]();
}

{
  *this = off_283809F88;
  *(this + 2) = 92;
  operator new[]();
}

void peridot::ImgHistogram::ImgHistogram(peridot::ImgHistogram *this, float a2)
{
  *this = off_283809F88;
  *(this + 2) = 92;
  operator new[]();
}

{
  *this = off_283809F88;
  *(this + 2) = 92;
  operator new[]();
}

uint64_t peridot::FullStaticHistogram::FullStaticHistogram(uint64_t this)
{
  *(this + 1472) = 0;
  return this;
}

{
  *(this + 1472) = 0;
  return this;
}

uint64_t peridot::FullStaticHistogram::FullStaticHistogram(uint64_t this, uint64_t a2)
{
  *(this + 1472) = a2;
  return this;
}

{
  *(this + 1472) = a2;
  return this;
}

void peridot::FullStaticHistogram::zeros(peridot::FullStaticHistogram *this)
{
  v1 = *(this + 184);
  if (v1)
  {
    bzero(this, 4 * v1);
  }
}

void *peridot::FullStaticHistogram::copyFrom(peridot::FullStaticHistogram *this, const peridot::Histogram *a2)
{
  v3 = *(a2 + 2);
  if (v3 >= 0x171)
  {
    v4 = this;
    peridot_depth_log("Trying to copy histogram of different size");
    this = v4;
    v3 = *(a2 + 2);
  }

  *(this + 184) = v3;
  v5 = *(a2 + 1);

  return memcpy(this, v5, 4 * v3);
}

uint64_t *peridot::RefHistogramAllSpots::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    if (v4 != a1[2])
    {
      peridot_depth_log("Trying to copy histogram of different size");
      v5 = a1[1];
      if (v5)
      {
        MEMORY[0x22AA53170](v5, 0x1000C8052888210);
      }

      a1[2] = *(a2 + 16);
      operator new[]();
    }

    memcpy(a1[1], *(a2 + 8), 4 * v4);
    v6 = *(a2 + 40);
    if (v6 != a1[5])
    {
      peridot_depth_log("Trying to copy histogram of different size");
      v7 = a1[4];
      if (v7)
      {
        MEMORY[0x22AA53170](v7, 0x1000C8052888210);
      }

      a1[5] = *(a2 + 40);
      operator new[]();
    }

    memcpy(a1[4], *(a2 + 32), 4 * v6);
  }

  return a1;
}

double peridot::PeridotPreProcessOutput::PeridotPreProcessOutput(peridot::PeridotPreProcessOutput *this)
{
  result = 0.0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 1000) = 0;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1272) = 0u;
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  *(this + 1320) = 0u;
  *(this + 1336) = 0u;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 1400) = 0u;
  *(this + 100) = 0u;
  *(this + 99) = 0u;
  *(this + 98) = 0u;
  *(this + 97) = 0u;
  *(this + 96) = 0u;
  *(this + 95) = 0u;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 92) = 0u;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 89) = 0u;
  *(this + 1784) = 0u;
  *(this + 1800) = 0u;
  *(this + 1752) = 0u;
  *(this + 1768) = 0u;
  *(this + 1720) = 0u;
  *(this + 1736) = 0u;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 1656) = 0u;
  *(this + 1672) = 0u;
  *(this + 1624) = 0u;
  *(this + 1640) = 0u;
  *(this + 125) = 0u;
  *(this + 124) = 0u;
  *(this + 123) = 0u;
  *(this + 122) = 0u;
  *(this + 121) = 0u;
  *(this + 120) = 0u;
  *(this + 119) = 0u;
  *(this + 118) = 0u;
  *(this + 117) = 0u;
  *(this + 116) = 0u;
  *(this + 115) = 0u;
  *(this + 114) = 0u;
  *(this + 2024) = 0;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 2376) = 0u;
  *(this + 2392) = 0u;
  *(this + 2344) = 0u;
  *(this + 2360) = 0u;
  *(this + 2312) = 0u;
  *(this + 2328) = 0u;
  *(this + 2280) = 0u;
  *(this + 2296) = 0u;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 164) = 0u;
  *(this + 163) = 0u;
  *(this + 162) = 0u;
  *(this + 161) = 0u;
  *(this + 160) = 0u;
  *(this + 159) = 0u;
  *(this + 158) = 0u;
  *(this + 157) = 0u;
  *(this + 156) = 0u;
  *(this + 155) = 0u;
  *(this + 154) = 0u;
  *(this + 153) = 0u;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 2776) = 0u;
  *(this + 2792) = 0u;
  *(this + 2744) = 0u;
  *(this + 2760) = 0u;
  *(this + 2712) = 0u;
  *(this + 2728) = 0u;
  *(this + 2680) = 0u;
  *(this + 2696) = 0u;
  *(this + 2648) = 0u;
  *(this + 2664) = 0u;
  *(this + 189) = 0u;
  *(this + 188) = 0u;
  *(this + 187) = 0u;
  *(this + 186) = 0u;
  *(this + 185) = 0u;
  *(this + 184) = 0u;
  *(this + 183) = 0u;
  *(this + 182) = 0u;
  *(this + 181) = 0u;
  *(this + 180) = 0u;
  *(this + 179) = 0u;
  *(this + 178) = 0u;
  *(this + 3048) = 0;
  *(this + 3432) = 0u;
  *(this + 3448) = 0u;
  *(this + 3400) = 0u;
  *(this + 3416) = 0u;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 3336) = 0u;
  *(this + 3352) = 0u;
  *(this + 3304) = 0u;
  *(this + 3320) = 0u;
  *(this + 3272) = 0u;
  *(this + 3288) = 0u;
  *(this + 228) = 0u;
  *(this + 227) = 0u;
  *(this + 226) = 0u;
  *(this + 225) = 0u;
  *(this + 224) = 0u;
  *(this + 223) = 0u;
  *(this + 222) = 0u;
  *(this + 221) = 0u;
  *(this + 220) = 0u;
  *(this + 219) = 0u;
  *(this + 218) = 0u;
  *(this + 217) = 0u;
  *(this + 3832) = 0u;
  *(this + 3848) = 0u;
  *(this + 3800) = 0u;
  *(this + 3816) = 0u;
  *(this + 3768) = 0u;
  *(this + 3784) = 0u;
  *(this + 3736) = 0u;
  *(this + 3752) = 0u;
  *(this + 3704) = 0u;
  *(this + 3720) = 0u;
  *(this + 3672) = 0u;
  *(this + 3688) = 0u;
  *(this + 253) = 0u;
  *(this + 252) = 0u;
  *(this + 251) = 0u;
  *(this + 250) = 0u;
  *(this + 249) = 0u;
  *(this + 248) = 0u;
  *(this + 247) = 0u;
  *(this + 246) = 0u;
  *(this + 245) = 0u;
  *(this + 244) = 0u;
  *(this + 243) = 0u;
  *(this + 242) = 0u;
  *(this + 4072) = 0;
  *(this + 4456) = 0u;
  *(this + 4472) = 0u;
  *(this + 4424) = 0u;
  *(this + 4440) = 0u;
  *(this + 4392) = 0u;
  *(this + 4408) = 0u;
  *(this + 4360) = 0u;
  *(this + 4376) = 0u;
  *(this + 4328) = 0u;
  *(this + 4344) = 0u;
  *(this + 4296) = 0u;
  *(this + 4312) = 0u;
  *(this + 292) = 0u;
  *(this + 291) = 0u;
  *(this + 290) = 0u;
  *(this + 289) = 0u;
  *(this + 288) = 0u;
  *(this + 287) = 0u;
  *(this + 286) = 0u;
  *(this + 285) = 0u;
  *(this + 284) = 0u;
  *(this + 283) = 0u;
  *(this + 282) = 0u;
  *(this + 281) = 0u;
  *(this + 4856) = 0u;
  *(this + 4872) = 0u;
  *(this + 4824) = 0u;
  *(this + 4840) = 0u;
  *(this + 4792) = 0u;
  *(this + 4808) = 0u;
  *(this + 4760) = 0u;
  *(this + 4776) = 0u;
  *(this + 4728) = 0u;
  *(this + 4744) = 0u;
  *(this + 4696) = 0u;
  *(this + 4712) = 0u;
  *(this + 317) = 0u;
  *(this + 316) = 0u;
  *(this + 315) = 0u;
  *(this + 314) = 0u;
  *(this + 313) = 0u;
  *(this + 312) = 0u;
  *(this + 311) = 0u;
  *(this + 310) = 0u;
  *(this + 309) = 0u;
  *(this + 308) = 0u;
  *(this + 307) = 0u;
  *(this + 306) = 0u;
  *(this + 804) = 0u;
  *(this + 12552) = 0u;
  *(this + 12568) = 0u;
  *(this + 12520) = 0u;
  *(this + 12536) = 0u;
  *(this + 12488) = 0u;
  *(this + 12504) = 0u;
  *(this + 5096) = 0;
  *(this + 12616) = 0u;
  *(this + 12632) = 0u;
  *(this + 12584) = 0u;
  *(this + 12600) = 0u;
  *(this + 755) = 0u;
  *(this + 754) = 0u;
  *(this + 12264) = 0;
  *(this + 12648) = 0u;
  *(this + 12664) = 0u;
  *(this + 760) = 0u;
  *(this + 759) = 0u;
  *(this + 758) = 0u;
  *(this + 757) = 0u;
  *(this + 756) = 0u;
  *(this + 765) = 0u;
  *(this + 764) = 0u;
  *(this + 763) = 0u;
  *(this + 762) = 0u;
  *(this + 761) = 0u;
  *(this + 11928) = 0u;
  *(this + 11944) = 0u;
  *(this + 11896) = 0u;
  *(this + 11912) = 0u;
  *(this + 11864) = 0u;
  *(this + 11880) = 0u;
  *(this + 12024) = 0u;
  *(this + 12040) = 0u;
  *(this + 11992) = 0u;
  *(this + 12008) = 0u;
  *(this + 11960) = 0u;
  *(this + 11976) = 0u;
  *(this + 739) = 0u;
  *(this + 733) = 0u;
  *(this + 732) = 0u;
  *(this + 731) = 0u;
  *(this + 730) = 0u;
  *(this + 729) = 0u;
  *(this + 738) = 0u;
  *(this + 737) = 0u;
  *(this + 736) = 0u;
  *(this + 735) = 0u;
  *(this + 734) = 0u;
  *(this + 11528) = 0u;
  *(this + 11544) = 0u;
  *(this + 11496) = 0u;
  *(this + 11512) = 0u;
  *(this + 11464) = 0u;
  *(this + 11480) = 0u;
  *(this + 740) = 0u;
  *(this + 11624) = 0u;
  *(this + 11640) = 0u;
  *(this + 11592) = 0u;
  *(this + 11608) = 0u;
  *(this + 11560) = 0u;
  *(this + 11576) = 0u;
  *(this + 692) = 0u;
  *(this + 691) = 0u;
  *(this + 690) = 0u;
  *(this + 11240) = 0;
  *(this + 697) = 0u;
  *(this + 696) = 0u;
  *(this + 695) = 0u;
  *(this + 694) = 0u;
  *(this + 693) = 0u;
  *(this + 10840) = 0u;
  *(this + 10856) = 0u;
  *(this + 701) = 0u;
  *(this + 700) = 0u;
  *(this + 699) = 0u;
  *(this + 698) = 0u;
  *(this + 10936) = 0u;
  *(this + 10952) = 0u;
  *(this + 10904) = 0u;
  *(this + 10920) = 0u;
  *(this + 10872) = 0u;
  *(this + 10888) = 0u;
  *(this + 666) = 0u;
  *(this + 665) = 0u;
  *(this + 11000) = 0u;
  *(this + 11016) = 0u;
  *(this + 10968) = 0u;
  *(this + 10984) = 0u;
  *(this + 671) = 0u;
  *(this + 670) = 0u;
  *(this + 669) = 0u;
  *(this + 668) = 0u;
  *(this + 667) = 0u;
  *(this + 676) = 0u;
  *(this + 675) = 0u;
  *(this + 674) = 0u;
  *(this + 673) = 0u;
  *(this + 672) = 0u;
  *(this + 10504) = 0u;
  *(this + 10520) = 0u;
  *(this + 10472) = 0u;
  *(this + 10488) = 0u;
  *(this + 10440) = 0u;
  *(this + 10456) = 0u;
  *(this + 10600) = 0u;
  *(this + 10616) = 0u;
  *(this + 10568) = 0u;
  *(this + 10584) = 0u;
  *(this + 10536) = 0u;
  *(this + 10552) = 0u;
  *(this + 628) = 0u;
  *(this + 627) = 0u;
  *(this + 626) = 0u;
  *(this + 10216) = 0;
  *(this + 633) = 0u;
  *(this + 632) = 0u;
  *(this + 631) = 0u;
  *(this + 630) = 0u;
  *(this + 629) = 0u;
  *(this + 9816) = 0u;
  *(this + 9832) = 0u;
  *(this + 637) = 0u;
  *(this + 636) = 0u;
  *(this + 635) = 0u;
  *(this + 634) = 0u;
  *(this + 9912) = 0u;
  *(this + 9928) = 0u;
  *(this + 9880) = 0u;
  *(this + 9896) = 0u;
  *(this + 9848) = 0u;
  *(this + 9864) = 0u;
  *(this + 607) = 0u;
  *(this + 601) = 0u;
  *(this + 9976) = 0u;
  *(this + 9992) = 0u;
  *(this + 9944) = 0u;
  *(this + 9960) = 0u;
  *(this + 606) = 0u;
  *(this + 605) = 0u;
  *(this + 604) = 0u;
  *(this + 603) = 0u;
  *(this + 602) = 0u;
  *(this + 9416) = 0u;
  *(this + 9432) = 0u;
  *(this + 612) = 0u;
  *(this + 611) = 0u;
  *(this + 610) = 0u;
  *(this + 609) = 0u;
  *(this + 608) = 0u;
  *(this + 9512) = 0u;
  *(this + 9528) = 0u;
  *(this + 9480) = 0u;
  *(this + 9496) = 0u;
  *(this + 9448) = 0u;
  *(this + 9464) = 0u;
  *(this + 9192) = 0;
  *(this + 9576) = 0u;
  *(this + 9592) = 0u;
  *(this + 9544) = 0u;
  *(this + 9560) = 0u;
  *(this + 566) = 0u;
  *(this + 565) = 0u;
  *(this + 564) = 0u;
  *(this + 563) = 0u;
  *(this + 562) = 0u;
  *(this + 571) = 0u;
  *(this + 570) = 0u;
  *(this + 569) = 0u;
  *(this + 568) = 0u;
  *(this + 567) = 0u;
  *(this + 8824) = 0u;
  *(this + 8840) = 0u;
  *(this + 8792) = 0u;
  *(this + 8808) = 0u;
  *(this + 573) = 0u;
  *(this + 572) = 0u;
  *(this + 8920) = 0u;
  *(this + 8936) = 0u;
  *(this + 8888) = 0u;
  *(this + 8904) = 0u;
  *(this + 8856) = 0u;
  *(this + 8872) = 0u;
  *(this + 539) = 0u;
  *(this + 538) = 0u;
  *(this + 537) = 0u;
  *(this + 8952) = 0u;
  *(this + 8968) = 0u;
  *(this + 544) = 0u;
  *(this + 543) = 0u;
  *(this + 542) = 0u;
  *(this + 541) = 0u;
  *(this + 540) = 0u;
  *(this + 8392) = 0u;
  *(this + 8408) = 0u;
  *(this + 548) = 0u;
  *(this + 547) = 0u;
  *(this + 546) = 0u;
  *(this + 545) = 0u;
  *(this + 8488) = 0u;
  *(this + 8504) = 0u;
  *(this + 8456) = 0u;
  *(this + 8472) = 0u;
  *(this + 8424) = 0u;
  *(this + 8440) = 0u;
  *(this + 8168) = 0;
  *(this + 8552) = 0u;
  *(this + 8568) = 0u;
  *(this + 8520) = 0u;
  *(this + 8536) = 0u;
  *(this + 502) = 0u;
  *(this + 501) = 0u;
  *(this + 500) = 0u;
  *(this + 499) = 0u;
  *(this + 498) = 0u;
  *(this + 507) = 0u;
  *(this + 506) = 0u;
  *(this + 505) = 0u;
  *(this + 504) = 0u;
  *(this + 503) = 0u;
  *(this + 7800) = 0u;
  *(this + 7816) = 0u;
  *(this + 7768) = 0u;
  *(this + 7784) = 0u;
  *(this + 509) = 0u;
  *(this + 508) = 0u;
  *(this + 7896) = 0u;
  *(this + 7912) = 0u;
  *(this + 7864) = 0u;
  *(this + 7880) = 0u;
  *(this + 7832) = 0u;
  *(this + 7848) = 0u;
  *(this + 481) = 0u;
  *(this + 475) = 0u;
  *(this + 474) = 0u;
  *(this + 473) = 0u;
  *(this + 7928) = 0u;
  *(this + 7944) = 0u;
  *(this + 480) = 0u;
  *(this + 479) = 0u;
  *(this + 478) = 0u;
  *(this + 477) = 0u;
  *(this + 476) = 0u;
  *(this + 7400) = 0u;
  *(this + 7416) = 0u;
  *(this + 7368) = 0u;
  *(this + 7384) = 0u;
  *(this + 484) = 0u;
  *(this + 483) = 0u;
  *(this + 482) = 0u;
  *(this + 7496) = 0u;
  *(this + 7512) = 0u;
  *(this + 7464) = 0u;
  *(this + 7480) = 0u;
  *(this + 7432) = 0u;
  *(this + 7448) = 0u;
  *(this + 435) = 0u;
  *(this + 434) = 0u;
  *(this + 7144) = 0;
  *(this + 7528) = 0u;
  *(this + 7544) = 0u;
  *(this + 440) = 0u;
  *(this + 439) = 0u;
  *(this + 438) = 0u;
  *(this + 437) = 0u;
  *(this + 436) = 0u;
  *(this + 445) = 0u;
  *(this + 444) = 0u;
  *(this + 443) = 0u;
  *(this + 442) = 0u;
  *(this + 441) = 0u;
  *(this + 6808) = 0u;
  *(this + 6824) = 0u;
  *(this + 6776) = 0u;
  *(this + 6792) = 0u;
  *(this + 6744) = 0u;
  *(this + 6760) = 0u;
  *(this + 6904) = 0u;
  *(this + 6920) = 0u;
  *(this + 6872) = 0u;
  *(this + 6888) = 0u;
  *(this + 6840) = 0u;
  *(this + 6856) = 0u;
  *(this + 413) = 0u;
  *(this + 412) = 0u;
  *(this + 411) = 0u;
  *(this + 410) = 0u;
  *(this + 409) = 0u;
  *(this + 418) = 0u;
  *(this + 417) = 0u;
  *(this + 416) = 0u;
  *(this + 415) = 0u;
  *(this + 414) = 0u;
  *(this + 6376) = 0u;
  *(this + 6392) = 0u;
  *(this + 6344) = 0u;
  *(this + 6360) = 0u;
  *(this + 420) = 0u;
  *(this + 419) = 0u;
  *(this + 6472) = 0u;
  *(this + 6488) = 0u;
  *(this + 6440) = 0u;
  *(this + 6456) = 0u;
  *(this + 6408) = 0u;
  *(this + 6424) = 0u;
  *(this + 371) = 0u;
  *(this + 370) = 0u;
  *(this + 6120) = 0;
  *(this + 6504) = 0u;
  *(this + 6520) = 0u;
  *(this + 376) = 0u;
  *(this + 375) = 0u;
  *(this + 374) = 0u;
  *(this + 373) = 0u;
  *(this + 372) = 0u;
  *(this + 381) = 0u;
  *(this + 380) = 0u;
  *(this + 379) = 0u;
  *(this + 378) = 0u;
  *(this + 377) = 0u;
  *(this + 5784) = 0u;
  *(this + 5800) = 0u;
  *(this + 5752) = 0u;
  *(this + 5768) = 0u;
  *(this + 5720) = 0u;
  *(this + 5736) = 0u;
  *(this + 5880) = 0u;
  *(this + 5896) = 0u;
  *(this + 5848) = 0u;
  *(this + 5864) = 0u;
  *(this + 5816) = 0u;
  *(this + 5832) = 0u;
  *(this + 355) = 0u;
  *(this + 349) = 0u;
  *(this + 348) = 0u;
  *(this + 347) = 0u;
  *(this + 346) = 0u;
  *(this + 345) = 0u;
  *(this + 354) = 0u;
  *(this + 353) = 0u;
  *(this + 352) = 0u;
  *(this + 351) = 0u;
  *(this + 350) = 0u;
  *(this + 5384) = 0u;
  *(this + 5400) = 0u;
  *(this + 5352) = 0u;
  *(this + 5368) = 0u;
  *(this + 5320) = 0u;
  *(this + 5336) = 0u;
  *(this + 356) = 0u;
  *(this + 5480) = 0u;
  *(this + 5496) = 0u;
  *(this + 5448) = 0u;
  *(this + 5464) = 0u;
  *(this + 5416) = 0u;
  *(this + 5432) = 0u;
  *(this + 803) = 0u;
  *(this + 802) = 0u;
  *(this + 801) = 0u;
  *(this + 800) = 0u;
  *(this + 799) = 0u;
  *(this + 798) = 0u;
  *(this + 797) = 0u;
  *(this + 796) = 0u;
  *(this + 795) = 0u;
  *(this + 794) = 0u;
  *(this + 793) = 0u;
  *(this + 829) = 0u;
  *(this + 828) = 0u;
  *(this + 827) = 0u;
  *(this + 826) = 0u;
  *(this + 825) = 0u;
  *(this + 824) = 0u;
  *(this + 823) = 0u;
  *(this + 822) = 0u;
  *(this + 821) = 0u;
  *(this + 820) = 0u;
  *(this + 819) = 0u;
  *(this + 818) = 0u;
  *(this + 868) = 0u;
  *(this + 867) = 0u;
  *(this + 866) = 0u;
  *(this + 865) = 0u;
  *(this + 864) = 0u;
  *(this + 863) = 0u;
  *(this + 862) = 0u;
  *(this + 861) = 0u;
  *(this + 860) = 0u;
  *(this + 859) = 0u;
  *(this + 858) = 0u;
  *(this + 857) = 0u;
  *(this + 893) = 0u;
  *(this + 892) = 0u;
  *(this + 891) = 0u;
  *(this + 890) = 0u;
  *(this + 889) = 0u;
  *(this + 888) = 0u;
  *(this + 887) = 0u;
  *(this + 886) = 0u;
  *(this + 885) = 0u;
  *(this + 884) = 0u;
  *(this + 883) = 0u;
  *(this + 882) = 0u;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 139) = 0u;
  *(this + 138) = 0u;
  *(this + 137) = 0u;
  *(this + 136) = 0u;
  *(this + 135) = 0u;
  *(this + 134) = 0u;
  *(this + 133) = 0u;
  *(this + 132) = 0u;
  *(this + 131) = 0u;
  *(this + 130) = 0u;
  *(this + 129) = 0u;
  *(this + 128) = 0u;
  *(this + 127) = 0u;
  *(this + 203) = 0u;
  *(this + 202) = 0u;
  *(this + 201) = 0u;
  *(this + 200) = 0u;
  *(this + 199) = 0u;
  *(this + 198) = 0u;
  *(this + 197) = 0u;
  *(this + 196) = 0u;
  *(this + 195) = 0u;
  *(this + 194) = 0u;
  *(this + 193) = 0u;
  *(this + 192) = 0u;
  *(this + 191) = 0u;
  *(this + 267) = 0u;
  *(this + 266) = 0u;
  *(this + 265) = 0u;
  *(this + 264) = 0u;
  *(this + 263) = 0u;
  *(this + 262) = 0u;
  *(this + 261) = 0u;
  *(this + 260) = 0u;
  *(this + 259) = 0u;
  *(this + 258) = 0u;
  *(this + 257) = 0u;
  *(this + 256) = 0u;
  *(this + 255) = 0u;
  *(this + 331) = 0u;
  *(this + 330) = 0u;
  *(this + 329) = 0u;
  *(this + 328) = 0u;
  *(this + 327) = 0u;
  *(this + 326) = 0u;
  *(this + 325) = 0u;
  *(this + 324) = 0u;
  *(this + 323) = 0u;
  *(this + 322) = 0u;
  *(this + 321) = 0u;
  *(this + 320) = 0u;
  *(this + 319) = 0u;
  *(this + 395) = 0u;
  *(this + 394) = 0u;
  *(this + 393) = 0u;
  *(this + 392) = 0u;
  *(this + 391) = 0u;
  *(this + 390) = 0u;
  *(this + 389) = 0u;
  *(this + 388) = 0u;
  *(this + 387) = 0u;
  *(this + 386) = 0u;
  *(this + 385) = 0u;
  *(this + 384) = 0u;
  *(this + 383) = 0u;
  *(this + 459) = 0u;
  *(this + 458) = 0u;
  *(this + 457) = 0u;
  *(this + 456) = 0u;
  *(this + 455) = 0u;
  *(this + 454) = 0u;
  *(this + 453) = 0u;
  *(this + 452) = 0u;
  *(this + 451) = 0u;
  *(this + 450) = 0u;
  *(this + 449) = 0u;
  *(this + 448) = 0u;
  *(this + 447) = 0u;
  *(this + 523) = 0u;
  *(this + 522) = 0u;
  *(this + 521) = 0u;
  *(this + 520) = 0u;
  *(this + 519) = 0u;
  *(this + 518) = 0u;
  *(this + 517) = 0u;
  *(this + 516) = 0u;
  *(this + 515) = 0u;
  *(this + 514) = 0u;
  *(this + 513) = 0u;
  *(this + 512) = 0u;
  *(this + 511) = 0u;
  *(this + 587) = 0u;
  *(this + 586) = 0u;
  *(this + 585) = 0u;
  *(this + 584) = 0u;
  *(this + 583) = 0u;
  *(this + 582) = 0u;
  *(this + 581) = 0u;
  *(this + 580) = 0u;
  *(this + 579) = 0u;
  *(this + 578) = 0u;
  *(this + 577) = 0u;
  *(this + 576) = 0u;
  *(this + 575) = 0u;
  *(this + 651) = 0u;
  *(this + 650) = 0u;
  *(this + 649) = 0u;
  *(this + 648) = 0u;
  *(this + 647) = 0u;
  *(this + 646) = 0u;
  *(this + 645) = 0u;
  *(this + 644) = 0u;
  *(this + 643) = 0u;
  *(this + 642) = 0u;
  *(this + 641) = 0u;
  *(this + 640) = 0u;
  *(this + 639) = 0u;
  *(this + 715) = 0u;
  *(this + 714) = 0u;
  *(this + 713) = 0u;
  *(this + 712) = 0u;
  *(this + 711) = 0u;
  *(this + 710) = 0u;
  *(this + 709) = 0u;
  *(this + 708) = 0u;
  *(this + 707) = 0u;
  *(this + 706) = 0u;
  *(this + 705) = 0u;
  *(this + 704) = 0u;
  *(this + 703) = 0u;
  *(this + 779) = 0u;
  *(this + 778) = 0u;
  *(this + 777) = 0u;
  *(this + 776) = 0u;
  *(this + 775) = 0u;
  *(this + 774) = 0u;
  *(this + 773) = 0u;
  *(this + 772) = 0u;
  *(this + 771) = 0u;
  *(this + 770) = 0u;
  *(this + 769) = 0u;
  *(this + 768) = 0u;
  *(this + 767) = 0u;
  *(this + 843) = 0u;
  *(this + 842) = 0u;
  *(this + 841) = 0u;
  *(this + 840) = 0u;
  *(this + 839) = 0u;
  *(this + 838) = 0u;
  *(this + 837) = 0u;
  *(this + 836) = 0u;
  *(this + 835) = 0u;
  *(this + 834) = 0u;
  *(this + 833) = 0u;
  *(this + 832) = 0u;
  *(this + 831) = 0u;
  *(this + 896) = 0u;
  *(this + 895) = 0u;
  *(this + 200) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 13048) = 0u;
  *(this + 13064) = 0u;
  *(this + 13016) = 0u;
  *(this + 13032) = 0u;
  *(this + 12984) = 0u;
  *(this + 13000) = 0u;
  *(this + 12952) = 0u;
  *(this + 12968) = 0u;
  *(this + 12920) = 0u;
  *(this + 12936) = 0u;
  *(this + 12888) = 0u;
  *(this + 12904) = 0u;
  *(this + 13288) = 0;
  *(this + 13672) = 0u;
  *(this + 13688) = 0u;
  *(this + 13640) = 0u;
  *(this + 13656) = 0u;
  *(this + 13608) = 0u;
  *(this + 13624) = 0u;
  *(this + 13576) = 0u;
  *(this + 13592) = 0u;
  *(this + 13544) = 0u;
  *(this + 13560) = 0u;
  *(this + 13512) = 0u;
  *(this + 13528) = 0u;
  *(this + 14072) = 0u;
  *(this + 14088) = 0u;
  *(this + 14040) = 0u;
  *(this + 14056) = 0u;
  *(this + 14008) = 0u;
  *(this + 14024) = 0u;
  *(this + 13976) = 0u;
  *(this + 13992) = 0u;
  *(this + 13944) = 0u;
  *(this + 13960) = 0u;
  *(this + 13912) = 0u;
  *(this + 13928) = 0u;
  *(this + 14312) = 0;
  *(this + 7176) = 1;
  return result;
}

void peridot::PeridotPreProcessOutput::PreProcessorOutSpot::~PreProcessorOutSpot(peridot::PeridotPreProcessOutput::PreProcessorOutSpot *this)
{
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 25);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 50);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 75);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 100);
  *(this + 1000) = 0;
  *(this + 63) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 800));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 600));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 400));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 200));

  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut(this);
}

{
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 25);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 50);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 75);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 100);
  *(this + 1000) = 0;
  *(this + 63) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 800));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 600));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 400));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 200));

  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut(this);
}

void *peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(void *this)
{
  v1 = this;
  v2 = *this;
  if (this[1] != *this)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *(v1[3] + 8 * v3);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v6 = *(v1[6] + 8 * v3);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v7 = *(v1[15] + 8 * v3);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v8 = *(v1[18] + 8 * v3);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      this = *(v1[21] + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      ++v3;
      v2 = *v1;
    }

    while (v3 < (v1[1] - *v1) >> 3);
  }

  *(v1 + 48) = 0;
  return this;
}

void peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut(peridot::PeridotPreProcessOutput::PreProcessorOut *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

uint64_t peridot::PeridotPreProcessOutput::PreProcessorOut::init(peridot::PeridotPreProcessOutput::PreProcessorOut *this, unint64_t a2)
{
  if (a2 > (*(this + 2) - *this) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    goto LABEL_26;
  }

  if (a2 > (*(this + 5) - *(this + 3)) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    goto LABEL_26;
  }

  if (a2 > (*(this + 8) - *(this + 6)) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    goto LABEL_26;
  }

  result = std::vector<BOOL>::reserve(this + 72, a2);
  if (a2 > (*(this + 14) - *(this + 12)) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (a2 > (*(this + 17) - *(this + 15)) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    goto LABEL_26;
  }

  if (a2 > (*(this + 20) - *(this + 18)) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    goto LABEL_26;
  }

  if (a2 > (*(this + 23) - *(this + 21)) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

LABEL_26:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    operator new();
  }

  *(this + 48) = 0;
  return result;
}

void std::vector<peridot::Histogram *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t peridot::PeridotPreProcessOutput::PreProcessorOutSpot::init(peridot::PeridotPreProcessOutput::PreProcessorOutSpot *this, unint64_t a2)
{
  peridot::PeridotPreProcessOutput::PreProcessorOut::init(this, a2);
  peridot::PeridotPreProcessOutput::PreProcessorOut::init((this + 200), a2);
  peridot::PeridotPreProcessOutput::PreProcessorOut::init((this + 400), a2);
  peridot::PeridotPreProcessOutput::PreProcessorOut::init((this + 600), 1uLL);

  return peridot::PeridotPreProcessOutput::PreProcessorOut::init((this + 800), 1uLL);
}

void *peridot::PeridotPreProcessOutput::PreProcessorOutSpot::destroy(peridot::PeridotPreProcessOutput::PreProcessorOutSpot *this)
{
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 25);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 50);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 75);

  return peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 100);
}

uint64_t peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(uint64_t this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = this;
  if (*(this + 1000) != 1)
  {
    goto LABEL_5;
  }

  if (*(this + 1008) != a3 && *(this + 1016) != a4)
  {
    v7 = a2;
    peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this);
    peridot::PeridotPreProcessOutput::PreProcessorOut::destroy((v6 + 200));
    peridot::PeridotPreProcessOutput::PreProcessorOut::destroy((v6 + 400));
    peridot::PeridotPreProcessOutput::PreProcessorOut::destroy((v6 + 600));
    peridot::PeridotPreProcessOutput::PreProcessorOut::destroy((v6 + 800));
    a2 = v7;
    *(v6 + 1000) = 0;
LABEL_5:
    v8 = a2;
    peridot::PeridotPreProcessOutput::PreProcessorOut::init(v6, a2);
    peridot::PeridotPreProcessOutput::PreProcessorOut::init((v6 + 200), v8);
    peridot::PeridotPreProcessOutput::PreProcessorOut::init((v6 + 400), v8);
    peridot::PeridotPreProcessOutput::PreProcessorOut::init((v6 + 600), 1uLL);
    this = peridot::PeridotPreProcessOutput::PreProcessorOut::init((v6 + 800), 1uLL);
    *(v6 + 1016) = a4;
    *(v6 + 1008) = a3;
    *(v6 + 1000) = 1;
  }

  return this;
}

double peridot::PeridotPreProcessOutput::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 14352) = 1;
  *&result = 1;
  *(a1 + 14336) = xmmword_2247A4A50;
  *(a1 + 14353) = *(a2 + 5);
  return result;
}

uint64_t peridot::PeridotPreProcessOutput::configure(uint64_t result, uint64_t a2)
{
  *(result + 14344) = 4;
  *(result + 14352) = 1;
  *(result + 14353) = *(a2 + 5);
  return result;
}

uint64_t peridot::PeridotPreProcessOutput::reset(uint64_t this)
{
  v1 = this + 12288;
  if (*(this + 14352) == 1)
  {
    v2 = this;
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(this, *(this + 14353), *(this + 14336), *(this + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 1024, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 2048, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 3072, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 4096, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 5120, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 6144, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 7168, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 0x2000, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 9216, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 10240, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 11264, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v1, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
    this = peridot::PeridotPreProcessOutput::PreProcessorOutSpot::reset(v2 + 13312, *(v1 + 2065), *(v2 + 14336), *(v2 + 14344));
  }

  *(v1 + 2064) = 0;
  return this;
}

peridot::PeridotEstimatorOut *peridot::PeridotEstimatorOut::PeridotEstimatorOut(peridot::PeridotEstimatorOut *this, unint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  peridot::PeridotEstimatorOut::init(this, a2);
  return this;
}

void sub_2247002EC(_Unwind_Exception *exception_object)
{
  v7 = v2;
  v9 = *v7;
  if (*v7)
  {
    *(v1 + 168) = v9;
    operator delete(v9);
    v10 = *v6;
    if (!*v6)
    {
LABEL_3:
      v11 = *v5;
      if (!*v5)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = *v6;
    if (!*v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 136) = v10;
  operator delete(v10);
  v11 = *v5;
  if (!*v5)
  {
LABEL_4:
    v12 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v1 + 104) = v11;
  operator delete(v11);
  v12 = *v4;
  if (!*v4)
  {
LABEL_5:
    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v1 + 72) = v12;
  operator delete(v12);
  v13 = *v3;
  if (!*v3)
  {
LABEL_6:
    v14 = *v1;
    if (!*v1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 40) = v13;
  operator delete(v13);
  v14 = *v1;
  if (!*v1)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v1 + 8) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t peridot::PeridotEstimatorOut::init(uint64_t this, unint64_t a2)
{
  v2 = a2;
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 > (*(this + 32 * v3 + 16) - *(this + 32 * v3)) >> 3)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (v2)
    {
      operator new();
    }

    v2 = a2;
    ++v3;
  }

  while (v4 != 2);
  *(this + 192) = 0;
  return this;
}

void peridot::PeridotEstimatorOut::~PeridotEstimatorOut(peridot::PeridotEstimatorOut *this)
{
  peridot::PeridotEstimatorOut::destroy(this);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void *peridot::PeridotEstimatorOut::destroy(void *this)
{
  v1 = this;
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    do
    {
      this = *v2;
      if (*v2)
      {
        this = (*(*this + 8))(this);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *v1;
  }

  v1[1] = v2;
  v4 = v1[12];
  v5 = v1[13];
  if (v4 != v5)
  {
    do
    {
      this = *v4;
      if (*v4)
      {
        this = (*(*this + 8))(this);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v1[12];
  }

  v1[13] = v4;
  v6 = v1[4];
  v7 = v1[5];
  if (v6 != v7)
  {
    do
    {
      this = *v6;
      if (*v6)
      {
        this = (*(*this + 8))(this);
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = v1[4];
  }

  v1[5] = v6;
  v8 = v1[16];
  v9 = v1[17];
  if (v8 != v9)
  {
    do
    {
      this = *v8;
      if (*v8)
      {
        this = (*(*this + 8))(this);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v1[16];
  }

  v1[17] = v8;
  v10 = v1[8];
  v11 = v1[9];
  if (v10 != v11)
  {
    do
    {
      this = *v10;
      if (*v10)
      {
        this = (*(*this + 8))(this);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = v1[8];
  }

  v1[9] = v10;
  v12 = v1[20];
  v13 = v1[21];
  if (v12 != v13)
  {
    do
    {
      this = *v12;
      if (*v12)
      {
        this = (*(*this + 8))(this);
      }

      ++v12;
    }

    while (v12 != v13);
    v12 = v1[20];
  }

  v1[21] = v12;
  return this;
}

_OWORD *peridot::PeridotDetectorOutput::DetectorOutSpot::init(peridot::PeridotDetectorOutput::DetectorOutSpot *this)
{
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 568) = 0u;
  *(this + 719) = 0;
  *(this + 715) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 235) = 0u;
  result = (this + 235);
  *(result + 73) = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[1] = 0u;
  result[2] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[15] = 0u;
  *(result + 313) = 0u;
  return result;
}

double peridot::PeridotDetectorOutput::DetectorTarget::init(peridot::PeridotDetectorOutput::DetectorTarget *this)
{
  *(this + 20) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 235) = 0;
  *(this + 239) = 0;
  return result;
}

int *peridot::OutputFlags::setHighStray(int *this, int a2)
{
  if (a2)
  {
    *this = a2 | 0x400000;
  }

  return this;
}

void sub_224701780(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void nvmGrnagerStruct::nvmGrnagerStruct(nvmGrnagerStruct *this)
{
  *this = 0;
  *(this + 16) = 0;
}

{
  *this = 0;
  *(this + 16) = 0;
}

void nvmGrnagerStruct::initNvmGrnagerStruct(nvmGrnagerStruct *this, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *MEMORY[0x277D85DE8];
  *(this + 1) = a3;
  operator new[]();
}

void nvmGrnagerStruct::nvmGrnagerStruct(nvmGrnagerStruct *this, CFDataRef theData)
{
  *this = 0;
  *(this + 16) = 0;
  if (theData)
  {
    *(this + 1) = CFDataGetLength(theData);
    operator new[]();
  }

  peridot_depth_log_error("NULL cfGrangerNVMBuffer detected");
}

{
  *this = 0;
  *(this + 16) = 0;
  if (theData)
  {
    *(this + 1) = CFDataGetLength(theData);
    operator new[]();
  }

  peridot_depth_log_error("NULL cfGrangerNVMBuffer detected");
}

void nvmGrnagerStruct::~nvmGrnagerStruct(nvmGrnagerStruct *this)
{
  if (*this)
  {
    MEMORY[0x22AA53170](*this, 0x1000C8077774924);
  }
}

{
  if (*this)
  {
    MEMORY[0x22AA53170](*this, 0x1000C8077774924);
  }
}

uint64_t nvmToFDR(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  __dst[3904] = *MEMORY[0x277D85DE8];
  v13 = v12;
  bzero(v6, 0x256C4uLL);
  if (!v10)
  {
    peridot_depth_log_error("null quark buffer");
    goto LABEL_24;
  }

  if (!v11)
  {
    peridot_depth_log_error("null granger buffer");
    goto LABEL_24;
  }

  v14.length = CFDataGetLength(v11);
  v15 = v6 + 119612;
  *(v6 + 119612) = 100;
  *(v6 + 119616) = v14.length;
  if (LOWORD(v14.length) <= 0x380uLL)
  {
    v14.location = 0;
    CFDataGetBytes(v11, v14, (v6 + 119618));
  }

  v16.length = CFDataGetLength(v10);
  *(v6 + 120514) = v16.length;
  length = v16.length;
  if (LOWORD(v16.length) <= 0x8000uLL)
  {
    v16.location = 0;
    CFDataGetBytes(v10, v16, (v6 + 120516));
    length = *(v6 + 120514);
  }

  __s = v8;
  v99 = v6 + 120516;
  v18 = (v6 + 120516 - length);
  v102[0] = v18[34304];
  v19 = v18[34276];
  v102[1] = v18[34276];
  v102[2] = v18[33531];
  v102[3] = v18[33536];
  v102[4] = *(v6 + 120433) & 0xF;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:?];
  v97 = v102[0];
  v98 = v11;
  v21 = v6;
  [v13 setValue:v20 forKey:@"Depth__NVM__vsr_nvm_version"];

  v22 = *(v6 + 120516 - *(v6 + 120514) + 32799);
  v23 = *(v6 + 120516 - *(v6 + 120514) + 32801);
  v24 = *(v6 + 120516 - *(v6 + 120514) + 32802);
  v25 = *(v99 - *(v15 + 902) + 33002);
  v26 = *(v99 - *(v15 + 902) + 33003);
  if (*(v99 - *(v15 + 902) + 32801))
  {
    v27 = v23;
  }

  else
  {
    v27 = 178;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
  [v13 setValue:v28 forKey:@"Depth__NVM__idac_h_txcfg0"];

  if (v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = 138;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
  [v13 setValue:v30 forKey:@"Depth__NVM__idac_l_txcfg0"];

  if (v25 == 75)
  {
    v31 = 120;
  }

  else
  {
    v31 = v25;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v31];
  [v13 setValue:v32 forKey:@"Depth__NVM__idac_h_txcfg1"];

  if (v26 == 55)
  {
    v33 = 90;
  }

  else
  {
    v33 = v26;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInt:v33];
  [v13 setValue:v34 forKey:@"Depth__NVM__idac_l_txcfg1"];

  v35 = [MEMORY[0x277CCABB0] numberWithInt:v22 >> 6];
  [v13 setValue:v35 forKey:@"Depth__NVM__quark_test_fap_id"];

  v36 = [MEMORY[0x277CCABB0] numberWithInt:(v22 >> 3) & 7];
  [v13 setValue:v36 forKey:@"Depth__NVM__quark_lld_test_id"];

  v37 = [MEMORY[0x277CCABB0] numberWithInt:v22 & 7];
  [v13 setValue:v37 forKey:@"Depth__NVM__quark_optical_test_id"];

  v39 = *(v15 + 902);
  v40 = v39 - 1;
  if ((v39 - 1) < 0x601)
  {
    LOBYTE(v42) = 0;
    goto LABEL_39;
  }

  v41 = v39 - 1537;
  if ((v39 - 1537) <= 7)
  {
    LOBYTE(v42) = 0;
    v43 = 1536;
    goto LABEL_37;
  }

  if (v41 >= 0x20)
  {
    v45 = 0uLL;
    v44 = v41 & 0xFFFFFFFFFFFFFFE0;
    v46 = (v15 + 2456);
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = v41 & 0xFFFFFFFFFFFFFFE0;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    do
    {
      v63 = v46[-1];
      v64 = vqtbl1q_s8(v63, xmmword_2247A4890);
      v65 = vqtbl1q_s8(v63, xmmword_2247A4880);
      v66 = vqtbl1q_s8(v63, xmmword_2247A48A0);
      v67 = vqtbl1q_s8(v63, xmmword_2247A48B0);
      v68 = vqtbl1q_s8(*v46, xmmword_2247A4890);
      v69 = vqtbl1q_s8(*v46, xmmword_2247A4880);
      v70 = vqtbl1q_s8(*v46, xmmword_2247A48A0);
      v71 = vqtbl1q_s8(*v46, xmmword_2247A48B0);
      v47 = vaddw_high_u32(v47, v65);
      v49 = vaddw_high_u32(v49, v64);
      v48 = vaddw_u32(v48, *v64.i8);
      v45 = vaddw_u32(v45, *v65.i8);
      v50 = vaddw_u32(v50, *v66.i8);
      v51 = vaddw_high_u32(v51, v66);
      v52 = vaddw_u32(v52, *v67.i8);
      v53 = vaddw_high_u32(v53, v67);
      v56 = vaddw_high_u32(v56, v69);
      v58 = vaddw_high_u32(v58, v68);
      v57 = vaddw_u32(v57, *v68.i8);
      v54 = vaddw_u32(v54, *v69.i8);
      v59 = vaddw_u32(v59, *v70.i8);
      v60 = vaddw_high_u32(v60, v70);
      v61 = vaddw_u32(v61, *v71.i8);
      v46 += 2;
      v62 = vaddw_high_u32(v62, v71);
      v55 -= 32;
    }

    while (v55);
    v72 = vaddq_s64(v56, v47);
    v38 = vaddq_s64(v60, v51);
    v42 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v54, v45), vaddq_s64(v59, v50)), vaddq_s64(vaddq_s64(v57, v48), vaddq_s64(v61, v52))), vaddq_s64(vaddq_s64(v72, v38), vaddq_s64(vaddq_s64(v58, v49), vaddq_s64(v62, v53)))));
    if (v41 == v44)
    {
      goto LABEL_39;
    }

    if ((v41 & 0x18) == 0)
    {
      v43 = v44 + 1536;
LABEL_37:
      v82 = ~v43 + v39;
      v83 = (v21 + 120516 + v43);
      do
      {
        v84 = *v83++;
        LOBYTE(v42) = v42 + v84;
        --v82;
      }

      while (v82);
      goto LABEL_39;
    }
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v73 = v41 & 0xFFFFFFFFFFFFFFF8;
  v74 = 0uLL;
  v75 = v42;
  v76 = v44 - (v41 & 0xFFFFFFFFFFFFFFF8);
  v77 = (v44 + 120516 + v21 + 1536);
  v78 = 0uLL;
  v79 = 0uLL;
  do
  {
    v80 = *v77++;
    v38.i64[0] = v80;
    v81 = vqtbl1q_s8(v38, xmmword_2247A4890);
    v38 = vqtbl1q_s8(v38, xmmword_2247A4880);
    v79 = vaddw_high_u32(v79, v81);
    v74 = vaddw_high_u32(v74, v38);
    v78 = vaddw_u32(v78, *v81.i8);
    v75 = vaddw_u32(v75, *v38.i8);
    v76 += 8;
  }

  while (v76);
  LOBYTE(v42) = vaddvq_s64(vaddq_s64(vaddq_s64(v75, v78), vaddq_s64(v74, v79)));
  if (v41 != v73)
  {
    v43 = v73 + 1536;
    goto LABEL_37;
  }

LABEL_39:
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v99 + v40) == v42];
  [v13 setValue:v85 forKey:@"Depth__NVM__checksum_quark"];

  if (v19 == 2)
  {
    v86 = v99 - *(v15 + 902);
    v87.i64[0] = *(v86 + 34261);
    v87.i32[2] = *(v86 + 34269);
    v87.i32[3] = *(v86 + 34250);
    v88 = vrev32q_s8(v87);
    *&v89 = vrev64q_s32(v88).u64[0];
    *(&v89 + 1) = v88.i64[1];
    *(v21 + 21840) = v89;
  }

  else
  {
    peridot_depth_log_error("");
  }

  if (v97 != 5)
  {
    peridot_depth_log_error("");
    goto LABEL_63;
  }

  v90 = v99 - *(v15 + 902);
  memcpy(__dst, (v90 + 34304), 0x7A00uLL);
  if (v19 == 1)
  {
    memcpy(v103, (v90 + 34276), 0x156uLL);
    v93 = strlen(__s);
    if (v93 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v94 = v93;
    if (v93 >= 0x17)
    {
      operator new();
    }

    v101 = v93;
    if (v93)
    {
      memcpy(&__p, __s, v93);
    }

    *(&__p + v94) = 0;
    extractFromCalsAndComp<CALS_calibration_ver005,COMP_ver001,PeridotAFDR>(__dst, v103, &__p, v21, v102, v13);
    goto LABEL_61;
  }

  if (v19 == 2)
  {
    memcpy(v103, (v90 + 33927), sizeof(v103));
    v91 = strlen(__s);
    if (v91 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v92 = v91;
    if (v91 >= 0x17)
    {
      operator new();
    }

    v101 = v91;
    if (v91)
    {
      memcpy(&__p, __s, v91);
    }

    *(&__p + v92) = 0;
    extractFromCalsAndComp<CALS_calibration_ver005,COMP_ver002,PeridotAFDR>(__dst, v103, &__p, v21, v102, v13);
LABEL_61:
    if (v101 < 0)
    {
      operator delete(__p);
    }

LABEL_63:
    __dst[0] = 0;
    LOBYTE(__dst[2]) = 0;
    __dst[1] = CFDataGetLength(v98);
    operator new[]();
  }

  peridot_depth_log_error("unknown comp buffer version in NVM (%d)", v19);
LABEL_24:

  return 0;
}