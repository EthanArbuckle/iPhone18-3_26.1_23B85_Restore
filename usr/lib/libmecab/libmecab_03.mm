void MeCab::scoped_ptr<MeCab::Writer>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35600;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::Lattice>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35D78;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 312))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::StringBuffer>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35680;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::CharProperty>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35D48;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void std::__stable_sort<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(void **a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = a2 - 2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2[-2].n128_u64, a1) & 0x80) != 0)
      {
        v8 = *(v6 + 16);
        v9 = *v6;
        v10 = a2[-1].n128_u64[0];
        *v6 = *v7;
        *(v6 + 16) = v10;
        *v7 = v9;
        a2[-1].n128_u64[0] = v8;
        v11 = *(v6 + 24);
        *(v6 + 24) = a2[-1].n128_u64[1];
        a2[-1].n128_u64[1] = v11;
      }
    }

    else
    {
      v12 = a3;
      if (a3 <= 0)
      {
        if (a1 != a2)
        {
          v18 = a1 + 4;
          if (a1 + 4 != a2)
          {
            v19 = 0;
            v20 = a1;
            do
            {
              v21 = v18;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, v20) & 0x80) != 0)
              {
                v22 = *v21;
                v40 = v21[2];
                v39 = v22;
                v21[1] = 0;
                v21[2] = 0;
                *v21 = 0;
                v41 = v20[7];
                v23 = v19;
                while (1)
                {
                  v24 = v6 + v23;
                  if (*(v6 + v23 + 55) < 0)
                  {
                    operator delete(*(v24 + 32));
                  }

                  *(v24 + 32) = *v24;
                  v25 = *(v24 + 16);
                  v26 = *(v24 + 24);
                  *(v24 + 23) = 0;
                  *v24 = 0;
                  *(v24 + 48) = v25;
                  *(v24 + 56) = v26;
                  if (!v23)
                  {
                    break;
                  }

                  v23 -= 32;
                  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v39, (v23 + v6)) & 0x80) == 0)
                  {
                    v27 = v6 + v23 + 32;
                    goto LABEL_21;
                  }
                }

                v27 = v6;
LABEL_21:
                if (*(v27 + 23) < 0)
                {
                  operator delete(*v27);
                }

                v28 = v39;
                *(v27 + 16) = v40;
                *v27 = v28;
                *(v27 + 24) = v41;
              }

              v18 = v21 + 4;
              v19 += 32;
              v20 = v21;
            }

            while (v21 + 4 != a2);
          }
        }
      }

      else
      {
        v14 = a4;
        v15 = a3 >> 1;
        v16 = &a1[4 * (a3 >> 1)];
        v17 = a3 >> 1;
        if (v12 <= a5)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(a1, v16, v17, a4);
          v29 = &v14[2 * v15];
          std::__stable_sort_move<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>((v6 + 32 * (v12 >> 1)), a2, v12 - (v12 >> 1), v29);
          v30 = &v14[2 * v12];
          v31 = v29;
          v32 = v14;
          while (v31 != v30)
          {
            v33 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v31, v32);
            v34 = *(v6 + 23);
            if (v33 < 0)
            {
              if (v34 < 0)
              {
                operator delete(*v6);
              }

              v36 = *v31;
              *(v6 + 16) = v31[1].n128_u64[0];
              *v6 = v36;
              v31[1].n128_u8[7] = 0;
              v31->n128_u8[0] = 0;
              *(v6 + 24) = v31[1].n128_u64[1];
              v31 += 2;
            }

            else
            {
              if (v34 < 0)
              {
                operator delete(*v6);
              }

              v35 = *v32;
              *(v6 + 16) = v32[1].n128_u64[0];
              *v6 = v35;
              v32[1].n128_u8[7] = 0;
              v32->n128_u8[0] = 0;
              *(v6 + 24) = v32[1].n128_u64[1];
              v32 += 2;
            }

            v6 += 32;
            if (v32 == v29)
            {
              while (v31 != v30)
              {
                if (*(v6 + 23) < 0)
                {
                  operator delete(*v6);
                }

                v38 = *v31;
                *(v6 + 16) = v31[1].n128_u64[0];
                *v6 = v38;
                v31[1].n128_u8[7] = 0;
                v31->n128_u8[0] = 0;
                *(v6 + 24) = v31[1].n128_u64[1];
                v31 += 2;
                v6 += 32;
              }

              goto LABEL_46;
            }
          }

          while (v32 != v29)
          {
            if (*(v6 + 23) < 0)
            {
              operator delete(*v6);
            }

            v37 = *v32;
            *(v6 + 16) = v32[1].n128_u64[0];
            *v6 = v37;
            v32[1].n128_u8[7] = 0;
            v32->n128_u8[0] = 0;
            *(v6 + 24) = v32[1].n128_u64[1];
            v32 += 2;
            v6 += 32;
          }

LABEL_46:
          if (v14)
          {
            do
            {
              if (v14[1].n128_i8[7] < 0)
              {
                operator delete(v14->n128_u64[0]);
              }

              v14 += 2;
              --v12;
            }

            while (v12);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(a1, v16, v17, a4, a5);
          std::__stable_sort<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(v6 + 32 * (v12 >> 1), a2, v12 - (v12 >> 1), v14, a5);

          std::__inplace_merge<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(v6, (v6 + 32 * (v12 >> 1)), a2, v12 >> 1, v12 - (v12 >> 1), v14, a5);
        }
      }
    }
  }
}

void sub_2991682D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 32;
      --v2;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  if (a3)
  {
    v4 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2[-2].n128_u64, a1) & 0x80) != 0)
      {
        v28 = *v9;
        v4[1].n128_u64[0] = a2[-1].n128_u64[0];
        *v4 = v28;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        v4[1].n128_u64[1] = a2[-1].n128_u64[1];
        result = *v7;
        v4[3].n128_u64[0] = v7[1].n128_u64[0];
        v4[2] = result;
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v11 = &v7[1].n128_u64[1];
      }

      else
      {
        v10 = *v7;
        v4[1].n128_u64[0] = v7[1].n128_u64[0];
        *v4 = v10;
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v4[1].n128_u64[1] = v7[1].n128_u64[1];
        result = *v9;
        v4[3].n128_u64[0] = a2[-1].n128_u64[0];
        v4[2] = result;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        v11 = &a2[-1].n128_u64[1];
      }

      v4[3].n128_u64[1] = *v11;
    }

    else if (a3 == 1)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      a4[1].n128_u64[1] = a1[1].n128_u64[1];
    }

    else if (a3 > 8)
    {
      v22 = &a1[2 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(a1, v22, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v23 = &v7[2 * (a3 >> 1)];
      while (v23 != a2)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, v7) & 0x80) != 0)
        {
          result = *v23;
          v4[1].n128_u64[0] = v23[1].n128_u64[0];
          *v4 = result;
          v23->n128_u64[1] = 0;
          v23[1].n128_u64[0] = 0;
          v23->n128_u64[0] = 0;
          v24 = v23;
          v23 += 2;
        }

        else
        {
          result = *v7;
          v4[1].n128_u64[0] = v7[1].n128_u64[0];
          *v4 = result;
          v7->n128_u64[1] = 0;
          v7[1].n128_u64[0] = 0;
          v7->n128_u64[0] = 0;
          v24 = v7;
          v7 += 2;
        }

        v4[1].n128_u64[1] = v24[1].n128_u64[1];
        v4 += 2;
        if (v7 == v22)
        {
          if (v23 != a2)
          {
            v25 = 0;
            do
            {
              v26 = &v23[v25];
              v27 = &v4[v25];
              result = v23[v25];
              v27[1].n128_u64[0] = v23[v25 + 1].n128_u64[0];
              *v27 = result;
              v26->n128_u64[1] = 0;
              v26[1].n128_u64[0] = 0;
              v26->n128_u64[0] = 0;
              v27[1].n128_u64[1] = v23[v25 + 1].n128_u64[1];
              v25 += 2;
            }

            while (&v26[2] != a2);
          }

          return result;
        }
      }

      if (v7 != v22)
      {
        v29 = 0;
        do
        {
          v30 = &v4[v29];
          v31 = &v7[v29];
          result = v7[v29];
          v30[1].n128_u64[0] = v7[v29 + 1].n128_u64[0];
          *v30 = result;
          v31->n128_u64[1] = 0;
          v31[1].n128_u64[0] = 0;
          v31->n128_u64[0] = 0;
          v30[1].n128_u64[1] = v7[v29 + 1].n128_u64[1];
          v29 += 2;
        }

        while (&v31[2] != v22);
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      a4[1].n128_u64[1] = a1[1].n128_u64[1];
      v12 = a1 + 2;
      if (&a1[2] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v12;
          v16 = v14 + 2;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v14) & 0x80) != 0)
          {
            *v16 = *v14;
            v17 = v14[1].n128_u64[1];
            v14[3].n128_u64[0] = v14[1].n128_u64[0];
            v14->n128_u64[1] = 0;
            v14[1].n128_u64[0] = 0;
            v14->n128_u64[0] = 0;
            v14[3].n128_u64[1] = v17;
            v18 = v4;
            if (v14 != v4)
            {
              v19 = v13;
              while (1)
              {
                v18 = (v4 + v19);
                v20 = (&v4[-2] + v19);
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v20) & 0x80) == 0)
                {
                  break;
                }

                if (v18[1].n128_i8[7] < 0)
                {
                  operator delete(v18->n128_u64[0]);
                }

                v21 = v4 + v19;
                *v18 = *v20;
                v18[1].n128_u64[0] = *(v4[-1].n128_u64 + v19);
                *(v21 - 9) = 0;
                *v20 = 0;
                *(v21 + 3) = *(&v4->n128_u64[-1] + v19);
                v19 -= 32;
                if (!v19)
                {
                  v18 = v4;
                  break;
                }
              }
            }

            if (v18[1].n128_i8[7] < 0)
            {
              operator delete(v18->n128_u64[0]);
            }

            result = *v15;
            v18[1].n128_u64[0] = v15[1].n128_u64[0];
            *v18 = result;
            v7[3].n128_u8[7] = 0;
            v15->n128_u8[0] = 0;
            v18[1].n128_u64[1] = v7[3].n128_u64[1];
          }

          else
          {
            result = *v15;
            v14[3].n128_u64[0] = v15[1].n128_u64[0];
            *v16 = result;
            v15->n128_u64[1] = 0;
            v15[1].n128_u64[0] = 0;
            v15->n128_u64[0] = 0;
            v14[3].n128_u64[1] = v7[3].n128_u64[1];
          }

          v12 = v15 + 2;
          v13 += 32;
          v14 = v16;
          v7 = v15;
        }

        while (&v15[2] != a2);
      }
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7)
{
  v73 = a5;
  if (a5)
  {
    while (a4 > a7 && v73 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        v15 = v13 + a1;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v13 + a1)) & 0x80) != 0)
        {
          break;
        }

        v13 += 4;
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = -v14;
      v18 = v73;
      v68 = a3;
      v70 = a6;
      v72 = a7;
      if (-v14 >= v73)
      {
        if (v14 == -1)
        {
          v63 = v13 + a1;
          v64 = *(v13 + a1);
          v76 = *(v13 + a1 + 16);
          v75 = v64;
          v65 = *a2;
          *(v63 + 16) = a2[2];
          *v63 = v65;
          *a2 = v75;
          a2[2] = v76;
          v66 = *(v13 + a1 + 24);
          *(v63 + 24) = a2[3];
          a2[3] = v66;
          return;
        }

        v23 = v17 / 2;
        v21 = (&v13[4 * (v17 / 2)] + a1);
        v20 = a2;
        if (a2 != a3)
        {
          v67 = v17 / 2;
          v24 = (a3 - a2) >> 5;
          v20 = a2;
          do
          {
            v25 = &v20[4 * (v24 >> 1)];
            v26 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v25, v21);
            if (v26 >= 0)
            {
              v24 >>= 1;
            }

            else
            {
              v24 += ~(v24 >> 1);
            }

            if (v26 < 0)
            {
              v20 = v25 + 4;
            }
          }

          while (v24);
          v23 = v67;
          v18 = v73;
        }

        v19 = (v20 - a2) >> 5;
      }

      else
      {
        v19 = v73 / 2;
        v20 = &a2[4 * (v73 / 2)];
        v21 = a2;
        if ((a2 - a1) != v13)
        {
          v22 = (a2 - a1 - v13) >> 5;
          v21 = (v13 + a1);
          do
          {
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &v21[4 * (v22 >> 1)]) & 0x80u) != 0)
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 4 * (v22 >> 1) + 4;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v19 = v73 / 2;
          v18 = v73;
        }

        v23 = (v21 - a1 - v13) >> 5;
      }

      a3 = v20;
      if (v21 != a2)
      {
        a3 = v21;
        if (a2 != v20)
        {
          a3 = (v21 + 4);
          v27 = v21 + 4;
          v28 = a2;
          while (1)
          {
            v29 = *(v27 - 2);
            v30 = *(v27 - 2);
            v31 = v28[2];
            *(v27 - 2) = *v28;
            *(v27 - 2) = v31;
            *v28 = v30;
            v28[2] = v29;
            v32 = *(v27 - 1);
            *(v27 - 1) = v28[3];
            v28[3] = v32;
            v28 += 4;
            if (v28 == v20)
            {
              break;
            }

            if (v27 == a2)
            {
              a2 = v28;
            }

            v27 += 4;
            a3 += 32;
          }

          if (v27 != a2)
          {
            v33 = a2;
            do
            {
              while (1)
              {
                v34 = *v27;
                v76 = v27[2];
                v75 = v34;
                v35 = *v33;
                v27[2] = v33[2];
                *v27 = v35;
                v36 = v75;
                v33[2] = v76;
                *v33 = v36;
                v37 = v27[3];
                v27[3] = v33[3];
                v33[3] = v37;
                v27 += 4;
                v33 += 4;
                if (v33 == v20)
                {
                  break;
                }

                if (v27 == a2)
                {
                  a2 = v33;
                }
              }

              v33 = a2;
            }

            while (v27 != a2);
          }
        }
      }

      a4 = -v14 - v23;
      v38 = v18 - v19;
      if (v23 + v19 >= v18 - (v23 + v19) - v14)
      {
        v40 = v23;
        v41 = v19;
        std::__inplace_merge<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(a3, v20, v68, -v14 - v23, v18 - v19, v70, v72);
        v20 = v21;
        a6 = v70;
        v38 = v41;
        a4 = v40;
      }

      else
      {
        v39 = v21;
        a6 = v70;
        std::__inplace_merge<std::_ClassicAlgPolicy,MeCab::Dictionary::compile(MeCab::Param const&,std::vector<std::string> const&,char const*,MeCab::CompileOptions const&)::$_0 &,std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>(v13 + a1, v39, a3, v23, v19, v70, v72);
        v15 = a3;
        a3 = v68;
      }

      v73 = v38;
      a2 = v20;
      a1 = v15;
      a7 = v72;
      if (!v38)
      {
        return;
      }
    }

    if (a4 <= v73)
    {
      if (a2 == a1)
      {
        return;
      }

      v54 = a3;
      v43 = 0;
      v55 = a6;
      v56 = a1;
      do
      {
        v57 = *v56;
        v55[1].n128_u64[0] = *(v56 + 16);
        *v55 = v57;
        *(v56 + 8) = 0;
        *(v56 + 16) = 0;
        *v56 = 0;
        v55[1].n128_u64[1] = *(v56 + 24);
        ++v43;
        v56 += 32;
        v55 += 2;
      }

      while (v56 != a2);
      v58 = a6;
      while (a2 != v54)
      {
        v59 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v58);
        v60 = *(a1 + 23);
        if (v59 < 0)
        {
          if (v60 < 0)
          {
            operator delete(*a1);
          }

          v62 = *a2;
          *(a1 + 16) = a2[2];
          *a1 = v62;
          *(a2 + 23) = 0;
          *a2 = 0;
          *(a1 + 24) = a2[3];
          a2 += 4;
        }

        else
        {
          if (v60 < 0)
          {
            operator delete(*a1);
          }

          v61 = *v58;
          *(a1 + 16) = v58[1].n128_u64[0];
          *a1 = v61;
          v58[1].n128_u8[7] = 0;
          v58->n128_u8[0] = 0;
          *(a1 + 24) = v58[1].n128_u64[1];
          v58 += 2;
        }

        a1 += 32;
        if (v55 == v58)
        {
          goto LABEL_86;
        }
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::string,mecab_token_t *> *,std::pair<std::string,mecab_token_t *> *,std::pair<std::string,mecab_token_t *> *>(v58, v55, a1);
    }

    else
    {
      if (a2 == a3)
      {
        return;
      }

      v42 = 0;
      v43 = 0;
      do
      {
        v44 = &a6[v42 / 0x10];
        v45 = &a2[v42 / 8];
        v46 = *&a2[v42 / 8];
        v44[1].n128_u64[0] = a2[v42 / 8 + 2];
        *v44 = v46;
        v45[1] = 0;
        v45[2] = 0;
        *v45 = 0;
        v44[1].n128_u64[1] = a2[v42 / 8 + 3];
        ++v43;
        v42 += 32;
      }

      while (v45 + 4 != a3);
      v69 = a3;
      v71 = a6;
      v47 = &a6[v42 / 0x10];
      v48 = a3 - 32;
      v49 = a3;
      v74 = v47;
      while (a2 != a1)
      {
        v50 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v47 - 32), a2 - 4);
        if (v50 >= 0)
        {
          v51 = v47;
        }

        else
        {
          v51 = a2;
        }

        if (v50 >= 0)
        {
          v52 = v47 - 32;
        }

        else
        {
          v52 = (a2 - 4);
        }

        if (v50 >= 0)
        {
          v47 -= 32;
        }

        else
        {
          a2 -= 4;
        }

        if (*(v48 + 23) < 0)
        {
          operator delete(*v48);
        }

        v53 = *v52;
        *(v48 + 16) = *(v52 + 16);
        *v48 = v53;
        *(v51 - 9) = 0;
        *v52 = 0;
        *(v48 + 24) = *(v51 - 8);
        v49 -= 32;
        v48 -= 32;
        a3 = v69;
        if (v47 == v71)
        {
          a6 = v71;
          goto LABEL_86;
        }
      }

      a6 = v71;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::reverse_iterator<std::pair<std::string,mecab_token_t *> *>,std::reverse_iterator<std::pair<std::string,mecab_token_t *> *>,std::reverse_iterator<std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>,0>(&v75, v74, v47, v71, v71, a3, v49);
    }

LABEL_86:
    if (a6)
    {
      do
      {
        if (a6[1].n128_i8[7] < 0)
        {
          operator delete(a6->n128_u64[0]);
        }

        a6 += 2;
        --v43;
      }

      while (v43);
    }
  }
}

__n128 std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::string,mecab_token_t *> *,std::pair<std::string,mecab_token_t *> *,std::pair<std::string,mecab_token_t *> *>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      result = *v5;
      *(a3 + 16) = v5[1].n128_u64[0];
      *a3 = result;
      v5[1].n128_u8[7] = 0;
      v5->n128_u8[0] = 0;
      *(a3 + 24) = v5[1].n128_u64[1];
      v5 += 2;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return result;
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::reverse_iterator<std::pair<std::string,mecab_token_t *> *>,std::reverse_iterator<std::pair<std::string,mecab_token_t *> *>,std::reverse_iterator<std::__wrap_iter<std::pair<std::string,mecab_token_t *> *>>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v9 = a3;
  if (a3 != a5)
  {
    v13 = a7 - 32;
    do
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v14 = *(v9 - 32);
      *(v13 + 16) = *(v9 - 16);
      *v13 = v14;
      *(v9 - 9) = 0;
      *(v9 - 32) = 0;
      *(v13 + 24) = *(v9 - 8);
      v13 -= 32;
      v7 -= 32;
      v9 -= 32;
    }

    while (v9 != a5);
    v9 = a5;
  }

  *a1 = a2;
  a1[1] = v9;
  a1[2] = a6;
  a1[3] = v7;
}

uint64_t MeCab::Param::dump_config(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = (result + 16);
  if (v2 != (result + 16))
  {
    v5 = MEMORY[0x29EDC93D0];
    do
    {
      v6 = *(v2 + 55);
      if (v6 >= 0)
      {
        v7 = (v2 + 4);
      }

      else
      {
        v7 = v2[4];
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v7, v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
      v11 = *(v2 + 79);
      if (v11 >= 0)
      {
        v12 = (v2 + 7);
      }

      else
      {
        v12 = v2[7];
      }

      if (v11 >= 0)
      {
        v13 = *(v2 + 79);
      }

      else
      {
        v13 = v2[8];
      }

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v19, v5);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v19);
      std::ostream::put();
      result = std::ostream::flush();
      v16 = v2[1];
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
          v17 = v2[2];
          v18 = *v17 == v2;
          v2 = v17;
        }

        while (!v18);
      }

      v2 = v17;
    }

    while (v17 != v3);
  }

  return result;
}

BOOL MeCab::Param::load(MeCab::Param *this, const char *a2)
{
  v58[19] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v56);
  v4 = v56[0];
  if ((v57[*(v56[0] - 24) + 16] & 5) != 0)
  {
    v6 = *(this + 16);
    v5 = (this + 128);
    std::ios_base::clear((v5 + *(v6 - 24)), 0);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/param.cpp", 59);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x29C29A250](v8, 130);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") [", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ifs", 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] ", 2);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "no such file or directory: ", 27);
    v14 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a2, v14);
    v15 = 0;
    goto LABEL_61;
  }

  memset(&__str, 0, sizeof(__str));
  v16 = MEMORY[0x29EDC93D0];
  v17 = MEMORY[0x29EDCA600];
  while (1)
  {
    std::ios_base::getloc((v56 + *(v4 - 24)));
    v18 = std::locale::use_facet(&v53, v16);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v53);
    v20 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v56, &__str, v19);
    v15 = (*(v20 + *(*v20 - 24) + 32) & 5) != 0;
    if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_51;
      }

      v21 = *__str.__r_.__value_.__l.__data_;
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_51;
      }

      v21 = __str.__r_.__value_.__s.__data_[0];
    }

    if (v21 != 59 && v21 != 35)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (!size || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v23 = &__str) : (v23 = __str.__r_.__value_.__r.__words[0]), (v24 = memchr(v23, 61, size)) == 0 || (v25 = v24, &v24[-v23] == -1)))
      {
        v40 = *(this + 16);
        v39 = (this + 128);
        std::ios_base::clear((v39 + *(v40 - 24)), 0);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/param.cpp", 59);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "(", 1);
        v43 = MEMORY[0x29C29A250](v42, 138);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ") [", 3);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "pos != std::string::npos", 24);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "] ", 2);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "format error: ", 14);
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
          v49 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v49 = __str.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, p_str, v49);
        break;
      }

      v26 = &v24[-v23 + 1];
      do
      {
        v27 = v26;
        v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __str.__r_.__value_.__l.__size_;
        }

        if (v26 >= v28)
        {
          break;
        }

        v29 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
        v30 = v29->__r_.__value_.__s.__data_[v27];
        v31 = (v30 & 0x80000000) != 0 ? __maskrune(v30, 0x4000uLL) : *(v17 + 4 * v30 + 60) & 0x4000;
        v26 = v27 + 1;
      }

      while (v31);
      v32 = &v25[~v23];
      while (1)
      {
        v33 = v32;
        v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((v33 & 0x8000000000000000) != 0)
        {
          break;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &__str;
        }

        else
        {
          v35 = __str.__r_.__value_.__r.__words[0];
        }

        v36 = v33[v35];
        if ((v36 & 0x80000000) != 0)
        {
          v37 = __maskrune(v36, 0x4000uLL);
        }

        else
        {
          v37 = *(v17 + 4 * v36 + 60) & 0x4000;
        }

        v32 = v33 - 1;
        if (!v37)
        {
          v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          break;
        }
      }

      if ((v34 & 0x80u) != 0)
      {
        v34 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&v53, &__str, v27, v34 - v27, &__p);
      std::string::basic_string(&__p, &__str, 0, (v33 + 1), &v55);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      MeCab::Param::set<std::string>(this, p_p, &v53, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }
    }

LABEL_51:
    v4 = v56[0];
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_61:
  v56[0] = *MEMORY[0x29EDC9518];
  *(v56 + *(v56[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v57);
  std::istream::~istream();
  MEMORY[0x29C29A320](v58);
  v50 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_29916941C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a28, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29A320](&a72);
  _Unwind_Resume(a1);
}

