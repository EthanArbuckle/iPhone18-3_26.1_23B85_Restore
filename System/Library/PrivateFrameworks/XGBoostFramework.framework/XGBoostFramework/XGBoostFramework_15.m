void sub_274DD2210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<xgboost::Json>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_274DD22B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*>(uint64_t a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
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
      *a4 = 0;
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5 && atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v7 + 8))(v7);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::Json>,xgboost::Json*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<xgboost::Json>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::Json>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<xgboost::Json>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      *(v4 + 16) = v2 - 8;
      if (result)
      {
        if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          result = (*(*result + 8))(result);
        }
      }

      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void *std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, v4);
      }
    }
  }

  return result;
}

uint64_t xgboost::common::ToString<unsigned int>(uint64_t a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  MEMORY[0x277C68E30](&v4, *a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v8);
}

void sub_274DD2734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::ToString<int>(uint64_t a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  MEMORY[0x277C68E20](&v4, *a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v8);
}

void sub_274DD2898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<xgboost::Metric>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x277C690D0](a1 + 128);
  return a1;
}

void *std::deque<xgboost::Json>::push_back(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v13);
    }

    result[4] = v8 - 512;
    v17 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(result, &v17);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v7 + v3[4];
  }

  v14 = *&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8];
  v15 = v9 & 0x1FF;
  v16 = *a2;
  *(v14 + 8 * v15) = *a2;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void sub_274DD2F28(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const(&)[17]>(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(void *a1, void *a2, uint64_t a3, char a4)
{
  v199 = *MEMORY[0x277D85DE8];
LABEL_2:
  v6 = a2 - 3;
  v7 = a2 - 6;
  v193 = a2;
  v8 = a2 - 9;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = v193;
    v11 = v193 - v9;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v193 - v9);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_185;
      }

      if (v12 == 2)
      {
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9))
        {
          goto LABEL_185;
        }

LABEL_116:
        v129 = *v9;
        v196 = v9[2];
        v195 = v129;
        v130 = *v6;
        v9[2] = v6[2];
        *v9 = v130;
        v131 = v195;
        v132 = v196;
LABEL_117:
        v6[2] = v132;
        *v6 = v131;
        goto LABEL_185;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 3, v9);
      v128 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9 + 3);
      if (v127)
      {
        if (v128)
        {
          goto LABEL_116;
        }

        v188 = *v9;
        v196 = v9[2];
        v195 = v188;
        *v9 = *(v9 + 3);
        v9[2] = v9[5];
        *(v9 + 3) = v195;
        v9[5] = v196;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9 + 3))
        {
          v131 = *(v9 + 3);
          v195 = v131;
          v132 = v9[5];
          v196 = v132;
          v189 = v6[2];
          *(v9 + 3) = *v6;
          v9[5] = v189;
          goto LABEL_117;
        }

LABEL_185:
        v190 = *MEMORY[0x277D85DE8];
        return;
      }

      if (!v128)
      {
        goto LABEL_185;
      }

      v195 = *(v9 + 3);
      v178 = v195;
      v196 = v9[5];
      v179 = v196;
      v180 = v6[2];
      *(v9 + 3) = *v6;
      v9[5] = v180;
      v6[2] = v179;
      *v6 = v178;
LABEL_173:
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 3, v9))
      {
        v181 = *v9;
        v196 = v9[2];
        v195 = v181;
        *v9 = *(v9 + 3);
        v9[2] = v9[5];
        *(v9 + 3) = v195;
        v9[5] = v196;
      }

      goto LABEL_185;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, v9 + 3, v9 + 6, v9 + 9);
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9 + 9))
      {
        goto LABEL_185;
      }

      v195 = *(v9 + 9);
      v119 = v195;
      v196 = v9[11];
      v120 = v196;
      v121 = v6[2];
      *(v9 + 9) = *v6;
      v9[11] = v121;
      v6[2] = v120;
      *v6 = v119;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 9, v9 + 6))
      {
        goto LABEL_185;
      }

      v122 = v9[8];
      v123 = *(v9 + 3);
      *(v9 + 3) = *(v9 + 9);
      v9[8] = v9[11];
      *(v9 + 9) = v123;
      v9[11] = v122;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 6, v9 + 3))
      {
        goto LABEL_185;
      }

      v124 = v9[5];
      v125 = *(v9 + 3);
      *(v9 + 3) = *(v9 + 3);
      v9[5] = v9[8];
      *(v9 + 3) = v125;
      v9[8] = v124;
      goto LABEL_173;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = v9 + 3;
      v136 = v9 == v193 || v134 == v193;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v9;
          do
          {
            v139 = v138;
            v138 = v134;
            if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v134, v139))
            {
              v140 = *v138;
              v196 = v138[2];
              v195 = v140;
              v138[1] = 0;
              v138[2] = 0;
              *v138 = 0;
              v141 = v137;
              while (1)
              {
                v142 = v9 + v141;
                *(v142 + 24) = *(v9 + v141);
                *(v142 + 5) = *(v9 + v141 + 16);
                v142[23] = 0;
                *v142 = 0;
                if (!v141)
                {
                  break;
                }

                v141 -= 24;
                if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, (v9 + v141)))
                {
                  v143 = v9 + v141 + 24;
                  goto LABEL_136;
                }
              }

              v143 = v9;
LABEL_136:
              v144 = v195;
              *(v143 + 16) = v196;
              *v143 = v144;
            }

            v134 = v138 + 3;
            v137 += 24;
          }

          while (v138 + 3 != v193);
        }
      }

      else if (!v136)
      {
        v182 = v9 - 3;
        do
        {
          v183 = a1;
          a1 = v134;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v134, v183))
          {
            v184 = *a1;
            v196 = a1[2];
            v195 = v184;
            a1[1] = 0;
            a1[2] = 0;
            *a1 = 0;
            v185 = v182;
            do
            {
              *(v185 + 3) = *(v185 + 3);
              v185[8] = v185[5];
              *(v185 + 47) = 0;
              *(v185 + 24) = 0;
              v186 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v185);
              v185 -= 3;
            }

            while (v186);
            v187 = v195;
            v185[8] = v196;
            *(v185 + 3) = v187;
          }

          v134 = a1 + 3;
          v182 += 3;
        }

        while (a1 + 3 != v193);
      }

      goto LABEL_185;
    }

    if (!a3)
    {
      if (v9 != v193)
      {
        v145 = v13 >> 1;
        v146 = v13 >> 1;
        do
        {
          v147 = v146;
          if (v145 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = &a1[3 * v148];
            if (2 * v146 + 2 < v12 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v148], v149 + 3))
            {
              v149 += 3;
              v148 = 2 * v147 + 2;
            }

            v150 = &a1[3 * v147];
            if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v149, v150))
            {
              v151 = *v150;
              v196 = v150[2];
              v195 = v151;
              v150[1] = 0;
              v150[2] = 0;
              *v150 = 0;
              do
              {
                v152 = v149;
                v153 = *v149;
                v150[2] = v149[2];
                *v150 = v153;
                *(v149 + 23) = 0;
                *v149 = 0;
                if (v145 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = &a1[3 * v154];
                v155 = 2 * v148 + 2;
                if (v155 < v12 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v154], v149 + 3))
                {
                  v149 += 3;
                  v154 = v155;
                }

                v150 = v152;
                v148 = v154;
              }

              while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v149, &v195));
              v156 = v195;
              v152[2] = v196;
              *v152 = v156;
              v10 = v193;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v157 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        do
        {
          v158 = 0;
          v159 = v10;
          v192 = *a1;
          *&v197 = a1[1];
          *(&v197 + 7) = *(a1 + 15);
          v194 = *(a1 + 23);
          a1[1] = 0;
          a1[2] = 0;
          *a1 = 0;
          v160 = a1;
          do
          {
            v161 = &v160[3 * v158];
            v162 = (v161 + 3);
            v163 = (2 * v158) | 1;
            v164 = 2 * v158 + 2;
            if (v164 < v157)
            {
              v165 = (v161 + 6);
              if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v161 + 3, v161 + 6))
              {
                v162 = v165;
                v163 = v164;
              }
            }

            v166 = *v162;
            v160[2] = *(v162 + 2);
            *v160 = v166;
            *(v162 + 23) = 0;
            *v162 = 0;
            v160 = v162;
            v158 = v163;
          }

          while (v163 <= (v157 - 2) / 2);
          v10 = (v10 - 24);
          if (v162 == (v159 - 24))
          {
            *v162 = v192;
            v176 = *(&v197 + 7);
            *(v162 + 1) = v197;
            *(v162 + 15) = v176;
            *(v162 + 23) = v194;
          }

          else
          {
            v167 = *v10;
            *(v162 + 2) = *(v159 - 1);
            *v162 = v167;
            *(v159 - 3) = v192;
            v168 = v197;
            *(v159 - 9) = *(&v197 + 7);
            *(v159 - 2) = v168;
            *(v159 - 1) = v194;
            v169 = v162 - a1 + 24;
            if (v169 >= 25)
            {
              v170 = (-2 - 0x5555555555555555 * (v169 >> 3)) >> 1;
              v171 = &a1[3 * v170];
              if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v171, v162))
              {
                v172 = *v162;
                v196 = *(v162 + 2);
                v195 = v172;
                *(v162 + 1) = 0;
                *(v162 + 2) = 0;
                *v162 = 0;
                do
                {
                  v173 = v171;
                  v174 = *v171;
                  *(v162 + 2) = *(v171 + 2);
                  *v162 = v174;
                  *(v171 + 23) = 0;
                  *v171 = 0;
                  if (!v170)
                  {
                    break;
                  }

                  v170 = (v170 - 1) >> 1;
                  v171 = &a1[3 * v170];
                  v162 = v173;
                }

                while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v171, &v195));
                v175 = v195;
                *(v173 + 2) = v196;
                *v173 = v175;
              }
            }
          }
        }

        while (v157-- > 2);
      }

      goto LABEL_185;
    }

    v14 = v12 >> 1;
    v15 = &v9[3 * v14];
    if (v11 >= 0xC01)
    {
      v16 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v14], a1);
      v17 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, &a1[3 * v14]);
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v196 = a1[2];
          v195 = v18;
          v19 = *v6;
          a1[2] = v6[2];
          *a1 = v19;
        }

        else
        {
          v36 = *a1;
          v196 = a1[2];
          v195 = v36;
          v37 = *v15;
          a1[2] = v15[2];
          *a1 = v37;
          v38 = v195;
          v15[2] = v196;
          *v15 = v38;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, &a1[3 * v14]))
          {
            goto LABEL_28;
          }

          v39 = *v15;
          v196 = v15[2];
          v195 = v39;
          v40 = *v6;
          v15[2] = v6[2];
          *v15 = v40;
        }

        v41 = v195;
        v6[2] = v196;
        *v6 = v41;
      }

      else if (v17)
      {
        v24 = *v15;
        v196 = v15[2];
        v195 = v24;
        v25 = *v6;
        v15[2] = v6[2];
        *v15 = v25;
        v26 = v195;
        v6[2] = v196;
        *v6 = v26;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v14], a1))
        {
          v27 = *a1;
          v196 = a1[2];
          v195 = v27;
          v28 = *v15;
          a1[2] = v15[2];
          *a1 = v28;
          v29 = v195;
          v15[2] = v196;
          *v15 = v29;
        }
      }

LABEL_28:
      v42 = &a1[3 * v14 - 3];
      v43 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v42, a1 + 3);
      v44 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v7, v42);
      if (v43)
      {
        if (v44)
        {
          v45 = *(a1 + 3);
          v195 = v45;
          v46 = a1[5];
          v196 = v46;
          v47 = v7[2];
          *(a1 + 3) = *v7;
          a1[5] = v47;
        }

        else
        {
          v195 = *(a1 + 3);
          v60 = v195;
          v196 = a1[5];
          v61 = v196;
          v62 = a1[3 * v14 - 1];
          *(a1 + 3) = *v42;
          a1[5] = v62;
          a1[3 * v14 - 1] = v61;
          *v42 = v60;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v7, v42))
          {
            goto LABEL_40;
          }

          v63 = *v42;
          v196 = a1[3 * v14 - 1];
          v195 = v63;
          v64 = *v7;
          a1[3 * v14 - 1] = v7[2];
          *v42 = v64;
          v45 = v195;
          v46 = v196;
        }

        v7[2] = v46;
        *v7 = v45;
      }

      else if (v44)
      {
        v48 = *v42;
        v196 = a1[3 * v14 - 1];
        v195 = v48;
        v49 = *v7;
        a1[3 * v14 - 1] = v7[2];
        *v42 = v49;
        v50 = v195;
        v7[2] = v196;
        *v7 = v50;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v42, a1 + 3))
        {
          v195 = *(a1 + 3);
          v51 = v195;
          v196 = a1[5];
          v52 = v196;
          v53 = a1[3 * v14 - 1];
          *(a1 + 3) = *v42;
          a1[5] = v53;
          a1[3 * v14 - 1] = v52;
          *v42 = v51;
        }
      }

