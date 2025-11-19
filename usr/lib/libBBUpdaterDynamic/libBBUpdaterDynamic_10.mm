unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(uint64_t a1, void *__s, unsigned __int8 *a3)
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
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v9);
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
      return v10;
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
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_1F5EFED60;
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
    *v21 = &unk_1F5EFEDA8;
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
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
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
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
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
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_1F5EFED60;
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
    *v21 = &unk_1F5EFEDA8;
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
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          first = v14->__end_->__first_;
          *v16 = &unk_1F5EFE928;
          *(v16 + 1) = first;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = v14->__end_->__first_;
          *v16 = &unk_1F5EFE928;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 0;
        }

        v14->__end_->__first_ = v16;
        v14->__end_ = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_1F5EFE898;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    end->__first_ = v9;
    v7->__end_ = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_1F5EFE8E0;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.__loop_count_ = v29;
    *&v35.__start_.__cntrl_ = v29;
    *&v35.__traits_.__loc_.__locale_ = v29;
    *&v35.__traits_.__col_ = v29;
    v31 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
    v33 = a1;
    v35.__flags_ = a1->__flags_;
    v34 = a3;
    v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v31 + 3, a3);
    LODWORD(v31) = v35.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v33, &v35, 1, v33->__marked_count_);
    v33->__marked_count_ += v31;
    if (v27 == v34 || *v27 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35.__loop_count_ = v21;
  *&v35.__start_.__cntrl_ = v21;
  *&v35.__traits_.__loc_.__locale_ = v21;
  *&v35.__traits_.__col_ = v21;
  v23 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
  v25 = a1;
  v35.__flags_ = a1->__flags_;
  v26 = a3;
  v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v23 + 3, a3);
  LODWORD(v23) = v35.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v25, &v35, 0, v25->__marked_count_);
  v25->__marked_count_ += v23;
  if (v27 == v26 || *v27 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_32:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v35.__traits_.__loc_);
  return v27 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low != 40)
    {
      if (locale_low == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = &unk_1F5EFE9B8;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return (&this->__traits_.__loc_.__locale_ + 1);
      }

      if (locale_low - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    v14 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) != a3)
    {
      if ((&this->__traits_.__loc_.__locale_ + 2) != a3 && *v14 == 63 && BYTE2(this->__traits_.__loc_.__locale_) == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &this->__traits_.__loc_.__locale_ + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return (v18 + 1);
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = &unk_1F5EFEBF8;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (*v31 == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = &unk_1F5EFEC40;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (LOBYTE(this->__traits_.__loc_.__locale_) > 0x5Bu)
  {
    if (locale_low != 92)
    {
      if (locale_low == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      return (&this->__traits_.__loc_.__locale_ + 2);
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = &this->__traits_.__loc_.__locale_ + 2;
      if ((&this->__traits_.__loc_.__locale_ + 2) == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v9;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          if (++v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return this;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (locale_low != 91)
  {
    if (locale_low == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, this, a3);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
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
      goto LABEL_23;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      goto LABEL_23;
    }

    do
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v7, a3, v8);
      v10 = v9 == v7;
      v7 = v9;
    }

    while (!v10);
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    if (*v9 == 45)
    {
      v11 = v9;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      v9 = v11 + 1;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v9 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
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
          v18 = a2;
          v19 = 12;
          goto LABEL_80;
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
          v18 = a2;
          v19 = 10;
          goto LABEL_80;
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
            v18 = a2;
            v19 = 0;
            goto LABEL_80;
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
          if (a2 + 1 == a3)
          {
            goto LABEL_96;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
          }

          v7 = v6 & 0x1F;
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

            *a4 = v7;
            *(a4 + 1) = 0;
            return a2 + 2;
          }

          else
          {
            v20 = a2;
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
            return v20 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 13;
        goto LABEL_80;
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
        v18 = a2;
        v19 = 9;
        goto LABEL_80;
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

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_96;
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

    v18 = a2;
    v19 = v4;
LABEL_80:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
    return v18 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v10 = *a2;
    v11 = -48;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
    {
      v10 |= 0x20u;
      if ((v10 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v11 = -87;
    }

    v5 = 16 * (v11 + v10);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v12 = a2[1];
    v13 = -48;
    if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
    {
      v12 |= 0x20u;
      if ((v12 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v13 = -87;
    }

    if (a2 + 2 != a3)
    {
      v14 = a2[2];
      v15 = -48;
      if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v14 |= 0x20u;
      if ((v14 - 97) < 6)
      {
        v15 = -87;
LABEL_56:
        v16 = v14 + 16 * (v5 + v13 + v12) + v15;
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

          *a4 = v16;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v17 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
        return v17 + 3;
      }
    }

LABEL_96:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v18 = a2;
    v19 = 11;
    goto LABEL_80;
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

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = *a2;
  if (v4 == 93)
  {
    return;
  }

  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if (a2 + 1 == a3 || v4 != 91)
  {
    goto LABEL_23;
  }

  v8 = a2[1];
  if (v8 != 46)
  {
    if (v8 != 58)
    {
      if (v8 == 61)
      {
        std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v7 = 0;
LABEL_23:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_35;
    }

    if (a3 - (a2 + 2) >= 2)
    {
      v9 = a3 - a2 - 4;
      v10 = a2 + 2;
      v11 = a2 + 3;
      if (a2[2] != 58)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (*v11 == 93)
      {
        if (v10 != a3)
        {
          v25 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2 + 2, v10, *(a1 + 24) & 1);
          if (!v25)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          *(a4 + 160) |= v25;
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_70;
          }

          return;
        }
      }

      else
      {
LABEL_13:
        while (v9)
        {
          --v9;
          v10 = v11;
          v12 = *v11++;
          if (v12 == 58)
          {
            goto LABEL_12;
          }
        }
      }
    }

LABEL_88:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 - (a2 + 2) < 2)
  {
    goto LABEL_88;
  }

  v13 = a3 - a2 - 4;
  v14 = a2 + 2;
  v15 = a2 + 3;
  if (a2[2] != 46)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v15 != 93)
  {
LABEL_19:
    while (v13)
    {
      --v13;
      v14 = v15;
      v16 = *v15++;
      if (v16 == 46)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_88;
  }

  if (v14 == a3)
  {
    goto LABEL_88;
  }

  v19 = a1;
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2 + 2, v14, &v37);
  a1 = v19;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    a1 = v19;
  }

  v36 = v38;
  *__p = v37;
  v20 = HIBYTE(v38);
  v7 = SHIBYTE(v38);
  v21 = *(&v37 + 1);
  if (v38 < 0)
  {
    v20 = __p[1];
  }

  if ((v20 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  a2 = v14 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  if (v38 >= 0)
  {
    v21 = SHIBYTE(v38);
  }

  if (v21)
  {
    v18 = v14 + 2;
    if (a2 == a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_35:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v22) = *a2;
LABEL_44:
    if (v7 < 0)
    {
      v26 = __p[0];
      __p[1] = 1;
      *__p[0] = v22;
      v26[1] = 0;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HIBYTE(v36) = 1;
      LOWORD(__p[0]) = v22;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v22 = *a2;
  if (v22 != 92)
  {
    goto LABEL_44;
  }

  v23 = a1;
  if (v17)
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, a2 + 1, a3, __p);
  }

  else
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, a2 + 1, a3, __p, a4);
  }

  v18 = v24;
  a1 = v23;
  if (v18 == a3)
  {
LABEL_52:
    if (SHIBYTE(v36) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_69;
      }

      if (__p[1] != 1)
      {
        v28 = __p[0];
LABEL_68:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v28, *(v28 + 1));
LABEL_69:
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v28 = __p[0];
    }

    else
    {
      if (!HIBYTE(v36))
      {
        goto LABEL_69;
      }

      v28 = __p;
      if (HIBYTE(v36) != 1)
      {
        goto LABEL_68;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v28);
    goto LABEL_69;
  }

LABEL_51:
  v27 = *v18;
  if (v27 == 93)
  {
    goto LABEL_52;
  }

  v29 = v18 + 1;
  if (v18 + 1 == a3 || v27 != 45 || *v29 == 93)
  {
    goto LABEL_52;
  }

  v37 = 0uLL;
  v38 = 0;
  v30 = v18 + 2;
  if (v18 + 2 != a3 && *v29 == 91 && *v30 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v18 + 3, a3, &v37);
    goto LABEL_79;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v29) = *v29;
    goto LABEL_77;
  }

  LODWORD(v29) = *v29;
  if (v29 != 92)
  {
LABEL_77:
    HIBYTE(v38) = 1;
    LOWORD(v37) = v29;
    goto LABEL_79;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v30, a3, &v37);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v30, a3, &v37, a4);
  }

LABEL_79:
  *v33 = *__p;
  v34 = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  *v31 = v37;
  v32 = v38;
  v37 = 0uLL;
  v38 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v33, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_86:
      operator delete(v37);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_70;
      }

      return;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if (SHIBYTE(v36) < 0)
  {
LABEL_70:
    operator delete(__p[0]);
  }
}

void sub_1E52C60CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_38;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_38:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v7 == a3)
  {
    goto LABEL_38;
  }

  memset(v19, 170, sizeof(v19));
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, v19);
  v10 = SHIBYTE(v19[2]);
  if ((SHIBYTE(v19[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v19[2]))
    {
      memset(__p, 170, sizeof(__p));
      v11 = v19;
      goto LABEL_13;
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v19[1];
  if (!v19[1])
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  v11 = v19[0];
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, v10 + v11, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_15:
      v12 = *(a4 + 144);
      if (v12 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
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
          v13 = *__p;
          *(v12 + 16) = __p[2];
          *v12 = v13;
        }

        *(a4 + 144) = v12 + 24;
        *(a4 + 144) = v12 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v19[2]);
  if (SHIBYTE(v19[2]) < 0)
  {
    v14 = v19[1];
  }

  if (v14 == 2)
  {
    v16 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v16 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v16, *(v16 + 1));
  }

  else
  {
    if (v14 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v15 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v15 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v15);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
    if (SHIBYTE(v19[2]) < 0)
    {
      goto LABEL_37;
    }

    return v7 + 2;
  }

LABEL_32:
  if ((SHIBYTE(v19[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_37:
  operator delete(v19[0]);
  return v7 + 2;
}

void sub_1E52C637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
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

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
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

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
          return a2 + 1;
        }
      }

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

    if (v4 == 110)
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
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
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

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v9;
  }

  return result;
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
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
    memcpy(v8, a2, v4);
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

void sub_1E52C6CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = (result + 2);
      if ((*(a1 + 24) & 2) != 0)
      {
        v10 = *(a1 + 28);
      }

      else
      {
        v9 = operator new(0x18uLL);
        v10 = *(a1 + 28) + 1;
        *(a1 + 28) = v10;
        v11 = *(a1 + 56);
        v12 = *(v11 + 8);
        *v9 = &unk_1F5EFEBF8;
        v9[1] = v12;
        *(v9 + 4) = v10;
        *(v11 + 8) = v9;
        *(a1 + 56) = v9;
      }

      while (v8 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v8, a3);
        if (v16 == v8)
        {
          break;
        }

        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v16, a3, v14, (v15 + 1), (*(a1 + 28) + 1));
        v18 = v17 == v8;
        v8 = v17;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v17 = v8;
LABEL_20:
      if (v17 == a3 || (&v17->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v17->__traits_.__loc_.__locale_) != 92 || BYTE1(v17->__traits_.__loc_.__locale_) != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      result = v17 + 2 * (BYTE1(v17->__traits_.__loc_.__locale_) == 41);
      if ((*(a1 + 24) & 2) == 0)
      {
        v19 = result;
        v20 = operator new(0x18uLL);
        result = v19;
        v21 = *(a1 + 56);
        v22 = *(v21 + 8);
        *v20 = &unk_1F5EFEC40;
        v20[1] = v22;
        *(v20 + 4) = v10;
        *(v21 + 8) = v20;
        *(a1 + 56) = v20;
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) > *(a1 + 28))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      v13 = result;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
      return v13 + 2;
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = this;
  if (this == a3)
  {
    return v6;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (v6 + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92 || BYTE1(this->__traits_.__loc_.__locale_) != 123)
  {
    return v6;
  }

  v9 = (this + 2 * (BYTE1(this->__traits_.__loc_.__locale_) == 123));
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = (&v9->__traits_.__loc_.__locale_ + 1);
  if ((&v9->__traits_.__loc_.__locale_ + 1) != a3)
  {
    while (1)
    {
      v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      v12 = (v12 + 1);
      if (v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = (&v12->__traits_.__loc_.__locale_ + 1);
  v15 = LOBYTE(v12->__traits_.__loc_.__locale_);
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && LOBYTE(v14->__traits_.__loc_.__locale_) == 125)
    {
      v19 = &v12->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v11, a4, __mexp_begin, __mexp_end, 1);
      return v19;
    }

LABEL_42:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v14 != a3 && ((v16 = LOBYTE(v14->__traits_.__loc_.__locale_), (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = (&v12->__traits_.__loc_.__locale_ + 2);
    if ((&v12->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v20 = LOBYTE(v14->__traits_.__loc_.__locale_);
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        v14 = (v14 + 1);
        if (v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || (&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92 || BYTE1(v14->__traits_.__loc_.__locale_) != 125)
  {
    goto LABEL_42;
  }

  v18 = v14 + 2 * (BYTE1(v14->__traits_.__loc_.__locale_) == 125);
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v17, a4, __mexp_begin, __mexp_end, 1);
      return v18;
    }

LABEL_41:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
  return v18;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
        return v4;
      }

      if (v4 == a3 || v3 != 92)
      {
        if (v3 == 46)
        {
          v10 = operator new(0x10uLL);
          end = a1->__end_;
          first = end->__first_;
          v10->__vftable = &unk_1F5EFEDF0;
          v10->__first_ = first;
          end->__first_ = v10;
          a1->__end_ = v10;
          return v4;
        }
      }

      else
      {
        v7 = *v4;
        if ((v7 - 36) <= 0x3A && ((1 << (v7 - 36)) & 0x580000000000441) != 0)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return a2 + 2;
        }
      }
    }
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (this == a3)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
    if (v11 != this)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v9 = (locale_low - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((locale_low - 123) >= 2)
    {
LABEL_23:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
      v11 = &this->__traits_.__loc_.__locale_ + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
  v11 = v10;
  if (v10 == this)
  {
    if (LOBYTE(v10->__traits_.__loc_.__locale_) == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = &unk_1F5EFEDF0;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
  }

LABEL_9:
  if (v11 == this && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_1F5EFE8E0;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = &unk_1F5EFEBF8;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v11 + 1, a3);
        if (v24 == a3 || (v11 = v24, *v24 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = &unk_1F5EFEC40;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_1F5EFE898;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == this)
  {
    return v11;
  }

LABEL_32:
  v28 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v28);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3 || (&this->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(this->__traits_.__loc_.__locale_) != 92)
  {
    return this;
  }

  v3 = BYTE1(this->__traits_.__loc_.__locale_);
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return &v5->__traits_.__loc_.__locale_ + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = &this->__traits_.__loc_.__locale_ + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = this;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return v8 + v10;
  }
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
    goto LABEL_6;
  }

  v13 = this->__end_.__i_;
  if (v13 == v7)
  {
    if (!begin)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  pregex = this->__pregex_;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAA00;
  v23 = v15;
  v20 = 0;
  v22 = 0uLL;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  v24 = 0;
  memset(__p, 0, sizeof(__p));
  v16 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v7, v13, __p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v13, __p, 1);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if ((v16 & 1) == 0)
  {
    v8 = (&v7->first + 1);
    flags = this->__flags_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    v9 = this->__pregex_;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0xAAAAAAAAAAAAAA00;
    v23 = v11;
    v20 = 0;
    v22 = 0uLL;
    LOBYTE(v23) = 0;
    BYTE8(v23) = 0;
    v24 = 0;
    memset(__p, 0, sizeof(__p));
    v12 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v9, v8, v10, __p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, __p, (flags & 0x800) != 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (v12)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    if (!p_match->__matches_.__begin_)
    {
LABEL_17:
      this->__match_.__ready_ = 0;
      *&p_match->__matches_.__begin_ = 0u;
      *&p_match->__matches_.__end_cap_.__value_ = 0u;
      *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
      this->__match_.__prefix_.first.__i_ = 0;
      this->__match_.__prefix_.second.__i_ = 0;
      this->__match_.__prefix_.matched = 0;
      this->__match_.__suffix_.first.__i_ = 0;
      this->__match_.__suffix_.second.__i_ = 0;
      this->__match_.__suffix_.matched = 0;
      this->__match_.__position_start_.__i_ = 0;
      return this;
    }

LABEL_16:
    this->__match_.__matches_.__end_ = begin;
    operator delete(begin);
    p_match->__matches_.__begin_ = 0;
    p_match->__matches_.__end_ = 0;
    p_match->__matches_.__end_cap_.__value_ = 0;
    goto LABEL_17;
  }

  return this;
}

void sub_1E52C7894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BasebandBootLogger::BasebandBootLogger(BasebandBootLogger *this)
{
  v2 = dispatch_queue_create("boot.logger", 0);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 4) = 0;
  }

  *this = &unk_1F5F01B50;
}

void BasebandBootLogger::~BasebandBootLogger(BasebandBootLogger *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void BasebandBootLogger::create(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if ((TelephonyUtilIsInternalBuild() & 1) == 0)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_6:
        if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
        {
          goto LABEL_2;
        }

LABEL_7:
        if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
        {
          return;
        }

        goto LABEL_2;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_2;
    }

    goto LABEL_7;
  }

LABEL_2:
  v4 = &unk_1F5F01BE0;
  v5 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    __p = *(a1 + 16);
  }

  DaleBootLogger::create(&v4, &v7);
  *a2 = v7;
  v4 = &unk_1F5F01BE0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

