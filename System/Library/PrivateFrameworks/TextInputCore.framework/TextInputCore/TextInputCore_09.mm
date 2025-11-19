KB::String *KB::String::remove_prefix_bytes@<X0>(KB::String *this@<X0>, uint64_t a2@<X1>, KB::String *a3@<X8>)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v3 = this + 16;
  }

  return KB::String::String(a3, &v3[a2], (*this - a2));
}

unsigned __int16 *KB::String::replace@<X0>(KB::String *this@<X0>, const KB::String::iterator *a2@<X1>, const KB::String::iterator *a3@<X2>, const KB::String *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = KB::String::iterator::offset(a3);
  v11 = KB::String::iterator::offset(a2);
  *a5 = 0x100000;
  *(a5 + 4) = 0;
  *(a5 + 6) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  KB::String::ensure_capacity(a5, *this + v11 - v10 + *a4);
  v12 = *(this + 1);
  if (!v12)
  {
    v12 = this + 16;
  }

  v17 = v12;
  v13 = *this;
  v18 = 0;
  v19 = v13;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  KB::String::append(a5, &v17, a2);
  KB::String::append(a5, a4);
  v14 = *this;
  v15 = *(this + 1);
  if (!v15)
  {
    v15 = this + 16;
  }

  v17 = v15;
  v18 = v14;
  v19 = v14;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  return KB::String::append(a5, a3, &v17);
}

unsigned __int16 *KB::String::append(KB::String *this, const KB::String::iterator *a2, const KB::String::iterator *a3)
{
  v5 = *a2;
  v6 = KB::String::iterator::offset(a2);
  v7 = (v5 + v6);
  v8 = (KB::String::iterator::offset(a3) - v6);

  return KB::String::append(this, v7, v8);
}

unsigned __int16 *KB::String::append(unsigned __int16 *this, const KB::String *a2)
{
  if (*a2)
  {
    v3 = this;
    if (!*(this + 6))
    {
      KB::String::internalize_buffer(this);
    }

    if (*(a2 + 1))
    {
      v4 = *(a2 + 1);
    }

    else
    {
      v4 = a2 + 16;
    }

    return KB::String::append(v3, v4, 0xFFFFuLL);
  }

  return this;
}

unsigned __int16 *KB::String::append(unsigned __int16 *this, const char *__s1, size_t __n)
{
  if (__s1)
  {
    v4 = this;
    this = strnlen(__s1, __n);
    v5 = this;
    if (this)
    {
      v6 = this;
      if (!*(v4 + 6))
      {
        KB::String::internalize_buffer(v4);
      }

      KB::String::ensure_capacity(v4, *v4 + v6);
      v7 = *(v4 + 1);
      if (!v7)
      {
        v7 = v4 + 8;
      }

      this = memcpy(v7 + *v4, __s1, v5);
      v8 = *v4 + v6;
      *v4 = v8;
      v9 = *(v4 + 1);
      if (!v9)
      {
        v9 = v4 + 8;
      }

      *(v9 + v8) = 0;
      v4[2] = 0;
    }
  }

  return this;
}

uint64_t *KB::String::replace_char@<X0>(KB::String *this@<X0>, const KB::String *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  *a4 = 0x100000;
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = *(this + 1);
  v9 = this + 16;
  if (v8)
  {
    v10 = *(this + 1);
  }

  else
  {
    v10 = this + 16;
  }

  v18 = v10;
  v11 = *this;
  v19 = 0;
  v20 = v11;
  v21 = 0;
  KB::String::iterator::initialize(&v18);
  while (1)
  {
    v12 = (v8 ? v8 : v9);
    v14 = v12;
    v15 = v11;
    v16 = v11;
    v17 = 0;
    result = KB::String::iterator::initialize(&v14);
    if (v19 == v15)
    {
      break;
    }

    if (v21 == a3)
    {
      KB::String::append(a4, a2);
    }

    else
    {
      KB::String::append(a4, v21);
    }

    KB::String::iterator::operator++(&v18);
    v11 = *this;
    v8 = *(this + 1);
  }

  return result;
}

uint64_t *KB::String::convert_via_map@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a3 = 0x100000;
  *(a3 + 4) = 0;
  *(a3 + 6) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 1);
  v7 = a1 + 8;
  if (v6)
  {
    v8 = *(a1 + 1);
  }

  else
  {
    v8 = (a1 + 8);
  }

  v15 = v8;
  v9 = *a1;
  v16 = 0;
  v17 = v9;
  v18 = 0;
  KB::String::iterator::initialize(&v15);
  while (1)
  {
    v10 = (v6 ? v6 : v7);
    v19 = v10;
    LODWORD(v20) = v9;
    HIDWORD(v20) = v9;
    v21 = 0;
    result = KB::String::iterator::initialize(&v19);
    if (v16 == v20)
    {
      break;
    }

    KB::String::String(&v19, v18);
    v12 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(a2, &v19);
    if (v12)
    {
      v13 = (v12 + 6);
    }

    else
    {
      v13 = &v19;
    }

    KB::String::append(a3, v13);
    if (v20)
    {
      if (BYTE6(v19) == 1)
      {
        free(v20);
      }
    }

    KB::String::iterator::operator++(&v15);
    v9 = *a1;
    v6 = *(a1 + 1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KB::String::append_format(KB::String *this, const char *a2, va_list a3)
{
  v5 = funopen(this, 0, KB::kbstring_write, 0, 0);
  vfprintf(v5, a2, a3);

  return fclose(v5);
}

unsigned __int16 *KB::String::append_byte(KB::String *this, char a2)
{
  __s1[0] = a2;
  __s1[1] = 0;
  return KB::String::append(this, __s1, 0xFFFFuLL);
}

uint64_t KB::String::pop_last(KB::String *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    v3 = this + 16;
  }

  *&v13 = v3;
  DWORD2(v13) = v1;
  HIDWORD(v13) = v1;
  LODWORD(v14) = 0;
  KB::String::iterator::initialize(&v13);
  v15 = v13;
  v16 = v14;
  KB::String::iterator::operator--(&v15);
  v4 = v16;
  if (v16 >= 0x10000)
  {
    v5 = -4;
  }

  else
  {
    v5 = -3;
  }

  if ((v16 - 1114112) >= 0xFFEFE000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v16 >> 11 >= 0x1B)
  {
    v7 = v6;
  }

  else
  {
    v7 = -3;
  }

  if (v16 >= 0x800)
  {
    v8 = v7;
  }

  else
  {
    v8 = -2;
  }

  if (v16 >= 0x80)
  {
    v9 = v8;
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 + WORD4(v15);
  if (SDWORD2(v15) <= SHIDWORD(v15))
  {
    v11 = v10;
  }

  else
  {
    v11 = WORD6(v15);
  }

  KB::String::resize(this, v11, 0);
  return v4;
}

uint64_t KB::String::format@<X0>(KB::String *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return KB::String::append_format(a2, this, va);
}

void KB::String::operator+(KB::String *a1@<X0>, unsigned int a2@<W1>, KB::String *a3@<X8>)
{
  v4 = KB::String::String(a3, a1);

  KB::String::append(v4, a2);
}

unsigned __int16 *KB::String::operator+@<X0>(KB::String *a1@<X0>, const char *a2@<X1>, KB::String *a3@<X8>)
{
  v4 = KB::String::String(a3, a1);

  return KB::String::append(v4, a2, 0xFFFFuLL);
}

unsigned __int16 *KB::String::operator+@<X0>(KB::String *a1@<X0>, const KB::String *a2@<X1>, KB::String *a3@<X8>)
{
  v4 = KB::String::String(a3, a1);

  return KB::String::append(v4, a2);
}

BOOL KB::String::starts_with(unsigned __int16 *a1, unsigned __int16 *a2, int a3)
{
  if (*a2 > *a1)
  {
    return 0;
  }

  v4 = MEMORY[0x277D85EA0];
  if (a3 == 1)
  {
    v4 = MEMORY[0x277D85EA8];
  }

  if (*(a1 + 1))
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1 + 8;
  }

  if (*(a2 + 1))
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = a2 + 8;
  }

  return v4(v5, v6) == 0;
}

BOOL KB::String::ends_with(unsigned __int16 *a1, unsigned __int16 *a2, int a3)
{
  v4 = *a2;
  v5 = *a1;
  if (v4 > v5)
  {
    return 0;
  }

  v7 = a3 == 1;
  v8 = MEMORY[0x277D85EA0];
  if (v7)
  {
    v8 = MEMORY[0x277D85EA8];
  }

  v9 = v5 - v4;
  v10 = *(a1 + 1);
  if (!v10)
  {
    v10 = a1 + 8;
  }

  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = a2 + 8;
  }

  return v8(v10 + v9, v11) == 0;
}

uint64_t *KB::sbs_string_tokenize@<X0>(uint64_t *this@<X0>, const KB::String *a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *this;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v5)
  {
LABEL_15:
    v11 = *MEMORY[0x277D85DE8];
    return this;
  }

  v7 = this;
  if (*a2)
  {
    v8 = this[1];
    if (!v8)
    {
      v8 = this + 2;
    }

    v21[0] = v8;
    LODWORD(v21[1]) = 0;
    HIDWORD(v21[1]) = v5;
    v22 = 0;
    KB::String::iterator::initialize(v21);
    KB::String::find_first_not_of(v7, a2, v21, &v19);
    KB::String::find_first_of(v7, a2, &v19, &v17);
    while (1)
    {
      v9 = *v7;
      v10 = v7[1] ? v7[1] : v7 + 2;
      v21[0] = v10;
      LODWORD(v21[1]) = v9;
      HIDWORD(v21[1]) = v9;
      v22 = 0;
      KB::String::iterator::initialize(v21);
      if (DWORD2(v17) == LODWORD(v21[1]))
      {
        v13 = v10;
        v14 = v9;
        v15 = v9;
        v16 = 0;
        this = KB::String::iterator::initialize(&v13);
        if (DWORD2(v19) == v14)
        {
          break;
        }
      }

      KB::String::String(v21, &v19, &v17);
      std::vector<KB::String>::push_back[abi:nn200100](a3, v21);
      if (v21[1])
      {
        if (BYTE6(v21[0]) == 1)
        {
          free(v21[1]);
        }
      }

      KB::String::find_first_not_of(v7, a2, &v17, v21);
      v19 = *v21;
      v20 = v22;
      KB::String::find_first_of(v7, a2, &v19, v21);
      v17 = *v21;
      v18 = v22;
    }

    goto LABEL_15;
  }

  v12 = *MEMORY[0x277D85DE8];

  return std::vector<KB::String>::push_back[abi:nn200100](a3, this);
}

uint64_t std::vector<KB::String>::push_back[abi:nn200100](uint64_t a1, KB::String *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(v10);
    }

    v11 = (32 * v7);
    KB::String::String(v11, a2);
    v6 = v11 + 32;
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 32;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<KB::String>::~__split_buffer(v16);
  }

  else
  {
    result = KB::String::String(v3, a2);
    v6 = (result + 32);
  }

  *(a1 + 8) = v6;
  return result;
}

uint64_t std::vector<KB::String>::push_back[abi:nn200100](uint64_t a1, KB::String *this)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(v10);
    }

    v11 = 32 * v7;
    *v11 = 0x100000;
    *(v11 + 4) = 0;
    *(v11 + 6) = 0;
    *(v11 + 8) = 0;
    KB::String::operator=(v11, this);
    v6 = v11 + 32;
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 32;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<KB::String>::~__split_buffer(v16);
  }

  else
  {
    *v3 = 0x100000;
    *(v3 + 4) = 0;
    *(v3 + 6) = 0;
    *(v3 + 8) = 0;
    result = KB::String::operator=(v3, this);
    v6 = result + 32;
  }

  *(a1 + 8) = v6;
  return result;
}

uint64_t *KB::string_split_after@<X0>(uint64_t *this@<X0>, const KB::String *a2@<X1>, void *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v5)
  {
LABEL_15:
    v11 = *MEMORY[0x277D85DE8];
    return this;
  }

  v7 = this;
  if (*a2)
  {
    v8 = this[1];
    if (v8)
    {
      v9 = this[1];
    }

    else
    {
      v9 = this + 2;
    }

    *&v15 = v9;
    DWORD2(v15) = 0;
    HIDWORD(v15) = v5;
    LODWORD(v16) = 0;
    KB::String::iterator::initialize(&v15);
    while (1)
    {
      v10 = v8 ? v8 : v7 + 2;
      v17[0] = v10;
      LODWORD(v17[1]) = v5;
      HIDWORD(v17[1]) = v5;
      v18 = 0;
      this = KB::String::iterator::initialize(v17);
      if (DWORD2(v15) == LODWORD(v17[1]))
      {
        break;
      }

      v13 = v15;
      v14 = v16;
      KB::String::find_first_of(v7, a2, &v13, v17);
      v13 = *v17;
      LODWORD(v14) = v18;
      KB::String::find_first_not_of(v7, a2, &v13, v17);
      v13 = *v17;
      LODWORD(v14) = v18;
      KB::String::String(v17, &v15, &v13);
      std::vector<KB::String>::push_back[abi:nn200100](a3, v17);
      if (v17[1])
      {
        if (BYTE6(v17[0]) == 1)
        {
          free(v17[1]);
        }
      }

      v15 = v13;
      LODWORD(v16) = v14;
      v5 = *v7;
      v8 = v7[1];
    }

    goto LABEL_15;
  }

  v12 = *MEMORY[0x277D85DE8];

  return std::vector<KB::String>::push_back[abi:nn200100](a3, this);
}

void KB::word_ranges(KB *this@<X0>, const KB::String *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(this + 1))
  {
    v5 = *(this + 1);
  }

  else
  {
    v5 = this + 16;
  }

  *&v34 = v5;
  v6 = *this;
  DWORD2(v34) = 0;
  HIDWORD(v34) = v6;
  LODWORD(v35) = 0;
  KB::String::iterator::initialize(&v34);
  v30 = v5;
  v31 = v6;
  v32 = v6;
  v33 = 0;
  KB::String::iterator::initialize(&v30);
  v36 = v34;
  v37 = v35;
  v7 = v31;
  if (DWORD2(v34) != v31)
  {
    v8 = -1;
    do
    {
      v9 = v8;
      KB::String::iterator::operator++(&v36);
      v8 = v9 + 1;
    }

    while (DWORD2(v36) != v7);
    if (v8 < 0x3FFFFFFFFFFFFFFFLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v9 + 2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27 = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  v29 = 0;
  do
  {
    if (v11 && (TI::Favonius::KeyClassification::KeyClassification(&v36, *(4 * v11)), (v36 & 0x34E) != 0))
    {
      if (v13 == -1)
      {
        v13 = v12;
      }
    }

    else if (v13 == -1)
    {
      v13 = -1;
    }

    else
    {
      if (v11)
      {
        v14 = 1;
      }

      else
      {
        v14 = a2;
      }

      v15 = v12;
      if ((v14 & 1) == 0)
      {
        v28 = v10;
        v16 = a2;
        v17 = v12;
        v15 = v12;
        while (v17 > v13)
        {
          v18 = v17--;
          v19 = *(4 * v18 - 4);
          v20 = u_ispunct(v19);
          if (v19 == 38 || v20 == 0)
          {
            v15 = v18;
            break;
          }
        }

        a2 = v16;
        v10 = v28;
      }

      if (v15 <= v13)
      {
        v13 = -1;
      }

      else
      {
        v22 = v13 | ((v15 - v13) << 32);
        v23 = v29 - v10;
        v24 = (v29 - v10) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          v27[1] = v29;
          v27[2] = 0;
          *v27 = v10;
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (-v10 >> 2 > v25)
        {
          v25 = -v10 >> 2;
        }

        if (-v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (!(v26 >> 61))
          {
            operator new();
          }

          v27[1] = v29;
          v27[2] = 0;
          *v27 = v10;
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        *(8 * v24) = v22;
        v29 = 8 * v24 + 8;
        memcpy(0, v10, v23);
        v13 = -1;
        v10 = 0;
      }
    }

    v11 = ++v12;
  }

  while (!v12);
  v27[1] = v29;
  v27[2] = 0;
  *v27 = v10;
}

BOOL KB::character_is_stop_input(KB *this)
{
  v1 = this;
  v2 = u_ispunct(this);
  return v1 != 38 && v2 != 0;
}

unsigned __int16 *KB::string_join@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, const KB::String *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0x100000;
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (result != a2)
  {
    v5 = result;
    v6 = (a2 - 16);
    if (a2 - 16 != result)
    {
      do
      {
        KB::String::append(a4, v5);
        KB::String::append(a4, a3);
        v5 = (v5 + 32);
      }

      while (v5 != v6);
    }

    return KB::String::append(a4, v6);
  }

  return result;
}

BOOL KB::string_has_lowercase_characters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (!u_islower(v4));
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_only_lowercase_characters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (u_islower(v4));
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 >= v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_uppercase_characters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (!u_isupper(v4));
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_only_uppercase_characters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (u_isupper(v4));
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 >= v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::any_of_string_characters_in_set(KB *this, const KB::String *a2, const USet *a3)
{
  if (*(this + 1))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = this + 16;
  }

  *&v13 = v4;
  v5 = *this;
  DWORD2(v13) = 0;
  HIDWORD(v13) = v5;
  LODWORD(v14) = 0;
  KB::String::iterator::initialize(&v13);
  v9 = v4;
  v10 = v5;
  v11 = v5;
  v12 = 0;
  KB::String::iterator::initialize(&v9);
  v15 = v13;
  v16 = v14;
  v6 = v10;
  while (DWORD2(v15) != v6)
  {
    v7 = MEMORY[0x2318BF290](a2, v16);
    result = v7 != 0;
    if (v7)
    {
      return result;
    }

    KB::String::iterator::operator++(&v15);
  }

  return 0;
}

BOOL KB::all_of_string_characters_in_set(KB *this, const KB::String *a2, const USet *a3)
{
  if (*(this + 1))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = this + 16;
  }

  *&v13 = v4;
  v5 = *this;
  DWORD2(v13) = 0;
  HIDWORD(v13) = v5;
  LODWORD(v14) = 0;
  KB::String::iterator::initialize(&v13);
  v9 = v4;
  v10 = v5;
  v11 = v5;
  v12 = 0;
  KB::String::iterator::initialize(&v9);
  v15 = v13;
  v16 = v14;
  v6 = v10;
  while (DWORD2(v15) != v6)
  {
    v7 = MEMORY[0x2318BF290](a2, v16);
    result = v7 != 0;
    if (!v7)
    {
      return result;
    }

    KB::String::iterator::operator++(&v15);
  }

  return 1;
}

BOOL KB::none_of_string_characters_in_set(KB *this, const KB::String *a2, const USet *a3)
{
  if (*(this + 1))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = this + 16;
  }

  v14 = v4;
  v5 = *this;
  v15 = 0;
  v16 = v5;
  v17 = 0;
  KB::String::iterator::initialize(&v14);
  v10 = v4;
  v11 = v5;
  v12 = v5;
  v13 = 0;
  KB::String::iterator::initialize(&v10);
  v6 = v15;
  v7 = v11;
  while (v6 != v7)
  {
    v8 = MEMORY[0x2318BF290](a2, v17);
    result = v8 == 0;
    if (v8)
    {
      return result;
    }

    KB::String::iterator::operator++(&v14);
    v6 = v15;
  }

  return 1;
}