LABEL_40:
      v65 = &a1[3 * v14];
      v66 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, a1 + 6);
      v67 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v8, v65 + 3);
      if (!v66)
      {
        if (v67)
        {
          v71 = *(v65 + 3);
          v196 = v65[5];
          v195 = v71;
          v72 = *v8;
          v65[5] = v8[2];
          *(v65 + 3) = v72;
          v73 = v195;
          v8[2] = v196;
          *v8 = v73;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, a1 + 6))
          {
            v195 = *(a1 + 3);
            v74 = v195;
            v196 = a1[8];
            v75 = v196;
            v76 = v65[5];
            *(a1 + 3) = *(v65 + 3);
            a1[8] = v76;
            v65[5] = v75;
            *(v65 + 3) = v74;
          }
        }

        goto LABEL_49;
      }

      if (v67)
      {
        v68 = *(a1 + 3);
        v195 = v68;
        v69 = a1[8];
        v196 = v69;
        v70 = v8[2];
        *(a1 + 3) = *v8;
        a1[8] = v70;
      }

      else
      {
        v195 = *(a1 + 3);
        v77 = v195;
        v196 = a1[8];
        v78 = v196;
        v79 = v65[5];
        *(a1 + 3) = *(v65 + 3);
        a1[8] = v79;
        v65[5] = v78;
        *(v65 + 3) = v77;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v8, v65 + 3))
        {
LABEL_49:
          v82 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v15, v42);
          v83 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, v15);
          if (v82)
          {
            if (v83)
            {
              v84 = *v42;
              v196 = v42[2];
              v195 = v84;
              *v42 = *(v65 + 3);
              v42[2] = v65[5];
              v85 = v195;
              v65[5] = v196;
              *(v65 + 3) = v85;
              v10 = v193;
            }

            else
            {
              v90 = *v42;
              v196 = v42[2];
              v195 = v90;
              *v42 = *v15;
              v42[2] = v15[2];
              v91 = v195;
              v15[2] = v196;
              *v15 = v91;
              v10 = v193;
              if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, v15))
              {
                v92 = *v15;
                v196 = v15[2];
                v195 = v92;
                *v15 = *(v65 + 3);
                v15[2] = v65[5];
                v93 = v195;
                v65[5] = v196;
                *(v65 + 3) = v93;
              }
            }
          }

          else
          {
            v10 = v193;
            if (v83)
            {
              v86 = *v15;
              v196 = v15[2];
              v195 = v86;
              *v15 = *(v65 + 3);
              v15[2] = v65[5];
              v87 = v195;
              v65[5] = v196;
              *(v65 + 3) = v87;
              if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v15, v42))
              {
                v88 = *v42;
                v196 = v42[2];
                v195 = v88;
                *v42 = *v15;
                v42[2] = v15[2];
                v89 = v195;
                v15[2] = v196;
                *v15 = v89;
              }
            }
          }

          v94 = *a1;
          v196 = a1[2];
          v195 = v94;
          v95 = *v15;
          a1[2] = v15[2];
          *a1 = v95;
          v96 = v195;
          v15[2] = v196;
          *v15 = v96;
          goto LABEL_58;
        }

        v80 = *(v65 + 3);
        v196 = v65[5];
        v195 = v80;
        v81 = *v8;
        v65[5] = v8[2];
        *(v65 + 3) = v81;
        v68 = v195;
        v69 = v196;
      }

      v8[2] = v69;
      *v8 = v68;
      goto LABEL_49;
    }

    v20 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, &a1[3 * v14]);
    v21 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, a1);
    if (!v20)
    {
      if (v21)
      {
        v30 = *a1;
        v196 = a1[2];
        v195 = v30;
        v31 = *v6;
        a1[2] = v6[2];
        *a1 = v31;
        v32 = v195;
        v6[2] = v196;
        *v6 = v32;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, &a1[3 * v14]))
        {
          v33 = *v15;
          v196 = v15[2];
          v195 = v33;
          v34 = *a1;
          v15[2] = a1[2];
          *v15 = v34;
          v35 = v195;
          a1[2] = v196;
          *a1 = v35;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v22 = *v15;
      v196 = v15[2];
      v195 = v22;
      v23 = *v6;
      v15[2] = v6[2];
      *v15 = v23;
    }

    else
    {
      v54 = *v15;
      v196 = v15[2];
      v195 = v54;
      v55 = *a1;
      v15[2] = a1[2];
      *v15 = v55;
      v56 = v195;
      a1[2] = v196;
      *a1 = v56;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, a1))
      {
        goto LABEL_58;
      }

      v57 = *a1;
      v196 = a1[2];
      v195 = v57;
      v58 = *v6;
      a1[2] = v6[2];
      *a1 = v58;
    }

    v59 = v195;
    v6[2] = v196;
    *v6 = v59;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 - 3, a1))
    {
      v97 = 0;
      v98 = *a1;
      v198 = a1[2];
      v197 = v98;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      do
      {
        v97 += 3;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[v97], &v197));
      v99 = &a1[v97];
      v100 = v10;
      if (v97 == 3)
      {
        v100 = v10;
        do
        {
          if (v99 >= v100)
          {
            break;
          }

          v100 -= 3;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v100, &v197));
      }

      else
      {
        do
        {
          v100 -= 3;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v100, &v197));
      }

      v9 = &a1[v97];
      if (v99 < v100)
      {
        v101 = v100;
        do
        {
          v102 = *v9;
          v196 = v9[2];
          v195 = v102;
          v103 = *v101;
          v9[2] = v101[2];
          *v9 = v103;
          v104 = v195;
          v101[2] = v196;
          *v101 = v104;
          do
          {
            v9 += 3;
          }

          while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9, &v197));
          do
          {
            v101 -= 3;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v101, &v197));
        }

        while (v9 < v101);
      }

      v105 = (v9 - 3);
      if (v9 - 3 == a1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        a1[2] = *(v9 - 1);
        *a1 = v106;
        *(v9 - 1) = 0;
        *(v9 - 24) = 0;
      }

      v107 = v197;
      *(v9 - 1) = v198;
      *v105 = v107;
      if (v99 < v100)
      {
        goto LABEL_83;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v9 - 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v9, v193))
      {
        a2 = v9 - 3;
        if (!v108)
        {
          goto LABEL_2;
        }

        goto LABEL_185;
      }

      if (!v108)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v9 - 3, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v198 = a1[2];
      v197 = v109;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v197, v6))
      {
        v9 = a1;
        do
        {
          v9 += 3;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v197, v9));
      }

      else
      {
        v110 = a1 + 3;
        do
        {
          v9 = v110;
          if (v110 >= v10)
          {
            break;
          }

          v111 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v197, v110);
          v110 = v9 + 3;
        }

        while (!v111);
      }

      v112 = v10;
      if (v9 < v10)
      {
        v112 = v10;
        do
        {
          v112 -= 3;
        }

        while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v197, v112));
      }

      while (v9 < v112)
      {
        v113 = *v9;
        v196 = v9[2];
        v195 = v113;
        v114 = *v112;
        v9[2] = v112[2];
        *v9 = v114;
        v115 = v195;
        v112[2] = v196;
        *v112 = v115;
        do
        {
          v9 += 3;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v197, v9));
        do
        {
          v112 -= 3;
        }

        while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v197, v112));
      }

      v116 = (v9 - 3);
      if (v9 - 3 == a1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        a1[2] = *(v9 - 1);
        *a1 = v117;
        *(v9 - 1) = 0;
        *(v9 - 24) = 0;
      }

      a4 = 0;
      v118 = v197;
      *(v9 - 1) = v198;
      *v116 = v118;
    }
  }

  v133 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, v9 + 3, v9 + 6, v6);
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(void *a1, void *a2, void *a3, void *a4)
{
  v8 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, a1);
  v9 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1);
        v15 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = a1[2];
            v34 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v34;
            a1[5] = v33;
            if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v5, a1 + 3))
            {
              return 1;
            }

            v16 = a1[5];
            v17 = *(a1 + 3);
            v35 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = a1[2];
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          a1[2] = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = a1[5];
        v25 = *(a1 + 3);
        v26 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, a1 + 9))
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1))
    {
      v27 = a1[2];
      v28 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v28;
      a1[5] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = a1 + 6;
  v20 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1);
  v21 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = a1[2];
      v23 = *a1;
      *a1 = *v19;
      a1[2] = a1[8];
    }

    else
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v37;
      a1[5] = v36;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = a1[5];
      v23 = *(a1 + 3);
      *(a1 + 3) = *v19;
      a1[5] = a1[8];
    }

    *v19 = v23;
    a1[8] = v22;
  }

  else if (v21)
  {
    v29 = a1[5];
    v30 = *(a1 + 3);
    *(a1 + 3) = *v19;
    a1[5] = a1[8];
    *v19 = v30;
    a1[8] = v29;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1))
    {
      v31 = a1[2];
      v32 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v32;
      a1[5] = v31;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v38, v19))
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 11) = *(a1 + v41 + 64);
        v42[71] = 0;
        v42[48] = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v45, v42 + 3))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::deque<xgboost::Json>::~deque[abi:ne200100](uint64_t a1)
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
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7 && atomic_fetch_add_explicit(v9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
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
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_20:
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

void xgboost::LearnerImpl::CheckDataSplitMode(xgboost::LearnerImpl *this)
{
  Engine = rabit::engine::GetEngine(this);
  if ((*(*Engine + 80))(Engine))
  {
    v3 = *(this + 121);
    if (!v3)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v11);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1096);
      v7 = dmlc::LogMessageFatal::GetEntry(&v11);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: tparam_.dsplit != DataSplitMode::kAuto", 52);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Precondition violated; dsplit cannot be 'auto' in distributed mode", 66);
      dmlc::LogMessageFatal::~LogMessageFatal(&v11);
      v3 = *(this + 121);
    }

    if (v3 == 1)
    {
      v4 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v4, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1099);
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Column-wise data split is currently not supported.", 50);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }
  }
}

void xgboost::LearnerImpl::ValidateDMatrix(xgboost::LearnerImpl *this, xgboost::DMatrix *a2, int a3)
{
  v6 = (**a2)(a2);
  v7 = *(this + 22);
  xgboost::MetaInfo::Validate(v6);
  if ((*(this + 121) & 0xFFFFFFFD) == 0)
  {
    v17 = (this + 468);
    if (a3)
    {
      v18 = ((**a2)(a2) + 8);
      if (*v18 != *v17)
      {
        dmlc::LogCheckFormat<unsigned int,unsigned long long>(v17, v18);
      }
    }

    else
    {
      v19 = ((**a2)(a2) + 8);
      if (*v19 > *v17)
      {
        dmlc::LogCheckFormat<unsigned int,unsigned long long>(v17, v19);
      }
    }
  }

  v8 = *(**a2)(a2);
  v11 = *(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, v10) + 4);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 < 1;
  }

  if (!v13)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v22, __p, 1350, 1);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Empty dataset at worker: ", 25);
    Engine = rabit::engine::GetEngine(v14);
    v16 = (*(*Engine + 64))(Engine);
    MEMORY[0x277C68E20](v14, v16);
    xgboost::ConsoleLogger::~ConsoleLogger(v22);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274DD4E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a16, v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::LearnerImpl::PredictRaw(xgboost::LearnerImpl *this, xgboost::DMatrix *a2, xgboost::PredictionCacheEntry *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(this + 4))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v17);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1324);
    v14 = dmlc::LogMessageFatal::GetEntry(&v17);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Check failed: gbm_ != nullptr", 29);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Predict must happen after Load or configuration", 47);
    dmlc::LogMessageFatal::~LogMessageFatal(&v17);
  }

  xgboost::LearnerImpl::ValidateDMatrix(this, a2, 0);
  return (*(**(this + 4) + 88))(*(this + 4), a2, a3, a4, a5, a6);
}

void *std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, v4);
      }
    }
  }

  return result;
}

void xgboost::common::ReadAll(std::string *a1, char **lpsrc, xgboost::common::PeekableInStream *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  {
    v7 = v6;
    (*(*v6 + 32))(v6, -1);
    v8 = (*(*v7 + 40))(v7);
    v10[0] = v8;
    std::string::resize(a1, v8, 0);
    (*(*v7 + 32))(v7, 0);
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = a1->__r_.__value_.__r.__words[0];
    }

    v13 = (**v7)(v7, v9, v8);
    if (v13 != v8)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v13, v10);
    }
  }

  else
  {
    xgboost::common::FixedSizeStream::FixedSizeStream(v10, a3);
    *&a1->__r_.__value_.__l.__data_ = v11;
    a1->__r_.__value_.__r.__words[2] = v12;
    HIBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    xgboost::common::FixedSizeStream::~FixedSizeStream(v10);
  }
}

void sub_274DD5344(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2 - 40, v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, (v5 + 1), v4 + 4);
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, v3);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v4 + 4));

    operator delete(v4);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
  return std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_274DD565C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
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

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
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
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
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

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_274DD59F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::parameter::FieldEntry<unsigned int>::~FieldEntry(void **a1)
{
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::SetDefault(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Required parameter ", 19);
    v4 = *(v2 + 47);
    if (v4 >= 0)
    {
      v5 = v2 + 24;
    }

    else
    {
      v5 = *(v2 + 24);
    }

    if (v4 >= 0)
    {
      v6 = *(v2 + 47);
    }

    else
    {
      v6 = *(v2 + 32);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " of ", 4);
    v11 = *(v2 + 48);
    v10 = v2 + 48;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2883DE2B0;
  }

  *(a2 + *(result + 96)) = *(result + 104);
  return result;
}

void sub_274DD5B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v34, a3, 8);
  MEMORY[0x277C68D60](v34, a2 + *(a1 + 96));
  v6 = v34[0];
  v7 = *(&v36[1].__locale_ + *(v34[0] - 24));
  if ((v7 & 5) == 0 && (v7 & 2) == 0)
  {
    while (1)
    {
      v8 = std::istream::get();
      if (v8 == -1)
      {
        v10 = 0;
        v11 = (v34 + *(v34[0] - 24));
        goto LABEL_11;
      }

      if (v8 > 0x20u || ((1 << v8) & 0x100003600) == 0)
      {
        break;
      }

      v6 = v34[0];
      if ((*(&v36[1].__locale_ + *(v34[0] - 24)) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v11 = (v34 + *(v34[0] - 24));
    v10 = v11->__rdstate_ | 4;
LABEL_11:
    std::ios_base::clear(v11, v10);
    v6 = v34[0];
  }

LABEL_12:
  if ((*(&v36[1].__locale_ + *(v6 - 24)) & 5) != 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid Parameter format for ", 29);
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = a1 + 24;
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " expect ", 8);
    v21 = *(a1 + 48);
    v20 = a1 + 48;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " but value='", 12);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v32.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v32, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v32);
    exception->__vftable = &unk_2883DE2B0;
  }

  v34[0] = *MEMORY[0x277D82820];
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::istream::~istream();
  return MEMORY[0x277C690D0](&v38);
}

void sub_274DD5F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v49 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      std::istringstream::~istringstream(&a48);
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v48);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::Check(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + *(result + 96));
  v3 = *(result + 109);
  if (*(result + 108))
  {
    v4 = *(result + 112);
    if (*(result + 109))
    {
      if (v2 < v4 || v2 > *(result + 116))
      {
        v5 = result;
        std::ostringstream::basic_ostringstream[abi:ne200100](v81);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
        v7 = MEMORY[0x277C68E30](v6, v2);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " for Parameter ", 15);
        v9 = *(v5 + 24);
        v10 = *(v5 + 47);
        if (v10 >= 0)
        {
          v11 = v5 + 24;
        }

        else
        {
          v11 = *(v5 + 24);
        }

        if (v10 >= 0)
        {
          v12 = *(v5 + 47);
        }

        else
        {
          v12 = *(v5 + 32);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " exceed bound [", 15);
        v15 = MEMORY[0x277C68E30](v14, *(v5 + 112));
        v80.__r_.__value_.__s.__data_[0] = 44;
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v80, 1);
        v17 = MEMORY[0x277C68E30](v16, *(v5 + 116));
        v80.__r_.__value_.__s.__data_[0] = 93;
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v80, 1);
        v80.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v80, 1);
        v19 = *(v5 + 47);
        v20 = *(v5 + 32);
        if (v19 >= 0)
        {
          v21 = v5 + 24;
        }

        else
        {
          v21 = *(v5 + 24);
        }

        if (v19 >= 0)
        {
          v22 = *(v5 + 47);
        }

        else
        {
          v22 = *(v5 + 32);
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
        v27 = *(v5 + 72);
        v26 = v5 + 72;
        v25 = v27;
        v28 = *(v26 + 23);
        if (v28 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v25;
        }

        if (v28 >= 0)
        {
          v30 = *(v26 + 23);
        }

        else
        {
          v30 = *(v26 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v80);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    else if (v2 < v4)
    {
      v56 = result;
      std::ostringstream::basic_ostringstream[abi:ne200100](v81);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
      v58 = MEMORY[0x277C68E30](v57, v2);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " for Parameter ", 15);
      v60 = *(v56 + 24);
      v61 = *(v56 + 47);
      if (v61 >= 0)
      {
        v62 = v56 + 24;
      }

      else
      {
        v62 = *(v56 + 24);
      }

      if (v61 >= 0)
      {
        v63 = *(v56 + 47);
      }

      else
      {
        v63 = *(v56 + 32);
      }

      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v62, v63);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " should be greater equal to ", 28);
      v66 = MEMORY[0x277C68E30](v65, *(v56 + 112));
      v80.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v80, 1);
      v67 = *(v56 + 47);
      v68 = *(v56 + 32);
      if (v67 >= 0)
      {
        v69 = v56 + 24;
      }

      else
      {
        v69 = *(v56 + 24);
      }

      if (v67 >= 0)
      {
        v70 = *(v56 + 47);
      }

      else
      {
        v70 = *(v56 + 32);
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      v75 = *(v56 + 72);
      v74 = v56 + 72;
      v73 = v75;
      v76 = *(v74 + 23);
      if (v76 >= 0)
      {
        v77 = v74;
      }

      else
      {
        v77 = v73;
      }

      if (v76 >= 0)
      {
        v78 = *(v74 + 23);
      }

      else
      {
        v78 = *(v74 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v77, v78);
      v79 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(v79, &v80);
      v79->__vftable = &unk_2883DE2B0;
    }
  }

  else if ((*(result + 109) & 1) != 0 && v2 > *(result + 116))
  {
    v32 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](v81);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
    v34 = MEMORY[0x277C68E30](v33, v2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " for Parameter ", 15);
    v36 = *(v32 + 24);
    v37 = *(v32 + 47);
    if (v37 >= 0)
    {
      v38 = v32 + 24;
    }

    else
    {
      v38 = *(v32 + 24);
    }

    if (v37 >= 0)
    {
      v39 = *(v32 + 47);
    }

    else
    {
      v39 = *(v32 + 32);
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " should be smaller equal to ", 28);
    v42 = MEMORY[0x277C68E30](v41, *(v32 + 116));
    v80.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v80, 1);
    v43 = *(v32 + 47);
    v44 = *(v32 + 32);
    if (v43 >= 0)
    {
      v45 = v32 + 24;
    }

    else
    {
      v45 = *(v32 + 24);
    }

    if (v43 >= 0)
    {
      v46 = *(v32 + 47);
    }

    else
    {
      v46 = *(v32 + 32);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v45, v46);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    v51 = *(v32 + 72);
    v50 = v32 + 72;
    v49 = v51;
    v52 = *(v50 + 23);
    if (v52 >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = v49;
    }

    if (v52 >= 0)
    {
      v54 = *(v50 + 23);
    }

    else
    {
      v54 = *(v50 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v53, v54);
    v55 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v55, &v80);
    v55->__vftable = &unk_2883DE2B0;
  }

  return result;
}

