uint64_t EQKit::Config::Operator::Dictionary::IdentifierMap::IdentifierMap(uint64_t this)
{
  *this = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

EQKit::Config::Operator::Dictionary::IdentifierMap *EQKit::Config::Operator::Dictionary::IdentifierMap::IdentifierMap(EQKit::Config::Operator::Dictionary::IdentifierMap *this, const EQKit::Config::Operator::Dictionary::IdentifierMap *a2)
{
  *this = *a2;
  std::map<std::string,unsigned short>::map[abi:nn200100](this + 1, a2 + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(this + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  return this;
}

uint64_t EQKit::Config::Operator::Dictionary::IdentifierMap::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,unsigned short>,std::__tree_node<std::__value_type<std::string,unsigned short>,void *> *,long>>((a1 + 8), *(a2 + 8), (a2 + 16));
    std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  return a1;
}

uint64_t EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

uint64_t *EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v2) >> 3) >= a2)
    {
      return (v2 + 24 * a2 - 24);
    }
  }

  {
    return &EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](unsigned short)const::sEmpty;
  }

  {
    EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](unsigned short)const::sEmpty = 0;
    *algn_2804B6368 = 0;
    qword_2804B6370 = 0;
  }

  return &EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](unsigned short)const::sEmpty;
}

uint64_t EQKit::Config::Operator::Dictionary::IdentifierMap::add(_WORD *a1, uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>((a1 + 4), a2);
  if (a1 + 8 != v4)
  {
    return *(v4 + 56);
  }

  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v5;
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short>>((a1 + 4), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::vector<std::string>::push_back[abi:nn200100]((a1 + 16), a2);
  ++*a1;
  return v5;
}

void sub_26C6F5340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:nn200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

EQKit::Config::Operator::Dictionary::Entry *EQKit::Config::Operator::Dictionary::Entry::Entry(EQKit::Config::Operator::Dictionary::Entry *this)
{
  *this = 1;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 3) = 0;
  bzero(this + 48, 1uLL);
  return this;
}

{
  *this = 1;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 3) = 0;
  bzero(this + 48, 1uLL);
  return this;
}

double EQKit::Config::Operator::Dictionary::Entry::Entry(EQKit::Config::Operator::Dictionary::Entry *this, const EQKit::Config::Operator::Dictionary::Entry *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 16) = *(a2 + 16);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(this + 48) = *(a2 + 48);
  return result;
}

{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 16) = *(a2 + 16);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(this + 48) = *(a2 + 48);
  return result;
}

double EQKit::Config::Operator::Dictionary::Entry::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  return result;
}

uint64_t EQKit::Config::Operator::Dictionary::Dictionary(uint64_t this)
{
  *this = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 56) = this + 64;
  *(this + 88) = 0;
  *(this + 72) = 0;
  *(this + 80) = this + 88;
  *(this + 120) = 0;
  *(this + 112) = 0;
  *(this + 96) = 0;
  *(this + 104) = this + 112;
  return this;
}

{
  *this = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 56) = this + 64;
  *(this + 88) = 0;
  *(this + 72) = 0;
  *(this + 80) = this + 88;
  *(this + 120) = 0;
  *(this + 112) = 0;
  *(this + 96) = 0;
  *(this + 104) = this + 112;
  return this;
}

void EQKit::Config::Operator::Dictionary::~Dictionary(EQKit::Config::Operator::Dictionary *this)
{
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 56, *(this + 8));
  v2 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(this + 8, *(this + 2));
}

EQKit::Config::Operator::Dictionary *EQKit::Config::Operator::Dictionary::dictionaryFromURL(EQKit::Config::Operator::Dictionary *this, NSURL *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  obj = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:this];
  if (![obj count] || (v2 = operator new(0x80uLL, MEMORY[0x277D826F0])) == 0)
  {
LABEL_80:
    v50 = 0;
    goto LABEL_81;
  }

  *v2 = 1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[1] = v2 + 2;
  v2[8] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = v2 + 8;
  v41 = (v2 + 7);
  v2[9] = 0;
  v2[11] = 0;
  v2[10] = v2 + 11;
  v46 = (v2 + 10);
  v2[12] = 0;
  v2[14] = 0;
  v49 = (v2 + 14);
  v50 = v2;
  v2[13] = v2 + 14;
  v43 = (v2 + 13);
  v2[15] = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v45 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (!v45)
  {
    v31 = 0;
    goto LABEL_66;
  }

  v42 = *v67;
  while (2)
  {
    v3 = 0;
    do
    {
      if (*v67 != v42)
      {
        v4 = v3;
        objc_enumerationMutation(obj);
        v3 = v4;
      }

      v48 = v3;
      v5 = *(*(&v66 + 1) + 8 * v3);
      LODWORD(v61) = 1;
      *(&v61 + 1) = 0;
      LODWORD(v62) = 1;
      *(&v62 + 1) = 0;
      bzero(v65, 1uLL);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(@"invalid item class: %@", v5);
LABEL_65:
        v31 = 1;
        goto LABEL_66;
      }

      v6 = [v5 objectForKey:@"char"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(@"missing/invalid '%@': %@", @"char", v5);
        goto LABEL_65;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, [v6 UTF8String]);
      v7 = EQKit::Config::Operator::Dictionary::IdentifierMap::add(v50, __p);
      if (v59 < 0)
      {
        operator delete(__p[0]);
      }

      v60 = v7;
      v8 = [v5 objectForKey:@"form"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        std::string::basic_string[abi:nn200100]<0>(__p, [v8 UTF8String]);
        v51 = EQKit::Config::Operator::formFromMathMLString(__p, 0);
        if (v59 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v51 = 0;
      }

      v9 = [v5 objectForKey:@"lspace"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = 0.0;
      if (isKindOfClass)
      {
        v11 = [v9 integerValue];
      }

      LODWORD(v61) = 3;
      *(&v61 + 1) = v11 / 18.0;
      v12 = [v5 objectForKey:@"rspace"];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();
      v14 = 0.0;
      if (v13)
      {
        v14 = [v12 integerValue];
      }

      LODWORD(v62) = 3;
      *(&v62 + 1) = v14 / 18.0;
      v15 = [v5 objectForKey:@"prio"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 unsignedIntegerValue];
      }

      else
      {
        v16 = 0;
      }

      v47 = v16;
      v63 = v16;
      v17 = [v5 objectForKey:@"flags"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v17 length])
        {
          v18 = [v17 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @", ")}];
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v54 objects:v70 count:16];
          if (v19)
          {
            v20 = *v55;
            v21 = v65[0];
            v22 = v64;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v55 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v24 = *(*(&v54 + 1) + 8 * i);
                if ([v24 isEqualToString:@"stretchy"])
                {
                  v21 |= 1u;
                }

                else if ([v24 isEqualToString:@"symmetric"])
                {
                  v21 |= 2u;
                }

                else if ([v24 isEqualToString:@"largeop"])
                {
                  if ((v21 & 0x80u) != 0)
                  {
                    v25 = 4;
                  }

                  else
                  {
                    v22 = 1.0;
                    v25 = -124;
                  }

                  v21 |= v25;
                }

                else if ([v24 isEqualToString:@"fence"])
                {
                  v21 |= 0x10u;
                }

                else if ([v24 isEqualToString:@"accent"])
                {
                  v21 |= 8u;
                }

                else if ([v24 isEqualToString:@"movablelimits"])
                {
                  v21 |= 0x20u;
                }

                else if ([v24 isEqualToString:@"relational"])
                {
                  v21 |= 0x40u;
                }

                else if ([v24 hasPrefix:@"cramped="])
                {
                  v26 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v24];
                  LODWORD(__p[0]) = 0;
                  if ([v26 scanString:@"cramped=" intoString:0] && objc_msgSend(v26, "scanFloat:", __p))
                  {
                    v27 = [v26 isAtEnd];
                    v28 = *__p == 0.0 ? 0 : v27;
                    if (v28 == 1)
                    {
                      v21 |= 0xFFFFFF80;
                      v22 = *__p;
                    }
                  }
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v54 objects:v70 count:16];
            }

            while (v19);
            v65[0] = v21;
            v64 = v22;
          }
        }
      }

      v52[0] = v60;
      v53 = v51;
      __p[0] = v52;
      v29 = std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__emplace_unique_key_args<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned short,EQKit::Config::Operator::Form>&&>,std::tuple<>>(v41, v52);
      *(v29 + 40) = v61;
      *(v29 + 56) = v62;
      *(v29 + 72) = v47;
      *(v29 + 80) = v64;
      *(v29 + 88) = v65[0];
      __p[0] = &v60;
      *(std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v46, &v60) + 8) = v51;
      __p[0] = &v60;
      v30 = std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v43, &v60);
      v30[5] |= 1 << v51;
      v3 = v48 + 1;
    }

    while (v48 + 1 != v45);
    v45 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    v31 = 0;
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_66:
  v32 = *v43;
  v33 = v50;
  if (*v43 != v49)
  {
    do
    {
      v34 = *(v32 + 5);
      if (v34)
      {
        v35 = 0;
        do
        {
          v35 += v34 & 1;
          v36 = v34 > 1;
          v34 >>= 1;
        }

        while (v36);
        if (v35 >= 2)
        {
          std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__erase_unique<unsigned short>(v46, v32 + 16);
          v33 = v50;
        }
      }

      v37 = *(v32 + 1);
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = *(v32 + 2);
          v39 = *v38 == v32;
          v32 = v38;
        }

        while (!v39);
      }

      v32 = v38;
    }

    while (v38 != v49);
  }

  if (v31)
  {
    EQKit::Config::Operator::Dictionary::~Dictionary(v33);
    MEMORY[0x26D6A9A30]();
    goto LABEL_80;
  }

LABEL_81:

  return v50;
}

void sub_26C6F5D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t *EQKit::Config::Operator::Dictionary::lookup(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 2;
  }

  v7[0] = a2;
  v8 = v4;
  v5 = std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::find<std::pair<unsigned short,EQKit::Config::Operator::Form>>(a1 + 56, v7);
  if ((a1 + 64) == v5)
  {
    return 0;
  }

  else
  {
    return v5 + 5;
  }
}

uint64_t EQKit::Config::Operator::Dictionary::operatorId(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

uint64_t EQKit::Config::Operator::Dictionary::formForOperatorId(EQKit::Config::Operator::Dictionary *this, unsigned int a2)
{
  v4 = *(this + 11);
  v2 = this + 88;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 14);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 14) <= a2)
  {
    return *(v5 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Config::Operator::Dictionary::formMaskForOperatorId(EQKit::Config::Operator::Dictionary *this, unsigned int a2)
{
  v4 = *(this + 14);
  v2 = this + 112;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 16);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 16) <= a2)
  {
    return *(v5 + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t EQKit::Config::Operator::Dictionary::enumerateEntries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = (result + 64);
  if (v2 != (result + 64))
  {
    v5 = result;
    do
    {
      v6 = *(v2 + 9);
      v7 = EQKit::Config::Operator::Dictionary::IdentifierMap::operator[](v5, *(v2 + 16));
      result = (*(a2 + 16))(a2, v7, v6, v2 + 5);
      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *std::map<std::string,unsigned short>::map[abi:nn200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,unsigned short>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,unsigned short>,std::__tree_node<std::__value_type<std::string,unsigned short>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,unsigned short>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,unsigned short>,std::__tree_node<std::__value_type<std::string,unsigned short>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__construct_node<std::pair<std::string const,unsigned short> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, a5, (a2 + 32)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_26C6F659C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, a3, (v4 + 32)))
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

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

uint64_t **std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,unsigned short>,std::__tree_node<std::__value_type<std::string,unsigned short>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 28) = *(v9 + 28);
          leaf_high = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_multi<std::pair<std::string const,unsigned short> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_26C6F6D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:nn200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(uint64_t a1, const void **a2)
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
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, (v3 + 32), a2);
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
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>::operator()[abi:nn200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__construct_node<std::pair<std::string const,unsigned short> const&>();
  }

  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:nn200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__emplace_unique_key_args<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned short,EQKit::Config::Operator::Form>&&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__find_equal<std::pair<unsigned short,EQKit::Config::Operator::Form>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::__find_equal<std::pair<unsigned short,EQKit::Config::Operator::Form>>(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 16);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__erase_unique<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::find<std::pair<unsigned short,EQKit::Config::Operator::Form>>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = v2;
  do
  {
    v8 = *(v3 + 16);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 9) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 9) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = *(v7 + 16);
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 9))
  {
    return v2;
  }

  return v7;
}

BOOL EQKitLength::isNamedspaceString(uint64_t a1, const void **a2)
{
  if (_map(void)::onceToken != -1)
  {
    EQKitLength::isNamedspaceString();
  }

  v3 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(_map(void)::map, a2);
  if (_map(void)::onceToken != -1)
  {
    EQKitLength::isNamedspaceString();
  }

  return _map(void)::map + 8 != v3;
}

uint64_t EQKitLength::EQKitLengthFromMathMLString(uint64_t a1, const void **a2)
{
  if (_map(void)::onceToken != -1)
  {
    EQKitLength::isNamedspaceString();
  }

  v3 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(_map(void)::map, a2);
  if (_map(void)::onceToken != -1)
  {
    EQKitLength::isNamedspaceString();
  }

  if (_map(void)::map + 8 == v3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t EQKitLength::EQKitLength(uint64_t a1, uint64_t *a2, int a3)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v6 = [v5 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  v7 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v6];
  v22 = 0.0;
  [v7 scanFloat:&v22];
  *(a1 + 8) = v22;
  v8 = [objc_msgSend(v7 "string")];
  std::string::basic_string[abi:nn200100]<0>(&__p, [objc_msgSend(v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")), "UTF8String"}]);

  if ((v21 & 0x80000000) == 0)
  {
    if (v21 != 1)
    {
      if (v21 != 2)
      {
        if (v21 == 4 && __p == 1701606770)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      if (__p == 29808)
      {
LABEL_44:
        v10 = 1;
        goto LABEL_45;
      }

      if (__p != 30821)
      {
        if (__p == 28005)
        {
          goto LABEL_53;
        }

        goto LABEL_28;
      }

LABEL_32:
      v10 = 2;
      goto LABEL_45;
    }

    if (__p != 37)
    {
      goto LABEL_36;
    }

LABEL_30:
    v10 = 4;
LABEL_45:
    *a1 = v10;
    goto LABEL_46;
  }

  if (v20 == 1 && *__p == 37)
  {
    goto LABEL_30;
  }

  if (v20 == 2 && *__p == 29808)
  {
    goto LABEL_44;
  }

  if (v20 == 2 && *__p == 30821)
  {
    goto LABEL_32;
  }

  if (v20 != 2)
  {
    goto LABEL_26;
  }

  if (*__p == 28005)
  {
LABEL_53:
    v10 = 3;
    goto LABEL_45;
  }

  if (v21 < 0)
  {
LABEL_26:
    if (v20 != 4)
    {
      goto LABEL_33;
    }

    if (*__p == 1701606770)
    {
LABEL_31:
      v10 = 5;
      goto LABEL_45;
    }

    if (v21 < 0)
    {
LABEL_33:
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      p_p = __p;
      goto LABEL_35;
    }
  }

  if (v21 != 2)
  {
    goto LABEL_36;
  }

LABEL_28:
  p_p = &__p;
LABEL_35:
  if (*p_p == 28003)
  {
    v11 = *(a1 + 8);
    goto LABEL_38;
  }

LABEL_36:
  if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "mm"))
  {
    v11 = *(a1 + 8) / 10.0;
LABEL_38:
    v12 = 2.54;
LABEL_39:
    v13 = v11 / v12;
LABEL_42:
    v14 = 72.0;
LABEL_43:
    *(a1 + 8) = v13 * v14;
    goto LABEL_44;
  }

  if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "in"))
  {
    v13 = *(a1 + 8);
    goto LABEL_42;
  }

  if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "px"))
  {
    v11 = *(a1 + 8);
    v12 = 96.0;
    goto LABEL_39;
  }

  if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pc"))
  {
    v13 = *(a1 + 8);
    v14 = 12.0;
    goto LABEL_43;
  }

  if (!std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "ch") && !std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "rem") && !std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "vw") && !std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "vh"))
  {
    v16 = std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "vmin");
    if (!v16)
    {
      isNamedspaceString = EQKitLength::isNamedspaceString(v16, &__p);
      if (isNamedspaceString)
      {
        *a1 = EQKitLength::EQKitLengthFromMathMLString(isNamedspaceString, &__p);
        *(a1 + 8) = v18;
      }

      else
      {
        if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, ""))
        {
          v10 = 6;
          goto LABEL_45;
        }

        *a1 = 0;
      }
    }
  }

LABEL_46:
  if (v21 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_26C6F86F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
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
      std::string::__throw_length_error[abi:nn200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

double EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(double *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  v4 = *a1;
  if (v4 > 4)
  {
    if (v4 == 6)
    {
      return v3 * a3;
    }

    if (v4 != 5)
    {
      return v3;
    }

LABEL_7:
    a3 = (*(*a2 + 16))(a2, v4);
    return v3 * a3;
  }

  if ((v4 - 2) < 2)
  {
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    return v3 * a3 / 100.0;
  }

  return v3;
}

double EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(double *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = *a1;
  if (v4 > 4)
  {
    if (v4 == 6)
    {
      if (!a3)
      {
        return v3;
      }

      (*(a3 + 16))(a3);
      return v3 * v6;
    }

    if (v4 != 5)
    {
      return v3;
    }

LABEL_10:
    v6 = (*(*a2 + 16))(a2, v4);
    return v3 * v6;
  }

  if ((v4 - 2) < 2)
  {
    goto LABEL_10;
  }

  if (v4 == 4 && a3 != 0)
  {
    return v3 * (*(a3 + 16))(a3) / 100.0;
  }

  return v3;
}

double EQKitLength::resolveToAbsoluteWithSizeAndRule(EQKitLength *this, double a2, double a3)
{
  result = *(this + 1);
  v5 = *this;
  if (*this <= 3)
  {
    if (v5 == 1)
    {
      return result;
    }

    if (v5 == 3)
    {
      return result * a2;
    }

    return 0.0;
  }

  if (v5 == 4)
  {
    return result * a2 / 100.0;
  }

  if (v5 != 5)
  {
    if (v5 == 6)
    {
      return result * a2;
    }

    return 0.0;
  }

  return result * a3;
}

uint64_t EQKitLength::asString(EQKitLength *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v5);
  MEMORY[0x26D6A9950](&v6, *(this + 1));
  v2 = *this - 1;
  if (v2 < 5)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v6, off_279D464D8[v2], qword_26CA63770[v2]);
  }

  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x26D6A99E0](&v10);
}

