void sub_296EA2584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 208);
  if (v28)
  {
    *(v26 - 200) = v28;
    operator delete(v28);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a11);
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

const void **ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C2676F0](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(uint64_t a1, const void **a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  __s2 = a2 - 3;
  v277 = a2;
  v266 = a2 - 9;
  v267 = a2 - 6;
  k = a1;
  while (1)
  {
    a1 = k;
    v9 = a2 - k;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, __s2).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, __s2).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, __s2).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v117 = (a2 - 3);
        v118 = *(a2 - 1);
        if (v118 >= 0)
        {
          v119 = a2 - 3;
        }

        else
        {
          v119 = *(a2 - 3);
        }

        if (v118 >= 0)
        {
          v120 = *(a2 - 1);
        }

        else
        {
          v120 = *(a2 - 2);
        }

        v121 = *(a1 + 23);
        v122 = *a1;
        v123 = *(a1 + 8);
        if (v121 >= 0)
        {
          v124 = a1;
        }

        else
        {
          v124 = *a1;
        }

        if (v121 >= 0)
        {
          v125 = *(a1 + 23);
        }

        else
        {
          v125 = *(a1 + 8);
        }

        if (v125 >= v120)
        {
          v126 = v120;
        }

        else
        {
          v126 = v125;
        }

        v127 = memcmp(v119, v124, v126);
        if (v127)
        {
          if (v127 < 0)
          {
            return result;
          }
        }

        else if (v120 <= v125)
        {
          return result;
        }

        v264 = *(a1 + 16);
        v265 = *(a2 - 1);
        result = *v117;
        *a1 = *v117;
        *(a1 + 16) = v265;
        *(a2 - 3) = v122;
        *(a2 - 2) = v123;
        *(a2 - 1) = v264;
        return result;
      }
    }

    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return result;
        }

        v128 = (a1 + 24);
        if ((a1 + 24) == a2)
        {
          return result;
        }

        v129 = 0;
        v130 = a1;
        while (2)
        {
          v132 = v130;
          v130 = v128;
          v133 = v132[2].n128_i8[15];
          if (v133 >= 0)
          {
            v134 = v128;
          }

          else
          {
            v134 = v132[1].n128_u64[1];
          }

          if (v133 >= 0)
          {
            v135 = v132[2].n128_u8[15];
          }

          else
          {
            v135 = v132[2].n128_u64[0];
          }

          v136 = v132[1].n128_i8[7];
          if (v136 >= 0)
          {
            v137 = v132;
          }

          else
          {
            v137 = v132->n128_u64[0];
          }

          if (v136 >= 0)
          {
            v138 = v132[1].n128_u8[7];
          }

          else
          {
            v138 = v132->n128_u64[1];
          }

          if (v138 >= v135)
          {
            v139 = v135;
          }

          else
          {
            v139 = v138;
          }

          v140 = memcmp(v134, v137, v139);
          if (v140)
          {
            if (v140 < 0)
            {
LABEL_269:
              v128 = (v130 + 24);
              v129 += 24;
              if ((v130 + 24) == v277)
              {
                return result;
              }

              continue;
            }
          }

          else if (v135 <= v138)
          {
            goto LABEL_269;
          }

          break;
        }

        v141 = *v130;
        v280 = *(v130 + 16);
        v279 = v141;
        if (v280 >= 0)
        {
          v142 = &v279;
        }

        else
        {
          v142 = v141.n128_u64[0];
        }

        if (v280 >= 0)
        {
          v143 = HIBYTE(v280);
        }

        else
        {
          v143 = v141.n128_u64[1];
        }

        *(v130 + 16) = v132[1].n128_u64[0];
        *v130 = *v132;
        v132[1].n128_u8[7] = 0;
        v132->n128_u8[0] = 0;
        v131 = a1;
        if (v132 != a1)
        {
          v144 = v129;
          while (1)
          {
            v145 = a1 + v144;
            v146 = *(a1 + v144 - 24);
            v147 = *(a1 + v144 - 1);
            if (v147 >= 0)
            {
              v148 = (a1 + v144 - 24);
            }

            else
            {
              v148 = *(a1 + v144 - 24);
            }

            if (v147 >= 0)
            {
              v149 = *(a1 + v144 - 1);
            }

            else
            {
              v149 = *(a1 + v144 - 16);
            }

            if (v149 >= v143)
            {
              v150 = v143;
            }

            else
            {
              v150 = v149;
            }

            v151 = memcmp(v142, v148, v150);
            if (v151)
            {
              if (v151 < 0)
              {
                v131 = (a1 + v144);
                break;
              }
            }

            else if (v143 <= v149)
            {
              v131 = v132;
              break;
            }

            v132 = (v132 - 24);
            *v145 = *(a1 + v144 - 24);
            *(v145 + 16) = *(a1 + v144 - 8);
            *(v145 - 1) = 0;
            *(v145 - 24) = 0;
            v144 -= 24;
            if (!v144)
            {
              v131 = a1;
              break;
            }
          }
        }

        result = v279;
        v131[1].n128_u64[0] = v280;
        *v131 = result;
        goto LABEL_269;
      }

      if (a1 == a2)
      {
        return result;
      }

      v245 = (a1 + 24);
      if ((a1 + 24) == a2)
      {
        return result;
      }