void sub_274DD6428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  (*(*a1 + 64))(a1, &v5, *(a2 + a1[12]));
  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v9);
}

void sub_274DD660C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274DD6854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::set_range(uint64_t result, int a2, int a3)
{
  *(result + 112) = a2;
  *(result + 116) = a3;
  *(result + 108) = 257;
  return result;
}

void dmlc::parameter::FieldEntry<xgboost::DataSplitMode>::~FieldEntry(uint64_t a1)
{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::parameter::FieldEntry<long long>::~FieldEntry(void **a1)
{
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<long long>,long long>::SetDefault(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Required parameter ", 19);
    v4 = *(v2 + 47);
    if (v4 >= 0)
    {
      v5 = v2 + 24;
    }

    else
    {
      v5 = *(v2 + 24);
    }

    if (v4 >= 0)
    {
      v6 = *(v2 + 47);
    }

    else
    {
      v6 = *(v2 + 32);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " of ", 4);
    v11 = *(v2 + 48);
    v10 = v2 + 48;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2883DE2B0;
  }

  *(a2 + *(result + 96)) = *(result + 104);
  return result;
}

void sub_274DD6B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<long long>,long long>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v34, a3, 8);
  MEMORY[0x277C68D80](v34, a2 + *(a1 + 96));
  v6 = v34[0];
  v7 = *(&v36[1].__locale_ + *(v34[0] - 24));
  if ((v7 & 5) == 0 && (v7 & 2) == 0)
  {
    while (1)
    {
      v8 = std::istream::get();
      if (v8 == -1)
      {
        v10 = 0;
        v11 = (v34 + *(v34[0] - 24));
        goto LABEL_11;
      }

      if (v8 > 0x20u || ((1 << v8) & 0x100003600) == 0)
      {
        break;
      }

      v6 = v34[0];
      if ((*(&v36[1].__locale_ + *(v34[0] - 24)) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v11 = (v34 + *(v34[0] - 24));
    v10 = v11->__rdstate_ | 4;
LABEL_11:
    std::ios_base::clear(v11, v10);
    v6 = v34[0];
  }

LABEL_12:
  if ((*(&v36[1].__locale_ + *(v6 - 24)) & 5) != 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid Parameter format for ", 29);
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = a1 + 24;
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " expect ", 8);
    v21 = *(a1 + 48);
    v20 = a1 + 48;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " but value='", 12);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v32.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v32, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v32);
    exception->__vftable = &unk_2883DE2B0;
  }

  v34[0] = *MEMORY[0x277D82820];
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::istream::~istream();
  return MEMORY[0x277C690D0](&v38);
}

void sub_274DD6EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v49 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      std::istringstream::~istringstream(&a48);
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v48);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<long long>,long long>::Check(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + *(result + 96));
  v3 = *(result + 113);
  if (*(result + 112))
  {
    v4 = *(result + 120);
    if (*(result + 113))
    {
      if (v2 < v4 || v2 > *(result + 128))
      {
        v5 = result;
        std::ostringstream::basic_ostringstream[abi:ne200100](v81);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
        v7 = MEMORY[0x277C68E60](v6, v2);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " for Parameter ", 15);
        v9 = *(v5 + 24);
        v10 = *(v5 + 47);
        if (v10 >= 0)
        {
          v11 = v5 + 24;
        }

        else
        {
          v11 = *(v5 + 24);
        }

        if (v10 >= 0)
        {
          v12 = *(v5 + 47);
        }

        else
        {
          v12 = *(v5 + 32);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " exceed bound [", 15);
        v15 = MEMORY[0x277C68E60](v14, *(v5 + 120));
        v80.__r_.__value_.__s.__data_[0] = 44;
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v80, 1);
        v17 = MEMORY[0x277C68E60](v16, *(v5 + 128));
        v80.__r_.__value_.__s.__data_[0] = 93;
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v80, 1);
        v80.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v80, 1);
        v19 = *(v5 + 47);
        v20 = *(v5 + 32);
        if (v19 >= 0)
        {
          v21 = v5 + 24;
        }

        else
        {
          v21 = *(v5 + 24);
        }

        if (v19 >= 0)
        {
          v22 = *(v5 + 47);
        }

        else
        {
          v22 = *(v5 + 32);
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
        v27 = *(v5 + 72);
        v26 = v5 + 72;
        v25 = v27;
        v28 = *(v26 + 23);
        if (v28 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v25;
        }

        if (v28 >= 0)
        {
          v30 = *(v26 + 23);
        }

        else
        {
          v30 = *(v26 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v80);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    else if (v2 < v4)
    {
      v56 = result;
      std::ostringstream::basic_ostringstream[abi:ne200100](v81);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
      v58 = MEMORY[0x277C68E60](v57, v2);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " for Parameter ", 15);
      v60 = *(v56 + 24);
      v61 = *(v56 + 47);
      if (v61 >= 0)
      {
        v62 = v56 + 24;
      }

      else
      {
        v62 = *(v56 + 24);
      }

      if (v61 >= 0)
      {
        v63 = *(v56 + 47);
      }

      else
      {
        v63 = *(v56 + 32);
      }

      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v62, v63);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " should be greater equal to ", 28);
      v66 = MEMORY[0x277C68E60](v65, *(v56 + 120));
      v80.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v80, 1);
      v67 = *(v56 + 47);
      v68 = *(v56 + 32);
      if (v67 >= 0)
      {
        v69 = v56 + 24;
      }

      else
      {
        v69 = *(v56 + 24);
      }

      if (v67 >= 0)
      {
        v70 = *(v56 + 47);
      }

      else
      {
        v70 = *(v56 + 32);
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      v75 = *(v56 + 72);
      v74 = v56 + 72;
      v73 = v75;
      v76 = *(v74 + 23);
      if (v76 >= 0)
      {
        v77 = v74;
      }

      else
      {
        v77 = v73;
      }

      if (v76 >= 0)
      {
        v78 = *(v74 + 23);
      }

      else
      {
        v78 = *(v74 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v77, v78);
      v79 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(v79, &v80);
      v79->__vftable = &unk_2883DE2B0;
    }
  }

  else if ((*(result + 113) & 1) != 0 && v2 > *(result + 128))
  {
    v32 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](v81);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
    v34 = MEMORY[0x277C68E60](v33, v2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " for Parameter ", 15);
    v36 = *(v32 + 24);
    v37 = *(v32 + 47);
    if (v37 >= 0)
    {
      v38 = v32 + 24;
    }

    else
    {
      v38 = *(v32 + 24);
    }

    if (v37 >= 0)
    {
      v39 = *(v32 + 47);
    }

    else
    {
      v39 = *(v32 + 32);
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " should be smaller equal to ", 28);
    v42 = MEMORY[0x277C68E60](v41, *(v32 + 128));
    v80.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v80, 1);
    v43 = *(v32 + 47);
    v44 = *(v32 + 32);
    if (v43 >= 0)
    {
      v45 = v32 + 24;
    }

    else
    {
      v45 = *(v32 + 24);
    }

    if (v43 >= 0)
    {
      v46 = *(v32 + 47);
    }

    else
    {
      v46 = *(v32 + 32);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v45, v46);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    v51 = *(v32 + 72);
    v50 = v32 + 72;
    v49 = v51;
    v52 = *(v50 + 23);
    if (v52 >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = v49;
    }

    if (v52 >= 0)
    {
      v54 = *(v50 + 23);
    }

    else
    {
      v54 = *(v50 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v53, v54);
    v55 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v55, &v80);
    v55->__vftable = &unk_2883DE2B0;
  }

  return result;
}

void sub_274DD73C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<long long>,long long>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  (*(*a1 + 64))(a1, &v5, *(a2 + a1[12]));
  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v9);
}

void sub_274DD75AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<long long>,long long>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274DD77F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<long long>,long long>::set_range(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 112) = 257;
  return result;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<long long>,long long>::set_lower_bound(uint64_t result, uint64_t a2)
{
  *(result + 120) = a2;
  *(result + 112) = 1;
  return result;
}

uint64_t std::vector<std::shared_ptr<xgboost::DMatrix>>::__init_with_size[abi:ne200100]<std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<xgboost::DMatrix>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274DD78D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<xgboost::DMatrix>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>,std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<xgboost::DMatrix>>,std::shared_ptr<xgboost::DMatrix>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<xgboost::DMatrix>>,std::shared_ptr<xgboost::DMatrix>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<xgboost::DMatrix>>,std::shared_ptr<xgboost::DMatrix>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<xgboost::DMatrix>>,std::shared_ptr<xgboost::DMatrix>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

uint64_t dmlc::Registry<xgboost::TreeUpdaterReg>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void xgboost::TreeUpdater::Create(uint64_t a1, uint64_t a2, __int16 a3)
{
  dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  v6 = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(&qword_280AF73F0, a1);
  if (v6 == &qword_280AF73F8 || (v7 = v6[7]) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_updater.cc", 21);
    v9 = dmlc::LogMessageFatal::GetEntry(&v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown tree updater ", 21);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
    __break(1u);
  }

  else
  {
    *(std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator()(v7 + 72, a3) + 8) = a2;
  }
}

uint64_t std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_274DD8070(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xgboost::MetaInfo *a11, int a12, __int16 a13, char a14)
{
  v16 = v14[36];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v14[34];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v14[32];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v14[30];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v14[28];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  xgboost::MetaInfo::~MetaInfo(v15);
}

void sub_274DD851C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xgboost::MetaInfo *a11, int a12, __int16 a13, char a14)
{
  v16 = v14[36];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v14[34];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v14[32];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v14[30];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v14[28];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  xgboost::MetaInfo::~MetaInfo(v15);
}

void sub_274DD89C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xgboost::MetaInfo *a11, int a12, __int16 a13, char a14)
{
  v16 = v14[36];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v14[34];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v14[32];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v14[30];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v14[28];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  xgboost::MetaInfo::~MetaInfo(v15);
}

void sub_274DD8E04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xgboost::MetaInfo *a11)
{
  v12 = v11[36];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v11[34];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v11[32];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = v11[30];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = v11[28];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  xgboost::MetaInfo::~MetaInfo(a11);
}

void sub_274DD9248(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xgboost::MetaInfo *a11)
{
  v13 = v11[36];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v11[34];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = v11[32];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = v11[30];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v11[28];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  xgboost::MetaInfo::~MetaInfo(v12);
}

void sub_274DD96D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xgboost::MetaInfo *a11, int a12, __int16 a13, char a14)
{
  v16 = v14[36];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v14[34];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v14[32];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v14[30];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v14[28];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  xgboost::MetaInfo::~MetaInfo(v15);
}

uint64_t xgboost::data::SimpleDMatrix::Info(xgboost::data::SimpleDMatrix *this)
{
  return this + 8;
}

{
  return this + 8;
}

void sub_274DDA8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xgboost::DMatrix *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v18 - 96);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::data::SimpleDMatrix::GetColumnBatches(xgboost::data::SimpleDMatrix *this)
{
  if (!*(this + 29))
  {
    operator new();
  }

  operator new();
}

void xgboost::data::SimpleDMatrix::GetSortedColumnBatches(xgboost::data::SimpleDMatrix *this)
{
  if (!*(this + 31))
  {
    operator new();
  }

  operator new();
}

void xgboost::data::SimpleDMatrix::GetEllpackBatches(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 264))
  {
    LODWORD(v5) = *a2;
    goto LABEL_13;
  }

  v4 = *(a1 + 296);
  v5 = *a2;
  v6 = HIDWORD(*a2);
  if (*(a2 + 8))
  {
    *a2;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 == -1;
    }

    if (!v7 || *(a2 + 16) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *a2;
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 == -1;
    }

    if (!v10)
    {
LABEL_21:
      if ((*(a2 + 24) & 1) == 0 && v4 == v5 && !((v5 ^ v4) >> 32) && *(a1 + 328) == *(a2 + 32))
      {
        goto LABEL_25;
      }

LABEL_13:
      v11 = 0;
      v12 = v5;
      if ((v5 & 0x80000000) == 0)
      {
        v9 = *(a2 + 4);
        v11 = 2;
        v12 = v9;
        if (v9 < 2)
        {
          dmlc::LogCheckFormat<int,int>(&v12, &v11);
        }

        operator new();
      }

      dmlc::LogCheckFormat<int,int>(&v12, &v11);
    }
  }

LABEL_25:
  operator new();
}

void sub_274DDB13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  v14 = a10;
  a10 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v14);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::data::anonymous namespace::CheckEmpty(uint64_t a1, uint64_t a2)
{
  v3 = *a1 != -1 || *(a1 + 4) != 0;
  if (*(a1 + 8) && *(a1 + 16))
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = *a2 == -1 && *(a2 + 4) == 0;
    if (*(a2 + 8))
    {
      if (*(a2 + 16))
      {
        v5 = 0;
      }

      if (v5)
      {
        goto LABEL_24;
      }
    }

    else if (v5)
    {
LABEL_24:
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/simple_dmatrix.cc", 80);
      v7 = dmlc::LogMessageFatal::GetEntry(&v10);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: r != BatchParam{}", 31);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Batch parameter is not initialized.", 35);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }
  }
}

void xgboost::data::SimpleDMatrix::GetGradientIndex(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 280))
  {
LABEL_20:
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(*&v4, v5) + 4) >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/simple_dmatrix.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v15, __p, 102, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Generating new Gradient Index.", 30);
      xgboost::ConsoleLogger::~ConsoleLogger(&v15);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LODWORD(__p[0]) = *(a2 + 4);
    v16 = 2;
    if (SLODWORD(__p[0]) < 2)
    {
      dmlc::LogCheckFormat<int,int>(__p, &v16);
    }

    LODWORD(__p[0]) = *a2;
    v16 = -1;
    if (LODWORD(__p[0]) != -1)
    {
      dmlc::LogCheckFormat<int,int>(__p, &v16);
    }

    v12 = *(a2 + 24);
    operator new();
  }

  v6 = *(a1 + 296);
  v4 = *(a1 + 328);
  v7 = *a2;
  v5.n128_u64[0] = *(a2 + 32);
  v8 = HIDWORD(*a2);
  if (*(a2 + 8))
  {
    *a2;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 == -1;
    }

    if (v9 && *(a2 + 16) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *a2;
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7 == -1;
    }

    if (v11)
    {
      goto LABEL_28;
    }
  }

  if ((*(a2 + 24) & 1) != 0 || v6 != v7 || (v7 ^ v6) >> 32 || v4 != v5.n128_f64[0])
  {
    goto LABEL_20;
  }

