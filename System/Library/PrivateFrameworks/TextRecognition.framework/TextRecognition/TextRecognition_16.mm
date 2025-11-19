void CRDetectorPostProcessV3::extractTextBoxes(uint64_t a1, float **a2, uint64_t a3, uint64_t a4, float **a5, uint64_t a6, uint64_t a7, void *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  a8;
  memset(&v21[3], 0, 24);
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  std::vector<float>::vector[abi:ne200100](v21, v19 * v18);
  v10 = *(a1 + 16) * *(a1 + 8);
  if (v10)
  {
    v11 = *a1;
    v12 = *a2;
    v13 = *a5;
    v14 = v21[0];
    do
    {
      v15 = 1.0;
      if (*v11 <= 0.15)
      {
        if (*v12 <= 0.3)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = 1.0;
        }
      }

      *v13 = v15;
      v16 = 1.0;
      if (*v11 <= 0.45)
      {
        if (*v12 <= 0.3)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }
      }

      *v14++ = v16;
      ++v12;
      ++v13;
      ++v11;
      --v10;
    }

    while (v10);
  }

  CRDetectorUtils::CRTextDetectorConnectedComponentResult::CRTextDetectorConnectedComponentResult(&v20, v19, v18, 1, 1, 1);
}

void sub_1B427F304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult(&a64);
  v71 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v73;
    operator delete(v73);
  }

  if (STACK[0x290])
  {
    operator delete(STACK[0x290]);
  }

  v74 = STACK[0x2A8];
  if (STACK[0x2A8])
  {
    STACK[0x2B0] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x2C0];
  if (STACK[0x2C0])
  {
    STACK[0x2C8] = v75;
    operator delete(v75);
  }

  v76 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v76;
    operator delete(v76);
  }

  CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult(&STACK[0x2F0]);
  CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult(&STACK[0x380]);
  v77 = STACK[0x410];
  if (STACK[0x410])
  {
    STACK[0x418] = v77;
    operator delete(v77);
  }

  STACK[0x380] = &STACK[0x428];
  std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&STACK[0x380]);

  _Unwind_Resume(a1);
}

