void sub_1B2CDB408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<md::SelectedEntityInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::SelectedEntityInfo,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == *(a2 + 120))
  {
    if (*(a1 + 120))
    {
      *a1 = *a2;
      result.n128_f64[0] = geo::OrientedBox<double,3u,double,double>::operator=(a1 + 16, a2 + 16);
    }
  }

  else if (*(a1 + 120))
  {
    *(a1 + 120) = 0;
  }

  else
  {
    *a1 = *a2;
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 72);
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
    *(a1 + 72) = result;
    *(a1 + 120) = 1;
  }

  return result;
}

unint64_t md::EntityDebugHighlightLogic::updateSelectedEntity(unint64_t this)
{
  v1 = *(this + 120);
  v2 = v1[57];
  v3 = v1[58];
  if (v2 == v3)
  {
    if (*(this + 272))
    {
LABEL_13:
      *(this + 280) = 1;
      v7 = v1[48];
      v6 = v1[49];
      if (v7 != v6)
      {
        while (*(this + 152) != *v7)
        {
          if (++v7 == v6)
          {
            return this;
          }
        }

        *(this + 280) = 0;
      }
    }
  }

  else
  {
    v4 = *(this + 272);
LABEL_3:
    v5 = v4;
    do
    {
      if ((v5 & 1) == 0)
      {
        v8 = std::__throw_bad_optional_access[abi:nn200100]();
        return std::__introsort<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,false>(v8, v9, v10, v11);
      }

      if (*(*(this + 152) + 40) == *v2)
      {
        v4 = 0;
        *(this + 280) = 1;
        *(this + 272) = 0;
        if (++v2 != v3)
        {
          goto LABEL_3;
        }

        return this;
      }

      ++v2;
      v5 = 1;
    }

    while (v2 != v3);
    if (v4)
    {
      goto LABEL_13;
    }
  }

  return this;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  v169 = *MEMORY[0x1E69E9840];
  while (2)
  {
    v7 = (a2 - 5);
    v159 = a2 - 15;
    v160 = a2 - 10;
    v8 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = v8;
          v9 = a2 - v8;
          v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v8) >> 3);
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v83 = *(v8 + 40);
                v84 = *(a2 - 5);
                v81 = a2 - 5;
                v85 = v84;
                if (v83 >= *v8)
                {
                  if (v85 >= v83)
                  {
                    return result;
                  }

                  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>((v8 + 40), v81);
                  if (*(v8 + 40) >= *v8)
                  {
                    return result;
                  }

                  v80 = v8;
                  v79 = (v8 + 40);
                }

                else
                {
                  if (v85 < v83)
                  {
                    goto LABEL_132;
                  }

                  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v8, (v8 + 40));
                  if (*v81 >= *(v8 + 40))
                  {
                    return result;
                  }

                  v80 = (v8 + 40);
LABEL_133:
                  v79 = v81;
                }

LABEL_134:

                return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v80, v79);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,0>(v8, (v8 + 40), (v8 + 80), a2 - 5);
              case 5:
                result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,0>(v8, (v8 + 40), (v8 + 80), (v8 + 120));
                v78 = *(a2 - 5);
                v77 = a2 - 5;
                if (v78 >= *(v8 + 120))
                {
                  return result;
                }

                result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>((v8 + 120), v77);
                if (*(v8 + 120) >= *(v8 + 80))
                {
                  return result;
                }

                result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>((v8 + 80), (v8 + 120));
                if (*(v8 + 80) >= *(v8 + 40))
                {
                  return result;
                }

                result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>((v8 + 40), (v8 + 80));
                if (*(v8 + 40) >= *v8)
                {
                  return result;
                }

                v79 = (v8 + 40);
                v80 = v8;
                goto LABEL_134;
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
              v82 = *(a2 - 5);
              v81 = a2 - 5;
              if (v82 >= *v8)
              {
                return result;
              }

LABEL_132:
              v80 = v8;
              goto LABEL_133;
            }
          }

          if (v9 <= 959)
          {
            if (a4)
            {
              if (v8 != a2)
              {
                v86 = v8 + 40;
                if ((v8 + 40) != a2)
                {
                  v87 = v8;
                  do
                  {
                    v88 = v86;
                    if (v87[5] < *v87)
                    {
                      v89 = *v86;
                      v90 = *(v86 + 16);
                      v166 = *(v86 + 32);
                      v164 = v89;
                      v165 = v90;
                      v91 = *v87;
                      v92 = v86;
                      while (1)
                      {
                        v93 = 0;
                        v94 = v87;
                        *v92 = v91;
                        do
                        {
                          *(v87 + v93 + 48) = *(v87 + v93 + 8);
                          v93 += 4;
                        }

                        while (v93 != 12);
                        for (i = 0; i != 12; i += 4)
                        {
                          *(v94 + i + 60) = *(v94 + i + 20);
                        }

                        v92[4] = v94[4];
                        if (v94 == v8)
                        {
                          break;
                        }

                        v87 = v94 - 5;
                        v91 = *(v94 - 5);
                        v92 = v94;
                        if (*&v164 >= v91)
                        {
                          v96 = v94;
                          goto LABEL_154;
                        }
                      }

                      v96 = v8;
LABEL_154:
                      *v96 = v164;
                      for (j = 8; j != 20; j += 4)
                      {
                        *(v94 + j) = *(&v164 + j);
                      }

                      do
                      {
                        *(v94 + j) = *(&v164 + j);
                        j += 4;
                      }

                      while (j != 32);
                      v96[4] = v166;
                    }

                    v86 = v88 + 40;
                    v87 = v88;
                  }

                  while ((v88 + 40) != a2);
                }
              }
            }

            else if (v8 != a2)
            {
              v148 = v8 + 40;
              if ((v8 + 40) != a2)
              {
                do
                {
                  v149 = v148;
                  if (*(v6 + 5) < *v6)
                  {
                    v150 = *v148;
                    v151 = *(v148 + 16);
                    v166 = *(v148 + 32);
                    v164 = v150;
                    v165 = v151;
                    v152 = *v6;
                    v153 = v148;
                    do
                    {
                      v154 = 0;
                      v155 = v6;
                      *v153 = v152;
                      do
                      {
                        *(v6 + v154 + 48) = *(v6 + v154 + 8);
                        v154 += 4;
                      }

                      while (v154 != 12);
                      for (k = 0; k != 12; k += 4)
                      {
                        *(v6 + k + 60) = *(v6 + k + 20);
                      }

                      v6 -= 5;
                      v152 = *(v155 - 5);
                      v153[4] = v155[4];
                      v153 = v155;
                    }

                    while (*&v164 < v152);
                    v157 = 0;
                    *v155 = v164;
                    do
                    {
                      *(v6 + v157 + 48) = *(&v164 + v157 + 8);
                      v157 += 4;
                    }

                    while (v157 != 12);
                    for (m = 0; m != 12; m += 4)
                    {
                      *(v6 + m + 60) = *(&v165 + m + 4);
                    }

                    *(v155 + 4) = v166;
                  }

                  v148 = (v149 + 5);
                  v6 = v149;
                }

                while (v149 + 5 != a2);
              }
            }

            return result;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v98 = (v10 - 2) >> 1;
              v99 = v98;
              do
              {
                v100 = v99;
                if (v98 >= v99)
                {
                  v101 = (2 * v99) | 1;
                  v102 = (v8 + 40 * v101);
                  if (2 * v99 + 2 < v10 && *v102 < v102[5])
                  {
                    v102 += 5;
                    v101 = 2 * v99 + 2;
                  }

                  v103 = (v8 + 40 * v99);
                  v104 = *v102;
                  if (*v102 >= *v103)
                  {
                    v105 = *v103;
                    v106 = *(v103 + 1);
                    v166 = *(v103 + 4);
                    v164 = v105;
                    v165 = v106;
                    while (1)
                    {
                      v107 = v102;
                      *v103 = v104;
                      v108 = v102 + 1;
                      for (n = 8; n != 20; n += 4)
                      {
                        *(v103 + n) = *(v102 + n);
                      }

                      v110 = v102 + 5;
                      for (ii = 20; ii != 32; ii += 4)
                      {
                        *(v103 + ii) = *(v107 + ii);
                      }

                      v103[4] = v107[4];
                      if (v98 < v101)
                      {
                        break;
                      }

                      v112 = 2 * v101;
                      v101 = (2 * v101) | 1;
                      v102 = (v8 + 40 * v101);
                      v113 = v112 + 2;
                      if (v113 < v10 && *v102 < v102[5])
                      {
                        v102 += 5;
                        v101 = v113;
                      }

                      v104 = *v102;
                      v114 = v164;
                      v103 = v107;
                      if (*v102 < *&v164)
                      {
                        goto LABEL_179;
                      }
                    }

                    v114 = v164;
LABEL_179:
                    *v107 = v114;
                    for (jj = 2; jj != 5; ++jj)
                    {
                      *v108++ = *(&v164 + jj);
                    }

                    do
                    {
                      *v110++ = *(&v164 + jj++);
                    }

                    while (jj != 8);
                    *(v107 + 4) = v166;
                  }
                }

                v99 = v100 - 1;
              }

              while (v100);
              v116 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
              do
              {
                v117 = 0;
                v118 = *v8;
                v119 = *(v8 + 16);
                v166 = *(v8 + 32);
                v164 = v118;
                v165 = v119;
                result = v8;
                do
                {
                  v120 = (result + 40 * v117);
                  v121 = v120 + 5;
                  v122 = 2 * v117;
                  v117 = (2 * v117) | 1;
                  v123 = v122 + 2;
                  if (v123 < v116)
                  {
                    v125 = *(v120 + 10);
                    v124 = v120 + 10;
                    if (*(v124 - 5) < v125)
                    {
                      v121 = v124;
                      v117 = v123;
                    }
                  }

                  v126 = v121 + 1;
                  *result = *v121;
                  for (kk = 8; kk != 20; kk += 4)
                  {
                    *(result + kk) = *(v121 + kk);
                  }

                  v128 = (v121 + 20);
                  for (mm = 20; mm != 32; mm += 4)
                  {
                    *(result + mm) = *(v121 + mm);
                  }

                  *(result + 32) = v121[4];
                  result = v121;
                }

                while (v117 <= ((v116 - 2) >> 1));
                if (v121 == a2 - 5)
                {
                  v145 = 0;
                  *v121 = v164;
                  do
                  {
                    *(v126 + v145) = *(&v164 + v145 + 8);
                    v145 += 4;
                  }

                  while (v145 != 12);
                  for (nn = 0; nn != 12; nn += 4)
                  {
                    *(v128 + nn) = *(&v165 + nn + 4);
                  }

                  v121[4] = v166;
                }

                else
                {
                  *v121 = *(a2 - 5);
                  v130 = -8;
                  v131 = v121 + 1;
                  do
                  {
                    *v131++ = *(a2 + v130++);
                  }

                  while (v130 != -5);
                  result = a2 - 20;
                  v132 = -5;
                  v133 = v121 + 5;
                  do
                  {
                    *v133++ = *(a2 + v132++);
                  }

                  while (v132 != -2);
                  v121[4] = *(a2 - 1);
                  *(a2 - 5) = v164;
                  v134 = *(&v164 + 1);
                  *(a2 - 6) = v165;
                  *(a2 - 4) = v134;
                  v135 = *(&v165 + 4);
                  *(a2 - 3) = HIDWORD(v165);
                  *result = v135;
                  *(a2 - 1) = v166;
                  v136 = v121 - v8 + 40;
                  if (v136 >= 41)
                  {
                    v137 = (0xCCCCCCCCCCCCCCCDLL * (v136 >> 3) - 2) >> 1;
                    result = v8 + 40 * v137;
                    v138 = *result;
                    v139 = *v121;
                    if (*result < *v121)
                    {
                      v140 = *v126;
                      v168 = *(v121 + 4);
                      v167 = v140;
                      v163 = *(v121 + 7);
                      v162 = *v128;
                      v141 = v121[4];
                      do
                      {
                        v142 = result;
                        *v121 = v138;
                        for (i1 = 8; i1 != 20; i1 += 4)
                        {
                          *(v121 + i1) = *(v142 + i1);
                        }

                        do
                        {
                          *(v121 + i1) = *(v142 + i1);
                          i1 += 4;
                        }

                        while (i1 != 32);
                        result = v142[4];
                        v121[4] = result;
                        if (!v137)
                        {
                          break;
                        }

                        v137 = (v137 - 1) >> 1;
                        result = v8 + 40 * v137;
                        v138 = *result;
                        v121 = v142;
                      }

                      while (*result < v139);
                      *v142 = v139;
                      v144 = v168;
                      v142[1] = v167;
                      *(v142 + 4) = v144;
                      *(v142 + 20) = v162;
                      *(v142 + 7) = v163;
                      v142[4] = v141;
                    }
                  }
                }

                a2 -= 5;
              }

              while (v116-- > 2);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = v8 + 40 * (v10 >> 1);
          v13 = *v7;
          if (v9 >= 0x1401)
          {
            v14 = *v12;
            if (*v12 >= *v6)
            {
              if (v13 >= v14 || (result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v12, a2 - 5), *v12 >= *v6))
              {
LABEL_27:
                v20 = &v6[5 * v11];
                v22 = *(v20 - 5);
                v21 = v20 - 5;
                v23 = v22;
                v24 = *v160;
                if (v22 >= *(v6 + 5))
                {
                  if (v24 >= v23 || (result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v21, v160), *v21 >= *(v6 + 5)))
                  {
LABEL_40:
                    v27 = &v6[5 * v11];
                    v29 = *(v27 + 5);
                    v28 = v27 + 5;
                    v30 = v29;
                    v31 = *v159;
                    if (v29 >= *(v6 + 10))
                    {
                      if (v31 >= v30 || (result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v28, v159), *v28 >= *(v6 + 10)))
                      {
LABEL_49:
                        v34 = *v12;
                        v35 = *v28;
                        if (*v12 >= *v21)
                        {
                          if (v35 >= v34)
                          {
                            goto LABEL_58;
                          }

                          result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v12, v28);
                          if (*v12 >= *v21)
                          {
                            goto LABEL_58;
                          }

                          v36 = v21;
                          v37 = v12;
                        }

                        else
                        {
                          v36 = v21;
                          if (v35 >= v34)
                          {
                            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v21, v12);
                            if (*v28 >= *v12)
                            {
                              goto LABEL_58;
                            }

                            v36 = v12;
                          }

                          v37 = v28;
                        }

                        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v36, v37);
LABEL_58:
                        v38 = v6 + 1;
                        v39 = *v6;
                        *&v164 = v6[1];
                        v40 = v6 + 5;
                        v41 = *(v6 + 20);
                        DWORD2(v164) = *(v6 + 4);
                        v167 = v41;
                        v168 = *(v6 + 7);
                        v42 = v6[4];
                        *v6 = *v12;
                        v43 = 3;
                        do
                        {
                          *v38 = v38[10 * v11];
                          ++v38;
                          --v43;
                        }

                        while (v43);
                        v44 = 3;
                        do
                        {
                          *v40 = v40[10 * v11];
                          ++v40;
                          --v44;
                        }

                        while (v44);
                        v6[4] = *(v12 + 32);
                        *v12 = v39;
                        v45 = DWORD2(v164);
                        *(v12 + 8) = v164;
                        *(v12 + 16) = v45;
                        v46 = v168;
                        *(v12 + 20) = v167;
                        *(v12 + 28) = v46;
                        *(v12 + 32) = v42;
                        goto LABEL_63;
                      }

                      v32 = v6 + 10;
                      v33 = v28;
                    }

                    else
                    {
                      v32 = v6 + 10;
                      if (v31 >= v30)
                      {
                        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v32, v28);
                        if (*v159 >= *v28)
                        {
                          goto LABEL_49;
                        }

                        v32 = v28;
                      }

                      v33 = a2 - 15;
                    }

                    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v32, v33);
                    goto LABEL_49;
                  }

                  v25 = v6 + 5;
                  v26 = v21;
                }

                else
                {
                  v25 = v6 + 5;
                  if (v24 >= v23)
                  {
                    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v25, v21);
                    if (*v160 >= *v21)
                    {
                      goto LABEL_40;
                    }

                    v25 = v21;
                  }

                  v26 = a2 - 10;
                }

                result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v25, v26);
                goto LABEL_40;
              }

              v15 = v6;
              v16 = v12;
            }

            else
            {
              v15 = v6;
              if (v13 >= v14)
              {
                result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v6, v12);
                if (*v7 >= *v12)
                {
                  goto LABEL_27;
                }

                v15 = v12;
              }

              v16 = a2 - 5;
            }

            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v15, v16);
            goto LABEL_27;
          }

          v17 = *v6;
          if (*v6 >= *v12)
          {
            if (v13 < v17)
            {
              result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v6, a2 - 5);
              if (*v6 < *v12)
              {
                v18 = v12;
                v19 = v6;
                goto LABEL_35;
              }
            }
          }

          else
          {
            v18 = v12;
            if (v13 < v17)
            {
              goto LABEL_22;
            }

            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v12, v6);
            if (*v7 < *v6)
            {
              v18 = v6;
LABEL_22:
              v19 = a2 - 5;
LABEL_35:
              result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v18, v19);
            }
          }

