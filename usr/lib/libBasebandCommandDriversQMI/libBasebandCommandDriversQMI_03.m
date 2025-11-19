char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = (a2 + 32);
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          v54[1] = v58;
          v54 += 4;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = (a2 + 32);
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          v38[1] = v42;
          v38 += 4;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v5 = v4 + __n;
    if (v4 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v8 = __n;
      v9 = this;
      v10 = operator new(24 * v7);
      this = v9;
      __n = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * __n;
    v15 = &v13[24 * __n];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    begin = this->__begin_;
    v19 = &v13[(this->__begin_ - end)];
    if (end != this->__begin_)
    {
      v20 = v19;
      do
      {
        v21 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *&v20->matched = *&begin->matched;
        v20->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v21;
        ++v20;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = v15;
    this->__end_cap_.__value_ = v17;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = MEMORY[0x29C268DF0]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(a1, v8, &v8[v7]) != &v8[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_296EF3364(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E15B98;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E15BF0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
          }

          goto LABEL_15;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      else
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x80u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x100u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_296EF35D4(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v22 = *(a1 + 56);
      v23 = (&v8->__traits_.__loc_.__locale_ + 1);
      v24 = &v8->__traits_.__loc_.__locale_ + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_2A1E161B0;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_2A1E161F8;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_2A1E15CE8;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_2A1E15D30;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &unk_2A1E161B0;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &unk_2A1E161F8;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E161B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E161F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E161B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E161F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_2A1E15D78;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E15CE8;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E15D30;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = v26->__flags_;
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = v7->__flags_;
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x3E)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) > 0x5Bu)
    {
      if (locale_low == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      if (locale_low != 123)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (locale_low != 91)
    {
      if (locale_low != 63)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
      }

LABEL_32:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  if (locale_low != 40)
  {
    if (locale_low == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = &unk_2A1E15E08;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return (&v5->__traits_.__loc_.__locale_ + 1);
    }

    if (locale_low - 42 >= 2)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if ((&a2->__traits_.__loc_.__locale_ + 1) == a3)
  {
LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v10 = a1;
  if ((&a2->__traits_.__loc_.__locale_ + 2) != a3 && BYTE1(a2->__traits_.__loc_.__locale_) == 63 && BYTE2(a2->__traits_.__loc_.__locale_) == 58)
  {
    ++*(a1 + 36);
    v11 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
    if (v12 != v11 && LOBYTE(v12->__traits_.__loc_.__locale_) == 41)
    {
      --*(v10 + 36);
      return (&v12->__traits_.__loc_.__locale_ + 1);
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v13 = a3;
    v14 = operator new(0x18uLL);
    a3 = v13;
    v15 = v14;
    a1 = v10;
    v16 = *(v10 + 28) + 1;
    *(v10 + 28) = v16;
    v17 = *(v10 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E16048;
    v15[1] = v18;
    *(v15 + 4) = v16;
    *(v17 + 8) = v15;
    *(v10 + 56) = v15;
  }

  ++*(a1 + 36);
  v19 = a3;
  v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
  if (v20 == v19)
  {
    goto LABEL_33;
  }

  v21 = v20;
  if (LOBYTE(v20->__traits_.__loc_.__locale_) != 41)
  {
    goto LABEL_33;
  }

  v22 = v10;
  if ((*(v10 + 24) & 2) == 0)
  {
    v23 = operator new(0x18uLL);
    v22 = v10;
    v24 = *(v10 + 56);
    v25 = *(v24 + 8);
    *v23 = &unk_2A1E16090;
    v23[1] = v25;
    *(v23 + 4) = v16;
    *(v24 + 8) = v23;
    *(v10 + 56) = v23;
  }

  --*(v22 + 36);
  return (&v21->__traits_.__loc_.__locale_ + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v9, v16, a4, __mexp_begin, __mexp_end, v17);
                  return v6;
                }

                v9 = v12;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                goto LABEL_34;
              }

              v9 = v12;
              __mexp_begin = __mexp_begin;
              __mexp_end = __mexp_end;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    __mexp_begin = __mexp_begin;
                    __mexp_end = __mexp_end;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      goto LABEL_34;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3 && LOBYTE(this->__traits_.__loc_.__locale_) == 92)
  {
    v4 = &this->__traits_.__loc_.__locale_ + 1;
    if (a3 == (&this->__traits_.__loc_.__locale_ + 1))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      return (v3 + 2);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 = (v3 + 2);
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          locale_low = LOBYTE(v3->__traits_.__loc_.__locale_);
          if ((locale_low - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          v3 = (v3 + 1);
          v6 = locale_low + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v6 > a1->__marked_count_)
      {
        goto LABEL_23;
      }

      v10 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v10 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v8;
          *(a4 + 1) = 0;
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_98;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v8 = 0;
  v9 = a2 + 1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_25:
    v17 = *(a1 + 24) & 0x1F0;
    goto LABEL_26;
  }

  v10 = a2[1];
  if (v10 != 46)
  {
    if (v10 == 58)
    {
      v11 = a2 + 2;
      if (a3 - (v4 + 2) >= 2 && a3 - 1 != v11)
      {
        v12 = v4 + 2;
        v13 = v4 + 3;
        if (v4[2] != 58)
        {
          goto LABEL_14;
        }

LABEL_13:
        if (*v13 == 93)
        {
          if (a3 != v12)
          {
            v21 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, v11, v12, *(a1 + 24) & 1);
            if (!v21)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
            }

            *(a4 + 160) |= v21;
            if (SHIBYTE(v35) < 0)
            {
              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
LABEL_14:
          while (v13 != a3 - 1)
          {
            ++v12;
            if (*v13++ == 58)
            {
              goto LABEL_13;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    if (v10 == 61)
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_69;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v14 = a2 + 2;
  if (a3 - (v4 + 2) < 2 || a3 - 1 == v14)
  {
LABEL_90:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v15 = v4 + 2;
  v16 = v9 + 2;
  if (*(v16 - 1) != 46)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*v16 != 93)
  {
LABEL_21:
    while (v16 != a3 - 1)
    {
      ++v15;
      if (*v16++ == 46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_90;
  }

  if (a3 == v15)
  {
    goto LABEL_90;
  }

  v22 = a1;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, v14, v15, &v36);
  a1 = v22;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
    a1 = v22;
  }

  v35 = v37;
  *__p = v36;
  v23 = HIBYTE(v37);
  v8 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v23 = __p[1];
  }

  if ((v23 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v4 = v15 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  v24 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v24 = __p[1];
  }

  if (v24)
  {
LABEL_49:
    if (v4 == a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_26:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v18) = *v4;
    goto LABEL_45;
  }

  v18 = *v4;
  if (v18 != 92)
  {
LABEL_45:
    if (v8 < 0)
    {
      v25 = __p[0];
      __p[1] = 1;
    }

    else
    {
      HIBYTE(v35) = 1;
      v25 = __p;
    }

    *v25 = v18;
    *(v25 + 1) = 0;
    ++v4;
    goto LABEL_49;
  }

  v19 = a1;
  if (v17)
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p);
  }

  else
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p, a4);
  }

  v4 = v20;
  a1 = v19;
  if (v4 == a3)
  {
LABEL_51:
    if (SHIBYTE(v35) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_68;
      }

      if (__p[1] != 1)
      {
        v27 = __p[0];
LABEL_67:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v27, *(v27 + 1));
        goto LABEL_68;
      }

      v27 = __p[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_68;
      }

      v27 = __p;
      if (HIBYTE(v35) != 1)
      {
        goto LABEL_67;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v27);
    goto LABEL_68;
  }

LABEL_50:
  v26 = *v4;
  if (v26 == 93)
  {
    goto LABEL_51;
  }

  v28 = v4 + 1;
  if (v4 + 1 == a3 || v26 != 45 || *v28 == 93)
  {
    goto LABEL_51;
  }

  v36 = 0uLL;
  v37 = 0;
  v29 = v4 + 2;
  if (v28 + 1 != a3 && *v28 == 91 && *v29 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v28 + 2, a3, &v36);
    goto LABEL_81;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v28) = *v28;
    goto LABEL_79;
  }

  LODWORD(v28) = *v28;
  if (v28 != 92)
  {
LABEL_79:
    HIBYTE(v37) = 1;
    LOWORD(v36) = v28;
    goto LABEL_81;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36, a4);
  }

LABEL_81:
  *v32 = *__p;
  v33 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  *v30 = v36;
  v31 = v37;
  v36 = 0uLL;
  v37 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v32, v30);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:
    operator delete(v32[0]);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_87;
    }

LABEL_68:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_87:
  operator delete(v36);
  if (SHIBYTE(v35) < 0)
  {
LABEL_69:
    operator delete(__p[0]);
  }
}

void sub_296EF57D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_296EF5AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
            return a2 + 1;
          }

        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
            return a2 + 1;
          }

        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
    return a2 + 1;
  }
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          std::string::__assign_no_alias<false>(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__assign_no_alias<true>(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_296EF6530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_296EF66CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || v4 + 1 == a3 || *v6 != 92)
  {
    return v4;
  }

  v7 = v4[1];
  if (v7 == 40)
  {
    v6 = v4 + 2;
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = &unk_2A1E16048;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v14 + 1 == a3 || *v14 != 92)
      {
        goto LABEL_31;
      }

      if (v14[1] == 41)
      {
        v4 = v14 + 2;
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = &unk_2A1E16090;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
  return v4 + 2;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    v7 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (&v7->__traits_.__loc_.__locale_ + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92)
  {
    return this;
  }

  v9 = BYTE1(this->__traits_.__loc_.__locale_) == 123 ? (&this->__traits_.__loc_.__locale_ + 2) : this;
  if (v9 == this)
  {
    return this;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = &v9->__traits_.__loc_.__locale_ + 1;
  if ((&v9->__traits_.__loc_.__locale_ + 1) == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = *v12;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    if (++v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = *v12;
  v15 = (v12 + 1);
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = LOBYTE(v15->__traits_.__loc_.__locale_);
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = (v12 + 2);
      if (v12 + 2 == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = LOBYTE(v15->__traits_.__loc_.__locale_);
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        v15 = (v15 + 1);
        if (v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if ((&v15->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v15->__traits_.__loc_.__locale_) != 92)
      {
        goto LABEL_55;
      }

      if (BYTE1(v15->__traits_.__loc_.__locale_) == 125)
      {
        a3 = (&v15->__traits_.__loc_.__locale_ + 2);
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_53;
      }

LABEL_54:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = (v12[1] == 125 ? v12 + 2 : v12);
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  __mexp_begin = __mexp_begin;
  __mexp_end = __mexp_end;
  v21 = v10;
LABEL_53:
  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v20, v21, a4, __mexp_begin, __mexp_end, 1);
  return v19;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      end = v14->__end_;
      first = end->__first_;
      v15->__vftable = &unk_2A1E16240;
      v15->__first_ = first;
      end->__first_ = v15;
      v14->__end_ = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2A1E15D30;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = &unk_2A1E16048;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = &unk_2A1E16090;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2A1E15CE8;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, v6, (v7 + 1), v23);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!this->__open_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      end = this->__end_;
      first = end->__first_;
      v10->__vftable = &unk_2A1E16240;
      v10->__first_ = first;
      end->__first_ = v10;
      this->__end_ = v10;
      return v9 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29C268CC0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_296EF72F4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x296EF72B4);
  }

  __cxa_rethrow();
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_296EF78E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

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
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, v11 + v13, v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

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
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_296EF7C24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v22 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v19 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v19, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v17 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v15 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v8 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v8 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v11 = cf;
    Code = CFErrorGetCode(error);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v21 = v13;
    _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v17;
      if (!v17)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v19)
  {
    CFRelease(v19);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296EF80DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 != -1)
  {

    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }
}

void util::moveDirContent(std::string::size_type a1, const std::string::value_type **a2, unsigned int a3, int a4, uint64_t a5)
{
  v158 = *MEMORY[0x29EDCA608];
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v8 = *(a1 + 23);
  if (v8 < 0)
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  std::locale::locale(&v143, a5);
  v144 = *(a5 + 8);
  v145 = *(a5 + 24);
  v11 = *(a5 + 48);
  v146 = *(a5 + 40);
  v147 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v13 = v147;
  if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    std::locale::~locale(&v143);
    if (filtered_files)
    {
LABEL_11:
      v14 = v149;
      v131 = v150;
      if (v149 != v150)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v157, 170, sizeof(v157));
            if (*(v14 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
            }

            else
            {
              v15 = *v14;
              v157.__r_.__value_.__r.__words[2] = v14[2];
              *&v157.__r_.__value_.__l.__data_ = v15;
            }

            v16 = *(a1 + 23);
            if (v16 >= 0)
            {
              v17 = *(a1 + 23);
            }

            else
            {
              v17 = *(a1 + 8);
            }

            v18 = v17 + 1;
            if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v18 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v20 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v17 + 1;
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if ((v18 | 7) == 0x17)
              {
                v19 = 25;
              }

              else
              {
                v19 = (v18 | 7) + 1;
              }

              v20 = operator new(v19);
              v141.__r_.__value_.__l.__size_ = v17 + 1;
              v141.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v20;
            }

            v21 = *a1;
            if (v16 >= 0)
            {
              v22 = a1;
            }

            else
            {
              v22 = *a1;
            }

            memmove(v20, v22, v17);
LABEL_32:
            *&v20[v17] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v157;
            }

            else
            {
              v23 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v157.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v141, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            __p[2] = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_40:
                if (is_directory)
                {
                  goto LABEL_41;
                }

                goto LABEL_52;
              }
            }

            else if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v141.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_41:
              v28 = *(a1 + 23);
              if (v28 >= 0)
              {
                v29 = *(a1 + 23);
              }

              else
              {
                v29 = *(a1 + 8);
              }

              v30 = v29 + 1;
              if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v30 < 0x17)
              {
                memset(&v141, 0, sizeof(v141));
                v32 = &v141;
                *(&v141.__r_.__value_.__s + 23) = v29 + 1;
                if (v29)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((v30 | 7) == 0x17)
                {
                  v31 = 25;
                }

                else
                {
                  v31 = (v30 | 7) + 1;
                }

                v32 = operator new(v31);
                v141.__r_.__value_.__l.__size_ = v29 + 1;
                v141.__r_.__value_.__r.__words[2] = v31 | 0x8000000000000000;
                v141.__r_.__value_.__r.__words[0] = v32;
LABEL_65:
                v39 = *a1;
                if (v28 >= 0)
                {
                  v40 = a1;
                }

                else
                {
                  v40 = *a1;
                }

                memmove(v32, v40, v29);
              }

              *&v32[v29] = 47;
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = &v157;
              }

              else
              {
                v41 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v42 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v42 = v157.__r_.__value_.__l.__size_;
              }

              v43 = std::string::append(&v141, v41, v42);
              v44 = *&v43->__r_.__value_.__l.__data_;
              __p[2] = v43->__r_.__value_.__r.__words[2];
              *__p = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v45 = __p[1];
                v47 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v48 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v48 != __p[1])
                {
                  v46 = __p[0];
                  goto LABEL_96;
                }

                if (v47 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v46 = __p[0];
                if (v48 > 0x3FFFFFFFFFFFFFF2)
                {
                  v52 = 0;
                  v51 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_81:
                  v49 = 2 * v48;
                  if (v47 > 2 * v48)
                  {
                    v49 = v47;
                  }

                  if ((v49 | 7) == 0x17)
                  {
                    v50 = 25;
                  }

                  else
                  {
                    v50 = (v49 | 7) + 1;
                  }

                  if (v49 >= 0x17)
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 23;
                  }

                  v52 = v48 == 22;
                }

                v53 = operator new(v51);
                v54 = v53;
                if (v48)
                {
                  memmove(v53, v46, v48);
                }

                v54[v48] = 47;
                if (!v52)
                {
                  operator delete(v46);
                }

                __p[1] = v47;
                __p[2] = (v51 | 0x8000000000000000);
                __p[0] = v54;
                v55 = &v54[v47];
              }

              else
              {
                v46 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v47 = 23;
                  v48 = 22;
                  goto LABEL_81;
                }

