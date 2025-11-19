uint64_t siri::ontology::oname::graph::ontology_init::common_EmailAddress(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_EmailAddress(void)::common_EmailAddress;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C05107CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

uint64_t std::unordered_map<int,int>::unordered_map(uint64_t result, int *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[2 * a3]; i += 2)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
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
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_1C0510D3C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, *a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void siri::ontology::OntologyNodeName::OntologyNodeName(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = *a4;
  v23[0] = a4[1];
  *(v23 + 7) = *(a4 + 15);
  v15 = *(a4 + 23);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  *(a1 + 23) = *(v23 + 7);
  v16 = v23[0];
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  *(a1 + 31) = v15;
  v23[0] = 0;
  *(v23 + 7) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a2;
  *a1 = &unk_1F3FA5320;
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(v21, a5);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(&v22, a10);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(v17, a6);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(&v18, a7);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(&v19, a8);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(&v20, a9);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  operator new[]();
}

void sub_1C0511548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v39 = *(v35 + 48);
  *(v35 + 48) = 0;
  if (v39)
  {
    MEMORY[0x1C68DE1E0](v39, 0x1000C8052888210);
  }

  v40 = *v37;
  *v37 = 0;
  if (v40)
  {
    MEMORY[0x1C68DE1E0](v40, 0x1000C8000313F17);
  }

  v41 = &a25;
  v42 = -160;
  do
  {
    v41 = (std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v41) - 40);
    v42 += 40;
  }

  while (v42);
  v43 = &a35;
  v44 = -80;
  do
  {
    v43 = (std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v43) - 40);
    v44 += 40;
  }

  while (v44);
  *v35 = v36;
  if (*(v35 + 31) < 0)
  {
    operator delete(*(v35 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v197 = a2 - 3;
  v10 = a2 - 5;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = (a2 - v11) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v118 = *v8;
      v119 = *v11;
      if (*v8 >= *v11 && (v119 < v118 || *v9 >= v11[1]))
      {
        return result;
      }

      *v11 = v118;
      *v8 = v119;
      v120 = v11[1];
      v11[1] = *v9;
LABEL_340:
      *v9 = v120;
      return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v132 = v11 + 2;
      v134 = v11 == a2 || v132 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v134)
        {
          do
          {
            v185 = v7;
            v7 = v132;
            v186 = v185[2];
            v187 = *v185;
            if (v186 < *v185 || v187 >= v186 && v185[3] < v185[1])
            {
              v188 = *v132;
              v189 = v132[1];
              do
              {
                do
                {
                  v190 = v185;
                  v191 = *(v185 - 2);
                  v185 -= 2;
                  v192 = v185[3];
                  v185[4] = v187;
                  v185[5] = v192;
                  v187 = v191;
                  v193 = v191 < v188;
                }

                while (v191 > v188);
              }

              while (!v193 && *(v190 - 1) > v189);
              *v190 = v188;
              v190[1] = v189;
            }

            v132 = v7 + 2;
          }

          while (v7 + 2 != a2);
        }

        return result;
      }

      if (v134)
      {
        return result;
      }

      v135 = 0;
      v136 = v11;
      while (1)
      {
        v137 = v136;
        v136 = v132;
        v138 = v137[2];
        v139 = *v137;
        if (v138 >= *v137 && (v139 < v138 || v137[3] >= v137[1]))
        {
          goto LABEL_250;
        }

        v141 = v137[2];
        v140 = v137[3];
        v142 = v137[1];
        v137[2] = v139;
        v136[1] = v142;
        v143 = v11;
        if (v137 == v11)
        {
          goto LABEL_249;
        }

        v144 = v135;
        while (1)
        {
          v145 = *(v11 + v144 - 8);
          if (v145 <= v141)
          {
            break;
          }

          v146 = *(v11 + v144 - 4);
LABEL_243:
          v137 -= 2;
          v147 = (v11 + v144);
          *v147 = v145;
          v147[1] = v146;
          v144 -= 8;
          if (!v144)
          {
            v143 = v11;
            goto LABEL_249;
          }
        }

        if (v145 >= v141)
        {
          break;
        }

        v143 = v137;
LABEL_249:
        *v143 = v141;
        v143[1] = v140;
LABEL_250:
        v132 = v136 + 2;
        v135 += 8;
        if (v136 + 2 == a2)
        {
          return result;
        }
      }

      v143 = (v11 + v144);
      v146 = *(v11 + v144 - 4);
      if (v146 <= v140)
      {
        goto LABEL_249;
      }

      goto LABEL_243;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v148 = (v12 - 2) >> 1;
        v149 = v148;
        do
        {
          v150 = v149;
          if (v148 >= v149)
          {
            v151 = (2 * v149) | 1;
            v152 = &v11[2 * v151];
            if (2 * v150 + 2 < v12)
            {
              v153 = v152[2];
              if (*v152 < v153 || v153 >= *v152 && v152[1] < v152[3])
              {
                v152 += 2;
                v151 = 2 * v150 + 2;
              }
            }

            v154 = &v11[2 * v150];
            v155 = *v152;
            if (*v152 >= *v154 && (*v154 < v155 || v152[1] >= v154[1]))
            {
              v156 = *v154;
              v157 = v154[1];
              *v154 = v155;
              v154[1] = v152[1];
              if (v148 >= v151)
              {
                while (1)
                {
                  v159 = 2 * v151;
                  v151 = (2 * v151) | 1;
                  v158 = &v11[2 * v151];
                  v160 = v159 + 2;
                  if (v160 < v12)
                  {
                    result = v158[2];
                    if (*v158 < result || result >= *v158 && (result = v158[1], result < v158[3]))
                    {
                      v158 += 2;
                      v151 = v160;
                    }
                  }

                  v161 = *v158;
                  if (*v158 < v156 || v161 <= v156 && v158[1] < v157)
                  {
                    break;
                  }

                  *v152 = v161;
                  v152[1] = v158[1];
                  v152 = v158;
                  if (v148 < v151)
                  {
                    goto LABEL_265;
                  }
                }
              }

              v158 = v152;
LABEL_265:
              *v158 = v156;
              v158[1] = v157;
            }
          }

          v149 = v150 - 1;
        }

        while (v150);
        do
        {
          v162 = 0;
          v163 = *v11;
          v164 = v11;
          do
          {
            v165 = v164;
            v166 = &v164[2 * v162];
            v164 = (v166 + 2);
            v167 = 2 * v162;
            v162 = (2 * v162) | 1;
            v168 = v167 + 2;
            if (v168 < v12)
            {
              v169 = v166[4];
              result = v166[2];
              if (result < v169 || v169 >= result && v166[3] < v166[5])
              {
                v164 = (v166 + 4);
                v162 = v168;
              }
            }

            *v165 = *v164;
            v165[1] = v164[1];
          }

          while (v162 <= (v12 - 2) / 2);
          if (v164 == a2 - 2)
          {
            *v164 = v163;
          }

          else
          {
            *v164 = *(a2 - 2);
            v164[1] = *(a2 - 1);
            *(a2 - 1) = v163;
            v170 = (v164 - v11 + 8) >> 3;
            v171 = v170 - 2;
            if (v170 >= 2)
            {
              v172 = v171 >> 1;
              v173 = &v11[2 * (v171 >> 1)];
              v174 = *v173;
              if (*v173 < *v164 || *v164 >= v174 && v173[1] < v164[1])
              {
                v175 = *v164;
                v176 = v164[1];
                *v164 = v174;
                v164[1] = v173[1];
                if (v171 >= 2)
                {
                  while (1)
                  {
                    v178 = v172 - 1;
                    v172 = (v172 - 1) >> 1;
                    v177 = &v11[2 * v172];
                    v179 = *v177;
                    if (*v177 >= v175)
                    {
                      if (v179 > v175)
                      {
                        break;
                      }

                      v180 = v177[1];
                      if (v180 >= v176)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v180 = v177[1];
                    }

                    *v173 = v179;
                    v173[1] = v180;
                    v173 = &v11[2 * v172];
                    if (v178 <= 1)
                    {
                      goto LABEL_298;
                    }
                  }
                }

                v177 = v173;
LABEL_298:
                *v177 = v175;
                v177[1] = v176;
              }
            }
          }

          a2 -= 2;
          v98 = v12-- <= 2;
        }

        while (!v98);
      }

      return result;
    }

    v13 = &v11[2 * (v12 >> 1)];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = *v11;
      if (*v13 >= *v11 && (v16 < v15 || v13[1] >= v11[1]))
      {
        v23 = *v8;
        if (*v8 >= v15 && (v15 < v23 || *v9 >= v13[1]))
        {
          goto LABEL_44;
        }

        *v13 = v23;
        *v8 = v15;
        v24 = v13 + 1;
        v25 = v13[1];
        v13[1] = *v9;
        *v9 = v25;
        v26 = *v13;
        v27 = *v11;
        if (*v13 >= *v11 && (v27 < v26 || *v24 >= v11[1]))
        {
LABEL_44:
          v38 = v13 - 2;
          v39 = *(v13 - 2);
          v40 = v11[2];
          if (v39 >= v40 && (v40 < v39 || *(v13 - 1) >= v11[3]))
          {
            v43 = *(a2 - 4);
            if (v43 >= v39 && (v39 < v43 || *v197 >= *(v13 - 1)))
            {
              goto LABEL_66;
            }

            *v38 = v43;
            *(a2 - 4) = v39;
            v44 = v13 - 1;
            v45 = *(v13 - 1);
            *(v13 - 1) = *(a2 - 3);
            *(a2 - 3) = v45;
            v46 = *v38;
            v47 = v11[2];
            if (*v38 >= v47 && (v47 < v46 || *v44 >= v11[3]))
            {
LABEL_66:
              v56 = v13[2];
              v54 = v13 + 2;
              v55 = v56;
              v57 = v11[4];
              if (v56 >= v57 && (v57 < v55 || v54[1] >= v11[5]))
              {
                v60 = *(a2 - 6);
                if (v60 >= v55 && (v55 < v60 || *v10 >= v54[1]))
                {
                  goto LABEL_84;
                }

                *v54 = v60;
                *(a2 - 6) = v55;
                v61 = v54 + 1;
                v62 = v54[1];
                v54[1] = *(a2 - 5);
                *(a2 - 5) = v62;
                v63 = *v54;
                v64 = v11[4];
                if (*v54 >= v64 && (v64 < v63 || *v61 >= v11[5]))
                {
LABEL_84:
                  v69 = *v14;
                  v70 = *v38;
                  if (*v14 >= *v38 && (v70 < v69 || v14[1] >= v38[1]))
                  {
                    v74 = *v54;
                    if (*v54 < v69)
                    {
                      v75 = v14[1];
                      v76 = v54[1];
                      goto LABEL_91;
                    }

                    if (v69 < v74 || (v76 = v54[1], v75 = v14[1], v76 >= v75))
                    {
LABEL_103:
                      v81 = *v11;
                      *v11 = v69;
                      v22 = v11 + 1;
                      *v14 = v81;
                      v29 = v14 + 1;
                      goto LABEL_104;
                    }

LABEL_91:
                    *v14 = v74;
                    v14[1] = v76;
                    v77 = v14 + 1;
                    *v54 = v69;
                    v54[1] = v75;
                    if (v74 >= v70 && (v70 < v74 || v76 >= v38[1]))
                    {
                      v69 = v74;
                      goto LABEL_103;
                    }

                    *v38 = v74;
                    v72 = v38 + 1;
                    *v14 = v70;
LABEL_102:
                    v80 = *v72;
                    *v72 = *v77;
                    *v77 = v80;
                    v69 = *v14;
                    goto LABEL_103;
                  }

                  v71 = *v54;
                  if (*v54 >= v69)
                  {
                    if (v69 >= v71)
                    {
                      v78 = v14[1];
                      if (v54[1] < v78)
                      {
                        goto LABEL_86;
                      }
                    }

                    else
                    {
                      v78 = v14[1];
                    }

                    *v14 = v70;
                    v79 = v38[1];
                    v14[1] = v79;
                    *v38 = v69;
                    v38[1] = v78;
                    if (v71 >= v70 && (v70 < v71 || v54[1] >= v79))
                    {
                      v69 = v70;
                      goto LABEL_103;
                    }

                    *v14 = v71;
                    *v54 = v70;
                    v73 = v54 + 1;
                    v72 = v14 + 1;
                  }

                  else
                  {
LABEL_86:
                    *v38 = v71;
                    v72 = v38 + 1;
                    *v54 = v70;
                    v73 = v54 + 1;
                  }

                  v77 = v73;
                  goto LABEL_102;
                }

                v11[4] = v63;
                *v54 = v64;
                v59 = v11 + 5;
LABEL_83:
                v68 = *v59;
                *v59 = *v61;
                *v61 = v68;
                goto LABEL_84;
              }

              v58 = *(a2 - 6);
              if (v58 >= v55)
              {
                if (v55 >= v58)
                {
                  v65 = v54[1];
                  if (*v10 < v65)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  v65 = v54[1];
                }

                v66 = v11[5];
                v11[4] = v55;
                v11[5] = v65;
                *v54 = v57;
                v54[1] = v66;
                v59 = v54 + 1;
                v67 = *(a2 - 6);
                if (v67 >= v57 && (v57 < v67 || *v10 >= v66))
                {
                  goto LABEL_84;
                }

                *v54 = v67;
                *(a2 - 6) = v57;
              }

              else
              {
LABEL_68:
                v11[4] = v58;
                *(a2 - 6) = v57;
                v59 = v11 + 5;
              }

              v61 = a2 - 5;
              goto LABEL_83;
            }

            v11[2] = v46;
            *v38 = v47;
            v42 = v11 + 3;
LABEL_65:
            v53 = *v42;
            *v42 = *v44;
            *v44 = v53;
            goto LABEL_66;
          }

          v41 = *(a2 - 4);
          if (v41 >= v39)
          {
            if (v39 >= v41)
            {
              v48 = *(v13 - 1);
              if (*v197 < v48)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v48 = *(v13 - 1);
            }

            v51 = v11[3];
            v11[2] = v39;
            v11[3] = v48;
            *v38 = v40;
            *(v13 - 1) = v51;
            v42 = v13 - 1;
            v52 = *(a2 - 4);
            if (v52 >= v40 && (v40 < v52 || *v197 >= v51))
            {
              goto LABEL_66;
            }

            *v38 = v52;
            *(a2 - 4) = v40;
          }

          else
          {
LABEL_46:
            v11[2] = v41;
            *(a2 - 4) = v40;
            v42 = v11 + 3;
          }

          v44 = a2 - 3;
          goto LABEL_65;
        }

        *v11 = v26;
        v18 = v11 + 1;
        *v13 = v27;
LABEL_43:
        v37 = *v18;
        *v18 = *v24;
        *v24 = v37;
        goto LABEL_44;
      }

      v17 = *v8;
      if (*v8 >= v15)
      {
        if (v15 >= v17)
        {
          v33 = v13[1];
          if (*v9 < v33)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v33 = v13[1];
        }

        v35 = v11[1];
        *v11 = v15;
        v11[1] = v33;
        *v13 = v16;
        v13[1] = v35;
        v18 = v13 + 1;
        v36 = *v8;
        if (*v8 >= v16 && (v16 < v36 || *v9 >= v35))
        {
          goto LABEL_44;
        }

        *v13 = v36;
      }

      else
      {
LABEL_15:
        *v11 = v17;
        v18 = v11 + 1;
      }

      *v8 = v16;
      v24 = a2 - 1;
      goto LABEL_43;
    }

    v19 = *v11;
    v20 = *v13;
    if (*v11 < *v14 || v20 >= v19 && v11[1] < v14[1])
    {
      v21 = *v8;
      if (*v8 < v19)
      {
        goto LABEL_18;
      }

      if (v19 >= v21)
      {
        v34 = v11[1];
        if (*v9 >= v34)
        {
          goto LABEL_58;
        }

LABEL_18:
        *v14 = v21;
        *v8 = v20;
        v22 = v14 + 1;
      }

      else
      {
        v34 = v11[1];
LABEL_58:
        v49 = v14[1];
        *v14 = v19;
        v14[1] = v34;
        *v11 = v20;
        v11[1] = v49;
        v22 = v11 + 1;
        v50 = *v8;
        if (*v8 >= v20 && (v20 < v50 || *v9 >= v49))
        {
          goto LABEL_105;
        }

        *v11 = v50;
        *v8 = v20;
      }

      v29 = a2 - 1;
LABEL_104:
      v82 = *v22;
      *v22 = *v29;
      *v29 = v82;
      goto LABEL_105;
    }

    v28 = *v8;
    if (*v8 < v19 || v19 >= v28 && *v9 < v11[1])
    {
      *v11 = v28;
      *v8 = v19;
      v29 = v11 + 1;
      v30 = v11[1];
      v11[1] = *v9;
      *v9 = v30;
      v31 = *v11;
      v32 = *v14;
      if (*v11 < *v14 || v32 >= v31 && *v29 < v14[1])
      {
        *v14 = v31;
        *v11 = v32;
        v22 = v14 + 1;
        goto LABEL_104;
      }
    }