LABEL_63:
          --a3;
          if ((a4 & 1) != 0 || *(v6 - 5) < *v6)
          {
            break;
          }

          v65 = *v6;
          v64 = *(v6 + 1);
          v166 = v6[4];
          v164 = v65;
          v165 = v64;
          v66 = *&v65;
          if (*&v65 >= *v7)
          {
            v68 = (v6 + 5);
            do
            {
              v8 = v68;
              if (v68 >= a2)
              {
                break;
              }

              v68 += 40;
            }

            while (*&v65 >= *v8);
          }

          else
          {
            v8 = v6;
            do
            {
              v67 = *(v8 + 40);
              v8 += 40;
            }

            while (*&v65 >= v67);
          }

          v69 = a2;
          if (v8 < a2)
          {
            v69 = a2;
            do
            {
              v70 = *(v69 - 5);
              v69 -= 5;
            }

            while (*&v65 < v70);
          }

          while (v8 < v69)
          {
            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v8, v69);
            do
            {
              v71 = *(v8 + 40);
              v8 += 40;
            }

            while (v66 >= v71);
            do
            {
              v72 = *(v69 - 5);
              v69 -= 5;
            }

            while (v66 < v72);
          }

          if ((v8 - 40) != v6)
          {
            v73 = 0;
            *v6 = *(v8 - 40);
            do
            {
              *(v6 + v73 + 8) = *(v8 - 32 + v73);
              v73 += 4;
            }

            while (v73 != 12);
            for (i2 = 0; i2 != 12; i2 += 4)
            {
              *(v6 + i2 + 20) = *(v8 - 20 + i2);
            }

            v6[4] = *(v8 - 8);
          }

          v75 = 0;
          *(v8 - 40) = v66;
          do
          {
            *(v8 + v75 - 32) = *(&v164 + v75 + 8);
            v75 += 4;
          }

          while (v75 != 12);
          for (i3 = 0; i3 != 12; i3 += 4)
          {
            *(v8 + i3 - 20) = *(&v165 + i3 + 4);
          }

          a4 = 0;
          *(v8 - 8) = v166;
        }

        v48 = *v6;
        v47 = *(v6 + 1);
        v166 = v6[4];
        v164 = v48;
        v165 = v47;
        v49 = *&v48;
        v50 = v6;
        do
        {
          v51 = v50;
          v52 = *(v50 + 5);
          v50 += 5;
        }

        while (v52 < *&v48);
        v53 = a2;
        if (v51 == v6)
        {
          v53 = a2;
          do
          {
            if (v50 >= v53)
            {
              break;
            }

            v55 = *(v53 - 5);
            v53 -= 5;
          }

          while (v55 >= *&v48);
        }

        else
        {
          do
          {
            v54 = *(v53 - 5);
            v53 -= 5;
          }

          while (v54 >= *&v48);
        }

        if (v50 >= v53)
        {
          v8 = v50;
        }

        else
        {
          v56 = v53;
          v8 = v50;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v8, v56);
            do
            {
              v57 = *(v8 + 40);
              v8 += 40;
            }

            while (v57 < v49);
            do
            {
              v58 = *(v56 - 5);
              v56 -= 5;
            }

            while (v58 >= v49);
          }

          while (v8 < v56);
        }

        if ((v8 - 40) != v6)
        {
          v59 = 0;
          *v6 = *(v8 - 40);
          do
          {
            *(v6 + v59 + 8) = *(v8 - 32 + v59);
            v59 += 4;
          }

          while (v59 != 12);
          for (i4 = 0; i4 != 12; i4 += 4)
          {
            *(v6 + i4 + 20) = *(v8 - 20 + i4);
          }

          v6[4] = *(v8 - 8);
        }

        v61 = 0;
        *(v8 - 40) = v49;
        do
        {
          *(v8 + v61 - 32) = *(&v164 + v61 + 8);
          v61 += 4;
        }

        while (v61 != 12);
        for (i5 = 0; i5 != 12; i5 += 4)
        {
          *(v8 + i5 - 20) = *(&v165 + i5 + 4);
        }

        *(v8 - 8) = v166;
        if (v50 >= v53)
        {
          break;
        }

LABEL_94:
        result = std::__introsort<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,false>(v6, v8 - 40, a3, a4 & 1);
        a4 = 0;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *>(v6, (v8 - 40));
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *>(v8, a2);
      if (result)
      {
        break;
      }

      if (!v63)
      {
        goto LABEL_94;
      }
    }

    a2 = (v8 - 40);
    if (!v63)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v7 = result[1];
  v8 = *(result + 4);
  v5 = *(result + 20);
  v6 = *(result + 7);
  v3 = result[4];
  *result = *a2;
  for (i = 8; i != 20; i += 4)
  {
    *(result + i) = *(a2 + i);
  }

  do
  {
    *(result + i) = *(a2 + i);
    i += 4;
  }

  while (i != 32);
  result[4] = a2[4];
  *a2 = v2;
  a2[1] = v7;
  *(a2 + 4) = v8;
  *(a2 + 20) = v5;
  *(a2 + 7) = v6;
  a2[4] = v3;
  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a2, a3);
      if (*a2 < *v7)
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(result, v10);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(result, a2);
    if (*a3 < *a2)
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a3, a4);
    if (*a3 < *a2)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a2, a3);
      if (*a2 < *v7)
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v7, a2);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *>(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 5);
        v5 = a2 - 5;
        v10 = *(a2 - 5);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a1 + 5, v5);
          if (*(v3 + 5) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 5;
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a1, a1 + 5);
          if (*v5 >= *(v3 + 5))
          {
            return 1;
          }

          a1 = v3 + 5;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,0>(a1, a1 + 5, a1 + 10, a2 - 5);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,0>(a1, a1 + 5, a1 + 10, a1 + 15);
        v7 = *(a2 - 5);
        v6 = a2 - 5;
        if (v7 >= *(v3 + 15))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v3 + 15, v6);
        if (*(v3 + 15) >= *(v3 + 10))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v3 + 10, v3 + 15);
        if (*(v3 + 10) >= *(v3 + 5))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(v3 + 5, v3 + 10);
        if (*(v3 + 5) >= *v3)
        {
          return 1;
        }

        v8 = v3 + 5;
        a1 = v3;
        goto LABEL_17;
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
      v5 = a2 - 5;
      if (*(a2 - 5) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v11 = a1 + 10;
  v12 = *(a1 + 10);
  v13 = *(a1 + 5);
  if (v13 < *a1)
  {
    if (v12 >= v13)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a1, a1 + 5);
      if (*(v3 + 10) >= *(v3 + 5))
      {
        goto LABEL_31;
      }

      a1 = v3 + 5;
    }

    v14 = v3 + 10;
    goto LABEL_30;
  }

  if (v12 < v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a1 + 5, a1 + 10);
    if (*(v3 + 5) < *v3)
    {
      a1 = v3;
      v14 = v3 + 5;
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RegistryIntersection *&,md::RegistryIntersection *&>(a1, v14);
    }
  }

LABEL_31:
  v15 = v3 + 15;
  if (v3 + 15 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = v3 + 16;
  v18 = v3 + 35;
  v19 = v3 + 11;
  for (i = v3 + 25; ; i += 10)
  {
    if (*v15 < *v11)
    {
      v21 = *(v15 + 1);
      v38[0] = *v15;
      v38[1] = v21;
      v39 = v15[4];
      v22 = i;
      v23 = *v11;
      v24 = v19;
      v25 = v18;
      v26 = v17;
      v27 = v15;
      while (1)
      {
        v28 = v11;
        v29 = v24;
        v30 = v22;
        *v27 = v23;
        v31 = v26;
        v32 = 3;
        do
        {
          *v31 = *(v31 - 10);
          v31 = (v31 + 4);
          --v32;
        }

        while (v32);
        v33 = v25;
        v34 = 3;
        do
        {
          *v33 = *(v33 - 10);
          ++v33;
          --v34;
        }

        while (v34);
        *(v27 + 4) = v11[4];
        if (v11 == v3)
        {
          break;
        }

        v11 -= 5;
        v23 = *(v28 - 5);
        v26 -= 5;
        v25 -= 10;
        v24 = v29 - 5;
        v22 = v30 - 10;
        v27 = v28;
        if (*v38 >= v23)
        {
          goto LABEL_43;
        }
      }

      v28 = v3;
LABEL_43:
      v35 = 0;
      *v28 = *v38;
      do
      {
        *v29 = *(v38 + v35 + 8);
        v29 = (v29 + 4);
        v35 += 4;
      }

      while (v35 != 12);
      for (j = 0; j != 12; j += 4)
      {
        *v30++ = *(&v38[1] + j + 4);
      }

      *(v28 + 4) = v39;
      if (++v16 == 8)
      {
        break;
      }
    }

    v11 = v15;
    v17 += 5;
    v18 += 10;
    v19 += 5;
    v15 += 5;
    if (v15 == a2)
    {
      return 1;
    }
  }

  return v15 + 5 == a2;
}

_BYTE *md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v19[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE75FAB3171C16149 && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL);
    if (v9 && (v10 = v9[5], *(v10 + 8) == 0x1AF456233693CD46))
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xFBD83FDA8879FF7ELL);
    if (v12 && (v13 = v12[5], *(v13 + 8) == 0xFBD83FDA8879FF7ELL))
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL);
    if (v15 && (v16 = v15[5], *(v16 + 8) == 0x3070CB6B3C7F21D3))
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xD2404CDD1F9A6950)[5] + 32);
    v19[0] = v11;
    v19[1] = v14;
    v19[2] = v17;
    v19[3] = v18;
    return (*(*a1 + 160))(a1, a2, v19, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::EntityDebugHighlightContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void md::EntityDebugHighlightLogic::~EntityDebugHighlightLogic(md::EntityDebugHighlightLogic *this)
{
  md::EntityDebugHighlightLogic::~EntityDebugHighlightLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EB460;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ___ZL46GEOGetVectorKitDisplayLinkVerificationLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "DisplayLinkVerificationLogic");
  v1 = GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::log;
  GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::log = v0;
}

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x42BE82C40F9A8F80 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>::resolveDependencies(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::DisplayLinkVerificationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::DisplayLinkVerificationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EB7A0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::DisplayLinkVerificationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EB7A0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::DisplayLinkVerificationLogic::~DisplayLinkVerificationLogic(md::DisplayLinkVerificationLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE0EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)0>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A279C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)0>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A279C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IgnoreCullingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IgnoreCulling>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IgnoreCulling,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D038;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IgnoreCulling,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D038;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17VisibilityGroupIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupID>();
    *algn_1EB83D208 = 0x45B31C2960E9BCB1;
    qword_1EB83D210 = "md::ls::VisibilityGroupID]";
    qword_1EB83D218 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41948;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupID,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::PrepareMainSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>)::$_0,std::allocator<md::ita::PrepareMainSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = **(a1 + 8);
  v6 = ecs2::ExecutionTaskContext::currentEntity(a1);
  ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)7>>(v5, v6);
  v7 = *(a1 + 16);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v7, a3);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE7EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)7>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)7>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<md::ita::PrepareMainSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>)::$_0,std::allocator<md::ita::PrepareMainSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EB7C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE1EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)1>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)1>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17WantsCulledSlicesEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::WantsCulledSlices>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WantsCulledSlices>();
    *algn_1EB83D1E8 = 0x6CA90C12C415463ALL;
    qword_1EB83D1F0 = "md::ls::WantsCulledSlices]";
    qword_1EB83D1F8 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::WantsCulledSlices,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41CE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::WantsCulledSlices,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41CE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<md::ita::PrepareMainSliceWithCulled::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>)::$_0,std::allocator<md::ita::PrepareMainSliceWithCulled::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EB880;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::ita::PrepareCulledSlice::operator()(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v24 = v4;
  v5 = a1[2];
  if (!v5)
  {
    v6 = **a1;
    v7 = *v6;
    v8 = *(v6 + 8);
    if (v7 == v8)
    {
      goto LABEL_3;
    }

    while (*v7 != 0x22D45F5AAD4BF408)
    {
      v5 = 0;
      v7 += 5;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    if (v7 == v8)
    {
LABEL_3:
      v5 = 0;
    }

    else
    {
      v5 = v7[3];
      v22 = v7[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }
    }

LABEL_6:
    a1[2] = v5;
  }

  v9 = (**v5)(v5);
  v10 = md::LayoutContext::get<md::ElevationContext>(*(v9 + 1));
  if (v10[4] <= 0.01 && *(v10 + 3) == 1)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v23 = v11 & 1;
  v26 = 1;
  v12 = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 1555, 1u);
  v26 = 8;
  v25 = &v26;
  v13 = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 1555, 8u);
  v14 = v12[8] == v12[7] && v13[8] == v13[7];
  v15 = *(a2 + 8);
  v16 = ecs2::BasicRegistry<void>::storage<md::ls::PendingSlicing>(v15);
  v17 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(v15);
  v18 = *(v16 + 40) - *(v16 + 32);
  v19 = *(v17 + 32);
  if ((*(v17 + 40) - v19) >> 2 >= (v18 >> 2))
  {
    v20 = v18 >> 2;
  }

  else
  {
    v20 = (*(v17 + 40) - v19) >> 2;
  }

  if (v20 || (md::LayoutContext::frameState(v9), ((*(v21 + 632) | v14) & 1) != 0))
  {
    operator new();
  }
}