void std::vector<float>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = 4 * (v4 >> 2);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void CRDetectorPostProcessV3::Graph::connectedComponents(CRDetectorPostProcessV3::Graph *this@<X0>, void *a2@<X8>)
{
  v4 = *this;
  LOBYTE(__p) = 0;
  std::vector<BOOL>::vector(v12, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *this;
  if (*this >= 1)
  {
    v6 = 0;
    do
    {
      if (((*(v12[0] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        __p = 0;
        v10 = 0;
        v11 = 0;
        CRDetectorPostProcessV3::Graph::dfsUtil(this, v6, v12, &__p);
        v7 = a2[1];
        if (v7 >= a2[2])
        {
          v8 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int>&>(a2, &__p);
        }

        else
        {
          std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int>&>(a2, &__p);
          v8 = v7 + 24;
        }

        a2[1] = v8;
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }

        v5 = *this;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  if (v12[0])
  {
    operator delete(v12[0]);
  }
}

void sub_1B427F858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void CRDetectorPostProcessV3::Graph::dfsUtil(uint64_t a1, int a2, void *a3, const void **a4)
{
  *(*a3 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  v10 = a4[1];
  v9 = a4[2];
  if (v10 >= v9)
  {
    v12 = *a4;
    v13 = v10 - *a4;
    v14 = v13 >> 2;
    v15 = (v13 >> 2) + 1;
    if (v15 >> 62)
    {
      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v18);
    }

    *(4 * v14) = a2;
    v11 = 4 * v14 + 4;
    memcpy(0, v12, v13);
    v19 = *a4;
    *a4 = 0;
    a4[1] = v11;
    a4[2] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v10 = a2;
    v11 = (v10 + 4);
  }

  a4[1] = v11;
  v20 = *(a1 + 8) + 24 * a2;
  for (i = *(v20 + 8); i != v20; i = *(i + 8))
  {
    if (((*(*a3 + ((*(i + 16) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(i + 16)) & 1) == 0)
    {
      CRDetectorPostProcessV3::Graph::dfsUtil(a1);
    }
  }
}

CRDetectorPostProcessV3::Graph *CRDetectorPostProcessV3::Graph::Graph(CRDetectorPostProcessV3::Graph *this, int a2)
{
  *this = a2;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::list<int>>::vector[abi:ne200100](&v5, a2);
  std::vector<std::list<int>>::__vdeallocate(v3);
  *(this + 8) = v5;
  *(this + 3) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return this;
}

void std::vector<std::vector<CGPoint>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<CGPoint>>,std::vector<CGPoint>*,std::vector<CGPoint>*,std::vector<CGPoint>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<CGPoint>>,std::vector<CGPoint>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<CGPoint>>,std::vector<CGPoint>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<CGPoint> *,std::vector<CGPoint> *,std::vector<CGPoint> *>(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<_NSRange>::__assign_with_size[abi:ne200100]<_NSRange*,_NSRange*>(a3, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,float>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,false>(unint64_t a1, float *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v112 = *(a2 - 2);
        v113 = *v10;
        if (v112 < *v10 || v113 >= v112 && *(a2 - 1) < *(v10 + 4))
        {
          *v10 = v112;
          *(a2 - 2) = v113;
          v114 = *(v10 + 4);
          *(v10 + 4) = *(a2 - 1);
          *(a2 - 1) = v114;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      v108 = *(v10 + 8);
      v109 = *v10;
      if (v108 >= *v10 && (v109 < v108 || *(v10 + 12) >= *(v10 + 4)))
      {
        v177 = *(a2 - 2);
        if (v177 >= v108 && (v108 < v177 || *(a2 - 1) >= *(v10 + 12)))
        {
          return;
        }

        *(v10 + 8) = v177;
        *(a2 - 2) = v108;
        v9 = (v10 + 12);
        v178 = *(v10 + 12);
        *(v10 + 12) = *(a2 - 1);
        *(a2 - 1) = v178;
        v179 = *(v10 + 8);
        v180 = *v10;
        if (v179 >= *v10 && (v180 < v179 || *(v10 + 12) >= *(v10 + 4)))
        {
          return;
        }

        *v10 = v179;
        *(v10 + 8) = v180;
        v111 = (v10 + 4);
LABEL_344:
        v191 = *v111;
        *v111 = *v9;
        *v9 = v191;
        return;
      }

      v110 = *(a2 - 2);
      if (v110 < v108)
      {
LABEL_215:
        *v10 = v110;
        v111 = (v10 + 4);
        *(a2 - 2) = v109;
        goto LABEL_344;
      }

      if (v108 >= v110)
      {
        v188 = *(v10 + 12);
        if (*(a2 - 1) < v188)
        {
          goto LABEL_215;
        }
      }

      else
      {
        v188 = *(v10 + 12);
      }

      v189 = *(v10 + 4);
      *(v10 + 12) = v189;
      *v10 = v108;
      *(v10 + 4) = v188;
      *(v10 + 8) = v109;
      v190 = *(a2 - 2);
      if (v190 >= v109 && (v109 < v190 || *(a2 - 1) >= v189))
      {
        return;
      }

      *(v10 + 8) = v190;
      *(a2 - 2) = v109;
      v111 = (v10 + 12);
      goto LABEL_344;
    }

    if (v11 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,0>(v10, v10 + 8, (v10 + 16), a2 - 2);
      return;
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v126 = (v10 + 8);
      v128 = v10 == a2 || v126 == a2;
      if (a4)
      {
        if (v128)
        {
          return;
        }

        v129 = 0;
        v130 = v10;
        while (1)
        {
          v131 = v130;
          v130 = v126;
          v132 = v131[2];
          v133 = *v131;
          if (v132 >= *v131)
          {
            if (v133 < v132)
            {
              goto LABEL_250;
            }

            v134 = v131[3];
            if (v134 >= v131[1])
            {
              goto LABEL_250;
            }
          }

          else
          {
            v134 = v131[3];
          }

          v131[2] = v133;
          v126[1] = v131[1];
          v135 = v10;
          if (v131 == v10)
          {
            goto LABEL_249;
          }

          v136 = v129;
          while (1)
          {
            v137 = *(v10 + v136 - 8);
            if (v132 >= v137)
            {
              break;
            }

            v138 = *(v10 + v136 - 4);
LABEL_243:
            v131 -= 2;
            v139 = (v10 + v136);
            *v139 = v137;
            v139[1] = v138;
            v136 -= 8;
            if (!v136)
            {
              v135 = v10;
              goto LABEL_249;
            }
          }

          if (v137 >= v132)
          {
            break;
          }

          v135 = v131;
LABEL_249:
          *v135 = v132;
          v135[1] = v134;
LABEL_250:
          v126 = v130 + 2;
          v129 += 8;
          if (v130 + 2 == a2)
          {
            return;
          }
        }

        v135 = (v10 + v136);
        v138 = *(v10 + v136 - 4);
        if (v134 >= v138)
        {
          goto LABEL_249;
        }

        goto LABEL_243;
      }

      if (v128)
      {
        return;
      }

      for (i = (v10 + 4); ; i += 2)
      {
        v182 = a1;
        a1 = v126;
        v183 = v182[2];
        v184 = *v182;
        if (v183 < *v182)
        {
          break;
        }

        if (v184 >= v183)
        {
          v185 = v182[3];
          if (v185 < v182[1])
          {
            goto LABEL_320;
          }
        }

LABEL_328:
        v126 += 2;
        if ((a1 + 8) == a2)
        {
          return;
        }
      }

      v185 = v182[3];
LABEL_320:
      for (j = i; ; j -= 2)
      {
        v187 = *j;
        j[1] = v184;
        j[2] = v187;
        v184 = *(j - 3);
        if (v183 >= v184 && (v184 < v183 || v185 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 1) = v183;
      *j = v185;
      goto LABEL_328;
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return;
      }

      v140 = (v11 - 2) >> 1;
      v141 = v140;
      while (1)
      {
        v142 = v141;
        if (v140 >= v141)
        {
          v143 = (2 * v141) | 1;
          v144 = (v10 + 8 * v143);
          if (2 * v142 + 2 < v11)
          {
            v145 = v144[2];
            if (*v144 < v145 || v145 >= *v144 && v144[1] < v144[3])
            {
              v144 += 2;
              v143 = 2 * v142 + 2;
            }
          }

          v146 = (v10 + 8 * v142);
          v147 = *v144;
          v148 = *v146;
          if (*v144 >= *v146)
          {
            if (v148 < v147)
            {
              v149 = v146[1];
LABEL_264:
              *v146 = v147;
              v146[1] = v144[1];
              if (v140 >= v143)
              {
                while (1)
                {
                  v151 = 2 * v143;
                  v143 = (2 * v143) | 1;
                  v150 = (v10 + 8 * v143);
                  v152 = v151 + 2;
                  if (v152 < v11)
                  {
                    v153 = v150[2];
                    if (*v150 < v153 || v153 >= *v150 && v150[1] < v150[3])
                    {
                      v150 += 2;
                      v143 = v152;
                    }
                  }

                  v154 = *v150;
                  if (*v150 < v148 || v148 >= v154 && v150[1] < v149)
                  {
                    break;
                  }

                  *v144 = v154;
                  v144[1] = v150[1];
                  v144 = v150;
                  if (v140 < v143)
                  {
                    goto LABEL_266;
                  }
                }
              }

              v150 = v144;
LABEL_266:
              *v150 = v148;
              v150[1] = v149;
              goto LABEL_267;
            }

            v149 = v146[1];
            if (v144[1] >= v149)
            {
              goto LABEL_264;
            }
          }
        }

LABEL_267:
        v141 = v142 - 1;
        if (!v142)
        {
          while (1)
          {
            v156 = 0;
            v158 = *v10;
            v157 = *(v10 + 4);
            v159 = v10;
            do
            {
              v160 = v159;
              v161 = &v159[2 * v156];
              v159 = v161 + 2;
              v162 = 2 * v156;
              v156 = (2 * v156) | 1;
              v163 = v162 + 2;
              if (v163 < v11)
              {
                v164 = v161[4];
                v165 = v161[2];
                if (v165 < v164 || v164 >= v165 && v161[3] < v161[5])
                {
                  v159 = v161 + 4;
                  v156 = v163;
                }
              }

              *v160 = *v159;
              v160[1] = v159[1];
            }

            while (v156 <= ((v11 - 2) >> 1));
            if (v159 == a2 - 2)
            {
              *v159 = v158;
              *(v159 + 1) = v157;
            }

            else
            {
              *v159 = *(a2 - 2);
              v159[1] = *(a2 - 1);
              *(a2 - 2) = v158;
              *(a2 - 1) = v157;
              v166 = (v159 - v10 + 8) >> 3;
              v167 = v166 - 2;
              if (v166 >= 2)
              {
                v168 = v167 >> 1;
                v169 = (v10 + 8 * (v167 >> 1));
                v170 = *v169;
                v171 = *v159;
                if (*v169 < *v159)
                {
                  v155 = v159[1];
LABEL_293:
                  *v159 = v170;
                  v159[1] = v169[1];
                  if (v167 >= 2)
                  {
                    while (1)
                    {
                      v173 = v168 - 1;
                      v168 = (v168 - 1) >> 1;
                      v172 = (v10 + 8 * v168);
                      v174 = *v172;
                      if (*v172 >= v171)
                      {
                        if (v171 < v174)
                        {
                          break;
                        }

                        v175 = v172[1];
                        if (v175 >= v155)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v175 = v172[1];
                      }

                      *v169 = v174;
                      v169[1] = v175;
                      v169 = (v10 + 8 * v168);
                      if (v173 <= 1)
                      {
                        goto LABEL_300;
                      }
                    }
                  }

                  v172 = v169;
LABEL_300:
                  *v172 = v171;
                  v172[1] = v155;
                  goto LABEL_302;
                }

                if (v171 >= v170)
                {
                  v155 = v159[1];
                  if (v169[1] < v155)
                  {
                    goto LABEL_293;
                  }
                }
              }
            }

LABEL_302:
            a2 -= 2;
            if (v11-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v12 = (v10 + 8 * (v11 >> 1));
    v13 = v12;
    if (v11 >= 0x81)
    {
      v14 = *v12;
      v15 = *v10;
      if (*v12 >= *v10 && (v15 < v14 || v12[1] >= *(v10 + 4)))
      {
        v22 = *v8;
        if (*v8 >= v14 && (v14 < v22 || *(a2 - 1) >= v12[1]) || (*v12 = v22, *(a2 - 2) = v14, v23 = v12 + 1, v24 = *(v12 + 1), v12[1] = *(a2 - 1), *(a2 - 1) = v24, v25 = *v12, v26 = *v10, *v12 >= *v10) && (v26 < v25 || *v23 >= *(v10 + 4)))
        {
LABEL_43:
          v36 = v12 - 2;
          v37 = *(v12 - 2);
          v38 = *(v10 + 8);
          if (v37 >= v38 && (v38 < v37 || *(v12 - 1) >= *(v10 + 12)))
          {
            v41 = *(a2 - 4);
            if (v41 >= v37 && (v37 < v41 || *(a2 - 3) >= *(v12 - 1)) || (*v36 = v41, *(a2 - 4) = v37, v42 = v12 - 1, v43 = *(v12 - 1), *(v12 - 1) = *(a2 - 3), *(a2 - 3) = v43, v44 = *v36, v45 = *(v10 + 8), *v36 >= v45) && (v45 < v44 || *v42 >= *(v10 + 12)))
            {
LABEL_65:
              v53 = v12[2];
              v52 = v12 + 2;
              v54 = v53;
              v55 = *(v10 + 16);
              if (v53 >= v55 && (v55 < v54 || v52[1] >= *(v10 + 20)))
              {
                v58 = *(a2 - 6);
                if (v58 >= v54 && (v54 < v58 || *(a2 - 5) >= v52[1]) || (*v52 = v58, *(a2 - 6) = v54, v59 = v52 + 1, v60 = *(v52 + 1), v52[1] = *(a2 - 5), *(a2 - 5) = v60, v61 = *v52, v62 = *(v10 + 16), *v52 >= v62) && (v62 < v61 || *v59 >= *(v10 + 20)))
                {
LABEL_83:
                  v67 = *v13;
                  v68 = *v36;
                  if (*v13 >= *v36 && (v68 < v67 || v13[1] >= v36[1]))
                  {
                    v72 = *v52;
                    if (*v52 >= v67)
                    {
                      if (v67 < v72)
                      {
                        goto LABEL_102;
                      }

                      v74 = v52[1];
                      v73 = v13[1];
                      if (v74 >= v73)
                      {
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v73 = v13[1];
                      v74 = v52[1];
                    }

                    *v13 = v72;
                    v13[1] = v74;
                    v75 = v13 + 1;
                    *v52 = v67;
                    v52[1] = v73;
                    if (v72 >= v68 && (v68 < v72 || v74 >= v36[1]))
                    {
                      v67 = v72;
                      goto LABEL_102;
                    }

                    *v36 = v72;
                    v70 = (v36 + 1);
                    *v13 = v68;
LABEL_101:
                    v78 = *v70;
                    *v70 = *v75;
                    *v75 = v78;
                    v67 = *v13;
LABEL_102:
                    v79 = *v10;
                    *v10 = v67;
                    v21 = (v10 + 4);
                    *v13 = v79;
                    v28 = v13 + 1;
                    goto LABEL_103;
                  }

                  v69 = *v52;
                  if (*v52 < v67)
                  {
                    goto LABEL_85;
                  }

                  if (v67 >= v69)
                  {
                    v76 = v13[1];
                    if (v52[1] < v76)
                    {
LABEL_85:
                      *v36 = v69;
                      v70 = (v36 + 1);
                      *v52 = v68;
                      v71 = v52 + 1;
LABEL_100:
                      v75 = v71;
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    v76 = v13[1];
                  }

                  *v13 = v68;
                  v77 = v36[1];
                  v13[1] = v77;
                  *v36 = v67;
                  v36[1] = v76;
                  if (v69 >= v68 && (v68 < v69 || v52[1] >= v77))
                  {
                    v67 = v68;
                    goto LABEL_102;
                  }

                  *v13 = v69;
                  *v52 = v68;
                  v71 = v52 + 1;
                  v70 = (v13 + 1);
                  goto LABEL_100;
                }

                *(v10 + 16) = v61;
                *v52 = v62;
                v57 = (v10 + 20);
LABEL_82:
                v66 = *v57;
                *v57 = *v59;
                *v59 = v66;
                goto LABEL_83;
              }

              v56 = *(a2 - 6);
              if (v56 < v54)
              {
                goto LABEL_67;
              }

              if (v54 >= v56)
              {
                v63 = v52[1];
                if (*(a2 - 5) < v63)
                {
LABEL_67:
                  *(v10 + 16) = v56;
                  *(a2 - 6) = v55;
                  v57 = (v10 + 20);
LABEL_81:
                  v59 = a2 - 5;
                  goto LABEL_82;
                }
              }

              else
              {
                v63 = v52[1];
              }

              v64 = *(v10 + 20);
              *(v10 + 16) = v54;
              *(v10 + 20) = v63;
              *v52 = v55;
              v52[1] = v64;
              v57 = (v52 + 1);
              v65 = *(a2 - 6);
              if (v65 >= v55 && (v55 < v65 || *(a2 - 5) >= v64))
              {
                goto LABEL_83;
              }

              *v52 = v65;
              *(a2 - 6) = v55;
              goto LABEL_81;
            }

            *(v10 + 8) = v44;
            *v36 = v45;
            v40 = (v10 + 12);
LABEL_64:
            v51 = *v40;
            *v40 = *v42;
            *v42 = v51;
            goto LABEL_65;
          }

          v39 = *(a2 - 4);
          if (v39 < v37)
          {
            goto LABEL_45;
          }

          if (v37 >= v39)
          {
            v46 = *(v12 - 1);
            if (*(a2 - 3) < v46)
            {
LABEL_45:
              *(v10 + 8) = v39;
              *(a2 - 4) = v38;
              v40 = (v10 + 12);
LABEL_63:
              v42 = a2 - 3;
              goto LABEL_64;
            }
          }

          else
          {
            v46 = *(v12 - 1);
          }

          v49 = *(v10 + 12);
          *(v10 + 8) = v37;
          *(v10 + 12) = v46;
          *v36 = v38;
          *(v12 - 1) = v49;
          v40 = v12 - 1;
          v50 = *(a2 - 4);
          if (v50 >= v38 && (v38 < v50 || *(a2 - 3) >= v49))
          {
            goto LABEL_65;
          }

          *v36 = v50;
          *(a2 - 4) = v38;
          goto LABEL_63;
        }

        *v10 = v25;
        v17 = (v10 + 4);
        *v12 = v26;
LABEL_42:
        v35 = *v17;
        *v17 = *v23;
        *v23 = v35;
        goto LABEL_43;
      }

      v16 = *v8;
      if (*v8 < v14)
      {
        goto LABEL_14;
      }

      if (v14 >= v16)
      {
        v31 = v12[1];
        if (*(a2 - 1) < v31)
        {
LABEL_14:
          *v10 = v16;
          v17 = (v10 + 4);
LABEL_41:
          *v8 = v15;
          v23 = a2 - 1;
          goto LABEL_42;
        }
      }

      else
      {
        v31 = v12[1];
      }

      v33 = *(v10 + 4);
      *v10 = v14;
      *(v10 + 4) = v31;
      *v12 = v15;
      v12[1] = v33;
      v17 = (v12 + 1);
      v34 = *v8;
      if (*v8 >= v15 && (v15 < v34 || *(a2 - 1) >= v33))
      {
        goto LABEL_43;
      }

      *v12 = v34;
      goto LABEL_41;
    }

    v18 = *v10;
    v19 = *v12;
    if (*v10 < *v12 || v19 >= v18 && *(v10 + 4) < v12[1])
    {
      v20 = *v8;
      if (*v8 < v18)
      {
        goto LABEL_17;
      }

      if (v18 >= v20)
      {
        v32 = *(v10 + 4);
        if (*(a2 - 1) >= v32)
        {
          goto LABEL_57;
        }

LABEL_17:
        *v12 = v20;
        *v8 = v19;
        v21 = (v12 + 1);
      }

      else
      {
        v32 = *(v10 + 4);
LABEL_57:
        v47 = v12[1];
        *v12 = v18;
        v12[1] = v32;
        *v10 = v19;
        *(v10 + 4) = v47;
        v21 = (v10 + 4);
        v48 = *v8;
        if (*v8 >= v19 && (v19 < v48 || *(a2 - 1) >= v47))
        {
          v18 = v19;
          goto LABEL_104;
        }

        *v10 = v48;
        *v8 = v19;
      }

      v28 = a2 - 1;
LABEL_103:
      v80 = *v21;
      *v21 = *v28;
      *v28 = v80;
      v18 = *v10;
      goto LABEL_104;
    }

    v27 = *v8;
    if (*v8 < v18 || v18 >= v27 && *(a2 - 1) < *(v10 + 4))
    {
      *v10 = v27;
      *(a2 - 2) = v18;
      v28 = (v10 + 4);
      v29 = *(v10 + 4);
      *(v10 + 4) = *(a2 - 1);
      *(a2 - 1) = v29;
      v18 = *v10;
      v30 = *v12;
      if (*v10 < *v12 || v30 >= v18 && *v28 < v12[1])
      {
        *v12 = v18;
        *v10 = v30;
        v21 = (v12 + 1);
        goto LABEL_103;
      }
    }

LABEL_104:
    --a3;
    if (a4)
    {
      goto LABEL_108;
    }

    v81 = *(v10 - 8);
    if (v81 < v18)
    {
      goto LABEL_108;
    }

    if (v18 < v81)
    {
      v82 = *(v10 + 4);
      goto LABEL_177;
    }

    v82 = *(v10 + 4);
    if (*(v10 - 4) >= v82)
    {
LABEL_177:
      v98 = *v8;
      if (v18 < *v8 || v98 >= v18 && v82 < *(a2 - 1))
      {
        do
        {
          v99 = *(v10 + 8);
          v10 += 8;
          v100 = v99;
        }

        while (v18 >= v99 && (v100 < v18 || v82 >= *(v10 + 4)));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (v10 < a2)
      {
        for (k = a2 - 2; v18 < v98 || v98 >= v18 && v82 < k[1]; k -= 2)
        {
          v102 = *(k - 2);
          v98 = v102;
        }
      }

      if (v10 < k)
      {
        v103 = *v10;
        v104 = *k;
        do
        {
          *v10 = v104;
          *k = v103;
          v105 = *(v10 + 4);
          *(v10 + 4) = k[1];
          *(k + 1) = v105;
          do
          {
            v106 = *(v10 + 8);
            v10 += 8;
            v103 = v106;
          }

          while (v18 >= v106 && (v103 < v18 || v82 >= *(v10 + 4)));
          do
          {
            do
            {
              v107 = *(k - 2);
              k -= 2;
              v104 = v107;
            }

            while (v18 < v107);
          }

          while (v104 >= v18 && v82 < k[1]);
        }

        while (v10 < k);
      }

      if (v10 - 8 != a1)
      {
        *a1 = *(v10 - 8);
        *(a1 + 4) = *(v10 - 4);
      }

      a4 = 0;
      *(v10 - 8) = v18;
      *(v10 - 4) = v82;
    }

    else
    {
LABEL_108:
      v83 = 0;
      v84 = *(v10 + 4);
      while (1)
      {
        v85 = *(v10 + v83 + 8);
        if (v85 >= v18 && (v18 < v85 || *(v10 + v83 + 12) >= v84))
        {
          break;
        }

        v83 += 8;
      }

      v86 = v10 + v83 + 8;
      if (v83)
      {
        v87 = *v8;
        v88 = a2 - 2;
        if (*v8 >= v18)
        {
          do
          {
            if (v18 >= v87 && v88[1] < v84)
            {
              break;
            }

            v89 = *(v88 - 2);
            v88 -= 2;
            v87 = v89;
          }

          while (v89 >= v18);
        }
      }

      else
      {
        v88 = a2;
        if (v86 < a2)
        {
          v90 = *v8;
          v88 = a2 - 2;
          if (*v8 >= v18)
          {
            v88 = a2 - 2;
            do
            {
              if (v18 >= v90)
              {
                if (v86 >= v88 || v88[1] < v84)
                {
                  break;
                }
              }

              else if (v86 >= v88)
              {
                break;
              }

              v91 = *(v88 - 2);
              v88 -= 2;
              v90 = v91;
            }

            while (v91 >= v18);
          }
        }
      }

      if (v86 >= v88)
      {
        v10 = v86;
      }

      else
      {
        v92 = *v88;
        v10 = v86;
        v93 = v88;
        do
        {
          *v10 = v92;
          *v93 = v85;
          v94 = *(v10 + 4);
          *(v10 + 4) = v93[1];
          *(v93 + 1) = v94;
          do
          {
            do
            {
              v95 = *(v10 + 8);
              v10 += 8;
              v85 = v95;
            }

            while (v95 < v18);
          }

          while (v18 >= v85 && *(v10 + 4) < v84);
          do
          {
            v96 = *(v93 - 2);
            v93 -= 2;
            v92 = v96;
          }

          while (v96 >= v18 && (v18 < v92 || v93[1] >= v84));
        }

        while (v10 < v93);
      }

      if (v10 - 8 != a1)
      {
        *a1 = *(v10 - 8);
        *(a1 + 4) = *(v10 - 4);
      }

      *(v10 - 8) = v18;
      *(v10 - 4) = v84;
      if (v86 < v88)
      {
LABEL_145:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,false>(a1, v10 - 8, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v97 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *>(a1, (v10 - 8));
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *>(v10, a2))
        {
          a2 = (v10 - 8);
          if (v97)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v97)
        {
          goto LABEL_145;
        }
      }
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,0>(v10, v10 + 8, (v10 + 16), (v10 + 24));
  v115 = *(a2 - 2);
  v116 = *(v10 + 24);
  if (v115 < v116 || v116 >= v115 && *(a2 - 1) < *(v10 + 28))
  {
    *(v10 + 24) = v115;
    *(a2 - 2) = v116;
    v117 = *(v10 + 28);
    *(v10 + 28) = *(a2 - 1);
    *(a2 - 1) = v117;
    v118 = *(v10 + 24);
    v119 = *(v10 + 16);
    if (v118 >= v119)
    {
      if (v119 < v118)
      {
        return;
      }

      v121 = *(v10 + 28);
      v120 = *(v10 + 20);
      if (v121 >= v120)
      {
        return;
      }
    }

    else
    {
      v120 = *(v10 + 20);
      v121 = *(v10 + 28);
    }

    *(v10 + 16) = v118;
    *(v10 + 20) = v121;
    *(v10 + 24) = v119;
    *(v10 + 28) = v120;
    v122 = *(v10 + 8);
    if (v118 >= v122)
    {
      if (v122 < v118)
      {
        return;
      }

      v123 = *(v10 + 12);
      if (v121 >= v123)
      {
        return;
      }
    }

    else
    {
      v123 = *(v10 + 12);
    }

    *(v10 + 8) = v118;
    *(v10 + 12) = v121;
    *(v10 + 16) = v122;
    *(v10 + 20) = v123;
    v124 = *v10;
    if (v118 >= *v10)
    {
      if (v124 < v118)
      {
        return;
      }

      v125 = *(v10 + 4);
      if (v121 >= v125)
      {
        return;
      }
    }

    else
    {
      v125 = *(v10 + 4);
    }

    *v10 = v118;
    *(v10 + 4) = v121;
    *(v10 + 8) = v124;
    *(v10 + 12) = v125;
  }
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,0>(float *a1, uint64_t a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = *a1;
  if (*a2 < *a1 || v5 >= v4 && *(a2 + 4) < a1[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < *(a2 + 4))
    {
      *a1 = v6;
      v7 = (a1 + 1);
      *a3 = v5;
      v8 = (a3 + 1);
    }

    else
    {
      *a1 = v4;
      *a2 = v5;
      v7 = (a2 + 4);
      v13 = a1[1];
      a1[1] = *(a2 + 4);
      *(a2 + 4) = v13;
      v14 = *a3;
      v15 = *a2;
      if (*a3 >= *a2 && (v15 < v14 || a3[1] >= v13))
      {
        goto LABEL_14;
      }

      *a2 = v14;
      *a3 = v15;
      v8 = (a3 + 1);
    }

    goto LABEL_13;
  }

  v9 = *a3;
  if (*a3 < v4 || v4 >= v9 && a3[1] < *(a2 + 4))
  {
    *a2 = v9;
    *a3 = v4;
    v8 = (a2 + 4);
    v10 = *(a2 + 4);
    *(a2 + 4) = a3[1];
    *(a3 + 1) = v10;
    v11 = *a2;
    v12 = *a1;
    if (*a2 < *a1 || v12 >= v11 && *v8 < a1[1])
    {
      *a1 = v11;
      v7 = (a1 + 1);
      *a2 = v12;
LABEL_13:
      v16 = *v7;
      *v7 = *v8;
      *v8 = v16;
    }
  }

LABEL_14:
  result = *a4;
  v18 = *a3;
  if (*a4 < *a3 || v18 >= result && a4[1] < a3[1])
  {
    *a3 = result;
    *a4 = v18;
    v19 = *(a3 + 1);
    a3[1] = a4[1];
    *(a4 + 1) = v19;
    result = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= result && a3[1] < *(a2 + 4))
    {
      *a2 = result;
      *a3 = v20;
      v21 = *(a2 + 4);
      *(a2 + 4) = a3[1];
      *(a3 + 1) = v21;
      result = *a2;
      v22 = *a1;
      if (*a2 < *a1 || v22 >= result && *(a2 + 4) < a1[1])
      {
        *a1 = result;
        *a2 = v22;
        result = a1[1];
        a1[1] = *(a2 + 4);
        *(a2 + 4) = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *>(float *a1, float *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,0>(a1, (a1 + 2), a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,float> *,0>(a1, (a1 + 2), a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = *(a1 + 7);
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = *(a1 + 3);
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = (a1 + 1);
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = (a1 + 1);
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = (a1 + 3);
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = *(a1 + 1);
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (*v45 >= *v25)
    {
      if (v49 < v48)
      {
        goto LABEL_82;
      }

      v50 = v45[1];
      if (v50 >= v25[1])
      {
        goto LABEL_82;
      }
    }

    else
    {
      v50 = v45[1];
    }

    *v45 = v49;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = (a1 + v51);
      v53 = *(a1 + v51 + 8);
      if (v48 >= v53)
      {
        break;
      }

      v54 = v52[3];
LABEL_75:
      v25 -= 2;
      v52[4] = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v25 = a1;
        goto LABEL_81;
      }
    }

    if (v53 >= v48)
    {
      v54 = *(a1 + v51 + 12);
      if (v50 >= v54)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    v25 = (a1 + v51 + 16);
LABEL_81:
    *v25 = v48;
    v25[1] = v50;
    if (++v47 != 8)
    {
LABEL_82:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,false>(uint64_t result, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v185 = a2 - 16;
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = (a2 - v10) >> 4;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v10, v10 + 16, v185, a3);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v10, v10 + 16, v10 + 32, v185, a3);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v10, v10 + 16, v10 + 32, v10 + 48, v185, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v80 = *(a2 - 16);
              [*(*a3 + 8 * *(a2 - 8)) area];
              v81 = *v10;
              v83 = v80 / v82;
              result = [*(*a3 + 8 * *(v10 + 8)) area];
              if (v83 < v81 / v84)
              {
                v85 = *v10;
                *v10 = *(a2 - 16);
                *(a2 - 16) = v85;
                v86 = *(v10 + 8);
                *(v10 + 8) = *(a2 - 8);
                *(a2 - 8) = v86;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v87 = (v10 + 16);
            v89 = v10 == a2 || v87 == a2;
            if (a5)
            {
              if (!v89)
              {
                v90 = 0;
                v91 = v10;
                do
                {
                  v92 = v87;
                  v93 = *(v91 + 16);
                  [*(*a3 + 8 * *(v91 + 24)) area];
                  v94 = *v91;
                  v96 = v93 / v95;
                  result = [*(*a3 + 8 * *(v91 + 8)) area];
                  if (v96 < v94 / v97)
                  {
                    v98 = *v92;
                    v99 = *(v91 + 24);
                    v100 = v90;
                    while (1)
                    {
                      v101 = v10 + v100;
                      *(v101 + 16) = *(v10 + v100);
                      *(v101 + 24) = *(v10 + v100 + 8);
                      if (!v100)
                      {
                        break;
                      }

                      [*(*a3 + 8 * v99) area];
                      v102 = *(v101 - 16);
                      v104 = v98 / v103;
                      result = [*(*a3 + 8 * *(v101 - 8)) area];
                      v100 -= 16;
                      if (v104 >= v102 / v105)
                      {
                        v106 = v10 + v100 + 16;
                        goto LABEL_83;
                      }
                    }

                    v106 = v10;
LABEL_83:
                    *v106 = v98;
                    *(v106 + 8) = v99;
                  }

                  v87 = v92 + 2;
                  v90 += 16;
                  v91 = v92;
                }

                while (v92 + 2 != a2);
              }
            }

            else if (!v89)
            {
              v168 = (v10 + 24);
              do
              {
                v169 = v87;
                v170 = *(v9 + 16);
                [*(*a3 + 8 * *(v9 + 24)) area];
                v171 = *v9;
                v173 = v170 / v172;
                result = [*(*a3 + 8 * *(v9 + 8)) area];
                if (v173 < v171 / v174)
                {
                  v175 = *v169;
                  v176 = *(v9 + 24);
                  v177 = v168;
                  do
                  {
                    v178 = v177;
                    *(v177 - 1) = *(v177 - 3);
                    v179 = *(v177 - 4);
                    v177 -= 2;
                    *v178 = v179;
                    [*(*a3 + 8 * v176) area];
                    v180 = *(v178 - 5);
                    v182 = v175 / v181;
                    result = [*(*a3 + 8 * *(v178 - 8)) area];
                  }

                  while (v182 < v180 / v183);
                  *(v177 - 1) = v175;
                  *v177 = v176;
                }

                v87 = v169 + 2;
                v168 += 2;
                v9 = v169;
              }

              while (v169 + 2 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v107 = (v11 - 2) >> 1;
              v186 = v107;
              v184 = a2;
              do
              {
                v108 = v107;
                if (v186 >= v107)
                {
                  v109 = (2 * v107) | 1;
                  v110 = v9 + 16 * v109;
                  if (2 * v107 + 2 < v11)
                  {
                    v111 = *v110;
                    [*(*a3 + 8 * *(v110 + 8)) area];
                    v112 = *(v110 + 16);
                    v114 = v111 / v113;
                    [*(*a3 + 8 * *(v110 + 24)) area];
                    if (v114 < v112 / v115)
                    {
                      v110 += 16;
                      v109 = 2 * v108 + 2;
                    }
                  }

                  v116 = v9 + 16 * v108;
                  v117 = *v110;
                  [*(*a3 + 8 * *(v110 + 8)) area];
                  v118 = *v116;
                  v120 = v117 / v119;
                  result = [*(*a3 + 8 * *(v116 + 8)) area];
                  a2 = v184;
                  if (v120 >= v118 / v121)
                  {
                    v122 = *v116;
                    v123 = *(v116 + 8);
                    do
                    {
                      v124 = v116;
                      v116 = v110;
                      *v124 = *v110;
                      *(v124 + 8) = *(v110 + 8);
                      if (v186 < v109)
                      {
                        break;
                      }

                      v125 = 2 * v109;
                      v109 = (2 * v109) | 1;
                      v110 = v9 + 16 * v109;
                      v126 = v125 + 2;
                      if (v125 + 2 < v11)
                      {
                        v127 = *v110;
                        [*(*a3 + 8 * *(v110 + 8)) area];
                        v128 = *(v110 + 16);
                        v130 = v127 / v129;
                        [*(*a3 + 8 * *(v110 + 24)) area];
                        if (v130 < v128 / v131)
                        {
                          v110 += 16;
                          v109 = v126;
                        }
                      }

                      v132 = *v110;
                      [*(*a3 + 8 * *(v110 + 8)) area];
                      v134 = v132 / v133;
                      result = [*(*a3 + 8 * v123) area];
                    }

                    while (v134 >= v122 / v135);
                    *v116 = v122;
                    *(v116 + 8) = v123;
                    a2 = v184;
                  }
                }

                v107 = v108 - 1;
              }

              while (v108);
              do
              {
                v136 = a2;
                v137 = 0;
                v138 = *v9;
                v187 = *(v9 + 8);
                v139 = v9;
                do
                {
                  v140 = v139;
                  v141 = v139 + 16 * v137;
                  v139 = v141 + 16;
                  v142 = 2 * v137;
                  v137 = (2 * v137) | 1;
                  v143 = v142 + 2;
                  if (v142 + 2 < v11)
                  {
                    v144 = *(v141 + 16);
                    [*(*a3 + 8 * *(v141 + 24)) area];
                    v146 = *(v141 + 32);
                    v145 = v141 + 32;
                    v148 = v144 / v147;
                    result = [*(*a3 + 8 * *(v145 + 8)) area];
                    if (v148 < v146 / v149)
                    {
                      v139 = v145;
                      v137 = v143;
                    }
                  }

                  *v140 = *v139;
                  *(v140 + 8) = *(v139 + 8);
                }

                while (v137 <= ((v11 - 2) >> 1));
                v150 = v136 - 16;
                if (v139 == v136 - 16)
                {
                  *v139 = v138;
                  *(v139 + 8) = v187;
                }

                else
                {
                  *v139 = *(v136 - 16);
                  *(v139 + 8) = *(v136 - 8);
                  *(v136 - 16) = v138;
                  *(v136 - 8) = v187;
                  v151 = (v139 - v9 + 16) >> 4;
                  v152 = v151 < 2;
                  v153 = v151 - 2;
                  if (!v152)
                  {
                    v154 = v153 >> 1;
                    v155 = v9 + 16 * (v153 >> 1);
                    v156 = *v155;
                    [*(*a3 + 8 * *(v155 + 8)) area];
                    v157 = *v139;
                    v159 = v156 / v158;
                    result = [*(*a3 + 8 * *(v139 + 8)) area];
                    if (v159 < v157 / v160)
                    {
                      v161 = *v139;
                      v162 = *(v139 + 8);
                      do
                      {
                        v163 = v139;
                        v139 = v155;
                        *v163 = *v155;
                        *(v163 + 8) = *(v155 + 8);
                        if (!v154)
                        {
                          break;
                        }

                        v154 = (v154 - 1) >> 1;
                        v155 = v9 + 16 * v154;
                        v164 = *v155;
                        [*(*a3 + 8 * *(v155 + 8)) area];
                        v166 = v164 / v165;
                        result = [*(*a3 + 8 * v162) area];
                      }

                      while (v166 < v161 / v167);
                      *v139 = v161;
                      *(v139 + 8) = v162;
                    }
                  }
                }

                a2 = v150;
                v152 = v11-- <= 2;
              }

              while (!v152);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = v10 + 16 * (v11 >> 1);
          if (v11 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v9 + 16 * (v11 >> 1), v9, v185, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v9, v9 + 16 * (v11 >> 1), v185, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v9 + 16, v13 - 16, a2 - 32, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v9 + 32, v9 + 16 + 16 * v12, a2 - 48, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(v13 - 16, v9 + 16 * (v11 >> 1), v9 + 16 + 16 * v12, a3);
            v14 = *v9;
            *v9 = *v13;
            *v13 = v14;
            v15 = *(v9 + 8);
            *(v9 + 8) = *(v13 + 8);
            *(v13 + 8) = v15;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v16 = *(v9 - 16);
          [*(*a3 + 8 * *(v9 - 8)) area];
          v17 = *v9;
          v19 = v16 / v18;
          [*(*a3 + 8 * *(v9 + 8)) area];
          if (v19 < v17 / v20)
          {
            break;
          }

          v50 = *v9;
          v51 = *(v9 + 8);
          [*(*a3 + 8 * v51) area];
          v52 = *(a2 - 16);
          v54 = v50 / v53;
          result = [*(*a3 + 8 * *(a2 - 8)) area];
          if (v54 >= v52 / v55)
          {
            v60 = v9 + 16;
            do
            {
              v10 = v60;
              if (v60 >= a2)
              {
                break;
              }

              [*(*a3 + 8 * v51) area];
              v61 = *v10;
              v63 = v50 / v62;
              result = [*(*a3 + 8 * *(v10 + 8)) area];
              v60 = v10 + 16;
            }

            while (v63 >= v61 / v64);
          }

          else
          {
            v10 = v9;
            do
            {
              [*(*a3 + 8 * v51) area];
              v56 = *(v10 + 16);
              v10 += 16;
              v58 = v50 / v57;
              result = [*(*a3 + 8 * *(v10 + 8)) area];
            }

            while (v58 >= v56 / v59);
          }

          v65 = a2;
          if (v10 < a2)
          {
            v65 = a2;
            do
            {
              [*(*a3 + 8 * v51) area];
              v66 = *(v65 - 16);
              v65 -= 16;
              v68 = v50 / v67;
              result = [*(*a3 + 8 * *(v65 + 8)) area];
            }

            while (v68 < v66 / v69);
          }

          while (v10 < v65)
          {
            v70 = *v10;
            *v10 = *v65;
            *v65 = v70;
            v71 = *(v10 + 8);
            *(v10 + 8) = *(v65 + 8);
            *(v65 + 8) = v71;
            do
            {
              [*(*a3 + 8 * v51) area];
              v72 = *(v10 + 16);
              v10 += 16;
              v74 = v50 / v73;
              [*(*a3 + 8 * *(v10 + 8)) area];
            }

            while (v74 >= v72 / v75);
            do
            {
              [*(*a3 + 8 * v51) area];
              v76 = *(v65 - 16);
              v65 -= 16;
              v78 = v50 / v77;
              result = [*(*a3 + 8 * *(v65 + 8)) area];
            }

            while (v78 < v76 / v79);
          }

          if (v10 - 16 != v9)
          {
            *v9 = *(v10 - 16);
            *(v9 + 8) = *(v10 - 8);
          }

          a5 = 0;
          *(v10 - 16) = v50;
          *(v10 - 8) = v51;
        }

        v21 = 0;
        v22 = *v9;
        v23 = *(v9 + 8);
        do
        {
          v24 = *(v9 + v21 + 16);
          [*(*a3 + 8 * *(v9 + v21 + 24)) area];
          v26 = v24 / v25;
          [*(*a3 + 8 * v23) area];
          v21 += 16;
        }

        while (v26 < v22 / v27);
        v28 = v9 + v21;
        v29 = a2;
        if (v21 == 16)
        {
          v29 = a2;
          do
          {
            if (v28 >= v29)
            {
              break;
            }

            v34 = *(v29 - 16);
            v29 -= 16;
            [*(*a3 + 8 * *(v29 + 8)) area];
            v36 = v34 / v35;
            [*(*a3 + 8 * v23) area];
          }

          while (v36 >= v22 / v37);
        }

        else
        {
          do
          {
            v30 = *(v29 - 16);
            v29 -= 16;
            [*(*a3 + 8 * *(v29 + 8)) area];
            v32 = v30 / v31;
            [*(*a3 + 8 * v23) area];
          }

          while (v32 >= v22 / v33);
        }

        v10 = v9 + v21;
        if (v28 < v29)
        {
          v38 = v29;
          do
          {
            v39 = *v10;
            *v10 = *v38;
            *v38 = v39;
            v40 = *(v10 + 8);
            *(v10 + 8) = *(v38 + 8);
            *(v38 + 8) = v40;
            do
            {
              v41 = *(v10 + 16);
              v10 += 16;
              [*(*a3 + 8 * *(v10 + 8)) area];
              v43 = v41 / v42;
              [*(*a3 + 8 * v23) area];
            }

            while (v43 < v22 / v44);
            do
            {
              v45 = *(v38 - 16);
              v38 -= 16;
              [*(*a3 + 8 * *(v38 + 8)) area];
              v47 = v45 / v46;
              [*(*a3 + 8 * v23) area];
            }

            while (v47 >= v22 / v48);
          }

          while (v10 < v38);
        }

        if (v10 - 16 != v9)
        {
          *v9 = *(v10 - 16);
          *(v9 + 8) = *(v10 - 8);
        }

        *(v10 - 16) = v22;
        *(v10 - 8) = v23;
        if (v28 >= v29)
        {
          break;
        }

LABEL_36:
        result = std::__introsort<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,false>(v9, v10 - 16, a3, a4, a5 & 1);
        a5 = 0;
      }

      v49 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*>(v9, v10 - 16, a3);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*>(v10, a2, a3);
      if (result)
      {
        break;
      }

      if (!v49)
      {
        goto LABEL_36;
      }
    }

    a2 = v10 - 16;
    if (!v49)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a2;
  v9 = (a2 + 8);
  [*(*a4 + 8 * *(a2 + 8)) area];
  v10 = *a1;
  v11 = (a1 + 8);
  v13 = v8 / v12;
  [*(*a4 + 8 * *(a1 + 8)) area];
  v14 = *a3;
  v16 = v10 / v15;
  [*(*a4 + 8 * *(a3 + 8)) area];
  v17 = *a2;
  v19 = v14 / v18;
  result = [*(*a4 + 8 * *v9) area];
  v22 = v17 / v21;
  if (v13 < v16)
  {
    v23 = *a1;
    if (v19 >= v22)
    {
      *a1 = *a2;
      *a2 = v23;
      v32 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v32;
      v33 = *a3;
      [*(*a4 + 8 * *(a3 + 8)) area];
      v34 = *a2;
      v36 = v33 / v35;
      result = [*(*a4 + 8 * *(a2 + 8)) area];
      if (v36 >= v34 / v37)
      {
        return result;
      }

      v38 = *a2;
      *a2 = *a3;
      *a3 = v38;
      v11 = v9;
    }

    else
    {
      *a1 = *a3;
      *a3 = v23;
    }

    v9 = (a3 + 8);
    goto LABEL_10;
  }

  if (v19 < v22)
  {
    v24 = *a2;
    *a2 = *a3;
    *a3 = v24;
    v25 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v25;
    v26 = *a2;
    [*(*a4 + 8 * *(a2 + 8)) area];
    v27 = *a1;
    v29 = v26 / v28;
    result = [*(*a4 + 8 * *(a1 + 8)) area];
    if (v29 < v27 / v30)
    {
      v31 = *a1;
      *a1 = *a2;
      *a2 = v31;
LABEL_10:
      v39 = *v11;
      *v11 = *v9;
      *v9 = v39;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(a1, a2, a3, a5);
  v10 = *a4;
  [*(*a5 + 8 * *(a4 + 8)) area];
  v11 = *a3;
  v13 = v10 / v12;
  result = [*(*a5 + 8 * *(a3 + 8)) area];
  if (v13 < v11 / v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v17;
    v18 = *a3;
    [*(*a5 + 8 * *(a3 + 8)) area];
    v19 = *a2;
    v21 = v18 / v20;
    result = [*(*a5 + 8 * *(a2 + 8)) area];
    if (v21 < v19 / v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v24;
      v25 = *a2;
      [*(*a5 + 8 * *(a2 + 8)) area];
      v26 = *a1;
      v28 = v25 / v27;
      result = [*(*a5 + 8 * *(a1 + 8)) area];
      if (v28 < v26 / v29)
      {
        v30 = *a1;
        *a1 = *a2;
        *a2 = v30;
        v31 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v31;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  [*(*a6 + 8 * *(a5 + 8)) area];
  v13 = *a4;
  v15 = v12 / v14;
  result = [*(*a6 + 8 * *(a4 + 8)) area];
  if (v15 < v13 / v17)
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    v19 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v19;
    v20 = *a4;
    [*(*a6 + 8 * *(a4 + 8)) area];
    v21 = *a3;
    v23 = v20 / v22;
    result = [*(*a6 + 8 * *(a3 + 8)) area];
    if (v23 < v21 / v24)
    {
      v25 = *a3;
      *a3 = *a4;
      *a4 = v25;
      v26 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v26;
      v27 = *a3;
      [*(*a6 + 8 * *(a3 + 8)) area];
      v28 = *a2;
      v30 = v27 / v29;
      result = [*(*a6 + 8 * *(a2 + 8)) area];
      if (v30 < v28 / v31)
      {
        v32 = *a2;
        *a2 = *a3;
        *a3 = v32;
        v33 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v33;
        v34 = *a2;
        [*(*a6 + 8 * *(a2 + 8)) area];
        v35 = *a1;
        v37 = v34 / v36;
        result = [*(*a6 + 8 * *(a1 + 8)) area];
        if (v37 < v35 / v38)
        {
          v39 = *a1;
          *a1 = *a2;
          *a2 = v39;
          v40 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v40;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 16);
        [*(*a3 + 8 * *(a2 - 8)) area];
        v8 = *a1;
        v10 = v7 / v9;
        [*(*a3 + 8 * *(a1 + 8)) area];
        if (v10 < v8 / v11)
        {
          v12 = *a1;
          *a1 = *(a2 - 16);
          *(a2 - 16) = v12;
          v13 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v13;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(a1, a1 + 16, a2 - 16, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32, a2 - 16, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16, a3);
      return 1;
  }

LABEL_11:
  v14 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,tableRegionNMS(std::vector<std::pair<double,int>>,std::vector<CRNormalizedQuad * {__strong}> const&)::$_0 &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32, a3);
  v15 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    [*(*a3 + 8 * *(v15 + 8)) area];
    v19 = *v14;
    v21 = v18 / v20;
    [*(*a3 + 8 * *(v14 + 8)) area];
    if (v21 < v19 / v22)
    {
      v23 = *v15;
      v24 = *(v15 + 8);
      v25 = v16;
      while (1)
      {
        v26 = a1 + v25;
        *(v26 + 48) = *(a1 + v25 + 32);
        *(v26 + 56) = *(a1 + v25 + 40);
        if (v25 == -32)
        {
          break;
        }

        [*(*a3 + 8 * v24) area];
        v27 = *(v26 + 16);
        v29 = v23 / v28;
        [*(*a3 + 8 * *(v26 + 24)) area];
        v25 -= 16;
        if (v29 >= v27 / v30)
        {
          v31 = a1 + v25 + 48;
          goto LABEL_19;
        }
      }

      v31 = a1;
LABEL_19:
      *v31 = v23;
      *(v31 + 8) = v24;
      if (++v17 == 8)
      {
        return v15 + 16 == a2;
      }
    }

    v14 = v15;
    v16 += 16;
    v15 += 16;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

void std::vector<CRNormalizedQuad * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<CRNormalizedQuad * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B428297C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::pair<float,float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<CRDetectorUtils::CRTextDetectorQuad>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 144;
    v4 = *(v2 - 80);
    if (v4)
    {
      *(v2 - 72) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 144;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<std::list<int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::list<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::list<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::list<int>>>(a1, a2);
  }

  std::vector<std::pair<float,float>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::list<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::list<int>>::__vdeallocate(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        std::__list_imp<unsigned long>::clear(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void cv::SmartPtr::release(cv::SmartPtr *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      if (*(this + 1))
      {
        free(*(this + 1));
        *(this + 1) = 0;
        v2 = *(this + 2);
      }

      free(v2);
      *(this + 2) = 0;
    }
  }
}

void cv::SmartPtr::~SmartPtr(cv::SmartPtr *this)
{
  *this = &unk_1F2BAF728;
  cv::SmartPtr::release(this);
}

{
  *this = &unk_1F2BAF728;
  cv::SmartPtr::release(this);

  JUMPOUT(0x1B8C73EF0);
}

void cv::SmartPtr::operator=(cv::SmartPtr *this@<X0>, cv::SmartPtr *a2@<X1>, void *a3@<X8>)
{
  if (this == a2)
  {
    v6 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    cv::SmartPtr::release(this);
    v6 = *(a2 + 1);
    v7 = *(a2 + 2);
    *(this + 1) = v6;
    *(this + 2) = v7;
    if (v7)
    {
      ++*v7;
    }
  }

  *a3 = &unk_1F2BAF728;
  a3[1] = v6;
  a3[2] = v7;
  if (v7)
  {
    ++*v7;
  }
}

void correctHistogram(unsigned __int8 **a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] * a1[2];
  bzero(v17, 0x400uLL);
  if (v4 >= 1)
  {
    v5 = v4 & 0x7FFFFFFF;
    v6 = v2;
    do
    {
      v7 = *v6++;
      ++v17[v7];
      --v5;
    }

    while (v5);
  }

  v8 = 257;
  v9 = v17;
  do
  {
    v10 = *v9++;
    --v8;
  }

  while (!v10);
  v11 = 255;
  v12 = v8;
  do
  {
    v13 = v17[v11];
    --v12;
    --v11;
  }

  while (!v13);
  if (v4 >= 1)
  {
    v14 = 255.0 / v12;
    v15 = v4 & 0x7FFFFFFF;
    do
    {
      v16 = *v2++;
      *v3++ = (v14 * (v8 + v16 - 256));
      --v15;
    }

    while (v15);
  }
}

double houghTransformGlobalAngle(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v8 = 0;
  v103 = *MEMORY[0x1E69E9840];
  v9 = xmmword_1B42B0040;
  v87 = vdupq_n_s64(0x4066800000000000uLL);
  v88 = vdupq_n_s64(0x400921FB54442D18uLL);
  do
  {
    v92 = v9;
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    v11 = vcvtq_f64_u64(v10);
    v10.i64[0] = v92.u32[2];
    v10.i64[1] = v92.u32[3];
    v91 = vdivq_f64(vmulq_f64(v11, v88), v87);
    v90 = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v10), v88), v87);
    v12 = __sincos_stret(v90.f64[1]);
    v14 = __sincos_stret(v90.f64[0]);
    v13.f64[0] = v14.__cosval;
    v13.f64[1] = v12.__cosval;
    v89 = v13;
    v15 = __sincos_stret(v91.f64[1]);
    v18 = __sincos_stret(v91.f64[0]);
    v17.f64[0] = v18.__cosval;
    v16.f64[0] = v18.__sinval;
    v17.f64[1] = v15.__cosval;
    *&v102[v8] = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v89);
    v19.f64[0] = v14.__sinval;
    v19.f64[1] = v12.__sinval;
    v16.f64[1] = v15.__sinval;
    *&v102[v8 + 1440] = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v19);
    *&v17.f64[0] = 0x400000004;
    *&v17.f64[1] = 0x400000004;
    v9 = vaddq_s32(v92, v17);
    v8 += 16;
  }

  while (v8 != 1440);
  v20 = sqrt((a2 * a2 + a3 * a3));
  __src = 0;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v97 = 0;
  v98 = 0;
  if (v20 >= 1)
  {
    std::vector<int>::vector[abi:ne200100](&v94, (360 * v20));
    if (a3 * a2)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (*(a1 + v21))
        {
          v23 = 0;
          v24 = v94;
          do
          {
            v25 = ((*&v102[v23 + 1440] * (v21 / a2)) + ((v21 % a2) * *&v102[v23]));
            if (v25 >= 1 && v25 < v20)
            {
              v27 = &v24[1440 * v25];
              v28 = *&v27[v23];
              *&v27[v23] = v28 + 1;
              if (v28 + 1 > v22)
              {
                v22 = v28 + 1;
              }
            }

            v23 += 4;
          }

          while (v23 != 1440);
        }

        ++v21;
      }

      while (v21 != a3 * a2);
      v29 = vcvtd_n_f64_u32(v22, 1uLL);
    }

    else
    {
      v29 = 0.0;
    }

    if (v20 >= 10)
    {
      v30 = 0;
      v31 = 8;
      v32 = 4;
      do
      {
        v33 = 0;
        v34 = 1440 * v32;
        v93 = v32;
        v35 = v32 + 4;
        do
        {
          if (v33 <= 4)
          {
            v36 = 4;
          }

          else
          {
            v36 = v33;
          }

          v37 = *(v94 + 4 * v33 + v34);
          if (v29 < v37)
          {
            v38 = v36 - 4;
            v39 = v36 - 4;
            if (v33 >= 0x163)
            {
              v40 = 355;
            }

            else
            {
              v40 = v33;
            }

            v41 = (v40 + 5);
            v42 = 1;
            v43 = v30;
            do
            {
              if (v43 <= v31)
              {
                v44 = v31;
              }

              else
              {
                v44 = v43;
              }

              v45 = v94 + 1440 * v43;
              while (1)
              {
                v46 = v38;
                if (v39 < v41)
                {
                  break;
                }

LABEL_37:
                v45 += 1440;
                if (v43++ == v44)
                {
                  if (v42)
                  {
                    v49 = v100;
                    if (v100 >= v101)
                    {
                      v51 = __src;
                      v52 = v100 - __src;
                      v53 = (v100 - __src) >> 3;
                      v54 = v53 + 1;
                      if ((v53 + 1) >> 61)
                      {
                        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                      }

                      v55 = v101 - __src;
                      if ((v101 - __src) >> 2 > v54)
                      {
                        v54 = v55 >> 2;
                      }

                      v48 = v55 >= 0x7FFFFFFFFFFFFFF8;
                      v56 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!v48)
                      {
                        v56 = v54;
                      }

                      if (v56)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v56);
                      }

                      *(8 * v53) = v37;
                      v50 = 8 * v53 + 8;
                      memcpy(0, v51, v52);
                      v57 = __src;
                      __src = 0;
                      v100 = v50;
                      v101 = 0;
                      if (v57)
                      {
                        operator delete(v57);
                      }
                    }

                    else
                    {
                      *v100 = v37;
                      v50 = (v49 + 8);
                    }

                    v100 = v50;
                    v58 = v33 - 180;
                    if (v33 < 0xB5)
                    {
                      v58 = v33;
                    }

                    v59 = v58;
                    v60 = v97;
                    if (v97 >= v98)
                    {
                      v62 = __p;
                      v63 = v97 - __p;
                      v64 = (v97 - __p) >> 3;
                      v65 = v64 + 1;
                      if ((v64 + 1) >> 61)
                      {
                        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                      }

                      v66 = v98 - __p;
                      if ((v98 - __p) >> 2 > v65)
                      {
                        v65 = v66 >> 2;
                      }

                      v48 = v66 >= 0x7FFFFFFFFFFFFFF8;
                      v67 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!v48)
                      {
                        v67 = v65;
                      }

                      if (v67)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v67);
                      }

                      *(8 * v64) = v59;
                      v61 = 8 * v64 + 8;
                      memcpy(0, v62, v63);
                      v68 = __p;
                      __p = 0;
                      v97 = v61;
                      v98 = 0;
                      if (v68)
                      {
                        operator delete(v68);
                      }
                    }

                    else
                    {
                      *v97 = v59;
                      v61 = (v60 + 1);
                    }

                    v97 = v61;
                  }

                  goto LABEL_69;
                }
              }

              while (*&v45[4 * v46] <= v37)
              {
                if (++v46 >= v41)
                {
                  goto LABEL_37;
                }
              }

              v42 = 0;
              v48 = v43++ >= v35;
            }

            while (!v48);
          }

LABEL_69:
          ++v33;
        }

        while (v33 != 360);
        v32 = v93 + 1;
        ++v30;
        ++v31;
      }

      while (v30 != v20 - 9);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }
  }

  std::vector<unsigned long>::vector[abi:ne200100](&v94, 0xB4uLL);
  v69 = __p;
  v70 = __src;
  if (v97 == __p)
  {
    v84 = 0;
    v82 = 0.0;
    v83 = 0.0;
  }

  else
  {
    v71 = 0;
    v72 = (v97 - __p) >> 3;
    v73 = v94;
    if (v72 <= 1)
    {
      v72 = 1;
    }

    v74 = __src;
    v75 = __p;
    v76 = v72;
    do
    {
      v77 = *v75++;
      v73[v77] += *v74;
      v78 = *v74++;
      v71 += v78;
      --v76;
    }

    while (v76);
    v79 = 0;
    v80 = 0;
    do
    {
      v81 = v69[v76];
      if (v80 <= v73[v81])
      {
        v80 = v73[v81];
        v79 = v76;
      }

      ++v76;
    }

    while (v72 != v76);
    v82 = v71;
    v83 = v80;
    v84 = v79;
  }

  v85 = -1000.0;
  if (v100 != v70 && (v82 * a4) <= v83)
  {
    v85 = v69[v84];
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
    v69 = __p;
  }

  if (v69)
  {
    v97 = v69;
    operator delete(v69);
  }

  if (__src)
  {
    v100 = __src;
    operator delete(__src);
  }

  return v85;
}

void sub_1B428424C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

unint64_t generateIntegralImage(unint64_t result, int **a2)
{
  v2 = *(result + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = *a2;
  **a2 = **result;
  if (v2 >= 2)
  {
    v6 = v5 + 1;
    v7 = *v5;
    v8 = (v2 & 0x7FFFFFFF) - 1;
    v9 = (v4 + 1);
    do
    {
      v10 = *v9++;
      v7 += v10;
      *v6++ = v7;
      --v8;
    }

    while (v8);
  }

  if (v3 >= 2)
  {
    v11 = 1;
    v12 = v2;
    do
    {
      if (v2 >= 1)
      {
        v13 = 0;
        v14 = &v5[v12];
        v15 = (v4 + v12);
        v12 += v2;
        LODWORD(result) = v2;
        do
        {
          v16 = *v15++;
          v13 += v16;
          *v14 = v13 + v14[-v2];
          ++v14;
          result = (result - 1);
        }

        while (result);
      }

      ++v11;
    }

    while (v11 != v3);
  }

  return result;
}

int32x4_t *generateIntegralImage_NEON(int32x4_t *result, const vImage_Buffer *a2)
{
  v2 = result[1].i64[0];
  v3 = result->i32[2];
  v4 = result->i64[0];
  data = a2->data;
  *a2->data = *result->i64[0];
  if (v2 >= 2)
  {
    v6 = data + 1;
    v7 = *data;
    v8 = (v2 & 0x7FFFFFFF) - 1;
    v9 = (v4 + 1);
    do
    {
      v10 = *v9++;
      v7 += v10;
      *v6++ = v7;
      --v8;
    }

    while (v8);
  }

  if (v3 >= 2)
  {
    v11 = data + 4;
    v12 = 1;
    v13 = v2;
    do
    {
      if (v2 >= 1)
      {
        v14 = 0;
        v15 = v4 + v13;
        v16 = 0uLL;
        v17 = &v11[v13];
        do
        {
          v18 = *(v15 + v14);
          v19 = vext_s8(*v16.i8, v18, 7uLL);
          v19.i8[0] = 0;
          v20 = vext_s8(*v16.i8, v19, 7uLL);
          v20.i8[0] = 0;
          v21 = vext_s8(*v16.i8, v20, 7uLL);
          v21.i8[0] = 0;
          v22 = vext_s8(*v16.i8, v21, 7uLL);
          v22.i8[0] = 0;
          v23 = vext_s8(*v16.i8, v22, 7uLL);
          v23.i8[0] = 0;
          v24 = vext_s8(*v16.i8, v23, 7uLL);
          v24.i8[0] = 0;
          v25 = vext_s8(*v16.i8, v24, 7uLL);
          v25.i8[0] = 0;
          v26 = vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(v19, v18), v20), v21), v22), v23), v24), v25);
          result = (v17 - 4 * v2);
          v27 = vaddw_high_u16(v16, v26);
          v17[-1] = vaddw_u16(vaddq_s32(result[-1], v16), *v26.i8);
          *v17 = vaddq_s32(v27, *result);
          v17 += 2;
          v16 = vdupq_laneq_s32(v27, 3);
          v13 += 8;
          v14 += 8;
        }

        while (v14 < v2);
      }

      ++v12;
    }

    while (v12 != v3);
  }

  return result;
}

void adaptiveThresholdIntegralImage(int32x4_t *a1, uint64_t *a2, int a3, int a4)
{
  v4 = a1->i64[1];
  if (a1[1].i64[0] * v4)
  {
    v9 = malloc_type_malloc(4 * v4 * a1[1].i64[1], 0x100004052888210uLL);
    v10 = a1->u64[1];
    v11 = a1[1].u64[0];
    v17.data = v9;
    v17.height = v10;
    v12 = 4 * a1[1].i64[1];
    v17.width = v11;
    v17.rowBytes = v12;
    v13 = a1[1];
    v15 = *a1;
    v16 = v13;
    if ((v11 & 7) != 0)
    {
      generateIntegralImage(&v15, &v17);
    }

    else
    {
      generateIntegralImage_NEON(&v15, &v17);
    }

    v14 = a1[1];
    v15 = *a1;
    v16 = v14;
    adaptiveThresholdIntegralImageWithBuffer(&v15, a2, &v17, a3, a4, v15, v14);

    free(v9);
  }
}

uint64_t adaptiveThresholdIntegralImageWithBuffer(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v8 = *(result + 8);
  v7 = *(result + 16);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = a4;
    v12 = result;
    v13 = *result;
    v14 = *a2;
    v15 = *a3;
    v86[0] = MEMORY[0x1E69E9820];
    a6.i32[1] = 0;
    v86[1] = 3221225472;
    v87 = __adaptiveThresholdIntegralImageWithBuffer_block_invoke;
    v88 = &__block_descriptor_80_e11_v16__0i8i12l;
    v89 = v7;
    v90 = v8;
    v65 = v15;
    v67 = v14;
    v91 = v15;
    v92 = v13;
    v68 = v13;
    v94 = a4;
    v95 = a5;
    v93 = v14;
    LOBYTE(v16) = v7;
    if (a4 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = 0;
        do
        {
          result = v87(v86, v18++, v17);
        }

        while (v7 != v18);
        v17 = (v17 + 1);
        v11 = a4;
      }

      while (v17 != a4);
      v16 = *(v12 + 16);
    }

    v19 = 4 * v11 * v11;
    v9 = (v16 & 7) == 0;
    v63 = v8;
    v20 = v8 - v11;
    if (v9)
    {
      v84 = v8 - v11;
      if (v20 > v11)
      {
        a6.i32[0] = 0;
        v33 = v11;
        v34 = (v7 - v11) & 7;
        v35 = v34 + v11;
        a7.i32[0] = 4 * v11 * v11;
        v72 = *a7.i8;
        a7.i32[0] = a5;
        v36 = vdupq_lane_s32(*&vcgtq_s32(a7, a6), 0);
        if (a5 > 0)
        {
          v37 = a5;
        }

        else
        {
          v37 = -a5;
        }

        v38 = (v65 + 4 * ((v7 - v11) & 7));
        v39 = v65 + 4 * v7 * 2 * v11;
        v40 = (v39 + 4 * ((v7 - v11) & 7));
        v41 = vmovl_u8(vdup_n_s8(v37));
        v70 = vbslq_s8(v36, v41, vnegq_s16(v41));
        v42 = (v65 + 4 * (v35 + v11));
        v43 = (v39 + 4 * (v35 + v11));
        v44 = v35 + v7 * v11;
        v78 = v7 - v35;
        v80 = v35;
        v82 = v34 + v11;
        v74 = 2 * v35;
        v76 = v7 - v35;
        v66 = (v7 - v35);
        do
        {
          if (v82 >= 1)
          {
            v45 = 0;
            do
            {
              result = v87(v86, v45, v33);
              v45 = (v45 + 1);
            }

            while (v82 != v45);
          }

          v46 = v80;
          if (v78 > v80)
          {
            v47 = (v67 + v44);
            v48 = (v68 + v44);
            do
            {
              v49 = *v48++;
              v50 = vaddw_u8(v70, v49);
              v51 = *v43;
              v52 = v43[1];
              v43 += 2;
              v53 = *v42;
              v54 = v42[1];
              v42 += 2;
              v55 = *v40;
              v56 = v40[1];
              v40 += 2;
              v57 = *v38;
              v58 = v38[1];
              v38 += 2;
              *v47++ = vmovn_s16(vuzp1q_s8(vcgtq_u32(vmull_lane_u16(*v50.i8, v72, 0), vaddq_s32(vsubq_s32(v51, vaddq_s32(v53, v55)), v57)), vcgtq_u32(vmull_high_lane_u16(v50, v72, 0), vaddq_s32(vsubq_s32(v52, vaddq_s32(v54, v56)), v58))));
              v46 += 8;
              v44 += 8;
            }

            while (v78 > v46);
          }

          if (v7 > v76)
          {
            v59 = v7 - v76;
            v60 = v66;
            do
            {
              result = v87(v86, v60, v33);
              v60 = (v60 + 1);
              --v59;
            }

            while (v59);
          }

          v43 = (v43 + 4 * v74);
          v42 = (v42 + 4 * v74);
          v40 = (v40 + 4 * v74);
          ++v33;
          v44 += v74;
          v38 = (v38 + 4 * v74);
          v11 = a4;
        }

        while (v33 != v84);
      }
    }

    else
    {
      v75 = v8 - v11;
      if (v20 > v11)
      {
        v21 = 0;
        v22 = 2 * v11;
        v23 = v11;
        v24 = v11 + v11 * v7;
        v71 = v7 - v11;
        v25 = 2 * v11 * v7;
        v69 = v7 - v11;
        v26 = v7 - 2 * v11;
        v64 = (v7 - v11);
        v73 = v11;
        v79 = 2 * v11;
        v77 = v25;
        do
        {
          v81 = v24;
          v83 = v21;
          if (v11 >= 1)
          {
            v27 = 0;
            do
            {
              result = v87(v86, v27, v23);
              v27 = (v27 + 1);
            }

            while (v11 != v27);
          }

          v28 = v77 + v79;
          if (v69 <= v73)
          {
            v77 += v79;
          }

          else
          {
            v29 = 0;
            do
            {
              result = *(v65 + 4 * v83 + 4 * v29);
              if ((*(v68 + v81 + v29) + a5) * v19 < *(v65 + 4 * v28 + 4 * v29) - (*(v65 + 4 * v22 + 4 * v29) + *(v65 + 4 * v25 + 4 * v29)) + result)
              {
                v30 = 0;
              }

              else
              {
                v30 = -1;
              }

              *(v67 + v81 + v29++) = v30;
            }

            while (v26 != v29);
            v83 += v29;
            v25 += v29;
            v22 += v29;
            v77 = v28 + v29;
            v81 += v29;
          }

          if (v7 > v71)
          {
            v31 = v7 - v71;
            v32 = v64;
            do
            {
              result = v87(v86, v32, v23);
              v32 = (v32 + 1);
              --v31;
            }

            while (v31);
          }

          v22 += v79;
          v25 += v79;
          v21 = v83 + v79;
          ++v23;
          v24 = v81 + v79;
          v11 = a4;
        }

        while (v23 != v75);
      }
    }

    if (v63 > v63 - v11)
    {
      v61 = v63 - v11;
      do
      {
        v62 = 0;
        do
        {
          result = v87(v86, v62++, v61);
        }

        while (v7 != v62);
        ++v61;
      }

      while (v63 > v61);
    }
  }

  return result;
}

void adaptiveThresholdIntegralImageWithFiltering(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(a1[1].i64[1] * a1->i64[1], 4uLL, 0x100004052888210uLL);
  v13 = a1->u64[1];
  v14 = a1[1].u64[0];
  v31.data = v12;
  v31.height = v13;
  v15 = 4 * a1[1].i64[1];
  v31.width = v14;
  v31.rowBytes = v15;
  v16 = a1[1];
  v29 = *a1;
  v30 = v16;
  if ((v14 & 7) != 0)
  {
    generateIntegralImage(&v29, &v31);
  }

  else
  {
    generateIntegralImage_NEON(&v29, &v31);
  }

  v17 = a1[1];
  v29 = *a1;
  v30 = v17;
  adaptiveThresholdIntegralImageWithBuffer(&v29, a2->i64, &v31, a3, a4, v29, v17);
  if (a5)
  {
    v18 = a2[1];
    v29 = *a2;
    v30 = v18;
    generateIntegralImage(&v29, &v31);
    v19 = a2->i64[1];
    if (v19 - a5 > a5)
    {
      v20 = 0;
      v21 = a2->i64[0];
      v22 = a2[1].i64[0];
      v23 = 8 * a5;
      v24 = a5;
      do
      {
        v25 = v12;
        v26 = &v12[8 * a5];
        v27 = a5;
        if (v22 - a5 > a5)
        {
          do
          {
            v28 = v21 + v24 * v22;
            if (*(v28 + v27) && (*&v26[v23 * v22] - (*&v26[v20 * v22] + *&v25[v23 * v22]) + *&v25[v20 * v22]) / 255 < a6)
            {
              *(v28 + v27) = 0;
              v22 = a2[1].i64[0];
            }

            ++v27;
            v26 += 4;
            v25 += 4;
          }

          while (v22 - a5 > v27);
          v19 = a2->i64[1];
        }

        ++v24;
        v20 += 4;
        v23 += 4;
      }

      while (v19 - a5 > v24);
    }
  }

  free(v12);
}

uint64_t __adaptiveThresholdIntegralImageWithBuffer_block_invoke(uint64_t result, int a2, int a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = v3 * a3 + a2;
  v6 = *(result + 72);
  v7 = a2 - v6;
  v8 = v6 + a2;
  v9 = a3 - v6;
  v10 = v6 + a3;
  v11 = v7 & ~(v7 >> 31);
  if (v3 <= v8)
  {
    v8 = v3 - 1;
  }

  v12 = v9 & ~(v9 >> 31);
  if (v4 <= v10)
  {
    v13 = v4 - 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = (v8 - v11) * (v13 - v12);
  v15 = v3 * v13;
  v16 = v3 * v12;
  v17 = *(result + 48);
  if (v14 * (*(result + 76) + *(*(result + 56) + v5)) > *(v17 + 4 * v15 + 4 * v8) - *(v17 + 4 * v15 + 4 * v11) - *(v17 + 4 * v16 + 4 * v8) + *(v17 + 4 * v16 + 4 * v11))
  {
    *(*(result + 64) + v5) = -1;
  }

  return result;
}

float find_homography(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = 0;
  v18 = *MEMORY[0x1E69E9840];
  v7 = (v6 + 8);
  do
  {
    v8 = &v16[v5];
    v9 = *v2++;
    *(v8 + 24) = vnegq_f64(v9);
    v11 = *(v7 - 1);
    v10 = *v7;
    *(v8 + 3) = vmulq_n_f64(v9, *v7);
    *v8 = 0uLL;
    *(v8 + 2) = 0;
    *(v8 + 5) = 0xBFF0000000000000;
    *(v8 + 8) = v10;
    *(v8 + 72) = v9;
    *(v8 + 88) = xmmword_1B42AF250;
    *(v8 + 104) = 0uLL;
    *(v8 + 120) = vmulq_n_f64(v9, -v11);
    *(v8 + 17) = -v11;
    v5 += 144;
    v7 += 2;
  }

  while (v5 != 576);
  dgeqrf_NEWLAPACK();
  dorgqr_NEWLAPACK();
  v12 = 576;
  v13 = 1.0 / v17;
  do
  {
    v14 = v13 * *&v16[v12];
    *v4++ = v14;
    v12 += 8;
  }

  while (v12 != 648);
  return *&v13;
}

uint64_t writeCGImageWithMetadata(CGImage *a1, void *a2, const __CFDictionary *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([a2 isAbsolutePath])
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  }

  else
  {
    v14 = 0;
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  v7 = v6;
  v8 = [(__CFURL *)v6 URLByDeletingLastPathComponent];
  v14 = 0;
  if (([v8 checkResourceIsReachableAndReturnError:&v14] & 1) == 0)
  {
    v15 = *MEMORY[0x1E696A370];
    v16[0] = [MEMORY[0x1E696AD98] numberWithInt:493];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  v10 = [objc_msgSend(a2 "pathExtension")];
  if (([v10 isEqualToString:@"JPG"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"JPEG"))
  {
    v11 = *MEMORY[0x1E6982E58];
  }

  else if ([v10 isEqualToString:@"PNG"])
  {
    v11 = *MEMORY[0x1E6982F28];
  }

  else
  {
    v11 = *MEMORY[0x1E6983008];
  }

  v12 = CGImageDestinationCreateWithURL(v7, [v11 identifier], 1uLL, 0);
  CGImageDestinationAddImage(v12, a1, a3);
  CGImageDestinationFinalize(v12);
  CFRelease(v12);
  return -[__CFDictionary writeToFile:atomically:](a3, "writeToFile:atomically:", [objc_msgSend(objc_msgSend(-[__CFURL path](v7 "path")], 1);
}

void sub_1B428506C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    NSLog(&cfstr_Exception.isa);
    objc_end_catch();
    JUMPOUT(0x1B4285038);
  }

  _Unwind_Resume(exception_object);
}

void writeCGImage(CGImage *a1, void *a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:{objc_msgSend(-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1), "objectAtIndex:", 0), "stringByAppendingPathComponent:", objc_msgSend(a2, "lastPathComponent"))}];
    v4 = CGImageDestinationCreateWithURL(v3, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);
    CGImageDestinationAddImage(v4, a1, 0);
    CGImageDestinationFinalize(v4);

    CFRelease(v4);
  }

  else
  {
    NSLog(&cfstr_NoImageAvailab.isa);
  }
}

void writeBuffer(_OWORD *a1, void *a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  writeBufferWithMetadata(v3, a2, 0);
}

void writeBufferWithMetadata(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v7 = CGBitmapContextCreate(*a1, *(a1 + 16), *(a1 + 8), 8uLL, *(a1 + 24), DeviceGray, 0);
  Image = CGBitmapContextCreateImage(v7);
  writeCGImageWithMetadata(Image, a2, a3);
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v7);

  CGImageRelease(Image);
}

void writeBufferWithFullColor(opaqueCMSampleBuffer *a1, void *a2, const __CFDictionary *a3)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  v7 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 1u);
  v8 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:ImageBuffer options:v7];
  v9 = [MEMORY[0x1E695F620] contextWithOptions:0];
  [v8 extent];
  v10 = [v9 createCGImage:v8 fromRect:?];
  writeCGImageWithMetadata(v10, a2, a3);

  CFRelease(v7);

  CGImageRelease(v10);
}

void writeRawBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a1 length:a2];
  if (([a3 isAbsolutePath] & 1) == 0)
  {
    a3 = [objc_msgSend(-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSDocumentDirectory 1uLL];
  }

  [v4 writeToFile:a3 atomically:1];
}

uint64_t applyHomograpyMatrix(uint64_t result, _BYTE **a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = a3;
  v12 = vld1_dup_f32(v11++);
  v13 = *v11;
  v14 = (a3 + 8);
  v15 = vld1_dup_f32(v14);
  v16 = (a3 + 12);
  v17 = vld1_dup_f32(v16);
  v18 = *(a3 + 16);
  v19 = (a3 + 20);
  v20 = vld1_dup_f32(v19);
  v21 = (a3 + 24);
  v22 = vld1_dup_f32(v21);
  v23 = *(a3 + 28);
  v24 = (a3 + 32);
  v25 = vld1_dup_f32(v24);
  v26 = (a5 + a7);
  v27 = *(result + 16);
  v28 = *result;
  v29 = *(result + 8);
  **result = 0;
  v30 = a5;
  if (v30 < v26)
  {
    v31 = (a4 + a6);
    v32 = a4;
    v33 = v31;
    v34 = vdup_n_s32(v27);
    v35 = vdup_n_s32(v29);
    v36 = *a2;
    do
    {
      if (v32 >= v33)
      {
        v47 = v36;
      }

      else
      {
        v7.f32[0] = v13 * v30;
        v7 = vdup_lane_s32(v7, 0);
        v8.f32[0] = v23 * v30;
        v8 = vdup_lane_s32(v8, 0);
        v9.f32[0] = v18 * v30;
        v9 = vdup_lane_s32(v9, 0);
        *v10.i32 = v32;
        do
        {
          v37 = vadd_f32(vdup_lane_s32(v10, 0), 0x3F80000000000000);
          v38 = vadd_f32(v25, vadd_f32(v8, vmul_f32(v22, v37)));
          v39 = vrecpe_f32(v38);
          v40 = vmul_f32(v39, vrecps_f32(v38, v39));
          v41 = vmul_f32(vrecps_f32(v38, v40), v40);
          v42 = vcvt_s32_f32(vadd_f32(vmul_f32(v41, vadd_f32(v15, vadd_f32(v7, vmul_f32(v12, v37)))), 0x3F0000003F000000));
          v43 = vcvt_s32_f32(vadd_f32(vmul_f32(v41, vadd_f32(v20, vadd_f32(v9, vmul_f32(v17, v37)))), 0x3F0000003F000000));
          v44 = vand_s8(vand_s8(vcgt_s32(v35, v43), vcgt_s32(v34, v42)), vcgez_s32(vorr_s8(v43, v42)));
          v45 = vand_s8(v42, v44);
          v46 = vmul_s32(vand_s8(v43, v44), v34);
          *v36 = v28[v46.i32[0] + v45.i32[0]];
          v47 = v36 + 2;
          v36[1] = v28[v46.i32[1] + v45.i32[1]];
          *v10.i32 = *v10.i32 + 2.0;
          v36 += 2;
        }

        while (*v10.i32 < v33);
      }

      v30 = v30 + 1.0;
      v36 = v47;
    }

    while (v30 < v26);
  }

  return result;
}

void InstantLogPrinter::InstantLogPrinter(InstantLogPrinter *this, __sFILE *a2)
{
  *this = a2;
}

{
  *this = a2;
}

void *CRLogger::getCRLogger(CRLogger *this)
{
  {
    CRLogger::CRLogger(&CRLogger::getCRLogger(void)::loggerSingleton);
  }

  return &CRLogger::getCRLogger(void)::loggerSingleton;
}

void CRLogger::CRLogger(CRLogger *this)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = getenv("DEBUG_PRINT_DETECTION_MAPS");
  if (v4 && *v4 == 49)
  {
    *v2 |= 1uLL;
  }

  v5 = getenv("DEBUG_PRINT_DETECTION_NMS");
  if (v5 && *v5 == 49)
  {
    *v2 |= 2uLL;
  }

  v6 = getenv("DEBUG_PRINT_RECOGNIZER_RECTIFIED_INPUT");
  if (v6 && *v6 == 49)
  {
    *v2 |= 4uLL;
  }

  v7 = getenv("DEBUG_PRINT_RECOGNIZER_INPUT_BATCH");
  if (v7 && *v7 == 49)
  {
    *v2 |= 8uLL;
  }

  v8 = getenv("DEBUG_FORM_FIELD_DETECTION");
  if (v8 && *v8 == 49 || ([v3 objectForKey:@"com.apple.CoreRecognition.debug_form_field_detection"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v10))
  {
    *v2 |= 0x10uLL;
  }

  v11 = getenv("DEBUG_DATA_DETECTION");
  if (v11 && *v11 == 49)
  {
    v12 = *v2;
  }

  else
  {
    v13 = [v3 objectForKey:@"com.apple.CoreRecognition.debug_data_detection"];
    v14 = [v13 BOOLValue];

    v12 = *v2;
    if (!v14)
    {
      if (!v12)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }
  }

  *v2 = v12 | 0x20;
LABEL_23:
  *this = 1;
  v15 = getenv("CR_LOG_DESTINATION_FILE");
  if (v15)
  {
    v16 = v15;
    v17 = fopen(v15, "a+");
    *(this + 2) = v17;
    if (v17)
    {
      *(this + 24) = 1;
    }

    else
    {
      fprintf(*MEMORY[0x1E69E9848], "Cannot open specified log file %s.\nAll logging is turned off.\n", v16);
      *this = 0;
    }
  }

  else
  {
    *(this + 2) = *MEMORY[0x1E69E9848];
  }

LABEL_28:
  if (*this == 1)
  {
    operator new();
  }
}

void sub_1B42858B0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x1B8C73EF0](v4, 0x20C4093837F09);
  }

  _Unwind_Resume(a1);
}

void CRLogger::~CRLogger(CRLogger *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    fflush(*v2);
  }

  if (*(this + 24) == 1)
  {
    fclose(*(this + 2));
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    MEMORY[0x1B8C73EF0](v3, 0x20C4093837F09);
  }
}

uint64_t CRLogger::log(uint64_t result, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  if (*result == 1 && (*(result + 8) & a2) != 0)
  {
    return vfprintf(**(result + 32), a3, va);
  }

  return result;
}

void sub_1B4285D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B42881C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B428890C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4289C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1B428B340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CRImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B428C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGColorSpace *>::~ObjectRef(va1);

  _Unwind_Resume(a1);
}

void sub_1B428CA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id createPixelBufferCLAPDictionaryFromRect(CGSize a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v6 = a1.height;
  v7 = a1.width;
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E6965D80];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a2.size.width];
  v15[0] = v8;
  v14[1] = *MEMORY[0x1E6965D60];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v15[1] = v9;
  v14[2] = *MEMORY[0x1E6965D68];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:x + width * 0.5 - v7 * 0.5];
  v15[2] = v10;
  v14[3] = *MEMORY[0x1E6965D78];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:y + height * 0.5 - v6 * 0.5];
  v15[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

void sub_1B428E7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CRImage_PixelBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<CGColorSpace *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGColor *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CTFramesetter const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CTFrame const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1B428F6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CRCTCCVNLPTextDecoder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B428FD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B4290898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *CoreRecognition::decoder::ActivationMatrix::reverseInTime(unint64_t *this)
{
  v1 = *this;
  if (*this >= 2)
  {
    v2 = 0;
    v3 = this[1];
    v4 = this[8];
    v5 = this[9];
    do
    {
      v6 = v2 * v3;
      v7 = v2 + 1;
      if (v2 * v3 != (v2 + 1) * v3)
      {
        v8 = (v1 + ~v2) * v3;
        v9 = (v4 + 4 * v8);
        this = (v4 + 4 * v6);
        v10 = 4 * v3;
        do
        {
          v11 = *this;
          *this = *v9;
          this = (this + 4);
          *v9++ = v11;
          v10 -= 4;
        }

        while (v10);
        if (v5)
        {
          v12 = (v5 + 4 * v8);
          v13 = 4 * v3;
          v14 = (v5 + 4 * v6);
          do
          {
            v15 = *v14;
            *v14++ = *v12;
            *v12++ = v15;
            v13 -= 4;
          }

          while (v13);
        }
      }

      v2 = v7;
    }

    while (v7 != v1 >> 1);
  }

  return this;
}

void CoreRecognition::decoder::ActivationMatrix::~ActivationMatrix(CoreRecognition::decoder::ActivationMatrix *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void sub_1B4290E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B42912E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4292170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40)
{
  applesauce::CF::ObjectRef<_LXLexicon const*>::~ObjectRef(&a27);

  *(v46 - 112) = v46 - 144;
  std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100]((v46 - 112));
  if (__p)
  {
    a40 = __p;
    operator delete(__p);
  }

  *v42 = a11;
  *(v46 - 144) = a10;
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100]((v46 - 144));

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<void *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::addScorer(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v5 = result[4];
    v4 = result[5];
    if (v5 >= v4)
    {
      v7 = result[3];
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      v18[4] = v3 + 3;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v12);
      }

      v13 = (v5 - v7) >> 3;
      v14 = (8 * v9);
      v15 = (8 * v9 - 8 * v13);
      *v14 = a2;
      v6 = v14 + 1;
      memcpy(v15, v7, v8);
      v16 = v3[3];
      v3[3] = v15;
      v3[4] = v6;
      v17 = v3[5];
      v3[5] = 0;
      v18[2] = v16;
      v18[3] = v17;
      v18[0] = v16;
      v18[1] = v16;
      result = std::__split_buffer<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::~__split_buffer(v18);
    }

    else
    {
      *v5 = a2;
      v6 = v5 + 8;
    }

    v3[4] = v6;
  }

  return result;
}