LABEL_483:
      v246 = a1;
      a1 = v245;
      v247 = *(v246 + 47);
      if (v247 >= 0)
      {
        v248 = v245;
      }

      else
      {
        v248 = v246[3];
      }

      if (v247 >= 0)
      {
        v249 = *(v246 + 47);
      }

      else
      {
        v249 = v246[4];
      }

      v250 = *(v246 + 23);
      if (v250 >= 0)
      {
        v251 = v246;
      }

      else
      {
        v251 = *v246;
      }

      if (v250 >= 0)
      {
        v252 = *(v246 + 23);
      }

      else
      {
        v252 = v246[1];
      }

      if (v252 >= v249)
      {
        v253 = v249;
      }

      else
      {
        v253 = v252;
      }

      v254 = memcmp(v248, v251, v253);
      if (v254)
      {
        if (v254 < 0)
        {
          goto LABEL_482;
        }
      }

      else if (v249 <= v252)
      {
        goto LABEL_482;
      }

      v255 = *a1;
      v280 = *(a1 + 16);
      v279 = v255;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (v280 >= 0)
      {
        v256 = &v279;
      }

      else
      {
        v256 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v257 = HIBYTE(v280);
      }

      else
      {
        v257 = v279.n128_u64[1];
      }

      for (i = a1; ; i -= 24)
      {
        *i = *(i - 24);
        *(i + 16) = *(i - 8);
        *(i - 1) = 0;
        *(i - 24) = 0;
        v259 = *(i - 25);
        if (v259 >= 0)
        {
          v260 = (i - 48);
        }

        else
        {
          v260 = *(i - 48);
        }

        if (v259 >= 0)
        {
          v261 = *(i - 25);
        }

        else
        {
          v261 = *(i - 40);
        }

        if (v261 >= v257)
        {
          v262 = v257;
        }

        else
        {
          v262 = v261;
        }

        v263 = memcmp(v256, v260, v262);
        if (v263)
        {
          if (v263 < 0)
          {
LABEL_481:
            result = v279;
            *(i - 8) = v280;
            *(i - 24) = result;
LABEL_482:
            v245 = (a1 + 24);
            if ((a1 + 24) == a2)
            {
              return result;
            }

            goto LABEL_483;
          }
        }

        else if (v257 <= v261)
        {
          goto LABEL_481;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v12, a1, __s2);
      v271 = a3 - 1;
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = *(a1 - 1);
        if (v17 >= 0)
        {
          v18 = (a1 - 24);
        }

        else
        {
          v18 = *(a1 - 24);
        }

        if (v17 >= 0)
        {
          v19 = *(a1 - 1);
        }

        else
        {
          v19 = *(a1 - 16);
        }

        v20 = *(a1 + 23);
        if (v20 >= 0)
        {
          v21 = a1;
        }

        else
        {
          v21 = *a1;
        }

        if (v20 >= 0)
        {
          v22 = *(a1 + 23);
        }

        else
        {
          v22 = *(a1 + 8);
        }

        if (v22 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v18, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_129;
          }
        }

        else if (v19 <= v22)
        {
LABEL_129:
          v70 = *a1;
          v280 = *(a1 + 16);
          v279 = v70;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v71 = a2;
          if (v280 >= 0)
          {
            v72 = &v279;
          }

          else
          {
            v72 = v279.n128_u64[0];
          }

          if (v280 >= 0)
          {
            v73 = HIBYTE(v280);
          }

          else
          {
            v73 = v279.n128_u64[1];
          }

          v74 = *(v71 - 1);
          v76 = *(v71 - 3);
          v75 = *(v71 - 2);
          if ((v74 & 0x80u) == 0)
          {
            v77 = __s2;
          }

          else
          {
            v77 = *(v71 - 3);
          }

          if ((v74 & 0x80u) == 0)
          {
            v78 = *(v71 - 1);
          }

          else
          {
            v78 = *(v71 - 2);
          }

          if (v78 >= v73)
          {
            v79 = v73;
          }

          else
          {
            v79 = v78;
          }

          v80 = memcmp(v72, v77, v79);
          if (v80)
          {
            if ((v80 & 0x80000000) == 0)
            {
LABEL_146:
              v81 = a1 + 24;
              do
              {
                while (1)
                {
                  k = v81;
                  v82 = *(v81 + 23);
                  v83 = (v82 & 0x80u) == 0 ? k : *k;
                  v84 = (v82 & 0x80u) == 0 ? v82 : *(k + 8);
                  v85 = v84 >= v73 ? v73 : v84;
                  v86 = memcmp(v72, v83, v85);
                  v81 = k + 24;
                  if (v86)
                  {
                    break;
                  }

                  if (v73 > v84)
                  {
                    goto LABEL_159;
                  }
                }
              }

              while (v86 < 0);
LABEL_159:
              j = v277;
              if (k < v277)
              {
                for (j = __s2; ; v75 = j[1])
                {
                  if ((v74 & 0x80u) == 0)
                  {
                    v89 = j;
                  }

                  else
                  {
                    v89 = v76;
                  }

                  if ((v74 & 0x80u) == 0)
                  {
                    v90 = v74;
                  }

                  else
                  {
                    v90 = v75;
                  }

                  if (v90 >= v73)
                  {
                    v91 = v73;
                  }

                  else
                  {
                    v91 = v90;
                  }

                  v92 = memcmp(v72, v89, v91);
                  if (v92)
                  {
                    if (v92 < 0)
                    {
                      break;
                    }
                  }

                  else if (v73 <= v90)
                  {
                    break;
                  }

                  v88 = *(j - 3);
                  j -= 3;
                  v76 = v88;
                  v74 = *(j + 23);
                }
              }

              if (k < j)
              {
                v93 = *k;
                do
                {
                  v94 = *(k + 8);
                  v95 = *j;
                  *(k + 16) = j[2];
                  *k = v95;
                  *j = v93;
                  *(j + 1) = v94;
                  if (v280 >= 0)
                  {
                    v96 = &v279;
                  }

                  else
                  {
                    v96 = v279.n128_u64[0];
                  }

                  if (v280 >= 0)
                  {
                    v97 = HIBYTE(v280);
                  }

                  else
                  {
                    v97 = v279.n128_u64[1];
                  }

                  v98 = k + 24;
                  do
                  {
                    while (1)
                    {
                      k = v98;
                      v99 = *(v98 + 23);
                      v93 = *k;
                      v100 = (v99 & 0x80u) == 0 ? k : *k;
                      v101 = (v99 & 0x80u) == 0 ? v99 : *(k + 8);
                      v102 = v101 >= v97 ? v97 : v101;
                      v103 = memcmp(v96, v100, v102);
                      v98 = k + 24;
                      if (v103)
                      {
                        break;
                      }

                      if (v97 > v101)
                      {
                        goto LABEL_196;
                      }
                    }
                  }

                  while (v103 < 0);
LABEL_196:
                  v104 = j - 3;
                  do
                  {
                    while (1)
                    {
                      j = v104;
                      v105 = *(v104 + 23);
                      v106 = v105 >= 0 ? j : *j;
                      v107 = v105 >= 0 ? v105 : j[1];
                      v108 = v107 >= v97 ? v97 : v107;
                      v109 = memcmp(v96, v106, v108);
                      v104 = j - 3;
                      if (v109)
                      {
                        break;
                      }

                      if (v97 <= v107)
                      {
                        goto LABEL_176;
                      }
                    }
                  }

                  while ((v109 & 0x80000000) == 0);
LABEL_176:
                  ;
                }

                while (k < j);
              }

              v110 = (k - 24);
              if (k - 24 == a1)
              {
                a2 = v277;
                a3 = v271;
                if (*(k - 1) < 0)
                {
                  operator delete(*v110);
                }
              }

              else
              {
                a2 = v277;
                a3 = v271;
                if (*(a1 + 23) < 0)
                {
                  operator delete(*a1);
                }

                v111 = *v110;
                *(a1 + 16) = *(k - 8);
                *a1 = v111;
                *(k - 1) = 0;
                *(k - 24) = 0;
              }

              a4 = 0;
              result = v279;
              *(k - 8) = v280;
              *v110 = result;
              continue;
            }
          }

          else if (v73 > v78)
          {
            goto LABEL_146;
          }

          for (k = a1 + 24; k < v277; k += 24)
          {
            v112 = *(k + 23);
            if (v112 >= 0)
            {
              v113 = k;
            }

            else
            {
              v113 = *k;
            }

            if (v112 >= 0)
            {
              v114 = *(k + 23);
            }

            else
            {
              v114 = *(k + 8);
            }

            if (v114 >= v73)
            {
              v115 = v73;
            }

            else
            {
              v115 = v114;
            }

            v116 = memcmp(v72, v113, v115);
            if (v116)
            {
              if ((v116 & 0x80000000) == 0)
              {
                goto LABEL_159;
              }
            }

            else if (v73 > v114)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_159;
        }
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, v12, __s2);
      v13 = 24 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1 + 24, v13 + a1 - 24, v267);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1 + 48, a1 + 24 + v13, v266);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v13 + a1 - 24, v12, (a1 + 24 + v13));
      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *v12;
      *(a1 + 16) = *(v12 + 16);
      *a1 = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      v271 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = *a1;
    v280 = *(a1 + 16);
    v279 = v26;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    if (v280 >= 0)
    {
      v27 = &v279;
    }

    else
    {
      v27 = v279.n128_u64[0];
    }

    if (v280 >= 0)
    {
      v28 = HIBYTE(v280);
    }

    else
    {
      v28 = v279.n128_u64[1];
    }

    while (1)
    {
      v29 = *(a1 + v25 + 24);
      v30 = *(a1 + v25 + 47);
      v31 = v30 >= 0 ? (a1 + v25 + 24) : *(a1 + v25 + 24);
      v32 = v30 >= 0 ? *(a1 + v25 + 47) : *(a1 + v25 + 32);
      v33 = v28 >= v32 ? v32 : v28;
      v34 = memcmp(v31, v27, v33);
      if (v34)
      {
        break;
      }

      if (v32 <= v28)
      {
        goto LABEL_51;
      }

LABEL_39:
      v25 += 24;
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v35 = a1 + v25 + 24;
    v36 = __s2;
    if (v25)
    {
      do
      {
        while (1)
        {
          v37 = v36;
          v44 = *(v36 + 23);
          v45 = v44 >= 0 ? v37 : *v37;
          v46 = (v44 >= 0 ? v44 : v37[1]);
          v47 = v28 >= v46 ? v46 : v28;
          v48 = memcmp(v45, v27, v47);
          v36 = v37 - 3;
          if (v48)
          {
            break;
          }

          if (v46 > v28)
          {
            goto LABEL_82;
          }
        }
      }

      while (v48 < 0);
    }

    else
    {
      v37 = v277;
      if (v35 < v277)
      {
        v38 = __s2;
        do
        {
          while (1)
          {
            v37 = v38;
            v39 = *(v38 + 23);
            v40 = v39 >= 0 ? v37 : *v37;
            v41 = (v39 >= 0 ? v39 : v37[1]);
            v42 = v28 >= v41 ? v41 : v28;
            v43 = memcmp(v40, v27, v42);
            v38 = v37 - 3;
            if (!v43)
            {
              break;
            }

            if (v35 >= v37 || (v43 & 0x80000000) == 0)
            {
              goto LABEL_82;
            }
          }
        }

        while (v35 < v37 && v41 <= v28);
      }
    }

LABEL_82:
    k = v35;
    if (v35 < v37)
    {
      v49 = v37;
      do
      {
        v50 = *(k + 8);
        v51 = *v49;
        *(k + 16) = v49[2];
        *k = v51;
        *v49 = v29;
        *(v49 + 1) = v50;
        if (v280 >= 0)
        {
          v52 = &v279;
        }

        else
        {
          v52 = v279.n128_u64[0];
        }

        if (v280 >= 0)
        {
          v53 = HIBYTE(v280);
        }

        else
        {
          v53 = v279.n128_u64[1];
        }

        v54 = k + 24;
        do
        {
          while (1)
          {
            k = v54;
            v55 = *(v54 + 23);
            v29 = *k;
            v56 = (v55 & 0x80u) == 0 ? k : *k;
            v57 = (v55 & 0x80u) == 0 ? v55 : *(k + 8);
            v58 = v53 >= v57 ? v57 : v53;
            v59 = memcmp(v56, v52, v58);
            v54 = k + 24;
            if (v59)
            {
              break;
            }

            if (v57 <= v53)
            {
              goto LABEL_104;
            }
          }
        }

        while ((v59 & 0x80000000) == 0);
LABEL_104:
        v60 = v49 - 3;
        do
        {
          while (1)
          {
            v49 = v60;
            v61 = *(v60 + 23);
            v62 = v61 >= 0 ? v49 : *v49;
            v63 = (v61 >= 0 ? v61 : v49[1]);
            v64 = v53 >= v63 ? v63 : v53;
            v65 = memcmp(v62, v52, v64);
            v60 = v49 - 3;
            if (v65)
            {
              break;
            }

            if (v63 > v53)
            {
              goto LABEL_84;
            }
          }
        }

        while (v65 < 0);
LABEL_84:
        ;
      }

      while (k < v49);
    }

    v66 = (k - 24);
    if (k - 24 == a1)
    {
      a2 = v277;
      a3 = v271;
      if (*(k - 1) < 0)
      {
        operator delete(*a1);
      }
    }

    else
    {
      a2 = v277;
      a3 = v271;
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v67 = *v66;
      *(a1 + 16) = *(k - 8);
      *a1 = v67;
      *(k - 1) = 0;
      *(k - 24) = 0;
    }

    v68 = v279;
    *(k - 8) = v280;
    *v66 = v68;
    if (v35 < v37)
    {
LABEL_127:
      std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(a1, k - 24, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(a1, (k - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(k, a2))
      {
        a2 = (k - 24);
        if (v69)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v69)
      {
        goto LABEL_127;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v152 = (v10 - 2) >> 1;
  v153 = v152;
  v268 = v9;
  while (2)
  {
    v155 = v153;
    if (v152 >= v153)
    {
      v156 = (2 * v153) | 1;
      v157 = a1 + 24 * v156;
      v158 = 2 * v153 + 2;
      if (v158 >= v10)
      {
        goto LABEL_340;
      }

      v160 = (v157 + 24);
      v159 = *(v157 + 24);
      v161 = *(v157 + 23);
      if (v161 >= 0)
      {
        v162 = (a1 + 24 * v156);
      }

      else
      {
        v162 = *v157;
      }

      if (v161 >= 0)
      {
        v163 = *(v157 + 23);
      }

      else
      {
        v163 = *(v157 + 8);
      }

      v164 = *(v157 + 47);
      if (v164 >= 0)
      {
        v165 = (v157 + 24);
      }

      else
      {
        v165 = *(v157 + 24);
      }

      if (v164 >= 0)
      {
        v166 = *(v157 + 47);
      }

      else
      {
        v166 = *(v157 + 32);
      }

      if (v166 >= v163)
      {
        v167 = v163;
      }

      else
      {
        v167 = v166;
      }

      v168 = memcmp(v162, v165, v167);
      if (v168)
      {
        a2 = v277;
        if (v168 < 0)
        {
LABEL_340:
          v160 = (a1 + 24 * v156);
          v158 = (2 * v155) | 1;
        }
      }

      else
      {
        v169 = v163 >= v166;
        if (v163 == v166)
        {
          v160 = (a1 + 24 * v156);
          v158 = (2 * v155) | 1;
          a2 = v277;
        }

        else
        {
          a2 = v277;
          if (!v169)
          {
            goto LABEL_340;
          }
        }
      }

      v272 = v155;
      v170 = a1 + 24 * v155;
      v171 = *(v160 + 23);
      if (v171 >= 0)
      {
        v172 = v160;
      }

      else
      {
        v172 = *v160;
      }

      if (v171 >= 0)
      {
        v173 = *(v160 + 23);
      }

      else
      {
        v173 = v160[1];
      }

      v174 = *(v170 + 23);
      if (v174 >= 0)
      {
        v175 = (a1 + 24 * v155);
      }

      else
      {
        v175 = *v170;
      }

      if (v174 >= 0)
      {
        v176 = *(v170 + 23);
      }

      else
      {
        v176 = *(v170 + 8);
      }

      if (v176 >= v173)
      {
        v177 = v173;
      }

      else
      {
        v177 = v176;
      }

      v178 = memcmp(v172, v175, v177);
      if (v178)
      {
        if (v178 < 0)
        {
LABEL_360:
          v179 = *v170;
          v280 = *(v170 + 16);
          v279 = v179;
          *(v170 + 8) = 0;
          *(v170 + 16) = 0;
          *v170 = 0;
          v180 = *v160;
          *(v170 + 16) = v160[2];
          *v170 = v180;
          *(v160 + 23) = 0;
          *v160 = 0;
          if (v152 >= v158)
          {
            v181 = &v279;
            if (v280 < 0)
            {
              v181 = v279.n128_u64[0];
            }

            __s2a = v181;
            if (v280 >= 0)
            {
              v182 = HIBYTE(v280);
            }

            else
            {
              v182 = v279.n128_u64[1];
            }

            while (1)
            {
              v184 = (2 * v158) | 1;
              v185 = a1 + 24 * v184;
              v158 = 2 * v158 + 2;
              if (v158 >= v10)
              {
                goto LABEL_390;
              }

              v154 = (v185 + 24);
              v186 = *(v185 + 24);
              v187 = *(v185 + 23);
              v188 = v187 >= 0 ? (a1 + 24 * v184) : *v185;
              v189 = v187 >= 0 ? *(v185 + 23) : *(v185 + 8);
              v190 = *(v185 + 47);
              v191 = v190 >= 0 ? (v185 + 24) : *(v185 + 24);
              v192 = v190 >= 0 ? *(v185 + 47) : *(v185 + 32);
              v193 = v192 >= v189 ? v189 : v192;
              v194 = memcmp(v188, v191, v193);
              if (v194)
              {
                break;
              }

              v195 = v189 >= v192;
              if (v189 == v192)
              {
                v154 = (a1 + 24 * v184);
                v158 = v184;
                a2 = v277;
                v152 = (v10 - 2) >> 1;
                goto LABEL_391;
              }

              a2 = v277;
              v152 = (v10 - 2) >> 1;
              if (!v195)
              {
                goto LABEL_390;
              }

LABEL_391:
              v196 = *(v154 + 23);
              if (v196 >= 0)
              {
                v197 = v154;
              }

              else
              {
                v197 = *v154;
              }

              if (v196 >= 0)
              {
                v198 = *(v154 + 23);
              }

              else
              {
                v198 = v154[1];
              }

              if (v182 >= v198)
              {
                v199 = v198;
              }

              else
              {
                v199 = v182;
              }

              v200 = memcmp(v197, __s2a, v199);
              if (v200)
              {
                if ((v200 & 0x80000000) == 0)
                {
                  goto LABEL_314;
                }
              }

              else if (v198 > v182)
              {
                goto LABEL_314;
              }

              v183 = *v154;
              v160[2] = v154[2];
              *v160 = v183;
              *(v154 + 23) = 0;
              *v154 = 0;
              v160 = v154;
              if (v152 < v158)
              {
                goto LABEL_315;
              }
            }

            a2 = v277;
            v152 = (v10 - 2) >> 1;
            if ((v194 & 0x80000000) == 0)
            {
              goto LABEL_391;
            }

LABEL_390:
            v154 = (a1 + 24 * v184);
            v158 = v184;
            goto LABEL_391;
          }

LABEL_314:
          v154 = v160;
LABEL_315:
          result = v279;
          v154[2] = v280;
          *v154 = result;
          v155 = v272;
        }
      }

      else if (v173 <= v176)
      {
        goto LABEL_360;
      }
    }

    v153 = v155 - 1;
    if (v155)
    {
      continue;
    }

    break;
  }

  v201 = 0xAAAAAAAAAAAAAAABLL * (v268 >> 3);
  do
  {
    if (v201 < 2)
    {
      goto LABEL_405;
    }

    v203 = 0;
    __s2b = *a1;
    v278 = a2;
    v204 = *(a1 + 16);
    v270 = v204;
    v273 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v205 = a1;
    *a1 = 0;
    do
    {
      v207 = v205 + 24 * v203;
      v206 = (v207 + 24);
      v208 = 2 * v203;
      v203 = (2 * v203) | 1;
      v209 = v208 + 2;
      if (v208 + 2 < v201)
      {
        v212 = *(v207 + 48);
        v211 = (v207 + 48);
        v210 = v212;
        v213 = v211[-1].n128_i8[15];
        if (v213 >= 0)
        {
          v214 = v206;
        }

        else
        {
          v214 = v211[-2].n128_u64[1];
        }

        if (v213 >= 0)
        {
          v215 = v211[-1].n128_u8[15];
        }

        else
        {
          v215 = v211[-1].n128_u64[0];
        }

        v216 = v211[1].n128_i8[7];
        if (v216 >= 0)
        {
          v217 = v211;
        }

        else
        {
          v217 = v210;
        }

        if (v216 >= 0)
        {
          v218 = v211[1].n128_u8[7];
        }

        else
        {
          v218 = v211->n128_u64[1];
        }

        if (v218 >= v215)
        {
          v219 = v215;
        }

        else
        {
          v219 = v218;
        }

        v220 = memcmp(v214, v217, v219);
        if (v220)
        {
          if ((v220 & 0x80000000) == 0)
          {
            goto LABEL_409;
          }
        }

        else if (v215 > v218)
        {
LABEL_409:
          v206 = v211;
          v203 = v209;
        }
      }

      if (*(v205 + 23) < 0)
      {
        operator delete(*v205);
      }

      result = *v206;
      *(v205 + 16) = v206[1].n128_u64[0];
      *v205 = result;
      v206[1].n128_u8[7] = 0;
      v206->n128_u8[0] = 0;
      v205 = v206;
    }

    while (v203 <= ((v201 - 2) >> 1));
    if (v206 == (a2 - 3))
    {
      v206->n128_u64[0] = __s2b;
      v206->n128_u64[1] = v273;
      v206[1].n128_u64[0] = v270;
      goto LABEL_405;
    }

    result = *(a2 - 3);
    v206[1].n128_u64[0] = *(a2 - 1);
    *v206 = result;
    *(a2 - 3) = __s2b;
    *(a2 - 2) = v273;
    *(a2 - 1) = v270;
    v221 = &v206[1].n128_i64[1] - a1;
    if (v221 >= 25)
    {
      v222 = -2 - 0x5555555555555555 * (v221 >> 3);
      v223 = v222 >> 1;
      v224 = a1 + 24 * (v222 >> 1);
      v225 = *(v224 + 23);
      if (v225 >= 0)
      {
        v226 = (a1 + 24 * (v222 >> 1));
      }

      else
      {
        v226 = *v224;
      }

      if (v225 >= 0)
      {
        v227 = *(v224 + 23);
      }

      else
      {
        v227 = *(v224 + 8);
      }

      v228 = v206[1].n128_i8[7];
      if (v228 >= 0)
      {
        v229 = v206;
      }

      else
      {
        v229 = v206->n128_u64[0];
      }

      if (v228 >= 0)
      {
        v230 = v206[1].n128_u8[7];
      }

      else
      {
        v230 = v206->n128_u64[1];
      }

      if (v230 >= v227)
      {
        v231 = v227;
      }

      else
      {
        v231 = v230;
      }

      v232 = memcmp(v226, v229, v231);
      if (v232)
      {
        if (v232 < 0)
        {
          goto LABEL_405;
        }
      }

      else if (v227 <= v230)
      {
        goto LABEL_405;
      }

      v233 = *v206;
      v280 = v206[1].n128_i64[0];
      v279 = v233;
      v206->n128_u64[1] = 0;
      v206[1].n128_u64[0] = 0;
      v206->n128_u64[0] = 0;
      if (v280 >= 0)
      {
        v234 = &v279;
      }

      else
      {
        v234 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v235 = HIBYTE(v280);
      }

      else
      {
        v235 = v279.n128_u64[1];
      }

      v236 = *v224;
      v206[1].n128_u64[0] = *(v224 + 16);
      *v206 = v236;
      *(v224 + 23) = 0;
      *v224 = 0;
      if (v222 >= 2)
      {
        while (1)
        {
          v238 = v223 - 1;
          v223 = (v223 - 1) >> 1;
          v239 = a1 + 24 * v223;
          v240 = *(v239 + 23);
          if (v240 >= 0)
          {
            v241 = (a1 + 24 * v223);
          }

          else
          {
            v241 = *v239;
          }

          if (v240 >= 0)
          {
            v242 = *(v239 + 23);
          }

          else
          {
            v242 = *(v239 + 8);
          }

          if (v235 >= v242)
          {
            v243 = v242;
          }

          else
          {
            v243 = v235;
          }

          v244 = memcmp(v241, v234, v243);
          if (v244)
          {
            if (v244 < 0)
            {
              break;
            }
          }

          else if (v242 <= v235)
          {
            break;
          }

          v237 = *v239;
          *(v224 + 16) = *(v239 + 16);
          *v224 = v237;
          *(v239 + 23) = 0;
          *v239 = 0;
          v224 = a1 + 24 * v223;
          if (v238 <= 1)
          {
            goto LABEL_477;
          }
        }
      }

      v239 = v224;
LABEL_477:
      result = v279;
      *(v239 + 16) = v280;
      *v239 = result;
      a2 = v278;
    }

LABEL_405:
    a2 -= 3;
  }

  while (v201-- > 2);
  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v10 > v15)
  {
LABEL_18:
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = a3[1];
    }

    if (v10 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = memcmp(v19, v9, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *(a1 + 16);
        v24 = a3[2];
        result = *a3;
        *a1 = *a3;
        *(a1 + 16) = v24;
        *a3 = v13;
        a3[1] = v12;
        a3[2] = v23;
        return result;
      }
    }

    else if (v20 > v10)
    {
      goto LABEL_29;
    }

    v31 = *(a1 + 16);
    v32 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v32;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v31;
    v33 = *(a3 + 23);
    if (v33 >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    if (v33 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = a3[1];
    }

    if (v31 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = v13;
    }

    if (v31 >= 0)
    {
      v37 = HIBYTE(v31);
    }

    else
    {
      v37 = v12;
    }

    if (v37 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v34, v36, v38);
    if (v39)
    {
      if (v39 < 0)
      {
        return result;
      }
    }

    else if (v35 <= v37)
    {
      return result;
    }

    result = *a3;
    *(a2 + 16) = a3[2];
    *a2 = result;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v31;
    return result;
  }

  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  if (v10 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v10;
  }

  v30 = memcmp(v27, v9, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v28 <= v10)
  {
    return result;
  }

  v40 = *(a2 + 16);
  v41 = a3[2];
  *a2 = *a3;
  *(a2 + 16) = v41;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v40;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 8);
  }

  v45 = *(a1 + 23);
  v46 = *a1;
  v47 = *(a1 + 8);
  if (v45 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v45 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v44)
  {
    v50 = v44;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v43, v48, v50);
  if (!v51)
  {
    if (v44 <= v49)
    {
      return result;
    }

    goto LABEL_84;
  }

  if ((v51 & 0x80000000) == 0)
  {
LABEL_84:
    v52 = *(a1 + 16);
    v53 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = v46;
    *(a2 + 8) = v47;
    *(a2 + 16) = v52;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

uint64_t std::unordered_set<std::string>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *std::unique_ptr<std::__hash_node<std::string,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t antenna::MipcCommandDriver::create@<X0>(NSObject **a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x98uLL);
  v7 = *a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::MipcCommandDriver::MipcCommandDriver(v6, &object, v11);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<antenna::MipcCommandDriver>::shared_ptr[abi:ne200100]<antenna::MipcCommandDriver,std::shared_ptr<antenna::MipcCommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::MipcCommandDriver>(antenna::MipcCommandDriver*)::{lambda(antenna::MipcCommandDriver*)#1},0>(a3, v6);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return (*(**a3 + 32))();
}

void sub_296EA4444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (v4)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

antenna::CommandDriver *antenna::MipcCommandDriver::MipcCommandDriver(antenna::CommandDriver *a1, dispatch_object_t *a2, uint64_t a3)
{
  v19 = *a2;
  if (v19)
  {
    dispatch_retain(v19);
  }

  v5 = *(a3 + 8);
  object[1] = *a3;
  v18 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::CommandDriver::CommandDriver();
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  *a1 = &unk_2A1E13A58;
  Name = antenna::CommandDriver::getName(a1);
  v7 = *(a1 + 3);
  object[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  Registry::getRouterServer(&v13, *a3);
  v8 = v13;
  if (v13)
  {
    Registry::getRouterServer(v12, *a3);
    abb::router::Server::createLocalLink(&v15, v12[0]);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 128, Name, object, &v15);
  v9 = v16;
  if (v8)
  {
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v9 = v12[1];
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  return a1;
}

void sub_296EA46B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  if (object)
  {
    dispatch_release(object);
  }

  antenna::CommandDriver::~CommandDriver(v15);
  _Unwind_Resume(a1);
}

void sub_296EA4710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  v10 = *(v8 - 56);
  if (v10)
  {
    dispatch_release(v10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296EA4708);
}

void antenna::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E13B40;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[12];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[10];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(this[7]);
  MEMORY[0x29C2667C0](this + 5);
  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void antenna::MipcCommandDriver::~MipcCommandDriver(antenna::MipcCommandDriver *this)
{
  *this = &unk_2A1E13A58;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  *(this + 16) = &unk_2A1E11970;
  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    antenna::CommandDriver::~CommandDriver(this);
  }

  else
  {
    antenna::CommandDriver::~CommandDriver(this);
  }
}

void antenna::MipcCommandDriver::init(antenna::MipcCommandDriver *this)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN7antenna17MipcCommandDriver4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_2;
  v9[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E13DC0;
  block[5] = v3;
  v11 = v5;
  p_shared_owners = &v5->__shared_owners_;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v6, block);
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void ___ZN7antenna17MipcCommandDriver4initEv_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", v13, 2u);
  }

  v3 = v1[2];
  if (!v3 || (v4 = v1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = 0;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E13BC8;
  *(v8 + 1) = v4;
  *(v8 + 2) = v6;
  *(v8 + 3) = v1;
  v14 = v8;
  abb::router::Client::regEventHandler();
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E13C48;
  *(v9 + 1) = v4;
  *(v9 + 2) = v6;
  *(v9 + 3) = v1;
  v14 = v9;
  abb::router::Client::regEventHandler();
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x20uLL);
  *v10 = &unk_2A1E13CC8;
  *(v10 + 1) = v4;
  *(v10 + 2) = v6;
  *(v10 + 3) = v1;
  v14 = v10;
  abb::router::Client::regEventHandler();
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x20uLL);
  *v11 = &unk_2A1E13D48;
  *(v11 + 1) = v4;
  *(v11 + 2) = v6;
  *(v11 + 3) = v1;
  v14 = v11;
  abb::router::Client::regEventHandler();
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  abb::router::Client::start((v1 + 16));
  std::__shared_weak_count::__release_weak(v6);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_296EA4ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::function<void ()(dispatch::group)>::~function(&a9);
  std::__shared_weak_count::__release_weak(v9);
  _Unwind_Resume(a1);
}

void sub_296EA4F1C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void antenna::MipcCommandDriver::perform(void *a1, xpc_object_t *a2, __int128 *a3)
{
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v14 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v6 = a1[2];
    if (!v6)
    {
LABEL_9:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v14 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = a1[1];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = operator new(0x20uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = xpc_null_create();
  *(v10 + 1) = v14;
  v12 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  xpc_release(v11);
}

void antenna::MipcCommandDriver::sendSensorID(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_296E3E000, v1, OS_LOG_TYPE_ERROR, "Not implemented for this product", v2, 2u);
  }
}

void antenna::MipcCommandDriver::stewieSARWaitTime(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_296E3E000, v1, OS_LOG_TYPE_ERROR, "Not implemented for this product", v2, 2u);
  }
}