uint64_t std::__function::__func<ecs2::ClearComponent::ClearComponent<md::ls::PendingSlicing>(std::type_identity<md::ls::PendingSlicing>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::ClearComponent::ClearComponent<md::ls::PendingSlicing>(std::type_identity<md::ls::PendingSlicing>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::operator()(uint64_t a1, uint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>();
  v3 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingSlicing>(a2);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  if (v5 != v6)
  {
    v7 = *(a2 + 41016) + 4 * (v3 >> 5);
    do
    {
      *(v7 + (*(v5 + 2) << 6)) &= ~(1 << v3);
      v5 += 4;
    }

    while (v5 != v6);
  }

  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PendingSlicing>(a2);
  result = ecs2::signal<>::publish(v8[37], v8[38]);
  v10 = v8[4];
  if (v8[5] != v10)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v10);
      v10 = result;
    }

    while (v8[5] != result);
  }

  *(a2 + 8 * v3) = *(a2 + 4096);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingSlicing>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingSlicing>(void)::localId;
    *algn_1EB82B528 = 0x1F83CAEE6B4D7E41;
    qword_1EB82B530 = "md::ls::PendingSlicing]";
    qword_1EB82B538 = 22;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PendingSlicing>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14PendingSlicingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingSlicing>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14PendingSlicingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42060;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingSlicing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42040;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingSlicing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42040;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27RenderableVisibilityOptionsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableVisibilityOptions>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LODWORD(v16) = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A43330;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableVisibilityOptions,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18IntendedSceneLayerEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayer>();
    unk_1EB83D1A0 = 0xEC2A00DC914732D7;
    qword_1EB83D1A8 = "md::ls::IntendedSceneLayer]";
    qword_1EB83D1B0 = 26;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41D50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41D70;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41D50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayer,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SharedRenderableDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedRenderableDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41BD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41BF8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41BD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedRenderableDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md9BoundDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::BoundData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
        *v22 = *v18;
        *&v22[16] = *(v18 + 16);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        v19 = 0;
        v20 = v18 + 12;
        v21 = (v17 + 12);
        do
        {
          *(v20 + v19) = *(v21 + v19);
          v19 += 4;
        }

        while (v19 != 12);
        *v17 = *v22;
        *(v17 + 8) = *&v22[8];
        *v21 = *&v22[12];
        *(v17 + 20) = *&v22[20];
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::BoundData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42290;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::BoundData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::BoundData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A422B0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::BoundData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::BoundData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::BoundData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42290;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::BoundData,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::PrepareCulledSlice::operator()(ecs2::Query<md::ls::PendingSlicing const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&>)::$_0,std::allocator<md::ita::PrepareCulledSlice::operator()(ecs2::Query<md::ls::PendingSlicing const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&)>::operator()(uint64_t a1, uint64_t a2, float *a3, unint64_t *a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1 + 8;
  RenderableData = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a5);
  if (*(a9 + 2) == 1 && (**(a1 + 16) & 1) != 0)
  {
    v14 = gdc::fastFrustumBoxIntersection<float>(RenderableData, a3);
    if (!v14)
    {
      return;
    }

    v18 = &unk_1F29EB9A0;
    v19 = ecs2::ExecutionTaskContext::currentEntity(v14) << 32;
    v20 = &v18;
    v23 = &v21;
    v21 = &unk_1F29EB9A0;
    v22 = v19;
    v24 = 0;
    ecs2::Runtime::queueCommand();
    if (v24 != -1)
    {
      (off_1F29EB848[v24])(&v17, &v21);
    }

    v24 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v18);
    v15 = 32;
  }

  else
  {
    v16 = gdc::fastFrustumBoxIntersection<float>(RenderableData, a3);
    if (!v16)
    {
      return;
    }

    v18 = &unk_1F29EB958;
    v19 = ecs2::ExecutionTaskContext::currentEntity(v16) << 32;
    v20 = &v18;
    v23 = &v21;
    v21 = &unk_1F29EB958;
    v22 = v19;
    v24 = 0;
    ecs2::Runtime::queueCommand();
    if (v24 != -1)
    {
      (off_1F29EB848[v24])(&v17, &v21);
    }

    v24 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v18);
    v15 = 24;
  }

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(*(v12 + v15), a4);
}

uint64_t gdc::fastFrustumBoxIntersection<float>(uint64_t a1, float *a2)
{
  v2 = 0;
  v3 = 0;
  for (i = 0; i != 6; ++i)
  {
    v5 = (a1 + 16 * gdc::fastFrustumBoxIntersection<double>(geo::Frustum<double> const&,gm::Box<double,3> const&)::planeOrder[i]);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    if (*v5 < 0.0)
    {
      v10 = *a2;
    }

    else
    {
      v10 = a2[3];
    }

    if (v7 < 0.0)
    {
      v11 = a2[1];
    }

    else
    {
      v11 = a2[4];
    }

    if (v8 < 0.0)
    {
      v12 = a2[2];
    }

    else
    {
      v12 = a2[5];
    }

    if ((((v9 + (v10 * v6)) + (v11 * v7)) + (v12 * v8)) < 0.0)
    {
      break;
    }

    if (v6 < 0.0)
    {
      v13 = a2[3];
    }

    else
    {
      v13 = *a2;
    }

    if (v7 < 0.0)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    if (v8 < 0.0)
    {
      v15 = a2[5];
    }

    else
    {
      v15 = a2[2];
    }

    if ((((v9 + (v13 * v6)) + (v14 * v7)) + (v15 * v8)) >= 0.0)
    {
      ++v3;
    }

    v2 = i > 4;
  }

  if (v3 == 6)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)8>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)8> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata) = *(a2 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)8>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[511];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE8EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A33828;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE8EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE8EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A33828;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)8>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33808;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)8>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33808;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)8>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)8> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29EB9A0;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::PrepareCulledSlice::operator()(ecs2::Query<md::ls::PendingSlicing const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&>)::$_0,std::allocator<md::ita::PrepareCulledSlice::operator()(ecs2::Query<md::ls::PendingSlicing const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EB910;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::IntendedSceneLayer const,md::ls::VisibilityGroupID const,md::ls::RenderableVisibilityOptions const,md::ls::MeshLayerTypeV const,md::ls::SliceAssignmentT<(md::SliceType)8> const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0)
  {
    return *(v15 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14MeshLayerTypeVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshLayerTypeV>();
    *algn_1EB83D848 = 0xECC498AF223943D5;
    qword_1EB83D850 = "md::ls::MeshLayerTypeV]";
    qword_1EB83D858 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A43260;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshLayerTypeV,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::PrepareUnflattenedCulledSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareUnflattenedCulledSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::operator()(ecs2::ExecutionTaskContext *a1, uint64_t a2, unsigned __int8 *a3, unint64_t *a4, uint64_t a5, _BYTE *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 != 3 && *(a5 + 2) == 1)
  {
    v6 = *a3;
    if (v6 == 3 || v6 == 0)
    {
      v10 = *(a1 + 1);
      v15 = &unk_1F29EBA78;
      v16 = ecs2::ExecutionTaskContext::currentEntity(a1) << 32;
      v17 = &v15;
      v18[3] = v18;
      v18[0] = &unk_1F29EBA78;
      v18[1] = v16;
      v19 = 0;
      ecs2::Runtime::queueCommand();
      if (v19 != -1)
      {
        (off_1F29EB848[v19])(&v14, v18);
      }

      v19 = -1;
      v11 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v15);
      v12 = *v10;
      v13 = ecs2::ExecutionTaskContext::currentEntity(v11);
      ecs2::addComponent<md::ls::InView>(v12, v13);
      ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(*(a1 + 2), a4);
    }
  }
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)2>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)2> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE2EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)2>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19CF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)2>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19CF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)2>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)2> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29EBA78;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::PrepareUnflattenedCulledSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareUnflattenedCulledSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EBA30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28ColorCorrectionDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51A50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51A70;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51A50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31SharedColorCorrectionDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorCorrectionDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A430A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A430C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A430A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedColorCorrectionDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16CanEnableTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata;
  CanEnable = ecs2::BasicRegistry<void>::storage<md::ls::CanEnableTexture>(v3);
  v6 = CanEnable[1];
  if (v2 >> 22 < (CanEnable[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = CanEnable;
        v9 = CanEnable[25];
        v10 = CanEnable[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CanEnableTexture,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A07590;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CanEnableTexture,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A07590;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t ecs2::addComponent<md::ls::ColorCorrectionDataKeyHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51A08;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51A08;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F29EBAF8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ColorCorrectionDataKeyHandle>(ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ColorCorrectionDataKeyHandle>(ecs2::Entity,md::ls::ColorCorrectionDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51A08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareColorCorrectionFactorsConstantHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *>)::$_0,std::allocator<md::ita::PrepareColorCorrectionFactorsConstantHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EBAC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B2CE2C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = &a71;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
  __p = &a68;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  a56 = (v74 - 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a56);
  a56 = (v74 - 96);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a56);
  if (*(v74 - 97) < 0)
  {
    operator delete(*(v74 - 120));
  }

  if (*(v74 - 121) < 0)
  {
    operator delete(*(v74 - 144));
  }

  *(v74 - 144) = v72 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v74 - 144));
  *(v74 - 144) = v72 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v74 - 144));
  if (*(v72 + 47) < 0)
  {
    operator delete(*(v72 + 24));
  }

  if (*(v72 + 23) < 0)
  {
    operator delete(*v72);
  }

  _Unwind_Resume(a1);
}

void sub_1B2CE2D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    JUMPOUT(0x1B2CE2D20);
  }

  JUMPOUT(0x1B2CE2D24);
}

std::string *gdc::DebugTreeNode::DebugTreeNode(std::string *this, const gdc::DebugTreeNode *a2)
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

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  if (v7 != v6)
  {
    std::vector<gdc::DebugTreeNode>::__vallocate[abi:nn200100](&this[2], 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 5));
  }

  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v9 = *(a2 + 9);
  v8 = *(a2 + 10);
  if (v8 != v9)
  {
    std::vector<gdc::DebugTreeProperty>::__vallocate[abi:nn200100](&this[3], 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 4));
  }

  return this;
}

void sub_1B2CE2EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<gdc::DebugTreeProperty>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeProperty>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<gdc::DebugTreeProperty>,gdc::DebugTreeProperty*,gdc::DebugTreeProperty*,gdc::DebugTreeProperty*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v7 = *(v5 + 6);
      this[1].__r_.__value_.__l.__size_ = 0;
      LODWORD(this[1].__r_.__value_.__l.__data_) = v7;
      this[1].__r_.__value_.__r.__words[2] = 0;
      this[2].__r_.__value_.__r.__words[0] = 0;
      v8 = *(v5 + 4);
      v9 = *(v5 + 5);
      if (v9 != v8)
      {
        std::vector<gdc::DebugTreeValue>::__vallocate[abi:nn200100](&this[1].__r_.__value_.__l.__size_, (v9 - v8) >> 6);
      }

      this[2].__r_.__value_.__l.__size_ = 0;
      this[2].__r_.__value_.__r.__words[2] = 0;
      this[3].__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&this[2].__r_.__value_.__l.__size_, *(v5 + 7), *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *(v5 + 7)) >> 3));
      v5 += 5;
      this = (this + 80);
    }

    while (v5 != a2);
  }

  return this;
}

void sub_1B2CE3088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeProperty>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<gdc::DebugTreeNode>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeNode>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeNode>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[1];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v2 += 3;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != *(a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,anonymous namespace::Trigger>,void *>>>::destroy[abi:nn200100]<std::pair<unsigned int const,anonymous namespace::Trigger>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

uint64_t md::FlyoverRegionManager::getRegionAreas(md::FlyoverRegionManager *this, const geo::QuadTile *a2)
{
  v3 = this;
  std::mutex::lock((this + 96));
  v4 = v3 + 48;
  v5 = geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v3 + 48, v3 + 1, a2);
  if ((v3 + 48) == v5)
  {
    v43[0] = v44;
    v43[1] = v44;
    v43[2] = v44;
    v43[3] = 2;
    v6 = *(v3 + 9);
    if (v6 == (v3 + 80))
    {
LABEL_53:
      geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::small_vector_base(&v34, v43, v37);
      geo::Cache<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash,geo::LRUPolicy>::insert(v3, a2, v34, *(&v34 + 1));
    }

    v33 = v3;
    while (1)
    {
      v7 = *(a2 + 1);
      v8 = *(v6 + 32);
      LOBYTE(v9) = v7 - v8;
      if (v7 >= v8)
      {
        if (*(a2 + 1))
        {
          v13 = 0;
          if (v7 >= v9)
          {
            v9 = v9;
          }

          else
          {
            v9 = *(a2 + 1);
          }

          LOBYTE(v7) = v7 - v9;
          v14 = vshl_s32(*(a2 + 4), vneg_s32(vdup_n_s32(v9)));
          v15 = 1;
        }

        else
        {
          v14 = *(a2 + 4);
          v13 = *(a2 + 2);
          v15 = *(a2 + 24);
        }

        v16 = *a2;
        BYTE1(v34) = v7;
        *(&v34 + 4) = v14;
        LOBYTE(v34) = v16;
        v35 = v13;
        v36 = v15;
        v17 = geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v4, v3 + 1, &v34);
        if (v4 == v17)
        {
          v45[0] = v46;
          v45[1] = v46;
          v45[2] = v46;
          v45[3] = 2;
          v18 = v6[7];
          if (!v18)
          {
LABEL_49:
            geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::small_vector_base(v38, v45, v39);
            geo::Cache<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash,geo::LRUPolicy>::insert(v3, &v34, v38[0], v38[1]);
          }

          while (2)
          {
            v19 = *(v18 + 15);
            if (v19)
            {
              v20 = *(v18 + 16);
              if (v20)
              {
                v21 = -1 << *(v18 + 48);
                v22 = ~v21 - DWORD1(v34);
                v24 = *(v18 + 13);
                v23 = *(v18 + 14);
                v25 = (v19 + v24 + 0x7FFFFFFF) & ~v21;
                if (v24 <= v25)
                {
                  if (v24 <= v22 && v25 >= v22)
                  {
LABEL_34:
                    v28 = (v20 + v23 + 0x7FFFFFFF) & ~v21;
                    if (v23 <= v28)
                    {
                      if (v23 > DWORD2(v34) || v28 < DWORD2(v34))
                      {
                        goto LABEL_48;
                      }
                    }

                    else if (v23 < DWORD2(v34) || v28 > DWORD2(v34))
                    {
                      goto LABEL_48;
                    }

                    v40 = 0;
                    v41 = 0;
                    v29 = v18[18];
                    if (!v29 || (v41 = std::__shared_weak_count::lock(v29)) == 0)
                    {
                      v42 = *(v18 + 4);
LABEL_45:
                      operator new();
                    }

                    v40 = v18[17];
                    v42 = *(v18 + 4);
                    if (!v40)
                    {
                      goto LABEL_45;
                    }

                    geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::push_back(v45, &v40);
                    v3 = v33;
                    if (v41)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
                    }
                  }
                }

                else if (v24 >= v22 && v25 <= v22)
                {
                  goto LABEL_34;
                }
              }
            }

LABEL_48:
            v18 = *v18;
            if (!v18)
            {
              goto LABEL_49;
            }

            continue;
          }
        }

        v31 = *(v17 + 48);
        v30 = *(v17 + 56);
        while (v31 != v30)
        {
          geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::push_back(v43, v31);
          v31 += 24;
        }
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
      if (v11 == (v3 + 80))
      {
        goto LABEL_53;
      }
    }
  }

  std::mutex::unlock((v3 + 96));
  return v5 + 48;
}

void sub_1B2CE3834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base(v38 - 168);
  geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base(&a37);
  std::mutex::unlock((v37 + 96));
  _Unwind_Resume(a1);
}

uint64_t geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(uint64_t a1, void *a2, geo::QuadTile *this)
{
  v4 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>(a2, this);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = *(v4 + 6);
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      v9 = *v5;
      *(v9 + 8) = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

void geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1;
  if (*(a1 + 24) < v5)
  {
    geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::grow(a1, v5);
    v4 = *(a1 + 8);
  }

  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  v7 = v4;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 8);
  }

  *(v4 + 16) = *(a2 + 16);
  *(a1 + 8) = v7 + 24;
}

__n128 geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::small_vector_base(__n128 **a1, __n128 **a2, __n128 *a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v3 = a2[2];
  a1[3] = a2[3];
  v4 = *a2;
  if (*a2 == v3)
  {
    a1[1] = (a3 + a2[1] - v4);
    v7 = a2[1];
    while (v4 != v7)
    {
      result = *v4;
      *a3 = *v4;
      v4->n128_u64[0] = 0;
      v4->n128_u64[1] = 0;
      a3[1].n128_u32[0] = v4[1].n128_u32[0];
      a3 = (a3 + 24);
      v4 = (v4 + 24);
    }
  }

  else
  {
    v5 = a2[1];
    *a1 = v4;
    a1[1] = v5;
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void geo::Cache<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash,geo::LRUPolicy>::insert(uint64_t a1, geo::QuadTile *a2, uint64_t a3, uint64_t a4)
{
  v11[0] = v12;
  v11[1] = v12;
  v11[2] = v12;
  v11[3] = 2;
  geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::append<md::FlyoverRegionManager::RegionArea const*>(v11, a3, a4);
  v6 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>((a1 + 8), a2);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 6);
    v10 = *v8;
    v9 = v8[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    --*(a1 + 64);
    geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base((v8 + 6));
    operator delete(v8);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v7);
  }

  operator new();
}