const void **applesauce::CF::ObjectRef<CVNLPLanguageModel *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *CoreRecognition::decoder::LatinArabicMixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::~LatinArabicMixedScriptPenaltyBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAF890;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void *CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::addScorer(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = result;
    v6 = result[4];
    v5 = result[5];
    if (v6 >= v5)
    {
      v8 = result[3];
      v9 = v6 - v8;
      v10 = (v6 - v8) >> 3;
      v11 = v10 + 1;
      if ((v10 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v12 = v5 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v19[4] = v4 + 3;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(v13);
      }

      v14 = v10;
      v15 = (8 * v10);
      *a2 = 0;
      v16 = &v15[-v14];
      *v15 = v2;
      v7 = v15 + 1;
      memcpy(v16, v8, v9);
      v17 = v4[3];
      v4[3] = v16;
      v4[4] = v7;
      v18 = v4[5];
      v4[5] = 0;
      v19[2] = v17;
      v19[3] = v18;
      v19[0] = v17;
      v19[1] = v17;
      result = std::__split_buffer<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::~__split_buffer(v19);
    }

    else
    {
      *a2 = 0;
      *v6 = v2;
      v7 = v6 + 8;
    }

    v4[4] = v7;
  }

  return result;
}

void *CoreRecognition::decoder::LatinCyrillicMixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::~LatinCyrillicMixedScriptPenaltyBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAF890;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<_LXLexicon const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::~AdditiveCombiningBeamScorer(uint64_t a1)
{
  *a1 = &unk_1F2BAF8F0;
  v3 = (a1 + 24);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void sub_1B4292B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  CoreRecognition::decoder::Context::~Context((v22 - 120));
  CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::~CTCGreedyDecoder(&a22);
  a22 = v22 - 96;
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void CoreRecognition::decoder::CTCGreedyDecoder<CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::BaseState>>::decode(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  __p = 0;
  v48 = 0;
  v49 = 0;
  std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::reserve(&__p, *a2 + 1);
  v6 = v48;
  if (v48 >= v49)
  {
    v7 = std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<>(&__p);
  }

  else
  {
    v48[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
    *(v6 + 8) = &unk_1F2BAF768;
    *(v6 + 9) = 0;
    v7 = (v6 + 5);
  }

  v48 = v7;
  *(v7 - 24) = 0;
  *(v7 - 48) = 0;
  *(v7 - 80) = xmmword_1B42AFDD0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v45 = &unk_1F2BAF768;
  v46 = 0;
  v8 = *a2;
  if (*a2)
  {
    v9 = 0;
    v10 = -1;
    do
    {
      v11 = a2[1];
      v12 = v11 * v9;
      v14 = a2[8];
      v13 = a2[9];
      v15 = (v13 + 4 * v11 * v9);
      if (v13)
      {
        v16 = -1.0;
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
      }

      v17 = (v14 + 4 * v12);
      v18 = v9 + 1;
      v19 = v11 * (v9 + 1);
      v20 = (v14 + 4 * v19);
      v22 = v12 == v19;
      v21 = v17 + 1;
      v22 = v22 || v21 == v20;
      if (!v22)
      {
        v23 = v16 + 1.0;
        if (v15)
        {
          v23 = v16;
        }

        v24 = v15 + 1;
        if (!v15)
        {
          v24 = 0;
        }

        v25 = 4 * v11 - 4;
        do
        {
          v26 = *v17;
          if (*v17 > -0.0010005)
          {
            v26 = -0.0010005;
          }

          v27 = *v21;
          if (*v21 > -0.0010005)
          {
            v27 = -0.0010005;
          }

          if (v26 < v27)
          {
            v15 = v24;
            v17 = v21;
            v16 = v23;
          }

          ++v21;
          v28 = v24 == 0;
          if (v24)
          {
            ++v24;
          }

          else
          {
            v24 = 0;
          }

          if (v28)
          {
            v23 = v23 + 1.0;
          }

          v25 -= 4;
        }

        while (v25);
      }

      if (v15)
      {
        v16 = *v15;
      }

      v29 = *v17;
      v30 = v16;
      if (v29 <= -0.0010005)
      {
        v31 = v29;
      }

      else
      {
        v31 = -0.0010005;
      }

      *&v41 = v30;
      *(&v44 + 1) = v7 - 80;
      v32 = v31;
      if (v10 == v30)
      {
        if (*(a1 + 24) == 1 && *(v7 - 40) < v32)
        {
          *(v7 - 72) = v9;
          *(v7 - 40) = v32;
        }
      }

      else if (*(a1 + 8) == v30)
      {
        v10 = v30;
      }

      else
      {
        *(&v41 + 1) = v9;
        *(&v43 + 1) = v31;
        *&v43 = *(v7 - 48);
        if (v7 >= v49)
        {
          v7 = std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::BaseState>&>(&__p, &v41);
        }

        else
        {
          v33 = v41;
          v34 = v42;
          v35 = v44;
          *(v7 + 32) = v43;
          *(v7 + 48) = v35;
          *v7 = v33;
          *(v7 + 16) = v34;
          *(v7 + 64) = &unk_1F2BAF768;
          *(v7 + 72) = v46;
          v7 += 80;
        }

        v48 = v7;
        v10 = v41;
        v8 = *a2;
      }

      *(v7 - 48) = v32 + *(v7 - 48);
      v9 = v18;
    }

    while (v18 < v8);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  CoreRecognition::decoder::SegmentedPathBuilderBase<CoreRecognition::decoder::BaseState>::createResultPathFromBeamEntry(a1 + 16, v7 - 80, v8, &v38);
  v36 = a3[1];
  if (v36 >= a3[2])
  {
    v37 = std::vector<CoreRecognition::decoder::DecodingPath>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingPath>(a3, &v38);
  }

  else
  {
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = v38;
    *(v36 + 16) = v39;
    v38 = 0uLL;
    v39 = 0;
    *(v36 + 24) = v40;
    v37 = v36 + 40;
  }

  a3[1] = v37;
  v50 = &v38;
  std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v50);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }
}

void sub_1B4292F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  *(v27 - 104) = v26;
  std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100]((v27 - 104));
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B42931B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B429378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  *(v28 - 224) = a10;
  v30 = *(v28 - 208);
  if (v30)
  {
    *(v28 - 200) = v30;
    operator delete(v30);
  }

  a28 = (v28 - 176);
  std::vector<CoreRecognition::decoder::DecodingPath>::__destroy_vector::operator()[abi:ne200100](&a28);

  _Unwind_Resume(a1);
}