LABEL_28:
  operator new();
}

void sub_274DDB860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_274DDBCDC()
{
  v2 = v0[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v0[34];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v0[32];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v0[30];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v0[28];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  xgboost::MetaInfo::~MetaInfo(v1);
}

uint64_t xgboost::data::SimpleDMatrix::SaveToLocalFile(uint64_t a1, char *a2)
{
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = dmlc::Stream::Create(v3, "w", 0);
  v8 = -21759;
  (*(*v4 + 8))(v4, &v8, 4);
  xgboost::MetaInfo::SaveBinary(a1 + 8, v4);
  v5 = **(a1 + 216);
  v9 = (v5[1] - *v5) >> 3;
  (*(*v4 + 8))(v4, &v9, 8);
  if (v9)
  {
    (*(*v4 + 8))(v4, *v5, v5[1] - *v5);
  }

  v6 = *(*(a1 + 216) + 8);
  v9 = (v6[1] - *v6) >> 3;
  (*(*v4 + 8))(v4, &v9, 8);
  if (v9)
  {
    (*(*v4 + 8))(v4, *v6, v6[1] - *v6);
  }

  return (*(*v4 + 24))(v4);
}

void sub_274DDCC2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xgboost::MetaInfo *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  v30 = a22[36];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = a22[34];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = a22[32];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = a22[30];
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = a22[28];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  xgboost::MetaInfo::~MetaInfo(a10);
}

void xgboost::data::SimpleDMatrix::~SimpleDMatrix(xgboost::data::SimpleDMatrix *this)
{
  xgboost::data::SimpleDMatrix::~SimpleDMatrix(this);
}

{
  *this = &unk_2883E5648;
  v2 = *(this + 36);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 34);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 28);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  xgboost::MetaInfo::~MetaInfo((this + 8));
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<signed char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E56F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<signed char>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<signed char>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_", 19);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    do
    {
      v8 = *v6++;
      result = v8;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<signed char>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_", 19);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E57A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<unsigned char>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_ && row_idx < length_", 40);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    LOBYTE(v8) = *(a1[5] + a2);
    v9 = v8;
  }

  else
  {
    v9 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v9;
  return result;
}

BOOL xgboost::data::PrimitiveColumn<unsigned char>::IsValidElement(uint64_t a1, unint64_t a2, float a3)
{
  v3 = *(a1 + 32);
  if (v3 && ((*(v3 + (a2 >> 3)) >> (a2 & 7)) & 1) == 0)
  {
    return 0;
  }

  LOBYTE(a3) = *(*(a1 + 40) + a2);
  return *(a1 + 48) != LODWORD(a3);
}

float xgboost::data::PrimitiveColumn<unsigned char>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_", 19);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    do
    {
      v8 = *v6++;
      result = v8;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<unsigned char>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_", 19);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E5850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<short>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 2 * a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<short>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 2 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 2;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<short>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 2 * v5;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      v8 -= 2;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<unsigned short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E58F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<unsigned short>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_ && row_idx < length_", 40);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    LOWORD(v8) = *(a1[5] + 2 * a2);
    v9 = v8;
  }

  else
  {
    v9 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v9;
  return result;
}

BOOL xgboost::data::PrimitiveColumn<unsigned short>::IsValidElement(uint64_t a1, unint64_t a2, float a3)
{
  v3 = *(a1 + 32);
  if (v3 && ((*(v3 + (a2 >> 3)) >> (a2 & 7)) & 1) == 0)
  {
    return 0;
  }

  LOWORD(a3) = *(*(a1 + 40) + 2 * a2);
  return *(a1 + 48) != LODWORD(a3);
}

float xgboost::data::PrimitiveColumn<unsigned short>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 2 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 2;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<unsigned short>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 2 * v5;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      v8 -= 2;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E59A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<int>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 4 * a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<int>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 4 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<int>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 4 * v5;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E5A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<unsigned int>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 4 * a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<unsigned int>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 4 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<unsigned int>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 4 * v5;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E5AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<long long>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 8 * a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<long long>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 8 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<long long>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 8 * v5;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<unsigned long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E5B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<unsigned long long>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 8 * a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<unsigned long long>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 8 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::PrimitiveColumn<unsigned long long>::AsUint64Vector@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 8 * v5;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E5C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<float>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 4 * a2);
  }

  else
  {
    v8 = 2143289344;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

float xgboost::data::PrimitiveColumn<float>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 4 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

float xgboost::data::PrimitiveColumn<float>::AsUint64Vector@<S0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 4 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void std::__shared_ptr_emplace<xgboost::data::PrimitiveColumn<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E5CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::PrimitiveColumn<double>::GetElement@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[5] || a1[2] <= a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 847);
    v10 = dmlc::LogMessageFatal::GetEntry(&v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: data_ && row_idx < length_", 40);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Column is empty or out-of-bound index of the column", 51);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v6 = a1[1];
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v8 = *(a1[5] + 8 * a2);
  }

  else
  {
    v8 = NAN;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  return result;
}

BOOL xgboost::data::PrimitiveColumn<double>::IsValidElement(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 && ((*(v2 + (a2 >> 3)) >> (a2 & 7)) & 1) == 0 || (*(*(a1 + 40) + 8 * a2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = *(*(a1 + 40) + 8 * a2);
  return *(a1 + 48) != v4;
}

float xgboost::data::PrimitiveColumn<double>::AsFloatVector@<S0>(uint64_t a1@<X0>, float **a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 860);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<float>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 8 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = result;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

double xgboost::data::PrimitiveColumn<double>::AsUint64Vector@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/adapter.h", 868);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: data_", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Column is empty", 15);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  std::vector<unsigned long long>::vector[abi:ne200100](a2, *(a1 + 16));
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = 8 * v5;
    do
    {
      v9 = *v6++;
      result = v9;
      *v7++ = v9;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void *xgboost::data::SimpleBatchIteratorImpl<xgboost::SparsePage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5D90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void xgboost::data::SimpleBatchIteratorImpl<xgboost::SparsePage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5D90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::SparsePage>::operator*(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./simple_batch_iterator.h", 20);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 8);
  }

  return result;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::SparsePage>::operator++(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::SparsePage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *xgboost::data::SimpleBatchIteratorImpl<xgboost::CSCPage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5DE8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void xgboost::data::SimpleBatchIteratorImpl<xgboost::CSCPage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5DE8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::CSCPage>::operator*(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./simple_batch_iterator.h", 20);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 8);
  }

  return result;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::CSCPage>::operator++(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::CSCPage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *xgboost::data::SimpleBatchIteratorImpl<xgboost::SortedCSCPage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5E40;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void xgboost::data::SimpleBatchIteratorImpl<xgboost::SortedCSCPage>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5E40;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::SortedCSCPage>::operator*(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./simple_batch_iterator.h", 20);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 8);
  }

  return result;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::SortedCSCPage>::operator++(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::SortedCSCPage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

xgboost::EllpackPage **std::unique_ptr<xgboost::EllpackPage>::~unique_ptr[abi:ne200100](xgboost::EllpackPage **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xgboost::EllpackPage::~EllpackPage(v2);
    MEMORY[0x277C69180]();
  }

  return a1;
}

void std::__shared_ptr_pointer<xgboost::EllpackPage *,std::shared_ptr<xgboost::EllpackPage>::__shared_ptr_default_delete<xgboost::EllpackPage,xgboost::EllpackPage>,std::allocator<xgboost::EllpackPage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

xgboost::EllpackPage *std::__shared_ptr_pointer<xgboost::EllpackPage *,std::shared_ptr<xgboost::EllpackPage>::__shared_ptr_default_delete<xgboost::EllpackPage,xgboost::EllpackPage>,std::allocator<xgboost::EllpackPage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    xgboost::EllpackPage::~EllpackPage(result);

    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::EllpackPage *,std::shared_ptr<xgboost::EllpackPage>::__shared_ptr_default_delete<xgboost::EllpackPage,xgboost::EllpackPage>,std::allocator<xgboost::EllpackPage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<xgboost::GHistIndexMatrix>::shared_ptr[abi:ne200100]<xgboost::GHistIndexMatrix,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_274DDFA00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<xgboost::GHistIndexMatrix>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

xgboost::GHistIndexMatrix **std::unique_ptr<xgboost::GHistIndexMatrix>::~unique_ptr[abi:ne200100](xgboost::GHistIndexMatrix **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xgboost::GHistIndexMatrix::~GHistIndexMatrix(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<xgboost::GHistIndexMatrix *,std::shared_ptr<xgboost::GHistIndexMatrix>::__shared_ptr_default_delete<xgboost::GHistIndexMatrix,xgboost::GHistIndexMatrix>,std::allocator<xgboost::GHistIndexMatrix>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

xgboost::GHistIndexMatrix *std::__shared_ptr_pointer<xgboost::GHistIndexMatrix *,std::shared_ptr<xgboost::GHistIndexMatrix>::__shared_ptr_default_delete<xgboost::GHistIndexMatrix,xgboost::GHistIndexMatrix>,std::allocator<xgboost::GHistIndexMatrix>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    xgboost::GHistIndexMatrix::~GHistIndexMatrix(result);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::GHistIndexMatrix *,std::shared_ptr<xgboost::GHistIndexMatrix>::__shared_ptr_default_delete<xgboost::GHistIndexMatrix,xgboost::GHistIndexMatrix>,std::allocator<xgboost::GHistIndexMatrix>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SimpleBatchIteratorImpl<xgboost::GHistIndexMatrix>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5F88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void xgboost::data::SimpleBatchIteratorImpl<xgboost::GHistIndexMatrix>::~SimpleBatchIteratorImpl(void *a1)
{
  *a1 = &unk_2883E5F88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::GHistIndexMatrix>::operator*(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./simple_batch_iterator.h", 20);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 8);
  }

  return result;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::GHistIndexMatrix>::operator++(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t xgboost::data::SimpleBatchIteratorImpl<xgboost::GHistIndexMatrix>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274DDFD28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::Registry<xgboost::TreeGenReg>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void xgboost::RegTree::LoadCategoricalSplit<true>(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "categories_segments");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v31 = xgboost::Cast<xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10> const,xgboost::Value>(*v4);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "categories_sizes");
  v5 = (*(**a2 + 24))(*a2, &__p);
  v30 = xgboost::Cast<xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10> const,xgboost::Value>(*v5);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "categories_nodes");
  v6 = (*(**a2 + 24))(*a2, &__p);
  v7 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v6);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "categories");
  v8 = (*(**a2 + 24))(*a2, &__p);
  v9 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v8);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v10 = v7[2];
  if (v10 == v7[3])
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = *v10;
  }

  v12 = *(a1 + 12);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (v13 != v11)
    {
      v20 = (*(a1 + 280) + 16 * v13);
      *v20 = (v9[3] - v9[2]) >> 2;
      v20[1] = 0;
LABEL_38:
      if (++v13 >= v12)
      {
        return;
      }
    }

    v15 = *(v31[2] + 8 * v14);
    v16 = *(v30[2] + 8 * v14);
    v17 = v16 + v15;
    v32 = v16;
    v36 = 0;
    if (!v16)
    {
      dmlc::LogCheckFormat<long long,int>(&v32, &v36);
    }

    if (v16 < 1)
    {
      LODWORD(v32) = 0x80000000;
      v36 = 0x80000000;
LABEL_26:
      dmlc::LogCheckFormat<int,int>(&v32, &v36);
    }

    v18 = 0x80000000;
    v19 = v15;
    do
    {
      if (v18 <= *(v9[2] + 4 * v19))
      {
        v18 = *(v9[2] + 4 * v19);
      }

      ++v19;
    }

    while (v19 < v17);
    LODWORD(v32) = 0x80000000;
    v36 = v18;
    if (v18 == 0x80000000)
    {
      goto LABEL_26;
    }

    LODWORD(v32) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&__p, vcvtpd_u64_f64(vcvtd_n_f64_u64(v18 + 1, 5uLL)));
    v21 = __p;
    v22 = (v34 - __p) >> 2;
    v23 = v9[2];
    do
    {
      v24 = *(v23 + 4 * v15);
      if (v22 <= v24 >> 5)
      {
        std::terminate();
      }

      v21[v24 >> 5] |= 1 << ~v24;
      ++v15;
    }

    while (v15 < v17);
    v25 = *(a1 + 264) - *(a1 + 256);
    std::vector<float>::resize((a1 + 256), v22 + (v25 >> 2));
    v26 = __p;
    if (v34 == __p)
    {
      v27 = __p;
    }

    else
    {
      memmove((v25 + *(a1 + 256)), __p, v34 - __p);
      v26 = __p;
      v27 = v34;
    }

    v28 = (*(a1 + 280) + 16 * v13);
    *v28 = v25 >> 2;
    v28[1] = (v27 - v26) >> 2;
    ++v14;
    v29 = v7[2];
    if (v14 == (v7[3] - v29) >> 2)
    {
      v11 = 0xFFFFFFFFLL;
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = *(v29 + 4 * v14);
      if (!v26)
      {
LABEL_37:
        v12 = *(a1 + 12);
        goto LABEL_38;
      }
    }

    v34 = v26;
    operator delete(v26);
    goto LABEL_37;
  }
}

void sub_274DE0328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::RegTree::LoadCategoricalSplit<false>(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "categories_segments");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v30 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v4);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "categories_sizes");
  v5 = (*(**a2 + 24))(*a2, &__p);
  v29 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v5);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "categories_nodes");
  v6 = (*(**a2 + 24))(*a2, &__p);
  v31 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v6);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "categories");
  v7 = (*(**a2 + 24))(*a2, &__p);
  v8 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v7);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v9 = *(v31 + 2);
  if (v9 == *(v31 + 3))
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v9) + 4);
  }

  v11 = *(a1 + 12);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    while (v12 != v10)
    {
      v20 = (*(a1 + 280) + 16 * v12);
      *v20 = (v8[3] - v8[2]) >> 3;
      v20[1] = 0;
LABEL_36:
      if (++v12 >= v11)
      {
        return;
      }
    }

    v14 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v30[2] + 8 * v13)) + 2);
    v15 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v29[2] + 8 * v13)) + 2);
    v16 = v15 + v14;
    v32 = v15;
    v36 = 0;
    if (!v15)
    {
      dmlc::LogCheckFormat<long long,int>(&v32, &v36);
    }

    if (v15 < 1)
    {
      LODWORD(v32) = 0x80000000;
      v36 = 0x80000000;
LABEL_26:
      dmlc::LogCheckFormat<int,int>(&v32, &v36);
    }

    v17 = 0x80000000;
    v18 = v14;
    do
    {
      v19 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v8[2] + 8 * v18)) + 4);
      if (v17 <= v19)
      {
        v17 = v19;
      }

      ++v18;
    }

    while (v18 < v16);
    LODWORD(v32) = 0x80000000;
    v36 = v17;
    if (v17 == 0x80000000)
    {
      goto LABEL_26;
    }

    LODWORD(v32) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&__p, vcvtpd_u64_f64(vcvtd_n_f64_u64(v17 + 1, 5uLL)));
    v21 = __p;
    v22 = (v34 - __p) >> 2;
    do
    {
      v23 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v8[2] + 8 * v14)) + 2);
      if (v22 <= v23 >> 5)
      {
        std::terminate();
      }

      v21[v23 >> 5] |= 1 << ~v23;
      ++v14;
    }

    while (v14 < v16);
    v24 = *(a1 + 264) - *(a1 + 256);
    std::vector<float>::resize((a1 + 256), ((v34 - __p) >> 2) + (v24 >> 2));
    v25 = __p;
    if (v34 == __p)
    {
      v26 = __p;
    }

    else
    {
      memmove((v24 + *(a1 + 256)), __p, v34 - __p);
      v25 = __p;
      v26 = v34;
    }

    v27 = (*(a1 + 280) + 16 * v12);
    *v27 = v24 >> 2;
    v27[1] = (v26 - v25) >> 2;
    ++v13;
    v28 = *(v31 + 2);
    if (v13 == (*(v31 + 3) - v28) >> 3)
    {
      v10 = 0xFFFFFFFFLL;
      if (!v25)
      {
LABEL_35:
        v11 = *(a1 + 12);
        goto LABEL_36;
      }
    }

    else
    {
      v10 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v28 + 8 * v13)) + 4);
      v25 = __p;
      if (!__p)
      {
        goto LABEL_35;
      }
    }

    v34 = v25;
    operator delete(v25);
    goto LABEL_35;
  }
}