void sub_1B2CE410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base(&a10);
  _Unwind_Resume(a1);
}

void geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::append<md::FlyoverRegionManager::RegionArea const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3) > *(a1 + 24) - v8)
  {
    geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::grow(a1, v8 - 0x5555555555555555 * ((a3 - a2) >> 3));
    v7 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *(v4 + 8);
      *v7 = *v4;
      *(v7 + 8) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = *(v4 + 16);
      v4 += 24;
      v7 += 24;
    }

    while (v4 != a3);
    v7 = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

void geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::grow(void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(24 * v9, 0x1020040EDCEB4C7uLL);
  v11 = v10;
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      *v14 = *v12;
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v14 + 4) = *(v12 + 4);
      v14 += 24;
      v12 += 24;
    }

    while (v12 != v13);
    v15 = *a1;
    v16 = a1[1];
    while (v15 != v16)
    {
      v17 = *(v15 + 1);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      v15 += 24;
    }
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  a1[1] = &v11[v4 - v3];
  a1[3] = v9;
}

void std::vector<geo::c3mm::C3mmEntrySection<unsigned char>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<geo::c3mm::C3mmArea>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::recursive_mutex::~recursive_mutex((a1 + 200));
  std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(*(a1 + 184));
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  v5 = (a1 + 64);
  std::vector<geo::c3mm::C3mmEntrySection<unsigned char>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<geo::c3mm::C3mmArea>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EBB30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverRegionManager::getArea(md::FlyoverRegionManager *this, uint64_t a2, unsigned int a3)
{
  std::mutex::lock((a2 + 96));
  v6 = *(a2 + 72);
  if (v6 == (a2 + 80))
  {
LABEL_24:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v7 = v6[6];
    if (v7)
    {
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = a3;
        if (v7 <= a3)
        {
          v9 = a3 % v7;
        }
      }

      else
      {
        v9 = (v7 - 1) & a3;
      }

      v10 = *(v6[5] + 8 * v9);
      if (v10)
      {
        v11 = *v10;
        if (*v10)
        {
          break;
        }
      }
    }

LABEL_18:
    v13 = v6[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v6[2];
        v15 = *v14 == v6;
        v6 = v14;
      }

      while (!v15);
    }

    v6 = v14;
    if (v14 == (a2 + 80))
    {
      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == a3)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= v7)
      {
        v12 %= v7;
      }
    }

    else
    {
      v12 &= v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (*(v11 + 4) != a3)
  {
    goto LABEL_17;
  }

  *this = 0;
  *(this + 1) = 0;
  v16 = v11[18];
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    *(this + 1) = v17;
    if (v17)
    {
      *this = v11[17];
    }
  }

LABEL_28:

  std::mutex::unlock((a2 + 96));
}

void std::__shared_ptr_emplace<md::RegionMetaTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EBC10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RegionMetaLayerDataSource::~RegionMetaLayerDataSource(md::RegionMetaLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2CE4C30(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2CE50D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void md::TransitLineTextLabelPart::textColorForSource(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  if (a2 != 3 && a2)
  {
    v7 = *a3;
    if (a2 == 4)
    {
      v12 = *(v7 + 272);
      if (!v12)
      {
        v13 = *a3;
        v14 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v7);
        v12 = *v14;
        *(v13 + 272) = *v14;
      }

      v6 = (v12 + 65);
    }

    else
    {
      v8 = *(a1 + 880) == 1;
      v9 = v7 + 280;
      if (*(a1 + 880) == 1)
      {
        v10 = 6;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v9 + 8 * (*(a1 + 880) == 1));
      if (v11)
      {
        if (vabds_f32(*(v11 + 8), *(v7 + 104)) >= 0.01)
        {
          md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v7, v11, v10);
          v11 = *(v9 + 8 * v8);
        }
      }

      else
      {
        v11 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v7, v10);
        *(v9 + 8 * v8) = v11;
      }

      v6 = (*v11 + 8);
    }
  }

  else
  {
    v6 = (a1 + 1528);
  }

  *a4 = *v6;
}

uint64_t md::TextLabelPart::publicName(md::TextLabelPart *this)
{
  v1 = *(this + 74);
  if (v1)
  {
    return **(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t md::CurvedTextLabelPart::placement@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 1482);
  *(a2 + 2) = 0;
  *(a2 + 3) = *(this + 1485);
  return this;
}

void md::CurvedTextLabelPart::setPosition(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = 1168;
  if (!a2)
  {
    v3 = 976;
  }

  v4 = a1 + v3;
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 120);
  *(v4 + 112) = v6;
  *(v4 + 120) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

uint64_t md::CurvedTextLabelPart::setUseExternalLayoutOptions(uint64_t result, int a2, char a3)
{
  v3 = 1168;
  if (!a2)
  {
    v3 = 976;
  }

  *(result + v3 + 184) = a3;
  return result;
}

void md::TransitLineTextLabelPart::updateWithStyle(md::TransitLineTextLabelPart *this, md::LabelManager *a2)
{
  md::LabelExternalTransitLink::lineColor(&v4, *(this + 189), *(this + 1532));
  *(this + 382) = v4;

  md::CurvedTextLabelPart::updateWithStyle(this, a2);
}

void md::LabelExternalTransitLink::lineColor(md::LabelExternalTransitLink *this, uint64_t a2, uint64_t a3)
{
  md::LabelExternalTransitLink::linkData(&v7, a2);
  if (v7)
  {
    v5 = *(*v7 + 16 * a3 + 4);
  }

  else
  {
    v5 = -16777216;
  }

  *this = v5;
  v6 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void md::LabelExternalTransitLink::linkData(md::LabelExternalTransitLink *this, uint64_t a2)
{
  std::mutex::lock((a2 + 40));
  v4 = *(a2 + 32);
  *this = *(a2 + 24);
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a2 + 40));
}

void md::TransitLineTextLabelPart::~TransitLineTextLabelPart(md::TransitLineTextLabelPart *this)
{
  *this = &unk_1F29EBC48;
  v2 = *(this + 190);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::CurvedTextLabelPart::~CurvedTextLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F29EBC48;
  v2 = *(this + 190);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::CurvedTextLabelPart::~CurvedTextLabelPart(this);
}

void md::CurvedTextLabelPart::~CurvedTextLabelPart(md::CurvedTextLabelPart *this)
{
  *this = &unk_1F2A4D610;
  v2 = *(this + 188);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 167);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 165);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 163);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 161);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 143);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 141);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 139);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 137);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  md::TextLabelPart::~TextLabelPart(this);
}

{
  md::CurvedTextLabelPart::~CurvedTextLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

uint64_t md::TransitLineTextLabelPart::TransitLineTextLabelPart(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, float a9, _BYTE *a10, uint64_t *a11, unsigned __int8 a12)
{
  v13 = md::CurvedTextLabelPart::CurvedTextLabelPart(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0);
  *v13 = &unk_1F29EBC48;
  v14 = *a11;
  v15 = a11[1];
  v13[189] = *a11;
  v13[190] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    v14 = *(a1 + 1512);
  }

  *(a1 + 1528) = -16776961;
  *(a1 + 1532) = a12;
  md::LabelExternalTransitLink::lineColor(&v17, v14, a12);
  *(a1 + 1528) = v17;
  return a1;
}

void sub_1B2CE5C10(_Unwind_Exception *a1)
{
  v3 = *(v1 + 190);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::CurvedTextLabelPart::~CurvedTextLabelPart(v1);
  _Unwind_Resume(a1);
}

void sub_1B2CE5DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<false>(uint64_t a1, void *__src, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(a1, v5 - 1, __len - v5 + 1, *(a1 + 8), 0, *(a1 + 8), __len, __src);
  }

  else
  {
    v6 = *a1;
    *(a1 + 8) = __len;
    if (__len)
    {
      memmove(v6, __src, __len);
    }

    *(v6 + __len) = 0;
  }

  return a1;
}

void std::__shared_ptr_emplace<md::LabelImageKey>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A59B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void **std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external(void **a1, char *__s)
{
  v4 = strlen(__s);

  return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external(a1, __s, v4);
}

void geo::small_vector_base<unsigned short>::grow(__int16 **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v11 = *a1;
  v12 = a1[1];
  if (*a1 != v12)
  {
    v13 = v10;
    v14 = *a1;
    do
    {
      v15 = *v14++;
      *v13++ = v15;
    }

    while (v14 != v12);
  }

  if (v3 != v6)
  {
    free(v11);
  }

  *a1 = v10;
  a1[1] = (v10 + v4 - v3);
  a1[3] = v9;
}

void md::LabelStyle::pointIcon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, __int16 a9, char a10, uint64_t a11)
{
  v22[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v19) = 0;
  v20 = 0;
  if (a7)
  {
    v19 = a6;
    v20 = 1;
  }

  v18[0] = 0;
  v18[24] = 0;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a11, *(a11 + 8));
  }

  else
  {
    *&v21.__r_.__value_.__l.__data_ = *a11;
    v21.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v22, a11 + 24);
  BYTE2(v17) = a10;
  LOWORD(v17) = a9;
  md::LabelStyle::pointIcon(a1, a2, a3, a4, a5, 0, &v19, a8, v18, v17, &v21);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v22);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1B2CE649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2CE7230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v72);
  if (cf)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cf);
  }

  grl::IconModifiers::~IconModifiers(&a41);
  a68 = &a29;
  std::vector<geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a68);
  std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(a72);
  a71 = &a32;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a71);
  a71 = &a35;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a71);
  a71 = a12;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a71);
  grl::IconModifiers::~IconModifiers(&STACK[0x240]);
  STACK[0x240] = &a38;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x240]);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