void sub_1B4294BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  CoreRecognition::decoder::BeamSearchState<CoreRecognition::decoder::CombinedBeamState>::~BeamSearchState(va);
  _Unwind_Resume(a1);
}

uint64_t CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::~CTCBeamSearchDecoder(uint64_t a1)
{
  *a1 = &unk_1F2BAFA68;
  *(a1 + 16) = &unk_1F2BAF8F0;
  v3 = (a1 + 40);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::~CTCBeamSearchDecoder(uint64_t a1)
{
  *a1 = &unk_1F2BAFA90;
  *(a1 + 64) = &unk_1F2BAF988;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *(a1 + 16) = &unk_1F2BAF8F0;
  v4 = (a1 + 40);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

{
  *a1 = &unk_1F2BAFA90;
  *(a1 + 64) = &unk_1F2BAF988;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *(a1 + 16) = &unk_1F2BAF8F0;
  v4 = (a1 + 40);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void *CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::~SpaceSegmentedPathBuilder(void *a1)
{
  *a1 = &unk_1F2BAF988;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B429933C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t CoreRecognition::decoder::SegmentedPathBuilderBase<CoreRecognition::decoder::BaseState>::updateActivationProgression(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (*(result + 8) == 1 && *(a2 + 40) < a4)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::~AdditiveCombiningBeamScorer(uint64_t a1)
{
  *a1 = &unk_1F2BAF8F0;
  v1 = (a1 + 24);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::CombinedBeamState::~CombinedBeamState(CoreRecognition::decoder::CombinedBeamState *this)
{
  *this = &unk_1F2BAFB00;
  v1 = (this + 16);
  std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F2BAFB00;
  v1 = (this + 16);
  std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1B8C73EF0);
}

void std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::initializeState(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (*(**result + 16))();
    v5 = v4;
    if (*(a3 + 24) < *(a3 + 32))
    {
      std::shared_ptr<CoreRecognition::decoder::BaseState>::shared_ptr[abi:ne200100]<CoreRecognition::decoder::BaseState,0>(*(a3 + 24), v4);
    }

    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<CoreRecognition::decoder::BaseState*>((a3 + 16), &v5);
  }

  return result;
}

void std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<CoreRecognition::decoder::BaseState*>(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CoreRecognition::decoder::BaseState>>>(v5);
    }

    std::shared_ptr<CoreRecognition::decoder::BaseState>::shared_ptr[abi:ne200100]<CoreRecognition::decoder::BaseState,0>((16 * v2), *a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void sub_1B42999E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<CoreRecognition::decoder::BaseState>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B4299A5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<CoreRecognition::decoder::BaseState *,std::shared_ptr<CoreRecognition::decoder::BaseState>::__shared_ptr_default_delete<CoreRecognition::decoder::BaseState,CoreRecognition::decoder::BaseState>,std::allocator<CoreRecognition::decoder::BaseState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C73EF0);
}

uint64_t std::__shared_ptr_pointer<CoreRecognition::decoder::BaseState *,std::shared_ptr<CoreRecognition::decoder::BaseState>::__shared_ptr_default_delete<CoreRecognition::decoder::BaseState,CoreRecognition::decoder::BaseState>,std::allocator<CoreRecognition::decoder::BaseState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CoreRecognition::decoder::BaseState *,std::shared_ptr<CoreRecognition::decoder::BaseState>::__shared_ptr_default_delete<CoreRecognition::decoder::BaseState,CoreRecognition::decoder::BaseState>,std::allocator<CoreRecognition::decoder::BaseState>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CoreRecognition::decoder::BaseState>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<CoreRecognition::decoder::BaseState>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::expandState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  if (v5 != *(a1 + 32))
  {
    v6 = (*(**v5 + 16))();
    v9 = v6;
    if (*(a4 + 24) < *(a4 + 32))
    {
      std::shared_ptr<CoreRecognition::decoder::BaseState>::shared_ptr[abi:ne200100]<CoreRecognition::decoder::BaseState,0>(*(a4 + 24), v6);
    }

    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__emplace_back_slow_path<CoreRecognition::decoder::BaseState*>((a4 + 16), &v9);
  }

  v7 = *(a1 + 16);
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  result = *(a1 + 8) * v7;
  *(a4 + 8) = result;
  return result;
}

double CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>::finalizeState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = *v5++;
      v8 = v8 + (*(*v9 + 48))(v9, *(*(a2 + 16) + v7));
      v7 += 16;
    }

    while (v5 != v6);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v11 <= v8 + v4 / v10)
  {
    v11 = v8 + v4 / v10;
  }

  *(a2 + 8) = v10 * v11;
  return v8;
}