uint64_t MeCab::Param::open(uint64_t a1, int a2, char **a3, uint64_t a4)
{
  v97[2] = *MEMORY[0x29EDCA608];
  if (a2 <= 0)
  {
    if (*(a1 + 79) < 0)
    {
      *(a1 + 64) = 7;
      v25 = *(a1 + 56);
    }

    else
    {
      v25 = (a1 + 56);
      *(a1 + 79) = 7;
    }

    strcpy(v25, "unknown");
LABEL_108:
    result = 1;
    goto LABEL_109;
  }

  std::string::basic_string[abi:ne200100]<0>(&v96, *a3);
  v6 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&v96.__first_;
  *(a1 + 72) = v96.__end_;
  std::string::basic_string[abi:ne200100]<0>(&v94, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n");
  v7 = std::string::append(&v94, "\nUsage: ", 8uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 79);
  if (v9 >= 0)
  {
    v10 = (a1 + 56);
  }

  else
  {
    v10 = *(a1 + 56);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 79);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  v12 = std::string::append(&v95, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v96.__end_ = v12->__r_.__value_.__r.__words[2];
  *&v96.__first_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v96, " [options] files\n", 0x11uLL);
  v15 = v14->__r_.__value_.__r.__words[0];
  v97[0] = v14->__r_.__value_.__l.__size_;
  *(v97 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v17 = v97[0];
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 95) = *(v97 + 7);
  *(a1 + 103) = v16;
  if (SHIBYTE(v96.__end_) < 0)
  {
    operator delete(v96.__first_);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v94, "mecab");
  v18 = std::string::append(&v94, " of ", 4uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v95, "0.996", 5uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v96.__end_ = v20->__r_.__value_.__r.__words[2];
  *&v96.__first_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v96, 10);
  v97[0] = v96.__begin_;
  first = v96.__first_;
  *(v97 + 7) = *(&v96.__begin_ + 7);
  end_high = HIBYTE(v96.__end_);
  memset(&v96, 0, 24);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
    v26 = SHIBYTE(v96.__end_);
    v27 = v97[0];
    *(a1 + 104) = first;
    *(a1 + 112) = v27;
    *(a1 + 119) = *(v97 + 7);
    *(a1 + 127) = end_high;
    if (v26 < 0)
    {
      operator delete(v96.__first_);
    }
  }

  else
  {
    v24 = v97[0];
    *(a1 + 104) = first;
    *(a1 + 112) = v24;
    *(a1 + 119) = *(v97 + 7);
    *(a1 + 127) = end_high;
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v28 = *a4;
  if (*a4)
  {
    v29 = 0;
    v30 = (a4 + 40);
    v31 = *a4;
    do
    {
      v32 = strlen(v31);
      v33 = *(v30 - 2);
      if (v33)
      {
        v34 = v32 + strlen(v33) + 2;
      }

      else
      {
        v34 = v32 + 1;
      }

      if (v34 > v29)
      {
        v29 = v34;
      }

      v35 = *v30;
      v30 += 5;
      v31 = v35;
    }

    while (v35);
    v36 = 0;
    do
    {
      v37 = a4 + 40 * v36;
      v38 = strlen(v28);
      v39 = *(v37 + 24);
      if (v39)
      {
        v38 += strlen(v39) + 1;
      }

      std::string::append((a1 + 80), " -", 2uLL);
      std::string::push_back((a1 + 80), *(v37 + 8));
      std::string::append((a1 + 80), ", --", 4uLL);
      v40 = strlen(*v37);
      std::string::append((a1 + 80), *v37, v40);
      if (*(v37 + 24))
      {
        std::string::push_back((a1 + 80), 61);
        v41 = strlen(*(v37 + 24));
        std::string::append((a1 + 80), *(v37 + 24), v41);
      }

      while (v38 <= v29)
      {
        std::string::push_back((a1 + 80), 32);
        ++v38;
      }

      v42 = strlen(*(v37 + 32));
      std::string::append((a1 + 80), *(v37 + 32), v42);
      std::string::push_back((a1 + 80), 10);
      ++v36;
      v28 = *(a4 + 40 * v36);
    }

    while (v28);
  }

  std::string::push_back((a1 + 80), 10);
  v43 = *a4;
  if (*a4)
  {
    v44 = (a4 + 40);
    do
    {
      v45 = *(v44 - 3);
      if (v45)
      {
        std::string::basic_string[abi:ne200100]<0>(&v96, v45);
        MeCab::Param::set<std::string>(a1, v43, &v96, 1);
        if (SHIBYTE(v96.__end_) < 0)
        {
          operator delete(v96.__first_);
        }
      }

      v46 = *v44;
      v44 += 5;
      v43 = v46;
    }

    while (v46);
  }

  result = 1;
  if (a2 == 1)
  {
    goto LABEL_109;
  }

  v48 = (a1 + 32);
  LODWORD(v49) = 1;
  while (1)
  {
    v50 = a3[v49];
    if (*v50 == 45)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&v95, a3[v49]);
    v57 = *(a1 + 40);
    v56 = *(a1 + 48);
    if (v57 >= v56)
    {
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v57 - *v48) >> 3);
      v60 = v59 + 1;
      if (v59 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
      }

      v61 = 0xAAAAAAAAAAAAAAABLL * ((v56 - *v48) >> 3);
      if (2 * v61 > v60)
      {
        v60 = 2 * v61;
      }

      if (v61 >= 0x555555555555555)
      {
        v62 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v62 = v60;
      }

      v96.__end_cap_.__value_ = v48;
      if (v62)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v48, v62);
      }

      v72 = 24 * v59;
      v73 = *&v95.__r_.__value_.__l.__data_;
      *(v72 + 16) = *(&v95.__r_.__value_.__l + 2);
      *v72 = v73;
      memset(&v95, 0, sizeof(v95));
      v74 = 24 * v59 + 24;
      v75 = *(a1 + 32);
      v76 = *(a1 + 40) - v75;
      v77 = (24 * v59 - v76);
      memcpy(v77, v75, v76);
      v78 = *(a1 + 32);
      *(a1 + 32) = v77;
      *(a1 + 40) = v74;
      v79 = *(a1 + 48);
      *(a1 + 48) = 0;
      v96.__end_ = v78;
      v96.__end_cap_.__value_ = v79;
      v96.__first_ = v78;
      v96.__begin_ = v78;
      std::__split_buffer<std::string>::~__split_buffer(&v96);
      v80 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
      *(a1 + 40) = v74;
      if ((v80 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v81 = v95.__r_.__value_.__r.__words[0];
      goto LABEL_101;
    }

    v58 = *&v95.__r_.__value_.__l.__data_;
    *(v57 + 16) = *(&v95.__r_.__value_.__l + 2);
    *v57 = v58;
    *(a1 + 40) = v57 + 24;
LABEL_102:
    LODWORD(v49) = v49 + 1;
    if (v49 >= a2)
    {
      goto LABEL_108;
    }
  }

  v51 = v50[1];
  if (!v50[1])
  {
    goto LABEL_102;
  }

  v52 = v48;
  v53 = v49;
  if (v51 != 45)
  {
    v66 = *a4;
    if (!*a4)
    {
      goto LABEL_104;
    }

    v67 = *(a4 + 8);
    v68 = a4;
    while (v67 != v51)
    {
      v66 = *(v68 + 40);
      if (!v66)
      {
        goto LABEL_104;
      }

      v67 = *(v68 + 48);
      v68 += 40;
    }

    v71 = v50[2];
    v70 = v50 + 2;
    v69 = v71;
    if (!*(v68 + 24))
    {
      if (v69)
      {
        goto LABEL_110;
      }

      LODWORD(v96.__first_) = 1;
      MeCab::Param::set<int>(a1, v66, &v96, 1);
      goto LABEL_102;
    }

    if (!v69)
    {
      v49 = v49 + 1;
      if (v53 + 1 == a2)
      {
        goto LABEL_111;
      }

      std::string::basic_string[abi:ne200100]<0>(&v96, a3[v49]);
      MeCab::Param::set<std::string>(a1, v66, &v96, 1);
      if (SHIBYTE(v96.__end_) < 0)
      {
        operator delete(v96.__first_);
      }

      goto LABEL_102;
    }

    std::string::basic_string[abi:ne200100]<0>(&v96, v70);
    MeCab::Param::set<std::string>(a1, v66, &v96, 1);
    goto LABEL_99;
  }

  for (i = 0; ; ++i)
  {
    v55 = v50[i + 2];
    if (!v50[i + 2] || v55 == 61)
    {
      break;
    }
  }

  if (!i)
  {
    goto LABEL_108;
  }

  v63 = *a4;
  if (!*a4)
  {
LABEL_104:
    v83 = strlen(a3[v49]);
    v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, a3[v49], v83);
    goto LABEL_105;
  }

  v64 = (a4 + 40);
  while (strlen(v63) != i || strncmp(v50 + 2, v63, i))
  {
    v65 = *v64;
    v64 += 5;
    v63 = v65;
    if (!v65)
    {
      goto LABEL_104;
    }
  }

  if (!*(v64 - 2))
  {
    if (v55 == 61)
    {
LABEL_110:
      v87 = strlen(a3[v49]);
      v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, a3[v49], v87);
      goto LABEL_105;
    }

    v48 = v52;
    LODWORD(v96.__first_) = 1;
    MeCab::Param::set<int>(a1, v63, &v96, 1);
    goto LABEL_102;
  }

  if (v55 == 61)
  {
    std::string::basic_string[abi:ne200100]<0>(&v96, &v50[i + 3]);
    v48 = v52;
    MeCab::Param::set<std::string>(a1, v63, &v96, 1);
    goto LABEL_99;
  }

  v49 = v49 + 1;
  v48 = v52;
  if (v53 + 1 != a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v96, a3[v49]);
    MeCab::Param::set<std::string>(a1, v63, &v96, 1);
LABEL_99:
    if (SHIBYTE(v96.__end_) < 0)
    {
      v81 = v96.__first_;
LABEL_101:
      operator delete(v81);
      goto LABEL_102;
    }

    goto LABEL_102;
  }

LABEL_111:
  v90 = strlen(a3[v53]);
  v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, a3[v53], v90);
LABEL_105:
  result = 0;
LABEL_109:
  v85 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299169DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29916A110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x29C29A350](a11, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Param::help_version(MeCab::Param *this)
{
  if (MeCab::Param::get<BOOL>(this, "help"))
  {
    v2 = this + 80;
    if ((*(this + 103) & 0x80000000) == 0)
    {
LABEL_4:
      v3 = strlen(v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v2, v3);
      return 0;
    }

LABEL_3:
    v2 = *v2;
    goto LABEL_4;
  }

  if (MeCab::Param::get<BOOL>(this, "version"))
  {
    v2 = this + 104;
    if ((*(this + 127) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return 1;
}

void MeCab::ModelImpl::~ModelImpl(MeCab::ModelImpl *this)
{
  *this = &unk_2A1F35DA8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 2) = &unk_2A1F35600;
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  MeCab::ModelImpl::~ModelImpl(this);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::ModelImpl::open(MeCab::Viterbi **this, int a2, char **a3)
{
  MeCab::Param::Param(v17);
  {
    v7 = MeCab::ModelImpl::open(this, v17);
  }

  else
  {
    v8 = MeCab::whatlog::str(&v18);
    std::string::basic_string[abi:ne200100]<0>(v15, v8);
    v9 = v16;
    v10 = v15[0];
    if (v16 >= 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v15[0];
    }

    strncpy(v12, v13, 0xFFuLL)[255] = 0;
    if (v9 < 0)
    {
      operator delete(v10);
    }

    v7 = 0;
  }

  MeCab::Param::~Param(v17);
  return v7;
}

void sub_29916A48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MeCab::Param::~Param(va);
  _Unwind_Resume(a1);
}

uint64_t MeCab::ModelImpl::open(MeCab::Viterbi **this, const MeCab::Param *a2)
{
  if (MeCab::Writer::open(this[3], a2))
  {
    MeCab::Viterbi::open(this[1], a2);
  }

  v4 = MeCab::whatlog::str((this[1] + 48));
  std::string::basic_string[abi:ne200100]<0>(&v14, v4);
  size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::append(&v14, " ", 1uLL);
  }

  v6 = MeCab::whatlog::str((this[3] + 88));
  v7 = strlen(v6);
  std::string::append(&v14, v6, v7);
  v8 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  v9 = v14.__r_.__value_.__r.__words[0];
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v14;
  }

  else
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  strncpy(v11, v12, 0xFFuLL)[255] = 0;
  if (v8 < 0)
  {
    operator delete(v9);
  }

  return 0;
}

void sub_29916A5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29916A6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MeCab::Param::~Param(va);
  _Unwind_Resume(a1);
}

uint64_t MeCab::ModelImpl::swap(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (!v3 || !*(a1 + 24))
  {
    v10 = "current model is not available";
LABEL_13:
    v8 = 0;
    strncpy(v9, v10, 0xFFuLL)[255] = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    v11 = "Invalid model is passed";
    goto LABEL_12;
  }

  if (!*(a2 + 8) || !*(a2 + 24))
  {
    v11 = "Passed model is not available";
LABEL_12:
    goto LABEL_13;
  }

  v5 = 0;
  atomic_fetch_add((a1 + 56), 1uLL);
  atomic_compare_exchange_strong((a1 + 48), &v5, 1uLL);
  if (v5)
  {
    do
    {
      sched_yield();
      v6 = 0;
      atomic_compare_exchange_strong((a1 + 48), &v6, 1uLL);
    }

    while (v6);
  }

  v7 = *(v2 + 8);
  *(v2 + 8) = 0;
  *(a1 + 8) = v7;
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 40) = *(v2 + 40);
  atomic_fetch_add((a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add((a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  (*(*v3 + 8))(v3);
  v8 = 1;
  v2 = a2;
LABEL_14:
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  return v8;
}

void sub_29916A888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 56))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *MeCab::scoped_ptr<MeCab::Model>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35F98;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  return a1;
}

uint64_t MeCab::ModelImpl::createTagger(MeCab::ModelImpl *this, uint64_t a2)
{
  if (*(this + 1) && *(this + 3))
  {
    operator new();
  }

  strncpy(v2, "Model is not available", 0xFFuLL)[255] = 0;
  return 0;
}

uint64_t MeCab::ModelImpl::createLattice(MeCab::ModelImpl *this, uint64_t a2)
{
  if (*(this + 1) && *(this + 3))
  {
    operator new();
  }

  strncpy(v2, "Model is not available", 0xFFuLL)[255] = 0;
  return 0;
}

void *MeCab::scoped_ptr<MeCab::ModelImpl>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35FC8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  return a1;
}

void MeCab::TaggerImpl::~TaggerImpl(void **this)
{
  *this = &unk_2A1F356A0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  this[4] = &unk_2A1F35D78;
  v2 = this[5];
  if (v2)
  {
    (*(*v2 + 312))(v2);
  }

  this[2] = &unk_2A1F35FC8;
  v3 = this[3];
  if (v3)
  {
    (*(*v3 + 56))(v3);
  }
}

{
  MeCab::TaggerImpl::~TaggerImpl(this);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::TaggerImpl::what(MeCab::TaggerImpl *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t MeCab::TaggerImpl::set_partial(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 48) = *(this + 48) & 0xFFFFFFFB | v2;
  return this;
}

double MeCab::TaggerImpl::set_theta(MeCab::TaggerImpl *this, float a2)
{
  result = a2;
  *(this + 7) = result;
  return result;
}

uint64_t MeCab::TaggerImpl::set_lattice_level(uint64_t this, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(this + 48) |= dword_299181A54[a2];
  }

  return this;
}

uint64_t MeCab::TaggerImpl::lattice_level(MeCab::TaggerImpl *this)
{
  v1 = *(this + 12);
  if ((v1 & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (v1 >> 1) & 1;
  }
}

uint64_t MeCab::TaggerImpl::set_all_morphs(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(this + 48) = *(this + 48) & 0xFFFFFFDF | v2;
  return this;
}

uint64_t MeCab::TaggerImpl::parse(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 56) >= 1)
  {
    do
    {
      sched_yield();
    }

    while (*(v4 + 56) > 0);
  }

  atomic_fetch_add((v4 + 48), 2uLL);
  while ((*(v4 + 48) & 1) != 0)
  {
    sched_yield();
  }

  result = MeCab::Viterbi::analyze(*(*(a1 + 8) + 8), a2);
  atomic_fetch_add((v4 + 48), 0xFFFFFFFFFFFFFFFELL);
  return result;
}

uint64_t MeCab::TaggerImpl::parse(MeCab::TaggerImpl *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = *(*this + 72);

  return v5(this, __s, v4);
}

uint64_t MeCab::TaggerImpl::parse(MeCab::TaggerImpl *this, const char *a2, uint64_t a3)
{
  v6 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v6 + 80))(v6, a2, a3);
  MeCab::TaggerImpl::initRequestType(this);
  v7 = (**this)(this, v6);
  v8 = *v6;
  if (v7)
  {
    result = (*(*v6 + 192))(v6);
    if (result)
    {
      return result;
    }

    v8 = *v6;
  }

  v10 = (*(v8 + 288))(v6);
  std::string::__assign_external((this + 64), v10);
  return 0;
}

uint64_t MeCab::TaggerImpl::mutable_lattice(MeCab::TaggerImpl *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    v1 = (*(**(this + 1) + 32))(*(this + 1));
    v3 = *(this + 5);
    if (v3)
    {
      (*(*v3 + 312))(v3);
    }

    *(this + 5) = v1;
  }

  return v1;
}

uint64_t MeCab::TaggerImpl::initRequestType(MeCab::TaggerImpl *this)
{
  v2 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v2 + 152))(v2, *(this + 12));
  v3 = MeCab::TaggerImpl::mutable_lattice(this);
  v4.n128_u64[0] = *(this + 7);
  v4.n128_f32[0] = v4.n128_f64[0];
  v5 = *(*v3 + 112);

  return v5(v4);
}

uint64_t MeCab::TaggerImpl::parse(MeCab::TaggerImpl *this, const char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v10 + 80))(v10, a2, a3);
  MeCab::TaggerImpl::initRequestType(this);
  v11 = (**this)(this, v10);
  v12 = *v10;
  if (v11)
  {
    result = (*(*v10 + 216))(v10, a4, a5);
    if (result)
    {
      return result;
    }

    v12 = *v10;
  }

  v14 = (*(v12 + 288))(v10);
  std::string::__assign_external((this + 64), v14);
  return 0;
}

uint64_t MeCab::TaggerImpl::parseToNode(MeCab::TaggerImpl *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = *(*this + 80);

  return v5(this, __s, v4);
}

uint64_t MeCab::TaggerImpl::parseToNode(MeCab::TaggerImpl *this, const char *a2, uint64_t a3)
{
  v6 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v6 + 80))(v6, a2, a3);
  MeCab::TaggerImpl::initRequestType(this);
  v7 = (**this)(this, v6);
  v8 = *v6;
  if (v7)
  {
    v9 = *(v8 + 16);

    return v9(v6);
  }

  else
  {
    v11 = (*(v8 + 288))(v6);
    std::string::__assign_external((this + 64), v11);
    return 0;
  }
}

uint64_t MeCab::TaggerImpl::parseNBestInit(MeCab::TaggerImpl *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = *(*this + 96);

  return v5(this, __s, v4);
}

uint64_t MeCab::TaggerImpl::parseNBestInit(MeCab::TaggerImpl *this, const char *a2, uint64_t a3)
{
  v6 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v6 + 80))(v6, a2, a3);
  MeCab::TaggerImpl::initRequestType(this);
  (*(*v6 + 160))(v6, 2);
  v7 = (**this)(this, v6);
  if ((v7 & 1) == 0)
  {
    v8 = (*(*v6 + 288))(v6);
    std::string::__assign_external((this + 64), v8);
  }

  return v7;
}

uint64_t MeCab::TaggerImpl::nextNode(MeCab::TaggerImpl *this)
{
  v1 = MeCab::TaggerImpl::mutable_lattice(this);
  v2 = (*(*v1 + 128))(v1);
  v3 = *v1;
  if (v2)
  {
    v4 = *(v3 + 16);

    return v4(v1);
  }

  else
  {
    (*(v3 + 296))(v1, "no more results");
    return 0;
  }
}

uint64_t MeCab::TaggerImpl::next(MeCab::TaggerImpl *this)
{
  v2 = MeCab::TaggerImpl::mutable_lattice(this);
  v3 = (*(*v2 + 128))(v2);
  v4 = *v2;
  if (v3)
  {
    result = (*(v4 + 192))(v2);
    if (result)
    {
      return result;
    }

    v6 = (*(*v2 + 288))(v2);
    std::string::__assign_external((this + 64), v6);
  }

  else
  {
    (*(v4 + 296))(v2, "no more results");
  }

  return 0;
}

uint64_t MeCab::TaggerImpl::next(MeCab::TaggerImpl *this, char *a2, uint64_t a3)
{
  v6 = MeCab::TaggerImpl::mutable_lattice(this);
  v7 = (*(*v6 + 128))(v6);
  v8 = *v6;
  if (v7)
  {
    result = (*(v8 + 216))(v6, a2, a3);
    if (result)
    {
      return result;
    }

    v10 = (*(*v6 + 288))(v6);
    std::string::__assign_external((this + 64), v10);
  }

  else
  {
    (*(v8 + 296))(v6, "no more results");
  }

  return 0;
}

uint64_t MeCab::TaggerImpl::parseNBest(MeCab::TaggerImpl *this, uint64_t a2, const char *__s)
{
  v6 = strlen(__s);
  v7 = *(*this + 88);

  return v7(this, a2, __s, v6);
}

uint64_t MeCab::TaggerImpl::parseNBest(MeCab::TaggerImpl *this, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v8 + 80))(v8, a3, a4);
  MeCab::TaggerImpl::initRequestType(this);
  (*(*v8 + 160))(v8, 2);
  v9 = (**this)(this, v8);
  v10 = *v8;
  if (v9)
  {
    result = (*(*v8 + 208))(v8, a2);
    if (result)
    {
      return result;
    }

    v10 = *v8;
  }

  v12 = (*(v10 + 288))(v8);
  std::string::__assign_external((this + 64), v12);
  return 0;
}

uint64_t MeCab::TaggerImpl::parseNBest(MeCab::TaggerImpl *this, uint64_t a2, const char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = MeCab::TaggerImpl::mutable_lattice(this);
  (*(*v12 + 80))(v12, a3, a4);
  MeCab::TaggerImpl::initRequestType(this);
  (*(*v12 + 160))(v12, 2);
  v13 = (**this)(this, v12);
  v14 = *v12;
  if (v13)
  {
    result = (*(*v12 + 232))(v12, a2, a5, a6);
    if (result)
    {
      return result;
    }

    v14 = *v12;
  }

  v16 = (*(v14 + 288))(v12);
  std::string::__assign_external((this + 64), v16);
  return 0;
}

uint64_t MeCab::TaggerImpl::formatNode(uint64_t a1, uint64_t a2)
{
  v4 = MeCab::TaggerImpl::mutable_lattice(a1);
  v5 = (*(*v4 + 200))(v4, a2);
  if (!v5)
  {
    v6 = MeCab::TaggerImpl::mutable_lattice(a1);
    v7 = (*(*v6 + 288))(v6);
    std::string::__assign_external((a1 + 64), v7);
  }

  return v5;
}

uint64_t MeCab::TaggerImpl::formatNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MeCab::TaggerImpl::mutable_lattice(a1);
  v9 = (*(*v8 + 224))(v8, a2, a3, a4);
  if (!v9)
  {
    v10 = MeCab::TaggerImpl::mutable_lattice(a1);
    v11 = (*(*v10 + 288))(v10);
    std::string::__assign_external((a1 + 64), v11);
  }

  return v9;
}

void MeCab::LatticeImpl::LatticeImpl(MeCab::LatticeImpl *this, const MeCab::Writer *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1F35DF8;
  *(this + 24) = xmmword_299181820;
  *(this + 10) = 1;
  *(this + 3) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 21) = a2;
  *(this + 22) = &unk_2A1F35680;
  *(this + 23) = 0;
  operator new();
}

void sub_29916C1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10)
{
  v20 = v14[10];
  if (v20)
  {
    v14[11] = v20;
    operator delete(v20);
  }

  *v12 = v18;
  if (*v13)
  {
    (*(**v13 + 8))(*v13);
  }

  v14[6] = v17;
  v21 = v14[7];
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v14[4] = v16;
  v22 = v14[5];
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v14[2] = v15;
  v23 = v14[3];
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  MEMORY[0x29C29A380](v14, 0x10B1C40567112E6);
  *(v10 + 176) = a10;
  v24 = *(v10 + 184);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v10 + 144);
  if (v25)
  {
    *(v10 + 152) = v25;
    operator delete(v25);
  }

  v26 = *(v10 + 120);
  if (v26)
  {
    *(v10 + 128) = v26;
    operator delete(v26);
  }

  v27 = *v11;
  if (*v11)
  {
    *(v10 + 104) = v27;
    operator delete(v27);
  }

  v28 = *(v10 + 72);
  if (v28)
  {
    *(v10 + 80) = v28;
    operator delete(v28);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(a1);
}

void *std::vector<mecab_node_t *>::reserve(void *result)
{
  if (!((result[2] - *result) >> 16))
  {
    v1 = result[1] - *result;
    operator new();
  }

  return result;
}

void *MeCab::scoped_ptr<MeCab::Allocator<mecab_node_t,mecab_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F36058;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MeCab::LatticeImpl::~LatticeImpl(MeCab::LatticeImpl *this)
{
  *this = &unk_2A1F35DF8;
  *(this + 24) = &unk_2A1F36058;
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 22) = &unk_2A1F35680;
  v3 = *(this + 23);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

{
  MeCab::LatticeImpl::~LatticeImpl(this);

  JUMPOUT(0x29C29A380);
}

double MeCab::LatticeImpl::clear(MeCab::LatticeImpl *this)
{
  v1 = *(this + 25);
  v1[1] = 0;
  v2 = v1[3];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v3 = v1[5];
  if (v3)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
  }

  v4 = v1[7];
  if (v4)
  {
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(v5 + 8) = 0;
  }

  *(this + 13) = *(this + 12);
  *(this + 10) = *(this + 9);
  *(this + 16) = *(this + 15);
  *(this + 19) = *(this + 18);
  result = 0.75;
  *(this + 24) = xmmword_299181820;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return result;
}

uint64_t MeCab::LatticeImpl::set_sentence(MeCab::LatticeImpl *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = *(*this + 80);

  return v5(this, __s, v4);
}

void MeCab::LatticeImpl::set_sentence(MeCab::LatticeImpl *this, char *a2, uint64_t a3)
{
  (**this)(this);
  v6 = a3 + 4;
  std::vector<mecab_learner_node_t *>::resize(this + 72, a3 + 4);
  std::vector<mecab_learner_node_t *>::resize(this + 96, a3 + 4);
  if (((*(*this + 144))(this, 64) & 1) != 0 || (*(*this + 144))(this, 4))
  {
    v7 = (*(*this + 176))(this);
    v8 = MeCab::Allocator<mecab_node_t,mecab_path_t>::alloc(v7, a3 + 1);
    a2 = strncpy(v8, a2, a3 + 1);
  }

  *(this + 1) = a2;
  *(this + 2) = a3;
  bzero(*(this + 9), 8 * v6);
  v9 = *(this + 12);

  bzero(v9, 8 * v6);
}

BOOL MeCab::LatticeImpl::next(MeCab::LatticeImpl *this)
{
  v2 = (*(*this + 144))(this, 2);
  v3 = *this;
  if (v2)
  {
    v4 = (*(v3 + 176))(this);
    v5 = MeCab::Allocator<mecab_node_t,mecab_path_t>::nbest_generator(v4);
    result = MeCab::NBestGenerator::next(v5);
    if (result)
    {
      MeCab::Viterbi::buildAllLattice(this);
      return 1;
    }
  }

  else
  {
    (*(v3 + 296))(this, "MECAB_NBEST request type is not set");
    return 0;
  }

  return result;
}

uint64_t MeCab::Allocator<mecab_node_t,mecab_path_t>::nbest_generator(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    operator new();
  }

  return *(a1 + 72);
}