void ggl::DiffuseLandmark::BuildingPipelineState::~BuildingPipelineState(ggl::DiffuseLandmark::BuildingPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::DiffuseLandmark::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::MuninRoadEdgePolyline>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<md::ComposedRoadEdgeWalker::ComposedRoadEdgeWalker(md::ComposedRoadEdge const*,BOOL)::$_0,std::allocator<md::ComposedRoadEdgeWalker::ComposedRoadEdgeWalker(md::ComposedRoadEdge const*,BOOL)::$_0>,BOOL ()(md::MuninRoadEdge const*,BOOL)>::operator()(uint64_t a1, uint64_t **a2, unsigned __int8 *a3)
{
  v51[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v7 = v5[3];
  v6 = v5[4];
  if (v7 >= v6)
  {
    v9 = v5[2];
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v13);
    }

    *(8 * v10) = v3;
    v8 = 8 * v10 + 8;
    v14 = v5[2];
    v15 = v5[3] - v14;
    v16 = (8 * v10 - v15);
    memcpy(v16, v14, v15);
    v17 = v5[2];
    v5[2] = v16;
    v5[3] = v8;
    v5[4] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = v3;
    v8 = (v7 + 1);
  }

  v5[3] = v8;
  __p = 0;
  v49 = 0;
  v50 = 0;
  v51[0] = &unk_1F2A050A8;
  v51[1] = &__p;
  v51[3] = v51;
  md::MuninRoadEdge::walkEdgeGeometry(v3, v4, v51);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](v51);
  std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](v44, &__p);
  v47 = 0u;
  *v46 = 0u;
  v18 = v44[0];
  v19 = v44[1];
  if (v44[0] != v44[1])
  {
    v20 = exp((*(v44[0] + 1) + (*(v44[1] - 1) - *(v44[0] + 1)) * 0.5) * 6.28318531 + -3.14159265);
    v21 = atan(v20);
    v22 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v21 * 114.591559 + -90.0);
    std::vector<double>::resize(v46, ((v19 - v18) >> 4) - 1);
    v23 = (v44[1] - v44[0]) >> 4;
    if (v23 >= 2)
    {
      v24 = (v44[0] + 16);
      v25 = *v44[0];
      v26 = v46[0];
      v27 = v23 - 1;
      do
      {
        v28 = *v24++;
        v29 = vsubq_f64(v28, v25);
        v29.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v29, v29))) * (1.0 / v22);
        *v26++ = *&v29.f64[0];
        *(&v47 + 1) = v29.f64[0] + *(&v47 + 1);
        v25 = v28;
        --v27;
      }

      while (v27);
    }
  }

  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  v31 = v5[6];
  v30 = v5[7];
  if (v31 >= v30)
  {
    v32 = v5[5];
    v33 = 0x6DB6DB6DB6DB6DB7 * ((v31 - v32) >> 3);
    v34 = v33 + 1;
    if ((v33 + 1) > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v35 = 0x6DB6DB6DB6DB6DB7 * ((v30 - v32) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x249249249249249)
    {
      v36 = 0x492492492492492;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      if (v36 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v37 = 8 * ((v31 - v32) >> 3);
    *v37 = *v44;
    *(v37 + 16) = v45;
    v44[1] = 0;
    v45 = 0;
    v44[0] = 0;
    *(v37 + 24) = *v46;
    *(v37 + 40) = v47;
    v46[1] = 0;
    *&v47 = 0;
    v46[0] = 0;
    *(v37 + 48) = *(&v47 + 1);
    v38 = v37 - (v31 - v32);
    if (v32 != v31)
    {
      v39 = 0;
      do
      {
        v40 = (v32 + v39);
        *(v39 + 16) = 0;
        *v39 = *(v32 + v39);
        *(v39 + 16) = *(v32 + v39 + 16);
        *v40 = 0;
        v40[1] = 0;
        v40[2] = 0;
        *(v39 + 40) = 0;
        *(v39 + 24) = *(v32 + v39 + 24);
        *(v39 + 40) = *(v32 + v39 + 40);
        v40[3] = 0;
        v40[4] = 0;
        v40[5] = 0;
        *(v39 + 48) = *(v32 + v39 + 48);
        v39 += 56;
      }

      while (v40 + 7 != v31);
      do
      {
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v32);
        v32 += 56;
      }

      while (v32 != v31);
    }

    v41 = v5[5];
    v5[5] = v38;
    *(v5 + 3) = (56 * v33 + 56);
    if (v41)
    {
      operator delete(v41);
    }

    v42 = v46[0];
    v5[6] = 56 * v33 + 56;
    if (v42)
    {
      v46[1] = v42;
      operator delete(v42);
    }
  }

  else
  {
    v31[2] = 0;
    v31[3] = 0;
    *v31 = 0;
    v31[1] = 0;
    *v31 = *v44;
    v31[2] = v45;
    v44[0] = 0;
    v44[1] = 0;
    v45 = 0;
    v31[4] = 0;
    v31[5] = 0;
    *(v31 + 3) = *v46;
    v31[5] = v47;
    v46[0] = 0;
    v46[1] = 0;
    *&v47 = 0;
    v31[6] = *(&v47 + 1);
    v5[6] = v31 + 7;
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  return 1;
}

void sub_1B2CE7A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
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

uint64_t std::__function::__func<md::ComposedRoadEdgeWalker::ComposedRoadEdgeWalker(md::ComposedRoadEdge const*,BOOL)::$_0,std::allocator<md::ComposedRoadEdgeWalker::ComposedRoadEdgeWalker(md::ComposedRoadEdge const*,BOOL)::$_0>,BOOL ()(md::MuninRoadEdge const*,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EC048;
  a2[1] = v2;
  return result;
}

float64x2_t *md::ComposedRoadEdgeWalker::moveTo(float64x2_t *this, double a2)
{
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v3 = this[7].f64[1];
    v4 = 0.0;
    if (v3 > 0.0)
    {
      v4 = this[7].f64[0] / v3;
    }

    return md::ComposedRoadEdgeWalker::walk(this, (a2 - v4) * v3);
  }

  return this;
}

uint64_t md::ComposedRoadEdgeWalker::walk(float64x2_t *this, double a2)
{
  v3 = this[4].f64[1];
  v4 = v3 + a2;
  if (v3 + a2 >= 0.0)
  {
    v5 = this[4].f64[0];
    v7 = this[2].f64[1];
    for (i = 56 * *&v5 + 48; ; i += 56)
    {
      v14 = *(*&v7 + i);
      if (v4 <= v14)
      {
        break;
      }

      if (*&v5 == 0x6DB6DB6DB6DB6DB7 * ((*&this[3].f64[0] - *&v7) >> 3) - 1)
      {
        return 0;
      }

      a2 = v3 - v14 + a2;
      ++*&v5;
      this[4].f64[0] = v5;
      this[4].f64[1] = 0.0;
      v3 = 0.0;
      v4 = a2;
    }

LABEL_5:
    this[4].f64[1] = v4;
    result = md::MuninRoadEdgePolyline::pointAtDistance(*&v7 + 56 * *&v5, this + 5, this + 6, v4);
    v9 = this[4].f64[1];
    this[7].f64[0] = v9;
    v10 = this[4].f64[0];
    if (v10 != 0.0)
    {
      v11 = (*&this[2].f64[1] + 48);
      do
      {
        v12 = *v11;
        v11 += 7;
        v9 = v9 + v12;
        --*&v10;
      }

      while (v10 != 0.0);
      this[7].f64[0] = v9;
    }
  }

  else
  {
    v5 = this[4].f64[0];
    v6 = 56 * *&v5 - 8;
    while (v5 != 0.0)
    {
      a2 = v3 + a2;
      --*&v5;
      this[4].f64[0] = v5;
      v7 = this[2].f64[1];
      v3 = *(*&v7 + v6);
      this[4].f64[1] = v3;
      v4 = v3 + a2;
      v6 -= 56;
      if (v3 + a2 >= 0.0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ElevatedFillMesh::~ElevatedFillMesh(ggl::DaVinci::ElevatedFillMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::ElevatedFillMesh::~ElevatedFillMesh(ggl::DaVinci::ElevatedFillMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::attributesReflection(void)::r = &ggl::DaVinci::elevatedFillVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::attributesReflection(void)::r;
    *algn_1EB842A68 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::ElevatedFillColorPipelineState::~ElevatedFillColorPipelineState(ggl::DaVinci::ElevatedFillColorPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::DaVinci::ElevatedFillColorPipelineSetup::typedReflection(ggl::DaVinci::ElevatedFillColorPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::typedReflection();
    ggl::DaVinci::ElevatedFillColorPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DaVinci::ElevatedFillVbo>::typedReflection(void)::r;
    unk_1EB8428B0 = &ggl::DaVinci::pipelineDataElevatedFillColorPipelineDeviceStructs(void)::ref;
    qword_1EB8428B8 = 0;
    {
      ggl::DaVinci::pipelineDataElevatedFillColorPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB842A18 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB842A20 = ggl::DaVinci::ElevatedFillStyle::reflection(void)::reflection;
      unk_1EB842A28 = ggl::Tile::Clipping::reflection(void)::reflection;
    }

    qword_1EB8428C0 = &ggl::DaVinci::pipelineDataElevatedFillColorPipelineConstantStructs(void)::ref;
    unk_1EB8428C8 = xmmword_1B33B09E0;
  }
}

uint64_t ggl::DaVinci::ElevatedFillColorPipelineSetup::constantDataIsEnabled(ggl::DaVinci::ElevatedFillColorPipelineSetup *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    if (a2 == 3)
    {
      v2 = *(*(this + 2) + 336);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::DaVinci::ElevatedFillColorPipelineSetup::~ElevatedFillColorPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::ElevatedFillColorWithDistancePipelineState::~ElevatedFillColorWithDistancePipelineState(ggl::DaVinci::ElevatedFillColorWithDistancePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup::typedReflection(ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection();
    ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection(void)::r;
    unk_1EB82E230 = &ggl::DaVinci::pipelineDataElevatedFillColorWithDistancePipelineDeviceStructs(void)::ref;
    qword_1EB82E238 = 0;
    {
      ggl::DaVinci::pipelineDataElevatedFillColorWithDistancePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB82E120 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB82E128 = ggl::DaVinci::ElevatedFillStyle::reflection(void)::reflection;
      unk_1EB82E130 = ggl::Tile::Clipping::reflection(void)::reflection;
    }

    qword_1EB82E240 = &ggl::DaVinci::pipelineDataElevatedFillColorWithDistancePipelineConstantStructs(void)::ref;
    unk_1EB82E248 = xmmword_1B33B09E0;
  }
}

void ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::attributesReflection(void)::r = &ggl::DaVinci::distanceCompressedVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::attributesReflection(void)::r;
    unk_1EB82EE50 = 1;
  }
}

uint64_t ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup::constantDataIsEnabled(ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    if (a2 == 3)
    {
      v2 = *(*(this + 2) + 336);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup::~ElevatedFillColorWithDistancePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CustomTileOverlayResourceFetcher::tileKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  Int32 = gdc::ResourceKey::getInt32(v4, 0);
  v6 = gdc::ResourceKey::getInt32(v4, 1u);
  v7 = gdc::ResourceKey::getInt32(v4, 2u);
  gdc::ResourceKey::getInt32(v4, 3u);
  LOBYTE(v9) = GEOTileKeyMakeEmpty();
  *(&v9 + 1) = v7 & 0x3F | (Int32 << 6);
  *(&v9 + 5) = v6 & 0x3FFFFFF | (*(a1 + 8) << 26);
  return v9;
}

void md::CustomTileOverlayResourceFetcher::~CustomTileOverlayResourceFetcher(md::CustomTileOverlayResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void md::CustomTileOverlayResourceDecoder::decode(uint64_t *a1@<X2>, void *a2@<X8>)
{
  if (a1[14])
  {
    v3 = *a1;
    if (*a1)
    {
      md::LabelExternalPointFeature::incident(*(v3 + 16));
      if (objc_claimAutoreleasedReturnValue())
      {
        md::LabelExternalPointFeature::incident(*(v3 + 16));
        objc_claimAutoreleasedReturnValue();
        operator new();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<md::CustomTileOverlayResource>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 168) = off_1F2A4C810;

  v2 = *(a1 + 32);
  if (v2 != *(a1 + 48))
  {

    free(v2);
  }
}

void std::__shared_ptr_emplace<md::CustomTileOverlayResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EC2D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::CustomTileOverlayResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EC2A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<GEOTileLoader * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A55A90;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOTileLoader * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A55A90;

  return a1;
}

void md::TextureResourceDecoder::decode(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*a2)
  {
    v5 = *(*a2 + 16);
    md::LabelExternalPointFeature::incident(v5);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v5 = 0;
  }

  if (![v5 length])
  {
    goto LABEL_22;
  }

  v14 = 0;
  if (CMPhotoDecompressionDetectContainerFormat())
  {
    if ([*(a1 + 16) defaultDecompressionSession])
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991AD8]];
      [v6 setObject:&unk_1F2A88380 forKeyedSubscript:*MEMORY[0x1E6991AE8]];
      cf = 0;
      if (CMPhotoDecompressionSessionCreateContainer())
      {
        if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
        }

        v7 = GEOGetVectorKitResourceLoadingLog_log;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v8 = "Failed to decode raster resource - unable to create decompression container";
      }

      else
      {
        v12 = 0;
        CMPhotoDecompressionContainerGetImageCountWithOptions();
        CFRelease(cf);
        if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
        }

        v7 = GEOGetVectorKitResourceLoadingLog_log;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v8 = "Failed to decode raster resource - unable to get image count or 0 image count";
      }

      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
LABEL_28:

      *a3 = 0;
      a3[1] = 0;

      goto LABEL_29;
    }

    if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
    }

    v9 = GEOGetVectorKitResourceLoadingLog_log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v10 = "Failed to decode raster resource - missing decompression session";
  }

  else
  {
    if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
    }

    v9 = GEOGetVectorKitResourceLoadingLog_log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v10 = "Failed to decode raster resource - CMPhoto unable to detect container format";
  }

  _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_21:

LABEL_22:
  *a3 = 0;
  a3[1] = 0;
LABEL_29:
}

void sub_1B2CE8D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TextureResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::TextureResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EC310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TextureResourceDecoder::~TextureResourceDecoder(md::TextureResourceDecoder *this)
{
  *this = &unk_1F2A34758;
  *(this + 1) = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A34758;
  *(this + 1) = &unk_1F2A59028;
}

_DWORD *md::ARWalkingManeuverTextLabelPart::pushToRenderModel(uint64_t a1, float a2)
{
  result = (*(***(a1 + 576) + 128))(**(a1 + 576));
  if (*(a1 + 631) == 1)
  {
    v6 = *(a1 + 576);
    result = v6[1];
    if (result)
    {
      result[200] = *(*v6 + 768);
      v7 = *(*result + 128);
      v5.n128_f32[0] = a2;

      return v7(v5);
    }
  }

  return result;
}

uint64_t md::ARWalkingManeuverTextLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  result = (*(***(a1 + 576) + 80))(**(a1 + 576));
  if (result == 37)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 576);
    v12 = *v11;
    v13 = *(*v11 + 24);
    v14 = (v13 + 72);
    v15 = (v13 + 80);
    do
    {
      v16 = v15[v10];
      v17 = *(v14 + v10);
      if (v9)
      {
        break;
      }

      v9 = 1;
      v10 = 1;
    }

    while (v16 >= v17);
    if (v16 < v17)
    {
      return 14;
    }

    v36 = *v14;
    if (*(a1 + 631) != 1)
    {
      goto LABEL_16;
    }

    v18 = 0;
    v19 = 0;
    v20 = v12[261];
    v21 = fminf((*v15 - *v14) - fmaxf((*v15 - *v14) + (v20 * 0.85), v20 * 5.0), 0.0);
    do
    {
      v22 = v15[v19];
      v23 = *(v14 + v19);
      if (v18)
      {
        break;
      }

      v18 = 1;
      v19 = 1;
    }

    while (v22 >= v23);
    if (v22 >= v23)
    {
      v28 = v20 * 0.15;
      v29 = v21 * 0.5;
      v25 = v29 + *v14;
      v26 = (v12[263] - (v20 * 0.15)) + *(v13 + 76);
      v24 = *v15 - v29;
      v27 = (v28 - v12[262]) + *(v13 + 84);
    }

    else
    {
      v24 = -3.4028e38;
      v25 = 3.4028e38;
      v26 = 3.4028e38;
      v27 = -3.4028e38;
    }

    *v35 = v25;
    *&v35[1] = v26;
    *&v35[2] = v24;
    *&v35[3] = v27;
    md::AnimatedTextureLabelPart::setMeshRectForStaging(v11[1], v35);
    v30 = *(a1 + 576);
    v31 = v30[1];
    v31[166] = *(*v30 + 1044) * 3.0;
    result = (*(*v31 + 80))(v31, a2, a3, a4);
    if (result == 37)
    {
      LODWORD(v36) = gm::Box<float,2>::enclosed(&v36, *(*(*(a1 + 576) + 8) + 24) + 72);
      *(&v36 + 4) = __PAIR64__(v33, v32);
      HIDWORD(v36) = v34;
LABEL_16:
      md::CollisionObject::setLocalBounds(a1 + 72, &v36);
      *(a1 + 280) = *a3;
      *(a1 + 284) = a3[1];
      *(a1 + 104) = *a3;
      *(a1 + 108) = a3[1];
      md::CollisionObject::setupShapeData(a1 + 72);
      *(a1 + 184) = (*(*a1 + 136))(a1);
      return 37;
    }
  }

  return result;
}

void md::ARWalkingManeuverTextLabelPart::~ARWalkingManeuverTextLabelPart(md::ARWalkingManeuverTextLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

md::LabelPart *md::ARWalkingManeuverTextLabelPart::ARWalkingManeuverTextLabelPart(md::LabelPart *a1, void *a2, md::LabelPart *a3, char a4)
{
  md::LabelPart::LabelPart(a1);
  *(v8 + 592) = 0;
  *(v8 + 576) = 0u;
  *(v8 + 608) = 0;
  *(v8 + 612) = 0;
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  *v8 = &unk_1F29EC348;
  *(v8 + 628) = 1;
  v9 = mdm::zone_mallocator::instance(v8);
  v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v9, 0x508uLL);
  v13[0] = 0;
  v13[10] = 0;
  v11 = md::HorizontalTextLabelPart::HorizontalTextLabelPart(v10, a2, v13, 0);
  *v11 = &unk_1F2A332B8;
  *(v11 + 1272) = a4;
  md::LabelPart::setRenderOrder(v11, 1);
  md::CompositeLabelPart::addLabelPart(a1, v10);
  if (a3)
  {
    *(a1 + 631) = 1;
    (*(*a3 + 832))(a3, 0);
    md::CompositeLabelPart::addLabelPart(a1, a3);
  }

  return a1;
}

void ggl::SpecularBuildingTop::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void HillshadeRenderable::~HillshadeRenderable(HillshadeRenderable *this)
{
  md::MapTileDataRenderable<md::HillshadeTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileDataRenderable<md::HillshadeTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F29EC760;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::HillshadeTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::HillshadeTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninRoadLabelGenerator::createLabel(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = v30;
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v4, 1);
  *v5 = 0x1000000005;
  memcpy(v5 - (v28 - v27), v27, v28 - v27);
  v6 = v27;
  v7 = v29;
  v27 = v5 - (v28 - v27);
  v28 = (v5 + 1);
  v29 = (v5 + 1);
  v24 = v6;
  v25 = v7;
  v22 = v6;
  v23 = v6;
  v8 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v22);
  v28 = (v5 + 1);
  v9 = *(a3 + 106);
  if ((v5 + 1) >= v29)
  {
    v11 = ((v5 + 1) - v27) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = (v29 - v27) >> 2;
    if (v12 <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    if (v29 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v26 = v30;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(v8);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v14, v13);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v13];
    v17 = (v9 << 32) | 0x1004F;
    v18 = &v15[8 * v11];
    *v18 = v17;
    v10 = (v18 + 1);
    v19 = &v15[8 * v11 - (v28 - v27)];
    memcpy(v19, v27, v28 - v27);
    v20 = v27;
    v21 = v29;
    v27 = v19;
    v28 = v10;
    v29 = v16;
    v24 = v20;
    v25 = v21;
    v22 = v20;
    v23 = v20;
    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v22);
  }

  else
  {
    v5[1] = (v9 << 32) | 0x1004F;
    v10 = (v5 + 2);
  }

  v28 = v10;
  _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t std::basic_ostringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 168) = 0;
  *a1 = &unk_1F29EFB90;
  *(a1 + 120) = &unk_1F29EFBB8;
  std::ios_base::init((a1 + 120), (a1 + 8));
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  *a1 = &unk_1F29EFB20;
  *(a1 + 120) = &unk_1F29EFB48;
  std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_stringbuf[abi:nn200100](a1 + 8, 16);
  return a1;
}

void sub_1B2CEA60C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](v1);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsFeatureStylePair>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(uint64_t a1)
{
  v3.__vftable = (a1 + 24);
  std::vector<std::shared_ptr<md::TextDataString>,geo::allocator_adapter<std::shared_ptr<md::TextDataString>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataEntry>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TextDataString>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::overflow(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 == v6)
  {
    if ((*(a1 + 104) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 96);
    v12 = a1 + 64;
    if (*(a1 + 87) < 0)
    {
      v14 = *(a1 + 72);
      v13 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 != v13)
      {
LABEL_12:
        v15 = *(a1 + 64);
        *(a1 + 72) = v14 + 1;
LABEL_14:
        *(v15 + v14) = 0;
        if (*(a1 + 87) < 0)
        {
          v16 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        else
        {
          v16 = 22;
        }

        v17 = &v7[-v10];
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::resize((a1 + 64), v16);
        v18 = *(a1 + 87);
        if (v18 < 0)
        {
          v12 = *(a1 + 64);
          v18 = *(a1 + 72);
        }

        v6 = (v12 + v18);
        v7 = &v17[v12];
        *(a1 + 40) = v12;
        *(a1 + 48) = v7;
        *(a1 + 56) = v6;
        v8 = v12 + v11 - v10;
        goto LABEL_20;
      }
    }

    else
    {
      if (*(a1 + 87) != 22)
      {
        v14 = *(a1 + 87);
        *(a1 + 87) = (*(a1 + 87) + 1) & 0x7F;
        v15 = a1 + 64;
        goto LABEL_14;
      }

      v13 = 22;
    }

    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by((a1 + 64), v13, 1uLL, v13, v13);
    v14 = v13;
    goto LABEL_12;
  }

  v8 = *(a1 + 96);
LABEL_20:
  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 96) = v8;
  if ((*(a1 + 104) & 8) != 0)
  {
    v19 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v19 = *v19;
    }

    *(a1 + 16) = v19;
    *(a1 + 24) = v19 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 == v6)
  {
    v20 = *(*a1 + 104);

    return v20(a1, v2);
  }

  else
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }
}