uint64_t KB::count_uppercase_letters(KB *this, const KB::String *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  KB::String::String(v9, this);
  v2 = 0;
  v3 = 0;
  for (i = 0; ; v2 = HIWORD(i))
  {
    v4 = v10;
    if (!v10)
    {
      KB::String::compute_length(v9);
      v4 = v10;
    }

    if (v2 >= v4)
    {
      break;
    }

    v5 = KB::UTF8Iterator::next(v9);
    if (u_isupper(v5))
    {
      v3 = (v3 + 1);
    }

    else
    {
      v3 = v3;
    }
  }

  if (v12)
  {
    v6 = v11 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v12);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t KB::count_characters_UTF8(KB *this, const KB::String *a2, int a3, int a4)
{
  v6 = a2;
  v21 = *MEMORY[0x277D85DE8];
  KB::String::String(v16, this);
  v7 = 0;
  v8 = 0;
  v20 = 0;
  while (1)
  {
    v9 = v17;
    if (!v17)
    {
      KB::String::compute_length(v16);
      v9 = v17;
    }

    if (v7 >= v9)
    {
      break;
    }

    v10 = KB::UTF8Iterator::next(v16);
    v11 = v10 == a3 || v10 == a4;
    v7 = HIWORD(v20);
    if (v11 && HIWORD(v20) > v6)
    {
      v8 = (v8 + 1);
    }

    else
    {
      v8 = v8;
    }
  }

  if (v19)
  {
    v13 = v18 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    free(v19);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t KB::count_letters_if_word(KB *this, const KB::String *a2)
{
  if (*(this + 1))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = this + 16;
  }

  *&v21 = v3;
  v4 = *this;
  DWORD2(v21) = 0;
  HIDWORD(v21) = v4;
  LODWORD(v22) = 0;
  KB::String::iterator::initialize(&v21);
  v17 = v3;
  v18 = v4;
  v19 = v4;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  v5 = 0;
  v15 = v21;
  v16 = v22;
  v6 = v18;
  v7 = DWORD2(v21);
LABEL_5:
  v8 = DWORD2(v15);
  while (v8 != v6)
  {
    v9 = v16;
    KB::String::iterator::operator++(&v15);
    if ((v9 - 38) >= 2 && (v9 - 1523) >= 2 && v9 != 8217)
    {
      v12 = u_charType(v9);
      v5 += (0x3Eu >> v12) & 1;
      if (((1 << v12) & 0x40003FE) == 0)
      {
        return 0;
      }

      goto LABEL_5;
    }

    result = 0;
    if (v8 != v7)
    {
      v8 = DWORD2(v15);
      if (DWORD2(v15) != v6)
      {
        continue;
      }
    }

    return result;
  }

  if (!v5)
  {
    return 0;
  }

  v13 = *(this + 2);
  if (!*(this + 2))
  {
    KB::String::compute_length(this);
    v13 = *(this + 2);
  }

  if (v13 - v5 >= 4 || (v5 / v13) < 0.49)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t KB::strings_have_same_digraphs(KB *this, const KB::String *a2, const KB::String *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  KB::String::String(v28, a2);
  v32 = 0;
  KB::String::String(v23, this);
  v27 = 0;
  while (1)
  {
    v4 = HIWORD(v32);
    v5 = v29;
    if (!v29)
    {
      KB::String::compute_length(v28);
      v5 = v29;
    }

    if (v4 >= v5)
    {
      break;
    }

    v6 = HIWORD(v27);
    v7 = v24;
    if (!v24)
    {
      KB::String::compute_length(v23);
      v7 = v24;
    }

    if (v6 >= v7)
    {
      break;
    }

    do
    {
      v8 = KB::UTF8Iterator::next(v28);
      v9 = v8;
      if ((v8 - 38) >= 2 && (v8 - 1523) >= 2 && v8 != 8217)
      {
        break;
      }

      v11 = HIWORD(v32);
      v12 = v29;
      if (!v29)
      {
        KB::String::compute_length(v28);
        v12 = v29;
      }
    }

    while (v11 < v12);
    do
    {
      v13 = KB::UTF8Iterator::next(v23);
      v14 = v13;
      if ((v13 - 38) >= 2 && (v13 - 1523) >= 2 && v13 != 8217)
      {
        break;
      }

      v16 = HIWORD(v27);
      v17 = v24;
      if (!v24)
      {
        KB::String::compute_length(v23);
        v17 = v24;
      }
    }

    while (v16 < v17);
    is_digraph = KB::character_is_digraph(v9);
    if (is_digraph != KB::character_is_digraph(v14))
    {
      v19 = 0;
      goto LABEL_29;
    }
  }

  v19 = 1;
LABEL_29:
  if (v26)
  {
    v20 = v25 == 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    free(v26);
  }

  if (v31 && v30 == 1)
  {
    free(v31);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t KB::character_is_digraph(KB *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 337)
  {
    v3 = v1 - 197;
    if (v3 <= 0x21 && ((1 << v3) & 0x304000003) != 0)
    {
      return result;
    }

    return 0;
  }

  if ((v1 - 338) >= 2 && (v1 - 2507) >= 2 && v1 != 3635)
  {
    return 0;
  }

  return result;
}

uint64_t KB::count_precomposed_diacritic_letters(KB *this, const KB::String *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  KB::String::String(v9, this);
  v2 = 0;
  v3 = 0;
  for (i = 0; ; v2 = HIWORD(i))
  {
    v4 = v10;
    if (!v10)
    {
      KB::String::compute_length(v9);
      v4 = v10;
    }

    if (v2 >= v4)
    {
      break;
    }

    v5 = KB::UTF8Iterator::next(v9);
    v3 = (v3 + KB::character_is_precomposed_diacritic_letter(v5));
  }

  if (v12)
  {
    v6 = v11 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v12);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL KB::string_has_precomposed_diacritic_letters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (!KB::character_is_precomposed_diacritic_letter(v4));
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_separated_diacritics(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (((1 << u_charType(v4)) & 0x4000050) == 0);
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_spaces(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (u_charType(v4) != 12);
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::strings_have_spaces_in_same_positions(KB *this, const KB::String *a2, const KB::String *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  KB::String::String(v19, this);
  v23 = 0;
  KB::String::String(v14, a2);
  v18 = 0;
  do
  {
    v4 = HIWORD(v18);
    v5 = v15;
    if (!v15)
    {
      KB::String::compute_length(v14);
      v5 = v15;
    }

    if (v4 >= v5)
    {
      break;
    }

    v6 = HIWORD(v23);
    v7 = v20;
    if (!v20)
    {
      KB::String::compute_length(v19);
      v7 = v20;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = KB::UTF8Iterator::next(v19);
    v9 = KB::UTF8Iterator::next(v14);
    v10 = u_charType(v8) == 12;
  }

  while (((v10 ^ (u_charType(v9) != 12)) & 1) != 0);
  if (v17)
  {
    v11 = v16 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    free(v17);
  }

  if (v22 && v21 == 1)
  {
    free(v22);
  }

  result = v4 >= v5;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_letters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (((1 << u_charType(v4)) & 0x3E) == 0);
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KB::count_letters(KB *this, const KB::String *a2)
{
  if (*(this + 1))
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = this + 16;
  }

  *&v11 = v2;
  v3 = *this;
  DWORD2(v11) = 0;
  HIDWORD(v11) = v3;
  LODWORD(v12) = 0;
  KB::String::iterator::initialize(&v11);
  v7 = v2;
  v8 = v3;
  v9 = v3;
  v10 = 0;
  KB::String::iterator::initialize(&v7);
  v4 = 0;
  v13 = v11;
  *c = v12;
  v5 = v8;
  if (DWORD2(v11) != v8)
  {
    LODWORD(v4) = 0;
    do
    {
      v4 = ((0x3Eu >> u_charType(c[0])) & 1) + v4;
      KB::String::iterator::operator++(&v13);
    }

    while (DWORD2(v13) != v5);
  }

  return v4;
}

BOOL KB::string_has_numbers(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (u_charType(v4) != 9);
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KB::count_numbers(KB *this, const KB::String *a2)
{
  if (*(this + 1))
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = this + 16;
  }

  *&v11 = v2;
  v3 = *this;
  DWORD2(v11) = 0;
  HIDWORD(v11) = v3;
  LODWORD(v12) = 0;
  KB::String::iterator::initialize(&v11);
  v7 = v2;
  v8 = v3;
  v9 = v3;
  v10 = 0;
  KB::String::iterator::initialize(&v7);
  v4 = 0;
  v13 = v11;
  *c = v12;
  v5 = v8;
  if (DWORD2(v11) != v8)
  {
    LODWORD(v4) = 0;
    do
    {
      if (u_charType(c[0]) == 9)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }

      KB::String::iterator::operator++(&v13);
    }

    while (DWORD2(v13) != v5);
  }

  return v4;
}

BOOL KB::string_has_nonnumbers(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (u_charType(v4) == 9);
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::strings_have_diacritics_in_same_positions(KB *this, const KB::String *a2, const KB::String *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v5 = *(a2 + 2);
  }

  v6 = *(this + 2);
  if (!*(this + 2))
  {
    KB::String::compute_length(this);
    v6 = *(this + 2);
  }

  KB::String::String(v21, this);
  v23 = 0;
  KB::String::String(v18, a2);
  v20 = 0;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 - 1;
    while (1)
    {
      v10 = KB::UTF8Iterator::next(v21);
      v11 = KB::UTF8Iterator::next(v18);
      if (v8 >= v5 - 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = KB::UTF8Iterator::next(v18);
      }

      if (v8 >= v9)
      {
        v13 = 0;
      }

      else
      {
        v13 = KB::UTF8Iterator::next(v21);
      }

      v14 = MEMORY[0x277D6FDC0];
      if (v12 > 710)
      {
        switch(v12)
        {
          case 711:
            v15 = MEMORY[0x277D6FDC8](v10);
            goto LABEL_26;
          case 730:
            v14 = MEMORY[0x277D6FDF0];
LABEL_25:
            v15 = v14(v10);
LABEL_26:
            if (v15 == v10)
            {
              goto LABEL_36;
            }

            break;
          case 715:
            v15 = MEMORY[0x277D6FDE0](v10);
            goto LABEL_26;
        }
      }

      else
      {
        switch(v12)
        {
          case 175:
            v15 = MEMORY[0x277D6FDE8](v10);
            goto LABEL_26;
          case 180:
            goto LABEL_25;
          case 710:
            v15 = MEMORY[0x277D6FDD0](v10);
            goto LABEL_26;
        }
      }

      if (u_charType(v11) != 6 || u_charType(v10) == 6)
      {
        if (((0x4000050u >> u_charType(v12)) & 1) == 0)
        {
          KB::UTF8Iterator::prev(v18);
        }

        if (((0x4000050u >> u_charType(v13)) & 1) == 0)
        {
          KB::UTF8Iterator::prev(v21);
        }

        v7 = ++v8 >= v5;
        if (v5 != v8)
        {
          continue;
        }
      }

      goto LABEL_36;
    }
  }

  v7 = 1;
LABEL_36:
  if (v19 && v18[6] == 1)
  {
    free(v19);
  }

  if (v22 && v21[6] == 1)
  {
    free(v22);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t KB::strings_have_same_precomposed_diacritic_letters(KB *a1, KB *a2, uint64_t a3, const KB::String *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  KB::lower_string(a1, a4, v44);
  KB::lower_string(a2, a4, v42);
  KB::String::String(v37, v42);
  v41 = 0;
  KB::String::String(v32, v44);
  v36 = 0;
  while (1)
  {
    v7 = HIWORD(v41);
    v8 = v38;
    if (!v38)
    {
      KB::String::compute_length(v37);
      v8 = v38;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = HIWORD(v36);
    v10 = v33;
    if (!v33)
    {
      KB::String::compute_length(v32);
      v10 = v33;
    }

    if (v9 >= v10)
    {
      break;
    }

    do
    {
      v11 = KB::UTF8Iterator::next(v37);
      v12 = v11;
      if ((v11 - 38) >= 2 && (v11 - 1523) >= 2 && v11 != 8217)
      {
        break;
      }

      v14 = HIWORD(v41);
      v15 = v38;
      if (!v38)
      {
        KB::String::compute_length(v37);
        v15 = v38;
      }
    }

    while (v14 < v15);
    do
    {
      v16 = KB::UTF8Iterator::next(v32);
      v17 = v16;
      if (v16 - 38 >= 2 && v16 - 1523 >= 2 && v16 != 8217)
      {
        break;
      }

      v19 = HIWORD(v36);
      v20 = v33;
      if (!v33)
      {
        KB::String::compute_length(v32);
        v20 = v33;
      }
    }

    while (v19 < v20);
    is_precomposed_diacritic_letter = KB::character_is_precomposed_diacritic_letter(v12);
    if (v12 != v17 && is_precomposed_diacritic_letter)
    {
      KB::String::String(v30, v12);
      KB::String::String(v28, v17);
      v22 = *(a3 + 24);
      if (!v22)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v23 = (*(*v22 + 48))(v22, v30, v28);
      if (v29 && v28[6] == 1)
      {
        free(v29);
      }

      if (v31 && v30[6] == 1)
      {
        free(v31);
      }

      if (v23)
      {
        v24 = 0;
        goto LABEL_38;
      }
    }
  }

  v24 = 1;
LABEL_38:
  if (v35)
  {
    v25 = v34 == 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    free(v35);
  }

  if (v40 && v39 == 1)
  {
    free(v40);
  }

  if (v43 && v42[6] == 1)
  {
    free(v43);
  }

  if (v45 && v44[6] == 1)
  {
    free(v45);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL KB::string_has_digraphs(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  do
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
  }

  while (!KB::character_is_digraph(v4));
  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_word_medial_punctuation(KB *this, const KB::String *a2)
{
  v2 = *this;
  if (*(this + 1))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = this + 16;
  }

  v16 = v3;
  v17 = v2;
  v18 = v2;
  v19 = 0;
  KB::String::iterator::initialize(&v16);
  v12 = v3;
  v13 = 0;
  v14 = v2;
  v15 = 0;
  KB::String::iterator::initialize(&v12);
  v8 = v3;
  v9 = v2;
  v10 = v2;
  v11 = 0;
  KB::String::iterator::initialize(&v8);
  v4 = v13;
  v5 = v9;
  if (v13 != v9)
  {
    while ((v15 - 38) >= 2)
    {
      if ((v15 - 1523) < 2 || v15 == 8217)
      {
        break;
      }

      KB::String::iterator::operator++(&v12);
      v4 = v13;
      if (v13 == v5)
      {
        v4 = v5;
        return v17 != v4;
      }
    }
  }

  return v17 != v4;
}

uint64_t KB::count_word_medial_punctuation(KB *this, const KB::String *a2)
{
  if (*(this + 1))
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = this + 16;
  }

  *&v13 = v2;
  v3 = *this;
  DWORD2(v13) = 0;
  HIDWORD(v13) = v3;
  LODWORD(v14) = 0;
  KB::String::iterator::initialize(&v13);
  v9 = v2;
  v10 = v3;
  v11 = v3;
  v12 = 0;
  KB::String::iterator::initialize(&v9);
  v4 = 0;
  v15 = v13;
  v16 = v14;
  v5 = v10;
  if (DWORD2(v13) != v10)
  {
    LODWORD(v4) = 0;
    do
    {
      v7 = (v16 - 1523) < 2 || v16 == 8217;
      if ((v16 - 38) < 2)
      {
        v7 = 1;
      }

      v4 = (v7 + v4);
      KB::String::iterator::operator++(&v15);
    }

    while (DWORD2(v15) != v5);
  }

  return v4;
}

uint64_t KB::string_contains_run(KB *this, const KB::String *a2)
{
  v2 = a2;
  if (*(this + 1))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = this + 16;
  }

  v14 = v3;
  v4 = *this;
  v15 = 0;
  v16 = v4;
  v17 = 0;
  KB::String::iterator::initialize(&v14);
  v10 = v3;
  v11 = v4;
  v12 = v4;
  v13 = 0;
  KB::String::iterator::initialize(&v10);
  v5 = v11;
  if (v15 == v11)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v17;
    if (v17 == v6)
    {
      ++v7;
    }

    else
    {
      v7 = 1;
    }

    if (v7 >= v2)
    {
      break;
    }

    KB::String::iterator::operator++(&v14);
    v6 = v8;
    if (v15 == v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t KB::string_contains_pair_run(KB *this, const KB::String *a2)
{
  v2 = a2;
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20[0] = 0;
  if (*(this + 1))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = this + 16;
  }

  v15 = v3;
  v4 = *this;
  v16 = 0;
  v17 = v4;
  v18 = 0;
  KB::String::iterator::initialize(&v15);
  v11 = v3;
  v12 = v4;
  v13 = v4;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  v5 = v12;
  if (v16 == v12)
  {
LABEL_13:
    result = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      if (v18 == *(v20 + v6))
      {
        v7 = *(&v20[-1] + v6) + 1;
      }

      else
      {
        *(v20 + v6) = v18;
        v7 = 1;
      }

      *(&v20[-1] + v6) = v7;
      v8 = HIDWORD(v19);
      if (SHIDWORD(v19) >= v19)
      {
        v8 = v19;
      }

      if (v8 >= v2)
      {
        break;
      }

      v6 = !v6;
      KB::String::iterator::operator++(&v15);
      if (v16 == v5)
      {
        goto LABEL_13;
      }
    }

    result = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_contains_terminal_run(KB *this, const KB::String *a2)
{
  v2 = a2;
  v4 = *(this + 2);
  if (!*(this + 2))
  {
    KB::String::compute_length(this);
    v4 = *(this + 2);
  }

  if (v4 < v2)
  {
    return 0;
  }

  v6 = KB::String::last(this);
  v7 = *this;
  if (*(this + 1))
  {
    v8 = *(this + 1);
  }

  else
  {
    v8 = this + 16;
  }

  *&v14 = v8;
  DWORD2(v14) = v7;
  HIDWORD(v14) = v7;
  LODWORD(v15) = 0;
  KB::String::iterator::initialize(&v14);
  v16 = v14;
  v17 = v15;
  std::__advance[abi:nn200100]<KB::String::iterator>(&v16, -v2);
  *&v10 = v8;
  DWORD2(v10) = v7;
  HIDWORD(v10) = v7;
  LODWORD(v11) = 0;
  KB::String::iterator::initialize(&v10);
  v12 = v10;
  v13 = v11;
  KB::String::iterator::operator--(&v12);
  v18 = v16;
  v19 = v17;
  v9 = DWORD2(v12);
  while (DWORD2(v18) != v9)
  {
    result = v19 == v6;
    if (v19 != v6)
    {
      return result;
    }

    KB::String::iterator::operator++(&v18);
  }

  return 1;
}

BOOL KB::string_has_control_characters(KB *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, this);
  v12 = 0;
  {
    KB::string_has_control_characters(KB::String const&)::controlCharacters = CFCharacterSetGetPredefined(kCFCharacterSetControl);
  }

  while (1)
  {
    v2 = HIWORD(v12);
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v2 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
    if (v4 != 8204)
    {
      if (CFCharacterSetIsCharacterMember(KB::string_has_control_characters(KB::String const&)::controlCharacters, v4))
      {
        break;
      }
    }
  }

  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  result = v2 < v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::strings_have_same_uppercase_letters(KB *this, const KB::String *a2, const KB::String *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  KB::String::String(v20, this);
  v24 = 0;
  KB::String::String(v15, a2);
  v19 = 0;
  do
  {
    v4 = HIWORD(v19);
    v5 = v16;
    if (!v16)
    {
      KB::String::compute_length(v15);
      v5 = v16;
    }

    if (v4 >= v5)
    {
      break;
    }

    v6 = HIWORD(v24);
    v7 = v21;
    if (!v21)
    {
      KB::String::compute_length(v20);
      v7 = v21;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = KB::UTF8Iterator::next(v20);
    v9 = KB::UTF8Iterator::next(v15);
    v10 = u_isupper(v8);
    v11 = u_isupper(v9);
    if ((v10 != 0) != (v11 != 0))
    {
      break;
    }
  }

  while (!v10 || !v11 || v8 == v9);
  if (v18)
  {
    v12 = v17 == 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    free(v18);
  }

  if (v23 && v22 == 1)
  {
    free(v23);
  }

  result = v4 >= v5;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL KB::string_has_punctuation(KB *this, const KB::String *a2)
{
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3)
  {
    v5 = *(this + 1);
  }

  else
  {
    v5 = this + 16;
  }

  v15 = v5;
  v6 = *this;
  v16 = 0;
  v17 = v6;
  c = 0;
  KB::String::iterator::initialize(&v15);
  while (1)
  {
    v7 = (v3 ? v3 : v4);
    v11 = v7;
    v12 = v6;
    v13 = v6;
    v14 = 0;
    KB::String::iterator::initialize(&v11);
    v8 = v16;
    v9 = v12;
    if (v16 == v12 || u_ispunct(c))
    {
      break;
    }

    KB::String::iterator::operator++(&v15);
    v6 = *this;
    v3 = *(this + 1);
  }

  return v8 != v9;
}

uint64_t KB::string_capitalization(KB *this, const KB::String *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v2 = this + 16;
  }

  v11 = v2;
  v3 = *this;
  v12 = 0;
  v13 = v3;
  c = 0;
  KB::String::iterator::initialize(&v11);
  v4 = c;
  if (!c)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  do
  {
    v7 = u_isupper(v4);
    v8 = 1 << v6;
    if (!v7)
    {
      v8 = 0;
    }

    v5 = v8 | v5;
    KB::String::iterator::operator++(&v11);
    v4 = c;
    if (c)
    {
      v9 = v6 >= 0x1F;
    }

    else
    {
      v9 = 1;
    }

    ++v6;
  }

  while (!v9);
  return v5;
}

uint64_t KB::to_hex_string@<X0>(uint64_t this@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x100000;
  *(a3 + 4) = 0;
  *(a3 + 6) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    v4 = this;
    v5 = a2;
    do
    {
      v6 = *v4++;
      this = KB::String::append_format(a3, "%02x", v6);
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t KB::to_hex_string@<X0>(KB *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 1);
  if (!v4)
  {
    v4 = this + 16;
  }

  if (*this)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  return KB::to_hex_string(v5, v3, a2);
}

{
  v3 = *this;
  if (v3 <= 0xE)
  {
    v4 = this + 2;
  }

  else
  {
    v4 = *(this + 1);
  }

  return KB::to_hex_string(v4, v3, a2);
}

uint64_t KB::suffixes_equal_utf8(KB *this, const KB::String *a2, const KB::String *a3, const KB::String *a4)
{
  v4 = a4;
  v6 = a2;
  v36 = *MEMORY[0x277D85DE8];
  KB::String::String(v31, this);
  v7 = 0;
  for (i = 0; ; v7 = HIWORD(i))
  {
    v8 = v32;
    v9 = v7;
    if (!v32)
    {
      KB::String::compute_length(v31);
      v8 = v32;
      v9 = HIWORD(i);
    }

    if (v7 >= v8 || v9 >= v6)
    {
      break;
    }

    KB::UTF8Iterator::next(v31);
  }

  KB::String::String(v26, a3);
  v11 = 0;
  for (j = 0; ; v11 = HIWORD(j))
  {
    v12 = v27;
    v13 = v11;
    if (!v27)
    {
      KB::String::compute_length(v26);
      v12 = v27;
      v13 = HIWORD(j);
    }

    if (v11 >= v12 || v13 >= v4)
    {
      break;
    }

    KB::UTF8Iterator::next(v26);
  }

  while (1)
  {
    v18 = HIWORD(i);
    v19 = v32;
    if (!v32)
    {
      KB::String::compute_length(v31);
      v19 = v32;
    }

    if (v18 >= v19)
    {
      break;
    }

    v15 = HIWORD(j);
    v16 = v27;
    if (!v27)
    {
      KB::String::compute_length(v26);
      v16 = v27;
    }

    if (v15 >= v16)
    {
      v20 = HIWORD(i);
      goto LABEL_27;
    }

    v17 = KB::UTF8Iterator::next(v31);
    if (v17 != KB::UTF8Iterator::next(v26))
    {
      v23 = 0;
      goto LABEL_31;
    }
  }

  v20 = HIWORD(i);
  if (!v19)
  {
    KB::String::compute_length(v31);
    v19 = v32;
  }

LABEL_27:
  v21 = HIWORD(j);
  v22 = v27;
  if (!v27)
  {
    KB::String::compute_length(v26);
    v22 = v27;
  }

  v23 = (v20 < v19) ^ (v21 >= v22);
LABEL_31:
  if (v29 && v28 == 1)
  {
    free(v29);
  }

  if (v34 && v33 == 1)
  {
    free(v34);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t KB::prefixes_equal_utf8(KB *this, const KB::String *a2, const KB::String *a3, int a4)
{
  v5 = a3;
  v32 = *MEMORY[0x277D85DE8];
  KB::String::String(v27, this);
  v31 = 0;
  KB::String::String(v22, a2);
  v26 = 0;
  while (1)
  {
    v7 = HIWORD(v31);
    v8 = v28;
    if (!v28)
    {
      KB::String::compute_length(v27);
      v8 = v28;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = HIWORD(v26);
    v10 = v23;
    if (!v23)
    {
      KB::String::compute_length(v22);
      v10 = v23;
    }

    v11 = HIWORD(v31);
    if (v9 >= v10 || HIWORD(v31) >= v5)
    {
      goto LABEL_18;
    }

    v13 = KB::UTF8Iterator::next(v27);
    v14 = v13;
    if (a4)
    {
      v15 = KB::UTF8Iterator::next(v22);
    }

    else
    {
      v14 = MEMORY[0x2318BF180](v13);
      v16 = KB::UTF8Iterator::next(v22);
      v15 = MEMORY[0x2318BF180](v16);
    }

    if (v14 != v15)
    {
      v17 = 0;
      goto LABEL_21;
    }
  }

  v11 = HIWORD(v31);
  if (!v8)
  {
    KB::String::compute_length(v27);
    v8 = v28;
  }

LABEL_18:
  v18 = HIWORD(v26);
  v19 = v23;
  if (!v23)
  {
    KB::String::compute_length(v22);
    v19 = v23;
  }

  v17 = (v11 < v8) ^ (v18 >= v19);
LABEL_21:
  if (v25 && v24 == 1)
  {
    free(v25);
  }

  if (v30 && v29 == 1)
  {
    free(v30);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

void KB::word_with_string(KB::String *this@<X1>, uint64_t *a2@<X0>, int a3@<W2>, KB::Word *a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 == a2[1] || *this == 0)
  {
    *(a4 + 13) = 0u;
    *(a4 + 14) = 0u;
    *(a4 + 11) = 0u;
    *(a4 + 12) = 0u;
    *(a4 + 9) = 0u;
    *(a4 + 10) = 0u;
    *(a4 + 7) = 0u;
    *(a4 + 8) = 0u;
    *(a4 + 5) = 0u;
    *(a4 + 6) = 0u;
    *(a4 + 3) = 0u;
    *(a4 + 4) = 0u;
    *(a4 + 1) = 0u;
    *(a4 + 2) = 0u;
    *a4 = 0u;
    v7 = *MEMORY[0x277D85DE8];

    KB::Word::Word(a4);
    return;
  }

  v11 = 0;
  v12 = 1;
  while (!a3)
  {
    if (KB::String::equal(this, (v5 + 240 * v11), 0))
    {
      goto LABEL_18;
    }

LABEL_16:
    v11 = v12;
    v5 = *a2;
    if (0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4) <= v12++)
    {
      *(a4 + 13) = 0u;
      *(a4 + 14) = 0u;
      *(a4 + 11) = 0u;
      *(a4 + 12) = 0u;
      *(a4 + 9) = 0u;
      *(a4 + 10) = 0u;
      *(a4 + 7) = 0u;
      *(a4 + 8) = 0u;
      *(a4 + 5) = 0u;
      *(a4 + 6) = 0u;
      *(a4 + 3) = 0u;
      *(a4 + 4) = 0u;
      *(a4 + 1) = 0u;
      *(a4 + 2) = 0u;
      *a4 = 0u;
      KB::Word::Word(a4);
      goto LABEL_19;
    }
  }

  KB::Word::capitalized_string((v5 + 240 * v11), v16);
  v13 = KB::String::equal(this, v16, 1);
  if (v17)
  {
    if (v16[6] == 1)
    {
      free(v17);
    }
  }

  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_18:
  KB::Word::Word(a4, (*a2 + 240 * v11));
LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
}

BOOL KB::word_vector_contains_string(uint64_t *a1, KB::String *a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  KB::word_with_string(a2, a1, a3, v6);
  v3 = v6[0] != 0;
  KB::Word::~Word(v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL KB::character_has_diacritic(KB *this, int a2)
{
  result = 0;
  if (a2 > 710)
  {
    if (a2 > 729)
    {
      if (a2 == 730)
      {
        v4 = MEMORY[0x277D6FDF0];
      }

      else
      {
        if (a2 != 732)
        {
          return result;
        }

        v4 = MEMORY[0x277D6FDF8];
      }
    }

    else if (a2 == 711)
    {
      v4 = MEMORY[0x277D6FDC8];
    }

    else
    {
      if (a2 != 715)
      {
        return result;
      }

      v4 = MEMORY[0x277D6FDE0];
    }

    goto LABEL_19;
  }

  if (a2 <= 179)
  {
    if (a2 == 168)
    {
      v4 = MEMORY[0x277D6FDD8];
    }

    else
    {
      if (a2 != 175)
      {
        return result;
      }

      v4 = MEMORY[0x277D6FDE8];
    }

LABEL_19:
    v5 = v4;
    goto LABEL_20;
  }

  v5 = MEMORY[0x277D6FDC0];
  if (a2 != 180)
  {
    if (a2 != 710)
    {
      return result;
    }

    v4 = MEMORY[0x277D6FDD0];
    goto LABEL_19;
  }

LABEL_20:
  v6 = v5(this);
  if (v6)
  {
    v7 = v6 == this;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

BOOL KB::character_is_free_insertion(UChar32 c)
{
  result = 1;
  if (c > 729)
  {
    if (c == 730 || c == 732 || c == 901)
    {
      return result;
    }
  }

  else if ((c - 168) <= 0xC && ((1 << (c + 88)) & 0x1081) != 0)
  {
    return result;
  }

  if (u_charType(c) == 4)
  {
    return 1;
  }

  result = 1;
  if (c <= 2304)
  {
    if (c > 1599)
    {
      if ((c - 1600) <= 0x30)
      {
        v3 = 1 << (c - 64);
        v4 = 0x1000000FFF801;
LABEL_18:
        if ((v3 & v4) != 0)
        {
          return result;
        }
      }

LABEL_47:
      v5 = u_ispunct(c);
      return c != 38 && v5 != 0;
    }

    if (((c - 710) > 5 || ((1 << (c + 58)) & 0x33) == 0) && ((c - 168) > 0xC || ((1 << (c + 88)) & 0x1081) == 0))
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (c > 2636)
    {
      if (c > 2747)
      {
        if (c <= 3020)
        {
          if (c == 2748 || c == 2765 || c == 2946)
          {
            return result;
          }
        }

        else if (c > 3148)
        {
          if (c == 3149 || c == 8204)
          {
            return result;
          }
        }

        else if (c == 3021 || c == 3075)
        {
          return result;
        }

        goto LABEL_47;
      }

      if ((c - 2637) <= 0x36)
      {
        v3 = 1 << (c - 77);
        v4 = 0x70001800000011;
        goto LABEL_18;
      }

      goto LABEL_47;
    }

    if (c <= 2491)
    {
      if ((c - 2305) <= 0x3B && ((1 << (c - 1)) & 0x800000000000007) != 0)
      {
        return result;
      }

      if ((c - 2381) > 0x36)
      {
        goto LABEL_47;
      }

      v3 = 1 << (c - 77);
      v4 = 0x50000000000001;
      goto LABEL_18;
    }

    if (((c - 2561) > 0x3B || ((1 << (c - 1)) & 0x800000000000007) == 0) && c != 2492 && c != 2509)
    {
      goto LABEL_47;
    }
  }

  return result;
}

BOOL KB::string_contains_surface_form_features(KB *this, const KB::String *a2)
{
  v3 = this + 16;
  if (*(this + 1))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = this + 16;
  }

  v16 = v4;
  v5 = *this;
  v17 = 0;
  v18 = v5;
  c = 0;
  KB::String::iterator::initialize(&v16);
  v12 = v4;
  v13 = v5;
  v14 = v5;
  v15 = 0;
  KB::String::iterator::initialize(&v12);
  v6 = v17;
  v7 = v13;
  if (v17 != v13)
  {
    while (1)
    {
      v8 = c;
      if (KB::character_is_free_insertion(c) || KB::character_is_precomposed_diacritic_letter(v8) || KB::character_is_digraph(v8))
      {
        break;
      }

      KB::String::iterator::operator++(&v16);
      if (v17 == v7)
      {
        v6 = v7;
        goto LABEL_11;
      }
    }

    v6 = v17;
  }

LABEL_11:
  v9 = *this;
  v10 = *(this + 1);
  if (!v10)
  {
    v10 = v3;
  }

  v16 = v10;
  v17 = v9;
  v18 = v9;
  c = 0;
  KB::String::iterator::initialize(&v16);
  return v6 != v17;
}

BOOL KB::substitution_allowed(KB *this, uint64_t a2, _BYTE *a3, BOOL *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2 == this)
  {
    return 1;
  }

  v6 = MEMORY[0x2318BF180](a2);
  v7 = MEMORY[0x2318BF180](this);
  if (v6 == v7)
  {
    return 1;
  }

  v9 = v7;
  if (a3)
  {
    *a3 = 1;
  }

  if (((1 << u_charType(v6)) & 0x2E) != 0 && ((1 << u_charType(v9)) & 0x2E) != 0 && !KB::character_is_precomposed_diacritic_letter(v6) && !KB::character_is_digraph(v6))
  {
    return 1;
  }

  if (v9 > 368)
  {
    switch(v9)
    {
      case 369:
        v13 = v6 == 252;
        v14 = 250;
        break;
      case 901:
        v13 = v6 == 180;
        v14 = 168;
        break;
      case 2305:
        return v6 == 2306;
      default:
        return 0;
    }

    return v13 || v6 == v14;
  }

  v12 = v6 == 246 || v6 == 243;
  if (v9 != 337)
  {
    v12 = 0;
  }

  if (v9 == 39)
  {
    return v6 == 8217;
  }

  else
  {
    return v12;
  }
}

uint64_t KB::string_preserves_surface_form_features(unsigned __int16 *a1, unsigned __int16 *a2, _BYTE *a3, std::vector<unsigned int> *a4)
{
  v5[1] = 1;
  v5[0] = &unk_283FDCF10;
  return KB::InputSegmentFilter::string_preserves_surface_form_features(v5, a1, a2, a3, a4);
}

uint64_t KB::string_preserves_surface_form_features_of_prefix(const KB::String *a1, unsigned __int16 *a2, const ByteString *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 24);
  if (!v5)
  {
LABEL_31:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v5 + 48))(&v17);
  if (KB::ByteString::starts_with(&v17, a3))
  {
    KB::String::String(v21, a1);
    v9 = v17;
    if (v17 >= 0xFu)
    {
      operator new[]();
    }

    v11 = __src;
    while (v9 > a3->var0.var0.var0)
    {
      v12 = v22;
      if (!v22)
      {
        KB::String::compute_length(v21);
        v12 = v22;
      }

      KB::String::shorten(v21, (v12 - 1), &v19);
      KB::String::operator=(v21, &v19);
      if (v20)
      {
        v13 = BYTE6(v19) == 1;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        free(v20);
      }

      v14 = *(a4 + 24);
      if (!v14)
      {
        goto LABEL_31;
      }

      (*(*v14 + 48))(&v19);
      if (v9 >= 0xF && v11)
      {
        MEMORY[0x2318BE250](v11, 0x1000C8077774924);
      }

      v9 = v19;
      v11 = v20;
    }

    v20 = 1;
    v19 = &unk_283FDCF10;
    v10 = KB::InputSegmentFilter::string_preserves_surface_form_features(&v19, v21, a2, 0, 0);
    if (v9 >= 0xF && v11)
    {
      MEMORY[0x2318BE250](v11, 0x1000C8077774924);
    }

    if (v24 && v23 == 1)
    {
      free(v24);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v17 >= 0xFu && __src)
  {
    MEMORY[0x2318BE250](__src, 0x1000C8077774924);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

KB::String *KB::trim_stops@<X0>(KB *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *this;
  if (*this)
  {
    v6 = *(this + 1);
    if (v6)
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = this + 16;
    }

    v19 = v7;
    v20 = 0;
    v21 = v5;
    c = 0;
    KB::String::iterator::initialize(&v19);
    v8 = c;
    if (c)
    {
      do
      {
        v9 = u_ispunct(v8);
        if (v8 == 38)
        {
          break;
        }

        if (!v9)
        {
          break;
        }

        KB::String::iterator::operator++(&v19);
        v8 = c;
      }

      while (c);
      v5 = *this;
      v6 = *(this + 1);
    }

    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = this + 16;
    }

    *&v17 = v10;
    DWORD2(v17) = v5;
    HIDWORD(v17) = v5;
    LODWORD(v18) = 0;
    result = KB::String::iterator::initialize(&v17);
    if (v20 == DWORD2(v17))
    {
      *a2 = 0x100000;
      *(a2 + 4) = 0;
      *(a2 + 6) = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      do
      {
        v15 = v17;
        *v16 = v18;
        KB::String::iterator::operator--(&v15);
        v12 = v16[0];
        v13 = u_ispunct(v16[0]);
        if (v12 == 38 || v13 == 0)
        {
          break;
        }

        KB::String::iterator::operator--(&v17);
      }

      while (DWORD2(v17) != v20);
      return KB::String::String(a2, &v19, &v17);
    }
  }

  else
  {

    return KB::String::String(a2, this);
  }

  return result;
}

uint64_t KB::edit_distance(KB *this, const KB::String *a2, const KB::String *a3)
{
  if (*(this + 1))
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = this + 16;
  }

  v55 = v4;
  v5 = *this;
  LODWORD(v56) = 0;
  HIDWORD(v56) = v5;
  LODWORD(v57) = 0;
  KB::String::iterator::initialize(&v55);
  v51 = v4;
  LODWORD(v52) = v5;
  HIDWORD(v52) = v5;
  LODWORD(v53) = 0;
  KB::String::iterator::initialize(&v51);
  WTF::Vector<unsigned int,32ul>::Vector<KB::String::iterator>(&v59, &v55, &v51);
  if (*(a2 + 1))
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = a2 + 16;
  }

  v51 = v6;
  v7 = *a2;
  LODWORD(v52) = 0;
  HIDWORD(v52) = v7;
  LODWORD(v53) = 0;
  KB::String::iterator::initialize(&v51);
  v47 = v6;
  LODWORD(v48) = v7;
  HIDWORD(v48) = v7;
  LODWORD(v49) = 0;
  KB::String::iterator::initialize(&v47);
  WTF::Vector<unsigned int,32ul>::Vector<KB::String::iterator>(&v55, &v51, &v47);
  v8 = v59;
  v9 = v55;
  v10 = (v55 + 1);
  v51 = v10;
  v52 = v54;
  v53 = 32;
  v11 = v10;
  v12 = v54;
  if (v10 >= 0x21)
  {
    v13 = 4 * v10;
    v12 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v52 = v12;
    v53 = v10;
    if (!v12)
    {
      v47 = v10;
      v48 = v50;
      v49 = 32;
      goto LABEL_21;
    }

    v11 = v51;
  }

  if (v11)
  {
    bzero(v12, 4 * v11);
  }

  v47 = v10;
  v48 = v50;
  v49 = 32;
  if (v10 < 0x21)
  {
    v14 = v10;
    v15 = v50;
    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_15:
    bzero(v15, 4 * v14);
    goto LABEL_16;
  }

  v13 = 4 * v10;
LABEL_21:
  v15 = malloc_type_malloc(v13, 0x100004052888210uLL);
  v48 = v15;
  v49 = v10;
  if (!v15)
  {
    v43 = v10;
    v44 = v46;
    v45 = 32;
    goto LABEL_25;
  }

  v14 = v47;
  if (v47)
  {
    goto LABEL_15;
  }

LABEL_16:
  v43 = v10;
  v44 = v46;
  v45 = 32;
  if (v10 < 0x21)
  {
    v16 = v10;
    v17 = v46;
    if (!v10)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = 4 * v10;
LABEL_25:
  v17 = malloc_type_malloc(v13, 0x100004052888210uLL);
  v44 = v17;
  v45 = v10;
  if (!v17)
  {
    goto LABEL_28;
  }

  v16 = v43;
  if (!v43)
  {
    goto LABEL_28;
  }

LABEL_27:
  bzero(v17, 4 * v16);
LABEL_28:
  v18 = 0;
  v19 = vdupq_n_s64(v10 - 1);
  v20 = xmmword_22CC88A90;
  v21 = xmmword_22CC88AA0;
  v22 = v17 + 2;
  v23 = vdupq_n_s64(4uLL);
  do
  {
    v24 = vmovn_s64(vcgeq_u64(v19, v21));
    if (vuzp1_s16(v24, *v19.i8).u8[0])
    {
      *(v22 - 2) = v18;
    }

    if (vuzp1_s16(v24, *&v19).i8[2])
    {
      *(v22 - 1) = v18 + 1;
    }

    if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v20))).i32[1])
    {
      *v22 = v18 + 2;
      v22[1] = v18 + 3;
    }

    v18 += 4;
    v20 = vaddq_s64(v20, v23);
    v21 = vaddq_s64(v21, v23);
    v22 += 4;
  }

  while (((v10 + 3) & 0x1FFFFFFFCLL) != v18);
  v25 = v9;
  if (v8)
  {
    v26 = (v8 + 1);
    v27 = 1;
    do
    {
      WTF::Vector<unsigned int,32ul>::operator=(&v51, &v47);
      WTF::Vector<unsigned int,32ul>::operator=(&v47, &v43);
      v28 = v48;
      v29 = *v48 + 1;
      v17 = v44;
      *v44 = v29;
      if (v25)
      {
        v30 = v60 + 4 * v27;
        v31 = v56;
        v32 = v52 - 4;
        v33 = v28 + 4;
        v34 = 1;
        do
        {
          v35 = *(v33 - 1);
          ++v29;
          if (*(v30 - 1) != *v31)
          {
            ++v35;
          }

          if (v29 >= *v33 + 1)
          {
            v29 = *v33 + 1;
          }

          if (v35 < v29)
          {
            v29 = v35;
          }

          v17[v34] = v29;
          if (v27 >= 2 && v34 >= 2)
          {
            v36 = *(v30 - 1);
            if (v36 == *(v31 - 1) && *(v30 - 2) == *v31 && v36 != *v31)
            {
              if (*v32 + 1 < v29)
              {
                v29 = *v32 + 1;
              }

              v17[v34] = v29;
            }
          }

          ++v33;
          ++v34;
          ++v32;
          ++v31;
        }

        while (v10 != v34);
      }

      ++v27;
    }

    while (v27 != v26);
  }

  v37 = v17[v25];
  if (v43)
  {
    v43 = 0;
  }

  if (v46 != v17)
  {
    v44 = 0;
    v45 = 0;
    free(v17);
  }

  if (v47)
  {
    v47 = 0;
  }

  v38 = v48;
  if (v50 != v48)
  {
    v48 = 0;
    v49 = 0;
    free(v38);
  }

  if (v51)
  {
    v51 = 0;
  }

  v39 = v52;
  if (v54 != v52)
  {
    v52 = 0;
    v53 = 0;
    free(v39);
  }

  if (v55)
  {
    v55 = 0;
  }

  v40 = v56;
  if (&v58 != v56)
  {
    v56 = 0;
    v57 = 0;
    free(v40);
  }

  if (v59)
  {
    v59 = 0;
  }

  v41 = v60;
  if (&v62 != v60)
  {
    v60 = 0;
    v61 = 0;
    free(v41);
  }

  return v37;
}

unint64_t *WTF::Vector<unsigned int,32ul>::Vector<KB::String::iterator>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = (a1 + 3);
  a1[2] = 32;
  while (*(a2 + 8) != *(a3 + 8))
  {
    v6 = *(a2 + 16);
    v18 = v6;
    v7 = *a1;
    if (*a1 == a1[2])
    {
      v8 = v7 + 1;
      v9 = a1[1];
      if (v9 > &v18 || v9 + 4 * v7 <= &v18)
      {
        if (v7 >= 0x100)
        {
          v15 = v7 + (v7 >> 1);
        }

        else
        {
          v15 = 2 * v7;
        }

        if (v15 <= v8)
        {
          v16 = v8;
        }

        else
        {
          v16 = v15;
        }

        WTF::Vector<unsigned int,32ul>::reserveCapacity(a1, v16);
        v13 = a1[1];
        v14 = &v18;
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v10 = &v18 - v9;
        if (v7 >= 0x100)
        {
          v11 = v7 + (v7 >> 1);
        }

        else
        {
          v11 = 2 * v7;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        WTF::Vector<unsigned int,32ul>::reserveCapacity(a1, v12);
        v13 = a1[1];
        v14 = &v10[v13];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v7 = *a1;
      v6 = *v14;
    }

    else
    {
      v13 = a1[1];
    }

    *(v13 + 4 * v7) = v6;
    *a1 = v7 + 1;
LABEL_23:
    KB::String::iterator::operator++(a2);
  }

  return a1;
}

unint64_t *WTF::Vector<unsigned int,32ul>::operator=(unint64_t *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v4 = *a1;
  v5 = *a2;
  if (*a1 > *a2)
  {
    *a1 = v5;
    v4 = v5;
LABEL_14:
    v9 = a1[1];
    if (v4)
    {
      memmove(v9, *(a2 + 8), 4 * v4);
      v4 = *a1;
      v9 = a1[1];
    }

    memcpy(&v9[4 * v4], (*(a2 + 8) + 4 * v4), 4 * (*a2 - v4));
    *a1 = *a2;
    return a1;
  }

  v6 = a1[2];
  if (v5 <= v6)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    if (v4)
    {
      *a1 = 0;
    }

    v8 = (a1 + 1);
    v7 = a1[1];
    if (a1 + 3 != v7)
    {
      *v8 = 0;
      a1[2] = 0;
      free(v7);
      v7 = *v8;
    }

    if (!v7)
    {
      a1[1] = (a1 + 3);
      a1[2] = 32;
    }
  }

  WTF::Vector<unsigned int,32ul>::reserveCapacity(a1, *a2);
  if (a1[1])
  {
    v4 = *a1;
    goto LABEL_14;
  }

  return a1;
}

void WTF::Vector<unsigned int,32ul>::reserveCapacity(void *a1, unint64_t a2)
{
  if (a1[2] >= a2)
  {
    return;
  }

  v5 = (a1 + 1);
  v4 = a1[1];
  v6 = *a1;
  if (a2 <= 0x20)
  {
    v7 = a1 + 3;
    a1[1] = a1 + 3;
    a1[2] = 32;
    goto LABEL_6;
  }

  v7 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  a1[1] = v7;
  a1[2] = a2;
  if (v7)
  {
LABEL_6:
    memcpy(v7, v4, 4 * v6);
  }

  if (a1 + 3 != v4)
  {
    if (*v5 == v4)
    {
      *v5 = 0;
      v5[1] = 0;
    }

    free(v4);
  }
}

void KB::character_to_titlecase(UChar32 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  src = a1;
  *a3 = 0x100000;
  *(a3 + 4) = 0;
  *(a3 + 6) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a1)
  {
    {
      v19 = KB::thread_local_titlecase_break_iterator(std::string const&)::break_iterators(&KB::thread_local_titlecase_break_iterator(std::string const&)::break_iterators);
      v19[2] = 0;
      v19[1] = 0;
      *v19 = v19 + 1;
      _tlv_atexit(std::map<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>::~map[abi:nn200100], v19);
    }

    v6 = KB::thread_local_titlecase_break_iterator(std::string const&)::break_iterators(&KB::thread_local_titlecase_break_iterator(std::string const&)::break_iterators);
    v8 = v6 + 8;
    v7 = *(v6 + 8);
    if (!v7)
    {
      goto LABEL_12;
    }

    v9 = v6 + 8;
    do
    {
      v10 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v7 + 32), a2);
      if ((v10 & 0x80u) == 0)
      {
        v9 = v7;
      }

      v7 = *(v7 + ((v10 >> 4) & 8));
    }

    while (v7);
    if (v9 == v8 || (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v9 + 32)) & 0x80) != 0)
    {
LABEL_12:
      *v25 = 0;
      if (*(a2 + 23) < 0)
      {
        v12 = *a2;
      }

      ubrk_open();
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *a2, a2[1]);
      }

      else
      {
        v26 = *a2;
      }

      operator new();
    }

    v11 = *(v9 + 56);
    v13 = *(a2 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = a2[1];
    }

    if (v13)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_30;
    }

    pErrorCode = U_ZERO_ERROR;
    pDestLength = 0;
    u_strFromUTF32(dest, 3, &pDestLength, &src, 1, &pErrorCode);
    v15 = *(a2 + 23) >= 0 ? a2 : *a2;
    v16 = u_strToTitle(v25, 5, dest, pDestLength, v11, v15, &pErrorCode);
    v20 = 0;
    u_strToUTF8(&v26, 13, &v20, v25, v16, &pErrorCode);
    if (pErrorCode <= U_ZERO_ERROR)
    {
      KB::String::append(a3, &v26, 0xFFFFuLL);
    }

    if (!*a3)
    {
LABEL_30:
      v17 = MEMORY[0x2318BF190](src);
      KB::String::append(a3, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    ubrk_close();
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unique_ptr<UBreakIterator,KB::BreakIterDeleter>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void KB::character_to_lowercase(UChar32 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  src = a1;
  *a3 = 0x100000;
  *(a3 + 4) = 0;
  *(a3 + 6) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a1)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    pErrorCode = U_ZERO_ERROR;
    pDestLength = 0;
    u_strFromUTF32(dest, 3, &pDestLength, &src, 1, &pErrorCode);
    v6 = *(a2 + 23) >= 0 ? a2 : *a2;
    v7 = u_strToLower(v16, 5, dest, pDestLength, v6, &pErrorCode);
    v10 = 0;
    u_strToUTF8(__s1, 13, &v10, v16, v7, &pErrorCode);
    if (pErrorCode <= U_ZERO_ERROR)
    {
      KB::String::append(a3, __s1, 0xFFFFuLL);
    }

    if (!*a3)
    {
LABEL_11:
      v8 = MEMORY[0x2318BF180](src);
      KB::String::append(a3, v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void KB::string_to_lowercase(KB *this@<X0>, const KB::String *a2@<X1>, KB::String *a3@<X8>)
{
  v4 = this;
  v34 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    LODWORD(v31) = 0x100000;
    WORD2(v31) = 0;
    BYTE6(v31) = 0;
    v32 = 0;
    v33 = 0;
    pErrorCode = U_ZERO_ERROR;
    v7 = *(this + 2);
    if (!*(this + 2))
    {
      KB::String::compute_length(this);
      v7 = *(v4 + 2);
    }

    v8 = 4 * v7 + 4;
    pDestLength = 0;
    v28 = 0;
    v29 = v8;
    v30 = v7 > 0xFF;
    if (v7 < 0x100)
    {
      v9 = dest;
    }

    else
    {
      v9 = malloc_type_malloc(4 * v7 + 4, 0x100004077774924uLL);
      v28 = v9;
    }

    v11 = *(v4 + 1);
    if (!v11)
    {
      v11 = v4 + 16;
    }

    if (*v4)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    u_strFromUTF8(v9, v8 >> 1, &pDestLength, v12, *v4, &pErrorCode);
    v24 = 0;
    v25 = 2 * v8;
    v26 = v7 > 0x7F;
    v13 = v23;
    if (v7 >= 0x80)
    {
      v13 = malloc_type_malloc(2 * v8, 0x100004077774924uLL);
      v24 = v13;
    }

    if (v30)
    {
      v14 = v28;
    }

    else
    {
      v14 = dest;
    }

    v15 = u_strToLower(v13, 4 * v7 + 4, v14, pDestLength, a2, &pErrorCode);
    v20 = 0;
    if (v30)
    {
      v16 = v28;
    }

    else
    {
      v16 = dest;
    }

    if (v26)
    {
      v17 = v24;
    }

    else
    {
      v17 = v23;
    }

    u_strToUTF8(v16, 4 * v7 + 4, &v20, v17, v15, &pErrorCode);
    if (pErrorCode <= U_ZERO_ERROR)
    {
      v18 = (v30 ? v28 : dest);
      KB::String::operator=(&v31, v18);
      if (v31)
      {
        v4 = &v31;
      }
    }

    KB::String::String(a3, v4);
    free(v24);
    free(v28);
    if (v32)
    {
      if (BYTE6(v31) == 1)
      {
        free(v32);
      }
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    KB::String::String(a3, this);
  }
}

id _text_checker(uint64_t a1)
{
  v2 = _text_checker(BOOL)::checker;
  if (!_text_checker(BOOL)::checker)
  {
    v3 = [[TITextChecker alloc] initWithAsynchronousLoading:a1];
    v4 = _text_checker(BOOL)::checker;
    _text_checker(BOOL)::checker = v3;

    v2 = _text_checker(BOOL)::checker;
  }

  return v2;
}

void KB::spellcheck_candidates(KB *this@<X0>, const KB::String *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  *(a3 + 100) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  v7 = KB::ns_string(a2, a2);
  v8 = _text_checker(1);
  v9 = v8;
  if (v8 && [v8 doneLoading])
  {
    KB::Candidate::Candidate(v40, this, 0);
    if (v40[0])
    {
      v11 = v40[1] + 240 * v40[0];
      if ((*(v11 - 105) & 4) == 0)
      {
        v12 = KB::ns_string((v11 - 240), v10);
        v34 = 0;
        v13 = [v9 checkSpellingOfString:v12 startingAt:0 language:v7 wrap:0 correction:&v34];
        v14 = v34;
        v15 = v14;
        if (v14)
        {
          KB::utf8_string(v14, v38);
          v16 = *(a2 + 1);
          if (!v16)
          {
            v16 = a2 + 16;
          }

          if (*a2)
          {
            v17 = v16;
          }

          else
          {
            v17 = "";
          }

          v33.lexicon_id = TILexiconIDForLocaleIdentifier(v17);
          v33.word_id = 0;
          KB::Word::Word(v36, v38, &v33, 0);
          v37 |= 0x8000u;
          KB::Candidate::pop_last_word(v40);
          KB::Candidate::append(v40, v36);
          v19 = KB::edit_distance(this, v38, v18);
          v41 = logf(1.0 / (v19 + 1));
          v20 = *(a3 + 8);
          v21 = *(a3 + 16);
          if (v20 >= v21)
          {
            v23 = 0x1CAC083126E978D5 * ((v20 - *a3) >> 3);
            if ((v23 + 1) > 0x4189374BC6A7EFLL)
            {
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            v24 = 0x1CAC083126E978D5 * ((v21 - *a3) >> 3);
            v25 = 2 * v24;
            if (2 * v24 <= v23 + 1)
            {
              v25 = v23 + 1;
            }

            if (v24 >= 0x20C49BA5E353F7)
            {
              v26 = 0x4189374BC6A7EFLL;
            }

            else
            {
              v26 = v25;
            }

            v35[4] = a3;
            if (v26)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v26);
            }

            v27 = (1000 * v23);
            KB::Candidate::Candidate(v27, v40);
            v22 = v27 + 1000;
            v28 = *(a3 + 8);
            v29 = v27 + *a3 - v28;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a3, v28, v29);
            v30 = *a3;
            *a3 = v29;
            *(a3 + 8) = v22;
            v31 = *(a3 + 16);
            *(a3 + 16) = 0;
            v35[2] = v30;
            v35[3] = v31;
            v35[0] = v30;
            v35[1] = v30;
            std::__split_buffer<KB::Candidate>::~__split_buffer(v35);
          }

          else
          {
            v22 = KB::Candidate::Candidate(v20, v40) + 1000;
          }

          *(a3 + 8) = v22;
          KB::Word::~Word(v36);
          if (v39 && v38[6] == 1)
          {
            free(v39);
          }
        }

        else if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          std::vector<KB::Candidate>::push_back[abi:nn200100](a3, v40);
        }
      }
    }

    KB::Candidate::~Candidate(v40);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void KB::cf_string(KB *this@<X0>, CFStringRef *a2@<X8>)
{
  KB::cf_string_impl<KB::String>(a2, this);
}

{
  v8 = *MEMORY[0x277D85DE8];
  KB::String::String(v5, this);
  KB::cf_string_impl<KB::String>(a2, v5);
  if (v7)
  {
    v3 = v6 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void KB::cf_string(const UInt8 *a1@<X0>, CFStringRef *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 1u);
  if (!v7)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 23) >= 0)
        {
          v10 = a1;
        }

        else
        {
          v10 = *a1;
        }

        v11 = 136315394;
        v12 = "cf_string_impl";
        v13 = 2080;
        v14 = v10;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%s warning: bytes do not represent UTF8 string: %s", &v11, 0x16u);
      }
    }
  }

  *a2 = v7;
  v9 = *MEMORY[0x277D85DE8];
}

void KB::cf_string_no_copy(KB *this@<X0>, CFStringRef *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  if (!v5)
  {
    v5 = this + 16;
  }

  *this;
  if (*this)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  v7 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v6, *this, 0x8000100u, 1u, *MEMORY[0x277CBED00]);
  if (!v7)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(this + 1);
        if (!v10)
        {
          v10 = this + 16;
        }

        if (*this)
        {
          v11 = v10;
        }

        else
        {
          v11 = "";
        }

        v12 = 136315394;
        v13 = "cf_string_no_copy";
        v14 = 2080;
        v15 = v11;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%s warning: bytes do not represent UTF8 string: %s", &v12, 0x16u);
      }
    }
  }

  *a2 = v7;
  v9 = *MEMORY[0x277D85DE8];
}