LABEL_105:
    --a3;
    if ((a4 & 1) != 0 || (v83 = *(v11 - 2), v83 < *v11) || *v11 >= v83 && *(v11 - 1) < v11[1])
    {
      v84 = v11 + 2;
      v85 = *v11;
      v86 = HIDWORD(*v11);
      while (1)
      {
        v87 = *v84;
        if (*v84 >= v85 && (v87 > v85 || v84[1] >= v86))
        {
          break;
        }

        v84 += 2;
      }

      if (v84 - 2 == v11)
      {
        i = a2;
        if (v84 < a2)
        {
          v91 = *v8;
          i = a2 - 2;
          if (*v8 >= v85)
          {
            i = a2 - 2;
            do
            {
              if (v91 <= v85)
              {
                if (i[1] < v86 || v84 >= i)
                {
                  break;
                }
              }

              else if (v84 >= i)
              {
                break;
              }

              v93 = *(i - 2);
              i -= 2;
              v91 = v93;
            }

            while (v93 >= v85);
          }
        }
      }

      else
      {
        v88 = *v8;
        for (i = a2 - 2; v88 >= v85 && (v88 > v85 || i[1] >= v86); i -= 2)
        {
          v90 = *(i - 2);
          v88 = v90;
        }
      }

      v11 = v84;
      if (v84 < i)
      {
        v94 = *i;
        v11 = v84;
        v95 = i;
        do
        {
          *v11 = v94;
          *v95 = v87;
          v96 = v11[1];
          v11[1] = v95[1];
          v95[1] = v96;
          do
          {
            do
            {
              v97 = v11[2];
              v11 += 2;
              v87 = v97;
              v98 = v97 <= v85;
            }

            while (v97 < v85);
          }

          while (v98 && v11[1] < v86);
          do
          {
            v99 = *(v95 - 2);
            v95 -= 2;
            v94 = v99;
          }

          while (v99 >= v85 && (v94 > v85 || v95[1] >= v86));
        }

        while (v11 < v95);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      *(v11 - 2) = v85;
      *(v11 - 1) = v86;
      if (v84 < i)
      {
LABEL_147:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v7, v11 - 2);
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v11, a2);
        if (result)
        {
          a2 = v11 - 2;
          if (v100)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v100)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      v102 = *v11;
      v101 = v11[1];
      v103 = *v8;
      if (*v8 > *v11 || v103 >= v102 && *v9 > v101)
      {
        do
        {
          v105 = v11[2];
          v11 += 2;
          v104 = v105;
        }

        while (v105 <= v102 && (v104 < v102 || v11[1] <= v101));
      }

      else
      {
          ;
        }
      }

      j = a2;
      if (v11 < a2)
      {
        for (j = a2 - 2; v103 > v102 || v103 >= v102 && j[1] > v101; j -= 2)
        {
          v107 = *(j - 2);
          v103 = v107;
        }
      }

      if (v11 < j)
      {
        v108 = *v11;
        v109 = *j;
        do
        {
          *v11 = v109;
          *j = v108;
          v110 = v11[1];
          v11[1] = j[1];
          j[1] = v110;
          do
          {
            v111 = v11[2];
            v11 += 2;
            v108 = v111;
          }

          while (v111 <= v102 && (v108 < v102 || v11[1] <= v101));
          do
          {
            do
            {
              v112 = *(j - 2);
              j -= 2;
              v109 = v112;
              v113 = v112 < v102;
            }

            while (v112 > v102);
          }

          while (!v113 && j[1] > v101);
        }

        while (v11 < j);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      a4 = 0;
      *(v11 - 2) = v102;
      *(v11 - 1) = v101;
    }
  }

  if (v12 == 3)
  {
    v114 = v11[2];
    v115 = *v11;
    if (v114 >= *v11 && (v115 < v114 || v11[3] >= v11[1]))
    {
      v181 = *v8;
      if (*v8 >= v114 && (v114 < v181 || *v9 >= v11[3]))
      {
        return result;
      }

      v11[2] = v181;
      *v8 = v114;
      v182 = v11[3];
      v11[3] = *v9;
      *v9 = v182;
      v183 = v11[2];
      v184 = *v11;
      if (v183 >= *v11 && (v184 < v183 || v11[3] >= v11[1]))
      {
        return result;
      }

      *v11 = v183;
      v11[2] = v184;
      v117 = v11 + 1;
      v9 = v11 + 3;
      goto LABEL_339;
    }

    v116 = *v8;
    if (*v8 < v114)
    {
      goto LABEL_216;
    }

    if (v114 >= v116)
    {
      v194 = v11[3];
      if (*v9 < v194)
      {
LABEL_216:
        *v11 = v116;
        v117 = v11 + 1;
        *v8 = v115;
LABEL_339:
        v120 = *v117;
        *v117 = *v9;
        goto LABEL_340;
      }
    }

    else
    {
      v194 = v11[3];
    }

    v195 = v11[1];
    v11[3] = v195;
    *v11 = v114;
    v11[1] = v194;
    v11[2] = v115;
    v196 = *v8;
    if (*v8 >= v115 && (v115 < v196 || *v9 >= v195))
    {
      return result;
    }

    v11[2] = v196;
    *v8 = v115;
    v117 = v11 + 3;
    goto LABEL_339;
  }

  if (v12 == 4)
  {

    return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v11, v11 + 2, v11 + 4, a2 - 2);
  }

  if (v12 != 5)
  {
    goto LABEL_10;
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v11, v11 + 2, v11 + 4, v11 + 6);
  v121 = *v8;
  v122 = v11[6];
  if (*v8 < v122 || v122 >= v121 && *v9 < v11[7])
  {
    v11[6] = v121;
    *v8 = v122;
    v123 = v11[7];
    v11[7] = *v9;
    *v9 = v123;
    v124 = v11[6];
    v125 = v11[4];
    if (v124 >= v125)
    {
      if (v125 < v124)
      {
        return result;
      }

      v127 = v11[7];
      v126 = v11[5];
      if (v127 >= v126)
      {
        return result;
      }
    }

    else
    {
      v126 = v11[5];
      v127 = v11[7];
    }

    v11[4] = v124;
    v11[5] = v127;
    v11[6] = v125;
    v11[7] = v126;
    v128 = v11[2];
    if (v124 >= v128)
    {
      if (v128 < v124)
      {
        return result;
      }

      v129 = v11[3];
      if (v127 >= v129)
      {
        return result;
      }
    }

    else
    {
      v129 = v11[3];
    }

    v11[2] = v124;
    v11[3] = v127;
    v11[4] = v128;
    v11[5] = v129;
    v130 = *v11;
    if (v124 >= *v11)
    {
      if (v130 < v124)
      {
        return result;
      }

      v131 = v11[1];
      if (v127 >= v131)
      {
        return result;
      }
    }

    else
    {
      v131 = v11[1];
    }

    *v11 = v124;
    v11[1] = v127;
    v11[2] = v130;
    v11[3] = v131;
  }

  return result;
}

uint64_t std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t siri::ontology::oname::graph::ontology_init::common_PhoneNumber(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PhoneNumber(void)::common_PhoneNumber;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0512934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Uri(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Uri(void)::common_Uri;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0512B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_LocalisedString(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_LocalisedString(void)::common_LocalisedString;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0512DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Group(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Group(void)::common_Group;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0513054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Person(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Person(void)::common_Person;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0513310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MediaItem(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MediaItem(void)::common_MediaItem;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C05135A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a40);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v50, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SearchObject(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SearchObject(void)::common_SearchObject;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C05137DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_UserEntity(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_UserEntity(void)::common_UserEntity;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0513A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v47, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_App(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_App(void)::common_App;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0513CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a40);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v50, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Window(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Window(void)::common_Window;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0513F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 192);
  if (*(v35 - 129) < 0)
  {
    operator delete(*(v35 - 152));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Setting(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Setting(void)::common_Setting;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0514180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 225) < 0)
  {
    operator delete(*(v40 - 248));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t sub_1C0514224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C05142FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0514348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t Graph.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C0514450()
{
  sub_1C0514484();

  return swift_deallocClassInstance();
}

uint64_t sub_1C0514484()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  sub_1C05144FC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  v3 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  return v0;
}

uint64_t sub_1C05144FC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C0514A60(result, a2, a3 & 1);
  }

  return result;
}

uint64_t UsoValue.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t UsoEntity.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1C05145B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C0514614()
{
  v0 = *sub_1C0514668();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C0514668()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget, &qword_1EBE16B58, &unk_1C099B6A0);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions);

  v2 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints);

  v4 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints);

  v5 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints);

  v6 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints);

  v7 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName + 8);

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState, &qword_1EBE16B60, &qword_1C096E100);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID, &qword_1EBE16B68, &qword_1C096E108);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID, &qword_1EBE16B68, &qword_1C096E108);
  return v0;
}

uint64_t sub_1C05147CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C095D38C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C051488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C051494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C05149C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C05149F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0514A60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C0514B20(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C0518BB4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1C0514B44(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *Graph.init()()
{
  v0[4] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C0515318(v1);
  v0[5] = 0;
  if (qword_1ED5D7C68 != -1)
  {
    swift_once();
  }

  v5[0] = qword_1ED5D7C70;
  v5[1] = *algn_1ED5D7C78;
  v5[2] = qword_1ED5D7C80;
  v5[3] = unk_1ED5D7C88;
  v5[4] = qword_1ED5D7C90;

  v2 = sub_1C0514CE0(v5, 0, 0, 255, MEMORY[0x1E69E7CC0]);

  swift_beginAccess();
  v3 = v0[4];
  swift_unownedRelease();
  v0[4] = v2;
  swift_unownedRetain();
  swift_endAccess();

  return v0;
}

uint64_t sub_1C0514CE0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v10 = a1[1];
  v23 = *a1;
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = *(v6 + 40);
  type metadata accessor for NodeRef();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 112) = MEMORY[0x1E69E7CC0];
  *(v15 + 120) = v16;
  *(v15 + 64) = v23;
  *(v15 + 72) = v10;
  *(v15 + 80) = v11;
  *(v15 + 88) = v12;
  *(v15 + 96) = v13;
  *(v15 + 104) = v16;
  *(v15 + 16) = v6;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = v14;
  swift_beginAccess();

  swift_unownedRetain();
  sub_1C0514B20(a2, a3, a4);

  v17 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_1C0514E78(v15, v14, isUniquelyReferenced_nonNull_native);
  *(v6 + 24) = v25;
  result = swift_endAccess();
  v20 = *(v6 + 40);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 40) = v22;
    return v15;
  }

  return result;
}

unint64_t sub_1C0514E3C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C095DFDC();
  return sub_1C0514B44(a1, v4);
}

unint64_t sub_1C0514E78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1C0514E38(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1C066FF6C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1C05150A8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1C0514E38(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1C0515444(v9, a2, a1, v20);
  }
}