void std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::resize(void **a1, _BYTE *a2)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v7 = a1[1];
    v4 = a2 - v7;
    if (a2 > v7)
    {
      v3 = a1[1];
      v8 = a1[2];
      v5 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v8);
      goto LABEL_6;
    }

    a1[1] = a2;
    v2 = *a1;
LABEL_14:
    v11 = &a2[v2];
    goto LABEL_17;
  }

  v4 = &a2[-v3];
  if (a2 <= v3)
  {
    *(a1 + 23) = a2;
    goto LABEL_14;
  }

  v5 = 22;
  LOBYTE(v6) = *(a1 + 23);
LABEL_6:
  if (v5 - v3 < v4)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by(a1, v5, v4 - v5 + v3, v3, v3);
    v2[1] = v3;
    LOBYTE(v6) = *(v2 + 23);
  }

  v9 = v2;
  if ((v6 & 0x80) != 0)
  {
    v9 = *v2;
  }

  bzero(v9 + v3, v4);
  v10 = v3 + v4;
  if (*(v2 + 23) < 0)
  {
    v2[1] = v10;
  }

  else
  {
    *(v2 + 23) = v10 & 0x7F;
  }

  v11 = v9 + v10;
LABEL_17:
  *v11 = 0;
}

void std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by(void **a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5)
{
  if (0x7FFFFFFFFFFFFFF7 - a2 < a3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = a1;
  if (*(a1 + 23) < 0)
  {
    v9 = *a1;
  }

  v10 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v10 = 2 * a2;
  }

  if ((v10 | 7) == 0x17)
  {
    v11 = 25;
  }

  else
  {
    v11 = (v10 | 7) + 1;
  }

  v12 = v10 >= 0x17;
  v13 = 23;
  if (v12)
  {
    v13 = v11;
  }

  if (a2 <= 0x3FFFFFFFFFFFFFF2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFF7;
  }

  v15 = mdm::zone_mallocator::instance(a1);
  v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v15, v14);
  v17 = v16;
  if (a5)
  {
    v16 = memmove(v16, v9, a5);
  }

  if (a4 != a5)
  {
    v16 = memmove(&v17[a5], &v9[a5], a4 - a5);
  }

  if (a2 != 22)
  {
    v18 = mdm::zone_mallocator::instance(v16);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v18, v9);
  }

  *a1 = v17;
  a1[2] = (v14 | 0x8000000000000000);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 96) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 24) = v4 - 1;
    *(a1 + 32) = v2;
    return a2;
  }

  if ((*(a1 + 104) & 0x10) == 0 && *(v4 - 1) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v4 - 1;
  *(a1 + 32) = v2;
  *(v4 - 1) = a2;
  return a2;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 96) = v2;
    v1 = v2;
  }

  if ((*(a1 + 104) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 96) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = a3;
    goto LABEL_20;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = v5 - v9;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }
  }

LABEL_20:
  v7 = -1;
  v12 = v11 + a2;
  if (v12 >= 0 && v10 >= v12 && (!v12 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + v12;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + v12;
    }

    v7 = v12;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_1F29F1070;
  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x1B8C62190);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_1F29F1070;
  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void virtual thunk tostd::basic_ostringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_ostringstream(mdm::zone_mallocator *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_1F29EFB20;
  v1[15].__locale_ = &unk_1F29EFB48;
  v1[1].__locale_ = &unk_1F29F1070;
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    locale = v1[9].__locale_;
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, locale);
  }

  v1[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&v1[15]);

  JUMPOUT(0x1B8C62190);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_1F29EFB20;
  v1[15].__locale_ = &unk_1F29EFB48;
  v1[1].__locale_ = &unk_1F29F1070;
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    locale = v1[9].__locale_;
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, locale);
  }

  v1[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 2);
  std::ostream::~ostream();

  JUMPOUT(0x1B8C620C0);
}

void std::basic_ostringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_ostringstream(uint64_t a1)
{
  *a1 = &unk_1F29EFB20;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_1F29EFB48;
  *(a1 + 8) = &unk_1F29F1070;
  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](v2);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::basic_ostringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_ostringstream(uint64_t a1)
{
  *a1 = &unk_1F29EFB20;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_1F29EFB48;
  *(a1 + 8) = &unk_1F29F1070;
  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](v2);
  return a1;
}

void std::__shared_ptr_emplace<md::MuninRoadLabel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EC780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C61F50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F29F1070;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = a2;
  *(a1 + 96) = 0;
  if ((a2 & 8) != 0)
  {
    *(a1 + 96) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 96) = v4;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::resize((a1 + 64), 0x16);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_1B2CEB428(mdm::zone_mallocator *a1)
{
  if (*(v1 + 87) < 0)
  {
    v5 = *v3;
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v6, v5);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::default_delete<md::LabelStyleGroupInfo>::operator()[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelStyle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

BOOL md::ARMapEngineConfiguration::shouldRebuildCurrentMode(md::ARMapEngineConfiguration *this, md::MapEngine *a2)
{
  v2 = *(a2 + 5242);
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v3 != v4)
  {
    if (*v3 == 27)
    {
      if (v3 != v4)
      {
        v5 = v3[8];
        goto LABEL_8;
      }

      break;
    }

    v3 += 16;
  }

  v5 = 0;
LABEL_8:
  v6 = *(this + 32) != v5;
  *(this + 32) = v5;
  return v6;
}

void md::ARMapEngineConfiguration::createMode(int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 14)
  {
    if (a1 == 15)
    {
      operator new();
    }

    if (a1 == 16)
    {
      operator new();
    }
  }

  else
  {
    if (a1 == 13)
    {
      operator new();
    }

    if (a1 == 14)
    {
      operator new();
    }
  }

  md::MapEngineConfiguration::createMode(a1, a2);
}

void sub_1B2CEDDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, ggl::RenderDataHolder *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  std::__function::__value_func<ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v62);
  std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v60);
  std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v59);
  std::__function::__value_func<void ()(ggl::ARMesh::ARDepthMeshPipelineSetup *)>::~__value_func[abi:nn200100](&a47);
  std::__function::__value_func<ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a51);
  MEMORY[0x1B8C62190](v59, 0x10A0C405CD4001ALL);
  ggl::RenderDataHolder::~RenderDataHolder(a9);
  v66 = *(v61 + 128);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  v67 = *(v61 + 112);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  v68 = *(v61 + 96);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>>::reset[abi:nn200100]((v61 + 80), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>>::reset[abi:nn200100]((v61 + 72), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>>::reset[abi:nn200100](v63, 0);

  v69 = *(v61 + 56);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  *v61 = a10;
  v70 = *(v61 + 8);
  if (v70)
  {
    *(v61 + 16) = v70;
    operator delete(v70);
  }

  MEMORY[0x1B8C62190](v61, 0x10A1C408C8C457FLL);
  a22 = a12;
  std::vector<std::unique_ptr<md::RenderLayer>>::__destroy_vector::operator()[abi:nn200100](&a22);
  _Unwind_Resume(a1);
}

void md::ARMapEngineConfiguration::~ARMapEngineConfiguration(md::ARMapEngineConfiguration *this)
{
  md::ARMapEngineConfiguration::~ARMapEngineConfiguration(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EC7B8;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *this = &unk_1F2A58798;
  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void std::__shared_ptr_pointer<gdc::Registry *,std::shared_ptr<gdc::Registry>::__shared_ptr_default_delete<gdc::Registry,gdc::Registry>,std::allocator<gdc::Registry>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::StyleTexture<md::LowZoomClimateStyle>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::StyleTexture<md::LowZoomClimateStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EC828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::StyleTexture<md::LowZoomStyle>::StyleTexture(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = a5;
  {
    md::StyleTexture<md::LowZoomStyle>::StyleTexture(unsigned long,md::StyleTexture<md::LowZoomStyle>::PackStyle,BOOL,ggl::Filter)::bytesPerPixel = 4;
  }

  v8 = md::StyleTexture<md::LowZoomStyle>::StyleTexture(unsigned long,md::StyleTexture<md::LowZoomStyle>::PackStyle,BOOL,ggl::Filter)::bytesPerPixel;
  v9 = (v8 + 3) / v8;
  *(a1 + 80) = v9;
  if (a3)
  {
    if (a3 == 1)
    {
      *(a1 + 48) = v9;
      v10 = (v8 + 3) / v8;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(a1 + 48);
      if (!a4)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = vcvtpd_u64_f64(sqrt(0));
    *(a1 + 48) = v10;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  v11 = v10 > 1;
  v10 = (1 << -__clz(v10 - 1));
  if (!v11)
  {
    v10 = 1;
  }

  *(a1 + 48) = v10;
LABEL_12:
  v12 = (v10 / v9);
  v13 = vcvtpd_u64_f64(0 / trunc(v12));
  *(a1 + 72) = v12;
  v14 = (1 << -__clz(v13 - 1));
  if (v13 <= 1)
  {
    v14 = 1;
  }

  if (!a4)
  {
    v14 = v13;
  }

  *(a1 + 56) = v14;
  *(a1 + 64) = v9 * v8;
  *(a1 + 88) = 1.0 / v10;
  return a1;
}

void std::__shared_ptr_emplace<md::StyleTexture<md::LowZoomStyle>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::StyleTexture<md::LowZoomStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A322C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void non-virtual thunk toggl::Texture2D::~Texture2D(ggl::Texture2D *this)
{
  v2 = (this - 40);
  *(this - 5) = &unk_1F2A5D9F0;
  *this = &unk_1F2A5DA10;
  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this - 5) = &unk_1F2A5DA30;
  *this = &unk_1F2A5DA50;
  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  ggl::Texture::~Texture(v2);

  JUMPOUT(0x1B8C62190);
}

{
  v2 = (this - 40);
  *(this - 5) = &unk_1F2A5D9F0;
  *this = &unk_1F2A5DA10;
  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this - 5) = &unk_1F2A5DA30;
  *this = &unk_1F2A5DA50;
  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  ggl::Texture::~Texture(v2);
}

void non-virtual thunk toggl::Texture2DAbstract::~Texture2DAbstract(ggl::Texture2DAbstract *this)
{
  v1 = (this - 40);
  *(this - 5) = &unk_1F2A5DA30;
  *this = &unk_1F2A5DA50;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(v1);

  JUMPOUT(0x1B8C62190);
}

{
  v1 = (this - 40);
  *(this - 5) = &unk_1F2A5DA30;
  *this = &unk_1F2A5DA50;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(v1);
}

void ggl::Texture2DAbstract::~Texture2DAbstract(ggl::Texture2DAbstract *this)
{
  *this = &unk_1F2A5DA30;
  *(this + 5) = &unk_1F2A5DA50;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5DA30;
  *(this + 5) = &unk_1F2A5DA50;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(this);
}

void std::__shared_ptr_emplace<ggl::Texture2D>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D9B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureData2D>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__int16 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *,0>(__int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *a2;
  v8 = *result;
  v9 = *(a6 + 40 * *a2 + 32);
  v10 = *(a6 + 40 * *result + 32);
  v11 = *a3;
  v12 = *(a6 + 40 * *a3 + 32);
  if (v9 < v10)
  {
    if (v12 < v9)
    {
      *result = v11;
LABEL_9:
      *a3 = v8;
      v6 = v8;
      v7 = v8;
      goto LABEL_12;
    }

    *result = v7;
    *a2 = v8;
    v6 = *a3;
    if (*(a6 + 40 * *a3 + 32) < v10)
    {
      *a2 = v6;
      goto LABEL_9;
    }

LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  if (v12 >= v9)
  {
    v6 = *a3;
    v7 = *a3;
    goto LABEL_12;
  }

  *a2 = v11;
  *a3 = v7;
  v13 = *result;
  if (*(a6 + 40 * *a2 + 32) < *(a6 + 40 * *result + 32))
  {
    *result = *a2;
    *a2 = v13;
    v6 = *a3;
    goto LABEL_11;
  }

LABEL_12:
  if (*(a6 + 40 * *a4 + 32) < *(a6 + 40 * v6 + 32))
  {
    *a3 = *a4;
    *a4 = v7;
    v14 = *a2;
    if (*(a6 + 40 * *a3 + 32) < *(a6 + 40 * *a2 + 32))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (*(a6 + 40 * *a2 + 32) < *(a6 + 40 * *result + 32))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  v16 = *a4;
  if (*(a6 + 40 * *a5 + 32) < *(a6 + 40 * *a4 + 32))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (*(a6 + 40 * *a4 + 32) < *(a6 + 40 * *a3 + 32))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (*(a6 + 40 * *a3 + 32) < *(a6 + 40 * *a2 + 32))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (*(a6 + 40 * *a2 + 32) < *(a6 + 40 * *result + 32))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *>(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a1[1];
      v4 = *a1;
      v6 = *a3;
      v7 = *(*a3 + 40 * v5 + 32);
      v8 = *(*a3 + 40 * *a1 + 32);
      v9 = *(a2 - 1);
      v10 = *(*a3 + 40 * v9 + 32);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v5;
          v33 = *a1;
          if (*(v6 + 40 * a1[1] + 32) < *(v6 + 40 * *a1 + 32))
          {
            *a1 = a1[1];
            a1[1] = v33;
          }
        }

        return 1;
      }

      if (v10 < v7)
      {
        *a1 = v9;
        goto LABEL_42;
      }

      *a1 = v5;
      a1[1] = v4;
      if (*(v6 + 40 * *(a2 - 1) + 32) < v8)
      {
        a1[1] = *(a2 - 1);
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    v26 = *a3;
    v27 = *(*a3 + 40 * a1[1] + 32);
    v28 = *(*a3 + 40 * *a1 + 32);
    v29 = *(*a3 + 40 * a1[2] + 32);
    if (v27 >= v28)
    {
      if (v29 < v27)
      {
        v30 = a1;
        *v21 = v24;
        *v23 = v22;
        v31 = a1 + 1;
        v32 = v22;
        v43 = v22;
        if (v29 >= v28)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v29 < v27)
      {
        v30 = a1;
        v31 = a1 + 2;
        v22 = *a1;
        v32 = *a1;
LABEL_44:
        *v30 = v24;
        *v31 = v25;
        v43 = v32;
LABEL_46:
        if (*(v26 + 40 * *(a2 - 1) + 32) < *(v26 + 40 * v22 + 32))
        {
          *v23 = *(a2 - 1);
          *(a2 - 1) = v43;
          v44 = *v23;
          v45 = *v21;
          v46 = *(v26 + 40 * v44 + 32);
          if (v46 < *(v26 + 40 * v45 + 32))
          {
            a1[1] = v44;
            a1[2] = v45;
            v47 = *a1;
            if (v46 < *(v26 + 40 * *a1 + 32))
            {
              *a1 = v44;
              a1[1] = v47;
            }
          }
        }

        return 1;
      }

      v30 = a1 + 1;
      *a1 = v22;
      a1[1] = v25;
      v31 = a1 + 2;
      v22 = v25;
      v32 = v25;
      if (v29 < v28)
      {
        goto LABEL_44;
      }
    }

    v22 = v24;
    v43 = v24;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *a1;
    if (*(*a3 + 40 * *(a2 - 1) + 32) < *(*a3 + 40 * *a1 + 32))
    {
      *a1 = *(a2 - 1);
LABEL_42:
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *a3;
  v16 = *(*a3 + 40 * v13 + 32);
  v17 = *(v15 + 40 * *a1 + 32);
  v18 = *(v15 + 40 * v11 + 32);
  if (v16 >= v17)
  {
    if (v18 >= v16)
    {
      goto LABEL_26;
    }

    a1[1] = v11;
    *v12 = v13;
    v19 = a1;
    v20 = (a1 + 1);
LABEL_24:
    if (v18 >= v17)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v19 = a1;
  v20 = (a1 + 2);
  if (v18 >= v16)
  {
    *a1 = v13;
    a1[1] = v14;
    v19 = a1 + 1;
    v20 = (a1 + 2);
    goto LABEL_24;
  }

LABEL_25:
  *v19 = v11;
  *v20 = v14;
LABEL_26:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 6; ; i += 2)
  {
    v37 = *v34;
    v38 = *v12;
    v39 = *(v15 + 40 * *v34 + 32);
    if (v39 < *(v15 + 40 * v38 + 32))
    {
      v40 = i;
      while (1)
      {
        *(a1 + v40) = v38;
        v41 = v40 - 2;
        if (v40 == 2)
        {
          break;
        }

        LOWORD(v38) = *(a1 + v40 - 4);
        v40 -= 2;
        if (v39 >= *(v15 + 40 * v38 + 32))
        {
          v42 = (a1 + v41);
          goto LABEL_34;
        }
      }

      v42 = a1;
LABEL_34:
      *v42 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v12 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

void ggl::CircleMultiStroke::FillPipelineState::~FillPipelineState(ggl::CircleMultiStroke::FillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::CircleMultiStroke::FillPipelineSetup::typedReflection(ggl::CircleMultiStroke::FillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection();
    ggl::CircleMultiStroke::FillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection(void)::r;
    *algn_1ED65AC68 = &ggl::CircleMultiStroke::pipelineDataFillPipelineDeviceStructs(void)::ref;
    qword_1ED65AC70 = 0;
    {
      ggl::CircleMultiStroke::pipelineDataFillPipelineConstantStructs(void)::ref = ggl::CircleMultiStroke::Style::reflection(void)::reflection;
      unk_1ED65AC40 = ggl::Tile::View::reflection(void)::reflection;
      qword_1ED65AC48 = ggl::Tile::Transform::reflection(void)::reflection;
      unk_1ED65AC50 = ggl::CircleMultiStroke::CirclePositionAndScale::reflection(void)::reflection;
    }

    qword_1ED65AC78 = &ggl::CircleMultiStroke::pipelineDataFillPipelineConstantStructs(void)::ref;
    unk_1ED65AC80 = xmmword_1B33B09E0;
  }
}

void ggl::CircleMultiStroke::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::AttributesTileData::~AttributesTileData(md::AttributesTileData *this)
{
  md::MapTileData::~MapTileData(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(uint64_t a1, void *a2)
{
  v22[10] = *MEMORY[0x1E69E9840];
  v2 = a2;
  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v22, v2);
  v20 = &unk_1F29ECC40;
  v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 uniqueIdentifier];
        if (v8)
        {
          v9 = [v7 uniqueIdentifier];
          v10 = [v9 length] == 0;

          if (!v10)
          {
            v11 = v21;
            v12 = [v7 uniqueIdentifier];
            [v11 addObject:v12];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v17, v22);
  geo::_retain_ptr<NSMutableSet<NSString *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v18, &v20);
  v18[6] = 0;
  operator new();
}

void sub_1B2CEFBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, char a26)
{
  std::__function::__value_func<BOOL ()(VKTrafficIncidentFeature *)>::~__value_func[abi:nn200100](&a26);

  *(v27 - 200) = a10;
  *(v27 - 176) = &unk_1F2A436C8;

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<NSMutableSet<NSString *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F29ECC40;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t std::__function::__func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = *(a1 + 40);
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

void std::__function::__func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::destroy[abi:nn200100](uint64_t a1)
{
  *(a1 + 24) = &unk_1F29ECC40;

  *a1 = &unk_1F2A436C8;
  v2 = *(a1 + 8);
}

void *std::__function::__func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F29ECC60;
  v3 = a2 + 4;
  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 1, a1 + 8);

  return geo::_retain_ptr<NSMutableSet<NSString *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a1 + 32);
}

void std::__function::__func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29ECC60;
  *(a1 + 32) = &unk_1F29ECC40;

  *(a1 + 8) = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::MapStandardLabeler::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,BOOL ()(VKTrafficIncidentFeature *)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29ECC60;
  *(a1 + 32) = &unk_1F29ECC40;

  *(a1 + 8) = &unk_1F2A436C8;
  return a1;
}

void geo::_retain_ptr<NSMutableSet<NSString *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29ECC40;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSMutableSet<NSString *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29ECC40;

  return a1;
}

void md::MapStandardLabeler::mapTypeDidChange(md::MapStandardLabeler *this)
{
  v1 = *(*(this + 49) + 113);
  v2 = atomic_load((*(this + 3) + 3425));
  if ((v2 ^ v1))
  {
    *(this + 369) = 1;
    v3 = *(this + 49);
    v4 = atomic_load((*(this + 3) + 3425));
    if (*(v3 + 113) != (v4 & 1))
    {
      if (*(v3 + 113))
      {
        v5 = *(v3 + 48);
        if (v5)
        {
          objc_storeStrong((v3 + 72), v5);
        }

        md::LabelTransitSupport::reset(v3);
        *(v3 + 113) = 0;
      }

      else
      {
        *(v3 + 113) = 1;
        if (*(v3 + 72))
        {
          (*(*v3 + 8))(v3);
          v6 = *(v3 + 72);
          if (v6)
          {
            *(v3 + 72) = 0;
          }
        }
      }
    }
  }
}

float md::MapStandardLabeler::debugDraw(md::MapStandardLabeler *this, NSMutableString *a2, md::DebugConsole *a3)
{
  md::StandardLabeler::debugDraw(this, a2, a3);
  if (*(this + 452) == 1)
  {
    if (*(this + 55))
    {
      *(a3 + 24) = -16776961;
      v9 = gm::OBRect<float>::axisAlignedBoundingRect((*(this + 55) + 8));
      v10[0] = v6;
      v10[1] = v7;
      *(a3 + 2) = v9;
      *(a3 + 3) = v8;
      return ggl::DebugConsole::drawRectangle(a3, v10);
    }
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<md::LabelTrafficTile>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

int *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (v12)
        {
          v15 = *v12;
          v13 = v12 + 2;
          v14 = v15;
          v16 = v15 + 120 * *(v13 + a3);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) != *(v16 + 12))
          {
            break;
          }
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if (a3 >= 0x17)
      {
        v27 = 23;
      }

      else
      {
        v27 = a3;
      }

      v28 = v14 + 120 * *(v13 + v27);
      v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v28 + 48), a2);
      if (v23 == *(v28 + 60))
      {
        return &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }

      v24 = *(v28 + 48);
      v25 = *(v28 + 56);
      return (v24 + v25 + 4 * v23);
    }

LABEL_7:
    v17 = *(v7 + 72);
    if (v17)
    {
      v18 = a3 >= 0x17 ? 23 : a3;
      v19 = *(v17 + v18 + 16);
      v20 = *v17;
      v21 = *v17 + 120 * v19;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v21, a2) != *(v21 + 12))
      {
        v22 = v20 + 120 * v19;
        v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v22 + 48), a2);
        if (v23 == *(v22 + 60))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        v24 = *(v22 + 48);
        v25 = *(v22 + 56);
        return (v24 + v25 + 4 * v23);
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,unsigned int>(a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBoundingRect>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBoundingRect>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x1000040C179455EuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_pointer<md::LabelExternalObjectsModerator *,std::shared_ptr<md::LabelExternalObjectsModerator>::__shared_ptr_default_delete<md::LabelExternalObjectsModerator,md::LabelExternalObjectsModerator>,std::allocator<md::LabelExternalObjectsModerator>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2CF0D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v25 - 112));

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