CFMutableStringRef KB::cf_mutable_string@<X0>(CFMutableStringRef *a1@<X8>)
{
  result = CFStringCreateMutable(0, 0);
  *a1 = result;
  return result;
}

void KB::append_format(__CFString *this, __CFString *a2, const char *a3, ...)
{
  va_start(va, a3);
  {
    KB::append_format(__CFString *,char const*,...)::__buffer = 0x100000;
    word_280FAC944 = 0;
    byte_280FAC946 = 0;
    qword_280FAC948 = 0;
    byte_280FAC950 = 0;
    __cxa_atexit(KB::String::~String, &KB::append_format(__CFString *,char const*,...)::__buffer, &dword_22CA55000);
  }

  KB::String::clear(&KB::append_format(__CFString *,char const*,...)::__buffer);
  KB::String::append_format(&KB::append_format(__CFString *,char const*,...)::__buffer, a2, va);
  v5 = qword_280FAC948;
  if (!qword_280FAC948)
  {
    v5 = &byte_280FAC950;
  }

  if (KB::append_format(__CFString *,char const*,...)::__buffer)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  CFStringAppendCString(this, v6, 0x8000100u);
}

void KB::lower_string(KB *this@<X0>, const KB::String *a2@<X1>, KB::String *a3@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = *this;
  v8 = *(this + 2);
  if (*(this + 2))
  {
    if (a2)
    {
LABEL_21:
      KB::cf_mutable_string(v19, this);
      v17 = v19[0];
      CFStringLowercase(v19[0], a2);
      KB::utf8_string(v17, a3);
      if (v17)
      {
        CFRelease(v17);
      }

      goto LABEL_24;
    }
  }

  else
  {
    KB::String::compute_length(this);
    v8 = *(this + 2);
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if (v7 != v8)
  {
    goto LABEL_21;
  }

  v9 = *this;
  MEMORY[0x28223BE20]();
  v11 = v19 - v10;
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v13 = *(this + 1);
      if (!v13)
      {
        v13 = this + 16;
      }

      if (*this)
      {
        v14 = v13;
      }

      else
      {
        v14 = "";
      }

      v11[i] = __tolower(v14[i]);
    }
  }

  v11[v9] = 0;
  v15 = *(this + 1);
  if (!v15)
  {
    v15 = this + 16;
  }

  if (*this)
  {
    v16 = v15;
  }

  else
  {
    v16 = "";
  }

  if (!strcmp(v16, v11))
  {
    KB::String::String(a3, this);
  }

  else
  {
    KB::String::String(a3, v11);
  }

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
}