void antenna::MipcCommandDriver::getNVItems(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9[0]) = 0;
    _os_log_error_impl(&dword_296E3E000, v3, OS_LOG_TYPE_ERROR, "Not supported", v9, 2u);
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  if (*(a2 + 8))
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = *(a2 + 8);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN7antenna7NVItemsEEEclIJbS2_EEEvDpT__block_invoke;
    v9[3] = &__block_descriptor_tmp_26;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v12 = 1;
    v11 = 0;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

atomic_ullong *std::shared_ptr<antenna::MipcCommandDriver>::shared_ptr[abi:ne200100]<antenna::MipcCommandDriver,std::shared_ptr<antenna::MipcCommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::MipcCommandDriver>(antenna::MipcCommandDriver*)::{lambda(antenna::MipcCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E13B78;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296EA53B0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<antenna::MipcCommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::MipcCommandDriver>(antenna::MipcCommandDriver*)::{lambda(antenna::MipcCommandDriver*)#1}::operator() const(antenna::MipcCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<antenna::MipcCommandDriver *,std::shared_ptr<antenna::MipcCommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::MipcCommandDriver>(antenna::MipcCommandDriver*)::{lambda(antenna::MipcCommandDriver *)#1},std::allocator<antenna::MipcCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<antenna::MipcCommandDriver *,std::shared_ptr<antenna::MipcCommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::MipcCommandDriver>(antenna::MipcCommandDriver*)::{lambda(antenna::MipcCommandDriver *)#1},std::allocator<antenna::MipcCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<antenna::MipcCommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::MipcCommandDriver>(antenna::MipcCommandDriver*)::{lambda(antenna::MipcCommandDriver*)#1}::operator() const(antenna::MipcCommandDriver*)::{lambda(void *)#1}::__invoke(antenna::MipcCommandDriver *a1)
{
  if (a1)
  {
    antenna::MipcCommandDriver::~MipcCommandDriver(a1);

    operator delete(v1);
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2A1E13BC8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEED0Ev(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E13BC8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEE7__cloneEv(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E13BC8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEE7__cloneEPNS0_6__baseIS7_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E13BC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEE18destroy_deallocateEv(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEEclEv(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Mipc start event received", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEED1Ev(uint64_t result)
{
  *result = &unk_2A1E13C48;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEED0Ev(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E13C48;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEE7__cloneEv(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E13C48;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEE7__cloneEPNS0_6__baseIS9_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E13C48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEE18destroy_deallocateEv(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEEclEOS8_(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I Mipc stop event received", v9, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN8dispatch5groupEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2A1E13CC8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEED0Ev(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E13CC8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEE7__cloneEv(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E13CC8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEE7__cloneEPNS0_6__baseIS7_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E13CC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEE18destroy_deallocateEv(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEEclEv(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Mipc wake up received", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__2NS_9allocatorIS4_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEED1Ev(uint64_t result)
{
  *result = &unk_2A1E13D48;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEED0Ev(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E13D48;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEE7__cloneEv(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E13D48;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *_ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEE7__cloneEPNS0_6__baseIS9_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E13D48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEE18destroy_deallocateEv(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEEclEOS8_(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I Mipc sleep received", v9, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN7antenna17MipcCommandDriver4initEvEUb_E3__3NS_9allocatorIS4_EEFvN8dispatch5groupEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7antenna17MipcCommandDriver4initEvEUb_E3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7antenna13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(*(v2 + 8), *MEMORY[0x29EDC8FA8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(v2 + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(*(v2 + 8));
  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    operator delete(a1);
  }

  else
  {
    operator delete(a1);
  }
}

void sub_296EA62E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<antenna::MipcCommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,std::default_delete<dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void *__copy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18B7DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DF8))
  {
    qword_2A18B7E00 = 0;
    unk_2A18B7E08 = 0;
    __cxa_guard_release(&qword_2A18B7DF8);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_1);
  }

  return &qword_2A18B7E00;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296E3E000);
  }

  return result;
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_296E3E000);
  }

  return result;
}

void trace::MipcCommandDriver::create(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x70uLL);
  v5 = v4;
  v6 = *(a1 + 8);
  v10 = *a1;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  trace::MipcCommandDriver::MipcCommandDriver(v4, &v10);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<trace::MipcCommandDriver>::shared_ptr[abi:ne200100]<trace::MipcCommandDriver,std::shared_ptr<trace::MipcCommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::MipcCommandDriver>(trace::MipcCommandDriver*)::{lambda(trace::MipcCommandDriver*)#1},0>(&v12, v5);
  v7 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = v12;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = v12;
    if (v12)
    {
LABEL_6:
      (*(*v8 + 216))(v8);
      *a2 = v12;
      return;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    if (!atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_296EA6854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296EA687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void trace::MipcCommandDriver::init(trace::MipcCommandDriver *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNS1_17MipcCommandDriver4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_32;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t trace::MipcCommandDriver::MipcCommandDriver(uint64_t a1, Registry **a2)
{
  *a1 = &unk_2A1E140E0;
  ctu::OsLogContext::OsLogContext(&v16, "com.apple.telephony.abm", "trace.drv");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v5 = dispatch_queue_create("trace.drv", v4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    *(a1 + 32) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C2667B0](a1 + 40, v12);
  MEMORY[0x29C2667C0](v12);
  ctu::OsLogContext::~OsLogContext(&v16);
  *a1 = &unk_2A1E13E50;
  v7 = *(a1 + 24);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  Registry::getRouterServer(&v16, *a2);
  v8 = v16;
  if (v16)
  {
    Registry::getRouterServer(v12, *a2);
    abb::router::Server::createLocalLink(&v13, v12[0]);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 48, "trace.drv", &object, &v13);
  v9 = v14;
  if (v8)
  {
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v9 = v12[1];
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_296EA6B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, dispatch_object_t object, char a15)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::SharedLoggable<trace::CommandDriver,ctu::OsLogLogger>::~SharedLoggable(v15);
  _Unwind_Resume(a1);
}

void trace::MipcCommandDriver::~MipcCommandDriver(trace::MipcCommandDriver *this)
{
  *this = &unk_2A1E13E50;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I MIPC command driver gone!", v12, 2u);
  }

  v4 = *(this + 13);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    _Block_release(v7);
  }

  *(this + 6) = &unk_2A1E11970;
  v8 = *(this + 8);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  MEMORY[0x29C2667C0](v2);
  v9 = *(this + 4);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

{
  trace::MipcCommandDriver::~MipcCommandDriver(this);

  operator delete(v1);
}

uint64_t trace::MipcCommandDriver::isStarted(trace::MipcCommandDriver *this)
{
  v5 = 0;
  v4[0] = &v5;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNKS1_17MipcCommandDriver9isStartedEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_49;
  block[4] = this + 8;
  block[5] = v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  return v5;
}

void trace::MipcCommandDriver::start(trace::MipcCommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5trace17MipcCommandDriver5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_4;
  v1[4] = this;
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t ___ZN5trace17MipcCommandDriver5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = abb::router::Client::start((v1 + 48));
  *(v1 + 72) = 1;
  return result;
}

void trace::MipcCommandDriver::stop(trace::MipcCommandDriver *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN5trace17MipcCommandDriver4stopEN8dispatch5groupE_block_invoke;
  v4[3] = &__block_descriptor_tmp_5_0;
  v4[4] = this;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(this + 1, v4);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }
}

uint64_t ___ZN5trace17MipcCommandDriver4stopEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = abb::router::Client::stop((v1 + 48));
  *(v1 + 72) = 0;
  return result;
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void trace::MipcCommandDriver::setLPMExitAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace17MipcCommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_6_0;
  v8[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_51;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace17MipcCommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 104);
  *(v3 + 104) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void trace::MipcCommandDriver::setLPMEnterAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace17MipcCommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_7_0;
  v8[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_51;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace17MipcCommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 88);
  *(v3 + 88) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void trace::MipcCommandDriver::setLogMode(void *a1, int a2, char a3, NSObject **a4, uint64_t a5)
{
  v10 = *a4;
  if (*a4)
  {
    v10 = _Block_copy(v10);
  }

  v11 = a4[1];
  object[0] = v10;
  object[1] = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  LODWORD(v24) = a2;
  BYTE4(v24) = a3;
  *(&v24 + 1) = a5;
  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v25[0] = v13;
  v25[1] = v14;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = v14;
    (v14->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = a1[2];
  if (!v16 || (v17 = a1[1], (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  v20 = operator new(0x38uLL);
  *v20 = *object;
  v20[1] = v24;
  v20[2] = *v25;
  *(v20 + 6) = a1;
  v21 = a1[3];
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v20;
  v22[1] = v17;
  v22[2] = v19;
  dispatch_async_f(v21, v22, dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void trace::MipcCommandDriver::setLogLevel(void *a1, int a2, NSObject **a3)
{
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a3[1];
  object[0] = v5;
  object[1] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[2];
  if (!v7 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20[0] = v8;
  v20[1] = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v9;
    (v9->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x30uLL);
  *v15 = a2;
  *(v15 + 8) = *object;
  *(v15 + 24) = *v20;
  *(v15 + 5) = a1;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }
}

void trace::MipcCommandDriver::flushLog(void *a1, NSObject **a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a2[1];
  object[0] = v6;
  object[1] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v20 = a3;
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21[0] = v9;
  v21[1] = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x30uLL);
  *v16 = *object;
  *(v16 + 2) = v20;
  *(v16 + 24) = *v21;
  *(v16 + 5) = a1;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }
}

void trace::MipcCommandDriver::sendCustomizedMask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS1_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_8;
  v16[4] = a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v12 = *a2;
  v13 = *(a2 + 8) - *a2;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v13);
    v19 = __p + v13;
    memcpy(__p, v12, v13);
    v18 = __p + v13;
  }

  v14 = *a3;
  if (*a3)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a3 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v22 = v7;
  v23 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v16);
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v11);
}

void sub_296EA7B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void ___ZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS1_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[4] = v3;
  *__p = v3;
  v31[2] = v3;
  v31[3] = v3;
  v31[0] = v3;
  v31[1] = v3;
  mipc::sys::Set_Md_Log_Filter_Req::Set_Md_Log_Filter_Req();
  v4 = a1[5];
  v5 = a1[6];
  v6 = operator new(0x18uLL);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  v7 = v5 - v4;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v7);
    *v6 = v8;
    v9 = &v8[v7];
    v6[2] = &v8[v7];
    memcpy(v8, v4, v7);
    v6[1] = v9;
  }

  v10 = __p[1];
  __p[1] = v6;
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      v10[1] = v11;
      operator delete(v11);
    }

    operator delete(v10);
  }

  v12 = *(v2 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v12, OS_LOG_TYPE_DEFAULT, "#I sending customized mask....", buf, 2u);
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v13;
  v44 = v13;
  v42 = v13;
  mipc::sys::Set_Md_Log_Filter_Req::serialize(&v42, v31);
  if (v45)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v14;
  v40 = v14;
  v37 = v14;
  v38 = v14;
  v35 = v14;
  v36 = v14;
  v33 = v14;
  v34 = v14;
  MEMORY[0x29C266720](&v33, &v42);
  abb::router::SendProxy::SendProxy(buf, (v2 + 48), &v33);
  MEMORY[0x29C266730](&v33);
  if (v45 != -1)
  {
    *&v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v33 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v33 + v45))(&v26, &v42);
  }

  v15 = abb::router::SendProxy::queuePolicy();
  v26 = v2;
  v16 = a1[8];
  if (v16)
  {
    v17 = _Block_copy(v16);
    v18 = a1[9];
    v27 = v17;
    v28 = v18;
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  v18 = a1[9];
  v27 = 0;
  v28 = v18;
  if (v18)
  {
LABEL_15:
    dispatch_retain(v18);
  }

LABEL_16:
  v20 = a1[10];
  v19 = a1[11];
  v29 = v20;
  v30 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v42 = v2;
  if (v17)
  {
    v21 = _Block_copy(v17);
    *(&v42 + 1) = v21;
    *&v43 = v18;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v21 = 0;
  *(&v42 + 1) = 0;
  *&v43 = v18;
  if (v18)
  {
LABEL_20:
    dispatch_retain(v18);
  }

LABEL_21:
  *(&v43 + 1) = v20;
  *&v44 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v33 = v2;
  if (v21)
  {
    v22 = _Block_copy(v21);
    *(&v33 + 1) = v22;
    *&v34 = v18;
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v22 = 0;
  *(&v33 + 1) = 0;
  *&v34 = v18;
  if (v18)
  {
LABEL_25:
    dispatch_retain(v18);
  }

LABEL_26:
  *(&v34 + 1) = v20;
  *&v35 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = operator new(0x30uLL);
  *v23 = &unk_2A1E14668;
  v23[1] = v2;
  if (v22)
  {
    v23[2] = _Block_copy(v22);
    v23[3] = v18;
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v23[2] = 0;
  v23[3] = v18;
  if (v18)
  {
LABEL_30:
    dispatch_retain(v18);
  }

LABEL_31:
  v23[4] = v20;
  v23[5] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v23;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v47, (v15 + 152));
  if (v48 == v47)
  {
    (*(*v48 + 32))(v48);
    if (v19)
    {
LABEL_37:
      std::__shared_weak_count::__release_weak(v19);
    }
  }

  else
  {
    if (v48)
    {
      (*(*v48 + 40))(v48);
    }

    if (v19)
    {
      goto LABEL_37;
    }
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  MEMORY[0x29C266750](buf);
  mipc::sys::Set_Md_Log_Filter_Req::~Set_Md_Log_Filter_Req(v31);
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296EA8020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a45);
  mipc::sys::Set_Md_Log_Filter_Req::~Set_Md_Log_Filter_Req(&a15);
  _Unwind_Resume(a1);
}

void sub_296EA8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::sys::Set_Md_Log_Filter_Req::~Set_Md_Log_Filter_Req(va);
  _Unwind_Resume(a1);
}

void sub_296EA8118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::sys::Set_Md_Log_Filter_Req::~Set_Md_Log_Filter_Req(va);
  _Unwind_Resume(a1);
}

void sub_296EA8138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    v15[1] = v17;
    operator delete(v17);
  }

  operator delete(v15);
  mipc::sys::Set_Md_Log_Filter_Req::~Set_Md_Log_Filter_Req(&a15);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS1_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_EN3__5D1Ev(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE80c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE(void *a1, void *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v5 = a2[5];
  v4 = a2[6];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    a1[5] = v7;
    a1[6] = v7;
    v8 = &v7[v6];
    a1[7] = &v7[v6];
    memcpy(v7, v5, v6);
    a1[6] = v8;
  }

  v9 = a2[8];
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = a2[9];
  a1[8] = v9;
  a1[9] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = a2[11];
  a1[10] = a2[10];
  a1[11] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_296EA8268(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE80c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;

    operator delete(v5);
  }
}

void trace::MipcCommandDriver::getLogMode(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS_7LogModeEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_9;
  v12[4] = a1;
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v15 = v6;
  v16 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v5, v12);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void ___ZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS_7LogModeEEEE_block_invoke(void *a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[3] = v3;
  v22[4] = v3;
  v22[1] = v3;
  v22[2] = v3;
  v22[0] = v3;
  mipc::sys::Get_Md_Log_Mode_Req::Get_Md_Log_Mode_Req();
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v4;
  v35 = v4;
  v33 = v4;
  mipc::sys::Get_Md_Log_Mode_Req::serialize(&v33, v22);
  if (v36)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v5;
  v31 = v5;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  MEMORY[0x29C266720](&v24, &v33);
  abb::router::SendProxy::SendProxy(v37, (v2 + 48), &v24);
  MEMORY[0x29C266730](&v24);
  if (v36 != -1)
  {
    *&v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v24 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v24 + v36))(&v17, &v33);
  }

  v6 = abb::router::SendProxy::queuePolicy();
  v17 = v2;
  v7 = a1[5];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = a1[6];
    v18 = v8;
    v19 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  v9 = a1[6];
  v18 = 0;
  v19 = v9;
  if (v9)
  {
LABEL_6:
    dispatch_retain(v9);
  }

LABEL_7:
  v11 = a1[7];
  v10 = a1[8];
  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v33 = v2;
  if (v8)
  {
    v12 = _Block_copy(v8);
    *(&v33 + 1) = v12;
    *&v34 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = 0;
  *(&v33 + 1) = 0;
  *&v34 = v9;
  if (v9)
  {
LABEL_11:
    dispatch_retain(v9);
  }

LABEL_12:
  *(&v34 + 1) = v11;
  *&v35 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v24 = v2;
  if (v12)
  {
    v13 = _Block_copy(v12);
    *(&v24 + 1) = v13;
    *&v25 = v9;
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = 0;
  *(&v24 + 1) = 0;
  *&v25 = v9;
  if (v9)
  {
LABEL_16:
    dispatch_retain(v9);
  }

LABEL_17:
  *(&v25 + 1) = v11;
  *&v26 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = operator new(0x30uLL);
  *v14 = &unk_2A1E146E8;
  v14[1] = v2;
  if (v13)
  {
    v14[2] = _Block_copy(v13);
    v14[3] = v9;
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14[2] = 0;
  v14[3] = v9;
  if (v9)
  {
LABEL_21:
    dispatch_retain(v9);
  }

LABEL_22:
  v14[4] = v11;
  v14[5] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v14;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v38, (v6 + 152));
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
    if (v10)
    {
LABEL_28:
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    if (v39)
    {
      (*(*v39 + 40))(v39);
    }

    if (v10)
    {
      goto LABEL_28;
    }
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  MEMORY[0x29C266750](v37);
  mipc::sys::Get_Md_Log_Mode_Req::~Get_Md_Log_Mode_Req(v22);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296EA8838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a45);
  mipc::sys::Get_Md_Log_Mode_Req::~Get_Md_Log_Mode_Req(&a15);
  _Unwind_Resume(a1);
}

void sub_296EA891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::sys::Get_Md_Log_Mode_Req::~Get_Md_Log_Mode_Req(va);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS_7LogModeEEEEEUb0_EN3__6D1Ev(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c95_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN5trace7LogModeEEEE56c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE(void *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[6];
  a1[5] = v4;
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a2[8];
  a1[7] = a2[7];
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c95_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN5trace7LogModeEEEE56c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }
}

void trace::MipcCommandDriver::setFlushTimer(void *a1, int a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = *a3;
    if (*a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v11 = 0;
    v12 = *(a3 + 8);
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v9);
  v10 = *a3;
  if (!*a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  v11 = _Block_copy(v10);
  v12 = *(a3 + 8);
  if (v12)
  {
LABEL_6:
    dispatch_retain(v12);
  }

LABEL_7:
  v13 = a1[2];
  if (!v13 || (v14 = a1[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x30uLL);
  *v17 = v7;
  v17[1] = v9;
  v17[2] = v11;
  v17[3] = v12;
  *(v17 + 8) = a2;
  v17[5] = a1;
  v18 = a1[3];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);

    std::__shared_weak_count::__release_weak(v16);
  }
}

void *ctu::SharedLoggable<trace::CommandDriver,ctu::OsLogLogger>::~SharedLoggable(void *a1)
{
  MEMORY[0x29C2667C0](a1 + 4);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x18uLL);
  *v14 = 0;
  v14[1] = v5;
  v14[2] = *a3;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (v6 && (v16 * v6) >= v15)
  {
    v5 = v8;
  }

  else
  {
    v17 = 1;
    if (v6 >= 3)
    {
      v17 = (v6 & (v6 - 1)) != 0;
    }

    v18 = v17 | (2 * v6);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_36;
    }

    if (prime < v6)
    {
      v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v21 = std::__next_prime(v21);
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v6)
      {
LABEL_36:
        std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v5);
  if (v25)
  {
    *v14 = *v25;
  }

  else
  {
    *v14 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v24 + 8 * v5) = a1 + 16;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v26 = *(*v14 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v26 >= v6)
      {
        v26 %= v6;
      }

      v25 = (v24 + 8 * v26);
    }

    else
    {
      v25 = (v24 + 8 * (v26 & (v6 - 1)));
    }
  }

  *v25 = v14;
LABEL_54:
  ++*(a1 + 24);
  return v14;
}

void std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::~__hash_table(uint64_t a1)
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

uint64_t *std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x18uLL);
  *v14 = 0;
  v14[1] = v5;
  v14[2] = *a3;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (v6 && (v16 * v6) >= v15)
  {
    v5 = v8;
  }

  else
  {
    v17 = 1;
    if (v6 >= 3)
    {
      v17 = (v6 & (v6 - 1)) != 0;
    }

    v18 = v17 | (2 * v6);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_36;
    }

    if (prime < v6)
    {
      v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v21 = std::__next_prime(v21);
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v6)
      {
LABEL_36:
        std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v5);
  if (v25)
  {
    *v14 = *v25;
  }

  else
  {
    *v14 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v24 + 8 * v5) = a1 + 16;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v26 = *(*v14 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v26 >= v6)
      {
        v26 %= v6;
      }

      v25 = (v24 + 8 * v26);
    }

    else
    {
      v25 = (v24 + 8 * (v26 & (v6 - 1)));
    }
  }

  *v25 = v14;