char *sub_1C0514F9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172F0, &qword_1C0970AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C05150A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172F8, &qword_1C0970AF0);
  result = sub_1C095DD3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1C095DFDC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1C0515318(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172F8, &qword_1C0970AF0);
  v3 = sub_1C095DD5C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1C0514E38(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1C0514E38(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0515444(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1C0515488(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = v2[8];
  if (v5)
  {
    v6 = v3[7];
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v63 = *a2;
  *&v73 = v6;
  *(&v73 + 1) = v7;

  MEMORY[0x1C68DD690](14906, 0xE200000000000000);

  if (v3[6])
  {
    v8 = v3[5];
    v9 = v3[6];
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1C68DD690](v8, v9);

  v10 = v73;
  v11 = v3[10];
  if (v11 && (v12 = v3[15]) != 0)
  {
    v13 = v3[17];
    v68 = v3[9];
    v70 = v3[16];
    v66 = v3[14];
    v14 = v3[11];
    v15 = v3[12];
    type metadata accessor for NameMetaData();
    v16 = swift_allocObject();
    v16[2] = v68;
    v16[3] = v11;
    v16[4] = v14;
    v16[5] = v15;
    v16[6] = v66;
    v16[7] = v12;
    v16[8] = v70;
    v16[9] = v13;
  }

  else
  {
    v16 = 0;
  }

  v73 = v10;
  *&v74 = 1802723668;
  *(&v74 + 1) = 0xE400000000000000;
  *&v75 = v16;

  v17 = sub_1C0514CE0(&v73, 0, 0, 255, MEMORY[0x1E69E7CC0]);

  swift_unownedRetain();

  *&v73 = a1;
  *(&v73 + 1) = v17;
  sub_1C05166B8(&v73);
  *&v73 = a1;
  *(&v73 + 1) = v17;
  sub_1C0516880(&v73);
  *&v73 = a1;
  *(&v73 + 1) = v17;
  sub_1C05164EC(&v73);
  swift_beginAccess();
  v18 = v3[19];
  v19 = *(v18 + 64);
  v55 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v54 = (v20 + 63) >> 6;
  v58 = v3[19];

  v24 = v22;
  v25 = 0;
LABEL_14:
  while (v24)
  {
LABEL_19:
    v27 = __clz(__rbit64(v24)) | (v25 << 6);
    v28 = (*(v58 + 48) + 16 * v27);
    v29 = v28[1];
    v67 = *v28;
    result = *(*(v58 + 56) + 8 * v27);
    if (result >> 62)
    {
      v49 = *(*(v58 + 56) + 8 * v27);
      v50 = v25;
      v51 = v24;
      v52 = sub_1C095DCDC();
      v24 = v51;
      v25 = v50;
      v30 = v52;
      result = v49;
    }

    else
    {
      v30 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 &= v24 - 1;
    if (v30)
    {
      v56 = v24;
      v57 = v25;
      v64 = result & 0xC000000000000001;
      v59 = result + 32;
      v60 = result & 0xFFFFFFFFFFFFFF8;
      v61 = result;
      swift_bridgeObjectRetain_n();

      v31 = 0;
      v62 = v30;
      while (1)
      {
        if (v64)
        {
          result = MEMORY[0x1C68DDAD0](v31, v61);
          v32 = result;
          v33 = __OFADD__(v31, 1);
          v34 = v31 + 1;
          if (v33)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v31 >= *(v60 + 16))
          {
            goto LABEL_47;
          }

          v32 = *(v59 + 8 * v31);

          v33 = __OFADD__(v31, 1);
          v34 = v31 + 1;
          if (v33)
          {
            goto LABEL_45;
          }
        }

        v65 = v34;
        LOBYTE(v73) = v63;
        result = (*(*v32 + 176))(a1, &v73);
        v69 = *(result + 16);
        v71 = result;
        if (v69)
        {
          break;
        }

LABEL_23:

        v31 = v65;
        if (v65 == v62)
        {

          result = swift_bridgeObjectRelease_n();
          v24 = v56;
          v25 = v57;
          goto LABEL_14;
        }
      }

      v35 = 0;
      v36 = (result + 40);
      while (v35 < *(v71 + 16))
      {
        if (v35 == 0x100000000)
        {
          goto LABEL_44;
        }

        v38 = *(v36 - 1);
        v37 = *v36;
        swift_unownedRetainStrong();
        v39 = *(v17 + 56);

        swift_unownedRetain();

        swift_unownedRetainStrong();
        v40 = *(v37 + 56);

        *&v73 = v39;
        *(&v73 + 1) = v40;
        LODWORD(v74) = v35;
        *(&v74 + 1) = v67;
        *&v75 = v29;
        *(&v75 + 1) = 0x746E656D75677241;
        v76 = 0xE800000000000000;
        swift_beginAccess();
        v41 = *(a1 + 16);

        sub_1C0514AC4(&v73, v72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 16) = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_1C0514F9C(0, *(v41 + 2) + 1, 1, v41);
          *(a1 + 16) = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = sub_1C0514F9C((v43 > 1), v44 + 1, 1, v41);
        }

        ++v35;
        *(v41 + 2) = v44 + 1;
        v45 = &v41[64 * v44];
        v46 = v73;
        v47 = v74;
        v48 = v76;
        *(v45 + 4) = v75;
        *(v45 + 5) = v48;
        *(v45 + 2) = v46;
        *(v45 + 3) = v47;
        *(a1 + 16) = v41;
        swift_endAccess();

        swift_unownedRelease();

        result = sub_1C0514A70(&v73);
        v36 += 2;
        if (v69 == v35)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v54)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1C096E0C0;
      *(v53 + 32) = a1;
      *(v53 + 40) = v17;

      return v53;
    }

    v24 = *(v55 + 8 * v26);
    ++v25;
    if (v24)
    {
      v25 = v26;
      goto LABEL_19;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t _s12SiriOntology15UsoGraphBuilderO05buildD11WithOptions12taskBuilders7optionsAA0D0CSayAA0c4TaskE0CG_AA0ceH0VSgtFZ_0(unint64_t a1, char *a2)
{
  v29 = *a2;
  type metadata accessor for Graph();
  swift_allocObject();
  v3 = Graph.init()();
  swift_beginAccess();
  v4 = v3[4];
  result = swift_unownedRetainStrong();
  if (v4)
  {

    swift_unownedRetain();

    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_20:

      swift_unownedRelease();
      return v3;
    }

    while (1)
    {
      v27 = result - 1;
      if (result < 1)
      {
        break;
      }

      v6 = 0;
      v28 = a1 & 0xC000000000000001;
      v26 = a1;
      if ((a1 & 0xC000000000000001) != 0)
      {
LABEL_6:
        MEMORY[0x1C68DDAD0](v6, a1);
        goto LABEL_8;
      }

      while (1)
      {
        v7 = *(a1 + 8 * v6 + 32);

LABEL_8:
        v32[0] = v29;
        v8 = sub_1C0515488(v3, v32);
        if (!v8[2])
        {
          break;
        }

        v31 = v6;
        v9 = v3;
        v10 = v8[5];
        v30 = v8[4];

        swift_unownedRetain();

        if (qword_1ED5BD000 != -1)
        {
          swift_once();
        }

        v11 = qword_1ED5BD008;
        v12 = unk_1ED5BD010;
        v13 = qword_1ED5BD018;
        v14 = unk_1ED5BD020;
        v15 = qword_1ED5BD028;
        swift_unownedRetainStrong();
        v16 = *(v4 + 56);

        swift_unownedRetainStrong();
        v17 = *(v10 + 56);

        *&v33 = v16;
        *(&v33 + 1) = v17;
        LODWORD(v34) = 0;
        *(&v34 + 1) = v11;
        *&v35 = v12;
        *(&v35 + 1) = v13;
        *&v36 = v14;
        *(&v36 + 1) = v15;
        v3 = v9;
        swift_beginAccess();
        v18 = v9[2];

        sub_1C0514AC4(&v33, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9[2] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1C0514F9C(0, *(v18 + 2) + 1, 1, v18);
          v9[2] = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1C0514F9C((v20 > 1), v21 + 1, 1, v18);
        }

        *(v18 + 2) = v21 + 1;
        v22 = &v18[64 * v21];
        v23 = v33;
        v24 = v34;
        v25 = v36;
        *(v22 + 4) = v35;
        *(v22 + 5) = v25;
        *(v22 + 2) = v23;
        *(v22 + 3) = v24;
        v9[2] = v18;
        swift_endAccess();

        swift_unownedRelease();
        sub_1C0514A70(&v33);
        if (v27 == v31)
        {
          goto LABEL_20;
        }

        v6 = v31 + 1;
        a1 = v26;
        if (v28)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_19:
      result = sub_1C095DCDC();
      if (!result)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0515D94(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v67 = *a2;
  if (v67 == 2)
  {
    goto LABEL_14;
  }

  if (v67)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  if (*(v2[7] + 16) != 1)
  {
    goto LABEL_14;
  }

  v5 = v2[7];

  sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = v2[7];
  if (!*(v8 + 16))
  {
    goto LABEL_14;
  }

  v9 = v2[7];

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {

    goto LABEL_14;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);

    while (1)
    {

      type metadata accessor for UsoDefinedValueBuilder();
      if (swift_dynamicCastClass())
      {
        break;
      }

LABEL_14:
      v23 = *(v3 + 48);
      *&v76 = *(v3 + 40);
      *(&v76 + 1) = v23;
      *&v77 = 0x797469746E45;
      *(&v77 + 1) = 0xE600000000000000;
      *&v78 = 0;

      v24 = sub_1C0514CE0(&v76, 0, 0, 255, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      *&v76 = a1;
      *(&v76 + 1) = v24;
      v12 = v3;
      sub_1C05166B8(&v76);
      *&v76 = a1;
      *(&v76 + 1) = v24;
      sub_1C0516880(&v76);
      *&v76 = a1;
      *(&v76 + 1) = v24;
      sub_1C05164EC(&v76);
      swift_beginAccess();
      v25 = *(v3 + 56);
      v26 = *(v25 + 64);
      v61 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & v26;
      v60 = (v27 + 63) >> 6;
      v64 = *(v3 + 56);

      v30 = v29;
      v31 = 0;
      v72 = a1;
      v32 = v67;
LABEL_18:
      while (v30)
      {
LABEL_23:
        v34 = __clz(__rbit64(v30)) | (v31 << 6);
        v35 = (*(v64 + 48) + 16 * v34);
        v36 = v35[1];
        v74 = *v35;
        v3 = *(*(v64 + 56) + 8 * v34);
        v68 = v3;
        if (v3 >> 62)
        {
          v57 = v31;
          v58 = v30;
          v59 = sub_1C095DCDC();
          v30 = v58;
          v3 = v68;
          v31 = v57;
          v12 = v59;
        }

        else
        {
          v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 &= v30 - 1;
        if (v12)
        {
          v62 = v30;
          v63 = v31;
          v70 = v3 & 0xC000000000000001;
          v65 = (v3 + 32);
          v66 = v3 & 0xFFFFFFFFFFFFFF8;
          swift_bridgeObjectRetain_n();

          v37 = 0;
          v69 = v12;
          while (1)
          {
            if (v70)
            {
              v38 = MEMORY[0x1C68DDAD0](v37, v3);
            }

            else
            {
              if (v37 >= *(v66 + 16))
              {
                goto LABEL_51;
              }

              v39 = v65[v37];
            }

            v40 = __OFADD__(v37, 1);
            v41 = v37 + 1;
            if (v40)
            {
              break;
            }

            v71 = v41;
            v42 = v38;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
            if (swift_dynamicCastClass())
            {
              v80[0] = v74;
              v80[1] = v36;
              v80[2] = 0x746E656D75677241;
              v80[3] = 0xE800000000000000;
              v80[4] = 0;

              sub_1C078EC14(a1, a1, v24, v80, v32);

              sub_1C07905E0(v80);
            }

            else
            {
              LOBYTE(v76) = v32;
              v43 = (*(*v42 + 176))(a1, &v76);
              v12 = v43;
              v73 = *(v43 + 16);
              if (v73)
              {
                v3 = 0;
                v44 = (v43 + 40);
                while (v3 < *(v12 + 16))
                {
                  if (v3 == 0x100000000)
                  {
                    goto LABEL_48;
                  }

                  v45 = *(v44 - 1);
                  v46 = *v44;
                  swift_unownedRetainStrong();
                  v47 = *(v24 + 56);

                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v48 = *(v46 + 56);

                  *&v76 = v47;
                  *(&v76 + 1) = v48;
                  LODWORD(v77) = v3;
                  *(&v77 + 1) = v74;
                  *&v78 = v36;
                  *(&v78 + 1) = 0x746E656D75677241;
                  v79 = 0xE800000000000000;
                  swift_beginAccess();
                  v49 = *(a1 + 16);

                  sub_1C0514AC4(&v76, v75);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(a1 + 16) = v49;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v49 = sub_1C0514F9C(0, *(v49 + 2) + 1, 1, v49);
                    *(a1 + 16) = v49;
                  }

                  v52 = *(v49 + 2);
                  v51 = *(v49 + 3);
                  if (v52 >= v51 >> 1)
                  {
                    v49 = sub_1C0514F9C((v51 > 1), v52 + 1, 1, v49);
                  }

                  ++v3;
                  *(v49 + 2) = v52 + 1;
                  v53 = &v49[64 * v52];
                  v54 = v76;
                  v55 = v77;
                  v56 = v79;
                  *(v53 + 4) = v78;
                  *(v53 + 5) = v56;
                  *(v53 + 2) = v54;
                  *(v53 + 3) = v55;
                  a1 = v72;
                  *(v72 + 16) = v49;
                  swift_endAccess();

                  swift_unownedRelease();

                  sub_1C0514A70(&v76);
                  v44 += 2;
                  if (v73 == v3)
                  {
                    goto LABEL_44;
                  }
                }

                __break(1u);
LABEL_48:
                __break(1u);
                break;
              }

LABEL_44:

              v32 = v67;
              v3 = v68;
            }

            v12 = v69;
            v37 = v71;
            if (v71 == v69)
            {

              swift_bridgeObjectRelease_n();
              v30 = v62;
              v31 = v63;
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_50;
        }
      }

      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= v60)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
          result = swift_allocObject();
          *(result + 16) = xmmword_1C096E0C0;
          *(result + 32) = a1;
          *(result + 40) = v24;
          return result;
        }

        v30 = *(v61 + 8 * v33);
        ++v31;
        if (v30)
        {
          v31 = v33;
          goto LABEL_23;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      MEMORY[0x1C68DDAD0](0, v12);
    }

    swift_beginAccess();
    v15 = *(v3 + 16);
    swift_beginAccess();

    sub_1C0522140(v16);
    swift_endAccess();
    v17 = *(v3 + 24);

    sub_1C0522240(v18);
    swift_beginAccess();
    v19 = *(v3 + 32);
    swift_beginAccess();

    sub_1C0522448(v20);
    swift_endAccess();

    sub_1C078CEA4(a1);
    v22 = v21;

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C05164EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v5 - 1;
    for (i = 32; ; i += 192)
    {
      v8 = *(v4 + i);
      v9 = *(v4 + i + 16);
      v10 = *(v4 + i + 48);
      v34 = *(v4 + i + 32);
      v35 = v10;
      v32 = v8;
      v33 = v9;
      v11 = *(v4 + i + 64);
      v12 = *(v4 + i + 80);
      v13 = *(v4 + i + 112);
      v38 = *(v4 + i + 96);
      v39 = v13;
      v36 = v11;
      v37 = v12;
      v14 = *(v4 + i + 128);
      v15 = *(v4 + i + 144);
      v16 = *(v4 + i + 160);
      *(v42 + 9) = *(v4 + i + 169);
      v41 = v15;
      v42[0] = v16;
      v40 = v14;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v17 = *(v2 + 120);
      sub_1C0521E78(&v32, v31);
      sub_1C0521E78(&v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 120) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1C0522E00(0, *(v17 + 2) + 1, 1, v17);
        *(v2 + 120) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1C0522E00((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v21 = &v17[192 * v20];
      v22 = v32;
      v23 = v33;
      v24 = v35;
      *(v21 + 4) = v34;
      *(v21 + 5) = v24;
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      v25 = v36;
      v26 = v37;
      v27 = v39;
      *(v21 + 8) = v38;
      *(v21 + 9) = v27;
      *(v21 + 6) = v25;
      *(v21 + 7) = v26;
      v28 = v40;
      v29 = v41;
      v30 = v42[0];
      *(v21 + 201) = *(v42 + 9);
      *(v21 + 11) = v29;
      *(v21 + 12) = v30;
      *(v21 + 10) = v28;
      *(v2 + 120) = v17;
      swift_endAccess();

      sub_1C05755CC(&v32);
      if (!v6)
      {
        break;
      }

      --v6;
    }
  }

  return result;
}

uint64_t sub_1C05166B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v5 - 1;
    for (i = 32; ; i += 96)
    {
      v8 = *(v4 + i);
      v23 = *(v4 + i + 16);
      v22 = v8;
      v9 = *(v4 + i + 32);
      v10 = *(v4 + i + 48);
      v11 = *(v4 + i + 64);
      *(v26 + 9) = *(v4 + i + 73);
      v25 = v10;
      v26[0] = v11;
      v24 = v9;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v12 = *(v2 + 104);
      sub_1C0518B04(&v22, v21);
      sub_1C0518B04(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 104) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1C0519CF8(0, *(v12 + 2) + 1, 1, v12);
        *(v2 + 104) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_1C0519CF8((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[96 * v15];
      v17 = v23;
      *(v16 + 2) = v22;
      *(v16 + 3) = v17;
      v18 = v24;
      v19 = v25;
      v20 = v26[0];
      *(v16 + 105) = *(v26 + 9);
      *(v16 + 5) = v19;
      *(v16 + 6) = v20;
      *(v16 + 4) = v18;
      *(v2 + 104) = v12;
      swift_endAccess();

      sub_1C0518B60(&v22);
      if (!v6)
      {
        break;
      }

      --v6;
    }
  }

  return result;
}

uint64_t sub_1C0516880(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(result + 8);

    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      swift_unownedRetainStrong();
      v8 = *(v4 + 112);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 112) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1C052233C(0, *(v8 + 2) + 1, 1, v8);
        *(v4 + 112) = v8;
      }

      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      if (v11 >= v10 >> 1)
      {
        v8 = sub_1C052233C((v10 > 1), v11 + 1, 1, v8);
      }

      *(v8 + 2) = v11 + 1;
      v12 = &v8[16 * v11];
      *(v12 + 8) = v6;
      *(v12 + 5) = v7;
      *(v4 + 112) = v8;

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1C05169C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C095DF3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C0516A8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C095DFEC();
  sub_1C095D7BC();
  v6 = sub_1C095E03C();

  return sub_1C05169C0(a1, a2, v6);
}

uint64_t sub_1C0516B04(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1C095DD3C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1C095DFEC();
      sub_1C095D7BC();
      result = sub_1C095E03C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C0516DA4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t UsoGraphVocabManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Name.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v5 && (sub_1C095E00C(), v5[3]))
  {
    v7 = v5[8];
    v6 = v5[9];
    v9 = v5[6];
    v8 = v5[7];
    v11 = v5[4];
    v10 = v5[5];
    v12 = v5[2];
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095E03C();
}

uint64_t Uso_VerbTemplateBuilder_NoVerb.__deallocating_deinit()
{
  UsoTaskBuilder.deinit();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

int64_t sub_1C0516F90(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = v1[2];
  v8 = *(v7 + 16);
  *&v69 = *a1;
  *(&v69 + 1) = v2;
  v59 = v2;
  v61 = v5;
  v62 = v4;
  *&v70 = v4;
  *(&v70 + 1) = v5;
  *&v71 = v6;
  result = Name.hashValue.getter();
  if (!v8)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v10 = (v8 & ((result % v8) >> 63)) + result % v8;
  if (v10 < 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v11 = *(v7 + 16);
  if (v10 >= v11)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = v10 + 1;
  v13 = v7 + 32;
  v14 = *(v7 + 32 + 4 * v10);
  if (v10 + 1 >= v8)
  {
    v63 = v1[3];
    v15 = *(v63 + 16);
  }

  else
  {
    if (v12 >= v11)
    {
      goto LABEL_67;
    }

    v15 = *(v13 + 4 * v12);
    v63 = v1[3];
  }

  if (v15 < v14)
  {
    goto LABEL_64;
  }

  if ((v14 & 0x80000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (*(v63 + 16) < v15)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (v15 == v14)
  {
LABEL_53:
    v44 = 0;
    v45 = 1;
    goto LABEL_54;
  }

  v60 = v1[4];

  v16 = v59;
  v56 = v3;
  v50 = v15;
  v51 = v6;
  while (1)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v17 = *(v63 + 4 * v14 + 32);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_59;
    }

    if (*(v60 + 16) <= v17)
    {
      goto LABEL_60;
    }

    v18 = (v60 + 32 + 40 * v17);
    result = *v18;
    v19 = v18[2];
    v20 = v18[3];
    v21 = v18[4];
    if (*v18 != v3 || v18[1] != v16)
    {
      v23 = v18[1];
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v19 != v62 || v20 != v61)
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (!v21)
    {
      if (!v6)
      {
        goto LABEL_56;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    v25 = v21[1];
    v26 = v21[2];
    v27 = v21[4];
    v86 = v21[3];
    v87 = v27;
    v84 = v25;
    v85 = v26;
    v28 = v6[1];
    v29 = v6[2];
    v30 = v6[4];
    v88[2] = v6[3];
    v88[3] = v30;
    v88[0] = v28;
    v88[1] = v29;
    v31 = v84;
    v81 = v85;
    v82 = v86;
    v83 = v87;
    v32 = *(&v28 + 1);
    v33 = v6[3];
    v78 = v6[2];
    v79 = v33;
    v80 = v6[4];
    if (!*(&v84 + 1))
    {
      break;
    }

    v69 = v84;
    v71 = v86;
    v72 = v87;
    v70 = v85;
    if (!*(&v28 + 1))
    {
      v58 = v28;
      v43 = *(&v84 + 1);

      sub_1C057F900(&v84, v68);
      sub_1C057F900(v88, v68);
      sub_1C057F900(&v69, v68);

      v15 = v50;
      v6 = v51;
      goto LABEL_45;
    }

    v52 = *(&v72 + 1);
    v55 = *(&v71 + 1);
    v57 = *(&v70 + 1);
    v34 = v70;
    v48 = v71;
    v47 = v72;
    v68[0] = v28;
    v68[2] = v79;
    v68[3] = v80;
    v68[1] = v78;
    v35 = *(&v78 + 1);
    v36 = v78;
    v37 = v79;
    v38 = *(&v80 + 1);
    v46 = v80;
    v53 = *(&v84 + 1);
    v54 = v84;
    if (v84 == v28 || (v39 = *(&v78 + 1), v40 = v70, v41 = sub_1C095DF3C(), v35 = v39, v34 = v40, (v41 & 1) != 0))
    {
      v15 = v50;
      v6 = v51;
      if (v34 == v36 && v57 == v35 || (sub_1C095DF3C() & 1) != 0)
      {
        v42 = v38;
        v3 = v56;
        if (__PAIR128__(v55, v48) == v37 || (sub_1C095DF3C() & 1) != 0)
        {
          if (v47 == v46 && v52 == v42)
          {

            sub_1C057F900(&v84, v64);
            sub_1C057F900(v88, v64);
            sub_1C057F900(&v69, v64);
            v49 = 1;
          }

          else
          {
            v49 = sub_1C095DF3C();

            sub_1C057F900(&v84, v64);
            sub_1C057F900(v88, v64);
            sub_1C057F900(&v69, v64);
          }
        }

        else
        {

          sub_1C057F900(&v84, v64);
          sub_1C057F900(v88, v64);
          sub_1C057F900(&v69, v64);
          v49 = 0;
        }
      }

      else
      {

        sub_1C057F900(&v84, v64);
        sub_1C057F900(v88, v64);
        sub_1C057F900(&v69, v64);
        v49 = 0;
        v3 = v56;
      }
    }

    else
    {

      sub_1C057F900(&v84, v64);
      sub_1C057F900(v88, v64);
      sub_1C057F900(&v69, v64);
      v49 = 0;
      v3 = v56;
      v15 = v50;
      v6 = v51;
    }

    sub_1C05145B4(v68, &qword_1EBE16D80, &qword_1C0970448);

    v64[0] = v54;
    v64[1] = v53;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    sub_1C05145B4(v64, &qword_1EBE16D80, &qword_1C0970448);

    if (v49)
    {
      goto LABEL_56;
    }

    v16 = v59;
LABEL_14:
    if (v15 == ++v14)
    {

      goto LABEL_53;
    }
  }

  if (*(&v28 + 1))
  {
    v58 = v28;
    v43 = 0;

    sub_1C057F900(&v84, &v69);
    sub_1C057F900(v88, &v69);
LABEL_45:
    *&v69 = v31;
    *(&v69 + 1) = v43;
    v70 = v81;
    v71 = v82;
    v72 = v83;
    v73 = v58;
    v74 = v32;
    v75 = v78;
    v76 = v79;
    v77 = v80;
    sub_1C05145B4(&v69, &qword_1EBE16D88, &qword_1C0970450);

    v3 = v56;
    v16 = v59;
    goto LABEL_14;
  }

  v69 = v84;
  v70 = v85;
  v71 = v86;
  v72 = v87;
  sub_1C057F900(&v84, v68);
  sub_1C057F900(v88, v68);
  sub_1C05145B4(&v69, &qword_1EBE16D80, &qword_1C0970448);
LABEL_56:

  v44 = (v17 + 1);
  if (__OFADD__(v17, 1))
  {
    goto LABEL_68;
  }

  v45 = 0;
LABEL_54:
  LOBYTE(v69) = v45;
  return v44 | (v45 << 32);
}

uint64_t sub_1C05176D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  if (qword_1EBE14950 != -1)
  {
    swift_once();
  }

  v8[0] = v1;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v6 = sub_1C0516F90(v8);
  return v6 | ((HIDWORD(v6) & 1) << 32);
}

uint64_t sub_1C051776C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *UsoTaskBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];
  sub_1C0517838(v0[9], v0[10]);
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[18];
  sub_1C0517838(v0[14], v0[15]);
  v12 = v0[19];

  return v0;
}

uint64_t sub_1C0517838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C051789C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  sub_1C051776C(v0[2], v0[3]);

  return swift_deallocClassInstance();
}

unint64_t sub_1C05178E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C095DD5C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C0516A8C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_1C0517A0C(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  v5 = a1[3];
  v1[5] = v4;
  v1[6] = v5;

  v6 = MEMORY[0x1E69E7CC0];
  v1[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v1[2] = v6;
  v1[3] = v6;
  v1[4] = v6;
  v7 = a1[6];

  if (sub_1C0517C50(v7, 1, 1, 1))
  {
    type metadata accessor for UsoEntityBuilder();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v1[6];
      v1[5] = v4;
      v1[6] = v5;
      v10 = v8;

      v11 = a1[5];
      swift_beginAccess();

      sub_1C0522140(v12);
      swift_endAccess();
      v13 = *(v7 + 24);
      swift_unownedRetainStrong();
      v14 = *(v13 + 112);

      sub_1C0522240(v14);
      v15 = a1[7];
      swift_beginAccess();

      sub_1C0522448(v16);
      swift_endAccess();
      swift_beginAccess();
      v17 = *(v10 + 56);
      swift_beginAccess();

      v18 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v2[7];
      v2[7] = 0x8000000000000000;
      sub_1C0522548(v17, sub_1C05227D4, 0, isUniquelyReferenced_nonNull_native, &v21);

      v2[7] = v21;
      swift_endAccess();
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_1C0517C50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1C0519574();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    type metadata accessor for UsoPrimitiveStringBuilder();
    v12 = swift_allocObject();
    v13 = v12;
    v12[6] = v11;
LABEL_10:
    v25 = MEMORY[0x1E69E7CC0];
    v12[2] = MEMORY[0x1E69E7CC0];
    v12[3] = v25;
    v12[4] = v25;
    v12[5] = v10;
    goto LABEL_11;
  }

  v14 = *(a1 + 24);
  *&v107 = *(a1 + 16);
  *(&v107 + 1) = v14;
  v15 = Node.int64Value.getter();
  if ((v16 & 1) == 0)
  {
    v10 = v15;
    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v12 = swift_allocObject();
    v13 = v12;
    *(v12 + 48) = 0;
    goto LABEL_10;
  }

  v17 = sub_1C0518574();
  if (v17)
  {
    v18 = v17[3];
    if (v18)
    {
      v19 = v17[4];
      if (v19)
      {
        v20 = v17[2];
        v21 = v17[4];

        v22 = sub_1C0517C50(v19, a2 & 1, a3 & 1, a4 & 1);
        if (v22)
        {
          v23 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
          v13 = swift_allocObject();
          v13[5] = v20;
          v13[6] = v18;
          v13[7] = v23;

          v24 = MEMORY[0x1E69E7CC0];
          v13[2] = MEMORY[0x1E69E7CC0];
          v13[3] = v24;
          v13[4] = v24;
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  v47 = sub_1C0518BC4();
  if (!v47)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v48 = v47;
  v103 = a1;
  swift_unownedRetainStrong();
  v50 = *(v14 + 80);
  v49 = *(v14 + 88);

  if (v50 == 0x5664656E69666544 && v49 == 0xEC00000065756C61)
  {

LABEL_44:
    v53 = v48[2];
    v52 = v48[3];
    type metadata accessor for UsoDefinedValueBuilder();
    v13 = swift_allocObject();
    v13[5] = v53;
    v13[6] = v52;

    v54 = MEMORY[0x1E69E7CC0];
    v13[2] = MEMORY[0x1E69E7CC0];
    v13[3] = v54;
    v13[4] = v54;
LABEL_11:
    if (a2)
    {
      v26 = *(a1 + 24);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v27 = *(v26 + 104);

      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = (v27 + 32);
        do
        {
          if (v13)
          {
            v109 = v29[2];
            v110 = v29[3];
            *v111 = v29[4];
            *&v111[9] = *(v29 + 73);
            v107 = *v29;
            v108 = v29[1];
            (*(*v13 + 184))(&v107);
          }

          v29 += 6;
          --v28;
        }

        while (v28);
      }

      if ((a3 & 1) == 0)
      {
LABEL_13:
        if ((a4 & 1) == 0)
        {
          return v13;
        }

LABEL_31:
        v42 = *(a1 + 24);
        swift_unownedRetainStrong();
        swift_beginAccess();
        v43 = *(v42 + 120);

        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 32;
          do
          {
            if (v13)
            {
              v114 = *(v43 + v45 + 128);
              v115 = *(v43 + v45 + 144);
              v116[0] = *(v43 + v45 + 160);
              *(v116 + 9) = *(v43 + v45 + 169);
              *v111 = *(v43 + v45 + 64);
              *&v111[16] = *(v43 + v45 + 80);
              v112 = *(v43 + v45 + 96);
              v113 = *(v43 + v45 + 112);
              v107 = *(v43 + v45);
              v108 = *(v43 + v45 + 16);
              v109 = *(v43 + v45 + 32);
              v110 = *(v43 + v45 + 48);
              (*(*v13 + 216))(&v107);
            }

            v45 += 192;
            --v44;
          }

          while (v44);
        }

        return v13;
      }
    }

    else if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }

    v105 = a4;
    v30 = a1;
    v31 = *(a1 + 24);
    swift_unownedRetainStrong();
    v32 = *(v31 + 112);

    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = (v32 + 40);
      do
      {
        if (v13)
        {
          v36 = *(v34 - 2);
          v37 = *v34;
          v38 = v13[3];
          swift_bridgeObjectRetain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13[3] = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = sub_1C052233C(0, *(v38 + 2) + 1, 1, v38);
            v13[3] = v38;
          }

          v41 = *(v38 + 2);
          v40 = *(v38 + 3);
          if (v41 >= v40 >> 1)
          {
            v38 = sub_1C052233C((v40 > 1), v41 + 1, 1, v38);
          }

          *(v38 + 2) = v41 + 1;
          v35 = &v38[16 * v41];
          *(v35 + 8) = v36;
          *(v35 + 5) = v37;
          v13[3] = v38;
        }

        v34 += 2;
        --v33;
      }

      while (v33);
    }

    a1 = v30;
    if ((v105 & 1) == 0)
    {
      return v13;
    }

    goto LABEL_31;
  }

  v51 = sub_1C095DF3C();

  if (v51)
  {
    goto LABEL_44;
  }

  v56 = v48[2];
  v55 = v48[3];
  type metadata accessor for UsoEntityBuilder();
  v13 = swift_allocObject();
  v13[5] = v56;
  v13[6] = v55;

  v57 = MEMORY[0x1E69E7CC0];
  v13[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v102 = v13 + 7;
  v13[2] = v57;
  v13[3] = v57;
  v13[4] = v57;
  v58 = v48[4];
  v59 = v58 + 64;
  v60 = 1 << *(v58 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v58 + 64);
  v99 = (v60 + 63) >> 6;

  v98 = v58;

  v63 = 0;
  v106 = a4;
  v96 = v58 + 64;
  while (v62)
  {
LABEL_57:
    v100 = v63;
    v101 = v62;
    v67 = __clz(__rbit64(v62)) | (v63 << 6);
    v68 = (*(v98 + 48) + 16 * v67);
    v69 = v68[1];
    v104 = *v68;
    v70 = *(*(v98 + 56) + 8 * v67);
    v117 = MEMORY[0x1E69E7CC0];
    if (v70 >> 62)
    {
      v79 = v69;
      v71 = sub_1C095DCDC();
      v69 = v79;
      if (!v71)
      {
LABEL_72:

        v75 = MEMORY[0x1E69E7CC0];
        goto LABEL_73;
      }
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        goto LABEL_72;
      }
    }

    if (v71 < 1)
    {
      goto LABEL_86;
    }

    v72 = a2;
    v73 = a3;
    v97 = v69;

    v74 = 0;
    v75 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x1C68DDAD0](v74, v70);
      }

      else
      {
        v76 = *(v70 + 8 * v74 + 32);
      }

      if (sub_1C0517C50(v76, v72 & 1, v73 & 1, v106 & 1))
      {

        MEMORY[0x1C68DD810](v77);
        if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C095D9AC();
        }

        sub_1C095D9DC();

        v75 = v117;
      }

      else
      {
      }

      ++v74;
    }

    while (v71 != v74);

    a3 = v73;
    a2 = v72;
    v78 = v97;
LABEL_73:
    swift_beginAccess();
    v80 = *v102;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *v102;
    *v102 = 0x8000000000000000;
    v83 = v78;
    v84 = sub_1C0516A8C(v104, v78);
    v86 = v82[2];
    v87 = (v85 & 1) == 0;
    v88 = __OFADD__(v86, v87);
    v89 = v86 + v87;
    a4 = v106;
    if (v88)
    {
      goto LABEL_85;
    }

    v90 = v85;
    if (v82[3] < v89)
    {
      sub_1C0516A78(v89, v81);
      v84 = sub_1C0516A8C(v104, v83);
      if ((v90 & 1) != (v91 & 1))
      {
        goto LABEL_88;
      }

LABEL_78:
      if (v90)
      {
        goto LABEL_50;
      }

      goto LABEL_79;
    }

    if (v81)
    {
      goto LABEL_78;
    }

    v95 = v84;
    sub_1C066FDF8();
    v84 = v95;
    if (v90)
    {
LABEL_50:
      v64 = v82[7];
      v65 = *(v64 + 8 * v84);
      *(v64 + 8 * v84) = v75;

      goto LABEL_51;
    }

LABEL_79:
    v82[(v84 >> 6) + 8] |= 1 << v84;
    v92 = (v82[6] + 16 * v84);
    *v92 = v104;
    v92[1] = v83;
    *(v82[7] + 8 * v84) = v75;
    v93 = v82[2];
    v88 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v88)
    {
      goto LABEL_87;
    }

    v82[2] = v94;
LABEL_51:
    v59 = v96;
    a1 = v103;
    *v102 = v82;
    v62 = (v101 - 1) & v101;
    swift_endAccess();
    v63 = v100;
  }

  while (1)
  {
    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v66 >= v99)
    {

      goto LABEL_11;
    }

    v62 = *(v59 + 8 * v66);
    ++v63;
    if (v62)
    {
      v63 = v66;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

void *sub_1C0518574()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);

  if (v3 == 0x726F74617265704FLL && v2 == 0xE800000000000000)
  {
  }

  else
  {
    v5 = sub_1C095DF3C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v0 + 24);
  *&v17[0] = *(v0 + 16);
  *(&v17[0] + 1) = v6;
  v16[0] = 0;
  v16[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v7 = sub_1C0519A28(v17, v16, v19);
  if (*(v7 + 16) == 1)
  {
    v8 = *(v7 + 48);
    v9 = *(v7 + 80);
    v10 = *(v7 + 96);
    v17[2] = *(v7 + 64);
    v17[3] = v9;
    v18 = v10;
    v17[0] = *(v7 + 32);
    v17[1] = v8;
    sub_1C0519E14(v17, v16);

    v15 = v18;

    type metadata accessor for UsoValue();
    v11 = swift_allocObject();
    *(v11 + 16) = v15;
    swift_unownedRetainStrong();
    v13 = *(v6 + 64);
    v12 = *(v6 + 72);

    type metadata accessor for UsoExpression();
    result = swift_allocObject();
    result[2] = v13;
    result[3] = v12;
    result[4] = v11;
    return result;
  }

  return 0;
}

uint64_t sub_1C0518704(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  v19 = a1[3];
  v20[0] = v3;
  *(v20 + 9) = *(a1 + 73);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = v2;
  swift_beginAccess();
  v5 = *(v1 + 16);
  sub_1C0518B04(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1C0519CF8(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1C0519CF8((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[96 * v8];
  v10 = v17;
  *(v9 + 2) = v16;
  *(v9 + 3) = v10;
  v11 = v18;
  v12 = v19;
  v13 = v20[0];
  *(v9 + 105) = *(v20 + 9);
  *(v9 + 5) = v12;
  *(v9 + 6) = v13;
  *(v9 + 4) = v11;
  *(v1 + 16) = v5;
  return swift_endAccess();
}

char *static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)(uint64_t a1, char a2)
{
  v25 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v4 = *(a1 + 32);
  result = swift_unownedRetainStrong();
  if (v4)
  {

    swift_unownedRetain();

    v18 = 0;
    v19 = 0xE000000000000000;
    v20 = a1;
    v21 = v4;
    sub_1C051A3AC(0, &v18, &v26, &v25, &v24, &v23, &v22, a2 & 1);

    swift_unownedRelease();

    v18 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
    sub_1C051E778();
    v6 = sub_1C095D72C();
    v8 = v7;

    if (a2)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1C095DC1C();
      MEMORY[0x1C68DD690](v6, v8);

      MEMORY[0x1C68DD690](0x69746E6564490A0ALL, 0xEF0A3A7372656966);
      v9 = sub_1C095D72C();
      v11 = v10;

      MEMORY[0x1C68DD690](v9, v11);

      MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CD630);
      v12 = sub_1C095D72C();
      v14 = v13;

      MEMORY[0x1C68DD690](v12, v14);

      MEMORY[0x1C68DD690](0x797469746E450A0ALL, 0xEF0A3A736E617053);
      v15 = sub_1C095D72C();
      v17 = v16;

      MEMORY[0x1C68DD690](v15, v17);

      return v18;
    }

    else
    {
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0518BB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C0518BC4()
{
  v1 = v0;
  v2 = *(v0 + 24);
  swift_unownedRetainStrong();
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);

  if (v4 == 0x797469746E45 && v3 == 0xE600000000000000)
  {
LABEL_12:

    goto LABEL_13;
  }

  v6 = sub_1C095DF3C();

  if ((v6 & 1) == 0)
  {
    swift_unownedRetainStrong();
    v8 = *(v2 + 80);
    v7 = *(v2 + 88);

    if (v8 != 0x5664656E69666544 || v7 != 0xEC00000065756C61)
    {
      v10 = sub_1C095DF3C();

      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = sub_1C0519234(MEMORY[0x1E69E7CC0]);
  v13 = *(v1 + 24);
  *&v74 = *(v1 + 16);
  *(&v74 + 1) = v13;
  v73[0] = 0;
  v73[1] = 0;
  v79[0] = 0;
  v79[1] = 0;
  v14 = sub_1C0519A28(&v74, v73, v79);
  v15 = *(v14 + 16);
  if (!v15)
  {

LABEL_46:
    swift_unownedRetainStrong();
    v64 = v13[8];
    v63 = v13[9];

    swift_unownedRetainStrong();
    swift_beginAccess();
    v65 = v13[13];

    swift_unownedRetainStrong();
    swift_beginAccess();
    v66 = v13[15];

    type metadata accessor for UsoEntity();
    v67 = swift_allocObject();
    v67[2] = v64;
    v67[3] = v63;
    v67[4] = v12;
    v67[5] = v65;

    result = v67;
    v67[6] = v1;
    v67[7] = v66;
    return result;
  }

  v68 = v13;
  v69 = v1;
  v16 = 0;
  v71 = v15 - 1;
  v17 = 32;
  v70 = v14;
  do
  {
    v19 = *(v14 + v17 + 48);
    v18 = *(v14 + v17 + 64);
    v20 = *(v14 + v17 + 32);
    v75 = *(v14 + v17 + 16);
    v76 = v20;
    v77 = v19;
    v78 = v18;
    v74 = *(v14 + v17);
    v21 = *(&v75 + 1);
    v22 = v20;
    v23 = v18;
    sub_1C0519E14(&v74, v73);
    sub_1C0519E14(&v74, v73);

    type metadata accessor for UsoValue();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_1C0519E14(&v74, v73);

    swift_unownedRelease();

    if (!v12[2] || (v25 = sub_1C0516A8C(v21, v22), (v26 & 1) == 0))
    {
      v72 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1C0970C90;
      *(v42 + 32) = v24;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v12;
      v44 = v21;
      v46 = sub_1C0516A8C(v21, v22);
      v47 = v12[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_47;
      }

      v50 = v45;
      if (v12[3] < v49)
      {
        sub_1C051A220(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_1C0516A8C(v44, v22);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_51;
        }

        v46 = v51;
        if ((v50 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_31:

        v12 = v73[0];
        v53 = *(v73[0] + 56);
        v54 = *(v53 + 8 * v46);
        *(v53 + 8 * v46) = v42;

        sub_1C0519E84(&v74);
LABEL_40:
        v14 = v70;
        v17 = v72;
        goto LABEL_41;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_1C066FE0C(&qword_1EBE17490, &qword_1C0970AD0);
        if (v50)
        {
          goto LABEL_31;
        }
      }

LABEL_38:
      v12 = v73[0];
      *(v73[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v58 = (v12[6] + 16 * v46);
      *v58 = v44;
      v58[1] = v22;
      *(v12[7] + 8 * v46) = v42;

      sub_1C0519E84(&v74);
      v59 = v12[2];
      v34 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v34)
      {
        goto LABEL_48;
      }

      v12[2] = v60;
      goto LABEL_40;
    }

    v73[0] = *(v12[7] + 8 * v25);

    MEMORY[0x1C68DD810](v27);
    if (*((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v61 = *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C095D9AC();
    }

    sub_1C095D9DC();
    v28 = v73[0];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v12;
    v30 = sub_1C0516A8C(v21, v22);
    v32 = v12[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_49;
    }

    v36 = v31;
    if (v12[3] >= v35)
    {
      if ((v29 & 1) == 0)
      {
        v62 = v30;
        sub_1C066FE0C(&qword_1EBE17490, &qword_1C0970AD0);
        v30 = v62;
      }

      v37 = v21;
      if (v36)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1C051A220(v35, v29);
      v37 = v21;
      v30 = sub_1C0516A8C(v21, v22);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_51;
      }

      if (v36)
      {
LABEL_23:
        v39 = v30;

        v12 = v79[0];
        v40 = *(v79[0] + 56);
        v41 = *(v40 + 8 * v39);
        *(v40 + 8 * v39) = v28;

        sub_1C0519E84(&v74);
        v14 = v70;
        goto LABEL_41;
      }
    }

    v12 = v79[0];
    *(v79[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v55 = (v12[6] + 16 * v30);
    *v55 = v37;
    v55[1] = v22;
    *(v12[7] + 8 * v30) = v28;

    sub_1C0519E84(&v74);
    v56 = v12[2];
    v34 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v34)
    {
      goto LABEL_50;
    }

    v12[2] = v57;
    v14 = v70;
LABEL_41:
    if (v71 == v16)
    {

      v13 = v68;
      v1 = v69;
      goto LABEL_46;
    }

    ++v16;
    v17 += 80;
  }

  while (v16 < *(v14 + 16));
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t static UsoBuilderConversionUtils.convertEntityToGraph(entity:)(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  v4 = v2 == qword_1ED5D7CA8 && v3 == unk_1ED5D7CB0;
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    v5 = v2 == qword_1ED5BDEE0 && v3 == *algn_1ED5BDEE8;
    if (!v5 && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = sub_1C0517C50(a1[6], 1, 1, 1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
LABEL_17:
    type metadata accessor for UsoEntityBuilder();
    swift_allocObject();

    v7 = sub_1C0517A0C(v8);
  }

  v9 = *(a1[6] + 24);
  swift_unownedRetainStrong();
  v11 = v9[8];
  v10 = v9[9];
  v13 = v9[10];
  v12 = v9[11];
  v14 = v9[12];

  type metadata accessor for UsoTaskBuilder();
  v15 = swift_allocObject();
  *(v15 + 40) = v2;
  *(v15 + 48) = v3;
  *(v15 + 56) = xmmword_1C0975340;
  *(v15 + 72) = xmmword_1C0975350;
  *(v15 + 88) = xmmword_1C0975360;
  *(v15 + 104) = 0;
  *(v15 + 112) = v11;
  *(v15 + 120) = v10;
  *(v15 + 128) = v13;
  *(v15 + 136) = v12;
  *(v15 + 144) = v14;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v15 + 16) = v16;
  *(v15 + 24) = v16;
  *(v15 + 32) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C0970C90;
  *(v17 + 32) = v7;
  swift_beginAccess();

  v18 = *(v15 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v15 + 152);
  *(v15 + 152) = 0x8000000000000000;
  sub_1C051D194(v17, 0x797469746E65, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v15 + 152) = v23;
  swift_endAccess();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0970C90;
  *(inited + 32) = v15;
  v24[0] = 2;

  v21 = _s12SiriOntology15UsoGraphBuilderO05buildD11WithOptions12taskBuilders7optionsAA0D0CSayAA0c4TaskE0CG_AA0ceH0VSgtFZ_0(inited, v24);

  return v21;
}

uint64_t sub_1C0519574()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);

  if (v3 == 0x5664656E69666544 && v2 == 0xEC00000065756C61)
  {
  }

  else
  {
    v5 = sub_1C095DF3C();

    if ((v5 & 1) == 0)
    {
      v7 = *(v0 + 16);
      return Node.stringValue.getter();
    }
  }

  return 0;
}

uint64_t Node.stringValue.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);

  if (v3 == 0x5664656E69666544 && v2 == 0xEC00000065756C61)
  {

    goto LABEL_15;
  }

  v5 = sub_1C095DF3C();

  if (v5)
  {
LABEL_15:
    swift_unownedRetainStrong();
    v10 = *(v1 + 64);
    v11 = *(v1 + 72);

    return v10;
  }

  swift_unownedRetainStrong();
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);

  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  if (v7 == qword_1ED5D7CA8 && v6 == unk_1ED5D7CB0)
  {
  }

  else
  {
    v9 = sub_1C095DF3C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  swift_unownedRetainStrong();
  v10 = *(v1 + 24);
  v12 = *(v1 + 40);
  sub_1C0514B20(v10, *(v1 + 32), *(v1 + 40));

  if (v12 == 255 || (v12 & 1) == 0)
  {
    return 0;
  }

  return v10;
}

uint64_t Node.int64Value.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);

  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  if (v3 == qword_1ED5BDEE0 && v2 == *algn_1ED5BDEE8)
  {
  }

  else
  {
    v5 = sub_1C095DF3C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  swift_unownedRetainStrong();
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  sub_1C0514B20(v6, v7, *(v1 + 40));

  if (v8 == 255)
  {
    return 0;
  }

  if (v8)
  {
    sub_1C05144FC(v6, v7, v8);
    return 0;
  }

  return v6;
}

void *sub_1C05198E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171E0, &qword_1C09709B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171E8, &qword_1C09709C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0519A28(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *(a1 + 8);
  v7 = *a2;
  v6 = a2[1];
  v33 = *a3;
  v35 = a3[1];
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  swift_beginAccess();
  v10 = v9 - 1;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 32;
  v34 = v7;
  while (1)
  {
    v13 = *(v8 + v12 + 48);
    v15 = *(v8 + v12);
    v14 = *(v8 + v12 + 16);
    *v42 = *(v8 + v12 + 32);
    *&v42[16] = v13;
    v40 = v15;
    v41 = v14;
    v16 = v15;
    swift_unownedRetainStrong();
    v17 = *(v5 + 56);
    sub_1C0514AC4(&v40, &v36);

    if (v16 != v17)
    {
LABEL_18:
      sub_1C0514A70(&v40);
      goto LABEL_19;
    }

    if (v6)
    {
      if (!*&v42[16])
      {
        goto LABEL_21;
      }

      if (__PAIR128__(v6, v7) != *&v42[8] && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v4 + 24);
    if (!*(v18 + 16))
    {
      goto LABEL_18;
    }

    v19 = sub_1C0514E38(*(&v40 + 1));
    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }

    v21 = *(*(v18 + 56) + 8 * v19);
    if (!v35)
    {
      goto LABEL_22;
    }

    v22 = *(v21 + 88);
    if (!v22)
    {
LABEL_21:

      sub_1C0514A70(&v40);

      goto LABEL_19;
    }

    if (*(v21 + 80) == v33 && v35 == v22)
    {
LABEL_22:
    }

    else
    {
      v24 = sub_1C095DF3C();

      if ((v24 & 1) == 0)
      {

        sub_1C0514A70(&v40);
        v7 = v34;
        goto LABEL_19;
      }
    }

    swift_unownedRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C05198E0(0, v11[2] + 1, 1, v11);
    }

    v26 = v11[2];
    v25 = v11[3];
    if (v26 >= v25 >> 1)
    {
      v11 = sub_1C05198E0((v25 > 1), v26 + 1, 1, v11);
    }

    v38 = *v42;
    v39 = *&v42[16];
    v27 = v40;
    v36 = v40;
    v37 = v41;
    v11[2] = v26 + 1;
    v28 = &v11[10 * v26];
    v29 = v37;
    v30 = v39;
    *(v28 + 4) = v38;
    *(v28 + 5) = v30;
    *(v28 + 2) = v27;
    *(v28 + 3) = v29;
    v28[12] = v4;
    v28[13] = v21;
    v7 = v34;
LABEL_19:
    if (!v10)
    {
      break;
    }

    --v10;
    v12 += 64;
  }

LABEL_31:
  v31 = sub_1C0519EEC(v11);

  return v31;
}

char *sub_1C0519CF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E48, &qword_1C09705F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0519E14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0519E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0519EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C051A1EC(0, v1, 0);
    v2 = v27;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v6 = v4[3];
      v19 = v4[2];
      v20 = v6;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[1];
      v18[0] = *v4;
      v18[1] = v9;
      v24 = v19;
      v25 = v7;
      v26 = v4[4];
      v23 = v5;
      v21 = v8;
      v22 = v18[0];
      sub_1C05149F8(v18, v17, &qword_1EBE171E8, &qword_1C09709C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171E8, &qword_1C09709C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
      swift_dynamicCast();
      v25 = v17[3];
      v26 = v17[4];
      v23 = v17[1];
      v24 = v17[2];
      v22 = v17[0];
      v27 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C051A1EC((v10 > 1), v11 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + 80 * v11);
      v12[2] = v22;
      v13 = v23;
      v14 = v24;
      v15 = v26;
      v12[5] = v25;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C051A080(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18260, &qword_1C0978D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C051A1EC(void *a1, int64_t a2, char a3)
{
  result = sub_1C051A080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double sub_1C051A258(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 48);
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED5D7CA8;
  v10 = unk_1ED5D7CB0;
  v11 = qword_1ED5D7CB8;
  v12 = unk_1ED5D7CC0;
  v13 = qword_1ED5D7CC8;

  v6 = sub_1C0514CE0(&v9, v4, v5, 1, MEMORY[0x1E69E7CC0]);

  swift_unownedRetain();

  v9 = a1;
  v10 = v6;
  sub_1C05166B8(&v9);
  v9 = a1;
  v10 = v6;
  sub_1C0516880(&v9);
  v9 = a1;
  v10 = v6;
  sub_1C05164EC(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_1C096E0C0;
  *(v7 + 32) = a1;
  *(v7 + 40) = v6;
  return result;
}

uint64_t sub_1C051A3AC(uint64_t a1, uint64_t *a2, char **a3, char **a4, char **a5, char **a6, unint64_t *a7, char a8)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  swift_unownedRetainStrong();
  v16 = *(v15 + 56);

  swift_unownedRetain();

  v135 = a7;
  sub_1C051DFC8(&v143, v16);
  *&v150 = 0;
  *(&v150 + 1) = 0xE000000000000000;
  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_76;
  }

  v16 = (4 * a1);
  if (4 * a1 < 0)
  {
    goto LABEL_77;
  }

  for (; v16; --v16)
  {
    MEMORY[0x1C68DD690](32, 0xE100000000000000);
  }

  type metadata accessor for UsoValue();
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 24) = v15;
  *&v149 = 0;
  *(&v149 + 1) = 0xE000000000000000;
  v18 = sub_1C0519574();
  v123 = inited;
  v131 = v14;
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18010, &qword_1C09753C8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C096E0C0;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C0522824();
    *(v22 + 32) = v20;
    *(v22 + 40) = v21;
  }

  else
  {
    v143 = *(inited + 16);
    v23 = Node.int64Value.getter();
    if (v24)
    {
      v143 = v150;

      MEMORY[0x1C68DD690](v13, v12);
      v25 = v143;
      swift_unownedRetainStrong();
      v26 = *(v15 + 64);
      v27 = *(v15 + 72);

      v143 = v25;

      MEMORY[0x1C68DD690](v26, v27);

      goto LABEL_11;
    }

    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18010, &qword_1C09753C8);
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E7360];
    *(v29 + 16) = xmmword_1C096E0C0;
    v31 = MEMORY[0x1E69E73D8];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v28;
  }

  v32 = sub_1C095D76C();
  v34 = v33;
  v143 = v150;

  MEMORY[0x1C68DD690](v13, v12);
  MEMORY[0x1C68DD690](v32, v34);
LABEL_11:

  v149 = v143;
  if ((a8 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v35 = *(v15 + 104);

  v36 = *(v35 + 16);

  if (v36 || (swift_unownedRetainStrong(), v37 = *(v15 + 112), , , v38 = *(v37 + 16), , v38))
  {
  }

  else
  {
    swift_unownedRetainStrong();
    swift_beginAccess();
    v121 = *(v15 + 120);

    v122 = *(v121 + 16);

    if (!v122)
    {
      goto LABEL_48;
    }
  }

  *&v143 = 0x646E4965646F6E3CLL;
  *(&v143 + 1) = 0xEB000000003D7865;
  swift_unownedRetainStrong();
  v39 = *(v15 + 56);

  *&v137 = v39;
  v40 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v40);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  MEMORY[0x1C68DD690](v143, *(&v143 + 1));

  swift_unownedRetainStrong();
  swift_beginAccess();
  v41 = *(v15 + 104);

  v42 = *(v41 + 16);

  v125 = a1;
  if (v42)
  {
    swift_unownedRetainStrong();
    swift_beginAccess();
    v43 = *(v15 + 104);

    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = *a4;
      v46 = v44 - 1;
      for (i = 32; ; i += 96)
      {
        v48 = *(v43 + i + 16);
        v143 = *(v43 + i);
        v144 = v48;
        v49 = *(v43 + i + 32);
        v50 = *(v43 + i + 48);
        v51 = *(v43 + i + 64);
        *(v147 + 9) = *(v43 + i + 73);
        v146 = v50;
        v147[0] = v51;
        v145 = v49;
        v139 = *(v43 + i + 32);
        v140 = *(v43 + i + 48);
        v141[0] = *(v43 + i + 64);
        *(v141 + 9) = *(v43 + i + 73);
        v137 = *(v43 + i);
        v138 = *(v43 + i + 16);
        swift_unownedRetainStrong();
        v52 = *(v15 + 56);
        sub_1C0518B04(&v143, v136);

        v53 = sub_1C0522878(&v137);
        v55 = v54;
        sub_1C0518B60(&v143);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1C051B0D4(0, *(v45 + 2) + 1, 1, v45);
        }

        v57 = *(v45 + 2);
        v56 = *(v45 + 3);
        if (v57 >= v56 >> 1)
        {
          v45 = sub_1C051B0D4((v56 > 1), v57 + 1, 1, v45);
        }

        *(v45 + 2) = v57 + 1;
        v58 = &v45[16 * v57];
        *(v58 + 4) = v53;
        *(v58 + 5) = v55;
        if (!v46)
        {
          break;
        }

        --v46;
      }

      a1 = v125;
      *a4 = v45;
    }

    else
    {
    }
  }

  swift_unownedRetainStrong();
  v59 = *(v15 + 112);

  v60 = *(v59 + 16);

  if (v60)
  {
    swift_unownedRetainStrong();
    v61 = *(v15 + 112);

    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = *a5;
      v64 = (v61 + 40);
      do
      {
        v65 = *v64;
        LODWORD(v143) = *(v64 - 2);
        *(&v143 + 1) = v65;
        swift_unownedRetainStrong();
        v66 = *(v15 + 56);

        v67 = sub_1C05CBEC4(&v143);
        v69 = v68;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_1C051B0D4(0, *(v63 + 2) + 1, 1, v63);
        }

        v71 = *(v63 + 2);
        v70 = *(v63 + 3);
        if (v71 >= v70 >> 1)
        {
          v63 = sub_1C051B0D4((v70 > 1), v71 + 1, 1, v63);
        }

        *(v63 + 2) = v71 + 1;
        v72 = &v63[16 * v71];
        *(v72 + 4) = v67;
        *(v72 + 5) = v69;
        v64 += 2;
        --v62;
      }

      while (v62);

      *a5 = v63;
    }

    else
    {
    }

    a1 = v125;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v73 = *(v15 + 120);

  v74 = *(v73 + 16);

  if (v74)
  {
    swift_unownedRetainStrong();
    swift_beginAccess();
    v75 = *(v15 + 120);

    v132 = v75;
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = *a6;
      v78 = v76 - 1;
      for (j = 32; ; j += 192)
      {
        v80 = *(v132 + j);
        v81 = *(v132 + j + 16);
        v82 = *(v132 + j + 48);
        v145 = *(v132 + j + 32);
        v146 = v82;
        v143 = v80;
        v144 = v81;
        v83 = *(v132 + j + 64);
        v84 = *(v132 + j + 80);
        v85 = *(v132 + j + 112);
        v147[2] = *(v132 + j + 96);
        v147[3] = v85;
        v147[0] = v83;
        v147[1] = v84;
        v86 = *(v132 + j + 128);
        v87 = *(v132 + j + 144);
        v88 = *(v132 + j + 160);
        *(v148 + 9) = *(v132 + j + 169);
        v147[5] = v87;
        v148[0] = v88;
        v147[4] = v86;
        v141[4] = *(v132 + j + 128);
        v141[5] = *(v132 + j + 144);
        v142[0] = *(v132 + j + 160);
        *(v142 + 9) = *(v132 + j + 169);
        v141[0] = *(v132 + j + 64);
        v141[1] = *(v132 + j + 80);
        v141[2] = *(v132 + j + 96);
        v141[3] = *(v132 + j + 112);
        v137 = *(v132 + j);
        v138 = *(v132 + j + 16);
        v139 = *(v132 + j + 32);
        v140 = *(v132 + j + 48);
        swift_unownedRetainStrong();
        v89 = *(v15 + 56);
        sub_1C0521E78(&v143, v136);

        v90 = sub_1C05CD020(&v137, v89);
        v92 = v91;
        sub_1C05755CC(&v143);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1C051B0D4(0, *(v77 + 2) + 1, 1, v77);
        }

        v94 = *(v77 + 2);
        v93 = *(v77 + 3);
        if (v94 >= v93 >> 1)
        {
          v77 = sub_1C051B0D4((v93 > 1), v94 + 1, 1, v77);
        }

        *(v77 + 2) = v94 + 1;
        v95 = &v77[16 * v94];
        *(v95 + 4) = v90;
        *(v95 + 5) = v92;
        if (!v78)
        {
          break;
        }

        --v78;
      }

      *a6 = v77;
      a1 = v125;
      goto LABEL_48;
    }

LABEL_24:
  }

LABEL_48:
  v9 = *(&v149 + 1);
  v8 = v149;
  v16 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v98 = *(v16 + 2);
    v97 = *(v16 + 3);
    if (v98 >= v97 >> 1)
    {
      v16 = sub_1C051B0D4((v97 > 1), v98 + 1, 1, v16);
    }

    *(v16 + 2) = v98 + 1;
    v99 = &v16[16 * v98];
    *(v99 + 4) = v8;
    *(v99 + 5) = v9;
    *a3 = v16;
    *&v143 = v131;
    *(&v143 + 1) = v15;
    v137 = 0uLL;
    v136[0] = 0;
    v136[1] = 0;
    *&v143 = sub_1C0519A28(&v143, &v137, v136);

    sub_1C051E5F8(&v143);

    v100 = v143;
    v133 = *(v143 + 16);
    if (!v133)
    {
      break;
    }

    v15 = 0;
    v131 = v143 + 32;
    v124 = a1 + 1;
    v101 = __OFADD__(a1, 1);
    v126 = v101;
    do
    {
      v102 = (v131 + 80 * v15);
      v103 = v102[2];
      v104 = v102[3];
      v105 = v102[4];
      v144 = v102[1];
      v145 = v103;
      v146 = v104;
      v147[0] = v105;
      v143 = *v102;
      v9 = *(&v105 + 1);
      v106 = v105;
      a1 = *(&v144 + 1);
      v107 = v103;
      v16 = *(&v104 + 1);
      v8 = *v135;
      sub_1C0519E14(&v143, &v137);
      sub_1C0519E14(&v143, &v137);

      swift_unownedRetainStrong();
      v108 = *(v9 + 56);

      swift_unownedRelease();
      if (*(v8 + 16) && (v109 = *(v8 + 40), v110 = sub_1C095DFDC(), v111 = -1 << *(v8 + 32), v112 = v110 & ~v111, ((*(v8 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) != 0))
      {
        v113 = ~v111;
        while (*(*(v8 + 48) + 8 * v112) != v108)
        {
          v112 = (v112 + 1) & v113;
          if (((*(v8 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        v16 = *a3;
        v115 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v16;
        if ((v115 & 1) == 0)
        {
          v16 = sub_1C051B0D4(0, *(v16 + 2) + 1, 1, v16);
          *a3 = v16;
        }

        v8 = *(v16 + 2);
        v116 = *(v16 + 3);
        if (v8 >= v116 >> 1)
        {
          v16 = sub_1C051B0D4((v116 > 1), v8 + 1, 1, v16);
        }

        sub_1C0519E84(&v143);
        *(v16 + 2) = v8 + 1;
        v117 = &v16[16 * v8];
        *(v117 + 4) = 0xD00000000000003BLL;
        *(v117 + 5) = 0x80000001C09CD650;
        *a3 = v16;
      }

      else
      {
LABEL_61:
        sub_1C0519E14(&v143, &v137);

        swift_unownedRelease();

        *&v137 = 46;
        *(&v137 + 1) = 0xE100000000000000;
        MEMORY[0x1C68DD690](a1, v107);

        a1 = *(&v137 + 1);

        MEMORY[0x1C68DD690](46, 0xE100000000000000);

        if (v126)
        {
          goto LABEL_75;
        }

        v8 = *(&v137 + 1);
        v114 = v137;
        sub_1C0519E14(&v143, &v137);

        v137 = __PAIR128__(v8, v114);
        *&v138 = v106;
        *(&v138 + 1) = v9;
        sub_1C051A3AC(v124, &v137, a3, a4, a5, a6, v135, a8 & 1);
        sub_1C0519E84(&v143);
        v16 = *(&v137 + 1);

        swift_unownedRelease();
      }

      if (++v15 == v133)
      {
        goto LABEL_71;
      }
    }

    while (v15 < *(v100 + 16));
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v16 = sub_1C051B0D4(0, *(v16 + 2) + 1, 1, v16);
    *a3 = v16;
  }

LABEL_71:

  swift_setDeallocating();
  v118 = *(v123 + 16);
  v119 = *(v123 + 24);

  return swift_unownedRelease();
}

char *sub_1C051B0D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17260, &unk_1C0970A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C051B1E0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C051B210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C051B254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C051B2B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C051B318(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F690, &unk_1C0998760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v196 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C051CFF8();
  sub_1C095E04C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *&v244 = 0x6570797423;
  *(&v244 + 1) = 0xE500000000000000;
  *&v245 = 0;
  BYTE8(v245) = 1;
  v10 = sub_1C095DDEC();
  v12 = v11;
  v217 = 0;
  type metadata accessor for UsoEntityBuilder();
  v13 = swift_allocObject();
  v13[5] = v10;
  v13[6] = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v13[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v205 = v13 + 7;
  v13[2] = v14;
  v255 = (v13 + 2);
  v13[3] = v14;
  v209 = v13;
  v13[4] = v14;
  v219 = (v13 + 4);
  v15 = sub_1C095DE3C();
  v16 = v15;
  v17 = *(v15 + 16);
  v213 = v3;
  if (!v17)
  {

LABEL_147:
    (*(v4 + 8))(v7, v213);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  v207 = v4;
  v208 = a1;
  v18 = 0;
  v19 = v14;
  v20 = v15 + 32;
  v218 = v14;
  v211 = v7;
  v212 = v15;
  v215 = v15 + 32;
  v216 = v17;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
LABEL_153:
      v224 = v235;
      v225 = v236;
      v226[0] = v237;
      v222 = v233;
      v223 = v234;
      *&v226[1] = 0;
      BYTE8(v226[1]) = v232;
      sub_1C0518B04(&v244, v221);
      sub_1C0518B60(&v222);

      sub_1C057F43C();
      swift_allocError();
      swift_willThrow();

      (*(v207 + 8))(v211, v213);
      goto LABEL_155;
    }

    v25 = v20 + 32 * v18;
    v26 = *v25;
    v27 = *(v25 + 8);
    if (*v25 == 0x6570797423 && v27 == 0xE500000000000000)
    {
      goto LABEL_12;
    }

    v220 = v18;
    v29 = *(v25 + 16);
    v30 = *(v25 + 24);
    if ((sub_1C095DF3C() & 1) == 0)
    {
      break;
    }

LABEL_11:
    v20 = v215;
    v17 = v216;
    v18 = v220;
LABEL_12:
    if (++v18 == v17)
    {

      v4 = v207;
      a1 = v208;
      goto LABEL_147;
    }
  }

  v210 = v29;
  v31 = v26 == 0x6669746E65646923 && v27 == 0xEC00000073726569;
  if (v31 || (v214 = v27, v32 = sub_1C095DF3C(), v33 = v214, (v32 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17200, &qword_1C09709D8);
    strcpy(&v244, "#identifiers");
    BYTE13(v244) = 0;
    HIWORD(v244) = -5120;
    *&v245 = 0;
    BYTE8(v245) = 1;
    sub_1C07665F8();
    v34 = v213;
    v35 = v217;
    sub_1C095DDFC();
    v217 = v35;
    if (v35)
    {
      (*(v207 + 8))(v7, v34);
      goto LABEL_149;
    }

    v36 = v222;
    v37 = *(v222 + 16);
    if (v37)
    {
      v7 = 0;
      v38 = (v222 + 32);
      while (v7 < *(v36 + 16))
      {
        v39 = v38[1];
        v244 = *v38;
        v245 = v39;
        v40 = v38[2];
        v41 = v38[3];
        v42 = v38[4];
        *(v248 + 9) = *(v38 + 73);
        v247 = v41;
        v248[0] = v42;
        v246 = v40;
        v43 = v255;
        swift_beginAccess();
        sub_1C0518B04(&v244, &v222);
        sub_1C0518B04(&v244, &v222);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1C0519CF8(0, *(v19 + 2) + 1, 1, v19);
          *v255 = v19;
        }

        v46 = *(v19 + 2);
        v45 = *(v19 + 3);
        if (v46 >= v45 >> 1)
        {
          v19 = sub_1C0519CF8((v45 > 1), v46 + 1, 1, v19);
        }

        ++v7;
        *(v19 + 2) = v46 + 1;
        v47 = &v19[96 * v46];
        v48 = v245;
        *(v47 + 2) = v244;
        *(v47 + 3) = v48;
        v49 = v246;
        v50 = v247;
        v51 = v248[0];
        *(v47 + 105) = *(v248 + 9);
        *(v47 + 5) = v50;
        *(v47 + 6) = v51;
        *(v47 + 4) = v49;
        *v255 = v19;
        swift_endAccess();
        sub_1C0518B60(&v244);
        v38 += 6;
        if (v37 == v7)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_151:
      (*(v207 + 8))(v7, v213);
LABEL_149:

      a1 = v208;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    goto LABEL_33;
  }

  swift_bridgeObjectRetain_n();
  v52 = sub_1C095D8AC();

  if (v52)
  {
    goto LABEL_9;
  }

  v206 = v26;
  if (v26 == 0x53797469746E6523 && v33 == 0xEC000000736E6170 || (v53 = v206, (sub_1C095DF3C() & 1) != 0))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17338, &qword_1C0970B30);
    strcpy(&v244, "#entitySpans");
    BYTE13(v244) = 0;
    HIWORD(v244) = -5120;
    *&v245 = 0;
    BYTE8(v245) = 1;
    sub_1C07666D0();
    v54 = v217;
    result = sub_1C095DDFC();
    v217 = v54;
    if (v54)
    {
      goto LABEL_151;
    }

    v55 = v222;
    if (*(v222 + 16))
    {
      v56 = 0;
      v57 = (v222 + 32);
      v58 = *(v222 + 16);
      while (v56 < *(v55 + 16))
      {
        v59 = *v57;
        v60 = v57[1];
        v61 = v57[3];
        v246 = v57[2];
        v247 = v61;
        v244 = v59;
        v245 = v60;
        v62 = v57[4];
        v63 = v57[5];
        v64 = v57[7];
        v249 = v57[6];
        v250 = v64;
        v248[0] = v62;
        v248[1] = v63;
        v65 = v57[8];
        v66 = v57[9];
        v67 = v57[10];
        *(v253 + 9) = *(v57 + 169);
        v252 = v66;
        v253[0] = v67;
        v251 = v65;
        v68 = v219;
        swift_beginAccess();
        sub_1C0521E78(&v244, &v222);
        sub_1C0521E78(&v244, &v222);
        v69 = v218;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v69;
        *v68 = v69;
        if ((v70 & 1) == 0)
        {
          v71 = sub_1C0522E00(0, *(v69 + 2) + 1, 1, v69);
          *v219 = v71;
        }

        v73 = *(v71 + 2);
        v72 = *(v71 + 3);
        if (v73 >= v72 >> 1)
        {
          v71 = sub_1C0522E00((v72 > 1), v73 + 1, 1, v71);
        }

        ++v56;
        *(v71 + 2) = v73 + 1;
        v74 = &v71[192 * v73];
        v75 = v244;
        v76 = v245;
        v77 = v247;
        *(v74 + 4) = v246;
        *(v74 + 5) = v77;
        *(v74 + 2) = v75;
        *(v74 + 3) = v76;
        v78 = v248[0];
        v79 = v248[1];
        v80 = v250;
        *(v74 + 8) = v249;
        *(v74 + 9) = v80;
        *(v74 + 6) = v78;
        *(v74 + 7) = v79;
        v81 = v251;
        v82 = v252;
        v83 = v253[0];
        *(v74 + 201) = *(v253 + 9);
        *(v74 + 11) = v82;
        *(v74 + 12) = v83;
        *(v74 + 10) = v81;
        v218 = v71;
        *v219 = v71;
        swift_endAccess();
        result = sub_1C05755CC(&v244);
        v57 += 12;
        if (v58 == v56)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
      return result;
    }

LABEL_33:

    v7 = v211;
    goto LABEL_10;
  }

  v84 = sub_1C095D8AC();

  if (v84)
  {
LABEL_9:

LABEL_10:
    v16 = v212;
    goto LABEL_11;
  }

  v254 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18008, &qword_1C09753A8);
  *&v244 = v53;
  *(&v244 + 1) = v33;
  v85 = v210;
  *&v245 = v210;
  BYTE8(v245) = v30;
  sub_1C051B2B0(&qword_1ED5BDE88, &qword_1EBE18008, &qword_1C09753A8);
  v86 = v217;
  sub_1C095DDFC();
  if (!v86)
  {
    result = v222;
    v217 = *(v222 + 16);
    v204 = 0;
    if (v217)
    {
      v88 = 0;
      v89 = (v222 + 40);
      do
      {
        if (v88 >= *(result + 16))
        {
          goto LABEL_157;
        }

        v90 = result;
        v92 = *(v89 - 1);
        v91 = *v89;
        type metadata accessor for UsoPrimitiveStringBuilder();
        v93 = swift_allocObject();
        v93[6] = v91;
        v94 = MEMORY[0x1E69E7CC0];
        v93[2] = MEMORY[0x1E69E7CC0];
        v93[3] = v94;
        v93[4] = v94;
        v93[5] = v92;

        MEMORY[0x1C68DD810](v95);
        if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C095D9AC();
        }

        ++v88;
        sub_1C095D9DC();
        v89 += 2;
        result = v90;
      }

      while (v217 != v88);
      v104 = v254;
    }

    else
    {
      v104 = MEMORY[0x1E69E7CC0];
    }

    v98 = v206;
    goto LABEL_66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F698, &qword_1C0998770);
  v87 = v206;
  *&v244 = v206;
  *(&v244 + 1) = v214;
  *&v245 = v85;
  BYTE8(v245) = v30;
  sub_1C051B2B0(&qword_1ED5BDE80, &qword_1EBE1F698, &qword_1C0998770);
  sub_1C095DDFC();
  v96 = v222;
  v97 = *(v222 + 16);
  v98 = v87;
  if (v97)
  {
    v204 = 0;
    v217 = type metadata accessor for UsoPrimitiveIntegerBuilder();
    v99 = 32;
    do
    {
      v100 = *(v96 + v99);
      v101 = swift_allocObject();
      *(v101 + 48) = 0;
      v102 = MEMORY[0x1E69E7CC0];
      *(v101 + 16) = MEMORY[0x1E69E7CC0];
      *(v101 + 24) = v102;
      *(v101 + 32) = v102;
      *(v101 + 40) = v100;
      MEMORY[0x1C68DD810]();
      if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v103 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C095D9AC();
        v98 = v206;
      }

      sub_1C095D9DC();
      v99 += 8;
      --v97;
    }

    while (v97);
    v104 = v254;
LABEL_66:

    goto LABEL_68;
  }

  v204 = 0;

  v104 = MEMORY[0x1E69E7CC0];
LABEL_68:
  *&v244 = v98;
  *(&v244 + 1) = v214;

  MEMORY[0x1C68DD690](0x6669746E65646923, 0xEC00000073726569);
  v105 = v244;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17200, &qword_1C09709D8);
  v244 = v105;
  *&v245 = 0;
  BYTE8(v245) = 1;
  sub_1C07665F8();
  v106 = v204;
  sub_1C095DDFC();
  if (v106)
  {

    v107 = 0;
LABEL_70:
    v7 = v211;
    goto LABEL_71;
  }

  v198 = 0;

  v170 = v222;
  v171 = *(v222 + 16);
  if (!v171)
  {

    v107 = v198;
    goto LABEL_70;
  }

  if (v104 >> 62)
  {
    result = sub_1C095DCDC();
    v201 = result;
    if (!*(v170 + 16))
    {
      goto LABEL_158;
    }
  }

  else
  {
    v201 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v172 = 0;
  v210 = v104 & 0xC000000000000001;
  v202 = v104;
  v203 = v104 + 32;
  v204 = v104 & 0xFFFFFFFFFFFFFF8;
  v199 = v170;
  v200 = v171 - 1;
  v173 = 32;
  while (1)
  {
    v174 = (v170 + v173);
    v175 = *(v170 + v173 + 32);
    v176 = *(v170 + v173 + 48);
    v177 = *(v170 + v173 + 64);
    *(v248 + 9) = *(v170 + v173 + 73);
    v178 = *(v170 + v173 + 16);
    v244 = *(v170 + v173);
    v245 = v178;
    v247 = v176;
    v248[0] = v177;
    v246 = v175;
    if (BYTE8(v248[1]))
    {
      v179 = 0;
    }

    else
    {
      v179 = *&v248[1];
    }

    v180 = v174[3];
    v235 = v174[2];
    v236 = v180;
    v237 = v174[4];
    v181 = v174[1];
    v233 = *v174;
    v234 = v181;
    v232 = 1;
    if (v179 >= v201)
    {
      goto LABEL_153;
    }

    v217 = v173;
    if (v210)
    {
      sub_1C0518B04(&v244, &v222);
      MEMORY[0x1C68DDAD0](v179, v202);
    }

    else
    {
      if ((v179 & 0x8000000000000000) != 0)
      {
        goto LABEL_159;
      }

      if (v179 >= *(v204 + 16))
      {
        goto LABEL_160;
      }

      v182 = *(v203 + 8 * v179);
      sub_1C0518B04(&v244, &v222);
    }

    type metadata accessor for UsoPrimitiveStringBuilder();
    v183 = swift_dynamicCastClass();
    if (v183)
    {
      goto LABEL_128;
    }

    if (v210)
    {
      MEMORY[0x1C68DDAD0](v179, v202);
    }

    else
    {
      if ((v179 & 0x8000000000000000) != 0)
      {
        goto LABEL_164;
      }

      if (v179 >= *(v204 + 16))
      {
        goto LABEL_165;
      }

      v184 = *(v203 + 8 * v179);
    }

    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v183 = swift_dynamicCastClass();
    if (v183)
    {
LABEL_128:
      v185 = v183;
      v224 = v235;
      v225 = v236;
      v226[0] = v237;
      v222 = v233;
      v223 = v234;
      *&v226[1] = 0;
      BYTE8(v226[1]) = v232;
      swift_beginAccess();
      v186 = *(v185 + 16);
      sub_1C0518B04(&v222, v221);
      v187 = swift_isUniquelyReferenced_nonNull_native();
      *(v185 + 16) = v186;
      if ((v187 & 1) == 0)
      {
        v186 = sub_1C0519CF8(0, *(v186 + 2) + 1, 1, v186);
        *(v185 + 16) = v186;
      }

      v189 = *(v186 + 2);
      v188 = *(v186 + 3);
      if (v189 >= v188 >> 1)
      {
        v186 = sub_1C0519CF8((v188 > 1), v189 + 1, 1, v186);
        *(v185 + 16) = v186;
      }

      *(v186 + 2) = v189 + 1;
      v190 = &v186[96 * v189];
      v191 = v223;
      *(v190 + 2) = v222;
      *(v190 + 3) = v191;
      v192 = v224;
      v193 = v225;
      v194 = v226[0];
      *(v190 + 105) = *(v226 + 9);
      *(v190 + 5) = v193;
      *(v190 + 6) = v194;
      *(v190 + 4) = v192;
      *(v185 + 16) = v186;
      swift_endAccess();

      result = sub_1C0518B60(&v222);
      v98 = v206;
      v170 = v199;
    }

    else
    {

      v224 = v235;
      v225 = v236;
      v226[0] = v237;
      v222 = v233;
      v223 = v234;
      *&v226[1] = 0;
      BYTE8(v226[1]) = v232;
      result = sub_1C0518B60(&v222);
    }

    if (v200 == v172)
    {
      break;
    }

    ++v172;
    v173 = v217 + 96;
    if (v172 >= *(v170 + 16))
    {
      goto LABEL_158;
    }
  }

  v107 = v198;
  v7 = v211;
  v104 = v202;
LABEL_71:
  *&v244 = v98;
  *(&v244 + 1) = v214;

  MEMORY[0x1C68DD690](0x53797469746E6523, 0xEC000000736E6170);
  v108 = v244;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17338, &qword_1C0970B30);
  v244 = v108;
  *&v245 = 0;
  BYTE8(v245) = 1;
  sub_1C07666D0();
  sub_1C095DDFC();
  if (v107)
  {

    v217 = 0;
    goto LABEL_7;
  }

  v217 = 0;

  result = v222;
  v109 = *(v222 + 16);
  if (!v109)
  {

LABEL_7:
    v21 = v206;
LABEL_8:
    v22 = v205;
    swift_beginAccess();

    v23 = *v22;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v222 = *v22;
    *v22 = 0x8000000000000000;
    sub_1C051D194(v104, v21, v214, v24);

    *v22 = v222;
    swift_endAccess();
    goto LABEL_9;
  }

  v21 = v206;
  if (v104 >> 62)
  {
    v195 = v222;
    result = sub_1C095DCDC();
    v199 = result;
    if (!*(v195 + 16))
    {
      goto LABEL_161;
    }

    result = v195;
  }

  else
  {
    v199 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = 0;
  v202 = v104;
  v203 = v104 & 0xC000000000000001;
  v200 = v104 + 32;
  v201 = v104 & 0xFFFFFFFFFFFFFF8;
  v197 = v109 - 1;
  v198 = result;
  v111 = 32;
  while (2)
  {
    v112 = (result + v111);
    v113 = *(result + v111);
    v114 = *(result + v111 + 16);
    v115 = *(result + v111 + 48);
    v246 = *(result + v111 + 32);
    v247 = v115;
    v244 = v113;
    v245 = v114;
    v116 = *(result + v111 + 64);
    v117 = *(result + v111 + 80);
    v118 = *(result + v111 + 112);
    v249 = *(result + v111 + 96);
    v250 = v118;
    v248[0] = v116;
    v248[1] = v117;
    v119 = *(result + v111 + 128);
    v120 = *(result + v111 + 144);
    v121 = *(result + v111 + 160);
    *(v253 + 9) = *(result + v111 + 169);
    v252 = v120;
    v253[0] = v121;
    v251 = v119;
    if (BYTE8(v253[1]))
    {
      v122 = 0;
    }

    else
    {
      v122 = *&v253[1];
    }

    v123 = v112[9];
    v241 = v112[8];
    v242 = v123;
    v243 = v112[10];
    v124 = v112[5];
    v237 = v112[4];
    v238 = v124;
    v125 = v112[7];
    v239 = v112[6];
    v240 = v125;
    v126 = v112[1];
    v233 = *v112;
    v234 = v126;
    v127 = v112[3];
    v235 = v112[2];
    v236 = v127;
    v232 = 1;
    if (v122 < v199)
    {
      v210 = v111;
      if (v203)
      {
        v128 = v104;
        v129 = v21;
        sub_1C0521E78(&v244, &v222);
        MEMORY[0x1C68DDAD0](v122, v128);
      }

      else
      {
        if ((v122 & 0x8000000000000000) != 0)
        {
          goto LABEL_162;
        }

        if (v122 >= *(v201 + 16))
        {
          goto LABEL_163;
        }

        v128 = v104;
        v129 = v21;
        v130 = *(v200 + 8 * v122);
        sub_1C0521E78(&v244, &v222);
      }

      type metadata accessor for UsoPrimitiveStringBuilder();
      v131 = swift_dynamicCastClass();
      if (v131)
      {
        v229 = v241;
        v230 = v242;
        v231[0] = v243;
        v226[0] = v237;
        v226[1] = v238;
        v227 = v239;
        v228 = v240;
        v222 = v233;
        v223 = v234;
        v224 = v235;
        v225 = v236;
        *&v231[1] = 0;
        BYTE8(v231[1]) = v232;
        v132 = v131;
        swift_beginAccess();
        v133 = *(v132 + 32);
        sub_1C0521E78(&v222, v221);
        v134 = swift_isUniquelyReferenced_nonNull_native();
        *(v132 + 32) = v133;
        v204 = v110;
        if (v134)
        {
          v135 = v132;
        }

        else
        {
          v166 = sub_1C0522E00(0, *(v133 + 2) + 1, 1, v133);
          v135 = v132;
          v133 = v166;
          *(v132 + 32) = v166;
        }

        v137 = *(v133 + 2);
        v136 = *(v133 + 3);
        if (v137 >= v136 >> 1)
        {
          v167 = sub_1C0522E00((v136 > 1), v137 + 1, 1, v133);
          v135 = v132;
          v133 = v167;
          *(v132 + 32) = v167;
        }

        *(v133 + 2) = v137 + 1;
        v138 = &v133[192 * v137];
        v139 = v222;
        v140 = v223;
        v141 = v225;
        *(v138 + 4) = v224;
        *(v138 + 5) = v141;
        *(v138 + 2) = v139;
        *(v138 + 3) = v140;
        v142 = v226[0];
        v143 = v226[1];
        v144 = v228;
        *(v138 + 8) = v227;
        *(v138 + 9) = v144;
        *(v138 + 6) = v142;
        *(v138 + 7) = v143;
        v145 = v229;
        v146 = v230;
        v147 = v231[0];
        *(v138 + 201) = *(v231 + 9);
        *(v138 + 11) = v146;
        *(v138 + 12) = v147;
        *(v138 + 10) = v145;
        *(v135 + 32) = v133;
        swift_endAccess();

        sub_1C05755CC(&v222);
        v7 = v211;
        goto LABEL_101;
      }

      if (v203)
      {
        v148 = MEMORY[0x1C68DDAD0](v122, v128);
        v21 = v129;
      }

      else
      {
        if ((v122 & 0x8000000000000000) != 0)
        {
          goto LABEL_166;
        }

        if (v122 >= *(v201 + 16))
        {
          goto LABEL_167;
        }

        v21 = v129;
        v148 = *(v200 + 8 * v122);
      }

      type metadata accessor for UsoPrimitiveIntegerBuilder();
      v149 = swift_dynamicCastClass();
      if (v149)
      {
        v196 = v148;
        v229 = v241;
        v230 = v242;
        v231[0] = v243;
        v226[0] = v237;
        v226[1] = v238;
        v227 = v239;
        v228 = v240;
        v222 = v233;
        v223 = v234;
        v224 = v235;
        v225 = v236;
        *&v231[1] = 0;
        BYTE8(v231[1]) = v232;
        v150 = v149;
        swift_beginAccess();
        v151 = *(v150 + 32);
        sub_1C0521E78(&v222, v221);
        v152 = swift_isUniquelyReferenced_nonNull_native();
        *(v150 + 32) = v151;
        v204 = v110;
        if (v152)
        {
          v153 = v150;
        }

        else
        {
          v168 = sub_1C0522E00(0, *(v151 + 2) + 1, 1, v151);
          v153 = v150;
          v151 = v168;
          *(v150 + 32) = v168;
        }

        v155 = *(v151 + 2);
        v154 = *(v151 + 3);
        if (v155 >= v154 >> 1)
        {
          v169 = sub_1C0522E00((v154 > 1), v155 + 1, 1, v151);
          v153 = v150;
          v151 = v169;
          *(v150 + 32) = v169;
        }

        *(v151 + 2) = v155 + 1;
        v156 = &v151[192 * v155];
        v157 = v222;
        v158 = v223;
        v159 = v225;
        *(v156 + 4) = v224;
        *(v156 + 5) = v159;
        *(v156 + 2) = v157;
        *(v156 + 3) = v158;
        v160 = v226[0];
        v161 = v226[1];
        v162 = v228;
        *(v156 + 8) = v227;
        *(v156 + 9) = v162;
        *(v156 + 6) = v160;
        *(v156 + 7) = v161;
        v163 = v229;
        v164 = v230;
        v165 = v231[0];
        *(v156 + 201) = *(v231 + 9);
        *(v156 + 11) = v164;
        *(v156 + 12) = v165;
        *(v156 + 10) = v163;
        *(v153 + 32) = v151;
        swift_endAccess();

        sub_1C05755CC(&v222);
LABEL_101:
        v21 = v206;
        result = v198;
        v110 = v204;
        v104 = v202;
      }

      else
      {

        v229 = v241;
        v230 = v242;
        v231[0] = v243;
        v226[0] = v237;
        v226[1] = v238;
        v227 = v239;
        v228 = v240;
        v222 = v233;
        v223 = v234;
        v224 = v235;
        v225 = v236;
        *&v231[1] = 0;
        BYTE8(v231[1]) = v232;
        sub_1C05755CC(&v222);
        v104 = v128;
        result = v198;
      }

      if (v197 == v110)
      {

        goto LABEL_8;
      }

      ++v110;
      v111 = v210 + 192;
      if (v110 >= *(result + 16))
      {
        goto LABEL_161;
      }

      continue;
    }

    break;
  }

  v229 = v241;
  v230 = v242;
  v231[0] = v243;
  v226[0] = v237;
  v226[1] = v238;
  v227 = v239;
  v228 = v240;
  v222 = v233;
  v223 = v234;
  v224 = v235;
  v225 = v236;
  *&v231[1] = 0;
  BYTE8(v231[1]) = v232;
  sub_1C0521E78(&v244, v221);
  sub_1C05755CC(&v222);

  sub_1C057F43C();
  swift_allocError();
  swift_willThrow();

  (*(v207 + 8))(v7, v213);
LABEL_155:

  a1 = v208;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C051CDE0(uint64_t a1)
{
  v2 = sub_1C051CFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C051CE1C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *UsoEntity.init(from:)(uint64_t *a1)
{
  sub_1C0526080(a1, v10);
  sub_1C051B318(v10);
  if (v2)
  {
    goto LABEL_8;
  }

  if (!v4)
  {
    sub_1C057F43C();
    swift_allocError();
    swift_willThrow();
LABEL_7:

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for UsoEntity();
    swift_deallocPartialClassInstance();
    return v1;
  }

  v5 = _s12SiriOntology25UsoBuilderConversionUtilsO013convertEntityd2ToH006entityD0AA0cH0CSgAA0chD0C_tFZ_0();
  if (!v5)
  {
    sub_1C057F43C();
    swift_allocError();
    swift_willThrow();

    goto LABEL_7;
  }

  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);

  v7 = v6[3];
  v1[2] = v6[2];
  v1[3] = v7;
  v1[4] = v6[4];
  v1[5] = v6[5];
  v1[6] = v6[6];
  v8 = v6[7];

  v1[7] = v8;
  return v1;
}

unint64_t sub_1C051CFF8()
{
  result = qword_1ED5D34C0;
  if (!qword_1ED5D34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34C0);
  }

  return result;
}

uint64_t _s12SiriOntology25UsoBuilderConversionUtilsO013convertEntityd2ToH006entityD0AA0cH0CSgAA0chD0C_tFZ_0()
{
  type metadata accessor for Graph();
  swift_allocObject();
  v0 = Graph.init()();
  v7 = 2;
  v1 = sub_1C0515D94(v0, &v7);
  if (v1[2] == 1)
  {
    v2 = v1[4];
    v3 = v1[5];

    swift_unownedRetain();

    type metadata accessor for UsoValue();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1C0518BC4();

    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1C051D12C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1C051D174(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C051D194(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C0516A8C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C066FDF8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0516A78(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C0516A8C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C095DF6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1C051D2DC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1C051D31C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1C051D350()
{
  v1 = *v0;
  v2 = sub_1C051D38C();

  return v2;
}

uint64_t sub_1C051D38C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1C051D394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C051D3DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C051D448@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  result = swift_unownedRetainStrong();
  if (v3)
  {
    *a1 = v1;

    swift_unownedRetain();

    a1[1] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C051D4D0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1C095DF3C() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_1C095DF3C() & 1) != 0)
    {
      if (v3)
      {
        if (v7)
        {

          v10 = sub_1C05C97E4(v3, v7);

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t static Graph.createTaskNameWithMetaData(verbName:entityName:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  v17 = a2[2];
  v18 = a1[2];
  sub_1C051D6F4();
  swift_bridgeObjectRetain_n();
  v10 = sub_1C095DB3C();
  v11 = *(v10 + 16);
  v12 = v5;
  v13 = v4;
  if (v11)
  {
    v14 = (v10 + 16 + 16 * v11);
    v12 = *v14;
    v13 = v14[1];
  }

  type metadata accessor for NameMetaData();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v4;
  v15[4] = v18;
  v15[5] = v6;
  v15[6] = v7;
  v15[7] = v8;
  v15[8] = v17;
  v15[9] = v9;

  MEMORY[0x1C68DD690](14906, 0xE200000000000000);
  result = MEMORY[0x1C68DD690](v7, v8);
  *a3 = v12;
  a3[1] = v13;
  a3[2] = 1802723668;
  a3[3] = 0xE400000000000000;
  a3[4] = v15;
  return result;
}

unint64_t sub_1C051D6F4()
{
  result = qword_1EBE154B8;
  if (!qword_1EBE154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE154B8);
  }

  return result;
}

uint64_t sub_1C051D748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v8[0] = *a1;
  v8[1] = v4;
  v9 = v5;
  v6 = sub_1C0514CE0(v8, 0, 0, 255, MEMORY[0x1E69E7CC0]);
  *a2 = v2;

  swift_unownedRetain();

  a2[1] = v6;
  return result;
}

double sub_1C051D820@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  *&v24 = a2;
  *(&v24 + 1) = a3;
  LODWORD(v25) = a4;
  *(&v25 + 1) = v7;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  *&v27 = v10;
  *(&v27 + 1) = v11;
  swift_beginAccess();
  v12 = *(v5 + 16);

  sub_1C0514AC4(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1C0514F9C(0, *(v12 + 2) + 1, 1, v12);
    *(v5 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1C0514F9C((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[64 * v15];
  v17 = v24;
  v18 = v25;
  v19 = v27;
  *(v16 + 4) = v26;
  *(v16 + 5) = v19;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  *(v5 + 16) = v12;
  swift_endAccess();
  v20 = v25;
  *a5 = v24;
  a5[1] = v20;
  result = *&v26;
  v22 = v27;
  a5[2] = v26;
  a5[3] = v22;
  return result;
}

uint64_t storeEnumTagSinglePayload for UtteranceAlignment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UsoGraphVocabManager.init(withListOfNames:)()
{

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = sub_1C051DA50(v1);
  return v0;
}

unint64_t sub_1C051DA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174F8, &qword_1C0970D88);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 72); ; i += 12)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      *&v17 = *(i - 5);
      *(&v17 + 1) = v5;
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v19 = v8;

      result = sub_1C057EBF0(&v17);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v18;
      *v12 = v17;
      *(v12 + 16) = v13;
      *(v12 + 32) = v19;
      *(v3[7] + 4 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

char *sub_1C051DBB0()
{
  v4 = *(v1 + 40);
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v0 = v1;
    v3 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      swift_beginAccess();
      v5 = 0;
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = *(v0 + 24);
        if (*(v6 + 16))
        {
          v7 = sub_1C0514E38(v5);
          if (v8)
          {
            v9 = *(*(v6 + 56) + 8 * v7);

            MEMORY[0x1C68DD810](v10);
            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v11 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1C095D9AC();
            }

            sub_1C095D9DC();
            v2 = v20;
          }
        }

        ++v5;
      }

      while (v4 != v5);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    if (!(v2 >> 62))
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_24:

      return MEMORY[0x1E69E7CC0];
    }
  }

  v12 = sub_1C095DCDC();
  if (!v12)
  {
    goto LABEL_24;
  }

LABEL_13:
  v21 = v3;
  result = sub_1C051DDC8(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v21;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C68DDAD0](v14, v2);
      }

      else
      {
        v16 = *(v2 + 8 * v14 + 32);
      }

      swift_unownedRetain();

      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C051DDC8((v17 > 1), v18 + 1, 1);
      }

      ++v14;
      *(v21 + 16) = v18 + 1;
      v19 = v21 + 16 * v18;
      *(v19 + 32) = v0;
      *(v19 + 40) = v16;
    }

    while (v12 != v14);

    return v15;
  }

  __break(1u);
  return result;
}

char *sub_1C051DDC8(char *a1, int64_t a2, char a3)
{
  result = sub_1C051EDDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s12SiriOntology023UsoEntityBuilder_uso_NoD0CfD_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

void *sub_1C051DE48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17500, &qword_1C0970D90);
  v3 = sub_1C095DD5C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = sub_1C057EAB4(v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v6;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v3[6] + 4 * v12) = v4;
    v15 = (v3[7] + 40 * v12);
    *v15 = v5;
    v15[1] = result;
    v15[2] = v8;
    v15[3] = v7;
    v15[4] = v9;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v14 + 6;
    v4 = *(v14 - 10);
    v19 = *(v14 - 4);
    v20 = *(v14 - 3);
    v8 = *(v14 - 2);
    v21 = *(v14 - 1);
    v22 = *v14;

    v12 = sub_1C057EAB4(v4);
    v14 = v24;
    v9 = v22;
    v5 = v19;
    v7 = v21;
    result = v20;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C051DFC8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1C095DFDC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    *v2 = 0x8000000000000000;
    sub_1C051E0B0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C051E0B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C051E3C0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C07A70C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C051E1D0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1C095DFDC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C095DF5C();
  __break(1u);
  return result;
}

uint64_t sub_1C051E1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA98, &qword_1C099BCA8);
  result = sub_1C095DBFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1C095DFDC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C051E3C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA98, &qword_1C099BCA8);
  result = sub_1C095DBFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1C095DFDC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C051E5F8(void **a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C051E5E4(v2);
    *a1 = v2;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_1C051E66C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C051E66C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C095DEFC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
        v5 = sub_1C095D9CC();
        *(v5 + 16) = v2 / 2;
      }

      v8 = 0;
      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C05CB1F0(v7, &v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C051E834(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1C051E778()
{
  result = qword_1ED5BDE90;
  if (!qword_1ED5BDE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE18008, &qword_1C09753A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDE90);
  }

  return result;
}

uint64_t UsoTaskBuilder.__deallocating_deinit()
{
  UsoTaskBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C051E834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 80 * a3 - 80;
    v6 = result - a3;
LABEL_5:
    v27 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      v7 = *(v5 + 96);
      v8 = *(v5 + 16);
      v9 = *(v5 + 104) == *(v5 + 24) && *(v5 + 112) == *(v5 + 32);
      if (v9 || (v10 = *(v5 + 104), v11 = *(v5 + 112), v12 = *(v5 + 24), v13 = *(v5 + 32), result = sub_1C095DF3C(), (result & 1) != 0))
      {
        if (v7 >= v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = sub_1C095DF3C();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v24 = *(v5 + 112);
      v25 = *(v5 + 128);
      v26 = *(v5 + 144);
      v14 = *(v5 + 64);
      v22 = *(v5 + 80);
      v23 = *(v5 + 96);
      v15 = *(v5 + 32);
      v16 = *(v5 + 48);
      v17 = *v5;
      *(v5 + 96) = *(v5 + 16);
      *(v5 + 112) = v15;
      *(v5 + 128) = v16;
      *(v5 + 144) = v14;
      *(v5 + 64) = v26;
      *(v5 + 80) = v17;
      *(v5 + 32) = v24;
      *(v5 + 48) = v25;
      *v5 = v22;
      *(v5 + 16) = v23;
      v5 -= 80;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v27 + 1;
        v5 = v21 + 80;
        v6 = v20 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void *_s12SiriOntology16UsoEntityBuilderC15valueTypeStringACSS_tcfc_0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = MEMORY[0x1E69E7CC0];
  v2[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v2[2] = v3;
  v2[3] = v3;
  v2[4] = v3;
  return v2;
}

uint64_t sub_1C051E9EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a5 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  if (v16 == MEMORY[0x1E69E6158])
  {
    (*(v17 + 16))(v29 - v18, v15, MEMORY[0x1E69E6158]);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v23 = v29[0];
    v24 = v29[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C0970C90;
    type metadata accessor for UsoPrimitiveStringBuilder();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    v25[6] = v24;
  }

  else
  {
    v19 = *(v17 + 16);
    if (v16 != MEMORY[0x1E69E7360])
    {
      v19(v11, v15, v16);
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v21 = v29[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C0970C90;
      *(v22 + 32) = v21;
      goto LABEL_10;
    }

    v19(v14, v15, MEMORY[0x1E69E7360]);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v23 = v29[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C0970C90;
    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    *(v25 + 48) = 0;
  }

  v25[2] = v26;
  v25[3] = v26;
  v25[4] = v26;
  v25[5] = v23;
  *(v22 + 32) = v25;
LABEL_10:

  v27 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = *a3;
  *a3 = 0x8000000000000000;
  sub_1C051D194(v22, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v29[0];
  return result;
}

uint64_t sub_1C051ECFC(__n128 a1, __n128 a2)
{
  *(v2 + 40) = 0xD000000000000010;
  *(v2 + 48) = 0x80000001C09CE0D0;
  *(v2 + 56) = a1;
  *(v2 + 72) = a2;
  *(v2 + 88) = xmmword_1C0975360;
  *(v2 + 104) = xmmword_1C0976090;
  *(v2 + 120) = 0x80000001C09CE0D0;
  *(v2 + 128) = xmmword_1C0982A00;
  *(v2 + 144) = 0;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;

  *(v2 + 32) = v3;
  return v2;
}

char *sub_1C051EDDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C051EF2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v106 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v88 - v14;
  *(v1 + 16) = 0;
  v15 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  v88 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  v16 = sub_1C095D26C();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions;
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions) = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints) = v18;
  v90 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints) = v18;
  v91 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints) = v18;
  v92 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch) = 0;
  v93 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation) = 0;
  v94 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints) = v18;
  v95 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints) = v18;
  v20 = (v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  v96 = (v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v97 = v21;
  v98 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking) = 0;
  v22 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  v99 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v100 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure) = 0;
  v101 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation) = 0;
  v24 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  v102 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  v103 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v1 + v26, 1, 1, v27);
  v104 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  v28(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID, 1, 1, v27);
  v29 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb) = 0;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v28;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v28;
  v30 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  v31 = v89;
  sub_1C05149F8(a1 + v30, v89, &qword_1EBE16B58, &unk_1C099B6A0);
  v32 = v88;
  swift_beginAccess();
  sub_1C051F9D4(v31, v1 + v32, &qword_1EBE16B58, &unk_1C099B6A0);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions;
  swift_beginAccess();
  v34 = *(a1 + v33);
  swift_beginAccess();
  v35 = *(v1 + v17);
  *(v1 + v17) = v34;

  v36 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
  swift_beginAccess();
  v37 = *(a1 + v36);
  swift_beginAccess();
  v38 = *(v1 + v19);
  *(v1 + v19) = v37;

  v39 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v90;
  swift_beginAccess();
  v42 = *(v1 + v41);
  *(v1 + v41) = v40;

  v43 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v91;
  swift_beginAccess();
  v46 = *(v1 + v45);
  *(v1 + v45) = v44;

  v47 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + v47);
  v48 = v92;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v93;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v94;
  swift_beginAccess();
  v54 = *(v1 + v53);
  *(v1 + v53) = v52;

  v55 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
  swift_beginAccess();
  v56 = *(a1 + v55);
  v57 = v95;
  swift_beginAccess();
  v58 = *(v1 + v57);
  *(v1 + v57) = v56;

  v59 = (a1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = v96;
  swift_beginAccess();
  v63 = v62[1];
  *v62 = v61;
  v62[1] = v60;

  v64 = (a1 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = v97;
  swift_beginAccess();
  v68 = v67[1];
  *v67 = v66;
  v67[1] = v65;

  v69 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
  swift_beginAccess();
  LOBYTE(v69) = *(a1 + v69);
  v70 = v98;
  swift_beginAccess();
  *(v1 + v70) = v69;
  v71 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  v72 = v105;
  sub_1C05149F8(a1 + v71, v105, &qword_1EBE16B60, &qword_1C096E100);
  v73 = v99;
  swift_beginAccess();
  sub_1C051F9D4(v72, v1 + v73, &qword_1EBE16B60, &qword_1C096E100);
  swift_endAccess();
  v74 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v100;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
  swift_beginAccess();
  LOBYTE(v76) = *(a1 + v76);
  v77 = v101;
  swift_beginAccess();
  *(v1 + v77) = v76;
  v78 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  swift_beginAccess();
  v79 = v106;
  sub_1C05149F8(a1 + v78, v106, &qword_1EBE16B50, &unk_1C096E0F0);
  v80 = v102;
  swift_beginAccess();
  sub_1C051F9D4(v79, v1 + v80, &qword_1EBE16B50, &unk_1C096E0F0);
  swift_endAccess();
  v81 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  swift_beginAccess();
  v82 = v107;
  sub_1C05149F8(a1 + v81, v107, &qword_1EBE16B68, &qword_1C096E108);
  v83 = v103;
  swift_beginAccess();
  sub_1C051F9D4(v82, v1 + v83, &qword_1EBE16B68, &qword_1C096E108);
  swift_endAccess();
  v84 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  swift_beginAccess();
  sub_1C05149F8(a1 + v84, v82, &qword_1EBE16B68, &qword_1C096E108);
  v85 = v104;
  swift_beginAccess();
  sub_1C051F9D4(v82, v1 + v85, &qword_1EBE16B68, &qword_1C096E108);
  swift_endAccess();
  v86 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v86);
  swift_beginAccess();
  *(v1 + v29) = a1;
  return v1;
}

uint64_t sub_1C051F9D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C051FA60@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C095D6EC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C051FAFC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v2 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  if (qword_1ED5BDDB8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1ED5BDDC0;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C051EF2C(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 17) = a1 & 1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C051EF2C(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1 & 1;
  return result;
}

_BYTE *sub_1C051FD7C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}