void KB::cf_mutable_string(KB *this, const KB::String *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  *this = Mutable;
  v5 = *(a2 + 1);
  if (!v5)
  {
    v5 = a2 + 16;
  }

  if (*a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  CFStringAppendCString(Mutable, v6, 0x8000100u);
}

void KB::upper_string(KB *this@<X0>, const KB::String *a2@<X1>, const __CFLocale *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, KB::String *a6@<X8>)
{
  v7 = this;
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = *this;
  v10 = *(this + 2);
  if (*(this + 2))
  {
    if (a2)
    {
LABEL_21:
      KB::cf_mutable_string(v21, v7);
      v19 = v21[0];
      CFStringUppercase(v21[0], a2);
      KB::utf8_string(v19, a6);
      if (v19)
      {
        CFRelease(v19);
      }

      goto LABEL_24;
    }
  }

  else
  {
    this = KB::String::compute_length(this);
    v10 = *(v7 + 2);
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_21;
  }

  v11 = *v7;
  MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v13 = v21 - v12;
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v15 = *(v7 + 1);
      if (!v15)
      {
        v15 = v7 + 16;
      }

      if (*v7)
      {
        v16 = v15;
      }

      else
      {
        v16 = "";
      }

      v13[i] = __toupper(v16[i]);
    }
  }

  v13[v11] = 0;
  v17 = *(v7 + 1);
  if (!v17)
  {
    v17 = v7 + 16;
  }

  if (*v7)
  {
    v18 = v17;
  }

  else
  {
    v18 = "";
  }

  if (!strcmp(v18, v13))
  {
    KB::String::String(a6, v7);
  }

  else
  {
    KB::String::String(a6, v13);
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
}

void KB::lower_character(unsigned int this@<W0>, const __CFLocale *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this;
  if (this > 0x7F || a2)
  {
    Mutable = CFStringCreateMutable(0, 0);
    chars = v5;
    CFStringAppendCharacters(Mutable, &chars, 1);
    CFStringLowercase(Mutable, a2);
    KB::utf8_string(Mutable, a3);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v7 = __tolower(this);

    KB::String::String(a3, v7);
  }
}

void KB::upper_character(unsigned int this@<W0>, const __CFLocale *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this;
  if (this > 0x7F || a2)
  {
    Mutable = CFStringCreateMutable(0, 0);
    chars = v5;
    CFStringAppendCharacters(Mutable, &chars, 1);
    CFStringUppercase(Mutable, a2);
    KB::utf8_string(Mutable, a3);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v7 = __toupper(this);

    KB::String::String(a3, v7);
  }
}

CFNumberRef KB::cf_number@<X0>(double a1@<D0>, CFNumberRef *a2@<X8>)
{
  valuePtr = a1;
  result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  *a2 = result;
  return result;
}

CFMutableDictionaryRef KB::cf_mutable_dictionary@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *a1 = result;
  return result;
}

CFMutableArrayRef KB::cf_mutable_array@<X0>(CFIndex capacity@<X0>, CFMutableArrayRef *a2@<X8>)
{
  result = CFArrayCreateMutable(*MEMORY[0x277CBECE8], capacity, MEMORY[0x277CBF128]);
  *a2 = result;
  return result;
}

void KB::string_from_locale(KB *this@<X0>, const __CFLocale *a2@<X1>, _BYTE *a3@<X8>)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318BC170](this, a2);
  KB::utf8_string(v4, v9);
  v5 = v11;
  if (!v11)
  {
    v5 = v12;
  }

  if (v9[0])
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(a3, v6);
  if (v11)
  {
    v7 = v10 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void KB::kb_string_from_locale(KB *this@<X0>, const __CFLocale *a2@<X1>, KB::String *a3@<X8>)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2318BC170](this, a2);
  KB::utf8_string(v4, v9);
  v5 = v11;
  if (!v11)
  {
    v5 = v12;
  }

  if (v9[0])
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  KB::String::String(a3, v6);
  if (v11)
  {
    v7 = v10 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __getLSApplicationProxyClass_block_invoke_9055(uint64_t a1)
{
  CoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LSApplicationProxy");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLSApplicationProxyClass_softClass_9054 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CoreServicesLibrary();
  }
}

void CoreServicesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary_9073)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreServicesLibraryCore_block_invoke_9074;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278730BE8;
    v4 = 0;
    CoreServicesLibraryCore_frameworkLibrary_9073 = _sl_dlopen();
    v0 = v2[0];
    if (CoreServicesLibraryCore_frameworkLibrary_9073)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreServicesLibraryCore_block_invoke_9074(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary_9073 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  CoreServicesLibrary();
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __40__TILaunchServicesLookup_lookupAppNames__block_invoke(v3);
  }

  return result;
}

void CoreDuetLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreDuetLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278730C28;
    v4 = 0;
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (CoreDuetLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreDuetLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetContextLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreDuetContextLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreDuetContextLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278730C40;
    v4 = 0;
    CoreDuetContextLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (CoreDuetContextLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreDuetContextLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetContextLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _createStaticLexiconForLocaleIdentifier(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], v1);
  v3 = LXLexiconCreate();
  CFRelease(Mutable);

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void end_point_fit(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3 + 1;
  v6 = (*a2 + 32 * a3);
  v8 = *v6;
  v7 = v6[1];
  v9 = (*a2 + 32 * a4);
  v11 = *v9;
  v10 = v9[1];
  if (a3 + 1 >= a4)
  {
    goto LABEL_30;
  }

  v15 = vandq_s8(vceqq_f64(v8, v11), vceqq_f64(v7, v10));
  v16 = vandq_s8(v15, vdupq_laneq_s64(v15, 1)).u64[0];
  v17 = v11.f64[0] - v8.f64[0];
  v18 = v11.f64[1] - v8.f64[1];
  v19 = sqrt(v18 * v18 + v17 * v17);
  v20 = 0.0;
  v21 = a3;
  do
  {
    v22 = *a2 + 32 * v5;
    v23 = *v22;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v25 = vsubq_f64(*(v22 + 16), v7);
      v26 = vsubq_f64(v23, v8);
      v24 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v25, v25))));
    }

    else
    {
      v24 = fabs(v17 * (v8.f64[1] - v23.f64[1]) - (v8.f64[0] - v23.f64[0]) * v18) / v19;
    }

    if (v24 > v20)
    {
      v21 = v5;
      v20 = v24;
    }

    ++v5;
  }

  while (a4 != v5);
  if (v20 <= 13.0)
  {
LABEL_30:
    v38[0] = v8;
    v38[1] = v7;
    v38[2] = v11;
    v38[3] = v10;
    operator new();
  }

  _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(__p, a2);
  end_point_fit(v38, __p, a3, v21);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(v34, a2);
  end_point_fit(&v35, v34, v21, a4);
  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v27 = *&v38[0];
  if (*(&v38[0] + 1) - *&v38[0] != 32)
  {
    if ((((*(&v38[0] + 1) - *&v38[0]) >> 5) - 1) <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = ((*(&v38[0] + 1) - *&v38[0]) >> 5) - 1;
    }

    v29 = *&v38[0];
    do
    {
      _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, v29);
      v29 += 2;
      --v28;
    }

    while (v28);
  }

  v30 = v35;
  if (v36 != v35)
  {
    if (((v36 - v35) >> 5) <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = (v36 - v35) >> 5;
    }

    v32 = v35;
    do
    {
      _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, v32);
      v32 += 2;
      --v31;
    }

    while (v31);
  }

  if (v30)
  {
    operator delete(v30);
  }

  if (v27)
  {
    operator delete(v27);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void *_ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(result, (v2 - *a2) >> 5);
  }

  return result;
}

KB::String *KB::UTF8Iterator::UTF8Iterator(KB::UTF8Iterator *this, const KB::String *a2)
{
  result = KB::String::String(this, a2);
  *(result + 8) = 0;
  return result;
}

{
  result = KB::String::String(this, a2);
  *(result + 8) = 0;
  return result;
}

uint64_t KB::UTF8Iterator::prev(KB::UTF8Iterator *this)
{
  v1 = *(this + 17);
  if (*(this + 17))
  {
    *(this + 17) = v1 - 1;
    if (*this)
    {
      v2 = this + 16;
      if (*(this + 1))
      {
        v2 = *(this + 1);
      }
    }

    else
    {
      v2 = "";
    }

    v3 = *(this + 16);
    *(this + 16) = v3 - 1;
    v1 = v2[(v3 - 1)];
    if ((v2[(v3 - 1)] & 0xC0) == 0x80)
    {
      v4 = v2[(v3 - 1)] & 0x3F;
      v5 = v3 - 2;
      *(this + 16) = v3 - 2;
      v6 = v2[(v3 - 2)];
      if (v6 <= 0xBF)
      {
        v9 = 1;
        v10 = 6;
        do
        {
          v4 |= (v6 & 0x3F) << v10;
          ++v9;
          v10 += 6;
          *(this + 16) = --v5;
          v6 = v2[v5];
        }

        while (v6 <= 0xBF);
        v8 = 6 - v9;
        v7 = v10;
      }

      else
      {
        v7 = 6;
        v8 = 5;
      }

      return ((v6 & ~(-1 << v8)) << v7) | v4;
    }
  }

  return v1;
}

uint64_t KB::UTF8Iterator::next(KB::UTF8Iterator *this)
{
  v2 = *(this + 17);
  v3 = *(this + 2);
  if (!*(this + 2))
  {
    KB::String::compute_length(this);
    v3 = *(this + 2);
  }

  if (v2 >= v3)
  {
    return 0;
  }

  ++*(this + 17);
  if (*this)
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = this + 16;
    }
  }

  else
  {
    v4 = "";
  }

  v6 = *(this + 16);
  v7 = v6 + 1;
  *(this + 16) = v6 + 1;
  result = v4[v6];
  if ((result + 64) <= 0x34)
  {
    v8 = kb_utf8_countTrailBytes[v4[v6]];
    result = result & ~(-1 << (6 - v8));
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        if (v8 != 3)
        {
          return result;
        }

        v9 = v6 + 2;
        *(this + 16) = v9;
        v10 = v4[v7] & 0x3F | (result << 6);
        v7 = v9;
        LODWORD(result) = v10;
      }

      *(this + 16) = v7 + 1;
      v11 = v4[v7++] & 0x3F | (result << 6);
      LODWORD(result) = v11;
    }

    *(this + 16) = v7 + 1;
    return v4[v7] & 0x3Fu | (result << 6);
  }

  return result;
}

void KB::utf8_string_tokens_from_string(KB *this@<X0>, void *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = __Block_byref_object_copy__9609;
  v20 = __Block_byref_object_dispose__9610;
  v21 = "";
  memset(v22, 0, sizeof(v22));
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", this];
  if ([v5 length])
  {
    v6 = 4 * [v5 length];
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    v15 = 0;
    v14 = xmmword_22CC889D0;
    if ([v5 getBytes:v7 maxLength:v6 usedLength:&v15 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v5, "length"), &v14}])
    {
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v8 = TIOSLogFacility();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The range (%lu, %lu) was left over when getting the bytes from the original document text '%@'", "utf8_string_tokens_from_string", v14, v5];
            *buf = 138412290;
            v24 = v13;
            _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      LMStreamTokenizerCreate();
      LMStreamTokenizerPushBytes();
      LMStreamTokenizerRelease();
    }

    else
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v9 = TIOSLogFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Unable to get the bytes from the candidate text '%@'", "utf8_string_tokens_from_string", v5];
          *buf = 138412290;
          v24 = v12;
          _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    free(v7);
  }

  v10 = v17;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String*,KB::String*>(a2, v10[6], v10[7], (v10[7] - v10[6]) >> 5);

  _Block_object_dispose(&v16, 8);
  *&v14 = v22;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v14);
  v11 = *MEMORY[0x277D85DE8];
}

__n128 __Block_byref_object_copy__9609(__n128 *a1, __n128 *a2)
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

void ___ZN2KB30utf8_string_tokens_from_stringEP8NSStringPK10__CFLocale_block_invoke(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 < 0x10000 && (a4 - 500) <= 0xFFFFFE0C)
  {
    KB::String::String(v6, a2, a3);
    std::vector<KB::String>::push_back[abi:nn200100](*(*(a1 + 32) + 8) + 48, v6);
    if (v7)
    {
      if (v6[6] == 1)
      {
        free(v7);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__9897(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TI::CP::PathResampler::is_inflection_point(TI::CP::PathResampler *this, unsigned int a2)
{
  v2 = 0;
  v22[4] = *MEMORY[0x277D85DE8];
  if (a2 && *(this + 2))
  {
    v3 = *(this + 11);
    v4 = *this * 3.0;
    v5 = v3 + 48 * a2;
    v7 = *(v5 + 32);
    v6 = (v5 + 32);
    v8 = v7;
    if (v7 < v4)
    {
      goto LABEL_8;
    }

    v9 = *(this + 12);
    v10 = v3 == v9 ? 0.0 : *(v9 - 16);
    if (v4 + v8 > v10)
    {
      goto LABEL_8;
    }

    if (*(this + 32) == 1)
    {
      v13 = (v9 - v3) >> 4;
      v14 = a2 - 2;
      v15 = (v3 + 48 * (a2 - 1) + 32);
      v16 = a2 - 1;
      if (a2 != 1)
      {
        while (*v15 > *v6 - v4)
        {
          if (0xAAAAAAAAAAAAAAABLL * v13 > v16 && *(v15 - 2) - *(v3 + 48 * v14 + 16) > *(this + 3))
          {
            goto LABEL_8;
          }

          --v14;
          v15 -= 6;
          if (!--v16)
          {
            break;
          }
        }
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * v13;
      if (0xAAAAAAAAAAAAAAABLL * v13 > a2 && *(v3 + 48 * a2 + 16) - *(v3 + 48 * (a2 - 1) + 16) > *(this + 3))
      {
        goto LABEL_31;
      }

      v18 = v8 - v4;
      for (i = a2 + 1; v17 > i && *(v3 + 48 * i + 32) > v18; ++i)
      {
        if (i && *(v3 + 48 * i + 16) - *(v3 + 48 * (i - 1) + 16) > *(this + 3))
        {
          goto LABEL_8;
        }
      }
    }

    v20 = *(this + 3);
    if (v20 == 1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v9 - v3) >> 4) > a2 && *(v3 + 48 * a2 + 16) - *(v3 + 48 * (a2 - 1) + 16) > *(this + 3))
      {
        goto LABEL_31;
      }

      v22[0] = &unk_283FDAB00;
      v22[1] = this;
      v22[3] = v22;
      is_local_max = TI::CP::Path::is_local_max(this + 11, a2, v22, v4);
      std::__function::__value_func<double ()>::~__value_func[abi:nn200100](v22);
      if (is_local_max)
      {
        goto LABEL_31;
      }
    }

    else if (!v20 && (TI::CP::Path::is_curvature_local_max((this + 88), a2, v4) & 1) != 0)
    {
LABEL_31:
      v2 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v2 = 0;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

double std::__function::__func<TI::CP::PathResampler::is_inflection_point(unsigned int)::$_0,std::allocator<TI::CP::PathResampler::is_inflection_point(unsigned int)::$_0>,double ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (!v2)
  {
    return -TI::CP::Path::speed((v3 + 88), v2);
  }

  v4 = *(v3 + 88);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 96) - v4) >> 4) <= v2)
  {
    return -TI::CP::Path::speed((v3 + 88), v2);
  }

  result = 0.0;
  if (*(v4 + 48 * v2 + 16) - *(v4 + 48 * (v2 - 1) + 16) <= *(v3 + 24))
  {
    return -TI::CP::Path::speed((v3 + 88), v2);
  }

  return result;
}

uint64_t std::__function::__func<TI::CP::PathResampler::is_inflection_point(unsigned int)::$_0,std::allocator<TI::CP::PathResampler::is_inflection_point(unsigned int)::$_0>,double ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDAB00;
  a2[1] = v2;
  return result;
}

uint64_t TI::CP::PathResampler::process_sample(const PathSample **this, unsigned int a2)
{
  is_inflection_point = TI::CP::PathResampler::is_inflection_point(this, a2);
  v5 = this[5];
  v6 = this[6];
  if (!a2)
  {
    v16 = this[11];
    v17 = (this + 5);
    goto LABEL_10;
  }

  v7 = is_inflection_point;
  v8 = this[11];
  v9 = (v8 + 48 * a2);
  v10 = *(v6 - 2) + *this;
  v11 = v9[2].f64[0];
  if (v10 < v11)
  {
    v12 = (v8 + 48 * a2 - 48);
    do
    {
      v13 = (v10 - v12[2].f64[0]) / (v11 - v12[2].f64[0]);
      v14 = v13;
      v15 = vmlaq_n_f64(v12[1], vsubq_f64(v9[1], v12[1]), v14);
      v19[0] = vmlaq_n_f64(*v12, vsubq_f64(*v9, *v12), v14);
      v19[1] = v15;
      v19[2] = vmlaq_n_f64(v12[2], vsubq_f64(v9[2], v12[2]), v14);
      TI::CP::Path::append((this + 5), v19);
      v10 = *(this[6] - 2) + *this;
      v11 = v9[2].f64[0];
    }

    while (v10 < v11);
  }

  if (!v7)
  {
    if (this[2])
    {
      return -1431655765 * ((v6 - v5) >> 4);
    }

    v17 = (this + 5);
    v16 = v9;
LABEL_10:
    TI::CP::Path::append(v17, v16);
    return -1431655765 * ((v6 - v5) >> 4);
  }

  TI::CP::Path::append((this + 5), v9);
  TI::CP::Path::set_sample_is_inflection_point((this + 5), -1431655765 * ((this[6] - this[5]) >> 4) - 1);
  return -1431655765 * ((v6 - v5) >> 4);
}

uint64_t TI::CP::PathResampler::retroactively_process_sample(TI::CP::PathResampler *this, unsigned int a2)
{
  v2 = a2;
  if (TI::CP::PathResampler::is_inflection_point(this, a2))
  {
    v4 = *(this + 5);
    v5 = *(this + 6);
    if (v5 != v4)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4);
      v5 = *(this + 5);
      do
      {
        v7 = v6 >> 1;
        v8 = v5 + 48 * (v6 >> 1);
        v9 = *(v8 + 32);
        v10 = v8 + 48;
        v6 += ~(v6 >> 1);
        if (v9 < *(*(this + 11) + 48 * v2 + 32))
        {
          v5 = v10;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    TI::CP::Path::resize((this + 40), -1431655765 * ((v5 - v4) >> 4));
    v11 = *(this + 6) - *(this + 5);
    v12 = *(this + 35);
    for (*(this + 35) = v2; v2 < v12; *(this + 35) = v2)
    {
      TI::CP::PathResampler::process_sample(this, v2);
      v2 = *(this + 35) + 1;
    }
  }

  else
  {
    v11 = *(this + 6) - *(this + 5);
  }

  return -1431655765 * (v11 >> 4);
}

uint64_t TI::CP::PathResampler::append_and_resample(TI::CP::PathResampler *this, CGPoint a2, double a3, double a4, double a5)
{
  y = a2.y;
  x = a2.x;
  v11 = *(this + 12);
  v12 = (this + 88);
  if (*(this + 11) == v11)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = *(v11 - 16);
    v14 = v13 + hypot(a2.x - *(v11 - 48), a2.y - *(v11 - 40));
  }

  *v30 = x;
  *&v30[1] = y;
  *&v30[2] = a3;
  *&v30[3] = a4;
  *&v30[4] = v14;
  *&v30[5] = a5;
  TI::CP::Path::append(v12, v30);
  v15 = *(this + 11);
  v16 = *(this + 12);
  if (v15 == v16)
  {
    return -1431655765 * ((*(this + 6) - *(this + 5)) >> 4);
  }

  v19 = *(this + 32) == 1 && (v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 4), v18 = v17 - 1, v17 != 1) && v17 > v18 && *(v15 + 48 * v18 + 16) - *(v15 + 48 * (v17 - 2) + 16) > *(this + 3);
  v20 = *(this + 2);
  v21 = *(v16 - 16);
  if (v20 == 1 && !v19)
  {
    v21 = v21 + *this * -3.0;
  }

  v22 = -1431655765 * ((*(this + 6) - *(this + 5)) >> 4);
  v23 = *(this + 35);
  if (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 4) > v23 && *(v15 + 48 * v23 + 32) <= v21)
  {
    do
    {
      v24 = TI::CP::PathResampler::process_sample(this, v23);
      if (v24 >= v22)
      {
        v22 = v22;
      }

      else
      {
        v22 = v24;
      }

      v23 = (*(this + 35) + 1);
      *(this + 35) = v23;
      v15 = *(this + 11);
      v16 = *(this + 12);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 4) > v23 && *(v15 + 48 * v23 + 32) <= v21);
    v20 = *(this + 2);
  }

  if (v20 == 2)
  {
    v25 = v15 == v16 ? 0.0 : *(v16 - 16);
    v26 = *(this + 36);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 4) > v26)
    {
      v27 = v25 + *this * -3.0;
      do
      {
        if (*(v15 + 48 * v26 + 32) >= v27)
        {
          break;
        }

        v28 = TI::CP::PathResampler::retroactively_process_sample(this, v26);
        v22 = v28 >= v22 ? v22 : v28;
        v26 = (*(this + 36) + 1);
        *(this + 36) = v26;
        v15 = *(this + 11);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(this + 12) - v15) >> 4) > v26);
    }
  }

  return v22;
}

uint64_t TI::CP::PathResampler::finalize(TI::CP::PathResampler *this)
{
  v1 = (this + 40);
  v2 = -1431655765 * ((*(this + 6) - *(this + 5)) >> 4);
  if ((*(this + 136) & 1) == 0)
  {
    v4 = *(this + 35);
    v5 = *(this + 11);
    for (i = *(this + 12); 0xAAAAAAAAAAAAAAABLL * ((i - v5) >> 4) > v4; i = *(this + 12))
    {
      v7 = TI::CP::PathResampler::process_sample(this, v4);
      if (v7 >= v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v7;
      }

      v4 = (*(this + 35) + 1);
      *(this + 35) = v4;
      v5 = *(this + 11);
    }

    if (*(this + 2) == 2)
    {
      v8 = *(this + 36);
      if (0xAAAAAAAAAAAAAAABLL * ((i - v5) >> 4) > v8)
      {
        do
        {
          v9 = TI::CP::PathResampler::retroactively_process_sample(this, v8);
          if (v9 >= v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v9;
          }

          v8 = (*(this + 36) + 1);
          *(this + 36) = v8;
          i = *(this + 12);
        }

        while (0xAAAAAAAAAAAAAAABLL * ((i - *(this + 11)) >> 4) > v8);
      }
    }

    v10 = *(this + 5);
    v11 = *(this + 6);
    if (v10 != v11)
    {
      v13 = *(i - 48);
      v14 = *(i - 40);
      v12 = (i - 48);
      if (hypot(v13 - *(v11 - 48), v14 - *(v11 - 40)) > 1.0e-10)
      {
        v15 = -1431655765 * ((v11 - v10) >> 4);
        if (v2 >= v15)
        {
          v2 = v15;
        }

        else
        {
          v2 = v2;
        }

        TI::CP::Path::append(v1, v12);
      }
    }

    *(this + 136) = 1;
  }

  return v2;
}