double CoreRecognition::decoder::MixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::expandState(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*a1 + 72))(a1, a5);
  *(a4 + 20) = v9;
  if (a3 == -1)
  {
    *(a4 + 16) = 0;
    goto LABEL_5;
  }

  if ((*(*a1 + 64))(a1, v9))
  {
    *(a4 + 20) = *(a2 + 20);
    *(a4 + 16) = *(a2 + 16);
LABEL_5:
    *(a4 + 8) = 0;
    return 0.0;
  }

  if ((*(a2 + 16) & 1) == 0 && ((*(*a1 + 56))(a1, *(a2 + 20), *(a4 + 20)) & 1) == 0)
  {
    return *(a4 + 8);
  }

  *(a4 + 16) = 1;
  v11 = a1[6];
  if (a1[2] > v11)
  {
    v11 = a1[2];
  }

  result = a1[1] * v11;
  *(a4 + 8) = result;
  return result;
}

uint64_t CoreRecognition::decoder::MixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::labelToScriptCode(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = (*(a1 + 32) - v2) >> 2;
  if (v3 > a2)
  {
    return *(v2 + 4 * a2);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Label=%lu is out-of-bounds for labelToScriptMap of size=%lu", a2, v3];
  CVNLPLogGeneralFault();

  return 0;
}

void std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::BaseState>::getCumulativeTokenScore(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 32);
  }

  else
  {
    return 0.0;
  }
}