std::string *BasebandBootLogger::getBootLoggerType(capabilities::debug *a1)
{
  result = capabilities::debug::bootLoggerType(a1);
  if (result == 2)
  {
    v3 = " -o PCIE";
    v4 = a1;
  }

  else
  {
    if (result != 4)
    {
      return result;
    }

    v3 = " -o UART";
    v4 = a1;
  }

  return std::string::append(v4, v3, 8uLL);
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t ICEStateMachineStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 368) = 1;
  v18 = *(a1 + 380);
  _BBUFSDebugPrint("sRegister", "Registering for NVM updates: opt=%p, ari=%u\n", a3, a4, a5, a6, a7, a8, *(a1 + 96));
  v9 = *(a1 + 96);
  v10 = KTLNVMSendRegister();
  _BBUFSDebugPrint("sRegister", "Register call returns %d\n", v11, v12, v13, v14, v15, v16, v10);
  return v10;
}

uint64_t ICEStateMachineStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 368) = 0;
  if (*(a1 + 393))
  {
    return 1;
  }

  _BBUFSDebugPrint("sDeRegister", "De-registering for NVM updates\n", a3, a4, a5, a6, a7, a8, v8);
  v12 = *(a1 + 96);

  return MEMORY[0x1EEE62600](v12);
}

uint64_t ICEStateMachinePerformSnapshot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __s = (a1 + 104);
  v222 = *MEMORY[0x1E69E9840];
  v207 = v211;
  *(a1 + 400) = 0;
  while (1)
  {
    while (1)
    {
      v9 = *(a1 + 376);
      v10 = "Unknown";
      if (v9 <= 2)
      {
        v10 = off_1E876E120[v9];
      }

      v11 = _BBUFSDebugPrint("ICEStateMachinePerformSnapshot", "---------------------%s---------------------\n", a3, a4, a5, a6, a7, a8, v10);
      v18 = *(a1 + 376);
      if (v18 == 2)
      {
        break;
      }

      if (v18 == 1)
      {
        *&v29 = 0xAAAAAAAAAAAAAAAALL;
        *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v29;
        v221 = v29;
        *&v218[16] = v29;
        v219 = v29;
        *v218 = v29;
        v30 = *(a1 + 96);
        if (!KTLNVMReadUpdateHeader())
        {
          v192 = "failed reading update header\n";
LABEL_194:
          _BBUFSDebugPrint("sProcessUpdate", v192, a3, a4, a5, a6, a7, a8, v201);
          goto LABEL_195;
        }

        v31 = DWORD1(v221);
        _BBUFSDebugPrint("sProcessUpdate", "Expecting %d bytes from device\n", a3, a4, a5, a6, a7, a8, SBYTE4(v221));
        v32 = DWORD1(v219);
        v33 = v221;
        v208 = *(a1 + 96);
        v209 = *(a1 + 384);
        *(a1 + 396) = DWORD1(v219);
        v206 = v33;
        v205 = __s;
        _BBUFSDebugPrint("sSaveRecord", "saving file %u to %s, offset %u, size %u\n", v34, v35, v36, v37, v38, v39, v32);
        memset(&v217, 170, sizeof(v217));
        v40 = kBBUFSServerBackupName;
        v41 = strlen(kBBUFSServerBackupName);
        if (v41 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v42 = v41;
        if (v41 >= 0x17)
        {
          if ((v41 | 7) == 0x17)
          {
            v62 = 25;
          }

          else
          {
            v62 = (v41 | 7) + 1;
          }

          v43 = operator new(v62);
          v217.__r_.__value_.__l.__size_ = v42;
          v217.__r_.__value_.__r.__words[2] = v62 | 0x8000000000000000;
          v217.__r_.__value_.__r.__words[0] = v43;
LABEL_51:
          memmove(v43, v40, v42);
          goto LABEL_52;
        }

        *(&v217.__r_.__value_.__s + 23) = v41;
        v43 = &v217;
        if (v41)
        {
          goto LABEL_51;
        }

LABEL_52:
        *(v43 + v42) = 0;
        memset(&v216, 170, sizeof(v216));
        v63 = strlen(__s);
        if (v63 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v64 = v63;
        if (v63 >= 0x17)
        {
          if ((v63 | 7) == 0x17)
          {
            v66 = 25;
          }

          else
          {
            v66 = (v63 | 7) + 1;
          }

          v65 = operator new(v66);
          v216.__r_.__value_.__l.__size_ = v64;
          v216.__r_.__value_.__r.__words[2] = v66 | 0x8000000000000000;
          v216.__r_.__value_.__r.__words[0] = v65;
LABEL_60:
          memcpy(v65, __s, v64);
          goto LABEL_61;
        }

        *(&v216.__r_.__value_.__s + 23) = v63;
        v65 = &v216;
        if (v63)
        {
          goto LABEL_60;
        }

LABEL_61:
        *(v65 + v64) = 0;
        ctu::path_join_impl();
        if (v32 > 1)
        {
          if (v32 != 2)
          {
            if (v32 == 3)
            {
              v32 = 1;
              v73 = "bbpac.der";
              goto LABEL_76;
            }

            goto LABEL_73;
          }

          v32 = 1;
          v73 = "dynamic.nvm";
        }

        else
        {
          if (v32)
          {
            if (v32 == 1)
            {
              v73 = "static.nvm";
              goto LABEL_76;
            }

LABEL_73:
            _BBUFSDebugPrint("sSaveRecord", "failed obtaining true file name\n", v67, v68, v69, v70, v71, v72, v202);
            v32 = 0;
            v73 = 0;
            goto LABEL_76;
          }

          v32 = 1;
          v73 = "calib.nvm";
        }

LABEL_76:
        memset(v215, 170, sizeof(v215));
        v74 = strlen(v73);
        if (v74 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v75 = v74;
        if (v74 >= 0x17)
        {
          if ((v74 | 7) == 0x17)
          {
            v77 = 25;
          }

          else
          {
            v77 = (v74 | 7) + 1;
          }

          v76 = operator new(v77);
          v215[1] = v75;
          v215[2] = (v77 | 0x8000000000000000);
          v215[0] = v76;
LABEL_84:
          memcpy(v76, v73, v75);
          goto LABEL_85;
        }

        HIBYTE(v215[2]) = v74;
        v76 = v215;
        if (v74)
        {
          goto LABEL_84;
        }

LABEL_85:
        *(v75 + v76) = 0;
        memset(v214, 170, sizeof(v214));
        v78 = strlen(__s);
        if (v78 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v79 = v78;
        if (v78 >= 0x17)
        {
          if ((v78 | 7) == 0x17)
          {
            v81 = 25;
          }

          else
          {
            v81 = (v78 | 7) + 1;
          }

          v80 = operator new(v81);
          v214[1] = v79;
          v214[2] = (v81 | 0x8000000000000000);
          v214[0] = v80;
LABEL_93:
          memcpy(v80, __s, v79);
          goto LABEL_94;
        }

        HIBYTE(v214[2]) = v78;
        v80 = v214;
        if (v78)
        {
          goto LABEL_93;
        }

LABEL_94:
        *(v79 + v80) = 0;
        ctu::path_join_impl();
        memset(&v213, 170, sizeof(v213));
        if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v213, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
        }

        else
        {
          v213 = v216;
        }

        ctu::path_join_impl();
        if (!v32)
        {
          goto LABEL_102;
        }

        v88.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v88.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&__dst.st_blksize = v88;
        *__dst.st_qspare = v88;
        *&__dst.st_size = v88;
        __dst.st_ctimespec = v88;
        __dst.st_birthtimespec = v88;
        __dst.st_atimespec = v88;
        __dst.st_mtimespec = v88;
        *&__dst.st_dev = v88;
        *&__dst.st_uid = v88;
        v89 = SHIBYTE(v214[2]) >= 0 ? v214 : v214[0];
        if (!stat(v89, &__dst))
        {
          v108.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v108.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v108;
          *__dst.st_qspare = v108;
          *&__dst.st_size = v108;
          __dst.st_ctimespec = v108;
          __dst.st_birthtimespec = v108;
          __dst.st_atimespec = v108;
          __dst.st_mtimespec = v108;
          *&__dst.st_dev = v108;
          *&__dst.st_uid = v108;
          if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = &v216;
          }

          else
          {
            v109 = v216.__r_.__value_.__r.__words[0];
          }

          if (stat(v109, &__dst))
          {
            if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v116 = &v216;
            }

            else
            {
              LOBYTE(v116) = v216.__r_.__value_.__s.__data_[0];
            }

            _BBUFSDebugPrint("sSaveRecord", "creating backup directory at %s\n", v110, v111, v112, v113, v114, v115, v116);
            if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v117 = &v216;
            }

            else
            {
              v117 = v216.__r_.__value_.__r.__words[0];
            }

            v118 = mkdir(v117, 0x1C0u);
            if (v118)
            {
              v119 = v118;
              v120 = *__error();
              v121 = __error();
              strerror(*v121);
              _BBUFSDebugPrint("sSaveRecord", "failed creating backup directory: %d, %d (%s)\n", v122, v123, v124, v125, v126, v127, v119);
LABEL_149:
              v90 = 0;
LABEL_150:
              v92 = -1;
LABEL_151:
              v154 = 0;
              memset(&__dst, 0, 88);
              goto LABEL_152;
            }
          }

          else if ((__dst.st_mode & 0xF000) != 0x4000)
          {
            _BBUFSDebugPrint("sSaveRecord", "backup dir path exists but is not a directory\n", v110, v111, v112, v113, v114, v115, v202);
            goto LABEL_149;
          }

          if (SHIBYTE(v214[2]) >= 0)
          {
            v142 = v214;
          }

          else
          {
            LOBYTE(v142) = v214[0];
          }

          v143 = &v213;
          if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v143 = v213.__r_.__value_.__r.__words[0];
          }

          v205 = v143;
          _BBUFSDebugPrint("sSaveRecord", "backing up file from %s to %s\n", v110, v111, v112, v113, v114, v115, v142);
          if (SHIBYTE(v214[2]) >= 0)
          {
            v145 = v214;
          }

          else
          {
            v145 = v214[0];
          }

          if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v146 = &v213;
          }

          else
          {
            v146 = v213.__r_.__value_.__r.__words[0];
          }

          rename(v145, v146, v144);
          if (v147 < 0)
          {
            if (SHIBYTE(v214[2]) >= 0)
            {
              v155 = v214;
            }

            else
            {
              LOBYTE(v155) = v214[0];
            }

            v156 = __error();
            strerror(*v156);
            _BBUFSDebugPrint("sSaveRecord", "failed backing up file %s to %s:  %s\n", v157, v158, v159, v160, v161, v162, v155);
            goto LABEL_149;
          }

          v90 = 0;
        }

        else
        {
LABEL_102:
          _BBUFSDebugPrint("sSaveRecord", "nothing to back up\n", v82, v83, v84, v85, v86, v87, v202);
          v90 = 1;
          if (!v32)
          {
            goto LABEL_150;
          }
        }

        if (SHIBYTE(v214[2]) >= 0)
        {
          v91 = v214;
        }

        else
        {
          v91 = v214[0];
        }

        v92 = open(v91, 1537, 384, v205, v206, v31, v207);
        if (v92 < 0)
        {
          if (SHIBYTE(v214[2]) >= 0)
          {
            v128 = v214;
          }

          else
          {
            LOBYTE(v128) = v214[0];
          }

          v129 = __error();
          strerror(*v129);
          _BBUFSDebugPrint("sSaveRecord", "failed opening %s:  %s\n", v130, v131, v132, v133, v134, v135, v128);
          goto LABEL_151;
        }

        v93 = getpwnam("_wireless");
        if (!v93)
        {
          _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v94, v95, v96, v97, v98, v99, v201);
          _BBUFSDebugPrint("sSaveRecord", "failed to get uid and gid information for _wireless\n", v136, v137, v138, v139, v140, v141, v203);
          goto LABEL_151;
        }

        if (fchown(v92, v93->pw_uid, v93->pw_gid))
        {
          v100 = __error();
          v101 = strerror(*v100);
          _BBUFSDebugPrint("sSaveRecord", "failed changing file owner:  %s", v102, v103, v104, v105, v106, v107, v101);
          goto LABEL_151;
        }

        memset(&__dst, 0, 88);
        if (TelephonyUtilTransportCreateWithFD())
        {
          v154 = 1;
        }

        else
        {
          _BBUFSDebugPrint("sSaveRecord", "failed creating telephony util transport\n", v148, v149, v150, v151, v152, v153, v201);
          v154 = 0;
        }

LABEL_152:
        v211[0] = ___ZL11sSaveRecordP16_BBUFSServer_tagPKcjjj_block_invoke;
        v211[1] = &__block_descriptor_tmp_4;
        v211[2] = v73;
        if (!v154)
        {
          goto LABEL_159;
        }

        v163 = ICE_FILER_read();
        if (v163 != v31)
        {
          if (v163 < 0)
          {
            _BBUFSDebugPrint("sSaveRecord", "failed reading file: return code = %d\n", v164, v165, v166, v167, v168, v169, v163);
          }

          else
          {
            _BBUFSDebugPrint("sSaveRecord", "Unexpected data size received.  Got %u, expected %u\n", v164, v165, v166, v167, v168, v169, v163);
          }

LABEL_159:
          v170 = 0;
          if (v92 < 0)
          {
            goto LABEL_166;
          }

          goto LABEL_160;
        }

        v170 = 1;
        if (v92 < 0)
        {
          goto LABEL_166;
        }