LABEL_54:
  ++*(a1 + 24);
  return v14;
}

uint64_t *std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x18uLL);
  *v14 = 0;
  v14[1] = v5;
  v14[2] = *a3;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (v6 && (v16 * v6) >= v15)
  {
    v5 = v8;
  }

  else
  {
    v17 = 1;
    if (v6 >= 3)
    {
      v17 = (v6 & (v6 - 1)) != 0;
    }

    v18 = v17 | (2 * v6);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_36;
    }

    if (prime < v6)
    {
      v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v21 = std::__next_prime(v21);
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v6)
      {
LABEL_36:
        std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v5);
  if (v25)
  {
    *v14 = *v25;
  }

  else
  {
    *v14 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v24 + 8 * v5) = a1 + 16;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v26 = *(*v14 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v26 >= v6)
      {
        v26 %= v6;
      }

      v25 = (v24 + 8 * v26);
    }

    else
    {
      v25 = (v24 + 8 * (v26 & (v6 - 1)));
    }
  }

  *v25 = v14;
LABEL_54:
  ++*(a1 + 24);
  return v14;
}

atomic_ullong *std::shared_ptr<trace::MipcCommandDriver>::shared_ptr[abi:ne200100]<trace::MipcCommandDriver,std::shared_ptr<trace::MipcCommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::MipcCommandDriver>(trace::MipcCommandDriver*)::{lambda(trace::MipcCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E141D0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296EA98CC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<trace::MipcCommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::MipcCommandDriver>(trace::MipcCommandDriver*)::{lambda(trace::MipcCommandDriver*)#1}::operator() const(trace::MipcCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<trace::MipcCommandDriver *,std::shared_ptr<trace::MipcCommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::MipcCommandDriver>(trace::MipcCommandDriver*)::{lambda(trace::MipcCommandDriver *)#1},std::allocator<trace::MipcCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<trace::MipcCommandDriver *,std::shared_ptr<trace::MipcCommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::MipcCommandDriver>(trace::MipcCommandDriver*)::{lambda(trace::MipcCommandDriver *)#1},std::allocator<trace::MipcCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<trace::MipcCommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::MipcCommandDriver>(trace::MipcCommandDriver*)::{lambda(trace::MipcCommandDriver*)#1}::operator() const(trace::MipcCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNS1_17MipcCommandDriver4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing MIPC Trace CommandDriver", v14, 2u);
  }

  v4 = *(v2 + 16);
  if (!v4 || (v5 = *(v2 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v15 = 0;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E14220;
  *(v9 + 1) = v5;
  *(v9 + 2) = v7;
  *(v9 + 3) = v2;
  v15 = v9;
  abb::router::Client::regEventHandler();
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x20uLL);
  *v10 = &unk_2A1E142A0;
  *(v10 + 1) = v5;
  *(v10 + 2) = v7;
  *(v10 + 3) = v2;
  v15 = v10;
  abb::router::Client::regEventHandler();
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x20uLL);
  *v11 = &unk_2A1E14320;
  *(v11 + 1) = v5;
  *(v11 + 2) = v7;
  *(v11 + 3) = v2;
  v15 = v11;
  abb::router::Client::regEventHandler();
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E143D0;
  *(v12 + 1) = v5;
  *(v12 + 2) = v7;
  *(v12 + 3) = v2;
  v15 = v12;
  abb::router::Client::regEventHandler();
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  abb::router::Client::start((v2 + 48));
  *(v2 + 72) = 1;
  std::__shared_weak_count::__release_weak(v7);
  v13 = *MEMORY[0x29EDCA608];
}

void sub_296EA9DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::function<void ()(dispatch::group)>::~function(&a9);
  std::__shared_weak_count::__release_weak(v9);
  _Unwind_Resume(a1);
}

void sub_296EA9E0C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E14220;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E14220;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E14220;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E14220;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v7[0]) = 0;
          _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Mipc start event received", v7, 2u);
        }

        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN5trace17MipcCommandDriver5startEv_block_invoke;
        v7[3] = &__block_descriptor_tmp_4;
        v7[4] = v3;
        ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped((v3 + 8), v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::~__func(uint64_t result)
{
  *result = &unk_2A1E142A0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E142A0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E142A0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E142A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::operator()(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (!a1[1])
      {
        goto LABEL_10;
      }

      v8 = *(v5 + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9.gr_passwd) = 0;
        _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I Mipc stop event received", &v9.gr_passwd, 2u);
      }

      v9.gr_name = v3;
      if (v3)
      {
        dispatch_retain(v3);
        trace::MipcCommandDriver::stop(v5, &v9);
        dispatch_release(v3);
LABEL_10:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      trace::MipcCommandDriver::stop(v5, &v9);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_11:
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

LABEL_12:
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E14320;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E14320;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E14320;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E14320;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
        goto LABEL_15;
      }

      v6 = v3[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I MIPC wake up received", v12, 2u);
      }

      v7 = v3[12];
      if (!v7 || !v3[13])
      {
        goto LABEL_15;
      }

      v8 = _Block_copy(v7);
      v9 = v8;
      v10 = v3[13];
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
      v12[3] = &__block_descriptor_tmp_47;
      if (v8)
      {
        aBlock = _Block_copy(v8);
        dispatch_async(v10, v12);
        v11 = aBlock;
        if (!aBlock)
        {
LABEL_13:
          if (v9)
          {
            _Block_release(v9);
          }

LABEL_15:
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          return;
        }
      }

      else
      {
        aBlock = 0;
        dispatch_async(v10, v12);
        v11 = aBlock;
        if (!aBlock)
        {
          goto LABEL_13;
        }
      }

      _Block_release(v11);
      goto LABEL_13;
    }
  }
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::~__func(uint64_t result)
{
  *result = &unk_2A1E143D0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E143D0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E143D0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E143D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::operator()(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (!a1[1])
      {
        goto LABEL_29;
      }

      v8 = v5[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I MIPC sleep received", v12, 2u);
      }

      v9 = v5[10];
      if (!v9 || !v5[11])
      {
        goto LABEL_29;
      }

      if (v3 && (dispatch_retain(v3), dispatch_group_enter(v3), (v9 = v5[10]) == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = _Block_copy(v9);
      }

      v11 = v5[11];
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEclIJS1_EEEvDpT__block_invoke;
      v12[3] = &__block_descriptor_tmp_48;
      if (v10)
      {
        aBlock = _Block_copy(v10);
        group = v3;
        if (!v3)
        {
LABEL_20:
          dispatch_async(v11, v12);
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v10)
          {
            _Block_release(v10);
          }

          if (v3)
          {
            dispatch_group_leave(v3);
            dispatch_release(v3);
          }

LABEL_29:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          goto LABEL_31;
        }
      }

      else
      {
        aBlock = 0;
        group = v3;
        if (!v3)
        {
          goto LABEL_20;
        }
      }

      dispatch_retain(v3);
      if (group)
      {
        dispatch_group_enter(group);
      }

      goto LABEL_20;
    }
  }