void std::vector<CoreRecognition::decoder::DecodingPath>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 5;
        v5 = v3;
        std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void CoreRecognition::decoder::SegmentedPathBuilderBase<CoreRecognition::decoder::CombinedBeamState>::createResultPathFromBeamEntry(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5 = *(a2 + 32);
  *(a4 + 24) = v5 + *(a2 + 48);
  *(a4 + 32) = v5;
  v66 = 0u;
  v67 = 0u;
  *__src = 0u;
  v64 = 0;
  v65 = v5;
  v6 = (a2 + 56);
  if (!*(a2 + 56))
  {
    goto LABEL_77;
  }

  v8 = a2;
  do
  {
    ++*(&v67 + 1);
    v10 = (*(*a1 + 48))(a1, *v8);
    v11 = v10;
    if (v10 != 2)
    {
      if (!v10)
      {
        v15 = __src[1];
        if (__src[1] >= v64)
        {
          v24 = __src[0];
          v25 = __src[1] - __src[0];
          v26 = (__src[1] - __src[0]) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
LABEL_80:
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v28 = v64 - __src[0];
          if ((v64 - __src[0]) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          v22 = v28 >= 0x7FFFFFFFFFFFFFF8;
          v29 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v29);
          }

          v39 = (8 * v26);
          v40 = *v8;
          v41 = &v39[-((__src[1] - __src[0]) >> 3)];
          *v39 = v40;
          v16 = v39 + 1;
          memcpy(v41, v24, v25);
          v42 = __src[0];
          __src[0] = v41;
          __src[1] = v16;
          v64 = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *__src[1] = *v8;
          v16 = v15 + 8;
        }

        __src[1] = v16;
        goto LABEL_49;
      }

      if (v10 == 1)
      {
        v12 = __src[1];
        if (__src[1] >= v64)
        {
          v17 = __src[0];
          v18 = __src[1] - __src[0];
          v19 = (__src[1] - __src[0]) >> 3;
          v20 = v19 + 1;
          if ((v19 + 1) >> 61)
          {
            goto LABEL_80;
          }

          v21 = v64 - __src[0];
          if ((v64 - __src[0]) >> 2 > v20)
          {
            v20 = v21 >> 2;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
          v23 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v23);
          }

          *(8 * v19) = *v8;
          v13 = (8 * v19 + 8);
          memcpy(0, v17, v18);
          v30 = __src[0];
          __src[0] = 0;
          __src[1] = v13;
          v64 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *__src[1] = *v8;
          v13 = v12 + 8;
        }

        __src[1] = v13;
        v14 = v8[1];
      }

      else
      {
LABEL_10:
        v14 = v8[1] + 1;
      }

      *(&v66 + 1) = v14;
      *&v67 = a3;
      v31 = *(a4 + 8);
      if (v31 >= *(a4 + 16))
      {
        v33 = std::vector<CoreRecognition::decoder::DecodingToken>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingToken&>(a4, __src);
      }

      else
      {
        v32 = std::vector<CoreRecognition::decoder::DecodingToken>::__construct_one_at_end[abi:ne200100]<CoreRecognition::decoder::DecodingToken&>(a4, __src);
        v33 = v31 + 64;
      }

      *(a4 + 8) = v33;
      v34 = __src[0];
      __src[1] = __src[0];
      *(&v67 + 1) = 0;
      if (v11 == 2)
      {
        if (__src[0] >= v64)
        {
          v36 = (v64 - __src[0]) >> 2;
          if (v36 <= 1)
          {
            v36 = 1;
          }

          if ((v64 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v37);
        }

        *__src[0] = *v8;
        __src[1] = v34 + 8;
      }

      else if (!*v6)
      {
        v35 = 0.0;
LABEL_45:
        v38 = v8[5];
        v65 = v35;
        *&v66 = v38;
        a3 = v14;
        goto LABEL_49;
      }

      v35 = (*(*a1 + 56))(a1, v32);
      goto LABEL_45;
    }

    if (__src[0] != __src[1])
    {
      goto LABEL_10;
    }

LABEL_49:
    v8 = *v6;
    v43 = *v6;
    v44 = v43[7];
    v6 = v43 + 7;
  }

  while (v44);
  if (__src[0] == __src[1])
  {
    v47 = *a4;
    v46 = *(a4 + 8);
    if (*a4 != v46)
    {
      *(v46 - 24) = 0;
    }
  }

  else
  {
    *(&v66 + 1) = 0;
    *&v67 = a3;
    v45 = *(a4 + 8);
    if (v45 >= *(a4 + 16))
    {
      v46 = std::vector<CoreRecognition::decoder::DecodingToken>::__emplace_back_slow_path<CoreRecognition::decoder::DecodingToken&>(a4, __src);
    }

    else
    {
      std::vector<CoreRecognition::decoder::DecodingToken>::__construct_one_at_end[abi:ne200100]<CoreRecognition::decoder::DecodingToken&>(a4, __src);
      v46 = v45 + 64;
    }

    *(a4 + 8) = v46;
    v47 = *a4;
  }

  if (v47 != v46)
  {
    v48 = v47 + 64;
    v49 = v47;
    do
    {
      if (v48 == v46)
      {
        break;
      }

      *(v49 + 24) = *(v49 + 24) - *(v48 + 24);
      v49 += 64;
      v48 += 64;
    }

    while (v49 != v46);
  }

  if (v47 != v46)
  {
    v50 = v46 - 64;
    if (v46 - 64 > v47)
    {
      do
      {
        v51 = *v47;
        v62 = *(v47 + 8);
        *(v47 + 8) = 0;
        *(v47 + 16) = 0;
        *v47 = 0;
        v68 = *(v47 + 24);
        v52 = *(v47 + 40);
        v53 = *(v47 + 48);
        v54 = *(v47 + 56);
        std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__move_assign(v47, v50);
        *(v47 + 24) = *(v50 + 24);
        *(v47 + 40) = *(v50 + 40);
        *(v47 + 48) = *(v50 + 48);
        v55 = *v50;
        if (*v50)
        {
          *(v50 + 8) = v55;
          operator delete(v55);
        }

        *v50 = v51;
        *(v50 + 8) = v62;
        *(v50 + 24) = v68;
        *(v50 + 40) = v52;
        *(v50 + 48) = v53;
        *(v50 + 56) = v54;
        v47 += 64;
        v50 -= 64;
      }

      while (v47 < v50);
      v47 = *a4;
      v46 = *(a4 + 8);
    }
  }

  while (v47 != v46)
  {
    v56 = *v47;
    v57 = *(v47 + 8);
    v58 = (v57 - 8);
    if (*v47 != v57 && v58 > v56)
    {
      v60 = v56 + 8;
      do
      {
        v61 = *(v60 - 8);
        *(v60 - 8) = *v58;
        *v58-- = v61;
        v22 = v60 >= v58;
        v60 += 8;
      }

      while (!v22);
    }

    v47 += 64;
  }

LABEL_77:
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_1B429A664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  std::vector<CoreRecognition::decoder::DecodingToken>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t CoreRecognition::decoder::SegmentedPathBuilderBase<CoreRecognition::decoder::CombinedBeamState>::updateActivationProgression(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (*(result + 8) == 1 && *(a2 + 40) < a4)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

double CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::getCumulativeTokenScore(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 32);
  }

  else
  {
    return 0.0;
  }
}

void CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::~CTCBeamSearchDecoder(uint64_t a1)
{
  *a1 = &unk_1F2BAFA68;
  *(a1 + 16) = &unk_1F2BAF8F0;
  v1 = (a1 + 40);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::~CTCBeamSearchDecoder(uint64_t a1)
{
  *a1 = &unk_1F2BAFA90;
  *(a1 + 64) = &unk_1F2BAF988;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *(a1 + 16) = &unk_1F2BAF8F0;
  v3 = (a1 + 40);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::~SpaceSegmentedPathBuilder(void *a1)
{
  *a1 = &unk_1F2BAF988;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C73EF0);
}

uint64_t CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::updateActivationProgression(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5 && *(result + 8) == 1 && *(a2 + 40) < a4)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

uint64_t CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::updateActivationExtension(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5)
  {
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
  }

  return result;
}

uint64_t CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::needsToBeCommitted(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 24);
        return 2 * (v2 != v3);
      }
    }
  }

  return 2 * (v2 != v3);
}

double CoreRecognition::decoder::SpaceSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>::getCumulativeTokenScore(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (*(a1 + 40) == 1)
  {
    v3 = *(a2 + 56);
    if (v3 && a3 == 0)
    {
      return (*(a2 + 32) + *(v3 + 32)) * 0.5;
    }
  }

  return *(a2 + 32);
}

void *CoreRecognition::decoder::NGramCharLMBeamScorer<CoreRecognition::decoder::NGramState>::~NGramCharLMBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAF9D8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void CoreRecognition::decoder::NGramCharLMBeamScorer<CoreRecognition::decoder::NGramState>::~NGramCharLMBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAF9D8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1B8C73EF0);
}

uint64_t CoreRecognition::decoder::NGramCharLMBeamScorer<CoreRecognition::decoder::NGramState>::initializeState(uint64_t a1, void *a2, CFStringRef *a3)
{
  v5 = *(a1 + 56);
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2 + 2;
  v9 = &v6[-v7] >> 2;
  if (v5 <= v9)
  {
    if (v5 < v9)
    {
      a2[3] = v7 + 4 * v5;
    }
  }

  else
  {
    v10 = v5 - v9;
    v11 = a2[4];
    if (v10 > (v11 - v6) >> 2)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v12 = v11 - v7;
        if (v12 >> 1 > v5)
        {
          v5 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v5;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v8, v13);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v14 = &v6[4 * v10];
    memset_pattern16(v6, &unk_1B42AF410, 4 * v10);
    a2[3] = v14;
  }

  result = *a3;
  if (*a3)
  {
    result = CFStringGetLength(result);
    if (result)
    {
      result = CFStringGetLength(*a3);
      if (result >= 1)
      {
        v16 = result;
        v17 = 0;
        v18 = a2[3];
        do
        {
          if (v18 == *v8)
          {
            break;
          }

          v19 = v16--;
          result = CFStringGetCharacterAtIndex(*a3, v16);
          v20 = result;
          if (v19 != 1 && (result & 0xFC00) == 0xDC00)
          {
            v21 = v19 - 2;
            result = CFStringGetCharacterAtIndex(*a3, v21);
            if ((result & 0xFC00) == 0xD800)
            {
              v16 = v21;
              v20 = v20 + (result << 10) - 56613888;
            }
          }

          if (v17 & 1) != 0 || (result = CVNLPIsWhitespaceCharLMCodepoint(), (result))
          {
            v17 = 1;
          }

          else
          {
            result = CVNLPIsDigitCharLMCodepoint();
            v17 = 0;
            v22 = 6;
            if (result)
            {
              v22 = 5;
            }

            ++a2[v22];
          }

          *(v18 - 4) = v20;
          v18 -= 4;
        }

        while (v16 > 0);
      }
    }
  }

  return result;
}

double CoreRecognition::decoder::NGramCharLMBeamScorer<CoreRecognition::decoder::NGramState>::expandState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 8) = 0;
  if (*(a1 + 64) == a5)
  {
    if (a4 != a2)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a4 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    }

    *(a4 + 40) = *(a2 + 40);
  }

  else
  {
    std::vector<unsigned int>::reserve((a4 + 16), *(a1 + 56) + 1);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    if (*(a1 + 56) >= ((v9 - v8) >> 2))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = (v8 + 4);
    }

    if (v10 != v9)
    {
      v11 = *(a4 + 24);
      do
      {
        v12 = *(a4 + 32);
        if (v11 >= v12)
        {
          v13 = *(a4 + 16);
          v14 = v11 - v13;
          v15 = (v11 - v13) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            goto LABEL_50;
          }

          v17 = v12 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4 + 16, v18);
          }

          v19 = (v11 - v13) >> 2;
          v20 = (4 * v15);
          v21 = (4 * v15 - 4 * v19);
          *v20 = *v10;
          v11 = (v20 + 1);
          memcpy(v21, v13, v14);
          v22 = *(a4 + 16);
          *(a4 + 16) = v21;
          *(a4 + 24) = v11;
          *(a4 + 32) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v11 = *v10;
          v11 += 4;
        }

        *(a4 + 24) = v11;
        ++v10;
      }

      while (v10 != v9);
    }

    v23 = *(*(a1 + 32) + 4 * a5);
    if (CVNLPIsWhitespaceCharLMCodepoint())
    {
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
    }

    else
    {
      v24 = CVNLPIsDigitCharLMCodepoint();
      v25 = *(a2 + 40);
      if (v24)
      {
        ++v25;
        v26 = *(a2 + 48);
      }

      else
      {
        v26 = *(a2 + 48) + 1;
      }

      *(a4 + 40) = v25;
      *(a4 + 48) = v26;
    }

    v27 = *(a2 + 40);
    v28 = *(a2 + 48) + v27;
    if (v28)
    {
      v29 = (v27 / v28);
    }

    else
    {
      v29 = 0.0;
    }

    if (v29 <= *(a1 + 72) && (*(a4 + 24) - *(a4 + 16)) >> 2 >= *(a1 + 56))
    {
      LMLanguageModelConditionalProbability();
      v31 = v30 * 2.30258509;
      if (*(a1 + 16) > v31)
      {
        v31 = *(a1 + 16);
      }

      *(a4 + 8) = *(a1 + 8) * v31;
    }

    v33 = *(a4 + 24);
    v32 = *(a4 + 32);
    if (v33 >= v32)
    {
      v35 = *(a4 + 16);
      v36 = v33 - v35;
      v37 = (v33 - v35) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
LABEL_50:
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v39 = v32 - v35;
      if (v39 >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      v40 = v39 >= 0x7FFFFFFFFFFFFFFCLL;
      v41 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v40)
      {
        v41 = v38;
      }

      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4 + 16, v41);
      }

      v42 = (v33 - v35) >> 2;
      v43 = (4 * v37);
      v44 = (4 * v37 - 4 * v42);
      *v43 = v23;
      v34 = v43 + 1;
      memcpy(v44, v35, v36);
      v45 = *(a4 + 16);
      *(a4 + 16) = v44;
      *(a4 + 24) = v34;
      *(a4 + 32) = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v33 = v23;
      v34 = v33 + 4;
    }

    *(a4 + 24) = v34;
  }

  return *(a4 + 8);
}

void CoreRecognition::decoder::NGramState::~NGramState(CoreRecognition::decoder::NGramState *this)
{
  *this = &unk_1F2BAFC60;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2BAFC60;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C73EF0);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__split_buffer<std::unique_ptr<CoreRecognition::decoder::BaseBeamScorer>>::~__split_buffer(uint64_t a1)
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

void *CoreRecognition::decoder::LSTMCharLMBeamScorer<CoreRecognition::decoder::LSTMCharLMState>::~LSTMCharLMBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAFA20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void CoreRecognition::decoder::LSTMCharLMBeamScorer<CoreRecognition::decoder::LSTMCharLMState>::~LSTMCharLMBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAFA20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::LSTMCharLMBeamScorer<CoreRecognition::decoder::LSTMCharLMState>::initializeState(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v5 = CVNLPLanguageModelWithStateCreate();
  if (*a3 && CFStringGetLength(*a3))
  {
    CVNLPLanguageModelWithStateUpdateWithContext();
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1B429B4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CVNLPLanguageModelWithState *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

double CoreRecognition::decoder::LSTMCharLMBeamScorer<CoreRecognition::decoder::LSTMCharLMState>::expandState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 8) = 0;
  Copy = CVNLPLanguageModelWithStateCreateCopy();
  v9 = *(a4 + 16);
  *(a4 + 16) = Copy;
  if (v9)
  {
    CFRelease(v9);
  }

  if (*(a1 + 56) == a5)
  {
    return *(a4 + 8);
  }

  CoreRecognition::decoder::stringFromLabel(&cf, a5, *(a1 + 32));
  CVNLPLanguageModelWithStateConditionalProbability();
  v12 = v11;
  CVNLPLanguageModelWithStateUpdateWithContext();
  v13 = logf(v12);
  v14 = *(a1 + 8);
  if (*(a1 + 16) > v13)
  {
    v13 = *(a1 + 16);
  }

  v10 = v14 * v13;
  *(a4 + 8) = v14 * v13;
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void sub_1B429B5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void CoreRecognition::decoder::LSTMCharLMState::~LSTMCharLMState(CoreRecognition::decoder::LSTMCharLMState *this)
{
  *this = &unk_1F2BAFBE8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F2BAFBE8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C73EF0);
}

const void **applesauce::CF::ObjectRef<CVNLPLanguageModelWithState *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *CoreRecognition::decoder::stringFromLabel(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4 * a2);
  if ((v4 - 0x10000) >> 20)
  {
    v6 = 1;
    LOWORD(v5) = v4;
  }

  else
  {
    v5 = ((v4 - 0x10000) >> 10) | 0xFFFFD800;
    chars[1] = v4 & 0x3FF | 0xDC00;
    v6 = 2;
  }

  chars[0] = v5;
  result = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], chars, v6);
  *a1 = result;
  if (result)
  {
    v8 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v8 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B8C73D00](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1B429B794(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void CoreRecognition::decoder::LatinArabicMixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::~LatinArabicMixedScriptPenaltyBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAF890;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C73EF0);
}

BOOL CoreRecognition::decoder::LatinArabicMixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::isBadMixedScript(uint64_t a1, int a2, int a3)
{
  if (!a2 && a3 == 1)
  {
    return 1;
  }

  v3 = !a3 || a3 == 3;
  v4 = v3;
  if (a2 == 1 && v4)
  {
    return 1;
  }

  return a2 == 3 && a3 == 1;
}

void CoreRecognition::decoder::LatinCyrillicMixedScriptPenaltyBeamScorer<CoreRecognition::decoder::MixedScriptState>::~LatinCyrillicMixedScriptPenaltyBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAF890;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C73EF0);
}