LABEL_160:
        if (close(v92))
        {
          v171 = 0;
        }

        else
        {
          v171 = v170;
        }

        if (v171)
        {
          v170 = 1;
        }

        else
        {
          v172 = __error();
          v173 = strerror(*v172);
          _BBUFSDebugPrint("sSaveRecord", "failed closing saved record:  %s\n", v174, v175, v176, v177, v178, v179, v173);
          v170 = 0;
        }

LABEL_166:
        TelephonyUtilTransportFree();
        if (((v90 | v170) & 1) == 0)
        {
          _BBUFSDebugPrint("sSaveRecord", "restoring backup file\n", a3, a4, a5, a6, a7, a8, v201);
          v181 = (v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v213 : v213.__r_.__value_.__r.__words[0];
          v182 = SHIBYTE(v214[2]) >= 0 ? v214 : v214[0];
          rename(v181, v182, v180);
          if (v183 < 0)
          {
            v184 = __error();
            v185 = strerror(*v184);
            _BBUFSDebugPrint("sSaveRecord", "failed restoring backup file %s\n", v186, v187, v188, v189, v190, v191, v185);
          }
        }

        if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v213.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v214[2]) & 0x80000000) == 0)
          {
LABEL_177:
            if ((SHIBYTE(v215[2]) & 0x80000000) == 0)
            {
              goto LABEL_178;
            }

            goto LABEL_184;
          }
        }

        else if ((SHIBYTE(v214[2]) & 0x80000000) == 0)
        {
          goto LABEL_177;
        }

        operator delete(v214[0]);
        if ((SHIBYTE(v215[2]) & 0x80000000) == 0)
        {
LABEL_178:
          if ((SHIBYTE(v216.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(v215[0]);
        if ((SHIBYTE(v216.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_179:
          if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_180;
          }

          goto LABEL_186;
        }

LABEL_185:
        operator delete(v216.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_180:
          if ((v170 & 1) == 0)
          {
            goto LABEL_193;
          }

          goto LABEL_187;
        }

LABEL_186:
        operator delete(v217.__r_.__value_.__l.__data_);
        if ((v170 & 1) == 0)
        {
LABEL_193:
          v192 = "failed saving update\n";
          goto LABEL_194;
        }

LABEL_187:
        *(a1 + 376) = 2;
      }

      else if (v18)
      {
        _BBUFSDebugPrint("ICEStateMachinePerformSnapshot", "unknown state\n", v12, v13, v14, v15, v16, v17, v201);
      }

      else
      {
        LOBYTE(__dst.st_dev) = 0;
        v19 = *(a1 + 96);
        v20 = *(a1 + 388);
        v21 = *(a1 + 393);
        v22 = *(a1 + 392);
        if ((capabilities::updater::shouldOnlySyncDynamicOnShutdown(v11) & v21) == 1 && v20 == 40)
        {
          _BBUFSDebugPrint("sSnapshot", "Only sync dynamic.nvm when shutdown sync is triggered\n", v23, v24, v25, v26, v27, v28, v201);
        }

        if (!KTLNVMSendSnapshot())
        {
          _BBUFSDebugPrint("sSnapshot", "failed sending snapshot command\n", a3, a4, a5, a6, a7, a8, v201);
          goto LABEL_195;
        }

        if (LOBYTE(__dst.st_dev) != 1)
        {
          _BBUFSDebugPrint("sSnapshot", "No update pending, finished with sync\n", a3, a4, a5, a6, a7, a8, v201);
          *(a1 + 376) = 0;
          _BBUFSDebugPrint("ICEStateMachinePerformSnapshot", "device has no further updates\n", v193, v194, v195, v196, v197, v198, v204);
          LOBYTE(updated) = 1;
          goto LABEL_196;
        }

        *(a1 + 376) = 1;
        *(a1 + 400) = 1;
      }
    }

    v44 = *(a1 + 96);
    LOBYTE(v215[0]) = 0;
    updated = KTLNVMSendUpdateAck();
    if ((updated & 1) == 0)
    {
      _BBUFSDebugPrint("sUpdateAck", "failed acknowledging update\n", v45, v46, v47, v48, v49, v50, v201);
    }

    v52 = LOBYTE(v215[0]);
    memset(&__dst, 170, 24);
    v53 = kBBUFSServerBackupName;
    v54 = strlen(kBBUFSServerBackupName);
    if (v54 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v55 = v54;
    if (v54 >= 0x17)
    {
      if ((v54 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v54 | 7) + 1;
      }

      p_dst = operator new(v57);
      __dst.st_ino = v55;
      *&__dst.st_uid = v57 | 0x8000000000000000;
      *&__dst.st_dev = p_dst;
LABEL_29:
      memmove(p_dst, v53, v55);
      goto LABEL_30;
    }

    HIBYTE(__dst.st_gid) = v54;
    p_dst = &__dst;
    if (v54)
    {
      goto LABEL_29;
    }

LABEL_30:
    *(&p_dst->st_dev + v55) = 0;
    memset(v218, 170, 24);
    v58 = strlen(__s);
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v59 = v58;
    if (v58 >= 0x17)
    {
      v61 = (v58 | 7) == 0x17 ? 25 : (v58 | 7) + 1;
      v60 = operator new(v61);
      *&v218[8] = v59;
      *&v218[16] = v61 | 0x8000000000000000;
      *v218 = v60;
    }

    else
    {
      v218[23] = v58;
      v60 = v218;
      if (!v58)
      {
        goto LABEL_39;
      }
    }

    memcpy(v60, __s, v59);
LABEL_39:
    v60[v59] = 0;
    ctu::path_join_impl();
    if (updated && (v52 & 1) == 0)
    {
      v211[0] = 0;
      if (!ctu::fs::read_folder())
      {
        _BBUFSDebugPrint("sUpdateAck", "did not find any backup\n", a3, a4, a5, a6, a7, a8, v201);
      }

      LOBYTE(updated) = 1;
    }

    if ((v218[23] & 0x80000000) == 0)
    {
      break;
    }

    operator delete(*v218);
    if ((SHIBYTE(__dst.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_45:
    operator delete(*&__dst.st_dev);
    if ((updated & 1) == 0)
    {
      goto LABEL_190;
    }

LABEL_71:
    if (!v52)
    {
      goto LABEL_191;
    }

    *(a1 + 376) = 1;
  }

  if (SHIBYTE(__dst.st_gid) < 0)
  {
    goto LABEL_45;
  }

LABEL_70:
  if (updated)
  {
    goto LABEL_71;
  }

LABEL_190:
  if ((v52 & 1) == 0)
  {
LABEL_191:
    *(a1 + 376) = 0;
    _BBUFSDebugPrint("ICEStateMachinePerformSnapshot", "device has no further updates\n", a3, a4, a5, a6, a7, a8, v201);
    goto LABEL_196;
  }

LABEL_195:
  LOBYTE(updated) = 0;
LABEL_196:
  v199 = *MEMORY[0x1E69E9840];
  return updated & 1 | ((*(a1 + 368) & 1) == 0);
}

void sub_1E52C8B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  if (a46 < 0)
  {
    operator delete(v65[18]);
    if ((a53 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a53 & 0x80000000) == 0)
  {
LABEL_3:
    if (a59 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(v65[22]);
  if (a59 < 0)
  {
LABEL_4:
    operator delete(v65[25]);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a65 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v66 - 217) & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(v65[32]);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(v65[28]);
  if ((*(v66 - 217) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t ICEStateMachineSetConfig(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    _BBUFSDebugPrint("ICEStateMachineSetConfig", "failed to set config as one of the args is NULL\n", a3, a4, a5, a6, a7, a8, v39);
    return 0;
  }

  v9 = a3;
  if (!strcasecmp("ForceSync", a2))
  {
    *(a1 + 392) = v9 != 0;
    v36 = "false";
    if (v9)
    {
      v36 = "true";
    }

    _BBUFSDebugPrint("ICEStateMachineSetConfig", "Set forceSync config to %s\n", v11, v12, v13, v14, v15, v16, v36);
  }

  else if (!strcasecmp("ShutdownSync", a2))
  {
    *(a1 + 393) = v9 != 0;
    v37 = "false";
    if (v9)
    {
      v37 = "true";
    }

    _BBUFSDebugPrint("ICEStateMachineSetConfig", "Set shutdownSync config to %s\n", v17, v18, v19, v20, v21, v22, v37);
  }

  else if (!strcasecmp("ARICtxId", a2))
  {
    *(a1 + 380) = v9;
    _BBUFSDebugPrint("ICEStateMachineSetConfig", "Set ARI context ID to %d\n", v23, v24, v25, v26, v27, v28, v9);
  }

  else
  {
    if (!strcasecmp("SyncStatic", a2))
    {
      *(a1 + 388) = 1;
      v38 = "Requested to sync static\n";
    }

    else if (!strcasecmp("SyncDynamic", a2))
    {
      *(a1 + 388) = 2;
      v38 = "Requested to sync dynamic\n";
    }

    else if (!strcasecmp("SyncCalibration", a2))
    {
      *(a1 + 388) = 0;
      v38 = "Requested to sync calibration\n";
    }

    else if (!strcasecmp("SyncFATPCalibration", a2))
    {
      *(a1 + 388) = 3;
      v38 = "Requested to sync FATP-calibration\n";
    }

    else if (!strcasecmp("SyncStaticDynamicCalibration", a2))
    {
      *(a1 + 388) = 30;
      v38 = "Requested to sync static + dynamic + calibration\n";
    }

    else
    {
      if (strcasecmp("SyncStaticDynamic", a2))
      {
        _BBUFSDebugPrint("ICEStateMachineSetConfig", "failed to set config, unrecognized config name '%s'\n", v29, v30, v31, v32, v33, v34, a2);
        return 0;
      }

      *(a1 + 388) = 40;
      v38 = "Requested to sync static + dynamic\n";
    }

    _BBUFSDebugPrint("ICEStateMachineSetConfig", v38, v29, v30, v31, v32, v33, v34, v39);
  }

  return 1;
}

uint64_t ICEStateMachineSetConfigDefaults(uint64_t a1)
{
  *(a1 + 388) = 40;
  *(a1 + 392) = 0;
  *(a1 + 396) = 40;
  *(a1 + 400) = 0;
  return 1;
}

const char *___ZL11sSaveRecordP16_BBUFSServer_tagPKcjjj_block_invoke(const char *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (100 * a2 / a3 > _ZZZL11sSaveRecordP16_BBUFSServer_tagPKcjjjEUb_E19prev_update_percent + 10)
  {
    _ZZZL11sSaveRecordP16_BBUFSServer_tagPKcjjjEUb_E19prev_update_percent = 100 * a2 / a3;
    return _BBUFSDebugPrint("sHandleCaptureProgress", "%s:  %0.1f%c\n", a3, a4, a5, a6, a7, a8, *(result + 4));
  }

  return result;
}

unint64_t eUICC::getEID(capabilities::euicc *a1, uint64_t a2, BBUFeedback *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v6 = capabilities::euicc::supportsLegacyUpdater(a1);
  if (!v6)
  {
    BBUFeedback::handleComment(a3, "Querying vinyl library for EID");
    v9 = dlopen("/usr/local/lib/libVinylNonUpdater.dylib", 1);
    v10 = v9;
    if (!v9)
    {
      goto LABEL_66;
    }

    v11 = dlsym(v9, "VinyleUICCPerformOperationWithTransport");
    if (!v11)
    {
      goto LABEL_60;
    }

    theDict[0] = 0;
    v12 = (v11)(0, theDict, 0, 1, a1);
    BBUFeedback::handleComment(a3, "VinyleUICCPerformOperationWithTransport returned vinylResult %d", v12);
    if (v12 || !theDict[0])
    {
      if (v12 == 26)
      {
        v33 = 126;
      }

      else
      {
        v33 = 107;
      }

      goto LABEL_61;
    }

    Value = CFDictionaryGetValue(theDict[0], @"EID");
    if (!Value || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(Value)))
    {
LABEL_59:
      CFRelease(theDict[0]);
LABEL_60:
      v33 = 0;
LABEL_61:
      dlclose(v10);
      if (!v33)
      {
        goto LABEL_66;
      }

      BBUFeedback::handleComment(a3, "Failed to get EID.");
LABEL_63:
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

LABEL_81:
      operator delete(v50[0]);
      v45 = *MEMORY[0x1E69E9840];
      return v33;
    }

    CStringPtr = CFStringGetCStringPtr(Value, 0x8000100u);
    v16 = strlen(CStringPtr);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      if ((v16 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v16 | 7) + 1;
      }

      v18 = operator new(v38);
      *(&v63 + 1) = v17;
      *&v64 = v38 | 0x8000000000000000;
      *&v63 = v18;
    }

    else
    {
      BYTE7(v64) = v16;
      v18 = &v63;
      if (!v16)
      {
        goto LABEL_56;
      }
    }

    memmove(v18, CStringPtr, v17);
LABEL_56:
    *(v18 + v17) = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    *v50 = v63;
    v51 = v64;
    goto LABEL_59;
  }

  v7 = capabilities::radio::maverick(v6);
  if (v7)
  {
    v8 = operator new(0x138uLL);
    *(v8 + 289) = 0;
    *v8 = &unk_1F5F06980;
    *(v8 + 37) = a1;
    *(v8 + 73) = 255;
    v8[304] = 15;
  }

  else if (capabilities::radio::ice(v7))
  {
    v8 = operator new(0x140uLL);
    eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v8, a1, 255, 0);
  }

  else
  {
    v8 = 0;
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v79[10] = v19;
  v78 = v19;
  *v79 = v19;
  v76 = v19;
  v77 = v19;
  v74 = v19;
  v75 = v19;
  v72 = v19;
  v73 = v19;
  v70 = v19;
  v71 = v19;
  v68 = v19;
  v69 = v19;
  v66 = v19;
  v67 = v19;
  v64 = v19;
  v65 = v19;
  v63 = v19;
  v20 = (*(*v8 + 8))(&v63, v8);
  v21 = capabilities::updater::EUICCVinylSuccessStatus(v20);
  v22 = v21;
  v23 = v63;
  if (v63 != v21)
  {
    if (v79[24] == 1)
    {
      BBUFeedback::handleComment(a3, "Failed to get EID - Adc config mismatch");
      v33 = 126;
    }

    else
    {
      BBUFeedback::handleComment(a3, "Failed to get EID.");
      v33 = 107;
    }

    goto LABEL_47;
  }

  v46 = v63;
  v47 = v21;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60[7] = v24;
  v60[8] = v24;
  v60[5] = v24;
  v60[6] = v24;
  v60[3] = v24;
  v60[4] = v24;
  v60[1] = v24;
  v60[2] = v24;
  v59 = v24;
  v60[0] = v24;
  v57 = v24;
  v58 = v24;
  v55 = v24;
  v56 = v24;
  v53 = v24;
  v54 = v24;
  *theDict = v24;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](theDict);
  v25 = 0;
  v26 = MEMORY[0x1E69E5318];
  do
  {
    v27 = v53;
    v28 = v53;
    *(&v53 + *(v53 - 24) + 8) = *(&v53 + *(v53 - 24) + 8) & 0xFFFFFFB5 | 8;
    v29 = (&v53 + *(v28 - 24));
    if (v29[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v29);
      v30 = std::locale::use_facet(&v62, v26);
      (v30->__vftable[2].~facet_0)(v30, 32);
      std::locale::~locale(&v62);
      v27 = v53;
    }

    v29[1].__fmtflags_ = 48;
    *(&v54 + *(v27 - 24) + 8) = 2;
    MEMORY[0x1E6927100](&v53, *(&v63 + v25++ + 7));
  }

  while (v25 != 16);
  if ((BYTE8(v59) & 0x10) != 0)
  {
    v34 = v59;
    if (v59 < *(&v56 + 1))
    {
      *&v59 = *(&v56 + 1);
      v34 = *(&v56 + 1);
    }

    v35 = v56;
    v31 = v34 - v56;
    if ((v34 - v56) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if ((BYTE8(v59) & 8) == 0)
    {
      v31 = 0;
      HIBYTE(v49) = 0;
      p_dst = &__dst;
      goto LABEL_42;
    }

    v35 = *(&v54 + 1);
    v31 = *(&v55 + 1) - *(&v54 + 1);
    if (*(&v55 + 1) - *(&v54 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_50:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v31 | 7) + 1;
    }

    p_dst = operator new(v36);
    *(&__dst + 1) = v31;
    v49 = v36 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v49) = v31;
    p_dst = &__dst;
    if (!v31)
    {
      goto LABEL_42;
    }
  }

  memmove(p_dst, v35, v31);
LABEL_42:
  *(p_dst + v31) = 0;
  theDict[0] = *MEMORY[0x1E69E54D8];
  v37 = *(MEMORY[0x1E69E54D8] + 72);
  *(theDict + *(theDict[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v33 = &v53 | 0xD08C000000000000;
  *&v53 = v37;
  *(&v53 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
  }

  *(&v53 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v54);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v60);
  v23 = v46;
  v22 = v47;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  *v50 = __dst;
  v51 = v49;
LABEL_47:
  (*(*v8 + 96))(v8);
  if (v23 != v22)
  {
    goto LABEL_63;
  }

LABEL_66:
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    if (HIBYTE(v51))
    {
      v41 = v50;
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  if (!v50[1])
  {
LABEL_73:
    v33 = 107;
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_81;
  }

  v41 = v50[0];
LABEL_71:
  BBUFeedback::handleComment(a3, "EID: %s", v41);
  v42 = operator new(0x18uLL);
  v43 = v42;
  if (SHIBYTE(v51) < 0)
  {
    std::string::__init_copy_ctor_external(v42, v50[0], v50[1]);
  }

  else
  {
    *&v42->__r_.__value_.__l.__data_ = *v50;
    v42->__r_.__value_.__r.__words[2] = v51;
  }

  v44 = *(a2 + 24);
  if (v44)
  {
    if (*(v44 + 23) < 0)
    {
      operator delete(*v44);
    }

    operator delete(v44);
  }

  v33 = 0;
  *(a2 + 24) = v43;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_81;
  }

LABEL_64:
  v39 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_1E52C9844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::locale a59)
{
  operator delete(v59);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUICE16UpdateSource::getMRCFilePath@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v3;
  v28[8] = v3;
  v28[5] = v3;
  v28[6] = v3;
  v28[3] = v3;
  v28[4] = v3;
  v28[1] = v3;
  v28[2] = v3;
  v27 = v3;
  v28[0] = v3;
  *v25 = v3;
  v26 = v3;
  v23 = v3;
  v24 = v3;
  v21 = v3;
  v22 = v3;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v4 = off_1ED944170;
  if (!off_1ED944170)
  {
    v5 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v5);
    v30 = v5;
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F05A00;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v5;
    v7 = off_1ED944178;
    off_1ED944170 = v5;
    off_1ED944178 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_1ED944170;
  }

  v8 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v4, &__p);
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

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "mrc.dat", 7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v12 = BYTE8(v27);
    if ((BYTE8(v27) & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v16 = v27;
    if (v27 < *(&v24 + 1))
    {
      *&v27 = *(&v24 + 1);
      v16 = *(&v24 + 1);
    }

    v15 = &v24;
    goto LABEL_26;
  }

  v12 = BYTE8(v27);
  if ((BYTE8(v27) & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((v12 & 8) == 0)
  {
    v13 = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
    v14 = &__p;
    goto LABEL_35;
  }

  v15 = &v22 + 1;
  v16 = *(&v23 + 1);
LABEL_26:
  v17 = *v15;
  v13 = v16 - *v15;
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v13 | 7) + 1;
    }

    v14 = operator new(v18);
    __p.__r_.__value_.__l.__size_ = v13;
    __p.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v14;
    goto LABEL_34;
  }

  *(&__p.__r_.__value_.__s + 23) = v16 - *v15;
  v14 = &__p;
  if (v13)
  {
LABEL_34:
    memmove(v14, v17, v13);
  }

LABEL_35:
  v14->__r_.__value_.__s.__data_[v13] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __p;
  *&v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v21 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  *(&v21 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v28);
}

void sub_1E52C9CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v19 - 56));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  std::ostringstream::~ostringstream(&a18);
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICE16UpdateSource::getMRCFileName@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[7] = v3;
  v19[8] = v3;
  v19[5] = v3;
  v19[6] = v3;
  v19[3] = v3;
  v19[4] = v3;
  v19[1] = v3;
  v19[2] = v3;
  v19[0] = v3;
  v17 = v3;
  v18 = v3;
  v15 = v3;
  *__p = v3;
  v13 = v3;
  v14 = v3;
  v12 = v3;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "mrc.dat", 7);
  if ((BYTE8(v18) & 0x10) != 0)
  {
    v6 = v18;
    if (v18 < *(&v15 + 1))
    {
      *&v18 = *(&v15 + 1);
      v6 = *(&v15 + 1);
    }

    v7 = v15;
    v4 = v6 - v15;
    if ((v6 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v18) & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v11) = 0;
      p_dst = &__dst;
      goto LABEL_15;
    }

    v7 = *(&v13 + 1);
    v4 = *(&v14 + 1) - *(&v13 + 1);
    if (*(&v14 + 1) - *(&v13 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v4 | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v4;
    v11 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v11) = v4;
  p_dst = &__dst;
  if (v4)
  {
LABEL_14:
    memmove(p_dst, v7, v4);
  }

LABEL_15:
  *(p_dst + v4) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __dst;
  *(a1 + 16) = v11;
  *&v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v12 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v12 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v13);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v19);
}

void sub_1E52C9FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_1E52CA000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

char *BBUICE16UpdateSource::createFromZipFile(BBUICE16UpdateSource *this, BBUZipFile *a2, BBUFeedback *a3)
{
  v5 = operator new(0x150uLL);
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v5[32] = 0;
  *(v5 + 6) = 0;
  *(v5 + 7) = 0;
  *(v5 + 5) = 0;
  *v5 = &unk_1F5F026B0;
  *(v5 + 1) = a2;
  *(v5 + 8) = this;
  v6 = operator new(0x20uLL);
  *v6 = &unk_1F5F011C0;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = this;
  *(v5 + 9) = v6;
  v5[103] = 0;
  v5[80] = 0;
  *(v5 + 26) = 0;
  *(v5 + 14) = 0;
  v5[120] = 0;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *v5 = &unk_1F5F01C18;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 25) = 0;
  v5[208] = 1;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 41) = 0;
  *(v5 + 216) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  BBUICE16UpdateSource::init(v5);
  return v5;
}