void sub_26C6F8B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x26D6A99E0](v2 + 128);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:nn200100]((a1 + 3), 24);
  return a1;
}

void sub_26C6F8DC4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x26D6A99E0](v1);
  _Unwind_Resume(a1);
}

uint64_t EQKitLength::lengthVectorFromString(std::string *__str, uint64_t a2)
{
  v3 = 0;
  __p = 0;
  v41 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v42 = 0;
  v37 = 1;
  while (v3 < size)
  {
    v5 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __str->__r_.__value_.__l.__size_;
    }

    if (v7 > v3)
    {
      v8 = v6 + v7;
      v9 = v6 + v3;
LABEL_14:
      v10 = 0;
      while (*v9 != asc_26CA74A0F[v10])
      {
        if (++v10 == 3)
        {
          if (++v9 != v8)
          {
            goto LABEL_14;
          }

          goto LABEL_21;
        }
      }

      if (v9 != v8)
      {
        v11 = v9 - v6;
        if (v9 - v6 != -1)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_21:
    v11 = size;
LABEL_22:
    std::string::basic_string(&v39, __str, v3, v11 - v3, &v38);
    EQKitLength::EQKitLength(&v38, &v39, 0);
    v12 = v38;
    if (v38)
    {
      v13 = v41;
      if (v41 >= v42)
      {
        v15 = (v41 - __p) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v17 = v42 - __p;
        if ((v42 - __p) >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLength>>(&__p, v18);
        }

        v19 = (16 * v15);
        *v19 = v38;
        v14 = 16 * v15 + 16;
        v20 = (16 * v15 - (v41 - __p));
        memcpy(v19 - (v41 - __p), __p, v41 - __p);
        v21 = __p;
        __p = v20;
        v41 = v14;
        v42 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v41 = v38;
        v14 = (v13 + 16);
      }

      v41 = v14;
      if (v11 >= size)
      {
        goto LABEL_51;
      }

      v22 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      v23 = v22 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
      v24 = v22 >= 0 ? HIBYTE(__str->__r_.__value_.__r.__words[2]) : __str->__r_.__value_.__l.__size_;
      if (v24 <= v11)
      {
        goto LABEL_49;
      }

      while (1)
      {
        v25 = v23->__r_.__value_.__s.__data_[v11];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v24 == ++v11)
        {
          goto LABEL_49;
        }
      }

      if (v11 == -1)
      {
LABEL_49:
        v3 = size;
      }

      else
      {
LABEL_51:
        v3 = v11;
      }
    }

    else
    {
      v37 = 0;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
      if (!v12)
      {
        break;
      }
    }

    else if (!v12)
    {
      break;
    }
  }

  v29 = __p;
  if (v37)
  {
    v30 = v41;
    if (__p != v41)
    {
      v31 = *a2;
      *a2 = __p;
      *(a2 + 8) = v30;
      v32 = v42;
      v33 = *(a2 + 16);
      __p = v31;
      v42 = v33;
      *(a2 + 16) = v32;
      v34 = 1;
      v29 = v31;
      if (!v31)
      {
        return v34;
      }

      goto LABEL_61;
    }
  }

  v34 = 0;
  if (__p)
  {
LABEL_61:
    v41 = v29;
    operator delete(v29);
  }

  return v34;
}

void sub_26C6F90B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL4_mapv_block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "veryverythinmathspace");
  v1 = 1029934649;
  std::string::basic_string[abi:nn200100]<0>(v2, "verythinmathspace");
  v3 = 1038323257;
  std::string::basic_string[abi:nn200100]<0>(v4, "thinmathspace");
  v5 = 1042983595;
  std::string::basic_string[abi:nn200100]<0>(v6, "mediummathspace");
  v7 = 1046711865;
  std::string::basic_string[abi:nn200100]<0>(v8, "thickmathspace");
  v9 = 1049508068;
  std::string::basic_string[abi:nn200100]<0>(v10, "verythickmathspace");
  v11 = 1051372203;
  std::string::basic_string[abi:nn200100]<0>(v12, "veryverythickmathspace");
  v13 = 1053236338;
  std::string::basic_string[abi:nn200100]<0>(v14, "negativeveryverythinmathspace");
  v15 = -1117548999;
  std::string::basic_string[abi:nn200100]<0>(v16, "negativeverythinmathspace");
  v17 = -1109160391;
  std::string::basic_string[abi:nn200100]<0>(v18, "negativethinmathspace");
  v19 = -1104500053;
  std::string::basic_string[abi:nn200100]<0>(v20, "negativemediummathspace");
  v21 = -1100771783;
  std::string::basic_string[abi:nn200100]<0>(v22, "negativethickmathspace");
  v23 = -1097975580;
  std::string::basic_string[abi:nn200100]<0>(v24, "negativeverythickmathspace");
  v25 = -1096111445;
  std::string::basic_string[abi:nn200100]<0>(v26, "negativeveryverythickmathspace");
  v27 = -1094247310;
  operator new();
}

void sub_26C6F9370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x26D6A9A30](v67, 0x1020C4062D53EE8);
  v69 = &a67;
  v70 = -448;
  v71 = &a67;
  while (1)
  {
    v72 = *v71;
    v71 -= 32;
    if (v72 < 0)
    {
      operator delete(*(v69 - 23));
    }

    v69 = v71;
    v70 += 32;
    if (!v70)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string const,float>::map[abi:nn200100]<std::pair<std::string const,float> const*>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string const,float>,std::__map_value_compare<std::string const,std::__value_type<std::string const,float>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, v4, v6);
      v6 += 4;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string const,float>,std::__map_value_compare<std::string const,std::__value_type<std::string const,float>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string const,float>,std::__map_value_compare<std::string const,std::__value_type<std::string const,float>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,float>>>::__construct_node<std::pair<std::string const,float> const&>();
  }

  return result;
}

void sub_26C6F95CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned short>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D6A99A0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_26C6F97CC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D6A9930](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x26D6A9940](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_26C6F9C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLength>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

double EQKitPath::QuantizationConfig::QuantizationConfig(EQKitPath::QuantizationConfig *this)
{
  *this = 4;
  result = 0.25;
  *(this + 8) = xmmword_26CA637A0;
  *(this + 3) = 0x3FD0000000000000;
  return result;
}

{
  *this = 4;
  result = 0.25;
  *(this + 8) = xmmword_26CA637A0;
  *(this + 3) = 0x3FD0000000000000;
  return result;
}

EQKitPath::QuantizationConfig *EQKitPath::QuantizationConfig::QuantizationConfig(EQKitPath::QuantizationConfig *this, NSDictionary *a2)
{
  *this = 4;
  *(this + 8) = xmmword_26CA637A0;
  *(this + 3) = 0x3FD0000000000000;
  v4 = objc_opt_class();
  v5 = EQKitUtilDynamicCast(v4, [(NSDictionary *)a2 objectForKey:@"bucketsPerUnit"]);
  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *this = v7;
    *(this + 1) = 1.0 / v7;
  }

  v8 = objc_opt_class();
  v9 = EQKitUtilDynamicCast(v8, [(NSDictionary *)a2 objectForKey:@"thresholdCurveBoundsMinMax"]);
  if (v9)
  {
    [v9 floatValue];
    *(this + 2) = v10;
  }

  v11 = objc_opt_class();
  v12 = EQKitUtilDynamicCast(v11, [(NSDictionary *)a2 objectForKey:@"thresholdCurveControlPointDistance"]);
  if (v12)
  {
    [v12 floatValue];
    *(this + 3) = v13;
  }

  return this;
}

double EQKitPath::QuantizationConfig::setBucketsPerUnit(EQKitPath::QuantizationConfig *this, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  *this = v2;
  result = 1.0 / v2;
  *(this + 1) = result;
  return result;
}

double EQKitPath::Stem::Stem(EQKitPath::Stem *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

uint64_t EQKitPath::Stem::Stem(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  *(a1 + 56) = a2;
  if (a4)
  {
    v6 = *a4;
    *(a1 + 24) = a4[1];
    *(a1 + 8) = v6;
  }

  else
  {
    bzero((a1 + 8), 0x20uLL);
    a2 = *(a1 + 56);
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a3 + 8);
  v10 = (*(a3 + 16) - v9) >> 4;
  if (v10 <= v7)
  {
    v11 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = (v9 + 16 * v7);
  }

  v12 = *v11;
  v13 = v11[1];
  v14 = (v9 + 16 * v8);
  if (v10 <= v8)
  {
    v14 = MEMORY[0x277CBF348];
  }

  v15 = *v14;
  v16 = v14[1];
  v17 = *v14 - v12;
  v18 = v16 - v13;
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (v10 <= v19)
  {
    v21 = MEMORY[0x277CBF348];
  }

  else
  {
    v21 = (v9 + 16 * v19);
  }

  v22 = *v21;
  v23 = v21[1];
  v24 = (v9 + 16 * v20);
  if (v10 <= v20)
  {
    v24 = MEMORY[0x277CBF348];
  }

  v25 = v24[1];
  v26 = *v24 - v22;
  v27 = v25 - v23;
  if ((a2 | 2) == 3)
  {
    v28 = fabs(v18);
    v29 = fabs(v27);
    if (v28 >= v29)
    {
      v28 = v29;
    }

    v30 = vabdd_f64(*v24, v12);
    v31 = vabdd_f64(v22, v15);
    if (v30 <= v31)
    {
      v30 = v31;
    }

    *(a1 + 40) = v28;
    *(a1 + 48) = v30;
    if (v18 != 0.0 && v27 != 0.0)
    {
      v32 = v17 / v18;
      v33 = v26 / v27;
      goto LABEL_29;
    }
  }

  else
  {
    v34 = fabs(v17);
    v35 = fabs(v26);
    if (v34 >= v35)
    {
      v34 = v35;
    }

    v36 = vabdd_f64(v25, v13);
    v37 = vabdd_f64(v23, v16);
    if (v36 <= v37)
    {
      v36 = v37;
    }

    *(a1 + 40) = v34;
    *(a1 + 48) = v36;
    if (v17 != 0.0 && v26 != 0.0)
    {
      v32 = v18 / v17;
      v33 = v27 / v26;
LABEL_29:
      if (vabdd_f64(v32, v33) < 0.00100000005)
      {
        *a1 = 1;
      }
    }
  }

  return a1;
}

double EQKitPath::vector(EQKitPath *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  v4 = (*(this + 2) - v3) >> 4;
  v5 = (v3 + 16 * a2);
  if (v4 <= a2)
  {
    v5 = MEMORY[0x277CBF348];
  }

  v6 = (v3 + 16 * a3);
  if (v4 <= a3)
  {
    v7 = MEMORY[0x277CBF348];
  }

  else
  {
    v7 = v6;
  }

  *&result = *&vsubq_f64(*v7, *v5);
  return result;
}

__n128 EQKitPath::Stem::Stem(EQKitPath::Stem *this, const EQKitPath::Stem *a2)
{
  *this = *a2;
  *(this + 40) = *(a2 + 40);
  *(this + 14) = *(a2 + 14);
  result = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = result;
  return result;
}

{
  *this = *a2;
  *(this + 40) = *(a2 + 40);
  *(this + 14) = *(a2 + 14);
  result = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = result;
  return result;
}

__n128 EQKitPath::Stem::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 56) = *(a2 + 56);
  }

  return result;
}

uint64_t EQKitPath::Stem::adjustStemPoints(uint64_t result, uint64_t a2, void *a3, double a4)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  v6 = (*a3 + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  v9 = (*a3 + 16 * *(result + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(a2 + 8);
  v13 = (*(a2 + 16) - v12) >> 4;
  if (v13 <= v5)
  {
    v14 = MEMORY[0x277CBF348];
  }

  else
  {
    v14 = (v12 + 16 * v5);
  }

  if (v13 <= v4)
  {
    v15 = MEMORY[0x277CBF348];
  }

  else
  {
    v15 = (v12 + 16 * v4);
  }

  v16 = *v15 - *v14;
  v17 = v15[1] - v14[1];
  v18 = *(result + 56);
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v7 = v7 - a4;
        v10 = v10 - a4;
LABEL_14:
        v19 = v16 * a4 / v17;
        v8 = v8 + v19;
        v11 = v11 + v19;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v8 = v8 - a4;
    v11 = v11 - a4;
LABEL_17:
    v20 = v17 * a4 / v16;
    v7 = v7 + v20;
    v10 = v10 + v20;
    goto LABEL_18;
  }

  if (v18 == 2)
  {
    v8 = v8 + a4;
    v11 = v11 + a4;
    goto LABEL_17;
  }

  if (v18 == 3)
  {
    v7 = v7 + a4;
    v10 = v10 + a4;
    goto LABEL_14;
  }

LABEL_18:
  *v6 = v8;
  v6[1] = v7;
  *v9 = v11;
  v9[1] = v10;
  return result;
}

uint64_t EQKitPath::Subpath::nextElementSkipClose(EQKitPath::Subpath *this, uint64_t a2)
{
  v2 = *this;
  v3 = *(this + 1) + *this;
  if (a2 + 1 < v3)
  {
    v4 = a2 + 1;
  }

  else
  {
    v4 = *this;
  }

  if (v4 + 1 < v3)
  {
    v2 = v4 + 1;
  }

  if ((*(this + 16) & (v4 == v3 - 1)) != 0)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t EQKitPath::Subpath::prevElementSkipClose(EQKitPath::Subpath *this, unint64_t a2)
{
  v2 = *this;
  if (*this >= a2)
  {
    a2 = *(this + 1) + v2;
  }

  v3 = a2 - 1;
  if (*(this + 16) == 1)
  {
    v4 = *(this + 1) + v2;
    if (v2 >= v3)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 - 1;
    }

    v6 = v5 - 1;
    if (a2 == v4)
    {
      return v6;
    }
  }

  return v3;
}

void EQKitPath::extractorFunction(EQKitPath *this, void *a2, const CGPathElement *a3)
{
  if (this)
  {
    if (a2)
    {
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *a2;
        v7 = 2;
        v8 = 3;
        if (*a2 != 3)
        {
          v8 = 0;
        }

        v9 = v6 == 2 || *a2 == 3;
        if (v6 != 2)
        {
          v7 = v8;
        }

        v10 = v6 < 2 || v9;
        if (v6 >= 2)
        {
          v11 = v7;
        }

        else
        {
          v11 = 1;
        }

        LODWORD(v25) = *a2;
        *(&v25 + 1) = (*(v5 + 16) - *(v5 + 8)) >> 4;
        if (a2[1] && v10)
        {
          v12 = 0;
          if (v11 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v11;
          }

          v14 = 16 * v13;
          do
          {
            std::vector<CGPoint>::push_back[abi:ne200100](v5 + 8, (a2[1] + v12));
            v12 += 16;
          }

          while (v14 != v12);
        }

        v15 = *(v5 + 32);
        v16 = *(v5 + 40);
        v24 = (v16 - v15) >> 4;
        if (*a2 == 4 && v16 != v15 && ((v16 - v15) >> 4) > *(*(v5 + 64) - 8) && *(v16 - 16) == 1)
        {
          v18 = vmovn_s64(vceqq_f64(*(this + 24), *(*(v5 + 8) + 16 * *(v16 - 8))));
          if (v18.i32[0] & v18.i32[1])
          {
            *(v5 + 16) -= 16;
            v19 = v16 - 16;
            *(v5 + 40) = v19;
            v24 = (v19 - v15) >> 4;
          }
        }

        std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](v5 + 32, &v25);
        v20 = a2[1];
        v21 = v20 != 0;
        v22 = (v20 + 16 * v11 - 16);
        if ((v10 & v21) == 0)
        {
          v22 = MEMORY[0x277CBF348];
        }

        v23 = *v22;
        if (*a2)
        {
          if (*a2 == 4)
          {
            *(this + 16) = 0;
LABEL_39:
            *this += v11;
            return;
          }

          if (*(this + 16))
          {
            goto LABEL_39;
          }
        }

        std::vector<unsigned long>::push_back[abi:ne200100]((v5 + 56), &v24);
        *(this + 16) = 1;
        *(this + 24) = v23;
        goto LABEL_39;
      }
    }
  }
}

void sub_26C6FA3D4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26C6FA340);
}

void sub_26C6FA3E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26C6FA2ACLL);
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitPath::PathElement>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void EQKitPath::EQKitPath(EQKitPath *this, CGPathRef path)
{
  *(this + 8) = 0u;
  *(this + 120) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 65) = 0u;
  if (path)
  {
    MutableCopy = CGPathCreateMutableCopy(path);
  }

  else
  {
    MutableCopy = 0;
  }

  *this = MutableCopy;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(this + 8) = v5;
  *(this + 9) = v5;
}

void sub_26C6FA6E8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  EQKitPath::EQKitPath(v2 + 3, v2, v1);
  _Unwind_Resume(a1);
}

float64x2_t EQKitPath::resetCache(float64x2_t *this)
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  result = vnegq_f64(v1);
  this[8] = result;
  this[9] = result;
  return result;
}

void EQKitPath::EQKitPath(EQKitPath *this, const __CTFont *a2, int a3)
{
  *(this + 120) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  if (a2)
  {
    *glyphs = -1;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, 1.0, -1.0);
    if ((a3 - 0x10000) >> 20)
    {
      v7 = 1;
      LOWORD(v6) = a3;
    }

    else
    {
      v6 = ((a3 - 0x10000) >> 10) | 0xFFFFD800;
      characters[1] = a3 & 0x3FF | 0xDC00;
      v7 = 2;
    }

    characters[0] = v6;
    if (CTFontGetGlyphsForCharacters(a2, characters, glyphs, v7))
    {
      *this = CTFontCreatePathForGlyph(a2, glyphs[0], &v14);
    }

    else
    {
      v8 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], characters, v7);
      v9 = v8;
      if (v8)
      {
        v17.length = CFStringGetLength(v8);
        v17.location = 0;
        v10 = CTFontCreateForString(a2, v9, v17);
        v11 = v10;
        if (v10)
        {
          CTFontGetGlyphsForCharacters(v10, characters, glyphs, v7);
          *this = CTFontCreatePathForGlyph(v11, glyphs[0], &v14);
          CFRelease(v11);
        }

        CFRelease(v9);
      }
    }
  }

  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *(this + 8) = v13;
  *(this + 9) = v13;
}