void KB::FilterSortkeyMatchFromDifferentLanguage::filter_candidates(KB::FilterSortkeyMatchFromDifferentLanguage *this, const KB::LanguageModelContext **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v42[7] = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 3);
  v8 = *(a4 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v9)
  {
    v10 = *a2;
    KB::LanguageModelContext::LanguageModelContext(v36, (a3 + 2032));
    v30 = KB::CandidateFilter::language_id_for_context_and_candidate_with_confidence(v36, v10, a4, *(this + 2), v11);
    if (v30 || KB::LanguageModelContext::is_linguistically_void(v36) && (v30 = *(a4 + 2)) != 0)
    {
      v29 = this;
      *__p = 0u;
      v34 = 0u;
      v35 = 1065353216;
      v13 = *a2;
      v12 = a2[1];
      v14 = *a2 == v12;
      v15 = v30;
      if (v14)
      {
        goto LABEL_36;
      }

      v31 = v12;
LABEL_9:
      if (!KB::CandidateFilter::candidate_static_words_from_same_language(*v13, *(v13 + 1), v15))
      {
        goto LABEL_35;
      }

      if (!*(v13 + 444))
      {
        KB::Candidate::compute_string(v13);
      }

      KB::CandidateFilter::_sortkey_for_string(v32, (v13 + 888), *(a4 + 2));
      if (LOWORD(v32[0]) <= 0xEu)
      {
        v16 = (v32 + 2);
      }

      else
      {
        v16 = v32[1];
      }

      v17 = KB::String::hash(v16, LOWORD(v32[0]));
      v18 = v17;
      v19 = __p[1];
      if (!__p[1])
      {
        goto LABEL_31;
      }

      v20 = vcnt_s8(__p[1]);
      v20.i16[0] = vaddlv_u8(v20);
      v21 = v20.u32[0];
      if (v20.u32[0] > 1uLL)
      {
        v22 = v17;
        if (__p[1] <= v17)
        {
          v22 = v17 % LODWORD(__p[1]);
        }
      }

      else
      {
        v22 = (LODWORD(__p[1]) - 1) & v17;
      }

      v23 = *(__p[0] + v22);
      if (!v23 || (v24 = *v23) == 0)
      {
LABEL_31:
        operator new();
      }

      while (1)
      {
        v25 = *(v24 + 1);
        if (v25 == v18)
        {
          if (KB::operator==(v24 + 8, v32))
          {
            v15 = v30;
            v12 = v31;
            std::vector<KB::Candidate>::push_back[abi:nn200100]((v24 + 16), v13);
            if (LOWORD(v32[0]) >= 0xFu)
            {
              if (v32[1])
              {
                MEMORY[0x2318BE250](v32[1], 0x1000C8077774924);
              }
            }

LABEL_35:
            v13 = (v13 + 1000);
            if (v13 == v12)
            {
LABEL_36:
              v26 = *(v29 + 3);
              v27 = *(a4 + 7);
              operator new();
            }

            goto LABEL_9;
          }
        }

        else
        {
          if (v21 > 1)
          {
            if (v25 >= v19)
            {
              v25 %= v19;
            }
          }

          else
          {
            v25 &= v19 - 1;
          }

          if (v25 != v22)
          {
            goto LABEL_31;
          }
        }

        v24 = *v24;
        if (!v24)
        {
          goto LABEL_31;
        }
      }
    }

    __p[0] = v42;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__p);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v41);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v40);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<KB::FilterSortkeyMatchFromDifferentLanguage::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterSortkeyMatchFromDifferentLanguage::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (KB::CandidateFilter::candidate_static_words_from_same_language(*a2, *(a2 + 8), *(a1 + 8)))
  {
    goto LABEL_28;
  }

  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  KB::CandidateFilter::_sortkey_for_string(&v41, (a2 + 888), *(*(a1 + 24) + 16));
  v6 = *(a1 + 16);
  v7 = v41;
  v8 = v43;
  if (v41 >= 0xFu)
  {
    v9 = v43;
  }

  else
  {
    v9 = &v42;
  }

  v10 = KB::String::hash(v9, v41);
  v11 = v6[1];
  if (!v11)
  {
    goto LABEL_23;
  }

  v36 = v5;
  v12 = v10;
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v11 <= v10)
    {
      v15 = v10 % v11;
    }
  }

  else
  {
    v15 = (v11 - 1) & v10;
  }

  v16 = *(*v6 + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_23:
    v19 = 1;
    goto LABEL_24;
  }

  while (1)
  {
    v18 = *(v17 + 1);
    if (v18 == v12)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= v11)
      {
        v18 %= v11;
      }
    }

    else
    {
      v18 &= v11 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_23;
    }

LABEL_22:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  if (!KB::operator==(v17 + 8, &v41))
  {
    goto LABEL_22;
  }

  v22 = *(v17 + 4);
  v23 = *(v17 + 5);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 0x40000000;
  v38 = ___ZZNK2KB39FilterSortkeyMatchFromDifferentLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesEENK3__0clERKNS_9CandidateEPNS_6StringE_block_invoke;
  v39 = &__block_descriptor_tmp_9937;
  v40 = a2;
  if (v22 == v23)
  {
    goto LABEL_23;
  }

  v19 = 1;
  while (((v38)(v37, v22) & 1) != 0)
  {
    v22 += 1000;
    if (v22 == v23)
    {
      goto LABEL_24;
    }
  }

  v24 = *(v17 + 4);
  v25 = 1.0;
  v26 = 1.0;
  if (*v24)
  {
    v27 = 240 * *v24;
    v28 = (v24[1] + 52);
    do
    {
      v29 = *v28;
      v28 += 60;
      v26 = v26 * v29;
      v27 -= 240;
    }

    while (v27);
  }

  v30 = v26 * *(a1 + 12);
  if (*a2)
  {
    v31 = 240 * *a2;
    v32 = (*(a2 + 8) + 52);
    v25 = 1.0;
    do
    {
      v33 = *v32;
      v32 += 60;
      v25 = v25 * v33;
      v31 -= 240;
    }

    while (v31);
  }

  if (v30 <= v25)
  {
    goto LABEL_23;
  }

  if (v36)
  {
    KB::Candidate::capitalized_string(a2, v44);
    v34 = v46;
    if (!v46)
    {
      v34 = v47;
    }

    if (v44[0])
    {
      v35 = v34;
    }

    else
    {
      v35 = "";
    }

    KB::String::append_format(v36, "Candidate '%s' is from a different language and less likely than other candidates in the collection set", v35);
    if (v46 && v45 == 1)
    {
      free(v46);
    }
  }

  v19 = 0;
LABEL_24:
  if (v7 >= 0xF && v8)
  {
    MEMORY[0x2318BE250](v8, 0x1000C8077774924);
  }

  if (v19)
  {
LABEL_28:
    result = 0;
  }

  else
  {
    result = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ___ZZNK2KB39FilterSortkeyMatchFromDifferentLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesEENK3__0clERKNS_9CandidateEPNS_6StringE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 32);
  if (*a2 == *v3)
  {
    v5 = a2[1];
    if (v2)
    {
      v6 = (v5 + 240 * v2);
      v7 = v3[1];
      v8 = 240 * v2;
      while (1)
      {
        if ((*(v5 + 106) & 4) == 0 && (v5 == v7 || KB::String::equal(v5, v7, 1)))
        {
          KB::Word::capitalized_string(v5, v16);
          KB::Word::capitalized_string(v7, v14);
          v9 = KB::String::equal(v16, v14, 1);
          if (v15 && v14[6] == 1)
          {
            free(v15);
          }

          if (v17 && v16[6] == 1)
          {
            free(v17);
          }

          if (!v9)
          {
            break;
          }
        }

        v5 = (v5 + 240);
        v7 = (v7 + 240);
        v8 -= 240;
        if (!v8)
        {
          v5 = v6;
          break;
        }
      }

      v10 = v5;
      v11 = *a2;
      v5 = a2[1];
    }

    else
    {
      v11 = 0;
      v10 = a2[1];
    }

    result = (v5 + 240 * v11) != v10;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<KB::FilterSortkeyMatchFromDifferentLanguage::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterSortkeyMatchFromDifferentLanguage::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDABA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void KB::FilterDifferentLanguageThanContext::filter_candidates(KB::FilterDifferentLanguageThanContext *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v68[2] = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 3);
  v8 = *(a4 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (!v9 || *a2 == *(a2 + 1))
  {
    goto LABEL_67;
  }

  KB::Candidate::Candidate(v61, *a2);
  KB::Candidate::capitalized_string(a3, v57);
  KB::LanguageModelContext::LanguageModelContext(v49, (a3 + 2032));
  v10 = *(a4 + 2);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  v11 = *(v10 + 8);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v10);
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::__value_func[abi:nn200100](v56, v11 + 144);
  v45 = *(a4 + 7);
  v13 = KB::CandidateFilter::language_id_for_context_and_candidate_with_confidence(v49, v61, a4, *(this + 2), v12);
  if (!v13)
  {
    if (!KB::LanguageModelContext::is_linguistically_void(v49))
    {
      goto LABEL_59;
    }

    v24 = v58;
    if (!v58)
    {
      KB::String::compute_length(v57);
      v24 = v58;
    }

    if (v24 > 1)
    {
      goto LABEL_59;
    }

    v13 = *(a4 + 2);
    if (!v13)
    {
      goto LABEL_59;
    }
  }

  v14 = *a2;
  v15 = *(a2 + 1);
  if (*a2 == v15)
  {
    goto LABEL_59;
  }

  v16 = 0;
  do
  {
    v16 += KB::CandidateFilter::candidate_static_words_from_same_language(*v14, *(v14 + 8), v13);
    v14 += 1000;
  }

  while (v14 != v15);
  if (!v16)
  {
LABEL_59:
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v56);
    v66 = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v66);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v54);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v53);
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    if (v60)
    {
      if (v59 == 1)
      {
        free(v60);
      }
    }

    KB::Candidate::~Candidate(v61);
LABEL_67:
    v38 = *MEMORY[0x277D85DE8];
    return;
  }

  v46 = v13;
  v47 = v57;
  v48 = v56;
  v17 = *a2;
  v18 = *(a2 + 1);
  v66 = &v46;
  if (v18 - v17 < 1)
  {
    v22 = 0;
LABEL_24:
    std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v17, v18, &v66, 0x1CAC083126E978D5 * ((v18 - v17) >> 3), 0, v22);
  }

  else
  {
    v19 = MEMORY[0x277D826F0];
    v20 = 0x1CAC083126E978D5 * ((v18 - v17) >> 3);
    while (1)
    {
      v21 = operator new(1000 * v20, v19);
      if (v21)
      {
        break;
      }

      v22 = v20 >> 1;
      v23 = v20 > 1;
      v20 >>= 1;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

    v25 = v21;
    std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v17, v18, &v66, 0x1CAC083126E978D5 * ((v18 - v17) >> 3), v21, v20);
    operator delete(v25);
  }

  v26 = *a2;
  v27 = *(a2 + 1);
  if (*a2 == v27)
  {
LABEL_37:
    if (v45 && v26 != v27)
    {
      v32 = v26;
      do
      {
        KB::Candidate::capitalized_string(v32, &v66);
        v33 = v67;
        if (!v67)
        {
          v33 = v68;
        }

        if (v66)
        {
          v34 = v33;
        }

        else
        {
          v34 = "";
        }

        KB::Candidate::token_ids_as_string(v32, v62);
        v36 = v64;
        if (!v64)
        {
          v36 = &v65;
        }

        if (v62[0])
        {
          v37 = v36;
        }

        else
        {
          v37 = "";
        }

        KB::append_format(v45, "[%s] {%s} removed by %s\n", v35, v34, v37, "FilterDifferentLanguageThanContext");
        if (v64 && v63 == 1)
        {
          free(v64);
        }

        if (v67 && BYTE6(v66) == 1)
        {
          free(v67);
        }

        v32 = (v32 + 1000);
      }

      while (v32 != v27);
      v27 = *(a2 + 1);
    }

    std::vector<KB::Candidate>::erase(a2, v26, v27);
    goto LABEL_59;
  }

  v28 = v46;
  v29 = v47;
  v30 = v48;
  while ((KB::CandidateFilter::candidate_static_words_from_same_language(*v26, v26[1], v28) & 1) != 0)
  {
LABEL_34:
    v26 += 125;
    if (v26 == v27)
    {
      v26 = v27;
LABEL_36:
      v27 = *(a2 + 1);
      goto LABEL_37;
    }
  }

  if (!*(v26 + 444))
  {
    KB::Candidate::compute_string(v26);
  }

  v31 = *(v30 + 3);
  if (v31)
  {
    if (!(*(*v31 + 48))(v31, v26 + 111, v29) && *(v26 + 964) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v39 = std::__throw_bad_function_call[abi:nn200100]();
  std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v39, v40, v41, v42, v43, v44);
}

void std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(uint64_t a1, uint64_t *a2, int **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = *MEMORY[0x277D85DE8];
  if (a4 < 2)
  {
    goto LABEL_2;
  }

  v8 = a2;
  v9 = a1;
  if (a4 == 2)
  {
    v10 = *a3;
    if ((KB::CandidateFilter::candidate_static_words_from_same_language(*(a2 - 125), *(a2 - 124), **a3) & 1) == 0)
    {
      v11 = *(v10 + 2);
      if (!*(v8 - 56))
      {
        KB::Candidate::compute_string((v8 - 125));
      }

      v12 = *(v11 + 24);
      if (!v12)
      {
        goto LABEL_85;
      }

      if (!(*(*v12 + 48))(v12, v8 - 14, *(v10 + 1)) && *(v8 - 36) != 1)
      {
        goto LABEL_2;
      }
    }

    v13 = *a3;
    if (KB::CandidateFilter::candidate_static_words_from_same_language(*v9, *(v9 + 8), *v13))
    {
      goto LABEL_2;
    }

    v14 = *(v13 + 2);
    if (!*(v9 + 888))
    {
      KB::Candidate::compute_string(v9);
    }

    v15 = *(v14 + 24);
    if (v15)
    {
      if (!(*(*v15 + 48))(v15, v9 + 888, *(v13 + 1)) && (*(v9 + 964) & 1) == 0)
      {
        v16 = *MEMORY[0x277D85DE8];

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v9, v8 - 125);
        return;
      }

LABEL_2:
      v6 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_85:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v17 = a4;
  if (a4 <= 0)
  {
    if (a1 != a2)
    {
      v24 = (a1 + 1000);
      if ((a1 + 1000) != a2)
      {
        v25 = 0;
        v26 = a1;
        while (1)
        {
          v27 = v26;
          v26 = v24;
          v28 = *a3;
          if (KB::CandidateFilter::candidate_static_words_from_same_language(*v24, v24[1], **a3))
          {
            goto LABEL_33;
          }

          v29 = *(v28 + 2);
          if (!*(v26 + 444))
          {
            KB::Candidate::compute_string(v26);
          }

          v30 = *(v29 + 24);
          if (!v30)
          {
            goto LABEL_85;
          }

          if ((*(*v30 + 48))(v30, v26 + 444, *(v28 + 1)) || *(v27 + 1964) == 1)
          {
LABEL_33:
            v31 = *a3;
            if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v27, v27[1], **a3) & 1) == 0)
            {
              v32 = *(v31 + 2);
              if (!*(v27 + 444))
              {
                KB::Candidate::compute_string(v27);
              }

              v33 = *(v32 + 24);
              if (!v33)
              {
                goto LABEL_85;
              }

              if (!(*(*v33 + 48))(v33, v27 + 111, *(v31 + 1)) && (*(v27 + 964) & 1) == 0)
              {
                KB::Candidate::Candidate(v60, v26);
                v34 = v25;
                while (1)
                {
                  v35 = v27;
                  v36 = v9 + v34;
                  KB::Candidate::operator=((v9 + v34 + 1000), (v9 + v34));
                  if (!v34)
                  {
                    v35 = v9;
                    goto LABEL_56;
                  }

                  v37 = *a3;
                  if ((KB::CandidateFilter::candidate_static_words_from_same_language(v60[0], v60[1], **a3) & 1) == 0)
                  {
                    v38 = *(v37 + 2);
                    if (!v61[0])
                    {
                      KB::Candidate::compute_string(v60);
                    }

                    v39 = *(v38 + 24);
                    if (!v39)
                    {
                      goto LABEL_85;
                    }

                    if (!(*(*v39 + 48))(v39, v61, *(v37 + 1)) && v62 != 1)
                    {
                      goto LABEL_56;
                    }
                  }

                  v40 = (v36 - 1000);
                  v41 = *a3;
                  v42 = *(v36 - 1000);
                  v43 = v9 + v34;
                  if (KB::CandidateFilter::candidate_static_words_from_same_language(v42, *(v9 + v34 - 992), **a3))
                  {
                    break;
                  }

                  v44 = *(v41 + 2);
                  v46 = *(v43 - 112);
                  v45 = v43 - 112;
                  if (!v46)
                  {
                    KB::Candidate::compute_string(v40);
                  }

                  v47 = *(v44 + 24);
                  if (!v47)
                  {
                    goto LABEL_85;
                  }

                  if (!(*(*v47 + 48))(v47, v45, *(v41 + 1)))
                  {
                    v27 = v35 - 125;
                    v48 = *(v9 + v34 - 36);
                    v34 -= 1000;
                    if ((v48 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_56;
                }

                v35 = (v9 + v34);
LABEL_56:
                KB::Candidate::operator=(v35, v60);
                KB::Candidate::~Candidate(v60);
                v8 = a2;
              }
            }
          }

          v24 = (v26 + 1000);
          v25 += 1000;
          if ((v26 + 1000) == v8)
          {
            goto LABEL_2;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v19 = a5;
  v20 = a4 >> 1;
  v21 = a1 + 1000 * (a4 >> 1);
  v22 = a4 >> 1;
  if (v17 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(a1, v21, a3, v22, a5);
    v49 = v19 + 1000 * v20;
    std::__stable_sort_move<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v9 + 1000 * (v17 >> 1), v8, a3, v17 - (v17 >> 1), v49);
    v50 = v19 + 1000 * v17;
    v51 = v49;
    v52 = v19;
    while (v51 != v50)
    {
      v53 = *a3;
      if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v51, *(v51 + 8), **a3) & 1) == 0)
      {
        v54 = *(v53 + 2);
        if (!*(v51 + 888))
        {
          KB::Candidate::compute_string(v51);
        }

        v55 = *(v54 + 24);
        if (!v55)
        {
          goto LABEL_85;
        }

        if (!(*(*v55 + 48))(v55, v51 + 888, *(v53 + 1)) && *(v51 + 964) != 1)
        {
          goto LABEL_73;
        }
      }

      v56 = *a3;
      if (KB::CandidateFilter::candidate_static_words_from_same_language(*v52, *(v52 + 1), **a3))
      {
        goto LABEL_73;
      }

      v57 = *(v56 + 2);
      if (!*(v52 + 444))
      {
        KB::Candidate::compute_string(v52);
      }

      v58 = *(v57 + 24);
      if (!v58)
      {
        goto LABEL_85;
      }

      if (!(*(*v58 + 48))(v58, v52 + 888, *(v56 + 1)) && (*(v52 + 964) & 1) == 0)
      {
        KB::Candidate::operator=(v9, v51);
        v51 += 1000;
      }

      else
      {
LABEL_73:
        KB::Candidate::operator=(v9, v52);
        v52 = (v52 + 1000);
      }

      v9 += 1000;
      if (v52 == v49)
      {
        while (v51 != v50)
        {
          KB::Candidate::operator=(v9, v51);
          v51 += 1000;
          v9 += 1000;
        }

        goto LABEL_82;
      }
    }

    while (v52 != v49)
    {
      KB::Candidate::operator=(v9, v52);
      v52 = (v52 + 1000);
      v9 += 1000;
    }

LABEL_82:
    if (v19)
    {
      do
      {
        KB::Candidate::~Candidate(v19);
        v19 = (v19 + 1000);
        --v17;
      }

      while (v17);
    }

    goto LABEL_2;
  }

  std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(a1, v21, a3, v22, a5, a6);
  std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v9 + 1000 * (v17 >> 1), v8, a3, v17 - (v17 >> 1), v19, a6);
  v23 = *MEMORY[0x277D85DE8];

  std::__inplace_merge<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v9, v9 + 1000 * (v17 >> 1), v8, a3, v17 >> 1, v17 - (v17 >> 1), v19, a6);
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(uint64_t result, uint64_t a2, int **a3, unint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v7 = a3;
  v8 = a2;
  v9 = result;
  if (a4 == 2)
  {
    v12 = *a3;
    if ((KB::CandidateFilter::candidate_static_words_from_same_language(*(a2 - 1000), *(a2 - 992), **a3) & 1) == 0)
    {
      v13 = *(v12 + 2);
      if (!*(v8 - 112))
      {
        KB::Candidate::compute_string((v8 - 1000));
      }

      v14 = *(v13 + 24);
      if (!v14)
      {
        goto LABEL_88;
      }

      if (!(*(*v14 + 48))(v14, v8 - 112, *(v12 + 1)) && *(v8 - 36) != 1)
      {
        goto LABEL_18;
      }
    }

    v15 = *v7;
    if (KB::CandidateFilter::candidate_static_words_from_same_language(*v9, *(v9 + 8), **v7))
    {
      goto LABEL_18;
    }

    v16 = *(v15 + 2);
    if (!*(v9 + 888))
    {
      KB::Candidate::compute_string(v9);
    }

    v17 = *(v16 + 24);
    if (v17)
    {
      if (!(*(*v17 + 48))(v17, v9 + 888, *(v15 + 1)) && (*(v9 + 964) & 1) == 0)
      {
        KB::Candidate::Candidate(v5, v8 - 1000);
        v10 = v5 + 1000;
        goto LABEL_5;
      }

LABEL_18:
      KB::Candidate::Candidate(v5, v9);
      v10 = v5 + 1000;
      v11 = v8 - 1000;
      goto LABEL_19;
    }

LABEL_88:
    v46 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__inplace_merge<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v46);
  }

  if (a4 == 1)
  {
    v10 = a5;
LABEL_5:
    v11 = v9;
LABEL_19:

    return KB::Candidate::Candidate(v10, v11);
  }

  if (a4 > 8)
  {
    v37 = 1000 * (a4 >> 1);
    v38 = v37 + result;
    std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(result, v37 + result, a3, a4 >> 1, a5, a4 >> 1);
    result = std::__stable_sort<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v37 + v9, v8, v7, a4 - (a4 >> 1), v5 + v37, a4 - (a4 >> 1));
    v39 = v37 + v9;
    while (v39 != v8)
    {
      v40 = *v7;
      if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v39, *(v39 + 8), **v7) & 1) == 0)
      {
        v41 = *(v40 + 2);
        if (!*(v39 + 888))
        {
          KB::Candidate::compute_string(v39);
        }

        v42 = *(v41 + 24);
        if (!v42)
        {
          goto LABEL_88;
        }

        if (!(*(*v42 + 48))(v42, v39 + 888, *(v40 + 1)) && *(v39 + 964) != 1)
        {
          goto LABEL_77;
        }
      }

      v43 = *v7;
      if (KB::CandidateFilter::candidate_static_words_from_same_language(*v9, *(v9 + 8), **v7))
      {
        goto LABEL_77;
      }

      v44 = *(v43 + 2);
      if (!*(v9 + 888))
      {
        KB::Candidate::compute_string(v9);
      }

      v45 = *(v44 + 24);
      if (!v45)
      {
        goto LABEL_88;
      }

      if (!(*(*v45 + 48))(v45, v9 + 888, *(v43 + 1)) && (*(v9 + 964) & 1) == 0)
      {
        result = KB::Candidate::Candidate(v5, v39);
        v39 += 1000;
      }

      else
      {
LABEL_77:
        result = KB::Candidate::Candidate(v5, v9);
        v9 += 1000;
      }

      v5 += 1000;
      if (v9 == v38)
      {
        while (v39 != v8)
        {
          result = KB::Candidate::Candidate(v5, v39);
          v39 += 1000;
          v5 += 1000;
        }

        return result;
      }
    }

    while (v9 != v38)
    {
      result = KB::Candidate::Candidate(v5, v9);
      v9 += 1000;
      v5 += 1000;
    }
  }

  else if (result != a2)
  {
    result = KB::Candidate::Candidate(a5, result);
    v18 = v9 + 1000;
    if (v9 + 1000 != v8)
    {
      v19 = 0;
      v20 = v5;
      v47 = v8;
      v48 = v7;
      do
      {
        v21 = v18;
        v22 = v20 + 1000;
        v23 = *v7;
        if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v18, *(v18 + 8), **v7) & 1) == 0)
        {
          v24 = *(v23 + 2);
          if (!*(v21 + 888))
          {
            KB::Candidate::compute_string(v21);
          }

          v25 = *(v24 + 24);
          if (!v25)
          {
            goto LABEL_88;
          }

          if (!(*(*v25 + 48))(v25, v21 + 888, *(v23 + 1)) && *(v9 + 1964) != 1)
          {
            goto LABEL_38;
          }
        }

        v26 = *v7;
        if (KB::CandidateFilter::candidate_static_words_from_same_language(*v20, *(v20 + 8), **v7))
        {
          goto LABEL_38;
        }

        v27 = *(v26 + 2);
        if (!*(v20 + 888))
        {
          KB::Candidate::compute_string(v20);
        }

        v28 = *(v27 + 24);
        if (!v28)
        {
          goto LABEL_88;
        }

        if (!(*(*v28 + 48))(v28, v20 + 888, *(v26 + 1)) && (*(v20 + 964) & 1) == 0)
        {
          KB::Candidate::Candidate(v20 + 1000, v20);
          v29 = v5;
          if (v20 != v5)
          {
            v30 = v19;
            v49 = v19;
            v50 = v20 + 1000;
            while (1)
            {
              v31 = *v7;
              if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v21, *(v21 + 8), **v7) & 1) == 0)
              {
                v32 = *(v31 + 2);
                if (!*(v21 + 888))
                {
                  KB::Candidate::compute_string(v21);
                }

                v33 = *(v32 + 24);
                if (!v33)
                {
                  goto LABEL_88;
                }

                v22 = v50;
                if (!(*(*v33 + 48))(v33, v21 + 888, *(v31 + 1)) && *(v9 + 1964) != 1)
                {
                  break;
                }
              }

              v34 = *v7;
              if (KB::CandidateFilter::candidate_static_words_from_same_language(*(v5 + v30 - 1000), *(v5 + v30 - 992), **v7))
              {
                v29 = (v5 + v30);
LABEL_60:
                v7 = v48;
                v19 = v49;
                goto LABEL_61;
              }

              v35 = *(v34 + 2);
              if (!*(v5 + v30 - 112))
              {
                KB::Candidate::compute_string((v5 + v30 - 1000));
              }

              v36 = *(v35 + 24);
              if (!v36)
              {
                goto LABEL_88;
              }

              v22 = v50;
              if ((*(*v36 + 48))(v36, v5 + v30 - 112, *(v34 + 1)))
              {
                v29 = v20;
                v8 = v47;
                goto LABEL_60;
              }

              v8 = v47;
              if (*(v5 + v30 - 36))
              {
                v29 = v20;
                goto LABEL_60;
              }

              v20 -= 1000;
              KB::Candidate::operator=((v5 + v30), (v5 + v30 - 1000));
              v30 -= 1000;
              v7 = v48;
              v19 = v49;
              if (!v30)
              {
                v29 = v5;
                goto LABEL_61;
              }
            }

            v29 = v20;
          }