void sub_274DE08E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::TreeGenerator::Create(uint64_t a1, uint64_t a2, std::string::value_type a3)
{
  v6 = std::string::find(a1, 58, 0);
  memset(&__p, 0, sizeof(__p));
  memset(&i, 0, sizeof(i));
  if (v6 == -1)
  {
    std::string::operator=(&__p, a1);
  }

  else
  {
    v7 = v6;
    std::string::basic_string(&v24, a1, 0, v6, &v27);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v24;
    v8 = *(a1 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a1 + 8);
    }

    std::string::basic_string(&v24, a1, v7 + 1, v8 + ~v7, &v27);
    if (SHIBYTE(i.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(i.__r_.__value_.__l.__data_);
    }

    for (i = v24; ; std::string::replace(&i, v9, 1uLL, ""))
    {
      v9 = std::string::find(&i, 39, 0);
      if (v9 == -1)
      {
        break;
      }
    }
  }

  dmlc::Registry<xgboost::TreeGenReg>::Get();
  dmlc::Registry<xgboost::TreeGenReg>::Get();
  v10 = qword_280AF70F8;
  if (!qword_280AF70F8)
  {
    goto LABEL_23;
  }

  v11 = &qword_280AF70F8;
  do
  {
    v12 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF70F0, (v10 + 32), &__p.__r_.__value_.__l.__data_);
    if (v12)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if (!v12)
    {
      v11 = v10;
    }

    v10 = *(v10 + v13);
  }

  while (v10);
  if (v11 == &qword_280AF70F8 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF70F0, &__p.__r_.__value_.__l.__data_, v11 + 4) || (v14 = v11[7]) == 0)
  {
LABEL_23:
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_model.cc", 197);
    v16 = dmlc::LogMessageFatal::GetEntry(&v24);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Unknown Model Builder:", 22);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_p, size);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v14 = 0;
  }

  if (SHIBYTE(i.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, i.__r_.__value_.__l.__data_, i.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = i;
  }

  v20 = *(v14 + 96);
  v24.__r_.__value_.__s.__data_[0] = a3;
  if (!v20)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v21 = (*(*v20 + 48))(v20, a2, &v23, &v24);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(i.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(i.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_274DE0C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::GetSplitCategories(xgboost *this@<X0>, const xgboost::RegTree *a2@<X1>, const void **a3@<X8>)
{
  v4 = *(this + 29);
  v19[2] = *(this + 30) - v4;
  v19[3] = v4;
  v5 = *(this + 32);
  v20[0] = (*(this + 33) - v5) >> 2;
  v20[1] = v5;
  v6 = *(this + 35);
  v21 = (*(this + 36) - v6) >> 4;
  v22 = v6;
  if (v21 <= a2)
  {
    goto LABEL_21;
  }

  xgboost::common::Span<float,18446744073709551615ul>::subspan(v20, *(v6 + 16 * a2), *(v6 + 16 * a2 + 8), v19);
  v7 = v19[0];
  v8 = v19[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (32 * v7)
  {
    v9 = 0;
    v10 = 0;
    while (v10 >> 5 < v7)
    {
      if ((*(v8 + 4 * (v10 >> 5)) & (1 << ~v10)) != 0)
      {
        v11 = a3[2];
        if (v9 >= v11)
        {
          v12 = *a3;
          v13 = v9 - *a3;
          v14 = v13 >> 2;
          v15 = (v13 >> 2) + 1;
          if (v15 >> 62)
          {
            std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
          }

          v16 = v11 - v12;
          if (v16 >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v17);
          }

          *(4 * v14) = v10;
          v9 = (4 * v14 + 4);
          memcpy(0, v12, v13);
          v18 = *a3;
          *a3 = 0;
          a3[1] = v9;
          a3[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v9 = v10;
          v9 += 4;
        }

        a3[1] = v9;
      }

      if (32 * v7 == ++v10)
      {
        return;
      }
    }

LABEL_21:
    std::terminate();
  }
}

void sub_274DE0E1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::PrintCatsAsSet(uint64_t *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "{", 1);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      MEMORY[0x277C68E20](&v8, *(v2 + 4 * v3));
      v2 = *a1;
      v4 = (a1[1] - *a1) >> 2;
      if (v3 != v4 - 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ",", 1);
        v2 = *a1;
        v4 = (a1[1] - *a1) >> 2;
      }

      ++v3;
    }

    while (v3 < v4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "}", 1);
  std::stringbuf::str();
  v7[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8 = v5;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x277C690D0](&v12);
}

void sub_274DE104C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::RegTree::DumpModel(uint64_t a1, uint64_t a2, std::string::value_type a3, uint64_t a4)
{
  v5 = xgboost::TreeGenerator::Create(a4, a2, a3);
  (*(*v5 + 88))(v5, a1);
  std::stringbuf::str();
  v6 = *(*v5 + 80);

  return v6(v5);
}

uint64_t xgboost::RegTree::Equal(xgboost::RegTree *this, const xgboost::RegTree *a2)
{
  if (*(this + 4) - *(this + 3) != *(a2 + 4) - *(a2 + 3))
  {
    return 0;
  }

  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  std::deque<int>::push_back(v17, &xgboost::RegTree::kRoot);
  v4 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    while (1)
    {
      v5 = v4 - 1;
      v6 = *(*(*(&v17[0] + 1) + (((v18 + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v18 + v5) & 0x3FF));
      *(&v18 + 1) = v5;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100](v17, 1);
      v7 = *(this + 20);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v7) >> 2) <= v6 || (v8 = *(a2 + 20), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 21) - v8) >> 2) <= v6))
      {
        std::vector<xgboost::FeatureType>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v7 + 20 * v6;
      v10 = v8 + 20 * v6;
      if (*v9 != *v10)
      {
        break;
      }

      v11 = *(v9 + 4);
      if (v11 != *(v10 + 4) || *(v9 + 8) != *(v10 + 8) || *(v9 + 12) != *(v10 + 12) || *(v9 + 16) != *(v10 + 16))
      {
        break;
      }

      v16 = *(v9 + 4);
      v12 = *(v9 + 8);
      v15 = v12;
      if (v11 != -1)
      {
        std::deque<int>::push_back(v17, &v16);
        v12 = v15;
      }

      if (v12 != -1)
      {
        std::deque<int>::push_back(v17, &v15);
      }

      v4 = *(&v18 + 1);
      if (!*(&v18 + 1))
      {
        goto LABEL_15;
      }
    }

    v13 = 0;
  }

  else
  {
LABEL_15:
    v13 = 1;
  }

  std::deque<int>::~deque[abi:ne200100](v17);
  return v13;
}

void sub_274DE12DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<int>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::RegTree::GetNumLeaves(xgboost::RegTree *this)
{
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  std::deque<int>::push_back(v12, &xgboost::RegTree::kRoot);
  v2 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = v2 - 1;
      v5 = *(*(*(&v12[0] + 1) + (((v13 + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v13 + v4) & 0x3FF));
      *(&v13 + 1) = v4;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100](v12, 1);
      v6 = *(this + 20) + 20 * v5;
      v7 = *(v6 + 4);
      v11 = v7;
      v8 = *(v6 + 8);
      v10 = v8;
      if (v7 == -1)
      {
        v3 = (v3 + 1);
      }

      else
      {
        v3 = v3;
      }

      if (v7 != -1)
      {
        std::deque<int>::push_back(v12, &v11);
        v8 = v10;
      }

      if (v8 != -1)
      {
        std::deque<int>::push_back(v12, &v10);
      }

      v2 = *(&v13 + 1);
    }

    while (*(&v13 + 1));
  }

  else
  {
    v3 = 0;
  }

  std::deque<int>::~deque[abi:ne200100](v12);
  return v3;
}

void sub_274DE13F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<int>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::RegTree::GetNumSplitNodes(xgboost::RegTree *this)
{
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  std::deque<int>::push_back(v12, &xgboost::RegTree::kRoot);
  v2 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = v2 - 1;
      v5 = *(*(*(&v12[0] + 1) + (((v13 + v4) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v13 + v4) & 0x3FF));
      *(&v13 + 1) = v4;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100](v12, 1);
      v6 = *(this + 20) + 20 * v5;
      v7 = *(v6 + 4);
      v11 = v7;
      v8 = *(v6 + 8);
      v10 = v8;
      if (v7 == -1)
      {
        v3 = v3;
      }

      else
      {
        v3 = (v3 + 1);
      }

      if (v7 != -1)
      {
        std::deque<int>::push_back(v12, &v11);
        v8 = v10;
      }

      if (v8 != -1)
      {
        std::deque<int>::push_back(v12, &v10);
      }

      v2 = *(&v13 + 1);
    }

    while (*(&v13 + 1));
  }

  else
  {
    v3 = 0;
  }

  std::deque<int>::~deque[abi:ne200100](v12);
  return v3;
}

void sub_274DE1500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<int>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::RegTree::ExpandNode(xgboost::RegTree *this, int a2, unsigned int a3, float a4, int a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, int a13)
{
  v26 = xgboost::RegTree::AllocNode(this);
  v27 = xgboost::RegTree::AllocNode(this);
  v28 = *(this + 20);
  v29 = v28 + 20 * a2;
  if (*(v29 + 4) != -1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v41);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_model.cc", 793);
    v39 = dmlc::LogMessageFatal::GetEntry(&v41);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Check failed: node.IsLeaf()", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v41);
    v28 = *(this + 20);
  }

  *(v28 + 20 * v26) = a2 | 0x80000000;
  *(v29 + 4) = v26;
  *(v29 + 8) = v27;
  *(v28 + 20 * v27) = a2;
  v30 = a3 | 0x80000000;
  if (!a5)
  {
    v30 = a3;
  }

  *(v29 + 12) = v30;
  *(v29 + 16) = a4;
  v31 = *(this + 20) + 20 * v26;
  *(v31 + 16) = a7;
  *(v31 + 4) = -1;
  *(v31 + 8) = a13;
  v32 = *(this + 20) + 20 * v27;
  *(v32 + 16) = a8;
  *(v32 + 4) = -1;
  *(v32 + 8) = a13;
  v33 = *(this + 26);
  v34 = v33 + 16 * a2;
  *v34 = a9;
  *(v34 + 4) = a10;
  *(v34 + 8) = a6;
  *(v34 + 12) = 0;
  v35 = v33 + 16 * v26;
  *v35 = 0;
  *(v35 + 4) = a11;
  *(v35 + 8) = a7;
  *(v35 + 12) = 0;
  v36 = v33 + 16 * v27;
  *v36 = 0;
  *(v36 + 4) = a12;
  *(v36 + 8) = a8;
  *(v36 + 12) = 0;
  v37 = *(this + 29);
  if (*(this + 30) - v37 <= a2)
  {
    std::vector<xgboost::FeatureType>::__throw_out_of_range[abi:ne200100]();
  }

  *(v37 + a2) = 0;
}

uint64_t xgboost::RegTree::AllocNode(xgboost::RegTree *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = *(v3 - 4);
    *(this + 24) = v3 - 4;
    *(*(this + 20) + 20 * v4 + 12) = 0;
    *(this + 4) = v2 - 1;
  }

  else
  {
    v4 = *(this + 3);
    *(this + 3) = v4 + 1;
    v13 = 0x7FFFFFFF;
    v14 = v4 + 1;
    if (v4 == 2147483646)
    {
      dmlc::LogCheckFormat<int,int>(&v14, &v13);
    }

    std::vector<xgboost::RegTree::Node>::resize(this + 20, *(this + 3));
    std::vector<std::pair<double,double>>::resize(this + 26, *(this + 3));
    v5 = *(this + 3);
    v7 = *(this + 29);
    v6 = *(this + 30);
    LOBYTE(v12) = 0;
    v8 = v6 - v7;
    v9 = v5 >= v8;
    v10 = v5 - v8;
    if (v10 != 0 && v9)
    {
      std::vector<xgboost::FeatureType>::__append(this + 29, v10, &v12);
      v5 = *(this + 3);
    }

    else if (!v9)
    {
      *(this + 30) = v7 + v5;
    }

    std::vector<std::pair<double,double>>::resize(this + 35, v5);
  }

  return v4;
}

void sub_274DE1870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::RegTree::ExpandCategorical(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  xgboost::RegTree::ExpandNode(a1, a2, a3, NAN, a5, a6, a7, a8, a9, a10, a11, a12, -1);
  v15 = *(a1 + 264) - *(a1 + 256);
  std::vector<float>::resize((a1 + 256), *a4 + (v15 >> 2));
  if (*a4)
  {
    memmove((v15 + *(a1 + 256)), *(a4 + 8), 4 * *a4);
  }

  v16 = *(a1 + 232);
  if (*(a1 + 240) - v16 <= a2)
  {
    std::vector<xgboost::FeatureType>::__throw_out_of_range[abi:ne200100]();
  }

  *(v16 + a2) = 1;
  v17 = *(a1 + 280);
  if (a2 >= ((*(a1 + 288) - v17) >> 4))
  {
    std::vector<xgboost::FeatureType>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = *a4;
  v19 = (v17 + 16 * a2);
  *v19 = v15 >> 2;
  v19[1] = v18;
}

void xgboost::RegTree::Load(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v4 = (**a2)(a2, a1 + 8, 148);
  v22 = 148;
  v23 = v4;
  if (v4 != 148)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v23, &v22);
  }

  std::vector<xgboost::RegTree::Node>::resize((a1 + 160), *(a1 + 12));
  std::vector<std::pair<double,double>>::resize((a1 + 208), *(a1 + 12));
  LODWORD(v23) = *(a1 + 12);
  LODWORD(v22) = 0;
  if (!v23)
  {
    dmlc::LogCheckFormat<int,int>(&v23, &v22);
  }

  v6 = *(a1 + 160);
  v5 = *(a1 + 168);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 160);
  }

  v8 = (**a2)(a2, v7, v5 - v6);
  v22 = *(a1 + 168) - *(a1 + 160);
  v23 = v8;
  if (v8 != v22)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v23, &v22);
  }

  v10 = *(a1 + 208);
  v9 = *(a1 + 216);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 208);
  }

  v12 = (**a2)(a2, v11, v9 - v10);
  v22 = *(a1 + 216) - *(a1 + 208);
  v23 = v12;
  if (v12 != v22)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v23, &v22);
  }

  std::vector<int>::resize((a1 + 184), 0);
  LODWORD(v24) = 1;
  v13 = *(a1 + 12);
  if (v13 >= 2)
  {
    for (i = 1; i < v13; LODWORD(v24) = i)
    {
      if (*(*(a1 + 160) + 20 * i + 12) == -1)
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 184), &v24);
        i = v24;
        v13 = *(a1 + 12);
      }

      ++i;
    }
  }

  v15 = *(a1 + 16);
  LODWORD(v23) = (*(a1 + 192) - *(a1 + 184)) >> 2;
  LODWORD(v22) = v15;
  if (v15 != v23)
  {
    dmlc::LogCheckFormat<int,int>(&v23, &v22);
  }

  v16 = *(a1 + 12);
  v18 = *(a1 + 232);
  v17 = *(a1 + 240);
  LOBYTE(v24) = 0;
  v19 = v17 - v18;
  v20 = v16 >= v19;
  v21 = v16 - v19;
  if (v21 != 0 && v20)
  {
    std::vector<xgboost::FeatureType>::__append((a1 + 232), v21, &v24);
    v16 = *(a1 + 12);
  }

  else if (!v20)
  {
    *(a1 + 240) = v18 + v16;
  }

  std::vector<std::pair<double,double>>::resize((a1 + 280), v16);
}