LABEL_96:
                *(v45 + v46) = 47;
                v56 = v45 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v56;
                }

                else
                {
                  HIBYTE(__p[2]) = v56 & 0x7F;
                }

                v55 = &v56[v46];
              }

              *v55 = 0;
              *v139 = *__p;
              v140 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v138, *a2, a2[1]);
              }

              else
              {
                v138 = *a2;
              }

              std::locale::locale(&v132, a5);
              v133 = *(a5 + 8);
              v134 = *(a5 + 24);
              v57 = *(a5 + 48);
              v135 = *(a5 + 40);
              v136 = v57;
              if (v57)
              {
                atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v137 = *(a5 + 56);
              util::moveDirContent(v139, &v138, a3, (a4 - 1), &v132);
              v58 = v136;
              if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v58->__on_zero_shared)(v58);
                std::__shared_weak_count::__release_weak(v58);
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_108:
                  if ((SHIBYTE(v140) & 0x80000000) == 0)
                  {
                    goto LABEL_109;
                  }

LABEL_114:
                  operator delete(v139[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_115;
                }
              }

              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140) & 0x80000000) == 0)
              {
LABEL_109:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_110;
                }

                goto LABEL_115;
              }

              goto LABEL_114;
            }

LABEL_52:
            if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
            {
              qword_2A18A5920 = 0;
              qword_2A18A5928 = 0;
              __cxa_guard_release(&qword_2A18A5918);
            }

            if (_MergedGlobals_0 == -1)
            {
              v33 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
              v33 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            v34 = *(a1 + 23);
            if (v34 >= 0)
            {
              v35 = *(a1 + 23);
            }

            else
            {
              v35 = *(a1 + 8);
            }

            v36 = v35 + 1;
            if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v36 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v38 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v35 + 1;
              if (!v35)
              {
                goto LABEL_125;
              }
            }

            else
            {
              if ((v36 | 7) == 0x17)
              {
                v37 = 25;
              }

              else
              {
                v37 = (v36 | 7) + 1;
              }

              v38 = operator new(v37);
              v141.__r_.__value_.__l.__size_ = v35 + 1;
              v141.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v38;
            }

            v59 = *a1;
            if (v34 >= 0)
            {
              v60 = a1;
            }

            else
            {
              v60 = *a1;
            }

            memmove(v38, v60, v35);
LABEL_125:
            *&v38[v35] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v157;
            }

            else
            {
              v61 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v62 = v157.__r_.__value_.__l.__size_;
            }

            v63 = std::string::append(&v141, v61, v62);
            v64 = *&v63->__r_.__value_.__l.__data_;
            __p[2] = v63->__r_.__value_.__r.__words[2];
            *__p = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v65 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v65;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_296ECF000, v33, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_110:
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            }

LABEL_115:
            operator delete(__p[0]);
            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_116:
              operator delete(v141.__r_.__value_.__l.__data_);
            }