void sub_1B2CF2718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a63)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](&a59);
  }

  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&a57);

  _Unwind_Resume(a1);
}

void sub_1B2CF2A9C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v1 + 248);
  std::__function::__value_func<void ()(VKFlyoverTourState)>::~__value_func[abi:nn200100](v1 + 216);
  std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](v1 + 184);
  std::unique_ptr<md::TourData>::reset[abi:nn200100]((v1 + 32), 0);
  std::unique_ptr<std::map<unsigned long long,GEOPDFlyover const* {__strong}>>::reset[abi:nn200100](v2, 0);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(VKFlyoverTourState)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::optional<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>>::optional[abi:nn200100]<-[VKMapCameraController flyoverTourAnimation:animateToStart:labelChanged:stateChange:]::$_4 &,0>(uint64_t a1, id *a2)
{
  objc_copyWeak(&to, a2);
  *(a1 + 24) = 0;
  *a1 = &unk_1F29ECD50;
  objc_moveWeak((a1 + 8), &to);
  *(a1 + 24) = a1;
  objc_destroyWeak(&to);
  *(a1 + 32) = 1;
  return a1;
}

uint64_t std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B2CF37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](&a10);
  }

  _Unwind_Resume(a1);
}

void ___ZZ86__VKMapCameraController_flyoverTourAnimation_animateToStart_labelChanged_stateChange__ENK3__2clE18VKFlyoverTourState_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 48));
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v4 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 48);
        if (v5 > 6)
        {
          v6 = &stru_1F2A61C40;
        }

        else
        {
          v6 = *(&off_1E7B32528 + v5);
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Flyover Tour: state change: %@", &v7, 0xCu);
      }
    }
  }
}

void ___ZZ86__VKMapCameraController_flyoverTourAnimation_animateToStart_labelChanged_stateChange__ENK3__1clERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40))
  {
    v3 = *(a1 + 48);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    (*(*(a1 + 40) + 16))();
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Flyover Tour: label change: %@", &v6, 0xCu);
    }
  }
}

uint64_t std::__shared_ptr_emplace<md::VKFlyoverTour>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 248);
  std::__function::__value_func<void ()(VKFlyoverTourState)>::~__value_func[abi:nn200100](a1 + 216);
  result = std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](a1 + 184);
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *v3;
    *v3 = 0;
    if (v4)
    {
      md::AnimationData::~AnimationData(v4);
      MEMORY[0x1B8C62190]();
    }

    result = MEMORY[0x1B8C62190](v3, 0x1020C40F7B62AD5);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    std::__tree<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>>>::destroy(*(v5 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<md::VKFlyoverTour>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29ECD98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<void ()(GEOPDFlyover const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZZ91__VKMapCameraController_startFlyoverTourAnimation_animateToStart_labelChanged_stateChange__ENK3__0clEPK12GEOPDFlyover_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      [WeakRetained flyoverTourAnimation:v4 animateToStart:*(a1 + 64) labelChanged:*(a1 + 48) stateChange:*(a1 + 40)];
    }

    else
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        (*(v5 + 16))(v5, 6);
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v6 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v7 = 0;
          _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_ERROR, "Flyover Tour: failed to load", v7, 2u);
        }
      }
    }
  }
}

double __copy_helper_block_ea8_128c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE184c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE240c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE296c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v2 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v2;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  result = *(a2 + 344);
  *(a1 + 344) = result;
  return result;
}

double gm::cubicBezier<gm::Matrix<double,3,1>,float>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, __int128 a19, uint64_t a20, float a21)
{
  v19 = 0;
  *v48 = a1;
  *&v48[1] = a2;
  *&v48[2] = a3;
  *v47 = a4;
  *&v47[1] = a5;
  *&v47[2] = a6;
  v45 = a17;
  v46 = a18;
  v43 = a19;
  v44 = a20;
  v20 = 1.0 - a21;
  do
  {
    *(&v49 + v19 * 8) = *&v48[v19] * ((v20 * v20) * v20);
    ++v19;
  }

  while (v19 != 3);
  v21 = 0;
  v37 = v49;
  v38 = v50;
  v22 = v20 * 3.0;
  v23 = ((v20 * a21) * (v20 * 3.0));
  do
  {
    *(&v49 + v21 * 8) = *&v47[v21] * v23;
    ++v21;
  }

  while (v21 != 3);
  v24 = 0;
  v35 = v49;
  v36 = v50;
  do
  {
    *(&v49 + v24) = *(&v35 + v24) + *(&v37 + v24);
    v24 += 8;
  }

  while (v24 != 24);
  v25 = 0;
  v39 = v49;
  v40 = v50;
  v26 = (v22 * (a21 * a21));
  do
  {
    *(&v49 + v25) = *(&v45 + v25) * v26;
    v25 += 8;
  }

  while (v25 != 24);
  v27 = 0;
  v33 = v49;
  v34 = v50;
  do
  {
    *(&v49 + v27) = *(&v33 + v27) + *(&v39 + v27);
    v27 += 8;
  }

  while (v27 != 24);
  v28 = 0;
  v41 = v49;
  v42 = v50;
  do
  {
    *(&v49 + v28) = *(&v43 + v28) * ((a21 * a21) * a21);
    v28 += 8;
  }

  while (v28 != 24);
  v29 = 0;
  v31 = v49;
  v32 = v50;
  do
  {
    *(&v49 + v29) = *(&v31 + v29) + *(&v41 + v29);
    v29 += 8;
  }

  while (v29 != 24);
  return *&v49;
}