void sub_1E52CA128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<BBUZipFile>::~unique_ptr[abi:ne200100](va);
  BBUUpdateSource::~BBUUpdateSource(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

char *BBUICE16UpdateSource::createFromFolder(uint64_t a1, uint64_t a2)
{
  v4 = operator new(0x150uLL);
  v5 = v4;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  v4[32] = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  *(v4 + 5) = 0;
  *v4 = &unk_1F5F026B0;
  *(v4 + 1) = a2;
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 80), *a1, *(a1 + 8));
  }

  else
  {
    *(v4 + 5) = *a1;
    *(v4 + 12) = *(a1 + 16);
  }

  *(v5 + 26) = 0;
  *(v5 + 14) = 0;
  v5[120] = 0;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *v5 = &unk_1F5F01C18;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 25) = 0;
  v5[208] = 1;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 41) = 0;
  *(v5 + 216) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  BBUICE16UpdateSource::init(v5);
  return v5;
}

void sub_1E52CA24C(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  BBUUpdateSource::~BBUUpdateSource(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void BBUICE16UpdateSource::~BBUICE16UpdateSource(BBUICE16UpdateSource *this)
{
  *this = &unk_1F5F01C18;
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 39);
  if (v7)
  {
    v8 = *(this + 40);
    v9 = *(this + 39);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 39);
    }

    *(this + 40) = v7;
    operator delete(v9);
  }

  v11 = *(this + 36);
  if (v11)
  {
    v12 = *(this + 37);
    v13 = *(this + 36);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 8);
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v12 -= 16;
      }

      while (v12 != v11);
      v13 = *(this + 36);
    }

    *(this + 37) = v11;
    operator delete(v13);
  }

  v15 = *(this + 33);
  if (v15)
  {
    v16 = *(this + 34);
    v17 = *(this + 33);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = *(this + 33);
    }

    *(this + 34) = v15;
    operator delete(v17);
  }

  v19 = *(this + 30);
  if (v19)
  {
    v20 = *(this + 31);
    v21 = *(this + 30);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(this + 30);
    }

    *(this + 31) = v19;
    operator delete(v21);
  }

  v23 = *(this + 27);
  if (v23)
  {
    v24 = *(this + 28);
    v25 = *(this + 27);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 8);
        if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v24 -= 16;
      }

      while (v24 != v23);
      v25 = *(this + 27);
    }

    *(this + 28) = v23;
    operator delete(v25);
  }

  *this = &unk_1F5F026B0;
  v27 = *(this + 14);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 16);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 17);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 18);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 19);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v32 = *(this + 9);
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  BBUUpdateSource::~BBUUpdateSource(this);
}

{
  BBUICE16UpdateSource::~BBUICE16UpdateSource(this);

  operator delete(v1);
}

void BBUICE16UpdateSource::init(BBUICE16UpdateSource *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v50 = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (p_p)
  {
    if ((bbufs::prepareDestination(p_p, v7) & 1) == 0)
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v15, v16, v17, v18, v19, v20, v48);
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v8, v9, v10, v11, v12, v13, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v21 = *(this + 39);
  v22 = *(this + 40);
  while (v22 != v21)
  {
    v23 = *(v22 - 1);
    v22 -= 3;
    if (v23 < 0)
    {
      operator delete(*v22);
    }
  }

  *(this + 40) = v21;
  memset(&ff_buffer, 255, 0x4000uLL);
  if (((*(*this + 296))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xABu, "Assertion failure(loadPSIImages() && Error: Failed to load the PSI images!)", v33, v34, v35, v48);
    goto LABEL_49;
  }

  if (((*(*this + 288))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xAEu, "Assertion failure(loadEBLImage() && Error: Failed to load the EBL image!)", v36, v37, v38, v48);
    goto LABEL_49;
  }

  if (((*(*this + 320))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xB1u, "Assertion failure(loadNVMFiles() && Error: Failed to load the NVM image!)", v39, v40, v41, v48);
    goto LABEL_49;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 80, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xB4u, "Assertion failure(loadBINFiles() && Error: Failed to load the BIN image!)", v42, v43, v44, v48);
    goto LABEL_49;
  }

  if (((*(*this + 304))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 78, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xB7u, "Assertion failure(loadELFFiles() && Error: Failed to load the ELF image!)", v45, v46, v47, v48);
LABEL_49:
  }

  if (!MEMORY[0x1E6925FA0]())
  {
    return;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v24 = (**this)(this);
    _BBULog(3, 0, v24, "", "trying to find MRC file\n", v25, v26, v27, v48);
  }

LABEL_34:
  if ((*(*this + 272))(this))
  {
    return;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v28 = (**this)(this);
    _BBULog(3, 0, v28, "", "Error: Failed to load or create new MRC data!\n", v29, v30, v31, v48);
  }
}

void sub_1E52CACC8(_Unwind_Exception *a1)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v1 - 40));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E52CAD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52CAD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void BBUICE16UpdateSource::setSaveImageFilter(void *a1, __int128 **a2)
{
  v4 = (a1 + 39);
  v5 = a1[39];
  v6 = a1[40];
  v7 = v5;
  if (v6 == v5)
  {
    a1[40] = v5;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    if (v10 < 1)
    {
      return;
    }
  }

  else
  {
    do
    {
      v11 = *(v6 - 1);
      v6 -= 3;
      if (v11 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v7 = *v4;
    a1[40] = v5;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - v9;
    if (v8 - v9 < 1)
    {
      return;
    }
  }

  v12 = a1[41];
  if (v12 - v5 >= v10)
  {
    v31 = v5;
    if (v9 != v8)
    {
      v19 = v5;
      do
      {
        while ((*(v9 + 23) & 0x80000000) == 0)
        {
          v20 = *v9;
          v19->__r_.__value_.__r.__words[2] = *(v9 + 2);
          *&v19->__r_.__value_.__l.__data_ = v20;
          ++v19;
          v9 = (v9 + 24);
          v31 = v19;
          if (v9 == v8)
          {
            goto LABEL_23;
          }
        }

        std::string::__init_copy_ctor_external(v19, *v9, *(v9 + 1));
        v9 = (v9 + 24);
        v19 = ++v31;
      }

      while (v9 != v8);
LABEL_23:
      v5 = v19;
    }

    a1[40] = v5;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    v14 = v13 - 0x5555555555555555 * (v10 >> 3);
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v7) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v14)
    {
      v16 = v13 - 0x5555555555555555 * (v10 >> 3);
    }

    if (v15 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = operator new(24 * v17);
    }

    else
    {
      v18 = 0;
    }

    v21 = &v18[24 * v13];
    v29 = v21;
    v30 = &v18[24 * v17];
    v22 = v21 + v10;
    do
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v21, *v9, *(v9 + 1));
      }

      else
      {
        v23 = *v9;
        v21->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v21->__r_.__value_.__l.__data_ = v23;
      }

      ++v21;
      v9 = (v9 + 24);
      v10 -= 24;
    }

    while (v10);
    v24 = a1[40] - v5;
    memcpy(v22, v5, v24);
    a1[40] = v5;
    v25 = a1[39];
    v26 = v5 - v25;
    v27 = v29 - (v5 - v25);
    memcpy(v27, v25, v26);
    v28 = a1[39];
    a1[39] = v27;
    a1[40] = &v22[v24];
    a1[41] = v30;
    if (v28)
    {
      operator delete(v28);
    }
  }
}

void sub_1E52CB00C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v2 + 320) = v3;
  _Unwind_Resume(a1);
}

uint64_t BBUICE16UpdateSource::getProgrammerSource(BBUICE16UpdateSource *this, int a2)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v4 = (**this)(this);
    v13 = *(this + 41);
    _BBULog(3, 0, v4, "", "chipID:0x%X certID:0x%X\n", v5, v6, v7, *(this + 40));
  }

LABEL_5:
  if (*(this + 40) != 104)
  {
    v9 = a2 == 0;
    v10 = 176;
    goto LABEL_9;
  }

  v8 = (*(*this + 336))(this);
  v9 = v8 == 0;
  if (a2)
  {
    v10 = 184;
LABEL_9:
    if (!v9)
    {
      v10 = 168;
    }

    return *(this + v10);
  }

  v12 = 192;
  if (v8)
  {
    v12 = 176;
  }

  return *(this + v12);
}