void MeCab::LatticeImpl::set_result(MeCab::LatticeImpl *this, const char *a2)
{
  v87 = *MEMORY[0x29EDCA608];
  v4 = (*(*this + 176))(this);
  v5 = strlen(a2);
  v6 = MeCab::Allocator<mecab_node_t,mecab_path_t>::alloc(v4, v5 + 1);
  strncpy(v6, a2, v5 + 1);
  __p = 0;
  v83 = 0;
  v84 = 0;
  v7 = strlen(a2);
  v8 = strlen(v6);
  if (v7)
  {
    v9 = 0;
    v10 = &v6[v8];
    while (1)
    {
      v11 = v10;
      if (v6 != v10)
      {
        v11 = v6;
        while (*v11 != 10)
        {
          if (++v11 == v10)
          {
            v11 = v10;
            break;
          }
        }
      }

      *v11 = 0;
      v12 = v83;
      if (v83 >= v84)
      {
        v14 = (v83 - __p) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
        }

        v15 = (v84 - __p) >> 2;
        if (v15 <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        if (v84 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(&__p, v16);
        }

        v17 = (8 * v14);
        *v17 = v6;
        v13 = 8 * v14 + 8;
        v18 = v17 - (v83 - __p);
        memcpy(v18, __p, v83 - __p);
        v19 = __p;
        __p = v18;
        v83 = v13;
        v84 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v83 = v6;
        v13 = (v12 + 8);
      }

      v83 = v13;
      ++v9;
      if (v11 == v10)
      {
        break;
      }

      v6 = v11 + 1;
      if (v9 == v7)
      {
        v9 = v7;
        break;
      }
    }

    v20 = __p;
  }

  else
  {
    v20 = 0;
    v13 = 0;
    v9 = 0;
  }

  if (v9 != (v13 - v20) >> 3)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tagger.cpp", 60);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "(", 1);
    v23 = MEMORY[0x29C29A250](v22, 736);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ") [", 3);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "lsize == lines.size()", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "] ", 2);
    MeCab::die::~die(&v81);
  }

  memset(&v81, 0, sizeof(v81));
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (v13 != v20)
  {
    v26 = 0;
    while (2)
    {
      v27 = v20[v26];
      if (strcmp("EOS", v27))
      {
        v85 = 0;
        v86 = 0;
        v28 = strlen(v27);
        v29 = 0;
        v30 = &v27[v28];
        v31 = &v85;
        while (1)
        {
          v32 = v29;
          if (v27 == v30)
          {
            break;
          }

          v33 = v27;
          while (*v33 != 9)
          {
            if (++v33 == v30)
            {
              goto LABEL_39;
            }
          }

          *v33 = 0;
          *v31++ = v27;
          v29 = 1;
          v27 = v33 + 1;
          if (v32)
          {
            goto LABEL_40;
          }
        }

        v27 = v30;
LABEL_39:
        *v30 = 0;
        *v31 = v27;
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_40:
        v34 = v85;
        v35 = strlen(v85);
        std::string::append(&v81, v85, v35);
        std::string::basic_string[abi:ne200100]<0>(v73, v34);
        std::vector<std::string>::push_back[abi:ne200100](&v78, v73);
        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v73, v86);
        std::vector<std::string>::push_back[abi:ne200100](&v75, v73);
        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        ++v26;
        v20 = __p;
        if (v26 < (v83 - __p) >> 3)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v76 - v75 != v79 - v78)
  {
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tagger.cpp", 60);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "(", 1);
    v38 = MEMORY[0x29C29A250](v37, 753);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ") [", 3);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "features.size() == surfaces.size()", 34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "] ", 2);
    MeCab::die::~die(v73);
  }

  v41 = (*(*this + 176))(this);
  v42 = SHIBYTE(v81.__r_.__value_.__r.__words[2]);
  v43 = v81.__r_.__value_.__r.__words[0];
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v81.__r_.__value_.__l.__size_;
  }

  v45 = MeCab::Allocator<mecab_node_t,mecab_path_t>::alloc(v41, size + 1);
  v46 = v45;
  if (v42 >= 0)
  {
    v47 = &v81;
  }

  else
  {
    v47 = v43;
  }

  strncpy(v45, v47, size + 1);
  (*(*this + 72))(this, v46);
  v48 = (*(*this + 176))(this);
  v49 = MeCab::FreeList<mecab_node_t>::alloc(*(v48 + 24));
  v51 = v50;
  *(v50 + 64) = "BOS/EOS";
  *(v50 + 72) = "BOS/EOS";
  *(v50 + 91) = 2;
  v52 = (*(*this + 176))(this, v49);
  v53.n128_f64[0] = MeCab::FreeList<mecab_node_t>::alloc(*(v52 + 24));
  v55 = v54;
  *(v54 + 64) = "BOS/EOS";
  *(v54 + 72) = "BOS/EOS";
  *(v54 + 91) = 3;
  *(v51 + 64) = *(this + 1);
  **(this + 9) = v51;
  if (v79 == v78)
  {
    v62 = v51;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = (*(*this + 176))(this, v53);
      v61.n128_f64[0] = MeCab::FreeList<mecab_node_t>::alloc(*(v59 + 24));
      v62 = v60;
      *v60 = v51;
      *(v51 + 8) = v60;
      *(v60 + 64) = *(this + 1) + v58;
      v63 = v78;
      v64 = v78 + v56 * 8;
      v65 = *(v78 + v56 * 8 + 23);
      if (v65 < 0)
      {
        v65 = *(v64 + 8);
      }

      *(v60 + 80) = v65;
      v66 = *(v64 + 23);
      if (v66 < 0)
      {
        v66 = *(v63 + v56 * 8 + 8);
      }

      *(v60 + 82) = v66;
      *(v60 + 91) = 0;
      *(v60 + 92) = 0;
      *(v60 + 96) = 0;
      v67 = (*(*this + 176))(this, v61);
      v68 = &v75[v56];
      v69 = SHIBYTE(v75[v56 + 2]);
      if (v69 < 0)
      {
        v70 = *v68;
        v69 = v68[1];
      }

      else
      {
        v70 = &v75[v56];
      }

      v71 = MeCab::Allocator<mecab_node_t,mecab_path_t>::alloc(v67, v69 + 1);
      *(v62 + 72) = strncpy(v71, v70, v69 + 1);
      *(*(this + 12) + 8 * v58) = v62;
      v58 += *(v62 + 80);
      *(*(this + 9) + 8 * v58) = v62;
      ++v57;
      v56 += 3;
      v51 = v62;
    }

    while (v57 < 0xAAAAAAAAAAAAAAABLL * ((v79 - v78) >> 3));
  }

  *(v62 + 8) = v55;
  *v55 = v62;
  v73[0] = &v75;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v73);
  v75 = &v78;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v75);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  v72 = *MEMORY[0x29EDCA608];
}

void sub_29916D070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  a9 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::LatticeImpl::toString(MeCab::LatticeImpl *this)
{
  v2 = MeCab::LatticeImpl::stream(this);

  return MeCab::LatticeImpl::toStringInternal(this, v2);
}

uint64_t MeCab::LatticeImpl::toStringInternal(MeCab::LatticeImpl *this, MeCab::StringBuffer *a2)
{
  *(a2 + 1) = 0;
  v4 = *(this + 21);
  if (v4)
  {
    if ((MeCab::Writer::write(v4, this, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    MeCab::writeLattice(this, a2);
  }

  if (MeCab::StringBuffer::reserve(a2, 1))
  {
    *(*(a2 + 3) + (*(a2 + 1))++) = 0;
  }

  if ((*(a2 + 33) & 1) != 0 || (result = *(a2 + 3)) == 0)
  {
    (*(*this + 296))(this, "output buffer overflow");
    return 0;
  }

  return result;
}

uint64_t MeCab::LatticeImpl::stream(MeCab::LatticeImpl *this)
{
  if (!*(this + 23))
  {
    operator new();
  }

  return *(this + 23);
}

uint64_t MeCab::LatticeImpl::toString(MeCab::LatticeImpl *this, char *a2, uint64_t a3)
{
  v5[0] = &unk_2A1F35498;
  v5[1] = 0;
  v5[2] = a3;
  v5[3] = a2;
  v6 = 0;
  v3 = MeCab::LatticeImpl::toStringInternal(this, v5);
  MeCab::StringBuffer::~StringBuffer(v5);
  return v3;
}

void sub_29916D320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MeCab::StringBuffer::~StringBuffer(va);
  _Unwind_Resume(a1);
}

MeCab::StringBuffer *MeCab::writeLattice(uint64_t a1, MeCab::StringBuffer *a2)
{
  v3 = *((*(*a1 + 16))(a1) + 8);
  v4 = (v3 + 8);
  if (*(v3 + 8))
  {
    do
    {
      v5 = *(v3 + 64);
      v6 = *(v3 + 80);
      if (MeCab::StringBuffer::reserve(a2, v6))
      {
        memcpy((*(a2 + 3) + *(a2 + 1)), v5, v6);
        *(a2 + 1) += v6;
      }

      if (MeCab::StringBuffer::reserve(a2, 1))
      {
        *(*(a2 + 3) + (*(a2 + 1))++) = 9;
      }

      v7 = MeCab::StringBuffer::write(a2, *(v3 + 72));
      if (MeCab::StringBuffer::reserve(v7, 1))
      {
        *(*(a2 + 3) + (*(a2 + 1))++) = 10;
      }

      v3 = *v4;
      v8 = *v4;
      v9 = *(v8 + 8);
      v4 = (v8 + 8);
    }

    while (v9);
  }

  return MeCab::StringBuffer::write(a2, "EOS\n");
}

uint64_t MeCab::LatticeImpl::toString(MeCab::LatticeImpl *a1, uint64_t a2)
{
  v4 = MeCab::LatticeImpl::stream(a1);

  return MeCab::LatticeImpl::toStringInternal(a1, a2, v4);
}

uint64_t MeCab::LatticeImpl::toStringInternal(void *a1, uint64_t a2, MeCab::StringBuffer *this)
{
  *(this + 1) = 0;
  if (!a2)
  {
    v7 = "node is NULL";
LABEL_16:
    (*(*a1 + 296))(a1, v7);
    return 0;
  }

  v6 = a1[21];
  if (v6)
  {
    if ((MeCab::Writer::writeNode(v6, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 80);
    if (MeCab::StringBuffer::reserve(this, v9))
    {
      memcpy((*(this + 3) + *(this + 1)), v8, v9);
      *(this + 1) += v9;
    }

    if (MeCab::StringBuffer::reserve(this, 1))
    {
      *(*(this + 3) + (*(this + 1))++) = 9;
    }

    MeCab::StringBuffer::write(this, *(a2 + 72));
  }

  if (MeCab::StringBuffer::reserve(this, 1))
  {
    *(*(this + 3) + (*(this + 1))++) = 0;
  }

  if ((*(this + 33) & 1) != 0 || (result = *(this + 3)) == 0)
  {
    v7 = "output buffer overflow";
    goto LABEL_16;
  }

  return result;
}

uint64_t MeCab::LatticeImpl::toString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_2A1F35498;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = MeCab::LatticeImpl::toStringInternal(a1, a2, v6);
  MeCab::StringBuffer::~StringBuffer(v6);
  return v4;
}

void sub_29916D664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MeCab::StringBuffer::~StringBuffer(va);
  _Unwind_Resume(a1);
}

uint64_t MeCab::LatticeImpl::enumNBestAsString(MeCab::LatticeImpl *this, uint64_t a2)
{
  v4 = MeCab::LatticeImpl::stream(this);

  return MeCab::LatticeImpl::enumNBestAsStringInternal(this, a2, v4);
}

uint64_t MeCab::LatticeImpl::enumNBestAsStringInternal(MeCab::LatticeImpl *this, uint64_t a2, MeCab::StringBuffer *a3)
{
  *(a3 + 1) = 0;
  if ((a2 - 513) < 0xFFFFFFFFFFFFFE00)
  {
    v4 = "nbest size must be 1 <= nbest <= 512";
LABEL_17:
    (*(*this + 296))(this, v4);
    return 0;
  }

  v6 = a2;
  do
  {
    if (!(*(*this + 128))(this))
    {
      break;
    }

    v7 = *(this + 21);
    if (v7)
    {
      if ((MeCab::Writer::write(v7, this, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      MeCab::writeLattice(this, a3);
    }

    --v6;
  }

  while (v6);
  if (*(this + 21))
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    memset(v10, 0, sizeof(v10));
    BYTE11(v12) = 4;
    v8 = (*(*this + 64))(this);
    *&v11 = v8 + (*(*this + 88))(this);
    if (!MeCab::Writer::writeNode(*(this + 21), this, v10))
    {
      return 0;
    }
  }

  if (MeCab::StringBuffer::reserve(a3, 1))
  {
    *(*(a3 + 3) + (*(a3 + 1))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 3)) == 0)
  {
    v4 = "output buffer overflow";
    goto LABEL_17;
  }

  return result;
}

uint64_t MeCab::LatticeImpl::enumNBestAsString(MeCab::LatticeImpl *this, uint64_t a2, char *a3, uint64_t a4)
{
  v6[0] = &unk_2A1F35498;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = MeCab::LatticeImpl::enumNBestAsStringInternal(this, a2, v6);
  MeCab::StringBuffer::~StringBuffer(v6);
  return v4;
}

void sub_29916D8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MeCab::StringBuffer::~StringBuffer(va);
  _Unwind_Resume(a1);
}

uint64_t MeCab::LatticeImpl::boundary_constraint(MeCab::LatticeImpl *this, uint64_t a2)
{
  v2 = *(this + 18);
  if (v2 == *(this + 19))
  {
    return 0;
  }

  else
  {
    return *(v2 + a2);
  }
}

uint64_t MeCab::LatticeImpl::feature_constraint(MeCab::LatticeImpl *this, uint64_t a2)
{
  v2 = *(this + 15);
  if (v2 == *(this + 16))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void MeCab::LatticeImpl::set_boundary_constraint(MeCab::LatticeImpl *this, uint64_t a2, char a3)
{
  v5 = *(this + 18);
  if (v5 == *(this + 19))
  {
    v7 = (*(*this + 88))(this) + 4;
    v5 = *(this + 18);
    v8 = *(this + 19);
    if (v7 <= &v8[-v5])
    {
      if (v7 < &v8[-v5])
      {
        *(this + 19) = v5 + v7;
      }
    }

    else
    {
      v9 = *(this + 20);
      if (v9 - v8 < v7 - &v8[-v5])
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
      }

      v10 = v7 + v5;
      bzero(v8, v7 - &v8[-v5]);
      *(this + 19) = v10;
      v5 = *(this + 18);
    }
  }

  *(v5 + a2) = a3;
}

void *MeCab::LatticeImpl::set_feature_constraint(void *this, unint64_t a2, unint64_t a3, const char *a4)
{
  if (a2 >= a3 || !a4)
  {
    return this;
  }

  v5 = a3;
  v7 = this;
  v8 = this + 15;
  if (this[15] == this[16])
  {
    v9 = (*(*this + 88))(this);
    v10 = v9 + 4;
    v11 = v7[15];
    v12 = v7[16];
    v13 = (v12 - v11) >> 3;
    if (v9 + 4 > v13)
    {
      v14 = v10 - v13;
      v15 = v7[17];
      if (v14 > (v15 - v12) >> 3)
      {
        if (!(v10 >> 61))
        {
          v16 = v15 - v11;
          if (v16 >> 2 > v10)
          {
            v10 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v10;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(v8, v17);
        }

        std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
      }

      bzero(v7[16], ((8 * v9 - (v12 - v11) + 24) & 0xFFFFFFFFFFFFFFF8) + 8);
      v18 = v12 + 8 * v14;
      goto LABEL_16;
    }

    if (v10 < v13)
    {
      v18 = v11 + 8 * v10;
LABEL_16:
      v7[16] = v18;
    }
  }

  v19 = (*(*v7 + 88))(v7);
  if (v19 < v5)
  {
    v5 = v19;
  }

  (*(*v7 + 264))(v7, a2, 1);
  this = (*(*v7 + 264))(v7, v5, 1);
  v20 = a2 + 1;
  if (a2 + 1 < v5)
  {
    do
    {
      this = (*(*v7 + 264))(v7, v20++, 2);
    }

    while (v5 != v20);
  }

  *(*v8 + 8 * a2) = a4;
  return this;
}

void *MeCab::scoped_ptr<MeCab::Tagger>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F36088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 248))(v2);
  }

  return a1;
}

uint64_t mecab_do(int a1, char **a2)
{
  MEMORY[0x29C29A2E0](&v36);
  MeCab::Param::Param(v30);
  {
    if (MeCab::Param::get<BOOL>(v30, "help"))
    {
      v4 = &v32;
      v5 = &v31;
    }

    else
    {
      if (!MeCab::Param::get<BOOL>(v30, "version"))
      {
        if (MeCab::load_dictionary_resource(v30, v12))
        {
          if (MeCab::Param::get<int>(v30, "lattice-level") >= 1)
          {
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "lattice-level is DEPERCATED. ", 29);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "use --marginal or --nbest.", 26);
            std::ios_base::getloc((v19 + *(*v19 - 24)));
            v20 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
            (v20->__vftable[2].~facet_0)(v20, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
          }

          operator new();
        }

        v21 = MeCab::whatlog::str(v35);
        std::string::basic_string[abi:ne200100]<0>(&__p, v21);
        if ((v29 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v29 & 0x80u) == 0)
        {
          v23 = v29;
        }

        else
        {
          v23 = v28;
        }

        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], p_p, v23);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(&v26, MEMORY[0x29EDC93D0]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(&v26);
        std::ostream::put();
        std::ostream::flush();
        if (v29 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_19;
      }

      v4 = &v34;
      v5 = &v33;
    }

    if (*v4 >= 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = *v5;
    }

    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v13, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  v6 = MeCab::whatlog::str(v35);
  std::string::basic_string[abi:ne200100]<0>(&__p, v6);
  if ((v29 & 0x80u) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v8 = v29;
  }

  else
  {
    v8 = v28;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v26, MEMORY[0x29EDC93D0]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v11 = 1;
LABEL_20:
  MeCab::Param::~Param(v30);
  std::ios_base::Init::~Init(&v36);
  return v11;
}

void sub_29916F420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, std::locale a42)
{
  if (a18 != MEMORY[0x29EDC93B8] && a18 != 0)
  {
    (*(*a18 + 8))();
  }

  if (a20)
  {
    (*(*a20 + 248))(a20);
  }

  if (a22)
  {
    MEMORY[0x29C29A350](a22, 0x1000C8077774924);
  }

  a23 = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  a32 = &unk_2A1F35378;
  if (a33 != MEMORY[0x29EDC93C8] && a33 != 0)
  {
    (*(*a33 + 8))();
  }

  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a35)
  {
    (*(*a35 + 56))(a35);
  }

  MeCab::Param::~Param(&a42);
  std::ios_base::Init::~Init((v42 - 97));
  _Unwind_Resume(a1);
}

uint64_t std::istream::getline[abi:ne200100](void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v1 = std::locale::use_facet(&v3, MEMORY[0x29EDC93D0]);
  (v1->__vftable[2].~facet_0)(v1, 10);
  std::locale::~locale(&v3);
  return std::istream::getline();
}

uint64_t MeCab::ModelImpl::dictionary_info(MeCab::ModelImpl *this)
{
  v1 = *(*(this + 1) + 16);
  if (v1)
  {
    return *(v1 + 888);
  }

  else
  {
    return 0;
  }
}

uint64_t MeCab::ModelImpl::lookup(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 8) + 16);
  v7 = (*(*a4 + 176))(a4);

  return MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<false>(v6, a2, a3, v7, v8);
}

double MeCab::LatticeImpl::set_theta(MeCab::LatticeImpl *this, float a2)
{
  result = a2;
  *(this + 3) = result;
  return result;
}

uint64_t MeCab::LatticeImpl::what(MeCab::LatticeImpl *this)
{
  result = this + 48;
  if (*(this + 71) < 0)
  {
    return *result;
  }

  return result;
}

double MeCab::FreeList<mecab_node_t>::alloc(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x68uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = v5 + 104 * v3;
  *(v6 + 96) = 0;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

void MeCab::scoped_ptr<MeCab::Model>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35F98;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 56))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::ModelImpl>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35FC8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 56))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_ptr<MeCab::FreeList<mecab_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F355E0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::FreeList<mecab_node_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F36028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MeCab::Allocator<mecab_node_t,mecab_path_t>::~Allocator(void *a1)
{
  MeCab::Allocator<mecab_node_t,mecab_path_t>::~Allocator(a1);

  JUMPOUT(0x29C29A380);
}

void MeCab::FreeList<mecab_node_t>::~FreeList(void *a1)
{
  MeCab::FreeList<mecab_node_t>::~FreeList(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::FreeList<mecab_node_t>::~FreeList(void *a1)
{
  *a1 = &unk_2A1F35180;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29A350](v2[v5], 0x10F0C80D97060F7);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MeCab::scoped_ptr<MeCab::FreeList<mecab_node_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F36028;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::FreeList<mecab_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F355E0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::Allocator<mecab_node_t,mecab_path_t>::~Allocator(void *a1)
{
  *a1 = &unk_2A1F35FF8;
  a1[13] = &unk_2A1F35478;
  v2 = a1[14];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8094CA146DLL);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  a1[8] = &unk_2A1F35660;
  v4 = a1[9];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[6] = &unk_2A1F35CB8;
  v5 = a1[7];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[4] = &unk_2A1F355E0;
  v6 = a1[5];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  a1[2] = &unk_2A1F36028;
  v7 = a1[3];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void MeCab::scoped_ptr<MeCab::Allocator<mecab_node_t,mecab_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F36058;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::Allocator<mecab_node_t,mecab_path_t>::alloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    operator new();
  }

  v3 = a2 + 1;
  v4 = *(a1 + 56);

  return MeCab::ChunkFreeList<char>::alloc(v2, v3);
}

void MeCab::NBestGenerator::~NBestGenerator(MeCab::NBestGenerator *this)
{
  MeCab::NBestGenerator::~NBestGenerator(this);

  JUMPOUT(0x29C29A380);
}

{
  *this = &unk_2A1F353B8;
  MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::~FreeList(this + 5);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::~FreeList(void *a1)
{
  MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::~FreeList(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::~FreeList(void *a1)
{
  *a1 = &unk_2A1F350E0;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29A350](v2[v5], 0x1020C806C4767B9);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MeCab::scoped_ptr<MeCab::Tagger>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F36088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 248))(v1);
  }

  JUMPOUT(0x29C29A380);
}

BOOL MeCab::StringBuffer::reserve(MeCab::StringBuffer *this, uint64_t a2)
{
  v3 = *(this + 32);
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = v5 + a2;
  if (v3)
  {
    if (v6 >= v4)
    {
      if (!v4)
      {
        *(this + 2) = 0x2000;
        operator new[]();
      }

      do
      {
        v7 = v6 >= 2 * v4;
        v4 *= 2;
      }

      while (v7);
      *(this + 2) = v4;
      operator new[]();
    }

    return 1;
  }

  else
  {
    v7 = v6 >= v4;
    result = v6 < v4;
    v9 = v7;
    *(this + 33) = v9;
  }

  return result;
}

void MeCab::StringBuffer::~StringBuffer(MeCab::StringBuffer *this)
{
  *this = &unk_2A1F35498;
  if (*(this + 32) == 1)
  {
    v2 = *(this + 3);
    if (v2)
    {
      MEMORY[0x29C29A350](v2, 0x1000C8077774924);
    }

    *(this + 3) = 0;
  }
}

{
  MeCab::StringBuffer::~StringBuffer(this);

  JUMPOUT(0x29C29A380);
}

MeCab::StringBuffer *MeCab::StringBuffer::write(MeCab::StringBuffer *this, const char *__s)
{
  v4 = strlen(__s);
  if (MeCab::StringBuffer::reserve(this, v4))
  {
    memcpy((*(this + 3) + *(this + 1)), __s, v4);
    *(this + 1) += v4;
  }

  return this;
}

MeCab::Viterbi *MeCab::Viterbi::Viterbi(MeCab::Viterbi *this)
{
  *this = &unk_2A1F351A0;
  *(this + 1) = &unk_2A1F360B8;
  *(this + 2) = 0;
  *(this + 3) = &unk_2A1F360E8;
  *(this + 4) = 0;
  *(this + 10) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 6);
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  return this;
}

void sub_299170724(_Unwind_Exception *exception_object)
{
  v4 = v3;
  v1[3] = v4;
  v6 = v1[4];
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  v1[1] = v2;
  v7 = v1[2];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Unwind_Resume(exception_object);
}

void *MeCab::scoped_ptr<MeCab::Connector>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F360E8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::Tokenizer<mecab_node_t,mecab_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F360B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MeCab::Viterbi::~Viterbi(std::locale *this)
{
  this->__locale_ = &unk_2A1F351A0;
  v2 = this + 6;
  if (SHIBYTE(this[41].__locale_) < 0)
  {
    operator delete(this[39].__locale_);
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  this[6].__locale_ = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = v3[3];
  this[7].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(this[17].__locale_) < 0)
  {
    operator delete(this[15].__locale_);
  }

  this[7].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(this + 8);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&this[20]);
  this[3].__locale_ = &unk_2A1F360E8;
  locale = this[4].__locale_;
  if (locale)
  {
    (*(*locale + 48))(locale);
  }

  this[1].__locale_ = &unk_2A1F360B8;
  v6 = this[2].__locale_;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{
  MeCab::Viterbi::~Viterbi(this);

  JUMPOUT(0x29C29A380);
}