LABEL_61:
          result = KB::Candidate::operator=(v29, v21);
        }

        else
        {
LABEL_38:
          result = KB::Candidate::Candidate(v20 + 1000, v21);
        }

        v18 = v21 + 1000;
        v19 += 1000;
        v20 = v22;
        v9 = v21;
      }

      while (v21 + 1000 != v8);
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(uint64_t a1, uint64_t a2, uint64_t *a3, int **a4, uint64_t a5, uint64_t a6, KB::Candidate *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      while (1)
      {
        v16 = *a4;
        if (KB::CandidateFilter::candidate_static_words_from_same_language(*a2, *(a2 + 8), **a4))
        {
          goto LABEL_17;
        }

        v17 = *(v16 + 2);
        if (!*(a2 + 888))
        {
          KB::Candidate::compute_string(a2);
        }

        v18 = *(v17 + 24);
        if (!v18)
        {
          goto LABEL_122;
        }

        if ((*(*v18 + 48))(v18, a2 + 888, *(v16 + 1)) || *(a2 + 964) == 1)
        {
LABEL_17:
          v19 = *a4;
          if ((KB::CandidateFilter::candidate_static_words_from_same_language(*a1, *(a1 + 8), **a4) & 1) == 0)
          {
            v20 = *(v19 + 2);
            if (!*(a1 + 888))
            {
              KB::Candidate::compute_string(a1);
            }

            v21 = *(v20 + 24);
            if (!v21)
            {
              goto LABEL_122;
            }

            if (!(*(*v21 + 48))(v21, a1 + 888, *(v19 + 1)) && *(a1 + 964) != 1)
            {
              break;
            }
          }
        }

        a1 += 1000;
        if (!--a5)
        {
          return;
        }
      }

      v77 = v10;
      v78 = a8;
      if (a5 >= v10)
      {
        if (a5 == 1)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
          return;
        }

        v76 = a5 / 2;
        v24 = a1 + 1000 * (a5 / 2);
        if (a3 == a2)
        {
          v23 = a3;
        }

        else
        {
          v75 = a3;
          v80 = a7;
          v84 = (a1 + 1000 * (a5 / 2));
          v35 = *a4;
          v36 = 0x1CAC083126E978D5 * ((a3 - a2) >> 3);
          v23 = a2;
          do
          {
            v37 = v36 >> 1;
            v38 = &v23[125 * (v36 >> 1)];
            if (KB::CandidateFilter::candidate_static_words_from_same_language(*v38, v38[1], *v35))
            {
              goto LABEL_48;
            }

            v39 = v23;
            v40 = *(v35 + 2);
            if (!*(v38 + 444))
            {
              KB::Candidate::compute_string(v38);
            }

            v41 = *(v40 + 24);
            if (!v41)
            {
              goto LABEL_122;
            }

            v23 = v39;
            v24 = a1 + 1000 * (a5 / 2);
            if ((*(*v41 + 48))(v41, v38 + 111, *(v35 + 1)) || *(v38 + 964) == 1)
            {
LABEL_48:
              if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v24, *(v24 + 8), *v35) & 1) == 0)
              {
                v86 = v23;
                v42 = *(v35 + 2);
                if (!*(v24 + 888))
                {
                  KB::Candidate::compute_string(v84);
                }

                v43 = *(v42 + 24);
                if (!v43)
                {
                  goto LABEL_122;
                }

                v24 = a1 + 1000 * (a5 / 2);
                v23 = v86;
                if (!(*(*v43 + 48))(v43, v84 + 888, *(v35 + 1)) && (*(v84 + 964) & 1) == 0)
                {
                  v37 = v36 + ~v37;
                  v23 = v38 + 125;
                }
              }
            }

            v36 = v37;
          }

          while (v37);
          a7 = v80;
          a3 = v75;
        }

        v22 = 0x1CAC083126E978D5 * ((v23 - a2) >> 3);
      }

      else
      {
        v22 = v10 / 2;
        v23 = (a2 + 1000 * (v10 / 2));
        v24 = a2;
        if (a2 != a1)
        {
          v79 = a7;
          v83 = v22;
          v74 = a3;
          v25 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
          v24 = a1;
          v85 = v23;
          do
          {
            v26 = v25 >> 1;
            v27 = v24 + 1000 * (v25 >> 1);
            v28 = *a4;
            if ((KB::CandidateFilter::candidate_static_words_from_same_language(*v23, v23[1], **a4) & 1) == 0)
            {
              v29 = v23;
              v30 = *(v28 + 2);
              if (!*(v29 + 444))
              {
                KB::Candidate::compute_string(v85);
              }

              v31 = *(v30 + 24);
              if (!v31)
              {
                goto LABEL_122;
              }

              v23 = v85;
              if (!(*(*v31 + 48))(v31, v85 + 888, *(v28 + 1)) && *(v85 + 964) != 1)
              {
                goto LABEL_35;
              }
            }

            v32 = *a4;
            if (KB::CandidateFilter::candidate_static_words_from_same_language(*v27, *(v27 + 8), **a4))
            {
              goto LABEL_35;
            }

            v33 = *(v32 + 2);
            if (!*(v27 + 888))
            {
              KB::Candidate::compute_string((v24 + 1000 * (v25 >> 1)));
            }

            v34 = *(v33 + 24);
            if (!v34)
            {
              goto LABEL_122;
            }

            v23 = v85;
            if ((*(*v34 + 48))(v34, v27 + 888, *(v32 + 1)) || *(v27 + 964) == 1)
            {
LABEL_35:
              v24 = v27 + 1000;
              v26 = v25 + ~v26;
            }

            v25 = v26;
          }

          while (v26);
          a7 = v79;
          v22 = v83;
          a3 = v74;
        }

        v76 = 0x1CAC083126E978D5 * ((v24 - a1) >> 3);
      }

      v44 = v23;
      if (v24 != a2)
      {
        v44 = v24;
        if (v23 != a2)
        {
          v45 = v22;
          v46 = std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>(v24, a2, v23);
          v22 = v45;
          v44 = v46;
        }
      }

      a5 -= v76;
      v47 = v77 - v22;
      if (v76 + v22 >= a5 + v77 - v22)
      {
        v48 = v22;
        a8 = v78;
        std::__inplace_merge<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(v44);
        a5 = v76;
        a2 = v24;
        v10 = v48;
        a3 = v44;
        if (!v10)
        {
          return;
        }
      }

      else
      {
        a2 = v23;
        a8 = v78;
        std::__inplace_merge<std::_ClassicAlgPolicy,KB::FilterDifferentLanguageThanContext::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_3 &,std::__wrap_iter<KB::Candidate *>>(a1);
        a1 = v44;
        v10 = v47;
        if (!v47)
        {
          return;
        }
      }
    }

    if (a5 <= v10)
    {
      if (a1 != a2)
      {
        v62 = a3;
        v49 = 0;
        v63 = a7;
        v64 = a1;
        do
        {
          v65 = v63;
          KB::Candidate::Candidate(v63, v64);
          ++v49;
          v64 += 1000;
          v63 += 1000;
        }

        while (v64 != a2);
        v82 = a7;
        while (1)
        {
          if (a2 == v62)
          {
            do
            {
              KB::Candidate::operator=(a1, a7);
              a1 += 1000;
              v72 = a7 == v65;
              a7 = (a7 + 1000);
            }

            while (!v72);
LABEL_114:
            a7 = v82;
            goto LABEL_115;
          }

          v66 = *a4;
          if ((KB::CandidateFilter::candidate_static_words_from_same_language(*a2, *(a2 + 8), **a4) & 1) == 0)
          {
            v67 = *(v66 + 2);
            if (!*(a2 + 888))
            {
              KB::Candidate::compute_string(a2);
            }

            v68 = *(v67 + 24);
            if (!v68)
            {
LABEL_122:
              v73 = std::__throw_bad_function_call[abi:nn200100]();
              KB::FilterDifferentLanguageThanContext::filter_description(v73);
              return;
            }

            if (!(*(*v68 + 48))(v68, a2 + 888, *(v66 + 1)) && *(a2 + 964) != 1)
            {
              goto LABEL_108;
            }
          }

          v69 = *a4;
          if (KB::CandidateFilter::candidate_static_words_from_same_language(*a7, *(a7 + 1), **a4))
          {
            goto LABEL_108;
          }

          v70 = *(v69 + 2);
          if (!*(a7 + 444))
          {
            KB::Candidate::compute_string(a7);
          }

          v71 = *(v70 + 24);
          if (!v71)
          {
            goto LABEL_122;
          }

          if (!(*(*v71 + 48))(v71, a7 + 888, *(v69 + 1)) && (*(a7 + 964) & 1) == 0)
          {
            KB::Candidate::operator=(a1, a2);
            a2 += 1000;
          }

          else
          {
LABEL_108:
            KB::Candidate::operator=(a1, a7);
            a7 = (a7 + 1000);
          }

          a1 += 1000;
          if (a7 == v63)
          {
            goto LABEL_114;
          }
        }
      }
    }

    else if (a3 != a2)
    {
      v49 = 0;
      v50 = a3;
      v51 = a7;
      v52 = a2;
      do
      {
        KB::Candidate::Candidate(v51, v52);
        ++v49;
        v52 += 1000;
        v51 += 125;
      }

      while (v52 != v50);
      v53 = v50 - 125;
      v81 = a7;
      while (a2 != a1)
      {
        v54 = *a4;
        if ((KB::CandidateFilter::candidate_static_words_from_same_language(*(v51 - 125), *(v51 - 124), **a4) & 1) == 0)
        {
          v55 = *(v54 + 2);
          if (!*(v51 - 56))
          {
            KB::Candidate::compute_string((v51 - 125));
          }

          v56 = *(v55 + 24);
          if (!v56)
          {
            goto LABEL_122;
          }

          if (!(*(*v56 + 48))(v56, v51 - 14, *(v54 + 1)) && *(v51 - 36) != 1)
          {
            goto LABEL_85;
          }
        }

        v57 = (a2 - 1000);
        v58 = *a4;
        if (KB::CandidateFilter::candidate_static_words_from_same_language(*(a2 - 1000), *(a2 - 992), **a4))
        {
          goto LABEL_85;
        }

        v59 = *(v58 + 2);
        if (!*(a2 - 112))
        {
          v87 = *(v58 + 2);
          KB::Candidate::compute_string((a2 - 1000));
          v59 = v87;
        }

        v60 = *(v59 + 3);
        if (!v60)
        {
          goto LABEL_122;
        }

        if ((*(*v60 + 48))(v60, a2 - 112, *(v58 + 1)) || (v61 = a2 - 1000, *(a2 - 36) == 1))
        {
LABEL_85:
          v57 = v51 - 125;
          v61 = a2;
          v51 -= 125;
        }

        KB::Candidate::operator=(v53, v57);
        v53 -= 125;
        a2 = v61;
        a7 = v81;
        if (v51 == v81)
        {
          goto LABEL_115;
        }
      }

      while (v51 != a7)
      {
        v51 -= 125;
        KB::Candidate::operator=(v53, v51);
        v53 -= 125;
      }

LABEL_115:
      if (a7 && v49)
      {
        do
        {
          KB::Candidate::~Candidate(a7);
          a7 = (a7 + 1000);
          --v49;
        }

        while (v49);
      }
    }
  }
}

KB::Word *KB::Word::Word(KB::Word *this, const KB::String *a2, const TITokenID *a3, const KB::ByteString *a4)
{
  KB::String::String(this, a2);
  if (a4)
  {
    v7 = *a4;
    if (v7 >= 0xF)
    {
      *(this + 16) = v7;
      operator new[]();
    }

    *(this + 2) = *a4;
  }

  else
  {
    *(this + 16) = 0;
  }

  *(this + 6) = 0x3F80000000000000;
  *(this + 14) = 1065353216;
  *(this + 16) = 0x100000;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 12) = _D0;
  *(this + 26) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 17) = *a3;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0x100000;
  *(this + 82) = 0;
  *(this + 166) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  return this;
}

uint64_t KB::Word::should_suggest(KB::Word *this)
{
  v1 = *(this + 26);
  if ((v1 & 0x800012) != 0)
  {
    return 0;
  }

  v2 = v1 & 0x2040000;
  v3 = (v1 >> 13) & 1;
  if (v2 != 0x2000000)
  {
    v3 = 1;
  }

  if ((*(this + 26) & 0x2080) == 0x80)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t KB::Word::Word(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  LXEntryGetPartialProbability();
  *&v6 = v6;
  *(a1 + 48) = __exp10f(*&v6);
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 52) = _D0;
  *(a1 + 64) = 0x100000;
  *(a1 + 68) = 0;
  *(a1 + 70) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = _D0;
  MetaFlags = LXEntryGetMetaFlags();
  *(a1 + 104) = MetaFlags & 0x4000EF | (((MetaFlags >> 23) & 7) << 27);
  *(a1 + 112) = (LXEntryGetCategoryFlags() >> 8) & 0x3FF;
  *(a1 + 120) = 0;
  *(a1 + 124) = LXEntryGetUsageCount();
  *(a1 + 128) = LXEntryGetPenaltyCount();
  *(a1 + 132) = LXEntryGetAffixData();
  if (a2)
  {
    TokenID = LXEntryGetTokenID();
    if (TokenID)
    {
      v14 = TokenID;
    }

    else
    {
      v14 = 500;
    }
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 136) = a3;
  *(a1 + 140) = v14;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x100000;
  *(a1 + 164) = 0;
  *(a1 + 166) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  v15 = LXEntryCopyStoredString();
  KB::utf8_string(v15, v18);
  KB::String::operator=(a1, v18);
  if (v19 && v18[6] == 1)
  {
    free(v19);
  }

  *(a1 + 120) = 0;
  *(a1 + 104) &= ~1u;
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t KB::Word::set_custom_capitalization(uint64_t this, int a2)
{
  *(this + 120) = a2;
  v2 = *(this + 104) & 0xFFFFFFFE;
  if (a2 == 1)
  {
    ++v2;
  }

  *(this + 104) = v2;
  return this;
}

void KB::Word::append_suffix(KB::Word *this, const KB::Word *a2, int a3, TITokenID a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = a2 + 16;
  }

  KB::String::String(v12, &v7[a3], (*a2 - a3));
  KB::String::append(this, v12);
  if (v13)
  {
    v8 = v12[6] == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    free(v13);
  }

  *(this + 17) = a4;
  *(this + 33) &= ~0x20000000u;
  v9 = *(a2 + 26);
  if ((v9 & 2) == 0)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    *(this + 26) |= 0x80u;
    if ((*(a2 + 26) & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(this + 26) |= 2u;
  v9 = *(a2 + 26);
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v9 & 4) != 0)
  {
LABEL_12:
    *(this + 26) |= 4u;
  }

LABEL_13:
  if (*(this + 16) >= 0xFu)
  {
    v10 = *(this + 5);
    if (v10)
    {
      MEMORY[0x2318BE250](v10, 0x1000C8077774924);
    }
  }

  *(this + 16) = 0;
  v11 = *MEMORY[0x277D85DE8];
}

void KB::Word::dictionary_sort_key(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (!*(a1 + 32))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      (*(*v4 + 48))(&v8);
      if (*(a1 + 32) >= 0xFu)
      {
        v5 = *(a1 + 40);
        if (v5)
        {
          MEMORY[0x2318BE250](v5, 0x1000C8077774924);
        }
      }

      *v2 = v8;
    }

    else
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();
      KB::Word::capitalized_string(v6, v7);
    }
  }
}