uint64_t BBUICE16UpdateSource::loadPSIImages(BBUICE16UpdateSource *this)
{
  if (*(this + 21))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xFEu, "Assertion failure(fPSIRamSource == __null)", v32, v33, v34, v68);
    goto LABEL_73;
  }

  if (*(this + 22))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0xFFu, "Assertion failure(fRestorePSIRamSource == __null)", v35, v36, v37, v68);
    goto LABEL_73;
  }

  if (*(this + 23))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x100u, "Assertion failure(fPSIRam2Source == __null)", v38, v39, v40, v68);
    goto LABEL_73;
  }

  if (*(this + 24))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x101u, "Assertion failure(fRestorePSIRam2Source == __null)", v41, v42, v43, v68);
    goto LABEL_73;
  }

  v70 = 11;
  strcpy(__p, "psi_ram.bin");
  v2 = BBUICEUpdateSource::containsFile(this, __p);
  if (v70 < 0)
  {
    v3 = v2;
    operator delete(__p[0]);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else if (!v2)
  {
    goto LABEL_17;
  }

  if (*(this + 21))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x105u, "Assertion failure(fPSIRamSource == __null)", v44, v45, v46, v68);
    goto LABEL_73;
  }

  v70 = 11;
  strcpy(__p, "psi_ram.bin");
  DataSource = BBUICEUpdateSource::createDataSource(this, __p, 0);
  *(this + 21) = DataSource;
  if (v70 < 0)
  {
    operator delete(__p[0]);
    DataSource = *(this + 21);
  }

  if (!DataSource)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x107u, "Assertion failure(fPSIRamSource && Failed to load PSI.)", v47, v48, v49, v68);
    goto LABEL_73;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_17;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v5 = (**this)(this);
    _BBULog(3, 0, v5, "", "Loaded PSI\n", v6, v7, v8, v68);
  }

LABEL_17:
  v70 = 12;
  strcpy(__p, "psi_ram2.bin");
  v9 = BBUICEUpdateSource::containsFile(this, __p);
  if (v70 < 0)
  {
    v10 = v9;
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_29;
    }
  }

  else if (!v9)
  {
    goto LABEL_29;
  }

  if (*(this + 23))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x10Du, "Assertion failure(fPSIRam2Source == __null)", v50, v51, v52, v68);
    goto LABEL_73;
  }

  v70 = 12;
  strcpy(__p, "psi_ram2.bin");
  v11 = BBUICEUpdateSource::createDataSource(this, __p, 0);
  *(this + 23) = v11;
  if (v70 < 0)
  {
    operator delete(__p[0]);
    v11 = *(this + 23);
  }

  if (!v11)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x10Fu, "Assertion failure(fPSIRam2Source && Failed to load PSI2.)", v53, v54, v55, v68);
    goto LABEL_73;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_29;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**this)(this);
    _BBULog(3, 0, v12, "", "Loaded PSI2\n", v13, v14, v15, v68);
  }

LABEL_29:
  v70 = 14;
  strcpy(__p, "restorepsi.bin");
  v16 = BBUICEUpdateSource::containsFile(this, __p);
  if (v70 < 0)
  {
    v17 = v16;
    operator delete(__p[0]);
    if (!v17)
    {
      goto LABEL_41;
    }
  }

  else if (!v16)
  {
    goto LABEL_41;
  }

  if (*(this + 22))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x115u, "Assertion failure(fRestorePSIRamSource == __null)", v56, v57, v58, v68);
    goto LABEL_73;
  }

  v70 = 14;
  strcpy(__p, "restorepsi.bin");
  v18 = BBUICEUpdateSource::createDataSource(this, __p, 0);
  *(this + 22) = v18;
  if (v70 < 0)
  {
    operator delete(__p[0]);
    v18 = *(this + 22);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x117u, "Assertion failure(fRestorePSIRamSource && Failed to load RestorePSI.)", v59, v60, v61, v68);
    goto LABEL_73;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_41;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v19 = (**this)(this);
    _BBULog(3, 0, v19, "", "Loaded RestorePSI\n", v20, v21, v22, v68);
  }

LABEL_41:
  v70 = 15;
  strcpy(__p, "restorepsi2.bin");
  v23 = BBUICEUpdateSource::containsFile(this, __p);
  if (v70 < 0)
  {
    v24 = v23;
    operator delete(__p[0]);
    if (!v24)
    {
      return 1;
    }
  }

  else if (!v23)
  {
    return 1;
  }

  if (*(this + 24))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x11Du, "Assertion failure(fRestorePSIRam2Source == __null)", v62, v63, v64, v68);
    goto LABEL_73;
  }

  v70 = 15;
  strcpy(__p, "restorepsi2.bin");
  v25 = BBUICEUpdateSource::createDataSource(this, __p, 0);
  *(this + 24) = v25;
  if (v70 < 0)
  {
    operator delete(__p[0]);
    v25 = *(this + 24);
  }

  if (!v25)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x11Fu, "Assertion failure(fRestorePSIRam2Source && Failed to load RestorePSI2.)", v65, v66, v67, v68);
LABEL_73:
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return 1;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return 1;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v26 = (**this)(this);
    _BBULog(3, 0, v26, "", "Loaded RestorePSI2\n", v27, v28, v29, v68);
    return 1;
  }

  return 1;
}

void sub_1E52CB9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL BBUICE16UpdateSource::loadEBLImage(BBUICE16UpdateSource *this)
{
  if (*(this + 25))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x128u, "Assertion failure(fEBLImage == __null)", v16, v17, v18, v19);
  }

  v21 = 7;
  strcpy(__p, "ebl.bin");
  v2 = BBUICEUpdateSource::containsFile(this, __p);
  if (v21 < 0)
  {
    v10 = v2;
    operator delete(__p[0]);
    if (v10)
    {
LABEL_4:
      v21 = 7;
      strcpy(__p, "ebl.bin");
      DataSource = BBUICEUpdateSource::createDataSource(this, __p, 0);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = operator new(0x18uLL);
      *v4 = &unk_1F5F05658;
      v4[2] = 0;
      *(v4 + 2) = DataSource;
      *(this + 25) = v4;
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_8:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v5 = (**this)(this);
            _BBULog(3, 0, v5, "", "Loaded EBL file\n", v6, v7, v8, v19);
          }
        }
      }

      return *(this + 25) != 0;
    }
  }

  else if (v2)
  {
    goto LABEL_4;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v11 = (**this)(this);
    _BBULog(3, 0, v11, "", "EBL file '%s' not found.\n", v12, v13, v14, "ebl.bin");
    return 1;
  }

  return result;
}

void sub_1E52CBCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16UpdateSource::loadNVMFiles(BBUFeedback **this)
{
  LODWORD(v1) = 0;
  v2 = "static.nvm";
  v3 = 1;
  v4 = &ff_buffer;
  while (1)
  {
    v5 = v3;
    memset(&__p, 170, sizeof(__p));
    getNVMFilePath(&__p, v1);
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v42.st_blksize = v6;
    *v42.st_qspare = v6;
    v42.st_birthtimespec = v6;
    *&v42.st_size = v6;
    v42.st_mtimespec = v6;
    v42.st_ctimespec = v6;
    *&v42.st_uid = v6;
    v42.st_atimespec = v6;
    *&v42.st_dev = v6;
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (stat(v7, &v42))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      BBUFeedback::handleComment(this[1], "%s not found, generating default (ffs) file.", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v40 = __p;
      }

      v9 = capabilities::updater::ICENVMFSizeBytes();
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v40;
      }

      else
      {
        v10 = v40.__r_.__value_.__r.__words[0];
      }

      v11 = open(v10, 1537, 384);
      if ((v11 & 0x80000000) == 0)
      {
        if (v9 >= 0x4000)
        {
          v12 = v9 >> 14;
          do
          {
            write(v11, v4, 0x4000uLL);
            --v12;
          }

          while (v12);
        }

        close(v11);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        break;
      }
    }

    v13 = operator new(0x30uLL);
    *v13 = &unk_1F5F00F28;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    if (BBUFileDataSource::init(v13, &__p, 0))
    {
      (*(*v13 + 8))(v13);
      v13 = 0;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_33;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v14 = (**this)(this);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        LOBYTE(v18) = __p.__r_.__value_.__s.__data_[0];
      }

      _BBULog(3, 0, v14, "", "Loaded NVM file %s\n", v15, v16, v17, v18);
    }

LABEL_33:
    v19 = operator new(0x38uLL);
    BBUICENVMImage::BBUICENVMImage(v19, v13, v2, 0);
    v20 = v4;
    *&v42.st_dev = v19;
    v21 = operator new(0x20uLL);
    v22 = v21;
    v21->__shared_owners_ = 0;
    p_shared_owners = &v21->__shared_owners_;
    v21->__vftable = &unk_1F5F01D98;
    v21->__shared_weak_owners_ = 0;
    v21[1].__vftable = v19;
    v42.st_ino = v21;
    v24 = this[34];
    v25 = this[35];
    if (v24 >= v25)
    {
      v26 = this[33];
      v27 = v24 - v26;
      v28 = (v24 - v26) >> 4;
      v29 = v28 + 1;
      if ((v28 + 1) >> 60)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v30 = v25 - v26;
      if (v30 >> 3 > v29)
      {
        v29 = v30 >> 3;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v31 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 >> 60)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v32 = operator new(16 * v31);
      }

      else
      {
        v32 = 0;
      }

      v33 = &v32[16 * v28];
      *v33 = v19;
      v33[1] = v22;
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = (v33 + 2);
      memcpy(v32, v26, v27);
      this[33] = v32;
      this[34] = v34;
      this[35] = &v32[16 * v31];
      if (v26)
      {
        operator delete(v26);
      }

      this[34] = v34;
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_36;
      }

LABEL_35:
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      goto LABEL_36;
    }

    *v24 = v19;
    *(v24 + 1) = v21;
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    this[34] = (v24 + 16);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_35;
    }

LABEL_36:
    v4 = v20;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = 0;
    v1 = 1;
    v2 = "dynamic.nvm";
    if ((v5 & 1) == 0)
    {
      return v1;
    }
  }

  v35 = this[1];
  v36 = __error();
  v37 = strerror(*v36);
  BBUFeedback::handleComment(v35, "Failed to create file %s\n", v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E52CC18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if ((a22 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t getNVMFilePath(uint64_t a1, int a2)
{
  v33 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[7] = v4;
  v32[8] = v4;
  v32[5] = v4;
  v32[6] = v4;
  v32[3] = v4;
  v32[4] = v4;
  v32[1] = v4;
  v32[2] = v4;
  v31 = v4;
  v32[0] = v4;
  *v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  if (a2)
  {
    v5 = "dynamic.nvm";
  }

  else
  {
    v5 = "static.nvm";
  }

  if (!strcasecmp(v5, ""))
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    goto LABEL_44;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v6 = off_1ED944170;
  if (!off_1ED944170)
  {
    v7 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v7);
    v34 = v7;
    v8 = operator new(0x20uLL);
    *v8 = &unk_1F5F05A00;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_1ED944178;
    off_1ED944170 = v7;
    off_1ED944178 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_1ED944170;
  }

  v10 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v6, &__p);
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

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, p_p, size);
  if (a2)
  {
    v14 = 11;
  }

  else
  {
    v14 = 10;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v5, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v15 = BYTE8(v31);
    if ((BYTE8(v31) & 0x10) == 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v19 = v31;
    if (v31 < *(&v28 + 1))
    {
      *&v31 = *(&v28 + 1);
      v19 = *(&v28 + 1);
    }

    v18 = &v28;
    goto LABEL_34;
  }

  v15 = BYTE8(v31);
  if ((BYTE8(v31) & 0x10) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v15 & 8) == 0)
  {
    v16 = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
    v17 = &__p;
    goto LABEL_43;
  }

  v18 = &v26 + 1;
  v19 = *(&v27 + 1);
LABEL_34:
  v20 = *v18;
  v16 = v19 - *v18;
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v16 | 7) + 1;
    }

    v17 = operator new(v21);
    __p.__r_.__value_.__l.__size_ = v16;
    __p.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v17;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v19 - *v18;
    v17 = &__p;
    if (!v16)
    {
      goto LABEL_43;
    }
  }

  memmove(v17, v20, v16);
LABEL_43:
  v17->__r_.__value_.__s.__data_[v16] = 0;
  v22 = *&__p.__r_.__value_.__r.__words[1];
  *a1 = __p.__r_.__value_.__r.__words[0];
  *(a1 + 8) = v22;
LABEL_44:
  *&v25 = *MEMORY[0x1E69E54E8];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v25 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  *(&v25 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v32);
}

void sub_1E52CC658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v18 - 72));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16UpdateSource::loadMRCData(BBUFeedback **this)
{
  memset(&__p, 170, sizeof(__p));
  BBUICE16UpdateSource::getMRCFilePath(&__p);
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v46.st_blksize = v2;
  *v46.st_qspare = v2;
  v46.st_birthtimespec = v2;
  *&v46.st_size = v2;
  v46.st_mtimespec = v2;
  v46.st_ctimespec = v2;
  *&v46.st_uid = v2;
  v46.st_atimespec = v2;
  *&v46.st_dev = v2;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(p_p, &v46))
  {
    v4 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this[1], "%s not found, generating default (ffs) file.", v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = __p;
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v44;
    }

    else
    {
      v5 = v44.__r_.__value_.__r.__words[0];
    }

    v6 = open(v5, 1537, 384);
    v7 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      close(v6);
    }

    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v19 = this[1];
      v20 = __error();
      v21 = strerror(*v20);
      BBUFeedback::handleComment(v19, "Failed to create file %s\n", v21);
      v22 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_55;
      }

      return v22;
    }

    operator delete(v44.__r_.__value_.__l.__data_);
    if (v7 < 0)
    {
      goto LABEL_30;
    }
  }

LABEL_17:
  v8 = operator new(0x30uLL);
  *v8 = &unk_1F5F00F28;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v9 = BBUFileDataSource::init(v8, &__p, 0);
  v10 = *v8;
  if (v9)
  {
    (*(v10 + 8))(v8);
    v11 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this[1], "Failed to read file %s", v11);
    goto LABEL_54;
  }

  if ((*(v10 + 24))(v8) >= 0x801)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_24:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v12 = (**this)(this);
          v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v14 = __p.__r_.__value_.__s.__data_[0];
          (*(*v8 + 24))(v8);
          v18 = &__p;
          if (v13 < 0)
          {
            LOBYTE(v18) = v14;
          }

          _BBULog(3, 0, v12, "", "MRC file %s is too large (%lu), ignoring\n", v15, v16, v17, v18);
        }
      }
    }

    (*(*v8 + 8))(v8);
    goto LABEL_54;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_34:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v23 = (**this)(this);
        v27 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          LOBYTE(v27) = __p.__r_.__value_.__s.__data_[0];
        }

        _BBULog(3, 0, v23, "", "Loaded MRC file %s\n", v24, v25, v26, v27);
      }
    }
  }

  v28 = operator new(0x30uLL);
  *v28 = &unk_1F5F04478;
  v28[31] = 7;
  strcpy(v28 + 8, "mrc.dat");
  *(v28 + 8) = 0;
  *(v28 + 5) = v8;
  *&v46.st_dev = v28;
  v29 = operator new(0x20uLL);
  v30 = v29;
  v29->__shared_owners_ = 0;
  p_shared_owners = &v29->__shared_owners_;
  v29->__vftable = &unk_1F5F01DE8;
  v29->__shared_weak_owners_ = 0;
  v29[1].__vftable = v28;
  v46.st_ino = v29;
  v32 = this[37];
  v33 = this[38];
  if (v32 >= v33)
  {
    v35 = this[36];
    v36 = v32 - v35;
    v37 = (v32 - v35) >> 4;
    v38 = v37 + 1;
    if ((v37 + 1) >> 60)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v39 = v33 - v35;
    if (v39 >> 3 > v38)
    {
      v38 = v39 >> 3;
    }

    if (v39 >= 0x7FFFFFFFFFFFFFF0)
    {
      v40 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v38;
    }

    if (v40)
    {
      if (v40 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v41 = operator new(16 * v40);
    }

    else
    {
      v41 = 0;
    }

    v42 = &v41[16 * v37];
    *v42 = v28;
    *(v42 + 1) = v30;
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v34 = (v42 + 16);
    memcpy(v41, v35, v36);
    this[36] = v41;
    this[37] = v34;
    this[38] = &v41[16 * v40];
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v32 = v28;
    *(v32 + 1) = v29;
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v34 = (v32 + 16);
  }

  this[37] = v34;
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_54:
  v22 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_55:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v22;
}