LABEL_31:
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

uint64_t std::__function::__func<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2},std::allocator<trace::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#2}>,void ()(dispatch::group)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN5trace17MipcCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEclIJS1_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  (*(v1 + 16))(v1, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_296EAADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvNS_13group_sessionEEEE40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a1 + 40);
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void __destroy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvNS_13group_sessionEEEE40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }
}

void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E14478;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5trace13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5trace13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *(*a1 + 48);
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50[4] = v4;
  *__p = v4;
  v50[2] = v4;
  v50[3] = v4;
  v50[0] = v4;
  v50[1] = v4;
  mipc::sys::Set_Md_Log_Mode_Req::Set_Md_Log_Mode_Req();
  v5 = *(v2 + 16);
  v6 = *(&_MergedGlobals_5 + 1);
  if (*(&_MergedGlobals_5 + 1))
  {
    v7 = vcnt_s8(*(&_MergedGlobals_5 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(v2 + 16);
      if (*(&_MergedGlobals_5 + 1) <= v5)
      {
        v8 = v5 % DWORD2(_MergedGlobals_5);
      }
    }

    else
    {
      v8 = (DWORD2(_MergedGlobals_5) - 1) & v5;
    }

    v9 = *(_MergedGlobals_5 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                goto LABEL_54;
              }
            }

            else if ((v12 & (*(&_MergedGlobals_5 + 1) - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v11 >= *(&_MergedGlobals_5 + 1))
            {
              v11 %= *(&_MergedGlobals_5 + 1);
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = v5;
  *(v10 + 5) = 0;
  v13 = (qword_2A18B7E28 + 1);
  if (v6 && (*&dword_2A18B7E30 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v14 = 1;
    if (v6 >= 3)
    {
      v14 = (v6 & (v6 - 1)) != 0;
    }

    v15 = v14 | (2 * v6);
    v16 = vcvtps_u32_f32(v13 / *&dword_2A18B7E30);
    if (v15 <= v16)
    {
      prime = v16;
    }

    else
    {
      prime = v15;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(&_MergedGlobals_5 + 1);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v18 = vcvtps_u32_f32(qword_2A18B7E28 / *&dword_2A18B7E30);
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        v18 = std::__next_prime(v18);
      }

      else
      {
        v20 = 1 << -__clz(v18 - 1);
        if (v18 >= 2)
        {
          v18 = v20;
        }
      }

      if (prime <= v18)
      {
        prime = v18;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(&_MergedGlobals_5, prime);
      }
    }

    v6 = *(&_MergedGlobals_5 + 1);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (*(&_MergedGlobals_5 + 1) <= v5)
      {
        v5 %= *(&_MergedGlobals_5 + 1);
      }
    }

    else
    {
      v5 = (DWORD2(_MergedGlobals_5) - 1) & v5;
    }
  }

  v21 = _MergedGlobals_5;
  v22 = *(_MergedGlobals_5 + 8 * v5);
  if (v22)
  {
    *v10 = *v22;
  }

  else
  {
    *v10 = qword_2A18B7E20;
    qword_2A18B7E20 = v10;
    *(v21 + 8 * v5) = &qword_2A18B7E20;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v44 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v44 >= v6)
      {
        v44 %= v6;
      }

      v22 = (v21 + 8 * v44);
    }

    else
    {
      v22 = (v21 + 8 * (v44 & (v6 - 1)));
    }
  }

  *v22 = v10;
LABEL_53:
  ++qword_2A18B7E28;
LABEL_54:
  v23 = operator new(4uLL);
  *v23 = *(v10 + 5);
  v24 = __p[1];
  __p[1] = v23;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = *(v2 + 20);
  v26 = operator new(1uLL);
  *v26 = v25;
  v27 = v52;
  v52 = v26;
  if (v27)
  {
    operator delete(v27);
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v62[16] = v28;
  v63 = v28;
  *v62 = v28;
  mipc::sys::Set_Md_Log_Mode_Req::serialize(v62, v50);
  if (v64)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v29;
  v60 = v29;
  v57 = v29;
  v58 = v29;
  v55 = v29;
  v56 = v29;
  v53 = v29;
  v54 = v29;
  MEMORY[0x29C266720](&v53, v62);
  abb::router::SendProxy::SendProxy(v65, (v3 + 48), &v53);
  MEMORY[0x29C266730](&v53);
  if (v64 != -1)
  {
    *&v53 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v53 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v53 + v64))(&v46, v62);
  }

  v30 = *(v2 + 24);
  abb::router::SendProxy::timeout();
  v31 = abb::router::SendProxy::queuePolicy();
  v46 = v3;
  if (*v2)
  {
    v32 = _Block_copy(*v2);
    v33 = *(v2 + 8);
    if (!v33)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v32 = 0;
  v33 = *(v2 + 8);
  if (v33)
  {
LABEL_63:
    dispatch_retain(v33);
  }

LABEL_64:
  v34 = *(v2 + 16);
  v48 = v34;
  v36 = *(v2 + 32);
  v35 = *(v2 + 40);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 16), 1uLL, memory_order_relaxed);
  }

  *v62 = v3;
  v47 = 0u;
  *&v62[24] = v34;
  v49 = 0u;
  *&v53 = v3;
  *(&v53 + 1) = v32;
  *&v54 = v33;
  *&v62[8] = 0u;
  DWORD2(v54) = v34;
  *&v55 = v36;
  *(&v55 + 1) = v35;
  v63 = 0u;
  v37 = operator new(0x38uLL);
  *v37 = &unk_2A1E144B8;
  v37[1] = v3;
  v37[2] = v32;
  v37[3] = v33;
  *(v37 + 8) = v34;
  v37[5] = v36;
  v37[6] = v35;
  v67 = v37;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v66, (v31 + 152));
  if (v67 == v66)
  {
    (*(*v67 + 32))(v67);
  }

  else if (v67)
  {
    (*(*v67 + 40))(v67, v38, v39);
  }

  MEMORY[0x29C266750](v65);
  mipc::sys::Set_Md_Log_Mode_Req::~Set_Md_Log_Mode_Req(v50);
  v40 = *(v2 + 40);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  v41 = *(v2 + 8);
  if (v41)
  {
    dispatch_release(v41);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v42 = a1[2];
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  operator delete(a1);
  v43 = *MEMORY[0x29EDCA608];
}