void sub_26C6FA88C(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void EQKitPath::EQKitPath(EQKitPath *this, const EQKitPath *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(this + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 4);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<EQKitPath::PathElement>::__init_with_size[abi:ne200100]<EQKitPath::PathElement*,EQKitPath::PathElement*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(this + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 88) = v4;
  *(this + 120) = *(a2 + 120);
  v5 = *(a2 + 9);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = v5;
  MutableCopy = *a2;
  if (*a2)
  {
    MutableCopy = CGPathCreateMutableCopy(MutableCopy);
  }

  *this = MutableCopy;
}

void sub_26C6FA9A8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[8] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[5] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void EQKitPath::~EQKitPath(CGPathRef *this)
{
  CGPathRelease(*this);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  v3 = this[4];
  if (v3)
  {
    this[5] = v3;
    operator delete(v3);
  }

  v4 = this[1];
  if (v4)
  {
    this[2] = v4;
    operator delete(v4);
  }
}

uint64_t EQKitPath::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    MutableCopy = *a2;
    if (*a2)
    {
      MutableCopy = CGPathCreateMutableCopy(MutableCopy);
    }

    *a1 = MutableCopy;
    std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
    std::vector<EQKitPath::PathElement>::__assign_with_size[abi:ne200100]<EQKitPath::PathElement*,EQKitPath::PathElement*>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    *(a1 + 80) = *(a2 + 80);
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
    *(a1 + 120) = *(a2 + 120);
    v7 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v7;
  }

  return a1;
}

const __CTFont *EQKitPath::newPathFromCharacterWithFont(EQKitPath *this, CTFontRef font, const __CTFont *a3)
{
  v3 = font;
  characters = this;
  glyphs = -1;
  if (font)
  {
    if (CTFontGetGlyphsForCharacters(font, &characters, &glyphs, 1))
    {
      memset(&v5, 0, sizeof(v5));
      CGAffineTransformMakeScale(&v5, 1.0, -1.0);
      if (CTFontCreatePathForGlyph(v3, glyphs, &v5))
      {
        operator new();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t EQKitPath::newPathFromGlyphWithFont(EQKitPath *this, const __CTFont *a2, const __CTFont *a3)
{
  v4 = this;
  memset(&v6, 0, sizeof(v6));
  CGAffineTransformMakeScale(&v6, 1.0, -1.0);
  if (CTFontCreatePathForGlyph(a2, v4, &v6))
  {
    operator new();
  }

  return 0;
}

void EQKitPath::extractPath(EQKitPath *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
    info[0] = 0;
    info[1] = this;
    v2 = 0;
    CGPathApply(*this, info, EQKitPath::extractorFunction);
  }
}

CGFloat *EQKitPath::computePathBounds(CGFloat *this)
{
  v1 = this;
  *(this + 120) = 1;
  PathBoundingBox = CGPathGetPathBoundingBox(*this);
  v1[11] = PathBoundingBox.origin.x;
  v1[12] = PathBoundingBox.origin.y;
  v1 += 11;
  v1[2] = PathBoundingBox.size.width;
  v1[3] = PathBoundingBox.size.height;
  return v1;
}

BOOL EQKitPath::elementMinMax(EQKitPath *this, unint64_t a2, CGPoint *a3, CGPoint *a4)
{
  EQKitPath::extractPath(this);
  v8 = *MEMORY[0x277CBF348];
  v9 = *(this + 4);
  if (a2 >= (*(this + 5) - v9) >> 4 || ((v10 = (v9 + 16 * a2), v11 = *v10, v32 = *MEMORY[0x277CBF348], v11 > 3) ? (v12 = 0) : (v12 = qword_26CA63850[v11]), (EQKitPath::subpathContainingElement(this, a2, &v33), v33 >= a2) ? (v13 = v34 + v33) : (v13 = a2), (v14 = v13 - 1, v15 = v13 == v34 + v33, v33 >= v14) ? (v16 = v34 + v33) : (v16 = v14), (v17 = v16 - 1, (v35 & v15) == 0) ? (v18 = v14) : (v18 = v17), v18 != 0x7FFFFFFFFFFFFFFFLL && (v19 = EQKitPath::endPointIndexForElement(this, v18), v19 != 0x7FFFFFFFFFFFFFFFLL) ? (v8 = *(*(this + 1) + 16 * v19), v20 = 1) : (v20 = 0, v8 = v32), v21 = *(v10 + 1), v21 >= v21 + v12))
  {
    result = 0;
    v25 = v8;
  }

  else
  {
    v22 = (*(this + 1) + 16 * v21);
    v23 = v12;
    v24 = v20;
    v25 = v8;
    do
    {
      v26 = *v22;
      if (v24)
      {
        v8 = vbslq_s8(vcgtq_f64(v8, v26), v26, v8);
        v27 = vmovn_s64(vcgtq_f64(v26, v25));
        v28 = v27.i8[4];
        if (v27.i8[0])
        {
          v29 = v22->f64[0];
        }

        else
        {
          v29 = v25.f64[0];
        }

        v25.f64[0] = v29;
        v26.f64[0] = v29;
        if (v28)
        {
          v30 = -1;
        }

        else
        {
          v30 = 0;
        }

        v25 = vbslq_s8(vdupq_n_s64(v30), v26, v25);
      }

      else
      {
        v8 = *v22;
        v25 = *v22;
      }

      ++v24;
      ++v22;
      --v23;
    }

    while (v23);
    result = (v12 + v20) > 1;
  }

  *a3 = v8;
  *a4 = v25;
  return result;
}

void EQKitPath::subpathContainingElement(unint64_t **this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  EQKitPath::extractPath(this);
  *a3 = xmmword_26CA637B0;
  *(a3 + 16) = 0;
  v6 = this[4];
  v7 = (this[5] - v6) >> 4;
  if (v7 > a2)
  {
    v9 = this[7];
    v8 = this[8];
    if (v8 == v9)
    {
      v11 = this[8];
    }

    else
    {
      v10 = v8 - v9;
      v11 = this[7];
      do
      {
        v12 = v10 >> 1;
        v13 = &v11[v10 >> 1];
        v15 = *v13;
        v14 = v13 + 1;
        v10 += ~(v10 >> 1);
        if (v15 > a2)
        {
          v10 = v12;
        }

        else
        {
          v11 = v14;
        }
      }

      while (v10);
    }

    if (v9 != v11)
    {
      v16 = *(v11 - 1);
      if (v8 != v11)
      {
        v7 = *v11;
      }

      v17 = v6[2 * v7 - 2];
      *a3 = v16;
      *(a3 + 8) = v7 - v16;
      *(a3 + 16) = v17 == 4;
    }
  }
}

uint64_t EQKitPath::endPointIndexForElement(EQKitPath *this, unint64_t a2)
{
  EQKitPath::extractPath(this);
  v4 = *(this + 4);
  if (a2 >= (*(this + 5) - v4) >> 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = (v4 + 16 * a2);
  v6 = *v5;
  if (v6 > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_26CA63830[v6] + *(v5 + 1);
  }
}

void EQKitPath::quantizeElementEdge(EQKitPath *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  EQKitPath::extractPath(a1);
  v10 = *(a1 + 4);
  if (a2 < (*(a1 + 5) - v10) >> 4)
  {
    v11 = (v10 + 16 * a2);
    v12 = *v11;
    if (*v11 - 2 < 2)
    {
      EQKitPath::subpathContainingElement(a1, a2, &v30);
      if (v30 >= a2)
      {
        v20 = v31 + v30;
      }

      else
      {
        v20 = a2;
      }

      v21 = v20 - 1;
      v22 = v20 == v31 + v30;
      if (v30 >= v21)
      {
        v23 = v31 + v30;
      }

      else
      {
        v23 = v21;
      }

      v24 = v23 - 1;
      if ((v32 & v22) != 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      if (v25 == 0x7FFFFFFFFFFFFFFFLL || (v26 = EQKitPath::endPointIndexForElement(a1, v25), v26 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v27 = 0;
      }

      else
      {
        v14 = *(*(a1 + 1) + 16 * v26);
        *v33 = v14;
        v27 = 1;
      }

      v28 = *v11;
      if (v28 > 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = qword_26CA63850[v28];
        memcpy(&v33[2 * v27], (*(a1 + 1) + 16 * *(v11 + 1)), 16 * v29);
      }

      _quantizeCurve(v33, v29 + v27, a3, a4, a5, *&v14, v15, v16, v17, v18, v19);
    }

    else if (v12 == 4 || v12 == 1)
    {
      v33[0] = 0x7FFFFFFFFFFFFFFFLL;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      if (EQKitPath::isLineTo(a1, a2, v33, &v30, 0))
      {
        _quantizeLine(a3, a4, a5, *(*(a1 + 1) + 16 * v33[0]), *(*(a1 + 1) + 16 * v33[0] + 8), *(*(a1 + 1) + 16 * v30), *(*(a1 + 1) + 16 * v30 + 8));
      }
    }
  }
}

BOOL EQKitPath::isLineTo(unint64_t **this, unint64_t a2, unint64_t *a3, unint64_t *a4, const EQKitPath::Subpath *a5)
{
  if (a5)
  {
    v22 = *a5;
    v23 = *(a5 + 2);
  }

  else
  {
    EQKitPath::subpathContainingElement(this, a2, &v22);
  }

  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  *a4 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = v22;
  if (a2 < v22 || a2 - v22 >= *(&v22 + 1))
  {
    return 0;
  }

  if (a2 <= v22)
  {
    v12 = *(&v22 + 1) + v22;
  }

  else
  {
    v12 = a2;
  }

  v13 = v12 - 1;
  v14 = this[4];
  v15 = v14[2 * a2];
  if (a2 == v22 && ((v16 = v14[2 * v13], !v15) ? (v17 = v16 == 4) : (v17 = 0), v17))
  {
    v18 = *(&v22 + 1) + a2;
    if (v13 > a2)
    {
      v18 = v13;
    }

    v13 = v18 - 1;
  }

  else
  {
    if (a2 + 1 == *(&v22 + 1) + v22 && v15 == 4)
    {
      v19 = this;
      goto LABEL_26;
    }

    if (v15 != 1)
    {
      v20 = *a3;
      return *a4 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v19 = this;
  v9 = a2;
LABEL_26:
  *a4 = EQKitPath::endPointIndexForElement(v19, v9);
  v20 = EQKitPath::endPointIndexForElement(this, v13);
  *a3 = v20;
  return *a4 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t _quantizeLine(uint64_t result, uint64_t a2, uint64_t *a3, double a4, double a5, double a6, double a7)
{
  if ((result & 0xFFFFFFFD) != 0)
  {
    return result;
  }

  v7 = result & 0xFFFFFFFE;
  v8 = *a3;
  v9 = (a3[1] - *a3) >> 3;
  if (a5 == a7)
  {
    v10 = a5 * *(a2 + 8);
    v11 = (floorf(v10) - *a2);
    goto LABEL_5;
  }

  v14 = *(a2 + 8);
  v15 = a5 * v14;
  v16 = *a2;
  v11 = (floorf(v15) - v16);
  v17 = a7 * v14;
  v18 = floorf(v17);
  v19 = (v18 - v16);
  if (a4 == a6)
  {
    if (v11 <= v19)
    {
      v20 = (v18 - v16);
    }

    else
    {
      v20 = v11;
    }

    if (v11 >= v19)
    {
      v11 = (v18 - v16);
    }

    v21 = v11 & ~(v11 >> 63);
    v22 = v9 - 1;
    if (v20 < v22)
    {
      v22 = v20;
    }

    if (v21 <= v22)
    {
      if (a6 >= a4)
      {
        v23 = a4;
      }

      else
      {
        v23 = a6;
      }

      if (a4 < a6)
      {
        a4 = a6;
      }

      v24 = v21 - 1;
      v25 = (v8 + 8 * v21);
      do
      {
        v26 = *v25;
        if (v7 == 2)
        {
          if (v26 >= a4)
          {
            v27 = *v25;
          }

          else
          {
            v27 = a4;
          }
        }

        else if (v23 >= v26)
        {
          v27 = *v25;
        }

        else
        {
          v27 = v23;
        }

        *v25++ = v27;
        ++v24;
      }

      while (v24 < v22);
    }
  }

  else
  {
    v28 = v11 <= v19;
    if (v11 == v19)
    {
LABEL_5:
      if (v11 < 0 || v9 <= v11)
      {
        return result;
      }

      v12 = *(v8 + 8 * v11);
      if (v7 == 2)
      {
        if (a4 < a6)
        {
          a4 = a6;
        }

        v13 = v12 < a4;
      }

      else
      {
        if (a6 < a4)
        {
          a4 = a6;
        }

        v13 = a4 < v12;
      }

      if (!v13)
      {
        a4 = *(v8 + 8 * v11);
      }

LABEL_40:
      *(v8 + 8 * v11) = a4;
      return result;
    }

    if (v11 > v19)
    {
      v29 = a4;
    }

    else
    {
      v29 = a6;
    }

    if (v11 > v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = v11;
    }

    if (v11 > v19)
    {
      v31 = a5;
    }

    else
    {
      v11 = v19;
      v31 = a7;
    }

    if (v28)
    {
      a6 = a4;
      v32 = a5;
    }

    else
    {
      v32 = a7;
    }

    v33 = (v29 - a6) / (v31 - v32);
    v34 = v30 + 1;
    a4 = a6 + ((v30 + 1 + *a2) / v14 - v32) * v33;
    if ((v30 & 0x8000000000000000) == 0 && v30 < v9)
    {
      v35 = *(v8 + 8 * v30);
      if (a4 >= a6)
      {
        v36 = a6;
      }

      else
      {
        v36 = a4;
      }

      if (v36 >= v35)
      {
        v36 = *(v8 + 8 * v30);
      }

      if (a6 < a4)
      {
        a6 = a4;
      }

      if (v35 >= a6)
      {
        a6 = *(v8 + 8 * v30);
      }

      if (v7 != 2)
      {
        a6 = v36;
      }

      *(v8 + 8 * v30) = a6;
    }

    if (v34 < v11)
    {
      v37 = *(a2 + 16);
      do
      {
        v38 = a4;
        a4 = a4 + v33 * v37;
        if ((v34 & 0x8000000000000000) == 0 && v34 < v9)
        {
          v39 = *(v8 + 8 * v34);
          if (a4 >= v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = a4;
          }

          if (v40 >= v39)
          {
            v40 = *(v8 + 8 * v34);
          }

          if (v38 < a4)
          {
            v38 = a4;
          }

          if (v39 >= v38)
          {
            v38 = *(v8 + 8 * v34);
          }

          if (v7 != 2)
          {
            v38 = v40;
          }

          *(v8 + 8 * v34) = v38;
        }

        ++v34;
      }

      while (v11 != v34);
    }

    if ((v11 & 0x8000000000000000) == 0 && v11 < v9)
    {
      v41 = *(v8 + 8 * v11);
      if (v29 >= a4)
      {
        v42 = a4;
      }

      else
      {
        v42 = v29;
      }

      if (v42 >= v41)
      {
        v42 = *(v8 + 8 * v11);
      }

      if (a4 < v29)
      {
        a4 = v29;
      }

      if (v41 >= a4)
      {
        a4 = *(v8 + 8 * v11);
      }

      if (v7 != 2)
      {
        a4 = v42;
      }

      goto LABEL_40;
    }
  }

  return result;
}

uint64_t _quantizeCurve(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = a3 & 0xFFFFFFFD;
  v15 = *result;
  v16 = vdupq_laneq_s64(*result, 1);
  if (a2 < 2)
  {
    v20 = *result;
    v19 = *result;
    if (v14)
    {
      return result;
    }
  }

  else
  {
    v17 = a2 - 1;
    v18 = (result + 24);
    v19 = *result;
    v20 = *result;
    do
    {
      v21 = *(v18 - 1);
      if (v21 < v19)
      {
        v19 = *(v18 - 1);
      }

      if (v20 < v21)
      {
        v20 = *(v18 - 1);
      }

      v22.f64[1] = v16.f64[1];
      *&v22.f64[0] = *v18;
      v23.f64[0] = v16.f64[0];
      *&v23.f64[1] = *v18;
      a11 = vcgtq_f64(v23, v22);
      v16 = vbslq_s8(a11, vdupq_lane_s64(*v18, 0), v16);
      v18 += 2;
      --v17;
    }

    while (v17);
    if (v14)
    {
      return result;
    }
  }

  *a11.i32 = *a4;
  v24 = vcvtq_s64_f64(vcvtq_f64_f32(vsub_f32(vrndm_f32(vcvt_f32_f64(vmulq_n_f64(v16, *(a4 + 8)))), vdup_lane_s32(*a11.i8, 0))));
  if (v24.i64[0] == v24.i64[1])
  {
    if ((v24.i64[0] & 0x8000000000000000) == 0)
    {
      v25 = *a5;
      if (((a5[1] - *a5) >> 3) > v24.i64[0])
      {
        v26 = *(v25 + 8 * v24.i64[0]);
        if ((a3 & 0xFFFFFFFE) == 2)
        {
          if (v19 >= v20)
          {
            v20 = v19;
          }

          _NF = v26 < v20;
        }

        else
        {
          if (v20 >= v19)
          {
            v20 = v19;
          }

          _NF = v20 < v26;
        }

        if (_NF)
        {
          v26 = v20;
        }

        *(v25 + 8 * v24.i64[0]) = v26;
      }
    }
  }

  else if (v20 - v19 <= *(a4 + 24))
  {
    v50 = result + 16 * a2;
    v51 = *(v50 - 16);
    v52 = *(v50 - 8);
    v30 = *(result + 8);
LABEL_33:

    return _quantizeLine(a3, a4, a5, v15.f64[0], v30, v51, v52);
  }

  else
  {
    v28 = result + 16 * a2;
    if (a2 <= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = a2;
    }

    v30 = *(result + 8);
    v31 = (result + 24);
    v32 = v29 - 2;
    v33 = 1;
    do
    {
      if (!v32)
      {
        goto LABEL_32;
      }

      ++v33;
      v34 = *(v28 - 16) - v15.f64[0];
      v35 = *(v28 - 8) - v15.f64[1];
      v36 = fabs(v34 * (v15.f64[1] - *v31) - (v15.f64[0] - *(v31 - 1)) * v35);
      *&v34 = v35 * v35 + v34 * v34;
      v31 += 2;
      --v32;
    }

    while (v36 / sqrtf(*&v34) <= *(a4 + 32));
    if (v33 >= a2)
    {
LABEL_32:
      v51 = *(v28 - 16);
      v52 = *(v28 - 8);
      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v53 = (result + 16);
      v69 = vld2q_f64(v53);
      __asm { FMOV            V4.2D, #0.5 }

      v55 = vmulq_f64(vaddq_f64(vextq_s8(vdupq_lane_s64(*&v15.f64[0], 0), v69.val[0], 8uLL), v69.val[0]), _Q4);
      v56 = vmulq_f64(vaddq_f64(vextq_s8(v15, v69.val[1], 8uLL), v69.val[1]), _Q4);
      v63 = *result;
      v64 = vzip1q_s64(v55, v56);
      v65 = vmulq_f64(vpaddq_f64(v55, v56), _Q4);
      v59 = v65;
      v60 = vzip2q_s64(v55, v56);
      v61 = *(result + 32);
      _quantizeCurve(&v63, 3, a3, a4, a5);
      v49 = 3;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      v37 = 0;
      __asm { FMOV            V1.2D, #0.5 }

      do
      {
        v42 = *(result + v37 * 16 + 16);
        v57[v37++] = vmulq_f64(vaddq_f64(v15, v42), _Q1);
        v15 = v42;
      }

      while (v37 != 3);
      v43 = v57;
      v44 = v58;
      v45 = vld1q_dup_f64(v43++);
      v70 = vld2q_f64(v44);
      v46 = vld1q_dup_f64(v43);
      v47 = vmulq_f64(vaddq_f64(vextq_s8(v45, v70.val[0], 8uLL), v70.val[0]), _Q1);
      v70.val[0] = vmulq_f64(vaddq_f64(vextq_s8(v46, v70.val[1], 8uLL), v70.val[1]), _Q1);
      v63 = *result;
      v64 = v57[0];
      v65 = vzip1q_s64(v47, v70.val[0]);
      v66 = vmulq_f64(vpaddq_f64(v47, v70.val[0]), _Q1);
      v59 = v66;
      v60 = vzip2q_s64(v47, v70.val[0]);
      v48 = *(result + 48);
      v61 = v58[1];
      v62 = v48;
      _quantizeCurve(&v63, 4, a3, a4, a5);
      v49 = 4;
    }

    return _quantizeCurve(&v59, v49, a3, a4, a5);
  }

  return result;
}

void EQKitPath::describeElement(EQKitPath *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  EQKitPath::extractPath(this);
  if (a2 < (*(this + 5) - *(this + 4)) >> 4)
  {
    EQKitPath::subpathContainingElement(this, a2, &v24);
    if (v24 >= a2)
    {
      v6 = v25 + v24;
    }

    else
    {
      v6 = a2;
    }

    v7 = v6 - 1;
    v8 = v6 == v25 + v24;
    if (v24 >= v7)
    {
      v9 = v25 + v24;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    if ((v26 & v8) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11 != 0x7FFFFFFFFFFFFFFFLL && EQKitPath::endPointForElement(this, v11, v27, 0);
    v13 = (*(this + 4) + 16 * a2);
    v14 = *v13;
    if (v14 <= 3)
    {
      v15 = qword_26CA63850[v14];
      memcpy(&v27[v12], (*(this + 1) + 16 * *(v13 + 1)), 16 * v15);
      v12 += v15;
    }

    if (v14 > 4)
    {
      v16 = "unknown";
    }

    else
    {
      v16 = off_279D46500[v14];
    }

    MEMORY[0x26D6A9880](a3, v16);
    std::string::append(a3, " ");
    if (v12)
    {
      v23 = v27 + 8;
      do
      {
        _appendFormat(a3, "(%f, %f), ", v17, v18, v19, v20, v21, v22, *(v23 - 1));
        v23 += 16;
        --v12;
      }

      while (v12);
    }
  }
}

void sub_26C6FBB80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL EQKitPath::endPointForElement(EQKitPath *a1, unint64_t a2, _OWORD *a3, void *a4)
{
  EQKitPath::extractPath(a1);
  v8 = EQKitPath::endPointIndexForElement(a1, a2);
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = (a1 + 8);
  v12 = (v10 - v9) >> 4;
  if (v8 < v12)
  {
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = v11;
    }

    *a3 = *(*v13 + 16 * v8);
  }

  return v8 < v12;
}

void _appendFormat(std::string *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  __s[0] = 0;
  __s[1] = &a9;
  vasprintf(__s, a2, &a9);
  std::string::append(a1, __s[0]);
  free(__s[0]);
}

void EQKitPath::describe(EQKitPath *this@<X0>, std::string *a2@<X8>)
{
  EQKitPath::extractPath(this);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 5) != *(this + 4))
  {
    v10 = 0;
    do
    {
      _appendFormat(a2, "[%2lu] ", v4, v5, v6, v7, v8, v9, v10);
      EQKitPath::describeElement(this, v10, &__p);
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

      std::string::append(a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a2, "\n");
      ++v10;
    }

    while (v10 < (*(this + 5) - *(this + 4)) >> 4);
  }
}

void sub_26C6FBD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t EQKitPath::findJoinForEdge(void *a1, unsigned int a2, _OWORD *a3, void *a4)
{
  EQKitPath::extractPath(a1);
  if (a2 <= 3)
  {
    v8 = *(a1 + qword_26CA63870[a2]);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_40;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = a1[5] - a1[4];
  if (!v10)
  {
    return v9;
  }

  v11 = 0;
  v12 = MEMORY[0x277CBF348];
  v13 = v10 >> 4;
  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  if (v13 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = *v12;
    if (!EQKitPath::endPointForElement(a1, v11, &v23, 0))
    {
      goto LABEL_12;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
LABEL_11:
      v8 = v11;
      v14 = v18;
      v15 = v17;
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*&v23 > v15)
      {
        goto LABEL_11;
      }

      if (*&v23 == v15 && *(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }
    }

    else if (a2 == 1)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }

      if (*(&v23 + 1) == v14 && *&v23 < v15)
      {
        goto LABEL_11;
      }
    }

    else if (a2)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*(&v23 + 1) > v14 || *(&v23 + 1) == v14 && *&v23 < v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*&v23 < v15 || *&v23 == v15 && *(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v11;
  }

  while (v16 != v11);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2 <= 3)
    {
      *(a1 + qword_26CA63870[a2]) = v8;
    }

LABEL_40:
    if (a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = a1 + 1;
    }

    EQKitPath::endPointForElement(a1, v8, a3, v21);
    return v8;
  }

  return v9;
}

void EQKitPath::appendToCGPath(void *a1, CGPath *a2, const CGAffineTransform *a3, void *a4)
{
  EQKitPath::extractPath(a1);
  if (!a4)
  {
    a4 = a1 + 1;
  }

  if (a4[1] - *a4 == a1[2] - a1[1])
  {
    for (i = a1[4]; i != a1[5]; i += 16)
    {
      v9 = (*a4 + 16 * *(i + 8));
      v10 = *i;
      if (*i <= 1)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            CGPathAddLineToPoint(a2, a3, *v9, v9[1]);
          }
        }

        else
        {
          CGPathMoveToPoint(a2, a3, *v9, v9[1]);
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            CGPathAddQuadCurveToPoint(a2, a3, *v9, v9[1], v9[2], v9[3]);
            break;
          case 3:
            CGPathAddCurveToPoint(a2, a3, *v9, v9[1], v9[2], v9[3], v9[4], v9[5]);
            break;
          case 4:
            CGPathCloseSubpath(a2);
            break;
        }
      }
    }
  }
}

uint64_t EQKitPath::oppositeEdge(EQKitPath *this, CGRectEdge a2)
{
  if (this > 2)
  {
    return 1;
  }

  else
  {
    return dword_26CA63890[this];
  }
}

uint64_t EQKitPath::findCurveMirrorParallelWithAxis(EQKitPath *a1, int a2, double *a3)
{
  *a3 = 0.0;
  EQKitPath::extractPath(a1);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 == v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277CBF348];
  while (1)
  {
    if (*(v6 + v8) != 3)
    {
      goto LABEL_36;
    }

    v11 = v6 + v8;
    v12 = *(v6 + v8 + 8);
    v13 = v12 + 1;
    v14 = v12 + 2;
    v15 = *(a1 + 1);
    v16 = (*(a1 + 2) - v15) >> 4;
    v17 = (v16 <= v13 ? v10 : v15 + 16 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v16 <= v14 ? v10 : v15 + 16 * v14);
    v21 = v20[1];
    v22 = *v20 - v18;
    v23 = v21 - v19;
    v24 = a2 == 1 ? v21 - v19 : *v20 - v18;
    if (v24 != 0.0)
    {
      goto LABEL_36;
    }

    EQKitPath::subpathContainingElement(a1, v9, v40);
    v25 = v40[0];
    if (v9 + 1 < v40[1] + v40[0])
    {
      v25 = v9 + 1;
    }

    v6 = *(a1 + 4);
    v26 = v6 + 16 * v25;
    if (*v26 == 3)
    {
      v27 = *(v11 + 8) + 2;
      v28 = *(v26 + 8);
      v29 = *(a1 + 1);
      v30 = (*(a1 + 2) - v29) >> 4;
      v31 = (v30 <= v27 ? v10 : v29 + 16 * v27);
      v32 = v31[1];
      v33 = (v30 <= v28 ? v10 : v29 + 16 * v28);
      v34 = v33[1];
      v35 = *v33 - *v31;
      v36 = v34 - v32;
      v37 = a2 == 1 ? v34 - v32 : *v33 - *v31;
      if (v37 == 0.0)
      {
        if (v22 > 0.0 && v35 > 0.0)
        {
          goto LABEL_40;
        }

        if (v22 < 0.0 && v35 < 0.0)
        {
          v39 = -1.0;
          if (v22 <= 0.0)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if (v23 > 0.0 && v36 > 0.0)
        {
          goto LABEL_40;
        }

        if (v23 < 0.0 && v36 < 0.0)
        {
          break;
        }
      }
    }

    v7 = *(a1 + 5);
LABEL_36:
    ++v9;
    v8 += 16;
    if (v9 >= (v7 - v6) >> 4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v39 = -1.0;
  if (v23 > 0.0)
  {
LABEL_40:
    v39 = 1.0;
  }

LABEL_41:
  *a3 = v39;
  return v9;
}

uint64_t EQKitPath::addLineToAfterElement(EQKitPath *this, unint64_t a2)
{
  v4 = EQKitPath::endPointIndexForElement(this, a2);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = this + 8;
    v6 = *(this + 1);
    v10 = *(this + 4);
    v9 = (this + 32);
    v8 = v10;
    v13 = *(v6 + 16 * v4);
    v12.n128_u64[1] = (*(v9 - 2) - v6) >> 4;
    v12.n128_u64[0] = 1;
    if (a2 + 1 >= (v9[1] - v10) >> 4)
    {
      std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](v9, &v12);
    }

    else
    {
      std::vector<EQKitPath::PathElement>::insert(v9, (v8 + 16 * (a2 + 1)), &v12);
    }

    std::vector<CGPoint>::push_back[abi:ne200100](v7, &v13);
    return v12.n128_i64[1];
  }

  return v5;
}

__n128 *std::vector<EQKitPath::PathElement>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitPath::PathElement>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<EQKitPath::PathElement>::emplace_back<EQKitPath::PathElement const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_26C6FC4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void EQKitPath::appendSubpathRect(EQKitPath *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  MinX = CGRectGetMinX(a2);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  *&v21 = MinX;
  *(&v21 + 1) = CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  *&v20 = MaxX;
  *(&v20 + 1) = CGRectGetMinY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v9 = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  *&v19 = v9;
  *(&v19 + 1) = CGRectGetMaxY(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v10 = CGRectGetMinX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  *&v18 = v10;
  *(&v18 + 1) = CGRectGetMaxY(v28);
  v11 = *(this + 1);
  v12 = *(this + 2);
  this = (this + 8);
  *&v17 = 0;
  *(&v17 + 1) = (v12 - v11) >> 4;
  *(&v16 + 1) = *(&v17 + 1) + 1;
  *&v16 = 1;
  *(&v15 + 1) = *(&v17 + 1) + 2;
  *&v15 = 1;
  *(&v14 + 1) = *(&v17 + 1) + 3;
  *&v14 = 1;
  v13 = xmmword_26CA637C0;
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v18);
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v19);
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v20);
  std::vector<CGPoint>::push_back[abi:ne200100](this, &v21);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v17);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v16);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v15);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v14);
  std::vector<EQKitPath::PathElement>::push_back[abi:ne200100](this + 24, &v13);
}