void sub_1E52CCC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  if ((a22 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16UpdateSource::loadBINFiles(BBUICE16UpdateSource *this)
{
  v1 = this;
  v38 = &v38;
  v39 = &v38;
  v40 = 0;
  v37 = 4;
  strcpy(__p, ".bin");
  (*(*this + 264))(this, &v38, __p);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  *(&v35.__r_.__value_.__s + 23) = 11;
  strcpy(&v35, "psi_ram.bin");
  std::list<std::string>::remove(&v38, &v35.__r_.__value_.__l.__data_);
  *(&v35.__r_.__value_.__s + 23) = 14;
  strcpy(&v35, "restorepsi.bin");
  std::list<std::string>::remove(&v38, &v35.__r_.__value_.__l.__data_);
  *(&v35.__r_.__value_.__s + 23) = 12;
  strcpy(&v35, "psi_ram2.bin");
  std::list<std::string>::remove(&v38, &v35.__r_.__value_.__l.__data_);
  *(&v35.__r_.__value_.__s + 23) = 15;
  strcpy(&v35, "restorepsi2.bin");
  std::list<std::string>::remove(&v38, &v35.__r_.__value_.__l.__data_);
  *(&v35.__r_.__value_.__s + 23) = 7;
  strcpy(&v35, "ebl.bin");
  std::list<std::string>::remove(&v38, &v35.__r_.__value_.__l.__data_);
  v2 = v39;
  if (v39 != &v38)
  {
    v34 = v1;
    while (1)
    {
      memset(&v35, 170, sizeof(v35));
      if (*(v2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, v2[2], v2[3]);
      }

      else
      {
        v35 = *(v2 + 2);
      }

      v3 = BBUICEUpdateSource::containsFile(v1, &v35);
      if ((v3 & 1) == 0)
      {
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v35;
        }

        else
        {
          v18 = v35.__r_.__value_.__r.__words[0];
        }

        BBUFeedback::handleComment(*(v1 + 1), "Unable to locate file from directory listing '%s'.", v18);
        goto LABEL_40;
      }

      DataSource = BBUICEUpdateSource::createDataSource(v1, &v35, 0);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_16;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v5 = (**v1)(v1);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v35;
        }

        else
        {
          LOBYTE(v9) = v35.__r_.__value_.__s.__data_[0];
        }

        _BBULog(3, 0, v5, "", "Loaded binary file '%s'\n", v6, v7, v8, v9);
      }

LABEL_16:
      v10 = operator new(0x38uLL);
      v11 = v10;
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v35;
      }

      else
      {
        v12 = v35.__r_.__value_.__r.__words[0];
      }

      BBUICEBinaryImage::BBUICEBinaryImage(v10, DataSource, v12, 0);
      v13 = operator new(0x20uLL);
      v14 = v13;
      v13->__shared_owners_ = 0;
      p_shared_owners = &v13->__shared_owners_;
      v13->__vftable = &unk_1F5F01E38;
      v13->__shared_weak_owners_ = 0;
      v13[1].__vftable = v11;
      v16 = *(v1 + 31);
      v17 = *(v1 + 32);
      if (v16 >= v17)
      {
        v19 = *(v1 + 30);
        v20 = v16 - v19;
        v21 = (v16 - v19) >> 4;
        v22 = v21 + 1;
        if ((v21 + 1) >> 60)
        {
          std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
        }

        v23 = v17 - v19;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 >> 60)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = operator new(16 * v24);
        }

        else
        {
          v25 = 0;
        }

        v26 = &v25[16 * v21];
        v27 = &v25[16 * v24];
        *v26 = v11;
        v26[1] = v14;
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = v26 + 2;
        memcpy(v25, v19, v20);
        v1 = v34;
        *(v34 + 30) = v25;
        *(v34 + 31) = v28;
        *(v34 + 32) = v27;
        if (v19)
        {
          operator delete(v19);
        }

        *(v34 + 31) = v28;
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_40;
        }

LABEL_39:
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        goto LABEL_40;
      }

      *v16 = v11;
      *(v16 + 1) = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      *(v1 + 31) = v16 + 16;
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_39;
      }

LABEL_40:
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v3)
      {
        v2 = v2[1];
        if (v2 != &v38)
        {
          continue;
        }
      }

      goto LABEL_48;
    }
  }

  v3 = 1;
LABEL_48:
  if (v40)
  {
    v29 = v39;
    v30 = *(v38 + 8);
    v31 = *v39;
    *(v31 + 8) = v30;
    *v30 = v31;
    v40 = 0;
    if (v29 != &v38)
    {
      do
      {
        v33 = v29[1];
        if (*(v29 + 39) < 0)
        {
          operator delete(v29[2]);
        }

        operator delete(v29);
        v29 = v33;
      }

      while (v33 != &v38);
    }
  }

  return v3;
}

void sub_1E52CD208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::list<std::string>::~list(&a26);
  _Unwind_Resume(a1);
}

void std::list<std::string>::remove(uint64_t *a1, const void **a2)
{
  v28 = &v28;
  __p = &v28;
  v30 = 0;
  v2 = a1[1];
  if (v2 == a1)
  {
    return;
  }

  v5 = 0;
  v6 = &v28;
  do
  {
    v7 = *(v2 + 39);
    if (v7 >= 0)
    {
      v8 = *(v2 + 39);
    }

    else
    {
      v8 = v2[3];
    }

    v9 = *(a2 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = a2[1];
    }

    if (v8 != v9 || (v7 >= 0 ? (v11 = v2 + 2) : (v11 = v2[2]), (v12 = *a2, v10 >= 0) ? (v13 = a2) : (v13 = *a2), memcmp(v11, v13, v8)))
    {
      v14 = v2;
LABEL_17:
      v14 = v14[1];
      goto LABEL_18;
    }

    v14 = v2[1];
    if (v14 == a1)
    {
LABEL_29:
      v18 = 1;
      if (v2 == v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      while (1)
      {
        v15 = *(v14 + 39);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = v14[3];
        }

        if (v15 != v8)
        {
          break;
        }

        v17 = v16 >= 0 ? v14 + 2 : v14[2];
        if (memcmp(v17, v13, v8))
        {
          break;
        }

        v14 = v14[1];
        if (v14 == a1)
        {
          goto LABEL_29;
        }
      }

      v18 = 0;
      if (v2 == v14)
      {
LABEL_38:
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    v6 = *v14;
    if (&v28 != a1)
    {
      v19 = 1;
      if (v6 != v2)
      {
        v20 = v2;
        do
        {
          v20 = v20[1];
          ++v19;
        }

        while (v20 != v6);
      }

      a1[2] -= v19;
      v5 += v19;
      v30 = v5;
    }

    v21 = v6[1];
    v22 = *v2;
    *(v22 + 8) = v21;
    *v21 = v22;
    v23 = v28;
    v28[1] = v2;
    *v2 = v23;
    v28 = v6;
    v6[1] = &v28;
    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    v2 = v14;
  }

  while (v14 != a1);
  if (v5)
  {
    v24 = __p;
    v25 = v6[1];
    v26 = *__p;
    *(v26 + 8) = v25;
    *v25 = v26;
    v30 = 0;
    if (v24 != &v28)
    {
      do
      {
        v27 = v24[1];
        if (*(v24 + 39) < 0)
        {
          operator delete(v24[2]);
        }

        operator delete(v24);
        v24 = v27;
      }

      while (v27 != &v28);
    }
  }
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

uint64_t BBUICE16UpdateSource::loadELFFiles(BBUICE16UpdateSource *this)
{
  v1 = this;
  v43 = &v43;
  v44 = &v43;
  v45 = 0;
  v42 = 4;
  strcpy(__p, ".elf");
  (*(*this + 264))(this, &v43, __p);
  if (v42 < 0)
  {
    operator delete(__p[0]);
    v2 = v44;
    if (v44 != &v43)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = v44;
    if (v44 != &v43)
    {
LABEL_3:
      v39 = v1;
      while (1)
      {
        memset(&v40, 170, sizeof(v40));
        if (*(v2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v40, v2[2], v2[3]);
        }

        else
        {
          v40 = *(v2 + 2);
        }

        v3 = BBUICEUpdateSource::containsFile(v1, &v40);
        if (v3)
        {
          break;
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v40;
        }

        else
        {
          v16 = v40.__r_.__value_.__r.__words[0];
        }

        BBUFeedback::handleComment(*(v1 + 1), "Unable to locate file from directory listing '%s'.", v16);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_49:
          operator delete(v40.__r_.__value_.__l.__data_);
          if (!v3)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

LABEL_26:
        if (!v3)
        {
          goto LABEL_58;
        }

LABEL_50:
        v2 = v2[1];
        if (v2 == &v43)
        {
          goto LABEL_58;
        }
      }

      DataSource = BBUICEUpdateSource::createDataSource(v1, &v40, 0);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_15;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v5 = (**v1)(v1);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v40;
        }

        else
        {
          LOBYTE(v9) = v40.__r_.__value_.__s.__data_[0];
        }

        _BBULog(3, 0, v5, "", "Loaded download file '%s'\n", v6, v7, v8, v9);
      }

LABEL_15:
      v10 = operator new(0x30uLL);
      v11 = v10;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v40;
      }

      else
      {
        v12 = v40.__r_.__value_.__r.__words[0];
      }

      *v10 = &unk_1F5F04810;
      v13 = v10 + 1;
      v14 = strlen(v12);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        if ((v14 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v14 | 7) + 1;
        }

        v13 = operator new(v17);
        v11[2] = v15;
        v11[3] = v17 | 0x8000000000000000;
        v11[1] = v13;
      }

      else
      {
        *(v11 + 31) = v14;
        if (!v14)
        {
LABEL_33:
          v13[v15] = 0;
          *(v11 + 8) = 0;
          v11[5] = DataSource;
          v18 = operator new(0x20uLL);
          v19 = v18;
          v18->__shared_owners_ = 0;
          p_shared_owners = &v18->__shared_owners_;
          v18->__vftable = &unk_1F5F01E88;
          v18->__shared_weak_owners_ = 0;
          v18[1].__vftable = v11;
          v21 = *(v1 + 28);
          v22 = *(v1 + 29);
          if (v21 >= v22)
          {
            v24 = *(v1 + 27);
            v25 = v21 - v24;
            v26 = (v21 - v24) >> 4;
            v27 = v26 + 1;
            if ((v26 + 1) >> 60)
            {
              std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
            }

            v28 = v22 - v24;
            if (v28 >> 3 > v27)
            {
              v27 = v28 >> 3;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF0)
            {
              v29 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              if (v29 >> 60)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v30 = operator new(16 * v29);
            }

            else
            {
              v30 = 0;
            }

            v31 = &v30[16 * v26];
            v32 = &v30[16 * v29];
            *v31 = v11;
            *(v31 + 1) = v19;
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            v23 = v31 + 16;
            memcpy(v30, v24, v25);
            *(v39 + 27) = v30;
            *(v39 + 28) = v23;
            *(v39 + 29) = v32;
            v1 = v39;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v21 = v11;
            *(v21 + 1) = v18;
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            v23 = v21 + 16;
          }

          *(v1 + 28) = v23;
          if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
          {
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_26;
        }
      }

      memmove(v13, v12, v15);
      goto LABEL_33;
    }
  }

  v3 = 1;
LABEL_58:
  if (v45)
  {
    v33 = v44;
    v34 = *(v43 + 8);
    v35 = *v44;
    *(v35 + 8) = v34;
    *v34 = v35;
    v45 = 0;
    if (v33 != &v43)
    {
      do
      {
        v37 = v33[1];
        if (*(v33 + 39) < 0)
        {
          v38 = v33;
          operator delete(v33[2]);
          v33 = v38;
        }

        operator delete(v33);
        v33 = v37;
      }

      while (v37 != &v43);
    }
  }

  return v3;
}

void sub_1E52CDA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::list<std::string>::~list(&a26);
  _Unwind_Resume(a1);
}

uint64_t *BBUICE16UpdateSource::getItems(char ***this)
{
  v2 = operator new(0x18uLL);
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  v3 = ((*this)[35])(this);
  if (v3)
  {
    v4 = BBUProgrammer::Item::createFromImage(20480, v3);
    v5 = operator new(0x18uLL);
    v5[1] = v2;
    v5[2] = v4;
    v6 = *v2;
    *v5 = *v2;
    *(v6 + 8) = v5;
    *v2 = v5;
    ++v2[2];
  }

  v7 = this[6];
  if (v7)
  {
    v8 = BBUProgrammer::Item::createFromImage(20484, v7);
    v9 = operator new(0x18uLL);
    v9[1] = v2;
    v9[2] = v8;
    v10 = *v2;
    *v9 = *v2;
    *(v10 + 8) = v9;
    *v2 = v9;
    ++v2[2];
  }

  v11 = this[7];
  if (v11)
  {
    v12 = BBUProgrammer::Item::createFromImage(20485, v11);
    v13 = operator new(0x18uLL);
    v13[1] = v2;
    v13[2] = v12;
    v14 = *v2;
    *v13 = *v2;
    *(v14 + 8) = v13;
    *v2 = v13;
    ++v2[2];
  }

  v15 = this[5];
  if (v15)
  {
    v16 = BBUProgrammer::Item::createFromImage(20486, v15);
    v17 = operator new(0x18uLL);
    v17[1] = v2;
    v17[2] = v16;
    v18 = *v2;
    *v17 = *v2;
    *(v18 + 8) = v17;
    *v2 = v17;
    ++v2[2];
  }

  v19 = this[33];
  for (i = this[34]; v19 != i; v19 += 2)
  {
    v21 = *v19;
    v22 = v19[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v21)
    {
      v23 = BBUProgrammer::Item::createFromImage(20481, v21);
      v24 = operator new(0x18uLL);
      v24[1] = v2;
      v24[2] = v23;
      v25 = *v2;
      *v24 = *v2;
      *(v25 + 8) = v24;
      *v2 = v24;
      ++v2[2];
    }

    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  v26 = this[30];
  for (j = this[31]; v26 != j; v26 += 2)
  {
    v28 = *v26;
    v29 = v26[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v28)
    {
      v30 = BBUProgrammer::Item::createFromImage(20482, v28);
      v31 = operator new(0x18uLL);
      v31[1] = v2;
      v31[2] = v30;
      v32 = *v2;
      *v31 = *v2;
      *(v32 + 8) = v31;
      *v2 = v31;
      ++v2[2];
    }

    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  v33 = this[27];
  for (k = this[28]; v33 != k; v33 += 2)
  {
    v35 = *v33;
    v36 = v33[1];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v35)
    {
      v37 = BBUProgrammer::Item::createFromImage(20483, v35);
      v38 = operator new(0x18uLL);
      v38[1] = v2;
      v38[2] = v37;
      v39 = *v2;
      *v38 = *v2;
      *(v39 + 8) = v38;
      *v2 = v38;
      ++v2[2];
    }

    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }
  }

  v40 = this[36];
  for (m = this[37]; v40 != m; v40 += 2)
  {
    v42 = *v40;
    v43 = v40[1];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v42)
    {
      v44 = BBUProgrammer::Item::createFromImage(20487, v42);
      v45 = operator new(0x18uLL);
      v45[1] = v2;
      v45[2] = v44;
      v46 = *v2;
      *v45 = *v2;
      *(v46 + 8) = v45;
      *v2 = v45;
      ++v2[2];
    }

    if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
    }
  }

  return v2;
}