void std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>::destroy[abi:ne200100](v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__emplace_back_slow_path<applesauce::CF::ObjectRef<_LXLexicon const*>>(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  v5 = v4 + 1;
  if ((v4 + 1) >> 61)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 2 > v5)
  {
    v5 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v17[4] = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(v8);
  }

  v9 = v4;
  v10 = (8 * v4);
  *v10 = *a2;
  *a2 = 0;
  v11 = &v10[-v9];
  if (v2 != v3)
  {
    v12 = &v10[-v9];
    v13 = v2;
    do
    {
      *v12++ = *v13;
      *v13++ = 0;
    }

    while (v13 != v3);
    do
    {
      v14 = *v2++;
      std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>::destroy[abi:ne200100](v14);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = v10 + 1;
  v15 = *(a1 + 16);
  *(a1 + 16) = 0;
  v17[2] = v2;
  v17[3] = v15;
  v17[0] = v2;
  v17[1] = v2;
  std::__split_buffer<applesauce::CF::ObjectRef<_LXLexicon const*>>::~__split_buffer(v17);
  return v10 + 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<applesauce::CF::ObjectRef<_LXLexicon const*>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>::destroy[abi:ne200100](v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__init_with_size[abi:ne200100]<applesauce::CF::ObjectRef<_LXLexicon const*>*,applesauce::CF::ObjectRef<_LXLexicon const*>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::~LexiconBeamScorer(uint64_t a1)
{
  *a1 = &unk_1F2BAFAB8;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 24);
  std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::~LexiconBeamScorer(uint64_t a1)
{
  *a1 = &unk_1F2BAFAB8;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 24);
  std::vector<applesauce::CF::ObjectRef<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::initializeState(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a3 && CFStringGetLength(*a3) && (v6.length = *(a3 + 16)) != 0)
  {
    v6.location = *(a3 + 8);
    v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *a3, v6);
    cf = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B8C73D00](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    cf = 0;
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (v11 != v10)
  {
    v12 = (a2 + 2);
    v32 = *(a1 + 32);
    do
    {
      v13 = *v11;
      if (*v11)
      {
        CFRetain(*v11);
      }

      RootCursor = LXLexiconCreateRootCursor();
      v15 = RootCursor;
      v33 = RootCursor;
      if (cf)
      {
        v16 = LXCursorCreateByAdvancing();
        v33 = v16;
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        v16 = RootCursor;
      }

      v18 = a2[3];
      v17 = a2[4];
      if (v18 >= v17)
      {
        v20 = v18 - *v12;
        if ((v20 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v21 = v17 - *v12;
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

        v35[4] = a2 + 2;
        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(v23);
        }

        v24 = (8 * v20);
        std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::construct[abi:ne200100]<applesauce::CF::ObjectRef<_LXCursor const*>,applesauce::CF::ObjectRef<_LXCursor const*>&>(v24, v16);
        v25 = a2[2];
        v26 = a2[3];
        v27 = v24 + v25 - v26;
        if (v26 != v25)
        {
          v28 = (v24 + v25 - v26);
          v29 = a2[2];
          do
          {
            *v28++ = *v29;
            *v29++ = 0;
          }

          while (v29 != v26);
          do
          {
            v30 = *v25++;
            std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v30);
          }

          while (v25 != v26);
          v25 = *v12;
        }

        v19 = v24 + 1;
        a2[2] = v27;
        a2[3] = v19;
        v31 = a2[4];
        a2[4] = 0;
        v35[2] = v25;
        v35[3] = v31;
        v35[0] = v25;
        v35[1] = v25;
        std::__split_buffer<applesauce::CF::ObjectRef<_LXCursor const*>>::~__split_buffer(v35);
        v10 = v32;
        v16 = v33;
      }

      else
      {
        if (v16)
        {
          CFRetain(v16);
        }

        *v18 = v16;
        v19 = v18 + 1;
      }

      a2[3] = v19;
      if (v16)
      {
        CFRelease(v16);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1B429C0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, const void *a17)
{
  __cxa_free_exception(v17);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
  _Unwind_Resume(a1);
}

double CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::expandState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 8) = 0;
  *(a4 + 40) = *(a2 + 40);
  if (a1[10] == a5)
  {
    if (a4 == a2)
    {
      return 0.0;
    }

    v8 = (a4 + 16);
    v7 = *(a4 + 16);
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = v9 - v10;
    v12 = *(a4 + 32);
    if (v12 - v7 < v9 - v10)
    {
      v13 = v11 >> 3;
      if (v7)
      {
        v14 = *(a4 + 24);
        v15 = *(a4 + 16);
        if (v14 != v7)
        {
          do
          {
            v16 = *(v14 - 8);
            v14 -= 8;
            std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v16);
          }

          while (v14 != v7);
          v15 = *v8;
        }

        *(a4 + 24) = v7;
        operator delete(v15);
        v12 = 0;
        *v8 = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
      }

      if (!(v13 >> 61))
      {
        v17 = v12 >> 2;
        if (v12 >> 2 <= v13)
        {
          v17 = v13;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (!(v18 >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(v18);
        }
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v49 = *(a4 + 24) - v7;
    if (v49 >= v11)
    {
      v76 = std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::ObjectRef<_LXCursor const*> *,applesauce::CF::ObjectRef<_LXCursor const*> *,applesauce::CF::ObjectRef<_LXCursor const*> *>(*(a2 + 16), *(a2 + 24), *(a4 + 16));
      for (i = *(a4 + 24); i != v76; --i)
      {
        v78 = *(i - 1);
        std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v78);
      }

      *(a4 + 24) = v76;
    }

    else
    {
      v50 = (v10 + v49);
      std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::ObjectRef<_LXCursor const*> *,applesauce::CF::ObjectRef<_LXCursor const*> *,applesauce::CF::ObjectRef<_LXCursor const*> *>(*(a2 + 16), (v10 + v49), *(a4 + 16));
      v51 = *(a4 + 24);
      while (v50 != v9)
      {
        v52 = *v50++;
        std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::construct[abi:ne200100]<applesauce::CF::ObjectRef<_LXCursor const*>,applesauce::CF::ObjectRef<_LXCursor const*>&>(v51++, v52);
      }

      *(a4 + 24) = v51;
    }

    return *(a4 + 8);
  }

  v20 = a1;
  CoreRecognition::decoder::stringFromLabel(&cf, a5, a1[6]);
  v21 = v20[12];
  if (v21)
  {
    v22 = cf;
    v23 = v21();
    v24 = v23;
    if (v23)
    {
      v25 = v20;
      CFRetain(v23);
      v100 = v24;
      v26 = CFGetTypeID(v24);
      v27 = v26 == CFStringGetTypeID();
      v20 = v25;
      if (!v27)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B8C73D00](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v28 = cf;
    cf = v24;
    v100 = v28;
    if (v28)
    {
      CFRelease(v28);
    }
  }

  if (v20[9] != a5 && !MEMORY[0x1B8C736C0](cf))
  {
    v94 = v20;
    v53 = *(a2 + 16);
    v54 = *(a2 + 24);
    if (v53 != v54)
    {
      v55 = (a4 + 16);
      v95 = *(a2 + 24);
      do
      {
        v56 = *v53;
        if (*v53)
        {
          CFRetain(*v53);
        }

        v57 = LXCursorCreateByAdvancing();
        v58 = v57;
        v98 = v57;
        if (!v57)
        {
          goto LABEL_73;
        }

        v60 = *(a4 + 24);
        v59 = *(a4 + 32);
        if (v60 >= v59)
        {
          v61 = v60 - *v55;
          if ((v61 + 1) >> 61)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v62 = v59 - *v55;
          v63 = v62 >> 2;
          if (v62 >> 2 <= (v61 + 1))
          {
            v63 = v61 + 1;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF8)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v63;
          }

          v104 = a4 + 16;
          if (v64)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(v64);
          }

          CFRetain(v58);
          v65 = (8 * v61);
          *v65 = v58;
          v67 = *(a4 + 16);
          v66 = *(a4 + 24);
          v68 = v65 + v67 - v66;
          if (v67 != v66)
          {
            v97 = (v65 + v67 - v66);
            v69 = v97;
            v70 = *(a4 + 16);
            do
            {
              *v69++ = *v70;
              *v70 = 0;
              v70 += 8;
            }

            while (v70 != v66);
            do
            {
              v71 = *v67++;
              std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v71);
            }

            while (v67 != v66);
            v67 = *v55;
            v68 = v97;
            v58 = v98;
          }

          v72 = v65 + 1;
          *(a4 + 16) = v68;
          *(a4 + 24) = v72;
          v73 = *(a4 + 32);
          *(a4 + 32) = 0;
          v102 = v67;
          v103 = v73;
          v100 = v67;
          v101 = v67;
          std::__split_buffer<applesauce::CF::ObjectRef<_LXCursor const*>>::~__split_buffer(&v100);
          *(a4 + 24) = v72;
          v54 = v95;
          if (!v58)
          {
            goto LABEL_73;
          }
        }

        else
        {
          CFRetain(v57);
          *v60 = v58;
          *(a4 + 24) = v60 + 1;
        }

        CFRelease(v58);
LABEL_73:
        if (v56)
        {
          CFRelease(v56);
        }

        ++v53;
      }

      while (v53 != v54);
    }

    if (CVNLPShouldUseLexiconContextLogProb())
    {
      v74 = &CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::expandState(CoreRecognition::decoder::LexiconState const*,unsigned long,CoreRecognition::decoder::LexiconState*,unsigned long)const::CONTEXT_LOG_PROB;
      {
        CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::expandState(CoreRecognition::decoder::LexiconState const*,unsigned long,CoreRecognition::decoder::LexiconState*,unsigned long)const::CONTEXT_LOG_PROB = 0xC007F7427B73E391;
LABEL_119:
        __cxa_guard_release(v75);
        goto LABEL_105;
      }

      goto LABEL_105;
    }

    v79 = *(a4 + 16);
    v80 = *(a4 + 24);
    if (v79 == v80)
    {
      v74 = &CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::expandState(CoreRecognition::decoder::LexiconState const*,unsigned long,CoreRecognition::decoder::LexiconState*,unsigned long)const::WORD_MIN_LOG_PROB;
      {
        CoreRecognition::decoder::LexiconBeamScorer<CoreRecognition::decoder::LexiconState>::expandState(CoreRecognition::decoder::LexiconState const*,unsigned long,CoreRecognition::decoder::LexiconState*,unsigned long)const::WORD_MIN_LOG_PROB = 0xC04205966F2B4F12;
        goto LABEL_119;
      }

LABEL_105:
      v82 = *v74;
LABEL_106:
      v89 = v94[2];
      v90 = *(a4 + 40);
      v91 = v89 - v90;
      if (v82 >= v89 - v90)
      {
        v91 = v82;
      }

      *(a4 + 40) = v90 + v91;
      if (v89 <= v91)
      {
        v89 = v91;
      }

      v48 = v94[1] * v89;
      *(a4 + 8) = v48;
      goto LABEL_111;
    }

    v81 = log(((*(v94 + 4) - *(v94 + 3)) >> 3));
    if (*(v94 + 88))
    {
      v82 = 0.0;
    }

    else
    {
      v82 = -INFINITY;
    }

    v83 = -v81;
    while (1)
    {
      v84 = *v79;
      if (*v79)
      {
        CFRetain(*v79);
      }

      v100 = v84;
      LXCursorConditionalProbability();
      v86 = v83 + v85 * 2.30258509;
      if (v82 <= v86)
      {
        v87 = v82;
      }

      else
      {
        v87 = v83 + v85 * 2.30258509;
      }

      if (v82 <= v86)
      {
        v82 = v86;
      }

      if (v87 == -INFINITY)
      {
        break;
      }

      v88 = exp(v87 - v82);
      v82 = v82 + log1p(v88);
      if (v84)
      {
        goto LABEL_101;
      }

LABEL_102:
      if (++v79 == v80)
      {
        goto LABEL_106;
      }
    }

    if (!v84)
    {
      goto LABEL_102;
    }

LABEL_101:
    CFRelease(v84);
    goto LABEL_102;
  }

  v30 = v20[3];
  v29 = v20[4];
  if (v30 != v29)
  {
    v31 = (a4 + 16);
    v96 = v29;
    do
    {
      RootCursor = LXLexiconCreateRootCursor();
      v33 = RootCursor;
      v35 = *(a4 + 24);
      v34 = *(a4 + 32);
      if (v35 >= v34)
      {
        v36 = *v31;
        v37 = (v35 - *v31) >> 3;
        v38 = v37 + 1;
        if ((v37 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v39 = v34 - v36;
        if (v39 >> 2 > v38)
        {
          v38 = v39 >> 2;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        v104 = a4 + 16;
        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::ObjectRef<_LXLexicon const*>>>(v40);
        }

        v41 = v37;
        v42 = (8 * v37);
        *v42 = v33;
        v43 = &v42[-v41];
        if (v36 != v35)
        {
          v44 = &v42[-v41];
          v45 = v36;
          do
          {
            *v44++ = *v45;
            *v45++ = 0;
          }

          while (v45 != v35);
          do
          {
            v46 = *v36++;
            std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v46);
          }

          while (v36 != v35);
          v36 = *v31;
        }

        *(a4 + 16) = v43;
        *(a4 + 24) = v42 + 1;
        v47 = *(a4 + 32);
        *(a4 + 32) = 0;
        v102 = v36;
        v103 = v47;
        v100 = v36;
        v101 = v36;
        std::__split_buffer<applesauce::CF::ObjectRef<_LXCursor const*>>::~__split_buffer(&v100);
        *(a4 + 24) = v42 + 1;
        v29 = v96;
      }

      else
      {
        *v35 = RootCursor;
        *(a4 + 24) = v35 + 1;
      }

      v30 += 8;
    }

    while (v30 != v29);
  }

  *(a4 + 40) = 0;
  v48 = *(a4 + 8);
LABEL_111:
  if (cf)
  {
    CFRelease(cf);
  }

  return v48;
}

void sub_1B429C83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, const void *a19, const void *a20)
{
  __cxa_free_exception(v20);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a20);

  applesauce::CF::StringRef::~StringRef(&a19);
  _Unwind_Resume(a1);
}

void CoreRecognition::decoder::LexiconState::~LexiconState(CoreRecognition::decoder::LexiconState *this)
{
  *this = &unk_1F2BAFC10;
  v1 = (this + 16);
  std::vector<applesauce::CF::ObjectRef<_LXCursor const*>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F2BAFC10;
  v1 = (this + 16);
  std::vector<applesauce::CF::ObjectRef<_LXCursor const*>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1B8C73EF0);
}

void std::vector<applesauce::CF::ObjectRef<_LXCursor const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void **applesauce::CF::ObjectRef<_LXCursor const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::construct[abi:ne200100]<applesauce::CF::ObjectRef<_LXCursor const*>,applesauce::CF::ObjectRef<_LXCursor const*>&>(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

uint64_t std::__split_buffer<applesauce::CF::ObjectRef<_LXCursor const*>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::allocator<applesauce::CF::ObjectRef<_LXCursor const*>>::destroy[abi:ne200100](v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::ObjectRef<_LXCursor const*> *,applesauce::CF::ObjectRef<_LXCursor const*> *,applesauce::CF::ObjectRef<_LXCursor const*> *>(const void **a1, const void **a2, const void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *a3;
      v7 = *v5;
      *a3 = *v5;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      ++v5;
      ++a3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::~WordLMBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAFB28;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

void CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::~WordLMBeamScorer(void *a1)
{
  *a1 = &unk_1F2BAFB28;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x1B8C73EF0);
}

void CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::initializeState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 && CFStringGetLength(*a3))
  {
    if (*a3 && CFStringGetLength(*a3) && (v4.length = *(a3 + 8)) != 0)
    {
      v4.location = 0;
      v5 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *a3, v4);
      v8 = v5;
      if (v5)
      {
        v6 = CFGetTypeID(v5);
        if (v6 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B8C73D00](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    CVNLPWordTokenIDsForString();
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_1B429CE28(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v2 - 40));
  _Unwind_Resume(a1);
}

double CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::expandState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  a4[1] = 0;
  if (a4 == a2)
  {
    v9 = (a4 + 5);
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4 + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    v9 = (a4 + 5);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4 + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  }

  if (*(a1 + 72) == a5)
  {
    result = *(a2 + 8);
    *(a4 + 1) = result;
  }

  else
  {
    if (*(a1 + 64) == a5)
    {
      CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::queryLanguageModelAndUpdateState(a1, a4, a5);
    }

    else
    {
      v12 = a4[6];
      v11 = a4[7];
      if (v12 >= v11)
      {
        v14 = *v9;
        v15 = v12 - *v9;
        v16 = (v15 >> 3) + 1;
        if (v16 >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v17 = v11 - v14;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
        v19 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v19 = v16;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v9, v19);
        }

        v20 = (8 * (v15 >> 3));
        *v20 = a5;
        v13 = v20 + 1;
        memcpy(0, v14, v15);
        v21 = a4[5];
        a4[5] = 0;
        a4[6] = v13;
        a4[7] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = a5;
        v13 = v12 + 1;
      }

      a4[6] = v13;
    }

    return *(a4 + 1);
  }

  return result;
}

double CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::finalizeState(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if ((*(a1 + 80) & 1) == 0 && *(a2 + 40) != *(a2 + 48))
  {
    CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::queryLanguageModelAndUpdateState(a1, a2, *(a1 + 64));
    return *(a2 + 8);
  }

  return result;
}

void CoreRecognition::decoder::WordLMState::~WordLMState(CoreRecognition::decoder::WordLMState *this)
{
  *this = &unk_1F2BAFC38;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1F2BAFC38;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1B8C73EF0);
}

void ___ZNK15CoreRecognition7decoder16WordLMBeamScorerINS0_11WordLMStateEE15initializeStateEPS2_RKNS0_7ContextE_block_invoke(uint64_t a1, void *a2, int TokenIDForString)
{
  v5 = a2;
  if (!TokenIDForString)
  {
    v22 = v5;
    v6 = [v5 lowercaseString];
    TokenIDForString = LMLanguageModelGetTokenIDForString();

    v5 = v22;
  }

  v7 = *(a1 + 40);
  v9 = v7[3];
  v8 = v7[4];
  if (v9 >= v8)
  {
    v23 = v5;
    v11 = v7[2];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v7 + 2), v17);
    }

    v18 = (v9 - v11) >> 2;
    v19 = (4 * v13);
    v20 = (4 * v13 - 4 * v18);
    *v19 = TokenIDForString;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = v7[2];
    v7[2] = v20;
    v7[3] = v10;
    v7[4] = 0;
    if (v21)
    {
      operator delete(v21);
    }

    v5 = v23;
  }

  else
  {
    *v9 = TokenIDForString;
    v10 = v9 + 4;
  }

  v7[3] = v10;
}