void sub_299170ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Viterbi::analyze(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = (*(*a2 + 64))(a2);
  if (!result)
  {
    return result;
  }

  MeCab::Viterbi::initPartial(a2);
  if (((*(*a2 + 144))(a2, 2) & 1) != 0 || (*(*a2 + 144))(a2, 8))
  {
    if ((*(*a2 + 240))(a2))
    {
      if (MeCab::Viterbi::viterbi<true,true>(a1, a2))
      {
        goto LABEL_15;
      }
    }

    else if (MeCab::Viterbi::viterbi<true,false>(a1, a2))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!(*(*a2 + 240))(a2))
  {
    result = MeCab::Viterbi::viterbi<false,false>(a1, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  if ((MeCab::Viterbi::viterbi<false,true>(a1, a2) & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  (*(*a2 + 144))(a2, 8);
  v5 = (*(*a2 + 24))(a2);
  v6 = *v5;
  if (*v5)
  {
    do
    {
      v6[1] = v5;
      v5 = v6;
      v6 = *v6;
    }

    while (v6);
  }

  MeCab::Viterbi::buildAllLattice(a2);
  MeCab::Viterbi::initNBest(a2);
  return 1;
}

uint64_t MeCab::Viterbi::initPartial(uint64_t *a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = (*(*a1 + 144))(a1, 4);
  v3 = *a1;
  if (v2)
  {
    v4 = (*(v3 + 176))(a1);
    v5 = (*(*a1 + 88))(a1) + 1;
    v7 = v4[10];
    v6 = v4[11];
    v8 = v5 - (v6 - v7);
    if (v5 <= v6 - v7)
    {
      if (v5 < v6 - v7)
      {
        v4[11] = &v7[v5];
      }
    }

    else
    {
      if (v4[12] - v6 < v8)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
      }

      bzero(v6, v8);
      v4[11] = &v7[v5];
      v7 = v4[10];
    }

    v10 = (*(*a1 + 64))(a1);
    v11 = (*(*a1 + 88))(a1);
    strncpy(v7, v10, v11 + 1);
    __p = 0;
    v29 = 0;
    v30 = 0;
    v12 = (*(*a1 + 88))(a1);
    v13 = strlen(v7);
    if (v12 != -1)
    {
      v14 = 0;
      v15 = &v7[v13];
      do
      {
        v16 = v15;
        if (v7 != v15)
        {
          v16 = v7;
          do
          {
            if (*v16 == 10)
            {
              goto LABEL_18;
            }

            ++v16;
          }

          while (v16 != v15);
          v16 = v15;
        }

LABEL_18:
        *v16 = 0;
        v17 = v29;
        if (v29 >= v30)
        {
          v19 = (v29 - __p) >> 3;
          if ((v19 + 1) >> 61)
          {
            std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
          }

          v20 = (v30 - __p) >> 2;
          if (v20 <= v19 + 1)
          {
            v20 = v19 + 1;
          }

          if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(&__p, v21);
          }

          v22 = (8 * v19);
          *v22 = v7;
          v18 = 8 * v19 + 8;
          v23 = v22 - (v29 - __p);
          memcpy(v23, __p, v29 - __p);
          v24 = __p;
          __p = v23;
          v29 = v18;
          v30 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v29 = v7;
          v18 = (v17 + 8);
        }

        v29 = v18;
        if (v16 == v15)
        {
          break;
        }

        v7 = v16 + 1;
      }

      while (v14++ != v12);
    }

    v31 = 0uLL;
    (*(*a1 + 88))(a1);
    operator new[]();
  }

  if ((*(v3 + 240))(a1))
  {
    (*(*a1 + 264))(a1, 0, 1);
    v9 = (*(*a1 + 88))(a1);
    (*(*a1 + 264))(a1, v9, 1);
  }

  v26 = *MEMORY[0x29EDCA608];
  return 1;
}

void sub_29917191C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (a23)
  {
    MEMORY[0x29C29A350](a23, 0x1000C8077774924);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Viterbi::viterbi<true,true>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*a2 + 32))(a2);
  v6 = (*(*a2 + 176))(a2);
  v7 = (*(*a2 + 88))(a2);
  v8 = (*(*a2 + 64))(a2);
  v9 = *(a1 + 16);
  v10 = (*(*a2 + 176))(a2);
  v11 = MeCab::FreeList<mecab_node_t>::alloc(*(v10 + 24));
  v13 = v12;
  v14 = *(v9 + 784);
  *(v12 + 64) = "BOS/EOS";
  *(v12 + 72) = v14;
  *(v12 + 91) = 2;
  *(v12 + 64) = (*(*a2 + 64))(a2, v11);
  *v4 = v13;
  if (v7)
  {
    v15 = 0;
    while (1)
    {
      if (v4[v15])
      {
        v16 = MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<true>(*(a1 + 16), (v8 + v15), v8 + v7, v6, a2);
        *(v5 + 8 * v15) = v16;
        {
          break;
        }
      }

      if (v7 == ++v15)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v17 = *(a1 + 16);
    v18 = (*(*a2 + 176))(a2);
    v19 = MeCab::FreeList<mecab_node_t>::alloc(*(v18 + 24));
    v21 = v20;
    v22 = *(v17 + 784);
    *(v20 + 64) = "BOS/EOS";
    *(v20 + 72) = v22;
    *(v20 + 91) = 3;
    v23 = (*(*a2 + 64))(a2, v19);
    *(v21 + 64) = v23 + (*(*a2 + 88))(a2);
    *(v5 + 8 * (*(*a2 + 88))(a2)) = v21;
    if (v7 < 0)
    {
      goto LABEL_12;
    }

    while (!v4[v7])
    {
      if (v7-- <= 0)
      {
        goto LABEL_12;
      }
    }

    {
LABEL_12:
      *v4 = v13;
      *(v5 + 8 * (*(*a2 + 88))(a2)) = v21;
      return 1;
    }
  }

  (*(*a2 + 296))(a2, "too long sentence.");
  return 0;
}

uint64_t MeCab::Viterbi::viterbi<true,false>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*a2 + 32))(a2);
  v6 = (*(*a2 + 176))(a2);
  v7 = (*(*a2 + 88))(a2);
  v8 = (*(*a2 + 64))(a2);
  v9 = *(a1 + 16);
  v10 = (*(*a2 + 176))(a2);
  v11 = MeCab::FreeList<mecab_node_t>::alloc(*(v10 + 24));
  v13 = v12;
  v14 = *(v9 + 784);
  *(v12 + 64) = "BOS/EOS";
  *(v12 + 72) = v14;
  *(v12 + 91) = 2;
  *(v12 + 64) = (*(*a2 + 64))(a2, v11);
  *v4 = v13;
  if (v7)
  {
    v16 = 0;
    while (1)
    {
      if (v4[v16])
      {
        v17 = MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<false>(*(a1 + 16), (v8 + v16), v8 + v7, v6, v15);
        *(v5 + 8 * v16) = v17;
        {
          break;
        }
      }

      if (v7 == ++v16)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v18 = *(a1 + 16);
    v19 = (*(*a2 + 176))(a2);
    v20 = MeCab::FreeList<mecab_node_t>::alloc(*(v19 + 24));
    v22 = v21;
    v23 = *(v18 + 784);
    *(v21 + 64) = "BOS/EOS";
    *(v21 + 72) = v23;
    *(v21 + 91) = 3;
    v24 = (*(*a2 + 64))(a2, v20);
    *(v22 + 64) = v24 + (*(*a2 + 88))(a2);
    *(v5 + 8 * (*(*a2 + 88))(a2)) = v22;
    if (v7 < 0)
    {
      goto LABEL_12;
    }

    while (!v4[v7])
    {
      if (v7-- <= 0)
      {
        goto LABEL_12;
      }
    }

    {
LABEL_12:
      *v4 = v13;
      *(v5 + 8 * (*(*a2 + 88))(a2)) = v22;
      return 1;
    }
  }

  (*(*a2 + 296))(a2, "too long sentence.");
  return 0;
}

uint64_t MeCab::Viterbi::viterbi<false,true>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*a2 + 32))(a2);
  v6 = (*(*a2 + 176))(a2);
  v7 = (*(*a2 + 88))(a2);
  v8 = (*(*a2 + 64))(a2);
  v9 = *(a1 + 16);
  v10 = (*(*a2 + 176))(a2);
  v11 = MeCab::FreeList<mecab_node_t>::alloc(*(v10 + 24));
  v13 = v12;
  v14 = *(v9 + 784);
  *(v12 + 64) = "BOS/EOS";
  *(v12 + 72) = v14;
  *(v12 + 91) = 2;
  *(v12 + 64) = (*(*a2 + 64))(a2, v11);
  *v4 = v13;
  if (v7)
  {
    v15 = 0;
    while (1)
    {
      if (v4[v15])
      {
        v16 = MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<true>(*(a1 + 16), (v8 + v15), v8 + v7, v6, a2);
        *(v5 + 8 * v15) = v16;
        {
          break;
        }
      }

      if (v7 == ++v15)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v17 = *(a1 + 16);
    v18 = (*(*a2 + 176))(a2);
    v19 = MeCab::FreeList<mecab_node_t>::alloc(*(v18 + 24));
    v21 = v20;
    v22 = *(v17 + 784);
    *(v20 + 64) = "BOS/EOS";
    *(v20 + 72) = v22;
    *(v20 + 91) = 3;
    v23 = (*(*a2 + 64))(a2, v19);
    *(v21 + 64) = v23 + (*(*a2 + 88))(a2);
    *(v5 + 8 * (*(*a2 + 88))(a2)) = v21;
    if (v7 < 0)
    {
      goto LABEL_12;
    }

    while (!v4[v7])
    {
      if (v7-- <= 0)
      {
        goto LABEL_12;
      }
    }

    {
LABEL_12:
      *v4 = v13;
      *(v5 + 8 * (*(*a2 + 88))(a2)) = v21;
      return 1;
    }
  }

  (*(*a2 + 296))(a2, "too long sentence.");
  return 0;
}

uint64_t MeCab::Viterbi::viterbi<false,false>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*a2 + 32))(a2);
  v6 = (*(*a2 + 176))(a2);
  v7 = (*(*a2 + 88))(a2);
  v8 = (*(*a2 + 64))(a2);
  v9 = *(a1 + 16);
  v10 = (*(*a2 + 176))(a2);
  v11 = MeCab::FreeList<mecab_node_t>::alloc(*(v10 + 24));
  v13 = v12;
  v14 = *(v9 + 784);
  *(v12 + 64) = "BOS/EOS";
  *(v12 + 72) = v14;
  *(v12 + 91) = 2;
  *(v12 + 64) = (*(*a2 + 64))(a2, v11);
  *v4 = v13;
  if (v7)
  {
    v16 = 0;
    while (1)
    {
      if (v4[v16])
      {
        v17 = MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<false>(*(a1 + 16), (v8 + v16), v8 + v7, v6, v15);
        *(v5 + 8 * v16) = v17;
        {
          break;
        }
      }

      if (v7 == ++v16)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v18 = *(a1 + 16);
    v19 = (*(*a2 + 176))(a2);
    v20 = MeCab::FreeList<mecab_node_t>::alloc(*(v19 + 24));
    v22 = v21;
    v23 = *(v18 + 784);
    *(v21 + 64) = "BOS/EOS";
    *(v21 + 72) = v23;
    *(v21 + 91) = 3;
    v24 = (*(*a2 + 64))(a2, v20);
    *(v22 + 64) = v24 + (*(*a2 + 88))(a2);
    *(v5 + 8 * (*(*a2 + 88))(a2)) = v22;
    if (v7 < 0)
    {
      goto LABEL_12;
    }

    while (!v4[v7])
    {
      if (v7-- <= 0)
      {
        goto LABEL_12;
      }
    }

    {
LABEL_12:
      *v4 = v13;
      *(v5 + 8 * (*(*a2 + 88))(a2)) = v22;
      return 1;
    }
  }

  (*(*a2 + 296))(a2, "too long sentence.");
  return 0;
}

uint64_t MeCab::Viterbi::buildAllLattice(uint64_t a1)
{
  if ((*(*a1 + 144))(a1, 32))
  {
    v2 = (*(*a1 + 16))(a1);
    v3 = (*(*a1 + 88))(a1);
    v4 = (*(*a1 + 32))(a1);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      do
      {
        for (i = *(v4 + 8 * v5); i; i = i[3])
        {
          *(v2 + 8) = i;
          *i = v2;
          v2 = i;
        }
      }

      while (v5++ != v3);
    }
  }

  return 1;
}

uint64_t MeCab::Viterbi::initNBest(uint64_t a1)
{
  if ((*(*a1 + 144))(a1, 2))
  {
    v2 = (*(*a1 + 176))(a1);
    v3 = MeCab::Allocator<mecab_node_t,mecab_path_t>::nbest_generator(v2);
    MeCab::NBestGenerator::set(v3, a1);
  }

  return 1;
}

void std::vector<std::pair<char *,char *>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char *,char *>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char *,char *>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MeCab::scoped_ptr<MeCab::Tokenizer<mecab_node_t,mecab_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F360B8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::Connector>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F360E8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::anonymous namespace::connect<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 1;
  }

  v7 = a2;
  v8 = (a3 + 8 * a1);
  v21 = v8;
  while (1)
  {
    v9 = *v8;
    if (!*v8)
    {
      break;
    }

    v10 = 0;
    v11 = 0x7FFFFFFFLL;
    do
    {
      v12 = (*(*a4 + 16))(a4, v9, v7);
      if (v9[12] + v12 < v11)
      {
        v10 = v9;
        v11 = v9[12] + v12;
      }

      v13 = *(a5 + 40);
      if (!v13)
      {
        operator new();
      }

      v14 = v13[5];
      v15 = v13[4];
      if (v15 == v13[6])
      {
        v15 = 0;
        ++v14;
        v13[4] = 0;
        v13[5] = v14;
      }

      v16 = v13[1];
      if (v14 == (v13[2] - v16) >> 3)
      {
        operator new[]();
      }

      v17 = *(v16 + 8 * v14);
      v13[4] = v15 + 1;
      v18 = (v17 + 32 * v15);
      v18[2] = 0;
      v18[3] = 0;
      *(v18 + 6) = v12;
      *v18 = v7;
      v18[1] = v9;
      v18[2] = *(v7 + 40);
      *(v7 + 40) = v18;
      v9[4] = v18;
      v9 = v9[2];
    }

    while (v9);
    if (!v10)
    {
      break;
    }

    *v7 = v10;
    *(v7 + 8) = 0;
    *(v7 + 96) = v11;
    v19 = *(v7 + 82);
    v8 = v21;
    *(v7 + 16) = v21[v19];
    v21[v19] = v7;
    v7 = *(v7 + 24);
    if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

void MeCab::FreeList<mecab_path_t>::~FreeList(void *a1)
{
  MeCab::FreeList<mecab_path_t>::~FreeList(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::FreeList<mecab_path_t>::~FreeList(void *a1)
{
  *a1 = &unk_2A1F35160;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29A350](v2[v5], 0x1020C8055CCDE27);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t MeCab::anonymous namespace::connect<false>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a2;
  v6 = (a3 + 8 * a1);
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    v8 = 0;
    v9 = 0x7FFFFFFFLL;
    do
    {
      v10 = (*(*a4 + 16))(a4, v7, v5);
      if (*(v7 + 96) + v10 < v9)
      {
        v8 = v7;
        v9 = *(v7 + 96) + v10;
      }

      v7 = *(v7 + 16);
    }

    while (v7);
    if (!v8)
    {
      break;
    }

    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 96) = v9;
    v11 = *(v5 + 82);
    *(v5 + 16) = v6[v11];
    v6[v11] = v5;
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

MeCab::Connector *MeCab::Connector::Connector(MeCab::Connector *this)
{
  *this = &unk_2A1F35098;
  MeCab::Mmap<short>::Mmap(this + 8);
  *(this + 44) = 0;
  *(this + 90) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 46);
  *(this + 81) = 0;
  *(this + 632) = 0u;
  return this;
}

void MeCab::Connector::~Connector(std::locale *this)
{
  this->__locale_ = &unk_2A1F35098;
  v2 = this + 1;
  MeCab::Mmap<char>::close(&this[1]);
  if (SHIBYTE(this[81].__locale_) < 0)
  {
    operator delete(this[79].__locale_);
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  this[46].__locale_ = *MEMORY[0x29EDC9538];
  *(this + *(v4 - 24) + 368) = v3[3];
  this[47].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(this[57].__locale_) < 0)
  {
    operator delete(this[55].__locale_);
  }

  this[47].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(this + 48);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&this[60]);
  MeCab::Mmap<short>::~Mmap(v2);
}

{
  MeCab::Connector::~Connector(this);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::Connector::open(MeCab::Connector *this, const MeCab::Param *a2)
{
  MeCab::Param::get<std::string>(a2, "dicdir", &v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "matrix.bin");
  MeCab::create_filename(&v8, __p, &v9);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v9;
  }

  else
  {
    v3 = v9.__r_.__value_.__r.__words[0];
  }

  v4 = (*(*this + 24))(this, v3, "r");
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_2991732BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Connector::open(MeCab::Connector *this, char *a2, char *a3)
{
  if (MeCab::Mmap<short>::open(this + 8, a2, a3))
  {
    if ((*(*this + 32))(this, *(this + 2), *(this + 3)))
    {
      return 1;
    }

    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 46, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/connector.cpp", 63);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "(", 1);
    v18 = MEMORY[0x29C29A250](v17, 36);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") [", 3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "open(ptr, cmmap_.file_size())", 29);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] ", 2);
    v15 = "open failed";
    v13 = 11;
  }

  else
  {
    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 46, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/connector.cpp", 63);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 33);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "cmmap_.open(filename, mode)", 27);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "cannot open: ", 13);
    v13 = strlen(a2);
    v14 = v12;
    v15 = a2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v13);
  return 0;
}

uint64_t MeCab::Mmap<short>::open(uint64_t a1, char *a2, _BYTE *a3)
{
  MeCab::Mmap<char>::close(a1);
  std::string::basic_string[abi:ne200100]<0>(&v47, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&v47.st_dev;
  *(a1 + 40) = *&v47.st_uid;
  if (*a3 != 114)
  {
    goto LABEL_7;
  }

  v6 = a3[1];
  if (a3[1])
  {
    if (v6 != 43 || a3[2])
    {
LABEL_7:
      v8 = *(a1 + 48);
      v7 = (a1 + 48);
      std::ios_base::clear((v7 + *(v8 - 24)), 0);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(", 1);
      v11 = MEMORY[0x29C29A250](v10, 158);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") [", 3);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "false", 5);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] ", 2);
      v15 = "unknown open mode: ";
      v16 = 19;
      goto LABEL_8;
    }

    v6 = 2;
  }

  *(a1 + 340) = v6;
  v21 = open(a2, v6);
  *(a1 + 336) = v21;
  if (v21 < 0)
  {
    v27 = *(a1 + 48);
    v26 = (a1 + 48);
    std::ios_base::clear((v26 + *(v27 - 24)), 0);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
    v30 = MEMORY[0x29C29A250](v29, 160);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") [", 3);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "(fd = ::open(filename, flag | O_BINARY)) >= 0", 45);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "] ", 2);
    v15 = "open failed: ";
    v16 = 13;
  }

  else if (fstat(v21, &v47) < 0)
  {
    v34 = *(a1 + 48);
    v33 = (a1 + 48);
    std::ios_base::clear((v33 + *(v34 - 24)), 0);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
    v37 = MEMORY[0x29C29A250](v36, 163);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") [", 3);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "::fstat(fd, &st) >= 0", 21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "] ", 2);
    v15 = "failed to get file size: ";
    v16 = 25;
  }

  else
  {
    st_size = v47.st_size;
    *(a1 + 16) = v47.st_size;
    if (*(a1 + 340) == 2)
    {
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }

    v24 = mmap(0, st_size, v23, 1, *(a1 + 336), 0);
    if (v24 != -1)
    {
      v25 = v24;
      v19 = 1;
      madvise(v24, *(a1 + 16), 1);
      *(a1 + 8) = v25;
      close(*(a1 + 336));
      *(a1 + 336) = -1;
      return v19;
    }

    v41 = *(a1 + 48);
    v40 = (a1 + 48);
    std::ios_base::clear((v40 + *(v41 - 24)), 0);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "(", 1);
    v44 = MEMORY[0x29C29A250](v43, 174);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ") [", 3);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "(p = reinterpret_cast<char *> (::mmap(0, length, prot, MAP_SHARED, fd, 0))) != MAP_FAILED", 89);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "] ", 2);
    v15 = "mmap() failed: ";
    v16 = 15;
  }

LABEL_8:
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, a2, v18);
  return 0;
}

uint64_t MeCab::Connector::open(MeCab::Connector *this, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *a2;
    *(this + 180) = v3;
    v4 = *(a2 + 1);
    *(this + 181) = v4;
    if (2 * v3 * v4 + 4 == a3)
    {
      *(this + 44) = a2 + 4;
      return 1;
    }

    v15 = (this + 368);
    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/connector.cpp", 63);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "(", 1);
    v18 = MEMORY[0x29C29A250](v17, 47);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") [", 3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "length == offset + lsize_ * rsize_ * sizeof(short)", 50);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] ", 2);
    v13 = "invalid binary image size";
    v14 = 25;
  }

  else
  {
    v6 = (this + 368);
    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/connector.cpp", 63);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x29C29A250](v8, 42);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") [", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ptr", 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] ", 2);
    v13 = "image is null";
    v14 = 13;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  return 0;
}

BOOL MeCab::Connector::openText(MeCab::Connector *this, const char *a2)
{
  v11[19] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v9);
  v4 = *&v10[*(v9[0] - 24) + 16] & 5;
  if (!v4)
  {
    operator new[]();
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 46, "no such file or directory: ", 27);
  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v6);
  v9[0] = *MEMORY[0x29EDC9518];
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v10);
  std::istream::~istream();
  MEMORY[0x29C29A320](v11);
  v7 = *MEMORY[0x29EDCA608];
  return v4 == 0;
}

void MeCab::Connector::compile(MeCab::Connector *this, const char *a2, const char *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v21);
  std::string::basic_string[abi:ne200100]<0>(__p, "1 1\n0 0 0\n");
  std::istringstream::basic_istringstream[abi:ne200100](v17, __p, 8);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(&v21[4] + *(v21[0] - 24)) & 5) != 0)
  {
    v5 = strlen(this);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], this, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " is not found. minimum setting is used.", 39);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ofstream::basic_ofstream(__p);
  if ((v20[*(__p[0] - 3)] & 5) != 0)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/connector.cpp", 63);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(", 1);
    v11 = MEMORY[0x29C29A250](v10, 86);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") [", 3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ofs", 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] ", 2);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "permission denied: ", 19);
    v16 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a2, v16);
    MeCab::die::~die(v22);
  }

  memset(v22, 0, sizeof(v22));
  v17[35] = &unk_2A1F35AF8;
  operator new[]();
}

void sub_299174888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::locale a49, void *__p)
{
  if (a47)
  {
    MEMORY[0x29C29A350](a47, 0x1000C8077774924);
  }

  std::ofstream::~ofstream(&__p, MEMORY[0x29EDC9520]);
  MEMORY[0x29C29A320](&STACK[0x2E8]);
  std::istringstream::~istringstream(&a11, MEMORY[0x29EDC9530]);
  MEMORY[0x29C29A320](&a26);
  std::ifstream::~ifstream(&STACK[0x380]);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t MeCab::Mmap<short>::Mmap(uint64_t a1)
{
  *a1 = &unk_2A1F35240;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = -1;
  return a1;
}

void sub_299174B90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::Mmap<short>::~Mmap(uint64_t a1)
{
  MeCab::Mmap<short>::~Mmap(a1);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::Mmap<short>::~Mmap(uint64_t a1)
{
  *a1 = &unk_2A1F35240;
  MeCab::Mmap<char>::close(a1);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 48) = *MEMORY[0x29EDC9538];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x29C29A320](a1 + 160);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t MeCab::decode_charset(MeCab *this, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, this);
  v2 = v45;
  v3 = (v45 & 0x80u) != 0;
  v4 = v44;
  if ((v45 & 0x80u) == 0)
  {
    v5 = v45;
  }

  else
  {
    v5 = v44;
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if (v3)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      v8 = p_p[v6];
      if ((v8 - 65) <= 0x19)
      {
        p_p[v6] = v8 | 0x20;
        v2 = v45;
        v4 = v44;
      }

      ++v6;
      v3 = (v2 & 0x80u) != 0;
      if ((v2 & 0x80u) == 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = v4;
      }
    }

    while (v6 < v9);
  }

  if (v3)
  {
    if (v4 <= 4)
    {
      if (v4 != 3)
      {
        if (v4 != 4 || *__p != 1936288371)
        {
          goto LABEL_68;
        }

        goto LABEL_59;
      }

      v21 = *(__p + 2);
      v22 = *__p == 30053;
      v23 = 99;
      goto LABEL_64;
    }

    if (v4 == 5)
    {
      v12 = *(__p + 4);
      v13 = *__p == 859402339;
      v10 = 50;
LABEL_48:
      if (!v13 || v12 != v10)
      {
        goto LABEL_68;
      }

LABEL_59:
      v18 = 1;
      goto LABEL_129;
    }

    if (v4 != 6)
    {
      if (v4 != 9)
      {
        goto LABEL_68;
      }

      v10 = 115;
      if (*__p == 0x696A2D7466696873 && *(__p + 8) == 115)
      {
        goto LABEL_59;
      }

      v12 = *(__p + 8);
      v13 = *__p == 0x696A5F7466696873;
      goto LABEL_48;
    }

    v19 = __p;
LABEL_62:
    v20 = *v19;
    v21 = v19[2];
    v22 = v20 == 1600353637;
    v23 = 28778;
LABEL_64:
    if (v22 && v21 == v23)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      if (__p != 859402339 || BYTE4(__p) != 50)
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    if (v2 != 6)
    {
      if (v2 != 9)
      {
        goto LABEL_68;
      }

      if ((__p != 0x696A2D7466696873 || v44 != 115) && (__p != 0x696A5F7466696873 || v44 != 115))
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v19 = &__p;
    goto LABEL_62;
  }

  if (v2 == 3)
  {
    if (__p == 30053 && BYTE2(__p) == 99)
    {
      goto LABEL_89;
    }

    goto LABEL_69;
  }

  if (v2 == 4)
  {
    if (__p != 1936288371)
    {
      goto LABEL_69;
    }

    goto LABEL_59;
  }

LABEL_68:
  if ((v2 & 0x80) != 0)
  {
    if (v4 == 4)
    {
LABEL_83:
      v25 = 1;
      v26 = __p;
      goto LABEL_93;
    }

    if (v4 == 5)
    {
LABEL_96:
      v25 = 1;
      v26 = __p;
      goto LABEL_99;
    }

    if (v4 != 6)
    {
      goto LABEL_122;
    }

    v25 = 1;
    v26 = __p;
    goto LABEL_77;
  }

LABEL_69:
  v25 = 0;
  v26 = &__p;
  if (v2 != 4)
  {
    if (v2 == 5)
    {
      goto LABEL_99;
    }

    if (v2 != 6)
    {
      goto LABEL_122;
    }

LABEL_77:
    v27 = *v26;
    v28 = v26[2];
    if (v27 != 761492837 || v28 != 28778)
    {
      if (!v25)
      {
        v26 = &__p;
        if (v2 != 4)
        {
          if (v2 != 5)
          {
            goto LABEL_122;
          }

          goto LABEL_99;
        }

        goto LABEL_93;
      }

      if (v4 != 4)
      {
LABEL_95:
        if (v4 != 5)
        {
          goto LABEL_122;
        }

        goto LABEL_96;
      }

      goto LABEL_83;
    }

LABEL_89:
    v18 = 0;
    goto LABEL_129;
  }

LABEL_93:
  if (*v26 == 946238581)
  {
    goto LABEL_115;
  }

  if (v25)
  {
    goto LABEL_95;
  }

  if (v2 != 5)
  {
    goto LABEL_122;
  }

  v25 = 0;
  v26 = &__p;
LABEL_99:
  v31 = *v26;
  v32 = *(v26 + 4);
  if (v31 == 1600550005 && v32 == 56)
  {
    goto LABEL_115;
  }

  if (v25)
  {
    if (v4 != 5)
    {
      goto LABEL_122;
    }

    v34 = __p;
  }

  else
  {
    if (v2 != 5)
    {
      goto LABEL_122;
    }

    v34 = &__p;
  }

  v35 = *v34;
  v36 = v34[4];
  if (v35 == 761689205 && v36 == 56)
  {
LABEL_115:
    v18 = 2;
    goto LABEL_129;
  }

  if (v25)
  {
    if (v4 != 5)
    {
      goto LABEL_122;
    }

    v38 = __p;
  }

  else
  {
    if (v2 != 5)
    {
      goto LABEL_122;
    }

    v38 = &__p;
  }

  v39 = *v38;
  v40 = v38[4];
  if (v39 != 828798069 || v40 != 54)
  {
LABEL_122:
    if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf_16") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf-16"))
    {
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf16be") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf_16be") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf-16be"))
      {
        v18 = 5;
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf16le") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf_16le") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "utf-16le"))
      {
        v18 = 4;
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "ascii"))
      {
        v18 = 6;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_129;
    }
  }

  v18 = 3;