LABEL_117:
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v157.__r_.__value_.__l.__data_);
            }

            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }

        while (1)
        {
          memset(&v157, 170, sizeof(v157));
          if (*(v14 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
          }

          else
          {
            v75 = *v14;
            v157.__r_.__value_.__r.__words[2] = v14[2];
            *&v157.__r_.__value_.__l.__data_ = v75;
          }

          memset(__p, 170, sizeof(__p));
          v76 = *(a2 + 23);
          if (v76 >= 0)
          {
            v77 = *(a2 + 23);
          }

          else
          {
            v77 = a2[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_179;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            p_buf = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          v81 = *a2;
          if (v76 >= 0)
          {
            v82 = a2;
          }

          else
          {
            v82 = *a2;
          }

          memmove(p_buf, v82, v77);
LABEL_179:
          *(&p_buf->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v157;
          }

          else
          {
            v83 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v157.__r_.__value_.__l.__size_;
          }

          v85 = std::string::append(&buf, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_187;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_187:
          v87 = *(a1 + 23);
          if (v87 >= 0)
          {
            v88 = *(a1 + 23);
          }

          else
          {
            v88 = *(a1 + 8);
          }

          v89 = v88 + 1;
          if (v88 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v89 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v91 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v88 + 1;
            if (!v88)
            {
              goto LABEL_201;
            }
          }

          else
          {
            if ((v89 | 7) == 0x17)
            {
              v90 = 25;
            }

            else
            {
              v90 = (v89 | 7) + 1;
            }

            v91 = operator new(v90);
            buf.__r_.__value_.__l.__size_ = v88 + 1;
            buf.__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v91;
          }

          v92 = *a1;
          if (v87 >= 0)
          {
            v93 = a1;
          }

          else
          {
            v93 = *a1;
          }

          memmove(v91, v93, v88);
LABEL_201:
          *(&v91->__r_.__value_.__l.__data_ + v88) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = &v157;
          }

          else
          {
            v94 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v95 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v95 = v157.__r_.__value_.__l.__size_;
          }

          v96 = std::string::append(&buf, v94, v95);
          v97 = *&v96->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v97;
          v96->__r_.__value_.__l.__size_ = 0;
          v96->__r_.__value_.__r.__words[2] = 0;
          v96->__r_.__value_.__r.__words[0] = 0;
          v98 = ctu::fs::rename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_209:
              explicit = atomic_load_explicit(&qword_2A18A5918, memory_order_acquire);
              if (v98)
              {
                goto LABEL_210;
              }

              goto LABEL_226;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_209;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A18A5918, memory_order_acquire);
          if (v98)
          {
LABEL_210:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
            {
              qword_2A18A5920 = 0;
              qword_2A18A5928 = 0;
              __cxa_guard_release(&qword_2A18A5918);
            }

            if (_MergedGlobals_0 == -1)
            {
              v100 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
              v100 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            v101 = *(a1 + 23);
            if (v101 >= 0)
            {
              v102 = *(a1 + 23);
            }

            else
            {
              v102 = *(a1 + 8);
            }

            v103 = v102 + 1;
            if (v102 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v103 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v105 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v102 + 1;
              if (v102)
              {
                goto LABEL_239;
              }
            }

            else
            {
              if ((v103 | 7) == 0x17)
              {
                v104 = 25;
              }

              else
              {
                v104 = (v103 | 7) + 1;
              }

              v105 = operator new(v104);
              buf.__r_.__value_.__l.__size_ = v102 + 1;
              buf.__r_.__value_.__r.__words[2] = v104 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v105;
LABEL_239:
              v112 = *a1;
              if (v101 >= 0)
              {
                v113 = a1;
              }

              else
              {
                v113 = *a1;
              }

              memmove(v105, v113, v102);
            }

            *(&v105->__r_.__value_.__l.__data_ + v102) = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v114 = &v157;
            }

            else
            {
              v114 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v115 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v115 = v157.__r_.__value_.__l.__size_;
            }

            v116 = std::string::append(&buf, v114, v115);
            v117 = *&v116->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v117;
            v116->__r_.__value_.__l.__size_ = 0;
            v116->__r_.__value_.__r.__words[2] = 0;
            v116->__r_.__value_.__r.__words[0] = 0;
            v118 = &v141;
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v118 = v141.__r_.__value_.__r.__words[0];
            }

            v119 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v119 = __p[0];
            }

            *v152 = 136315394;
            v153 = v118;
            v154 = 2080;
            v155 = v119;
            _os_log_impl(&dword_296ECF000, v100, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v152, 0x16u);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_254;
            }

            goto LABEL_272;
          }

LABEL_226:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
          {
            qword_2A18A5920 = 0;
            qword_2A18A5928 = 0;
            __cxa_guard_release(&qword_2A18A5918);
          }

          if (_MergedGlobals_0 == -1)
          {
            v106 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
            v106 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          v107 = *(a1 + 23);
          if (v107 >= 0)
          {
            v108 = *(a1 + 23);
          }

          else
          {
            v108 = *(a1 + 8);
          }

          v109 = v108 + 1;
          if (v108 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v109 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v111 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v108 + 1;
            if (!v108)
            {
              goto LABEL_261;
            }
          }

          else
          {
            if ((v109 | 7) == 0x17)
            {
              v110 = 25;
            }

            else
            {
              v110 = (v109 | 7) + 1;
            }

            v111 = operator new(v110);
            buf.__r_.__value_.__l.__size_ = v108 + 1;
            buf.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v111;
          }

          v120 = *a1;
          if (v107 >= 0)
          {
            v121 = a1;
          }

          else
          {
            v121 = *a1;
          }

          memmove(v111, v121, v108);
LABEL_261:
          *(&v111->__r_.__value_.__l.__data_ + v108) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &v157;
          }

          else
          {
            v122 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v123 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v123 = v157.__r_.__value_.__l.__size_;
          }

          v124 = std::string::append(&buf, v122, v123);
          v125 = *&v124->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v125;
          v124->__r_.__value_.__l.__size_ = 0;
          v124->__r_.__value_.__r.__words[2] = 0;
          v124->__r_.__value_.__r.__words[0] = 0;
          v126 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v126 = v141.__r_.__value_.__r.__words[0];
          }

          v127 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v127 = __p[0];
          }

          *v152 = 136315394;
          v153 = v126;
          v154 = 2080;
          v155 = v127;
          _os_log_error_impl(&dword_296ECF000, v106, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v152, 0x16u);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_254:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_273;
            }

            goto LABEL_274;
          }

LABEL_272:
          operator delete(v141.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_273:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_274:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

LABEL_276:
            operator delete(v157.__r_.__value_.__l.__data_);
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_276;
            }

LABEL_161:
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }
      }

      goto LABEL_143;
    }
  }

  else
  {
    std::locale::~locale(&v143);
    if (filtered_files)
    {
      goto LABEL_11;
    }
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 == -1)
  {
    v66 = qword_2A18A5928;
    if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    v66 = qword_2A18A5928;
    if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  v128 = a1;
  if (*(a1 + 23) < 0)
  {
    v128 = *a1;
  }

  LODWORD(v157.__r_.__value_.__l.__data_) = 136315138;
  *(v157.__r_.__value_.__r.__words + 4) = v128;
  _os_log_error_impl(&dword_296ECF000, v66, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v157, 0xCu);
LABEL_143:
  if (a3)
  {
    v67 = *(a1 + 23);
    if (v67 < 0)
    {
      v68 = *a1;
    }

    if (v67 >= 0)
    {
      v69 = *(a1 + 23);
    }

    else
    {
      v69 = *(a1 + 8);
    }

    ctu::fs::remove_dir();
  }

  v70 = v149;
  if (v149)
  {
    v71 = v150;
    v72 = v149;
    if (v150 != v149)
    {
      do
      {
        v73 = *(v71 - 1);
        v71 -= 3;
        if (v73 < 0)
        {
          operator delete(*v71);
        }
      }

      while (v71 != v70);
      v72 = v149;
    }

    v150 = v70;
    operator delete(v72);
  }

  v74 = *MEMORY[0x29EDCA608];
}

void sub_296EF9214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v17 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v17 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    LOWORD(c.count[0]) = 0;
    v18 = "dataIn buffer is NULL";
    p_c = &c;
    v20 = v17;
    v21 = 2;