void KB::Word::capitalized_string(KB::Word *this@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(this + 30))
  {
    v4 = TILocaleIdentifierForLexiconID(*(this + 34));
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(__p, v5);
    *a2 = 0x100000;
    *(a2 + 4) = 0;
    *(a2 + 6) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (*(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = this + 16;
    }

    v17 = v6;
    v7 = *this;
    v18 = 0;
    v19 = v7;
    c = 0;
    KB::String::iterator::initialize(&v17);
    v13 = v6;
    v14 = v7;
    v15 = v7;
    v16 = 0;
    KB::String::iterator::initialize(&v13);
    v8 = v14;
    if (v18 != v14)
    {
      v11 = 0;
      do
      {
        v12 = c;
        if (v11 <= 0x1F && ((*(this + 30) >> v11) & 1) != 0 && !u_istitle(c))
        {
          KB::character_to_titlecase(v12, __p, v23);
          KB::String::append(a2, v23);
          if (v24 && v23[6] == 1)
          {
            free(v24);
          }
        }

        else
        {
          KB::String::append(a2, v12);
        }

        ++v11;
        KB::String::iterator::operator++(&v17);
      }

      while (v18 != v8);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    KB::String::String(a2, this);
  }
}

void KB::Word::lowercased_string(KB::Word *this@<X0>, KB::String *a2@<X8>)
{
  v4 = TILocaleIdentifierForLexiconID(*(this + 34));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v5);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  KB::string_to_lowercase(this, v6, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

BOOL KB::Word::capitalized_string_equal(KB::Word *this, const KB::Word *a2)
{
  if (this == a2)
  {
    return *(this + 30) == *(a2 + 30);
  }

  result = KB::String::equal(this, a2, 1);
  if (result)
  {
    return *(this + 30) == *(a2 + 30);
  }

  return result;
}

BOOL KB::Word::is_capitalized_string_all_caps(KB::Word *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    KB::String::compute_length(this);
    v2 = *(this + 2);
  }

  return ((-1 << v2) | *(this + 30)) == -1;
}

void KB::Word::set_custom_capitalization(KB::Word *this)
{
  v15 = *MEMORY[0x277D85DE8];
  KB::String::String(v10, this);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  for (i = 0; ; v2 = HIWORD(i))
  {
    v5 = v11;
    if (!v11)
    {
      KB::String::compute_length(v10);
      v5 = v11;
    }

    if (v2 >= v5 || v3 >= 0x20)
    {
      break;
    }

    v6 = KB::UTF8Iterator::next(v10);
    if (u_isupper(v6) || u_istitle(v6))
    {
      v4 |= 1 << v3;
    }

    ++v3;
  }

  *(this + 30) = v4;
  v7 = *(this + 26) & 0xFFFFFFFE;
  if (v4 == 1)
  {
    ++v7;
  }

  *(this + 26) = v7;
  if (v13)
  {
    v8 = v12 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t KB::Word::capitalize_first_letter(KB::Word *this, int a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    v4 = this + 16;
  }

  v7 = v4;
  v5 = *this;
  v8 = 0;
  v9 = v5;
  c = 0;
  KB::String::iterator::initialize(&v7);
  result = u_isalnum(c);
  *(this + 30) |= 1 << (result == 0);
  if (a2)
  {
    *(this + 26) |= 0x100000u;
  }

  return result;
}

void KB::Word::move_capitalization_to_bits(KB::Word *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = TILocaleIdentifierForLexiconID(*(this + 34));
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v3);
  v33 = 0x100000;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  KB::String::String(v28, this);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  for (i = 0; ; v4 = HIWORD(i))
  {
    v7 = v29;
    if (!v29)
    {
      KB::String::compute_length(v28);
      v7 = v29;
    }

    if (v4 >= v7 || v5 >= 0x20)
    {
      break;
    }

    v8 = KB::UTF8Iterator::next(v28);
    if (u_isupper(v8))
    {
      KB::character_to_lowercase(v8, __p, v23);
      v9 = v26;
      if (!v26)
      {
        v9 = &v27;
      }

      v20 = v9;
      LODWORD(v21) = 0;
      HIDWORD(v21) = v23[0];
      v22 = 0;
      KB::String::iterator::initialize(&v20);
      KB::character_to_titlecase(v22, __p, &v20);
      v10 = v24;
      if (!v24)
      {
        KB::String::compute_length(v23);
        v10 = v24;
      }

      if (v10 != 1)
      {
        goto LABEL_20;
      }

      KB::String::String(v18, v8);
      v11 = KB::String::equal(&v20, v18, 1);
      if (v19 && v18[6] == 1)
      {
        free(v19);
      }

      if (v11)
      {
        KB::String::append(&v33, v23);
      }

      else
      {
LABEL_20:
        KB::String::append(&v33, v8);
      }

      if (v21 && BYTE6(v20) == 1)
      {
        free(v21);
      }

      if (v26)
      {
        if (v25 == 1)
        {
          free(v26);
        }
      }

      v6 |= 1 << v5;
    }

    else
    {
      KB::String::append(&v33, v8);
    }

    ++v5;
  }

  v12 = *(this + 30) | v6;
  *(this + 30) = v12;
  v13 = *(this + 26);
  if (v12 == 1)
  {
    *(this + 26) = v13 | 1;
    v14 = HIWORD(i);
    if (!v7)
    {
      KB::String::compute_length(v28);
      v7 = v29;
    }

    if (v14 >= v7)
    {
      KB::String::operator=(this, &v33);
    }
  }

  else
  {
    *(this + 26) = v13 & 0xFFFFFFFE;
  }

  if (v31 && v30 == 1)
  {
    free(v31);
  }

  if (v36 && v35 == 1)
  {
    free(v36);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t KB::Word::matches_input(KB::String *a1, const KB::String *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = 1;
  if (KB::String::equal(a1, a2, 1))
  {
    return v6;
  }

  v7 = *(a3 + 24);
  if (v7)
  {
    if (!(*(*v7 + 48))(v7, a1, a2))
    {
      return 0;
    }

    v12[1] = 1;
    v12[0] = &unk_283FDCF10;
    return KB::InputSegmentFilter::string_preserves_surface_form_features(v12, a1, a2, 0, 0);
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  return KB::Word::preserves_input(v9, v10, v11);
}

uint64_t KB::Word::preserves_input(KB::String *this, KB::String *a2, uint64_t a3)
{
  if ((*(this + 135) & 4) != 0)
  {
    if ((*(a2 + 135) & 4) == 0)
    {
      return 0;
    }

    if (this == a2)
    {
      return 1;
    }

    return KB::String::equal(this, a2, 1);
  }

  else
  {
    if (!*(this + 30))
    {
      if (this == a2)
      {
        return 1;
      }

      v10 = 1;
      if (KB::String::equal(this, a2, 1))
      {
        return v10;
      }
    }

    v6 = *(a3 + 24);
    if (v6)
    {
      if (!(*(*v6 + 48))(v6, this, a2))
      {
        return 0;
      }

      v14 = 0;
      v16 = 1;
      v15 = &unk_283FDCF10;
      if (!KB::InputSegmentFilter::string_preserves_surface_form_features(&v15, this, a2, &v14, 0) || (v14 & 1) != 0)
      {
        return 0;
      }

      if (*(this + 120))
      {
        v7 = *(a2 + 1);
        if (!v7)
        {
          v7 = a2 + 16;
        }

        v15 = v7;
        v8 = *a2;
        LODWORD(v16) = 0;
        HIDWORD(v16) = v8;
        c = 0;
        KB::String::iterator::initialize(&v15);
        v9 = c;
        if (!u_isupper(c) && !u_istitle(v9))
        {
          return 0;
        }
      }

      return 1;
    }

    v12 = std::__throw_bad_function_call[abi:nn200100]();
    return KB::Word::is_acceptable_for_input(v12, v13);
  }
}

uint64_t KB::Word::is_acceptable_for_input(KB::Word *this, const KB::String *a2)
{
  if (KB::string_contains_surface_form_features(a2, a2))
  {
    v8 = 0;
    v9[1] = 1;
    v9[0] = &unk_283FDCF10;
    result = KB::InputSegmentFilter::string_preserves_surface_form_features(v9, this, a2, &v8, 0);
    if (!result)
    {
      return result;
    }

    if (*(this + 12) <= 0.0)
    {
      return 0;
    }

    if (v8)
    {
      v6 = 0x200000;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(this + 26) & 0xFFDFFFFF | v6;
    goto LABEL_10;
  }

  if (KB::string_contains_surface_form_features(this, v4))
  {
    v7 = *(this + 26) | 0x200000;
LABEL_10:
    *(this + 26) = v7;
  }

  return 1;
}

uint64_t KB::Word::is_potentially_private(KB::Word *this)
{
  v33[2] = *MEMORY[0x277D85DE8];
  if ((*(this + 106) & 4) != 0)
  {
    goto LABEL_9;
  }

  KB::Word::capitalized_string(this, v29);
  v2 = v29[0];
  if (v32)
  {
    v3 = v31 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v32);
  }

  if (v2 < 6)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  Mutable = CFStringCreateMutable(0, 0);
  KB::Word::capitalized_string(this, v29);
  v9 = v32;
  v10 = v33;
  if (!v32)
  {
    v9 = v33;
  }

  if (v29[0])
  {
    v11 = v9;
  }

  else
  {
    v11 = "";
  }

  KB::append_format(Mutable, "%s", v8, v11);
  if (v32 && v31 == 1)
  {
    free(v32);
  }

  CFStringTransform(Mutable, 0, *MEMORY[0x277CBF108], 0);
  KB::utf8_string(Mutable, v29);
  if (v32)
  {
    v10 = v32;
  }

  v25 = v10;
  v12 = v29[0];
  v26 = 0;
  v27 = v29[0];
  v28 = 0;
  KB::String::iterator::initialize(&v25);
  v21 = v10;
  v22 = v12;
  v23 = v12;
  v24 = 0;
  KB::String::iterator::initialize(&v21);
  v13 = v22;
  if (v26 != v22)
  {
    v15 = 0;
    v12 = 0;
    v16 = MEMORY[0x277D85DE0];
    do
    {
      if (v28 <= 0xFF)
      {
        v15 += (*(v16 + 4 * v28 + 60) >> 10) & 1;
        v17 = *(v16 + 4 * v28 + 60) & 0x8000;
      }

      else
      {
        v17 = __maskrune(v28, 0x8000uLL);
      }

      if (v17)
      {
        ++v12;
      }

      KB::String::iterator::operator++(&v25);
    }

    while (v26 != v13);
    v14 = v12 > 1;
    LOBYTE(v12) = v29[0];
    if (!v29[0])
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v14 = 0;
  v15 = 0;
  if (v12)
  {
LABEL_32:
    v18 = KB::String::last(v29);
    if (v18 <= 0xFF)
    {
      v12 = (*(MEMORY[0x277D85DE0] + 4 * v18 + 60) >> 10) & 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

LABEL_35:
  v19 = v30;
  if (!v30)
  {
    KB::String::compute_length(v29);
    v19 = v30;
  }

  if (v15 < v19)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v15 > 0) & v14;
  }

  if (v32 && v31 == 1)
  {
    free(v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void KB::Word::append_debug_data(KB::Word *this, __CFString *a2, const KB::String *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v45 = 0x100000;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v5 = *(a3 + 1);
  if (!v5)
  {
    v5 = a3 + 16;
  }

  if (*a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  KB::Word::capitalized_string(this, &v41);
  v7 = v42;
  if (!v42)
  {
    v7 = &v43;
  }

  if (v41)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  KB::String::append_format(&v45, "%s[%s]", v6, v8);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  v9 = v48;
  if (!v48)
  {
    v9 = &v49;
  }

  if (v45)
  {
    v10 = v9;
  }

  else
  {
    v10 = "";
  }

  CFStringAppendCString(a2, v10, 0x8000100u);
  v11 = *(this + 17);
  if (HIDWORD(v11))
  {
    v12 = TILocaleIdentifierForLexiconID(v11);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = "";
    }

    v14 = *(this + 35);
    v15 = logf(*(this + 13));
    v16 = logf(*(this + 24));
    CFStringAppendFormat(a2, 0, @" word_id [%s]%d, ln P(word|ctx,lex) %.3f, ln P(lex|ctx) %.3f", v13, v14, (v15 - v16), v16);
  }

  else
  {
    v27 = logf(*(this + 13));
    CFStringAppendFormat(a2, 0, @" ln P(word) %.3f", *&v27, v29);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v17 = *(this + 26);
  if ((v17 & 0x40000000) != 0)
  {
    WORD2(v41) = 0;
    BYTE6(v41) = 0;
    v42 = "blocklist";
    LODWORD(v41) = 1048585;
    v44 = 0;
    std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
    if (v42 && BYTE6(v41) == 1)
    {
      free(v42);
    }

    v17 = *(this + 26);
    if ((v17 & 2) == 0)
    {
LABEL_27:
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_27;
  }

  WORD2(v41) = 0;
  BYTE6(v41) = 0;
  v42 = "no-suggest";
  LODWORD(v41) = 1048586;
  v44 = 0;
  std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  v17 = *(this + 26);
  if ((v17 & 0x80) == 0)
  {
LABEL_28:
    if ((v17 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_41:
  WORD2(v41) = 0;
  BYTE6(v41) = 0;
  v42 = "no-suggest-until-learned";
  LODWORD(v41) = 1048600;
  v44 = 0;
  std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  v17 = *(this + 26);
  if ((v17 & 4) == 0)
  {
LABEL_29:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

LABEL_45:
  WORD2(v41) = 0;
  BYTE6(v41) = 0;
  v42 = "no-predict-until-learned";
  LODWORD(v41) = 1048600;
  v44 = 0;
  std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  v17 = *(this + 26);
  if ((v17 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_53;
  }

LABEL_49:
  WORD2(v41) = 0;
  BYTE6(v41) = 0;
  v42 = "offensive";
  LODWORD(v41) = 1048585;
  v44 = 0;
  std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  v17 = *(this + 26);
  if ((v17 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v17 & 0x20000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

LABEL_53:
  WORD2(v41) = 0;
  BYTE6(v41) = 0;
  v42 = "vulgar";
  LODWORD(v41) = 1048582;
  v44 = 0;
  std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  if ((*(this + 26) & 0x20000000) != 0)
  {
LABEL_57:
    WORD2(v41) = 0;
    BYTE6(v41) = 0;
    v42 = "sensitive";
    LODWORD(v41) = 1048585;
    v44 = 0;
    std::vector<KB::String>::push_back[abi:nn200100](&v33, &v41);
    if (v42 && BYTE6(v41) == 1)
    {
      free(v42);
    }
  }

LABEL_60:
  v37 = 0;
  v38 = 0;
  v39 = ", ";
  v36 = 1048578;
  v40 = 0;
  KB::string_join(v33, v34, &v36, &v41);
  v18 = v42;
  if (!v42)
  {
    v18 = &v43;
  }

  if (v41)
  {
    v19 = v18;
  }

  else
  {
    v19 = "";
  }

  CFStringAppendFormat(a2, 0, @" flags=(%s)", v19);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  if (v39 && v38 == 1)
  {
    free(v39);
  }

  v20 = *(this + 26);
  if ((v20 & 0x80032000) != 0 || *(this + 31))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    if ((v20 & 0x40000) != 0)
    {
      WORD2(v41) = 0;
      BYTE6(v41) = 0;
      v42 = "static";
      LODWORD(v41) = 1048582;
      v44 = 0;
      std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
      if (v42 && BYTE6(v41) == 1)
      {
        free(v42);
      }

      v20 = *(this + 26);
    }

    if ((v20 & 0x2000) != 0)
    {
      WORD2(v41) = 0;
      BYTE6(v41) = 0;
      v42 = "learned";
      LODWORD(v41) = 1048583;
      v44 = 0;
      std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
      if (v42)
      {
        if (BYTE6(v41) == 1)
        {
          free(v42);
        }
      }
    }

    if (*(this + 31))
    {
      KB::String::format("f=%d", &v41, *(this + 31));
      std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
      if (v42)
      {
        if (BYTE6(v41) == 1)
        {
          free(v42);
        }
      }
    }

    if (*(this + 32))
    {
      KB::String::format("p=%d", &v41, *(this + 32));
      std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
      if (v42)
      {
        if (BYTE6(v41) == 1)
        {
          free(v42);
        }
      }
    }

    v21 = *(this + 26);
    if ((v21 & 0x10000) != 0)
    {
      WORD2(v41) = 0;
      BYTE6(v41) = 0;
      v42 = "user dictionary";
      LODWORD(v41) = 1048591;
      v44 = 0;
      std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
      if (v42 && BYTE6(v41) == 1)
      {
        free(v42);
      }

      v21 = *(this + 26);
      if ((v21 & 0x20000) == 0)
      {
LABEL_92:
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_103;
      }
    }

    else if ((v21 & 0x20000) == 0)
    {
      goto LABEL_92;
    }

    WORD2(v41) = 0;
    BYTE6(v41) = 0;
    v42 = "address book";
    LODWORD(v41) = 1048588;
    v44 = 0;
    std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
    if (v42 && BYTE6(v41) == 1)
    {
      free(v42);
    }

    v21 = *(this + 26);
    if ((v21 & 0x80000000) == 0)
    {
LABEL_93:
      if ((v21 & 0x100) == 0)
      {
LABEL_110:
        if (*(this + 28))
        {
          WORD2(v41) = 0;
          BYTE6(v41) = 0;
          v42 = "supplemental lexicon item";
          LODWORD(v41) = 1048601;
          v44 = 0;
          std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
          if (v42)
          {
            if (BYTE6(v41) == 1)
            {
              free(v42);
            }
          }
        }

        if ((*(this + 107) & 4) != 0)
        {
          WORD2(v41) = 0;
          BYTE6(v41) = 0;
          v42 = "conversation history";
          LODWORD(v41) = 1048596;
          v44 = 0;
          std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
          if (v42)
          {
            if (BYTE6(v41) == 1)
            {
              free(v42);
            }
          }
        }

        v37 = 0;
        v38 = 0;
        v39 = ", ";
        v36 = 1048578;
        v40 = 0;
        KB::string_join(v30, v31, &v36, &v41);
        v22 = v42;
        if (!v42)
        {
          v22 = &v43;
        }

        if (v41)
        {
          v23 = v22;
        }

        else
        {
          v23 = "";
        }

        CFStringAppendFormat(a2, 0, @" sources=(%s)", v23);
        if (v42 && BYTE6(v41) == 1)
        {
          free(v42);
        }

        if (v39 && v38 == 1)
        {
          free(v39);
        }

        v41 = &v30;
        std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v41);
        goto LABEL_130;
      }

LABEL_107:
      WORD2(v41) = 0;
      BYTE6(v41) = 0;
      v42 = "named entities";
      LODWORD(v41) = 1048590;
      v44 = 0;
      std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
      if (v42 && BYTE6(v41) == 1)
      {
        free(v42);
      }

      goto LABEL_110;
    }

LABEL_103:
    WORD2(v41) = 0;
    BYTE6(v41) = 0;
    v42 = "app names";
    LODWORD(v41) = 1048585;
    v44 = 0;
    std::vector<KB::String>::push_back[abi:nn200100](&v30, &v41);
    if (v42 && BYTE6(v41) == 1)
    {
      free(v42);
    }

    if ((*(this + 26) & 0x100) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_107;
  }

LABEL_130:
  if (*(this + 32))
  {
    v24 = *(this + 9);
    if (!v24)
    {
      v24 = this + 80;
    }

    CFStringAppendFormat(a2, 0, @" log10 P(word|ctx,lm) details=(%s)", v24);
  }

  if (*(this + 80))
  {
    v25 = *(this + 21);
    if (!v25)
    {
      v25 = this + 176;
    }

    CFStringAppendFormat(a2, 0, @"\n%s", v25);
  }

  else
  {
    CFStringAppendFormat(a2, 0, @"\n", v28);
  }

  v41 = &v33;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v41);
  if (v48 && v47 == 1)
  {
    free(v48);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x22CB73494);
  }

  return (*(*a1 + 48))(a1, a2, a3, &v5);
}

uint64_t __Block_byref_object_copy__10217(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFTypeRef KB::LanguageModelImplBase::engine_string_to_surface_form@<X0>(KB::LanguageModelImplBase *this@<X0>, CFTypeRef cf@<X1>, void *a3@<X8>)
{
  result = *(this + 16);
  if (result)
  {
    v6 = *(result + 2);

    return v6();
  }

  else
  {
    *a3 = cf;
    if (cf)
    {
      result = CFRetain(cf);
      *a3 = cf;
    }
  }

  return result;
}

void KB::LanguageModelImplBase::set_string_converter(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 128);
  if (v3 != aBlock)
  {
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
      v3 = *(a1 + 128);
      if (!v3)
      {
LABEL_5:
        *(a1 + 128) = v4;
        return;
      }
    }

    else
    {
      v4 = 0;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    _Block_release(v3);
    goto LABEL_5;
  }
}

uint64_t KB::LanguageModelImplBase::tokenize_text(void *a1, unsigned __int16 *a2)
{
  v4 = a1[1];
  LMStreamTokenizerCreate();
  (*(*a1 + 40))(a1);
  v5 = *a2;
  *(a2 + 1);
  LMStreamTokenizerPushBytes();
  return LMStreamTokenizerRelease();
}

void ___ZNK2KB21LanguageModelImplBase13tokenize_textERKNS_6StringEU13block_pointerFvS3_RK9TITokenIDE_block_invoke(uint64_t a1, const char *a2, unsigned __int16 a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  KB::String::String(v9, a2, a3);
  v8 = *(a1 + 40) | (a4 << 32);
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  if (v10)
  {
    v6 = v9[6] == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v10);
  }

  v7 = *MEMORY[0x277D85DE8];
}