void sub_274DE1EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_274DE1ED4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DE1EB8);
}

void sub_274DE1EE4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DE1EB8);
}

void sub_274DE1EF4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DE1EB8);
}

void sub_274DE1F04(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DE1EB8);
}

void sub_274DE1F14(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DE1EB8);
}

uint64_t xgboost::RegTree::Save(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v18 = -858993459 * ((*(a1 + 168) - *(a1 + 160)) >> 2);
  v19 = v4;
  if (v4 != v18)
  {
    dmlc::LogCheckFormat<int,int>(&v19, &v18);
  }

  v5 = *(a1 + 12);
  v18 = (*(a1 + 216) - *(a1 + 208)) >> 4;
  v19 = v5;
  if (v5 != v18)
  {
    dmlc::LogCheckFormat<int,int>(&v19, &v18);
  }

  v6 = *(a1 + 8);
  v18 = 1;
  v19 = v6;
  if (v6 != 1)
  {
    dmlc::LogCheckFormat<int,int>(&v19, &v18);
  }

  v7 = *(a1 + 12);
  v18 = 0;
  v19 = v7;
  if (!v7)
  {
    dmlc::LogCheckFormat<int,int>(&v19, &v18);
  }

  if (*(a1 + 256) != *(a1 + 264))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v17);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_model.cc", 871);
    v14 = dmlc::LogMessageFatal::GetEntry(&v17);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Check failed: !HasCategoricalSplit()", 36);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Please use JSON/UBJSON for saving models with categorical splits.", 65);
    dmlc::LogMessageFatal::~LogMessageFatal(&v17);
  }

  (*(*a2 + 8))(a2, a1 + 8, 148);
  v9 = *(a1 + 160);
  v8 = *(a1 + 168);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 160);
  }

  (*(*a2 + 8))(a2, v10, v8 - v9);
  if (*(a1 + 216) == *(a1 + 208))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 208);
  }

  return (*(*a2 + 8))(a2, v11, 0xCCCCCCCCCCCCCCD0 * ((*(a1 + 168) - *(a1 + 160)) >> 2));
}

void xgboost::RegTree::SaveCategoricalSplit(xgboost::RegTree *this, xgboost::Json *a2)
{
  v2 = this;
  v4 = (this + 12);
  v3 = *(this + 3);
  v71[0] = *(this + 30) - *(this + 29);
  if (v71[0] != v3)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v71, v4);
  }

  v71[0] = (*(this + 36) - *(this + 35)) >> 4;
  if (v71[0] != *(this + 3))
  {
    dmlc::LogCheckFormat<unsigned long,int>(v71, v4);
  }

  v76 = 0xA00000000;
  v74 = 0;
  v75 = &unk_2883E65F0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v71[1] = 0xA00000000;
  v71[0] = &unk_2883E65F0;
  v72 = 0;
  v73 = 0;
  v67 = 0x900000000;
  v65 = 0;
  v66 = &unk_2883E65A8;
  __p = 0;
  v69 = 0;
  v70 = 0;
  v62[3] = 0x900000000;
  v62[2] = &unk_2883E65A8;
  __src = 0;
  v64 = 0;
  v6 = *(this + 20);
  v5 = *(this + 21);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (*(*(v2 + 29) + v7) == 1)
      {
        v8 = v64;
        if (v64 >= v65)
        {
          v10 = __src;
          v11 = v64 - __src;
          v12 = (v64 - __src) >> 2;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
          }

          v14 = v65 - __src;
          if ((v65 - __src) >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
          v16 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v16 = v13;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v16);
          }

          v17 = (4 * v12);
          v18 = &v17[-((v64 - __src) >> 2)];
          *v17 = v7;
          v9 = (v17 + 1);
          memcpy(v18, v10, v11);
          v19 = __src;
          __src = v18;
          v64 = v9;
          v65 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v64 = v7;
          v9 = v8 + 4;
        }

        v64 = v9;
        v20 = (v69 - __p) >> 2;
        v21 = v78;
        v59 = v20;
        if (v78 >= v79)
        {
          v23 = v77;
          v24 = v78 - v77;
          v25 = (v78 - v77) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v27 = v79 - v77;
          if ((v79 - v77) >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          v15 = v27 >= 0x7FFFFFFFFFFFFFF8;
          v28 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v77, v28);
          }

          *(8 * v25) = v20;
          v22 = 8 * v25 + 8;
          memcpy(0, v23, v24);
          v29 = v77;
          v77 = 0;
          v78 = v22;
          v79 = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v78 = v20;
          v22 = (v21 + 1);
        }

        v78 = v22;
        v30 = (*(v2 + 35) + 16 * v7);
        v31 = *v30;
        v32 = v30[1];
        v33 = *(v2 + 32);
        v34 = v2;
        v62[0] = (*(v2 + 33) - v33) >> 2;
        v62[1] = v33;
        xgboost::common::Span<float,18446744073709551615ul>::subspan(v62, v31, v32, v60);
        v35 = v60[0];
        v36 = 32 * v60[0];
        if (32 * v60[0])
        {
          v37 = 0;
          v38 = v60[1];
          do
          {
            if (v37 >> 5 >= v35)
            {
              std::terminate();
            }

            if ((v38[v37 >> 5] & (1 << ~v37)) != 0)
            {
              v39 = v69;
              if (v69 >= v70)
              {
                v41 = __p;
                v42 = v69 - __p;
                v43 = (v69 - __p) >> 2;
                v44 = v43 + 1;
                if ((v43 + 1) >> 62)
                {
                  std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
                }

                v45 = v70 - __p;
                if ((v70 - __p) >> 1 > v44)
                {
                  v44 = v45 >> 1;
                }

                v15 = v45 >= 0x7FFFFFFFFFFFFFFCLL;
                v46 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v15)
                {
                  v46 = v44;
                }

                if (v46)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v46);
                }

                *(4 * v43) = v37;
                v40 = 4 * v43 + 4;
                memcpy(0, v41, v42);
                v47 = __p;
                __p = 0;
                v69 = v40;
                v70 = 0;
                if (v47)
                {
                  operator delete(v47);
                }
              }

              else
              {
                *v69 = v37;
                v40 = (v39 + 4);
              }

              v69 = v40;
            }

            ++v37;
          }

          while (v36 != v37);
        }

        v48 = ((v69 - __p) >> 2) - v59;
        v62[0] = v48;
        v49 = v73;
        if (v73 >= v74)
        {
          v51 = v72;
          v52 = v73 - v72;
          v53 = (v73 - v72) >> 3;
          v54 = v53 + 1;
          if ((v53 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v55 = v74 - v72;
          if ((v74 - v72) >> 2 > v54)
          {
            v54 = v55 >> 2;
          }

          v15 = v55 >= 0x7FFFFFFFFFFFFFF8;
          v56 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v56 = v54;
          }

          v2 = v34;
          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v72, v56);
          }

          *(8 * v53) = v48;
          v50 = 8 * v53 + 8;
          memcpy(0, v51, v52);
          v57 = v72;
          v72 = 0;
          v73 = v50;
          v74 = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v73 = v48;
          v50 = (v49 + 1);
          v2 = v34;
        }

        v73 = v50;
        v61 = 0;
        if (!v62[0])
        {
          dmlc::LogCheckFormat<unsigned long,int>(v62, &v61);
        }

        v6 = *(v2 + 20);
        v5 = *(v2 + 21);
      }

      ++v7;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2));
  }

  std::string::basic_string[abi:ne200100]<0>(v60, "categories_segments");
  (*(**a2 + 24))(*a2, v60);
  xgboost::Json::operator=<long long,(xgboost::Value::ValueKind)10>();
}