uint64_t EQKitPath::findStemForEdge@<X0>(unint64_t **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v49[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  result = EQKitPath::findJoinForEdge(this, a2, &v46, 0);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = result;
    EQKitPath::subpathContainingElement(this, result, &v43);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    result = EQKitPath::isLineTo(this, v7, &v42, &v41, &v43);
    if (result)
    {
      v8 = v41;
      v9 = v42;
      v10 = this[1];
      v11 = &v10[2 * v42];
      v12 = &v10[2 * v41];
      if ((a2 & 0xFFFFFFFD) == 1)
      {
        ++v11;
      }

      if (vabdd_f64(*v11, *&v12[(a2 & 0xFFFFFFFD) == 1]) >= 0.00100000005)
      {
        *&v47 = v42;
        *(&v47 + 1) = v41;
        v25 = v43;
        v26 = v44 + v43;
        if (v7 + 1 < v44 + v43)
        {
          v27 = v7 + 1;
        }

        else
        {
          v27 = v43;
        }

        if (v27 + 1 < v26)
        {
          v25 = v27 + 1;
        }

        if (((v27 == v26 - 1) & v45) != 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = v27;
        }

        result = EQKitPath::isLineTo(this, v28, &v40, &v48, &v43);
        if (result && v40 == *(&v47 + 1))
        {
          v29 = v43;
          v30 = v44 + v43;
          if (v28 + 1 < v44 + v43)
          {
            v31 = v28 + 1;
          }

          else
          {
            v31 = v43;
          }

          if (v31 + 1 < v30)
          {
            v29 = v31 + 1;
          }

          v32 = ((v31 == v30 - 1) & v45) != 0 ? v29 : v31;
          result = EQKitPath::isLineTo(this, v32, &v40, v49, &v43);
          if (result)
          {
            if (v40 == v48)
            {
              v33 = this[1];
              v34 = &v33[2 * *(&v47 + 1)];
              if ((a2 & 0xFFFFFFFD) == 1)
              {
                ++v34;
              }

              if (vabdd_f64(*v34, *&v33[2 * v40 + ((a2 & 0xFFFFFFFD) == 1)]) < 0.00100000005)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }

      else
      {
        *(&v47 + 1) = v42;
        v48 = v41;
        if (v43 >= v7)
        {
          v13 = v44 + v43;
        }

        else
        {
          v13 = v7;
        }

        v14 = v13 - 1;
        v15 = v13 == v44 + v43;
        if (v43 >= v14)
        {
          v16 = v44 + v43;
        }

        else
        {
          v16 = v14;
        }

        v17 = v16 - 1;
        if ((v45 & v15) != 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = v14;
        }

        result = EQKitPath::isLineTo(this, v18, &v47, &v40, &v43);
        if (result)
        {
          v19 = v40 == v9;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v20 = v43;
          v21 = v44 + v43;
          if (v7 + 1 < v44 + v43)
          {
            v22 = v7 + 1;
          }

          else
          {
            v22 = v43;
          }

          if (v22 + 1 < v21)
          {
            v20 = v22 + 1;
          }

          v23 = ((v22 == v21 - 1) & v45) != 0 ? v20 : v22;
          result = EQKitPath::isLineTo(this, v23, &v40, v49, &v43);
          if (result)
          {
            if (v40 == v8)
            {
LABEL_30:
              result = EQKitPath::Stem::Stem(v35, a2, this, &v47);
              if (v35 != a3)
              {
                *a3 = v35[0];
                v24 = v37;
                *(a3 + 8) = v36;
                *(a3 + 24) = v24;
                *(a3 + 40) = v38;
                *(a3 + 56) = v39;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void EQKitPath::appendToCGPathWithModifiedStem(EQKitPath *this, CGPath *a2, float64x2_t *a3, unsigned int a4, const EQKitPath::Stem *a5, double a6)
{
  if (a2)
  {
    if (!a5 || a6 == 0.0)
    {
      *__p = *MEMORY[0x277CBF348];
      if (EQKitPath::findJoinForEdge(this, a4, __p, 0) != 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeTranslation(&v14, a3->f64[0] - *__p, a3->f64[1] - *&__p[1]);
        EQKitPath::appendToCGPath(this, a2, &v14, 0);
        v13 = a4 > 2 ? 1 : dword_26CA63890[a4];
        if (EQKitPath::findJoinForEdge(this, v13, __p, 0))
        {
          *a3 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *&__p[1]), *&v14.a, *__p));
        }
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(__p, *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 4);
      EQKitPath::Stem::adjustStemPoints(a5, this, __p, a6);
      v15 = *MEMORY[0x277CBF348];
      if (EQKitPath::findJoinForEdge(this, a4, &v15, __p) != 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeTranslation(&v14, a3->f64[0] - *&v15, a3->f64[1] - *(&v15 + 1));
        EQKitPath::appendToCGPath(this, a2, &v14, __p);
        if (a4 > 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = dword_26CA63890[a4];
        }

        if (EQKitPath::findJoinForEdge(this, v12, &v15, __p))
        {
          *a3 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *(&v15 + 1)), *&v14.a, *&v15));
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_26C6FCBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitPath::applyModifiedStemToPoints(uint64_t result, uint64_t a2, void *a3, double a4)
{
  if (a2)
  {
    if (a4 != 0.0)
    {
      return EQKitPath::Stem::adjustStemPoints(a2, result, a3, a4);
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitPath::PathElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C6FCE44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<EQKitPath::PathElement>::__init_with_size[abi:ne200100]<EQKitPath::PathElement*,EQKitPath::PathElement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<EQKitPath::PathElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C6FCEFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<EQKitPath::PathElement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitPath::PathElement>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C6FCFB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void *std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGPoint>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void *std::vector<EQKitPath::PathElement>::__assign_with_size[abi:ne200100]<EQKitPath::PathElement*,EQKitPath::PathElement*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<EQKitPath::PathElement>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
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

__n128 std::__split_buffer<EQKitPath::PathElement>::emplace_back<EQKitPath::PathElement const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitPath::PathElement>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void EQKitPath::EQKitPath(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 40) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 16) = v6;

    operator delete(v6);
  }
}

uint64_t EQKitCompositeGlyph::EQKitCompositeGlyph(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = &unk_287D33800;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  bzero((a1 + 32), 0x50uLL);
  *(a1 + 20) = *(a4 + 8);
  if (*a4)
  {
    v7 = CTFontDescriptorCreateWithNameAndSize(*a4, *(a2 + 16));
    *(a1 + 8) = CTFontCreateWithFontDescriptor(v7, *(a2 + 16), 0);
    CFRelease(v7);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return a1;
}

void EQKitCompositeGlyph::EQKitCompositeGlyph(EQKitCompositeGlyph *this, const EQKitCompositeGlyph *a2)
{
  *this = &unk_287D33800;
  v4 = *(a2 + 1);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(this + 1) = v4;
  *(this + 4) = *(a2 + 4);
  *(this + 20) = *(a2 + 20);
  bzero(this + 32, 0x50uLL);
  EQKitCompositeGlyph::copyCache(this, a2);
}

uint64_t EQKitCompositeGlyph::copyCache(EQKitCompositeGlyph *this, const EQKitCompositeGlyph *a2)
{
  result = EQKitCompositeGlyph::clearCache(this);
  if (*(a2 + 4))
  {
    operator new();
  }

  *(this + 4) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  *(this + 5) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  *(this + 6) = 0;
  if (*(a2 + 7))
  {
    operator new();
  }

  *(this + 7) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  *(this + 8) = 0;
  if (*(a2 + 9))
  {
    operator new();
  }

  *(this + 9) = 0;
  if (*(a2 + 10))
  {
    operator new();
  }

  *(this + 10) = 0;
  if (*(a2 + 11))
  {
    operator new();
  }

  *(this + 11) = 0;
  if (*(a2 + 12))
  {
    operator new();
  }

  *(this + 12) = 0;
  return result;
}

EQKitCompositeGlyph *EQKitCompositeGlyph::operator=(EQKitCompositeGlyph *this, EQKitCompositeGlyph *a2)
{
  if (this != a2)
  {
    v4 = *(this + 1);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 1);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *(this + 1) = v5;
    *(this + 20) = *(a2 + 20);
    EQKitCompositeGlyph::copyCache(this, a2);
  }

  return this;
}

void EQKitCompositeGlyph::~EQKitCompositeGlyph(EQKitCompositeGlyph *this)
{
  *this = &unk_287D33800;
  EQKitCompositeGlyph::clearCache(this);
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }
}

{
  EQKitCompositeGlyph::~EQKitCompositeGlyph(this);

  JUMPOUT(0x26D6A9A30);
}

uint64_t EQKitCompositeGlyph::clearCache(EQKitCompositeGlyph *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    EQKitPath::~EQKitPath(v2);
    MEMORY[0x26D6A9A30]();
    *(this + 4) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    EQKitPath::~EQKitPath(v3);
    MEMORY[0x26D6A9A30]();
    *(this + 5) = 0;
  }

  v4 = *(this + 6);
  if (v4)
  {
    EQKitPath::~EQKitPath(v4);
    MEMORY[0x26D6A9A30]();
    *(this + 6) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {
    EQKitPath::~EQKitPath(v5);
    MEMORY[0x26D6A9A30]();
    *(this + 7) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    MEMORY[0x26D6A9A30](v6, 0x1000C401B087D88);
    *(this + 8) = 0;
  }

  v7 = *(this + 9);
  if (v7)
  {
    MEMORY[0x26D6A9A30](v7, 0x1000C401B087D88);
    *(this + 9) = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    MEMORY[0x26D6A9A30](v8, 0x1000C401B087D88);
    *(this + 10) = 0;
  }

  v9 = *(this + 11);
  if (v9)
  {
    MEMORY[0x26D6A9A30](v9, 0x1000C401B087D88);
    *(this + 11) = 0;
  }

  result = *(this + 12);
  if (result)
  {
    result = MEMORY[0x26D6A9A30](result, 0x1000C401B087D88);
    *(this + 12) = 0;
  }

  return result;
}

uint64_t EQKitCompositeGlyph::upperPath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 4);
  v4 = *(this + 10);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::lowerPath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 5);
  v4 = *(this + 11);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::middlePath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 6);
  v4 = *(this + 12);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::extenderPath(EQKitCompositeGlyph *this)
{
  v2 = *(this + 1);
  result = *(this + 7);
  v4 = *(this + 13);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t EQKitCompositeGlyph::upperPathLowerStem(EQKitCompositeGlyph *this)
{
  if (*(this + 104))
  {
    return *(this + 8);
  }

  v3 = EQKitCompositeGlyph::upperPath(this);
  if (*(this + 4) == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  result = _createStem(v3, v4);
  *(this + 8) = result;
  *(this + 104) |= 1u;
  return result;
}

uint64_t _createStem(unint64_t **a1, unsigned int a2)
{
  if (a1)
  {
    EQKitPath::findStemForEdge(a1, a2, v3);
    if (v3[0] == 1)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t EQKitCompositeGlyph::lowerPathUpperStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 2) != 0)
  {
    return *(this + 9);
  }

  v2 = EQKitCompositeGlyph::lowerPath(this);
  result = _createStem(v2, *(this + 4) == 2);
  *(this + 9) = result;
  *(this + 104) |= 2u;
  return result;
}

uint64_t EQKitCompositeGlyph::middlePathUpperStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 4) != 0)
  {
    return *(this + 10);
  }

  v2 = EQKitCompositeGlyph::middlePath(this);
  result = _createStem(v2, *(this + 4) == 2);
  *(this + 10) = result;
  *(this + 104) |= 4u;
  return result;
}

uint64_t EQKitCompositeGlyph::middlePathLowerStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 8) != 0)
  {
    return *(this + 11);
  }

  v2 = EQKitCompositeGlyph::middlePath(this);
  if (*(this + 4) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = _createStem(v2, v3);
  *(this + 11) = result;
  *(this + 104) |= 8u;
  return result;
}

uint64_t EQKitCompositeGlyph::extenderPathStem(EQKitCompositeGlyph *this)
{
  if ((*(this + 104) & 0x10) != 0)
  {
    return *(this + 12);
  }

  v2 = EQKitCompositeGlyph::extenderPath(this);
  if (*(this + 4) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = _createStem(v2, v3);
  *(this + 12) = result;
  *(this + 104) |= 0x10u;
  return result;
}

CGPath *EQKitCompositeGlyph::createPathWithLength(EQKitCompositeGlyph *this, double a2, CGSize *a3)
{
  Mutable = CGPathCreateMutable();
  EQKitCompositeGlyph::compose(this, a2, Mutable);
  EQKitPath::EQKitPath(v12, Mutable);
  if (v13[32] == 1)
  {
    v7 = v13;
  }

  else
  {
    v7 = EQKitPath::computePathBounds(v12);
  }

  width = v7->width;
  height = v7->height;
  *a3 = v7[1];
  if (width != 0.0 || height != 0.0)
  {
    CGPathRelease(Mutable);
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeTranslation(&v11, -width, -height);
    Mutable = CGPathCreateMutable();
    EQKitPath::appendToCGPath(v12, Mutable, &v11, 0);
  }

  EQKitPath::~EQKitPath(v12);
  return Mutable;
}

void sub_26C6FE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

double EQKitCompositeGlyph::compose(EQKitCompositeGlyph *this, double a2, CGPath *a3)
{
  v6 = EQKitCompositeGlyph::upperPath(this);
  v7 = EQKitCompositeGlyph::lowerPath(this);
  v8 = EQKitCompositeGlyph::middlePath(this);
  v9 = EQKitCompositeGlyph::extenderPath(this);
  v10 = EQKitCompositeGlyph::upperPathLowerStem(this);
  v75 = EQKitCompositeGlyph::lowerPathUpperStem(this);
  v11 = EQKitCompositeGlyph::middlePathUpperStem(this);
  v12 = EQKitCompositeGlyph::middlePathLowerStem(this);
  v13 = EQKitCompositeGlyph::extenderPathStem(this);
  v14 = a2;
  if (!(v6 | v7))
  {
    return a2 - v14;
  }

  v15 = v13;
  v16 = 0.0;
  v17 = 0.0;
  if (v6)
  {
    if (*(this + 4) == 2)
    {
      if (*(v6 + 120))
      {
        v18 = (v6 + 88);
      }

      else
      {
        v18 = EQKitPath::computePathBounds(v6);
      }

      Height = CGRectGetHeight(*v18);
    }

    else
    {
      if (*(v6 + 120))
      {
        v19 = (v6 + 88);
      }

      else
      {
        v19 = EQKitPath::computePathBounds(v6);
      }

      Height = CGRectGetWidth(*v19);
    }

    v17 = Height;
  }

  if (v7)
  {
    if (*(this + 4) == 2)
    {
      if (*(v7 + 120))
      {
        v21 = (v7 + 88);
      }

      else
      {
        v21 = EQKitPath::computePathBounds(v7);
      }

      Width = CGRectGetHeight(*v21);
    }

    else
    {
      if (*(v7 + 120))
      {
        v22 = (v7 + 88);
      }

      else
      {
        v22 = EQKitPath::computePathBounds(v7);
      }

      Width = CGRectGetWidth(*v22);
    }

    v16 = Width;
  }

  v14 = a2 - (v17 + v16);
  if (v8)
  {
    if (*(this + 4) == 2)
    {
      if (*(v8 + 120))
      {
        v24 = (v8 + 88);
      }

      else
      {
        v24 = EQKitPath::computePathBounds(v8);
      }

      v26 = CGRectGetHeight(*v24);
    }

    else
    {
      if (*(v8 + 120))
      {
        v25 = (v8 + 88);
      }

      else
      {
        v25 = EQKitPath::computePathBounds(v8);
      }

      v26 = CGRectGetWidth(*v25);
    }

    v14 = v14 - v26;
  }

  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v14 >= 0.0)
  {
    goto LABEL_79;
  }

  v31 = 0.0;
  if (v10)
  {
    v31 = v10[5];
  }

  if (v11)
  {
    v30 = *(v11 + 40);
  }

  v32 = 0.0;
  v33 = 0.0;
  if (v75)
  {
    v33 = v75[5];
  }

  v34 = v31 + v30;
  if (v12)
  {
    v32 = *(v12 + 40);
  }

  v35 = v33 + v32;
  v36 = fabs(v14);
  if (v36 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v36;
  }

  v38 = v36 - v37;
  if (v38 >= v35)
  {
    v38 = v35;
  }

  if (v34 >= v35)
  {
    v34 = v35;
  }

  v39 = fabs(v14 * 0.5);
  if (v39 < v34)
  {
    v34 = v39;
  }

  if (v8)
  {
    v40 = v34;
  }

  else
  {
    v40 = v38;
  }

  if (v8)
  {
    v41 = v34;
  }

  else
  {
    v41 = v37;
  }

  if (v10)
  {
    v30 = v41;
    if (v10[5] < v41)
    {
      v30 = v10[5];
    }

    if (v75)
    {
LABEL_63:
      v29 = v40;
      if (v75[5] < v40)
      {
        v29 = v75[5];
      }

      goto LABEL_71;
    }
  }

  else
  {
    v30 = 0.0;
    if (v41 <= 0.0)
    {
      v30 = v41;
    }

    if (v75)
    {
      goto LABEL_63;
    }
  }

  if (v40 <= 0.0)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0.0;
  }

LABEL_71:
  v28 = v41 - v30;
  if (v11)
  {
    if (*(v11 + 40) < v28)
    {
      v28 = *(v11 + 40);
    }
  }

  else if (v28 > 0.0)
  {
    v28 = 0.0;
  }

  v42 = v40 - v29;
  if (v12)
  {
    v27 = *(v12 + 40);
    if (v27 < v42)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v42 <= 0.0)
  {
LABEL_78:
    v27 = v42;
  }

LABEL_79:
  if (v9)
  {
    if (v14 >= 0.0)
    {
      v43 = v14;
    }

    else
    {
      v43 = 0.0;
    }
  }

  else
  {
    v43 = 0.0;
    if (v14 > 0.0)
    {
      if (v10 && v75)
      {
        v30 = v30 - v14 * 0.5;
        v29 = v29 - v14 * 0.5;
      }

      else
      {
        v44 = v29 - v14;
        if (!v75)
        {
          v44 = v29;
        }

        if (v10)
        {
          v30 = v30 - v14;
        }

        else
        {
          v29 = v44;
        }
      }
    }
  }

  v79 = *MEMORY[0x277CBF348];
  if (v6)
  {
    v14 = v14 + v30;
    if (a3)
    {
      EQKitPath::appendToCGPathWithModifiedStem(v6, a3, &v79, *(this + 4) == 2, v10, -v30);
    }
  }

  if (v9)
  {
    v45 = v15 == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  if (v43 > 0.0)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v8)
  {
    if (v47)
    {
      if (*(this + 4) == 2)
      {
        if (*(v9 + 120))
        {
          v48 = (v9 + 88);
        }

        else
        {
          v48 = EQKitPath::computePathBounds(v9);
        }

        v53 = CGRectGetHeight(*v48);
      }

      else
      {
        if (*(v9 + 120))
        {
          v51 = (v9 + 88);
        }

        else
        {
          v51 = EQKitPath::computePathBounds(v9);
        }

        v53 = CGRectGetWidth(*v51);
      }

      v54 = v15[5];
      if (v53 - v43 * 0.5 < v54)
      {
        if (*(this + 4) == 2)
        {
          if (*(v9 + 120))
          {
            v55 = (v9 + 88);
          }

          else
          {
            v55 = EQKitPath::computePathBounds(v9);
          }

          v61 = CGRectGetHeight(*v55);
        }

        else
        {
          if (*(v9 + 120))
          {
            v56 = (v9 + 88);
          }

          else
          {
            v56 = EQKitPath::computePathBounds(v9);
          }

          v61 = CGRectGetWidth(*v56);
        }

        v54 = v61 - v43 * 0.5;
      }

      if (*(this + 4) == 2)
      {
        if (*(v9 + 120))
        {
          v62 = (v9 + 88);
        }

        else
        {
          v62 = EQKitPath::computePathBounds(v9);
        }

        v64 = CGRectGetHeight(*v62);
      }

      else
      {
        if (*(v9 + 120))
        {
          v63 = (v9 + 88);
        }

        else
        {
          v63 = EQKitPath::computePathBounds(v9);
        }

        v64 = CGRectGetWidth(*v63);
      }

      v14 = v54 + v14 - v64;
      if (a3)
      {
        EQKitPath::appendToCGPathWithModifiedStem(v9, a3, &v79, *(this + 4) == 2, v15, -v54);
      }
    }

    if ((v28 == 0.0 || !v11) && (v27 == 0.0 || !v12))
    {
      if (a3)
      {
        EQKitPath::appendToCGPathWithModifiedStem(v8, a3, &v79, *(this + 4) == 2, 0, 0.0);
      }
    }

    else
    {
      if (a3)
      {
        EQKitPath::extractPath(v8);
        std::vector<CGPoint>::vector[abi:nn200100](__p, (v8 + 8));
        EQKitPath::applyModifiedStemToPoints(v8, v11, __p, -v28);
        EQKitPath::applyModifiedStemToPoints(v8, v12, __p, -v27);
        *v77 = *MEMORY[0x277CBF348];
        EQKitPath::findJoinForEdge(v8, *(this + 4) == 2, v77, __p);
        memset(&v76, 0, sizeof(v76));
        CGAffineTransformMakeTranslation(&v76, v79.x - v77[0], v79.y - v77[1]);
        EQKitPath::appendToCGPath(v8, a3, &v76, __p);
        v65 = *(this + 4) == 2 ? 3 : 2;
        EQKitPath::findJoinForEdge(v8, v65, &v79, __p);
        v79 = vaddq_f64(*&v76.tx, vmlaq_n_f64(vmulq_n_f64(*&v76.c, v79.y), *&v76.a, v79.x));
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      v14 = v27 + v28 + v14;
    }

    if (!v47)
    {
      goto LABEL_197;
    }

    v49 = (this + 16);
    if (*(this + 4) == 2)
    {
      if (*(v9 + 120))
      {
        v66 = (v9 + 88);
      }

      else
      {
        v66 = EQKitPath::computePathBounds(v9);
      }

      v68 = CGRectGetHeight(*v66);
    }

    else
    {
      if (*(v9 + 120))
      {
        v67 = (v9 + 88);
      }

      else
      {
        v67 = EQKitPath::computePathBounds(v9);
      }

      v68 = CGRectGetWidth(*v67);
    }

    v43 = v43 * 0.5;
    v58 = v15[5];
    if (v68 - v43 >= v58)
    {
      goto LABEL_186;
    }

    v59 = *(v9 + 120);
    if (*v49 == 2)
    {
      if (*(v9 + 120))
      {
        goto LABEL_179;
      }

      goto LABEL_136;
    }

    goto LABEL_181;
  }

  if (v47)
  {
    v49 = (this + 16);
    if (*(this + 4) == 2)
    {
      if (*(v9 + 120))
      {
        v50 = (v9 + 88);
      }

      else
      {
        v50 = EQKitPath::computePathBounds(v9);
      }

      v57 = CGRectGetHeight(*v50);
    }

    else
    {
      if (*(v9 + 120))
      {
        v52 = (v9 + 88);
      }

      else
      {
        v52 = EQKitPath::computePathBounds(v9);
      }

      v57 = CGRectGetWidth(*v52);
    }

    v58 = v15[5];
    if (v57 - v43 >= v58)
    {
      goto LABEL_186;
    }

    v59 = *(v9 + 120);
    if (*v49 == 2)
    {
      if (*(v9 + 120))
      {
LABEL_179:
        v60 = (v9 + 88);
        goto LABEL_180;
      }

LABEL_136:
      v60 = EQKitPath::computePathBounds(v9);
LABEL_180:
      v69 = CGRectGetHeight(*v60);
LABEL_185:
      v58 = v69 - v43;
LABEL_186:
      if (*v49 == 2)
      {
        if (*(v9 + 120))
        {
          v71 = (v9 + 88);
        }

        else
        {
          v71 = EQKitPath::computePathBounds(v9);
        }

        v73 = CGRectGetHeight(*v71);
      }

      else
      {
        if (*(v9 + 120))
        {
          v72 = (v9 + 88);
        }

        else
        {
          v72 = EQKitPath::computePathBounds(v9);
        }

        v73 = CGRectGetWidth(*v72);
      }

      v14 = v58 + v14 - v73;
      if (a3)
      {
        EQKitPath::appendToCGPathWithModifiedStem(v9, a3, &v79, *v49 == 2, v15, -v58);
      }

      goto LABEL_197;
    }

LABEL_181:
    if (v59)
    {
      v70 = (v9 + 88);
    }

    else
    {
      v70 = EQKitPath::computePathBounds(v9);
    }

    v69 = CGRectGetWidth(*v70);
    goto LABEL_185;
  }

LABEL_197:
  if (v7)
  {
    v14 = v29 + v14;
    if (a3)
    {
      EQKitPath::appendToCGPathWithModifiedStem(v7, a3, &v79, *(this + 4) == 2, v75, -v29);
    }
  }

  return a2 - v14;
}

void sub_26C6FE924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CGPoint>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CGPoint>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<CGPoint>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void sub_26C70360C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26C703604);
}

uint64_t EQKitLayoutManager::EQKitLayoutManager(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *(a1 + 32) = [a3 kerningManager];
  *(a1 + 40) = [a3 layoutConfig];
  [a2 baseFontSize];
  v9 = v8;
  v10 = EQKit::Font::Manager::defaultCollection([a3 fontManager]);
  EQKitLayoutContext::EQKitLayoutContext((a1 + 48), v9, v10, [a2 baseFontName], 1);
  *(a1 + 184) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 592) = a3;
  *(a1 + 600) = a4;
  if (!a2)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"EQKitLayoutManager::EQKitLayoutManager(id<EQKitLayoutContext> description:{EQKitEnvironmentInstance *, const EQKit::AttributeCollection &)"), @"EQKitLayoutManager.mm", 53, @"invalid layoutContext"}];
  }

  *a1 = a2;
  [a2 baseFontSize];
  *(a1 + 8) = v11;
  [a2 containerWidth];
  *(a1 + 16) = v12;
  v13 = [a2 baseFontName];
  *(a1 + 24) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v14 = *(a1 + 8);
  v15 = EQKit::Font::Manager::defaultCollection([a3 fontManager]);
  EQKitLayoutContext::EQKitLayoutContext(v18, v14, v15, [a2 baseFontName], 1);
  std::deque<EQKitLayoutContext>::push_back((a1 + 232), v18);
  EQKitLayoutContext::~EQKitLayoutContext(v18);
  return a1;
}