void CoreRecognition::decoder::WordLMBeamScorer<CoreRecognition::decoder::WordLMState>::queryLanguageModelAndUpdateState(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2[5];
  v8 = a2[6];
  v6 = (a2 + 5);
  if (v7 != v8)
  {
    if (*(a1 + 64) != a3)
    {
      v10 = a2[7];
      if (v8 >= v10)
      {
        v11 = v8 - v7;
        v12 = (v8 - v7) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v14 = v10 - v7;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
        v16 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v15)
        {
          v16 = v13;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v6, v16);
        }

        v17 = v12;
        v18 = (8 * v12);
        v19 = &v18[-v17];
        *v18 = a3;
        v8 = (v18 + 1);
        memcpy(v19, v7, v11);
        v20 = a2[5];
        a2[5] = v19;
        a2[6] = v8;
        a2[7] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v8 = a3;
        v8 += 8;
      }

      a2[6] = v8;
      v7 = a2[5];
    }

    __p = 0;
    p_p = 0;
    v67 = 0;
    v21 = v8 - v7;
    if (v8 != v7)
    {
      if (((v21 >> 3) & 0x8000000000000000) == 0)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__p, v21 >> 3);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v22 = 0;
    v64 = a2;
    v23 = a2[5];
    for (i = a2[6]; v23 != i; ++v23)
    {
      v25 = *(*(a1 + 40) + 4 * *v23);
      v26 = (v25 - 0x10000) >> 20;
      if (v26)
      {
        v27 = *(*(a1 + 40) + 4 * *v23);
      }

      else
      {
        v27 = ((v25 - 0x10000) >> 10) - 10240;
      }

      if (v22 >= v67)
      {
        v28 = __p;
        v29 = v22 - __p;
        v30 = (v22 - __p) >> 1;
        if (v30 <= -2)
        {
          goto LABEL_75;
        }

        if (v67 - __p <= v30 + 1)
        {
          v31 = v30 + 1;
        }

        else
        {
          v31 = v67 - __p;
        }

        v32 = 0x7FFFFFFFFFFFFFFFLL;
        if (v67 - __p < 0x7FFFFFFFFFFFFFFELL)
        {
          v32 = v31;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__p, v32);
        }

        v33 = v30;
        v34 = (2 * v30);
        v35 = &v34[-v33];
        *v34 = v27;
        v22 = (v34 + 1);
        memcpy(v35, v28, v29);
        v36 = __p;
        __p = v35;
        p_p = v22;
        v67 = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v22 = v27;
        v22 += 2;
      }

      p_p = v22;
      if (!v26)
      {
        v37 = v25 & 0x3FF | 0xDC00;
        if (v22 >= v67)
        {
          v38 = __p;
          v39 = v22 - __p;
          v40 = (v22 - __p) >> 1;
          if (v40 < -1)
          {
LABEL_75:
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          if (v67 - __p <= v40 + 1)
          {
            v41 = v40 + 1;
          }

          else
          {
            v41 = v67 - __p;
          }

          v42 = 0x7FFFFFFFFFFFFFFFLL;
          if (v67 - __p < 0x7FFFFFFFFFFFFFFELL)
          {
            v42 = v41;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__p, v42);
          }

          v43 = v40;
          v44 = (2 * v40);
          v45 = &v44[-v43];
          *v44 = v37;
          v22 = (v44 + 1);
          memcpy(v45, v38, v39);
          v46 = __p;
          __p = v45;
          p_p = v22;
          v67 = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *v22 = v37;
          v22 += 2;
        }

        p_p = v22;
      }
    }

    v47 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], __p, (v22 - __p) >> 1);
    cf = v47;
    if (v47)
    {
      v48 = CFGetTypeID(v47);
      if (v48 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B8C73D00](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    if (__p)
    {
      p_p = __p;
      operator delete(__p);
    }

    __p = 0;
    p_p = &__p;
    v67 = 0x2020000000;
    v68 = 0;
    if (*(a1 + 16) / 2.30258509 >= -15.654)
    {
      v49 = *(a1 + 16) / 2.30258509;
    }

    else
    {
      v49 = -15.654;
    }

    TokenIDForString = LMLanguageModelGetTokenIDForString();
    if (TokenIDForString)
    {
      v51 = (v64 + 2);
      LMLanguageModelConditionalProbability();
      if (v52 < v49)
      {
        v52 = v49;
      }

      p_p[3] = v52;
      v54 = v64[3];
      v53 = v64[4];
      if (v54 >= v53)
      {
        v56 = *v51;
        v57 = v54 - *v51;
        v58 = (v57 >> 2) + 1;
        if (v58 >> 62)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v59 = v53 - v56;
        if (v59 >> 1 > v58)
        {
          v58 = v59 >> 1;
        }

        v15 = v59 >= 0x7FFFFFFFFFFFFFFCLL;
        v60 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v15)
        {
          v60 = v58;
        }

        if (v60)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v64 + 2), v60);
        }

        v61 = (4 * (v57 >> 2));
        *v61 = TokenIDForString;
        v55 = v61 + 1;
        memcpy(0, v56, v57);
        v62 = v64[2];
        v64[2] = 0;
        v64[3] = v55;
        v64[4] = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v54 = TokenIDForString;
        v55 = v54 + 4;
      }

      v64[3] = v55;
    }

    else
    {
      CVNLPWordTokenIDsForString();
    }

    v64[6] = v64[5];
    *(v64 + 1) = *(a1 + 8) * p_p[3] * 2.30258509;
    _Block_object_dispose(&__p, 8);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1B429D7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22)
{
  __cxa_free_exception(v22);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK15CoreRecognition7decoder16WordLMBeamScorerINS0_11WordLMStateEE32queryLanguageModelAndUpdateStateEPS2_m_block_invoke(uint64_t a1, void *a2, int TokenIDForString)
{
  v22 = a2;
  if (TokenIDForString || ([v22 lowercaseString], v5 = objc_claimAutoreleasedReturnValue(), TokenIDForString = LMLanguageModelGetTokenIDForString(), v5, TokenIDForString))
  {
    LMLanguageModelConditionalProbability();
    if (v6 < *(a1 + 56))
    {
      v6 = *(a1 + 56);
    }
  }

  else
  {
    v6 = *(a1 + 56);
  }

  *(*(*(a1 + 32) + 8) + 24) = v6 + *(*(*(a1 + 32) + 8) + 24);
  v7 = *(a1 + 48);
  v9 = v7[3];
  v8 = v7[4];
  if (v9 >= v8)
  {
    v11 = v7[2];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((v7 + 2), v17);
    }

    v18 = (v9 - v11) >> 2;
    v19 = (4 * v13);
    v20 = (4 * v13 - 4 * v18);
    *v19 = TokenIDForString;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = v7[2];
    v7[2] = v20;
    v7[3] = v10;
    v7[4] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = TokenIDForString;
    v10 = v9 + 4;
  }

  v7[3] = v10;
}

void *std::vector<std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<CoreRecognition::decoder::DecodingPath>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::DecodingPath>>(result, a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B429DB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CoreRecognition::decoder::DecodingPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *,std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<unsigned char> *>>(a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t CoreRecognition::decoder::BeamSearchState<CoreRecognition::decoder::CombinedBeamState>::~BeamSearchState(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 24);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::destroy(*(a1 + 8));
  return a1;
}

void CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>::getReversePrefix(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1B429DDA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreRecognition::decoder::BeamSearchState<CoreRecognition::decoder::CombinedBeamState>::BeamSearchState(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v3 = a2 + 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2 + 1;
  if (a2 != -1)
  {
    if (v3 < 0x276276276276277)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>(v3);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_1B429DE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::destroy(*v9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>*>(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v14[5] = v3;
    v14[6] = v4;
    v6 = a3 + 64;
    v7 = a1;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = *(v7 + 3);
      *(a3 + 32) = *(v7 + 2);
      *(a3 + 48) = v10;
      *a3 = v8;
      *(a3 + 16) = v9;
      *(a3 + 72) = v7[9];
      *(a3 + 64) = &unk_1F2BAFB00;
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      *(a3 + 80) = 0;
      *(a3 + 80) = *(v7 + 5);
      *(a3 + 96) = v7[12];
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      v7 += 13;
      a3 += 104;
      v6 += 104;
    }

    while (v7 != a2);
    v11 = a1 + 10;
    v12 = a1 + 8;
    do
    {
      *(v11 - 2) = &unk_1F2BAFB00;
      v14[0] = v11;
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](v14);
      v13 = v11 + 3;
      v11 += 13;
      v12 += 13;
    }

    while (v13 != a2);
  }
}

uint64_t std::__split_buffer<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    *(i - 40) = &unk_1F2BAFB00;
    v5 = (i - 24);
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 40;
    do
    {
      v6 = v4 - 104;
      *(v4 - 40) = &unk_1F2BAFB00;
      v7 = (v4 - 24);
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](&v7);
      v5 -= 104;
      v4 = v6;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *(v2 + 64) = &unk_1F2BAFB00;
    v4 = (v2 + 80);
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1B8C73EF0](v2, 0x10A0C407BC771E5);
  }

  return a1;
}

void std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::destroy(*a1);
    std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::destroy(a1[1]);
    v2 = a1[4];
    if (v2)
    {
      a1[5] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::__emplace_unique_key_args<std::vector<unsigned long>,std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *&>(uint64_t a1, void *a2, void *a3)
{
  result = std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::__find_equal<std::vector<unsigned long>>(a1, &v4, a2, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::__find_equal<std::vector<unsigned long>>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    do
    {
      while (1)
      {
        v9 = v5;
        v10 = v5[4];
        v11 = v5[5];
        if (!std::less<std::vector<unsigned long>>::operator()[abi:ne200100](a3, a4, v10, v11))
        {
          break;
        }

        v5 = *v9;
        v6 = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::vector<unsigned long>>::operator()[abi:ne200100](v10, v11, a3, a4))
      {
        break;
      }

      v6 = v9 + 1;
      v5 = v9[1];
    }

    while (v5);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_9:
  *a2 = v9;
  return v6;
}

BOOL std::less<std::vector<unsigned long>>::operator()[abi:ne200100](void *a1, void *a2, void *a3, void *a4)
{
  if (a4 - a3 >= a2 - a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = a4 - a3;
  }

  if (v4)
  {
    v5 = 8 * v4;
    v6 = &a1[v4];
    while (*a1 == *a3)
    {
      ++a1;
      ++a3;
      v5 -= 8;
      if (!v5)
      {
        a1 = v6;
        break;
      }
    }
  }

  if (a3 == a4)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  return *a1 < *a3;
}

void *CoreRecognition::decoder::ActivationPruning::pruneActivations(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if (!(v2 >> 60))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t CoreRecognition::decoder::BeamSearchQueue<CoreRecognition::decoder::CombinedBeamState>::getFreeCandidate(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = 0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3);
  if (v5 >= *(a1 + 24))
  {
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,std::__wrap_iter<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>(v2, v3, 0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3));
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::clear[abi:ne200100]((*(a1 + 8) - 24));
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v3 >= v6)
    {
      if (v5 + 1 > 0x276276276276276)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v8 = 0x4EC4EC4EC4EC4EC5 * ((v6 - v2) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= v5 + 1)
      {
        v9 = v5 + 1;
      }

      if (v8 >= 0x13B13B13B13B13BLL)
      {
        v10 = 0x276276276276276;
      }

      else
      {
        v10 = v9;
      }

      v18[4] = a1;
      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>>(v10);
      }

      v11 = 104 * v5;
      v12 = 104 * v5;
      *(v12 + 64) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v12 + 64) = &unk_1F2BAFB00;
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(v11 + 80) = 0;
      v7 = 104 * v5 + 104;
      v13 = *(a1 + 8);
      v14 = 104 * v5 + *a1 - v13;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>*>(*a1, v13, v11 + *a1 - v13);
      v15 = *a1;
      *a1 = v14;
      *(a1 + 8) = v7;
      v16 = *(a1 + 16);
      *(a1 + 16) = 0;
      v18[2] = v15;
      v18[3] = v16;
      v18[0] = v15;
      v18[1] = v15;
      std::__split_buffer<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>>::~__split_buffer(v18);
    }

    else
    {
      *(v3 + 64) = 0u;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 64) = &unk_1F2BAFB00;
      *(v3 + 88) = 0;
      *(v3 + 96) = 0;
      *(v3 + 80) = 0;
      v7 = v3 + 104;
    }

    *(a1 + 8) = v7;
  }

  return v7 - 104;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,std::__wrap_iter<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v30[11] = v3;
    v30[12] = v4;
    v8 = 0;
    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    v23 = *a1;
    v24 = *(a1 + 16);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    v29 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    v9 = (a3 - 2) >> 1;
    v10 = a1;
    do
    {
      v11 = v10;
      v10 += 104 * v8 + 104;
      v12 = 2 * v8;
      v8 = (2 * v8) | 1;
      v13 = v12 + 2;
      if (v13 < a3 && *(v10 + 32) + *(v10 + 48) > *(v10 + 136) + *(v10 + 152))
      {
        v10 += 104;
        v8 = v13;
      }

      v14 = *v10;
      v15 = *(v10 + 16);
      v16 = *(v10 + 48);
      *(v11 + 32) = *(v10 + 32);
      *(v11 + 48) = v16;
      *v11 = v14;
      *(v11 + 16) = v15;
      *(v11 + 72) = *(v10 + 72);
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate((v11 + 80));
      v17 = (v10 + 80);
      *(v11 + 80) = *(v10 + 80);
      *(v11 + 96) = *(v10 + 96);
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
    }

    while (v8 <= v9);
    v18 = (a2 - 104);
    if (a2 - 104 == v10)
    {
      *(v10 + 32) = v25;
      *(v10 + 48) = v26;
      *v10 = v23;
      *(v10 + 16) = v24;
      *(v10 + 72) = v27;
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate(v17);
      *(v10 + 80) = v28;
      *(v10 + 96) = v29;
      v28 = 0uLL;
      v29 = 0;
    }

    else
    {
      v19 = *v18;
      v20 = *(a2 - 88);
      v21 = *(a2 - 56);
      *(v10 + 32) = *(a2 - 72);
      *(v10 + 48) = v21;
      *v10 = v19;
      *(v10 + 16) = v20;
      *(v10 + 72) = *(a2 - 32);
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate(v17);
      v22 = (a2 - 24);
      *(v10 + 80) = *(a2 - 24);
      *(v10 + 96) = *(a2 - 8);
      *v22 = 0;
      v22[1] = 0;
      v22[2] = 0;
      *(a2 - 72) = v25;
      *(a2 - 56) = v26;
      *v18 = v23;
      *(a2 - 88) = v24;
      *(a2 - 32) = v27;
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate((a2 - 24));
      *v22 = v28;
      *(a2 - 8) = v29;
      v28 = 0uLL;
      v29 = 0;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>(a1, v10 + 104, 0x4EC4EC4EC4EC4EC5 * ((v10 + 104 - a1) >> 3));
    }

    v30[0] = &v28;
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](v30);
  }
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v21[9] = v3;
    v21[10] = v4;
    v7 = v5 >> 1;
    v8 = (a1 + 104 * (v5 >> 1));
    if (*(v8 + 4) + *(v8 + 6) > *(a2 - 72) + *(a2 - 56))
    {
      v9 = (a2 - 104);
      v16 = *(a2 - 72);
      v17 = *(a2 - 56);
      v14 = *(a2 - 104);
      v15 = *(a2 - 88);
      v18 = *(a2 - 32);
      v19 = *(a2 - 24);
      v20 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        v12 = v8[1];
        v13 = v8[3];
        v9[2] = v8[2];
        v9[3] = v13;
        *v9 = v11;
        v9[1] = v12;
        *(v9 + 9) = *(v8 + 9);
        std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate(v9 + 10);
        v9[5] = v10[5];
        *(v9 + 12) = *(v10 + 12);
        *(v10 + 10) = 0;
        *(v10 + 11) = 0;
        *(v10 + 12) = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 104 * v7);
        v9 = v10;
      }

      while (*(v8 + 4) + *(v8 + 6) > *&v16 + *&v17);
      v10[2] = v16;
      v10[3] = v17;
      *v10 = v14;
      v10[1] = v15;
      *(v10 + 9) = v18;
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate(v10 + 10);
      v10[5] = v19;
      *(v10 + 12) = v20;
      v19 = 0uLL;
      v20 = 0;
      v21[0] = &v19;
      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__destroy_vector::operator()[abi:ne200100](v21);
    }
  }
}

void std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__assign_with_size[abi:ne200100]<std::shared_ptr<CoreRecognition::decoder::BaseState>*,std::shared_ptr<CoreRecognition::decoder::BaseState>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    v15 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<CoreRecognition::decoder::BaseState> *,std::shared_ptr<CoreRecognition::decoder::BaseState> *,std::shared_ptr<CoreRecognition::decoder::BaseState> *>(a2, a3, v7);
    for (i = a1[1]; i != v15; i -= 2)
    {
      v17 = *(i - 1);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    a1[1] = v15;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<CoreRecognition::decoder::BaseState> *,std::shared_ptr<CoreRecognition::decoder::BaseState> *,std::shared_ptr<CoreRecognition::decoder::BaseState> *>(a2, (a2 + v11), v7);
    for (j = a1[1]; v12 != a3; j += 2)
    {
      v14 = v12[1];
      *j = *v12;
      j[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = j;
  }
}

void std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<CoreRecognition::decoder::BaseState>>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<CoreRecognition::decoder::BaseState> *,std::shared_ptr<CoreRecognition::decoder::BaseState> *,std::shared_ptr<CoreRecognition::decoder::BaseState> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__copy_impl::operator()[abi:ne200100]<unsigned long const*,unsigned long const*,std::back_insert_iterator<std::vector<unsigned long>>>(void *a1, void *a2, const void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a3[1];
    do
    {
      v7 = a3[2];
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a3, v13);
        }

        *(8 * v10) = *v5;
        v6 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6 = *v5;
        v6 += 8;
      }

      a3[1] = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::__map_value_compare<std::vector<unsigned long>,std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>,std::less<std::vector<unsigned long>>,true>,std::allocator<std::__value_type<std::vector<unsigned long>,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> *>>>::find<std::vector<unsigned long>>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return v3;
  }

  v7 = a1 + 8;
  do
  {
    v8 = std::less<std::vector<unsigned long>>::operator()[abi:ne200100](*(v4 + 32), *(v4 + 40), a2, a3);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v7 == v3 || std::less<std::vector<unsigned long>>::operator()[abi:ne200100](a2, a3, *(v7 + 32), *(v7 + 40)))
  {
    return v3;
  }

  return v7;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CoreRecognition::decoder::ActivationPruning::pruneActivations(CoreRecognition::decoder::detail::ActivationsIterator<float>,CoreRecognition::decoder::detail::ActivationsIterator<float>)::{lambda(std::pair<unsigned long,float> const&,std::pair<unsigned long,float> const&)#1} &,std::__wrap_iter<std::pair<unsigned long,float>*>>(uint64_t result, uint64_t a2, float *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 4)
    {
      v5 = v3 >> 3;
      v6 = (v3 >> 3) | 1;
      v7 = (result + 16 * v6);
      v8 = v5 + 2;
      if (v8 < a2 && v7[2] > v7[6])
      {
        v7 += 4;
        v6 = v8;
      }

      v9 = v7[2];
      v10 = a3[2];
      if (v9 <= v10)
      {
        v11 = *a3;
        do
        {
          v12 = a3;
          a3 = v7;
          *v12 = *v7;
          v12[2] = v9;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 16 * v6);
          v14 = v13 + 2;
          if (v14 < a2 && v7[2] > v7[6])
          {
            v7 += 4;
            v6 = v14;
          }

          v9 = v7[2];
        }

        while (v9 <= v10);
        *a3 = v11;
        a3[2] = v10;
      }
    }
  }

  return result;
}

uint64_t std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__init_with_size[abi:ne200100]<std::shared_ptr<CoreRecognition::decoder::BaseState>*,std::shared_ptr<CoreRecognition::decoder::BaseState>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<CoreRecognition::decoder::BaseState>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CoreRecognition::decoder::CTCBeamSearchDecoder<CoreRecognition::decoder::AdditiveCombiningBeamScorer<CoreRecognition::decoder::CombinedBeamState>,CoreRecognition::decoder::CharacterSegmentedPathBuilder<CoreRecognition::decoder::CombinedBeamState>>::decode(CoreRecognition::decoder::ActivationMatrix const&,CoreRecognition::decoder::Context const&)::{lambda(CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> const*,CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState> const*)#1} &,std::__wrap_iter<CoreRecognition::decoder::BeamEntry<CoreRecognition::decoder::CombinedBeamState>**>>(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) | 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      if (v8 < a2 && *(*v7 + 32) + *(*v7 + 48) > *(v7[1] + 32) + *(v7[1] + 48))
      {
        ++v7;
        v6 = v8;
      }

      v9 = *v7;
      v10 = *a3;
      v11 = *(*a3 + 32) + *(*a3 + 48);
      if (*(*v7 + 32) + *(*v7 + 48) <= v11)
      {
        do
        {
          *a3 = v9;
          a3 = v7;
          if (v4 < v6)
          {
            break;
          }

          v12 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 8 * v6);
          v13 = v12 + 2;
          if (v13 < a2 && *(*v7 + 32) + *(*v7 + 48) > *(v7[1] + 32) + *(v7[1] + 48))
          {
            ++v7;
            v6 = v13;
          }

          v9 = *v7;
        }

        while (*(*v7 + 32) + *(*v7 + 48) <= v11);
        *a3 = v10;
      }
    }
  }

  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

NSRect NSIntegralRect(NSRect aRect)
{
  MEMORY[0x1EEDC6FD0](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRect NSIntersectionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x1EEDC6FE8](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E30]();
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

void operator delete()
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}