void sub_274DE2CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  *(v34 - 168) = a12;
  v36 = *(v34 - 152);
  if (v36)
  {
    *(v34 - 144) = v36;
    operator delete(v36);
  }

  *(v34 - 128) = a13;
  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E65A8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void *xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E65F0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::RegTree::LoadModel(xgboost::RegTree *this, char ***a2)
{
  std::string::basic_string[abi:ne200100]<0>(v189, "loss_changes");
  v4 = *(*(*(**a2 + 3))(*a2, v189) + 12);
  if (v190 < 0)
  {
    operator delete(v189[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v189, "split_indices");
  v5 = *(*(*(**a2 + 3))(*a2, v189) + 12);
  if (v190 < 0)
  {
    operator delete(v189[0]);
  }

  v6 = v4 == 7 && v5 == 10;
  v158 = a2;
  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "tree_param");
    v43 = (*(**a2 + 3))(*a2, &__p);
    xgboost::FromJson<xgboost::TreeParam>(v189, *v43, this + 8);
    *v184 = v189;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v184);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    v185 = *(this + 3);
    *v184 = v185;
    LODWORD(v183) = 0;
    if (!v185)
    {
      dmlc::LogCheckFormat<int,int>(v184, &v183);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "loss_changes");
    v44 = (*(**a2 + 3))(*a2, &__p);
    v180 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v44);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v180[3] - v180[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "sum_hessian");
    v45 = (*(**a2 + 3))(*a2, &__p);
    v176 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v45);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v176[3] - v176[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "base_weights");
    v46 = (*(**a2 + 3))(*a2, &__p);
    v47 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v46);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v47[3] - v47[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "left_children");
    v48 = (*(**a2 + 3))(*a2, &__p);
    v49 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v48);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v49[3] - v49[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "right_children");
    v50 = (*(**a2 + 3))(*a2, &__p);
    v51 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v50);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v51[3] - v51[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "parents");
    v52 = (*(**a2 + 3))(*a2, &__p);
    v53 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v52);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v53[3] - v53[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "split_indices");
    v54 = (*(**a2 + 3))(*a2, &__p);
    v55 = xgboost::Cast<xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10> const,xgboost::Value>(*v54);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v55[3] - v55[2]) >> 3;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "split_conditions");
    v56 = (*(**a2 + 3))(*a2, &__p);
    v57 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v56);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v57[3] - v57[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "default_left");
    v58 = (*(**a2 + 3))(*a2, &__p);
    v59 = xgboost::Cast<xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8> const,xgboost::Value>(*v58);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = v59[3] - v59[2];
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    v60 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "split_type");
    v61 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v60 + 16, &__p);
    v62 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2) + 24;
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v187 = 0;
    v188 = 0;
    if (v62 != v61)
    {
      std::string::basic_string[abi:ne200100]<0>(v184, "split_type");
      v63 = (*(**v158 + 3))(*v158, v184);
      v64 = xgboost::Cast<xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8> const,xgboost::Value>(*v63);
      if (&__p != (v64 + 2))
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v64[2], v64[3], v64[3] - v64[2]);
      }

      if ((v184[23] & 0x80000000) != 0)
      {
        operator delete(*v184);
      }
    }

    std::vector<xgboost::RTreeNodeStat>::vector[abi:ne200100](v184, v185);
    v65 = *(this + 26);
    if (v65)
    {
      *(this + 27) = v65;
      operator delete(v65);
      *(this + 26) = 0;
      *(this + 27) = 0;
      *(this + 28) = 0;
    }

    *(this + 13) = *v184;
    *(this + 28) = *&v184[16];
    std::vector<xgboost::RegTree::Node>::vector[abi:ne200100](v184, v185);
    v66 = *(this + 20);
    if (v66)
    {
      *(this + 21) = v66;
      operator delete(v66);
      *(this + 20) = 0;
      *(this + 21) = 0;
      *(this + 22) = 0;
    }

    *(this + 10) = *v184;
    *(this + 22) = *&v184[16];
    std::vector<xgboost::FeatureType>::vector[abi:ne200100](v184, v185);
    v67 = *(this + 29);
    if (v67)
    {
      *(this + 30) = v67;
      operator delete(v67);
      *(this + 29) = 0;
      *(this + 30) = 0;
      *(this + 31) = 0;
    }

    *(this + 232) = *v184;
    *(this + 31) = *&v184[16];
    std::vector<xgboost::RegTree::Segment>::vector[abi:ne200100](v184, v185);
    v68 = *(this + 35);
    if (v68)
    {
      *(this + 36) = v68;
      operator delete(v68);
      *(this + 35) = 0;
      *(this + 36) = 0;
      *(this + 37) = 0;
    }

    v69 = *v184;
    *(this + 35) = *v184;
    v70 = *&v184[8];
    *(this + 18) = *&v184[8];
    v183 = (v70 - v69) >> 4;
    if (v183 != v185)
    {
      dmlc::LogCheckFormat<int,unsigned long>(&v185, &v183);
    }

    if (v185 >= 1)
    {
      v71 = 0;
      v72 = 0;
      for (i = 0; i < v185; ++i)
      {
        v74 = (*(this + 26) + v71);
        *v74 = *(v180[2] + 4 * i);
        v74[1] = *(v176[2] + 4 * i);
        v74[2] = *(v47[2] + 4 * i);
        v75 = (*(this + 20) + v72);
        v76 = *(v49[2] + 4 * i);
        v77 = *(v51[2] + 4 * i);
        v78 = *(v55[2] + 8 * i);
        v79 = *(v57[2] + 4 * i);
        if (*(v59[2] + i) == 1)
        {
          LODWORD(v78) = v78 | 0x80000000;
        }

        *v75 = *(v53[2] + 4 * i) | 0x80000000;
        v75[1] = v76;
        v75[2] = v77;
        v75[3] = v78;
        v75[4] = v79;
        if (v62 != v61)
        {
          *(*(this + 29) + i) = *(__p + i);
        }

        v72 += 20;
        v71 += 16;
      }
    }
  }

  else
  {
    if (v4 != 7 || v5 == 10)
    {
      if (v4 != 7 && v5 == 10)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "tree_param");
        v115 = (*(**a2 + 3))(*a2, &__p);
        xgboost::FromJson<xgboost::TreeParam>(v189, *v115, this + 8);
        *v184 = v189;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v184);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        v185 = *(this + 3);
        *v184 = v185;
        LODWORD(v183) = 0;
        if (!v185)
        {
          dmlc::LogCheckFormat<int,int>(v184, &v183);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "loss_changes");
        v116 = (*(**a2 + 3))(*a2, &__p);
        v178 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v116);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v178[3] - v178[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "sum_hessian");
        v117 = (*(**a2 + 3))(*a2, &__p);
        v174 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v117);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v174[3] - v174[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "base_weights");
        v118 = (*(**a2 + 3))(*a2, &__p);
        v172 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v118);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v172[3] - v172[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "left_children");
        v119 = (*(**a2 + 3))(*a2, &__p);
        v170 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v119);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v170[3] - v170[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "right_children");
        v120 = (*(**a2 + 3))(*a2, &__p);
        v168 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v120);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v168[3] - v168[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "parents");
        v121 = (*(**a2 + 3))(*a2, &__p);
        v166 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v121);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v166[3] - v166[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "split_indices");
        v122 = (*(**a2 + 3))(*a2, &__p);
        v164 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v122);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v164[3] - v164[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "split_conditions");
        v123 = (*(**a2 + 3))(*a2, &__p);
        v162 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v123);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v162[3] - v162[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "default_left");
        v124 = (*(**a2 + 3))(*a2, &__p);
        v160 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v124);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v160[3] - v160[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        v125 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "split_type");
        v182 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v125 + 16, &__p);
        v126 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2) + 24;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        __p = 0;
        v187 = 0;
        v188 = 0;
        if (v126 != v182)
        {
          std::string::basic_string[abi:ne200100]<0>(v184, "split_type");
          v127 = (*(**a2 + 3))(*a2, v184);
          v128 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v127);
          if (&__p != (v128 + 16))
          {
            std::vector<xgboost::Json>::__assign_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(&__p, *(v128 + 2), *(v128 + 3), (*(v128 + 3) - *(v128 + 2)) >> 3);
          }

          if ((v184[23] & 0x80000000) != 0)
          {
            operator delete(*v184);
          }
        }

        std::vector<xgboost::RTreeNodeStat>::vector[abi:ne200100](v184, v185);
        v129 = *(this + 26);
        if (v129)
        {
          *(this + 27) = v129;
          operator delete(v129);
          *(this + 26) = 0;
          *(this + 27) = 0;
          *(this + 28) = 0;
        }

        *(this + 13) = *v184;
        *(this + 28) = *&v184[16];
        std::vector<xgboost::RegTree::Node>::vector[abi:ne200100](v184, v185);
        v130 = *(this + 20);
        if (v130)
        {
          *(this + 21) = v130;
          operator delete(v130);
          *(this + 20) = 0;
          *(this + 21) = 0;
          *(this + 22) = 0;
        }

        *(this + 10) = *v184;
        *(this + 22) = *&v184[16];
        std::vector<xgboost::FeatureType>::vector[abi:ne200100](v184, v185);
        v131 = *(this + 29);
        if (v131)
        {
          *(this + 30) = v131;
          operator delete(v131);
          *(this + 29) = 0;
          *(this + 30) = 0;
          *(this + 31) = 0;
        }

        *(this + 232) = *v184;
        *(this + 31) = *&v184[16];
        std::vector<xgboost::RegTree::Segment>::vector[abi:ne200100](v184, v185);
        v132 = *(this + 35);
        if (v132)
        {
          *(this + 36) = v132;
          operator delete(v132);
          *(this + 35) = 0;
          *(this + 36) = 0;
          *(this + 37) = 0;
        }

        v133 = *v184;
        *(this + 35) = *v184;
        v134 = *&v184[8];
        *(this + 18) = *&v184[8];
        v183 = (v134 - v133) >> 4;
        if (v183 != v185)
        {
          dmlc::LogCheckFormat<int,unsigned long>(&v185, &v183);
        }

        if (v185 >= 1)
        {
          v135 = 0;
          v136 = 0;
          for (j = 0; j < v185; ++j)
          {
            v138 = *(this + 26);
            *(v138 + v135) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v178[2] + 8 * j)) + 4);
            v139 = v138 + v135;
            *(v139 + 4) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v174[2] + 8 * j)) + 4);
            *(v139 + 8) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v172[2] + 8 * j)) + 4);
            v140 = *(this + 20);
            v141 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v170[2] + 8 * j)) + 4);
            v142 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v168[2] + 8 * j)) + 4);
            v143 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v166[2] + 8 * j)) + 4);
            v144 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v164[2] + 8 * j)) + 4);
            v145 = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v162[2] + 8 * j)) + 4);
            v146 = xgboost::GetElem<xgboost::JsonBoolean,xgboost::Json>(v160[2], j);
            v147 = (v140 + v136);
            *v147 = v143 | 0x80000000;
            v147[1] = v141;
            if (v146)
            {
              v148 = v144 | 0x80000000;
            }

            else
            {
              v148 = v144;
            }

            v147[2] = v142;
            v147[3] = v148;
            v147[4] = v145;
            if (v126 != v182)
            {
              *(*(this + 29) + j) = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(__p + j)) + 2);
            }

            v136 += 20;
            v135 += 16;
          }
        }

        *v184 = &__p;
        std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](v184);
        if (v126 == v182)
        {
          goto LABEL_283;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "tree_param");
        v9 = (*(**a2 + 3))(*a2, &__p);
        xgboost::FromJson<xgboost::TreeParam>(v189, *v9, this + 8);
        *v184 = v189;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v184);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        v185 = *(this + 3);
        *v184 = v185;
        LODWORD(v183) = 0;
        if (!v185)
        {
          dmlc::LogCheckFormat<int,int>(v184, &v183);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "loss_changes");
        v10 = (*(**a2 + 3))(*a2, &__p);
        v175 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v10);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v175[3] - v175[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "sum_hessian");
        v11 = (*(**a2 + 3))(*a2, &__p);
        v173 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v11);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v173[3] - v173[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "base_weights");
        v12 = (*(**a2 + 3))(*a2, &__p);
        v171 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v12);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v171[3] - v171[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "left_children");
        v13 = (*(**a2 + 3))(*a2, &__p);
        v169 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v13);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v169[3] - v169[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "right_children");
        v14 = (*(**a2 + 3))(*a2, &__p);
        v167 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v14);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v167[3] - v167[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "parents");
        v15 = (*(**a2 + 3))(*a2, &__p);
        v165 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v15);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v165[3] - v165[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "split_indices");
        v16 = (*(**a2 + 3))(*a2, &__p);
        v163 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v16);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v163[3] - v163[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "split_conditions");
        v17 = (*(**a2 + 3))(*a2, &__p);
        v161 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v17);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v161[3] - v161[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "default_left");
        v18 = (*(**a2 + 3))(*a2, &__p);
        v159 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v18);
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        *v184 = (v159[3] - v159[2]) >> 3;
        if (*v184 != v185)
        {
          dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
        }

        v19 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
        std::string::basic_string[abi:ne200100]<0>(&__p, "split_type");
        v179 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v19 + 16, &__p);
        v20 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2) + 24;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(__p);
        }

        __p = 0;
        v187 = 0;
        v188 = 0;
        if (v20 != v179)
        {
          std::string::basic_string[abi:ne200100]<0>(v184, "split_type");
          v21 = (*(**a2 + 3))(*a2, v184);
          v22 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v21);
          if (&__p != (v22 + 16))
          {
            std::vector<xgboost::Json>::__assign_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(&__p, *(v22 + 2), *(v22 + 3), (*(v22 + 3) - *(v22 + 2)) >> 3);
          }

          if ((v184[23] & 0x80000000) != 0)
          {
            operator delete(*v184);
          }
        }

        std::vector<xgboost::RTreeNodeStat>::vector[abi:ne200100](v184, v185);
        v23 = *(this + 26);
        if (v23)
        {
          *(this + 27) = v23;
          operator delete(v23);
          *(this + 26) = 0;
          *(this + 27) = 0;
          *(this + 28) = 0;
        }

        *(this + 13) = *v184;
        *(this + 28) = *&v184[16];
        std::vector<xgboost::RegTree::Node>::vector[abi:ne200100](v184, v185);
        v24 = *(this + 20);
        if (v24)
        {
          *(this + 21) = v24;
          operator delete(v24);
          *(this + 20) = 0;
          *(this + 21) = 0;
          *(this + 22) = 0;
        }

        *(this + 10) = *v184;
        *(this + 22) = *&v184[16];
        std::vector<xgboost::FeatureType>::vector[abi:ne200100](v184, v185);
        v25 = *(this + 29);
        if (v25)
        {
          *(this + 30) = v25;
          operator delete(v25);
          *(this + 29) = 0;
          *(this + 30) = 0;
          *(this + 31) = 0;
        }

        *(this + 232) = *v184;
        *(this + 31) = *&v184[16];
        std::vector<xgboost::RegTree::Segment>::vector[abi:ne200100](v184, v185);
        v26 = *(this + 35);
        if (v26)
        {
          *(this + 36) = v26;
          operator delete(v26);
          *(this + 35) = 0;
          *(this + 36) = 0;
          *(this + 37) = 0;
        }

        v27 = *v184;
        *(this + 35) = *v184;
        v28 = *&v184[8];
        *(this + 18) = *&v184[8];
        v183 = (v28 - v27) >> 4;
        v157 = v4;
        if (v183 != v185)
        {
          dmlc::LogCheckFormat<int,unsigned long>(&v185, &v183);
        }

        if (v185 >= 1)
        {
          v29 = 0;
          v30 = 0;
          for (k = 0; k < v185; ++k)
          {
            v32 = *(this + 26);
            *(v32 + v29) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v175[2] + 8 * k)) + 4);
            v33 = v32 + v29;
            *(v33 + 4) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v173[2] + 8 * k)) + 4);
            *(v33 + 8) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v171[2] + 8 * k)) + 4);
            v34 = *(this + 20);
            v35 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v169[2] + 8 * k)) + 4);
            v36 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v167[2] + 8 * k)) + 4);
            v37 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v165[2] + 8 * k)) + 4);
            v38 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v163[2] + 8 * k)) + 4);
            v39 = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v161[2] + 8 * k)) + 4);
            v40 = xgboost::GetElem<xgboost::JsonBoolean,xgboost::Json>(v159[2], k);
            v41 = (v34 + v30);
            *v41 = v37 | 0x80000000;
            v41[1] = v35;
            if (v40)
            {
              v42 = v38 | 0x80000000;
            }

            else
            {
              v42 = v38;
            }

            v41[2] = v36;
            v41[3] = v42;
            v41[4] = v39;
            if (v20 != v179)
            {
              *(*(this + 29) + k) = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(__p + k)) + 2);
            }

            v30 += 20;
            v29 += 16;
          }
        }

        *v184 = &__p;
        std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](v184);
        if (v20 == v179)
        {
          goto LABEL_283;
        }

        if (v157 == 7)
        {
          goto LABEL_215;
        }
      }

      xgboost::RegTree::LoadCategoricalSplit<false>();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "tree_param");
    v80 = (*(**a2 + 3))(*a2, &__p);
    xgboost::FromJson<xgboost::TreeParam>(v189, *v80, this + 8);
    *v184 = v189;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v184);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    v185 = *(this + 3);
    *v184 = v185;
    LODWORD(v183) = 0;
    if (!v185)
    {
      dmlc::LogCheckFormat<int,int>(v184, &v183);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "loss_changes");
    v81 = (*(**a2 + 3))(*a2, &__p);
    v181 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v81);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v181[3] - v181[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "sum_hessian");
    v82 = (*(**a2 + 3))(*a2, &__p);
    v177 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v82);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v177[3] - v177[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "base_weights");
    v83 = (*(**a2 + 3))(*a2, &__p);
    v84 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v83);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v84[3] - v84[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "left_children");
    v85 = (*(**a2 + 3))(*a2, &__p);
    v86 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v85);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v86[3] - v86[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "right_children");
    v87 = (*(**a2 + 3))(*a2, &__p);
    v88 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v87);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v88[3] - v88[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "parents");
    v89 = (*(**a2 + 3))(*a2, &__p);
    v90 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v89);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v90[3] - v90[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "split_indices");
    v91 = (*(**a2 + 3))(*a2, &__p);
    v92 = xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(*v91);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v92[3] - v92[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "split_conditions");
    v93 = (*(**a2 + 3))(*a2, &__p);
    v94 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(*v93);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = (v94[3] - v94[2]) >> 2;
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "default_left");
    v95 = (*(**a2 + 3))(*a2, &__p);
    v96 = xgboost::Cast<xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8> const,xgboost::Value>(*v95);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    *v184 = v96[3] - v96[2];
    if (*v184 != v185)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v184, &v185);
    }

    v97 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "split_type");
    v61 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v97 + 16, &__p);
    v62 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2) + 24;
    if (SHIBYTE(v188) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v187 = 0;
    v188 = 0;
    if (v62 != v61)
    {
      std::string::basic_string[abi:ne200100]<0>(v184, "split_type");
      v98 = (*(**v158 + 3))(*v158, v184);
      v99 = xgboost::Cast<xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8> const,xgboost::Value>(*v98);
      if (&__p != (v99 + 2))
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v99[2], v99[3], v99[3] - v99[2]);
      }

      if ((v184[23] & 0x80000000) != 0)
      {
        operator delete(*v184);
      }
    }

    std::vector<xgboost::RTreeNodeStat>::vector[abi:ne200100](v184, v185);
    v100 = *(this + 26);
    if (v100)
    {
      *(this + 27) = v100;
      operator delete(v100);
      *(this + 26) = 0;
      *(this + 27) = 0;
      *(this + 28) = 0;
    }

    *(this + 13) = *v184;
    *(this + 28) = *&v184[16];
    std::vector<xgboost::RegTree::Node>::vector[abi:ne200100](v184, v185);
    v101 = *(this + 20);
    if (v101)
    {
      *(this + 21) = v101;
      operator delete(v101);
      *(this + 20) = 0;
      *(this + 21) = 0;
      *(this + 22) = 0;
    }

    *(this + 10) = *v184;
    *(this + 22) = *&v184[16];
    std::vector<xgboost::FeatureType>::vector[abi:ne200100](v184, v185);
    v102 = *(this + 29);
    if (v102)
    {
      *(this + 30) = v102;
      operator delete(v102);
      *(this + 29) = 0;
      *(this + 30) = 0;
      *(this + 31) = 0;
    }

    *(this + 232) = *v184;
    *(this + 31) = *&v184[16];
    std::vector<xgboost::RegTree::Segment>::vector[abi:ne200100](v184, v185);
    v103 = *(this + 35);
    if (v103)
    {
      *(this + 36) = v103;
      operator delete(v103);
      *(this + 35) = 0;
      *(this + 36) = 0;
      *(this + 37) = 0;
    }

    v104 = *v184;
    *(this + 35) = *v184;
    v105 = *&v184[8];
    *(this + 18) = *&v184[8];
    v183 = (v105 - v104) >> 4;
    if (v183 != v185)
    {
      dmlc::LogCheckFormat<int,unsigned long>(&v185, &v183);
    }

    if (v185 >= 1)
    {
      v106 = 0;
      v107 = 0;
      for (m = 0; m < v185; ++m)
      {
        v109 = (*(this + 26) + v106);
        *v109 = *(v181[2] + 4 * m);
        v109[1] = *(v177[2] + 4 * m);
        v109[2] = *(v84[2] + 4 * m);
        v110 = (*(this + 20) + v107);
        v111 = *(v86[2] + 4 * m);
        v112 = *(v88[2] + 4 * m);
        v113 = *(v92[2] + 4 * m);
        v114 = *(v94[2] + 4 * m);
        if (*(v96[2] + m) == 1)
        {
          v113 |= 0x80000000;
        }

        *v110 = *(v90[2] + 4 * m) | 0x80000000;
        v110[1] = v111;
        v110[2] = v112;
        v110[3] = v113;
        v110[4] = v114;
        if (v62 != v61)
        {
          *(*(this + 29) + m) = *(__p + m);
        }

        v107 += 20;
        v106 += 16;
      }
    }
  }

  if (__p)
  {
    v187 = __p;
    operator delete(__p);
  }

  if (v62 != v61)
  {
LABEL_215:
    xgboost::RegTree::LoadCategoricalSplit<true>();
  }

