void sub_1B4241DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&a35);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&a41);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a47);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&__p);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&a59);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100]((v65 - 256));
  std::deque<std::pair<int,int>>::~deque[abi:ne200100]((v65 - 208));
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&a65);
  _Unwind_Resume(a1);
}

uint64_t nms::RectForest<unsigned short,double>::operator=(uint64_t a1, uint64_t a2)
{
  std::deque<std::valarray<double>>::__move_assign(a1 + 80, a2 + 80);
  std::deque<std::deque<std::pair<unsigned short,unsigned short>>>::__move_assign(a1 + 128, a2 + 128);
  *(a1 + 8) = *(a2 + 8);
  std::__tree<std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>,std::__map_value_compare<nms::ForestLevelType,std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>,std::less<nms::ForestLevelType>,true>,std::allocator<std::__value_type<nms::ForestLevelType,nms::RepresentationDimType>>>::__move_assign((a1 + 176), (a2 + 176));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  return a1;
}

void *std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>>>::operator std::valarray<double>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void std::deque<std::valarray<unsigned char>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      v22 = a1[4];
      v23 = a1[1];
      v24 = a1[2];
      v25 = (v23 + 8 * (v22 >> 8));
      if (v24 == v23)
      {
        v26 = std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100]((v23 + 8 * (v22 >> 8)), 0, a2);
        v29 = 0;
        v28 = (v23 + 8 * ((v22 + v3) >> 8));
      }

      else
      {
        v26 = std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100]((v23 + 8 * (v22 >> 8)), *v25 + 16 * v22, a2);
        v28 = (v23 + 8 * ((v22 + v3) >> 8));
        v29 = *v28 + 16 * (v22 + v3);
      }

      if (v29 != v27)
      {
        v31 = v27 - *v26;
        v32 = ((v29 - *v28) >> 4) + 32 * (v28 - v26) - (v31 >> 4);
        if (v32 >= 1)
        {
          if (v24 == v23)
          {
            v33 = 0;
          }

          else
          {
            v33 = *v25 + 16 * v22;
          }

          if (v27 == v33)
          {
            v34 = 0;
          }

          else
          {
            v34 = (v31 >> 4) + 32 * (v26 - v25) - ((v33 - *v25) >> 4);
          }

          v35 = std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100]((v23 + 8 * (v22 >> 8)), v33, v34);
          if (v36 != v29)
          {
            v37 = v35;
            v38 = v36;
            do
            {
              v39 = *v38;
              if (*v38)
              {
                if (*(v38 + 8) != v39)
                {
                  *(v38 + 8) = v39;
                }

                operator delete(v39);
                *v38 = 0;
                *(v38 + 8) = 0;
              }

              v38 += 16;
              if (v38 - *v37 == 4096)
              {
                v40 = v37[1];
                ++v37;
                v38 = v40;
              }
            }

            while (v38 != v29);
            v3 = a1[5];
          }

          a1[5] = v3 - v32;
            ;
          }
        }
      }
    }
  }

  else
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = v5 - v6;
    if (v5 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = 32 * (v5 - v6) - 1;
    }

    v9 = a1[4];
    v10 = v9 + v3;
    v11 = v8 - (v9 + v3);
    v12 = v4 >= v11;
    v13 = v4 - v11;
    if (v13 != 0 && v12)
    {
      if (v5 == v6)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        v15 = (v14 >> 8) + 1;
      }

      else
      {
        v15 = v14 >> 8;
      }

      if (v15 >= v9 >> 8)
      {
        v16 = v9 >> 8;
      }

      else
      {
        v16 = v15;
      }

      if (v15 <= v9 >> 8)
      {
        for (a1[4] = v9 - (v16 << 8); v16; --v16)
        {
          v30 = a1[1];
          v52 = *v30;
          a1[1] = v30 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v52);
        }
      }

      else
      {
        v17 = v15 - v16;
        v18 = a1[3] - *a1;
        if (v17 > (v18 >> 3) - (v7 >> 3))
        {
          v19 = v18 >> 2;
          v20 = v17 + (v7 >> 3);
          if (v19 <= v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v21);
          }

          operator new();
        }

        if (v17)
        {
          if (a1[3] != v5)
          {
            operator new();
          }

          operator new();
        }

        for (a1[4] = v9 - (v16 << 8); v16; --v16)
        {
          v41 = a1[1];
          v52 = *v41;
          a1[1] = v41 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v52);
        }
      }

      v3 = a1[5];
      v6 = a1[1];
      v5 = a1[2];
      v10 = a1[4] + v3;
    }

    v42 = (v6 + 8 * (v10 >> 8));
    if (v5 == v6)
    {
      v43 = 0;
    }

    else
    {
      v43 = (*v42 + 16 * v10);
    }

    v44 = std::__deque_iterator<std::valarray<double>,std::valarray<double>*,std::valarray<double>&,std::valarray<double>**,long,256l>::operator+[abi:ne200100]((v6 + 8 * (v10 >> 8)), v43, v4);
    if (v43 != v45)
    {
      v46 = v44;
      v47 = v45;
      do
      {
        if (v42 == v46)
        {
          v48 = v47;
        }

        else
        {
          v48 = *v42 + 4096;
        }

        if (v43 == v48)
        {
          v50 = v43;
        }

        else
        {
          v49 = (v48 - v43) & 0xFFFFFFFFFFFFFFF0;
          bzero(v43, v49);
          v50 = &v43[v49];
          v3 = a1[5];
        }

        v3 += (v50 - v43) >> 4;
        a1[5] = v3;
        if (v42 == v46)
        {
          break;
        }

        v51 = v42[1];
        ++v42;
        v43 = v51;
      }

      while (v51 != v47);
    }
  }
}

void sub_1B4242D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<std::deque<std::deque<std::deque<unsigned short>>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      v20 = a1[4];
      v21 = a1[1];
      v22 = a1[2];
      v23 = (v21 + 8 * (v20 / 0x55));
      v24 = v22 == v21 ? 0 : *v23 + 48 * (v20 % 0x55);
      v46 = (v21 + 8 * (v20 / 0x55));
      v47 = v24;
      std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v46, a2);
      v26 = (v21 + 8 * ((v20 + v3) / 0x55));
      v27 = v22 == v21 ? 0 : *v26 + 48 * ((v20 + v3) % 0x55);
      if (v27 != v47)
      {
        v28 = 85 * (v26 - v46) - 0x5555555555555555 * ((v27 - *v26) >> 4);
        v29 = &v47[-*v46] >> 4;
        v30 = v28 + 0x5555555555555555 * v29;
        if (v30 >= 1)
        {
          if (v22 == v21)
          {
            v31 = 0;
          }

          else
          {
            v31 = *v23 + 48 * (v20 % 0x55);
          }

          if (v47 == v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = 85 * (v46 - v23) - 0x5555555555555555 * v29 + 0x5555555555555555 * ((v31 - *v23) >> 4);
          }

          v46 = (v21 + 8 * (v20 / 0x55));
          v47 = v31;
          std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v46, v32);
          v33 = v47;
          if (v47 != v27)
          {
            v34 = v46;
            do
            {
              v33 = std::deque<std::deque<std::deque<unsigned short>>>::~deque[abi:ne200100](v33) + 48;
              if (v33 - *v34 == 4080)
              {
                v35 = v34[1];
                ++v34;
                v33 = v35;
              }
            }

            while (v33 != v27);
            v3 = a1[5];
          }

          a1[5] = v3 - v30;
            ;
          }
        }
      }
    }
  }

  else
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = (v5 - v6) >> 3;
    if (v5 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = 85 * v7 - 1;
    }

    v9 = a1[4];
    v10 = v9 + v3;
    v11 = v8 - (v9 + v3);
    v12 = v4 >= v11;
    v13 = v4 - v11;
    if (v13 != 0 && v12)
    {
      if (v5 == v6)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13;
      }

      if (v14 % 0x55)
      {
        v15 = v14 / 0x55 + 1;
      }

      else
      {
        v15 = v14 / 0x55;
      }

      if (v15 >= v9 / 0x55)
      {
        v16 = v9 / 0x55;
      }

      else
      {
        v16 = v15;
      }

      if (v15 <= v9 / 0x55)
      {
        for (a1[4] = v9 - 85 * v16; v16; --v16)
        {
          v25 = a1[1];
          v46 = *v25;
          a1[1] = v25 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v46);
        }
      }

      else
      {
        v17 = v15 - v16;
        v18 = a1[3] - *a1;
        if (v17 > (v18 >> 3) - v7)
        {
          if (v18 >> 2 <= v17 + v7)
          {
            v19 = v17 + v7;
          }

          else
          {
            v19 = v18 >> 2;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v19);
          }

          operator new();
        }

        if (v17)
        {
          if (a1[3] != v5)
          {
            operator new();
          }

          operator new();
        }

        for (a1[4] = v9 - 85 * v16; v16; --v16)
        {
          v36 = a1[1];
          v46 = *v36;
          a1[1] = v36 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v46);
        }
      }

      v3 = a1[5];
      v6 = a1[1];
      v5 = a1[2];
      v10 = a1[4] + v3;
    }

    v37 = (v6 + 8 * (v10 / 0x55));
    if (v5 == v6)
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = (*v37 + 48 * (v10 % 0x55));
      v39 = v38;
    }

    v46 = (v6 + 8 * (v10 / 0x55));
    v47 = v39;
    std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v46, v4);
    v40 = v47;
    if (v38 != v47)
    {
      v41 = v46;
      do
      {
        if (v37 == v41)
        {
          v42 = v40;
        }

        else
        {
          v42 = *v37 + 4080;
        }

        if (v38 == v42)
        {
          v44 = v38;
        }

        else
        {
          v43 = 48 * ((v42 - v38 - 48) / 0x30uLL) + 48;
          bzero(v38, v43);
          v44 = &v38[v43];
          v3 = a1[5];
        }

        v3 -= 0x5555555555555555 * ((v44 - v38) >> 4);
        a1[5] = v3;
        if (v37 == v41)
        {
          break;
        }

        v45 = v37[1];
        ++v37;
        v38 = v45;
      }

      while (v45 != v40);
    }
  }
}

void sub_1B424365C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<std::deque<std::deque<unsigned short>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      v20 = a1[4];
      v22 = a1[1];
      v21 = a1[2];
      v23 = (v22 + 8 * (v20 / 0x55));
      v24 = v21 == v22 ? 0 : *v23 + 48 * (v20 % 0x55);
      v49 = (v22 + 8 * (v20 / 0x55));
      v50 = v24;
      std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v49, a2);
      v26 = (v22 + 8 * ((v20 + v3) / 0x55));
      v27 = v21 == v22 ? 0 : *v26 + 48 * ((v20 + v3) % 0x55);
      if (v27 != v50)
      {
        v28 = 85 * (v26 - v49) - 0x5555555555555555 * ((v27 - *v26) >> 4);
        v29 = &v50[-*v49] >> 4;
        v30 = v28 + 0x5555555555555555 * v29;
        if (v30 >= 1)
        {
          if (v21 == v22)
          {
            v31 = 0;
          }

          else
          {
            v31 = *v23 + 48 * (v20 % 0x55);
          }

          if (v50 == v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = 85 * (v49 - v23) - 0x5555555555555555 * v29 + 0x5555555555555555 * ((v31 - *v23) >> 4);
          }

          v49 = (v22 + 8 * (v20 / 0x55));
          v50 = v31;
          std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v49, v32);
          v33 = v50;
          if (v50 != v27)
          {
            v34 = v49;
            do
            {
              v33 = std::deque<std::deque<unsigned short>>::~deque[abi:ne200100](v33) + 48;
              if (v33 - *v34 == 4080)
              {
                v35 = v34[1];
                ++v34;
                v33 = v35;
              }
            }

            while (v33 != v27);
            v22 = a1[1];
            v21 = a1[2];
            v20 = a1[4];
            v3 = a1[5];
          }

          v36 = 85 * ((v21 - v22) >> 3) - 1;
          if (v21 == v22)
          {
            v36 = 0;
          }

          a1[5] = v3 - v30;
          if (v36 - (v3 - v30 + v20) >= 0xAA)
          {
            do
            {
              operator delete(*(v21 - 8));
              v37 = a1[1];
              v21 = a1[2] - 8;
              v38 = 85 * ((v21 - v37) >> 3) - 1;
              a1[2] = v21;
              if (v21 == v37)
              {
                v38 = 0;
              }
            }

            while ((v38 - (a1[5] + a1[4])) > 0xA9);
          }
        }
      }
    }
  }

  else
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = (v5 - v6) >> 3;
    if (v5 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = 85 * v7 - 1;
    }

    v9 = a1[4];
    v10 = v9 + v3;
    v11 = v8 - (v9 + v3);
    v12 = v4 >= v11;
    v13 = v4 - v11;
    if (v13 != 0 && v12)
    {
      if (v5 == v6)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13;
      }

      if (v14 % 0x55)
      {
        v15 = v14 / 0x55 + 1;
      }

      else
      {
        v15 = v14 / 0x55;
      }

      if (v15 >= v9 / 0x55)
      {
        v16 = v9 / 0x55;
      }

      else
      {
        v16 = v15;
      }

      if (v15 <= v9 / 0x55)
      {
        for (a1[4] = v9 - 85 * v16; v16; --v16)
        {
          v25 = a1[1];
          v49 = *v25;
          a1[1] = v25 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v49);
        }
      }

      else
      {
        v17 = v15 - v16;
        v18 = a1[3] - *a1;
        if (v17 > (v18 >> 3) - v7)
        {
          if (v18 >> 2 <= v17 + v7)
          {
            v19 = v17 + v7;
          }

          else
          {
            v19 = v18 >> 2;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v19);
          }

          operator new();
        }

        if (v17)
        {
          if (a1[3] != v5)
          {
            operator new();
          }

          operator new();
        }

        for (a1[4] = v9 - 85 * v16; v16; --v16)
        {
          v39 = a1[1];
          v49 = *v39;
          a1[1] = v39 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v49);
        }
      }

      v3 = a1[5];
      v6 = a1[1];
      v5 = a1[2];
      v10 = a1[4] + v3;
    }

    v40 = (v6 + 8 * (v10 / 0x55));
    if (v5 == v6)
    {
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = (*v40 + 48 * (v10 % 0x55));
      v42 = v41;
    }

    v49 = (v6 + 8 * (v10 / 0x55));
    v50 = v42;
    std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v49, v4);
    v43 = v50;
    if (v41 != v50)
    {
      v44 = v49;
      do
      {
        if (v40 == v44)
        {
          v45 = v43;
        }

        else
        {
          v45 = *v40 + 4080;
        }

        if (v41 == v45)
        {
          v47 = v41;
        }

        else
        {
          v46 = 48 * ((v45 - v41 - 48) / 0x30uLL) + 48;
          bzero(v41, v46);
          v47 = &v41[v46];
          v3 = a1[5];
        }

        v3 -= 0x5555555555555555 * ((v47 - v41) >> 4);
        a1[5] = v3;
        if (v40 == v44)
        {
          break;
        }

        v48 = v40[1];
        ++v40;
        v41 = v48;
      }

      while (v48 != v43);
    }
  }
}

void sub_1B4244014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<std::deque<unsigned short>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      v20 = a1[4];
      v22 = a1[1];
      v21 = a1[2];
      v23 = (v22 + 8 * (v20 / 0x55));
      v24 = v21 == v22 ? 0 : *v23 + 48 * (v20 % 0x55);
      v49 = (v22 + 8 * (v20 / 0x55));
      v50 = v24;
      std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v49, a2);
      v26 = (v22 + 8 * ((v20 + v3) / 0x55));
      v27 = v21 == v22 ? 0 : *v26 + 48 * ((v20 + v3) % 0x55);
      if (v27 != v50)
      {
        v28 = 85 * (v26 - v49) - 0x5555555555555555 * ((v27 - *v26) >> 4);
        v29 = &v50[-*v49] >> 4;
        v30 = v28 + 0x5555555555555555 * v29;
        if (v30 >= 1)
        {
          if (v21 == v22)
          {
            v31 = 0;
          }

          else
          {
            v31 = *v23 + 48 * (v20 % 0x55);
          }

          if (v50 == v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = 85 * (v49 - v23) - 0x5555555555555555 * v29 + 0x5555555555555555 * ((v31 - *v23) >> 4);
          }

          v49 = (v22 + 8 * (v20 / 0x55));
          v50 = v31;
          std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v49, v32);
          v33 = v50;
          if (v50 != v27)
          {
            v34 = v49;
            do
            {
              v33 = (std::deque<unsigned short>::~deque[abi:ne200100](v33) + 48);
              if ((v33 - *v34) == 4080)
              {
                v35 = v34[1];
                ++v34;
                v33 = v35;
              }
            }

            while (v33 != v27);
            v22 = a1[1];
            v21 = a1[2];
            v20 = a1[4];
            v3 = a1[5];
          }

          v36 = 85 * ((v21 - v22) >> 3) - 1;
          if (v21 == v22)
          {
            v36 = 0;
          }

          a1[5] = v3 - v30;
          if (v36 - (v3 - v30 + v20) >= 0xAA)
          {
            do
            {
              operator delete(*(v21 - 8));
              v37 = a1[1];
              v21 = a1[2] - 8;
              v38 = 85 * ((v21 - v37) >> 3) - 1;
              a1[2] = v21;
              if (v21 == v37)
              {
                v38 = 0;
              }
            }

            while ((v38 - (a1[5] + a1[4])) > 0xA9);
          }
        }
      }
    }
  }

  else
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = (v5 - v6) >> 3;
    if (v5 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = 85 * v7 - 1;
    }

    v9 = a1[4];
    v10 = v9 + v3;
    v11 = v8 - (v9 + v3);
    v12 = v4 >= v11;
    v13 = v4 - v11;
    if (v13 != 0 && v12)
    {
      if (v5 == v6)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13;
      }

      if (v14 % 0x55)
      {
        v15 = v14 / 0x55 + 1;
      }

      else
      {
        v15 = v14 / 0x55;
      }

      if (v15 >= v9 / 0x55)
      {
        v16 = v9 / 0x55;
      }

      else
      {
        v16 = v15;
      }

      if (v15 <= v9 / 0x55)
      {
        for (a1[4] = v9 - 85 * v16; v16; --v16)
        {
          v25 = a1[1];
          v49 = *v25;
          a1[1] = v25 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v49);
        }
      }

      else
      {
        v17 = v15 - v16;
        v18 = a1[3] - *a1;
        if (v17 > (v18 >> 3) - v7)
        {
          if (v18 >> 2 <= v17 + v7)
          {
            v19 = v17 + v7;
          }

          else
          {
            v19 = v18 >> 2;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v19);
          }

          operator new();
        }

        if (v17)
        {
          if (a1[3] != v5)
          {
            operator new();
          }

          operator new();
        }

        for (a1[4] = v9 - 85 * v16; v16; --v16)
        {
          v39 = a1[1];
          v49 = *v39;
          a1[1] = v39 + 1;
          std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v49);
        }
      }

      v3 = a1[5];
      v6 = a1[1];
      v5 = a1[2];
      v10 = a1[4] + v3;
    }

    v40 = (v6 + 8 * (v10 / 0x55));
    if (v5 == v6)
    {
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = (*v40 + 48 * (v10 % 0x55));
      v42 = v41;
    }

    v49 = (v6 + 8 * (v10 / 0x55));
    v50 = v42;
    std::__deque_iterator<std::deque<std::pair<unsigned short,unsigned short>>,std::deque<std::pair<unsigned short,unsigned short>>*,std::deque<std::pair<unsigned short,unsigned short>>&,std::deque<std::pair<unsigned short,unsigned short>>**,long,85l>::operator+=[abi:ne200100](&v49, v4);
    v43 = v50;
    if (v41 != v50)
    {
      v44 = v49;
      do
      {
        if (v40 == v44)
        {
          v45 = v43;
        }

        else
        {
          v45 = *v40 + 4080;
        }

        if (v41 == v45)
        {
          v47 = v41;
        }

        else
        {
          v46 = 48 * ((v45 - v41 - 48) / 0x30uLL) + 48;
          bzero(v41, v46);
          v47 = &v41[v46];
          v3 = a1[5];
        }

        v3 -= 0x5555555555555555 * ((v47 - v41) >> 4);
        a1[5] = v3;
        if (v40 == v44)
        {
          break;
        }

        v48 = v40[1];
        ++v40;
        v41 = v48;
      }

      while (v48 != v43);
    }
  }
}