LABEL_129:
  if (v45 < 0)
  {
    operator delete(__p);
  }

  return v18;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

std::string *MeCab::create_filename@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v5 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(&a3->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  if (v5 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  if (v7->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(a3, 47);
  }

LABEL_13:
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

  return std::string::append(a3, v9, v10);
}

void sub_299175374(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double MeCab::remove_pathname(std::string *__str)
{
  v1 = __str;
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v2 & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    LODWORD(size) = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if (size < 1)
  {
LABEL_11:
    if ((v2 & 0x80000000) != 0)
    {
      __str->__r_.__value_.__l.__size_ = 1;
      v1 = __str->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__str->__r_.__value_.__s + 23) = 1;
    }

    LOWORD(v1->__r_.__value_.__l.__data_) = 46;
    return result;
  }

  v4 = (size & 0x7FFFFFFF) - 1;
  while ((v2 & 0x80000000) == 0)
  {
    if (__str->__r_.__value_.__s.__data_[v4] == 47)
    {
      goto LABEL_16;
    }

LABEL_10:
    v5 = v4-- + 1;
    if (v5 <= 1)
    {
      goto LABEL_11;
    }
  }

  if (*(__str->__r_.__value_.__r.__words[0] + v4) != 47)
  {
    goto LABEL_10;
  }

  v2 = __str->__r_.__value_.__l.__size_;
LABEL_16:
  std::string::basic_string(&v7, __str, (v4 + 1), v2 - v4, &v8);
  if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1->__r_.__value_.__l.__data_);
  }

  result = *&v7.__r_.__value_.__l.__data_;
  *v1 = v7;
  return result;
}

void MeCab::enum_csv_dictionaries(char *a1, uint64_t a2)
{
  std::vector<std::string>::clear[abi:ne200100](a2);
  v4 = opendir(a1);
  v5 = v4;
  if (!v4)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/utils.cpp", 59);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 188);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "dir", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "no such directory: ", 19);
    v13 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a1, v13);
    MeCab::die::~die(&v54);
  }

  v14 = readdir(v4);
  if (v14)
  {
    v15 = v14;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, v15->d_name);
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__l.__size_ <= 4)
        {
          goto LABEL_32;
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) <= 4)
      {
        goto LABEL_33;
      }

      std::string::basic_string(&v52, &__str, size - 4, 4uLL, &v54);
      v17 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      v18 = (v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      v19 = v52.__r_.__value_.__l.__size_;
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v52.__r_.__value_.__l.__size_;
      }

      if (v20)
      {
        v21 = 0;
        do
        {
          if (v18)
          {
            v22 = v52.__r_.__value_.__r.__words[0];
          }

          else
          {
            v22 = &v52;
          }

          v23 = v22->__r_.__value_.__s.__data_[v21];
          if ((v23 - 65) <= 0x19)
          {
            v22->__r_.__value_.__s.__data_[v21] = v23 | 0x20;
            v17 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
            v19 = v52.__r_.__value_.__l.__size_;
          }

          ++v21;
          v18 = (v17 & 0x80u) != 0;
          if ((v17 & 0x80u) == 0)
          {
            v24 = v17;
          }

          else
          {
            v24 = v19;
          }
        }

        while (v21 < v24);
      }

      if (v18)
      {
        if (v19 != 4)
        {
          break;
        }

        v25 = v52.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v17 != 4)
        {
          break;
        }

        v25 = &v52;
      }

      if (LODWORD(v25->__r_.__value_.__l.__data_) != 1987273518)
      {
        break;
      }

      std::string::basic_string[abi:ne200100]<0>(v49, a1);
      MeCab::create_filename(v49, &__str, &__p);
      v26 = *(a2 + 8);
      v27 = *(a2 + 16);
      if (v26 >= v27)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3);
        v30 = v29 + 1;
        if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
        }

        v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *a2) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v32 = v30;
        }

        v54.__end_cap_.__value_ = a2;
        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v32);
        }

        v33 = 24 * v29;
        v34 = *&__p.__r_.__value_.__l.__data_;
        *(v33 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v33 = v34;
        memset(&__p, 0, sizeof(__p));
        v35 = 24 * v29 + 24;
        v36 = *(a2 + 8) - *a2;
        v37 = 24 * v29 - v36;
        memcpy((v33 - v36), *a2, v36);
        v38 = *a2;
        *a2 = v37;
        *(a2 + 8) = v35;
        v39 = *(a2 + 16);
        *(a2 + 16) = 0;
        v54.__end_ = v38;
        v54.__end_cap_.__value_ = v39;
        v54.__first_ = v38;
        v54.__begin_ = v38;
        std::__split_buffer<std::string>::~__split_buffer(&v54);
        v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a2 + 8) = v35;
        if (v40 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v28 = *&__p.__r_.__value_.__l.__data_;
        *(v26 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v26 = v28;
        memset(&__p, 0, sizeof(__p));
        *(a2 + 8) = v26 + 24;
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_32:
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_33:
      v15 = readdir(v5);
      if (!v15)
      {
        goto LABEL_51;
      }
    }

    if ((v17 & 0x80) == 0)
    {
      goto LABEL_31;
    }

LABEL_30:
    operator delete(v52.__r_.__value_.__l.__data_);
    goto LABEL_31;
  }

LABEL_51:
  closedir(v5);
  v42 = *a2;
  v41 = *(a2 + 8);
  if (v41 - v42 < 1)
  {
    v48 = 0;
    v44 = 0;
  }

  else
  {
    v43 = MEMORY[0x29EDC9418];
    v44 = 0xAAAAAAAAAAAAAAABLL * (v41 - v42);
    while (1)
    {
      v45 = operator new(24 * v44, v43);
      if (v45)
      {
        break;
      }

      v46 = v44 >> 1;
      v47 = v44 > 1;
      v44 >>= 1;
      if (!v47)
      {
        v48 = 0;
        v44 = v46;
        goto LABEL_58;
      }
    }

    v48 = v45;
  }

LABEL_58:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(v42, v41, 0xAAAAAAAAAAAAAAABLL * (v41 - v42), v48, v44);
  if (v48)
  {
    operator delete(v48);
  }
}

void sub_299175878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::escape_csv_element(std::string *a1)
{
  if (std::string::find(a1, 44, 0) != -1 || std::string::find(a1, 34, 0) != -1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "");
    for (i = 0; ; ++i)
    {
      v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      v4 = v3 < 0 ? a1->__r_.__value_.__l.__size_ : SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if (i >= v4)
      {
        break;
      }

      v5 = a1;
      if ((v3 & 0x80000000) != 0)
      {
        v5 = a1->__r_.__value_.__r.__words[0];
      }

      if (v5->__r_.__value_.__s.__data_[i] == 34)
      {
        std::string::push_back(&__str, 34);
      }

      v6 = a1;
      if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
      {
        v6 = a1->__r_.__value_.__r.__words[0];
      }

      std::string::push_back(&__str, v6->__r_.__value_.__s.__data_[i]);
    }

    std::string::push_back(&__str, 34);
    std::string::operator=(a1, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void sub_2991759F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::progress_bar(MeCab *this, const char *a2, unint64_t a3)
{
  v3 = (a2 * 100.0 / a3);
  if (MeCab::progress_bar(char const*,unsigned long,unsigned long)::prev != v3)
  {
    printf("%s: %3d%% |%.*s%*s| ", this, (a2 * 100.0 / a3), (a2 * 43.0 / a3), MeCab::progress_bar(char const*,unsigned long,unsigned long)::bar, 43 - (a2 * 43.0 / a3), "");
    if (v3 == 100)
    {
      v4 = 10;
    }

    else
    {
      v4 = 13;
    }

    putchar(v4);
    fflush(*MEMORY[0x29EDCA620]);
  }

  MeCab::progress_bar(char const*,unsigned long,unsigned long)::prev = v3;
  return 1;
}

uint64_t MeCab::load_request_type(MeCab *this, const MeCab::Param *a2)
{
  if (MeCab::Param::get<BOOL>(this, "allocate-sentence"))
  {
    v3 = 65;
  }

  else
  {
    v3 = 1;
  }

  if (MeCab::Param::get<BOOL>(this, "partial"))
  {
    v3 |= 4u;
  }

  if (MeCab::Param::get<BOOL>(this, "all-morphs"))
  {
    v3 |= 0x20u;
  }

  if (MeCab::Param::get<BOOL>(this, "marginal"))
  {
    v4 = v3 | 8;
  }

  else
  {
    v4 = v3;
  }

  v5 = MeCab::Param::get<int>(this, "nbest");
  v6 = MeCab::Param::get<int>(this, "lattice-level");
  v7 = v4 | 2;
  if (v5 <= 1 && v6 <= 0)
  {
    v7 = v4;
  }

  if (v6 <= 1)
  {
    return v7;
  }

  else
  {
    return v7 | 8;
  }
}

BOOL MeCab::load_dictionary_resource(MeCab *this, MeCab::Param *a2)
{
  v41[19] = *MEMORY[0x29EDCA608];
  MeCab::Param::get<std::string>(this, "rcfile", &v39);
  v3 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  size = v39.__r_.__value_.__l.__size_;
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = v39.__r_.__value_.__l.__size_;
  }

  if (!v6)
  {
    v7 = getenv("HOME");
    if (v7)
    {
      std::string::basic_string[abi:ne200100]<0>(&v40, v7);
      std::string::basic_string[abi:ne200100]<0>(__p, ".mecabrc");
      MeCab::create_filename(&v40, __p, &__str);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      std::ifstream::basic_ifstream(&v40);
      if ((*(&v40 + *(v40.__r_.__value_.__r.__words[0] - 24) + 32) & 5) == 0)
      {
        std::string::operator=(&v39, &__str);
      }

      v40.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9518];
      *(v40.__r_.__value_.__r.__words + *(v40.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
      MEMORY[0x29C29A160](&v40.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x29C29A320](v41);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v3 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      size = v39.__r_.__value_.__l.__size_;
      v4 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }
  }

  if (v4 >= 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = size;
  }

  if (!v8)
  {
    v9 = getenv("MECABRC");
    if (v9)
    {
      std::string::__assign_external(&v39, v9);
    }
  }

  MeCab::Param::get<std::string>(this, "dicdir", &__str);
  v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      __str.__r_.__value_.__l.__size_ = 1;
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__str.__r_.__value_.__s + 23) = 1;
      p_str = &__str;
    }

    LOWORD(p_str->__r_.__value_.__l.__data_) = 46;
  }

  LODWORD(v12) = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  v13 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    LODWORD(v12) = v39.__r_.__value_.__r.__words[1];
  }

  v12 = v12;
  v14 = &v39;
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v39.__r_.__value_.__r.__words[0];
  }

  v15 = &v14[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (v12 < 1)
    {
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        v39.__r_.__value_.__l.__size_ = 1;
      }

      else
      {
        *(&v39.__r_.__value_.__s + 23) = 1;
        v13 = &v39;
      }

      LOWORD(v13->__r_.__value_.__l.__data_) = 46;
      goto LABEL_42;
    }

    v16 = v12 - 1;
    v17 = v15[v12--];
  }

  while (v17 != 47);
  std::string::basic_string(&v40, &v39, 0, v16, __p);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v39 = v40;
LABEL_42:
  std::string::basic_string[abi:ne200100]<0>(&v40, "$(rcpath)");
  v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__str;
  }

  else
  {
    v19 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __str.__r_.__value_.__l.__size_;
  }

  v20 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  else
  {
    v21 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v40.__r_.__value_.__l.__size_;
  }

  if (v22)
  {
    if (v18 >= v22)
    {
      v23 = v19 + v18;
      v24 = v21->__r_.__value_.__s.__data_[0];
      v25 = v19;
      do
      {
        v26 = v18 - v22;
        if (v26 == -1)
        {
          break;
        }

        v27 = memchr(v25, v24, v26 + 1);
        if (!v27)
        {
          break;
        }

        v28 = v27;
        if (!memcmp(v27, v21, v22))
        {
          if (v28 != v23)
          {
            v29 = v28 - v19;
            if (v28 - v19 != -1)
            {
              goto LABEL_62;
            }
          }

          break;
        }

        v25 = (v28 + 1);
        v18 = v23 - (v28 + 1);
      }

      while (v18 >= v22);
    }
  }

  else
  {
    v29 = 0;
LABEL_62:
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v39;
    }

    else
    {
      v30 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v39.__r_.__value_.__l.__size_;
    }

    std::string::replace(&__str, v29, v22, v30, v31);
    v20 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  if (v20 < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  MeCab::Param::set<std::string>(this, "dicdir", &__str, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "dicrc");
  MeCab::create_filename(&__str, __p, &v40);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v40;
  *(&v40.__r_.__value_.__s + 23) = 0;
  v40.__r_.__value_.__s.__data_[0] = 0;
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__str;
  }

  else
  {
    v32 = __str.__r_.__value_.__r.__words[0];
  }

  v33 = MeCab::Param::load(this, v32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v34 = *MEMORY[0x29EDCA608];
  return v33;
}

void sub_29917608C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::ifstream::~ifstream(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

BOOL MeCab::file_exists(MeCab *this, const char *a2)
{
  v7[19] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v5);
  v2 = (*&v6[*(v5[0] - 24) + 16] & 5) == 0;
  v5[0] = *MEMORY[0x29EDC9518];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v6);
  std::istream::~istream();
  MEMORY[0x29C29A320](v7);
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(void **a1, void **a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = a2 - 3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) != 0)
      {
        v8 = v6[2];
        v9 = *v6;
        v10 = *(a2 - 1);
        *v6 = *v7;
        v6[2] = v10;
        *v7 = v9;
        *(a2 - 1) = v8;
      }
    }

    else
    {
      v11 = a3;
      if (a3 <= 0)
      {
        if (a1 != a2)
        {
          v17 = a1 + 3;
          if (a1 + 3 != a2)
          {
            v18 = 0;
            v19 = a1;
            do
            {
              v20 = v19;
              v19 = v17;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, v20) & 0x80) != 0)
              {
                v21 = *v19;
                v38 = v19[2];
                v37 = v21;
                v19[1] = 0;
                v19[2] = 0;
                *v19 = 0;
                v22 = v18;
                do
                {
                  v23 = (v6 + v22);
                  if (*(v6 + v22 + 47) < 0)
                  {
                    operator delete(v23[3]);
                  }

                  *(v23 + 3) = *v23;
                  v23[5] = v23[2];
                  *(v23 + 23) = 0;
                  *v23 = 0;
                  if (!v22)
                  {
                    v25 = v6;
                    goto LABEL_22;
                  }

                  v22 -= 24;
                }

                while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v37, (v6 + v22)) & 0x80) != 0);
                v24 = *(v6 + v22 + 47);
                v25 = v6 + v22 + 24;
                if (v24 < 0)
                {
                  operator delete(*v25);
                }

LABEL_22:
                v26 = v37;
                *(v25 + 16) = v38;
                *v25 = v26;
              }

              v17 = v19 + 3;
              v18 += 24;
            }

            while (v19 + 3 != a2);
          }
        }
      }

      else
      {
        v13 = a4;
        v14 = a3 >> 1;
        v15 = &a1[3 * (a3 >> 1)];
        v16 = a3 >> 1;
        if (v11 <= a5)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(a1, v15, v16, a4);
          v27 = v13 + 24 * v14;
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(&v6[3 * (v11 >> 1)], a2, v11 - (v11 >> 1), v27);
          v28 = v13 + 24 * v11;
          v29 = v27;
          v30 = v13;
          while (v29 != v28)
          {
            v31 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v29, v30);
            v32 = *(v6 + 23);
            if (v31 < 0)
            {
              if (v32 < 0)
              {
                operator delete(*v6);
              }

              v34 = *v29;
              v6[2] = *(v29 + 16);
              *v6 = v34;
              *(v29 + 23) = 0;
              *v29 = 0;
              v29 += 24;
            }

            else
            {
              if (v32 < 0)
              {
                operator delete(*v6);
              }

              v33 = *v30;
              v6[2] = *(v30 + 16);
              *v6 = v33;
              *(v30 + 23) = 0;
              *v30 = 0;
              v30 += 24;
            }

            v6 += 3;
            if (v30 == v27)
            {
              while (v29 != v28)
              {
                if (*(v6 + 23) < 0)
                {
                  operator delete(*v6);
                }

                v36 = *v29;
                v6[2] = *(v29 + 16);
                *v6 = v36;
                v6 += 3;
                *(v29 + 23) = 0;
                *v29 = 0;
                v29 += 24;
              }

              goto LABEL_45;
            }
          }

          while (v30 != v27)
          {
            if (*(v6 + 23) < 0)
            {
              operator delete(*v6);
            }

            v35 = *v30;
            v6[2] = *(v30 + 16);
            *v6 = v35;
            v6 += 3;
            *(v30 + 23) = 0;
            *v30 = 0;
            v30 += 24;
          }

LABEL_45:
          if (v13)
          {
            do
            {
              if (*(v13 + 23) < 0)
              {
                operator delete(*v13);
              }

              v13 += 24;
              --v11;
            }

            while (v11);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(a1, v15, v16, a4, a5);
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(&v6[3 * (v11 >> 1)], a2, v11 - (v11 >> 1), v13, a5);

          std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(v6, &v6[3 * (v11 >> 1)], a2, v11 >> 1, v11 - (v11 >> 1), v13, a5);
        }
      }
    }
  }
}

void sub_2991765D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      --v2;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(void **a1, void **a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) == 0)
      {
        v10 = *v7;
        *(v4 + 16) = v7[2];
        *v4 = v10;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
        v11 = *v9;
        *(v4 + 40) = v9[2];
        *(v4 + 24) = v11;
LABEL_40:
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
        return;
      }

      v28 = *v9;
      *(v4 + 16) = v9[2];
      *v4 = v28;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      v29 = *v7;
      *(v4 + 40) = v7[2];
      *(v4 + 24) = v29;
LABEL_39:
      v9 = v7;
      goto LABEL_40;
    }

    if (a3 == 1)
    {
      v8 = *a1;
      *(a4 + 16) = a1[2];
      *a4 = v8;
      goto LABEL_39;
    }

    if (a3 > 8)
    {
      v22 = &a1[3 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(a1, v22, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(&v7[3 * (a3 >> 1)], a2, a3 - (a3 >> 1), v4 + 24 * (a3 >> 1), a3 - (a3 >> 1));
      v23 = &v7[3 * (a3 >> 1)];
      while (v23 != a2)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, v7) & 0x80) != 0)
        {
          v25 = *v23;
          *(v4 + 16) = v23[2];
          *v4 = v25;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = 0;
          v23 += 3;
        }

        else
        {
          v24 = *v7;
          *(v4 + 16) = v7[2];
          *v4 = v24;
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v7 += 3;
        }

        v4 += 24;
        if (v7 == v22)
        {
          while (v23 != a2)
          {
            v27 = *v23;
            *(v4 + 16) = v23[2];
            *v4 = v27;
            v4 += 24;
            v23[1] = 0;
            v23[2] = 0;
            *v23 = 0;
            v23 += 3;
          }

          return;
        }
      }

      while (v7 != v22)
      {
        v26 = *v7;
        *(v4 + 16) = v7[2];
        *v4 = v26;
        v4 += 24;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
        v7 += 3;
      }
    }

    else if (a1 != a2)
    {
      v12 = *a1;
      *(a4 + 16) = a1[2];
      *a4 = v12;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v13 = a1 + 3;
      if (a1 + 3 != a2)
      {
        v14 = 0;
        v15 = a4;
        do
        {
          v16 = v13;
          v17 = (v15 + 24);
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13, v15) & 0x80) != 0)
          {
            *v17 = *v15;
            *(v15 + 40) = *(v15 + 16);
            *(v15 + 8) = 0;
            *(v15 + 16) = 0;
            *v15 = 0;
            v19 = v4;
            if (v15 != v4)
            {
              v20 = v14;
              while (1)
              {
                v19 = v4 + v20;
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, (v4 + v20 - 24)) & 0x80) == 0)
                {
                  break;
                }

                if (*(v19 + 23) < 0)
                {
                  operator delete(*v19);
                }

                *v19 = *(v4 + v20 - 24);
                *(v19 + 16) = *(v4 + v20 - 8);
                *(v4 + v20 - 1) = 0;
                *(v19 - 24) = 0;
                v20 -= 24;
                if (!v20)
                {
                  v19 = v4;
                  break;
                }
              }
            }

            if (*(v19 + 23) < 0)
            {
              operator delete(*v19);
            }

            v21 = *v16;
            *(v19 + 16) = v16[2];
            *v19 = v21;
            *(v7 + 47) = 0;
            *v16 = 0;
          }

          else
          {
            v18 = *v16;
            *(v15 + 40) = v16[2];
            *v17 = v18;
            v16[1] = 0;
            v16[2] = 0;
            *v16 = 0;
          }

          v13 = v16 + 3;
          v14 += 24;
          v15 += 24;
          v7 = v16;
        }

        while (v16 + 3 != a2);
      }
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v68 = a5;
  if (a5)
  {
    v8 = a6;
    while (a4 > a7 && v68 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        v15 = &v13[a1];
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v13[a1]) & 0x80) != 0)
        {
          break;
        }

        v13 += 24;
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = v68;
      v65 = a3;
      v67 = a7;
      if (-v14 >= v68)
      {
        if (v14 == -1)
        {
          v60 = &v13[a1];
          v72 = *&v13[a1 + 16];
          v70 = *&v13[a1];
          v61 = *a2;
          *(v60 + 2) = *(a2 + 2);
          *v60 = v61;
          *a2 = v70;
          *(a2 + 2) = v72;
          return;
        }

        v22 = -v14 / 2;
        v19 = a2;
        if (a2 != a3)
        {
          v23 = &a1[24 * v22];
          v24 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
          v19 = a2;
          do
          {
            v25 = &v19[24 * (v24 >> 1)];
            v26 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v25, &v13[v23]);
            if (v26 >= 0)
            {
              v24 >>= 1;
            }

            else
            {
              v24 += ~(v24 >> 1);
            }

            if (v26 < 0)
            {
              v19 = v25 + 24;
            }
          }

          while (v24);
          v22 = -v14 / 2;
          v17 = v68;
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v19 - a2) >> 3);
        v20 = &a1[24 * v22 + v13];
      }

      else
      {
        v18 = v68 / 2;
        v19 = &a2[24 * (v68 / 2)];
        v20 = a2;
        if ((a2 - a1) != v13)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v13) >> 3);
          v20 = &v13[a1];
          do
          {
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v19, &v20[24 * (v21 >> 1)]) & 0x80u) != 0)
            {
              v21 >>= 1;
            }

            else
            {
              v20 += 24 * (v21 >> 1) + 24;
              v21 += ~(v21 >> 1);
            }
          }

          while (v21);
          v18 = v68 / 2;
          v17 = v68;
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - a1 - v13) >> 3);
      }

      a3 = v19;
      if (v20 != a2)
      {
        a3 = v20;
        if (a2 != v19)
        {
          v27 = *(v20 + 2);
          v28 = *v20;
          v29 = *(a2 + 2);
          *v20 = *a2;
          *(v20 + 2) = v29;
          *a2 = v28;
          *(a2 + 2) = v27;
          a3 = v20 + 24;
          for (i = a2 + 24; i != v19; i += 24)
          {
            if (a3 == a2)
            {
              a2 = i;
            }

            v31 = *(a3 + 2);
            v32 = *a3;
            v33 = *(i + 2);
            *a3 = *i;
            *(a3 + 2) = v33;
            *i = v32;
            *(i + 2) = v31;
            a3 += 24;
          }

          if (a3 != a2)
          {
            v34 = a3;
            v35 = a2;
            do
            {
              while (1)
              {
                v71 = *(v34 + 2);
                v69 = *v34;
                v36 = *v35;
                *(v34 + 2) = *(v35 + 2);
                *v34 = v36;
                v34 += 24;
                *(v35 + 2) = v71;
                *v35 = v69;
                v35 += 24;
                if (v35 == v19)
                {
                  break;
                }

                if (v34 == a2)
                {
                  a2 = v35;
                }
              }

              v35 = a2;
            }

            while (v34 != a2);
          }
        }
      }

      a4 = -v14 - v22;
      v37 = v17 - v18;
      if (v22 + v18 >= v17 - (v22 + v18) - v14)
      {
        v39 = v22;
        v40 = -v14 - v22;
        v41 = v18;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(a3, v19, v65, v40, v17 - v18, a6, v67);
        v19 = v20;
        v8 = a6;
        v37 = v41;
        a4 = v39;
      }

      else
      {
        v38 = v20;
        v8 = a6;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::string *>>(&v13[a1], v38, a3, v22, v18, a6, v67);
        v15 = a3;
        a3 = v65;
      }

      v68 = v37;
      a2 = v19;
      a1 = v15;
      a7 = v67;
      if (!v37)
      {
        return;
      }
    }

    if (a4 <= v68)
    {
      if (a2 == a1)
      {
        return;
      }

      v43 = 0;
      v53 = v8;
      v54 = a1;
      do
      {
        v55 = *v54;
        *(v53 + 2) = *(v54 + 2);
        *v53 = v55;
        v53 = (v53 + 24);
        *(v54 + 1) = 0;
        *(v54 + 2) = 0;
        *v54 = 0;
        v54 += 24;
        ++v43;
      }

      while (v54 != a2);
      while (a2 != a3)
      {
        v56 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v8);
        v57 = a1[23];
        if (v56 < 0)
        {
          if (v57 < 0)
          {
            operator delete(*a1);
          }

          v59 = *a2;
          *(a1 + 2) = *(a2 + 2);
          *a1 = v59;
          a2[23] = 0;
          *a2 = 0;
          a2 += 24;
        }

        else
        {
          if (v57 < 0)
          {
            operator delete(*a1);
          }

          v58 = *v8;
          *(a1 + 2) = *(v8 + 2);
          *a1 = v58;
          *(v8 + 23) = 0;
          *v8 = 0;
          v8 = (v8 + 24);
        }

        a1 += 24;
        if (v53 == v8)
        {
          goto LABEL_94;
        }
      }

      if (v53 != v8)
      {
        do
        {
          if (a1[23] < 0)
          {
            operator delete(*a1);
          }

          v63 = *v8;
          *(a1 + 2) = *(v8 + 2);
          *a1 = v63;
          a1 += 24;
          *(v8 + 23) = 0;
          *v8 = 0;
          v64 = (v53 - 24) == v8;
          v8 = (v8 + 24);
        }

        while (!v64);
      }