LABEL_283:
  std::vector<std::pair<double,double>>::resize(this + 35, *(this + 3));
  v149 = *(this + 29);
  v150 = *(this + 30) - v149;
  if (v150 >= 1)
  {
    bzero(v149, v150);
  }

  *(this + 24) = *(this + 23);
  v151 = *(this + 3);
  v152 = 1;
  LODWORD(v189[0]) = 1;
  if (v151 > 1)
  {
    do
    {
      if (*(*(this + 20) + 20 * v152 + 12) == -1)
      {
        std::vector<int>::push_back[abi:ne200100](this + 23, v189);
        v152 = v189[0];
        v151 = *(this + 3);
      }

      LODWORD(v189[0]) = ++v152;
    }

    while (v152 < v151);
    if (v151 >= 2)
    {
      v153 = *(this + 20);
      v154 = (v153 + 20);
      for (n = 1; n != v151; ++n)
      {
        *v154 = *v154 & 0x7FFFFFFF | ((n == *(v153 + 20 * (*v154 & 0x7FFFFFFF) + 4)) << 31);
        v154 += 5;
      }
    }
  }

  v156 = *(this + 4);
  LODWORD(__p) = (*(this + 24) - *(this + 23)) >> 2;
  *v184 = v156;
  if (v156 != __p)
  {
    dmlc::LogCheckFormat<int,int>(&__p, v184);
  }

  __p = ((*(this + 36) - *(this + 35)) >> 4);
  if (__p != *(this + 3))
  {
    dmlc::LogCheckFormat<unsigned long,int>(&__p, this + 3);
  }
}

void sub_274DE6E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void **p_p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  p_p = &__p;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&p_p);
  _Unwind_Resume(a1);
}

void xgboost::RegTree::SaveModel(xgboost::RegTree *this, xgboost::Json *a2)
{
  v3 = -858993459 * ((*(this + 21) - *(this + 20)) >> 2);
  LODWORD(v8[0]) = *(this + 3);
  LODWORD(v7.__r_.__value_.__l.__data_) = v3;
  if (LODWORD(v8[0]) != v3)
  {
    dmlc::LogCheckFormat<int,int>(v8, &v7);
  }

  v4 = (*(this + 27) - *(this + 26)) >> 4;
  LODWORD(v8[0]) = *(this + 3);
  LODWORD(v7.__r_.__value_.__l.__data_) = v4;
  if (LODWORD(v8[0]) != v4)
  {
    dmlc::LogCheckFormat<int,int>(v8, &v7);
  }

  v8[1] = 0x300000000;
  v10[0] = 0;
  v10[1] = 0;
  v8[0] = &unk_2883E6E50;
  v9 = v10;
  xgboost::TreeParam::__MANAGER__(this);
  dmlc::parameter::ParamManager::GetDict(&stru_280AF6FE8, v11);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v7, v11[0], v11[1]);
  v6 = v11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = v7.__r_.__value_.__r.__words[0];
  if (v7.__r_.__value_.__l.__data_ != &v7.__r_.__value_.__r.__words[1])
  {
    xgboost::JsonString::JsonString(v11, (v7.__r_.__value_.__r.__words[0] + 56));
    v6 = (v5 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v9, (v5 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7, v7.__r_.__value_.__l.__size_);
  std::string::basic_string[abi:ne200100]<0>(v11, "tree_param");
  (*(**a2 + 24))(*a2, v11);
  xgboost::Json::operator=();
}

void sub_274DE81F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a43)
  {
    operator delete(a43);
  }

  *(v44 - 240) = &unk_2883E65A8;
  v46 = *(v44 - 224);
  if (v46)
  {
    *(v44 - 216) = v46;
    operator delete(v46);
  }

  *(v44 - 200) = &unk_2883E16B0;
  v47 = *(v44 - 184);
  if (v47)
  {
    *(v44 - 176) = v47;
    operator delete(v47);
  }

  *(v44 - 160) = &unk_2883E16B0;
  v48 = *(v44 - 144);
  if (v48)
  {
    *(v44 - 136) = v48;
    operator delete(v48);
  }

  *(v44 - 120) = &unk_2883E16B0;
  v49 = *(v44 - 104);
  if (v49)
  {
    *(v44 - 96) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E6560;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t xgboost::RegTree::CalculateContributionsApprox(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a3;
  v8 = *(a3 + 8);
  v21 = 0;
  v10 = v8 - v9;
  v22 = v10 >> 2;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v22, &v21);
  }

  v11 = **a3;
  *(a4 + a2[1] - *a2) = v11 + *(a4 + a2[1] - *a2);
  result = a1[20];
  if (*(result + 4) != -1)
  {
    Next = 0;
    v14 = a1[29];
    v20[0] = a1[30] - v14;
    v20[1] = v14;
    v15 = a1[32];
    v20[2] = (a1[33] - v15) >> 2;
    v20[3] = v15;
    v16 = a1[35];
    v20[4] = (a1[36] - v16) >> 4;
    v20[5] = v16;
    do
    {
      v17 = v11;
      v18 = *(result + 12) & 0x7FFFFFFF;
      Next = xgboost::predictor::GetNextNode<true,true>(result, Next, *(*a2 + 4 * v18) == -1, v20, *(*a2 + 4 * v18));
      v11 = *(*a3 + 4 * Next);
      v19 = *(a4 + 4 * v18) + (v11 - v17);
      *(a4 + 4 * v18) = v19;
      result = a1[20] + 20 * Next;
    }

    while (*(result + 4) != -1);
    *(a4 + 4 * v18) = v19 + (*(result + 16) - v11);
  }

  return result;
}

void sub_274DE895C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = a9;
  a9 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::ExtendPath(uint64_t result, unsigned int a2, int a3, float a4, float a5)
{
  v5 = result + 16 * a2;
  *v5 = a3;
  *(v5 + 4) = a4;
  *(v5 + 8) = a5;
  v6 = 0.0;
  if (!a2)
  {
    v6 = 1.0;
  }

  *(v5 + 12) = v6;
  if ((a2 - 1) >= 0)
  {
    v7 = (a2 + 1);
    v8 = result + 12;
    v9 = 16 * a2;
    v10 = 16 * (a2 - 1);
    v11 = 1;
    do
    {
      v12 = *(v8 + v10);
      *(v8 + v9) = *(v8 + v9) + (((v12 * a5) * a2) / v7);
      *(v8 + v10) = ((v12 * a4) * v11) / v7;
      v9 -= 16;
      --a2;
      v10 -= 16;
      ++v11;
    }

    while (v10 != -16);
  }

  return result;
}

double xgboost::UnwindPath(uint64_t a1, unsigned int a2, unsigned int a3, double result)
{
  v4 = a2 - 1;
  if ((a2 - 1) >= 0)
  {
    v5 = a1 + 16 * a3;
    v6 = *(v5 + 4);
    LODWORD(result) = *(v5 + 8);
    v7 = *(a1 + 16 * a2 + 12);
    v8 = (a2 + 1);
    v9 = (a1 + 16 * v4 + 12);
    v10 = 1;
    v11 = a2;
    do
    {
      v12 = *v9;
      if (*&result == 0.0)
      {
        v13 = (v12 * v8) / (v6 * v10);
      }

      else
      {
        v13 = (v7 * v8) / (*&result * v11);
        v7 = v12 - (((v6 * v13) * v10) / v8);
      }

      v11 = v4;
      *v9 = v13;
      v9 -= 4;
      ++v10;
    }

    while (v4-- > 0);
  }

  if (a3 < a2)
  {
    v15 = (a1 + 16 * a3 + 20);
    v16 = a2 - a3;
    do
    {
      *(v15 - 5) = *(v15 - 1);
      result = *v15;
      *(v15 - 2) = *v15;
      v15 += 2;
      --v16;
    }

    while (v16);
  }

  return result;
}

float xgboost::UnwoundPathSum(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) < 0)
  {
    return 0.0;
  }

  v4 = a1 + 16 * a3;
  v6 = *(v4 + 4);
  v5 = *(v4 + 8);
  v7 = *(a1 + 16 * a2 + 12);
  v8 = (a1 + 16 * v3 + 12);
  v9 = (a2 + 1);
  v10 = *MEMORY[0x277D82828];
  v11 = *(MEMORY[0x277D82828] + 24);
  v12 = 0.0;
  v13 = 1;
  do
  {
    if (v5 == 0.0)
    {
      if (v6 == 0.0)
      {
        if (*v8 != 0.0)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " (", 2);
          v16 = *v8;
          v17 = std::ostream::operator<<();
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " vs. ", 5);
          v19 = MEMORY[0x277C68E20](v18, 0);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ") ", 2);
          operator new();
        }
      }

      else
      {
        v12 = v12 + ((*v8 / v6) / (v13 / v9));
      }
    }

    else
    {
      v14 = (v7 * v9) / (v5 * a2);
      v12 = v12 + v14;
      v7 = *v8 + (-(v14 * v6) * (v13 / v9));
    }

    a2 = v3;
    v8 -= 4;
    ++v13;
  }

  while (v3-- > 0);
  return v12;
}

void sub_274DE8E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::RegTree::TreeShap(void *a1, void *a2, uint64_t a3, signed int a4, unsigned int a5, char *a6, int a7, uint64_t a8, float a9, float a10, float a11, int a12)
{
  v13 = a1[20] + 20 * a4;
  v14 = *(v13 + 16);
  v49 = *v13;
  v50 = v14;
  if (a11 != 0.0)
  {
    v17 = a5;
    v20 = a11;
    v24 = 16 * a5 + 16;
    v25 = &a6[v24];
    memmove(&a6[v24], a6, v24);
    if (!a8 || a12 != a7)
    {
      xgboost::ExtendPath(v25, v17, a7, a9, a10);
    }

    if (DWORD1(v49) == -1)
    {
      if (v17)
      {
        v41 = 1;
        v42 = v50;
        do
        {
          *(a3 + 4 * *(v25 + 16 * v41)) = *(a3 + 4 * *(v25 + 16 * v41)) + ((v42 * (xgboost::UnwoundPathSum(v25, v17, v41) * (*(v25 + 16 * v41 + 8) - *(v25 + 16 * v41 + 4)))) * v20);
          ++v41;
        }

        while (v41 <= v17);
      }
    }

    else
    {
      v26 = a4;
      v27 = HIDWORD(v49) & 0x7FFFFFFF;
      v28 = a1[29];
      v48[0] = a1[30] - v28;
      v48[1] = v28;
      v29 = a1[32];
      v48[2] = (a1[33] - v29) >> 2;
      v48[3] = v29;
      v30 = a1[35];
      v48[4] = (a1[36] - v30) >> 4;
      v48[5] = v30;
      Next = xgboost::predictor::GetNextNode<true,true>(&v49, a4, *(*a2 + 4 * v27) == -1, v48, *(*a2 + 4 * v27));
      v33 = Next;
      v34 = 0;
      if (Next == DWORD1(v49))
      {
        v35 = DWORD2(v49);
      }

      else
      {
        v35 = DWORD1(v49);
      }

      v36 = a1[26];
      LODWORD(v32) = *(v36 + 16 * v26 + 4);
      v37 = *(v36 + 16 * Next + 4) / *&v32;
      v38 = *(v36 + 16 * v35 + 4) / *&v32;
      do
      {
        if (*(v25 + 16 * v34) == v27)
        {
          break;
        }

        ++v34;
      }

      while (v34 <= v17);
      v39 = 1.0;
      if (v34 == v17 + 1)
      {
        v40 = 1.0;
      }

      else
      {
        v43 = v25 + 16 * v34;
        v39 = *(v43 + 4);
        v40 = *(v43 + 8);
        xgboost::UnwindPath(v25, v17--, v34, v32);
      }

      if (a8 >= 1 && v27 == a12)
      {
        --v17;
        v44 = 0.0;
      }

      else
      {
        v45 = v37 * v20;
        v46 = v38 * v20;
        v47 = v17 - 1;
        if (v27 != a12)
        {
          v47 = v17;
          v45 = v20;
          v46 = v20;
        }

        if (a8 >= 0)
        {
          v44 = v20;
        }

        else
        {
          v17 = v47;
          v44 = v46;
        }

        if (a8 < 0)
        {
          v20 = v45;
        }
      }

      xgboost::RegTree::TreeShap(a1, a2, a3, v33, v17 + 1, v25, v27, a8, v37 * v39, v40, v20, a12);
      xgboost::RegTree::TreeShap(a1, a2, a3, v35, v17 + 1, v25, v27, a8, v38 * v39, 0.0, v44, a12);
    }
  }
}

void xgboost::RegTree::CalculateContributions(xgboost::RegTree *this, void *a2, float **a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a5)
  {
    *(a4 + a2[1] - *a2) = **a3 + *(a4 + a2[1] - *a2);
  }

  v11 = xgboost::RegTree::MaxDepth(this, 0);
  std::vector<xgboost::PathElement>::vector[abi:ne200100](__p, ((v11 + 2) * (v11 + 3) + (((v11 + 2) * (v11 + 3)) >> 31)) >> 1);
  xgboost::RegTree::TreeShap(this, a2, a4, 0, 0, __p[0], -1, a5, 1.0, 1.0, 1.0, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274DE9250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::RegTree::~RegTree(xgboost::RegTree *this)
{
  *this = &unk_2883E5FE0;
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    *(this + 24) = v6;
    operator delete(v6);
  }

  v7 = *(this + 20);
  if (v7)
  {
    *(this + 21) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2883E5FE0;
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    *(this + 24) = v6;
    operator delete(v6);
  }

  v7 = *(this + 20);
  if (v7)
  {
    *(this + 21) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E65A8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E65F0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E6560;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void dmlc::parameter::FieldEntry<std::vector<int>>::~FieldEntry(dmlc::parameter::FieldAccessEntry *this)
{
  *this = &unk_2883E60B0;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(this);
}

{
  *this = &unk_2883E60B0;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(this);

  JUMPOUT(0x277C69180);
}

void *dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::vector<int>>,std::vector<int>>::SetDefault(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Required parameter ", 19);
    v7 = *(a1 + 47);
    if (v7 >= 0)
    {
      v8 = a1 + 24;
    }

    else
    {
      v8 = *(a1 + 24);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 47);
    }

    else
    {
      v9 = *(a1 + 32);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " of ", 4);
    v14 = *(a1 + 48);
    v13 = a1 + 48;
    v12 = v14;
    v15 = *(v13 + 23);
    if (v15 >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    if (v15 >= 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = *(v13 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v20);
    exception->__vftable = &unk_2883DE2B0;
  }

  result = (a2 + *(a1 + 96));
  if (result != (a1 + 104))
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);

    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, v4, v5, (v5 - v4) >> 2);
  }

  return result;
}

void sub_274DE9774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::vector<int>>,std::vector<int>>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v34, a3, 8);
  std::operator>>(v34, (a2 + *(a1 + 96)));
  v6 = v34[0];
  v7 = *(&v36[1].__locale_ + *(v34[0] - 24));
  if ((v7 & 5) == 0 && (v7 & 2) == 0)
  {
    while (1)
    {
      v8 = std::istream::get();
      if (v8 == -1)
      {
        v10 = 0;
        v11 = (v34 + *(v34[0] - 24));
        goto LABEL_11;
      }

      if (v8 > 0x20u || ((1 << v8) & 0x100003600) == 0)
      {
        break;
      }

      v6 = v34[0];
      if ((*(&v36[1].__locale_ + *(v34[0] - 24)) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v11 = (v34 + *(v34[0] - 24));
    v10 = v11->__rdstate_ | 4;
LABEL_11:
    std::ios_base::clear(v11, v10);
    v6 = v34[0];
  }

LABEL_12:
  if ((*(&v36[1].__locale_ + *(v6 - 24)) & 5) != 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid Parameter format for ", 29);
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = a1 + 24;
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " expect ", 8);
    v21 = *(a1 + 48);
    v20 = a1 + 48;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " but value='", 12);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v32.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v32, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v32);
    exception->__vftable = &unk_2883DE2B0;
  }

  v34[0] = *MEMORY[0x277D82820];
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::istream::~istream();
  return MEMORY[0x277C690D0](&v38);
}