void sub_1B42449CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void nms::min<double>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  std::valarray<double>::valarray(a1, a3);
  v7 = *a3;
  v6 = a3[1];
  v15[0] = 0;
  v15[1] = 0;
  if (v6 != v7)
  {
    operator new();
  }

  std::mask_array<unsigned char>::mask_array[abi:ne200100](&v16, v15, *a1);
  v8 = v17;
  v9 = v18;
  if (v18 == v17)
  {
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v10 = (v18 - v17) >> 3;
    v11 = v16;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = *a2;
    v13 = v17;
    do
    {
      v14 = *v13++;
      *(v11 + 8 * v14) = v12;
      --v10;
    }

    while (v10);
    v18 = &v9[(v8 - v9 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  operator delete(v8);
}

void nms::BOOLeanMaskToIndices<unsigned short>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  std::mask_array<unsigned char>::mask_array[abi:ne200100](&v4, a2, 0);
  std::valarray<unsigned short>::valarray(&v7, &v4);
  if (__p)
  {
    if (v6 != __p)
    {
      v6 += (__p - v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  std::deque<unsigned short>::deque<unsigned short *,0>(a1, v7, v8);
  if (v7)
  {
    if (v8 != v7)
    {
      v8 = (v8 + ((v7 - v8 + 1) & 0xFFFFFFFFFFFFFFFELL));
    }

    operator delete(v7);
  }
}

{
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  std::mask_array<unsigned char>::mask_array[abi:ne200100](&v4, a2, 0);
  std::valarray<unsigned short>::valarray(&v7, &v4);
  if (__p)
  {
    if (v6 != __p)
    {
      v6 += (__p - v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  std::deque<unsigned short>::deque<unsigned short *,0>(a1, v7, v8);
  if (v7)
  {
    if (v8 != v7)
    {
      v8 = (v8 + ((v7 - v8 + 1) & 0xFFFFFFFFFFFFFFFELL));
    }

    operator delete(v7);
  }
}

void sub_1B4244DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<unsigned short>::erase(int64x2_t *a1, char *a2, uint64_t a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = a1[1].i64[0];
  v7 = (v5 + 8 * (v4 >> 11));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 2 * (a1[2].i64[0] & 0x7FF);
  }

  if (a3 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((a3 - *a2) >> 1) + ((a2 - v7) << 8) - ((v8 - *v7) >> 1);
  }

  v10 = v9;
  v11 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100]((v5 + 8 * (v4 >> 11)), v8, v9);
  v13 = v11;
  v14 = v12;
  v15 = a1[2].i64[1];
  v16 = (v12 - *v11) >> 1;
  v56 = v10;
  if (v10 <= (v15 - 1) >> 1)
  {
    if (v16 < 0)
    {
      v27 = 2046 - v16;
      v20 = &v11[-(v27 >> 11)];
      v21 = &(*v20)[2 * (~v27 & 0x7FF)];
    }

    else
    {
      v19 = v16 + 1;
      v20 = &v11[v19 >> 11];
      v21 = &(*v20)[2 * (v19 & 0x7FF)];
    }

    if (v11 == v7)
    {
      v28 = v8;
      v29 = v14;
    }

    else
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(&v57, *v11, v12, v20, v21);
      v30 = v58;
      v31 = v59;
      v32 = (v13 - 1);
      if (v13 - 1 != v7)
      {
        v33 = *v58;
        do
        {
          v34 = *v32;
          v35 = (*v32 + 4096);
          while (1)
          {
            v36 = v31 - v33;
            if ((v35 - v34) >> 1 >= v36 >> 1)
            {
              v37 = v36 >> 1;
            }

            else
            {
              v37 = (v35 - v34) >> 1;
            }

            v35 -= 2 * v37;
            v31 -= 2 * v37;
            if (v37)
            {
              memmove(v31, v35, 2 * v37);
            }

            if (v35 == v34)
            {
              break;
            }

            v38 = *--v30;
            v33 = v38;
            v31 = v38 + 4096;
          }

          v33 = *v30;
          if (*v30 + 4096 == v31)
          {
            v39 = v30[1];
            ++v30;
            v33 = v39;
            v31 = v39;
          }

          v32 -= 8;
        }

        while (v32 != v7);
      }

      v29 = (*v32 + 4096);
      v28 = v8;
      v20 = v30;
      v21 = v31;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(&v57, v28, v29, v20, v21);
    a1[2] = vaddq_s64(a1[2], xmmword_1B42AF9C0);
    std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    if (v16 < 0)
    {
      v22 = 2046 - v16;
      v17 = ~v22;
      v18 = &v11[-(v22 >> 11)];
    }

    else
    {
      v17 = v16 + 1;
      v18 = &v11[(v16 + 1) >> 11];
    }

    v23 = &(*v18)[2 * (v17 & 0x7FF)];
    v24 = v15 + v4;
    v25 = (v5 + 8 * (v24 >> 11));
    if (v6 == v5)
    {
      v26 = 0;
    }

    else
    {
      v26 = &(*v25)[2 * (v24 & 0x7FF)];
    }

    if (v18 == v25)
    {
      v49 = v11;
      v50 = v14;
    }

    else
    {
      v55 = v26;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned short *,unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(&v57, v23, *v18 + 4096, v11, v14);
      v40 = v58;
      v41 = v59;
      v42 = v18 + 1;
      if (v18 + 1 != v25)
      {
        v43 = *v58;
        do
        {
          v44 = 0;
          v45 = *v42;
          for (++v40; ; ++v40)
          {
            v46 = v43 - v41 + 4096;
            if ((4096 - v44) >> 1 >= v46 >> 1)
            {
              v47 = v46 >> 1;
            }

            else
            {
              v47 = (4096 - v44) >> 1;
            }

            if (v47)
            {
              memmove(v41, &v45[v44], 2 * v47);
            }

            v44 += 2 * v47;
            if (v44 == 4096)
            {
              break;
            }

            v48 = *v40;
            v43 = v48;
            v41 = v48;
          }

          v41 += 2 * v47;
          v43 = *(v40 - 1);
          if (v43 + 4096 == v41)
          {
            v43 = *v40;
            v41 = *v40;
          }

          else
          {
            --v40;
          }

          ++v42;
        }

        while (v42 != v25);
      }

      v23 = *v42;
      v26 = v55;
      v49 = v40;
      v50 = v41;
    }

    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned short *,unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(&v57, v23, v26, v49, v50);
    --a1[2].i64[1];
    std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v51 = a1->i64[1];
  v52 = (v51 + 8 * (a1[2].i64[0] >> 11));
  if (a1[1].i64[0] == v51)
  {
    v53 = 0;
  }

  else
  {
    v53 = *v52 + 2 * (a1[2].i64[0] & 0x7FF);
  }

  return std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v52, v53, v56);
}

void *std::deque<unsigned short>::push_back(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 8) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<unsigned short>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v8 & 0x7FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 16);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void std::valarray<BOOL>::resize(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    if (*(a1 + 8) != v4)
    {
      *(a1 + 8) = v4;
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    operator new();
  }
}

uint64_t std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::valarray<double>>>::operator std::valarray<double>(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = **(a2 + 8);
  v3 = *(*(a2 + 8) + 8);
  result = v3 - v2;
  if (v3 != v2)
  {
    if (!((result >> 3) >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void nms::max<double>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  std::valarray<double>::valarray(a1, a3);
  v7 = *a3;
  v6 = a3[1];
  v15[0] = 0;
  v15[1] = 0;
  if (v6 != v7)
  {
    operator new();
  }

  std::mask_array<unsigned char>::mask_array[abi:ne200100](&v16, v15, *a1);
  v8 = v17;
  v9 = v18;
  if (v18 == v17)
  {
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v10 = (v18 - v17) >> 3;
    v11 = v16;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = *a2;
    v13 = v17;
    do
    {
      v14 = *v13++;
      *(v11 + 8 * v14) = v12;
      --v10;
    }

    while (v10);
    v18 = &v9[(v8 - v9 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  operator delete(v8);
}

void *std::__val_expr<std::_BinaryOp<std::less<double>,std::__scalar_expr<double>,std::valarray<double>>>::operator std::valarray<BOOL>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  return result;
}

void *std::__val_expr<std::_BinaryOp<std::greater<double>,std::__scalar_expr<double>,std::valarray<double>>>::operator std::valarray<BOOL>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  return result;
}

void *std::valarray<double>::valarray(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void *std::valarray<double>::valarray(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void *std::valarray<unsigned short>::valarray(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 16) - *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t std::deque<unsigned short>::deque<unsigned short *,0>(uint64_t a1, __int16 *a2, _WORD *a3)
{
  v3 = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = a3 - a2;
  if (a3 == a2)
  {
    v9 = 0;
    v6 = 0;
  }

  else
  {
    std::deque<unsigned short>::__add_back_capacity(a1, a3 - a2);
    v6 = *(a1 + 40);
    v7 = *(a1 + 8);
    v8 = *(a1 + 32) + v6;
    v9 = (v7 + 8 * (v8 >> 11));
    if (*(a1 + 16) != v7)
    {
      v10 = *v9 + 2 * (v8 & 0x7FF);
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v9, v10, v5);
  if (v10 != v12)
  {
    do
    {
      if (v9 == v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = *v9 + 4096;
      }

      if (v10 == v13)
      {
        v13 = v10;
      }

      else
      {
        v14 = v10;
        do
        {
          v15 = *v3++;
          *v14++ = v15;
        }

        while (v14 != v13);
      }

      v6 += (v13 - v10) >> 1;
      if (v9 == v11)
      {
        break;
      }

      v16 = v9[1];
      ++v9;
      v10 = v16;
    }

    while (v16 != v12);
    *(a1 + 40) = v6;
  }

  return a1;
}

void *std::deque<unsigned short>::__add_back_capacity(void *result, unint64_t a2)
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

  if ((v4 & 0x7FF) != 0)
  {
    v5 = (v4 >> 11) + 1;
  }

  else
  {
    v5 = v4 >> 11;
  }

  v6 = result[4];
  if (v5 >= v6 >> 11)
  {
    v7 = v6 >> 11;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 11)
  {
    for (result[4] = v6 - (v7 << 11); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *&>(v2, v16);
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
      v18 = v2;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v12);
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

    for (result[4] = v6 - (v7 << 11); v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *&>(v2, v16);
    }
  }

  return result;
}

void sub_1B4245C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 1);
    if (v3 < 1)
    {
      result -= (2047 - v3) >> 11;
    }

    else
    {
      result += v3 >> 11;
    }
  }

  return result;
}

const void **std::__split_buffer<unsigned short *>::emplace_front<unsigned short *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v9);
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

void std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x800)
  {
    a2 = 1;
  }

  if (v3 > 0xFFF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 2048;
  }
}

uint64_t std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 8) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x800)
  {
    a2 = 1;
  }

  if (v5 < 0x1000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 1 >= v12 >> 1)
      {
        v13 = v12 >> 1;
      }

      else
      {
        v13 = (v11 - a2) >> 1;
      }

      v11 -= 2 * v13;
      a5 -= 2 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 2 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = v6[1];
      ++v6;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned short *,unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
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
      v12 = (a3 - v9) >> 1 >= v11 >> 1 ? v11 >> 1 : (a3 - v9) >> 1;
      if (v12)
      {
        result = memmove(__dst, v9, 2 * v12);
      }

      v9 += 2 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 2 * v12;
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

void *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::back_insert_iterator<std::deque<unsigned short>>>>(void *result, _WORD *a2, _WORD **a3, _WORD *a4, void **a5)
{
  v7 = a2;
  if (result == a3)
  {
    v8 = *a5;
    while (v7 != a4)
    {
      result = std::deque<unsigned short>::push_back(v8, v7++);
    }
  }

  else
  {
    v10 = result;
    v11 = *result + 4096;
    v8 = *a5;
    if (v11 != a2)
    {
      do
      {
        result = std::deque<unsigned short>::push_back(v8, v7++);
      }

      while (v7 != v11);
    }

    while (1)
    {
      *a5 = v8;
      if (++v10 == a3)
      {
        break;
      }

      v12 = *v10;
      v13 = 4096;
      do
      {
        result = std::deque<unsigned short>::push_back(v8, v12++);
        v13 -= 2;
      }

      while (v13);
    }

    for (i = *v10; i != a4; ++i)
    {
      result = std::deque<unsigned short>::push_back(v8, i);
    }
  }

  *a5 = v8;
  return result;
}

void nms::rasterizeRects<double>(double **a1, double *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[2];
  v6 = a2[3];
  if (a6 == 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  if (a6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 4;
  }

  v10 = fabs(v6);
  if (fabs(v7) <= 2.22044605e-16 || v10 <= 2.22044605e-16)
  {
    return;
  }

  if (!v9)
  {
    v18 = 0;
    v58 = 0;
    v59 = 0;
LABEL_19:
    v20 = 1;
    goto LABEL_25;
  }

  v16 = *a2;
  v15 = a2[1];
  v17 = a1[1] - *a1;
  v18 = v17 / v9;
  v19 = 4 * (v17 / v9);
  v58 = 0;
  v59 = 0;
  if (v19)
  {
    if (!(v19 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (v9 > v17)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v21 = *a1;
  v22 = 8 * v9;
  v23 = *a1;
  v24 = v17 / v9;
  v25 = 0;
  do
  {
    *v25 = (*v23 - v16) / v7;
    v25 += 4;
    v23 = (v23 + v22);
    --v24;
  }

  while (v24);
  v26 = v21 + 1;
  v27 = 8;
  v28 = v17 / v9;
  do
  {
    *v27 = (*v26 - v15) / v6;
    v26 = (v26 + v22);
    v27 += 32;
    --v28;
  }

  while (v28);
  v20 = 0;
LABEL_25:
  v60 = 0;
  v61 = v18;
  *&v62 = 4;
  std::valarray<double>::valarray(&__p, &v60);
  v29 = __p;
  if (v20)
  {
    if (!__p)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = (v58 + 16);
    v31 = *a1 + 2;
    v32 = __p;
    v33 = v18;
    do
    {
      v34 = *v32++;
      *v30 = v34 + *v31 / v7;
      v30 += 4;
      v31 += v9;
      --v33;
    }

    while (v33);
  }

  if (v57 != v29)
  {
    v57 += (v29 - v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  operator delete(v29);
LABEL_33:
  v60 = v58 + 8;
  v61 = v18;
  *&v62 = 4;
  std::valarray<double>::valarray(&__p, &v60);
  v35 = __p;
  if (v20)
  {
    if (!__p)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v36 = (v58 + 24);
    v37 = *a1 + 3;
    v38 = __p;
    v39 = v18;
    do
    {
      v40 = *v38++;
      *v36 = v40 + *v37 / v6;
      v36 += 4;
      v37 += v9;
      --v39;
    }

    while (v39);
  }

  if (v57 != v35)
  {
    v57 += (v35 - v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  operator delete(v35);
LABEL_41:
  v41 = v58;
  v42 = v59;
  while (v41 != v42)
  {
    *v41 = *v41 * a4;
    ++v41;
  }

  std::valarray<double>::apply(&v60, &v58);
  if (v58)
  {
    if (v59 != v58)
    {
      v59 = (v59 + ((v58 - v59 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v58);
    v59 = 0;
  }

  v58 = v60;
  v59 = v61;
  v55 = 0;
  nms::max<double>(&__p, &v55, &v58);
  v54 = a4;
  nms::min<double>(&v60, &v54, &__p);
  if (v58)
  {
    if (v59 != v58)
    {
      v59 = (v59 + ((v58 - v59 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v58);
    v59 = 0;
  }

  v58 = v60;
  v59 = v61;
  v60 = 0;
  v61 = 0;
  if (__p)
  {
    if (v57 != __p)
    {
      v57 += (__p - v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  if (v18)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v60 = &v58;
      v61 = 4 * v43;
      v62 = xmmword_1B42AF990;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&__p, &v60);
      if (v44)
      {
        operator delete(v44);
      }

      v44 = __p;
      v45 = *(__p + 1);
      v46 = *(__p + 3);
      if (v45 < v46)
      {
        while (1)
        {
          v47 = *v44;
          v48 = v44[2] - *v44;
          v49 = v48 >= a4 ? a4 : v48;
          v60 = 0;
          v61 = 0;
          std::valarray<unsigned long>::resize();
          v50 = v60;
          if (v49)
          {
            break;
          }

          if (v60)
          {
            goto LABEL_69;
          }

LABEL_72:
          if (++v45 == v46)
          {
            goto LABEL_73;
          }
        }

        v51 = (*a3 + 8 * (v47 + (v45 * a4)));
        v52 = v60;
        do
        {
          v53 = *v52++;
          *v51++ += v53;
          --v49;
        }

        while (v49);
LABEL_69:
        if (v61 != v50)
        {
          v61 += (v50 - v61 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(v50);
        goto LABEL_72;
      }

LABEL_73:
      ++v43;
    }

    while (v43 != v18);
    if (v44)
    {
      operator delete(v44);
    }
  }

  if (v58)
  {
    if (v59 != v58)
    {
      v59 = (v59 + ((v58 - v59 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v58);
  }
}

void sub_1B4246654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nms::rasterizeQuadByQuantizedScoreMap<double>(double **a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6, char a7)
{
  v252 = *MEMORY[0x1E69E9840];
  v247 = a7;
  v245 = 0;
  v246 = 0;
  std::valarray<BOOL>::resize(&v245, a4);
  v243 = 0;
  v244 = 0;
  std::valarray<BOOL>::resize(&v243, a4);
  v241 = 0;
  v242 = 0;
  std::valarray<BOOL>::resize(&v241, a4);
  v239 = 0;
  v240 = 0;
  std::valarray<BOOL>::resize(&v239, a4);
  v237 = 0;
  v238 = 0;
  std::valarray<BOOL>::resize(&v237, a4);
  v235 = 0;
  v236 = 0;
  std::valarray<BOOL>::resize(&v235, a4);
  v233 = 0;
  v234 = 0;
  std::valarray<BOOL>::resize(&v233, a4);
  v231 = 0;
  v232 = 0;
  std::valarray<double>::resize(&v231, a4);
  v11 = v231;
  v12 = v232;
  v13 = a4;
  if (v231 != v232)
  {
    v14 = 0;
    v15 = (v232 - v231 - 8) >> 3;
    v16 = (v15 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v17 = vdupq_n_s64(v15);
    v18 = v231 + 1;
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v14), xmmword_1B42AF280)));
      if (v19.i8[0])
      {
        *(v18 - 1) = v14;
      }

      if (v19.i8[4])
      {
        *v18 = (v14 + 1);
      }

      v14 += 2;
      v18 += 2;
    }

    while (v16 != v14);
    v20 = v11;
    do
    {
      *v20 = *v20 / v13;
      ++v20;
    }

    while (v20 != v12);
  }

  v230[0] = 0;
  v230[1] = 0;
  std::valarray<double>::resize(v230, a4);
  v229[0] = 0;
  v229[1] = 0;
  std::valarray<double>::resize(v229, a4);
  v228[0] = 0;
  v228[1] = 0;
  std::valarray<double>::resize(v228, a4);
  v227[0] = 0;
  v227[1] = 0;
  std::valarray<double>::resize(v227, a4);
  v21 = v243;
  v22 = v244 - v243;
  if (v244 - v243 >= 1)
  {
    bzero(v243, v244 - v243);
  }

  v23 = v242 - v241;
  if (v242 - v241 >= 1)
  {
    bzero(v241, v242 - v241);
  }

  v24 = (*a1)[1];
  v25 = (*a1)[7];
  if (v24 != v25)
  {
    v26 = (v12 - v11) >> 3;
    if (v22 != v26)
    {
      std::valarray<BOOL>::resize(&v243, (v12 - v11) >> 3);
    }

    if (v11 != v12)
    {
      v27 = v243;
      if (v25 >= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = v25;
      }

      v29 = v11;
      v30 = (v12 - v11) >> 3;
      do
      {
        v31 = *v29++;
        *v27++ = v31 >= v28;
        --v30;
      }

      while (v30);
    }

    if (v23 != v26)
    {
      std::valarray<BOOL>::resize(&v241, (v12 - v11) >> 3);
    }

    if (v11 != v12)
    {
      v32 = v241;
      if (v24 >= v25)
      {
        v33 = v24;
      }

      else
      {
        v33 = v25;
      }

      v34 = v11;
      do
      {
        v35 = *v34++;
        *v32++ = v35 < v33;
        --v26;
      }

      while (v26);
    }

    v21 = v243;
    v36 = v244;
    v22 = v244 - v243;
    if (v240 - v239 != v244 - v243)
    {
      std::valarray<BOOL>::resize(&v239, v244 - v243);
    }

    if (v36 != v21)
    {
      v37 = v239;
      v38 = v241;
      v39 = v21;
      v40 = v36 - v21;
      do
      {
        v42 = *v39++;
        v41 = v42;
        v43 = *v38++;
        *v37++ = v43 & v41;
        --v40;
      }

      while (v40);
    }

    v44 = **a1;
    v45 = (*a1)[6];
    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v239, v11);
    std::valarray<double>::valarray(&__p, &v248);
    if (v249)
    {
      if (v250 != v249)
      {
        v250 = (v250 + ((v249 - v250 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v249);
    }

    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v239, v230[0]);
    v46 = v249;
    v47 = v250;
    if (v250 == v249)
    {
      if (!v250)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v48 = fmax(v44, 0.0);
      v49 = fmax(v45, 0.0) - v48;
      v50 = v250 - v249;
      v51 = __p;
      v52 = v248;
      if (v50 <= 1)
      {
        v50 = 1;
      }

      v53 = v249;
      do
      {
        v54 = *v51++;
        v55 = v48 + v49 * (v54 - v24) / (v25 - v24);
        v56 = *v53++;
        *(v52 + 8 * v56) = v55;
        --v50;
      }

      while (v50);
      v250 = (v47 + ((v46 - v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v46);
LABEL_48:
    if (__p)
    {
      if (v221 != __p)
      {
        v221 += (__p - v221 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }
  }

  if (v22 >= 1)
  {
    bzero(v21, v22);
  }

  v57 = v242 - v241;
  if (v242 - v241 >= 1)
  {
    bzero(v241, v242 - v241);
  }

  v58 = (*a1)[1];
  v59 = (*a1)[3];
  if (v58 != v59)
  {
    v60 = (v12 - v11) >> 3;
    if (v22 != v60)
    {
      std::valarray<BOOL>::resize(&v243, (v12 - v11) >> 3);
    }

    if (v11 != v12)
    {
      v61 = v243;
      if (v59 >= v58)
      {
        v62 = v58;
      }

      else
      {
        v62 = v59;
      }

      v63 = v11;
      v64 = (v12 - v11) >> 3;
      do
      {
        v65 = *v63++;
        *v61++ = v65 >= v62;
        --v64;
      }

      while (v64);
    }

    if (v57 != v60)
    {
      std::valarray<BOOL>::resize(&v241, (v12 - v11) >> 3);
    }

    if (v11 != v12)
    {
      v66 = v241;
      if (v58 >= v59)
      {
        v67 = v58;
      }

      else
      {
        v67 = v59;
      }

      v68 = v11;
      do
      {
        v69 = *v68++;
        *v66++ = v69 < v67;
        --v60;
      }

      while (v60);
    }

    v21 = v243;
    v70 = v244;
    v22 = v244 - v243;
    if (v238 - v237 != v244 - v243)
    {
      std::valarray<BOOL>::resize(&v237, v244 - v243);
    }

    if (v70 != v21)
    {
      v71 = v237;
      v72 = v241;
      v73 = v21;
      v74 = v70 - v21;
      do
      {
        v76 = *v73++;
        v75 = v76;
        v77 = *v72++;
        *v71++ = v77 & v75;
        --v74;
      }

      while (v74);
    }

    v78 = **a1;
    v79 = (*a1)[2];
    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v237, v11);
    std::valarray<double>::valarray(&__p, &v248);
    if (v249)
    {
      if (v250 != v249)
      {
        v250 = (v250 + ((v249 - v250 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v249);
    }

    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v237, v229[0]);
    v80 = v249;
    v81 = v250;
    if (v250 == v249)
    {
      if (!v250)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v82 = fmax(v78, 0.0);
      v83 = fmax(v79, 0.0) - v82;
      v84 = v250 - v249;
      v85 = __p;
      v86 = v248;
      if (v84 <= 1)
      {
        v84 = 1;
      }

      v87 = v249;
      do
      {
        v88 = *v85++;
        v89 = v82 + v83 * (v88 - v58) / (v59 - v58);
        v90 = *v87++;
        *(v86 + 8 * v90) = v89;
        --v84;
      }

      while (v84);
      v250 = (v81 + ((v80 - v81 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v80);
LABEL_90:
    if (__p)
    {
      if (v221 != __p)
      {
        v221 += (__p - v221 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }
  }

  if (v22 >= 1)
  {
    bzero(v21, v22);
  }

  v91 = v242 - v241;
  if (v242 - v241 >= 1)
  {
    bzero(v241, v242 - v241);
  }

  v92 = (*a1)[3];
  v93 = (*a1)[5];
  if (v92 != v93)
  {
    v94 = (v12 - v11) >> 3;
    if (v22 != v94)
    {
      std::valarray<BOOL>::resize(&v243, (v12 - v11) >> 3);
    }

    if (v11 != v12)
    {
      v95 = v243;
      if (v93 >= v92)
      {
        v96 = v92;
      }

      else
      {
        v96 = v93;
      }

      v97 = v11;
      v98 = (v12 - v11) >> 3;
      do
      {
        v99 = *v97++;
        *v95++ = v99 >= v96;
        --v98;
      }

      while (v98);
    }

    if (v91 != v94)
    {
      std::valarray<BOOL>::resize(&v241, (v12 - v11) >> 3);
    }

    if (v11 != v12)
    {
      v100 = v241;
      if (v92 >= v93)
      {
        v101 = v92;
      }

      else
      {
        v101 = v93;
      }

      v102 = v11;
      do
      {
        v103 = *v102++;
        *v100++ = v103 < v101;
        --v94;
      }

      while (v94);
    }

    v21 = v243;
    v104 = v244;
    v22 = v244 - v243;
    if (v236 - v235 != v244 - v243)
    {
      std::valarray<BOOL>::resize(&v235, v244 - v243);
    }

    if (v104 != v21)
    {
      v105 = v235;
      v106 = v241;
      v107 = v21;
      v108 = v104 - v21;
      do
      {
        v110 = *v107++;
        v109 = v110;
        v111 = *v106++;
        *v105++ = v111 & v109;
        --v108;
      }

      while (v108);
    }

    v112 = (*a1)[2];
    v113 = (*a1)[4];
    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v235, v11);
    std::valarray<double>::valarray(&__p, &v248);
    if (v249)
    {
      if (v250 != v249)
      {
        v250 = (v250 + ((v249 - v250 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v249);
    }

    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v235, v228[0]);
    v114 = v249;
    v115 = v250;
    if (v250 == v249)
    {
      if (!v250)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v116 = fmax(v112, 0.0);
      v117 = fmax(v113, 0.0) - v116;
      v118 = v250 - v249;
      v119 = __p;
      v120 = v248;
      if (v118 <= 1)
      {
        v118 = 1;
      }

      v121 = v249;
      do
      {
        v122 = *v119++;
        v123 = v116 + v117 * (v122 - v92) / (v93 - v92);
        v124 = *v121++;
        *(v120 + 8 * v124) = v123;
        --v118;
      }

      while (v118);
      v250 = (v115 + ((v114 - v115 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v114);
LABEL_132:
    if (__p)
    {
      if (v221 != __p)
      {
        v221 += (__p - v221 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }
  }

  if (v22 >= 1)
  {
    bzero(v21, v22);
  }

  v125 = v242 - v241;
  if (v242 - v241 >= 1)
  {
    bzero(v241, v242 - v241);
  }

  v126 = (*a1)[5];
  v127 = (*a1)[7];
  if (v126 != v127)
  {
    v129 = v231;
    v128 = v232;
    v130 = v232 - v231;
    if (v22 != v130)
    {
      std::valarray<BOOL>::resize(&v243, v232 - v231);
    }

    if (v128 != v129)
    {
      v131 = v243;
      if (v127 >= v126)
      {
        v132 = v126;
      }

      else
      {
        v132 = v127;
      }

      v133 = v129;
      v134 = v130;
      do
      {
        v135 = *v133++;
        *v131++ = v135 >= v132;
        --v134;
      }

      while (v134);
    }

    if (v125 != v130)
    {
      std::valarray<BOOL>::resize(&v241, v130);
    }

    if (v128 != v129)
    {
      v136 = v241;
      if (v126 >= v127)
      {
        v137 = v126;
      }

      else
      {
        v137 = v127;
      }

      v138 = v129;
      do
      {
        v139 = *v138++;
        *v136++ = v139 < v137;
        --v130;
      }

      while (v130);
    }

    v140 = v243;
    v141 = v244;
    v142 = v244 - v243;
    if (v234 - v233 != v244 - v243)
    {
      std::valarray<BOOL>::resize(&v233, v244 - v243);
    }

    if (v141 != v140)
    {
      v143 = v233;
      v144 = v241;
      do
      {
        v146 = *v140++;
        v145 = v146;
        v147 = *v144++;
        *v143++ = v147 & v145;
        --v142;
      }

      while (v142);
    }

    v148 = (*a1)[4];
    v149 = (*a1)[6];
    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v233, v129);
    std::valarray<double>::valarray(&__p, &v248);
    if (v249)
    {
      if (v250 != v249)
      {
        v250 = (v250 + ((v249 - v250 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v249);
    }

    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v233, v227[0]);
    v150 = v249;
    v151 = v250;
    if (v250 == v249)
    {
      if (!v250)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v152 = fmax(v148, 0.0);
      v153 = fmax(v149, 0.0) - v152;
      v154 = v250 - v249;
      v155 = __p;
      v156 = v248;
      if (v154 <= 1)
      {
        v154 = 1;
      }

      v157 = v249;
      do
      {
        v158 = *v155++;
        v159 = v152 + v153 * (v158 - v126) / (v127 - v126);
        v160 = *v157++;
        *(v156 + 8 * v160) = v159;
        --v154;
      }

      while (v154);
      v250 = (v151 + ((v150 - v151 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v150);
LABEL_174:
    if (__p)
    {
      if (v221 != __p)
      {
        v221 += (__p - v221 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }
  }

  v162 = v239;
  v161 = v240;
  v163 = v240 - v239;
  if (v246 - v245 != v240 - v239)
  {
    std::valarray<BOOL>::resize(&v245, v240 - v239);
  }

  if (v161 != v162)
  {
    v164 = v245;
    v165 = v233;
    v166 = v162;
    v167 = v235;
    do
    {
      v169 = *v166++;
      v168 = v169;
      v170 = *v165++;
      v171 = v170 | v168;
      v172 = *v167++;
      *v164++ = v171 | v172;
      --v163;
    }

    while (v163);
  }

  v173 = v231;
  std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &v245, v231);
  std::valarray<double>::valarray(&v225, &v248);
  if (v249)
  {
    if (v250 != v249)
    {
      v250 = (v250 + ((v249 - v250 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v249);
  }

  v174 = v225;
  v175 = v226;
  if (v225 != v226)
  {
    v215 = v173;
    v176 = v225;
    do
    {
      *v176 = v13 * *v176;
      ++v176;
    }

    while (v176 != v175);
    v177 = 0;
    v178 = 0;
    v179 = a5;
    v216 = v229[0];
    v217 = v230[0];
    v180 = 0.0;
    v181 = v228[0];
    v182 = v227[0];
    while (1)
    {
      v183 = vcvtad_u64_f64(v174[v177]);
      v184 = v217[v183];
      v185 = 1.79769313e308;
      if (v184 < 0.0 || (v185 = fmin(v184, 1.79769313e308), v184 <= 0.0))
      {
        v184 = 0.0;
      }

      v186 = v216[v183];
      if (v186 < 0.0)
      {
        goto LABEL_198;
      }

      if (v186 < v185)
      {
        v185 = v216[v183];
      }

      if (v186 <= v184)
      {
LABEL_198:
        v186 = v184;
      }

      v187 = v181[v183];
      if (v187 < 0.0)
      {
        goto LABEL_203;
      }

      if (v187 < v185)
      {
        v185 = v181[v183];
      }

      if (v187 <= v186)
      {
LABEL_203:
        v187 = v186;
      }

      v188 = v182[v183];
      if (v188 < 0.0)
      {
        goto LABEL_208;
      }

      if (v188 < v185)
      {
        v185 = v182[v183];
      }

      if (v188 <= v187)
      {
LABEL_208:
        v188 = v187;
      }

      v223 = 0;
      v224 = 0;
      if (vcvtad_u64_f64((v188 - v185) * v179))
      {
        operator new();
      }

      if (a6)
      {
        break;
      }

      v249 = &v223;
      v250 = &v247;
      v251 = 0;
      std::__val_expr<std::_BinaryOp<std::less<unsigned char>,std::valarray<unsigned char>,std::__scalar_expr<unsigned char>>>::operator std::valarray<BOOL>(&v218, &v248);
      std::mask_array<unsigned char>::mask_array[abi:ne200100](&__p, &v218, v223);
      v194 = v221;
      v195 = v222;
      if (v222 != v221)
      {
        v196 = 0;
        v197 = (v222 - v221) >> 3;
        if (v197 <= 1)
        {
          v197 = 1;
        }

        do
        {
          *(__p + *&v221[8 * v196++]) = 0;
        }

        while (v197 != v196);
        v194 = v221;
        v195 = v222;
      }

      if (v194)
      {
        if (v195 != v194)
        {
          v222 = &v195[(v194 - v195 + 7) & 0xFFFFFFFFFFFFFFF8];
        }

        operator delete(v194);
        v221 = 0;
        v222 = 0;
      }

      if (v218)
      {
        if (v219 != v218)
        {
          v219 = v218;
        }

        operator delete(v218);
      }

      v198 = v223;
      v199 = v224;
      v200 = v224 - v223;
      if (v224 != v223)
      {
        v201 = 0;
        if (v200 <= 1)
        {
          v200 = 1;
        }

        v202 = 0.0;
        do
        {
          LOBYTE(v193) = v223[v201];
          v193 = *&v193;
          v202 = v202 + v193;
          ++v201;
        }

        while (v200 != v201);
        v203 = 0;
        v204 = v223;
        do
        {
          if (*v204++)
          {
            ++v203;
          }
        }

        while (v204 != v224);
LABEL_267:
        if (v198)
        {
          goto LABEL_268;
        }

        goto LABEL_271;
      }

      v203 = 0;
      v202 = 0.0;
      if (v223)
      {
LABEL_268:
        if (v199 != v198)
        {
          v224 = v198;
        }

        operator delete(v198);
      }

LABEL_271:
      v178 += v203;
      v180 = v180 + v202;
      ++v177;
      v174 = v225;
      v175 = v226;
      if (v177 >= v226 - v225)
      {
        v212 = v180;
        v213 = v226;
        v173 = v215;
        if (!v225)
        {
          goto LABEL_281;
        }

        goto LABEL_278;
      }
    }

    v249 = &v223;
    v250 = &v247;
    v251 = 0;
    std::__val_expr<std::_BinaryOp<std::less<unsigned char>,std::valarray<unsigned char>,std::__scalar_expr<unsigned char>>>::operator std::valarray<BOOL>(&v218, &v248);
    std::mask_array<unsigned char>::mask_array[abi:ne200100](&__p, &v218, v223);
    v189 = v221;
    v190 = v222;
    if (v222 != v221)
    {
      v191 = 0;
      v192 = (v222 - v221) >> 3;
      if (v192 <= 1)
      {
        v192 = 1;
      }

      do
      {
        *(__p + *&v221[8 * v191++]) = 0;
      }

      while (v192 != v191);
      v189 = v221;
      v190 = v222;
    }

    if (v189)
    {
      if (v190 != v189)
      {
        v222 = &v190[(v189 - v190 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v189);
      v221 = 0;
      v222 = 0;
    }

    if (v218)
    {
      if (v219 != v218)
      {
        v219 = v218;
      }

      operator delete(v218);
    }

    __p = 0;
    v221 = 0;
    if (v224 != v223)
    {
      operator new();
    }

    std::mask_array<unsigned char>::mask_array[abi:ne200100](&v248, &__p, v223);
    v206 = v249;
    v207 = v250;
    if (v250 != v249)
    {
      v208 = 0;
      v209 = v250 - v249;
      if (v209 <= 1)
      {
        v209 = 1;
      }

      do
      {
        *(v248 + v249[v208++]) = 1;
      }

      while (v209 != v208);
      v206 = v249;
      v207 = v250;
    }

    if (v206)
    {
      if (v207 != v206)
      {
        v250 = (v207 + ((v206 - v207 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v206);
      v249 = 0;
      v250 = 0;
    }

    v198 = v223;
    v199 = v224;
    if (v223 == v224)
    {
      v203 = 0;
    }

    else
    {
      v203 = 0;
      v210 = v223;
      do
      {
        if (*v210++)
        {
          ++v203;
        }
      }

      while (v210 != v224);
    }

    v202 = (v203 * a6);
    goto LABEL_267;
  }

  v212 = 0.0;
  v213 = v225;
  if (!v225)
  {
    goto LABEL_281;
  }

LABEL_278:
  if (v175 != v174)
  {
    v226 = (v175 + ((v174 - v213 + 7) & 0xFFFFFFFFFFFFFFF8));
  }

  operator delete(v174);
LABEL_281:
  if (v227[0])
  {
    operator delete(v227[0]);
  }

  if (v228[0])
  {
    operator delete(v228[0]);
  }

  if (v229[0])
  {
    operator delete(v229[0]);
  }

  if (v230[0])
  {
    operator delete(v230[0]);
  }

  if (v173)
  {
    operator delete(v173);
  }

  if (v233)
  {
    operator delete(v233);
  }

  if (v235)
  {
    operator delete(v235);
  }

  if (v237)
  {
    operator delete(v237);
  }

  if (v162)
  {
    operator delete(v162);
  }

  if (v241)
  {
    operator delete(v241);
  }

  if (v243)
  {
    operator delete(v243);
  }

  if (v245)
  {
    operator delete(v245);
  }

  return *&v212;
}

void sub_1B4247848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, void *a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, void *a34, uint64_t a35, void *a36, uint64_t a37, void *a38, uint64_t a39, void *a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a40)
  {
    operator delete(a40);
  }

  v42 = *(v40 - 248);
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(v40 - 232);
  if (v43)
  {
    operator delete(v43);
  }

  v44 = *(v40 - 216);
  if (v44)
  {
    operator delete(v44);
  }

  v45 = *(v40 - 200);
  if (v45)
  {
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

void *std::valarray<double>::valarray(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t std::valarray<double>::apply(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a2[1];
  result = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((result >> 3) >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void *std::deque<unsigned short>::__add_back_capacity(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x800;
  v4 = v2 - 2048;
  if (!v3)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = v8 - *a1;
    if (v7 - a1[1] < v9)
    {
      if (v8 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v12 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v10);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v11 = *v5;
  a1[1] = v5 + 1;
  return std::__split_buffer<int *>::emplace_back<int *&>(a1, &v11);
}

void sub_1B4247D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::reference_wrapper<std::valarray<double> const>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::deque<std::valarray<BOOL>>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x100)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v12);
    }

    a1[4] = v7 - 256;
    v14 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v14);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  result = *a2;
  *(*&v4[(v8 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[5];
  return result;
}

void sub_1B4248264(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B42484E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = a1[121];
  if (v3)
  {
    v146 = *(v3 + 40);
    if (v146)
    {
      v6 = 0;
      v7 = a2;
      v8 = a3;
      while (1)
      {
        v9 = *(a1[80] + 8 * ((a1[83] + v7) / 0x55uLL)) + 48 * ((a1[83] + v7) % 0x55uLL);
        v10 = *(*(v9 + 8) + 8 * ((*(v9 + 32) + v6) / 0x55uLL)) + 48 * ((*(v9 + 32) + v6) % 0x55uLL);
        v11 = *(*(v10 + 8) + 8 * ((*(v10 + 32) + v8) / 0x55uLL)) + 48 * ((*(v10 + 32) + v8) % 0x55uLL);
        v12 = *(v11 + 40);
        if (!v12)
        {
          goto LABEL_42;
        }

        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (v14 != v13)
        {
          v15 = *(v11 + 32);
          v16 = &v13[v15 >> 11];
          v17 = (*v16 + 2 * (v15 & 0x7FF));
          v147 = *(v13 + (((v15 + v12) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v15 + v12) & 0x7FF);
          if (v17 == v147)
          {
            goto LABEL_34;
          }

          while (1)
          {
            v18 = *(*(a1[74] + (((a1[77] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 616) + v7));
            v19 = *v17;
            --*(v18 + v8);
            v20 = *(*(a1[74] + (((a1[77] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 616) + v6));
            --*(v20 + v19);
            v21 = *(a1[80] + 8 * ((a1[83] + v6) / 0x55uLL)) + 48 * ((a1[83] + v6) % 0x55uLL);
            v22 = *(*(v21 + 8) + 8 * ((*(v21 + 32) + v7) / 0x55uLL)) + 48 * ((*(v21 + 32) + v7) % 0x55uLL);
            v23 = (*(*(v22 + 8) + 8 * ((*(v22 + 32) + v19) / 0x55uLL)) + 48 * ((*(v22 + 32) + v19) % 0x55uLL));
            v24 = v23[2].i64[1];
            v25 = v23->i64[1];
            if (v24 != 1)
            {
              v30 = v23[2].u64[0];
              v31 = &v25[v30 >> 11];
              v32 = v23[1].i64[0];
              if (v32 == v25)
              {
                v33 = 0;
              }

              else
              {
                v33 = *v31 + 2 * (v23[2].i64[0] & 0x7FF);
              }

              v34 = v30 + v24;
              v35 = v34 >> 11;
              v36 = v34 & 0x7FF;
LABEL_17:
              v37 = v33;
              while (1)
              {
                v38 = v32 == v25 ? 0 : v25[v35] + 2 * v36;
                if (v37 == v38)
                {
                  goto LABEL_29;
                }

                if (*v37 == a3)
                {
                  std::deque<unsigned short>::erase(v23, v31, v33);
                  goto LABEL_29;
                }

                ++v37;
                v33 += 2;
                if (*v31 + 4096 == v33)
                {
                  v39 = v31[1];
                  ++v31;
                  v33 = v39;
                  goto LABEL_17;
                }
              }
            }

            v26 = v23[1].i64[0];
            v23[2].i64[1] = 0;
            v27 = (v26 - v25) >> 3;
            if (v27 >= 3)
            {
              do
              {
                operator delete(*v25);
                v28 = v23[1].i64[0];
                v25 = (v23->i64[1] + 8);
                v23->i64[1] = v25;
                v27 = (v28 - v25) >> 3;
              }

              while (v27 > 2);
            }

            if (v27 == 1)
            {
              break;
            }

            if (v27 == 2)
            {
              v29 = 2048;
LABEL_27:
              v23[2].i64[0] = v29;
            }

            std::deque<unsigned short>::shrink_to_fit(v23);
LABEL_29:
            if (++v17 - *v16 == 4096)
            {
              v40 = v16[1];
              ++v16;
              v17 = v40;
            }

            if (v17 == v147)
            {
              v13 = *(v11 + 8);
              v14 = *(v11 + 16);
              goto LABEL_34;
            }
          }

          v29 = 1024;
          goto LABEL_27;
        }

        v14 = *(v11 + 8);
LABEL_34:
        *(v11 + 40) = 0;
        v41 = v14 - v13;
        if (v41 >= 3)
        {
          do
          {
            operator delete(*v13);
            v42 = *(v11 + 16);
            v13 = (*(v11 + 8) + 8);
            *(v11 + 8) = v13;
            v41 = (v42 - v13) >> 3;
          }

          while (v41 > 2);
        }

        if (v41 == 1)
        {
          break;
        }

        if (v41 == 2)
        {
          v43 = 2048;
LABEL_40:
          *(v11 + 32) = v43;
        }

        std::deque<unsigned short>::shrink_to_fit(v11);
LABEL_42:
        v44 = *(a1[92] + 8 * ((a1[95] + v7) / 0x55uLL)) + 48 * ((a1[95] + v7) % 0x55uLL);
        v45 = *(*(v44 + 8) + 8 * ((*(v44 + 32) + v6) / 0x55uLL)) + 48 * ((*(v44 + 32) + v6) % 0x55uLL);
        std::deque<unsigned short>::operator=(v11, (*(*(v45 + 8) + 8 * ((*(v45 + 32) + v8) / 0x55uLL)) + 48 * ((*(v45 + 32) + v8) % 0x55uLL)));
        v46 = *(v11 + 40);
        if (!v46)
        {
          goto LABEL_80;
        }

        v47 = *(v11 + 8);
        v48 = *(v11 + 16);
        if (v48 != v47)
        {
          v49 = *(v11 + 32);
          v50 = &v47[v49 >> 11];
          v51 = (*v50 + 2 * (v49 & 0x7FF));
          v148 = *(v47 + (((v49 + v46) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v49 + v46) & 0x7FF);
          if (v51 == v148)
          {
            goto LABEL_72;
          }

          while (1)
          {
            v52 = *(*(a1[86] + (((a1[89] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + v7));
            v53 = *v51;
            --*(v52 + v8);
            v54 = *(*(a1[98] + (((a1[101] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 808) + v6));
            --*(v54 + v53);
            v55 = *(a1[104] + 8 * ((a1[107] + v6) / 0x55uLL)) + 48 * ((a1[107] + v6) % 0x55uLL);
            v56 = *(*(v55 + 8) + 8 * ((*(v55 + 32) + v7) / 0x55uLL)) + 48 * ((*(v55 + 32) + v7) % 0x55uLL);
            v57 = (*(*(v56 + 8) + 8 * ((*(v56 + 32) + v53) / 0x55uLL)) + 48 * ((*(v56 + 32) + v53) % 0x55uLL));
            v58 = v57[2].i64[1];
            v59 = v57->i64[1];
            if (v58 != 1)
            {
              v64 = v57[2].u64[0];
              v65 = &v59[v64 >> 11];
              v66 = v57[1].i64[0];
              if (v66 == v59)
              {
                v67 = 0;
              }

              else
              {
                v67 = *v65 + 2 * (v57[2].i64[0] & 0x7FF);
              }

              v68 = v64 + v58;
              v69 = v68 >> 11;
              v70 = v68 & 0x7FF;
LABEL_55:
              v71 = v67;
              while (1)
              {
                v72 = v66 == v59 ? 0 : v59[v69] + 2 * v70;
                if (v71 == v72)
                {
                  goto LABEL_67;
                }

                if (*v71 == a3)
                {
                  std::deque<unsigned short>::erase(v57, v65, v67);
                  goto LABEL_67;
                }

                ++v71;
                v67 += 2;
                if (*v65 + 4096 == v67)
                {
                  v73 = v65[1];
                  ++v65;
                  v67 = v73;
                  goto LABEL_55;
                }
              }
            }

            v60 = v57[1].i64[0];
            v57[2].i64[1] = 0;
            v61 = (v60 - v59) >> 3;
            if (v61 >= 3)
            {
              do
              {
                operator delete(*v59);
                v62 = v57[1].i64[0];
                v59 = (v57->i64[1] + 8);
                v57->i64[1] = v59;
                v61 = (v62 - v59) >> 3;
              }

              while (v61 > 2);
            }

            if (v61 == 1)
            {
              break;
            }

            if (v61 == 2)
            {
              v63 = 2048;
LABEL_65:
              v57[2].i64[0] = v63;
            }

            std::deque<unsigned short>::shrink_to_fit(v57);
LABEL_67:
            if (++v51 - *v50 == 4096)
            {
              v74 = v50[1];
              ++v50;
              v51 = v74;
            }

            if (v51 == v148)
            {
              v47 = *(v11 + 8);
              v48 = *(v11 + 16);
              goto LABEL_72;
            }
          }

          v63 = 1024;
          goto LABEL_65;
        }

        v48 = *(v11 + 8);
LABEL_72:
        *(v11 + 40) = 0;
        v75 = v48 - v47;
        if (v75 >= 3)
        {
          do
          {
            operator delete(*v47);
            v76 = *(v11 + 16);
            v47 = (*(v11 + 8) + 8);
            *(v11 + 8) = v47;
            v75 = (v76 - v47) >> 3;
          }

          while (v75 > 2);
        }

        if (v75 == 1)
        {
          v77 = 1024;
          goto LABEL_78;
        }

        if (v75 == 2)
        {
          v77 = 2048;
LABEL_78:
          *(v11 + 32) = v77;
        }

        std::deque<unsigned short>::shrink_to_fit(v11);
LABEL_80:
        v78 = *(a1[104] + 8 * ((a1[107] + v7) / 0x55uLL)) + 48 * ((a1[107] + v7) % 0x55uLL);
        v79 = *(*(v78 + 8) + 8 * ((*(v78 + 32) + v6) / 0x55uLL)) + 48 * ((*(v78 + 32) + v6) % 0x55uLL);
        std::deque<unsigned short>::operator=(v11, (*(*(v79 + 8) + 8 * ((*(v79 + 32) + v8) / 0x55uLL)) + 48 * ((*(v79 + 32) + v8) % 0x55uLL)));
        v80 = *(v11 + 40);
        if (!v80)
        {
          goto LABEL_118;
        }

        v81 = *(v11 + 8);
        v82 = *(v11 + 16);
        if (v82 != v81)
        {
          v83 = *(v11 + 32);
          v84 = &v81[v83 >> 11];
          v85 = (*v84 + 2 * (v83 & 0x7FF));
          v149 = *(v81 + (((v83 + v80) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v83 + v80) & 0x7FF);
          if (v85 == v149)
          {
            goto LABEL_110;
          }

          while (1)
          {
            v86 = *(*(a1[98] + (((a1[101] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 808) + v7));
            v87 = *v85;
            --*(v86 + v8);
            v88 = *(*(a1[86] + (((a1[89] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 712) + v6));
            --*(v88 + v87);
            v89 = *(a1[92] + 8 * ((a1[95] + v6) / 0x55uLL)) + 48 * ((a1[95] + v6) % 0x55uLL);
            v90 = *(*(v89 + 8) + 8 * ((*(v89 + 32) + v7) / 0x55uLL)) + 48 * ((*(v89 + 32) + v7) % 0x55uLL);
            v91 = (*(*(v90 + 8) + 8 * ((*(v90 + 32) + v87) / 0x55uLL)) + 48 * ((*(v90 + 32) + v87) % 0x55uLL));
            v92 = v91[2].i64[1];
            v93 = v91->i64[1];
            if (v92 != 1)
            {
              v98 = v91[2].u64[0];
              v99 = &v93[v98 >> 11];
              v100 = v91[1].i64[0];
              if (v100 == v93)
              {
                v101 = 0;
              }

              else
              {
                v101 = *v99 + 2 * (v91[2].i64[0] & 0x7FF);
              }

              v102 = v98 + v92;
              v103 = v102 >> 11;
              v104 = v102 & 0x7FF;
LABEL_93:
              v105 = v101;
              while (1)
              {
                v106 = v100 == v93 ? 0 : v93[v103] + 2 * v104;
                if (v105 == v106)
                {
                  goto LABEL_105;
                }

                if (*v105 == a3)
                {
                  std::deque<unsigned short>::erase(v91, v99, v101);
                  goto LABEL_105;
                }

                ++v105;
                v101 += 2;
                if (*v99 + 4096 == v101)
                {
                  v107 = v99[1];
                  ++v99;
                  v101 = v107;
                  goto LABEL_93;
                }
              }
            }

            v94 = v91[1].i64[0];
            v91[2].i64[1] = 0;
            v95 = (v94 - v93) >> 3;
            if (v95 >= 3)
            {
              do
              {
                operator delete(*v93);
                v96 = v91[1].i64[0];
                v93 = (v91->i64[1] + 8);
                v91->i64[1] = v93;
                v95 = (v96 - v93) >> 3;
              }

              while (v95 > 2);
            }

            if (v95 == 1)
            {
              break;
            }

            if (v95 == 2)
            {
              v97 = 2048;
LABEL_103:
              v91[2].i64[0] = v97;
            }

            std::deque<unsigned short>::shrink_to_fit(v91);
LABEL_105:
            if (++v85 - *v84 == 4096)
            {
              v108 = v84[1];
              ++v84;
              v85 = v108;
            }

            if (v85 == v149)
            {
              v81 = *(v11 + 8);
              v82 = *(v11 + 16);
              goto LABEL_110;
            }
          }

          v97 = 1024;
          goto LABEL_103;
        }

        v82 = *(v11 + 8);
LABEL_110:
        *(v11 + 40) = 0;
        v109 = v82 - v81;
        if (v109 >= 3)
        {
          do
          {
            operator delete(*v81);
            v110 = *(v11 + 16);
            v81 = (*(v11 + 8) + 8);
            *(v11 + 8) = v81;
            v109 = (v110 - v81) >> 3;
          }

          while (v109 > 2);
        }

        if (v109 == 1)
        {
          v111 = 1024;
          goto LABEL_116;
        }

        if (v109 == 2)
        {
          v111 = 2048;
LABEL_116:
          *(v11 + 32) = v111;
        }

        std::deque<unsigned short>::shrink_to_fit(v11);
LABEL_118:
        v112 = *(a1[116] + 8 * ((a1[119] + v7) / 0x55uLL)) + 48 * ((a1[119] + v7) % 0x55uLL);
        v113 = *(*(v112 + 8) + 8 * ((*(v112 + 32) + v6) / 0x55uLL)) + 48 * ((*(v112 + 32) + v6) % 0x55uLL);
        std::deque<unsigned short>::operator=(v11, (*(*(v113 + 8) + 8 * ((*(v113 + 32) + v8) / 0x55uLL)) + 48 * ((*(v113 + 32) + v8) % 0x55uLL)));
        v114 = *(v11 + 40);
        if (v114)
        {
          v115 = *(v11 + 8);
          v116 = *(v11 + 16);
          if (v116 != v115)
          {
            v117 = *(v11 + 32);
            v118 = &v115[v117 >> 11];
            v119 = (*v118 + 2 * (v117 & 0x7FF));
            v150 = *(v115 + (((v117 + v114) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v117 + v114) & 0x7FF);
            if (v119 == v150)
            {
              goto LABEL_148;
            }

            while (1)
            {
              v120 = *(*(a1[110] + (((a1[113] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 904) + v7));
              v121 = *v119;
              --*(v120 + v8);
              v122 = *(*(a1[110] + (((a1[113] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 904) + v6));
              --*(v122 + v121);
              v123 = *(a1[116] + 8 * ((a1[119] + v6) / 0x55uLL)) + 48 * ((a1[119] + v6) % 0x55uLL);
              v124 = *(*(v123 + 8) + 8 * ((*(v123 + 32) + v7) / 0x55uLL)) + 48 * ((*(v123 + 32) + v7) % 0x55uLL);
              v125 = (*(*(v124 + 8) + 8 * ((*(v124 + 32) + v121) / 0x55uLL)) + 48 * ((*(v124 + 32) + v121) % 0x55uLL));
              v126 = v125[2].i64[1];
              v127 = v125->i64[1];
              if (v126 != 1)
              {
                v132 = v125[2].u64[0];
                v133 = &v127[v132 >> 11];
                v134 = v125[1].i64[0];
                if (v134 == v127)
                {
                  v135 = 0;
                }

                else
                {
                  v135 = *v133 + 2 * (v125[2].i64[0] & 0x7FF);
                }

                v136 = v132 + v126;
                v137 = v136 >> 11;
                v138 = v136 & 0x7FF;
LABEL_131:
                v139 = v135;
                while (1)
                {
                  v140 = v134 == v127 ? 0 : v127[v137] + 2 * v138;
                  if (v139 == v140)
                  {
                    goto LABEL_143;
                  }

                  if (*v139 == a3)
                  {
                    std::deque<unsigned short>::erase(v125, v133, v135);
                    goto LABEL_143;
                  }

                  ++v139;
                  v135 += 2;
                  if (*v133 + 4096 == v135)
                  {
                    v141 = v133[1];
                    ++v133;
                    v135 = v141;
                    goto LABEL_131;
                  }
                }
              }

              v128 = v125[1].i64[0];
              v125[2].i64[1] = 0;
              v129 = (v128 - v127) >> 3;
              if (v129 >= 3)
              {
                do
                {
                  operator delete(*v127);
                  v130 = v125[1].i64[0];
                  v127 = (v125->i64[1] + 8);
                  v125->i64[1] = v127;
                  v129 = (v130 - v127) >> 3;
                }

                while (v129 > 2);
              }

              if (v129 == 1)
              {
                break;
              }

              if (v129 == 2)
              {
                v131 = 2048;
LABEL_141:
                v125[2].i64[0] = v131;
              }

              std::deque<unsigned short>::shrink_to_fit(v125);
LABEL_143:
              if (++v119 - *v118 == 4096)
              {
                v142 = v118[1];
                ++v118;
                v119 = v142;
              }

              if (v119 == v150)
              {
                v115 = *(v11 + 8);
                v116 = *(v11 + 16);
                goto LABEL_148;
              }
            }

            v131 = 1024;
            goto LABEL_141;
          }

          v116 = *(v11 + 8);
LABEL_148:
          *(v11 + 40) = 0;
          v143 = v116 - v115;
          if (v143 >= 3)
          {
            do
            {
              operator delete(*v115);
              v144 = *(v11 + 16);
              v115 = (*(v11 + 8) + 8);
              *(v11 + 8) = v115;
              v143 = (v144 - v115) >> 3;
            }

            while (v143 > 2);
          }

          if (v143 == 1)
          {
            v145 = 1024;
LABEL_154:
            *(v11 + 32) = v145;
          }

          else if (v143 == 2)
          {
            v145 = 2048;
            goto LABEL_154;
          }

          std::deque<unsigned short>::shrink_to_fit(v11);
        }

        if (++v6 == v146)
        {
          return;
        }
      }

      v43 = 1024;
      goto LABEL_40;
    }
  }
}

void std::deque<unsigned short>::shrink_to_fit(void **a1)
{
  if (a1[5])
  {
    std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](a1, 0);
    std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
    v2 = a1[1];
    v3 = a1[2];
  }

  else
  {
    v2 = a1[2];
    if (v2 != a1[1])
    {
      do
      {
        operator delete(*(v2 - 8));
        v4 = a1[1];
        v2 = a1[2] - 8;
        a1[2] = v2;
      }

      while (v2 != v4);
    }

    a1[4] = 0;
    v3 = v2;
  }

  v5 = *a1;
  v6 = a1[3] - *a1;
  if (v6 > (v3 - v2))
  {
    if (v3 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>((v3 - v2) >> 3);
    }

    v7 = 0;
    if (v6 >> 3)
    {
      v8 = a1[1];
      v9 = a1[2] - v8;
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *v8++;
          *v10++ = v11;
          v9 -= 8;
        }

        while (v9);
        v8 = a1[1];
        v12 = a1[2];
        v5 = *a1;
      }

      else
      {
        v12 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v12 - v8);
      a1[3] = 0;
      v7 = v5;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *std::deque<unsigned short>::operator=(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2[4];
  v4 = (v3 >> 8) & 0xFFFFFFFFFFFFF8;
  v5 = a2[1];
  v6 = (v5 + v4);
  if (a2[2] == v5)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = (*v6 + 2 * (a2[4] & 0x7FFLL));
  v8 = a2[5] + v3;
  v9 = (v8 >> 8) & 0xFFFFFFFFFFFFF8;
  if ((*(v5 + v9) + 2 * (v8 & 0x7FF)) == v7)
  {
LABEL_8:
    v10 = 0;
    v12 = a1 + 5;
    goto LABEL_9;
  }

  v10 = (v8 & 0x7FF | ((v9 - v4) << 8)) - (a2[4] & 0x7FFLL);
  v12 = a1 + 5;
  v11 = a1[5];
  if (v11 < v10)
  {
    v14 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v6, v7, v11);
    v15 = v13;
    v16 = a1[1];
    if (a1[2] == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 8 * (a1[4] >> 11)) + 2 * (a1[4] & 0x7FFLL);
    }

    v30 = (v16 + 8 * (a1[4] >> 11));
    v31 = v17;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>>(v6, v7, v14, v13, &v30);
    std::deque<unsigned short>::__append_with_size[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>>(a1, v14, v15, v10 - a1[5]);
    return a1;
  }

LABEL_9:
  v18 = a1[1];
  v19 = (v18 + 8 * (a1[4] >> 11));
  if (a1[2] == v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19 + 2 * (a1[4] & 0x7FFLL);
  }

  v21 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v6, v7, v10);
  v30 = v19;
  v31 = v20;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>>(v6, v7, v21, v22, &v30);
  v23 = a1[5];
  v24 = a1[4] + v23;
  v25 = a1[1];
  v26 = (v25 + 8 * (v24 >> 11));
  if (a1[2] == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v26 + 2 * (v24 & 0x7FF);
  }

  if (v27 != v31)
  {
    v28 = ((v27 - *v26) >> 1) + ((v26 - v30) << 8) - ((v31 - *v30) >> 1);
    if (v28 >= 1)
    {
      *v12 = v23 - v28;
        ;
      }
    }
  }

  return a1;
}

void *std::deque<unsigned short>::__append_with_size[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>>(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 8) - 1;
  }

  v11 = a1[5];
  v12 = v11 + a1[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    std::deque<unsigned short>::__add_back_capacity(a1, a4 - v13);
    v11 = a1[5];
    v8 = a1[1];
    v9 = a1[2];
    v12 = a1[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 11));
  if (v9 == v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 2 * (v12 & 0x7FF);
  }

  result = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v14, v15, a4);
  if (v15 != v17)
  {
    do
    {
      if (v14 == result)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v14 + 4096;
      }

      if (v15 == v18)
      {
        v18 = v15;
      }

      else
      {
        v19 = *a2;
        v20 = v15;
        do
        {
          v21 = *a3;
          a3 += 2;
          *v20++ = v21;
          if (a3 - v19 == 4096)
          {
            v22 = a2[1];
            ++a2;
            v19 = v22;
            a3 = v22;
          }
        }

        while (v20 != v18);
      }

      v11 += (v18 - v15) >> 1;
      if (v14 == result)
      {
        break;
      }

      v23 = v14[1];
      ++v14;
      v15 = v23;
    }

    while (v23 != v17);
    a1[5] = v11;
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>>(void *a1, _BYTE *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = a4;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned short *,unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(&v23, a2, (*a1 + 4096), *a5, *(a5 + 8));
    *a5 = v24;
    v12 = *a5;
    v13 = *(a5 + 8);
    if (v11 != a3)
    {
      v22 = a4;
      do
      {
        v14 = 0;
        v15 = *v11;
        v17 = *v12++;
        v16 = v17;
        while (1)
        {
          v18 = v16 - v13 + 4096;
          if ((4096 - v14) >> 1 >= v18 >> 1)
          {
            v19 = v18 >> 1;
          }

          else
          {
            v19 = (4096 - v14) >> 1;
          }

          if (v19)
          {
            memmove(v13, &v15[v14], 2 * v19);
          }

          v14 += 2 * v19;
          if (v14 == 4096)
          {
            break;
          }

          v20 = *v12++;
          v16 = v20;
          v13 = v20;
        }

        v13 += 2 * v19;
        if (*(v12 - 1) + 4096 == v13)
        {
          v13 = *v12;
        }

        else
        {
          --v12;
        }

        *a5 = v12;
        *(a5 + 8) = v13;
        ++v11;
      }

      while (v11 != a3);
      a4 = v22;
    }

    a2 = *v11;
    v9 = a4;
    v7 = v12;
    v8 = v13;
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned short *,unsigned short *,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,0>(&v23, a2, v9, v7, v8);
  result = *&v24;
  *a5 = v24;
  return result;
}

double std::__val_expr<std::_BinaryOp<std::plus<double>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>>>::max[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  v4 = *(a1 + 48);
  v5 = **(a1 + 40);
  result = *(v3 + 8 * v2) + *(v5 + 8 * v4);
  v7 = v1 - 1;
  if (v7)
  {
    v8 = 8 * v4;
    v9 = 8 * *(a1 + 64);
    v10 = (v5 + v8 + v9);
    v11 = 8 * v2;
    v12 = 8 * *(a1 + 32);
    v13 = (v3 + v11 + v12);
    do
    {
      if (result < *v13 + *v10)
      {
        result = *v13 + *v10;
      }

      v10 = (v10 + v9);
      v13 = (v13 + v12);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t std::valarray<double>::__assign_range(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v4 = a3 - __src;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 - v5 != a3 - __src)
  {
    if (v5)
    {
      if (v6 != v5)
      {
        *(a1 + 8) = &v6[(v5 - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v5);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (a3 != __src)
  {
    memmove(v5, __src, a3 - __src);
  }

  return a1;
}

void *std::__val_expr<std::_BinaryOp<std::greater<unsigned char>,std::valarray<unsigned char>,std::__scalar_expr<unsigned char>>>::operator std::valarray<BOOL>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*(*(a2 + 8) + 8) != **(a2 + 8))
  {
    operator new();
  }

  return result;
}

void *std::__val_expr<std::_BinaryOp<std::bit_and<BOOL>,std::valarray<BOOL>,std::__val_expr<std::_UnaryOp<std::logical_not<BOOL>,std::valarray<BOOL> const&>>>>::operator std::valarray<BOOL>(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*(*(a2 + 8) + 8) != **(a2 + 8))
  {
    operator new();
  }

  return result;
}

void *std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(void *result, _WORD *a2, _WORD *a3)
{
  v5 = result;
  v6 = result[2];
  v7 = result[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v6 - v7) << 7) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  if (v8 == v10)
  {
    result = std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(result);
    v9 = v5[5];
    v7 = v5[1];
    v10 = v5[4] + v9;
  }

  v11 = (*(v7 + ((v10 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v10 & 0x3FF));
  *v11 = *a2;
  v11[1] = *a3;
  v5[5] = v9 + 1;
  return result;
}

void *std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<std::pair<unsigned short,unsigned short>&>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 7) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7 & 0x3FF)) = *a2;
  ++v3[5];
  return result;
}

BOOL nms::PyramidNMS<unsigned short,double,unsigned char>::isQuadSizeEqualOrLarger(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a1[5];
  if (v5 <= a2 || v5 <= a4)
  {
    std::__throw_out_of_range[abi:ne200100]("deque");
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (*(v8 + 8 * ((v7 + a2) / 0x14)) + 200 * ((v7 + a2) % 0x14));
  v10 = (*(v8 + 8 * ((v7 + a4) / 0x14)) + 200 * ((v7 + a4) % 0x14));
  v11 = *(v9[17] + 8 * ((v9[20] + 4) / 0x55uLL)) + 48 * ((v9[20] + 4) % 0x55uLL);
  v12 = *(*(*(v11 + 8) + (((*(v11 + 32) + a3) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v11 + 32) + a3) & 0x3FFLL));
  v13 = v9[23];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v9 + 23;
  do
  {
    v15 = v13[4];
    v16 = v15 >= 3;
    v17 = v15 < 3;
    if (v16)
    {
      v14 = v13;
    }

    v13 = v13[v17];
  }

  while (v13);
  if (v14 == v9 + 23 || v14[4] > 3uLL || (v18 = v14[5], v18 > 8))
  {
LABEL_13:
    v19 = 0.0;
  }

  else
  {
    v19 = dbl_1B42AFA98[v18];
  }

  v35 = *(v9[11] + (((v9[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v9 + 112) + 3);
  v36 = *&v19 * v12;
  v37 = v19;
  v38 = 1;
  std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v33, &v35);
  v20 = *(v10[17] + 8 * ((v10[20] + 4) / 0x55uLL)) + 48 * ((v10[20] + 4) % 0x55uLL);
  v21 = *(*(*(v20 + 8) + (((*(v20 + 32) + a5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v20 + 32) + a5) & 0x3FFLL));
  v22 = v10[23];
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = v10 + 23;
  do
  {
    v24 = v22[4];
    v16 = v24 >= 3;
    v25 = v24 < 3;
    if (v16)
    {
      v23 = v22;
    }

    v22 = v22[v25];
  }

  while (v22);
  if (v23 == v10 + 23 || v23[4] > 3uLL || (v26 = v23[5], v26 > 8))
  {
LABEL_24:
    v27 = 0.0;
  }

  else
  {
    v27 = dbl_1B42AFA98[v26];
  }

  v35 = *(v10[11] + (((v10[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v10 + 112) + 3);
  v36 = *&v27 * v21;
  v37 = v27;
  v38 = 1;
  std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&__p, &v35);
  v28 = nms::areaOfQuad<double>(&v33);
  v29 = nms::areaOfQuad<double>(&__p);
  if (__p)
  {
    if (v32 != __p)
    {
      v32 += (__p - v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  if (v33)
  {
    if (v34 != v33)
    {
      v34 += (v33 - v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v33);
  }

  return v28 >= v29;
}

void sub_1B4249EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x400;
  v4 = v2 - 1024;
  if (!v3)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = v8 - *a1;
    if (v7 - a1[1] < v9)
    {
      if (v8 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v12 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v10);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v11 = *v5;
  a1[1] = v5 + 1;
  return std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(a1, &v11);
}

void sub_1B424A0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double nms::areaOfQuad<double>(double **a1)
{
  v16[0] = 0;
  v16[1] = 0;
  std::valarray<double>::resize(v16, 2uLL);
  __p[0] = 0;
  __p[1] = 0;
  std::valarray<double>::resize(__p, 2uLL);
  v2 = *a1;
  v3 = (*a1)[2] - **a1;
  v4 = v16[0];
  *v16[0] = v3;
  v4[1] = v2[3] - v2[1];
  v5 = v2[6] - *v2;
  v6 = __p[0];
  *__p[0] = v5;
  v7 = v2[7] - v2[1];
  v6[1] = v7;
  v8 = *v4;
  v9 = v4[1];
  *v4 = v2[2] - v2[4];
  v4[1] = v2[3] - v2[5];
  v10 = v2[6] - v2[4];
  *v6 = v10;
  v11 = v2[7] - v2[5];
  v6[1] = v11;
  v12 = *v4;
  v13 = v4[1];
  operator delete(v6);
  operator delete(v4);
  return fabs(v8 * v7 - v5 * v9) * 0.5 + fabs(v12 * v11 - v10 * v13) * 0.5;
}

void sub_1B424A214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nms::PyramidNMS<unsigned short,double,unsigned char>::getContainedDatums(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[1];
  v7 = a4[2];
  a4[5] = 0;
  v8 = (v7 - v6) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v9 = a4[2];
      v6 = (a4[1] + 8);
      a4[1] = v6;
      v8 = (v9 - v6) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v10 = 512;
    goto LABEL_7;
  }

  if (v8 == 2)
  {
    v10 = 1024;
LABEL_7:
    a4[4] = v10;
  }

  v11 = *(a1 + 968);
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      operator new();
    }
  }

  return 0;
}

void sub_1B424A504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nms::PyramidNMS<unsigned short,double,unsigned char>::processContainmentOfOneDatum(uint64_t result, unsigned int a2, unsigned int a3, void *a4, void *a5, void *a6)
{
  v468 = *MEMORY[0x1E69E9840];
  v431 = result;
  if (*(*(*(*(result + 112) + (((*(result + 136) + a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 136) + a2)) + a3))
  {
    return result;
  }

  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a2;
  v422 = a2;
  v416 = a3;
  do
  {
    if (*(*(*(*(v431 + 160) + (((*(v431 + 184) + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 184) + v10)) + v416))
    {
      return result;
    }

    v11 = v7[5];
    if (!v11)
    {
      return result;
    }

    v436 = 0u;
    v437 = 0u;
    v435 = 0u;
    v12 = v7[1];
    if (v7[2] == v12)
    {
      v19 = 0;
      v21 = 0;
      v18 = 0;
      v20 = 0;
    }

    else
    {
      v13 = v7[4];
      v14 = (v12 + 8 * (v13 >> 10));
      v15 = (*v14 + 4 * (v13 & 0x3FF));
      v16 = *(v12 + (((v13 + v11) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v13 + v11) & 0x3FF);
      if (v15 == v16)
      {
        v19 = 0;
        v21 = 0;
        v18 = 0;
        v20 = 0;
      }

      else
      {
        do
        {
          *&v460.f64[0] = *v15 ^ (16 * v15[1]);
          std::deque<unsigned long>::push_back(&v435, &v460);
          v15 += 2;
          if ((v15 - *v14) == 4096)
          {
            v17 = v14[1];
            ++v14;
            v15 = v17;
          }
        }

        while (v15 != v16);
        v18 = *(&v435 + 1);
        v19 = *(&v437 + 1);
        v20 = v437;
        v21 = (*(&v435 + 1) + 8 * (v437 >> 9));
        if (v436 != *(&v435 + 1))
        {
          v22 = (*v21 + 8 * (v437 & 0x1FF));
          v23 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
          v24 = *v23 + 8 * ((*(&v437 + 1) + v437) & 0x1FF);
          v10 = v422;
          goto LABEL_17;
        }
      }

      v10 = v422;
    }

    v22 = 0;
    v24 = 0;
    v23 = (v18 + 8 * ((v19 + v20) >> 9));
LABEL_17:
    std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__less<void,void>>(v21, v22, v23, v24);
    v433 = 0u;
    v434 = 0u;
    v432 = 0u;
    v25 = v7[1];
    if (v7[2] != v25)
    {
      v26 = v7[4];
      v27 = (v25 + 8 * (v26 >> 10));
      v28 = *v27;
      v29 = &(*v27)[2 * (v26 & 0x3FF)];
      v30 = *(v25 + (((v7[5] + v26) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v7[5] + v26) & 0x3FF);
      for (i = v30; ; v30 = i)
      {
        if (v29 == v30)
        {
          goto LABEL_120;
        }

        v31 = *v29;
        v428 = v29;
        v32 = v29[1];
        if (v433 == *(&v432 + 1))
        {
          break;
        }

        v33 = (*(&v432 + 1) + 8 * (v434 >> 10));
        v34 = *v33;
        v35 = &(*v33)[2 * (v434 & 0x3FF)];
        v36 = *(*(&v432 + 1) + (((*(&v434 + 1) + v434) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v434 + 1) + v434) & 0x3FF);
        if (v35 != v36)
        {
          while (*v35 != v31 || v35[1] != v32)
          {
            v35 += 2;
            if (v35 - v34 == 4096)
            {
              v37 = v33[1];
              ++v33;
              v34 = v37;
              v35 = v37;
            }

            if (v35 == v36)
            {
              goto LABEL_29;
            }
          }
        }

        if (v35 == v36)
        {
          break;
        }

LABEL_117:
        v29 = v428 + 2;
        if ((v428 + 2) - v28 == 4096)
        {
          v101 = v27[1];
          ++v27;
          v28 = v101;
          v29 = v101;
        }
      }

LABEL_29:
      nms::PyramidNMS<unsigned short,double,unsigned char>::computeConstitutedIndices(v457, v431, v31, v32, (v431 + 104));
      v38 = v457[1];
      v39 = v458;
      if (v458 == v457[1])
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v449 = 0u;
        v450 = 0u;
        *__p = 0u;
      }

      else
      {
        v40 = v459;
        v41 = v459 >> 10;
        v42 = v457[1] + 8 * (v459 >> 10);
        v43 = *v42;
        v44 = (*v42 + 4 * (v459 & 0x3FF));
        v45 = *(v457[1] + (((*(&v459 + 1) + v459) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v459 + 1) + v459) & 0x3FF);
        if (v44 != v45)
        {
          while (*v44 != v9 || v44[1] != v8)
          {
            v44 += 2;
            if (v44 - v43 == 4096)
            {
              v46 = *(v42 + 1);
              v42 += 8;
              v43 = v46;
              v44 = v46;
            }

            if (v44 == v45)
            {
              goto LABEL_40;
            }
          }
        }

        if (v44 != v45)
        {
          std::deque<std::pair<unsigned short,unsigned short>>::erase(v457, v42, v44);
          v40 = v459;
          v38 = v457[1];
          v39 = v458;
          v41 = v459 >> 10;
        }

LABEL_40:
        v449 = 0u;
        v450 = 0u;
        *__p = 0u;
        if (v39 == v38 || (v51 = &v38[8 * v41], v52 = (*v51 + 4 * (v40 & 0x3FF)), v53 = *&v38[((*(&v459 + 1) + v40) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((*(&v459 + 1) + v40) & 0x3FF), v52 == v53))
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
        }

        else
        {
          do
          {
            *&v460.f64[0] = *v52 ^ (16 * v52[1]);
            std::deque<unsigned long>::push_back(__p, &v460);
            v52 += 2;
            if ((v52 - *v51) == 4096)
            {
              v54 = *(v51 + 1);
              v51 += 8;
              v52 = v54;
            }
          }

          while (v52 != v53);
          v49 = __p[1];
          v47 = *(&v450 + 1);
          v50 = v450;
          v48 = __p[1] + 8 * (v450 >> 9);
          if (v449 != __p[1])
          {
            v55 = (*v48 + 8 * (v450 & 0x1FF));
            v56 = __p[1] + 8 * ((*(&v450 + 1) + v450) >> 9);
            v57 = *v56 + 8 * ((*(&v450 + 1) + v450) & 0x1FF);
LABEL_49:
            std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__less<void,void>>(v48, v55, v56, v57);
            std::deque<unsigned long>::deque(&v443, *(&v450 + 1) + *(&v437 + 1));
            v425 = v27;
            v58 = (__p[1] + 8 * (v450 >> 9));
            if (v449 == __p[1])
            {
              v59 = 0;
              v61 = 0;
              v60 = (__p[1] + 8 * ((*(&v450 + 1) + v450) >> 9));
            }

            else
            {
              v59 = (*v58 + 8 * (v450 & 0x1FF));
              v60 = (__p[1] + 8 * ((*(&v450 + 1) + v450) >> 9));
              v61 = (*v60 + 8 * ((*(&v450 + 1) + v450) & 0x1FF));
            }

            v62 = (*(&v435 + 1) + 8 * (v437 >> 9));
            if (v436 == *(&v435 + 1))
            {
              v63 = 0;
              v64 = 0;
            }

            else
            {
              v63 = (*v62 + 8 * (v437 & 0x1FF));
              v64 = *(*(&v435 + 1) + (((*(&v437 + 1) + v437) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v437 + 1) + v437) & 0x1FF);
            }

            v65 = &v444[8 * (v446 >> 9)];
            if (v445 == v444)
            {
              v66 = 0;
            }

            else
            {
              v66 = (*v65 + 8 * (v446 & 0x1FF));
            }

            while (v59 != v61 && v63 != v64)
            {
              v68 = *v59;
              if (*v59 >= *v63)
              {
                if (*v63 >= v68)
                {
                  v59 += 8;
                  if (&v59[-*v58] == 4096)
                  {
                    v71 = v58[1];
                    ++v58;
                    v59 = v71;
                  }
                }

                if ((++v63 - *v62) == 4096)
                {
                  v72 = v62[1];
                  ++v62;
                  v63 = v72;
                }
              }

              else
              {
                *v66 = v68;
                v59 += 8;
                if (&v59[-*v58] == 4096)
                {
                  v69 = v58[1];
                  ++v58;
                  v59 = v69;
                }

                v66 += 8;
                if (&v66[-*v65] == 4096)
                {
                  v70 = *(v65 + 1);
                  v65 += 8;
                  v66 = v70;
                }
              }
            }

            if (v58 == v60)
            {
              std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v460, v59, v61, v65, v66);
              v83 = v460.f64[1];
              v84 = v461;
            }

            else
            {
              v74 = *v58;
              v73 = v58 + 1;
              std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v460, v59, (v74 + 4096), v65, v66);
              v75 = *&v460.f64[1];
              v76 = v461;
              if (v73 != v60)
              {
                v77 = **&v460.f64[1];
                do
                {
                  v78 = 0;
                  v79 = *v73;
                  for (++v75; ; ++v75)
                  {
                    v80 = v77 - v76 + 4096;
                    if ((4096 - v78) >> 3 >= v80 >> 3)
                    {
                      v81 = v80 >> 3;
                    }

                    else
                    {
                      v81 = (4096 - v78) >> 3;
                    }

                    if (v81)
                    {
                      memmove(v76, (v79 + v78), 8 * v81);
                    }

                    v78 += 8 * v81;
                    if (v78 == 4096)
                    {
                      break;
                    }

                    v82 = *v75;
                    v77 = v82;
                    v76 = v82;
                  }

                  v76 += 8 * v81;
                  v77 = *(v75 - 1);
                  if (v77 + 4096 == v76)
                  {
                    v77 = *v75;
                    v76 = *v75;
                  }

                  else
                  {
                    --v75;
                  }

                  ++v73;
                }

                while (v73 != v60);
              }

              std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v460, *v60, v61, v75, v76);
              v83 = v460.f64[1];
              v84 = v461;
              v7 = a4;
              v6 = a5;
              v8 = a3;
            }

            v10 = v422;
            v85 = &v444[8 * (v446 >> 9)];
            v9 = a2;
            v27 = v425;
            if (v445 == v444)
            {
              v86 = 0;
            }

            else
            {
              v86 = *v85 + 8 * (v446 & 0x1FF);
            }

            if (v84 == v86)
            {
              v87 = 0;
            }

            else
            {
              v87 = ((v84 - **&v83) >> 3) + ((*&v83 - v85) << 6) - ((v86 - *v85) >> 3);
            }

            std::deque<unsigned long>::resize(&v443, v87);
            if (v447)
            {
              std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<std::pair<unsigned short,unsigned short>&>(a6, v428);
            }

            std::deque<unsigned long>::deque(&v438, *(&v450 + 1) + *(&v437 + 1));
            v89 = (*(&v435 + 1) + 8 * (v437 >> 9));
            if (v436 == *(&v435 + 1))
            {
              v90 = 0;
              v92 = 0;
              v91 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
            }

            else
            {
              v90 = (*v89 + 8 * (v437 & 0x1FF));
              v91 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
              v92 = (*v91 + 8 * ((*(&v437 + 1) + v437) & 0x1FF));
            }

            v93 = __p[1] + 8 * (v450 >> 9);
            if (v449 == __p[1])
            {
              v94 = 0;
              v96 = 0;
              v95 = __p[1] + 8 * ((*(&v450 + 1) + v450) >> 9);
            }

            else
            {
              v94 = (*v93 + 8 * (v450 & 0x1FF));
              v95 = __p[1] + 8 * ((*(&v450 + 1) + v450) >> 9);
              v96 = (*v95 + 8 * ((WORD4(v450) + v450) & 0x1FF));
            }

            if (v440 == v439)
            {
              v97 = 0;
            }

            else
            {
              v97 = (*&v439[v441 >> 9] + 8 * (v441 & 0x1FF));
            }

            std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(&v460, v89, v90, v91, v92, v93, v94, v88, v95, v96, &v439[v441 >> 9], v97);
            v98 = &v439[v441 >> 9];
            if (v440 == v439)
            {
              v99 = 0;
            }

            else
            {
              v99 = *v98 + 8 * (v441 & 0x1FF);
            }

            if (v464 == v99)
            {
              v100 = 0;
            }

            else
            {
              v100 = ((v464 - *v463) >> 3) + ((v463 - v98) << 6) - ((v99 - *v98) >> 3);
            }

            std::deque<unsigned long>::resize(&v438, v100);
            if (!v442)
            {
              std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<std::pair<unsigned short,unsigned short>&>(&v432, v428);
            }

            std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v438);
            std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v443);
            std::deque<std::pair<int,int>>::~deque[abi:ne200100](__p);
            std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v457);
            v28 = *v425;
            goto LABEL_117;
          }
        }
      }

      v55 = 0;
      v57 = 0;
      v56 = &v49[8 * ((v50 + v47) >> 9)];
      goto LABEL_49;
    }

LABEL_120:
    v102 = *(v431 + 968);
    v103 = v102[5];
    if (*(v431 + 984) == 1)
    {
      if (v103 <= v10)
      {
        goto LABEL_537;
      }

      v104 = (*(v102[1] + 8 * ((v102[4] + v10) / 0x14)) + 200 * ((v102[4] + v10) % 0x14));
      v105 = v104[23];
      if (!v105)
      {
        goto LABEL_143;
      }

      v106 = v104 + 23;
      do
      {
        v107 = v105[4];
        v108 = v107 >= 3;
        v109 = v107 < 3;
        if (v108)
        {
          v106 = v105;
        }

        v105 = v105[v109];
      }

      while (v105);
      if (v106 == v104 + 23 || v106[4] > 3uLL || (v110 = v106[5], v110 > 8))
      {
LABEL_143:
        v111 = 0.0;
      }

      else
      {
        v111 = dbl_1B42AFA98[v110];
      }

      v119 = *(v104[17] + 8 * ((v104[20] + 4) / 0x55uLL)) + 48 * ((v104[20] + 4) % 0x55uLL);
      *&v120 = *&v111 * *(*(*(v119 + 8) + (((*(v119 + 32) + v416) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v119 + 32) + v416) & 0x3FF));
      *&v460.f64[0] = *(v104[11] + (((v104[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v104 + 112) + 3);
      v460.f64[1] = v120;
      v461 = *&v111;
      v462 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v457, &v460);
      v121 = v457[0];
      nms::minMaxEdgeOfQuad<double>(v457[0]);
      if (*(&v434 + 1) == 1)
      {
        v124 = 1192;
      }

      else
      {
        v124 = 1160;
      }

      if (*(&v434 + 1) == 1)
      {
        v125 = 1200;
      }

      else
      {
        v125 = 1168;
      }

      v126 = 1208;
      if (*(&v434 + 1) != 1)
      {
        v126 = 1176;
      }

      v127 = 1184;
      if (*(&v434 + 1) == 1)
      {
        v127 = 1216;
      }

      if (v433 == *(&v432 + 1))
      {
        v135 = 1;
        if (!v121)
        {
LABEL_236:
          v8 = a3;
          goto LABEL_237;
        }
      }

      else
      {
        v128 = (*(&v432 + 1) + 8 * (v434 >> 10));
        v129 = (*v128 + 4 * (v434 & 0x3FF));
        v130 = *(*(&v432 + 1) + (((v434 + *(&v434 + 1)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v434 + *(&v434 + 1)) & 0x3FF);
        if (v129 != v130)
        {
          v131 = v122 * *(v431 + v124);
          v132 = v122 * *(v431 + v125);
          v133 = v123 * *(v431 + v126);
          v134 = v123 * *(v431 + v127);
          v135 = 1;
          while (1)
          {
            v136 = *v129;
            v137 = *(v431 + 968);
            if (v137[5] <= v136)
            {
              std::__throw_out_of_range[abi:ne200100]("deque");
            }

            v138 = (*(v137[1] + 8 * ((v137[4] + v136) / 0x14)) + 200 * ((v137[4] + v136) % 0x14));
            v139 = v138[23];
            if (!v139)
            {
              goto LABEL_168;
            }

            v140 = v138 + 23;
            do
            {
              v141 = v139[4];
              v108 = v141 >= 3;
              v142 = v141 < 3;
              if (v108)
              {
                v140 = v139;
              }

              v139 = v139[v142];
            }

            while (v139);
            if (v140 == v138 + 23 || v140[4] > 3uLL || (v143 = v140[5], v143 > 8))
            {
LABEL_168:
              v144 = 0.0;
            }

            else
            {
              v144 = dbl_1B42AFA98[v143];
            }

            v145 = *(v138[17] + 8 * ((v138[20] + 4) / 0x55uLL)) + 48 * ((v138[20] + 4) % 0x55uLL);
            v146 = *(v145 + 32) + v129[1];
            v147 = *(*(*(v145 + 8) + ((v146 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v146 & 0x3FF));
            *&v460.f64[0] = *(v138[11] + (((v138[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v138 + 112) + 3);
            *&v460.f64[1] = *&v144 * v147;
            v461 = *&v144;
            v462 = 1;
            std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(__p, &v460);
            v148 = __p[0];
            nms::minMaxEdgeOfQuad<double>(__p[0]);
            if (v149 >= v131)
            {
              break;
            }

            v152 = 0;
            v135 = 0;
            if (v148)
            {
              goto LABEL_181;
            }

LABEL_184:
            if (v152)
            {
              v129 += 2;
              if ((v129 - *v128) == 4096)
              {
                v153 = v128[1];
                ++v128;
                v129 = v153;
              }

              if (v129 != v130)
              {
                continue;
              }
            }

            v121 = v457[0];
            goto LABEL_232;
          }

          v151 = v150 >= v133;
          if (v150 > v134)
          {
            v151 = 0;
          }

          v152 = v149 <= v132 && v151;
          if (v149 <= v132)
          {
            v135 &= v151;
          }

          else
          {
            v135 = 0;
          }

          if (!v148)
          {
            goto LABEL_184;
          }

LABEL_181:
          if (__p[1] != v148)
          {
            __p[1] = __p[1] + ((v148 - __p[1] + 7) & 0xFFFFFFFFFFFFFFF8);
          }

          operator delete(v148);
          goto LABEL_184;
        }

        v135 = 1;
LABEL_232:
        v10 = v422;
        if (!v121)
        {
          goto LABEL_236;
        }
      }

      if (v457[1] != v121)
      {
        v457[1] = v457[1] + ((v121 - v457[1] + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      operator delete(v121);
      goto LABEL_236;
    }

    if (v103 <= v10)
    {
LABEL_537:
      std::__throw_out_of_range[abi:ne200100]("deque");
    }

    v112 = (*(v102[1] + 8 * ((v102[4] + v10) / 0x14)) + 200 * ((v102[4] + v10) % 0x14));
    v113 = v112[23];
    if (!v113)
    {
      goto LABEL_189;
    }

    v114 = v112 + 23;
    do
    {
      v115 = v113[4];
      v108 = v115 >= 3;
      v116 = v115 < 3;
      if (v108)
      {
        v114 = v113;
      }

      v113 = v113[v116];
    }

    while (v113);
    if (v114 == v112 + 23 || v114[4] > 3uLL || (v117 = v114[5], v117 > 8))
    {
LABEL_189:
      v118 = 0.0;
    }

    else
    {
      v118 = dbl_1B42AFA98[v117];
    }

    v154 = *(v112[17] + 8 * ((v112[20] + 4) / 0x55uLL)) + 48 * ((v112[20] + 4) % 0x55uLL);
    *&v155 = *&v118 * *(*(*(v154 + 8) + (((*(v154 + 32) + v416) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v154 + 32) + v416) & 0x3FF));
    *&v460.f64[0] = *(v112[11] + (((v112[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v112 + 112) + 3);
    v460.f64[1] = v155;
    v461 = *&v118;
    v462 = 1;
    std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v457, &v460);
    v156 = v457[0];
    if (v433 == *(&v432 + 1) || (v157 = (*(&v432 + 1) + 8 * (v434 >> 10)), v158 = (*v157 + 4 * (v434 & 0x3FF)), v159 = *(*(&v432 + 1) + (((*(&v434 + 1) + v434) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v434 + 1) + v434) & 0x3FF), v158 == v159))
    {
      v135 = 1;
      v184 = v457[1];
LABEL_225:
      if (v184 != v156)
      {
        v457[1] = &v184[(v156 - v184 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v156);
      goto LABEL_228;
    }

    v160 = *(v457[0] + 1);
    v161 = sqrt((*v457[0] - *(v457[0] + 6)) * (*v457[0] - *(v457[0] + 6)) + (v160 - *(v457[0] + 7)) * (v160 - *(v457[0] + 7)));
    v162 = sqrt((*(v457[0] + 2) - *v457[0]) * (*(v457[0] + 2) - *v457[0]) + (*(v457[0] + 3) - v160) * (*(v457[0] + 3) - v160));
    v163 = fabs(v161);
    v164 = fabs(v162);
    v135 = 1;
    do
    {
      v165 = *(v431 + 968);
      v166 = *v158;
      if (v165[5] <= v166)
      {
        std::__throw_out_of_range[abi:ne200100]("deque");
      }

      v167 = (*(v165[1] + 8 * ((v165[4] + v166) / 0x14)) + 200 * ((v165[4] + v166) % 0x14));
      v168 = v167[23];
      if (!v168)
      {
        goto LABEL_204;
      }

      v169 = v167 + 23;
      do
      {
        v170 = v168[4];
        v108 = v170 >= 3;
        v171 = v170 < 3;
        if (v108)
        {
          v169 = v168;
        }

        v168 = v168[v171];
      }

      while (v168);
      if (v169 == v167 + 23 || v169[4] > 3uLL || (v172 = v169[5], v172 > 8))
      {
LABEL_204:
        v173 = 0.0;
      }

      else
      {
        v173 = dbl_1B42AFA98[v172];
      }

      v174 = *(v167[17] + 8 * ((v167[20] + 4) / 0x55uLL)) + 48 * ((v167[20] + 4) % 0x55uLL);
      v175 = *(v174 + 32) + v158[1];
      v176 = *(*(*(v174 + 8) + ((v175 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v175 & 0x3FF));
      *&v460.f64[0] = *(v167[11] + (((v167[14] + 3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v167 + 112) + 3);
      *&v460.f64[1] = *&v173 * v176;
      v461 = *&v173;
      v462 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(__p, &v460);
      v177 = *__p[0];
      v178 = -1.0;
      if (v163 > 2.22044605e-16)
      {
        v179 = vsubq_f64(v177, *(__p[0] + 3));
        v178 = sqrt(vaddvq_f64(vmulq_f64(v179, v179))) / v161;
      }

      if (v178 < *(v431 + 1160) || v178 > *(v431 + 1168))
      {
        goto LABEL_213;
      }

      v180 = -1.0;
      if (v164 > 2.22044605e-16)
      {
        v181 = vsubq_f64(*(__p[0] + 1), v177);
        v180 = sqrt(vaddvq_f64(vmulq_f64(v181, v181))) / v162;
      }

      if (v180 >= *(v431 + 1176) && v180 <= *(v431 + 1184))
      {
        v182 = 1;
      }

      else
      {
LABEL_213:
        v182 = 0;
        v135 = 0;
      }

      if (__p[1] != __p[0])
      {
        __p[1] = __p[1] + ((__p[0] - __p[1] + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      operator delete(__p[0]);
      if (!v182)
      {
        break;
      }

      v158 += 2;
      if ((v158 - *v157) == 4096)
      {
        v183 = v157[1];
        ++v157;
        v158 = v183;
      }
    }

    while (v158 != v159);
    v156 = v457[0];
    if (v457[0])
    {
      v184 = v457[1];
      v8 = a3;
      goto LABEL_225;
    }

    v8 = a3;
LABEL_228:
    v10 = v422;
LABEL_237:
    v185 = 0;
    if (v9 == 1 && (*(v431 + 1153) & 1) != 0)
    {
      v185 = (v6[5] == 0) & v135;
    }

    if (*(&v434 + 1) < 2uLL)
    {
      if (*(&v434 + 1) != 1)
      {
        goto LABEL_512;
      }

      v204 = *(v431 + 968);
      v205 = v204[5];
      if (v205 <= v10)
      {
        goto LABEL_538;
      }

      v206 = v204[4];
      v207 = v204[1];
      v208 = (*(v207 + 8 * ((v206 + v10) / 0x14)) + 200 * ((v206 + v10) % 0x14));
      v209 = v208 + 23;
      v210 = v208[23];
      if (!v210)
      {
        goto LABEL_340;
      }

      v211 = v208[23];
      do
      {
        v212 = v211;
        v211 = *v211;
      }

      while (v211);
      if (v212 == v209 || v212[4] || (v213 = v212[5] - 5, v213 > 3))
      {
LABEL_340:
        v214 = -1;
        if (!v210)
        {
          goto LABEL_346;
        }
      }

      else
      {
        v214 = qword_1B42AFA78[v213];
      }

      do
      {
        v265 = v210;
        v210 = *v210;
      }

      while (v210);
      if (v265 != v209 && !v265[4])
      {
        v266 = v265[5];
        if (v266 <= 8)
        {
          v267 = dbl_1B42AFA98[v266];
          goto LABEL_347;
        }
      }

LABEL_346:
      v267 = 0.0;
LABEL_347:
      v268 = v214 + *&v267 * v416;
      v270 = (*(v208[11] + ((v208[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v208[14]);
      v269 = *v270;
      v271 = 0.0;
      if (v268 < (v270[1] - *v270) >> 3)
      {
        v271 = *(v269 + 8 * v268);
      }

      v272 = (*(*(&v432 + 1) + ((v434 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v434 & 0x3FF));
      v273 = *(v431 + 1144);
      if (v273 < 2)
      {
        goto LABEL_355;
      }

      v274 = *v272;
      if (v205 <= v274)
      {
        goto LABEL_538;
      }

      v275 = *(v208[17] + 8 * (v208[20] / 0x55uLL)) + 48 * (v208[20] % 0x55uLL);
      v276 = *(v207 + 8 * ((v206 + v274) / 0x14)) + 200 * ((v206 + v274) % 0x14);
      v277 = *(*(v276 + 136) + 8 * (*(v276 + 160) / 0x55uLL)) + 48 * (*(v276 + 160) % 0x55uLL);
      v278 = (*(*(v275 + 8) + (((*(v275 + 32) + v416) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v275 + 32) + v416) & 0x3FF));
      v279 = v278[1] - *v278 + 1;
      v280 = v272[1];
      v281 = (*(*(v277 + 8) + (((*(v277 + 32) + v280) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v277 + 32) + v280) & 0x3FF));
      v282 = v281[1] - *v281;
      v283 = v282 + 1;
      v284 = v279 <= v282 + 1 ? v282 + 1 : v279;
      if (v284 <= v273)
      {
        if (v279 < v283)
        {
          goto LABEL_392;
        }

        v285 = v279 > v283;
      }

      else
      {
LABEL_355:
        v285 = 0;
      }

      isQuadSizeEqualOrLarger = 0;
      if (v285 & 1) == 0 && (*(v431 + 1152))
      {
        isQuadSizeEqualOrLarger = nms::PyramidNMS<unsigned short,double,unsigned char>::isQuadSizeEqualOrLarger(v204, v9, v8, *v272, v272[1]);
        v285 = !isQuadSizeEqualOrLarger;
        v8 = a3;
      }

      if ((v185 | v285 | isQuadSizeEqualOrLarger))
      {
        if ((v285 & 1) == 0)
        {
          LODWORD(v274) = *v272;
          LODWORD(v280) = v272[1];
LABEL_392:
          v303 = v7[4];
          v304 = v7[1];
          v305 = v7[2];
          v306 = v304 + 8 * (v303 >> 10);
          if (v305 == v304)
          {
            v307 = 0;
          }

          else
          {
            v307 = *v306 + 4 * (v7[4] & 0x3FFLL);
          }

          v10 = v422;
          v308 = v7[5] + v303;
          v309 = v308 >> 10;
          v310 = v308 & 0x3FF;
          while (1)
          {
            v311 = v307;
            do
            {
              if (v305 == v304)
              {
                v312 = 0;
              }

              else
              {
                v312 = *(v304 + 8 * v309) + 4 * v310;
              }

              if (v311 == v312)
              {
                goto LABEL_512;
              }

              if (*v311 == v274 && v311[1] == v280)
              {
                std::deque<std::pair<unsigned short,unsigned short>>::erase(v7, v306, v307);
                goto LABEL_512;
              }

              v311 += 2;
              v307 += 4;
            }

            while (*v306 + 4096 != v307);
            v313 = *(v306 + 8);
            v306 += 8;
            v307 = v313;
          }
        }

LABEL_381:
        v297 = v6[5];
        if (v297)
        {
          std::deque<unsigned long>::deque(v457, *(&v437 + 1) + v297);
          v299 = (*(&v435 + 1) + 8 * (v437 >> 9));
          if (v436 == *(&v435 + 1))
          {
            v300 = 0;
            v302 = 0;
            v301 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
          }

          else
          {
            v300 = (*v299 + 8 * (v437 & 0x1FF));
            v301 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
            v302 = (*v301 + 8 * ((*(&v437 + 1) + v437) & 0x1FF));
          }

          v398 = v6[4];
          v399 = v6[1];
          v400 = (v399 + 8 * (v398 >> 9));
          if (v6[2] == v399)
          {
            v401 = 0;
            v404 = 0;
            v403 = (v399 + 8 * ((v6[5] + v398) >> 9));
          }

          else
          {
            v401 = (*v400 + 8 * (v6[4] & 0x1FFLL));
            v402 = v6[5] + v398;
            v403 = (v399 + 8 * (v402 >> 9));
            v404 = (*v403 + 8 * (v402 & 0x1FF));
          }

          v8 = a3;
          v10 = v422;
          if (v458 == v457[1])
          {
            v405 = 0;
          }

          else
          {
            v405 = (*(v457[1] + (v459 >> 9)) + 8 * (v459 & 0x1FF));
          }

          std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(&v460, v299, v300, v301, v302, v400, v401, v298, v403, v404, v457[1] + (v459 >> 9), v405);
          v406 = v457[1] + 8 * (v459 >> 9);
          if (v458 == v457[1])
          {
            v407 = 0;
          }

          else
          {
            v407 = *v406 + 8 * (v459 & 0x1FF);
          }

          if (v464 == v407)
          {
            v408 = 0;
          }

          else
          {
            v408 = ((v464 - *v463) >> 3) + ((v463 - v406) << 6) - ((v407 - *v406) >> 3);
          }

          std::deque<unsigned long>::resize(v457, v408);
          if (*(&v459 + 1))
          {
            v409 = 0;
            v410 = v431;
            v411 = v416;
            *(*(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422)) + v416) = 0;
            v412 = *(*(*(v410 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v410 + 136) + v422));
            v413 = 1;
          }

          else
          {
            v412 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
            if (*(v412 + v416) != 1 || (v414 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422)), *(v414 + v416) == 1))
            {
              nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v431, v9, a3);
              v414 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422));
              v412 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
            }

            v413 = 0;
            v411 = v416;
            *(v414 + v416) = 0;
            v409 = 1;
            v410 = v431;
          }

          *(v412 + v411) = v409;
          *(*(*(*(v410 + 160) + (((*(v410 + 184) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v410 + 184) + v422)) + v411) = v413;
          std::deque<std::pair<int,int>>::~deque[abi:ne200100](v457);
        }

        else
        {
          v316 = v431;
          v10 = v422;
          v317 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
          if (*(v317 + v416) != 1 || (v318 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422)), *(v318 + v416) == 1))
          {
            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v431, v9, a3);
            v316 = v431;
            v10 = v422;
            v318 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422));
            v317 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
          }

          *(v318 + v416) = 0;
          *(v317 + v416) = 1;
          *(*(*(*(v316 + 160) + (((*(v316 + 184) + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v316 + 184) + v10)) + v416) = 0;
          v8 = a3;
        }

        goto LABEL_512;
      }

      v288 = *(v431 + 968);
      v274 = *v272;
      if (v288[5] > v274)
      {
        v289 = (*(v288[1] + 8 * ((v288[4] + v274) / 0x14)) + 200 * ((v288[4] + v274) % 0x14));
        v290 = v289[23];
        if (!v290)
        {
          goto LABEL_377;
        }

        do
        {
          v291 = v290;
          v290 = *v290;
        }

        while (v290);
        if (v291 == v289 + 23 || v291[4] || (v292 = v291[5], v292 > 8))
        {
LABEL_377:
          v293 = 0.0;
        }

        else
        {
          v293 = dbl_1B42AFA98[v292];
        }

        v294 = (*(v289[11] + ((v289[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v289[14]);
        v295 = v214 + *&v293 * v272[1];
        v296 = 0.0;
        if (v295 < (v294[1] - *v294) >> 3)
        {
          v296 = *(*v294 + 8 * v295);
        }

        if (v296 <= v271)
        {
          LODWORD(v280) = v272[1];
          goto LABEL_392;
        }

        goto LABEL_381;
      }

LABEL_538:
      std::__throw_out_of_range[abi:ne200100]("deque");
    }

    v186 = *(v431 + 968);
    v187 = v186[4];
    v188 = v186[5];
    v189 = v186[1];
    v190 = *(v189 + 8 * ((v188 + v187 - 1) / 0x14)) + 200 * ((v188 + v187 - 1) % 0x14);
    v193 = *(v190 + 184);
    v191 = v190 + 184;
    v192 = v193;
    if (!v193)
    {
      goto LABEL_245;
    }

    do
    {
      v194 = v192;
      v192 = *v192;
    }

    while (v192);
    if (v194 == v191 || v194[4])
    {
LABEL_245:
      v195 = 0;
      v196 = 9;
    }

    else
    {
      v196 = v194[5];
      if (v196 > 8)
      {
        v195 = 0;
      }

      else
      {
        v195 = *&dbl_1B42AFA98[v196];
      }
    }

    if (v188 <= v10)
    {
      goto LABEL_538;
    }

    v197 = (*(v189 + 8 * ((v187 + v10) / 0x14)) + 200 * ((v187 + v10) % 0x14));
    v198 = v197 + 23;
    v199 = v197[23];
    if (!v199)
    {
      goto LABEL_263;
    }

    v200 = v197[23];
    do
    {
      v201 = v200;
      v200 = *v200;
    }

    while (v200);
    if (v201 == v198 || v201[4] || (v202 = v201[5] - 5, v202 > 3))
    {
LABEL_263:
      v203 = -1;
      if (!v199)
      {
        goto LABEL_269;
      }
    }

    else
    {
      v203 = qword_1B42AFA78[v202];
    }

    do
    {
      v215 = v199;
      v199 = *v199;
    }

    while (v199);
    if (v215 == v198 || v215[4] || (v216 = v215[5], v216 > 8))
    {
LABEL_269:
      v217 = 0.0;
      goto LABEL_270;
    }

    v217 = dbl_1B42AFA98[v216];
LABEL_270:
    v218 = (*(v197[11] + ((v197[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v197[14]);
    v219 = v203 + *&v217 * v416;
    v220 = 0.0;
    if (v219 < (v218[1] - *v218) >> 3)
    {
      v220 = *(*v218 + 8 * v219);
    }

    v451 = 0;
    v452 = 0;
    if (v195 * *(&v434 + 1))
    {
      if (!((v195 * *(&v434 + 1)) >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v221 = 0;
    do
    {
      v222 = *(v431 + 968);
      v223 = *(*(&v432 + 1) + (((v434 + v221) >> 7) & 0x1FFFFFFFFFFFFF8));
      v224 = (v434 + v221) & 0x3FF;
      v225 = *(v223 + 4 * v224);
      if (v222[5] <= v225)
      {
        std::__throw_out_of_range[abi:ne200100]("deque");
      }

      v226 = (*(v222[1] + 8 * ((v222[4] + v225) / 0x14)) + 200 * ((v222[4] + v225) % 0x14));
      v227 = v226[23];
      if (!v227)
      {
        goto LABEL_283;
      }

      do
      {
        v228 = v227;
        v227 = *v227;
      }

      while (v227);
      if (v228 == v226 + 23 || v228[4] || (v229 = v228[5], v229 > 8))
      {
LABEL_283:
        v230 = 0.0;
      }

      else
      {
        v230 = dbl_1B42AFA98[v229];
      }

      v231 = *(v223 + 4 * v224 + 2);
      *&v460.f64[0] = *(v226[11] + ((v226[14] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v226[14];
      *&v460.f64[1] = *&v230 * v231;
      v461 = *&v230;
      v462 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v457, &v460);
      v232 = v457[0];
      v233 = v457[1];
      if (v457[1] == v457[0])
      {
        if (!v457[1])
        {
          goto LABEL_292;
        }
      }

      else
      {
        v234 = v451 + 8 * v221 * v195;
        v235 = (v457[1] - v457[0]) >> 3;
        if (v235 <= 1)
        {
          v235 = 1;
        }

        v236 = v457[0];
        do
        {
          v237 = *v236++;
          *v234++ = v237;
          --v235;
        }

        while (v235);
        v457[1] = &v233[(v232 - v233 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v232);
LABEL_292:
      ++v221;
    }

    while (v221 < *(&v434 + 1));
    if ((v185 & 1) == 0)
    {
      v8 = a3;
      v10 = v422;
      if (nms::PyramidNMS<unsigned short,double,unsigned char>::computeAggregatedScore(v431, &v432) > v220)
      {
        v259 = v6[5];
        if (v259)
        {
          std::deque<unsigned long>::deque(v457, *(&v437 + 1) + v259);
          v261 = (*(&v435 + 1) + 8 * (v437 >> 9));
          if (v436 == *(&v435 + 1))
          {
            v262 = 0;
            v264 = 0;
            v263 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
          }

          else
          {
            v262 = (*v261 + 8 * (v437 & 0x1FF));
            v263 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
            v264 = (*v263 + 8 * ((*(&v437 + 1) + v437) & 0x1FF));
          }

          v381 = v6[4];
          v382 = v6[1];
          v383 = (v382 + 8 * (v381 >> 9));
          if (v6[2] == v382)
          {
            v384 = 0;
            v387 = 0;
            v386 = (v382 + 8 * ((v6[5] + v381) >> 9));
          }

          else
          {
            v384 = (*v383 + 8 * (v6[4] & 0x1FFLL));
            v385 = v6[5] + v381;
            v386 = (v382 + 8 * (v385 >> 9));
            v387 = (*v386 + 8 * (v385 & 0x1FF));
          }

          if (v458 == v457[1])
          {
            v388 = 0;
          }

          else
          {
            v388 = (*(v457[1] + (v459 >> 9)) + 8 * (v459 & 0x1FF));
          }

          std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(&v460, v261, v262, v263, v264, v383, v384, v260, v386, v387, v457[1] + (v459 >> 9), v388);
          v389 = v457[1] + 8 * (v459 >> 9);
          if (v458 == v457[1])
          {
            v390 = 0;
          }

          else
          {
            v390 = *v389 + 8 * (v459 & 0x1FF);
          }

          if (v464 == v390)
          {
            v391 = 0;
          }

          else
          {
            v391 = ((v464 - *v463) >> 3) + ((v463 - v389) << 6) - ((v390 - *v389) >> 3);
          }

          std::deque<unsigned long>::resize(v457, v391);
          if (*(&v459 + 1))
          {
            v392 = 0;
            v393 = v431;
            v394 = v416;
            *(*(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422)) + v416) = 0;
            v395 = *(*(*(v393 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v393 + 136) + v422));
            v396 = 1;
          }

          else
          {
            v395 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
            if (*(v395 + v416) != 1 || (v397 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422)), *(v397 + v416) == 1))
            {
              nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v431, v9, a3);
              v397 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422));
              v395 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
            }

            v396 = 0;
            v394 = v416;
            *(v397 + v416) = 0;
            v392 = 1;
            v393 = v431;
          }

          *(v395 + v394) = v392;
          *(*(*(*(v393 + 160) + (((*(v393 + 184) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v393 + 184) + v422)) + v394) = v396;
          std::deque<std::pair<int,int>>::~deque[abi:ne200100](v457);
        }

        else
        {
          v314 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
          if (*(v314 + v416) != 1 || (v315 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422)), *(v315 + v416) == 1))
          {
            nms::PyramidNMS<unsigned short,double,unsigned char>::isolateDatum(v431, v9, a3);
            v315 = *(*(*(v431 + 64) + (((*(v431 + 88) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 88) + v422));
            v314 = *(*(*(v431 + 112) + (((*(v431 + 136) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v422));
          }

          *(v315 + v416) = 0;
          *(v314 + v416) = 1;
          *(*(*(*(v431 + 160) + (((*(v431 + 184) + v422) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 184) + v422)) + v416) = 0;
        }

        goto LABEL_508;
      }

      if (v196 == 5)
      {
        v287 = 5;
      }

      else
      {
        v287 = 0;
      }

      if (!v196)
      {
        v287 = 4;
      }

      if (v287 && v287 <= (v452 - v451) >> 3)
      {
        *&v460.f64[1] = &v451;
        v461 = 2;
        v462 = ((v452 - v451) >> 3) / v287;
        v463 = v287;
        v464 = &v451;
        v465 = 3;
        v466 = v462;
        v467 = v287;
        std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>,std::__val_expr<std::__slice_expr<std::valarray<double> const&>>>>::operator std::valarray<double>(&v438, &v460);
      }

      else
      {
        v438 = 0;
        v439 = 0;
      }

      if (!*(&v434 + 1))
      {
        v424 = 0;
        v415 = 0;
LABEL_466:
        v367 = v7[4];
        v368 = v7[1];
        v369 = v7[2];
        v370 = v368 + 8 * (v367 >> 10);
        if (v369 == v368)
        {
          v371 = 0;
        }

        else
        {
          v371 = *v370 + 4 * (v7[4] & 0x3FFLL);
        }

        v372 = v7[5] + v367;
        v373 = v372 >> 10;
        v374 = v372 & 0x3FF;
        v9 = a2;
LABEL_470:
        v375 = v371;
        while (1)
        {
          v376 = v369 == v368 ? 0 : *(v368 + 8 * v373) + 4 * v374;
          if (v375 == v376)
          {
            break;
          }

          if (*v375 == v424 && v375[1] == v415)
          {
            std::deque<std::pair<unsigned short,unsigned short>>::erase(v7, v370, v371);
            break;
          }

          v375 += 2;
          v371 += 4;
          if (*v370 + 4096 == v371)
          {
            v377 = *(v370 + 8);
            v370 += 8;
            v371 = v377;
            goto LABEL_470;
          }
        }

        if (v438)
        {
          if (v439 != v438)
          {
            v439 = (v439 + ((v438 - v439 + 7) & 0xFFFFFFFFFFFFFFF8));
          }

          operator delete(v438);
        }

        goto LABEL_508;
      }

      v319 = 0;
      v320 = 0;
      v415 = 0;
      v424 = 0;
      v321 = 0.0;
      while (1)
      {
        v322 = *(v438 + v320);
        v323 = (*(*(&v432 + 1) + (((v434 + v320) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v434 + v320) & 0x3FF));
        v324 = *v323;
        v325 = v323[1];
        v458 = 0u;
        v459 = 0u;
        *v457 = 0u;
        v326 = *(v431 + 968);
        if (!v326)
        {
          break;
        }

        v327 = *(v326 + 40);
        LOWORD(v460.f64[0]) = 0;
        if (!v327)
        {
          break;
        }

        v427 = v319;
        v430 = v320;
        v328 = 0;
        v329 = 0;
        do
        {
          v330 = *(*(v431 + 736) + 8 * ((*(v431 + 760) + v324) / 0x55uLL)) + 48 * ((*(v431 + 760) + v324) % 0x55uLL);
          v331 = (*(*(v330 + 8) + 8 * ((*(v330 + 32) + v329) / 0x55uLL)) + 48 * ((*(v330 + 32) + v329) % 0x55uLL));
          if (v331[5])
          {
            v332 = (*(v331[1] + 8 * ((v331[4] + v325) / 0x55uLL)) + 48 * ((v331[4] + v325) % 0x55uLL));
            v333 = v332[5];
            if (v333)
            {
              v334 = v332[1];
              if (v332[2] != v334)
              {
                v335 = v332[4];
                v336 = (v334 + 8 * (v335 >> 11));
                v337 = *v336;
                v338 = &(*v336)[2 * (v335 & 0x7FF)];
                v339 = *(v334 + (((v335 + v333) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v335 + v333) & 0x7FF);
                while (v338 != v339)
                {
                  v340 = *v338;
                  LOWORD(__p[0]) = *v338;
                  if (!*(v431 + 144) || (*(*(*(*(v431 + 112) + (((*(v431 + 136) + v328) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v328)) + v340) & 1) == 0)
                  {
                    std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(v457, &v460, __p);
                    v337 = *v336;
                  }

                  v338 += 2;
                  if (v338 - v337 == 4096)
                  {
                    v341 = v336[1];
                    ++v336;
                    v337 = v341;
                    v338 = v341;
                  }
                }
              }
            }
          }

          LOWORD(v460.f64[0]) = ++v328;
          v329 = v328;
        }

        while (v327 > v328);
        v449 = 0u;
        v450 = 0u;
        *__p = 0u;
        if (v458 == v457[1])
        {
          v347 = 0;
          v349 = 0;
          v346 = 0;
          v348 = 0;
          v7 = a4;
          v6 = a5;
          v8 = a3;
          goto LABEL_441;
        }

        v342 = v457[1] + 8 * (v459 >> 10);
        v343 = (*v342 + 4 * (v459 & 0x3FF));
        v344 = *(v457[1] + (((*(&v459 + 1) + v459) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v459 + 1) + v459) & 0x3FF);
        v7 = a4;
        v6 = a5;
        v8 = a3;
        if (v343 == v344)
        {
          v347 = 0;
          v349 = 0;
          v346 = 0;
          v348 = 0;
LABEL_441:
          v10 = v422;
          v319 = v427;
          v320 = v430;
LABEL_442:
          v350 = 0;
          v352 = 0;
          v351 = &v346[8 * ((v348 + v347) >> 9)];
          goto LABEL_443;
        }

        do
        {
          *&v460.f64[0] = *v343 ^ (16 * v343[1]);
          std::deque<unsigned long>::push_back(__p, &v460);
          v343 += 2;
          if ((v343 - *v342) == 4096)
          {
            v345 = v342[1];
            ++v342;
            v343 = v345;
          }
        }

        while (v343 != v344);
        v346 = __p[1];
        v347 = *(&v450 + 1);
        v348 = v450;
        v349 = __p[1] + 8 * (v450 >> 9);
        v319 = v427;
        v320 = v430;
        if (v449 == __p[1])
        {
          v10 = v422;
          goto LABEL_442;
        }

        v350 = (*v349 + 8 * (v450 & 0x1FF));
        v351 = __p[1] + 8 * ((*(&v450 + 1) + v450) >> 9);
        v352 = *v351 + 8 * ((*(&v450 + 1) + v450) & 0x1FF);
        v10 = v422;
LABEL_443:
        std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__less<void,void>>(v349, v350, v351, v352);
        std::deque<unsigned long>::deque(&v443, *(&v450 + 1) + *(&v437 + 1));
        v354 = (*(&v435 + 1) + 8 * (v437 >> 9));
        if (v436 == *(&v435 + 1))
        {
          v355 = 0;
          v357 = 0;
          v356 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
        }

        else
        {
          v355 = (*v354 + 8 * (v437 & 0x1FF));
          v356 = (*(&v435 + 1) + 8 * ((*(&v437 + 1) + v437) >> 9));
          v357 = (*v356 + 8 * ((*(&v437 + 1) + v437) & 0x1FF));
        }

        v358 = __p[1] + 8 * (v450 >> 9);
        if (v449 == __p[1])
        {
          v359 = 0;
          v361 = 0;
          v360 = __p[1] + 8 * ((*(&v450 + 1) + v450) >> 9);
        }

        else
        {
          v359 = (*v358 + 8 * (v450 & 0x1FF));
          v360 = __p[1] + 8 * ((*(&v450 + 1) + v450) >> 9);
          v361 = (*v360 + 8 * ((WORD4(v450) + v450) & 0x1FF));
        }

        if (v445 == v444)
        {
          v362 = 0;
        }

        else
        {
          v362 = (*&v444[8 * (v446 >> 9)] + 8 * (v446 & 0x1FF));
        }

        std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(&v460, v354, v355, v356, v357, v358, v359, v353, v360, v361, &v444[8 * (v446 >> 9)], v362);
        v363 = &v444[8 * (v446 >> 9)];
        if (v445 == v444)
        {
          v364 = 0;
        }

        else
        {
          v364 = *v363 + 8 * (v446 & 0x1FF);
        }

        if (v464 == v364)
        {
          v365 = 0;
        }

        else
        {
          v365 = ((v464 - *v463) >> 3) + ((v463 - v363) << 6) - ((v364 - *v363) >> 3);
        }

        std::deque<unsigned long>::resize(&v443, v365);
        v366 = v447;
        if (v447 <= 1)
        {
          v366 = 1;
        }

        if (v322 * v366 > v321 * v319)
        {
          v424 = v324;
          v415 = v325;
          v319 = v366;
          v321 = v322;
        }

        std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v443);
        std::deque<std::pair<int,int>>::~deque[abi:ne200100](__p);
        std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](v457);
        if (++v320 >= *(&v434 + 1))
        {
          goto LABEL_466;
        }
      }

      v347 = 0;
      v349 = 0;
      v346 = 0;
      v348 = 0;
      v449 = 0uLL;
      v450 = 0uLL;
      *__p = 0uLL;
      goto LABEL_442;
    }

    v238 = *(v431 + 1136);
    v239 = v238 < 0.0 || v238 > 1.0;
    v10 = v422;
    if (v239)
    {
      goto LABEL_331;
    }

    v240 = v195 <= 1 ? 1 : v195;
    v241 = ((v452 - v451) >> 3) / v240;
    v429 = v241 - 2;
    if (v241 < 2)
    {
      goto LABEL_331;
    }

    *&v460.f64[0] = &v451;
    v460.f64[1] = 0.0;
    v461 = v195;
    v462 = 1;
    std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(v457, &v460);
    v460 = *v457[0];
    std::valarray<double>::valarray(__p, &v460, 2uLL);
    v460 = vaddq_f64(*__p[0], *(v457[0] + 1));
    std::valarray<double>::valarray(&v443, &v460, 2uLL);
    v438 = 0;
    v439 = 0;
    std::valarray<double>::resize(&v438, 2uLL);
    v456[0] = 0;
    v456[1] = 0;
    std::valarray<double>::resize(v456, 2uLL);
    v455[0] = 0;
    v455[1] = 0;
    std::valarray<double>::resize(v455, 2uLL);
    v242 = 0;
    v243 = v456[0];
    v244 = v455[0];
    v245 = 1;
    v246 = v195;
    v247 = v438;
    v426 = v439;
    do
    {
      *&v460.f64[0] = &v451;
      *&v460.f64[1] = v246;
      v461 = v195;
      v462 = 1;
      std::__val_expr<std::__slice_expr<std::valarray<double> const&>>::operator std::valarray<double>(&v453, &v460);
      v248 = v453;
      v249 = *v453;
      *v243 = *v453;
      v243[1] = v248[1];
      *v244 = v249 + v248[2];
      v244[1] = v243[1] + v248[3];
      if (!v242)
      {
        v250 = __p[0];
        *v247 = *(__p[0] + 1) - v243[1];
        v247[1] = *v243 - *v250;
        nms::normalizeL2<double>(v247, v426);
      }

      if (nms::PyramidNMS<unsigned short,double,unsigned char>::checkValidityOfCosAngleInDistributionCheckInProcessingContainment(v431, __p, v456, &v438))
      {
        v251 = nms::PyramidNMS<unsigned short,double,unsigned char>::checkValidityOfCosAngleInDistributionCheckInProcessingContainment(v431, &v443, v455, &v438);
        v245 &= v251;
        v252 = !v251;
      }

      else
      {
        v245 = 0;
        v252 = 1;
      }

      if (v453)
      {
        if (v454 != v453)
        {
          v454 += (v453 - v454 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(v453);
      }

      if (v429 == v242)
      {
        v253 = 1;
      }

      else
      {
        v253 = v252;
      }

      ++v242;
      v246 += v195;
    }

    while ((v253 & 1) == 0);
    operator delete(v244);
    operator delete(v243);
    if (v247)
    {
      operator delete(v247);
    }

    v7 = a4;
    v6 = a5;
    v9 = a2;
    v10 = v422;
    if (v443)
    {
      if (v444 != v443)
      {
        v444 += (v443 - v444 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(v443);
    }

    if (__p[0])
    {
      if (__p[1] != __p[0])
      {
        __p[1] = __p[1] + ((__p[0] - __p[1] + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      operator delete(__p[0]);
    }

    if (v457[0])
    {
      if (v457[1] != v457[0])
      {
        v457[1] = v457[1] + ((v457[0] - v457[1] + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      operator delete(v457[0]);
    }

    if (v245)
    {
LABEL_331:
      v254 = v7[1];
      v255 = v7[2];
      v7[5] = 0;
      v256 = (v255 - v254) >> 3;
      v8 = a3;
      if (v256 >= 3)
      {
        do
        {
          operator delete(*v254);
          v257 = v7[2];
          v254 = (v7[1] + 8);
          v7[1] = v254;
          v256 = (v257 - v254) >> 3;
        }

        while (v256 > 2);
      }
    }

    else
    {
      v378 = a4[1];
      v379 = a4[2];
      a4[5] = 0;
      v256 = (v379 - v378) >> 3;
      v8 = a3;
      if (v256 >= 3)
      {
        do
        {
          operator delete(*v378);
          v380 = a4[2];
          v378 = (a4[1] + 8);
          a4[1] = v378;
          v256 = (v380 - v378) >> 3;
        }

        while (v256 > 2);
      }
    }

    if (v256 == 1)
    {
      v258 = 512;
LABEL_385:
      v7[4] = v258;
    }

    else if (v256 == 2)
    {
      v258 = 1024;
      goto LABEL_385;
    }

LABEL_508:
    if (v451)
    {
      if (v452 != v451)
      {
        v452 += (v451 - v452 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(v451);
    }

LABEL_512:
    std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&v432);
    result = std::deque<std::pair<int,int>>::~deque[abi:ne200100](&v435);
  }

  while ((*(*(*(*(v431 + 112) + (((*(v431 + 136) + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v431 + 136) + v10)) + v416) & 1) == 0);
  return result;
}

void sub_1B424D0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, void *a63)
{
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a63);
  std::deque<std::pair<unsigned short,unsigned short>>::~deque[abi:ne200100](&a25);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t nms::PyramidNMS<unsigned short,double,unsigned char>::getOverlappingDatums(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[1];
  v7 = a4[2];
  a4[5] = 0;
  v8 = (v7 - v6) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v9 = a4[2];
      v6 = (a4[1] + 8);
      a4[1] = v6;
      v8 = (v9 - v6) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v10 = 512;
    goto LABEL_7;
  }

  if (v8 == 2)
  {
    v10 = 1024;
LABEL_7:
    a4[4] = v10;
  }

  v11 = *(a1 + 968);
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      operator new();
    }
  }

  return 0;
}

void sub_1B424D67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **std::deque<std::pair<unsigned short,unsigned short>>::insert<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(int **result, char *a2, uint64_t a3, uint64_t *a4, int *a5, int **a6, int *a7)
{
  i = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = result;
  if (a7 == a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = a7 - *a6 + ((a6 - a4) << 7) - ((a5 - *a4) >> 2);
  }

  v13 = result[4];
  v14 = v13 >> 10;
  v15 = result[1];
  v16 = result[2];
  v17 = &v15[2 * (v13 >> 10)];
  v18 = v16 - v15;
  if (v16 == v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v17 + 4 * (result[4] & 0x3FF);
  }

  if (a3 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = ((a3 - *a2) >> 2) + ((a2 - v17) << 7) - ((v19 - *v17) >> 2);
  }

  v21 = result[5];
  if (v20 >= v21 - v20)
  {
    v31 = (v18 << 7) - 1;
    if (v16 == v15)
    {
      v31 = 0;
    }

    v32 = v13 + v21;
    v33 = v31 - v32;
    if (v12 > v33)
    {
      v34 = v20;
      result = std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(result, v12 - v33);
      v20 = v34;
      v21 = v11[5];
      v15 = v11[1];
      v16 = v11[2];
      v32 = v21 + v11[4];
    }

    v35 = &v15[2 * (v32 >> 10)];
    if (v16 == v15)
    {
      v36 = 0;
    }

    else
    {
      v36 = *v35 + 4 * (v32 & 0x3FF);
    }

    v37 = v21 - v20;
    if (v21 - v20 >= v12)
    {
      v39 = v36;
      v40 = v35;
      if (!v12)
      {
        return result;
      }

      goto LABEL_65;
    }

    if (v37 >= v12 >> 1)
    {
      v38 = v21 + i - *v8 - v12 - v20;
      if (v38 >= 1)
      {
        v8 += v38 >> 10;
        goto LABEL_46;
      }

      v43 = 1023 - v38;
      v44 = ~v43;
      v8 -= v43 >> 10;
    }

    else
    {
      if (!v37)
      {
        v8 = v10;
        v42 = v9;
        goto LABEL_55;
      }

      v38 = v37 + ((v9 - *v10) >> 2);
      if (v38 >= 1)
      {
        v8 = &v10[v38 >> 10];
LABEL_46:
        v42 = &(*v8)[v38 & 0x3FF];
        goto LABEL_55;
      }

      v45 = 1023 - v38;
      v44 = ~v45;
      v8 = &v10[-(v45 >> 10)];
    }

    v42 = &(*v8)[v44 & 0x3FF];
LABEL_55:
    if (v42 == i)
    {
      v39 = v36;
      v40 = v35;
    }

    else
    {
      v46 = v8;
      v47 = v42;
      v40 = v35;
      v39 = v36;
      do
      {
        *v39++ = *v47;
        if ((v39 - *v40) == 4096)
        {
          v48 = v40[1];
          ++v40;
          v39 = v48;
        }

        if (++v47 - *v46 == 4096)
        {
          v49 = v46[1];
          ++v46;
          v47 = v49;
        }

        v11[5] = (v11[5] + 1);
      }

      while (v47 != i);
    }

    i = v42;
    v12 = v37;
    if (!v37)
    {
      return result;
    }

LABEL_65:
    v50 = ((v36 - *v35) >> 2) - v12;
    if (v50 < 1)
    {
      v53 = 1023 - v50;
      v51 = &v35[-(v53 >> 10)];
      v52 = *v51 + 4 * (~v53 & 0x3FF);
    }

    else
    {
      v51 = &v35[v50 >> 10];
      v52 = *v51 + 4 * (v50 & 0x3FF);
    }

    if (v52 != v36)
    {
      v54 = v51;
      v55 = v52;
      do
      {
        *v39++ = *v55;
        if ((v39 - *v40) == 4096)
        {
          v56 = v40[1];
          ++v40;
          v39 = v56;
        }

        if ((++v55 - *v54) == 4096)
        {
          v57 = v54[1];
          ++v54;
          v55 = v57;
        }

        v11[5] = (v11[5] + 1);
      }

      while (v55 != v36);
    }

    if (v12 < v37)
    {
      v58 = ((v36 - *v35) >> 2) - v37;
      if (v58 < 1)
      {
        v61 = 1023 - v58;
        v59 = &v35[-(v61 >> 10)];
        v60 = *v59 + 4 * (~v61 & 0x3FF);
      }

      else
      {
        v59 = &v35[v58 >> 10];
        v60 = *v59 + 4 * (v58 & 0x3FF);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,0>(&v109, v59, v60, v51, v52, v35, v36);
      v36 = *(&v110 + 1);
      v35 = v110;
    }

    if (v10 == v8)
    {
      v62 = v9;
      v63 = i;
      v64 = v35;
      v65 = v36;
    }

    else
    {
      v68 = *v8;
      v67 = (v8 - 1);
      v66 = v68;
      v69 = i;
      v64 = v35;
      v65 = v36;
      while (1)
      {
        std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v109, v66, v69, v64, v65);
        v64 = v109.n128_u64[1];
        v65 = v110;
        if (v67 == v10)
        {
          break;
        }

        v70 = *v67--;
        v66 = v70;
        v69 = v70 + 4096;
      }

      v63 = *v67 + 4096;
      v62 = v9;
    }

    return std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v109, v62, v63, v64, v65);
  }

  v22 = v12 - v13;
  if (v12 > v13)
  {
    v107 = v20;
    v23 = (v18 << 7) - 1;
    v24 = v16 - v15;
    if (v16 == v15)
    {
      v23 = 0;
      ++v22;
    }

    if ((v22 & 0x3FF) != 0)
    {
      v25 = (v22 >> 10) + 1;
    }

    else
    {
      v25 = v22 >> 10;
    }

    v26 = v23 - (v21 + v13);
    if (v25 >= v26 >> 10)
    {
      v27 = v26 >> 10;
    }

    else
    {
      v27 = v25;
    }

    if (v25 <= v26 >> 10)
    {
      result[4] = &v13[256 * v27];
      for (i = a7; v27; --v27)
      {
        v41 = v11[2];
        v109.n128_u64[0] = *(v41 - 1);
        v11[2] = v41 - 2;
        std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_front<std::valarray<double> *>(v11, &v109);
      }
    }

    else
    {
      v28 = v25 - v27;
      v29 = result[3] - *result;
      if (v25 - v27 > (v29 >> 3) - (v24 >> 3))
      {
        if (v29 >> 2 <= v28 + (v24 >> 3))
        {
          v30 = v28 + (v24 >> 3);
        }

        else
        {
          v30 = v29 >> 2;
        }

        v111 = v11;
        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v30);
        }

        v109 = 0uLL;
        v110 = 0uLL;
        operator new();
      }

      if (v28)
      {
        if (v15 != *result)
        {
          operator new();
        }

        operator new();
      }

      i = a7;
      for (result[4] = &v13[256 * v27]; v27; --v27)
      {
        v71 = v11[2];
        v109.n128_u64[0] = *(v71 - 1);
        v11[2] = v71 - 2;
        std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_front<std::valarray<double> *>(v11, &v109);
      }
    }

    v13 = v11[4];
    v15 = v11[1];
    v16 = v11[2];
    v14 = v13 >> 10;
    v20 = v107;
  }

  result = &v15[2 * v14];
  if (v16 == v15)
  {
    v72 = 0;
  }

  else
  {
    v72 = &(*result)[v13 & 0x3FF];
  }

  if (v12 <= v20)
  {
    v74 = v72;
    v75 = &v15[2 * v14];
    if (!v12)
    {
      return result;
    }

    goto LABEL_119;
  }

  if (v20 >= v12 >> 1)
  {
    v73 = v12 - v20 + ((v9 - *v10) >> 2);
    if (v73 >= 1)
    {
      v10 += v73 >> 10;
      goto LABEL_104;
    }

    v77 = 1023 - v73;
    v78 = ~v77;
    v10 -= v77 >> 10;
  }

  else
  {
    if (!v20)
    {
      v10 = v8;
      v76 = i;
      goto LABEL_109;
    }

    v73 = i - *v8 - v20;
    if (v73 >= 1)
    {
      v10 = &v8[v73 >> 10];
LABEL_104:
      v76 = *v10 + 4 * (v73 & 0x3FF);
      goto LABEL_109;
    }

    v79 = 1023 - v73;
    v78 = ~v79;
    v10 = &v8[-(v79 >> 10)];
  }

  v76 = *v10 + 4 * (v78 & 0x3FF);
LABEL_109:
  if (v76 == v9)
  {
    v74 = v72;
    v75 = result;
  }

  else
  {
    v80 = v10;
    v81 = v76;
    v75 = result;
    v74 = v72;
    do
    {
      if (v74 == *v75)
      {
        v82 = *--v75;
        v74 = v82 + 4096;
      }

      if (v81 == *v80)
      {
        v83 = *--v80;
        v81 = v83 + 4096;
      }

      v84 = *(v81 - 4);
      v81 -= 4;
      *(v74 - 4) = v84;
      v74 -= 4;
      *(v11 + 2) = vaddq_s64(*(v11 + 2), xmmword_1B42AF9D0);
    }

    while (v81 != v9);
  }

  v9 = v76;
  v12 = v20;
  if (v20)
  {
LABEL_119:
    v108 = result;
    v85 = v20;
    v86 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](result, v72, v12);
    v88 = v85;
    v89 = v87;
    if (v72 != v87)
    {
      v90 = v86;
      v91 = v87;
      do
      {
        if (v74 == *v75)
        {
          v92 = *--v75;
          v74 = v92 + 4096;
        }

        if (v91 == *v90)
        {
          v93 = *--v90;
          v91 = (v93 + 4096);
        }

        v94 = *(v91 - 1);
        v91 -= 4;
        *(v74 - 4) = v94;
        v74 -= 4;
        *(v11 + 2) = vaddq_s64(*(v11 + 2), xmmword_1B42AF9D0);
      }

      while (v91 != v72);
    }

    if (v12 >= v88)
    {
      v98 = v108;
    }

    else
    {
      v95 = v86;
      v96 = std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](v108, v72, v88);
      v109.n128_u64[0] = v108;
      v109.n128_u64[1] = v72;
      std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>>>(v95, v89, v96, v97, &v109);
      v72 = v109.n128_i64[1];
      v98 = v109.n128_u64[0];
    }

    if (v10 == v8)
    {
      v99 = v9;
      v100 = i;
      v101 = v72;
    }

    else
    {
      v103 = *v10;
      v102 = (v10 + 1);
      v104 = (v103 + 4096);
      v105 = v9;
      v101 = v72;
      while (1)
      {
        std::__copy_impl::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v109, v105, v104, v98, v101);
        v98 = v109.n128_u64[1];
        v101 = v110;
        if (v102 == v8)
        {
          break;
        }

        v106 = *v102++;
        v105 = v106;
        v104 = v106 + 1024;
      }

      v99 = *v102;
      v100 = i;
    }

    return std::__copy_impl::operator()[abi:ne200100]<std::pair<unsigned short,unsigned short> *,std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short> **,long,1024l>,0>(&v109, v99, v100, v98, v101);
  }

  return result;
}

void sub_1B424DF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *nms::PyramidNMS<unsigned short,double,unsigned char>::computeConstitutedIndices(_OWORD *result, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  v5 = a2[121];
  if (v5)
  {
    v6 = *(v5 + 40);
    v28 = 0;
    v26 = v6;
    if (v6)
    {
      v9 = result;
      v10 = 0;
      v11 = 0;
      v24 = a4;
      v25 = a3;
      do
      {
        v12 = *(a2[104] + 8 * ((a2[107] + v25) / 0x55uLL)) + 48 * ((a2[107] + v25) % 0x55uLL);
        v13 = (*(*(v12 + 8) + 8 * ((*(v12 + 32) + v11) / 0x55uLL)) + 48 * ((*(v12 + 32) + v11) % 0x55uLL));
        if (v13[5])
        {
          v14 = (*(v13[1] + 8 * ((v13[4] + v24) / 0x55uLL)) + 48 * ((v13[4] + v24) % 0x55uLL));
          v15 = v14[5];
          if (v15)
          {
            v16 = v14[1];
            if (v14[2] != v16)
            {
              v17 = v14[4];
              v18 = (v16 + 8 * (v17 >> 11));
              v19 = *v18;
              v20 = &(*v18)[v17 & 0x7FF];
              v21 = *(v16 + (((v17 + v15) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v17 + v15) & 0x7FF);
              while (v20 != v21)
              {
                v22 = *v20;
                v27 = *v20;
                if (!a5[5] || (*(*(*(a5[1] + (((a5[4] + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a5 + 32) + v10)) + v22) & 1) == 0)
                {
                  result = std::deque<std::pair<unsigned short,unsigned short>>::emplace_back<unsigned short &,unsigned short &>(v9, &v28, &v27);
                  v19 = *v18;
                }

                if (++v20 - v19 == 4096)
                {
                  v23 = v18[1];
                  ++v18;
                  v19 = v23;
                  v20 = v23;
                }
              }
            }
          }
        }

        v28 = ++v10;
        v11 = v10;
      }

      while (v26 > v10);
    }
  }

  return result;
}

void *std::deque<std::pair<unsigned short,unsigned short>>::__add_back_capacity(void *result, unint64_t a2)
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

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v2, v16);
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
      v18 = v2;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v12);
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

    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<std::valarray<double> *,std::allocator<std::valarray<double> *>>::emplace_back<std::valarray<double> *&>(v2, v16);
    }
  }

  return result;
}

void sub_1B424E430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<std::pair<unsigned short,unsigned short>,std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>&,std::pair<unsigned short,unsigned short>**,long,1024l>::operator+[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 2);
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
    }

    else
    {
      result += v3 >> 10;
    }
  }

  return result;
}

uint64_t std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__less<void,void>>(char *a1, unint64_t *a2, char *a3, unint64_t a4)
{
  if (a4 == a2 || (v4 = ((a4 - *a3) >> 3) + ((a3 - a1) << 6), v5 = a2 - *a1, v4 == v5 >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = 63 - __clz(v4 - (v5 >> 3));
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,false>(a1, a2, a3, a4, 2 * v6, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,false>(uint64_t result, unint64_t *a2, char *a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a4 == a2)
  {
    return result;
  }

  v7 = a2;
  v8 = result;
  v9 = a2;
  while (1)
  {
    v10 = *a3;
    v11 = (a4 - *a3) >> 3;
    v12 = v11 + ((a3 - v8) << 6);
    v13 = *v8;
    v14 = v7 - *v8;
    v15 = v12 - (v14 >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (a4 == v10)
      {
        a4 = *(a3 - 1) + 4096;
      }

      v113 = *(a4 - 8);
      if (v113 >= *v7)
      {
        return result;
      }

      v114 = *v9;
      *v9 = v113;
LABEL_307:
      *(a4 - 8) = v114;
      return result;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a6)
      {
        if (v9 != a4)
        {
          for (i = (v9 + 1); ; i += 8)
          {
            if (i - v13 == 4096)
            {
              v118 = *(v8 + 1);
              v8 += 8;
              v13 = v118;
              i = v118;
            }

            if (i == a4)
            {
              break;
            }

            v119 = v8;
            v120 = i;
            if (i == v13)
            {
              v119 = v8 - 8;
              v120 = *(v8 - 1) + 4096;
            }

            v123 = *(v120 - 8);
            v121 = (v120 - 8);
            v122 = v123;
            v124 = *i;
            if (*i < v123)
            {
              v125 = i;
              do
              {
                v126 = v121;
                *v125 = v122;
                if (v121 == v9)
                {
                  break;
                }

                if (v121 == *v119)
                {
                  v127 = *(v119 - 1);
                  v119 -= 8;
                  v121 = (v127 + 4096);
                }

                v128 = *--v121;
                v122 = v128;
                v125 = v126;
              }

              while (v124 < v128);
              *v126 = v124;
            }
          }
        }
      }

      else if (v9 != a4)
      {
        v175 = (v9 - v13) >> 3;
        if (v175 < 0)
        {
          v200 = 510 - v175;
          v176 = ~v200;
          v177 = &v8[-8 * (v200 >> 9)];
        }

        else
        {
          v176 = v175 + 1;
          v177 = &v8[8 * ((v175 + 1) >> 9)];
        }

        v201 = *v177;
        v202 = (*v177 + 8 * (v176 & 0x1FF));
        while (v202 != a4)
        {
          v203 = (v202 - v201) >> 3;
          if (v203 < 2)
          {
            v206 = 512 - v203;
            v204 = ~v206;
            v205 = &v177[-8 * (v206 >> 9)];
          }

          else
          {
            v204 = v203 - 1;
            v205 = &v177[8 * ((v203 - 1) >> 9)];
          }

          v207 = *v205;
          v208 = (*v205 + 8 * (v204 & 0x1FF));
          v209 = *v202;
          v210 = *v208;
          if (*v202 < *v208)
          {
            result = v202;
            do
            {
              v211 = v208;
              *result = v210;
              if (v208 == v207)
              {
                v212 = *(v205 - 1);
                v205 -= 8;
                v207 = v212;
                v208 = v212 + 512;
              }

              v213 = *--v208;
              v210 = v213;
              result = v211;
            }

            while (v209 < v213);
            *v211 = v209;
          }

          v202 += 8;
          if (v202 - v201 == 4096)
          {
            v214 = *(v177 + 1);
            v177 += 8;
            v201 = v214;
            v202 = v214;
          }
        }
      }

      return result;
    }

    v218 = a4;
    v220 = a3;
    if (!a5)
    {
      if (v9 == a4)
      {
        return result;
      }

      v129 = v12 - ((v9 - v13) >> 3);
      v130 = v129 - 2;
      if (v129 < 2)
      {
        return result;
      }

      v217 = (v9 - v13) >> 3;
      v131 = v130 >> 1;
      v132 = v130 >> 1;
      while (1)
      {
        v133 = v132;
        result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v9, v132);
        v135 = v134;
        if (v134 == v9)
        {
          break;
        }

        v136 = ((result - v8) << 6) - v217 + ((v134 - *result) >> 3);
        if (v131 >= v136)
        {
          goto LABEL_216;
        }

LABEL_236:
        v132 = v133 - 1;
        if (!v133)
        {
          v147 = v218;
          v148 = v220;
          do
          {
            v149 = 0;
            v150 = *v9;
            v151 = v9;
            v152 = v8;
            do
            {
              v153 = v151;
              if (v149 != -1)
              {
                v154 = v149 + 1 + ((v151 - *v152) >> 3);
                if (v154 < 1)
                {
                  v155 = 511 - v154;
                  v152 -= 8 * (v155 >> 9);
                  v151 = (*v152 + 8 * (~v155 & 0x1FF));
                }

                else
                {
                  v152 += 8 * (v154 >> 9);
                  v151 = (*v152 + 8 * (v154 & 0x1FF));
                }
              }

              v156 = (2 * v149) | 1;
              v149 = 2 * v149 + 2;
              if (v149 >= v129 || ((v157 = (v151 - *v152) >> 3, v157 < 0) ? (v158 = (*&v152[-8 * ((510 - v157) >> 9)] + 8 * (~(510 - v157) & 0x1FF))) : (v158 = (*&v152[((v157 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v157 + 1) & 0x1FF))), *v151 >= *v158))
              {
                v149 = v156;
              }

              else if ((++v151 - *v152) == 4096)
              {
                v159 = *(v152 + 1);
                v152 += 8;
                v151 = v159;
              }

              *v153 = *v151;
            }

            while (v149 <= ((v129 - 2) >> 1));
            v160 = v147;
            if (v10 == v147)
            {
              v160 = *(v148 - 1) + 4096;
            }

            v161 = (v160 - 8);
            if (v161 == v151)
            {
              *v151 = v150;
            }

            else
            {
              *v151 = *v161;
              v162 = (v151 + 1);
              v163 = *v152;
              if (v162 - *v152 == 4096)
              {
                v164 = *(v152 + 1);
                v152 += 8;
                v162 = v164;
                v163 = v164;
              }

              *v161 = v150;
              if (v162 != v9)
              {
                v165 = ((v162 - v163) >> 3) - v217 + ((v152 - v8) << 6);
                v166 = v165 < 2;
                v167 = v165 - 2;
                if (!v166)
                {
                  v219 = v147;
                  v221 = v148;
                  v168 = v167 >> 1;
                  result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v9, v167 >> 1);
                  if (v163 == v162)
                  {
                    v162 = *(v152 - 1) + 4096;
                  }

                  v172 = *(v162 - 8);
                  v171 = (v162 - 8);
                  v170 = v172;
                  v173 = *v169;
                  v147 = v219;
                  v148 = v221;
                  if (*v169 < v172)
                  {
                    do
                    {
                      *v171 = v173;
                      v171 = v169;
                      if (!v168)
                      {
                        break;
                      }

                      v168 = (v168 - 1) >> 1;
                      result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v9, v168);
                      v173 = *v169;
                    }

                    while (*v169 < v170);
                    *v171 = v170;
                    v147 = v219;
                    v148 = v221;
                  }
                }
              }
            }

            if (v10 == v147)
            {
              v174 = *(v148 - 1);
              v148 -= 8;
              v10 = v174;
              v147 = (v174 + 512);
            }

            v147 -= 8;
            v166 = v129-- <= 2;
          }

          while (!v166);
          return result;
        }
      }

      v136 = 0;
LABEL_216:
      v137 = 2 * v136;
      v138 = (2 * v136) | 1;
      result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v9, v138);
      if (v137 + 2 < v129)
      {
        v140 = (v139 - *result) >> 3;
        v141 = (v140 < 0 ? *(result - 8 * ((510 - v140) >> 9)) + 8 * (~(510 - v140) & 0x1FF) : *(result + (((v140 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v140 + 1) & 0x1FF));
        if (*v139 < *v141)
        {
          if ((++v139 - *result) == 4096)
          {
            v139 = *(result + 8);
          }

          v138 = v137 + 2;
        }
      }

      v142 = *v139;
      v143 = *v135;
      if (*v139 >= *v135)
      {
        do
        {
          *v135 = v142;
          v135 = v139;
          if (v131 < v138)
          {
            break;
          }

          v144 = 2 * v138;
          v138 = (2 * v138) | 1;
          result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v9, v138);
          if (v144 + 2 < v129)
          {
            v145 = (v139 - *result) >> 3;
            v146 = (v145 < 0 ? *(result - 8 * ((510 - v145) >> 9)) + 8 * (~(510 - v145) & 0x1FF) : *(result + (((v145 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v145 + 1) & 0x1FF));
            if (*v139 < *v146)
            {
              if ((++v139 - *result) == 4096)
              {
                v139 = *(result + 8);
              }

              v138 = v144 + 2;
            }
          }

          v142 = *v139;
        }

        while (*v139 >= v143);
        *v135 = v143;
      }

      goto LABEL_236;
    }

    v16 = v14 >> 3;
    v17 = v15 >> 1;
    result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v15 >> 1);
    if (v15 >= 0x81)
    {
      v19 = v11 - 2;
      if (v11 < 2)
      {
        v20 = (*&v220[-8 * ((512 - v11) >> 9)] + 8 * (~(512 - v11) & 0x1FF));
      }

      else
      {
        v20 = (*&v220[((v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v11 - 1) & 0x1FF));
      }

      v22 = *v18;
      v23 = *v9;
      v24 = *v20;
      if (*v18 >= *v9)
      {
        if (v24 < v22)
        {
          *v18 = v24;
          *v20 = v22;
          v29 = *v9;
          if (*v18 < *v9)
          {
            *v9 = *v18;
            *v18 = v29;
          }
        }
      }

      else
      {
        if (v24 < v22)
        {
          *v9 = v24;
          goto LABEL_34;
        }

        *v9 = v22;
        *v18 = v23;
        if (*v20 < v23)
        {
          *v18 = *v20;
LABEL_34:
          *v20 = v23;
        }
      }

      v215 = a5;
      if (v16 < 0)
      {
        v31 = (*&v8[-8 * ((510 - v16) >> 9)] + 8 * (~(510 - v16) & 0x1FF));
      }

      else
      {
        v31 = (*&v8[((v16 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v16 + 1) & 0x1FF));
      }

      std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v17 - 1);
      v33 = v11 - 3;
      if (v11 < 3)
      {
        v34 = *&v220[-8 * ((513 - v11) >> 9)];
        v35 = ~(513 - v11) & 0x1FF;
      }

      else
      {
        v34 = *&v220[(v19 >> 6) & 0x3FFFFFFFFFFFFF8];
        v35 = v19 & 0x1FF;
      }

      v36 = (v34 + 8 * v35);
      v37 = *v32;
      v38 = *v31;
      v39 = *v36;
      if (*v32 >= *v31)
      {
        if (v39 < v37)
        {
          *v32 = v39;
          *v36 = v37;
          v40 = *v31;
          if (*v32 < *v31)
          {
            *v31 = *v32;
            *v32 = v40;
          }
        }
      }

      else
      {
        if (v39 < v37)
        {
          *v31 = v39;
          goto LABEL_52;
        }

        *v31 = v37;
        *v32 = v38;
        if (*v36 < v38)
        {
          *v32 = *v36;
LABEL_52:
          *v36 = v38;
        }
      }

      if (v16 < -1)
      {
        v41 = (*&v8[-8 * ((509 - v16) >> 9)] + 8 * (~(509 - v16) & 0x1FF));
      }

      else
      {
        v41 = (*&v8[((v16 + 2) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v16 + 2) & 0x1FF));
      }

      std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v17 + 1);
      if (v11 < 4)
      {
        v43 = *&v220[-8 * ((514 - v11) >> 9)];
        v44 = ~(514 - v11) & 0x1FF;
      }

      else
      {
        v43 = *&v220[(v33 >> 6) & 0x3FFFFFFFFFFFFF8];
        v44 = v33 & 0x1FF;
      }

      v45 = (v43 + 8 * v44);
      v46 = *v42;
      v47 = *v41;
      v48 = *v45;
      if (*v42 >= *v41)
      {
        if (v48 < v46)
        {
          *v42 = v48;
          *v45 = v46;
          v49 = *v41;
          if (*v42 < *v41)
          {
            *v41 = *v42;
            *v42 = v49;
          }
        }
      }

      else
      {
        if (v48 < v46)
        {
          *v41 = v48;
          goto LABEL_67;
        }

        *v41 = v46;
        *v42 = v47;
        if (*v45 < v47)
        {
          *v42 = *v45;
LABEL_67:
          *v45 = v47;
        }
      }

      std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v17 - 1);
      v51 = v50;
      std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v17);
      v53 = v52;
      std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v17 + 1);
      v55 = *v53;
      v56 = *v51;
      v57 = *v54;
      if (*v53 >= *v51)
      {
        if (v57 < v55)
        {
          *v53 = v57;
          *v54 = v55;
          v58 = *v51;
          if (*v53 < *v51)
          {
            *v51 = *v53;
            *v53 = v58;
          }
        }
      }

      else
      {
        if (v57 < v55)
        {
          *v51 = v57;
          goto LABEL_76;
        }

        *v51 = v55;
        *v53 = v56;
        if (*v54 < v56)
        {
          *v53 = *v54;
LABEL_76:
          *v54 = v56;
        }
      }

      result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v8, v7, v17);
      v59 = *v7;
      *v7 = *v60;
      *v60 = v59;
      a4 = v218;
      a3 = v220;
      a5 = v215;
      v25 = a6;
      goto LABEL_78;
    }

    a3 = v220;
    if (v11 < 2)
    {
      v21 = (*&v220[-8 * ((512 - v11) >> 9)] + 8 * (~(512 - v11) & 0x1FF));
    }

    else
    {
      v21 = (*&v220[((v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v11 - 1) & 0x1FF));
    }

    a4 = v218;
    v25 = a6;
    v26 = *v7;
    v27 = *v18;
    v28 = *v21;
    if (*v7 >= *v18)
    {
      if (v28 < v26)
      {
        *v7 = v28;
        *v21 = v26;
        v30 = *v18;
        if (*v7 < *v18)
        {
          *v18 = *v7;
          *v7 = v30;
        }
      }
    }

    else
    {
      if (v28 >= v26)
      {
        *v18 = v26;
        *v7 = v27;
        if (*v21 >= v27)
        {
          goto LABEL_78;
        }

        *v7 = *v21;
      }

      else
      {
        *v18 = v28;
      }

      *v21 = v27;
    }

LABEL_78:
    --a5;
    if (v25)
    {
      v61 = *v7;
    }

    else
    {
      if (v16 < 2)
      {
        v62 = (*&v8[-8 * ((512 - v16) >> 9)] + 8 * (~(512 - v16) & 0x1FF));
      }

      else
      {
        v62 = (*&v8[((v16 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v16 - 1) & 0x1FF));
      }

      v63 = *v62;
      v61 = *v7;
      if (v63 >= *v7)
      {
        if (v11 < 2)
        {
          v94 = (*&a3[-8 * ((512 - v11) >> 9)] + 8 * (~(512 - v11) & 0x1FF));
        }

        else
        {
          v94 = (*&a3[((v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v11 - 1) & 0x1FF));
        }

        v9 = v7;
        if (v61 >= *v94)
        {
          do
          {
            if (++v9 - v13 == 4096)
            {
              v98 = *(v8 + 1);
              v8 += 8;
              v13 = v98;
              v9 = v98;
            }
          }

          while ((v8 < a3 || v8 == a3 && v9 < a4) && v61 >= *v9);
        }

        else
        {
          do
          {
            if (++v9 - v13 == 4096)
            {
              v97 = *(v8 + 1);
              v8 += 8;
              v13 = v97;
              v9 = v97;
            }
          }

          while (v61 >= *v9);
        }

        if (v8 < a3 || v8 == a3 && v9 < a4)
        {
          v99 = a3;
          v100 = a4;
          do
          {
            if (v100 == v10)
            {
              v101 = *(v99 - 1);
              v99 -= 8;
              v10 = v101;
              v100 = v101 + 512;
            }

            v102 = *--v100;
          }

          while (v61 < v102);
        }

        else
        {
          v99 = a3;
          v100 = a4;
        }

        while (v8 < v99 || v8 == v99 && v9 < v100)
        {
          v103 = *v9;
          *v9 = *v100;
          *v100 = v103;
          do
          {
            if (++v9 - v13 == 4096)
            {
              v104 = *(v8 + 1);
              v8 += 8;
              v13 = v104;
              v9 = v104;
            }
          }

          while (v61 >= *v9);
          do
          {
            if (v100 == v10)
            {
              v105 = *(v99 - 1);
              v99 -= 8;
              v10 = v105;
              v100 = v105 + 512;
            }

            v106 = *--v100;
          }

          while (v61 < v106);
        }

        v107 = (v9 - v13) >> 3;
        if (v107 < 2)
        {
          v108 = (*&v8[-8 * ((512 - v107) >> 9)] + 8 * (~(512 - v107) & 0x1FF));
        }

        else
        {
          v108 = (*&v8[((v107 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v107 - 1) & 0x1FF));
        }

        if (v108 != v7)
        {
          *v7 = *v108;
        }

        a6 = 0;
        *v108 = v61;
        goto LABEL_182;
      }
    }

    v64 = v8;
    v65 = v7;
    do
    {
      if (++v65 - v13 == 4096)
      {
        v66 = *(v64 + 1);
        v64 += 8;
        v13 = v66;
        v65 = v66;
      }

      v67 = *v65;
    }

    while (*v65 < v61);
    v68 = (v65 - v13) >> 3;
    if (v68 < 2)
    {
      v69 = *&v64[-8 * ((512 - v68) >> 9)] + 8 * (~(512 - v68) & 0x1FF);
    }

    else
    {
      v69 = *&v64[((v68 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v68 - 1) & 0x1FF);
    }

    if (v69 == v7)
    {
      v70 = a3;
      v71 = a4;
      do
      {
        if (v64 >= v70 && (v64 != v70 || v65 >= v71))
        {
          break;
        }

        if (v71 == v10)
        {
          v74 = *(v70 - 1);
          v70 -= 8;
          v10 = v74;
          v71 = v74 + 512;
        }

        v75 = *--v71;
      }

      while (v75 >= v61);
    }

    else
    {
      v70 = a3;
      v71 = a4;
      do
      {
        if (v71 == v10)
        {
          v72 = *(v70 - 1);
          v70 -= 8;
          v10 = v72;
          v71 = v72 + 512;
        }

        v73 = *--v71;
      }

      while (v73 >= v61);
    }

    v77 = v64 != v70 || v65 >= v71;
    if (v64 < v70)
    {
      v77 = 0;
    }

    while (v64 < v70 || v64 == v70 && v65 < v71)
    {
      *v65 = *v71;
      *v71 = v67;
      do
      {
        if (++v65 - v13 == 4096)
        {
          v78 = *(v64 + 1);
          v64 += 8;
          v13 = v78;
          v65 = v78;
        }

        v67 = *v65;
      }

      while (*v65 < v61);
      do
      {
        if (v71 == v10)
        {
          v79 = *(v70 - 1);
          v70 -= 8;
          v10 = v79;
          v71 = v79 + 512;
        }

        v80 = *--v71;
      }

      while (v80 >= v61);
    }

    v81 = a5;
    v82 = (v65 - v13) >> 3;
    if (v82 < 2)
    {
      v87 = 512 - v82;
      v84 = &v64[-8 * (v87 >> 9)];
      v85 = *v84;
      v86 = ~v87 & 0x1FFLL;
    }

    else
    {
      v83 = v82 - 1;
      v84 = &v64[8 * (v83 >> 9)];
      v85 = *v84;
      v86 = v83 & 0x1FF;
    }

    v88 = (v85 + 8 * v86);
    if (v88 != v7)
    {
      *v7 = *v88;
    }

    *v88 = v61;
    if (!v77)
    {
      goto LABEL_140;
    }

    v89 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(v8, v7, v84, v88);
    v90 = (v88 - *v84) >> 3;
    if (v90 < 0)
    {
      v95 = 510 - v90;
      v92 = &v84[-8 * (v95 >> 9)];
      v93 = (*v92 + 8 * (~v95 & 0x1FF));
    }

    else
    {
      v91 = v90 + 1;
      v92 = &v84[8 * (v91 >> 9)];
      v93 = (*v92 + 8 * (v91 & 0x1FF));
    }

    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>(v92, v93, v220, v218);
    if (result)
    {
      v9 = v7;
      a4 = v88;
      a3 = v84;
      a5 = v81;
      if (v89)
      {
        return result;
      }

      goto LABEL_182;
    }

    if (v89)
    {
      v9 = v88 + 1;
      if ((v88 - *v84 + 8) != 4096)
      {
        goto LABEL_144;
      }
    }

    else
    {
LABEL_140:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,false>(v8, v7, v84, v88, v81, v25 & 1);
      v9 = v88 + 1;
      if ((v88 - *v84 + 8) != 4096)
      {
        a6 = 0;
        goto LABEL_144;
      }

      a6 = 0;
    }

    v96 = *(v84 + 1);
    v84 += 8;
    v9 = v96;
LABEL_144:
    v8 = v84;
    a4 = v218;
    a3 = v220;
    a5 = v81;
LABEL_182:
    v7 = v9;
    if (a4 == v9)
    {
      return result;
    }
  }

  if (v15 == 3)
  {
    v109 = (v9 - v13) >> 3;
    if (v109 < 0)
    {
      v110 = (*&v8[-8 * ((510 - v109) >> 9)] + 8 * (~(510 - v109) & 0x1FF));
    }

    else
    {
      v110 = (*&v8[((v109 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v109 + 1) & 0x1FF));
    }

    if (a4 == v10)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v178 = *v110;
    v114 = *v9;
    v179 = *(a4 - 8);
    if (*v110 < *v9)
    {
      if (v179 >= v178)
      {
        *v9 = v178;
        *v110 = v114;
        v191 = *(a4 - 8);
        if (v191 >= v114)
        {
          return result;
        }

        *v110 = v191;
      }

      else
      {
        *v9 = v179;
      }

      goto LABEL_307;
    }

    if (v179 >= v178)
    {
      return result;
    }

    *v110 = v179;
    *(a4 - 8) = v178;
    goto LABEL_327;
  }

  if (v15 == 4)
  {
    v115 = (v9 - v13) >> 3;
    if (v115 < 0)
    {
      v110 = (*&v8[-8 * ((510 - v115) >> 9)] + 8 * (~(510 - v115) & 0x1FF));
      if (v9 - v13 != -8)
      {
        v180 = (*&v8[-8 * ((509 - v115) >> 9)] + 8 * (~(509 - v115) & 0x1FF));
LABEL_297:
        if (a4 == v10)
        {
          a4 = *(a3 - 1) + 4096;
        }

        v187 = *v110;
        v188 = *v9;
        v189 = *v180;
        if (*v110 >= *v9)
        {
          if (v189 >= v187)
          {
            v187 = *v180;
          }

          else
          {
            *v110 = v189;
            *v180 = v187;
            v190 = *v9;
            if (*v110 < *v9)
            {
              *v9 = *v110;
              *v110 = v190;
              v187 = *v180;
            }
          }
        }

        else
        {
          if (v189 >= v187)
          {
            *v9 = v187;
            *v110 = v188;
            v187 = *v180;
            if (*v180 >= v188)
            {
              goto LABEL_323;
            }

            *v110 = v187;
          }

          else
          {
            *v9 = v189;
          }

          *v180 = v188;
          v187 = v188;
        }

LABEL_323:
        v197 = *(a4 - 8);
        if (v197 >= v187)
        {
          return result;
        }

        *v180 = v197;
        *(a4 - 8) = v187;
LABEL_325:
        v198 = *v110;
        if (*v180 >= *v110)
        {
          return result;
        }

        *v110 = *v180;
        *v180 = v198;
LABEL_327:
        v199 = *v9;
        if (*v110 < *v9)
        {
          *v9 = *v110;
          *v110 = v199;
        }

        return result;
      }

      v116 = 1;
    }

    else
    {
      v110 = (*&v8[((v115 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v115 + 1) & 0x1FF));
      v116 = v115 + 2;
    }

    v180 = (*&v8[(v116 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v116 & 0x1FF));
    goto LABEL_297;
  }

  if (v15 != 5)
  {
    goto LABEL_11;
  }

  v111 = (v9 - v13) >> 3;
  if ((v111 & 0x8000000000000000) == 0)
  {
    v110 = (*&v8[((v111 + 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v111 + 1) & 0x1FF));
    v112 = v111 + 2;
    goto LABEL_284;
  }

  v110 = (*&v8[-8 * ((510 - v111) >> 9)] + 8 * (~(510 - v111) & 0x1FF));
  if (v9 - v13 == -8)
  {
    v112 = 1;
LABEL_284:
    v180 = (*&v8[(v112 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v112 & 0x1FF));
    v181 = v111 + 3;
LABEL_285:
    v182 = (*&v8[(v181 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v181 & 0x1FF));
  }

  else
  {
    v180 = (*&v8[-8 * ((509 - v111) >> 9)] + 8 * (~(509 - v111) & 0x1FF));
    if (v111 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v181 = 1;
      goto LABEL_285;
    }

    v182 = (*&v8[-8 * ((508 - v111) >> 9)] + 8 * (~(508 - v111) & 0x1FF));
  }

  if (a4 == v10)
  {
    a4 = *(a3 - 1) + 4096;
  }

  v183 = *v110;
  v184 = *v9;
  v185 = *v180;
  if (*v110 >= *v9)
  {
    if (v185 >= v183)
    {
      v183 = *v180;
    }

    else
    {
      *v110 = v185;
      *v180 = v183;
      v186 = *v9;
      if (*v110 < *v9)
      {
        *v9 = *v110;
        *v110 = v186;
        v183 = *v180;
      }
    }
  }

  else
  {
    if (v185 < v183)
    {
      *v9 = v185;
      goto LABEL_310;
    }

    *v9 = v183;
    *v110 = v184;
    v183 = *v180;
    if (*v180 < v184)
    {
      *v110 = v183;
LABEL_310:
      *v180 = v184;
      v183 = v184;
    }
  }

  if (*v182 < v183)
  {
    *v180 = *v182;
    *v182 = v183;
    v192 = *v110;
    if (*v180 < *v110)
    {
      *v110 = *v180;
      *v180 = v192;
      v193 = *v9;
      if (*v110 < *v9)
      {
        *v9 = *v110;
        *v110 = v193;
      }
    }
  }

  v194 = *(a4 - 8);
  v195 = *v182;
  if (v194 < *v182)
  {
    *v182 = v194;
    *(a4 - 8) = v195;
    v196 = *v180;
    if (*v182 < *v180)
    {
      *v180 = *v182;
      *v182 = v196;
      goto LABEL_325;
    }
  }

  return result;
}