LABEL_94:
      v8 = a6;
    }

    else
    {
      if (a2 == a3)
      {
        return;
      }

      v42 = 0;
      v43 = 0;
      do
      {
        v44 = v8 + v42;
        v45 = &a2[v42];
        v46 = *&a2[v42];
        *(v44 + 16) = *&a2[v42 + 16];
        *v44 = v46;
        *(v45 + 1) = 0;
        *(v45 + 2) = 0;
        *v45 = 0;
        ++v43;
        v42 += 24;
      }

      while (&a2[v42] != a3);
      v47 = (a3 - 24);
      v48 = (v8 + v42);
      while (a2 != a1)
      {
        v49 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v48 - 3, a2 - 3);
        if (v49 >= 0)
        {
          v50 = v48;
        }

        else
        {
          v50 = a2;
        }

        if (v49 >= 0)
        {
          v51 = v48 - 24;
        }

        else
        {
          v51 = a2 - 24;
        }

        if (v49 >= 0)
        {
          v48 = (v48 - 24);
        }

        else
        {
          a2 -= 24;
        }

        if (*(v47 + 23) < 0)
        {
          operator delete(*v47);
        }

        v52 = *v51;
        v47[2] = *(v51 + 2);
        *v47 = v52;
        v47 -= 3;
        *(v50 - 1) = 0;
        *v51 = 0;
        v8 = a6;
        if (v48 == a6)
        {
          goto LABEL_95;
        }
      }

      for (; v48 != v8; v48 = (v48 - 24))
      {
        if (*(v47 + 23) < 0)
        {
          operator delete(*v47);
        }

        v62 = *(v48 - 24);
        v47[2] = *(v48 - 1);
        *v47 = v62;
        v47 -= 3;
        *(v48 - 1) = 0;
        *(v48 - 24) = 0;
      }
    }

LABEL_95:
    if (v8)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v8 = (v8 + 24);
        --v43;
      }

      while (v43);
    }
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v29 + v32 + v38;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v38 + v30 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v31 + v33 + v44;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v56 + v54 + v65 + v55;
      v47 = __ROR8__(v56 + v54 + v65, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

uint64_t MeCab::Tokenizer<mecab_node_t,mecab_path_t>::~Tokenizer(uint64_t a1)
{
  *a1 = &unk_2A1F36118;
  MeCab::Tokenizer<mecab_node_t,mecab_path_t>::close(a1);
  if (*(a1 + 1879) < 0)
  {
    operator delete(*(a1 + 1856));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 1592) = *MEMORY[0x29EDC9538];
  *(a1 + 1592 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 1600) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1687) < 0)
  {
    operator delete(*(a1 + 1664));
  }

  *(a1 + 1600) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1608));
  std::ostream::~ostream();
  MEMORY[0x29C29A320](a1 + 1704);
  MeCab::CharProperty::~CharProperty((a1 + 904));
  v4 = *(a1 + 864);
  if (v4)
  {
    *(a1 + 872) = v4;
    operator delete(v4);
  }

  MeCab::FreeList<mecab_dictionary_info_t>::~FreeList((a1 + 808));
  *(a1 + 792) = &unk_2A1F35458;
  v5 = *(a1 + 800);
  if (v5)
  {
    MEMORY[0x29C29A350](v5, 0x1000C8077774924);
  }

  *(a1 + 776) = &unk_2A1F35458;
  v6 = *(a1 + 784);
  if (v6)
  {
    MEMORY[0x29C29A350](v6, 0x1000C8077774924);
  }

  MeCab::Dictionary::~Dictionary((a1 + 40));
  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

void *MeCab::Tokenizer<mecab_node_t,mecab_path_t>::close(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = a1[2];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = a1[1];
  }

  a1[2] = v3;
  a1[109] = a1[108];

  return MeCab::Mmap<char>::close((a1 + 114));
}

void MeCab::Tokenizer<mecab_node_t,mecab_path_t>::~Tokenizer(uint64_t a1)
{
  MeCab::Tokenizer<mecab_node_t,mecab_path_t>::~Tokenizer(a1);

  JUMPOUT(0x29C29A380);
}

void MeCab::Tokenizer<mecab_node_t,mecab_path_t>::Tokenizer(uint64_t a1)
{
  *a1 = &unk_2A1F36118;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  MeCab::Dictionary::Dictionary((a1 + 40));
  MeCab::scoped_string::scoped_string((a1 + 776));
}

void sub_2991776A4(_Unwind_Exception *a1)
{
  MeCab::CharProperty::~CharProperty(v1 + 113);
  locale = v1[108].__locale_;
  if (locale)
  {
    v1[109].__locale_ = locale;
    operator delete(locale);
  }

  MeCab::FreeList<mecab_dictionary_info_t>::~FreeList(v2);
  v1[99].__locale_ = &unk_2A1F35458;
  v6 = v1[100].__locale_;
  if (v6)
  {
    MEMORY[0x29C29A350](v6, 0x1000C8077774924);
  }

  v1[97].__locale_ = &unk_2A1F35458;
  v7 = v1[98].__locale_;
  if (v7)
  {
    MEMORY[0x29C29A350](v7, 0x1000C8077774924);
  }

  MeCab::Dictionary::~Dictionary(&v1[5]);
  v8 = *v3;
  if (*v3)
  {
    v1[2].__locale_ = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<false>(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v6 = a2;
  v7 = a1;
  v62 = 0;
  v61 = 0;
  if (a3 - a2 <= 0xFFFE)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a2 + 0xFFFF);
  }

  if (v8 <= a2)
  {
    v15 = 0;
    v14 = 0;
    v16 = a2;
    goto LABEL_33;
  }

  v9 = *(a1 + 896);
  v10 = *(a1 + 1280);
  v11 = a2;
  while (1)
  {
    v12 = v8 - v11;
    if ((*(a1 + 1288) - 3) <= 2)
    {
      break;
    }

    v13 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    if (v12 >= 2 && (v13 & 0xE0) == 0xC0)
    {
      v14 = 2;
      v13 = v11[1] & 0x3F | ((v13 & 0x1F) << 6);
    }

    else
    {
      if (v12 < 3)
      {
        goto LABEL_21;
      }

      if ((v13 & 0xF0) == 0xE0)
      {
        v13 = (v13 << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
        v14 = 3;
      }

      else
      {
        if (v12 == 3)
        {
          goto LABEL_21;
        }

        if ((v13 & 0xF8) == 0xF0)
        {
          v13 = 0;
          v14 = 4;
        }

        else
        {
          if (v12 < 5)
          {
            goto LABEL_21;
          }

          if ((v13 & 0xFC) == 0xF8)
          {
            v13 = 0;
            v14 = 5;
          }

          else
          {
            if (v12 == 5 || (v13 & 0xFE) != 0xFC)
            {
LABEL_21:
              v13 = 0;
LABEL_10:
              v14 = 1;
              goto LABEL_14;
            }

            v13 = 0;
            v14 = 6;
          }
        }
      }
    }

LABEL_14:
    v15 = v10[v13];
    if ((v9 & v15 & 0x3FFFF) != 0)
    {
      v11 += v14;
      v9 = v10[v13];
      if (v11 < v8)
      {
        continue;
      }
    }

    v62 = v10[v13];
LABEL_32:
    v16 = v11;
    goto LABEL_33;
  }

  if (v12 >= 2)
  {
    v13 = *v11;
    v14 = 2;
    goto LABEL_14;
  }

  v14 = 0;
  v16 = 0;
  v15 = *v10;
  v62 = v15;
  if ((v9 & v15 & 0x3FFFF) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v17 = *(a1 + 8);
  if (v17 == *(a1 + 16))
  {
    goto LABEL_51;
  }

  v50 = v14;
  v54 = v15;
  v18 = 0;
  v19 = 0;
  v56 = v16;
  v58 = *(a4 + 112);
  v51 = a2;
  v52 = v8 - v16;
  v60 = v16 - a2;
  do
  {
    v20 = v17;
    v57 = MeCab::Dictionary::commonPrefixSearch(*v17, v16, v52, v58, 0x200uLL, *&a5);
    if (v57)
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v59 = v21;
        v23 = v58 + 16 * v21;
        v24 = *(v23 + 8);
        if (*(v23 + 8))
        {
          v25 = *(*v22 + 352) + 12 * (*(v23 + 8) >> 8);
          do
          {
            a5 = MeCab::FreeList<mecab_node_t>::alloc(*(a4 + 24));
            v22 = v20;
            v18 = v26;
            v27 = *v20;
            *(v26 + 86) = *v25;
            *(v26 + 84) = *(v25 + 2);
            *(v26 + 88) = *(v25 + 4);
            *(v26 + 92) = *(v25 + 6);
            v28 = *(v27 + 726) == 1 && *(v27 + 725) == 1;
            v29 = *(v27 + 368) + *(v25 + 8);
            if (v28)
            {
              v29 = v25;
            }

            v30 = *(v23 + 12);
            *(v26 + 80) = v30;
            *(v26 + 82) = v30 + v60;
            *(v26 + 64) = v56;
            *(v26 + 72) = v29;
            *(v26 + 91) = 0;
            *(v26 + 90) = v54 >> 18;
            *(v26 + 24) = v19;
            v25 += 12;
            v19 = v26;
            --v24;
          }

          while (v24);
        }

        v21 = v59 + 1;
      }

      while ((v59 + 1) != v57);
    }

    else
    {
      v22 = v20;
    }

    v17 = v22 + 1;
    v7 = a1;
    v16 = v56;
  }

  while (v17 != *(a1 + 16));
  v61 = v18;
  v5 = a4;
  v6 = v51;
  v15 = v54;
  v14 = v50;
  if ((v54 & 0x80000000) != 0 || !v19)
  {
LABEL_51:
    v31 = &v16[v14];
    if (&v16[v14] > v8)
    {
      MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<false>(v7, &v62, v6, v16, v16 + v14, v5, &v61);
      return v32;
    }

    if (*(v7 + 1888) == 1 && *(v7 + 1880) == (v15 >> 18))
    {
      v33 = Thai::seekToSyllableEnd(v16, v8);
      if (v16 < v33)
      {
        MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<false>(v7, &v62, v6, v16, v33, v5, &v61);
        v15 = v62;
      }
    }

    if ((v15 & 0x40000000) == 0)
    {
      v34 = 0;
      goto LABEL_93;
    }

    v35 = *(v7 + 1584);
    v36 = &v31[2 * v35];
    if (v8 - v31 < 2 * v35)
    {
      v36 = v8;
    }

    if (v31 >= v36)
    {
      v37 = 0;
      v34 = v31;
      goto LABEL_90;
    }

    v37 = 0;
    v34 = v31;
    v38 = v15;
    while (2)
    {
      v39 = v36 - v34;
      if ((*(v7 + 1288) - 3) > 2)
      {
        v40 = *v34;
        if (*v34 < 0)
        {
          if (v39 >= 2 && (v40 & 0xE0) == 0xC0)
          {
            v41 = 2;
            v40 = v34[1] & 0x3F | ((v40 & 0x1F) << 6);
            goto LABEL_71;
          }

          if (v39 >= 3)
          {
            if ((v40 & 0xF0) == 0xE0)
            {
              v40 = (v40 << 12) | ((v34[1] & 0x3F) << 6) | v34[2] & 0x3F;
              v41 = 3;
              goto LABEL_71;
            }

            if (v39 != 3)
            {
              if ((v40 & 0xF8) == 0xF0)
              {
                v40 = 0;
                v41 = 4;
                goto LABEL_71;
              }

              if (v39 >= 5)
              {
                if ((v40 & 0xFC) == 0xF8)
                {
                  v40 = 0;
                  v41 = 5;
                  goto LABEL_71;
                }

                if (v39 != 5 && (v40 & 0xFE) == 0xFC)
                {
                  v40 = 0;
                  v41 = 6;
                  goto LABEL_71;
                }
              }
            }
          }

          v40 = 0;
        }

        v41 = 1;
LABEL_71:
        v42 = *(*(v7 + 1280) + 4 * v40);
        if ((v38 & v42 & 0x3FFFF) == 0)
        {
          goto LABEL_91;
        }

        v34 += v41;
        ++v37;
        v38 = v42;
        if (v34 >= v36)
        {
          goto LABEL_91;
        }

        continue;
      }

      break;
    }

    if (v39 >= 2)
    {
      v40 = *v34;
      v41 = 2;
      goto LABEL_71;
    }

    if ((v38 & **(v7 + 1280) & 0x3FFFF) == 0)
    {
LABEL_90:
      if (v34)
      {
LABEL_91:
        if (v37 <= v35)
        {
          MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<false>(v7, &v62, v6, v16, v34, v5, &v61);
          v15 = v62;
        }

LABEL_93:
        if ((v15 & 0x3C000000) != 0)
        {
          v43 = 1;
          while (v31 == v34)
          {
LABEL_107:
            if (v43++ >= ((v15 >> 26) & 0xF) || v31 > v8)
            {
              goto LABEL_126;
            }
          }

          MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<false>(v7, &v62, v6, v16, v31, v5, &v61);
          v44 = v8 - v31;
          if ((*(v7 + 1288) - 3) <= 2)
          {
            if (v44 < 2)
            {
              v46 = 0;
              v45 = 0;
            }

            else
            {
              v45 = *v31;
              v46 = 2;
            }

            goto LABEL_105;
          }

          v45 = *v31;
          if (*v31 < 0)
          {
            if (v44 < 2 || (v45 & 0xE0) != 0xC0)
            {
              if (v44 >= 3)
              {
                if ((v45 & 0xF0) == 0xE0)
                {
                  v45 = (v45 << 12) | ((v31[1] & 0x3F) << 6) | v31[2] & 0x3F;
                  v46 = 3;
                  goto LABEL_105;
                }

                if (v44 != 3)
                {
                  if ((v45 & 0xF8) == 0xF0)
                  {
                    v45 = 0;
                    v46 = 4;
                    goto LABEL_105;
                  }

                  if (v44 >= 5)
                  {
                    if ((v45 & 0xFC) == 0xF8)
                    {
                      v45 = 0;
                      v46 = 5;
                      goto LABEL_105;
                    }

                    if (v44 != 5 && (v45 & 0xFE) == 0xFC)
                    {
                      v45 = 0;
                      v46 = 6;
                      goto LABEL_105;
                    }
                  }
                }
              }

              v45 = 0;
              goto LABEL_100;
            }

            v46 = 2;
            v45 = v31[1] & 0x3F | ((v45 & 0x1F) << 6);
          }

          else
          {
LABEL_100:
            v46 = 1;
          }

LABEL_105:
          v15 = v62;
          if ((*(*(v7 + 1280) + 4 * v45) & v62 & 0x3FFFF) == 0)
          {
            goto LABEL_126;
          }

          v31 += v46;
          goto LABEL_107;
        }

LABEL_126:
        v19 = v61;
        if (v61)
        {
          return v19;
        }

        MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<false>(v7, &v62, v6, v16, v31, v5, &v61);
      }
    }

    return v61;
  }

  return v19;
}

void MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<false>(uint64_t a1, _DWORD *a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6, void *a7)
{
  v8 = (*(a1 + 864) + 16 * (*a2 >> 18));
  v9 = v8[1];
  if (v9)
  {
    v14 = *v8;
    v15 = a5 - a4;
    v16 = a5 - a3;
    do
    {
      MeCab::FreeList<mecab_node_t>::alloc(*(a6 + 24));
      *(v17 + 86) = *v14;
      *(v17 + 84) = *(v14 + 2);
      *(v17 + 88) = *(v14 + 4);
      *(v17 + 92) = *(v14 + 6);
      v18 = *(a1 + 766) == 1 && *(a1 + 765) == 1;
      v19 = *(a1 + 408) + *(v14 + 8);
      if (v18)
      {
        v19 = v14;
      }

      *(v17 + 72) = v19;
      *(v17 + 90) = *a2 >> 18;
      *(v17 + 64) = a4;
      *(v17 + 80) = v15;
      *(v17 + 82) = v16;
      *(v17 + 91) = 1;
      *(v17 + 24) = *a7;
      v20 = *(a1 + 800);
      if (v20)
      {
        *(v17 + 72) = v20;
      }

      *a7 = v17;
      v14 += 12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v21 = *a7;
  }
}

uint64_t MeCab::Tokenizer<mecab_node_t,mecab_path_t>::lookup<true>(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v79 = 0;
  v78 = 0;
  if (a3 - a2 <= 0xFFFE)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a2 + 0xFFFF);
  }

  v9 = &a2[-(*(*a5 + 64))(a5)];
  while (++v9 < (*(*a5 + 88))(a5))
  {
    if ((*(*a5 + 248))(a5, v9) == 1)
    {
      v8 = &v9[(*(*a5 + 64))(a5)];
      break;
    }
  }

  if (v8 <= v6)
  {
    v17 = 0;
    v16 = 0;
    v18 = v6;
    goto LABEL_37;
  }

  v11 = *(a1 + 896);
  v12 = *(a1 + 1280);
  v13 = v6;
  while (1)
  {
    v14 = v8 - v13;
    if ((*(a1 + 1288) - 3) <= 2)
    {
      break;
    }

    v15 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    if (v14 >= 2 && (v15 & 0xE0) == 0xC0)
    {
      v16 = 2;
      v15 = v13[1] & 0x3F | ((v15 & 0x1F) << 6);
    }

    else
    {
      if (v14 < 3)
      {
        goto LABEL_25;
      }

      if ((v15 & 0xF0) == 0xE0)
      {
        v15 = (v15 << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        if (v14 == 3)
        {
          goto LABEL_25;
        }

        if ((v15 & 0xF8) == 0xF0)
        {
          v15 = 0;
          v16 = 4;
        }

        else
        {
          if (v14 < 5)
          {
            goto LABEL_25;
          }

          if ((v15 & 0xFC) == 0xF8)
          {
            v15 = 0;
            v16 = 5;
          }

          else
          {
            if (v14 == 5 || (v15 & 0xFE) != 0xFC)
            {
LABEL_25:
              v15 = 0;
LABEL_14:
              v16 = 1;
              goto LABEL_18;
            }

            v15 = 0;
            v16 = 6;
          }
        }
      }
    }

LABEL_18:
    v17 = v12[v15];
    if ((v11 & v17 & 0x3FFFF) != 0)
    {
      v13 += v16;
      v11 = v12[v15];
      if (v13 < v8)
      {
        continue;
      }
    }

    v79 = v12[v15];
LABEL_36:
    v18 = v13;
    goto LABEL_37;
  }

  if (v14 >= 2)
  {
    v15 = *v13;
    v16 = 2;
    goto LABEL_18;
  }

  v16 = 0;
  v18 = 0;
  v17 = *v12;
  v79 = v17;
  if ((v11 & v17 & 0x3FFFF) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  v19 = *(a1 + 8);
  if (v19 == *(a1 + 16))
  {
    goto LABEL_55;
  }

  v67 = v16;
  v75 = v17;
  v74 = 0;
  v20 = v6;
  v21 = 0;
  v72 = *(a4 + 112);
  v68 = v20;
  v69 = v8 - v18;
  v22 = v18 - v20;
  v70 = a1;
  do
  {
    v23 = v18;
    v71 = MeCab::Dictionary::commonPrefixSearch(*v19, v18, v69, v72, 0x200uLL, v10);
    if (v71)
    {
      v24 = 0;
      do
      {
        v73 = v24;
        v25 = v72 + 16 * v24;
        v26 = *(v25 + 8);
        if (*(v25 + 8))
        {
          v27 = *(*v19 + 352) + 12 * (*(v25 + 8) >> 8);
          do
          {
            MeCab::FreeList<mecab_node_t>::alloc(*(a4 + 24));
            v29 = v28;
            v30 = *v19;
            *(v28 + 86) = *v27;
            *(v28 + 84) = *(v27 + 2);
            *(v28 + 88) = *(v27 + 4);
            *(v28 + 92) = *(v27 + 6);
            v31 = *(v30 + 726) == 1 && *(v30 + 725) == 1;
            v32 = *(v30 + 368) + *(v27 + 8);
            if (v31)
            {
              v32 = v27;
            }

            v33 = *(v25 + 12);
            *(v28 + 80) = v33;
            *(v28 + 82) = v33 + v22;
            *(v28 + 64) = v23;
            *(v28 + 72) = v32;
            *(v28 + 91) = 0;
            *(v28 + 90) = v75 >> 18;
            {
              *(v29 + 24) = v21;
              v74 = v29;
              v21 = v29;
            }

            v27 += 12;
            --v26;
          }

          while (v26);
        }

        v24 = v73 + 1;
      }

      while ((v73 + 1) != v71);
    }

    ++v19;
    a1 = v70;
    v18 = v23;
  }

  while (v19 != *(v70 + 16));
  v78 = v74;
  v17 = v75;
  v34 = v21;
  v6 = v68;
  v16 = v67;
  if ((v75 & 0x80000000) != 0 || !v34)
  {
LABEL_55:
    v35 = &v18[v16];
    if (&v18[v16] > v8)
    {
      return MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(a1, &v79, v6, v18, v18 + v16, a4, a5, &v78);
    }

    if (*(a1 + 1888) == 1 && *(a1 + 1880) == (v17 >> 18))
    {
      v36 = Thai::seekToSyllableEnd(v18, v8);
      if (v18 < v36)
      {
        MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(a1, &v79, v6, v18, v36, a4, a5, &v78);
        v17 = v79;
      }
    }

    if ((v17 & 0x40000000) == 0)
    {
      v37 = 0;
      goto LABEL_97;
    }

    v38 = *(a1 + 1584);
    v39 = &v35[2 * v38];
    if (v8 - v35 < 2 * v38)
    {
      v39 = v8;
    }

    if (v35 >= v39)
    {
      v40 = 0;
      v37 = v35;
      goto LABEL_94;
    }

    v40 = 0;
    v37 = v35;
    v41 = v17;
    while (2)
    {
      v42 = v39 - v37;
      if ((*(a1 + 1288) - 3) > 2)
      {
        v43 = *v37;
        if (*v37 < 0)
        {
          if (v42 >= 2 && (v43 & 0xE0) == 0xC0)
          {
            v44 = 2;
            v43 = v37[1] & 0x3F | ((v43 & 0x1F) << 6);
            goto LABEL_75;
          }

          if (v42 >= 3)
          {
            if ((v43 & 0xF0) == 0xE0)
            {
              v43 = (v43 << 12) | ((v37[1] & 0x3F) << 6) | v37[2] & 0x3F;
              v44 = 3;
              goto LABEL_75;
            }

            if (v42 != 3)
            {
              if ((v43 & 0xF8) == 0xF0)
              {
                v43 = 0;
                v44 = 4;
                goto LABEL_75;
              }

              if (v42 >= 5)
              {
                if ((v43 & 0xFC) == 0xF8)
                {
                  v43 = 0;
                  v44 = 5;
                  goto LABEL_75;
                }

                if (v42 != 5 && (v43 & 0xFE) == 0xFC)
                {
                  v43 = 0;
                  v44 = 6;
                  goto LABEL_75;
                }
              }
            }
          }

          v43 = 0;
        }

        v44 = 1;
LABEL_75:
        v45 = *(*(a1 + 1280) + 4 * v43);
        if ((v41 & v45 & 0x3FFFF) == 0)
        {
          goto LABEL_95;
        }

        v37 += v44;
        ++v40;
        v41 = v45;
        if (v37 >= v39)
        {
          goto LABEL_95;
        }

        continue;
      }

      break;
    }

    if (v42 >= 2)
    {
      v43 = *v37;
      v44 = 2;
      goto LABEL_75;
    }

    if ((v41 & **(a1 + 1280) & 0x3FFFF) != 0)
    {
      return v78;
    }

LABEL_94:
    if (!v37)
    {
      return v78;
    }

LABEL_95:
    if (v40 <= v38)
    {
      MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(a1, &v79, v6, v18, v37, a4, a5, &v78);
      v17 = v79;
    }

LABEL_97:
    if ((v17 & 0x3C000000) != 0)
    {
      v46 = 1;
      while (v35 == v37)
      {
LABEL_111:
        if (v46++ >= ((v17 >> 26) & 0xF) || v35 > v8)
        {
          goto LABEL_130;
        }
      }

      MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(a1, &v79, v6, v18, v35, a4, a5, &v78);
      v47 = v8 - v35;
      if ((*(a1 + 1288) - 3) <= 2)
      {
        if (v47 < 2)
        {
          v49 = 0;
          v48 = 0;
        }

        else
        {
          v48 = *v35;
          v49 = 2;
        }

        goto LABEL_109;
      }

      v48 = *v35;
      if (*v35 < 0)
      {
        if (v47 < 2 || (v48 & 0xE0) != 0xC0)
        {
          if (v47 >= 3)
          {
            if ((v48 & 0xF0) == 0xE0)
            {
              v48 = (v48 << 12) | ((v35[1] & 0x3F) << 6) | v35[2] & 0x3F;
              v49 = 3;
              goto LABEL_109;
            }

            if (v47 != 3)
            {
              if ((v48 & 0xF8) == 0xF0)
              {
                v48 = 0;
                v49 = 4;
                goto LABEL_109;
              }

              if (v47 >= 5)
              {
                if ((v48 & 0xFC) == 0xF8)
                {
                  v48 = 0;
                  v49 = 5;
                  goto LABEL_109;
                }

                if (v47 != 5 && (v48 & 0xFE) == 0xFC)
                {
                  v48 = 0;
                  v49 = 6;
                  goto LABEL_109;
                }
              }
            }
          }

          v48 = 0;
          goto LABEL_104;
        }

        v49 = 2;
        v48 = v35[1] & 0x3F | ((v48 & 0x1F) << 6);
      }

      else
      {
LABEL_104:
        v49 = 1;
      }

LABEL_109:
      v17 = v79;
      if ((*(*(a1 + 1280) + 4 * v48) & v79 & 0x3FFFF) == 0)
      {
        goto LABEL_130;
      }

      v35 += v49;
      goto LABEL_111;
    }

LABEL_130:
    v34 = v78;
    if (v78)
    {
      return v34;
    }

    MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(a1, &v79, v6, v18, v35, a4, a5, &v78);
    v34 = v78;
    if (v78)
    {
      return v34;
    }

    v52 = v18;
    while (2)
    {
      v53 = v8 - v52;
      if ((*(a1 + 1288) - 3) > 2)
      {
        v54 = *v52;
        if (*v52 < 0)
        {
          if (v53 >= 2 && (v54 & 0xE0) == 0xC0)
          {
            v55 = 2;
            v54 = v52[1] & 0x3F | ((v54 & 0x1F) << 6);
            goto LABEL_142;
          }

          if (v53 >= 3)
          {
            if ((v54 & 0xF0) == 0xE0)
            {
              v54 = (v54 << 12) | ((v52[1] & 0x3F) << 6) | v52[2] & 0x3F;
              v55 = 3;
              goto LABEL_142;
            }

            if (v53 != 3)
            {
              if ((v54 & 0xF8) == 0xF0)
              {
                v54 = 0;
                v55 = 4;
                goto LABEL_142;
              }

              if (v53 >= 5)
              {
                if ((v54 & 0xFC) == 0xF8)
                {
                  v54 = 0;
                  v55 = 5;
                  goto LABEL_142;
                }

                if (v53 != 5 && (v54 & 0xFE) == 0xFC)
                {
                  v54 = 0;
                  v55 = 6;
                  goto LABEL_142;
                }
              }
            }
          }

          v54 = 0;
        }

        v55 = 1;
      }

      else if (v53 < 2)
      {
        v55 = 0;
        v54 = 0;
      }

      else
      {
        v54 = *v52;
        v55 = 2;
      }

LABEL_142:
      v79 = *(*(a1 + 1280) + 4 * v54);
      v52 += v55;
      if (v52 > v8 || (v56 = (*(*a5 + 64))(a5), (*(*a5 + 248))(a5, &v52[-v56]) != 2))
      {
        MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(a1, &v79, v6, v18, v52, a4, a5, &v78);
        v34 = v78;
        if (!v78)
        {
          v57 = MeCab::FreeList<mecab_node_t>::alloc(*(a4 + 24));
          v34 = v58;
          *(v58 + 90) = v79 >> 18;
          *(v58 + 64) = v18;
          *(v58 + 80) = v52 - v18;
          *(v58 + 82) = v52 - v6;
          *(v58 + 91) = 1;
          *(v58 + 24) = 0;
          v59 = &v6[-(*(*a5 + 64))(a5, v57)];
          v60 = (*(*a5 + 256))(a5, v59);
          *(v34 + 72) = v60;
          if (!v60)
          {
            v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tokenizer.cpp", 63);
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "(", 1);
            v63 = MEMORY[0x29C29A250](v62, 503);
            v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ") [", 3);
            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "new_node->feature", 17);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "] ", 2);
            MeCab::die::~die(&v77);
          }
        }

        return v34;
      }

      continue;
    }
  }

  return v34;
}