void sub_296EAB740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  operator delete(v58);
  mipc::sys::Set_Md_Log_Mode_Req::~Set_Md_Log_Mode_Req(&a19);
  std::unique_ptr<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}::~Set_Md_Log_Mode_Cnf(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E144B8;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E144B8;
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1E144B8;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = *(a1 + 24);
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  *(v2 + 8) = *(a1 + 32);
  v6 = *(a1 + 48);
  v2[5] = *(a1 + 40);
  v2[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2A1E144B8;
  *(a2 + 8) = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a2 + 32) = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v47 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[4] = v4;
  v30 = v4;
  v29[2] = v4;
  v29[3] = v4;
  v29[0] = v4;
  v29[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((__p[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *v37 = *__p;
    v6 = mipc::toErrorCode(*__p, v5);
    std::error_code::message((&buf + 8), v37);
    v45 = 0;
    v46 = 0;
    *&buf = v6;
    MEMORY[0x29C266BA0](v29, &buf, 1);
    v7 = v46;
    if (v46 && !atomic_fetch_add(v46 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v44) < 0)
    {
LABEL_6:
      operator delete(*(&buf + 1));
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&buf, this);
    v8 = *buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266BB0](v29, v8, *(*__p + 8) - **__p);
    v9 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&buf + 1);
    if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_51;
  }

  v12 = *(a1 + 8);
  v13 = std::__shared_weak_count::lock(v11);
  v36 = v13;
  if (!v13)
  {
    goto LABEL_51;
  }

  v14 = v13;
  if (!*(a1 + 40))
  {
    goto LABEL_49;
  }

  v34 = 0;
  if ((mipc::operator==() & 1) == 0)
  {
    if (*(&v30 + 1))
    {
      v19 = **(&v30 + 1);
      v20 = *(v12 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(v12 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_52:
        v25 = *(a1 + 32);
        v26 = trace::toString();
        mipc::ResponseMessage::getError(v29, &buf);
        v27 = mipc::asString();
        mipc::ResponseMessage::getError(v29, __p);
        v28 = &__p[8];
        if (v33 < 0)
        {
          v28 = *&__p[8];
        }

        *v37 = 136315906;
        *&v37[4] = v26;
        *&v37[12] = 2080;
        *&v37[14] = v27;
        v38 = 2080;
        v39 = v28;
        v40 = 1024;
        v41 = v19;
        _os_log_error_impl(&dword_296E3E000, v20, OS_LOG_TYPE_ERROR, "Set log mode to %s failed: %s (%s), setting result: %d", v37, 0x26u);
        mipc::Error::~Error(__p);
        mipc::Error::~Error(&buf);
      }
    }

    strcpy(__p, "Failed to set log mode");
    v32 = 22;
    CreateError();
    v18 = buf;
    v34 = buf;
    *&buf = 0;
    if (v32 < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_27;
  }

  v15 = *(v12 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = trace::toString();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_296E3E000, v15, OS_LOG_TYPE_DEFAULT, "#I Succeeded to set log mode to %s", &buf, 0xCu);
  }

  v18 = 0;
LABEL_27:
  v21 = *(a1 + 16);
  if (v21 && *(a1 + 24))
  {
    if (v18 && (CFRetain(v18), (v21 = *(a1 + 16)) == 0))
    {
      v22 = 0;
    }

    else
    {
      v22 = _Block_copy(v21);
    }

    v23 = *(a1 + 24);
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 1174405120;
    v43 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
    v44 = &__block_descriptor_tmp_65;
    if (v22)
    {
      v45 = _Block_copy(v22);
      v46 = v18;
      if (!v18)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v45 = 0;
      v46 = v18;
      if (!v18)
      {
LABEL_40:
        dispatch_async(v23, &buf);
        if (v46)
        {
          CFRelease(v46);
        }

        if (v45)
        {
          _Block_release(v45);
        }

        if (v22)
        {
          _Block_release(v22);
        }

        if (!v18)
        {
          goto LABEL_49;
        }

        CFRelease(v18);
        goto LABEL_48;
      }
    }

    CFRetain(v18);
    goto LABEL_40;
  }

  if (v18)
  {
LABEL_48:
    CFRelease(v18);
  }

LABEL_49:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_51:
  mipc::sys::Set_Md_Log_Mode_Cnf::~Set_Md_Log_Mode_Cnf(v29);
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296EAC0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1}>(trace::MipcCommandDriver::setLogMode(trace::LogMode,BOOL,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10setLogModeENS3_7LogModeEbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSG_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys19Set_Md_Log_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10setLogModeENS3_7LogModeEbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSG_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys19Set_Md_Log_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10setLogModeENS3_7LogModeEbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSG_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys19Set_Md_Log_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10setLogModeENS3_7LogModeEbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSG_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys19Set_Md_Log_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EAC274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *(*a1 + 40);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[4] = v4;
  *__p = v4;
  v48[2] = v4;
  v48[3] = v4;
  v48[0] = v4;
  v48[1] = v4;
  mipc::sys::Set_Md_Log_Level_Req::Set_Md_Log_Level_Req();
  v5 = *v2;
  v6 = *(&xmmword_2A18B7E60 + 1);
  if (*(&xmmword_2A18B7E60 + 1))
  {
    v7 = vcnt_s8(*(&xmmword_2A18B7E60 + 8));
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *v2;
      if (*(&xmmword_2A18B7E60 + 1) <= v5)
      {
        v8 = v5 % DWORD2(xmmword_2A18B7E60);
      }
    }

    else
    {
      v8 = (DWORD2(xmmword_2A18B7E60) - 1) & v5;
    }

    v9 = *(xmmword_2A18B7E60 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                goto LABEL_54;
              }
            }

            else if ((v12 & (*(&xmmword_2A18B7E60 + 1) - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v11 >= *(&xmmword_2A18B7E60 + 1))
            {
              v11 %= *(&xmmword_2A18B7E60 + 1);
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = v5;
  *(v10 + 5) = 0;
  v13 = (qword_2A18B7E78 + 1);
  if (v6 && (*&dword_2A18B7E80 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v14 = 1;
    if (v6 >= 3)
    {
      v14 = (v6 & (v6 - 1)) != 0;
    }

    v15 = v14 | (2 * v6);
    v16 = vcvtps_u32_f32(v13 / *&dword_2A18B7E80);
    if (v15 <= v16)
    {
      prime = v16;
    }

    else
    {
      prime = v15;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(&xmmword_2A18B7E60 + 1);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v18 = vcvtps_u32_f32(qword_2A18B7E78 / *&dword_2A18B7E80);
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        v18 = std::__next_prime(v18);
      }

      else
      {
        v20 = 1 << -__clz(v18 - 1);
        if (v18 >= 2)
        {
          v18 = v20;
        }
      }

      if (prime <= v18)
      {
        prime = v18;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(&xmmword_2A18B7E60, prime);
      }
    }

    v6 = *(&xmmword_2A18B7E60 + 1);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (*(&xmmword_2A18B7E60 + 1) <= v5)
      {
        v5 %= *(&xmmword_2A18B7E60 + 1);
      }
    }

    else
    {
      v5 = (DWORD2(xmmword_2A18B7E60) - 1) & v5;
    }
  }

  v21 = xmmword_2A18B7E60;
  v22 = *(xmmword_2A18B7E60 + 8 * v5);
  if (v22)
  {
    *v10 = *v22;
  }

  else
  {
    *v10 = qword_2A18B7E70;
    qword_2A18B7E70 = v10;
    *(v21 + 8 * v5) = &qword_2A18B7E70;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v42 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v42 >= v6)
      {
        v42 %= v6;
      }

      v22 = (v21 + 8 * v42);
    }

    else
    {
      v22 = (v21 + 8 * (v42 & (v6 - 1)));
    }
  }

  *v22 = v10;
LABEL_53:
  ++qword_2A18B7E78;
LABEL_54:
  v23 = operator new(4uLL);
  *v23 = *(v10 + 5);
  v24 = __p[1];
  __p[1] = v23;
  if (v24)
  {
    operator delete(v24);
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v59[16] = v25;
  v60 = v25;
  *v59 = v25;
  mipc::sys::Set_Md_Log_Level_Req::serialize(v59, v48);
  if (v61)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v26;
  v57 = v26;
  v54 = v26;
  v55 = v26;
  v52 = v26;
  v53 = v26;
  v50 = v26;
  v51 = v26;
  MEMORY[0x29C266720](&v50, v59);
  abb::router::SendProxy::SendProxy(v62, (v3 + 48), &v50);
  MEMORY[0x29C266730](&v50);
  if (v61 != -1)
  {
    *&v50 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v50 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v50 + v61))(&v44, v59);
  }

  v27 = abb::router::SendProxy::queuePolicy();
  v44 = v3;
  v28 = *(v2 + 1);
  if (v28)
  {
    v29 = _Block_copy(v28);
    v30 = *(v2 + 2);
    if (!v30)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v29 = 0;
  v30 = *(v2 + 2);
  if (v30)
  {
LABEL_61:
    dispatch_retain(v30);
  }

LABEL_62:
  v31 = *v2;
  v46 = *v2;
  v33 = *(v2 + 3);
  v32 = *(v2 + 4);
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
  }

  *v59 = v3;
  v45 = 0u;
  *&v59[24] = v31;
  v47 = 0u;
  *&v50 = v3;
  *(&v50 + 1) = v29;
  *&v51 = v30;
  *&v59[8] = 0u;
  DWORD2(v51) = v31;
  *&v52 = v33;
  *(&v52 + 1) = v32;
  v60 = 0u;
  v34 = operator new(0x38uLL);
  *v34 = &unk_2A1E14568;
  v34[1] = v3;
  v34[2] = v29;
  v34[3] = v30;
  *(v34 + 8) = v31;
  v34[5] = v33;
  v34[6] = v32;
  v64 = v34;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v63, (v27 + 152));
  if (v64 == v63)
  {
    (*(*v64 + 32))(v64);
  }

  else if (v64)
  {
    (*(*v64 + 40))(v64, v35, v36);
  }

  MEMORY[0x29C266750](v62);
  mipc::sys::Set_Md_Log_Level_Req::~Set_Md_Log_Level_Req(v48);
  v37 = *(v2 + 4);
  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(v2 + 2);
  if (v38)
  {
    dispatch_release(v38);
  }

  v39 = *(v2 + 1);
  if (v39)
  {
    _Block_release(v39);
  }

  operator delete(v2);
  v40 = a1[2];
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  operator delete(a1);
  v41 = *MEMORY[0x29EDCA608];
}

void sub_296EAC8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  operator delete(v56);
  mipc::sys::Set_Md_Log_Level_Req::~Set_Md_Log_Level_Req(&a19);
  std::unique_ptr<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}::~Set_Md_Log_Level_Cnf(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E14568;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E14568;
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1E14568;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = *(a1 + 24);
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  *(v2 + 8) = *(a1 + 32);
  v6 = *(a1 + 48);
  v2[5] = *(a1 + 40);
  v2[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return v2;
}