uint64_t BBUICE16UpdateSource::eraseBasebandFilesystem(BBUFeedback **this)
{
  memset(&__p, 170, sizeof(__p));
  getNVMFilePath(&__p, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(this[1], "generating 0xFF-filled file for %s", p_p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &__p;
  }

  else
  {
    v3 = __p.__r_.__value_.__r.__words[0];
  }

  v4 = open(v3, 1537, 384);
  if (v4 < 0)
  {
    v6 = this[1];
    v7 = __error();
    v8 = strerror(*v7);
    BBUFeedback::handleComment(v6, "Failed to create file %s\n", v8);
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  v9 = 0;
  v10 = 1;
  while (v9 < capabilities::updater::ICENVMFSizeBytes() >> 14)
  {
    if (write(v4, &ff_buffer, 0x4000uLL) != 0x4000)
    {
      v11 = this[1];
      v12 = __error();
      v13 = strerror(*v12);
      BBUFeedback::handleComment(v11, "Failed zero-filling file at segment %u, err=%s\n", v9, v13);
      v10 = 0;
    }

    ++v9;
  }

  close(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 170, sizeof(__p));
  getNVMFilePath(&__p, 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(this[1], "generating 0xFF-filled file for %s", v14);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  v16 = open(v15, 1537, 384);
  if (v16 < 0)
  {
    v17 = this[1];
    v18 = __error();
    v19 = strerror(*v18);
    BBUFeedback::handleComment(v17, "Failed to create file %s\n", v19);
    v5 = 15;
  }

  for (i = 0; i < capabilities::updater::ICENVMFSizeBytes() >> 14; ++i)
  {
    if (write(v16, &ff_buffer, 0x4000uLL) != 0x4000)
    {
      v21 = this[1];
      v22 = __error();
      v23 = strerror(*v22);
      BBUFeedback::handleComment(v21, "Failed zero-filling file at segment %u, err=%s\n", i, v23);
      v10 = 0;
    }
  }

  v24 = close(v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 1) == 0)
    {
      return v5;
    }
  }

  else if ((v10 & 1) == 0)
  {
    return v5;
  }

  if (MEMORY[0x1E6925FA0](v24))
  {
    memset(&__p, 170, sizeof(__p));
    BBUICE16UpdateSource::getMRCFilePath(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this[1], "unlinking MRC data %s", v25);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    v27 = unlink(v26);
    if (v27 < 0)
    {
      v28 = this[1];
      v29 = __error();
      v30 = strerror(*v29);
      BBUFeedback::handleComment(v28, "Unlinking MRC had an error %s", v30);
      v5 = 15;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_43:
        if (v27 < 0)
        {
          return v5;
        }

        goto LABEL_47;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (v27 < 0)
    {
      return v5;
    }
  }

LABEL_47:
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v31 = off_1ED944170;
  if (!off_1ED944170)
  {
    v32 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v32);
    v58 = v32;
    v33 = operator new(0x20uLL);
    *v33 = &unk_1F5F05A00;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = v32;
    v34 = off_1ED944178;
    off_1ED944170 = v32;
    off_1ED944178 = v33;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    v31 = off_1ED944170;
  }

  v35 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v31, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = __p.__r_.__value_.__r.__words[0];
  }

  if (v43)
  {
    if (bbufs::prepareDestination(v43, v36))
    {
      v50 = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v44, v45, v46, v47, v48, v49, v56);
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v37, v38, v39, v40, v41, v42, 0);
  }

  v50 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_64:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_65:
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if ((v50 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v5 = 11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return v5;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v5 = 11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return v5;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v51 = (**this)(this);
      _BBULog(3, 0, v51, "", "failed preparing filesystem after erase\n", v52, v53, v54, v56);
    }
  }

  return v5;
}

void sub_1E52CE4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char **a19)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](&a19);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef BBUICE16UpdateSource::copyBasebandMigrationData(BBUICE16UpdateSource *this, BBUFeedback *a2)
{
  memset(&v39, 170, sizeof(v39));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v3 = off_1ED944170;
  if (!off_1ED944170)
  {
    v4 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v4);
    __p.__r_.__value_.__r.__words[0] = v4;
    v5 = operator new(0x20uLL);
    *v5 = &unk_1F5F05A00;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
    v6 = off_1ED944178;
    off_1ED944170 = v4;
    off_1ED944178 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_1ED944170;
  }

  v7 = off_1ED944178;
  *&v40.st_dev = v3;
  v40.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v3, &v39);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v39;
    }

    else
    {
      v15 = v39.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_27:
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v9, v10, v11, v12, v13, v14, 0);
LABEL_28:
    BBUFeedback::handleComment(this, "Failed preparing baseband filesystem directory for copying baseband migration data\n");
    Mutable = 0;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_49;
    }

    return Mutable;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v39;
  }

  else
  {
    v15 = v39.__r_.__value_.__r.__words[0];
  }

  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_14:
  if ((bbufs::prepareDestination(v15, v8) & 1) == 0)
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v16, v17, v18, v19, v20, v21, v36);
    goto LABEL_28;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  memset(&__p, 170, sizeof(__p));
  getNVMFilePath(&__p, 0);
  v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v23;
  *v40.st_qspare = v23;
  v40.st_birthtimespec = v23;
  *&v40.st_size = v23;
  v40.st_mtimespec = v23;
  v40.st_ctimespec = v23;
  *&v40.st_uid = v23;
  v40.st_atimespec = v23;
  *&v40.st_dev = v23;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(p_p, &v40))
  {
    v25 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this, "Failed to locate %s while copying baseband migration data\n", v25);
    goto LABEL_34;
  }

  v26 = operator new(0x30uLL);
  *v26 = &unk_1F5F00F28;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  if (BBUFileDataSource::init(v26, &__p, 0))
  {
    (*(*v26 + 8))(v26);
    v27 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this, "Failed generating data source for %s while copying baseband migration data\n", v27);
LABEL_34:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v34 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = __p.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(this, "copying %s for migration", v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = __p;
  }

  BBUDataSource::createData(v26, &v40);
  ctu::cf::insert<std::string,__CFData const*>(Mutable, &v37, *&v40.st_dev);
  if (*&v40.st_dev)
  {
    CFRelease(*&v40.st_dev);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  (*(*v26 + 8))(v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_35:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_36:
  memset(&__p, 170, sizeof(__p));
  getNVMFilePath(&__p, 1);
  v28.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v28.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v28;
  *v40.st_qspare = v28;
  v40.st_birthtimespec = v28;
  *&v40.st_size = v28;
  v40.st_mtimespec = v28;
  v40.st_ctimespec = v28;
  *&v40.st_uid = v28;
  v40.st_atimespec = v28;
  *&v40.st_dev = v28;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(v29, &v40))
  {
    v30 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this, "Failed to locate %s while copying baseband migration data\n", v30);
    goto LABEL_47;
  }

  v31 = operator new(0x30uLL);
  *v31 = &unk_1F5F00F28;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  if (BBUFileDataSource::init(v31, &__p, 0))
  {
    (*(*v31 + 8))(v31);
    v32 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(this, "Failed generating data source for %s while copying baseband migration data\n", v32);
LABEL_47:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_72:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return Mutable;
    }

    goto LABEL_49;
  }

  v35 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = __p.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(this, "copying %s for migration", v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = __p;
  }

  BBUDataSource::createData(v31, &v40);
  ctu::cf::insert<std::string,__CFData const*>(Mutable, &v37, *&v40.st_dev);
  if (*&v40.st_dev)
  {
    CFRelease(*&v40.st_dev);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  (*(*v31 + 8))(v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

LABEL_48:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_49:
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return Mutable;
}

void sub_1E52CEB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, const void *a30)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a30);
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if (a29 < 0)
      {
LABEL_8:
        operator delete(a24);
        _Unwind_Resume(a1);
      }

LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if (a29 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t BBUICE16UpdateSource::restoreBasebandMigrationData(BBUICE16UpdateSource *this, BBUFeedback *a2, const __CFDictionary *a3)
{
  memset(&__p, 170, sizeof(__p));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v5 = off_1ED944170;
  if (!off_1ED944170)
  {
    v6 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v6);
    context.__r_.__value_.__r.__words[0] = v6;
    v7 = operator new(0x20uLL);
    *v7 = &unk_1F5F05A00;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    v8 = off_1ED944178;
    off_1ED944170 = v6;
    off_1ED944178 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_1ED944170;
  }

  v9 = off_1ED944178;
  *v47 = v5;
  *&v47[8] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v5, &__p);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (p_p)
    {
      goto LABEL_14;
    }

LABEL_21:
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v11, v12, v13, v14, v15, v16, 0);
    goto LABEL_22;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!p_p)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (bbufs::prepareDestination(p_p, v10))
  {
    v24 = 1;
    goto LABEL_23;
  }

  _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v18, v19, v20, v21, v22, v23, v44);
LABEL_22:
  BBUFeedback::handleComment(this, "Failed preparing baseband filesystem directory for copying baseband migration data");
  v24 = 0;
LABEL_23:
  *(&v48 + 1) = 0;
  v49 = 0;
  *&v48 = &v48 + 8;
  *&v47[8] = 0uLL;
  *v47 = &v47[8];
  context.__r_.__value_.__r.__words[0] = v47;
  context.__r_.__value_.__l.__size_ = &v47[8];
  if (!a2)
  {
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(v47, 0);
    v30 = v48;
    if (v48 == (&v48 + 8))
    {
      goto LABEL_81;
    }

    goto LABEL_31;
  }

  CFDictionaryApplyFunction(a2, ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>, &context);
  v25 = v48;
  v48 = *v47;
  *v47 = v25;
  v26 = v49;
  v49 = *&v47[16];
  *&v47[16] = v26;
  v27 = &v48;
  if (v49)
  {
    v27 = (*(&v48 + 1) + 16);
  }

  *v27 = &v48 + 8;
  v28 = v26 == 0;
  v29 = v47;
  if (!v28)
  {
    v29 = (*(&v25 + 1) + 16);
  }

  *v29 = &v47[8];
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(v47, *(&v25 + 1));
  v30 = v48;
  if (v48 != (&v48 + 8))
  {
LABEL_31:
    v31 = *MEMORY[0x1E695E480];
    do
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v47 = v32;
      *&v47[16] = v32;
      if (*(v30 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v47, *(v30 + 4), *(v30 + 5));
      }

      else
      {
        *v47 = v30[2];
        *&v47[16] = *(v30 + 6);
      }

      *&v47[24] = *(v30 + 7);
      if ((v47[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v45, *v47, *&v47[8]);
      }

      else
      {
        v45 = *v47;
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v52, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
      }

      else
      {
        v52 = v45;
      }

      v51 = 0;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&context, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        context = v52;
      }

      v54 = 0;
      if (ctu::cf::convert_copy())
      {
        v33 = v54;
      }

      else
      {
        v33 = 0;
      }

      if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(context.__r_.__value_.__l.__data_);
        v46 = v33;
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_65:
          operator delete(v52.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v46 = v33;
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_65;
        }
      }

      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

LABEL_66:
      operator delete(v45.__r_.__value_.__l.__data_);
LABEL_51:
      v34 = CFURLCreateWithFileSystemPath(v31, v33, kCFURLPOSIXPathStyle, 0);
      if (!v34)
      {
        if (v47[23] >= 0)
        {
          v35 = v47;
        }

        else
        {
          v35 = *v47;
        }

        BBUFeedback::handleComment(this, "Failed creating CFURLRef for %s while restoring baseband migration data", v35);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (v34)
      {
        context.__r_.__value_.__r.__words[0] = v34;
        v52.__r_.__value_.__r.__words[0] = 0;
        v36 = CFWriteStreamCreateWithFile(0, v34);
        v37 = v36;
        v52.__r_.__value_.__r.__words[0] = v36;
        if (v36)
        {
          if (CFWriteStreamOpen(v36))
          {
            BytePtr = CFDataGetBytePtr(*&v47[24]);
            Length = CFDataGetLength(*&v47[24]);
            v40 = CFWriteStreamWrite(v37, BytePtr, Length);
            if (v40 <= 0)
            {
              BBUFeedback::handleComment(this, "Failed writing to stream for restoring baseband migration data");
            }

            CFWriteStreamClose(v37);
            v24 = v24 & (v40 > 0);
          }

          else
          {
            BBUFeedback::handleComment(this, "Failed opening stream for restoring baseband migration data");
            v24 = 0;
          }

          CFRelease(v37);
        }

        else
        {
          BBUFeedback::handleComment(this, "Failed creating CFWriteStremRef for restoring baseband migration data");
          v24 = 0;
        }

        CFRelease(v34);
      }

      else
      {
        v24 = 0;
      }

      if ((v47[23] & 0x80000000) != 0)
      {
        operator delete(*v47);
        v41 = *(v30 + 1);
        if (v41)
        {
          do
          {
LABEL_76:
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
          goto LABEL_32;
        }
      }

      else
      {
        v41 = *(v30 + 1);
        if (v41)
        {
          goto LABEL_76;
        }
      }

      do
      {
        v42 = *(v30 + 2);
        v28 = *v42 == v30;
        v30 = v42;
      }

      while (!v28);
LABEL_32:
      v30 = v42;
    }

    while (v42 != (&v48 + 8));
  }

LABEL_81:
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v48, *(&v48 + 1));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_1E52CF1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v41 - 128));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E52CF344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a14);
  if ((a20 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E52CF320);
  }

  JUMPOUT(0x1E52CF318);
}