void sub_26C703B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKitLayoutContext::~EQKitLayoutContext(va);
  std::deque<EQKitLayoutTable>::~deque[abi:nn200100](v3 + 45);
  std::deque<EQKitLayoutElementaryStack>::~deque[abi:nn200100](v3 + 39);
  std::deque<EQKitLayoutStretchedOperator>::~deque[abi:nn200100](v3 + 33);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](v3 + 27);
  v6 = v2[47];
  if (v6)
  {
    v2[48] = v6;
    operator delete(v6);
  }

  std::deque<EQKitLayoutRow>::~deque[abi:nn200100](v2 + 41);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](v2 + 35);
  std::deque<EQKitLayoutContext>::~deque[abi:nn200100](v4);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](v3);
  EQKitLayoutContext::~EQKitLayoutContext((v2 + 6));
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::~EQKitLayoutManager(id *this)
{
  v2 = this[3];
  if (v2)
  {
    CFRelease(v2);
  }

  std::deque<EQKitLayoutTable>::~deque[abi:nn200100](this + 68);
  std::deque<EQKitLayoutElementaryStack>::~deque[abi:nn200100](this + 62);
  std::deque<EQKitLayoutStretchedOperator>::~deque[abi:nn200100](this + 56);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](this + 50);
  v3 = this[47];
  if (v3)
  {
    this[48] = v3;
    operator delete(v3);
  }

  std::deque<EQKitLayoutRow>::~deque[abi:nn200100](this + 41);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](this + 35);
  std::deque<EQKitLayoutContext>::~deque[abi:nn200100](this + 29);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](this + 23);
  EQKitLayoutContext::~EQKitLayoutContext((this + 6));
}