uint64_t MeCab::anonymous namespace::is_valid_node<mecab_node_t>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = v4 - (*(*a1 + 64))(a1);
  v6 = *(a2 + 80);
  if ((*(*a1 + 248))(a1, v5 + v6) != 2)
  {
    v7 = *(a2 + 64);
    v8 = (*(*a1 + 64))(a1);
    v9 = v7 + *(a2 + 80) - *(a2 + 82);
    v10 = (*(*a1 + 256))(a1, v9 - v8);
    if (!v10)
    {
      return 1;
    }

    v11 = v10;
    if ((*(*a1 + 248))(a1, v9 - v8) == 1 && (*(*a1 + 248))(a1, v5 + v6) == 1)
    {
      v12 = *(a2 + 72);
      if (*v11 != 42 || v11[1])
      {
        operator new[]();
      }

      return 1;
    }
  }

  return 0;
}

void sub_29917909C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15)
  {
    MEMORY[0x29C29A350](a15, 0x10C80436913F5);
  }

  if (a18)
  {
    MEMORY[0x29C29A350](a18, v21);
  }

  if (a21)
  {
    MEMORY[0x29C29A350](a21, v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Tokenizer<mecab_node_t,mecab_path_t>::addUnknownNodes<true>(uint64_t a1, _DWORD *a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a1 + 864) + 16 * (*a2 >> 18));
  v10 = v9[1];
  if (v10)
  {
    v15 = *v9;
    v16 = a5 - a4;
    v17 = a5 - a3;
    do
    {
      MeCab::FreeList<mecab_node_t>::alloc(*(a6 + 24));
      v19 = v18;
      *(v18 + 86) = *v15;
      *(v18 + 84) = *(v15 + 2);
      *(v18 + 88) = *(v15 + 4);
      *(v18 + 92) = *(v15 + 6);
      v20 = *(a1 + 766) == 1 && *(a1 + 765) == 1;
      v21 = *(a1 + 408) + *(v15 + 8);
      if (v20)
      {
        v21 = v15;
      }

      *(v18 + 72) = v21;
      *(v18 + 90) = *a2 >> 18;
      *(v18 + 64) = a4;
      *(v18 + 80) = v16;
      *(v18 + 82) = v17;
      *(v18 + 91) = 1;
      *(v18 + 24) = *a8;
      v22 = *(a1 + 800);
      if (v22)
      {
        *(v18 + 72) = v22;
      }

      {
        *a8 = v19;
      }

      v15 += 12;
      --v10;
    }

    while (v10);
  }

  return *a8;
}

void sub_299179508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x29C29A350](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void *MeCab::scoped_fixed_array<trie_search_result_type_t,512>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F36148;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8094CA146DLL);
  }

  return a1;
}

unint64_t MeCab::Tokenizer<mecab_node_t,mecab_path_t>::getFeature(uint64_t a1, uint64_t a2, _WORD *a3, unint64_t a4)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    if (!*(a2 + 80) || (*(a2 + 91) & 0xFE) == 2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 32);
    if (*(v7 + 725) != 1 || *(v7 + 726) != 1)
    {
      return MeCab::Dictionary::copyFeature(v7, a2, a3, a4);
    }

    v8 = *(a2 + 72);
    if (v8)
    {
      if (*(v8 + 8) == 42)
      {
        *a3 = 42;
        return 1;
      }

      else
      {

        return MeCab::Dictionary::compressedFeature(v7, v8, &MeCab::internal::kDecodeArray, a3, a4);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unint64_t MeCab::Dictionary::compressedFeature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  marisa::Agent::Agent(v14);
  marisa::Agent::set_query(v14, *(a2 + 8));
  marisa::Trie::reverse_lookup((a1 + 728), v14);
  v10 = v15;
  if (v15)
  {
    v11 = 0;
    v12 = v14[3];
    while (*(v12 + v11))
    {
      *(a4 + 2 * v11) = *(a3 + 2 * *(v12 + v11));
      if (v11 > a5)
      {
        v11 = 0xFFFFFFFFLL;
        break;
      }

      if (v10 == ++v11)
      {
        v11 = v10;
        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  marisa::Agent::~Agent(v14);
  return v11;
}

uint64_t MeCab::Dictionary::copyFeature(uint64_t a1, uint64_t a2, _WORD *a3, unint64_t a4)
{
  v4 = *(a2 + 72);
  v5 = *v4;
  if (*(a1 + 720) == 1)
  {
    if (*v4)
    {
      v6 = 0;
      v7 = v4 + 1;
      do
      {
        if (a4 <= v6 >> 1)
        {
          break;
        }

        if (v5 == 44)
        {
          v4 = v7;
        }

        v8 = *v7++;
        v5 = v8;
        v6 += 2;
      }

      while (v8);
      v9 = v7 - 1;
      if (v4 != v7 - 1)
      {
        v10 = v4;
        do
        {
          v11 = *v10++;
          *a3++ = v11;
        }

        while (v10 != v9);
        return v9 - v4;
      }
    }

LABEL_17:
    v9 = v4;
    return v9 - v4;
  }

  if (!*v4)
  {
    goto LABEL_17;
  }

  v12 = 0;
  do
  {
    if (a4 <= (v12 * 2) >> 1)
    {
      break;
    }

    a3[v12] = v5;
    v5 = v4[++v12];
  }

  while (v5);
  v9 = &v4[v12];
  return v9 - v4;
}

uint64_t MeCab::Tokenizer<mecab_node_t,mecab_path_t>::open(void *a1, const MeCab::Param *a2)
{
  MeCab::Tokenizer<mecab_node_t,mecab_path_t>::close(a1);
  MeCab::Param::get<std::string>(a2, "dicdir", &v25);
  std::string::basic_string[abi:ne200100]<0>(&v22, "unk.dic");
  MeCab::create_filename(&v25, &v22, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = MeCab::Dictionary::open((a1 + 5), p_p, "r");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22);
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_11:
    std::ios_base::clear((a1 + *(a1[199] - 24) + 1592), 0);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 199, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tokenizer.cpp", 63);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 129);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "unkdic_.open(create_filename (prefix, UNK_DIC_FILE).c_str())", 60);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = MeCab::whatlog::str((a1 + 59));
    std::string::basic_string[abi:ne200100]<0>(&__p, v12);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_23;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (MeCab::CharProperty::open((a1 + 113), a2))
  {
    operator new();
  }

  std::ios_base::clear((a1 + *(a1[199] - 24) + 1592), 0);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 199, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tokenizer.cpp", 63);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
  v17 = MEMORY[0x29C29A250](v16, 131);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "property_.open(param)", 21);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
  v20 = MeCab::whatlog::str((a1 + 162));
  std::string::basic_string[abi:ne200100]<0>(&__p, v20);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

LABEL_23:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29917A4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    MEMORY[0x29C29A350](a18, 0x10C80436913F5);
  }

  if (a22)
  {
    MEMORY[0x29C29A350](a22, 0x1000C8077774924);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 81) < 0)
  {
    operator delete(*(v32 - 104));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MeCab::Dictionary *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

BOOL MeCab::Dictionary::isCompatible(MeCab::Dictionary *this, const MeCab::Dictionary *a2)
{
  if (*(this + 96) != *(a2 + 96))
  {
    return 0;
  }

  if (*(this + 99) != *(a2 + 99) || *(this + 100) != *(a2 + 100))
  {
    return 0;
  }

  v3 = MeCab::decode_charset(*(this + 47), a2);
  return v3 == MeCab::decode_charset(*(a2 + 47), v4);
}

double MeCab::FreeList<mecab_dictionary_info_t>::alloc(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x30uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = (v5 + 48 * v3);
  result = 0.0;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  return result;
}

void std::vector<std::pair<mecab_token_t const*,unsigned long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
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

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
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

void MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::Tokenizer(uint64_t a1)
{
  *a1 = &unk_2A1F35CE8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  MeCab::Dictionary::Dictionary((a1 + 40));
  MeCab::scoped_string::scoped_string((a1 + 776));
}

void sub_29917AB20(_Unwind_Exception *a1)
{
  MeCab::CharProperty::~CharProperty(v1 + 113);
  locale = v1[108].__locale_;
  if (locale)
  {
    v1[109].__locale_ = locale;
    operator delete(locale);
  }

  MeCab::FreeList<mecab_dictionary_info_t>::~FreeList(v2);
  v1[99].__locale_ = &unk_2A1F35458;
  v6 = v1[100].__locale_;
  if (v6)
  {
    MEMORY[0x29C29A350](v6, 0x1000C8077774924);
  }

  v1[97].__locale_ = &unk_2A1F35458;
  v7 = v1[98].__locale_;
  if (v7)
  {
    MEMORY[0x29C29A350](v7, 0x1000C8077774924);
  }

  MeCab::Dictionary::~Dictionary(&v1[5]);
  v8 = *v3;
  if (*v3)
  {
    v1[2].__locale_ = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::lookup<false>(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v6 = a2;
  v7 = a1;
  v63 = 0;
  v62 = 0;
  if (a3 - a2 <= 0xFFFE)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a2 + 0xFFFF);
  }

  if (v8 <= a2)
  {
    v15 = 0;
    v14 = 0;
    v16 = a2;
    goto LABEL_33;
  }

  v9 = *(a1 + 896);
  v10 = *(a1 + 1280);
  v11 = a2;
  while (1)
  {
    v12 = v8 - v11;
    if ((*(a1 + 1288) - 3) <= 2)
    {
      break;
    }

    v13 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    if (v12 >= 2 && (v13 & 0xE0) == 0xC0)
    {
      v14 = 2;
      v13 = v11[1] & 0x3F | ((v13 & 0x1F) << 6);
    }

    else
    {
      if (v12 < 3)
      {
        goto LABEL_21;
      }

      if ((v13 & 0xF0) == 0xE0)
      {
        v13 = (v13 << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
        v14 = 3;
      }

      else
      {
        if (v12 == 3)
        {
          goto LABEL_21;
        }

        if ((v13 & 0xF8) == 0xF0)
        {
          v13 = 0;
          v14 = 4;
        }

        else
        {
          if (v12 < 5)
          {
            goto LABEL_21;
          }

          if ((v13 & 0xFC) == 0xF8)
          {
            v13 = 0;
            v14 = 5;
          }

          else
          {
            if (v12 == 5 || (v13 & 0xFE) != 0xFC)
            {
LABEL_21:
              v13 = 0;
LABEL_10:
              v14 = 1;
              goto LABEL_14;
            }

            v13 = 0;
            v14 = 6;
          }
        }
      }
    }

LABEL_14:
    v15 = v10[v13];
    if ((v9 & v15 & 0x3FFFF) != 0)
    {
      v11 += v14;
      v9 = v10[v13];
      if (v11 < v8)
      {
        continue;
      }
    }

    v63 = v10[v13];
LABEL_32:
    v16 = v11;
    goto LABEL_33;
  }

  if (v12 >= 2)
  {
    v13 = *v11;
    v14 = 2;
    goto LABEL_14;
  }

  v14 = 0;
  v16 = 0;
  v15 = *v10;
  v63 = v15;
  if ((v9 & v15 & 0x3FFFF) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v17 = *(a1 + 8);
  if (v17 == *(a1 + 16))
  {
    goto LABEL_46;
  }

  v50 = v14;
  v51 = v8;
  v55 = v15;
  v18 = 0;
  v19 = 0;
  v57 = v16;
  v59 = *(a4 + 112);
  v52 = a2;
  v53 = v8 - v16;
  v61 = v16 - a2;
  v20 = v16;
  do
  {
    v21 = v17;
    v58 = MeCab::Dictionary::commonPrefixSearch(*v17, v16, v53, v59, 0x200uLL, *&a5);
    if (v58)
    {
      v22 = 0;
      v23 = v21;
      do
      {
        v60 = v22;
        v24 = v59 + 16 * v22;
        v25 = *(v24 + 8);
        if (*(v24 + 8))
        {
          v26 = *(*v23 + 352) + 12 * (*(v24 + 8) >> 8) + 4;
          do
          {
            MeCab::FreeList<mecab_learner_node_t>::alloc(*(a4 + 24));
            v23 = v21;
            v18 = v27;
            v28 = *v21;
            *(v27 + 82) = *(v26 - 4);
            *(v27 + 80) = *(v26 - 2);
            *(v27 + 84) = *v26;
            a5 = *(v26 + 2);
            *(v27 + 112) = a5;
            v29 = *(v28 + 368) + *(v26 + 4);
            v30 = *(v24 + 12);
            *(v27 + 76) = v30;
            *(v27 + 78) = v30 + v61;
            *(v27 + 56) = v20;
            *(v27 + 64) = v29;
            *(v27 + 86) = (v55 >> 18);
            *(v27 + 24) = v19;
            v26 += 12;
            v19 = v27;
            --v25;
          }

          while (v25);
        }

        v22 = v60 + 1;
      }

      while ((v60 + 1) != v58);
    }

    else
    {
      v23 = v21;
    }

    v17 = v23 + 1;
    v7 = a1;
    v16 = v57;
  }

  while (v17 != *(a1 + 16));
  v62 = v18;
  v5 = a4;
  v8 = v51;
  v6 = v52;
  v15 = v55;
  v14 = v50;
  if ((v55 & 0x80000000) != 0 || !v19)
  {
LABEL_46:
    v31 = &v16[v14];
    if (&v16[v14] > v8)
    {
      MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::addUnknownNodes<false>(v7, &v63, v6, v16, v16 + v14, v5, &v62);
      return v32;
    }

    if (*(v7 + 1888) == 1 && *(v7 + 1880) == (v15 >> 18))
    {
      v33 = Thai::seekToSyllableEnd(v16, v8);
      if (v16 < v33)
      {
        MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::addUnknownNodes<false>(v7, &v63, v6, v16, v33, v5, &v62);
        v15 = v63;
      }
    }

    if ((v15 & 0x40000000) == 0)
    {
      v34 = 0;
      goto LABEL_88;
    }

    v35 = *(v7 + 1584);
    v36 = &v31[2 * v35];
    if (v8 - v31 < 2 * v35)
    {
      v36 = v8;
    }

    if (v31 >= v36)
    {
      v37 = 0;
      v34 = v31;
      goto LABEL_85;
    }

    v37 = 0;
    v34 = v31;
    v38 = v15;
    while (2)
    {
      v39 = v36 - v34;
      if ((*(v7 + 1288) - 3) > 2)
      {
        v40 = *v34;
        if (*v34 < 0)
        {
          if (v39 >= 2 && (v40 & 0xE0) == 0xC0)
          {
            v41 = 2;
            v40 = v34[1] & 0x3F | ((v40 & 0x1F) << 6);
            goto LABEL_66;
          }

          if (v39 >= 3)
          {
            if ((v40 & 0xF0) == 0xE0)
            {
              v40 = (v40 << 12) | ((v34[1] & 0x3F) << 6) | v34[2] & 0x3F;
              v41 = 3;
              goto LABEL_66;
            }

            if (v39 != 3)
            {
              if ((v40 & 0xF8) == 0xF0)
              {
                v40 = 0;
                v41 = 4;
                goto LABEL_66;
              }

              if (v39 >= 5)
              {
                if ((v40 & 0xFC) == 0xF8)
                {
                  v40 = 0;
                  v41 = 5;
                  goto LABEL_66;
                }

                if (v39 != 5 && (v40 & 0xFE) == 0xFC)
                {
                  v40 = 0;
                  v41 = 6;
                  goto LABEL_66;
                }
              }
            }
          }

          v40 = 0;
        }

        v41 = 1;
LABEL_66:
        v42 = *(*(v7 + 1280) + 4 * v40);
        if ((v38 & v42 & 0x3FFFF) == 0)
        {
          goto LABEL_86;
        }

        v34 += v41;
        ++v37;
        v38 = v42;
        if (v34 >= v36)
        {
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    if (v39 >= 2)
    {
      v40 = *v34;
      v41 = 2;
      goto LABEL_66;
    }

    if ((v38 & **(v7 + 1280) & 0x3FFFF) == 0)
    {
LABEL_85:
      if (v34)
      {
LABEL_86:
        if (v37 <= v35)
        {
          MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::addUnknownNodes<false>(v7, &v63, v6, v16, v34, v5, &v62);
          v15 = v63;
        }

LABEL_88:
        if ((v15 & 0x3C000000) != 0)
        {
          v43 = 1;
          while (v31 == v34)
          {
LABEL_102:
            if (v43++ >= ((v15 >> 26) & 0xF) || v31 > v8)
            {
              goto LABEL_121;
            }
          }

          MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::addUnknownNodes<false>(v7, &v63, v6, v16, v31, v5, &v62);
          v44 = v8 - v31;
          if ((*(v7 + 1288) - 3) <= 2)
          {
            if (v44 < 2)
            {
              v46 = 0;
              v45 = 0;
            }

            else
            {
              v45 = *v31;
              v46 = 2;
            }

            goto LABEL_100;
          }

          v45 = *v31;
          if (*v31 < 0)
          {
            if (v44 < 2 || (v45 & 0xE0) != 0xC0)
            {
              if (v44 >= 3)
              {
                if ((v45 & 0xF0) == 0xE0)
                {
                  v45 = (v45 << 12) | ((v31[1] & 0x3F) << 6) | v31[2] & 0x3F;
                  v46 = 3;
                  goto LABEL_100;
                }

                if (v44 != 3)
                {
                  if ((v45 & 0xF8) == 0xF0)
                  {
                    v45 = 0;
                    v46 = 4;
                    goto LABEL_100;
                  }

                  if (v44 >= 5)
                  {
                    if ((v45 & 0xFC) == 0xF8)
                    {
                      v45 = 0;
                      v46 = 5;
                      goto LABEL_100;
                    }

                    if (v44 != 5 && (v45 & 0xFE) == 0xFC)
                    {
                      v45 = 0;
                      v46 = 6;
                      goto LABEL_100;
                    }
                  }
                }
              }

              v45 = 0;
              goto LABEL_95;
            }

            v46 = 2;
            v45 = v31[1] & 0x3F | ((v45 & 0x1F) << 6);
          }

          else
          {
LABEL_95:
            v46 = 1;
          }

LABEL_100:
          v15 = v63;
          if ((*(*(v7 + 1280) + 4 * v45) & v63 & 0x3FFFF) == 0)
          {
            goto LABEL_121;
          }

          v31 += v46;
          goto LABEL_102;
        }

LABEL_121:
        v19 = v62;
        if (v62)
        {
          return v19;
        }

        MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::addUnknownNodes<false>(v7, &v63, v6, v16, v31, v5, &v62);
      }
    }

    return v62;
  }

  return v19;
}

void MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::addUnknownNodes<false>(void *a1, _DWORD *a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6, void *a7)
{
  v8 = (a1[108] + 16 * (*a2 >> 18));
  v9 = v8[1];
  if (v9)
  {
    v14 = a5 - a4;
    v15 = a5 - a3;
    v16 = *v8 + 4;
    do
    {
      MeCab::FreeList<mecab_learner_node_t>::alloc(*(a6 + 24));
      *(v17 + 82) = *(v16 - 4);
      *(v17 + 80) = *(v16 - 2);
      *(v17 + 84) = *v16;
      *(v17 + 112) = *(v16 + 2);
      *(v17 + 64) = a1[51] + *(v16 + 4);
      *(v17 + 86) = *a2 >> 18;
      *(v17 + 56) = a4;
      *(v17 + 76) = v14;
      *(v17 + 78) = v15;
      *(v17 + 87) = 1;
      *(v17 + 24) = *a7;
      v18 = a1[100];
      if (v18)
      {
        *(v17 + 64) = v18;
      }

      v16 += 12;
      *a7 = v17;
      --v9;
    }

    while (v9);
  }

  else
  {
    v19 = *a7;
  }
}

uint64_t MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::open(void *a1, const MeCab::Param *a2)
{
  MeCab::Tokenizer<mecab_node_t,mecab_path_t>::close(a1);
  MeCab::Param::get<std::string>(a2, "dicdir", &v25);
  std::string::basic_string[abi:ne200100]<0>(&v22, "unk.dic");
  MeCab::create_filename(&v25, &v22, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = MeCab::Dictionary::open((a1 + 5), p_p, "r");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22);
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_11:
    std::ios_base::clear((a1 + *(a1[199] - 24) + 1592), 0);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 199, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tokenizer.cpp", 63);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 129);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "unkdic_.open(create_filename (prefix, UNK_DIC_FILE).c_str())", 60);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = MeCab::whatlog::str((a1 + 59));
    std::string::basic_string[abi:ne200100]<0>(&__p, v12);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_23;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (MeCab::CharProperty::open((a1 + 113), a2))
  {
    operator new();
  }

  std::ios_base::clear((a1 + *(a1[199] - 24) + 1592), 0);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 199, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/tokenizer.cpp", 63);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
  v17 = MEMORY[0x29C29A250](v16, 131);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "property_.open(param)", 21);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
  v20 = MeCab::whatlog::str((a1 + 162));
  std::string::basic_string[abi:ne200100]<0>(&__p, v20);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

LABEL_23:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29917C12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    MEMORY[0x29C29A350](a18, 0x10C80436913F5);
  }

  if (a22)
  {
    MEMORY[0x29C29A350](a22, 0x1000C8077774924);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 81) < 0)
  {
    operator delete(*(v32 - 104));
  }

  _Unwind_Resume(exception_object);
}

void MeCab::scoped_fixed_array<trie_search_result_type_t,512>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F36148;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8094CA146DLL);
  }

  JUMPOUT(0x29C29A380);
}

void sub_29917C3EC(_Unwind_Exception *exception_object)
{
  v1[9] = &unk_2A1F35458;
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C29A350](v3, 0x1000C8077774924);
  }

  v1[7] = &unk_2A1F35458;
  v4 = v1[8];
  if (v4)
  {
    MEMORY[0x29C29A350](v4, 0x1000C8077774924);
  }

  v1[5] = &unk_2A1F35458;
  v5 = v1[6];
  if (v5)
  {
    MEMORY[0x29C29A350](v5, 0x1000C8077774924);
  }

  v1[3] = &unk_2A1F35458;
  v6 = v1[4];
  if (v6)
  {
    MEMORY[0x29C29A350](v6, 0x1000C8077774924);
  }

  v1[1] = &unk_2A1F35458;
  v7 = v1[2];
  if (v7)
  {
    MEMORY[0x29C29A350](v7, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Writer::writeLattice(uint64_t a1, uint64_t a2, MeCab::StringBuffer *a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 64);
      v7 = *(v4 + 80);
      if (MeCab::StringBuffer::reserve(a3, v7))
      {
        memcpy((*(a3 + 3) + *(a3 + 1)), v6, v7);
        *(a3 + 1) += v7;
      }

      if (MeCab::StringBuffer::reserve(a3, 1))
      {
        *(*(a3 + 3) + (*(a3 + 1))++) = 9;
      }

      v8 = MeCab::StringBuffer::write(a3, *(v4 + 72));
      if (MeCab::StringBuffer::reserve(v8, 1))
      {
        *(*(a3 + 3) + (*(a3 + 1))++) = 10;
      }

      v4 = *v5;
      v9 = *v5;
      v10 = *(v9 + 8);
      v5 = (v9 + 8);
    }

    while (v10);
  }

  MeCab::StringBuffer::write(a3, "EOS\n");
  return 1;
}

void MeCab::Writer::~Writer(std::locale *this)
{
  this->__locale_ = &unk_2A1F351C0;
  v2 = this + 11;
  if (SHIBYTE(this[46].__locale_) < 0)
  {
    operator delete(this[44].__locale_);
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  this[11].__locale_ = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = v3[3];
  this[12].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(this[22].__locale_) < 0)
  {
    operator delete(this[20].__locale_);
  }

  this[12].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(this + 13);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&this[25]);
  this[9].__locale_ = &unk_2A1F35458;
  locale = this[10].__locale_;
  if (locale)
  {
    MEMORY[0x29C29A350](locale, 0x1000C8077774924);
  }

  this[7].__locale_ = &unk_2A1F35458;
  v6 = this[8].__locale_;
  if (v6)
  {
    MEMORY[0x29C29A350](v6, 0x1000C8077774924);
  }

  this[5].__locale_ = &unk_2A1F35458;
  v7 = this[6].__locale_;
  if (v7)
  {
    MEMORY[0x29C29A350](v7, 0x1000C8077774924);
  }

  this[3].__locale_ = &unk_2A1F35458;
  v8 = this[4].__locale_;
  if (v8)
  {
    MEMORY[0x29C29A350](v8, 0x1000C8077774924);
  }

  this[1].__locale_ = &unk_2A1F35458;
  v9 = this[2].__locale_;
  if (v9)
  {
    MEMORY[0x29C29A350](v9, 0x1000C8077774924);
  }
}