uint64_t **BBUICE16UpdateSource::copyHashData(BBUICE16UpdateSource *this, char a2)
{
  if (!capabilities::updater::supportsHashSha384(this))
  {
    if ((a2 & 1) == 0)
    {
      v51 = operator new(0x20uLL);
      BBUICE16HashData::BBUICE16HashData(v51, 0, 0);
      return v51;
    }

    v29 = *(this + 8);
    if (!v29)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x2F6u, "Assertion failure(fZipFile && BBU firmware data error.)", v66, v67, v68, v69);
      goto LABEL_100;
    }

    v73 = 0uLL;
    v72 = &v73;
    memset(v71, 170, sizeof(v71));
    BBUZipFile::getFileList(v29, v71);
    v30 = operator new(0x20uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v31 = v71[1];
    if (v71[1] == v71)
    {
LABEL_85:
      v51 = operator new(0x20uLL);
      v51[2] = 0;
      *v51 = &unk_1F5F02D10;
      v51[1] = (v51 + 2);
      v51[3] = 0;
      std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<unsigned char>>,std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *> *,long>>(v51 + 1, v72, &v73);
      operator delete(v30);
      if (v71[2])
      {
        v52 = v71[1];
        v53 = *(v71[0] + 1);
        v54 = *v71[1];
        *(v54 + 8) = v53;
        *v53 = v54;
        v71[2] = 0;
        if (v52 != v71)
        {
          do
          {
            v55 = v52[1];
            if (*(v52 + 39) < 0)
            {
              v56 = v52;
              operator delete(v52[2]);
              v52 = v56;
            }

            operator delete(v52);
            v52 = v55;
          }

          while (v55 != v71);
        }
      }

LABEL_93:
      std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(&v72, v73);
      return v51;
    }

    v32 = off_1F5F05690;
    while (1)
    {
      memset(&v70, 170, sizeof(v70));
      if (*(v31 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v70, v31[2], v31[3]);
      }

      else
      {
        v70 = *(v31 + 2);
      }

      DataSource = BBUICEUpdateSource::createDataSource(this, &v70, 0);
      v34 = operator new(0x18uLL);
      *v34 = &unk_1F5F05658;
      v34[2] = 0;
      *(v34 + 2) = DataSource;
      v32(v34, v30, 0);
      ctu::assign();
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_59:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v35 = (**this)(this);
            v39 = &v70;
            if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              LOBYTE(v39) = v70.__r_.__value_.__s.__data_[0];
            }

            _BBULog(3, 0, v35, "", "Zipfile hash of %s: %s\n", v36, v37, v38, v39);
          }
        }
      }

      v74 = &v70;
      v40 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v72, &v70.__r_.__value_.__l.__data_, &std::piecewise_construct, &v74);
      v41 = v40[7];
      v42 = v40[9];
      if (v42 - v41 >= 0x20)
      {
        v47 = v40[8];
        v48 = v47 - v41;
        if ((v47 - v41) > 0x1F)
        {
          v50 = v30[1];
          *v41 = *v30;
          v41[1] = v50;
          v49 = v41 + 2;
        }

        else
        {
          if (v47 != v41)
          {
            memmove(v41, v30, v47 - v41);
            v47 = v40[8];
          }

          memmove(v47, v30 + v48, 32 - v48);
          v49 = &v47[32 - v48];
        }

        v40[8] = v49;
      }

      else
      {
        if (v41)
        {
          v40[8] = v41;
          operator delete(v41);
          v42 = 0;
          v40[7] = 0;
          v40[8] = 0;
          v40[9] = 0;
        }

        v43 = 2 * v42;
        if (2 * v42 <= 0x20)
        {
          v43 = 32;
        }

        if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        v45 = operator new(v44);
        v40[7] = v45;
        v40[8] = v45;
        v40[9] = v45 + v44;
        v46 = v30[1];
        *v45 = *v30;
        v45[1] = v46;
        v40[8] = (v45 + 2);
      }

      (*(*v34 + 8))(v34);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
        v31 = v31[1];
        if (v31 == v71)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v31 = v31[1];
        if (v31 == v71)
        {
          goto LABEL_85;
        }
      }
    }
  }

  if (a2)
  {
    v4 = *(this + 8);
    if (v4)
    {
      v73 = 0uLL;
      v72 = &v73;
      memset(v71, 170, sizeof(v71));
      BBUZipFile::getFileList(v4, v71);
      v5 = operator new(0x30uLL);
      v5[1] = 0u;
      v5[2] = 0u;
      *v5 = 0u;
      v6 = v71[1];
      if (v71[1] != v71)
      {
        while (1)
        {
          memset(&v70, 170, sizeof(v70));
          if (*(v6 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v70, v6[2], v6[3]);
          }

          else
          {
            v70 = *(v6 + 2);
          }

          v5[1] = 0u;
          v5[2] = 0u;
          *v5 = 0u;
          v7 = BBUICEUpdateSource::createDataSource(this, &v70, 0);
          v8 = operator new(0x18uLL);
          *v8 = &unk_1F5F05658;
          v8[2] = 0;
          *(v8 + 2) = v7;
          if (*(this + 40) != 104 || ((*(*this + 336))(this) & 1) != 0)
          {
LABEL_20:
            v11 = 1;
            goto LABEL_21;
          }

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            v10 = v70.__r_.__value_.__r.__words[0];
            if (!strcmp(v70.__r_.__value_.__l.__data_, "psi_ram2.bin"))
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v70.__r_.__value_.__r.__words[0] == 0x326D61725F697370 && *(v70.__r_.__value_.__r.__words + 5) == 0x6E69622E326D61)
            {
              goto LABEL_46;
            }

            v10 = &v70;
          }

          if (strcmp(v10, "restorepsi2.bin"))
          {
            goto LABEL_20;
          }

LABEL_46:
          v11 = 0;
LABEL_21:
          (*(*v8 + 56))(v8, v5, v11);
          ctu::assign();
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
            {
LABEL_23:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                v12 = (**this)(this);
                if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v16 = &v70;
                }

                else
                {
                  LOBYTE(v16) = v70.__r_.__value_.__s.__data_[0];
                }

                _BBULog(3, 0, v12, "", "Zipfile hash of %s: %s\n", v13, v14, v15, v16);
              }
            }
          }

          v74 = &v70;
          v17 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v72, &v70.__r_.__value_.__l.__data_, &std::piecewise_construct, &v74);
          v18 = v17[7];
          v19 = v17[9];
          if (v19 - v18 >= 0x30)
          {
            v24 = v17[8];
            v25 = v24 - v18;
            if ((v24 - v18) > 0x2F)
            {
              v27 = *v5;
              v28 = v5[2];
              v18[1] = v5[1];
              v18[2] = v28;
              *v18 = v27;
              v26 = v18 + 3;
            }

            else
            {
              if (v24 != v18)
              {
                memmove(v18, v5, v24 - v18);
                v24 = v17[8];
              }

              memmove(v24, v5 + v25, 48 - v25);
              v26 = &v24[48 - v25];
            }

            v17[8] = v26;
          }

          else
          {
            if (v18)
            {
              v17[8] = v18;
              operator delete(v18);
              v19 = 0;
              v17[7] = 0;
              v17[8] = 0;
              v17[9] = 0;
            }

            v20 = 2 * v19;
            if (2 * v19 <= 0x30)
            {
              v20 = 48;
            }

            if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v21 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            v22 = operator new(v21);
            v17[7] = v22;
            v17[8] = v22;
            v17[9] = v22 + v21;
            v23 = v5[1];
            *v22 = *v5;
            v22[1] = v23;
            v22[2] = v5[2];
            v17[8] = (v22 + 3);
          }

          (*(*v8 + 8))(v8);
          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
            v6 = v6[1];
            if (v6 == v71)
            {
              break;
            }
          }

          else
          {
            v6 = v6[1];
            if (v6 == v71)
            {
              break;
            }
          }
        }
      }

      v51 = operator new(0x20uLL);
      v51[2] = 0;
      *v51 = &unk_1F5F05170;
      v51[1] = (v51 + 2);
      v51[3] = 0;
      std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<unsigned char>>,std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *> *,long>>(v51 + 1, v72, &v73);
      operator delete(v5);
      if (v71[2])
      {
        v57 = v71[1];
        v58 = *(v71[0] + 1);
        v59 = *v71[1];
        *(v59 + 8) = v58;
        *v58 = v59;
        v71[2] = 0;
        if (v57 != v71)
        {
          do
          {
            v61 = v57[1];
            if (*(v57 + 39) < 0)
            {
              operator delete(v57[2]);
            }

            operator delete(v57);
            v57 = v61;
          }

          while (v61 != v71);
        }
      }

      goto LABEL_93;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x2CBu, "Assertion failure(fZipFile && BBU firmware data error.)", v63, v64, v65, v69);
LABEL_100:
  }

  v51 = operator new(0x20uLL);
  BBUICE18HashData::BBUICE18HashData(v51, 0, 0);
  return v51;
}

void sub_1E52CFD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, char *a29)
{
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(v31, v29[2]);
  operator delete(v29);
  operator delete(v30);
  std::list<std::string>::~list(&a25);
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(&a28, a29);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16UpdateSource::saveImages(BBUICE16UpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x31Du, "Assertion failure(fZipFile && BBU firmware data error.)", v39, v40, v41, v46);
  }

  memset(__p, 170, sizeof(__p));
  capabilities::radio::personalizedFirmwarePath(__p, this);
  v2 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v2 = __p[1];
  }

  if (!v2)
  {
    v42 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v42, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICE16UpdateSource.cpp", 0x320u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v43, v44, v45, v46);
  }

  v3 = BBUICEUpdateSource::saveImages(this);
  if (*(this + 39) != *(this + 40))
  {
    v4 = v3;
    memset(v50, 170, sizeof(v50));
    BBUZipFile::getFileList(*(this + 8), v50);
    v5 = v50[1];
    if (v50[1] == v50)
    {
      goto LABEL_67;
    }

    v6 = &unk_1ED949000;
    v7 = &unk_1ED949000;
    while (1)
    {
      memset(&v49, 170, sizeof(v49));
      if (*(v5 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v49, v5[2], v5[3]);
      }

      else
      {
        v49 = *(v5 + 2);
      }

      if (*(this + 208) != 1)
      {
        goto LABEL_36;
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = v49;
      }

      v8 = *(this + 39);
      v9 = *(this + 40);
      if (v8 != v9)
      {
        break;
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

LABEL_47:
      if (v6[396] == -1)
      {
        v18 = 3;
        if ((*v7[397] & 2) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v18 = 3;
        if ((*v7[397] & 2) == 0)
        {
          goto LABEL_53;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v24 = (**this)(this);
        v28 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          LOBYTE(v28) = v49.__r_.__value_.__s.__data_[0];
        }

        _BBULog(1, 0, v24, "", "Skipping saving image %s: not in allowed list\n", v25, v26, v27, v28);
      }

LABEL_53:
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
        if (v18 == 3)
        {
          goto LABEL_8;
        }
      }

      else if (v18 == 3)
      {
        goto LABEL_8;
      }

      if (v18)
      {
        v4 = v47;
LABEL_67:
        if (v50[2])
        {
          v33 = v50[1];
          v34 = *(v50[0] + 1);
          v35 = *v50[1];
          *(v35 + 8) = v34;
          *v34 = v35;
          v50[2] = 0;
          if (v33 != v50)
          {
            do
            {
              v37 = v33[1];
              if (*(v33 + 39) < 0)
              {
                operator delete(v33[2]);
              }

              operator delete(v33);
              v33 = v37;
            }

            while (v37 != v50);
          }
        }

        goto LABEL_69;
      }

LABEL_8:
      v5 = v5[1];
      if (v5 == v50)
      {
        goto LABEL_67;
      }
    }

    v10 = v6;
    v11 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
    v12 = v48.__r_.__value_.__r.__words[0];
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v48.__r_.__value_.__l.__size_;
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v48;
    }

    else
    {
      v14 = v48.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v15 = *(v8 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v8 + 8);
      }

      if (v15 == size)
      {
        v17 = v16 >= 0 ? v8 : *v8;
        if (!memcmp(v17, v14, size))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v9)
      {
        v8 = v9;
        if (v11 < 0)
        {
          goto LABEL_35;
        }

LABEL_32:
        v6 = v10;
        v7 = &unk_1ED949000;
        if (v8 != v9)
        {
          goto LABEL_36;
        }

        goto LABEL_47;
      }
    }

    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    operator delete(v12);
    v6 = v10;
    v7 = &unk_1ED949000;
    if (v8 == v9)
    {
      goto LABEL_47;
    }

LABEL_36:
    v4 = BBUICEUpdateSource::saveFile(this, &v49, __p);
    if (v4)
    {
      if (v6[396] == -1)
      {
        v18 = 1;
        if ((*v7[397] & 8) != 0)
        {
LABEL_39:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v19 = (**this)(this);
            v23 = &v49;
            if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              LOBYTE(v23) = v49.__r_.__value_.__s.__data_[0];
            }

            _BBULog(3, 0, v19, "", "Failed saving %s", v20, v21, v22, v23);
          }
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v18 = 1;
        if ((*v7[397] & 8) != 0)
        {
          goto LABEL_39;
        }
      }

      v47 = v4;
      goto LABEL_53;
    }

    v18 = 0;
    goto LABEL_53;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v4 = 22;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v4 = 22;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v29 = (**this)(this);
    _BBULog(1, 0, v29, "", "Error: image filter list is empty, cannot save any images!\n", v30, v31, v32, v46);
  }

LABEL_69:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1E52D03E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16UpdateSource::validateCoredumpItems(BBUICE16UpdateSource *this)
{
  if (*(this + 40) == 104)
  {
    if ((*(*this + 336))(this))
    {
      v2 = *(this + 21);
      if (v2 && (*(*v2 + 24))(v2))
      {
        return 0;
      }
    }

    else
    {
      v5 = *(this + 23);
      if (v5 && (*(*v5 + 24))(v5))
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = *(this + 21);
    if (v4 && (*(*v4 + 24))(v4))
    {
      return 0;
    }
  }

  return 35;
}

uint64_t BBUICEUpdateSource::getZipFile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  *a2 = *(this + 64);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_pointer<BBUICENVMImage *,std::shared_ptr<BBUICENVMImage>::__shared_ptr_default_delete<BBUICENVMImage,BBUICENVMImage>,std::allocator<BBUICENVMImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICENVMImage *,std::shared_ptr<BBUICENVMImage>::__shared_ptr_default_delete<BBUICENVMImage,BBUICENVMImage>,std::allocator<BBUICENVMImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICENVMImage *,std::shared_ptr<BBUICENVMImage>::__shared_ptr_default_delete<BBUICENVMImage,BBUICENVMImage>,std::allocator<BBUICENVMImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53921A1)
  {
    if (((v2 & 0x80000001E53921A1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53921A1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53921A1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BBUICEMRCImage *,std::shared_ptr<BBUICEMRCImage>::__shared_ptr_default_delete<BBUICEMRCImage,BBUICEMRCImage>,std::allocator<BBUICEMRCImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICEMRCImage *,std::shared_ptr<BBUICEMRCImage>::__shared_ptr_default_delete<BBUICEMRCImage,BBUICEMRCImage>,std::allocator<BBUICEMRCImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICEMRCImage *,std::shared_ptr<BBUICEMRCImage>::__shared_ptr_default_delete<BBUICEMRCImage,BBUICEMRCImage>,std::allocator<BBUICEMRCImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E539226CLL)
  {
    if (((v2 & 0x80000001E539226CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539226CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539226CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BBUICEBinaryImage *,std::shared_ptr<BBUICEBinaryImage>::__shared_ptr_default_delete<BBUICEBinaryImage,BBUICEBinaryImage>,std::allocator<BBUICEBinaryImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICEBinaryImage *,std::shared_ptr<BBUICEBinaryImage>::__shared_ptr_default_delete<BBUICEBinaryImage,BBUICEBinaryImage>,std::allocator<BBUICEBinaryImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICEBinaryImage *,std::shared_ptr<BBUICEBinaryImage>::__shared_ptr_default_delete<BBUICEBinaryImage,BBUICEBinaryImage>,std::allocator<BBUICEBinaryImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E539233ALL)
  {
    if (((v2 & 0x80000001E539233ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539233ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539233ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BBUICEDownloadImage *,std::shared_ptr<BBUICEDownloadImage>::__shared_ptr_default_delete<BBUICEDownloadImage,BBUICEDownloadImage>,std::allocator<BBUICEDownloadImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICEDownloadImage *,std::shared_ptr<BBUICEDownloadImage>::__shared_ptr_default_delete<BBUICEDownloadImage,BBUICEDownloadImage>,std::allocator<BBUICEDownloadImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICEDownloadImage *,std::shared_ptr<BBUICEDownloadImage>::__shared_ptr_default_delete<BBUICEDownloadImage,BBUICEDownloadImage>,std::allocator<BBUICEDownloadImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E539240DLL)
  {
    if (((v2 & 0x80000001E539240DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539240DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539240DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
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

    while (1)
    {
      v11 = v6;
      v14 = v6[4];
      v12 = v6 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v20 = memcmp(v16, v9, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        else if (v17 >= v10)
        {
          return v11;
        }

        v6 = v11[1];
        if (!v6)
        {
          v7 = v11 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v10 >= v17)
        {
          goto LABEL_22;
        }

LABEL_8:
        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = a1 + 1;
LABEL_29:
  v21 = operator new(0x50uLL);
  v22 = v21;
  v23 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 32), *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    *(v21 + 6) = *(v23 + 2);
    *(v21 + 2) = v24;
  }

  v22[7] = 0;
  v22[8] = 0;
  v22[9] = 0;
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v11;
  *v7 = v22;
  v25 = **a1;
  if (v25)
  {
    *a1 = v25;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v22);
  a1[2] = (a1[2] + 1);
  return v22;
}