void sub_26C703C20(_Unwind_Exception *a1)
{
  std::deque<EQKitLayoutTable>::~deque[abi:nn200100](v1 + 68);
  std::deque<EQKitLayoutElementaryStack>::~deque[abi:nn200100](v1 + 62);
  std::deque<EQKitLayoutStretchedOperator>::~deque[abi:nn200100](v1 + 56);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](v1 + 50);
  v3 = v1[47];
  if (v3)
  {
    v1[48] = v3;
    operator delete(v3);
  }

  std::deque<EQKitLayoutRow>::~deque[abi:nn200100](v1 + 41);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](v1 + 35);
  std::deque<EQKitLayoutContext>::~deque[abi:nn200100](v1 + 29);
  std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::~deque[abi:nn200100](v1 + 23);
  EQKitLayoutContext::~EQKitLayoutContext((v1 + 6));
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::popContext(EQKitLayoutManager *this)
{
  if (*(this + 34) || (result = EQKitLayoutManager::popContext(), (result & 1) == 0))
  {

    return std::deque<EQKitLayoutContext>::pop_back(this + 29);
  }

  return result;
}

unint64_t EQKitLayoutManager::layoutContext(EQKitLayoutManager *this)
{
  v2 = *(this + 34);
  if (!v2)
  {
    if ((EQKitLayoutManager::layoutContext(this + 34, this, &v4, &v5) & 1) == 0)
    {
      return v5;
    }

    v2 = v4;
  }

  return *(*(this + 30) + 8 * ((v2 + *(this + 33) - 1) / 0x1EuLL)) + 136 * ((v2 + *(this + 33) - 1) % 0x1EuLL);
}