LABEL_25:
    _os_log_error_impl(&dword_296ECF000, v20, OS_LOG_TYPE_ERROR, v18, p_c, v21);
    goto LABEL_30;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  v10 = a1[23];
  if (v10 < 0)
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (ctu::fs::get_file_size())
  {
    CC_SHA256_Init(&c);
    v13 = a1;
    if (a1[23] < 0)
    {
      v13 = *a1;
    }

    v14 = open(v13, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      while (1)
      {
        v16 = read(v14, a2, a3);
        if (v16 == -1)
        {
          break;
        }

        CC_SHA256_Update(&c, a2, v16);
        v15 += v16;
        if (v15 >= 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_29;
        }
      }

      if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
      {
        qword_2A18A5920 = 0;
        qword_2A18A5928 = 0;
        __cxa_guard_release(&qword_2A18A5918);
      }

      if (_MergedGlobals_0 == -1)
      {
        v27 = qword_2A18A5928;
        if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          CC_SHA256_Final(*a4, &c);
          close(v14);
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
        v27 = qword_2A18A5928;
        if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v29 = __error();
      v30 = strerror(*v29);
      v31 = *__error();
      v32 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v30;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v32;
      _os_log_error_impl(&dword_296ECF000, v27, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
      goto LABEL_29;
    }

    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 != -1)
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v22 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v22 = qword_2A18A5928;
    if (os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      v26 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v18 = "Failed to open %s : %s (%d, 0x%x)";
      p_c = buf;
      v20 = v22;
      v21 = 34;
      goto LABEL_25;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_296EF982C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(uint64_t *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x29EDCA608];
  v16 = 65541;
  if (*(a1 + 23) < 0)
  {
    v2 = open(*a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v12 = qword_2A18A5928;
      result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v12 = qword_2A18A5928;
      result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v18 = v1;
    v19 = 2080;
    v20 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v16, 0);
  close(v3);
  if (!v4)
  {
    result = 1;
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    v5 = qword_2A18A5928;
    result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = qword_2A18A5928;
  result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_7:
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136316162;
    v18 = v1;
    v19 = 2080;
    v20 = v8;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v4;
    v25 = 2048;
    v26 = v16;
    v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
    v10 = v5;
    v11 = 44;
LABEL_17:
    _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, int64_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC), 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_296EFA140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_296EFA3F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v50 = a2[1];
  if (v3 == v50)
  {
    return;
  }

  v49 = &v50 + 3;
  while (1)
  {
    memset(&v52, 170, sizeof(v52));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v52.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v52.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      v13 = *a1;
      if (v6 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      memmove(v12, v14, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v15 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v16 = &v52;
      }

      else
      {
        v16 = v52.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, size);
    }

    v15[size] = 0;
    v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v53.st_blksize = v17;
    *v53.st_qspare = v17;
    v53.st_birthtimespec = v17;
    *&v53.st_size = v17;
    v53.st_mtimespec = v17;
    v53.st_ctimespec = v17;
    *&v53.st_uid = v17;
    v53.st_atimespec = v17;
    *&v53.st_dev = v17;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (stat(v18, &v53) || (SHIBYTE(__p[2]) >= 0 ? (v20 = __p) : (v20 = __p[0]), v21 = opendir(v20), (v22 = v21) == 0))
    {
      v19 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v23 = readdir(v21);
    closedir(v22);
    v19 = HIBYTE(__p[2]);
    if (v23)
    {
      break;
    }

LABEL_35:
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 = (v3 + 24);
    if (v3 == v50)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v24 = &v49[HIBYTE(__p[2])];
    if (*v24 == 1885626669 && v49[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v24 == 1935962413 && v24[4] == 115)
    {
      goto LABEL_80;
    }

    v27 = *v24;
    v28 = v24[4];
    if (v27 == 1634296877 && v28 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v30 = __p;
    v31 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v31 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v30 = __p[0];
  v32 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v32 - 5) != 1935962413 || *(v32 - 1) != 115))
  {
    v35 = *(v32 - 5);
    v36 = *(v32 - 1);
    if (v35 != 1634296877 || v36 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v38 = v30 + v31;
      v39 = *(v38 - 9);
      v40 = *(v38 - 1);
      if (v39 == 0x636172742D62622DLL && v40 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v42 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v52.__r_.__value_.__l.__size_;
  }

  v44 = v43 + 9;
  if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 < 0x17)
  {
    memset(&v53, 0, 24);
    v46 = &v53;
    HIBYTE(v53.st_gid) = v43 + 9;
    if (v43)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v44 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v44 | 7) + 1;
    }

    v46 = operator new(v45);
    v53.st_ino = v43 + 9;
    *&v53.st_uid = v45 | 0x8000000000000000;
    *&v53.st_dev = v46;
LABEL_90:
    if (v42 >= 0)
    {
      v47 = &v52;
    }

    else
    {
      v47 = v52.__r_.__value_.__r.__words[0];
    }

    memmove(v46, v47, v43);
  }

  strcpy(v46 + v43, "/info.txt");
  *a3 = *&v53.st_dev;
  a3[2] = *&v53.st_uid;
  if ((v19 & 0x80) == 0)
  {
    if ((v42 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v52.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_296EFA878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t *a1, char *a2)
{
  __p[73] = *MEMORY[0x29EDCA608];
  v84 = 0;
  v85 = 0;
  v86 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v82[32] = v2;
  v83 = v2;
  *v82 = v2;
  *&v82[16] = v2;
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v81[1] = 0;
    v81[2] = 0;
    HIBYTE(v81[2]) = v4 + 2;
    v10 = v81 + 2;
    v81[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v81[1] = (v4 + 2);
    v81[2] = (v8 | 0x8000000000000000);
    v81[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  v11 = *v6;
  if (v3 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  memmove(v10, v12, v4);
LABEL_15:
  v10[v4] = 0;
  v13 = SHIBYTE(v81[2]);
  if ((SHIBYTE(v81[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v81[2]) - 21) < 2)
    {
      v14 = (SHIBYTE(v81[2]) + 2);
      v15 = v81;
      v16 = 22;
LABEL_21:
      v17 = 2 * v16;
      if (v14 > 2 * v16)
      {
        v17 = v14;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 23;
      }

      v20 = v16 == 22;
      goto LABEL_30;
    }

    v24 = v81;
    *(v81 + SHIBYTE(v81[2])) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v13 = v81[1];
  v16 = (v81[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v81[1] >= 2)
  {
    v24 = v81[0];
    *(v81[0] + v81[1]) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v81[2]) = v25 & 0x7F;
LABEL_39:
      v23 = &v25[v24];
      goto LABEL_40;
    }

LABEL_38:
    v81[1] = v25;
    goto LABEL_39;
  }

  v14 = v81[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v81[2] & 0x7FFFFFFFFFFFFFFFLL)) < v81[1] - v16 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v81[0];
  if (v16 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v21 = operator new(v19);
  v22 = v21;
  if (v13)
  {
    memmove(v21, v15, v13);
  }

  *(v22 + v13) = 10798;
  if (!v20)
  {
    operator delete(v15);
  }

  v81[1] = v14;
  v81[2] = (v19 | 0x8000000000000000);
  v81[0] = v22;
  v23 = &v14[v22];
LABEL_40:
  *v23 = 0;
  *__p = *v81;
  __p[2] = v81[2];
  memset(v81, 0, sizeof(v81));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v82, __p, 0);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v81[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v81[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v80 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v80, *a1, a1[1]);
LABEL_47:
  std::locale::locale(&v74, v82);
  v75 = *&v82[8];
  v76 = *&v82[24];
  v77 = *&v82[40];
  v78 = v83;
  if (v83)
  {
    atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
  }

  v79 = *(&v83 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v80, &v74, &v84, 0);
  v27 = v78;
  if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    std::locale::~locale(&v74);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v28 = 0;
      v29 = v83;
      if (!v83)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else
  {
    std::locale::~locale(&v74);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v80.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v81, 170, sizeof(v81));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *a1, a1[1]);
  }

  else
  {
    v73 = *a1;
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  v30 = v84;
  v31 = v85;
  *buf = &v70;
  *&buf[8] = 0xAAAAAAAAAAAAAA00;
  v32 = v85 - v84;
  if (v85 != v84)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v32 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v33 = operator new(v85 - v84);
    v70 = v33;
    v71 = v33;
    v72 = v33 + v32;
    v87 = v33;
    v88 = v33;
    __p[0] = &v70;
    __p[1] = &v87;
    __p[2] = &v88;
    __p[3] = 0xAAAAAAAAAAAAAA00;
    do
    {
      while ((*(v30 + 23) & 0x80000000) == 0)
      {
        v34 = *v30;
        v33->__r_.__value_.__r.__words[2] = v30[2];
        *&v33->__r_.__value_.__l.__data_ = v34;
        ++v33;
        v30 += 3;
        v88 = v33;
        if (v30 == v31)
        {
          goto LABEL_66;
        }
      }

      std::string::__init_copy_ctor_external(v33, *v30, v30[1]);
      v30 += 3;
      v33 = ++v88;
    }

    while (v30 != v31);
LABEL_66:
    v71 = v33;
  }

  util::findBasebandLogInfoFile(&v73.__r_.__value_.__l.__data_, &v70, v81);
  v35 = v70;
  if (v70)
  {
    p_data = &v71->__r_.__value_.__l.__data_;
    v37 = v70;
    if (v71 != v70)
    {
      do
      {
        v38 = *(p_data - 1);
        p_data -= 3;
        if (v38 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v35);
      v37 = v70;
    }

    v71 = v35;
    operator delete(v37);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    v39 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v40 = HIBYTE(v81[2]);
    }

    else
    {
      v40 = v81[1];
    }

    if (v40)
    {
LABEL_80:
      memset(__p, 170, 0x240uLL);
      v41 = *(a1 + 23);
      if (v41 >= 0)
      {
        v42 = *(a1 + 23);
      }

      else
      {
        v42 = a1[1];
      }

      v43 = v42 + v40;
      if (v42 + v40 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v43 <= 0x16)
      {
        memset(buf, 0, 24);
        v45 = buf;
        buf[23] = v42 + v40;
        if (!v42)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if ((v43 | 7) == 0x17)
        {
          v44 = 25;
        }

        else
        {
          v44 = (v43 | 7) + 1;
        }

        v45 = operator new(v44);
        *&buf[8] = v42 + v40;
        *&buf[16] = v44 | 0x8000000000000000;
        *buf = v45;
        if (!v42)
        {
LABEL_111:
          v49 = &v45[v42];
          if (v39 >= 0)
          {
            v50 = v81;
          }

          else
          {
            v50 = v81[0];
          }

          memmove(v49, v50, v40);
          v49[v40] = 0;
          std::ifstream::basic_ifstream(__p, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[17])
            {
              goto LABEL_116;
            }
          }

          else if (__p[17])
          {
LABEL_116:
            std::istream::seekg();
            memset(buf, 170, 24);
            v51 = buf;
            support::fs::readCurrentLine(__p, buf);
            v52 = buf[23];
            v54 = *buf;
            v53 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v51 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v53 = buf[23];
            }

            if (v53 >= 35)
            {
              v55 = &v51[v53];
              v56 = v51;
              do
              {
                v57 = memchr(v56, 98, v53 - 34);
                if (!v57)
                {
                  break;
                }

                if (*v57 == 0x6320676F6C206262 && *(v57 + 1) == 0x6F697463656C6C6FLL && *(v57 + 2) == 0x20726F66202D206ELL && *(v57 + 3) == 0x6E67616964737973 && *(v57 + 27) == 0x65736F6E67616964)
                {
                  if (v57 != v55 && v57 - v51 != -1)
                  {
                    v28 = 1;
                    goto LABEL_148;
                  }

                  break;
                }

                v56 = v57 + 1;
                v53 = v55 - v56;
              }

              while (v55 - v56 >= 35);
            }

            v28 = 0;
LABEL_148:
            if (v52 < 0)
            {
              operator delete(v54);
            }

LABEL_150:
            __p[0] = *MEMORY[0x29EDC9518];
            *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C268C80](&__p[2]);
            std::istream::~istream();
            MEMORY[0x29C268E60](&__p[53]);
            if (SHIBYTE(v81[2]) < 0)
            {
              goto LABEL_151;
            }

            goto LABEL_103;
          }

          if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
          {
            qword_2A18A5920 = 0;
            qword_2A18A5928 = 0;
            __cxa_guard_release(&qword_2A18A5918);
          }

          if (_MergedGlobals_0 == -1)
          {
            v62 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              v28 = 0;
              goto LABEL_150;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
            v62 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }
          }

          v69 = v81;
          if (SHIBYTE(v81[2]) < 0)
          {
            v69 = v81[0];
          }

          *buf = 136315138;
          *&buf[4] = v69;
          _os_log_error_impl(&dword_296ECF000, v62, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_142;
        }
      }

      v47 = *a1;
      if (v41 >= 0)
      {
        v48 = a1;
      }

      else
      {
        v48 = *a1;
      }

      memmove(v45, v48, v42);
      goto LABEL_111;
    }
  }

  else
  {
    v39 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v40 = HIBYTE(v81[2]);
    }

    else
    {
      v40 = v81[1];
    }

    if (v40)
    {
      goto LABEL_80;
    }
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  v46 = qword_2A18A5928;
  v28 = 0;
  if (os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v6;
    _os_log_impl(&dword_296ECF000, v46, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v28 = 0;
    if (SHIBYTE(v81[2]) < 0)
    {
LABEL_151:
      operator delete(v81[0]);
      v29 = v83;
      if (!v83)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else if (SHIBYTE(v81[2]) < 0)
  {
    goto LABEL_151;
  }

LABEL_103:
  v29 = v83;
  if (!v83)
  {
    goto LABEL_152;
  }

LABEL_104:
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_152:
  std::locale::~locale(v82);
  v63 = v84;
  if (v84)
  {
    v64 = v85;
    v65 = v84;
    if (v85 != v84)
    {
      do
      {
        v66 = *(v64 - 1);
        v64 -= 3;
        if (v66 < 0)
        {
          operator delete(*v64);
        }
      }

      while (v64 != v63);
      v65 = v84;
    }

    v85 = v63;
    operator delete(v65);
  }

  v67 = *MEMORY[0x29EDCA608];
  return v28;
}

void sub_296EFB360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_296EFB3CC(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va1, a26);
  va_start(va, a26);
  v27.__locale_ = va_arg(va1, std::locale::__imp *);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  std::vector<std::string>::~vector[abi:ne200100](&a3);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_296EFB3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296EFB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x296EFB418);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296EFB434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x296EFB3F0);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v8 = a3;
  v10 = a6;
  v154 = *MEMORY[0x29EDCA608];
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  memset(v141, 170, sizeof(v141));
  v11 = strlen(__s);
  v106 = v10;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v11 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v12;
    *v146 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    v146[7] = v11;
    p_dst = &__dst;
    if (!v11)
    {
      LOBYTE(__dst) = 0;
      v14 = v146[7];
      if ((v146[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v12);
  *(p_dst + v12) = 0;
  v14 = v146[7];
  if ((v146[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v14 - 21 < 2)
    {
      v15 = v8;
      v16 = v14 + 2;
      v17 = &__dst;
      v18 = 22;
LABEL_15:
      v20 = 2 * v18;
      if (v16 > 2 * v18)
      {
        v20 = v16;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_24;
    }

    v27 = &__dst;
    *&v146[v14 - 16] = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  v14 = *(&__dst + 1);
  v18 = (*v146 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - *(&__dst + 1) >= 2)
  {
    v27 = __dst;
    *(__dst + *(&__dst + 1)) = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
LABEL_30:
      v146[7] = v28 & 0x7F;
LABEL_33:
      v26 = v27 + v28;
      goto LABEL_34;
    }

LABEL_32:
    *(&__dst + 1) = v28;
    goto LABEL_33;
  }

  v16 = *(&__dst + 1) + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*v146 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 2 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = __dst;
  v15 = v8;
  if (v18 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v14)
  {
    memmove(v24, v17, v14);
  }

  *&v25[v14] = 10798;
  if (!v23)
  {
    operator delete(v17);
  }

  *(&__dst + 1) = v16;
  *v146 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v16];
  v8 = v15;
LABEL_34:
  *v26 = 0;
  v141[2] = *v146;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v140 = v29;
  *v141 = __dst;
  *&v139[16] = v29;
  *&v139[32] = v29;
  *v139 = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v139, v141, 0);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v137[32] = v30;
  v138 = v30;
  *v137 = v30;
  *&v137[16] = v30;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v137, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v31 = strlen(this);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  v108 = a5 == 0;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    __p[1] = v32;
    v136 = v34 | 0x8000000000000000;
    __p[0] = v33;
    goto LABEL_42;
  }

  HIBYTE(v136) = v31;
  v33 = __p;
  if (v31)
  {
LABEL_42:
    memcpy(v33, this, v32);
  }

  *(v32 + v33) = 0;
  std::locale::locale(&v129, v139);
  v130 = *&v139[8];
  v131 = *&v139[24];
  v132 = *&v139[40];
  v133 = v140;
  if (v140)
  {
    atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
  }

  v134 = *(&v140 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v129, &v142, 0);
  v36 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v143 - v142));
  if (v143 == v142)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(v142, v143, v39, 1, v37);
  memset(&v128, 0, sizeof(v128));
  v40 = v142;
  v105 = v143;
  if (v142 == v143)
  {
LABEL_192:
    if (!v8)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = *v10;
    }

    std::locale::locale(&v109, v137);
    v110 = *&v137[8];
    v111 = *&v137[24];
    v112 = *&v137[40];
    v113 = v138;
    if (v138)
    {
      atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = *(&v138 + 1);
    v92 = util::checkLogFileAge(&v115, v8, &v109);
    v93 = v113;
    if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v93->__on_zero_shared)(v93);
      std::__shared_weak_count::__release_weak(v93);
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v92)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
        {
          *v10->__r_.__value_.__l.__data_ = 0;
          v10->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v10->__r_.__value_.__s.__data_[0] = 0;
          *(&v10->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v115.__r_.__value_.__l.__data_);
    if (!v92)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v101 = v8;
  v103 = a5;
  while (1)
  {
    memset(&v127, 170, sizeof(v127));
    v107 = v40;
    v41 = &v127;
    if (*(v40 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v127, *v40, v40[1]);
    }

    else
    {
      v42 = *v40;
      v127.__r_.__value_.__r.__words[2] = v40[2];
      *&v127.__r_.__value_.__l.__data_ = v42;
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v128.__r_.__value_.__l.__size_;
    }

    v44 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    v45 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
    v46 = *&v127.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v127.__r_.__value_.__l.__size_;
        v41 = v127.__r_.__value_.__r.__words[0];
      }

      v48 = (v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v128 : v128.__r_.__value_.__r.__words[0];
      if (v47 >= size)
      {
        v69 = v41 + v47;
        v70 = v48->__r_.__value_.__s.__data_[0];
        v71 = v41;
        do
        {
          v72 = v47 - size;
          if (v72 == -1)
          {
            break;
          }

          v73 = memchr(v71, v70, v72 + 1);
          if (!v73)
          {
            break;
          }

          v74 = v73;
          if (!memcmp(v73, v48, size))
          {
            if (v74 == v69 || v74 - v41 == -1)
            {
              break;
            }

            v67 = 3;
            v10 = v106;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v71 = (v74 + 1);
          v47 = v69 - (v74 + 1);
        }

        while (v47 >= size);
      }
    }

    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v125 = v49;
    v122 = 0xAAAAAAAAAAAAAA00;
    v119[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 0;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(v119, 0, 41);
    if (v108)
    {
      v152 = v49;
      v149 = 0xAAAAAAAAAAAAAA00;
      *&v146[24] = v49;
      v147 = 0;
      v148 = 0;
      v150 = 0;
      v151 = 0;
      LOBYTE(v152) = 0;
      BYTE8(v152) = 0;
      v153 = 0;
      __dst = 0uLL;
      *v146 = 0uLL;
      if (v45 >= 0)
      {
        v50 = &v127;
      }

      else
      {
        v50 = v46;
      }

      if (v45 >= 0)
      {
        v51 = v44;
      }

      else
      {
        v51 = *(&v46 + 1);
      }

      *&v146[9] = 0uLL;
      v52 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v137, v50, (v50 + v51), &__dst, 0);
      v53 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v127;
      }

      else
      {
        v54 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v127.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v119, v54, (v54 + v53), &__dst, 0);
      v10 = v106;
      if (__dst)
      {
        *(&__dst + 1) = __dst;
        operator delete(__dst);
      }

      if (v52)
      {
        p_matched = &v119[0].__begin_->matched;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_matched = &v119[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          __dst = 0uLL;
          *v146 = 0;
          if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v106->__r_.__value_.__l.__data_);
            *&v106->__r_.__value_.__l.__data_ = __dst;
            v106->__r_.__value_.__r.__words[2] = *v146;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v106->__r_.__value_.__l.__data_ = __dst;
          v106->__r_.__value_.__r.__words[2] = *v146;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v80 = strlen(this);
          if (v80 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v81 = v80;
          if (v80 >= 0x17)
          {
            if ((v80 | 7) == 0x17)
            {
              v84 = 25;
            }

            else
            {
              v84 = (v80 | 7) + 1;
            }

            v82 = operator new(v84);
            v117[1] = v81;
            v118 = v84 | 0x8000000000000000;
            v117[0] = v82;
          }

          else
          {
            HIBYTE(v118) = v80;
            v82 = v117;
            if (!v80)
            {
              LOBYTE(v117[0]) = 0;
              if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v116 = *v106;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v116, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v117, &v116);
              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v118) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
                    {
                      qword_2A18A5920 = 0;
                      qword_2A18A5928 = 0;
                      __cxa_guard_release(&qword_2A18A5918);
                    }

                    if (_MergedGlobals_0 == -1)
                    {
                      v86 = qword_2A18A5928;
                      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
                      v86 = qword_2A18A5928;
                      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v106->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v87 = v106;
                    }

                    else
                    {
                      v87 = v106->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__dst) = 136315138;
                    *(&__dst + 4) = v87;
                    _os_log_impl(&dword_296ECF000, v86, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &__dst, 0xCu);
LABEL_156:
                    if (&v128 != v106)
                    {
                      v88 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v88 >= 0)
                        {
                          v90 = v106;
                        }

                        else
                        {
                          v90 = v106->__r_.__value_.__r.__words[0];
                        }

                        if (v88 >= 0)
                        {
                          v91 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v106->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v128.__r_.__value_.__l.__data_, v90, v91);
                      }

                      else
                      {
                        if ((*(&v106->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v128 = *v106;
LABEL_185:
                          v67 = 0;
                          v106->__r_.__value_.__s.__data_[0] = 0;
                          *(&v106->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v128, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v67 = 0;
                      *v106->__r_.__value_.__l.__data_ = 0;
                      v106->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v67 = 2;
LABEL_167:
                  v89 = 1;
LABEL_168:
                  v108 = v89;
                  begin = v119[0].__begin_;
                  if (v119[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v118) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v117[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v82, this, v81);
          *(v81 + v82) = 0;
          if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v56 = &v119[1];
        if (v119[0].__end_ != v119[0].__begin_)
        {
          v56 = v119[0].__begin_;
        }

        i = v56->first.__i_;
        p_i = &v119[0].__begin_->second.__i_;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_i = &v119[1].__end_;
        }

        v59 = *p_i;
        v60 = *p_i - i;
        if (v60 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v60 > 0x16)
        {
          if ((v60 | 7) == 0x17)
          {
            v83 = 25;
          }

          else
          {
            v83 = (v60 | 7) + 1;
          }

          v61 = operator new(v83);
          *(&__dst + 1) = v60;
          *v146 = v83 | 0x8000000000000000;
          *&__dst = v61;
          if (v59 == i)
          {
LABEL_98:
            *(v61 + v60) = 0;
            if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v146[7] = *p_i - i;
          v61 = &__dst;
          if (v59 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v61, i, v60);
        goto LABEL_98;
      }

LABEL_166:
      v67 = 0;
      goto LABEL_167;
    }

    v62 = v45 < 0;
    if (v45 >= 0)
    {
      v63 = &v127;
    }

    else
    {
      v63 = v46;
    }

    if (v62)
    {
      v64 = *(&v46 + 1);
    }

    else
    {
      v64 = v44;
    }

    v65 = strlen(v103);
    v10 = v106;
    if (!v65)
    {
LABEL_165:
      std::string::__assign_external(&v128, v103);
      goto LABEL_166;
    }

    v66 = v65;
    if (v64 >= v65)
    {
      v75 = v63 + v64;
      v76 = *v103;
      v77 = v63;
      do
      {
        if (v64 - v66 == -1)
        {
          break;
        }

        v78 = memchr(v77, v76, v64 - v66 + 1);
        if (!v78)
        {
          break;
        }

        v79 = v78;
        if (!memcmp(v78, v103, v66))
        {
          v89 = 0;
          if (v79 != v75)
          {
            v67 = 0;
            if (v79 - v63 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v67 = 0;
          v108 = 0;
          begin = v119[0].__begin_;
          if (v119[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v77 = (v79 + 1);
        v64 = v75 - (v79 + 1);
      }

      while (v64 >= v66);
    }

    v67 = 0;
    v108 = 0;
    begin = v119[0].__begin_;
    if (v119[0].__begin_)
    {
LABEL_169:
      v119[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v40 = v107;
    if ((*(&v127.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v67 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v40 += 3;
    if (v40 == v105)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (v67 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v67)
  {
    goto LABEL_57;
  }

LABEL_191:
  v8 = v101;
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if (v101)
  {
    goto LABEL_193;
  }

LABEL_209:
  v94 = v138;
  if (v138 && !atomic_fetch_add((v138 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    v95 = v140;
    if (!v140)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
LABEL_214:
      operator delete(v141[0]);
    }
  }

  else
  {
    std::locale::~locale(v137);
    v95 = v140;
    if (v140)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
      goto LABEL_214;
    }
  }

  v96 = v142;
  if (v142)
  {
    v97 = v143;
    v98 = v142;
    if (v143 != v142)
    {
      do
      {
        v99 = *(v97 - 1);
        v97 -= 3;
        if (v99 < 0)
        {
          operator delete(*v97);
        }
      }

      while (v97 != v96);
      v98 = v142;
    }

    v143 = v96;
    operator delete(v98);
  }

  v100 = *MEMORY[0x29EDCA608];
}

void sub_296EFC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, uint64_t a2)
{
  v202 = a1;
  v248 = *MEMORY[0x29EDCA608];
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v224 = 0u;
  v225 = 0u;
  v226 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v222[32] = v5;
  v223 = v5;
  *v222 = v5;
  *&v222[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = v7 + 64;
  v201 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    v11 = *a2;
    if (v6 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v10, v12, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v13 = v10 + v7;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  *(v13 + 2) = *(v4 + 2);
  *(v13 + 3) = v14;
  *v13 = v16;
  *(v13 + 1) = v15;
  v13[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v18 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v19 = buf;
      v20 = 22;
LABEL_22:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v23 = v22;
      }

      else
      {
        v23 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v20 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v29 & 0x7F;
LABEL_40:
      v27 = v29 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v29;
    goto LABEL_40;
  }

  v18 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v20 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = buf[0].__begin_;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v23 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v25 = operator new(v23);
  v26 = v25;
  if (value_high)
  {
    memmove(v25, v19, value_high);
  }

  *(&v26->first.__i_ + value_high) = 10798;
  if (!v24)
  {
    operator delete(v19);
  }

  buf[0].__end_ = v18;
  buf[0].__end_cap_.__value_ = (v23 | 0x8000000000000000);
  buf[0].__begin_ = v26;
  v27 = v18 + v26;
LABEL_41:
  *v27 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v222, __p, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v30;
  v221 = v30;
  v219 = v30;
  *&v218[0].__locale_ = v30;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v33 = v32 + 64;
  if (v32 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 <= 0x16)
  {
    memset(buf, 0, 24);
    v35 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v32 + 64;
LABEL_54:
    v36 = *a2;
    if (v31 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    memmove(v35, v37, v32);
    goto LABEL_58;
  }

  if ((v33 | 7) == 0x17)
  {
    v34 = 25;
  }

  else
  {
    v34 = (v33 | 7) + 1;
  }

  v35 = operator new(v34);
  buf[0].__end_ = (v32 + 64);
  buf[0].__end_cap_.__value_ = (v34 | 0x8000000000000000);
  buf[0].__begin_ = v35;
  if (v32)
  {
    goto LABEL_54;
  }

LABEL_58:
  v38 = v35 + v32;
  v39 = *(v4 + 3);
  v41 = *v4;
  v40 = *(v4 + 1);
  *(v38 + 2) = *(v4 + 2);
  *(v38 + 3) = v39;
  *v38 = v41;
  *(v38 + 1) = v40;
  v38[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v43 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v44 = buf;
      v45 = 22;
LABEL_66:
      v46 = 2 * v45;
      if (v43 > 2 * v45)
      {
        v46 = v43;
      }

      if ((v46 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v46 | 7) + 1;
      }

      if (v46 >= 0x17)
      {
        v48 = v47;
      }

      else
      {
        v48 = 23;
      }

      v49 = v45 == 22;
      goto LABEL_75;
    }

    v53 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v52 = v53 + v54;
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v45 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v45 - buf[0].__end_ >= 0x1D)
  {
    v53 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v43 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v45 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = buf[0].__begin_;
  if (v45 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v49 = 0;
  v48 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v50 = operator new(v48);
  v51 = v50;
  if (end)
  {
    memmove(v50, v44, end);
  }

  qmemcpy(v51 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v49)
  {
    operator delete(v44);
  }

  buf[0].__end_ = v43;
  buf[0].__end_cap_.__value_ = (v48 | 0x8000000000000000);
  buf[0].__begin_ = v51;
  v52 = v43 + v51;
LABEL_83:
  *v52 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v218, __p, 0);
  if ((__p[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v55 = v202;
    if ((*(v202 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(*__p);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v55 = v202;
  if ((*(v202 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v217 = *v55;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v217, v55->__r_.__value_.__l.__data_, v55->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v211, v222);
  v212 = *&v222[8];
  v213 = *&v222[24];
  v214 = *&v222[40];
  v215 = v223;
  if (v223)
  {
    atomic_fetch_add_explicit((v223 + 8), 1uLL, memory_order_relaxed);
  }

  v216 = *(&v223 + 1);
  support::fs::getFilteredFiles(&v217, &v211, &v227, 0);
  v56 = v215;
  if (v215 && !atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
    std::locale::~locale(&v211);
    if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      v58 = v227;
      v57 = v228;
      if (v227 == v228)
      {
        goto LABEL_268;
      }

      goto LABEL_99;
    }
  }

  else
  {
    std::locale::~locale(&v211);
    if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }
  }

  operator delete(v217.__r_.__value_.__l.__data_);
  v58 = v227;
  v57 = v228;
  if (v227 == v228)
  {
    goto LABEL_268;
  }

LABEL_99:
  p_end_cap = &buf[1].__end_cap_;
  v205 = &buf[1];
  v206 = &v225;
  p_end = &buf[1].__end_;
  v207 = &buf[1].__end_cap_;
  v208 = v57;
  while (2)
  {
    *&v60 = 0xAAAAAAAAAAAAAAAALL;
    *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&p_end_cap[4].__value_ = v60;
    *&p_end_cap[6].__value_ = v60;
    *&p_end_cap->__value_ = v60;
    *&p_end_cap[2].__value_ = v60;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    memset(buf, 0, 41);
    v237 = v60;
    v234 = 0xAAAAAAAAAAAAAA00;
    v231 = 0xAAAAAAAAAAAAAAAALL;
    v232 = 0;
    v233 = 0;
    v235 = 0;
    v236 = 0;
    LOBYTE(v237) = 0;
    BYTE8(v237) = 0;
    v238 = 0;
    memset(__p, 0, sizeof(__p));
    second = *(&v58->matched + 7);
    if (second >= 0)
    {
      first = v58;
    }

    else
    {
      first = v58->first;
    }

    if (second < 0)
    {
      second = v58->second;
    }

    v63 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v218, first, &second[first], __p, 0);
    v64 = *(&v58->matched + 7);
    if (v64 >= 0)
    {
      v65 = v58;
    }

    else
    {
      v65 = v58->first;
    }

    if (v64 < 0)
    {
      v64 = v58->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v65, &v64[v65], __p, 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    v66 = buf[0].__begin_;
    if (!v63)
    {
      goto LABEL_258;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = p_end_cap;
    }

    if (*p_matched)
    {
      v68 = v205;
      if (buf[0].__end_ != buf[0].__begin_)
      {
        v68 = buf[0].__begin_;
      }

      i = v68->first.__i_;
      p_second = &buf[0].__begin_->second;
      if (buf[0].__end_ == buf[0].__begin_)
      {
        p_second = p_end;
      }

      v71 = p_second->__i_;
      v72 = p_second->__i_ - i;
      if (v72 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v72 > 0x16)
      {
        if ((v72 | 7) == 0x17)
        {
          v160 = 25;
        }

        else
        {
          v160 = (v72 | 7) + 1;
        }

        p_dst = operator new(v160);
        *(&__dst + 1) = v72;
        v210 = v160 | 0x8000000000000000;
        *&__dst = p_dst;
        if (v71 == i)
        {
          goto LABEL_125;
        }
      }

      else
      {
        HIBYTE(v210) = LOBYTE(p_second->__i_) - i;
        p_dst = &__dst;
        if (v71 == i)
        {
LABEL_125:
          *(p_dst + v72) = 0;
          v74 = HIBYTE(v210);
          v76 = *(&__dst + 1);
          v75 = __dst;
          goto LABEL_127;
        }
      }

      memmove(p_dst, i, v72);
      goto LABEL_125;
    }

    v76 = 0;
    v75 = 0;
    v74 = 0;
    __dst = 0uLL;
    v210 = 0;
LABEL_127:
    if ((v74 & 0x80u) == 0)
    {
      v77 = &__dst;
    }

    else
    {
      v77 = v75;
    }

    if ((v74 & 0x80u) == 0)
    {
      v78 = v74;
    }

    else
    {
      v78 = v76;
    }

    if (v78 > 0x20)
    {
      if (v78 <= 0x40)
      {
        if ((v74 & 0x80u) == 0)
        {
          v75 = &__dst;
        }

        v82 = *(v75 + 3);
        v83 = *(v77 + v78 - 16);
        v84 = *v77 - 0x3C5A37A36834CED9 * (v83 + v78);
        v85 = __ROR8__(v84 + v82, 52);
        v87 = *(v75 + 1);
        v86 = *(v75 + 2);
        v88 = v84 + v87;
        v89 = __ROR8__(v88, 7);
        v90 = v88 + v86;
        v91 = v89 + __ROR8__(*v77 - 0x3C5A37A36834CED9 * (v83 + v78), 37) + v85 + __ROR8__(v90, 31);
        v92 = *(v77 + v78 - 32) + v86;
        v93 = *(v77 + v78 - 8) + v82;
        v94 = __ROR8__(v93 + v92, 52);
        v95 = __ROR8__(v92, 37);
        v96 = *(v77 + v78 - 24) + v92;
        v97 = __ROR8__(v96, 7);
        v98 = v96 + v83;
        v99 = v98 + v93;
        v100 = v90 + v82 + v95 + v97 + v94 + __ROR8__(v98, 31);
        v101 = 0x9AE16A3B2F90404FLL;
        v102 = v91 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v99 + v91) - 0x651E95C4D06FBFB1 * v100) ^ ((0xC3A5C85C97CB3127 * (v99 + v91) - 0x651E95C4D06FBFB1 * v100) >> 47));
        goto LABEL_145;
      }

      v109 = *(v77 + v78 - 48);
      v110 = *(v77 + v78 - 40);
      v111 = *(v77 + v78 - 24);
      v112 = *(v77 + v78 - 56);
      v114 = *(v77 + v78 - 16);
      v113 = *(v77 + v78 - 8);
      v115 = v112 + v114;
      v116 = 0x9DDFEA08EB382D69 * (v111 ^ ((0x9DDFEA08EB382D69 * (v111 ^ (v109 + v78))) >> 47) ^ (0x9DDFEA08EB382D69 * (v111 ^ (v109 + v78))));
      v117 = 0x9DDFEA08EB382D69 * (v116 ^ (v116 >> 47));
      v118 = *(v77 + v78 - 64) + v78;
      v119 = v109 + v112 + v118;
      v120 = __ROR8__(v119, 44) + v118;
      v121 = __ROR8__(v118 + v110 + v117, 21);
      v122 = v119 + v110;
      v123 = v120 + v121;
      v124 = v115 + *(v77 + v78 - 32) - 0x4B6D499041670D8DLL;
      v125 = v111 + v114 + v124;
      v126 = v125 + v113;
      v127 = __ROR8__(v125, 44) + v124 + __ROR8__(v124 + v110 + v113, 21);
      v128 = v77 + 2;
      v129 = *v77 - 0x4B6D499041670D8DLL * v110;
      v130 = -((v78 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v131 = *(v128 - 3);
        v132 = v129 + v122 + v115 + v131;
        v133 = v128[2];
        v134 = v128[3];
        v135 = v128[1];
        v115 = v135 + v122 - 0x4B6D499041670D8DLL * __ROR8__(v115 + v123 + v133, 42);
        v136 = v117 + v126;
        v137 = *(v128 - 2);
        v138 = *(v128 - 1);
        v139 = *(v128 - 4) - 0x4B6D499041670D8DLL * v123;
        v140 = v139 + v126 + v138;
        v141 = v139 + v131 + v137;
        v122 = v141 + v138;
        v142 = __ROR8__(v141, 44) + v139;
        v143 = (0xB492B66FBE98F273 * __ROR8__(v132, 37)) ^ v127;
        v129 = 0xB492B66FBE98F273 * __ROR8__(v136, 33);
        v123 = v142 + __ROR8__(v140 + v143, 21);
        v144 = v129 + v127 + *v128;
        v126 = v135 + v133 + v144 + v134;
        v127 = __ROR8__(v135 + v133 + v144, 44) + v144 + __ROR8__(v115 + v137 + v144 + v134, 21);
        v128 += 8;
        v117 = v143;
        v130 += 64;
      }

      while (v130);
      v145 = v129 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v127 ^ ((0x9DDFEA08EB382D69 * (v127 ^ v123)) >> 47) ^ (0x9DDFEA08EB382D69 * (v127 ^ v123)))) ^ ((0x9DDFEA08EB382D69 * (v127 ^ ((0x9DDFEA08EB382D69 * (v127 ^ v123)) >> 47) ^ (0x9DDFEA08EB382D69 * (v127 ^ v123)))) >> 47));
      v146 = 0x9DDFEA08EB382D69 * (v145 ^ (v143 - 0x4B6D499041670D8DLL * (v115 ^ (v115 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v126 ^ ((0x9DDFEA08EB382D69 * (v126 ^ v122)) >> 47) ^ (0x9DDFEA08EB382D69 * (v126 ^ v122)))) ^ ((0x9DDFEA08EB382D69 * (v126 ^ ((0x9DDFEA08EB382D69 * (v126 ^ v122)) >> 47) ^ (0x9DDFEA08EB382D69 * (v126 ^ v122)))) >> 47))));
      v81 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v145 ^ (v146 >> 47) ^ v146)) ^ ((0x9DDFEA08EB382D69 * (v145 ^ (v146 >> 47) ^ v146)) >> 47));
    }

    else
    {
      if (v78 > 0x10)
      {
        v103 = 0xB492B66FBE98F273 * *v77;
        if ((v74 & 0x80u) == 0)
        {
          v75 = &__dst;
        }

        v104 = *(v75 + 1);
        v105 = __ROR8__(0x9AE16A3B2F90404FLL * *(v77 + v78 - 8), 30) + __ROR8__(v103 - v104, 43) - 0x3C5A37A36834CED9 * *(v77 + v78 - 16);
        v106 = v103 + v78 + __ROR8__(v104 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v77 + v78 - 8);
        v107 = v105 ^ v106;
        v101 = 0x9DDFEA08EB382D69;
        v108 = v106 ^ ((0x9DDFEA08EB382D69 * v107) >> 47) ^ (0x9DDFEA08EB382D69 * v107);
        goto LABEL_144;
      }

      if (v78 >= 9)
      {
        v79 = *(v77 + v78 - 8);
        v80 = __ROR8__(v79 + v78, v78);
        v81 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v80 ^ ((0x9DDFEA08EB382D69 * (v80 ^ *v77)) >> 47) ^ (0x9DDFEA08EB382D69 * (v80 ^ *v77)))) ^ ((0x9DDFEA08EB382D69 * (v80 ^ ((0x9DDFEA08EB382D69 * (v80 ^ *v77)) >> 47) ^ (0x9DDFEA08EB382D69 * (v80 ^ *v77)))) >> 47))) ^ v79;
        goto LABEL_149;
      }

      if (v78 >= 4)
      {
        v161 = *(v77 + v78 - 4);
        v101 = 0x9DDFEA08EB382D69;
        v162 = 0x9DDFEA08EB382D69 * ((v78 + (8 * *v77)) ^ v161);
        v108 = v161 ^ (v162 >> 47) ^ v162;
LABEL_144:
        v102 = 0x9DDFEA08EB382D69 * v108;
LABEL_145:
        v81 = (v102 ^ (v102 >> 47)) * v101;
        goto LABEL_149;
      }

      v81 = 0x9AE16A3B2F90404FLL;
      if (v78)
      {
        v181 = (0xC949D7C7509E6557 * (v78 | (4 * *(v77 + v78 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v77 | (*(v77 + (v78 >> 1)) << 8)));
        v81 = 0x9AE16A3B2F90404FLL * (v181 ^ (v181 >> 47));
      }
    }

LABEL_149:
    v147 = *(&v224 + 1);
    if (!*(&v224 + 1))
    {
      v149 = 0xAAAAAAAAAAAAAAAALL;
LABEL_191:
      v163 = operator new(0x28uLL);
      *__p = v163;
      *&__p[8] = &v224;
      *&__p[16] = 1;
      *v163 = 0;
      v163[1] = v81;
      *(v163 + 1) = __dst;
      v163[4] = v210;
      __dst = 0uLL;
      v210 = 0;
      v164 = (*(&v225 + 1) + 1);
      if (v147 && (*&v226 * v147) >= v164)
      {
        v81 = v149;
        goto LABEL_252;
      }

      v165 = (v147 & (v147 - 1)) != 0;
      if (v147 < 3)
      {
        v165 = 1;
      }

      v166 = v165 | (2 * v147);
      v167 = vcvtps_u32_f32(v164 / *&v226);
      if (v166 <= v167)
      {
        prime = v167;
      }

      else
      {
        prime = v166;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v147 = *(&v224 + 1);
      }

      if (prime <= v147)
      {
        if (prime >= v147)
        {
          goto LABEL_240;
        }

        v177 = vcvtps_u32_f32(*(&v225 + 1) / *&v226);
        if (v147 < 3 || (v178 = vcnt_s8(v147), v178.i16[0] = vaddlv_u8(v178), v178.u32[0] > 1uLL))
        {
          v177 = std::__next_prime(v177);
        }

        else
        {
          v179 = 1 << -__clz(v177 - 1);
          if (v177 >= 2)
          {
            v177 = v179;
          }
        }

        if (prime <= v177)
        {
          prime = v177;
        }

        if (prime >= v147)
        {
          v147 = *(&v224 + 1);
          v183 = *(&v224 + 1) - 1;
          if ((*(&v224 + 1) & (*(&v224 + 1) - 1)) != 0)
          {
LABEL_250:
            if (v81 >= v147)
            {
              v81 %= v147;
            }

LABEL_252:
            v185 = v224;
            v186 = *(v224 + 8 * v81);
            if (v186)
            {
              *v163 = *v186;
            }

            else
            {
              *v163 = v225;
              *&v225 = v163;
              *(v185 + 8 * v81) = v206;
              if (!*v163)
              {
LABEL_255:
                ++*(&v225 + 1);
                if ((v210 & 0x8000000000000000) != 0)
                {
                  goto LABEL_256;
                }

                goto LABEL_257;
              }

              v187 = *(*v163 + 8);
              if ((v147 & (v147 - 1)) != 0)
              {
                if (v187 >= v147)
                {
                  v187 %= v147;
                }

                v186 = (v185 + 8 * v187);
              }

              else
              {
                v186 = (v185 + 8 * (v187 & (v147 - 1)));
              }
            }

            *v186 = v163;
            goto LABEL_255;
          }

LABEL_241:
          v81 &= v183;
          goto LABEL_252;
        }

        if (!prime)
        {
          v182 = v224;
          *&v224 = 0;
          if (v182)
          {
            operator delete(v182);
          }

          v147 = 0;
          *(&v224 + 1) = 0;
          v183 = -1;
          goto LABEL_241;
        }
      }

      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v169 = operator new(8 * prime);
      v170 = v224;
      *&v224 = v169;
      if (v170)
      {
        operator delete(v170);
        v169 = v224;
      }

      *(&v224 + 1) = prime;
      bzero(v169, 8 * prime);
      v171 = v225;
      if (!v225)
      {
LABEL_249:
        v147 = prime;
        v183 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      v172 = *(v225 + 8);
      v173 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v174 = v172 & v173;
        *(v169 + v174) = v206;
        for (j = *v171; *v171; j = *v171)
        {
          v176 = j[1] & v173;
          if (v176 == v174)
          {
            v171 = j;
          }

          else if (*(v169 + v176))
          {
            *v171 = *j;
            *j = **(v169 + v176);
            **(v169 + v176) = j;
          }

          else
          {
            *(v169 + v176) = v171;
            v171 = j;
            v174 = v176;
          }
        }

        goto LABEL_249;
      }

      if (v172 < prime)
      {
        *(v169 + v172) = v206;
        v180 = *v171;
        if (*v171)
        {
          goto LABEL_244;
        }

        goto LABEL_239;
      }

      v172 %= prime;
      *(v169 + v172) = v206;
      v180 = *v171;
      if (!*v171)
      {
LABEL_239:
        v147 = prime;
LABEL_240:
        v183 = v147 - 1;
        if ((v147 & (v147 - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      while (1)
      {
LABEL_244:
        v184 = v180[1];
        if (v184 >= prime)
        {
          v184 %= prime;
        }

        if (v184 == v172)
        {
          goto LABEL_243;
        }

        if (*(v169 + v184))
        {
          *v171 = *v180;
          *v180 = **(v169 + v184);
          **(v169 + v184) = v180;
          v180 = v171;
LABEL_243:
          v171 = v180;
          v180 = *v180;
          if (!v180)
          {
            goto LABEL_249;
          }
        }

        else
        {
          *(v169 + v184) = v171;
          v171 = v180;
          v180 = *v180;
          v172 = v184;
          if (!v180)
          {
            goto LABEL_249;
          }
        }
      }
    }

    v148 = vcnt_s8(*(&v224 + 8));
    v148.i16[0] = vaddlv_u8(v148);
    if (v148.u32[0] > 1uLL)
    {
      v149 = v81;
      if (v81 >= *(&v224 + 1))
      {
        v149 = v81 % *(&v224 + 1);
      }
    }

    else
    {
      v149 = (*(&v224 + 1) - 1) & v81;
    }

    v150 = *(v224 + 8 * v149);
    if (!v150)
    {
      goto LABEL_191;
    }

    v151 = *v150;
    if (!*v150)
    {
      goto LABEL_191;
    }

    if (v148.u32[0] < 2uLL)
    {
      v203 = v74;
      while (1)
      {
        v156 = v151[1];
        if (v156 == v81)
        {
          v157 = *(v151 + 39);
          v158 = v157;
          if (v157 < 0)
          {
            v157 = v151[3];
          }

          if (v157 == v78)
          {
            v159 = v158 >= 0 ? (v151 + 2) : v151[2];
            if (!memcmp(v159, v77, v78))
            {
              if ((v203 & 0x80) != 0)
              {
                goto LABEL_256;
              }

              goto LABEL_257;
            }
          }
        }

        else if ((v156 & (v147 - 1)) != v149)
        {
          goto LABEL_191;
        }

        v151 = *v151;
        if (!v151)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v152 = v151[1];
      if (v152 == v81)
      {
        break;
      }

      if (v152 >= v147)
      {
        v152 %= v147;
      }

      if (v152 != v149)
      {
        goto LABEL_191;
      }

LABEL_160:
      v151 = *v151;
      if (!v151)
      {
        goto LABEL_191;
      }
    }

    v153 = *(v151 + 39);
    v154 = v153;
    if (v153 < 0)
    {
      v153 = v151[3];
    }

    if (v153 != v78)
    {
      goto LABEL_160;
    }

    v155 = v154 >= 0 ? (v151 + 2) : v151[2];
    if (memcmp(v155, v77, v78))
    {
      goto LABEL_160;
    }

    if ((v74 & 0x80) != 0)
    {
LABEL_256:
      operator delete(__dst);
    }

LABEL_257:
    v66 = buf[0].__begin_;
    p_end_cap = v207;
    v57 = v208;
LABEL_258:
    if (v66)
    {
      buf[0].__end_ = v66;
      operator delete(v66);
    }

    if (++v58 != v57)
    {
      continue;
    }

    break;
  }

LABEL_268:
  v188 = *(&v225 + 1);
  v189 = v221;
  if (v221 && !atomic_fetch_add((v221 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v189->__on_zero_shared)(v189);
    std::__shared_weak_count::__release_weak(v189);
  }

  std::locale::~locale(v218);
  v190 = v223;
  v191 = v201;
  if (v223 && !atomic_fetch_add((v223 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v190->__on_zero_shared)(v190);
    std::__shared_weak_count::__release_weak(v190);
  }

  std::locale::~locale(v222);
  operator delete(v191);
  v192 = v225;
  if (v225)
  {
    do
    {
      v200 = *v192;
      if (*(v192 + 39) < 0)
      {
        operator delete(v192[2]);
      }

      operator delete(v192);
      v192 = v200;
    }

    while (v200);
  }

  v193 = v224;
  *&v224 = 0;
  if (v193)
  {
    operator delete(v193);
  }

  v194 = v227;
  if (v227)
  {
    v195 = v228;
    v196 = v227;
    if (v228 != v227)
    {
      do
      {
        v197 = *(v195 - 1);
        v195 -= 3;
        if (v197 < 0)
        {
          operator delete(*v195);
        }
      }

      while (v195 != v194);
      v196 = v227;
    }

    v228 = v194;
    operator delete(v196);
  }

  v198 = *MEMORY[0x29EDCA608];
  return v188;
}