void sub_1B2CF6260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B2CF86FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, char a37)
{
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_72c24_ZTSN2gm10QuaternionIdEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v2;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void sub_1B2CF8F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B2CF9094(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2CF9938(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2CFA9C4(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_96c24_ZTSN2gm10QuaternionIdEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v2;
  result = *(a2 + 120);
  *(a1 + 120) = result;
  return result;
}

void sub_1B2CFC688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKMapCameraController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t md::MultiSizeIconLabelPart::partCollidesWithObject(md::MultiSizeIconLabelPart *this, const md::CollisionObject *a2)
{
  v2 = *(this + 110);
  if (0x4EC4EC4EC4EC4EC5 * ((*(this + 111) - v2) >> 4) <= *(this + 946))
  {
    return 1;
  }

  v3 = 0;
  v4 = v2 + 208 * *(this + 946);
  v5 = 1;
  do
  {
    if (*(v4 + 88 + 4 * v3) <= *(a2 + v3 + 20) || *(v4 + 80 + 4 * v3) >= *(a2 + v3 + 22))
    {
      return 0;
    }

    v6 = v5;
    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  if (!*(a2 + 20) && !*(a2 + 21) || (*(v4 + 200) & *(a2 + 200)) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 168);
  if (*(a2 + 21))
  {
    v9 = a2;
    a2 = v4;
    if (v8)
    {
      return md::CollisionObject::circlesCollideWithCircles(v9, v4);
    }

    return md::CollisionObject::circlesCollideWithRects(v9, a2);
  }

  if (v8)
  {
    v9 = v4;
    return md::CollisionObject::circlesCollideWithRects(v9, a2);
  }

  if ((*(a2 + 196) & 1) != 0 || *(v4 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB(a2, v4);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects(a2, v4);
  }
}

uint64_t md::MultiSizeIconLabelPart::debugString@<X0>(md::MultiSizeIconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v14);
  md::PointIconLabelPart::debugString(this, __p);
  if ((v13 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, v4, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, " Alt cnt=", 9);
  v6 = MEMORY[0x1B8C61C80](&v14, (*(this + 107) - *(this + 106)) >> 4);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " idx=", 5);
  MEMORY[0x1B8C61C80](v7, *(this + 945));
  if ((v21 & 0x10) != 0)
  {
    v9 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v9 = v17;
    }

    locale = v16[4].__locale_;
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v8 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    locale = v16[1].__locale_;
    v9 = v16[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a2[23] = v8;
  if (v8)
  {
    memmove(a2, locale, v8);
  }

LABEL_22:
  a2[v8] = 0;
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v22);
}

void sub_1B2CFCCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

uint64_t md::MultiSizeIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (*(a1 + 947) == 1)
  {
    v4 = *(a1 + 946);
    v5 = *(a1 + 945);
    v7 = v4 == v5;
    v6 = v4 != v5;
    v7 = !v7 || a3 == 0;
    if (v7)
    {
      return v6;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  v6 = *(a1 + 707);
  if (*(a1 + 707))
  {
    return md::LabelIconStyleMonitor::needsCrossfade(a1 + 656, **(a1 + 32), a4);
  }

  return v6;
}

uint64_t md::MultiSizeIconLabelPart::collidesWithItem(md::MultiSizeIconLabelPart *this, const md::LabelCollidableItem *a2, char a3)
{
  if (a3)
  {
    v5 = *(*a2 + 16);

    return v5(a2, this + 72);
  }

  else
  {
    v7 = *(this + 946);
    v8 = *(this + 110);
    if (0x4EC4EC4EC4EC4EC5 * ((*(this + 111) - v8) >> 4) <= v7)
    {
      return 1;
    }

    else
    {
      do
      {
        result = (*(*a2 + 16))(a2, v8 + 208 * v7);
        if (!result)
        {
          break;
        }

        v9 = *(this + 946) + 1;
        *(this + 946) = v9;
        v7 = v9;
        v8 = *(this + 110);
      }

      while (0x4EC4EC4EC4EC4EC5 * ((*(this + 111) - v8) >> 4) > v9);
    }
  }

  return result;
}

uint64_t md::MultiSizeIconLabelPart::checkResourcesReady(md::MultiSizeIconLabelPart *this, md::LabelManager *a2)
{
  for (i = *(this + 106); ; i += 16)
  {
    if (i == *(this + 107))
    {
      return 37;
    }

    v3 = atomic_load((*i + 142));
    if ((v3 & 1) == 0)
    {
      return 15;
    }

    v4 = atomic_load((*i + 143));
    if ((v4 & 1) == 0)
    {
      break;
    }
  }

  return 16;
}

float md::MultiSizeIconLabelPart::animationSize(md::MultiSizeIconLabelPart *this)
{
  v1 = *(*(this + 106) + 16 * *(this + 945));
  v2 = atomic_load((v1 + 144));
  if (v2)
  {
    return *(v1 + 56) - *(v1 + 48);
  }

  else
  {
    return -INFINITY;
  }
}

uint64_t md::MultiSizeIconLabelPart::setMinAlternateStyleIndex(uint64_t this, char a2)
{
  if ((((*(this + 856) - *(this + 848)) >> 4) - 1) >= (a2 + 1))
  {
    v2 = (a2 + 1);
  }

  else
  {
    v2 = (((*(this + 856) - *(this + 848)) >> 4) - 1);
  }

  if (*(this + 946) > v2)
  {
    LOBYTE(v2) = *(this + 946);
  }

  *(this + 946) = v2;
  return this;
}

float md::MultiSizeIconLabelPart::resolveForDisplay(md::MultiSizeIconLabelPart *this, float result)
{
  if (*(this + 947) == 1)
  {
    v3 = *(this + 946);
    v4 = *(this + 106);
    if (v3 < (*(this + 107) - v4) >> 4)
    {
      *(this + 945) = v3;
      v5 = *(v4 + 16 * v3);
      v6 = *(v4 + 16 * v3 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *(this + 81);
      *(this + 40) = v5;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      (*(*this + 920))(this, 1, this + 640, this + 312);
      if (*(this + 945))
      {
        result = *(this + 4 * *(this + 945) + 226);
        *(this + 144) = result;
      }
    }
  }

  return result;
}

uint64_t md::MultiSizeIconLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result == 37)
  {
    if (*&a1[110] == *&a1[111])
    {
      std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(&a1[110], (*&a1[107] - *&a1[106]) >> 4);
      v9 = a1[106];
      if (*&a1[107] != *&v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        do
        {
          md::IconLabelPart::prepareCollisionObject(a1, 0, (*&v9 + v10), *&a1[110] + v11);
          ++v12;
          v9 = a1[106];
          v11 += 208;
          v10 += 16;
        }

        while (v12 < (*&a1[107] - *&v9) >> 4);
      }
    }

    if (a1[78].i8[4] == 1)
    {
      v13 = a1[106];
      if (*&a1[107] != *&v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = *(*&v13 + v14 * 8);
          v18 = atomic_load((v17 + 144));
          if (v18)
          {
            v19 = *(v17 + 72) - *(v17 + 64);
          }

          else
          {
            v19 = -INFINITY;
          }

          v20 = *(*&a1[106] + v14 * 8);
          v21 = atomic_load((v20 + 144));
          if (v21)
          {
            v22 = *(v20 + 76) - *(v20 + 68);
          }

          else
          {
            v22 = -INFINITY;
          }

          v23 = 0.5 - (fminf(v22, v19) * 0.5);
          v24 = &a1[v14 + 112];
          v25 = &a1[v14 + 112] + 1;
          v26 = &a1[v14 + 113] + 4;
          if (!v16)
          {
            v25 = &a1[78];
            v24 = &a1[77] + 1;
            v26 = &a1[78] + 7;
          }

          v27 = *v26;
          v28 = fmaxf(*v24, v23);
          v29 = *&a1[110] + v15;
          v30 = fmaxf(*v25, v23);
          *(v29 + 96) = v28;
          *(v29 + 100) = v30;
          *(v29 + 199) = v27;
          ++v16;
          v13 = a1[106];
          v15 += 208;
          v14 += 2;
        }

        while (v16 < (*&a1[107] - *&v13) >> 4);
      }
    }

    v31 = a1[110];
    v32 = a1[111];
    if (v31 != *&v32)
    {
      v33 = vadd_f32(*a4, *a3);
      do
      {
        *(v31 + 32) = v33;
        md::CollisionObject::setupShapeData(v31);
        v31 += 208;
      }

      while (v31 != *&v32);
    }

    v34 = a1[105];
    if (v34)
    {
      (*(**&v34 + 80))(v34, a2, a3, a4);
    }

    return md::IconLabelPart::layoutForStaging(a1, a2, a3, a4);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::CollisionObject>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 208 * a2, 0x106004099760A0DuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CollisionObject>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

__n128 md::CollisionObject::CollisionObject(uint64_t a1, __n128 *a2)
{
  *a1 = xmmword_1B33B0730;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 1065353216;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = xmmword_1B33B0730;
  *(a1 + 64) = xmmword_1B33B0730;
  *(a1 + 80) = xmmword_1B33B0730;
  *(a1 + 96) = xmmword_1B33B0720;
  *(a1 + 152) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result.n128_u64[0] = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  if (a1 != a2)
  {
    *(a1 + 48) = a2[3].n128_u32[0];
    *(a1 + 52) = a2[3].n128_u32[1];
    *(a1 + 56) = a2[3].n128_u32[2];
    *(a1 + 60) = a2[3].n128_u32[3];
    *(a1 + 80) = a2[5].n128_u32[0];
    *(a1 + 84) = a2[5].n128_u32[1];
    *(a1 + 88) = a2[5].n128_u32[2];
    *(a1 + 92) = a2[5].n128_u32[3];
    *a1 = a2->n128_u32[0];
    *(a1 + 4) = a2->n128_u32[1];
    *(a1 + 8) = a2->n128_u32[2];
    *(a1 + 12) = a2->n128_u32[3];
    *(a1 + 32) = a2[2].n128_u32[0];
    *(a1 + 36) = a2[2].n128_u32[1];
    *(a1 + 96) = a2[6].n128_u32[0];
    *(a1 + 16) = a2[1].n128_u32[0];
    *(a1 + 20) = a2[1].n128_u32[1];
    *(a1 + 176) = a2[11].n128_u32[0];
    result = a2[10];
    *(a1 + 160) = result;
    *(a1 + 184) = a2[11].n128_u64[1];
    *(a1 + 192) = a2[12].n128_u32[0];
    a2[11].n128_u64[1] = 0;
    a2[12].n128_u32[0] = 0;
    a2[10].n128_u64[0] = 0;
    a2[10].n128_u64[1] = 0;
    a2[11].n128_u32[0] = 0;
  }

  return result;
}

float md::MultiSizeIconLabelPart::updateWithStyle(md::LabelStyle ***this, md::LabelManager *a2)
{
  md::ImageLabelPart::updateWithStyle(this, a2);
  v5 = this[105];
  if (v5)
  {
    (*(*v5 + 9))(v5, a2);
  }

  if (*(this + 944))
  {
    v6 = 0;
    v7 = this[4];
    v8 = 924;
    do
    {
      v9 = this + v8;
      v10 = *v7;
      if (v6 >= *(*v7 + 145))
      {
        goto LABEL_10;
      }

      if ((*(v10 + 457) & 1) == 0)
      {
        md::LabelStyle::prepareAlternateStyles(*v7);
      }

      if (*(v10 + v8 - 564))
      {
        v11 = *(v10 + v8 - 556);
        *(v9 - 12) = *(v11 + 8);
        v12 = (this + v8);
        *v12 = *(v11 + 95);
        result = *(v11 + 16);
        *(v12 - 1) = result;
      }

      else
      {
LABEL_10:
        *(v9 - 12) = 0;
        *(v9 - 1) = 1065353216;
        *v9 = 0;
      }

      ++v6;
      v8 += 16;
    }

    while (v6 < *(this + 944));
  }

  if (*(this + 945))
  {
    result = *&this[2 * *(this + 945) + 113];
    *(this + 144) = result;
  }

  return result;
}

void md::MultiSizeIconLabelPart::~MultiSizeIconLabelPart(md::MultiSizeIconLabelPart *this)
{
  *this = &unk_1F29ECEF0;
  v5.__vftable = (this + 880);
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5.__vftable = (this + 848);
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  *this = &unk_1F2A596C8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F29ECEF0;
  v3.__vftable = (this + 880);
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3.__vftable = (this + 848);
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = &unk_1F2A596C8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelIcon>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelIcon>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::StorefrontLabelFeature::debugDraw(void *a1, uint64_t a2, float32x2_t *a3, _DWORD *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  if (*(a2 + 440))
  {
    v4 = 0.0000000249532021;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = a1[54];
  v54 = a1 + 55;
  if (v5 != a1 + 55)
  {
    v6 = a4;
    do
    {
      v9 = *(v5 + 8);
      if (*v6)
      {
        v10 = v9 == *v6;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = md::StorefrontLabelFeature::storefront(a1, v9);
        if (v11)
        {
          v12 = v11;
          v13 = (*(*a1 + 112))(a1, v5 + 4);
          v14 = v13;
          if (*(a2 + 440))
          {
            v15 = md::LabelPoint::mercatorPoint(v13);
            v16 = *(v14 + 10);
            v17 = v4 * v16;
            if (v16 == 3.4028e38)
            {
              v17 = 0.0;
            }

            v69 = *v15;
            v70 = v17;
          }

          else
          {
            md::LabelPoint::geocentricPoint(v13);
            for (i = 0; i != 24; i += 8)
            {
              *(&v69 + i) = *(v14 + i);
            }
          }

          v6 = a4;
          if (!md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v69))
          {
            v19 = (*(*a1 + 136))(a1, v5 + 4);
            v21 = v20;
            v66 = v19;
            v67 = v20;
            v68 = BYTE4(v20);
            md::LabelLayoutContext::projectPointToPixel(a2 + 432, &v69, &v65);
            if ((v21 & 0x100000000) == 0)
            {
              std::__throw_bad_optional_access[abi:nn200100]();
            }

            for (j = 0; j != 12; j += 4)
            {
              v8 = v4 * 6.0;
              *(&v73 + j) = *(&v66 + j) * v8;
            }

            v23 = 0;
            v60 = v73;
            v61 = DWORD2(v73);
            do
            {
              *(&v71 + v23) = *(&v60 + v23);
              ++v23;
            }

            while (v23 != 3);
            for (k = 0; k != 24; k += 8)
            {
              *(&v73 + k) = *(&v71 + k) + *(&v69 + k);
            }

            v62 = v73;
            v63 = v74;
            md::LabelLayoutContext::projectPointToPixel(a2 + 432, &v62, &v64);
            a3[13].i32[0] = 0x40000000;
            v25 = v65;
            a3[1] = v65;
            ggl::DebugConsole::drawSymbol(a3, 1);
            a3[1] = v64;
            ggl::DebugConsole::drawSymbol(a3, 0);
            a3[1] = v25;
            ggl::DebugConsole::drawLine(a3, &v64, v26);
            for (m = 0; m != 3; ++m)
            {
              *(&v60 + m) = *(v12 + 48 + 4 * m);
            }

            for (n = 0; n != 3; ++n)
            {
              v59[n] = *(v12 + 72 + 4 * n);
            }

            v29 = 0;
            v30 = *(v12 + 88);
            do
            {
              *(&v73 + v29 * 8) = v59[v29] * (v30 * 0.5);
              ++v29;
            }

            while (v29 != 3);
            v31 = 0;
            v57 = v73;
            v58 = v74;
            do
            {
              *(&v73 + v31) = *(v12 + v31) - *(&v57 + v31);
              v31 += 8;
            }

            while (v31 != 24);
            v32 = 0;
            v71 = v73;
            v72 = v74;
            v33 = *(v12 + 84);
            do
            {
              *(&v73 + v32) = *(&v60 + v32) * (v33 * 0.5);
              v32 += 8;
            }

            while (v32 != 24);
            v34 = 0;
            v55 = v73;
            v56 = v74;
            do
            {
              *(&v73 + v34) = *(&v71 + v34) - *(&v55 + v34);
              v34 += 8;
            }

            while (v34 != 24);
            v35 = 0;
            v36 = v30;
            do
            {
              *(&v71 + v35 * 8) = v59[v35] * v36;
              ++v35;
            }

            while (v35 != 3);
            v37 = 0;
            v57 = v71;
            v58 = v72;
            do
            {
              *(&v71 + v37) = *(&v57 + v37) + *(&v73 + v37);
              v37 += 8;
            }

            while (v37 != 24);
            v38 = 0;
            v75 = v71;
            v76 = v72;
            v39 = v33;
            do
            {
              *(&v71 + v38) = *(&v60 + v38) * v39;
              v38 += 8;
            }

            while (v38 != 24);
            v40 = 0;
            v57 = v71;
            v58 = v72;
            do
            {
              *(&v71 + v40) = *(&v57 + v40) + *(&v75 + v40);
              v40 += 8;
            }

            while (v40 != 24);
            v41 = 0;
            v77 = v71;
            v78 = v72;
            do
            {
              *(&v71 + v41) = *(&v60 + v41) * v39;
              v41 += 8;
            }

            while (v41 != 24);
            v42 = 0;
            v57 = v71;
            v58 = v72;
            do
            {
              *(&v71 + v42) = *(&v57 + v42) + *(&v73 + v42);
              v42 += 8;
            }

            while (v42 != 24);
            v43 = 0;
            v79 = v71;
            v80 = v72;
            v44 = &v71;
            v45 = &v73;
            do
            {
              md::LabelLayoutContext::projectPointToPixel(a2 + 432, v45, v44);
              *(&v57 + v43++) = 1;
              ++v44;
              v45 = (v45 + 24);
            }

            while (v43 != 4);
            v46 = 0;
            v6 = a4;
            do
            {
              if (v46 == 3)
              {
                v47 = 0;
              }

              else
              {
                v47 = v46 + 1;
              }

              if (*(&v57 + v46) == 1 && *(&v57 + v47) == 1)
              {
                v48 = *(&v71 + 8 * v46);
                a3[1] = v48;
                ggl::DebugConsole::drawLine(a3, &v71 + 2 * v47, v48.f32[0]);
              }

              ++v46;
            }

            while (v46 != 4);
          }
        }
      }

      v49 = v5[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v5[2];
          v10 = *v50 == v5;
          v5 = v50;
        }

        while (!v10);
      }

      v5 = v50;
    }

    while (v50 != v54);
  }
}