double EQKitLayoutManager::leftSpaceForOperator(uint64_t a1, void *a2)
{
  v4 = EQKitLayoutManager::layoutContext(a1);
  v5 = [*(a1 + 592) operatorDictionary];
  v6 = [a2 operatorId];
  v7 = EQKitLayoutManager::operatorForm(a1, a2);
  v8 = EQKit::Config::Operator::Dictionary::lookup(v5, v6, v7);
  if (v8)
  {
    v9 = v8;
    v10 = EQKitLength::resolveToAbsoluteWithSize(v8, *(v4 + 24));
    if (v10 != 0.0)
    {
      v11 = *(a1 + 368) + *(a1 + 360) - 1;
      if (*(*(*(a1 + 336) + 8 * (v11 / 0x19)) + 160 * (v11 % 0x19) + 152) == 2)
      {
        if (v9[6] < 0)
        {
          v13 = *(v9 + 5);
        }

        else
        {
          v12 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
          (*(*v12 + 48))(v12, 1);
        }

        v10 = v10 * v13;
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  return EQKitLayoutManager::lengthForAttribute(a1, 10, a2, v10);
}

uint64_t EQKitLayoutManager::operatorForm(uint64_t a1, void *a2)
{
  v14 = 0;
  v4 = *(a1 + 600);
  v15 = a2;
  v16 = 15;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v4, v4 + 344, &v15, &v14);
  result = v14;
  if (!v14)
  {
    v6 = [a2 operatorId];
    result = EQKit::Config::Operator::Dictionary::formForOperatorId([*(a1 + 592) operatorDictionary], v6);
    v14 = result;
    if (!result)
    {
      v7 = EQKit::Config::Operator::Dictionary::formMaskForOperatorId([*(a1 + 592) operatorDictionary], v6);
      v8 = *(a1 + 224);
      if (v8)
      {
        v8 = *(*(*(a1 + 192) + (((v8 + *(a1 + 216) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v8 + *(a1 + 216) - 1) & 0x1FF));
      }

      v9 = v8 & v7;
      if ((v7 & 8) != 0)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      if ((v7 & 2) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      if ((v9 & 4) != 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = v11;
      }

      if ((v9 & 8) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = v12;
      }

      if ((v9 & 2) != 0)
      {
        return 1;
      }

      else
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t EQKitLayoutManager::fontCollection(id *this)
{
  v1 = [this[74] fontManager];

  return EQKit::Font::Manager::defaultCollection(v1);
}

double EQKitLayoutManager::lengthForAttribute(EQKitLayoutManager *a1, int a2, uint64_t a3, double a4)
{
  LODWORD(v9) = 1;
  *(&v9 + 1) = 0;
  v10 = a3;
  v6 = *(a1 + 75);
  v11 = a2;
  if (EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>>(v6, v6 + 32, &v10, &v9))
  {
    v7 = EQKitLayoutManager::layoutContext(a1);
    return EQKitLength::resolveToAbsoluteWithUnitProviderAndDefault(&v9, v7, a4);
  }

  return a4;
}

double EQKitLayoutManager::rightSpaceForOperator(uint64_t a1, void *a2)
{
  v4 = EQKitLayoutManager::layoutContext(a1);
  v5 = [*(a1 + 592) operatorDictionary];
  v6 = [a2 operatorId];
  v7 = EQKitLayoutManager::operatorForm(a1, a2);
  v8 = EQKit::Config::Operator::Dictionary::lookup(v5, v6, v7);
  if (v8)
  {
    v9 = v8;
    v10 = EQKitLength::resolveToAbsoluteWithSize((v8 + 2), *(v4 + 24));
    if (v10 != 0.0)
    {
      v11 = *(a1 + 368) + *(a1 + 360) - 1;
      if (*(*(*(a1 + 336) + 8 * (v11 / 0x19)) + 160 * (v11 % 0x19) + 152) == 2)
      {
        if (v9[6] < 0)
        {
          v13 = *(v9 + 5);
        }

        else
        {
          v12 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
          (*(*v12 + 48))(v12, 1);
        }

        v10 = v10 * v13;
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  return EQKitLayoutManager::lengthForAttribute(a1, 11, a2, v10);
}

CGPath *EQKitLayoutManager::createPathForNotation(EQKitLayoutManager *a1, void *a2, int a3)
{
  Mutable = CGPathCreateMutable();
  [a2 width];
  v8 = v7;
  [a2 vsize];
  v10 = v9;
  v11 = EQKitLayoutManager::layoutContext(a1);
  v13 = v11;
  v14 = *(v11 + 80);
  if (*(v11 + 104))
  {
    v12.n128_u64[0] = *(v11 + 112);
  }

  else
  {
    v12.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v11);
  }

  v15 = (*(*v14 + 40))(v14, 24, v13 + 8, v12);
  v16 = v15;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v21 = v8 * 0.5;
      CGPathMoveToPoint(Mutable, 0, v21, -v15);
      v18 = v10 + v16;
      v19 = Mutable;
      v17 = v21;
      goto LABEL_13;
    }

    if (a3 == 4)
    {
      v20 = v10 * 0.5;
      CGPathMoveToPoint(Mutable, 0, -v15, v20);
      v17 = v8 + v16;
      v19 = Mutable;
      v18 = v20;
      goto LABEL_13;
    }
  }

  else
  {
    if (a3 == 1)
    {
      CGPathMoveToPoint(Mutable, 0, -v15, v10 + v15);
      v17 = v8 + v16;
      v19 = Mutable;
      v18 = -v16;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      CGPathMoveToPoint(Mutable, 0, -v15, -v15);
      v17 = v8 + v16;
      v18 = v10 + v16;
      v19 = Mutable;
LABEL_13:
      CGPathAddLineToPoint(v19, 0, v17, v18);
    }
  }

  return Mutable;
}

EQKitBox *EQKitLayoutManager::layoutExpression(EQKitLayoutManager *a1, void *a2, void *a3, void *a4, void *a5, double *a6, BOOL *a7)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  *a3 = 0;
  v25[3] = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  *a4 = 0;
  v24[3] = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  *a5 = 0;
  v23[3] = a5;
  *a6 = 1.79769313e308;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  LODWORD(v17[0]) = 0;
  v11 = *(a1 + 75);
  v18 = a2;
  v19 = 7;
  v12 = EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v11, v11 + 320, &v18, v17) ^ 1;
  if ((v17[0] & 0xFFFFFFFD) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  EQKitLayoutManager::beginRow(a1, 1, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___ZN18EQKitLayoutManager16layoutExpressionEPU26objcproto15EQKitLayoutNode11objc_objectRdS2_S2_S2_Rb_block_invoke;
  v21[3] = &unk_279D46530;
  v21[4] = a2;
  v21[5] = v22;
  v21[6] = v25;
  v21[7] = v24;
  v21[8] = v23;
  v21[9] = a1;
  EQKitLayoutManager::layout(a1, a2, 0, v13, 0, v21);
  EQKitLayoutManager::endRow(a1, &v18);
  v14 = v18;
  if (v13 & 1 | ((*(*(a1 + 5) + 5) & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    v15 = (v20 & 0x1C00u) > 0x800;
  }

  *a7 = v15;
  EQKit::ILayoutOffset::ILayoutOffset(v17, 0, 0.0);
  if (EQKit::ILayout::getOffsetOfKind(&v18, 1, v17))
  {
    *a6 = EQKit::ILayoutOffset::offsetInBox(v17, v14);
  }

  EQKit::ILayoutOffset::~ILayoutOffset(v17);
  EQKit::ILayout::~ILayout(&v18);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  return v14;
}

void sub_26C70456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  EQKit::ILayout::~ILayout(&a12);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::beginRow(EQKitLayoutManager *this, char a2, BOOL a3)
{
  if ((a2 & 1) != 0 || (v4 = *(this + 46)) == 0)
  {
    EQKitLayoutRow::EQKitLayoutRow(v6, a3);
    std::deque<EQKitLayoutRow>::push_back(this + 41, v6);
    EQKitLayoutRow::~EQKitLayoutRow(v6);
  }

  else
  {
    v5 = *(*(this + 42) + 8 * ((v4 + *(this + 45) - 1) / 0x19uLL)) + 160 * ((v4 + *(this + 45) - 1) % 0x19uLL);

    EQKitLayoutRow::beginNestedRow(v5);
  }
}

void ___ZN18EQKitLayoutManager16layoutExpressionEPU26objcproto15EQKitLayoutNode11objc_objectRdS2_S2_S2_Rb_block_invoke(void *a1, uint64_t a2)
{
  if (a1[4] == a2)
  {
    v3 = a1[9];
    v4 = *(*(v3 + 5) + 4);
    v5 = EQKitLayoutManager::layoutContext(v3);
    v6 = v4 == 1 ? EQKitLayoutManager::newBaseFontWithScript(v3, (v5 + 8)) : EQKitLayoutContext::newFont(v5);
    *(*(a1[5] + 8) + 24) = v6;
    v7 = *(*(a1[5] + 8) + 24);
    if (v7)
    {
      **(*(a1[6] + 8) + 24) = CTFontGetAscent(v7);
      **(*(a1[7] + 8) + 24) = CTFontGetDescent(*(*(a1[5] + 8) + 24));
      **(*(a1[8] + 8) + 24) = CTFontGetLeading(*(*(a1[5] + 8) + 24));
      v8 = *(*(a1[5] + 8) + 24);

      CFRelease(v8);
    }
  }
}

CTFontRef EQKitLayoutManager::newBaseFontWithScript(EQKitLayoutManager *this, const Info *a2)
{
  if (*(this + 3))
  {
    v3 = *(this + 3);
  }

  else
  {
    v3 = @"Times New Roman";
  }

  v4 = CTFontDescriptorCreateWithNameAndSize(v3, *(a2 + 2));
  v5 = CTFontCreateWithFontDescriptor(v4, *(a2 + 2), 0);
  CFRelease(v4);
  return v5;
}

void EQKitLayoutManager::endRow(EQKitLayoutManager *this@<X0>, EQKit::ILayout *a2@<X8>)
{
  EQKit::ILayout::ILayout(a2, 0);
  v4 = *(this + 46);
  if (v4 || (v7 = [MEMORY[0x277CCA890] currentHandler], objc_msgSend(v7, "handleFailureInFunction:file:lineNumber:description:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "EQKit::ILayout EQKitLayoutManager::endRow()"), @"EQKitLayoutManager.mm", 2890, @"invalid state"), (v4 = *(this + 46)) != 0))
  {
    v5 = *(*(this + 42) + 8 * ((v4 + *(this + 45) - 1) / 0x19)) + 160 * ((v4 + *(this + 45) - 1) % 0x19);
    if (*(v5 + 64))
    {
      EQKitLayoutRow::endNestedRow(v5);
    }

    else if (v4 >= 2 && (*(v5 + 156) & 1) != 0)
    {
      EQKitLayoutRow::EQKitLayoutRow(v8, v5);
      std::deque<EQKitLayoutRow>::pop_back(this + 41);
      v6 = *(this + 46) + *(this + 45) - 1;
      EQKitLayoutRow::addChild((*(*(this + 42) + 8 * (v6 / 0x19)) + 160 * (v6 % 0x19)), v8);
      EQKitLayoutRow::~EQKitLayoutRow(v8);
    }

    else
    {
      EQKitLayoutRow::resolveKerning(v5, *(this + 4));
      EQKitLayoutRow::overallLayout(v5, v8);
      EQKit::ILayout::operator=(a2, v8);
      EQKit::ILayout::~ILayout(v8);
      std::deque<EQKitLayoutRow>::pop_back(this + 41);
    }
  }
}

void EQKitLayoutManager::layoutBox(EQKitLayoutManager *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, EQKit::ILayout *a4@<X8>)
{
  v8 = *(EQKitLayoutManager::layoutContext(a1) + 16);

  EQKitLayoutManager::layoutBox(a1, a2, 0, v8, 0, 0, a3, a4);
}

void EQKitLayoutManager::layoutBox(EQKitLayoutManager *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, EQKit::ILayout *a8@<X8>)
{
  EQKitLayoutManager::beginRow(a1, 1, 0);
  v16 = *(a1 + 46) + *(a1 + 45) - 1;
  *(*(*(a1 + 42) + 8 * (v16 / 0x19)) + 160 * (v16 % 0x19) + 152) = a5;
  EQKitLayoutManager::layout(a1, a2, a3, a4, a6, a7);

  EQKitLayoutManager::endRow(a1, a8);
}

void EQKitLayoutManager::layout(EQKitLayoutManager *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v42 = a2;
  v11 = *(a1 + 34) + *(a1 + 33) - 1;
  v12 = *(*(a1 + 30) + 8 * (v11 / 0x1E));
  if (a6)
  {
    std::deque<void({block_pointer})(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&),std::allocator<void ()(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>::push_back(a1 + 35, &v41);
  }

  v40 = 0;
  v13 = *(a1 + 75);
  *&v39[0] = a2;
  DWORD2(v39[0]) = 8;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v13, v13 + 8, v39, &v40);
  if (v40 == 2)
  {
    a4 = 1;
  }

  else if (v40 == 1)
  {
    a4 = 0;
  }

  isOperatorPaddingRequired = EQKitLayoutManager::isOperatorPaddingRequired(a1);
  v15 = isOperatorPaddingRequired;
  v17 = *(a1 + 48);
  v16 = *(a1 + 49);
  if (v17 >= v16)
  {
    v19 = *(a1 + 47);
    v20 = (v17 - v19) >> 3;
    if ((v20 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v37 = v12;
    v38 = a5;
    v21 = v16 - v19;
    v22 = v21 >> 2;
    if (v21 >> 2 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void({block_pointer}*)(objc_object  {objcproto15EQKitLayoutNode}*,EQKit::Layout::Schemata const&)>>(a1 + 376, v23);
    }

    v24 = a3;
    v25 = isOperatorPaddingRequired;
    v26 = (8 * v20);
    *v26 = a2;
    v18 = 8 * v20 + 8;
    v27 = *(a1 + 47);
    v28 = *(a1 + 48) - v27;
    v29 = v26 - v28;
    memcpy(v26 - v28, v27, v28);
    v30 = *(a1 + 47);
    *(a1 + 47) = v29;
    *(a1 + 48) = v18;
    *(a1 + 49) = 0;
    if (v30)
    {
      operator delete(v30);
    }

    v15 = v25;
    a5 = v38;
    a3 = v24;
    v12 = v37;
  }

  else
  {
    *v17 = a2;
    v18 = (v17 + 1);
  }

  *(a1 + 48) = v18;
  EQKitLayoutContext::EQKitLayoutContext(v39, a1, v12 + 136 * (v11 % 0x1E), a2, a3, a4, a5);
  std::deque<EQKitLayoutContext>::push_back(a1 + 29, v39);
  EQKitLayoutContext::~EQKitLayoutContext(v39);
  isEmbellishedOperatorRoot = EQKitLayoutManager::isEmbellishedOperatorRoot(a1, a2);
  if (isEmbellishedOperatorRoot)
  {
    std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::push_back(a1 + 50, &v42);
  }

  v32 = *(a1 + 61);
  if (!v32)
  {
    v34 = v42;
    if (v42)
    {
      goto LABEL_25;
    }

LABEL_27:
    memset(v39, 0, 32);
    goto LABEL_29;
  }

  v33 = (*(*(a1 + 57) + 8 * ((v32 + *(a1 + 60) - 1) / 0x66uLL)) + 40 * ((v32 + *(a1 + 60) - 1) % 0x66uLL));
  v34 = v42;
  if (*v33 != v42)
  {
    if (v42)
    {
LABEL_25:
      [v34 layoutSchemata];
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  EQKitLayoutManager::schemataForStretchedOperator(a1, v33, v39);
LABEL_29:
  if (isEmbellishedOperatorRoot)
  {
    v35 = v42;
  }

  else
  {
    v35 = 0;
  }

  EQKitLayoutManager::layoutSchemata(a1, v39, v15, v35);
  v36 = *(a1 + 40);
  if (v36)
  {
    (*(*(*(*(a1 + 36) + (((v36 + *(a1 + 39) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v36 + *(a1 + 39) - 1) & 0x1FF)) + 16))();
  }

  if (isEmbellishedOperatorRoot)
  {
    --*(a1 + 55);
    std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](a1 + 50, 1);
  }

  std::deque<EQKitLayoutContext>::pop_back(a1 + 29);
  *(a1 + 48) -= 8;
  if (v41)
  {
    --*(a1 + 40);
    std::deque<objc_object  {objcproto15EQKitLayoutNode}*>::__maybe_remove_back_spare[abi:nn200100](a1 + 35, 1);
  }

  EQKit::Layout::Schemata::~Schemata(v39);
}

void sub_26C704E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  EQKit::Layout::Schemata::~Schemata(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::layout(EQKitLayoutManager *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(EQKitLayoutManager::layoutContext(a1) + 16);

  return EQKitLayoutManager::layout(a1, a2, 0, v6, 0, a3);
}

void EQKitLayoutManager::layoutIntoRow(uint64_t a1, EQKitLayoutRow *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  EQKitLayoutManager::beginRow(a1, 1, 0);
  EQKitLayoutManager::layout(a1, a3, a4, a5, 0, a6);
  v12 = *(a1 + 368);
  if (!v12)
  {
    if (EQKitLayoutManager::layoutIntoRow())
    {
      goto LABEL_3;
    }

    v12 = v15;
  }

  EQKitLayoutRow::EQKitLayoutRow(v14, (*(*(a1 + 336) + 8 * ((v12 + *(a1 + 360) - 1) / 0x19uLL)) + 160 * ((v12 + *(a1 + 360) - 1) % 0x19uLL)));
  EQKitLayoutRow::operator=(a2, v14);
  EQKitLayoutRow::~EQKitLayoutRow(v14);
  EQKitLayoutRow::resolveKerning(a2, *(a1 + 32));
  EQKitLayoutRow::buildAlignmentGroups(a2);
LABEL_3:
  EQKitLayoutManager::endRow(a1, v13);
  EQKit::ILayout::~ILayout(v13);
}

void sub_26C705004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  EQKitLayoutRow::~EQKitLayoutRow(va);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::addHSpace(EQKitLayoutManager *this, double a2)
{
  if (a2 != 0.0)
  {
    v3 = [[EQKitHSpace alloc] initWithWidth:a2];
    EQKit::ILayout::ILayout(v5, &v3->super);
    EQKit::ILayout::setIsUserSpace(v5, 1);
    EQKit::ILayout::setVerticalContentClassification(v5, 6);
    EQKit::ILayout::ILayout(v4, v5);
    EQKitLayoutManager::addRowChild(this, v4, 0);
    EQKit::ILayout::~ILayout(v4);

    EQKit::ILayout::~ILayout(v5);
  }
}

void sub_26C7050C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(&a16);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::addRowChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 368) && EQKitLayoutManager::addRowChild())
  {
    return;
  }

  v6 = *(a2 + 32);
  v7 = (v6 >> 4) & 3;
  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = 31;
    }

    else
    {
      v8 = 30;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v8 = 32;
LABEL_8:
    EQKitLayoutManager::lengthForMetric(a1, v8);
    v10 = v9;
    LOWORD(v6) = *(a2 + 32);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v11 = v6 >> 6;
  if (v11 <= 1)
  {
    if (v11)
    {
      v12 = 31;
    }

    else
    {
      v12 = 30;
    }

    goto LABEL_16;
  }

  v13 = 0;
  if (v11 == 2)
  {
    v12 = 32;
LABEL_16:
    EQKitLayoutManager::lengthForMetric(a1, v12);
  }

  *(a2 + 40) = v10;
  *(a2 + 48) = v13;
  v14 = *(a1 + 368) + *(a1 + 360) - 1;
  v15 = *(*(a1 + 336) + 8 * (v14 / 0x19)) + 160 * (v14 % 0x19);

  EQKitLayoutRow::addChild(v15, a3, a2);
}

void EQKitLayoutManager::addOperatorLeftSpace(EQKitLayoutManager *this, double a2)
{
  v4 = *(this + 46);
  if (!v4)
  {
    if (EQKitLayoutManager::addOperatorLeftSpace())
    {
      goto LABEL_5;
    }

    v4 = v10[0];
  }

  v5 = *(*(this + 42) + 8 * ((v4 + *(this + 45) - 1) / 0x19uLL)) + 160 * ((v4 + *(this + 45) - 1) % 0x19uLL);
  v6 = *(v5 + 144);
  v7 = fmax(a2 - v6, 0.0);
  if (v6 > 0.0)
  {
    a2 = v7;
  }

  *(v5 + 144) = 0;
LABEL_5:
  if (a2 != 0.0)
  {
    v8 = [[EQKitHSpace alloc] initWithWidth:a2];
    EQKit::ILayout::ILayout(v10, &v8->super);
    EQKit::ILayout::setIsUserSpace(v10, 1);
    EQKit::ILayout::setVerticalContentClassification(v10, 6);
    EQKit::ILayout::ILayout(v9, v10);
    EQKitLayoutManager::addRowChild(this, v9, 0);
    EQKit::ILayout::~ILayout(v9);

    EQKit::ILayout::~ILayout(v10);
  }
}

void sub_26C70534C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(&a16);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::addOperatorRightSpace(EQKitLayoutManager *this, double a2)
{
  v4 = *(this + 46);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!EQKitLayoutManager::addOperatorRightSpace())
  {
    v4 = v7[0];
LABEL_2:
    *(*(*(this + 42) + 8 * ((v4 + *(this + 45) - 1) / 0x19uLL)) + 160 * ((v4 + *(this + 45) - 1) % 0x19uLL) + 144) = a2;
  }

  if (a2 != 0.0)
  {
    v5 = [[EQKitHSpace alloc] initWithWidth:a2];
    EQKit::ILayout::ILayout(v7, &v5->super);
    EQKit::ILayout::setIsUserSpace(v7, 1);
    EQKit::ILayout::setVerticalContentClassification(v7, 6);
    EQKit::ILayout::ILayout(v6, v7);
    EQKitLayoutManager::addRowChild(this, v6, 0);
    EQKit::ILayout::~ILayout(v6);

    EQKit::ILayout::~ILayout(v7);
  }
}

void sub_26C705480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(&a16);
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::clearOperatorSpace(uint64_t this)
{
  v1 = this;
  v2 = *(this + 368);
  if (v2)
  {
    goto LABEL_2;
  }

  this = EQKitLayoutManager::clearOperatorSpace();
  if ((this & 1) == 0)
  {
    v2 = v3;
LABEL_2:
    *(*(*(v1 + 336) + 8 * ((v2 + *(v1 + 360) - 1) / 0x19uLL)) + 160 * ((v2 + *(v1 + 360) - 1) % 0x19uLL) + 144) = 0;
  }

  return this;
}

void EQKitLayoutManager::alignBoxHorizontally(const EQKit::ILayout *a1@<X1>, int a2@<W2>, int a3@<W3>, EQKit::ILayout *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  EQKit::ILayout::ILayout(a4, a1);
  if (a2 == 2)
  {
    v14 = *a1;
    if (a3)
    {
      [v14 erasableBounds];
      v12 = 0.0 - CGRectGetMidX(v24) + a6;
    }

    else
    {
      [v14 width];
      v12 = (a5 - v15) * 0.5;
    }
  }

  else
  {
    v12 = 0.0;
    if (a2 == 3)
    {
      [*a1 width];
      v12 = a5 - v13;
    }
  }

  [*a1 width];
  v17 = a5 - (v12 + v16);
  if (v12 != 0.0 || v17 != 0.0)
  {
    if (*a1)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v12 != 0.0)
      {
        v19 = [[EQKitHSpace alloc] initWithWidth:v12];
        [v18 addObject:v19];
      }

      [v18 addObject:*a1];
      if (v17 != 0.0)
      {
        v20 = [[EQKitHSpace alloc] initWithWidth:v17];
        [v18 addObject:v20];
      }

      v21 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v18];
      EQKit::ILayout::setBox(a4, &v21->super.super);
    }

    else
    {
      v22 = [[EQKitHSpace alloc] initWithWidth:v12 + v17];
      EQKit::ILayout::ILayout(v23, &v22->super);
      EQKit::ILayout::operator=(a4, v23);
      EQKit::ILayout::~ILayout(v23);
    }
  }
}

void sub_26C7056F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::ILayout::~ILayout(va);
  EQKit::ILayout::~ILayout(v2);
  _Unwind_Resume(a1);
}

BOOL EQKitLayoutManager::isOperatorPaddingRequired(EQKitLayoutManager *this)
{
  v1 = *(this + 46) + *(this + 45) - 1;
  if (*(*(*(this + 42) + 8 * (v1 / 0x19)) + 160 * (v1 % 0x19) + 152) != 1)
  {
    for (i = *(this + 48); i != *(this + 47); i -= 8)
    {
      v5 = *(i - 8);
      v6 = [v5 isOperatorPaddingRequired];
      if (v6)
      {
        return v6 == 2;
      }
    }
  }

  return 0;
}

uint64_t EQKitLayoutManager::isEmbellishedOperatorRoot(void *a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = a1[55];
    if (v5)
    {
      v6 = [*(*(a1[51] + (((v5 + a1[54] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + a1[54] - 1) & 0x1FF)) operatorCore];
      return v6 != [a2 operatorCore];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void EQKitLayoutManager::schemataForStretchedOperator(id *this@<X0>, const EQKitLayoutStretchedOperator *a2@<X1>, uint64_t a3@<X8>)
{
  EQKit::Layout::Schemata::Schemata(a3);
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v7 == 1)
  {
    v8 = [*a2 operatorUnicharOrNul];
    v9 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
    v10 = EQKitLayoutManager::layoutContext(this);
    if ((*(*v9 + 104))(v9, v8, 1, v10 + 8))
    {
      EQKit::Layout::Schemata::operFontStretch(v11);
      EQKit::Layout::Schemata::operator=(a3, v11);
    }

    else
    {
      if (!v6)
      {
        return;
      }

      [v6 layoutSchemata];
      EQKit::Layout::Schemata::operator=(a3, v11);
    }

    goto LABEL_10;
  }

  if (v7 == 2)
  {
    EQKitLayoutManager::schemataForOperatorWhenStretchedVertically(this, *a2, a3);
    return;
  }

  if (v6)
  {
    [*a2 layoutSchemata];
    EQKit::Layout::Schemata::operator=(a3, v11);
LABEL_10:
    EQKit::Layout::Schemata::~Schemata(v11);
  }
}

void sub_26C705970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  EQKit::Layout::Schemata::~Schemata(&a9);
  EQKit::Layout::Schemata::~Schemata(v9);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutSchemata(uint64_t a1, EQKit::Layout::Schemata *a2, int a3, void *a4)
{
  EQKit::ILayout::ILayout(v61, 0);
  v9 = *(a2 + 2);
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (((v9 - 5) & 0xFFFFFFFD) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    v12 = EQKitLayoutManager::leftSpaceForOperator(a1, [a4 operatorCore]);
    EQKitLayoutManager::addOperatorLeftSpace(a1, v12);
    v9 = *(a2 + 2);
  }

  switch(v9)
  {
    case 1:
      v13 = EQKit::Layout::Schemata::nodeSchemata(a2);
      v14 = EQKitLayoutManager::layoutContext(a1);
      EQKitLayoutManager::layout(a1, v13, 0, *(v14 + 16), 0, 0);
      goto LABEL_41;
    case 2:
      EQKitLayoutManager::layoutRow(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 3:
      v15 = [EQKit::Layout::Schemata::phantomSchemata(a2) schemataChild];
      v16 = EQKitLayoutManager::layoutContext(a1);
      EQKitLayoutManager::layoutBox(a1, v15, 0, *(v16 + 16), 0, 0, 0, v60);
      v17 = [EQKitHVSpace alloc];
      [v60[0] width];
      v19 = v18;
      [v60[0] height];
      v21 = v20;
      [v60[0] depth];
      v23 = [(EQKitHVSpace *)v17 initWithWidth:v19 height:v21 depth:v22];
      EQKit::ILayout::ILayout(&v57, v23);
      EQKit::ILayout::operator=(v61, &v57);
      EQKit::ILayout::~ILayout(&v57);

      goto LABEL_40;
    case 4:
      EQKitLayoutManager::layoutSubsuperscript(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 5:
      EQKitLayoutManager::layoutUnderover(a2, a1, a3, a4, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 6:
      EQKitLayoutManager::layoutRadical(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 7:
      EQKitLayoutManager::layoutFraction(a1, a2, a3, a4, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 8:
      EQKitLayoutManager::layoutIdentifier(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 9:
      EQKitLayoutManager::layoutNumber(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 10:
      EQKitLayoutManager::layoutOperator(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 11:
      v24 = *(a1 + 488);
      if (!v24)
      {
        goto LABEL_41;
      }

      v25 = *(*(a1 + 456) + 8 * ((v24 + *(a1 + 480) - 1) / 0x66uLL)) + 40 * ((v24 + *(a1 + 480) - 1) % 0x66uLL);
      v26 = [*v25 operatorUnicharOrNul];
      v56 = v26;
      if (*(v25 + 8) == 2)
      {
        v27 = *(v25 + 24) + *(v25 + 16);
      }

      else
      {
        v27 = *(v25 + 32);
      }

      v30 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
      v31 = *(v25 + 8);
      v32 = EQKitLayoutManager::layoutContext(a1);
      v33 = (*(*v30 + 80))(v30, &v56, v31, v32 + 8, v27);
      if (!v33)
      {
        goto LABEL_65;
      }

      v34 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
      v35 = (*(*v34 + 152))(v34, v56, v33);
      if (!v35)
      {
        goto LABEL_64;
      }

      v36 = [[EQKitStringBox alloc] initWithAttributedString:v35 cgColor:*(EQKitLayoutManager::layoutContext(a1) + 96)];
      v37 = v36;
      v38 = *(v25 + 8);
      if (v36)
      {
        v39 = v38 == 2;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        [(EQKitStringBox *)v36 height];
        v41 = v40;
        [(EQKitStringBox *)v37 depth];
        v43 = (v27 - (v41 + v42)) * 0.5 + v42 - *(v25 + 24);
        if (v43 == 0.0)
        {
          EQKit::ILayout::ILayout(v60, v37);
        }

        else
        {
          EQKit::ILayout::ILayout(v60, [[EQKitVShift alloc] initWithBox:v37 offset:v43]);
        }

        EQKit::ILayout::operator=(v61, v60);
      }

      else
      {
        if (v38 != 1)
        {
          goto LABEL_63;
        }

        EQKit::ILayout::ILayout(v60, v36);
        EQKit::ILayout::operator=(v61, v60);
      }

      EQKit::ILayout::~ILayout(v60);
LABEL_63:

LABEL_64:
      CFRelease(v33);
LABEL_65:
      if (!v61[0])
      {
        v57 = *MEMORY[0x277CBF3A8];
        v58 = 0.0;
        v59 = 0.0;
        v44 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
        v45 = *(v25 + 8);
        v46 = v45 == 2 ? *(v25 + 24) + *(v25 + 16) : *(v25 + 32);
        v47 = EQKitLayoutManager::layoutContext(a1);
        v48 = (*(*v44 + 88))(v44, v26, v45, v47 + 8, &v57, v46);
        if (v48)
        {
          if (*(v25 + 8) == 2)
          {
            v49 = *(v25 + 16);
            v50 = *(v25 + 24);
            v51 = *(&v57 + 1);
            v52 = [EQKitPathBox alloc];
            v53 = [(EQKitPathBox *)v52 initWithCGPath:v48 height:*(EQKitLayoutManager::layoutContext(a1) + 96) paddingLeft:v49 + (v51 - (v49 + v50)) * 0.5 paddingRight:v58 cgColor:v59];
          }

          else
          {
            v53 = [[EQKitPathBox alloc] initWithCGPath:v48 height:*(EQKitLayoutManager::layoutContext(a1) + 96) cgColor:*(&v57 + 1)];
          }

          EQKit::ILayout::ILayout(v60, &v53->super);
          EQKit::ILayout::operator=(v61, v60);
          EQKit::ILayout::~ILayout(v60);
          CGPathRelease(v48);
        }
      }

      EQKit::ILayout::setVerticalContentClassification(v61, 5);
LABEL_41:
      if (v61[0])
      {
        EQKitLayoutManager::beginRow(a1, 0, 1);
        EQKit::ILayout::ILayout(v55, v61);
        v28 = EQKitLayoutManager::currentNode(a1);
        EQKitLayoutManager::addRowChild(a1, v55, v28);
        EQKit::ILayout::~ILayout(v55);
        EQKitLayoutManager::endRow(a1, v54);
        EQKit::ILayout::~ILayout(v54);
      }

      if (v11)
      {
        v29 = EQKitLayoutManager::rightSpaceForOperator(a1, [a4 operatorCore]);
        EQKitLayoutManager::addOperatorRightSpace(a1, v29);
      }

      else if (!a4 && a3)
      {
        EQKitLayoutManager::clearOperatorSpace(a1);
      }

      EQKit::ILayout::~ILayout(v61);
      return;
    case 12:
      EQKitLayoutManager::layoutStack(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 13:
      EQKitLayoutManager::layoutStackGroup(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 14:
      EQKitLayoutManager::layoutStackRow(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 15:
      EQKitLayoutManager::layoutStackLine(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 16:
      EQKitLayoutManager::layoutStackCarries(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 17:
      EQKitLayoutManager::layoutStackCarry(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 18:
      EQKitLayoutManager::layoutLongDivision(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 19:
      EQKitLayoutManager::layoutTable(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 20:
      EQKitLayoutManager::layoutTableRow(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 21:
      EQKitLayoutManager::layoutNone(v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 22:
      EQKitLayoutManager::layoutText(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 23:
      EQKitLayoutManager::layoutPadded(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 24:
      EQKitLayoutManager::layoutSpace(a1, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 25:
      EQKitLayoutManager::layoutFenced(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 26:
      EQKitLayoutManager::layoutAlignGroup(a1, v8);
      goto LABEL_41;
    case 27:
      EQKitLayoutManager::layoutAlignMark(v60);
      EQKit::ILayout::operator=(v61, v60);
      goto LABEL_40;
    case 28:
      EQKitLayoutManager::layoutEnclose(a1, a2, v60);
      EQKit::ILayout::operator=(v61, v60);
LABEL_40:
      EQKit::ILayout::~ILayout(v60);
      goto LABEL_41;
    default:
      goto LABEL_41;
  }
}

void sub_26C7062B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  EQKit::ILayout::~ILayout(&a33);
  EQKit::ILayout::~ILayout((v33 - 184));
  _Unwind_Resume(a1);
}

uint64_t EQKitLayoutManager::schemataForOperatorWhenStretchedVertically(id *a1, void *a2, uint64_t a3)
{
  v6 = [a2 operatorUnicharOrNul];
  v7 = EQKit::Font::Manager::defaultCollection([a1[74] fontManager]);
  v8 = EQKitLayoutManager::layoutContext(a1);
  v9 = (*(*v7 + 104))(v7, v6, 2, v8 + 8);
  if (v9)
  {
    EQKit::Layout::Schemata::operFontStretch(v11);
    EQKit::Layout::Schemata::operator=(a3, v11);
  }

  else
  {
    if (a2)
    {
      [a2 layoutSchemata];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    EQKit::Layout::Schemata::operator=(a3, v11);
  }

  EQKit::Layout::Schemata::~Schemata(v11);
  return v9;
}

EQKit::ILayout *EQKitLayoutManager::layoutText@<X0>(id *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = EQKit::Layout::Schemata::textSchemata(a2);
  if (!v4)
  {
    return EQKit::ILayout::ILayout(a3, 0);
  }

  v5 = v4;
  v6 = EQKitLayoutManager::layoutContext(this);
  cf = EQKitLayoutManager::newBaseFontWithScript(this, (v6 + 8));
  v7 = [v5 schemataIsQuoted];
  EQKitLayoutManager::beginRow(this, 0, 1);
  if (v7)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "");
    v8 = this[75];
    v41 = EQKitLayoutManager::currentNode(this);
    v42 = 12;
    EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v8, v8 + 80, &v41, __p);
    v9 = objc_alloc(MEMORY[0x277CCAB68]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0].__r_.__value_.__r.__words[0];
    }

    v11 = [v9 initWithUTF8String:v10];
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [v5 schemataChildren];
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v13)
  {
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v11)
          {
            [v11 appendString:v16];
          }

          else
          {
            v11 = [v16 mutableCopy];
          }
        }

        else if ([v16 conformsToProtocol:&unk_287DE0820])
        {
          if (v11)
          {
            v17 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
            v18 = (*(*v17 + 144))(v17, v11, cf);
            v19 = [[EQKitStringBox alloc] initWithAttributedString:v18 cgColor:*(EQKitLayoutManager::layoutContext(this) + 96)];
            EQKit::ILayout::ILayout(__p, &v19->super);
            EQKit::ILayout::setVerticalContentClassification(__p, 5);
            EQKit::ILayout::ILayout(v35, __p);
            v20 = EQKitLayoutManager::currentNode(this);
            EQKitLayoutManager::addRowChild(this, v35, v20);
            EQKit::ILayout::~ILayout(v35);

            EQKit::ILayout::~ILayout(__p);
          }

          v21 = EQKitLayoutManager::layoutContext(this);
          EQKitLayoutManager::layout(this, v16, 0, *(v21 + 16), 0, 0);
          v11 = 0;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v13);
  }

  if (!v7)
  {
    goto LABEL_31;
  }

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "");
  v22 = this[75];
  v41 = EQKitLayoutManager::currentNode(this);
  v42 = 13;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string,std::less<EQKitTypes::Attributes::Enum>,std::char_traits<char><std::pair<EQKitTypes::Attributes::Enum const>>>>(v22, v22 + 80, &v41, __p);
  v23 = objc_alloc(MEMORY[0x277CCAB68]);
  v24 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
  v25 = [v23 initWithUTF8String:v24];
  [v11 appendString:v25];

  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if (!v11)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
  if (v11)
  {
LABEL_32:
    v26 = EQKit::Font::Manager::defaultCollection([this[74] fontManager]);
    v27 = (*(*v26 + 144))(v26, v11, cf);
    v28 = [[EQKitStringBox alloc] initWithAttributedString:v27 cgColor:*(EQKitLayoutManager::layoutContext(this) + 96)];
    EQKit::ILayout::ILayout(v34, &v28->super);
    v29 = EQKitLayoutManager::currentNode(this);
    EQKitLayoutManager::addRowChild(this, v34, v29);
    EQKit::ILayout::~ILayout(v34);
  }

LABEL_33:
  EQKitLayoutManager::endRow(this, v33);
  EQKit::ILayout::~ILayout(v33);
  if (cf)
  {
    CFRelease(cf);
  }

  return EQKit::ILayout::ILayout(a3, 0);
}

void sub_26C706984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitLayoutManager::currentNode(EQKitLayoutManager *this)
{
  v2 = *(this + 47);
  v1 = *(this + 48);
  if (v2 == v1)
  {
    EQKitLayoutManager::currentNode(this + 47, this + 48, &v4, &v5);
    v2 = v4;
    v1 = v5;
  }

  if (v2 == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 8);
  }
}

void EQKitLayoutManager::layoutRow(EQKitLayoutManager *this@<X0>, const EQKit::Layout::Schemata *a2@<X1>, EQKit::ILayout *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = EQKit::Layout::Schemata::children(a2);
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 isEmbellishedOperator] && (EQKitLayoutManager::doesOperatorRequireVerticalStretch(this, objc_msgSend(v10, "operatorCore")) & 1) != 0)
        {
          v13 = *(this + 46) + *(this + 45) - 1;
          if (EQKitLayoutRow::isNewRowRequiredForStretching((*(*(this + 42) + 8 * (v13 / 0x19)) + 160 * (v13 % 0x19))))
          {
            EQKitLayoutManager::beginRow(this, 1, 1);
            v11 = 1;
          }

          else
          {
            v11 = 0;
          }

          v12 = 1;
          goto LABEL_15;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_15:
  v14 = EQKit::Layout::Schemata::children(a2);
  v15 = EQKitLayoutFilterOutSpaceLike(v14);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        if (v12 && [*(*(&v23 + 1) + 8 * j) isEmbellishedOperator] && EQKitLayoutManager::doesOperatorRequireVerticalStretch(this, objc_msgSend(v19, "operatorCore")))
        {
          EQKit::ILayout::ILayout(v22, 0);
          EQKitLayoutManager::addRowChild(this, v22, v19);
          EQKit::ILayout::~ILayout(v22);
        }

        else
        {
          EQKitLayoutManager::pushImplicitFormIfRequired(this, v19, v15);
          v20 = EQKitLayoutManager::layoutContext(this);
          EQKitLayoutManager::layout(this, v19, 0, *(v20 + 16), 0, 0);
          EQKitLayoutManager::popImplicitFormIfRequired(this, v19);
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  EQKit::ILayout::ILayout(a3, 0);
  if (v12)
  {
    EQKitLayoutManager::resolveRow(this, v15);
    if (v11)
    {
      EQKitLayoutManager::endRow(this, v21);
      EQKit::ILayout::operator=(a3, v21);
      EQKit::ILayout::~ILayout(v21);
    }
  }
}

void sub_26C706D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  EQKit::ILayout::~ILayout(&a9);
  EQKit::ILayout::~ILayout(v16);
  _Unwind_Resume(a1);
}

void EQKitLayoutManager::layoutFraction(uint64_t a1@<X0>, EQKit::Layout::Schemata *a2@<X1>, int a3@<W2>, void *a4@<X3>, EQKit::ILayout *a5@<X8>)
{
  v10 = EQKitLayoutManager::layoutContext(a1);
  v11 = EQKit::Layout::Schemata::fractionSchemata(a2);
  EQKitLayoutManager::layoutBox(a1, [v11 schemataNumerator], *(v10 + 16) ^ 1, 0, 0, 0, 0, v76);
  EQKitLayoutManager::layoutBox(a1, [v11 schemataDenominator], *(v10 + 16) ^ 1, 0, 0, 1, 0, v74);
  if (*(v10 + 104))
  {
    v12 = *(v10 + 112);
  }

  else
  {
    v12 = EQKitLayoutContext::pComputeRuleThickness(v10);
  }

  v13 = EQKitLayoutManager::currentNode(a1);
  v14 = EQKitLayoutManager::lengthForAttribute(a1, 36, v13, v12);
  v15 = 0.0;
  if (v14 >= 0.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
  }

  if (v16 > 0.0)
  {
    v17 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
    v18 = EQKitLayoutManager::layoutContext(a1);
    v15 = (*(*v17 + 40))(v17, 25, v18 + 8, v12);
  }

  v19 = v76[0];
  v20 = v74[0];
  [v76[0] width];
  v22 = v21;
  [(EQKitBox *)v20 width];
  v24 = v23.n128_f64[0];
  if (v22 > v23.n128_f64[0])
  {
    v23.n128_f64[0] = v22;
  }

  v65 = v23.n128_f64[0];
  v25 = *(v10 + 80);
  if (*(v10 + 104))
  {
    v23.n128_u64[0] = *(v10 + 112);
  }

  else
  {
    v23.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
  }

  v27 = (*(*v25 + 40))(v25, 3, v10 + 8, v23);
  v28 = *(v10 + 80);
  if (*(v10 + 104))
  {
    v26.n128_u64[0] = *(v10 + 112);
  }

  else
  {
    v26.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
  }

  v30 = (*(*v28 + 40))(v28, 4, v10 + 8, v26);
  v31 = *(v10 + 104);
  if ((v31 & 2) != 0)
  {
    v66 = *(v10 + 120);
  }

  else
  {
    v66 = EQKitLayoutContext::pComputeMathAxis(v10);
    v31 = *(v10 + 104);
  }

  v32 = *(v10 + 80);
  if (v31)
  {
    v29.n128_u64[0] = *(v10 + 112);
  }

  else
  {
    v29.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v10);
  }

  v33 = (*(*v32 + 40))(v32, 2, v10 + 8, v29);
  [(EQKitBox *)v19 depth];
  v34 = v27 - v66;
  v35 = v16 * 0.5;
  v36 = v34 - v16 * 0.5;
  v38 = v33;
  if (v33 <= v36 - v37)
  {
    [(EQKitBox *)v19 depth];
    v38 = v36 - v39;
  }

  [(EQKitBox *)v20 height];
  v40 = v30 + v66 - v35;
  if (v33 <= v40 - v41)
  {
    [(EQKitBox *)v20 height];
    v33 = v40 - v42;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = 2;
  v44 = *(a1 + 600);
  v69 = EQKitLayoutManager::currentNode(a1);
  v70 = 24;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v44, v44 + 128, &v69, &v73);
  v72 = 2;
  v45 = *(a1 + 600);
  v69 = EQKitLayoutManager::currentNode(a1);
  v70 = 25;
  EQKit::AttributeCollection::getValueForKey<std::map<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Display::Enum>>(v45, v45 + 128, &v69, &v72);
  v46 = v65 + v15 * 2.0;
  if (v73 == 3)
  {
    v47 = v46 - v22;
  }

  else
  {
    v47 = 0.0;
    if (v73 == 2)
    {
      v47 = (v46 - v22) * 0.5;
    }
  }

  if (v72 == 3)
  {
    v48 = v46 - v24;
  }

  else
  {
    v48 = 0.0;
    if (v72 == 2)
    {
      v48 = (v46 - v24) * 0.5;
    }
  }

  if (v47 == 0.0)
  {
    [v43 addObject:v19];
  }

  else
  {
    EQKitLayoutManager::beginRow(a1, 1, 0);
    EQKitLayoutManager::addHSpace(a1, v47);
    EQKit::ILayout::ILayout(v71, v19);
    EQKitLayoutManager::addRowChild(a1, v71, 0);
    EQKit::ILayout::~ILayout(v71);
    EQKitLayoutManager::endRow(a1, &v69);
    if (v69)
    {
      [v43 addObject:?];
    }

    EQKit::ILayout::~ILayout(&v69);
  }

  v49 = [[EQKitVSpace alloc] initWithHeight:v38 depth:0.0];
  [v43 addObject:v49];

  v50 = [[EQKitRule alloc] initWithHeight:*(EQKitLayoutManager::layoutContext(a1) + 96) depth:v35 width:v35 cgColor:v46];
  [v43 addObject:v50];

  v51 = [[EQKitVSpace alloc] initWithHeight:v33 depth:0.0];
  [v43 addObject:v51];

  if (v48 == 0.0)
  {
    [v43 addObject:v20];
  }

  else
  {
    EQKitLayoutManager::beginRow(a1, 1, 0);
    EQKitLayoutManager::addHSpace(a1, v48);
    EQKit::ILayout::ILayout(v68, v20);
    EQKitLayoutManager::addRowChild(a1, v68, 0);
    EQKit::ILayout::~ILayout(v68);
    EQKitLayoutManager::endRow(a1, &v69);
    if (v69)
    {
      [v43 addObject:?];
    }

    EQKit::ILayout::~ILayout(&v69);
  }

  v52 = [[EQKitOffsetVBox alloc] initWithChildBoxes:v43 pivotIndex:2 offset:v66];
  EQKit::ILayout::ILayout(a5, &v52->super.super.super);

  *(a5 + 16) = *(a5 + 16) & 0xFFF0 | 0xA;
  EQKit::ILayout::takeMissingOffsetsFromLayout(a5, v76);
  EQKit::ILayout::takeMissingOffsetsFromLayout(a5, v74);
  EQKit::ILayout::removeOffsetOfKind(a5, 1);

  if (*(EQKitLayoutManager::layoutContext(a1) + 16))
  {
    goto LABEL_52;
  }

  if ((v77 & 0x1C00u) > 0x1000 && (v75 & 0x1C00u) > 0x1000)
  {
    if (*(EQKitLayoutManager::layoutContext(a1) + 8) <= 0)
    {
      v53 = 3;
    }

    else
    {
      v53 = 4;
    }

    goto LABEL_56;
  }

  if ((v77 & 0x1000) == 0)
  {
LABEL_52:
    v53 = 1;
    goto LABEL_56;
  }

  if ((v75 & 0x1000) != 0)
  {
    v53 = 3;
  }

  else
  {
    v53 = 1;
  }

LABEL_56:
  EQKit::ILayout::setVerticalContentClassification(a5, v53);
  if (a3)
  {
    v54 = EQKit::Font::Manager::defaultCollection([*(a1 + 592) fontManager]);
    v55 = EQKitLayoutManager::layoutContext(a1);
    v56 = EQKitLayoutManager::layoutContext(a1);
    if (*(v56 + 104))
    {
      v57.n128_u64[0] = *(v56 + 112);
    }

    else
    {
      v57.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v56);
    }

    v58 = (*(*v54 + 40))(v54, 26, v55 + 8, v57);
    v59 = [a4 operatorCore];
    if (v59)
    {
      v60 = EQKitLayoutManager::leftSpaceForOperator(a1, v59);
      v61 = EQKitLayoutManager::rightSpaceForOperator(a1, v59);
      if (v58 <= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v58;
      }

      if (v58 <= v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = v58;
      }

      v58 = v62;
    }

    else
    {
      v63 = v58;
    }

    EQKitLayoutManager::addOperatorLeftSpace(a1, v58);
    EQKit::ILayout::ILayout(v67, a5);
    v64 = EQKitLayoutManager::currentNode(a1);
    EQKitLayoutManager::addRowChild(a1, v67, v64);
    EQKit::ILayout::~ILayout(v67);
    EQKitLayoutManager::addOperatorRightSpace(a1, v63);
    EQKit::ILayout::ILayout(&v69, 0);
    EQKit::ILayout::operator=(a5, &v69);
    EQKit::ILayout::~ILayout(&v69);
  }

  EQKit::ILayout::~ILayout(v74);
  EQKit::ILayout::~ILayout(v76);
}