{
  MeCab::Writer::~Writer(this);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::Writer::open(MeCab::Writer *this, const MeCab::Param *a2)
{
  MeCab::Param::get<std::string>(a2, "output-format-type", &v85);
  *(this + 47) = MeCab::Writer::writeLattice;
  *(this + 48) = 0;
  if ((*(&v85.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(v85.__r_.__value_.__r.__words[2]) != 2)
    {
      if (HIBYTE(v85.__r_.__value_.__r.__words[2]) != 4)
      {
        if (HIBYTE(v85.__r_.__value_.__r.__words[2]) != 6)
        {
          goto LABEL_26;
        }

        v4 = LODWORD(v85.__r_.__value_.__l.__data_) == 1634427255 && WORD2(v85.__r_.__value_.__r.__words[0]) == 26996;
        goto LABEL_14;
      }

      v5 = MeCab::Writer::writeNone;
      if (LODWORD(v85.__r_.__value_.__l.__data_) != 1701736302)
      {
        if (LODWORD(v85.__r_.__value_.__l.__data_) != 1886221668)
        {
          goto LABEL_26;
        }

        v5 = MeCab::Writer::writeDump;
      }

LABEL_113:
      *(this + 47) = v5;
      *(this + 48) = 0;
LABEL_229:
      v68 = 1;
      goto LABEL_232;
    }

    v6 = &v85;
    goto LABEL_24;
  }

  if (v85.__r_.__value_.__l.__size_ == 2)
  {
    v6 = v85.__r_.__value_.__r.__words[0];
LABEL_24:
    data_low = LOWORD(v6->__r_.__value_.__l.__data_);
    v5 = MeCab::Writer::writeEM;
    v8 = 28005;
LABEL_25:
    if (data_low != v8)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

  if (v85.__r_.__value_.__l.__size_ == 4)
  {
    v5 = MeCab::Writer::writeNone;
    if (*v85.__r_.__value_.__l.__data_ == 1701736302)
    {
      goto LABEL_113;
    }

    data_low = *v85.__r_.__value_.__l.__data_;
    v5 = MeCab::Writer::writeDump;
    v8 = 1886221668;
    goto LABEL_25;
  }

  if (v85.__r_.__value_.__l.__size_ != 6)
  {
    goto LABEL_26;
  }

  v4 = *v85.__r_.__value_.__l.__data_ == 1634427255 && *(v85.__r_.__value_.__r.__words[0] + 4) == 26996;
LABEL_14:
  v5 = MeCab::Writer::writeWakati;
  if (v4)
  {
    goto LABEL_113;
  }

LABEL_26:
  std::string::basic_string[abi:ne200100]<0>(&v84, "%m\\t%H\\n");
  std::string::basic_string[abi:ne200100]<0>(&v83, "%m\\t%H\\n");
  std::string::basic_string[abi:ne200100]<0>(&v82, &unk_299185561);
  std::string::basic_string[abi:ne200100]<0>(&v81, "EOS\\n");
  std::string::basic_string[abi:ne200100]<0>(&v80, &unk_299185561);
  std::string::basic_string[abi:ne200100]<0>(&v79, "node-format");
  std::string::basic_string[abi:ne200100]<0>(&v78, "bos-format");
  std::string::basic_string[abi:ne200100]<0>(&v77, "eos-format");
  std::string::basic_string[abi:ne200100]<0>(&v76, "unk-format");
  std::string::basic_string[abi:ne200100]<0>(&v75, "eon-format");
  size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v85.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_68;
  }

  std::string::append(&v79, "-", 1uLL);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v85;
  }

  else
  {
    v10 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v85.__r_.__value_.__l.__size_;
  }

  std::string::append(&v79, v10, v11);
  std::string::append(&v78, "-", 1uLL);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v85;
  }

  else
  {
    v12 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v85.__r_.__value_.__l.__size_;
  }

  std::string::append(&v78, v12, v13);
  std::string::append(&v77, "-", 1uLL);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v85;
  }

  else
  {
    v14 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v85.__r_.__value_.__l.__size_;
  }

  std::string::append(&v77, v14, v15);
  std::string::append(&v76, "-", 1uLL);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v85;
  }

  else
  {
    v16 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v85.__r_.__value_.__l.__size_;
  }

  std::string::append(&v76, v16, v17);
  std::string::append(&v75, "-", 1uLL);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v85;
  }

  else
  {
    v18 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v85.__r_.__value_.__l.__size_;
  }

  std::string::append(&v75, v18, v19);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v79;
  }

  else
  {
    v20 = v79.__r_.__value_.__r.__words[0];
  }

  MeCab::Param::get<std::string>(a2, v20, &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __str.__r_.__value_.__l.__size_;
  }

  if (v21)
  {
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_67;
    }

LABEL_207:
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v21)
    {
      goto LABEL_68;
    }

LABEL_208:
    v57 = 0;
    goto LABEL_209;
  }

  std::ios_base::clear((this + *(*(this + 11) - 24) + 88), 0);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 11, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/writer.cpp", 60);
  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "(", 1);
  v60 = MEMORY[0x29C29A250](v59, 69);
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ") [", 3);
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "!tmp.empty()", 12);
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "] ", 2);
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "unknown format type [", 21);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &v85;
  }

  else
  {
    v65 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = v85.__r_.__value_.__l.__size_;
  }

  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "]", 1);
  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_207;
  }

LABEL_67:
  if (!v21)
  {
    goto LABEL_208;
  }

LABEL_68:
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v79;
  }

  else
  {
    v22 = v79.__r_.__value_.__r.__words[0];
  }

  MeCab::Param::get<std::string>(a2, v22, &__str);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v78;
  }

  else
  {
    v23 = v78.__r_.__value_.__r.__words[0];
  }

  MeCab::Param::get<std::string>(a2, v23, &v73);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v77;
  }

  else
  {
    v24 = v77.__r_.__value_.__r.__words[0];
  }

  MeCab::Param::get<std::string>(a2, v24, &v72);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v76;
  }

  else
  {
    v25 = v76.__r_.__value_.__r.__words[0];
  }

  MeCab::Param::get<std::string>(a2, v25, &v71);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v75;
  }

  else
  {
    v26 = v75.__r_.__value_.__r.__words[0];
  }

  MeCab::Param::get<std::string>(a2, v26, &__p);
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v84.__r_.__value_.__l.__size_;
  }

  v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = __str.__r_.__value_.__l.__size_;
  }

  if (v27 != v28)
  {
    *(this + 47) = MeCab::Writer::writeUser;
    *(this + 48) = 0;
    goto LABEL_115;
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v84;
  }

  else
  {
    v29 = v84.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (memcmp(v29, p_str, v27))
  {
    goto LABEL_111;
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v82.__r_.__value_.__l.__size_;
  }

  v32 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v73.__r_.__value_.__l.__size_;
  }

  if (v31 != v32 || ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v33 = &v82) : (v33 = v82.__r_.__value_.__r.__words[0]), (v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v34 = &v73) : (v34 = v73.__r_.__value_.__r.__words[0]), memcmp(v33, v34, v31) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v81, &v72) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v83, &v71)))
  {
LABEL_111:
    *(this + 47) = MeCab::Writer::writeUser;
    *(this + 48) = 0;
    if (!memcmp(v29, p_str, v27))
    {
LABEL_116:
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v82.__r_.__value_.__l.__size_;
      }

      v36 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v73.__r_.__value_.__l.__size_;
      }

      if (v35 != v36 || ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v37 = &v82) : (v37 = v82.__r_.__value_.__r.__words[0]), (v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v38 = &v73) : (v38 = v73.__r_.__value_.__r.__words[0]), memcmp(v37, v38, v35)))
      {
        std::string::operator=(&v82, &v73);
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v39 = v81.__r_.__value_.__l.__size_;
      }

      v40 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = v72.__r_.__value_.__l.__size_;
      }

      if (v39 != v40 || ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v41 = &v81) : (v41 = v81.__r_.__value_.__r.__words[0]), (v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v42 = &v72) : (v42 = v72.__r_.__value_.__r.__words[0]), memcmp(v41, v42, v39)))
      {
        std::string::operator=(&v81, &v72);
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v83.__r_.__value_.__l.__size_;
      }

      v44 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v44 = v71.__r_.__value_.__l.__size_;
      }

      v45 = &v71;
      if (v43 == v44)
      {
        v46 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v83 : v83.__r_.__value_.__r.__words[0];
        v47 = (v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v71 : v71.__r_.__value_.__r.__words[0];
        if (!memcmp(v46, v47, v43))
        {
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = v84.__r_.__value_.__l.__size_;
          }

          v49 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v49 = __str.__r_.__value_.__l.__size_;
          }

          v45 = &__str;
          if (v48 == v49)
          {
            v50 = (v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v84 : v84.__r_.__value_.__r.__words[0];
            v51 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            if (!memcmp(v50, v51, v48))
            {
              v45 = &v84;
            }
          }
        }
      }

      std::string::operator=(&v83, v45);
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v80.__r_.__value_.__l.__size_;
      }

      v53 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = __p.__r_.__value_.__l.__size_;
      }

      if (v52 != v53 || ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v54 = &v80) : (v54 = v80.__r_.__value_.__r.__words[0]), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v54, p_p, v52)))
      {
        std::string::operator=(&v80, &__p);
      }

      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v84;
      }

      else
      {
        v56 = v84.__r_.__value_.__r.__words[0];
      }

      MeCab::scoped_string::reset_string((this + 8), v56);
    }

LABEL_115:
    std::string::operator=(&v84, &__str);
    goto LABEL_116;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v57 = 1;
LABEL_209:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
    if (v57)
    {
      goto LABEL_229;
    }
  }

  else if (v57)
  {
    goto LABEL_229;
  }

  v68 = 0;
LABEL_232:
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  return v68;
}

void sub_29917D2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  if (*(v53 - 145) < 0)
  {
    operator delete(*(v53 - 168));
  }

  if (*(v53 - 121) < 0)
  {
    operator delete(*(v53 - 144));
  }

  if (*(v53 - 97) < 0)
  {
    operator delete(*(v53 - 120));
  }

  if (*(v53 - 73) < 0)
  {
    operator delete(*(v53 - 96));
  }

  if (*(v53 - 49) < 0)
  {
    operator delete(*(v53 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::Writer::writeWakati(uint64_t a1, uint64_t a2, MeCab::StringBuffer *a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 64);
      v7 = *(v4 + 80);
      if (MeCab::StringBuffer::reserve(a3, v7))
      {
        memcpy((*(a3 + 3) + *(a3 + 1)), v6, v7);
        *(a3 + 1) += v7;
      }

      if (MeCab::StringBuffer::reserve(a3, 1))
      {
        *(*(a3 + 3) + (*(a3 + 1))++) = 32;
      }

      v4 = *v5;
      v8 = *v5;
      v9 = *(v8 + 8);
      v5 = (v8 + 8);
    }

    while (v9);
  }

  if (MeCab::StringBuffer::reserve(a3, 1))
  {
    *(*(a3 + 3) + (*(a3 + 1))++) = 10;
  }

  return 1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void MeCab::Writer::writeUser(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  (*(*a2 + 16))(a2);
  MeCab::Writer::writeNode();
}

uint64_t MeCab::Writer::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !(*(*a2 + 8))(a2))
  {
    return 0;
  }

  v6 = *(a1 + 376);
  v7 = *(a1 + 384);
  v8 = (a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, a2, a3);
}

void sub_29917E634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a29)
  {
    MEMORY[0x29C29A350](a29, 0x10C80436913F5);
  }

  if (a32)
  {
    MEMORY[0x29C29A350](a32, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Writer::writeNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 91);
  if (v3 <= 5)
  {
    v4 = *(a1 + qword_299181BC8[v3]);
    MeCab::Writer::writeNode();
  }

  return 1;
}

MeCab::StringBuffer *MeCab::StringBuffer::operator<<(MeCab::StringBuffer *a1, int a2)
{
  *&v11[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if (a2)
  {
    do
    {
      v3 = a2;
      *p_s++ = (a2 % 0xAu) | 0x30;
      LOWORD(a2) = a2 / 0xAu;
    }

    while (v3 >= 0xA);
  }

  else
  {
    p_s = v11;
    __s = 48;
  }

  *p_s = 0;
  v4 = p_s - 1;
  if (v4 > &__s)
  {
    v5 = v11;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
    }

    while (v5++ < v4);
  }

  result = MeCab::StringBuffer::write(a1, &__s);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

MeCab::StringBuffer *MeCab::StringBuffer::operator<<(MeCab::StringBuffer *a1, unsigned int a2)
{
  *&v13[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if ((a2 & 0x80000000) != 0)
  {
    p_s = v13;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAu;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v13;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  result = MeCab::StringBuffer::write(a1, &__s);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

float btrie_open(void *(*a1)(void *, unint64_t, void *), void *a2, _DWORD *a3, unint64_t a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x108004094C1867FuLL);
  if (v8)
  {
    LODWORD(v9) = 0;
    v8[1] = 0u;
    v8[2] = 0u;
    *v8 = 0u;
    *(v8 + 7) = a1;
    *(v8 + 8) = a2;
    *(v8 + 1) = a3;
    *(v8 + 5) = a4;
    *(v8 + 6) = 0;
    if (a3)
    {
      if (a4 >= 0x18)
      {
        *v8 = a3[1];
        *(v8 + 2) = a3 + a3[3];
        v9 = *(a3 + 2);
        *&v10 = v9;
        *(&v10 + 1) = HIDWORD(v9);
        *(v8 + 24) = v10;
      }
    }
  }

  return *&v9;
}

void btrie_close(void **a1)
{
  if (a1)
  {
    if (*(a1 + 12))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t btrie_exact_match_search(uint64_t a1, unsigned __int8 *__s2, unsigned int a3, uint8x8_t a4)
{
  v6 = a1;
  while (1)
  {
    v7 = *v6;
    v8 = *v6 & 3;
    if ((v7 & 3) == 3)
    {
      v9 = (*(a1 + 8) + v7 - 3);
      if (!a3)
      {
        return *v9;
      }

      v6 = &v9[4 * *__s2 + 4];
      goto LABEL_13;
    }

    if (v8 != 2)
    {
      break;
    }

    v9 = (*(a1 + 8) + v7 - 2);
    if (!a3)
    {
      return *v9;
    }

    v10 = *__s2;
    v11 = (v9 + 4);
    v12 = v10 >> 5;
    v13 = *&v9[4 * (v10 >> 5) + 4];
    if (((v13 >> v10) & 1) == 0)
    {
      return 0;
    }

    if (v10 >= 0x20)
    {
      v14 = 0;
      do
      {
        v15 = *v11++;
        a4 = vcnt_s8(v15);
        a4.i16[0] = vaddlv_u8(a4);
        v14 += a4.i32[0];
        --v12;
      }

      while (v12);
    }

    else
    {
      v14 = 0;
    }

    a4.i32[0] = v13 & ~(-1 << (v10 & 0x1F));
    a4 = vcnt_s8(a4);
    a4.i16[0] = vaddlv_u8(a4);
    v6 = &v9[4 * (v14 + a4.i32[0]) + 40];
LABEL_13:
    --a3;
    ++__s2;
  }

  if (!v8)
  {
    return v8;
  }

  v16 = (*(a1 + 16) + v7 - 1);
  if (!a3)
  {
    v9 = (v16 + 1);
    return *v9;
  }

  v17 = *v16;
  if (v17 >= 5)
  {
    v18 = v16 + v17;
    v19 = (v16 + 2);
    while (1)
    {
      v22 = *v19;
      v20 = v19 + 1;
      v21 = v22;
      v23 = v22 - a3;
      v24 = v22 >= a3 ? a3 : v21;
      v25 = memcmp(v20, __s2, v24);
      v26 = v25 ? v25 : v23;
      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      v27 = &v20[v21];
      v19 = &v20[v21 + 4];
      if (v27 >= v18)
      {
        return 0;
      }
    }

    if (!v26)
    {
      v9 = &v20[v21];
      return *v9;
    }
  }

  return 0;
}

BOOL anonymous namespace::__btrie_find_common_prefix(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, unint64_t a5, unint64_t *a6, uint64_t a7, __int16 a8, uint8x8_t a9)
{
  v14 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v14 == 2)
    {
      v19 = (*(a1 + 8) + (a2 - 2));
      v20 = *v19;
      if (*v19)
      {
        if (!a5)
        {
          ++*a6;
          if (!a4)
          {
            return 0;
          }

          goto LABEL_32;
        }

        v21 = *a6;
        v22 = a7 + 16 * *a6;
        *(v22 + 12) = a3 - a8;
        *a6 = v21 + 1;
        *(v22 + 8) = v20;
        if (v21 + 1 >= a5)
        {
          return 1;
        }
      }

      if (!a4)
      {
        return 0;
      }

LABEL_32:
      v39 = *a3;
      v40 = (v19 + 1);
      v41 = v39 >> 5;
      v42 = v19[(v39 >> 5) + 1];
      if (((v42 >> v39) & 1) == 0)
      {
        return 0;
      }

      v43 = v39 & 0x1F;
      v44 = v19 + 10;
      if (v39 >= 0x20)
      {
        v45 = 0;
        do
        {
          v47 = *v40++;
          a9 = vcnt_s8(v47);
          a9.i16[0] = vaddlv_u8(a9);
          v45 += a9.i32[0];
          --v41;
        }

        while (v41);
      }

      else
      {
        v45 = 0;
      }

      a9.i32[0] = v42 & ~(-1 << v43);
      v48 = vcnt_s8(a9);
      v48.i16[0] = vaddlv_u8(v48);
      v49 = v44[v45 + v48.i32[0]];
    }

    v23 = (*(a1 + 8) + (a2 - 3));
    v24 = *v23;
    if (*v23)
    {
      if (!a5)
      {
        ++*a6;
        if (!a4)
        {
          return 0;
        }

        goto LABEL_36;
      }

      v25 = *a6;
      v26 = a7 + 16 * *a6;
      *(v26 + 12) = a3 - a8;
      *a6 = v25 + 1;
      *(v26 + 8) = v24;
      if (v25 + 1 >= a5)
      {
        return 1;
      }
    }

    if (!a4)
    {
      return 0;
    }

LABEL_36:
    v46 = v23[*a3 + 1];
  }

  if ((a2 & 3) != 0)
  {
    v15 = (*(a1 + 16) + (a2 - 1));
    v16 = v15[1];
    if (!v16)
    {
      goto LABEL_6;
    }

    if (a5)
    {
      v17 = *a6;
      v18 = a7 + 16 * *a6;
      *(v18 + 12) = a3 - a8;
      *a6 = v17 + 1;
      *(v18 + 8) = v16;
      if (v17 + 1 < a5)
      {
LABEL_6:
        if (!a4)
        {
          return 0;
        }

LABEL_20:
        v27 = *v15;
        if (v27 >= 5)
        {
          v28 = v15 + v27;
          v29 = a3 - a8;
          v30 = (v15 + 2);
          do
          {
            v33 = *v30;
            v31 = v30 + 1;
            v32 = v33;
            if (v33 <= a4)
            {
              v34 = memcmp(v31, a3, v32);
              if (v34 > 0)
              {
                return 0;
              }

              if (!v34)
              {
                if (a5)
                {
                  v35 = *a6;
                  v36 = a7 + 16 * *a6;
                  *(v36 + 12) = v29 + v32;
                  v37 = *&v31[v32];
                  *a6 = ++v35;
                  *(v36 + 8) = v37;
                  if (v35 >= a5)
                  {
                    return 1;
                  }
                }

                else
                {
                  ++*a6;
                }
              }
            }

            v38 = &v31[v32];
            v30 = &v31[v32 + 4];
          }

          while (v38 < v28);
        }

        return 0;
      }

      return 1;
    }

    ++*a6;
    if (a4)
    {
      goto LABEL_20;
    }

    return 0;
  }

  return v14;
}

MeCab::QuantizedConnector *MeCab::QuantizedConnector::QuantizedConnector(MeCab::QuantizedConnector *this)
{
  v2 = MeCab::Connector::Connector(this);
  *v2 = &unk_2A1F35330;
  MeCab::Mmap<char>::Mmap(v2 + 656);
  *(this + 125) = 0;
  return this;
}

void MeCab::QuantizedConnector::~QuantizedConnector(std::locale *this)
{
  this->__locale_ = &unk_2A1F35330;
  MeCab::Mmap<char>::close(&this[82]);
  MeCab::Mmap<char>::~Mmap(&this[82]);

  MeCab::Connector::~Connector(this);
}

{
  MeCab::QuantizedConnector::~QuantizedConnector(this);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::QuantizedConnector::open(MeCab::QuantizedConnector *this, char *a2, char *a3)
{
  if (MeCab::Mmap<char>::open(this + 656, a2, a3))
  {
    if ((*(*this + 32))(this, *(this + 83), *(this + 84)))
    {
      return 1;
    }

    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 46, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "(", 1);
    v18 = MEMORY[0x29C29A250](v17, 24);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") [", 3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "open(ptr, quantized_cmmap_.file_size())", 39);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] ", 2);
    v15 = "QuantizedConnector::open failed";
    v13 = 31;
  }

  else
  {
    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 46, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 20);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "quantized_cmmap_.open(filename, mode)", 37);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "cannot open: ", 13);
    v13 = strlen(a2);
    v14 = v12;
    v15 = a2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v13);
  return 0;
}

uint64_t MeCab::QuantizedConnector::open(MeCab::QuantizedConnector *this, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *a2;
    *(this + 180) = v3;
    v4 = *(a2 + 1);
    *(this + 181) = v4;
    if (v4 * v3 + 4 == a3)
    {
      *(this + 125) = a2 + 4;
      return 1;
    }

    v15 = (this + 368);
    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "(", 1);
    v18 = MEMORY[0x29C29A250](v17, 40);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") [", 3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "length == offset + lsize_ * rsize_ * sizeof(char)", 49);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] ", 2);
    v13 = "invalid binary image";
    v14 = 20;
  }

  else
  {
    v6 = (this + 368);
    std::ios_base::clear((this + *(*(this + 46) - 24) + 368), 0);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x29C29A250](v8, 33);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") [", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ptr", 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] ", 2);
    v13 = "matrix is NULL";
    v14 = 14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  return 0;
}

uint64_t MeCab::QuantizedConnector::compile(MeCab::QuantizedConnector *this, const char *a2, const char *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v5 = v4;
  v6 = v3;
  v78 = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v73);
  std::string::basic_string[abi:ne200100]<0>(__p, "1 1\n0 0 0\n");
  std::istringstream::basic_istringstream[abi:ne200100](v61, __p, 8);
  if (v77 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v73;
  if ((v74[*(v73[0] - 24) + 16] & 5) != 0)
  {
    v8 = strlen(v6);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], v6, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " is not found. minimum setting is used.", 39);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v7 = v61;
  }

  std::ofstream::basic_ofstream(&v70);
  if ((v71[*(v70 - 24) + 24] & 5) != 0)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
    v14 = MEMORY[0x29C29A250](v13, 61);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") [", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "ofs", 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "permission denied: ", 19);
    v19 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v5, v19);
    MeCab::die::~die(__p);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "reading ", 8);
  v21 = strlen(v6);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v6, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ... ", 5);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v23 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v69);
  std::istream::getline();
  if (MeCab::tokenize2<std::back_insert_iterator<std::vector<char *>>>(__p, "\t ", &v66, 2uLL) != 2)
  {
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "(", 1);
    v26 = MEMORY[0x29C29A250](v25, 77);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ") [", 3);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "tokenize2(buf, \\t , std::back_inserter(column), 2) == 2", 57);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "] ", 2);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "format error: ", 14);
    v31 = strlen(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, __p, v31);
    MeCab::die::~die(&v69);
  }

  v32 = v66;
  v33 = atoi(*v66);
  v65[79] = v33;
  v34 = atoi(v32[1]);
  v65[78] = v34;
  if (v34 * v33)
  {
    operator new();
  }

  v35 = MEMORY[0x29C29A290](MEMORY[0x29EDC93C8], v33);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "x", 1);
  v37 = MEMORY[0x29C29A290](v36, v34);
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v69);
  std::ostream::put();
  std::ostream::flush();
  while (1)
  {
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v39 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v69);
    v40 = std::istream::getline();
    if ((*(v40 + *(*v40 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v67 = v66;
    if (MeCab::tokenize2<std::back_insert_iterator<std::vector<char *>>>(__p, "\t ", &v66, 3uLL) != 3)
    {
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "(", 1);
      v43 = MEMORY[0x29C29A250](v42, 89);
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ") [", 3);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "tokenize2(buf, \\t , std::back_inserter(column), 3) == 3", 57);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "] ", 2);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "format error: ", 14);
      v48 = strlen(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, __p, v48);
      MeCab::die::~die(&v69);
    }

    v49 = v66;
    v50 = atoi(*v66);
    v51 = atoi(v49[1]);
    v52 = atoi(v49[2]);
    if (v50 >= v33 || v51 >= v34)
    {
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/quantized_connector.cpp", 73);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "(", 1);
      v55 = MEMORY[0x29C29A250](v54, 94);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ") [", 3);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "l < lsize && r < rsize", 22);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "index values are out of range", 29);
      MeCab::die::~die(&v69);
    }

    MeCab::progress_bar("emitting matrix      ", (v50 + 1), v33);
    *(v51 * v33 + v50) = (v52 + 128) >> 8;
  }

  std::ostream::write();
  if (v71[*(v70 - 24) + 24])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "ERROR: failed to write lsize\n", 29);
  }

  std::ostream::write();
  if (v71[*(v70 - 24) + 24])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "ERROR: failed to write rsize\n", 29);
  }

  std::ostream::write();
  if (v71[*(v70 - 24) + 24])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "ERROR: failed to write matrix\n", 30);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v71[*(v70 - 24) - 8], *&v71[*(v70 - 24) + 24] | 4);
  }

  v70 = *MEMORY[0x29EDC9520];
  *&v71[*(v70 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C29A160](v71);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&v72);
  v61[0] = *MEMORY[0x29EDC9530];
  *(v61 + *(v61[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v62 = MEMORY[0x29EDC9570] + 16;
  if (v64 < 0)
  {
    operator delete(v63[7].__locale_);
  }

  v62 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v63);
  std::istream::~istream();
  MEMORY[0x29C29A320](v65);
  v73[0] = *MEMORY[0x29EDC9518];
  *(v73 + *(v73[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v74);
  std::istream::~istream();
  MEMORY[0x29C29A320](&v75);
  v59 = *MEMORY[0x29EDCA608];
  return 1;
}

void sub_29917FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48)
{
  if (__p)
  {
    a45 = __p;
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a48, MEMORY[0x29EDC9520]);
  MEMORY[0x29C29A320](&STACK[0x2D8]);
  std::istringstream::~istringstream(&a9, MEMORY[0x29EDC9530]);
  MEMORY[0x29C29A320](&a24);
  std::ifstream::~ifstream(&STACK[0x370], MEMORY[0x29EDC9518]);
  MEMORY[0x29C29A320](&STACK[0x518]);
  _Unwind_Resume(a1);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2A1C6FD78]();
}

{
  return MEMORY[0x2A1C6FD80]();
}

{
  return MEMORY[0x2A1C6FD90]();
}

{
  return MEMORY[0x2A1C6FDA8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE08]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE30]();
}

{
  return MEMORY[0x2A1C6FE38]();
}

{
  return MEMORY[0x2A1C6FE40]();
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

void operator new[]()
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