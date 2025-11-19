uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = result[1];
  if (v3 < v4 || v4 >= v3 && a2[2] < result[2])
  {
    v5 = a3[1];
    if (v5 < v3 || v3 >= v5 && a3[2] < a2[2])
    {
      v6 = *result;
      *result = *a3;
      *a3 = v6;
      v7 = result[1];
      result[1] = a3[1];
      a3[1] = v7;
      v8 = result + 2;
    }

    else
    {
      v18 = *result;
      *result = *a2;
      *a2 = v18;
      v19 = result[1];
      result[1] = a2[1];
      a2[1] = v19;
      v8 = a2 + 2;
      v20 = result[2];
      result[2] = a2[2];
      a2[2] = v20;
      v21 = a3[1];
      v22 = a2[1];
      if (v21 >= v22 && (v22 < v21 || a3[2] >= v20))
      {
        return result;
      }

      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
    }

    v13 = a3 + 2;
LABEL_14:
    v25 = *v8;
    *v8 = *v13;
    *v13 = v25;
    return result;
  }

  v9 = a3[1];
  if (v9 < v3 || v3 >= v9 && a3[2] < a2[2])
  {
    v10 = *a2;
    *a2 = *a3;
    *a3 = v10;
    v11 = a2[1];
    a2[1] = a3[1];
    a3[1] = v11;
    v13 = a2 + 2;
    v12 = a2[2];
    a2[2] = a3[2];
    a3[2] = v12;
    v14 = a2[1];
    v15 = result[1];
    if (v14 < v15 || v15 >= v14 && *v13 < result[2])
    {
      v16 = *result;
      *result = *a2;
      *a2 = v16;
      v17 = result[1];
      result[1] = a2[1];
      a2[1] = v17;
      v8 = result + 2;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a2, a3);
  v9 = a4[1];
  v10 = a3[1];
  if (v9 < v10 || v10 >= v9 && a4[2] < a3[2])
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = a3[1];
    a3[1] = a4[1];
    a4[1] = v12;
    v13 = a3[2];
    a3[2] = a4[2];
    a4[2] = v13;
    v14 = a3[1];
    v15 = a2[1];
    if (v14 < v15 || v15 >= v14 && a3[2] < a2[2])
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = a2[2];
      a2[2] = a3[2];
      a3[2] = v18;
      v19 = a2[1];
      v20 = a1[1];
      if (v19 < v20 || v20 >= v19 && a2[2] < a1[2])
      {
        v21 = *a1;
        *a1 = *a2;
        *a2 = v21;
        v22 = a1[1];
        a1[1] = a2[1];
        a2[1] = v22;
        v23 = a1[2];
        a1[2] = a2[2];
        a2[2] = v23;
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a2, a3, a4);
  v11 = a5[1];
  v12 = a4[1];
  if (v11 < v12 || v12 >= v11 && a5[2] < a4[2])
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = a4[1];
    a4[1] = a5[1];
    a5[1] = v14;
    v15 = a4[2];
    a4[2] = a5[2];
    a5[2] = v15;
    v16 = a4[1];
    v17 = a3[1];
    if (v16 < v17 || v17 >= v16 && a4[2] < a3[2])
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = a3[1];
      a3[1] = a4[1];
      a4[1] = v19;
      v20 = a3[2];
      a3[2] = a4[2];
      a4[2] = v20;
      v21 = a3[1];
      v22 = a2[1];
      if (v21 < v22 || v22 >= v21 && a3[2] < a2[2])
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        v24 = a2[1];
        a2[1] = a3[1];
        a3[1] = v24;
        v25 = a2[2];
        a2[2] = a3[2];
        a3[2] = v25;
        v26 = a2[1];
        v27 = a1[1];
        if (v26 < v27 || v27 >= v26 && a2[2] < a1[2])
        {
          v28 = *a1;
          *a1 = *a2;
          *a2 = v28;
          v29 = a1[1];
          a1[1] = a2[1];
          a2[1] = v29;
          v30 = a1[2];
          a1[2] = a2[2];
          a2[2] = v30;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
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
      v5 = *(a2 - 2);
      v6 = a1[1];
      if (v5 < v6 || v6 >= v5 && *(a2 - 1) < a1[2])
      {
        v7 = *a1;
        *a1 = *(a2 - 3);
        *(a2 - 3) = v7;
        v8 = a1[1];
        a1[1] = *(a2 - 2);
        *(a2 - 2) = v8;
        v9 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v9;
      }

      return 1;
    }
  }

  v10 = a1 + 6;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a1 + 3, a1 + 6);
  v11 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = v11[1];
    v15 = v10[1];
    if (v14 >= v15)
    {
      if (v15 < v14)
      {
        goto LABEL_27;
      }

      v16 = v11[2];
      if (v16 >= v10[2])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = v11[2];
    }

    v17 = *v11;
    *v11 = *v10;
    v11[1] = v10[1];
    v11[2] = v10[2];
    v18 = v12;
    while (1)
    {
      v19 = (a1 + v18);
      v20 = *(a1 + v18 + 32);
      if (v14 >= v20)
      {
        break;
      }

      v21 = v19[5];
LABEL_20:
      v10 -= 3;
      v19[6] = v19[3];
      v22 = a1 + v18;
      *(v22 + 7) = v20;
      *(v22 + 8) = v21;
      v18 -= 24;
      if (v18 == -48)
      {
        v10 = a1;
        goto LABEL_26;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 40);
      if (v16 >= v21)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    v10 = (a1 + v18 + 48);
LABEL_26:
    *v10 = v17;
    v10[1] = v14;
    v10[2] = v16;
    if (++v13 != 8)
    {
LABEL_27:
      v10 = v11;
      v12 += 24;
      v11 += 3;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 3 == a2;
  }
}

void *llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::shrink_and_clear(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = __clz((*result >> 1) - 1);
  if (v3 - 28 >= 3)
  {
    v4 = 1 << (33 - v3);
  }

  else
  {
    v4 = 64;
  }

  if (v2 >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v2 & 1) != 0 && v5 < 5)
  {
    v6 = (result + 1);
    *result = 1;
    v7 = (result + 13);
LABEL_10:
    v8 = 0;
    v9 = (v7 - v6 - 24) / 0x18uLL;
    v10 = vdupq_n_s64(v9);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v8), xmmword_2750C1210)));
      if (v11.i8[0])
      {
        *v6 = -4096;
      }

      if (v11.i8[4])
      {
        *(v6 + 3) = -4096;
      }

      v8 += 2;
      v6 += 48;
    }

    while (((v9 + 2) & 0x1FFFFFFFFFFFFFFELL) != v8);
    return result;
  }

  if ((v2 & 1) == 0)
  {
    if (v5 == *(result + 4))
    {
      *result = 0;
      if (!v5)
      {
        return result;
      }

      v6 = result[1];
      v7 = &v6[24 * v5];
      goto LABEL_10;
    }

    MEMORY[0x277C69E30](result[1], 8);
  }

  if (v5 <= 4)
  {
    *v1 = 1;
  }

  else
  {
    *v1 &= ~1u;
    result = operator new(24 * v5, 8uLL);
    v1[1] = result;
    v1[2] = v5;
    v12 = *v1;
    *v1 = *v1 & 1;
    if ((v12 & 1) == 0)
    {
      v13 = &result[3 * v5];
      goto LABEL_27;
    }
  }

  result = v1 + 1;
  v13 = (v1 + 13);
LABEL_27:
  v14 = 0;
  v15 = v13 - result - 24;
  v16 = vdupq_n_s64(v15 / 0x18);
  do
  {
    v17 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
    if (v17.i8[0])
    {
      *result = -4096;
    }

    if (v17.i8[4])
    {
      result[3] = -4096;
    }

    v14 += 2;
    result += 6;
  }

  while (((v15 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v14);
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = a2 - 4;
    v223 = a2 - 2;
    v10 = a2 - 7;
    v11 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v11;
          v12 = a2 - v11;
          v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3:
                v150 = v11 + 5;
                v151 = v11[5];
                v152 = v11 + 2;
                v153 = v11[2];
                v154 = *(a2 - 1);
                if (v151 >= v153)
                {
                  if (v154 >= v151)
                  {
                    return result;
                  }

                  v207 = v11[3];
                  v11[3] = *(a2 - 3);
                  *(a2 - 3) = v207;
                  v208 = v11[4];
                  v11[4] = *(a2 - 2);
                  *(a2 - 2) = v208;
                  v209 = v11[5];
                  v11[5] = *(a2 - 1);
                  *(a2 - 1) = v209;
                  v223 = v11 + 4;
                  if (v11[5] >= v11[2])
                  {
                    return result;
                  }

                  v210 = *v11;
                  *v11 = v11[3];
                  v11[3] = v210;
                  v155 = v11 + 1;
                }

                else
                {
                  v155 = v11 + 1;
                  v156 = *v11;
                  if (v154 >= v151)
                  {
                    v155 = v11 + 4;
                    v219 = v11[4];
                    v220 = v11[1];
                    *v11 = v11[3];
                    v11[1] = v219;
                    v11[4] = v220;
                    v11[2] = v151;
                    v11[3] = v156;
                    v11[5] = v153;
                    if (*(a2 - 1) >= v153)
                    {
                      return result;
                    }

                    v11[3] = *(a2 - 3);
                    *(a2 - 3) = v156;
                    v152 = v11 + 5;
                  }

                  else
                  {
                    *v11 = *(a2 - 3);
                    *(a2 - 3) = v156;
                  }

                  v150 = a2 - 1;
                }

                v221 = *v155;
                *v155 = *v223;
                *v223 = v221;
                v222 = *v152;
                *v152 = *v150;
                *v150 = v222;
                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(v11, v11 + 3, v11 + 6, a2 - 3);
              case 5:
                result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(v11, v11 + 3, v11 + 6, v11 + 9);
                if (*(a2 - 1) < v11[11])
                {
                  v132 = v11[9];
                  v11[9] = *(a2 - 3);
                  *(a2 - 3) = v132;
                  v133 = v11[10];
                  v11[10] = *(a2 - 2);
                  *(a2 - 2) = v133;
                  v134 = v11[11];
                  v11[11] = *(a2 - 1);
                  *(a2 - 1) = v134;
                  v135 = v11[11];
                  v136 = v11[8];
                  if (v135 < v136)
                  {
                    v138 = v11[6];
                    v137 = v11[7];
                    v139 = v11[9];
                    v140 = v11[10];
                    v141 = v11[5];
                    v11[6] = v139;
                    v11[7] = v140;
                    v11[8] = v135;
                    v11[9] = v138;
                    v11[10] = v137;
                    v11[11] = v136;
                    if (v135 < v141)
                    {
                      v143 = v11[3];
                      v142 = v11[4];
                      v144 = v11[2];
                      v11[3] = v139;
                      v11[4] = v140;
                      v11[5] = v135;
                      v11[6] = v143;
                      v11[7] = v142;
                      v11[8] = v141;
                      if (v135 < v144)
                      {
                        v145 = *v11;
                        v146 = v11[1];
                        *v11 = v139;
                        v11[1] = v140;
                        v11[2] = v135;
                        v11[3] = v145;
                        v11[4] = v146;
                        v11[5] = v144;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              if (*(a2 - 1) < v11[2])
              {
                v147 = *v11;
                *v11 = *(a2 - 3);
                *(a2 - 3) = v147;
                v148 = v11[1];
                v11[1] = *(a2 - 2);
                *(a2 - 2) = v148;
                v149 = v11[2];
                v11[2] = *(a2 - 1);
                *(a2 - 1) = v149;
              }

              return result;
            }
          }

          if (v12 <= 575)
          {
            v157 = v11 + 3;
            v159 = v11 == a2 || v157 == a2;
            if (a4)
            {
              if (!v159)
              {
                v160 = 0;
                v161 = v11;
                do
                {
                  v162 = v157;
                  v163 = v161[5];
                  if (v163 < v161[2])
                  {
                    v164 = *v162;
                    v165 = v161[4];
                    v166 = v160;
                    while (1)
                    {
                      v167 = v11 + v166;
                      *(v167 + 24) = *(v11 + v166);
                      *(v167 + 5) = *(v11 + v166 + 16);
                      if (!v166)
                      {
                        break;
                      }

                      v166 -= 24;
                      if (v163 >= *(v167 - 1))
                      {
                        v168 = (v11 + v166 + 24);
                        goto LABEL_140;
                      }
                    }

                    v168 = v11;
LABEL_140:
                    *v168 = v164;
                    v168[1] = v165;
                    v168[2] = v163;
                  }

                  v157 = v162 + 3;
                  v160 += 24;
                  v161 = v162;
                }

                while (v162 + 3 != a2);
              }
            }

            else if (!v159)
            {
              v211 = v11 + 5;
              do
              {
                v212 = v157;
                v213 = v7[5];
                if (v213 < v7[2])
                {
                  v214 = *v212;
                  v215 = v7[4];
                  v216 = v211;
                  do
                  {
                    v217 = v216;
                    *(v216 - 1) = *(v216 - 5);
                    v218 = *(v216 - 3);
                    v216 -= 3;
                    *v217 = v218;
                  }

                  while (v213 < *(v217 - 6));
                  *(v216 - 2) = v214;
                  *(v216 - 1) = v215;
                  *v216 = v213;
                }

                v157 = v212 + 3;
                v211 += 3;
                v7 = v212;
              }

              while (v212 + 3 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v169 = (v13 - 2) >> 1;
              v170 = v169;
              do
              {
                v171 = v170;
                if (v169 >= v170)
                {
                  v172 = (2 * v170) | 1;
                  v173 = &v11[3 * v172];
                  if (2 * v171 + 2 < v13)
                  {
                    v174 = v173[2];
                    v175 = v173[5];
                    v176 = v174 >= v175;
                    v177 = v174 >= v175 ? 0 : 24;
                    v173 = (v173 + v177);
                    if (!v176)
                    {
                      v172 = 2 * v171 + 2;
                    }
                  }

                  v178 = &v11[3 * v171];
                  v179 = v178[2];
                  if (v173[2] >= v179)
                  {
                    v181 = *v178;
                    v180 = v178[1];
                    do
                    {
                      v182 = v178;
                      v178 = v173;
                      *v182 = *v173;
                      v182[1] = v173[1];
                      v182[2] = v173[2];
                      if (v169 < v172)
                      {
                        break;
                      }

                      v183 = (2 * v172) | 1;
                      v173 = &v11[3 * v183];
                      v184 = 2 * v172 + 2;
                      if (v184 < v13)
                      {
                        v185 = v173[2];
                        v186 = v173[5];
                        v187 = v185 >= v186;
                        v188 = v185 >= v186 ? 0 : 24;
                        v173 = (v173 + v188);
                        if (!v187)
                        {
                          v183 = v184;
                        }
                      }

                      v172 = v183;
                    }

                    while (v173[2] >= v179);
                    *v178 = v181;
                    v178[1] = v180;
                    v178[2] = v179;
                  }
                }

                v170 = v171 - 1;
              }

              while (v171);
              v189 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
              do
              {
                result = 0;
                v190 = *v11;
                v191 = v11[1];
                v192 = v11[2];
                v193 = v11;
                do
                {
                  v194 = &v193[3 * result];
                  v195 = v194 + 3;
                  v196 = (2 * result) | 1;
                  result = 2 * result + 2;
                  if (result >= v189)
                  {
                    result = v196;
                  }

                  else
                  {
                    v197 = v194[5];
                    v198 = v194[8];
                    v199 = v194 + 6;
                    if (v197 >= v198)
                    {
                      result = v196;
                    }

                    else
                    {
                      v195 = v199;
                    }
                  }

                  *v193 = *v195;
                  v193[1] = v195[1];
                  v193[2] = v195[2];
                  v193 = v195;
                }

                while (result <= ((v189 - 2) >> 1));
                if (v195 == a2 - 3)
                {
                  *v195 = v190;
                  v195[1] = v191;
                  v195[2] = v192;
                }

                else
                {
                  *v195 = *(a2 - 3);
                  v195[1] = *(a2 - 2);
                  v195[2] = *(a2 - 1);
                  *(a2 - 3) = v190;
                  *(a2 - 2) = v191;
                  *(a2 - 1) = v192;
                  v200 = v195 - v11 + 24;
                  if (v200 >= 25)
                  {
                    v201 = (-2 - 0x5555555555555555 * (v200 >> 3)) >> 1;
                    result = &v11[3 * v201];
                    v202 = v195[2];
                    if (*(result + 16) < v202)
                    {
                      v203 = *v195;
                      v204 = v195[1];
                      do
                      {
                        v205 = v195;
                        v195 = result;
                        *v205 = *result;
                        v205[1] = *(result + 8);
                        result = *(result + 16);
                        v205[2] = result;
                        if (!v201)
                        {
                          break;
                        }

                        v201 = (v201 - 1) >> 1;
                        result = &v11[3 * v201];
                      }

                      while (*(result + 16) < v202);
                      *v195 = v203;
                      v195[1] = v204;
                      v195[2] = v202;
                    }
                  }
                }

                a2 -= 3;
              }

              while (v189-- > 2);
            }

            return result;
          }

          v14 = v13 >> 1;
          v15 = &v11[3 * (v13 >> 1)];
          v16 = *v8;
          if (v12 >= 0xC01)
          {
            v17 = (v15 + 2);
            v18 = v15[2];
            v19 = v11 + 2;
            v20 = v11[2];
            if (v18 >= v20)
            {
              if (v16 >= v18)
              {
                goto LABEL_29;
              }

              v31 = *v15;
              *v15 = *(a2 - 3);
              *(a2 - 3) = v31;
              v23 = v15 + 1;
              v32 = v15[1];
              v15[1] = *(a2 - 2);
              *(a2 - 2) = v32;
              v33 = v15[2];
              v15[2] = *(a2 - 1);
              *(a2 - 1) = v33;
              if (v15[2] >= *v19)
              {
LABEL_29:
                v44 = &v11[3 * v14];
                v47 = *(v44 - 1);
                v45 = v44 - 1;
                v46 = v47;
                v48 = v45 - 2;
                v49 = v11 + 5;
                v50 = *v9;
                if (v47 >= v11[5])
                {
                  if (v50 >= v46)
                  {
                    goto LABEL_43;
                  }

                  v54 = *v48;
                  *v48 = *(a2 - 6);
                  *(a2 - 6) = v54;
                  v53 = (v45 - 1);
                  v55 = *(v45 - 1);
                  *(v45 - 1) = *(a2 - 5);
                  *(a2 - 5) = v55;
                  v56 = *v45;
                  *v45 = *(a2 - 4);
                  *(a2 - 4) = v56;
                  if (*v45 >= *v49)
                  {
LABEL_43:
                    v68 = &v11[3 * v14];
                    v71 = v68[5];
                    v69 = v68 + 5;
                    v70 = v71;
                    v72 = v69 - 2;
                    v73 = v11 + 8;
                    v74 = *v10;
                    if (v71 >= v11[8])
                    {
                      if (v74 >= v70)
                      {
                        goto LABEL_53;
                      }

                      v78 = *v72;
                      *v72 = *(a2 - 9);
                      *(a2 - 9) = v78;
                      v77 = (v69 - 1);
                      v79 = *(v69 - 1);
                      *(v69 - 1) = *(a2 - 8);
                      *(a2 - 8) = v79;
                      v80 = *v69;
                      *v69 = *(a2 - 7);
                      *(a2 - 7) = v80;
                      v70 = *v69;
                      if (*v69 >= *v73)
                      {
LABEL_53:
                        v86 = *v17;
                        v87 = *v45;
                        if (*v17 >= *v45)
                        {
                          v88 = *v15;
                          if (v70 >= v86)
                          {
LABEL_63:
                            v98 = *v11;
                            v99 = v15[1];
                            v100 = *(v11 + 1);
                            *v11 = v88;
                            v11[1] = v99;
                            *v15 = v98;
                            v11[2] = v86;
                            *(v15 + 1) = v100;
                            goto LABEL_64;
                          }

                          v91 = *v72;
                          v90 = v72[1];
                          *v15 = *v72;
                          result = (v15 + 1);
                          v92 = v15[1];
                          v15[1] = v90;
                          *v72 = v88;
                          v72[1] = v92;
                          v15[2] = v70;
                          v72[2] = v86;
                          if (v70 >= v87)
                          {
                            v86 = v70;
                            v88 = v91;
                            goto LABEL_63;
                          }

                          v93 = *v48;
                          *v48 = v91;
                          v89 = v45 - 1;
                          *v15 = v93;
                        }

                        else
                        {
                          v88 = *v48;
                          if (v70 >= v86)
                          {
                            result = *v15;
                            *v15 = v88;
                            v94 = v15[1];
                            v95 = *(v45 - 1);
                            *v48 = result;
                            *(v45 - 1) = v94;
                            v15[1] = v95;
                            *v45 = v86;
                            v15[2] = v87;
                            if (v70 >= v87)
                            {
                              v86 = v87;
                              goto LABEL_63;
                            }

                            v96 = *v72;
                            *v72 = v88;
                            *v15 = v96;
                            v89 = v15 + 1;
                            result = (v69 - 1);
                            v45 = v15 + 2;
                          }

                          else
                          {
                            *v48 = *v72;
                            *v72 = v88;
                            v89 = v45 - 1;
                            result = (v69 - 1);
                          }

                          v17 = v69;
                        }

                        v97 = *v89;
                        *v89 = *result;
                        *result = v97;
                        *v45 = v70;
                        *v17 = v87;
                        v88 = *v15;
                        v86 = v15[2];
                        goto LABEL_63;
                      }

                      v81 = v11[6];
                      v11[6] = *v72;
                      *v72 = v81;
                      v76 = (v11 + 7);
                      v82 = v69;
                    }

                    else
                    {
                      v75 = v11[6];
                      if (v74 >= v70)
                      {
                        v11[6] = *v72;
                        *v72 = v75;
                        v76 = (v69 - 1);
                        v83 = v11[7];
                        v11[7] = *(v69 - 1);
                        *(v69 - 1) = v83;
                        v70 = v11[8];
                        v11[8] = *v69;
                        *v69 = v70;
                        if (*v10 >= v70)
                        {
                          goto LABEL_53;
                        }

                        v84 = *v72;
                        *v72 = *(a2 - 9);
                        *(a2 - 9) = v84;
                        v77 = (a2 - 8);
                        v73 = v69;
                      }

                      else
                      {
                        v76 = (v11 + 7);
                        v11[6] = *(a2 - 9);
                        *(a2 - 9) = v75;
                        v77 = (a2 - 8);
                      }

                      v82 = a2 - 7;
                    }

                    result = *v76;
                    *v76 = *v77;
                    *v77 = result;
                    v85 = *v73;
                    *v73 = *v82;
                    *v82 = v85;
                    v70 = *v69;
                    goto LABEL_53;
                  }

                  v57 = v11[3];
                  v11[3] = *v48;
                  *v48 = v57;
                  v52 = (v11 + 4);
                  v58 = v45;
                }

                else
                {
                  v51 = v11[3];
                  if (v50 >= v46)
                  {
                    v11[3] = *v48;
                    *v48 = v51;
                    v52 = (v45 - 1);
                    v63 = v11[4];
                    v11[4] = *(v45 - 1);
                    *(v45 - 1) = v63;
                    v64 = v11[5];
                    v11[5] = *v45;
                    *v45 = v64;
                    if (*v9 >= v64)
                    {
                      goto LABEL_43;
                    }

                    v65 = *v48;
                    *v48 = *(a2 - 6);
                    *(a2 - 6) = v65;
                    v53 = (a2 - 5);
                    v49 = v45;
                  }

                  else
                  {
                    v52 = (v11 + 4);
                    v11[3] = *(a2 - 6);
                    *(a2 - 6) = v51;
                    v53 = (a2 - 5);
                  }

                  v58 = a2 - 4;
                }

                v66 = *v52;
                result = *v53;
                *v52 = *v53;
                *v53 = v66;
                v67 = *v49;
                *v49 = *v58;
                *v58 = v67;
                goto LABEL_43;
              }

              v34 = *v11;
              *v11 = *v15;
              v21 = v11 + 1;
              *v15 = v34;
              v35 = v15 + 2;
            }

            else
            {
              v21 = v11 + 1;
              v22 = *v11;
              if (v16 >= v18)
              {
                v21 = v15 + 1;
                v40 = v15[1];
                v41 = v11[1];
                *v11 = *v15;
                v11[1] = v40;
                *v15 = v22;
                v15[1] = v41;
                v11[2] = v18;
                v15[2] = v20;
                if (*v8 >= v20)
                {
                  goto LABEL_29;
                }

                *v15 = *(a2 - 3);
                *(a2 - 3) = v22;
                v23 = a2 - 2;
                v19 = v15 + 2;
              }

              else
              {
                *v11 = *(a2 - 3);
                *(a2 - 3) = v22;
                v23 = a2 - 2;
              }

              v35 = a2 - 1;
            }

            v42 = *v21;
            *v21 = *v23;
            *v23 = v42;
            v43 = *v19;
            *v19 = *v35;
            *v35 = v43;
            goto LABEL_29;
          }

          v24 = v11 + 2;
          v25 = v11[2];
          v26 = v15 + 2;
          v27 = v15[2];
          if (v25 < v27)
          {
            v28 = *v15;
            if (v16 >= v25)
            {
              v59 = v11[1];
              v60 = v15[1];
              *v15 = *v11;
              v15[1] = v59;
              *v11 = v28;
              v11[1] = v60;
              v15[2] = v25;
              v11[2] = v27;
              if (*v8 >= v27)
              {
                goto LABEL_64;
              }

              *v11 = *(a2 - 3);
              *(a2 - 3) = v28;
              v29 = v11 + 1;
              v30 = a2 - 2;
              v26 = v11 + 2;
            }

            else
            {
              *v15 = *(a2 - 3);
              *(a2 - 3) = v28;
              v29 = v15 + 1;
              v30 = a2 - 2;
            }

            v24 = a2 - 1;
            goto LABEL_38;
          }

          if (v16 < v25)
          {
            v36 = *v11;
            *v11 = *(a2 - 3);
            *(a2 - 3) = v36;
            v30 = v11 + 1;
            v37 = v11[1];
            v11[1] = *(a2 - 2);
            *(a2 - 2) = v37;
            v38 = v11[2];
            v11[2] = *(a2 - 1);
            *(a2 - 1) = v38;
            if (v11[2] < *v26)
            {
              v39 = *v15;
              *v15 = *v11;
              v29 = v15 + 1;
              *v11 = v39;
LABEL_38:
              v61 = *v29;
              *v29 = *v30;
              *v30 = v61;
              v62 = *v26;
              *v26 = *v24;
              *v24 = v62;
            }
          }

LABEL_64:
          --a3;
          if (a4)
          {
            break;
          }

          v102 = v11[2];
          v101 = *v11;
          if (*(v11 - 1) < v102)
          {
            goto LABEL_67;
          }

          if (v102 >= *v8)
          {
            v121 = v11 + 3;
            do
            {
              v11 = v121;
              if (v121 >= a2)
              {
                break;
              }

              v122 = v121[2];
              v121 += 3;
            }

            while (v102 >= v122);
          }

          else
          {
            v119 = v11;
            do
            {
              v11 = v119 + 3;
              v120 = v119[5];
              v119 += 3;
            }

            while (v102 >= v120);
          }

          v123 = a2;
          if (v11 < a2)
          {
            v124 = a2;
            do
            {
              v123 = v124 - 3;
              v125 = *(v124 - 1);
              v124 -= 3;
            }

            while (v102 < v125);
          }

          v126 = v7[1];
          while (v11 < v123)
          {
            v127 = *v11;
            *v11 = *v123;
            *v123 = v127;
            v128 = v11[1];
            v11[1] = v123[1];
            v123[1] = v128;
            v129 = v11[2];
            v11[2] = v123[2];
            v123[2] = v129;
            do
            {
              v130 = v11[5];
              v11 += 3;
            }

            while (v102 >= v130);
            do
            {
              v131 = *(v123 - 1);
              v123 -= 3;
            }

            while (v102 < v131);
          }

          if (v11 - 3 != v7)
          {
            *v7 = *(v11 - 3);
            v7[1] = *(v11 - 2);
            v7[2] = *(v11 - 1);
          }

          a4 = 0;
          *(v11 - 3) = v101;
          *(v11 - 2) = v126;
          *(v11 - 1) = v102;
        }

        v101 = *v11;
        v102 = v11[2];
LABEL_67:
        v103 = 0;
        v104 = v11[1];
        do
        {
          v105 = v11[v103 + 5];
          v103 += 3;
        }

        while (v105 < v102);
        v106 = &v11[v103];
        v107 = a2;
        if (v103 == 3)
        {
          v110 = a2;
          while (v106 < v110)
          {
            v108 = v110 - 3;
            v111 = *(v110 - 1);
            v110 -= 3;
            if (v111 < v102)
            {
              goto LABEL_77;
            }
          }

          v108 = v110;
        }

        else
        {
          do
          {
            v108 = v107 - 3;
            v109 = *(v107 - 1);
            v107 -= 3;
          }

          while (v109 >= v102);
        }

LABEL_77:
        v11 = v106;
        if (v106 < v108)
        {
          v112 = v108;
          do
          {
            v113 = *v11;
            *v11 = *v112;
            *v112 = v113;
            v114 = v11[1];
            v11[1] = v112[1];
            v112[1] = v114;
            v115 = v11[2];
            v11[2] = v112[2];
            v112[2] = v115;
            do
            {
              v116 = v11[5];
              v11 += 3;
            }

            while (v116 < v102);
            do
            {
              v117 = *(v112 - 1);
              v112 -= 3;
            }

            while (v117 >= v102);
          }

          while (v11 < v112);
        }

        if (v11 - 3 != v7)
        {
          *v7 = *(v11 - 3);
          v7[1] = *(v11 - 2);
          v7[2] = *(v11 - 1);
        }

        *(v11 - 3) = v101;
        *(v11 - 2) = v104;
        *(v11 - 1) = v102;
        if (v106 >= v108)
        {
          break;
        }

LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,false>(v7, v11 - 3, a3, a4 & 1);
        a4 = 0;
      }

      v118 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *>(v7, v11 - 3);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *>(v11, a2);
      if (result)
      {
        break;
      }

      if (!v118)
      {
        goto LABEL_88;
      }
    }

    a2 = v11 - 3;
    if (!v118)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(uint64_t *result, uint64_t *a2, void *a3, void *a4)
{
  v4 = a2[2];
  v5 = result + 2;
  v6 = a3 + 2;
  v7 = a3[2];
  if (v4 >= result[2])
  {
    if (v7 < v4)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v10 = a2 + 1;
      v13 = a2[1];
      a2[1] = a3[1];
      a3[1] = v13;
      v7 = a2[2];
      a2[2] = a3[2];
      a3[2] = v7;
      if (a2[2] < *v5)
      {
        v14 = *result;
        *result = *a2;
        v8 = result + 1;
        *a2 = v14;
        v11 = result + 2;
        v15 = a2 + 2;
LABEL_10:
        v19 = *v8;
        *v8 = *v10;
        *v10 = v19;
        v20 = *v11;
        *v11 = *v15;
        *v15 = v20;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = result + 1;
    v9 = *result;
    if (v7 < v4)
    {
      *result = *a3;
      *a3 = v9;
      v10 = a3 + 1;
      v11 = result + 2;
LABEL_9:
      v15 = a3 + 2;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v9;
    v8 = a2 + 1;
    v16 = result[1];
    result[1] = a2[1];
    a2[1] = v16;
    v17 = result[2];
    result[2] = a2[2];
    a2[2] = v17;
    v7 = *v6;
    if (*v6 < v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v10 = a3 + 1;
      v11 = a2 + 2;
      goto LABEL_9;
    }
  }

  if (a4[2] < v7)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    v23 = a3[2];
    a3[2] = a4[2];
    a4[2] = v23;
    if (a3[2] < a2[2])
    {
      v24 = *a2;
      *a2 = *a3;
      *a3 = v24;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = a2[2];
      a2[2] = a3[2];
      a3[2] = v26;
      if (a2[2] < *v5)
      {
        v27 = *result;
        *result = *a2;
        *a2 = v27;
        v28 = result[1];
        result[1] = a2[1];
        a2[1] = v28;
        v29 = result[2];
        result[2] = a2[2];
        a2[2] = v29;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v23 = a1 + 5;
      v24 = a1[5];
      v25 = a1 + 2;
      v26 = a1[2];
      v27 = *(a2 - 1);
      if (v24 >= v26)
      {
        if (v27 >= v24)
        {
          return 1;
        }

        v39 = a1[3];
        a1[3] = *(a2 - 3);
        *(a2 - 3) = v39;
        v30 = a1 + 4;
        v40 = a1[4];
        a1[4] = *(a2 - 2);
        *(a2 - 2) = v40;
        v41 = a1[5];
        a1[5] = *(a2 - 1);
        *(a2 - 1) = v41;
        if (a1[5] >= a1[2])
        {
          return 1;
        }

        v42 = *a1;
        *a1 = a1[3];
        a1[3] = v42;
        v28 = a1 + 1;
      }

      else
      {
        v28 = a1 + 1;
        v29 = *a1;
        if (v27 >= v24)
        {
          v28 = a1 + 4;
          v48 = a1[4];
          v49 = a1[1];
          *a1 = a1[3];
          a1[1] = v48;
          a1[4] = v49;
          a1[2] = v24;
          a1[3] = v29;
          a1[5] = v26;
          if (*(a2 - 1) >= v26)
          {
            return 1;
          }

          a1[3] = *(a2 - 3);
          *(a2 - 3) = v29;
          v30 = a2 - 2;
          v25 = a1 + 5;
        }

        else
        {
          *a1 = *(a2 - 3);
          *(a2 - 3) = v29;
          v30 = a2 - 2;
        }

        v23 = a2 - 1;
      }

      v50 = *v28;
      *v28 = *v30;
      *v30 = v50;
      v51 = *v25;
      *v25 = *v23;
      *v23 = v51;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if (*(a2 - 1) < a1[11])
        {
          v8 = a1[9];
          a1[9] = *(a2 - 3);
          *(a2 - 3) = v8;
          v9 = a1[10];
          a1[10] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[11];
          a1[11] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[11];
          v12 = a1[8];
          if (v11 < v12)
          {
            v14 = a1[6];
            v13 = a1[7];
            v15 = a1[9];
            v16 = a1[10];
            v17 = a1[5];
            a1[6] = v15;
            a1[7] = v16;
            a1[8] = v11;
            a1[9] = v14;
            a1[10] = v13;
            a1[11] = v12;
            if (v11 < v17)
            {
              v19 = a1[3];
              v18 = a1[4];
              v20 = a1[2];
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v11;
              a1[6] = v19;
              a1[7] = v18;
              a1[8] = v17;
              if (v11 < v20)
              {
                v21 = *a1;
                v22 = a1[1];
                *a1 = v15;
                a1[1] = v16;
                a1[2] = v11;
                a1[3] = v21;
                a1[4] = v22;
                a1[5] = v20;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) < a1[2])
    {
      v5 = *a1;
      *a1 = *(a2 - 3);
      *(a2 - 3) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 2);
      *(a2 - 2) = v6;
      v7 = a1[2];
      a1[2] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v31 = a1[5];
  v33 = (a1 + 2);
  v32 = a1[2];
  v35 = (a1 + 8);
  v34 = a1[8];
  if (v31 < v32)
  {
    v36 = a1 + 1;
    v37 = *a1;
    if (v34 >= v31)
    {
      v36 = a1 + 4;
      v52 = a1[4];
      v53 = a1[1];
      *a1 = a1[3];
      a1[1] = v52;
      a1[4] = v53;
      a1[2] = v31;
      a1[3] = v37;
      a1[5] = v32;
      if (v34 >= v32)
      {
        goto LABEL_34;
      }

      a1[3] = a1[6];
      a1[6] = v37;
      v38 = a1 + 7;
      v33 = (a1 + 5);
    }

    else
    {
      *a1 = a1[6];
      a1[6] = v37;
      v38 = a1 + 7;
    }

    goto LABEL_33;
  }

  if (v34 < v31)
  {
    v38 = a1 + 4;
    v43 = a1[4];
    v44 = a1[3];
    v45 = a1[6];
    v46 = a1[7];
    a1[3] = v45;
    a1[4] = v46;
    a1[5] = v34;
    a1[6] = v44;
    a1[7] = v43;
    a1[8] = v31;
    if (v34 < v32)
    {
      v47 = *a1;
      *a1 = v45;
      a1[3] = v47;
      v36 = a1 + 1;
      v35 = (a1 + 5);
LABEL_33:
      v54 = *v36;
      *v36 = *v38;
      *v38 = v54;
      *v33 = v34;
      *v35 = v32;
    }
  }

LABEL_34:
  v55 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  v58 = a1 + 6;
  while (1)
  {
    v59 = v55[2];
    if (v59 < v58[2])
    {
      v60 = *v55;
      v61 = v55[1];
      v62 = v56;
      while (1)
      {
        v63 = a1 + v62;
        *(v63 + 72) = *(a1 + v62 + 48);
        *(v63 + 11) = *(a1 + v62 + 64);
        if (v62 == -48)
        {
          break;
        }

        v62 -= 24;
        if (v59 >= *(v63 + 5))
        {
          v64 = (a1 + v62 + 72);
          goto LABEL_42;
        }
      }

      v64 = a1;
LABEL_42:
      *v64 = v60;
      v64[1] = v61;
      v64[2] = v59;
      if (++v57 == 8)
      {
        return v55 + 3 == a2;
      }
    }

    v58 = v55;
    v56 += 24;
    v55 += 3;
    if (v55 == a2)
    {
      return 1;
    }
  }
}

void llvm::SmallVectorImpl<llvm::MDOperand>::resizeImpl<false>(unint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorTemplateBase<llvm::MDOperand,false>::grow(a1, a2);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }

      *(a1 + 8) = a2;
    }

    else
    {

      llvm::SmallVectorImpl<llvm::TrackingMDRef>::truncate(a1, a2);
    }
  }
}

void llvm::SmallVectorTemplateBase<llvm::MDOperand,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<llvm::MDOperand,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

unint64_t llvm::SmallVectorTemplateBase<llvm::MDOperand,false>::moveElementsForGrow(uint64_t a1, unsigned __int8 **a2)
{
  result = llvm::SmallVectorTemplateBase<llvm::MDOperand,false>::uninitialized_move<llvm::MDOperand*,llvm::MDOperand*>(*a1, (*a1 + 8 * *(a1 + 8)), a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = -8 * v4;
    v6 = (*a1 + 8 * v4 - 8);
    do
    {
      if (*v6)
      {
        result = llvm::MetadataTracking::untrack(v6, *v6);
      }

      --v6;
      v5 += 8;
    }

    while (v5);
  }

  return result;
}

unsigned __int8 **llvm::SmallVectorTemplateBase<llvm::MDOperand,false>::uninitialized_move<llvm::MDOperand*,llvm::MDOperand*>(unsigned __int8 **result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      v6 = *v5;
      *a3 = *v5;
      if (v6)
      {
        result = llvm::MetadataTracking::retrack(v5, v6, a3);
      }

      *v5++ = 0;
      ++a3;
    }

    while (v5 != a2);
  }

  return result;
}

char **llvm::SmallVector<llvm::MDOperand,0u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack(v5, *v5);
      }

      --v5;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDTuple *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::MDTuple *>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDTuple *>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = *(*a2 + 4) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::MDTuple *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDTuple *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDTuple *>(a1, v19, &v28);
          *v28 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0x1FFFFFFFFFFFFFFFLL;
    v23 = v22 & 0x1FFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0x1FFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 8;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v27.i8[0])
      {
        *(v26 - 1) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 2;
    }

    while (v24 != v21);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::MDTuple>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = 0;
    v7 = *a1;
    v8 = *(a2 + 32);
    v9 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v11 = v8 & v9;
      v12 = (v7 + 8 * (v8 & v9));
      v13 = *v12;
      if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (llvm::MDNodeOpsKey::compareOps<llvm::GenericDINode>(a2, v13, 0))
        {
          result = 1;
          goto LABEL_18;
        }

        v13 = *v12;
      }

      if (v13 == -4096)
      {
        break;
      }

      if (v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 == -8192;
      }

      if (v14)
      {
        v6 = (v7 + 8 * v11);
      }

      v8 = v11 + i;
    }

    result = 0;
    if (v6)
    {
      v12 = v6;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v12;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::growAndEmplaceBack<llvm::MDNode *&>(unint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = &v5[*(a1 + 8)];
  v7 = *a2;
  *v6 = *a2;
  if (v7)
  {
    llvm::MetadataTracking::track(v6, v7, 2);
  }

  llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::moveElementsForGrow(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

void std::__stable_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,llvm::MDNode *> *,llvm::less_first>(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 1)
  {
    v11 = 0;
LABEL_7:

    std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(a1, a2, a3, v7, 0, v11, a4);
  }

  else
  {
    v8 = MEMORY[0x277D826F0];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v13 = v10;
    std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(a1, a2, a3, v7, v10, v9, a4);

    operator delete(v13);
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v8 = a1;
    if (a4 == 2)
    {
      v9 = a2[-1].n128_u32[0];
      v10 = a1->n128_u32[0];
      if (v9 < a1->n128_u32[0])
      {
        a1->n128_u32[0] = v9;
        a2[-1].n128_u32[0] = v10;
        v11 = a1->n128_u64[1];
        a1->n128_u64[1] = a2[-1].n128_u64[1];
        a2[-1].n128_u64[1] = v11;
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v19 = a1 + 1;
        if (&a1[1] != a2)
        {
          v20 = 0;
          v21 = a1;
          do
          {
            v22 = v19;
            v23 = v21[1].n128_u32[0];
            v24 = v21->n128_u32[0];
            if (v23 < v21->n128_u32[0])
            {
              v25 = v21[1].n128_u64[1];
              v26 = v20;
              while (1)
              {
                v27 = a1 + v26;
                *(v27 + 4) = v24;
                *(v27 + 3) = *(&a1->n128_u64[1] + v26);
                if (!v26)
                {
                  break;
                }

                v24 = *(v27 - 4);
                v26 -= 16;
                if (v23 >= v24)
                {
                  v28 = &a1[1] + v26;
                  goto LABEL_20;
                }
              }

              v28 = a1;
LABEL_20:
              *v28 = v23;
              *(v28 + 8) = v25;
            }

            v19 = v22 + 1;
            v20 += 16;
            v21 = v22;
          }

          while (&v22[1] != a2);
        }
      }
    }

    else
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &a1[a4 >> 1];
      v18 = a4 >> 1;
      if (a4 <= a6)
      {
        v29.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(a1, v17, a3, v18, a5, a7);
        v30 = &v14[16 * v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v30, v29);
        v31 = &v14[16 * a4];
        v32 = v30;
        while (v32 != v31)
        {
          v33 = v32->n128_u32[0];
          if (v32->n128_u32[0] < *v14)
          {
            v34 = v32;
          }

          else
          {
            v33 = *v14;
            v34 = v14;
          }

          v35 = v34->n128_u64[1];
          if (v32->n128_u32[0] < *v14)
          {
            ++v32;
          }

          else
          {
            v14 += 16;
          }

          v8->n128_u32[0] = v33;
          v8->n128_u64[1] = v35;
          ++v8;
          if (v14 == v30)
          {
            if (v32 != v31)
            {
              v36 = 0;
              do
              {
                v37 = &v32[v36];
                v38 = &v8[v36];
                v38->n128_u32[0] = v32[v36].n128_u32[0];
                v38->n128_u64[1] = v32[v36++].n128_u64[1];
              }

              while (&v37[1] != v31);
            }

            return;
          }
        }

        if (v14 != v30)
        {
          v39 = 0;
          do
          {
            v40 = &v8[v39 / 0x10];
            v41 = &v14[v39];
            v40->n128_u32[0] = *&v14[v39];
            v40->n128_u64[1] = *&v14[v39 + 8];
            v39 += 16;
          }

          while (&v41[1] != v30);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(a1, v17, a3, v18, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v14, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(v8, &v8[a4 >> 1], a2, a4 >> 1, a4 - (a4 >> 1), v14, a6);
      }
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_u32[0] >= a1->n128_u32[0])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v21 = &a1[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(a1, v21, a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v6[a4 >> 1], a4 - (a4 >> 1));
      v22 = &v9[a4 >> 1];
      while (v22 != a2)
      {
        if (v22->n128_u32[0] >= v9->n128_u32[0])
        {
          v24 = *v9++;
          a6 = v24;
        }

        else
        {
          v23 = *v22++;
          a6 = v23;
        }

        *v6++ = a6;
        if (v9 == v21)
        {
          while (v22 != a2)
          {
            v26 = *v22++;
            a6.n128_u64[0] = v26.n128_u64[0];
            *v6++ = v26;
          }

          return a6.n128_f64[0];
        }
      }

      while (v9 != v21)
      {
        v25 = *v9++;
        a6.n128_u64[0] = v25.n128_u64[0];
        *v6++ = v25;
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v11 = a1 + 1;
      if (&a1[1] != a2)
      {
        v12 = 0;
        v13 = a5;
        v14 = a5;
        do
        {
          v15 = v11;
          v16 = v14->n128_u32[0];
          ++v14;
          if (v9[1].n128_u32[0] >= v16)
          {
            a6 = *v11;
            *v14 = *v11;
          }

          else
          {
            a6 = *v13;
            *v14 = *v13;
            v17 = a5;
            if (v13 != a5)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a5 + v18);
                v19 = *(a5[-1].n128_u32 + v18);
                if (v15->n128_u32[0] >= v19)
                {
                  break;
                }

                v17->n128_u32[0] = v19;
                v17->n128_u64[1] = v17[-1].n128_u64[1];
                v18 -= 16;
                if (!v18)
                {
                  v17 = a5;
                  break;
                }
              }
            }

            v17->n128_u32[0] = v15->n128_u32[0];
            v17->n128_u64[1] = v9[1].n128_u64[1];
          }

          v11 = v15 + 1;
          v12 += 16;
          v13 = v14;
          v9 = v15;
        }

        while (&v15[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    while (a4 > a7 && a5 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = *a2;
      v12 = -a4;
      while (1)
      {
        v13 = *&result[v10];
        if (v11 < v13)
        {
          break;
        }

        v10 += 16;
        v50 = __CFADD__(v12++, 1);
        if (v50)
        {
          return result;
        }
      }

      v14 = -v12;
      v15 = &result[v10];
      if (-v12 >= a5)
      {
        if (v12 == -1)
        {
          v61 = &result[v10];
          *v61 = v11;
          *a2 = v13;
          v62 = *&result[v10 + 8];
          *(v61 + 1) = *(a2 + 1);
          *(a2 + 1) = v62;
          return result;
        }

        v24 = v14 / 2;
        v19 = &result[16 * (v14 / 2) + v10];
        if (a3 == a2)
        {
          v17 = a2;
        }

        else
        {
          v25 = (a3 - a2) >> 4;
          v17 = a2;
          do
          {
            v26 = v25 >> 1;
            v27 = &v17[16 * (v25 >> 1)];
            v29 = *v27;
            v28 = v27 + 16;
            v25 += ~(v25 >> 1);
            if (v29 < *v19)
            {
              v17 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v16 = (v17 - a2) >> 4;
      }

      else
      {
        v16 = a5 / 2;
        v17 = &a2[16 * (a5 / 2)];
        if (v15 == a2)
        {
          v19 = &result[v10];
        }

        else
        {
          v18 = (a2 - result - v10) >> 4;
          v19 = &result[v10];
          do
          {
            v20 = v18 >> 1;
            v21 = &v19[16 * (v18 >> 1)];
            v23 = *v21;
            v22 = (v21 + 4);
            v18 += ~(v18 >> 1);
            if (*v17 < v23)
            {
              v18 = v20;
            }

            else
            {
              v19 = v22;
            }
          }

          while (v18);
        }

        v24 = (v19 - result - v10) >> 4;
      }

      v30 = v17;
      if (v19 != a2)
      {
        v30 = v19;
        if (a2 != v17)
        {
          v31 = *v19;
          *v19 = v11;
          *a2 = v31;
          v32 = *(v19 + 1);
          *(v19 + 1) = *(a2 + 1);
          *(a2 + 1) = v32;
          v30 = v19 + 16;
          for (i = a2 + 16; i != v17; i += 16)
          {
            if (v30 == a2)
            {
              a2 = i;
            }

            v34 = *v30;
            *v30 = *i;
            *i = v34;
            v35 = *(v30 + 1);
            *(v30 + 1) = *(i + 1);
            *(i + 1) = v35;
            v30 += 16;
          }

          if (v30 != a2)
          {
            v36 = v30;
            v37 = a2;
            do
            {
              while (1)
              {
                v38 = *v36;
                *v36 = *a2;
                *a2 = v38;
                v39 = *(v36 + 1);
                *(v36 + 1) = *(a2 + 1);
                *(a2 + 1) = v39;
                v36 += 16;
                a2 += 16;
                if (a2 == v17)
                {
                  break;
                }

                if (v36 == v37)
                {
                  v37 = a2;
                }
              }

              a2 = v37;
            }

            while (v36 != v37);
          }
        }
      }

      a4 = -(v24 + v12);
      v40 = a5 - v16;
      if (v24 + v16 >= a5 - (v24 + v16) - v12)
      {
        v43 = v17;
        v44 = v15;
        std::__inplace_merge<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(v30, v43, a3, a4, a5 - v16, a6, a7);
        result = v44;
        v17 = v19;
        v40 = v16;
        a4 = v24;
        a3 = v30;
      }

      else
      {
        v41 = v19;
        v42 = a3;
        std::__inplace_merge<std::_ClassicAlgPolicy,llvm::less_first &,std::pair<unsigned int,llvm::MDNode *> *>(v15, v41, v30, v24, v16, a6, a7);
        a3 = v42;
        result = v30;
      }

      a5 = v40;
      a2 = v17;
      if (!v40)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (result != a2)
      {
        v54 = a6;
        v55 = result;
        do
        {
          v56 = *v55;
          v55 += 16;
          *v54 = v56;
          v54 += 16;
        }

        while (v55 != a2);
        v57 = v54 - 16;
        while (a2 != a3)
        {
          v58 = *a2;
          if (*a2 < *a6)
          {
            v59 = a2;
          }

          else
          {
            v58 = *a6;
            v59 = a6;
          }

          v60 = *(v59 + 1);
          if (*a2 < *a6)
          {
            a2 += 16;
          }

          else
          {
            a6 += 16;
          }

          *result = v58;
          *(result + 1) = v60;
          result += 16;
          if (v54 == a6)
          {
            return result;
          }
        }

        v63 = 0;
        do
        {
          v64 = &result[v63];
          v65 = &a6[v63];
          *v64 = *&a6[v63];
          *(v64 + 1) = *&a6[v63 + 8];
          v63 += 16;
        }

        while (v57 != v65);
      }
    }

    else if (a2 != a3)
    {
      v45 = 0;
      do
      {
        *&a6[v45] = *&a2[v45];
        v45 += 16;
      }

      while (&a2[v45] != a3);
      v46 = a3 - 8;
      v47 = &a6[v45];
      while (a2 != result)
      {
        v48 = *(a2 - 4);
        v49 = *(v47 - 4);
        v50 = v49 >= v48;
        if (v49 < v48)
        {
          v51 = a2;
        }

        else
        {
          v48 = *(v47 - 4);
          v51 = v47;
        }

        if (!v50)
        {
          a2 -= 16;
        }

        v52 = *(v51 - 1);
        if (v50)
        {
          v47 -= 16;
        }

        *(v46 - 2) = v48;
        *v46 = v52;
        v46 -= 16;
        if (v47 == a6)
        {
          return result;
        }
      }

      while (v47 != a6)
      {
        v53 = *(v47 - 4);
        v47 -= 16;
        *(v46 - 2) = v53;
        *v46 = *(v47 + 1);
        v46 -= 16;
      }
    }
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::MDAttachments::Attachment,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 16 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v6);
  llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

unint64_t llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  result = llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::uninitialized_move<llvm::MDAttachments::Attachment*,llvm::MDAttachments::Attachment*>(*a1, (*a1 + 16 * *(a1 + 8)), a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (*a1 + 16 * v4 - 8);
    v6 = -16 * v4;
    do
    {
      if (*v5)
      {
        result = llvm::MetadataTracking::untrack(v5, *v5);
      }

      v5 -= 2;
      v6 += 16;
    }

    while (v6);
  }

  return result;
}

BOOL llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::uninitialized_move<llvm::MDAttachments::Attachment*,llvm::MDAttachments::Attachment*>(_BOOL8 result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 8);
    v5 = (result + 8);
    do
    {
      *(v4 - 2) = *(v5 - 2);
      v6 = *v5;
      *v4 = *v5;
      if (v6)
      {
        result = llvm::MetadataTracking::retrack(v5, v6, v4);
        *v5 = 0;
      }

      v4 += 2;
      v7 = v5 + 1;
      v5 += 2;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t *llvm::SmallVectorImpl<llvm::MDAttachments::Attachment>::erase(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *a1 + 16 * v6;
  if (v7 == a3)
  {
    v10 = a2;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v9;
      v9 += 4;
      *v10 = v11;
      v10 += 2;
      llvm::TrackingMDRef::operator=(v8 + 1, a3 + 1);
      v8 = v10;
      a3 = v9;
    }

    while (v9 != v7);
    v5 = *a1;
    v6 = *(a1 + 2);
  }

  v12 = (v5 + 16 * v6);
  if (v12 != v10)
  {
    v13 = v12 - 1;
    do
    {
      if (*v13)
      {
        llvm::MetadataTracking::untrack(v13, *v13);
      }

      v14 = v13 - 1;
      v13 -= 2;
    }

    while (v14 != v10);
    v5 = *a1;
  }

  *(a1 + 2) = (v10 - v5) >> 4;
  return a2;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::LookupBucketFor<llvm::Value const*>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::InsertIntoBucketImpl<llvm::Value const*>(a1, a2, a2, v8);
    v6 = *a2;
    v5[3] = 0;
    v5[4] = 0;
    *v5 = v6;
    v5[1] = v5 + 3;
    v5[2] = 0x100000000;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::LookupBucketFor<llvm::Value const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 40 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 40 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::InsertIntoBucketImpl<llvm::Value const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::LookupBucketFor<llvm::Value const*>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 40 * v3;
      v16 = v4;
      do
      {
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::LookupBucketFor<llvm::Value const*>(a1, v16, &v29);
          v17 = v29;
          *v29 = *v16;
          v18 = (v17 + 3);
          v17[1] = v17 + 3;
          v17[2] = 0x100000000;
          v19 = *(v16 + 16);
          if (v16 != v17 && v19 != 0)
          {
            v21 = *(v16 + 8);
            if (v16 + 24 == v21)
            {
              if (v19 < 2)
              {
                v23 = *(v16 + 16);
              }

              else
              {
                llvm::SmallVectorImpl<llvm::MDAttachments::Attachment>::clear((v17 + 1));
                llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::grow((v17 + 1), v19);
                v21 = *(v16 + 8);
                v23 = *(v16 + 16);
                v18 = v17[1];
              }

              llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::uninitialized_move<llvm::MDAttachments::Attachment*,llvm::MDAttachments::Attachment*>(v21, (v21 + 16 * v23), v18);
              *(v17 + 4) = v19;
              llvm::SmallVectorImpl<llvm::MDAttachments::Attachment>::clear(v16 + 8);
            }

            else
            {
              v17[1] = v21;
              v22 = *(v16 + 20);
              *(v17 + 4) = v19;
              *(v17 + 5) = v22;
              *(v16 + 8) = v16 + 24;
              *(v16 + 16) = 0;
            }
          }

          ++*(a1 + 8);
          llvm::SmallVector<llvm::MDAttachments::Attachment,1u>::~SmallVector((v16 + 8));
        }

        v16 += 40;
        v15 -= 40;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 40 * v24 - 40;
    v27 = vdupq_n_s64(v26 / 0x28);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[5] = -4096;
      }

      v25 += 2;
      result += 10;
    }

    while (((v26 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

unint64_t llvm::SmallVectorImpl<llvm::MDAttachments::Attachment>::clear(unint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = (*result + 16 * v2 - 8);
    v4 = -16 * v2;
    do
    {
      if (*v3)
      {
        result = llvm::MetadataTracking::untrack(v3, *v3);
      }

      v3 -= 2;
      v4 += 16;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

char *llvm::DenseMap<llvm::DIAssignID *,llvm::SmallVector<llvm::Instruction *,1u>,llvm::DenseMapInfo<llvm::DIAssignID *,void>,llvm::detail::DenseMapPair<llvm::DIAssignID *,llvm::SmallVector<llvm::Instruction *,1u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = (v4 + 24);
      v19 = 32 * v3;
      do
      {
        v20 = *(v18 - 3);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v32 = 0;
          v21 = v32;
          *v32 = *(v18 - 3);
          v21[2] = 0x100000000;
          v21[1] = v21 + 3;
          v22 = (v21 + 1);
          if (*(v18 - 2))
          {
            llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(v22, (v18 - 2));
          }

          ++*(a1 + 8);
          v23 = *(v18 - 2);
          if (v18 != v23)
          {
            free(v23);
          }
        }

        v18 += 4;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v24 + 0x7FFFFFFFFFFFFFFLL;
    v27 = v26 & 0x7FFFFFFFFFFFFFFLL;
    v28 = (v26 & 0x7FFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
    v29 = vdupq_n_s64(v27);
    v30 = result + 32;
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_2750C1210)));
      if (v31.i8[0])
      {
        *(v30 - 4) = -4096;
      }

      if (v31.i8[4])
      {
        *v30 = -4096;
      }

      v25 += 2;
      v30 += 8;
    }

    while (v28 != v25);
  }

  return result;
}

uint64_t llvm::SymbolTableListTraits<llvm::GlobalVariable>::removeNodeFromList(uint64_t result, llvm::Value *this)
{
  *(this + 5) = 0;
  if ((*(this + 23) & 0x10) != 0)
  {
    v2 = *(result + 104);
    if (v2)
    {
      ValueName = llvm::Value::getValueName(this);
      v4 = *ValueName;
      v5 = (ValueName + *(v2 + 20));

      return llvm::StringMapImpl::RemoveKey(v2, v5, v4);
    }
  }

  return result;
}

uint64_t llvm::SymbolTableListTraits<llvm::GlobalAlias>::removeNodeFromList(uint64_t result, llvm::Value *this)
{
  *(this + 5) = 0;
  if ((*(this + 23) & 0x10) != 0)
  {
    v2 = *(result + 72);
    if (v2)
    {
      ValueName = llvm::Value::getValueName(this);
      v4 = *ValueName;
      v5 = (ValueName + *(v2 + 20));

      return llvm::StringMapImpl::RemoveKey(v2, v5, v4);
    }
  }

  return result;
}

uint64_t llvm::SymbolTableListTraits<llvm::GlobalIFunc>::removeNodeFromList(uint64_t result, llvm::Value *this)
{
  *(this + 5) = 0;
  if ((*(this + 23) & 0x10) != 0)
  {
    v2 = *(result + 56);
    if (v2)
    {
      ValueName = llvm::Value::getValueName(this);
      v4 = *ValueName;
      v5 = (ValueName + *(v2 + 20));

      return llvm::StringMapImpl::RemoveKey(v2, v5, v4);
    }
  }

  return result;
}

void llvm::Module::Module(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  a1[1] = a1 + 1;
  a1[2] = a1 + 1;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = a1 + 5;
  a1[6] = a1 + 5;
  a1[7] = a1 + 7;
  a1[8] = a1 + 7;
  a1[9] = a1 + 9;
  a1[10] = a1 + 9;
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  operator new();
}

void llvm::Module::~Module(llvm::Module *this)
{
  llvm::SmallPtrSetImplBase::erase_imp(**this, this);
  v2 = this + 24;
  for (i = *(this + 4); i != v2; i = *(i + 8))
  {
    if (i)
    {
      v4 = (i - 56);
    }

    else
    {
      v4 = 0;
    }

    llvm::Function::dropAllReferences(v4);
  }

  v5 = this + 8;
  for (j = *(this + 2); j != v5; j = *(j + 8))
  {
    if (j)
    {
      v7 = (j - 56);
    }

    else
    {
      v7 = 0;
    }

    llvm::User::dropAllReferences(v7);
    llvm::Value::clearMetadata(v7);
  }

  v8 = this + 40;
  for (k = *(this + 6); k != v8; k = *(k + 8))
  {
    if (k)
    {
      v10 = k - 48;
    }

    else
    {
      v10 = 0;
    }

    llvm::User::dropAllReferences(v10);
  }

  v11 = this + 56;
  for (m = *(this + 8); m != v11; m = *(m + 8))
  {
    if (m)
    {
      v13 = m - 56;
    }

    else
    {
      v13 = 0;
    }

    llvm::User::dropAllReferences(v13);
  }

    ;
  }

    ;
  }

    ;
  }

    ;
  }

  MEMORY[0x277C69E30](*(this + 90), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 696);
  llvm::DataLayout::~DataLayout((this + 256));
  if (*(this + 61))
  {
    v18 = *(this + 60);
    if (v18)
    {
      v19 = 0;
      v20 = 8 * v18;
      do
      {
        v21 = *(*(this + 29) + v19);
        if (v21 != -8 && v21 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        v19 += 8;
      }

      while (v20 != v19);
    }
  }

  free(*(this + 29));
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  v23 = *(this + 19);
  *(this + 19) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 18);
  *(this + 18) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  if (*(this + 33))
  {
    v25 = *(this + 32);
    if (v25)
    {
      v26 = 0;
      v27 = 8 * v25;
      do
      {
        v28 = *(*(this + 15) + v26);
        if (v28 != -8 && v28 != 0)
        {
          v30 = *(v28 + 32);
          if (v30 != *(v28 + 24))
          {
            free(v30);
          }

          MEMORY[0x277C69E30](v28, 8);
        }

        v26 += 8;
      }

      while (v27 != v26);
    }
  }

  free(*(this + 15));
  v31 = *(this + 14);
  *(this + 14) = 0;
  if (v31)
  {
    v32 = llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(v31);
    MEMORY[0x277C69E40](v32, 0x1080C40ABB4582ELL);
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v33 = *(this + 10);
  if (v33 != (this + 72))
  {
    do
    {
      v34 = *v33;
      v35 = *(v33 + 1);
      *v35 = *v33;
      *(v34 + 8) = v35;
      *v33 = 0;
      *(v33 + 1) = 0;
      llvm::NamedMDNode::~NamedMDNode(v33);
      MEMORY[0x277C69E40]();
      v33 = v35;
    }

    while (v35 != (this + 72));
  }

    ;
  }

    ;
  }

    ;
  }

    ;
  }
}

uint64_t llvm::ValueSymbolTable::lookup(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v4 = *(a1 + 24);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a3 < v5)
  {
    v5 = a3;
  }

  if (a3 > v4 && v4 > -1)
  {
    a3 = v5;
  }

  Key = llvm::StringMapImpl::FindKey(a1, a2, a3);
  if (Key == -1 || Key == *(a1 + 8))
  {
    return 0;
  }

  else
  {
    return *(*(*a1 + 8 * Key) + 8);
  }
}

uint64_t llvm::Module::getMDKindID(uint64_t **a1, uint64_t *a2, unint64_t a3)
{
  v3 = **a1;
  v5 = *(v3 + 2492);
  return *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>((v3 + 2480), a2, a3, &v5) + 8);
}

llvm::PointerType **llvm::Module::getOrInsertFunction(uint64_t a1, uint64_t *a2, unint64_t a3, llvm::PointerType **a4, uint64_t a5)
{
  v10 = llvm::ValueSymbolTable::lookup(*(a1 + 112), a2, a3);
  if (v10)
  {
    v11 = v10;
    v12 = llvm::PointerType::get(a4, (*(*v10 + 8) >> 8));
    if (*v11 != v12)
    {
      getFoldedCast(0x31, v11, v12, 0);
    }
  }

  else
  {
    v13 = *(a1 + 268);
    v17 = 261;
    v16[0] = a2;
    v16[1] = a3;
    v14 = operator new(0x80uLL);
    v14[7] = v14[7] & 0x38000000 | 0x40000000;
    *v14 = 0;
    llvm::Function::Function((v14 + 2), a4, 0, v13, v16, 0);
    if ((*(v14 + 41) & 0x20) == 0)
    {
      *(v14 + 15) = a5;
    }

    llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::insert(a1 + 24, (a1 + 24), (v14 + 2));
  }

  return a4;
}

uint64_t llvm::Module::getNamedMetadata(llvm::Module *this, const llvm::Twine *a2)
{
  v11[32] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C12F0;
  v3 = llvm::Twine::toStringRef(a2, &v9);
  Key = llvm::StringMapImpl::FindKey(this + 29, v3, v4);
  if (Key == -1 || Key == *(this + 60))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(*(this + 29) + 8 * Key) + 8);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t llvm::Module::getOrInsertNamedMetadata(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  result = (*llvm::StringMap<llvm::MCSectionMachO *,llvm::MallocAllocator>::try_emplace<>((a1 + 232), a2, a3))[1];
  if (!result)
  {
    operator new();
  }

  return result;
}

void llvm::Module::eraseNamedMetadata(llvm::Module *this, llvm::NamedMDNode *a2)
{
  v3 = *(a2 + 39);
  if (v3 >= 0)
  {
    v4 = (a2 + 16);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(a2 + 3);
  if (v3 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(a2 + 3);
  }

  llvm::StringMap<llvm::NamedMDNode *,llvm::MallocAllocator>::erase(this + 232, v4, v6);
  v8 = *a2;
  v7 = *(a2 + 1);
  *v7 = *a2;
  *(v8 + 8) = v7;
  *a2 = 0;
  *(a2 + 1) = 0;
  llvm::NamedMDNode::~NamedMDNode(a2);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::StringMap<llvm::NamedMDNode *,llvm::MallocAllocator>::erase(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3);
  if (Key == -1 || Key == *(a1 + 8))
  {
    return 0;
  }

  v6 = *(*a1 + 8 * Key);
  llvm::StringMapImpl::RemoveKey(a1, (v6 + *(a1 + 20)), *v6);
  MEMORY[0x277C69E30](v6, 8);
  return 1;
}

uint64_t llvm::Module::isValidModFlagBehavior(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (*result == 1)
    {
      v2 = *(result + 128);
      if (*(v2 + 16) == 16 && (LimitedValue = llvm::APInt::getLimitedValue((v2 + 24), 0xFFFFFFFFFFFFFFFFLL), LimitedValue - 9 >= 0xFFFFFFFFFFFFFFF8))
      {
        *a2 = LimitedValue;
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::Module::isValidModuleFlag(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = (a1 - 16);
  v7 = *(a1 - 16);
  if ((v7 & 2) == 0)
  {
    if ((*(a1 - 16) & 0x3C0uLL) >= 0xC0)
    {
      v9 = &v8[-((v7 >> 2) & 0xF)];
      goto LABEL_6;
    }

    return 0;
  }

  if (*(a1 - 24) < 3u)
  {
    return 0;
  }

  v9 = *(a1 - 32);
LABEL_6:
  result = llvm::Module::isValidModFlagBehavior(*v9, a2);
  if (!result)
  {
    return result;
  }

  if ((*v8 & 2) != 0)
  {
    v11 = *(a1 - 32);
  }

  else
  {
    v11 = &v8[-((*v8 >> 2) & 0xFLL)];
  }

  v12 = v11[1];
  if (!v12 || *v12)
  {
    return 0;
  }

  *a3 = v12;
  if ((*v8 & 2) != 0)
  {
    v13 = *(a1 - 32);
  }

  else
  {
    v13 = &v8[-((*v8 >> 2) & 0xFLL)];
  }

  *a4 = v13[2];
  return 1;
}

uint64_t llvm::Module::getModuleFlagsMetadata(llvm::Module *a1, uint64_t a2)
{
  v14[0] = "llvm.module.flags";
  v15 = 259;
  result = llvm::Module::getNamedMetadata(a1, v14);
  if (result)
  {
    v4 = result;
    v5 = *(*(result + 48) + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(**(v4 + 48) + v6);
        v13 = 0;
        v11 = 0;
        v12 = 0;
        result = llvm::Module::isValidModuleFlag(v8, &v13, &v12, &v11);
        if (result)
        {
          LODWORD(v14[0]) = v13;
          v14[1] = v12;
          v14[2] = v11;
          result = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(a2, v14, 1);
          v9 = *a2 + 24 * *(a2 + 8);
          v10 = *result;
          *(v9 + 16) = *(result + 16);
          *v9 = v10;
          ++*(a2 + 8);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  return result;
}

uint64_t llvm::Module::getModuleFlag(llvm::Module *a1, const void *a2, size_t a3)
{
  v16[24] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x800000000;
  llvm::Module::getModuleFlagsMetadata(a1, &v14);
  v5 = v14;
  if (v15)
  {
    v6 = (v14 + 16);
    v7 = 24 * v15;
    while (1)
    {
      v8 = *(*(v6 - 1) + 8);
      v10 = *v8;
      v9 = v8 + 3;
      if (a3 == v10 && (!a3 || !memcmp(a2, v9, a3)))
      {
        break;
      }

      v6 += 3;
      v7 -= 24;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v11 = *v6;
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  if (v5 != v16)
  {
    free(v5);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t llvm::Module::addModuleFlag(void **a1, llvm::Type *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = llvm::ConstantInt::get((**a1 + 1992), a2);
  v17[0] = llvm::ValueAsMetadata::get(v9, v10);
  v11 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**a1 + 312), a3, a4);
  if (v12)
  {
    *(v11 + 16) = v11;
  }

  v17[1] = v11 + 8;
  v17[2] = a5;
  inserted = llvm::Module::getOrInsertNamedMetadata(a1, "llvm.module.flags", 0x11uLL);
  Impl = llvm::MDTuple::getImpl(*a1, v17, 3uLL, 0, 1);
  result = llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(inserted + 48), &Impl);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::Module::addModuleFlag(void **a1, llvm::Type *a2, uint64_t *a3, unint64_t a4, llvm::Type *a5)
{
  v9 = llvm::ConstantInt::get((**a1 + 1992), a5);
  v11 = llvm::ValueAsMetadata::get(v9, v10);

  return llvm::Module::addModuleFlag(a1, a2, a3, a4, v11);
}

uint64_t llvm::Module::materializeAll@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 152);
  if (v2)
  {
    *(this + 152) = 0;
    (*(*v2 + 24))(v2);
    v3 = *(*v2 + 8);

    return v3(v2);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void llvm::Module::getUniqueIntrinsicName(uint64_t a1@<X0>, llvm::formatv_object_base *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v29) = a4;
  v30 = a5;
  v12 = &v29;
  LODWORD(v31[0]) = 0;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::try_emplace<unsigned int>(&v23, a1 + 720, &v29, v31);
  if (v24)
  {
    v29 = a2;
    v30 = a3;
    LODWORD(v31[0]) = 0;
    v22 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>((a1 + 696), a2, a3, v31);
    v13 = *(*v22 + 8);
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    while (1)
    {
      v25 = a2;
      v26 = a3;
      v27 = ".";
      v28 = 773;
      v12 = v12 & 0xFFFFFFFF00000000 | v13;
      v29 = &v25;
      v31[0] = v12;
      v32 = 2050;
      llvm::Twine::str(&v29, &v23);
      if (*(a6 + 23) < 0)
      {
        operator delete(*a6);
      }

      *a6 = v23;
      *(a6 + 16) = v24;
      v14 = *(a6 + 23);
      v15 = v14 >= 0 ? a6 : *a6;
      v16 = v14 >= 0 ? *(a6 + 23) : *(a6 + 8);
      v17 = llvm::ValueSymbolTable::lookup(*(a1 + 112), v15, v16);
      if (!v17)
      {
        break;
      }

      if (*(*(v17 + 24) + 8) == 14)
      {
        v18 = *(v17 + 24);
      }

      else
      {
        v18 = 0;
      }

      LODWORD(v25) = a4;
      v26 = v18;
      LODWORD(v27) = v13;
      llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::try_emplace<unsigned int>(&v29, a1 + 720, &v25, &v27);
      if (v18 == a5)
      {
        *(v29 + 4) = v13;
        goto LABEL_22;
      }

      ++v13;
    }

    LODWORD(v29) = a4;
    v30 = a5;
    v25 = 0;
    v20 = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::LookupBucketFor<std::pair<unsigned int,llvm::FunctionType const*>>(*(a1 + 720), *(a1 + 736), a4, a5, &v25);
    v21 = v25;
    if ((v20 & 1) == 0)
    {
      v21 = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::InsertIntoBucketImpl<std::pair<unsigned int,llvm::FunctionType const*>>(a1 + 720, &v29, v25);
      *v21 = a4;
      *(v21 + 8) = a5;
      *(v21 + 16) = 0;
    }

    *(v21 + 16) = v13;
LABEL_22:
    *(*v22 + 8) = v13 + 1;
  }

  else
  {
    v19 = *(v23 + 16);
    v25 = a2;
    v26 = a3;
    v27 = ".";
    v28 = 773;
    v29 = &v25;
    v31[0] = v19;
    v32 = 2050;
    llvm::Twine::str(&v29, a6);
  }
}

char *llvm::Module::getOrInsertComdat(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = v11;
  v8 = v11;
  v9 = 2;
  v10 = 0;
  v3 = *llvm::StringMap<llvm::Comdat,llvm::MallocAllocator>::try_emplace<llvm::Comdat>((a1 + 120), a2, a3, &v5);
  if (v8 != v7)
  {
    free(v8);
  }

  *(v3 + 1) = v3;
  return v3 + 8;
}

uint64_t llvm::Module::getSemanticInterposition(llvm::Module *this)
{
  result = llvm::Module::getModuleFlag(this, "SemanticInterposition", 0x15uLL);
  if (result)
  {
    v2 = *(result + 128);
    v3 = (v2 + 24);
    if (*(v2 + 32) >= 0x41u)
    {
      v3 = *v3;
    }

    return *v3 != 0;
  }

  return result;
}

uint64_t getSDKVersionMD(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  v1 = *(a1 + 128);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 16) != 14)
  {
    return 0;
  }

  v2 = *(*v1 + 8);
  if (!*(*v1 + 32))
  {
    return 0;
  }

  ElementAsInteger = llvm::ConstantDataSequential::getElementAsInteger(*(a1 + 128), 0);
  v4 = *v1;
  if (*v1)
  {
    v5 = *(v4 + 8);
  }

  if (*(v4 + 32) >= 2u)
  {
    ElementAsInteger |= (llvm::ConstantDataSequential::getElementAsInteger(v1, 1u) << 32) | 0x8000000000000000;
    v6 = *v1;
    if (*v1)
    {
      v7 = *(v6 + 8);
    }

    if (*(v6 + 32) >= 3u)
    {
      llvm::ConstantDataSequential::getElementAsInteger(v1, 2u);
    }
  }

  return ElementAsInteger;
}

uint64_t llvm::Module::setPtrAuthABIVersion(void **a1, unint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = llvm::ConstantInt::get(**a1 + 1992, a2);
  v7 = llvm::ValueAsMetadata::get(v5, v6);
  v8 = llvm::ConstantInt::get(*v4 + 1920, HIDWORD(a2) & 1);
  v13[0] = v7;
  v13[1] = llvm::ValueAsMetadata::get(v8, v9);
  v13[0] = llvm::MDTuple::getImpl(v4, v13, 2uLL, 0, 1);
  Impl = llvm::MDTuple::getImpl(v4, v13, 1uLL, 0, 1);
  result = llvm::Module::addModuleFlag(a1, 6, "ptrauth.abi-version", 0x13uLL, Impl);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::try_emplace<unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::LookupBucketFor<std::pair<unsigned int,llvm::FunctionType const*>>(*a2, *(a2 + 16), *a3, *(a3 + 8), &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::InsertIntoBucketImpl<std::pair<unsigned int,llvm::FunctionType const*>>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *(a3 + 8);
    *(result + 16) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 24 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::LookupBucketFor<std::pair<unsigned int,llvm::FunctionType const*>>(uint64_t a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = ((a4 >> 4) ^ (a4 >> 9) | ((37 * a3) << 32)) + ~(((a4 >> 4) ^ (a4 >> 9)) << 32);
    v6 = (v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13);
    v7 = (9 * (v6 ^ (v6 >> 8))) ^ ((9 * (v6 ^ (v6 >> 8))) >> 15);
    v8 = a2 - 1;
    v9 = (a2 - 1) & (((v7 + ~(v7 << 27)) >> 31) ^ (v7 + ~(v7 << 27)));
    v10 = (a1 + 24 * v9);
    v11 = *v10;
    v12 = *(v10 + 1);
    if (*v10 == a3 && v12 == a4)
    {
      v14 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      while (v11 != -1 || v12 != -4096)
      {
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -8192;
        }

        if (v18 && v11 == -2)
        {
          v16 = v10;
        }

        v20 = v9 + v17++;
        v9 = v20 & v8;
        v10 = (a1 + 24 * (v20 & v8));
        v11 = *v10;
        v12 = *(v10 + 1);
        v14 = 1;
        if (*v10 == a3 && v12 == a4)
        {
          goto LABEL_9;
        }
      }

      v14 = 0;
      if (v16)
      {
        v10 = v16;
      }
    }
  }

  else
  {
    v10 = 0;
    v14 = 0;
  }

LABEL_9:
  *a5 = v10;
  return v14;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::InsertIntoBucketImpl<std::pair<unsigned int,llvm::FunctionType const*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_8;
  }

  if (v6 + ~v5 - *(a1 + 12) <= v6 >> 3)
  {
LABEL_8:
    llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::grow(a1, v6);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::LookupBucketFor<std::pair<unsigned int,llvm::FunctionType const*>>(*a1, *(a1 + 16), *a2, *(a2 + 8), &v8);
    a3 = v8;
  }

  ++*(a1 + 8);
  if (*a3 != -1 || *(a3 + 8) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

_OWORD *llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_2750DDFC0;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4 + 8;
      do
      {
        v14 = *(v13 - 8);
        v15 = *v13;
        if ((v14 != -1 || v15 != -4096) && (v14 != -2 || v15 != -8192))
        {
          v19 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>,std::pair<unsigned int,llvm::FunctionType const*>,unsigned int,llvm::DenseMapInfo<std::pair<unsigned int,llvm::FunctionType const*>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,llvm::FunctionType const*>,unsigned int>>::LookupBucketFor<std::pair<unsigned int,llvm::FunctionType const*>>(*a1, *(a1 + 16), v14, v15, &v19);
          v16 = v19;
          *v19 = *(v13 - 8);
          *(v16 + 1) = *v13;
          v16[4] = *(v13 + 8);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 24 * v17;
    do
    {
      *result = xmmword_2750DDFC0;
      result = (result + 24);
      v18 -= 24;
    }

    while (v18);
  }

  return result;
}

char **llvm::StringMap<llvm::Comdat,llvm::MallocAllocator>::try_emplace<llvm::Comdat>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  *i = llvm::StringMapEntry<llvm::Comdat>::create<llvm::MallocAllocator,llvm::Comdat>(a2, a3, a1, a4);
  ++*(a1 + 3);
    ;
  }

  return i;
}

char *llvm::StringMapEntry<llvm::Comdat>::create<llvm::MallocAllocator,llvm::Comdat>(const void *a1, size_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = operator new(a2 + 73, 8uLL);
  v8 = v7;
  v9 = v7 + 72;
  if (a2)
  {
    memcpy(v7 + 72, a1, a2);
  }

  v9[a2] = 0;
  v10 = *a4;
  *v8 = a2;
  *(v8 + 1) = v10;
  *(v8 + 4) = *(a4 + 2);
  *(v8 + 3) = v8 + 56;
  *(v8 + 4) = v8 + 56;
  *(v8 + 5) = 2;
  *(v8 + 12) = 0;
  return v8;
}

uint64_t _GLOBAL__sub_I_ModuleSummaryIndex_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815AAD88, 0, 0);
  byte_2815AAE08 = 0;
  qword_2815AAE10 = &unk_2883EAB68;
  *&word_2815AAE18 = 0;
  qword_2815AAD88 = &unk_2883EAB00;
  qword_2815AAE20 = &unk_2883EA848;
  qword_2815AAE28 = &unk_2883EAB88;
  qword_2815AAE40 = &qword_2815AAE28;
  llvm::cl::Option::setArgStr(v0, "propagate-attrs", 0xFuLL);
  byte_2815AAE08 = 1;
  word_2815AAE18 = 257;
  word_2815AAD92 = word_2815AAD92 & 0xFF9F | 0x20;
  qword_2815AADA8 = "Propagate attributes in index";
  unk_2815AADB0 = 29;
  llvm::cl::Option::addArgument(&qword_2815AAD88);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AAD88, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815AAE48, 0, 0);
  byte_2815AAEC8 = 0;
  qword_2815AAED0 = &unk_2883EAB68;
  *&word_2815AAED8 = 0;
  qword_2815AAE48 = &unk_2883EAB00;
  qword_2815AAEE0 = &unk_2883EA848;
  qword_2815AAEE8 = &unk_2883EAB88;
  qword_2815AAF00 = &qword_2815AAEE8;
  llvm::cl::Option::setArgStr(v1, "import-constants-with-refs", 0x1AuLL);
  byte_2815AAEC8 = 1;
  word_2815AAED8 = 257;
  word_2815AAE52 = word_2815AAE52 & 0xFF9F | 0x20;
  qword_2815AAE68 = "Import constant global variables with references";
  unk_2815AAE70 = 48;
  llvm::cl::Option::addArgument(&qword_2815AAE48);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AAE48, &dword_274E5C000);
  v20 = 0;
  v18 = 0;
  v19 = 0uLL;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0uLL;
  memset(__p, 0, sizeof(__p));
  v8 = 0uLL;
  v9 = 0;
  v6 = 0uLL;
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  llvm::FunctionSummary::FunctionSummary(&_MergedGlobals_46, 193, 0, 0, 0, &v19, &v16, &v13, &v11, __p, &v8, &v6, v5, v4, v3);
  v21 = v3;
  std::vector<llvm::AllocInfo>::__destroy_vector::operator()[abi:nn200100](&v21);
  v21 = v4;
  std::vector<llvm::CallsiteInfo>::__destroy_vector::operator()[abi:nn200100](&v21);
  v21 = v5;
  std::vector<llvm::FunctionSummary::ParamAccess>::__destroy_vector::operator()[abi:nn200100](&v21);
  v21 = &v6;
  std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](&v21);
  v21 = &v8;
  std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](&v21);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v11)
  {
    *(&v11 + 1) = v11;
    operator delete(v11);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    *(&v19 + 1) = v19;
    operator delete(v19);
  }

  return __cxa_atexit(llvm::FunctionSummary::~FunctionSummary, &_MergedGlobals_46, &dword_274E5C000);
}

uint64_t llvm::GEPOperator::accumulateConstantOffset(uint64_t a1, llvm::DataLayout *a2, uint64_t a3, unsigned int (*a4)(uint64_t), uint64_t a5)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 20);
  if ((v10 & 0x40000000) != 0)
  {
    v12 = *(a1 - 8);
    v11 = v10 & 0x7FFFFFF;
  }

  else
  {
    v11 = v10 & 0x7FFFFFF;
    v12 = a1 - 32 * v11;
  }

  v17 = v19;
  *v18 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Value const*>::append<llvm::User::const_value_op_iterator,void>(&v17, (v12 + 32), (v12 + 32 * v11));
  v13 = 24;
  if (*(a1 + 16) == 62)
  {
    v13 = 64;
  }

  v14 = llvm::GEPOperator::accumulateConstantOffset(*(a1 + v13), v17, v18[0], a2, a3, a4, a5);
  if (v17 != v19)
  {
    free(v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t llvm::GEPOperator::accumulateConstantOffset(uint64_t a1, llvm::Constant **a2, uint64_t a3, llvm::DataLayout *this, uint64_t a5, unsigned int (*a6)(uint64_t), uint64_t a7)
{
  v55 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v51[0] = a5;
  v51[1] = &v52;
  v53 = a2;
  v54 = a1 | 4;
  if (a3)
  {
    v9 = &a2[a3];
    do
    {
      v10 = (v54 & 0xFFFFFFFFFFFFFFF8);
      if ((v54 & 4) != 0 && v10)
      {
        v11 = v54 & 4;
        v12 = v54 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        UniqueInteger = llvm::Constant::getUniqueInteger(*a2);
        if (*(UniqueInteger + 8) >= 0x41u)
        {
          v14 = *UniqueInteger;
        }

        else
        {
          v14 = UniqueInteger;
        }

        v12 = *(*(v10 + 2) + 8 * *v14);
        a2 = v53;
        v11 = v54 & 4;
        v10 = (v54 & 0xFFFFFFFFFFFFFFF8);
      }

      v15 = *(v12 + 8);
      v16 = *a2;
      if (v11)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10;
      }

      if (v16)
      {
        v18 = *(v16 + 16) == 16;
      }

      else
      {
        v18 = 0;
      }

      if (!v18)
      {
        if (!a6 || (!v17 ? (v19 = v15 == 19) : (v19 = 1), v19))
        {
LABEL_77:
          result = 0;
          goto LABEL_78;
        }

        v20 = 1;
        v46 = 1;
        __src = 0;
        if (a6(a7))
        {
          v52 = 1;
          v44 = v46;
          if (v46 > 0x40)
          {
            operator new[]();
          }

          v43 = __src;
          v29 = (v54 & 0xFFFFFFFFFFFFFFF8);
          if ((v54 & 4) == 0 || !v29)
          {
            v30 = llvm::Constant::getUniqueInteger(*v53);
            if (*(v30 + 8) >= 0x41u)
            {
              v31 = *v30;
            }

            else
            {
              v31 = v30;
            }

            v29 = *(*(v29 + 2) + 8 * *v31);
          }

          TypeAllocSize = llvm::DataLayout::getTypeAllocSize(this, v29);
          if (v32)
          {
          }

          v34 = llvm::GEPOperator::accumulateConstantOffset(llvm::Type *,llvm::ArrayRef<llvm::Value const*>,llvm::DataLayout const&,llvm::APInt &,llvm::function_ref<BOOL ()(llvm::Value&,llvm::APInt &)>)::$_0::operator()(v51, &v43, TypeAllocSize);
          if (v44 >= 0x41 && v43)
          {
            MEMORY[0x277C69E10](v43, 0x1000C8000313F17);
          }

          v20 = v34 ^ 1;
        }

        if (v46 >= 0x41 && __src)
        {
          MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
        }

LABEL_58:
        if ((v20 | 4) != 4)
        {
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      v21 = (v16 + 24);
      v22 = *(v16 + 8);
      if (v22 > 0x40)
      {
        v23 = llvm::APInt::countLeadingZerosSlowCase((v16 + 24)) == v22;
      }

      else
      {
        v23 = *v21 == 0;
      }

      v24 = v23;
      if (v24)
      {
        v20 = 4;
      }

      else
      {
        v20 = 1;
      }

      if ((v24 & 1) != 0 || v15 == 19)
      {
        goto LABEL_58;
      }

      if (v17)
      {
        if (v22 >= 0x41)
        {
          v21 = *v21;
        }

        v25 = *v21;
        StructLayout = llvm::DataLayout::getStructLayout(this, v17);
        llvm::APInt::APInt(&v49, *(a5 + 8), *(StructLayout + v25 + 2));
        v27 = llvm::GEPOperator::accumulateConstantOffset(llvm::Type *,llvm::ArrayRef<llvm::Value const*>,llvm::DataLayout const&,llvm::APInt &,llvm::function_ref<BOOL ()(llvm::Value&,llvm::APInt &)>)::$_0::operator()(v51, &v49, 1);
        if (v50 >= 0x41)
        {
          v28 = v49;
          if (v49)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
        v48 = v22;
        if (v22 > 0x40)
        {
          operator new[]();
        }

        v47 = *v21;
        if (!v10 || !v11)
        {
          v35 = llvm::Constant::getUniqueInteger(*v53);
          if (*(v35 + 8) >= 0x41u)
          {
            v36 = *v35;
          }

          else
          {
            v36 = v35;
          }

          v10 = *(*(v10 + 2) + 8 * *v36);
        }

        v38 = llvm::DataLayout::getTypeAllocSize(this, v10);
        if (v37)
        {
        }

        v27 = llvm::GEPOperator::accumulateConstantOffset(llvm::Type *,llvm::ArrayRef<llvm::Value const*>,llvm::DataLayout const&,llvm::APInt &,llvm::function_ref<BOOL ()(llvm::Value&,llvm::APInt &)>)::$_0::operator()(v51, &v47, v38);
        if (v48 >= 0x41)
        {
          v28 = v47;
          if (v47)
          {
LABEL_73:
            MEMORY[0x277C69E10](v28, 0x1000C8000313F17);
          }
        }
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_75:
      llvm::generic_gep_type_iterator<llvm::Value const* const*>::operator++(&v53);
      a2 = v53;
    }

    while (v53 != v9);
  }

  result = 1;
LABEL_78:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::GEPOperator::accumulateConstantOffset(llvm::Type *,llvm::ArrayRef<llvm::Value const*>,llvm::DataLayout const&,llvm::APInt &,llvm::function_ref<BOOL ()(llvm::Value&,llvm::APInt &)>)::$_0::operator()(uint64_t a1, llvm::APInt *this, uint64_t a3)
{
  llvm::APInt::sextOrTrunc(this, *(*a1 + 8), &v15);
  if (*(this + 2) >= 0x41u && *this)
  {
    MEMORY[0x277C69E10](*this, 0x1000C8000313F17);
  }

  *this = v15;
  *(this + 2) = v16;
  llvm::APInt::APInt(&v15, *(*a1 + 8), a3);
  if ((**(a1 + 8) & 1) == 0)
  {
    llvm::APInt::operator*(this, &v15, &v13);
    llvm::APInt::operator+=(*a1, &v13);
    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
    }

    goto LABEL_20;
  }

  v12 = 0;
  llvm::APInt::smul_ov(this, &v15, &v12, &v13);
  if (!v12)
  {
    llvm::APInt::sadd_ov(*a1, &v13, &v12, &v10);
    v6 = *a1;
    if (*(v6 + 8) >= 0x41u && *v6)
    {
      MEMORY[0x277C69E10](*v6, 0x1000C8000313F17);
    }

    *v6 = v10;
    *(v6 + 8) = v11;
    v7 = v12;
    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
    }

    if (v7)
    {
      goto LABEL_19;
    }

LABEL_20:
    v8 = 1;
    goto LABEL_21;
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
  }

LABEL_19:
  v8 = 0;
LABEL_21:
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x277C69E10](v15, 0x1000C8000313F17);
  }

  return v8;
}

llvm::raw_ostream *llvm::FastMathFlags::print(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v3 = *this;
  if (*this == -1)
  {
    v5 = " fast";
    v6 = 5;
LABEL_36:

    return llvm::raw_ostream::operator<<(a2, v5, v6);
  }

  v4 = this;
  if (v3)
  {
    v7 = *(a2 + 4);
    if (*(a2 + 3) - v7 > 7uLL)
    {
      *v7 = 0x636F737361657220;
      *(a2 + 4) += 8;
    }

    else
    {
      this = llvm::raw_ostream::write(a2, " reassoc", 8uLL);
    }

    v3 = *v4;
    if ((*v4 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 4);
  if ((*(a2 + 3) - v8) > 4)
  {
    *(v8 + 4) = 110;
    *v8 = 1634627104;
    *(a2 + 4) += 5;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, " nnan", 5uLL);
  }

  v3 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_19:
  v9 = *(a2 + 4);
  if ((*(a2 + 3) - v9) > 4)
  {
    *(v9 + 4) = 102;
    *v9 = 1852403232;
    *(a2 + 4) += 5;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, " ninf", 5uLL);
  }

  v3 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v10 = *(a2 + 4);
  if (*(a2 + 3) - v10 > 3uLL)
  {
    *v10 = 2054385184;
    *(a2 + 4) += 4;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, " nsz", 4uLL);
  }

  v3 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v11 = *(a2 + 4);
  if ((*(a2 + 3) - v11) > 4)
  {
    *(v11 + 4) = 112;
    *v11 = 1668440352;
    *(a2 + 4) += 5;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, " arcp", 5uLL);
  }

  v3 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_31:
  v12 = *(a2 + 4);
  if ((*(a2 + 3) - v12) > 8)
  {
    *(v12 + 8) = 116;
    *v12 = *" contract";
    *(a2 + 4) += 9;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, " contract", 9uLL);
  }

  if ((*v4 & 0x40) != 0)
  {
LABEL_35:
    v5 = " afn";
    v6 = 4;
    goto LABEL_36;
  }

  return this;
}

BOOL llvm::OptBisect::shouldRunPass(llvm *a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v11 = v9 + 1;
  *(a1 + 3) = v11;
  v13 = v10 == -1 || v9 < v10;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4;
  }

  v15 = llvm::errs(a1);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 7uLL)
  {
    *v16 = 0x203A544345534942;
    *(v15 + 4) += 8;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, "BISECT: ", 8uLL);
  }

  if (v13)
  {
    v17 = "";
  }

  else
  {
    v17 = "NOT ";
  }

  v18 = llvm::raw_ostream::operator<<(v15, v17, v14);
  v19 = v18;
  v20 = *(v18 + 4);
  if (*(v18 + 3) - v20 > 0xCuLL)
  {
    qmemcpy(v20, "running pass ", 13);
    v21 = (*(v18 + 4) + 13);
    *(v18 + 4) = v21;
  }

  else
  {
    llvm::raw_ostream::write(v18, "running pass ", 0xDuLL);
    v21 = *(v19 + 4);
  }

  if (*(v19 + 3) == v21)
  {
    llvm::raw_ostream::write(v19, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v19 + 4);
  }

  llvm::write_integer(v19, v11, 0, 0);
  v22 = *(v19 + 4);
  if (*(v19 + 3) - v22 > 1uLL)
  {
    *v22 = 8233;
    *(v19 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v19, ") ", 2uLL);
  }

  v23 = llvm::raw_ostream::operator<<(v19, a2, a3);
  v24 = *(v23 + 4);
  if (*(v23 + 3) - v24 > 3uLL)
  {
    *v24 = 544108320;
    *(v23 + 4) += 4;
  }

  else
  {
    v23 = llvm::raw_ostream::write(v23, " on ", 4uLL);
  }

  v25 = llvm::raw_ostream::operator<<(v23, a4, a5);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, "\n", 1uLL);
  }

  else
  {
    *v26 = 10;
    ++*(v25 + 4);
  }

  return v13;
}

void getOptBisector(void)
{
  {
    __cxa_atexit(llvm::OptBisect::~OptBisect, &getOptBisector(void)::OptBisector, &dword_274E5C000);
  }
}

void std::__function::__func<$_0,std::allocator<$_0>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  getOptBisector();
  dword_2820BDDB8 = v2;
  *algn_2820BDDBC = 0;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::~__func(void *a1)
{
  *a1 = &unk_2883F1678;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::~__func(void *a1)
{
  *a1 = &unk_2883F1678;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x277C69E40);
}

void std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<void ()(int)>,std::allocator<std::function<void ()(int)>>,void ()(int const&)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  v5 = *a2;
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return _GLOBAL__sub_I_OptBisect_cpp(v4);
}

uint64_t _GLOBAL__sub_I_OptBisect_cpp()
{
  v9 = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2883F1630;
  v3[3] = v3;
  std::__function::__value_func<void ()(int)>::__value_func[abi:nn200100](v4, v3);
  v0 = llvm::cl::Option::Option(&OptBisectLimit, 0, 0);
  dword_2815A53D8 = 0;
  qword_2815A53E0 = &unk_2883EAC10;
  *&dword_2815A53E8 = 0;
  OptBisectLimit = &unk_2883EAA30;
  qword_2815A53F0 = &unk_2883EA8A8;
  qword_2815A53F8[0] = &unk_2883EE200;
  qword_2815A5410 = qword_2815A53F8;
  llvm::cl::Option::setArgStr(v0, "opt-bisect-limit", 0x10uLL);
  dword_2815A53D8 = 0x7FFFFFFF;
  byte_2815A53EC = 1;
  dword_2815A53E8 = 0x7FFFFFFF;
  word_2815A5362 = word_2815A5362 & 0xFF98 | 0x20;
  std::__function::__value_func<void ()(int)>::__value_func[abi:nn200100](v5, v4);
  v8 = 0;
  if (v6)
  {
    operator new();
  }

  std::function<void ()(int const&)>::operator=(qword_2815A53F8, v7);
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](v7);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](v5);
  qword_2815A5378 = "Maximum optimization to perform";
  unk_2815A5380 = 31;
  llvm::cl::Option::addArgument(&OptBisectLimit);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](v4);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](v3);
  result = __cxa_atexit(llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt, &OptBisectLimit, &dword_274E5C000);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _GLOBAL__sub_I_PassTimingInfo_cpp()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = llvm::cl::Option::Option(&qword_2815AAF48, 0, 0);
  qword_2815AAFC8 = 0;
  byte_2815AAFD9 = 0;
  qword_2815AAFD0 = &unk_2883EAB68;
  qword_2815AAF48 = &unk_2883EB2E8;
  qword_2815AAFE0 = &unk_2883EA848;
  qword_2815AAFE8 = &unk_2883EB350;
  qword_2815AB000 = &qword_2815AAFE8;
  llvm::cl::Option::setArgStr(v0, "time-passes", 0xBuLL);
  llvm::cl::opt_storage<BOOL,true,false>::setLocation(&qword_2815AAFC8, &qword_2815AAF48, _MergedGlobals_47);
  word_2815AAF52 = word_2815AAF52 & 0xFF9F | 0x20;
  qword_2815AAF68 = "Time each pass, printing elapsed time for each on exit";
  unk_2815AAF70 = 54;
  llvm::cl::Option::addArgument(&qword_2815AAF48);
  __cxa_atexit(llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt, &qword_2815AAF48, &dword_274E5C000);
  v5[0] = &unk_2883F16C0;
  v5[3] = v5;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:nn200100](v4, v5);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v5);
  v1 = llvm::cl::Option::Option(&qword_2815AB008, 0, 0);
  byte_2815AB099 = 0;
  qword_2815AB088 = 0;
  unk_2815AB090 = &unk_2883EAB68;
  qword_2815AB008 = &unk_2883EB2E8;
  qword_2815AB0A0 = &unk_2883EA848;
  qword_2815AB0A8 = &unk_2883EB350;
  qword_2815AB0C0 = &qword_2815AB0A8;
  llvm::cl::Option::setArgStr(v1, "time-passes-per-run", 0x13uLL);
  llvm::cl::opt_storage<BOOL,true,false>::setLocation(&qword_2815AB088, &qword_2815AB008, byte_2815AAF09);
  word_2815AB012 = word_2815AB012 & 0xFF9F | 0x20;
  qword_2815AB028 = "Time each pass run, printing elapsed time for each run on exit";
  unk_2815AB030 = 62;
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:nn200100](v5, v4);
  std::function<void ()(BOOL const&)>::operator=(&qword_2815AB0A8, v5);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v5);
  llvm::cl::Option::addArgument(&qword_2815AB008);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v4);
  result = __cxa_atexit(llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt, &qword_2815AB008, &dword_274E5C000);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(uint64_t a1)
{
  *a1 = &unk_2883F1708;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 216);
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 152);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(a1);
}

void llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883F1770;
  std::__function::__value_func<void ()(llvm::ChangePrinter const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883F17D8;
  v2 = *(a1 + 21);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883F1770;
  std::__function::__value_func<void ()(llvm::ChangePrinter const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883F17D8;
  v2 = *(a1 + 21);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  __p = 0uLL;
  v30 = 0;
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    std::vector<std::string>::clear[abi:nn200100]((a1 + 128));
    *(a1 + 176) = 0;
  }

  v12 = llvm::cl::parser<std::string>::parse(a1 + 208, a1, a3, a4, __src, __len, &__p);
  if ((v12 & 1) == 0)
  {
    std::vector<std::string>::push_back[abi:nn200100](a1 + 128, &__p);
    *(a1 + 12) = a2;
    v14 = *(a1 + 192);
    v13 = *(a1 + 200);
    if (v14 >= v13)
    {
      v16 = *(a1 + 184);
      v17 = v14 - v16;
      v18 = (v14 - v16) >> 2;
      v19 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        goto LABEL_21;
      }

      v20 = v13 - v16;
      if (v20 >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
      v22 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1 + 184, v22);
      }

      v23 = (v14 - v16) >> 2;
      v24 = (4 * v18);
      v25 = (4 * v18 - 4 * v23);
      *v24 = a2;
      v15 = v24 + 1;
      memcpy(v25, v16, v17);
      v26 = *(a1 + 184);
      *(a1 + 184) = v25;
      *(a1 + 192) = v15;
      *(a1 + 200) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v14 = a2;
      v15 = v14 + 4;
    }

    *(a1 + 192) = v15;
    v27 = *(a1 + 240);
    if (v27)
    {
      (*(*v27 + 48))(v27, &__p);
      goto LABEL_17;
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_21:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

LABEL_17:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  return v12;
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(uint64_t a1)
{
  *a1 = &unk_2883F1708;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 216);
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 152);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
  return MEMORY[0x277C69E40]();
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  *(a1 + 192) = *(a1 + 184);
  std::vector<std::string>::clear[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  while (v2 != v3)
  {
    std::vector<std::string>::push_back[abi:nn200100](a1 + 128, (v2 + 8));
    v2 += 40;
  }
}

void *llvm::cl::parser<llvm::ChangePrinter>::~parser(void *a1)
{
  *a1 = &unk_2883F17D8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 128) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 592);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

llvm::raw_ostream *llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::printOptionValue(llvm::raw_ostream *result, int a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 32);
LABEL_3:
    v4 = &unk_2883F1828;
    v6 = 1;
    v5 = v3;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v4, (result + 136), a2);
  }

  if (*(result + 148) == 1)
  {
    v3 = *(result + 32);
    if (*(result + 36) != v3)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::ChangePrinter const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::cl::parser<llvm::ChangePrinter>::~parser(void *a1)
{
  *a1 = &unk_2883F17D8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::parser<llvm::ChangePrinter>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 48 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<llvm::ChangePrinter>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 48 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::ChangePrinter>::OptionInfo,false>::grow(unint64_t a1)
{
  v9 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&qword_2815AB478, &unk_2815AB488, a1, 48, &v9);
  v2 = qword_2815AB478;
  if (qword_2815AB480)
  {
    v3 = qword_2815AB478 + 48 * qword_2815AB480;
    v4 = v1 + 32;
    v5 = v1;
    do
    {
      v6 = v2[1];
      *v5 = *v2;
      *(v5 + 1) = v6;
      *(v5 + 4) = &unk_2883F1848;
      v7 = *(v2 + 10);
      v5[44] = *(v2 + 44);
      *(v5 + 10) = v7;
      *(v5 + 4) = &unk_2883F1828;
      v5 += 48;
      v2 += 3;
      v4 += 48;
    }

    while (v2 != v3);
    v2 = qword_2815AB478;
  }

  v8 = v9;
  if (v2 != &unk_2815AB488)
  {
    free(v2);
  }

  qword_2815AB478 = v1;
  HIDWORD(qword_2815AB480) = v8;
}

uint64_t _GLOBAL__sub_I_PrintPasses_cpp()
{
  v63 = *MEMORY[0x277D85DE8];
  v0 = llvm::cl::Option::Option(&PrintBefore, 1, 0);
  byte_2815ACA38 = 0;
  xmmword_2815ACA18 = 0u;
  unk_2815ACA28 = 0u;
  xmmword_2815ACA08 = 0u;
  PrintBefore = &unk_2883F1708;
  qword_2815ACA48 = 0;
  unk_2815ACA50 = 0;
  qword_2815ACA40 = 0;
  qword_2815ACA58 = &unk_2883EA998;
  qword_2815ACA60 = &unk_2883F1868;
  qword_2815ACA78 = &qword_2815ACA60;
  llvm::cl::Option::setArgStr(v0, "print-before", 0xCuLL);
  qword_2815AC9A8 = "Print IR before specified passes";
  unk_2815AC9B0 = 32;
  word_2815AC992 = word_2815AC992 & 0xFD9F | 0x220;
  llvm::cl::Option::addArgument(&PrintBefore);
  __cxa_atexit(llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list, &PrintBefore, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&PrintAfter, 1, 0);
  byte_2815ACB30 = 0;
  xmmword_2815ACB10 = 0u;
  unk_2815ACB20 = 0u;
  xmmword_2815ACB00 = 0u;
  PrintAfter = &unk_2883F1708;
  qword_2815ACB40 = 0;
  unk_2815ACB48 = 0;
  qword_2815ACB38 = 0;
  qword_2815ACB50 = &unk_2883EA998;
  qword_2815ACB58 = &unk_2883F1868;
  qword_2815ACB70 = &qword_2815ACB58;
  llvm::cl::Option::setArgStr(v1, "print-after", 0xBuLL);
  qword_2815ACAA0 = "Print IR after specified passes";
  unk_2815ACAA8 = 31;
  word_2815ACA8A = word_2815ACA8A & 0xFD9F | 0x220;
  llvm::cl::Option::addArgument(&PrintAfter);
  __cxa_atexit(llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list, &PrintAfter, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&PrintBeforeAll, 0, 0);
  byte_2815AC7C8 = 0;
  qword_2815AC7D0 = &unk_2883EAB68;
  *&word_2815AC7D8 = 0;
  PrintBeforeAll = &unk_2883EAB00;
  qword_2815AC7E0 = &unk_2883EA848;
  qword_2815AC7E8 = &unk_2883EAB88;
  qword_2815AC800 = &qword_2815AC7E8;
  llvm::cl::Option::setArgStr(v2, "print-before-all", 0x10uLL);
  qword_2815AC768 = "Print IR before each pass";
  unk_2815AC770 = 25;
  byte_2815AC7C8 = 0;
  word_2815AC7D8 = 256;
  word_2815AC752 = word_2815AC752 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&PrintBeforeAll);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &PrintBeforeAll, &dword_274E5C000);
  v3 = llvm::cl::Option::Option(&PrintAfterAll, 0, 0);
  byte_2815AC948 = 0;
  qword_2815AC950 = &unk_2883EAB68;
  *&word_2815AC958 = 0;
  PrintAfterAll = &unk_2883EAB00;
  qword_2815AC960 = &unk_2883EA848;
  qword_2815AC968 = &unk_2883EAB88;
  qword_2815AC980 = &qword_2815AC968;
  llvm::cl::Option::setArgStr(v3, "print-after-all", 0xFuLL);
  qword_2815AC8E8 = "Print IR after each pass";
  unk_2815AC8F0 = 24;
  byte_2815AC948 = 0;
  word_2815AC958 = 256;
  word_2815AC8D2 = word_2815AC8D2 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&PrintAfterAll);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &PrintAfterAll, &dword_274E5C000);
  *__str = "quiet";
  *&__str[8] = 5;
  *&__str[16] = 2;
  *&__str[24] = "Run in quiet mode";
  v27 = 17;
  v28 = "diff";
  v29 = 4;
  v30 = 3;
  v31 = "Display patch-like changes";
  v32 = 26;
  v33 = "diff-quiet";
  v34 = 10;
  v35 = 4;
  v36 = "Display patch-like changes in quiet mode";
  v37 = 40;
  v38 = "cdiff";
  v39 = 5;
  v40 = 5;
  v41 = "Display patch-like changes with color";
  v42 = 37;
  v43 = "cdiff-quiet";
  v44 = 11;
  v45 = 6;
  v46 = "Display patch-like changes in quiet mode with color";
  v47 = 51;
  v48 = "dot-cfg";
  v49 = 7;
  v50 = 7;
  v51 = "Create a website with graphical changes";
  v52 = 39;
  v53 = "dot-cfg-quiet";
  v54 = 13;
  v55 = 8;
  v56 = "Create a website with graphical changes in quiet mode";
  v57 = 53;
  v58 = "";
  v59 = 0;
  v60 = 1;
  v61 = "";
  v62 = 0;
  v23 = v25;
  v24 = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v23, __str, &v63);
  v4 = llvm::cl::Option::Option(&qword_2815AB3D0, 0, 0);
  dword_2815AB450 = 0;
  qword_2815AB458 = &unk_2883F1828;
  *&dword_2815AB460 = 0;
  qword_2815AB3D0 = &unk_2883F1770;
  qword_2815AB468 = &unk_2883F17D8;
  qword_2815AB470 = &qword_2815AB3D0;
  qword_2815AB478 = &unk_2815AB488;
  qword_2815AB480 = 0x800000000;
  qword_2815AB608 = &unk_2883F18B0;
  qword_2815AB620 = &qword_2815AB608;
  llvm::cl::Option::setArgStr(v4, "print-changed", 0xDuLL);
  qword_2815AB3F0 = "Print changed IRs";
  unk_2815AB3F8 = 17;
  word_2815AB3DA = word_2815AB3DA & 0xFF87 | 0x28;
  dword_2815AB450 = 0;
  byte_2815AB464 = 1;
  dword_2815AB460 = 0;
  if (v24)
  {
    v5 = v23;
    v6 = v23 + 40 * v24;
    do
    {
      v7 = *v5;
      v8 = *(v5 + 1);
      v9 = *(v5 + 4);
      v10 = *(v5 + 24);
      *__str = *v5;
      *&__str[8] = v8;
      *&__str[16] = v10;
      v27 = &unk_2883F1828;
      BYTE4(v28) = 1;
      LODWORD(v28) = v9;
      v11 = qword_2815AB478;
      if (qword_2815AB480 >= HIDWORD(qword_2815AB480))
      {
        if (qword_2815AB478 <= __str && qword_2815AB478 + 48 * qword_2815AB480 > __str)
        {
          v22 = &__str[-qword_2815AB478];
          llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::ChangePrinter>::OptionInfo,false>::grow(qword_2815AB480 + 1);
          v11 = qword_2815AB478;
          v12 = &v22[qword_2815AB478];
          goto LABEL_5;
        }

        llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::ChangePrinter>::OptionInfo,false>::grow(qword_2815AB480 + 1);
        v11 = qword_2815AB478;
      }

      v12 = __str;
LABEL_5:
      v13 = v11 + 48 * qword_2815AB480;
      v14 = *(v12 + 1);
      *v13 = *v12;
      *(v13 + 16) = v14;
      *(v13 + 32) = &unk_2883F1848;
      v15 = *(v12 + 10);
      *(v13 + 44) = v12[44];
      *(v13 + 40) = v15;
      *(v13 + 32) = &unk_2883F1828;
      LODWORD(qword_2815AB480) = qword_2815AB480 + 1;
      llvm::cl::AddLiteralOption(qword_2815AB470, v7, v8);
      v5 += 40;
    }

    while (v5 != v6);
  }

  llvm::cl::Option::addArgument(&qword_2815AB3D0);
  if (v23 != v25)
  {
    free(v23);
  }

  __cxa_atexit(llvm::cl::opt<llvm::ChangePrinter,false,llvm::cl::parser<llvm::ChangePrinter>>::~opt, &qword_2815AB3D0, &dword_274E5C000);
  v16 = llvm::cl::Option::Option(&qword_2815AB0F8, 0, 0);
  qword_2815AB180 = 0;
  unk_2815AB188 = 0;
  qword_2815AB178 = 0;
  qword_2815AB1A0 = 0;
  unk_2815AB1A8 = 0;
  byte_2815AB1B0 = 0;
  qword_2815AB198 = 0;
  qword_2815AB190 = &unk_2883EA828;
  qword_2815AB0F8 = &unk_2883EAA98;
  qword_2815AB1B8 = &unk_2883EA998;
  qword_2815AB1C0 = &unk_2883EE4C8;
  qword_2815AB1D8 = &qword_2815AB1C0;
  llvm::cl::Option::setArgStr(v16, "print-changed-diff-path", 0x17uLL);
  word_2815AB102 = word_2815AB102 & 0xFF9F | 0x20;
  std::string::basic_string[abi:nn200100]<0>(__str, "diff");
  std::string::operator=(&qword_2815AB178, __str);
  byte_2815AB1B0 = 1;
  std::string::operator=(&qword_2815AB198, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  qword_2815AB118 = "system diff used by change reporters";
  unk_2815AB120 = 36;
  llvm::cl::Option::addArgument(&qword_2815AB0F8);
  __cxa_atexit(llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt, &qword_2815AB0F8, &dword_274E5C000);
  v17 = llvm::cl::Option::Option(&PrintModuleScope, 0, 0);
  byte_2815AC648 = 0;
  qword_2815AC650 = &unk_2883EAB68;
  *&word_2815AC658 = 0;
  PrintModuleScope = &unk_2883EAB00;
  qword_2815AC660 = &unk_2883EA848;
  qword_2815AC668 = &unk_2883EAB88;
  qword_2815AC680 = &qword_2815AC668;
  llvm::cl::Option::setArgStr(v17, "print-module-scope", 0x12uLL);
  qword_2815AC5E8 = "When printing IR for print-[before|after]{-all} always print a module IR";
  unk_2815AC5F0 = 72;
  byte_2815AC648 = 0;
  word_2815AC658 = 256;
  word_2815AC5D2 = word_2815AC5D2 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&PrintModuleScope);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &PrintModuleScope, &dword_274E5C000);
  v18 = llvm::cl::Option::Option(&qword_2815AB1E0, 1, 0);
  byte_2815AB290 = 0;
  xmmword_2815AB270 = 0u;
  unk_2815AB280 = 0u;
  xmmword_2815AB260 = 0u;
  qword_2815AB1E0 = &unk_2883F1708;
  qword_2815AB2A0 = 0;
  unk_2815AB2A8 = 0;
  qword_2815AB298 = 0;
  qword_2815AB2B0 = &unk_2883EA998;
  qword_2815AB2B8 = &unk_2883F1868;
  qword_2815AB2D0 = &qword_2815AB2B8;
  llvm::cl::Option::setArgStr(v18, "filter-passes", 0xDuLL);
  qword_2815AB210 = "pass names";
  unk_2815AB218 = 10;
  qword_2815AB200 = "Only consider IR changes for passes whose names match the specified value. No-op without -print-changed";
  unk_2815AB208 = 103;
  word_2815AB1EA = word_2815AB1EA & 0xFD9F | 0x220;
  llvm::cl::Option::addArgument(&qword_2815AB1E0);
  __cxa_atexit(llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list, &qword_2815AB1E0, &dword_274E5C000);
  v19 = llvm::cl::Option::Option(&qword_2815AB2D8, 1, 0);
  byte_2815AB388 = 0;
  xmmword_2815AB368 = 0u;
  unk_2815AB378 = 0u;
  xmmword_2815AB358 = 0u;
  qword_2815AB2D8 = &unk_2883F1708;
  qword_2815AB390 = 0;
  qword_2815AB3A0 = 0;
  qword_2815AB398 = 0;
  qword_2815AB3A8 = &unk_2883EA998;
  qword_2815AB3B0 = &unk_2883F1868;
  qword_2815AB3C8 = &qword_2815AB3B0;
  llvm::cl::Option::setArgStr(v19, "filter-print-funcs", 0x12uLL);
  qword_2815AB308 = "function names";
  qword_2815AB310 = 14;
  qword_2815AB2F8 = "Only print IR for functions whose name match this for all print-[before|after][-all] options";
  qword_2815AB300 = 92;
  word_2815AB2E2 = word_2815AB2E2 & 0xFD9F | 0x220;
  llvm::cl::Option::addArgument(&qword_2815AB2D8);
  result = __cxa_atexit(llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list, &qword_2815AB2D8, &dword_274E5C000);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::GCStatepointInst::classof(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0x1C && ((v2 = v1 - 33, v3 = v2 > 0x33, v4 = (1 << v2) & 0x8000000000041, !v3) ? (v5 = v4 == 0) : (v5 = 1), !v5 && (v6 = *(a1 - 32)) != 0 && !*(v6 + 16) && *(v6 + 24) == *(a1 + 72)))
  {
    return *(v6 + 36) == 125;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SafepointIRVerifier_cpp()
{
  v0 = llvm::cl::Option::Option(PrintOnly, 0, 0);
  byte_2815A45D0 = 0;
  qword_2815A45D8 = &unk_2883EAB68;
  *&word_2815A45E0 = 0;
  PrintOnly[0] = &unk_2883EAB00;
  qword_2815A45E8 = &unk_2883EA848;
  qword_2815A45F0 = &unk_2883EAB88;
  qword_2815A4608 = &qword_2815A45F0;
  llvm::cl::Option::setArgStr(v0, "safepoint-ir-verifier-print-only", 0x20uLL);
  byte_2815A45D0 = 0;
  word_2815A45E0 = 256;
  llvm::cl::Option::addArgument(PrintOnly);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, PrintOnly, &dword_274E5C000);
}

BOOL llvm::Type::canLosslesslyBitCastTo(llvm::Type *this, llvm::Type *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *(this + 2);
  if (v2 == 7 || v2 == 14)
  {
    return 0;
  }

  v5 = *(a2 + 2);
  if (v5 == 7 || v5 == 14)
  {
    return 0;
  }

  if ((v2 & 0xFE) != 0x12 || (v5 & 0xFE) != 18)
  {
    if (v2 == 10)
    {
      if (v5 != 18)
      {
        goto LABEL_33;
      }

      if (llvm::Type::getPrimitiveSizeInBits(a2) == 64)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 11)
      {
        if (v2 == 18)
        {
          if (v5 != 11)
          {
            if (v5 != 10 || llvm::Type::getPrimitiveSizeInBits(this) != 64)
            {
              goto LABEL_33;
            }

            return 1;
          }

          if (llvm::Type::getPrimitiveSizeInBits(this) == 0x2000)
          {
            return 1;
          }
        }

LABEL_33:
        v14 = (v5 ^ v2) < 0x100;
        if (v5 != 15)
        {
          v14 = 0;
        }

        v15 = v2 == 15;
        return v15 && v14;
      }

      if (v5 != 18)
      {
        goto LABEL_33;
      }

      if (llvm::Type::getPrimitiveSizeInBits(a2) == 0x2000)
      {
        return 1;
      }
    }

    return 0;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v11 = v10;
  v12 = llvm::Type::getPrimitiveSizeInBits(a2);
  v14 = v11 == v13;
  v15 = PrimitiveSizeInBits == v12;
  return v15 && v14;
}

unint64_t llvm::Type::getPrimitiveSizeInBits(llvm::Type *this)
{
  v1 = *(this + 2);
  if (v1 > 5)
  {
    if (*(this + 2) > 0xCu)
    {
      if (v1 - 18 < 2)
      {
        v3 = *(this + 8);
        return llvm::Type::getPrimitiveSizeInBits(*(this + 3)) * v3;
      }

      if (v1 == 13)
      {
        return *(this + 2) >> 8;
      }

      return 0;
    }

    if (v1 == 6)
    {
      return 128;
    }

    if (v1 != 10)
    {
      if (v1 == 11)
      {
        return 0x2000;
      }

      return 0;
    }

    return 64;
  }

  if (*(this + 2) > 2u)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 80;
      }

      if (v1 == 5)
      {
        return 128;
      }

      return 0;
    }

    return 64;
  }

  if (v1 >= 2)
  {
    return 32;
  }

  else
  {
    return 16;
  }
}

uint64_t llvm::Type::isEmptyTy@<X0>(llvm::Type *this@<X0>, int a2@<W8>)
{
  v2 = *(this + 8);
  if (this && v2 == 17)
  {
    while (1)
    {
      a2 = *(this + 8);
      if (!a2)
      {
        return 1;
      }

      this = *(this + 3);
      v2 = *(this + 8);
      if (this)
      {
        v3 = v2 == 17;
      }

      else
      {
        v3 = 0;
      }

      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v2 == 16)
    {
      v4 = *(this + 3);
      if (v4)
      {
        v5 = *(this + 2);
        v6 = v4 - 1;
        do
        {
          v7 = *v5++;
          isEmptyTy = llvm::Type::isEmptyTy(v7);
          LOBYTE(a2) = isEmptyTy;
          v10 = v6-- != 0;
        }

        while (isEmptyTy && v10);
      }

      else
      {
        LOBYTE(a2) = 1;
      }
    }

    return (v2 == 16) & a2;
  }
}

uint64_t llvm::Type::isSizedDerivedType(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v3 = *(a1 + 8);
  if (a1 && v3 == 17 || a1 && (v3 & 0xFE) == 0x12)
  {
    v4 = *(a1 + 24);
LABEL_6:

    return llvm::Type::isSized(v4, a2);
  }

  if (a1 && v3 == 21)
  {
    getTargetTypeInfo(a1);
    goto LABEL_6;
  }

  return llvm::StructType::isSized(a1, a2);
}

uint64_t llvm::StructType::isSized(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 0x800) != 0)
  {
    return 1;
  }

  if ((v4 & 0x100) == 0)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (!a2 || (llvm::SmallPtrSetImpl<llvm::Value *>::insert(a2, a1, v10), (v10[16] & 1) != 0))
  {
    v7 = *(a1 + 12);
    if (!v7)
    {
LABEL_12:
      *(a1 + 8) |= 0x800u;
      return 1;
    }

    v8 = *(a1 + 16);
    v9 = 8 * v7;
    while (*(*v8 + 8) != 19 && (llvm::Type::isSized() & 1) != 0)
    {
      v8 += 8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  return 0;
}

void *llvm::IntegerType::get(llvm::IntegerType *this, llvm::LLVMContext *a2)
{
  v7 = a2;
  v3 = *this;
  if (a2 > 31)
  {
    switch(a2)
    {
      case 0x20:
        return (v3 + 1992);
      case 0x40:
        return (v3 + 2016);
      case 0x80:
        return (v3 + 2040);
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return (v3 + 1920);
      case 8:
        return (v3 + 1944);
      case 0x10:
        return (v3 + 1968);
    }
  }

  v5 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::FindAndConstruct((v3 + 2200), &v7);
  result = *(v5 + 1);
  if (!result)
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*this + 2072, 24, 3);
    v6 = v7;
    *result = this;
    result[2] = 0;
    result[1] = (v6 << 8) | 0xDu;
    *(v5 + 1) = result;
  }

  return result;
}

unint64_t llvm::PointerType::get(llvm::PointerType *this, llvm::LLVMContext *a2)
{
  v7 = a2;
  v3 = *this;
  if (a2)
  {
    v4 = (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::FindAndConstruct((v3 + 2384), &v7) + 2);
  }

  else
  {
    v4 = (v3 + 2376);
  }

  result = *v4;
  if (!*v4)
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v3 + 2072, 32, 3);
    v6 = v7;
    *result = this;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
    *(result + 8) = (v6 << 8) | 0xF;
    *v4 = result;
  }

  return result;
}

unint64_t llvm::FunctionType::get(uint64_t **a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v6 = a2;
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v17 = a4;
  v20[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::insert_as<llvm::FunctionTypeKeyInfo::KeyTy>(v8 + 2224, v20, v16, a4, &v18);
  v9 = v18;
  if (v19 == 1)
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v8 + 2072, 8 * a3 + 32, 3);
    *result = *a1;
    *(result + 24) = a1;
    *(result + 16) = 0;
    if (v4)
    {
      v11 = 270;
    }

    else
    {
      v11 = 14;
    }

    *(result + 8) = v11;
    if (a3)
    {
      v12 = a3;
      v13 = (result + 32);
      do
      {
        v14 = *v6++;
        *v13++ = v14;
        --v12;
      }

      while (v12);
    }

    *(result + 16) = result + 24;
    *(result + 12) = a3 + 1;
    *v9 = result;
  }

  else
  {
    result = *v18;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::StructType::get(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v13[0] = a2;
  v13[1] = a3;
  v14 = a4;
  v17[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::insert_as<llvm::AnonStructTypeKeyInfo::KeyTy>(v8 + 2248, v17, v13, a4, &v15);
  v9 = v15;
  if (v16 == 1)
  {
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a1 + 2072, 32, 3);
    *v10 = a1;
    *(v10 + 20) = 0;
    *(v10 + 12) = 0;
    *(v10 + 28) = 0;
    *(v10 + 8) = 1040;
    llvm::StructType::setBody(v10, a2, a3, v4);
    *v9 = v10;
  }

  else
  {
    v10 = *v15;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

unint64_t llvm::StructType::setBody(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7[0] = a2;
  v7[1] = a3;
  if (a4)
  {
    v5 = 768;
  }

  else
  {
    v5 = 256;
  }

  *(a1 + 8) |= v5;
  *(a1 + 12) = a3;
  if (a3)
  {
    result = llvm::ArrayRef<llvm::Type *>::copy<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>(v7, **a1 + 2072);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t llvm::StructType::containsScalableVectorType(llvm::StructType *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 2);
  v3 = 8 * v1;
  while (1)
  {
    v4 = *(*v2 + 8);
    if (v4 == 16)
    {
      break;
    }

    if (v4 == 19)
    {
      return 1;
    }

LABEL_7:
    ++v2;
    v3 -= 8;
    if (!v3)
    {
      return 0;
    }
  }

  if ((llvm::StructType::containsScalableVectorType(*v2) & 1) == 0)
  {
    goto LABEL_7;
  }

  return 1;
}

unint64_t llvm::ArrayRef<llvm::Type *>::copy<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>(uint64_t a1, uint64_t a2)
{
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * *(a1 + 8), 3);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = 8 * v4;
    v7 = result;
    do
    {
      v8 = *v5++;
      *v7++ = v8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t llvm::StructType::setName(uint64_t result, _BYTE *a2, unint64_t a3)
{
  v5 = result;
  v35[8] = *MEMORY[0x277D85DE8];
  v6 = *(result + 24);
  if (v6)
  {
    v7 = v6 + 2;
    v8 = *v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a3 != v8 || a3 && (result = memcmp(a2, v7, a3), result))
  {
    if (v6)
    {
      llvm::StringMapImpl::RemoveKey(**v5 + 2272, (v6 + *(**v5 + 2292)), *v6);
    }

    if (a3)
    {
      v9 = **v5;
      v33 = a2;
      *&v34 = a3;
      *(&v34 + 1) = v5;
      v10 = llvm::StringMap<llvm::StructType *,llvm::MallocAllocator>::try_emplace<llvm::StructType *>((v9 + 2272), a2, a3, &v34 + 1);
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v33 = v35;
        v34 = xmmword_2750C1860;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v33, a2, &a2[a3]);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v33, 46);
        v25 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 1;
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v24 = &unk_2883EB968;
        v32 = &v33;
        llvm::raw_ostream::SetUnbuffered(&v24);
        v14 = (a3 + 1);
        do
        {
          llvm::SmallVectorImpl<char>::resizeImpl<false>(&v33, v14);
          v15 = **v5;
          v16 = *(v15 + 2296);
          *(v15 + 2296) = v16 + 1;
          write_unsigned<unsigned long>(&v24, v16, 0, 0, 0);
          v17 = **v5;
          v21 = *v32;
          v22 = v32[1];
          v23 = v5;
          v18 = llvm::StringMap<llvm::StructType *,llvm::MallocAllocator>::try_emplace<llvm::StructType *>((v17 + 2272), v21, v22, &v23);
        }

        while ((v19 & 1) == 0);
        v12 = v18;
        llvm::raw_ostream::~raw_ostream(&v24);
        if (v33 != v35)
        {
          free(v33);
        }
      }

      result = v5[3];
      if (result)
      {
        result = MEMORY[0x277C69E30](result, 8);
      }

      v13 = *v12;
      goto LABEL_21;
    }

    result = v5[3];
    if (result)
    {
      result = MEMORY[0x277C69E30](result, 8);
      v13 = 0;
LABEL_21:
      v5[3] = v13;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::StructType::create(void *a1, _BYTE *a2, unint64_t a3)
{
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a1 + 2072, 32, 3);
  v7 = v6;
  *v6 = a1;
  *(v6 + 8) = 16;
  *(v6 + 20) = 0;
  *(v6 + 12) = 0;
  *(v6 + 28) = 0;
  if (a3)
  {
    llvm::StructType::setName(v6, a2, a3);
  }

  return v7;
}

BOOL llvm::StructType::isLayoutIdentical(const void **this, const void **a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (((*(this + 9) ^ *(a2 + 9)) & 2) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  if (v2 != *(a2 + 3))
  {
    return 0;
  }

  return memcmp(this[2], a2[2], 8 * v2) == 0;
}

unsigned __int8 *llvm::StructType::indexValid(llvm::StructType *this, const llvm::Value *a2)
{
  v3 = *(*a2 + 8);
  v4 = v3 & 0xFE;
  v5 = v3;
  if (v4 == 18)
  {
    v5 = *(**(*a2 + 16) + 8);
  }

  if (v3 == 19 || v5 != 8205)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (v7 > 0x14)
  {
    return 0;
  }

  if (v4 == 18)
  {
    result = llvm::Constant::getSplatValue(a2, 0);
    if (!result)
    {
      return result;
    }

    a2 = result;
    v7 = result[16];
  }

  if (v7 != 16)
  {
    return 0;
  }

  v9 = (a2 + 24);
  if (*(a2 + 8) >= 0x41u)
  {
    v9 = *v9;
  }

  return (*v9 < *(this + 3));
}

double llvm::ArrayType::get(uint64_t **this, llvm::Type *a2)
{
  v4 = **this;
  v8[0] = this;
  v8[1] = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::FindAndConstruct((v4 + 2328), v8);
  if (!v5[2])
  {
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v4 + 2072, 40, 3);
    *v7 = *this;
    v7[3] = this;
    v7[4] = a2;
    v7[2] = v7 + 3;
    *&result = 0x100000011;
    v7[1] = 0x100000011;
    v5[2] = v7;
  }

  return result;
}

double llvm::VectorType::get(uint64_t **this, llvm::Type *a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return llvm::ScalableVectorType::get(this, a2);
  }

  else
  {
    return llvm::FixedVectorType::get(this, a2);
  }
}

double llvm::ScalableVectorType::get(uint64_t **this, llvm::Type *a2)
{
  v2 = a2;
  v4 = **this;
  v8[0] = this;
  v8[1] = a2 | 0x100000000;
  v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::FindAndConstruct((v4 + 2352), v8);
  if (!*(v5 + 16))
  {
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v4 + 2072, 40, 3);
    *v7 = *this;
    *(v7 + 24) = this;
    *(v7 + 32) = v2;
    *(v7 + 16) = v7 + 24;
    *&result = 0x100000013;
    *(v7 + 8) = 0x100000013;
    *(v5 + 16) = v7;
  }

  return result;
}

double llvm::FixedVectorType::get(uint64_t **this, llvm::Type *a2)
{
  v2 = a2;
  v4 = **this;
  v8[0] = this;
  v8[1] = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::FindAndConstruct((v4 + 2352), v8);
  if (!*(v5 + 16))
  {
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v4 + 2072, 40, 3);
    *v7 = *this;
    *(v7 + 24) = this;
    *(v7 + 32) = v2;
    *(v7 + 16) = v7 + 24;
    *&result = 0x100000012;
    *(v7 + 8) = 0x100000012;
    *(v5 + 16) = v7;
  }

  return result;
}

uint64_t llvm::PointerType::get(llvm::PointerType **this, llvm::Type *a2)
{
  v2 = a2;
  v4 = *this;
  v5 = *v4;
  if (*(*v4 + 2737))
  {
    if (*(v5 + 2736))
    {
LABEL_3:

      return llvm::PointerType::get(v4, a2);
    }
  }

  else
  {
    v7 = byte_2815AC708;
    *(v5 + 2737) = 1;
    *(v5 + 2736) = v7;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = this;
  v10 = a2;
  v8 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::FindAndConstruct((v5 + 2408), &v9);
  result = *(v8 + 16);
  if (!result)
  {
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v5 + 2072, 32, 3);
    *result = *this;
    *(result + 24) = this;
    *(result + 16) = result + 24;
    *(result + 8) = (v2 << 8) | 0xF;
    *(result + 12) = 1;
    *(v8 + 16) = result;
  }

  return result;
}

uint64_t llvm::TargetExtType::TargetExtType(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6, int *a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 8) = 21;
  *(a1 + 16) = 0;
  *(a1 + 24) = llvm::UniqueStringSaver::save((*a2 + 2168), a3, a4, a4);
  *(a1 + 32) = v13;
  *(a1 + 12) = a6;
  v14 = (a1 + 48);
  *(a1 + 16) = a1 + 48;
  if (a6)
  {
    v15 = 8 * a6;
    do
    {
      v16 = *a5++;
      *v14++ = v16;
      v15 -= 8;
    }

    while (v15);
  }

  *(a1 + 8) = *(a1 + 8) | (a8 << 8);
  *(a1 + 40) = v14;
  if (a8)
  {
    v17 = 4 * a8;
    do
    {
      v18 = *a7++;
      *v14 = v18;
      v14 = (v14 + 4);
      v17 -= 4;
    }

    while (v17);
  }

  return a1;
}

uint64_t llvm::TargetExtType::get(uint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, int *a6, uint64_t a7)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v14 = *a1;
  v22[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::insert_as<llvm::TargetExtTypeKeyInfo::KeyTy>(v14 + 2304, v22, v19, a4, &v20);
  v15 = v20;
  if (v21 == 1)
  {
    v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a1 + 2072, 8 * a5 + 4 * a7 + 48, 3);
    result = llvm::TargetExtType::TargetExtType(v16, a1, a2, a3, a4, a5, a6, a7);
    *v15 = result;
  }

  else
  {
    result = *v20;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

double getTargetTypeInfo(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (v2 < 6)
  {
    goto LABEL_11;
  }

  v3 = a1[3];
  if (*v3 == 1919512691 && *(v3 + 2) == 11894)
  {
    llvm::PointerType::get((*v1 + 1944), 0);
    return result;
  }

  if (v2 == 15)
  {
    v5 = *v3;
    v6 = *(v3 + 7);
    if (v5 == 0x2E34366863726161 && v6 == 0x746E756F6376732ELL)
    {
      return llvm::ScalableVectorType::get((*v1 + 1920), 0x10);
    }
  }

LABEL_11:
  v8 = *v1 + 1608;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::insert_as<llvm::FunctionTypeKeyInfo::KeyTy>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::LookupBucketFor<llvm::FunctionTypeKeyInfo::KeyTy>(a1, a3, &v13, a4);
  v10 = v13;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::InsertIntoBucketImpl<llvm::FunctionTypeKeyInfo::KeyTy>(a1, a2, a3, v13);
    v10 = result;
    *result = *a2;
    v11 = 1;
  }

  v12 = *a1 + 8 * *(a1 + 16);
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::LookupBucketFor<llvm::FunctionTypeKeyInfo::KeyTy>(uint64_t *a1, char *a2, uint64_t **a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = llvm::FunctionTypeKeyInfo::getHashValue(a2, a2, a3, a4) & (v5 - 1);
    v10 = (v7 + 8 * v9);
    if (llvm::FunctionTypeKeyInfo::isEqual(a2, *v10))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -8192;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = (v7 + 8 * v9);
        isEqual = llvm::FunctionTypeKeyInfo::isEqual(a2, *v10);
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

BOOL llvm::FunctionTypeKeyInfo::isEqual(uint64_t a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = (8 * *(a2 + 12) - 8) >> 3;
  v8[0] = *v5;
  v8[1] = v5 + 1;
  v8[2] = v7;
  v9 = v6 > 0xFF;
  return llvm::FunctionTypeKeyInfo::KeyTy::operator==(a1, v8);
}

unint64_t llvm::FunctionTypeKeyInfo::getHashValue(char *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(a1 + 1), *(a1 + 1) + 8 * *(a1 + 2), a3, a4);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(&v8);
  v8 = *a1;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,BOOL>(&v8, 0, v9, v10, &v7, a1 + 24);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::FunctionTypeKeyInfo::KeyTy::operator==(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 24) == *(a2 + 24))
  {
    v2 = *(a1 + 16);
    if (v2 == *(a2 + 16) && !memcmp(*(a1 + 8), *(a2 + 8), 8 * v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::InsertIntoBucketImpl<llvm::FunctionTypeKeyInfo::KeyTy>(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>,llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::LookupBucketFor<llvm::FunctionTypeKeyInfo::KeyTy>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::FunctionType *,llvm::detail::DenseSetEmpty,llvm::FunctionTypeKeyInfo,llvm::detail::DenseSetPair<llvm::FunctionType *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
      v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
      v18 = vdupq_n_s64(v16);
      v19 = result + 8;
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
        if (v20.i8[0])
        {
          *(v19 - 1) = -4096;
        }

        if (v20.i8[4])
        {
          *v19 = -4096;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 != v14);
    }

    if (v3)
    {
      v21 = &v4[v3];
      v22 = v4;
      do
      {
        v23 = *v22;
        if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *a1;
          v25 = *(v23 + 16);
          v26 = *(a1 + 16);
          v27 = (8 * *(v23 + 12) - 8) >> 3;
          v46[0] = *v25;
          v46[1] = v25 + 1;
          v46[2] = v27;
          v47 = *(v23 + 8) > 0xFFu;
          HashValue = llvm::FunctionTypeKeyInfo::getHashValue(v46, v10, v11, v12);
          v29 = v26 - 1;
          v30 = *v22;
          v31 = HashValue & (v26 - 1);
          v32 = &v24[v31];
          v33 = *v32;
          if (*v22 != *v32)
          {
            v34 = 0;
            v35 = 1;
            while (v33 != -4096)
            {
              if (v34)
              {
                v36 = 0;
              }

              else
              {
                v36 = v33 == -8192;
              }

              if (v36)
              {
                v34 = v32;
              }

              v37 = v31 + v35++;
              v31 = v37 & v29;
              v32 = &v24[v37 & v29];
              v33 = *v32;
              if (v30 == *v32)
              {
                goto LABEL_16;
              }
            }

            if (v34)
            {
              v32 = v34;
            }
          }

LABEL_16:
          *v32 = v30;
          ++*(a1 + 8);
        }

        ++v22;
      }

      while (v22 != v21);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = v38 + 0x1FFFFFFFFFFFFFFFLL;
    v41 = v40 & 0x1FFFFFFFFFFFFFFFLL;
    v42 = (v40 & 0x1FFFFFFFFFFFFFFFLL) - (v40 & 1) + 2;
    v43 = vdupq_n_s64(v41);
    v44 = result + 8;
    do
    {
      v45 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(vdupq_n_s64(v39), xmmword_2750C1210)));
      if (v45.i8[0])
      {
        *(v44 - 1) = -4096;
      }

      if (v45.i8[4])
      {
        *v44 = -4096;
      }

      v39 += 2;
      v44 += 2;
    }

    while (v42 != v39);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::insert_as<llvm::AnonStructTypeKeyInfo::KeyTy>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::LookupBucketFor<llvm::AnonStructTypeKeyInfo::KeyTy>(a1, a3, &v13, a4);
  v10 = v13;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::InsertIntoBucketImpl<llvm::AnonStructTypeKeyInfo::KeyTy>(a1, a2, a3, v13);
    v10 = result;
    *result = *a2;
    v11 = 1;
  }

  v12 = *a1 + 8 * *(a1 + 16);
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::LookupBucketFor<llvm::AnonStructTypeKeyInfo::KeyTy>(uint64_t *a1, uint64_t a2, uint64_t **a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = llvm::AnonStructTypeKeyInfo::getHashValue(a2, a2, a3, a4) & (v5 - 1);
    v10 = (v7 + 8 * v9);
    if (llvm::AnonStructTypeKeyInfo::isEqual(a2, *v10))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -8192;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = (v7 + 8 * v9);
        isEqual = llvm::AnonStructTypeKeyInfo::isEqual(a2, *v10);
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

BOOL llvm::AnonStructTypeKeyInfo::isEqual(uint64_t a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  v7[0] = *(a2 + 16);
  v7[1] = v5;
  v8 = (v6 & 0x200) != 0;
  return llvm::AnonStructTypeKeyInfo::KeyTy::operator==(a1, v7);
}

unint64_t llvm::AnonStructTypeKeyInfo::getHashValue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a1, *a1 + 8 * *(a1 + 8), a3, a4);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v8);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::Metadata *,BOOL>(v8, 0, v8, v9, &v7, (a1 + 16));
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::AnonStructTypeKeyInfo::KeyTy::operator==(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v2 = *(a1 + 8);
    if (v2 == *(a2 + 8) && !memcmp(*a1, *a2, 8 * v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::InsertIntoBucketImpl<llvm::AnonStructTypeKeyInfo::KeyTy>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>,llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::LookupBucketFor<llvm::AnonStructTypeKeyInfo::KeyTy>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::StructType *,llvm::detail::DenseSetEmpty,llvm::AnonStructTypeKeyInfo,llvm::detail::DenseSetPair<llvm::StructType *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
      v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
      v18 = vdupq_n_s64(v16);
      v19 = result + 8;
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
        if (v20.i8[0])
        {
          *(v19 - 1) = -4096;
        }

        if (v20.i8[4])
        {
          *v19 = -4096;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 != v14);
    }

    if (v3)
    {
      v21 = &v4[v3];
      v22 = v4;
      do
      {
        v23 = *v22;
        if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *a1;
          v25 = *(a1 + 16);
          v26 = *(v23 + 12);
          v45[0] = *(v23 + 16);
          v45[1] = v26;
          v46 = (*(v23 + 8) & 0x200) != 0;
          HashValue = llvm::AnonStructTypeKeyInfo::getHashValue(v45, v10, v11, v12);
          v28 = v25 - 1;
          v29 = *v22;
          v30 = HashValue & (v25 - 1);
          v31 = &v24[v30];
          v32 = *v31;
          if (*v22 != *v31)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v31;
              }

              v36 = v30 + v34++;
              v30 = v36 & v28;
              v31 = &v24[v36 & v28];
              v32 = *v31;
              if (v29 == *v31)
              {
                goto LABEL_16;
              }
            }

            if (v33)
            {
              v31 = v33;
            }
          }

LABEL_16:
          *v31 = v29;
          ++*(a1 + 8);
        }

        ++v22;
      }

      while (v22 != v21);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v37 = *(a1 + 16);
  if (v37)
  {
    v38 = 0;
    v39 = v37 + 0x1FFFFFFFFFFFFFFFLL;
    v40 = v39 & 0x1FFFFFFFFFFFFFFFLL;
    v41 = (v39 & 0x1FFFFFFFFFFFFFFFLL) - (v39 & 1) + 2;
    v42 = vdupq_n_s64(v40);
    v43 = result + 8;
    do
    {
      v44 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(vdupq_n_s64(v38), xmmword_2750C1210)));
      if (v44.i8[0])
      {
        *(v43 - 1) = -4096;
      }

      if (v44.i8[4])
      {
        *v43 = -4096;
      }

      v38 += 2;
      v43 += 2;
    }

    while (v41 != v38);
  }

  return result;
}

unint64_t **llvm::StringMap<llvm::StructType *,llvm::MallocAllocator>::try_emplace<llvm::StructType *>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v14[a3] = 0;
  v15 = *a4;
  *v13 = a3;
  v13[1] = v15;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned long long>>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::InsertIntoBucketImpl<std::pair<llvm::Type *,unsigned long long>>(a1, a2, a2, v8);
    v6 = a2[1];
    *v5 = *a2;
    v5[1] = v6;
    v5[2] = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned long long>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = (37 * v6) + ~((37 * v6) << 32) + (((*a2 >> 4) ^ (*a2 >> 9)) << 32);
    v8 = (v7 ^ (v7 >> 22)) + ~((v7 ^ (v7 >> 22)) << 13);
    v9 = (9 * (v8 ^ (v8 >> 8))) ^ ((9 * (v8 ^ (v8 >> 8))) >> 15);
    v10 = ((v9 + ~(v9 << 27)) >> 31) ^ (v9 + ~(v9 << 27));
    v11 = v3 - 1;
    v12 = (v3 - 1) & v10;
    v13 = (*a1 + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    if (v5 == *v13 && v6 == v14)
    {
      result = 1;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      result = 1;
      while (v15 != -4096 || v14 != -1)
      {
        if (v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v14 == -2;
        }

        if (v20 && v15 == -8192)
        {
          v17 = v13;
        }

        v22 = v12 + v18++;
        v12 = v22 & v11;
        v13 = (v4 + 24 * (v22 & v11));
        v15 = *v13;
        v14 = v13[1];
        if (v5 == *v13 && v6 == v14)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v17)
      {
        v13 = v17;
      }
    }
  }

  else
  {
    v13 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v13;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::InsertIntoBucketImpl<std::pair<llvm::Type *,unsigned long long>>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned long long>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096 || a4[1] != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_2750DDFD0;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        v14 = v13[1];
        if ((*v13 != -4096 || v14 != -1) && (*v13 != -8192 || v14 != -2))
        {
          v21 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>,std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned long long>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned long long>,llvm::ArrayType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned long long>>(a1, v13, &v21);
          v17 = v21;
          v18 = v13[1];
          *v21 = *v13;
          v17[1] = v18;
          v17[2] = v13[2];
          ++*(a1 + 8);
        }

        v13 += 3;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 24 * v19;
    do
    {
      *result = xmmword_2750DDFD0;
      result = (result + 24);
      v20 -= 24;
    }

    while (v20);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::LookupBucketFor<std::pair<llvm::Type *,llvm::ElementCount>>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::InsertIntoBucketImpl<std::pair<llvm::Type *,llvm::ElementCount>>(a1, a2, a2, v8);
    *v5 = *a2;
    v6 = *(a2 + 8);
    *(v5 + 12) = *(a2 + 12);
    *(v5 + 8) = v6;
    *(v5 + 16) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::LookupBucketFor<std::pair<llvm::Type *,llvm::ElementCount>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    v14 = 0;
    result = 0;
    goto LABEL_28;
  }

  v4 = 0;
  v5 = *a1;
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = ((37 * v6 - v7) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32)) + ~((37 * v6 - v7) << 32);
  v9 = (v8 ^ (v8 >> 22)) + ~((v8 ^ (v8 >> 22)) << 13);
  v10 = (9 * (v9 ^ (v9 >> 8))) ^ ((9 * (v9 ^ (v9 >> 8))) >> 15);
  v11 = v3 - 1;
  v12 = v11 & (((v10 + ~(v10 << 27)) >> 31) ^ (v10 + ~(v10 << 27)));
  for (i = 1; ; ++i)
  {
    v14 = (v5 + 24 * v12);
    v15 = *v14;
    if (*a2 == *v14 && v6 == *(v14 + 2) && v7 == *(v14 + 12))
    {
      result = 1;
      goto LABEL_28;
    }

    if (v15 == -4096)
    {
      break;
    }

    if (v15 != -8192)
    {
      goto LABEL_22;
    }

    if (*(v14 + 12))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v14 + 2) == -2;
    }

    v19 = v18;
LABEL_23:
    if ((v19 & (v4 == 0)) != 0)
    {
      v4 = (v5 + 24 * v12);
    }

    v20 = v12 + i;
    v12 = v20 & v11;
  }

  if (*(v14 + 2) != -1 || *(v14 + 12) == 0)
  {
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  result = 0;
  if (v4)
  {
    v14 = v4;
  }

LABEL_28:
  *a3 = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::InsertIntoBucketImpl<std::pair<llvm::Type *,llvm::ElementCount>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_12;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_12:
    llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::grow(a1, v7);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::LookupBucketFor<std::pair<llvm::Type *,llvm::ElementCount>>(a1, a3, &v10);
    a4 = v10;
  }

  ++*(a1 + 8);
  if (*a4 != -4096 || (*(a4 + 8) == -1 ? (v8 = *(a4 + 12) == 0) : (v8 = 1), v8))
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_2750DDFE0;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (!v3)
    {
LABEL_26:

      JUMPOUT(0x277C69E30);
    }

    v12 = 24 * v3;
    v13 = v4;
    while (1)
    {
      if (*v13 == -8192)
      {
        if (*(v13 + 8) == -2 && *(v13 + 12) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (*v13 == -4096 && *(v13 + 8) == -1 && *(v13 + 12) != 0)
      {
        goto LABEL_18;
      }

      v20 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>,std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *,llvm::DenseMapInfo<std::pair<llvm::Type *,llvm::ElementCount>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,llvm::ElementCount>,llvm::VectorType *>>::LookupBucketFor<std::pair<llvm::Type *,llvm::ElementCount>>(a1, v13, &v20);
      v15 = v20;
      *v20 = *v13;
      v16 = *(v13 + 8);
      *(v15 + 12) = *(v13 + 12);
      *(v15 + 2) = v16;
      v15[2] = *(v13 + 16);
      ++*(a1 + 8);
LABEL_18:
      v13 += 24;
      v12 -= 24;
      if (!v12)
      {
        goto LABEL_26;
      }
    }
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = 24 * v18;
    do
    {
      *result = xmmword_2750DDFE0;
      result = (result + 24);
      v19 -= 24;
    }

    while (v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::InsertIntoBucketImpl<std::pair<llvm::Type *,unsigned int>>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 16) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = *(a2 + 2);
    v7 = ~((37 * v6) << 32) + (37 * v6) + (((*a2 >> 4) ^ (*a2 >> 9)) << 32);
    v8 = (v7 ^ (v7 >> 22)) + ~((v7 ^ (v7 >> 22)) << 13);
    v9 = (9 * (v8 ^ (v8 >> 8))) ^ ((9 * (v8 ^ (v8 >> 8))) >> 15);
    v10 = ((v9 + ~(v9 << 27)) >> 31) ^ (v9 + ~(v9 << 27));
    v11 = v3 - 1;
    v12 = (v3 - 1) & v10;
    v13 = *a1 + 24 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    if (v5 == *v13 && v6 == v15)
    {
      result = 1;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      result = 1;
      while (v14 != -4096 || v15 != -1)
      {
        if (v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v15 == -2;
        }

        if (v20 && v14 == -8192)
        {
          v17 = v13;
        }

        v22 = v12 + v18++;
        v12 = v22 & v11;
        v13 = v4 + 24 * (v22 & v11);
        v14 = *v13;
        v15 = *(v13 + 8);
        if (v5 == *v13 && v6 == v15)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v17)
      {
        v13 = v17;
      }
    }
  }

  else
  {
    v13 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::InsertIntoBucketImpl<std::pair<llvm::Type *,unsigned int>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096 || *(a4 + 8) != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &result[24 * v10];
      do
      {
        *result = -4096;
        *(result + 2) = -1;
        result += 24;
      }

      while (result != v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        v14 = *(v13 + 8);
        if ((*v13 != -4096 || v14 != -1) && (*v13 != -8192 || v14 != -2))
        {
          v20 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>,std::pair<llvm::Type *,unsigned int>,llvm::PointerType *,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,llvm::PointerType *>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(a1, v13, &v20);
          v17 = v20;
          *v20 = *v13;
          *(v17 + 2) = *(v13 + 8);
          v17[2] = *(v13 + 16);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = &result[24 * v18];
    do
    {
      *result = -4096;
      *(result + 2) = -1;
      result += 24;
    }

    while (result != v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::insert_as<llvm::TargetExtTypeKeyInfo::KeyTy>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::LookupBucketFor<llvm::TargetExtTypeKeyInfo::KeyTy>(a1, a3, &v13, a4);
  v10 = v13;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::InsertIntoBucketImpl<llvm::TargetExtTypeKeyInfo::KeyTy>(a1, a2, a3, v13);
    v10 = result;
    *result = *a2;
    v11 = 1;
  }

  v12 = *a1 + 8 * *(a1 + 16);
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::LookupBucketFor<llvm::TargetExtTypeKeyInfo::KeyTy>(uint64_t *a1, uint64_t a2, uint64_t **a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = llvm::TargetExtTypeKeyInfo::getHashValue(a2, a2, a3, a4) & (v5 - 1);
    v10 = (v7 + 8 * v9);
    if (llvm::TargetExtTypeKeyInfo::isEqual(a2, *v10))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -8192;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = (v7 + 8 * v9);
        isEqual = llvm::TargetExtTypeKeyInfo::isEqual(a2, *v10);
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

BOOL llvm::TargetExtTypeKeyInfo::isEqual(uint64_t a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (*(a1 + 8) != v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  if (v4)
  {
    v9 = memcmp(*a1, *(a2 + 24), v4);
    result = 0;
    if (v9 || *(a1 + 24) != v8)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(a1 + 24) != v8)
  {
    return 0;
  }

LABEL_9:
  v10 = memcmp(*(a1 + 16), v5, 8 * v8);
  result = 0;
  if (!v10 && *(a1 + 40) == v7 >> 8)
  {
    return memcmp(*(a1 + 32), v6, 4 * (v7 >> 8)) == 0;
  }

  return result;
}

unint64_t llvm::TargetExtTypeKeyInfo::getHashValue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v12[8] = *MEMORY[0x277D85DE8];
  v10 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(a1 + 16), *(a1 + 16) + 8 * *(a1 + 24), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(a1 + 32), *(a1 + 32) + 4 * *(a1 + 40), v5, v6);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v11);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::hash_code,llvm::hash_code>(v11, 0, v11, v12, a1, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::hash_code,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v15 = a2;
  v12 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a5, *a5 + *(a5 + 8), a3, a4);
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, a3, a4, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v15, v13, a4, a6, a7);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::InsertIntoBucketImpl<llvm::TargetExtTypeKeyInfo::KeyTy>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>,llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::LookupBucketFor<llvm::TargetExtTypeKeyInfo::KeyTy>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::TargetExtType *,llvm::detail::DenseSetEmpty,llvm::TargetExtTypeKeyInfo,llvm::detail::DenseSetPair<llvm::TargetExtType *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
      v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
      v18 = vdupq_n_s64(v16);
      v19 = result + 8;
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
        if (v20.i8[0])
        {
          *(v19 - 1) = -4096;
        }

        if (v20.i8[4])
        {
          *v19 = -4096;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 != v14);
    }

    if (v3)
    {
      v21 = &v4[v3];
      v22 = v4;
      do
      {
        v23 = *v22;
        if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *a1;
          v25 = *(a1 + 16);
          v47 = *(v23 + 24);
          v26 = *(v23 + 12);
          v48 = *(v23 + 16);
          v49 = v26;
          v27 = *(v23 + 40);
          v28 = *(v23 + 8) >> 8;
          v50 = v27;
          v51 = v28;
          HashValue = llvm::TargetExtTypeKeyInfo::getHashValue(&v47, v10, v11, v12);
          v30 = v25 - 1;
          v31 = *v22;
          v32 = HashValue & (v25 - 1);
          v33 = &v24[v32];
          v34 = *v33;
          if (*v22 != *v33)
          {
            v35 = 0;
            v36 = 1;
            while (v34 != -4096)
            {
              if (v35)
              {
                v37 = 0;
              }

              else
              {
                v37 = v34 == -8192;
              }

              if (v37)
              {
                v35 = v33;
              }

              v38 = v32 + v36++;
              v32 = v38 & v30;
              v33 = &v24[v38 & v30];
              v34 = *v33;
              if (v31 == *v33)
              {
                goto LABEL_16;
              }
            }

            if (v35)
            {
              v33 = v35;
            }
          }

LABEL_16:
          *v33 = v31;
          ++*(a1 + 8);
        }

        ++v22;
      }

      while (v22 != v21);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v39 = *(a1 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = v39 + 0x1FFFFFFFFFFFFFFFLL;
    v42 = v41 & 0x1FFFFFFFFFFFFFFFLL;
    v43 = (v41 & 0x1FFFFFFFFFFFFFFFLL) - (v41 & 1) + 2;
    v44 = vdupq_n_s64(v42);
    v45 = result + 8;
    do
    {
      v46 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(vdupq_n_s64(v40), xmmword_2750C1210)));
      if (v46.i8[0])
      {
        *(v45 - 1) = -4096;
      }

      if (v46.i8[4])
      {
        *v45 = -4096;
      }

      v40 += 2;
      v45 += 2;
    }

    while (v43 != v40);
  }

  return result;
}

void llvm::TypeFinder::run(llvm::TypeFinder *this, const llvm::Module *a2, char a3)
{
  v53[8] = *MEMORY[0x277D85DE8];
  *(this + 120) = a3;
  v5 = a2 + 8;
  for (i = *(a2 + 2); i != v5; i = *(i + 8))
  {
    if (i)
    {
      v7 = i - 56;
    }

    else
    {
      v7 = 0;
    }

    llvm::TypeFinder::incorporateType(this, *(v7 + 24));
    if (i && *(v7 + 16) == 3)
    {
      if ((*(i - 36) & 0x7FFFFFF) != 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v7 + 16) || *(v7 + 72) != v7 + 72 || (*(v7 + 35) & 1) != 0)
    {
LABEL_13:
      llvm::TypeFinder::incorporateValue(this, *(v7 - 32));
      continue;
    }
  }

  for (j = *(a2 + 6); j != (a2 + 40); j = j[1])
  {
    if (j)
    {
      v9 = j - 6;
    }

    else
    {
      v9 = 0;
    }

    llvm::TypeFinder::incorporateType(this, v9[3]);
    v10 = *(v9 - 4);
    if (v10)
    {
      llvm::TypeFinder::incorporateValue(this, v10);
    }
  }

  for (k = *(a2 + 8); k != (a2 + 56); k = k[1])
  {
    v12 = k - 7;
    if (!k)
    {
      v12 = 0;
    }

    llvm::TypeFinder::incorporateType(this, v12[3]);
  }

  v51 = v53;
  v52 = 0x400000000;
  v48 = a2;
  v49 = (a2 + 24);
  v13 = *(a2 + 4);
  if (v13 != (a2 + 24))
  {
    do
    {
      if (v13)
      {
        v14 = v13 - 56;
      }

      else
      {
        v14 = 0;
      }

      llvm::TypeFinder::incorporateType(this, *(v14 + 3));
      llvm::TypeFinder::incorporateAttributes(this, *(v14 + 14));
      v15 = *(v14 + 5);
      v50 = v13;
      if ((v15 & 0x40000000) != 0)
      {
        v17 = *(v14 - 1);
        v16 = v15 & 0x7FFFFFF;
        if (v16)
        {
LABEL_36:
          v18 = 32 * v16;
          do
          {
            v19 = *v17;
            v17 += 4;
            llvm::TypeFinder::incorporateValue(this, v19);
            v18 -= 32;
          }

          while (v18);
        }
      }

      else
      {
        v16 = v15 & 0x7FFFFFF;
        v17 = &v14[-32 * v16];
        if (v16)
        {
          goto LABEL_36;
        }
      }

      v20 = llvm::Function::args(v14);
      if (v20 != v21)
      {
        v22 = v20;
        v23 = v21;
        do
        {
          llvm::TypeFinder::incorporateValue(this, v22);
          v22 = (v22 + 40);
        }

        while (v22 != v23);
      }

      v24 = v14 + 72;
      v25 = *(v14 + 10);
      while (2)
      {
        if (v25 != v24)
        {
          v26 = v25 - 24;
          if (!v25)
          {
            v26 = 0;
          }

          v27 = v26 + 40;
          v28 = *(v26 + 48);
LABEL_46:
          if (v28 == v27)
          {
            v25 = *(v25 + 8);
            continue;
          }

          if (v28)
          {
            v29 = v28 - 24;
          }

          else
          {
            v29 = 0;
          }

          llvm::TypeFinder::incorporateType(this, *v29);
          v30 = *(v29 + 20);
          if ((v30 & 0x40000000) != 0)
          {
            v32 = *(v29 - 8);
            v31 = v30 & 0x7FFFFFF;
            if (!v31)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v31 = v30 & 0x7FFFFFF;
            v32 = (v29 - 32 * v31);
            if (!v31)
            {
LABEL_59:
              v35 = *(v29 + 16);
              if (v28 && v35 == 62)
              {
                llvm::TypeFinder::incorporateType(this, *(v28 + 40));
                v35 = *(v29 + 16);
              }

              if (v28 && v35 == 59)
              {
                llvm::TypeFinder::incorporateType(this, *(v28 + 40));
                v35 = *(v29 + 16);
              }

              v36 = v35 - 33;
              v37 = v36 > 0x33;
              v38 = (1 << v36) & 0x8000000000041;
              if (!v37 && v38 != 0)
              {
                llvm::TypeFinder::incorporateAttributes(this, *(v29 + 64));
              }

              llvm::Value::getAllMetadata(v29, &v51);
              if (v52)
              {
                v40 = 16 * v52;
                v41 = (v51 + 8);
                do
                {
                  v42 = *v41;
                  v41 += 2;
                  llvm::TypeFinder::incorporateMDNode(this, v42);
                  v40 -= 16;
                }

                while (v40);
              }

              LODWORD(v52) = 0;
              v28 = *(v28 + 8);
              goto LABEL_46;
            }
          }

          v33 = 32 * v31;
          do
          {
            v34 = *v32;
            if (*v32 && v34[16] <= 0x1Bu)
            {
              llvm::TypeFinder::incorporateValue(this, v34);
            }

            v32 += 4;
            v33 -= 32;
          }

          while (v33);
          goto LABEL_59;
        }

        break;
      }

      v13 = *(v50 + 1);
    }

    while (v13 != v49);
  }

  for (m = *(v48 + 10); m != (v48 + 72); m = m[1])
  {
    v44 = *(m[6] + 8);
    if (v44)
    {
      v45 = 0;
      v46 = 8 * v44;
      do
      {
        llvm::TypeFinder::incorporateMDNode(this, *(*m[6] + v45));
        v45 += 8;
      }

      while (v46 != v45);
    }
  }

  if (v51 != v53)
  {
    free(v51);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void llvm::TypeFinder::incorporateType(llvm::TypeFinder *this, llvm::Type *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = a2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v28, this + 72, &v26);
  if (v30[0] == 1)
  {
    v28 = v30;
    v29 = 0x400000000;
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v28, a2);
    v4 = v29;
    do
    {
      v5 = *(v28 + v4 - 1);
      LODWORD(v29) = v4 - 1;
      if (v5)
      {
        v6 = *(v5 + 8) == 16;
      }

      else
      {
        v6 = 0;
      }

      if (v6 && (*(this + 120) != 1 || *(v5 + 24)))
      {
        v8 = *(this + 13);
        v7 = *(this + 14);
        if (v8 >= v7)
        {
          v10 = *(this + 12);
          v11 = (v8 - v10) >> 3;
          if ((v11 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v12 = v7 - v10;
          v13 = v12 >> 2;
          if (v12 >> 2 <= (v11 + 1))
          {
            v13 = v11 + 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(this + 96, v14);
          }

          *(8 * v11) = v5;
          v9 = 8 * v11 + 8;
          v15 = *(this + 12);
          v16 = *(this + 13) - v15;
          v17 = (8 * v11 - v16);
          memcpy(v17, v15, v16);
          v18 = *(this + 12);
          *(this + 12) = v17;
          *(this + 13) = v9;
          *(this + 14) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v8 = v5;
          v9 = (v8 + 1);
        }

        *(this + 13) = v9;
      }

      v19 = *(v5 + 12);
      if (v19)
      {
        v20 = *(v5 + 16);
        v21 = 8 * v19;
        v22 = v20 - 8;
        do
        {
          v23 = *(v22 + v21);
          v25 = v23;
          llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v27, this + 72, &v25);
          if (v27[16] == 1)
          {
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v28, v23);
          }

          v21 -= 8;
        }

        while (v21);
      }

      v4 = v29;
    }

    while (v29);
    if (v28 != v30)
    {
      free(v28);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void llvm::TypeFinder::incorporateValue(llvm::TypeFinder *this, const llvm::Value *a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  if (a2 && v4 == 23)
  {
    while (1)
    {
      v5 = *(v2 + 3);
      v6 = llvm::MDNode::classof(v5);
      if (v5 && v6 != 0)
      {
        break;
      }

      v8 = *(v2 + 3);
      if (*v8 - 3 < 0xFFFFFFFE)
      {
        return;
      }

      v2 = *(v8 + 16);
      v4 = *(v2 + 16);
      if (v2)
      {
        v9 = v4 == 23;
      }

      else
      {
        v9 = 0;
      }

      if (!v9)
      {
        goto LABEL_13;
      }
    }

    llvm::TypeFinder::incorporateMDNode(this, v5);
  }

  else
  {
LABEL_13:
    v17 = v2;
    if ((v4 - 21) >= 0xFFFFFFEF)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this, &v17, v18);
      if (v18[16] == 1)
      {
        llvm::TypeFinder::incorporateType(this, *v17);
        v10 = v17;
        v11 = *(v17 + 16);
        if (v11 <= 0x1B)
        {
          if (v11 == 5 && *(v17 + 9) == 34)
          {
            llvm::TypeFinder::incorporateType(this, *(v17 + 3));
            v10 = v17;
          }

          v12 = *(v10 + 5);
          if ((v12 & 0x40000000) != 0)
          {
            v14 = *(v10 - 1);
            v13 = v12 & 0x7FFFFFF;
          }

          else
          {
            v13 = v12 & 0x7FFFFFF;
            v14 = (v10 - 32 * v13);
          }

          if (v13)
          {
            v15 = 32 * v13;
            do
            {
              v16 = *v14;
              v14 += 4;
              llvm::TypeFinder::incorporateValue(this, v16);
              v15 -= 32;
            }

            while (v15);
          }
        }
      }
    }
  }
}

void llvm::TypeFinder::incorporateAttributes(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = a1 + 48;
  v4 = *(a1 + 48);
  v14 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>,llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>::LookupBucketFor<llvm::AttributeList>(v4, *(v5 + 16), a2, &v14))
  {
    return;
  }

  v6 = *(v5 + 16);
  v7 = *(a1 + 56);
  if (4 * v7 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_26;
  }

  if (v6 + ~v7 - *(a1 + 60) <= v6 >> 3)
  {
LABEL_26:
    llvm::DenseMap<llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>::grow(v5, v6);
    v14 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>,llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>::LookupBucketFor<llvm::AttributeList>(*(a1 + 48), *(a1 + 64), v2, &v14);
  }

  v8 = v14;
  ++*(a1 + 56);
  if (*v8 != -4)
  {
    --*(a1 + 60);
  }

  *v8 = v2;
  if (v2)
  {
    v9 = (v2 + 40);
  }

  else
  {
    v9 = 0;
  }

  if (v2)
  {
    v2 += 40 + 8 * *(v2 + 8);
  }

  while (v9 != v2)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = (*v9 + 48);
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = *v9 + 48 + 8 * *(v10 + 8);
    }

    else
    {
      v12 = 0;
    }

    while (v11 != v12)
    {
      v13 = *v11;
      if (*v11)
      {
        if (*(v13 + 8) == 3)
        {
          llvm::TypeFinder::incorporateType(a1, *(v13 + 16));
        }
      }

      ++v11;
    }

    ++v9;
  }
}

uint64_t llvm::TypeFinder::incorporateMDNode(llvm::TypeFinder *this, const llvm::MDNode *a2)
{
  v5 = this + 24;
  v4 = *(this + 3);
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(v4, *(v5 + 4), a2, &v19);
  if (result)
  {
    return result;
  }

  v7 = *(v5 + 4);
  v8 = *(this + 8);
  if (4 * v8 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v8 - *(this + 9) > v7 >> 3)
  {
    goto LABEL_4;
  }

  llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(v5, v7);
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*(this + 3), *(this + 10), a2, &v19);
LABEL_4:
  v9 = v19;
  ++*(this + 8);
  if (*v9 != -4096)
  {
    --*(this + 9);
  }

  *v9 = a2;
  if (*a2 == 33)
  {
    v10 = *(a2 + 6);
    if (v10)
    {
      v11 = *(a2 + 2);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        result = llvm::TypeFinder::incorporateValue(this, *(v13 + 128));
        v12 -= 8;
      }

      while (v12);
    }
  }

  else
  {
    v14 = *(a2 - 2);
    if ((v14 & 2) != 0)
    {
      v15 = *(a2 - 4);
      v16 = *(a2 - 6);
      if (!*(a2 - 6))
      {
        return result;
      }
    }

    else
    {
      v15 = (a2 - 8 * ((v14 >> 2) & 0xF) - 16);
      v16 = (v14 >> 6) & 0xF;
      if (!v16)
      {
        return result;
      }
    }

    v17 = 8 * v16;
    do
    {
      v18 = *v15;
      if (*v15)
      {
        result = llvm::MDNode::classof(*v15);
        if (result)
        {
          result = llvm::TypeFinder::incorporateMDNode(this, v18);
        }

        else if (*v18 == 1)
        {
          result = llvm::TypeFinder::incorporateValue(this, v18[16]);
        }
      }

      ++v15;
      v17 -= 8;
    }

    while (v17);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>,llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>::LookupBucketFor<llvm::AttributeList>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4;
        }

        if (v17.i8[4])
        {
          *v16 = -4;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 4) != 0xFFFFFFFFFFFFFFFCLL)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>,llvm::AttributeList,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::AttributeList,void>,llvm::detail::DenseSetPair<llvm::AttributeList>>::LookupBucketFor<llvm::AttributeList>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4;
      }

      if (v28.i8[4])
      {
        *v27 = -4;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

void llvm::Use::zap(void *__p, char *a2, int a3)
{
  if (a2 != __p)
  {
    v3 = a2;
    do
    {
      v4 = *(v3 - 4);
      v3 -= 32;
      if (v4)
      {
        v5 = *(a2 - 3);
        **(a2 - 2) = v5;
        if (v5)
        {
          *(v5 + 16) = *(a2 - 2);
        }
      }

      a2 = v3;
    }

    while (v3 != __p);
  }

  if (a3)
  {
    operator delete(__p);
  }
}

void llvm::User::growHungoffUses(llvm::User *this, unsigned int a2, int a3)
{
  v6 = *(this + 5);
  v7 = v6 & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(this - 1);
  }

  else
  {
    v8 = (this - 32 * v7);
  }

  v9 = a2;
  if (a3)
  {
    v10 = 40 * a2;
  }

  else
  {
    v10 = 32 * a2;
  }

  v11 = operator new(v10);
  *(this - 1) = v11;
  if (a2)
  {
    v12 = v11;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = this;
      v12 += 4;
    }

    while (v12 != &v11[4 * a2]);
  }

  v13 = *(this + 5);
  if ((v13 & 0x40000000) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = this - 32 * (v13 & 0x7FFFFFF);
  }

  std::__copy_impl::operator()[abi:nn200100]<llvm::Use *,llvm::Use *,llvm::Use *>(&v15, v8, &v8[4 * v7], v14);
  if (v7 && a3)
  {
    memmove(&v14[32 * v9], &v8[4 * v7], 8 * v7);
  }

  llvm::Use::zap(v8, &v8[4 * v7], 1);
}

void *llvm::User::operator new(llvm::User *this, unsigned int a2)
{
  v3 = a2;
  v4 = operator new(this + 32 * a2);
  result = &v4[4 * v3];
  *(result + 5) = *(result + 5) & 0x38000000 | a2 & 0x7FFFFFF;
  if (a2)
  {
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v4[3] = result;
      v4 += 4;
    }

    while (v4 != result);
  }

  return result;
}

char *llvm::User::operator new(llvm::User *this, unsigned int a2, unsigned int a3)
{
  v5 = a3 != 0;
  if (a3)
  {
    v6 = a3 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v8 = operator new(this + 32 * a2 + v6);
  v9 = &v8[v6];
  v10 = &v8[32 * v7 + v6];
  *(v10 + 20) = a2 & 0x7FFFFFF | (v5 << 31) | *(v10 + 20) & 0x38000000;
  if (a2)
  {
    do
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = v10;
      v9 += 32;
    }

    while (v9 != v10);
  }

  if (a3)
  {
    *&v8[a3] = a3;
  }

  return &v8[32 * v7 + v6];
}

void llvm::User::operator delete(void **a1)
{
  v2 = *(a1 + 5);
  if ((v2 & 0x40000000) != 0)
  {
    llvm::Use::zap(*(a1 - 1), *(a1 - 1) + 32 * (v2 & 0x7FFFFFF), 1);
    v4 = (a1 - 1);
  }

  else
  {
    v3 = v2 & 0x7FFFFFF;
    v4 = &a1[-4 * v3];
    if (v3)
    {
      v5 = a1 - 2;
      v6 = -32 * v3;
      do
      {
        if (*(v5 - 2))
        {
          v7 = *(v5 - 1);
          **v5 = v7;
          if (v7)
          {
            *(v7 + 16) = *v5;
          }
        }

        v5 -= 4;
        v6 += 32;
      }

      while (v6);
    }

    if (v2 < 0)
    {
      v4 = &v4[-*(v4 - 1) - 8];
    }
  }

  operator delete(v4);
}

void llvm::Value::~Value(llvm::Value *this, llvm::Value *a2)
{
  if (*(this + 17))
  {
    llvm::ValueHandleBase::ValueIsDeleted(this, a2);
  }

  v3 = *(this + 5);
  if ((v3 & 0x8000000) != 0)
  {
    llvm::ValueAsMetadata::handleDeletion(this, a2);
    v3 = *(this + 5);
  }

  if ((v3 & 0x20000000) != 0)
  {
    llvm::Value::clearMetadata(this);
  }

  llvm::Value::destroyValueName(this);
}

void llvm::ValueHandleBase::ValueIsDeleted(llvm::ValueHandleBase *this, llvm::Value *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = this;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 2456), &v5)[1];
  llvm::ValueHandleBase::ValueHandleBase(&v6, 0, v2);
  do
  {
    llvm::ValueHandleBase::RemoveFromUseList(&v6);
    v7 = v2[1];
    v2[1] = &v6;
    v6 = v6 & 7 | (v2 + 1);
    if (v7)
    {
      *v7 = *v7 & 7 | &v7;
    }

    v3 = (*v2 >> 1) & 3;
    if ((v3 - 2) >= 2)
    {
      if (v3)
      {
        (*(*(v2 - 1) + 8))(v2 - 1);
      }
    }

    else
    {
      llvm::ValueHandleBase::operator=(v2, 0);
    }

    v2 = v7;
  }

  while (v7);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList(&v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void llvm::Value::destroyValueName(uint64_t ***this)
{
  ValueName = llvm::Value::getValueName(this);
  if (ValueName)
  {
    MEMORY[0x277C69E30](ValueName, 8);
  }

  llvm::Value::setValueName(this, 0);
}

void llvm::Value::deleteValue(void (**this)(void), llvm::Value *a2)
{
  switch(*(this + 16))
  {
    case 0x16:
      llvm::BasicBlock::~BasicBlock(this);
      goto LABEL_14;
    case 0x17:
      llvm::MetadataAsValue::~MetadataAsValue(this);
      goto LABEL_14;
    case 0x18:
      llvm::InlineAsm::~InlineAsm(this, a2);
      goto LABEL_14;
    case 0x19:
    case 0x1A:
    case 0x1B:
      v3 = this[3];

      v3();
      return;
    case 0x1C:
    case 0x56:
    case 0x57:
      __break(1u);
      goto LABEL_18;
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x58:
    case 0x59:
    case 0x5A:
    case 0x5E:
    case 0x5F:
      llvm::Instruction::~Instruction(this, a2);
      goto LABEL_3;
    case 0x5B:
    case 0x5C:
    case 0x5D:
      llvm::ShuffleVectorInst::~ShuffleVectorInst(this, a2);
LABEL_3:

      llvm::User::operator delete(v2);
      return;
    default:
      llvm::Value::~Value(this, a2);
LABEL_14:

LABEL_18:
      JUMPOUT(0x277C69E40);
  }
}

uint64_t llvm::Value::getValueName(uint64_t ***this)
{
  if ((*(this + 23) & 0x10) == 0)
  {
    return 0;
  }

  v8[3] = v1;
  v8[4] = v2;
  v4 = ***this;
  v7 = this;
  v8[0] = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v4 + 144), &v7, v8);
  v6 = v8[0];
  if (!v5)
  {
    v6 = *(v4 + 144) + 16 * *(v4 + 160);
  }

  return *(v6 + 8);
}

void llvm::Value::setValueName(uint64_t a1, uint64_t a2)
{
  v3 = **a1;
  v4 = *(a1 + 20);
  if (a2)
  {
    *(a1 + 20) = v4 | 0x10000000;
    v5 = *v3;
    v7 = a1;
    llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((v5 + 144), &v7)[1] = a2;
  }

  else
  {
    if ((v4 & 0x10000000) != 0)
    {
      v6 = *v3;
      v7 = a1;
      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(v6 + 144, &v7);
      v4 = *(a1 + 20);
    }

    *(a1 + 20) = v4 & 0xEFFFFFFF;
  }
}

void llvm::Value::setNameImpl(llvm::Value *this, const llvm::Twine *a2)
{
  v22[32] = *MEMORY[0x277D85DE8];
  if (*(***this + 2720) == 1 && *(this + 16) >= 4u)
  {
    if ((*(this + 23) & 0x10) == 0)
    {
      goto LABEL_26;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(a2 + 32) > 1u || (*(this + 23) & 0x10) != 0)
  {
    v20 = v22;
    v21 = xmmword_2750C12F0;
    if (v3)
    {
      v5 = llvm::Twine::toStringRef(a2, &v20);
      v6 = v4;
      v7 = this + 20;
      if ((*(this + 23) & 0x10) == 0)
      {
        if (!v4)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if ((*(this + 23) & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v6 = 0;
      v7 = this + 20;
      v5 = &str_3_24;
    }

    ValueName = llvm::Value::getValueName(this);
    v10 = *ValueName;
    v9 = ValueName + 2;
    if (v10 == v6 && (!v6 || !memcmp(v9, v5, v6)))
    {
LABEL_24:
      if (v20 != v22)
      {
        free(v20);
      }

      goto LABEL_26;
    }

LABEL_15:
    v18 = 0;
    if ((getSymTab(this, &v18) & 1) == 0)
    {
      v11 = v18;
      if (v18)
      {
        if ((v7[3] & 0x10) == 0 || (v12 = llvm::Value::getValueName(this), llvm::StringMapImpl::RemoveKey(v11, (v12 + v11[5]), *v12), llvm::Value::destroyValueName(this), v6))
        {
          v13 = llvm::ValueSymbolTable::createValueName(v11, v5, v6, this);
          llvm::Value::setValueName(this, v13);
        }
      }

      else
      {
        llvm::Value::destroyValueName(this);
        if (v6)
        {
          v14 = operator new(v6 + 17, 8uLL);
          memcpy(v14 + 2, v5, v6);
          *(v14 + v6 + 16) = 0;
          *v14 = v6;
          v14[1] = 0;
          v15 = **this;
          *(this + 5) |= 0x10000000u;
          v16 = *v15;
          v19 = this;
          llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((v16 + 144), &v19)[1] = v14;
          *(llvm::Value::getValueName(this) + 8) = this;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t getSymTab(uint64_t a1, void *a2)
{
  *a2 = 0;
  v2 = *(a1 + 16);
  if (a1 && v2 >= 0x1C)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      return v3;
    }

    v3 = *(v3 + 56);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_9;
  }

  if (a1 && v2 == 22)
  {
    v3 = *(a1 + 56);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_9;
  }

  if (a1 && v2 <= 3)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      return v3;
    }

    v4 = (v3 + 112);
    goto LABEL_10;
  }

  v3 = 1;
  if (a1)
  {
    if (v2 == 21)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
LABEL_9:
        v4 = (v3 + 104);
LABEL_10:
        v3 = 0;
        *a2 = *v4;
      }
    }
  }

  return v3;
}

void llvm::Value::setName(llvm::Value *this, const llvm::Twine *a2)
{
  llvm::Value::setNameImpl(this, a2);
  if (this && !*(this + 16))
  {

    llvm::Function::recalculateIntrinsicID(this);
  }
}

void llvm::Value::takeName(llvm::Value *this, llvm::Value *a2)
{
  v12 = 0;
  if ((*(this + 23) & 0x10) == 0)
  {
    if ((*(a2 + 23) & 0x10) == 0)
    {
      return;
    }

LABEL_3:
    if (!getSymTab(this, &v12))
    {
      v4 = v12;
      goto LABEL_12;
    }

LABEL_7:
    v11 = 257;
    llvm::Value::setName(a2, v10);
    return;
  }

  if (getSymTab(this, &v12))
  {
    if ((*(a2 + 23) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = v12;
  if (v12)
  {
    ValueName = llvm::Value::getValueName(this);
    llvm::StringMapImpl::RemoveKey(v4, (ValueName + v4[5]), *ValueName);
  }

  llvm::Value::destroyValueName(this);
  if ((*(a2 + 23) & 0x10) != 0)
  {
    if (v4)
    {
LABEL_12:
      v10[0] = 0;
      getSymTab(a2, v10);
      v6 = v10[0];
      if (v4 == v10[0])
      {
        v9 = llvm::Value::getValueName(a2);
        llvm::Value::setValueName(this, v9);
        llvm::Value::setValueName(a2, 0);
        *(llvm::Value::getValueName(this) + 8) = this;
      }

      else
      {
        if (v10[0])
        {
          v7 = llvm::Value::getValueName(a2);
          llvm::StringMapImpl::RemoveKey(v6, (v7 + *(v6 + 20)), *v7);
        }

        v8 = llvm::Value::getValueName(a2);
        llvm::Value::setValueName(this, v8);
        llvm::Value::setValueName(a2, 0);
        *(llvm::Value::getValueName(this) + 8) = this;
        if (v4)
        {
          llvm::ValueSymbolTable::reinsertValue(v4, this);
        }
      }

      return;
    }

    goto LABEL_3;
  }
}

void llvm::Value::doRAUW(llvm::ValueAsMetadata *this, llvm::Value *a2, llvm::Value *a3, __n128 a4)
{
  v4 = a3;
  if (*(this + 17))
  {
    llvm::ValueHandleBase::ValueIsRAUWd(this, a2, a3);
  }

  if (v4 == 1 && (*(this + 23) & 8) != 0)
  {
    llvm::ValueAsMetadata::handleRAUW(this, a2, a3);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = (a2 + 8);
    do
    {
      v9 = *(v7 + 24);
      if (v9)
      {
        v10 = *(v9 + 16) - 21 >= 0xFFFFFFEF;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        llvm::Constant::handleOperandChange(v9, this, a2, a4);
      }

      else
      {
        if (*v7)
        {
          v11 = *(v7 + 8);
          **(v7 + 16) = v11;
          if (v11)
          {
            *(v11 + 16) = *(v7 + 16);
          }
        }

        *v7 = a2;
        if (a2)
        {
          v12 = *v8;
          *(v7 + 8) = *v8;
          if (v12)
          {
            *(v12 + 16) = v7 + 8;
          }

          *(v7 + 16) = v8;
          *v8 = v7;
        }
      }

      v7 = *(this + 1);
    }

    while (v7);
  }

  if (*(this + 16) == 22)
  {

    llvm::BasicBlock::replaceSuccessorsPhiUsesWith(this, this, a2);
  }
}

void llvm::ValueHandleBase::ValueIsRAUWd(llvm::ValueHandleBase *this, llvm::Value *a2, llvm::Value *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = this;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 2456), &v7)[1];
  llvm::ValueHandleBase::ValueHandleBase(&v8, 0, v4);
  do
  {
    llvm::ValueHandleBase::RemoveFromUseList(&v8);
    v9 = v4[1];
    v4[1] = &v8;
    v8 = v8 & 7 | (v4 + 1);
    if (v9)
    {
      *v9 = *v9 & 7 | &v9;
    }

    v5 = (*v4 >> 1) & 3;
    if (v5 == 1)
    {
      (*(*(v4 - 1) + 16))(v4 - 1, a2);
    }

    else if (v5 == 3)
    {
      llvm::ValueHandleBase::operator=(v4, a2);
    }

    v4 = v9;
  }

  while (v9);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList(&v8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

llvm::Value *llvm::Value::stripPointerCasts(llvm::Value *this)
{
  v1 = this;
  if (*(*this + 8) != 15)
  {
    return v1;
  }

  v11 = v15;
  v12 = v15;
  v13 = 4;
  v14 = 0;
  llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v11, this, v10);
  while (1)
  {
    v2 = *(v1 + 16);
    if (v2 > 0x1B)
    {
      break;
    }

    if (v2 != 5)
    {
      goto LABEL_29;
    }

    v3 = *(v1 + 9);
    if (v3 == 34)
    {
      goto LABEL_13;
    }

    if (v3 == 49)
    {
      goto LABEL_22;
    }

    if (v3 != 50)
    {
      goto LABEL_29;
    }

LABEL_20:
    v5 = *(v1 + 5);
    if ((v5 & 0x40000000) != 0)
    {
      v6 = *(v1 - 1);
    }

    else
    {
      v6 = (v1 - 32 * (v5 & 0x7FFFFFF));
    }

    ArgOperandWithAttribute = *v6;
LABEL_28:
    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v11, ArgOperandWithAttribute, v10);
    v1 = ArgOperandWithAttribute;
    if ((v10[16] & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (*(v1 + 16) <= 0x4Cu)
  {
    if (v2 == 33 || v2 == 39)
    {
      goto LABEL_18;
    }

    if (v2 != 62)
    {
      goto LABEL_29;
    }

LABEL_13:
    if (!llvm::GEPOperator::hasAllZeroIndices(v1))
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v2 != 77)
  {
    if (v2 != 78)
    {
      if (v2 != 84)
      {
        goto LABEL_29;
      }

LABEL_18:
      ArgOperandWithAttribute = llvm::CallBase::getArgOperandWithAttribute(v1, 46);
      if (!ArgOperandWithAttribute)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_20;
  }

LABEL_22:
  v7 = *(v1 + 5);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(v1 - 1);
  }

  else
  {
    v8 = (v1 - 32 * (v7 & 0x7FFFFFF));
  }

  ArgOperandWithAttribute = *v8;
  v1 = *v8;
  if (*(**v8 + 8) == 15)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v12 != v11)
  {
    free(v12);
  }

  return v1;
}

llvm::Value *llvm::Value::stripPointerCastsAndAliases(llvm::Value *this)
{
  v1 = this;
  if (*(*this + 8) != 15)
  {
    return v1;
  }

  v11 = v15;
  v12 = v15;
  v13 = 4;
  v14 = 0;
  llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v11, this, v10);
  while (1)
  {
    v2 = *(v1 + 16);
    if (v2 > 0x1B)
    {
      break;
    }

    if (v2 != 1)
    {
      if (v2 != 5)
      {
        goto LABEL_31;
      }

      v3 = *(v1 + 9);
      if (v3 != 34)
      {
        if (v3 == 49)
        {
          goto LABEL_24;
        }

        if (v3 != 50)
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

LABEL_14:
      if (!llvm::GEPOperator::hasAllZeroIndices(v1))
      {
        goto LABEL_31;
      }

LABEL_21:
      v5 = *(v1 + 5);
      if ((v5 & 0x40000000) != 0)
      {
        v6 = *(v1 - 1);
      }

      else
      {
        v6 = (v1 - 32 * (v5 & 0x7FFFFFF));
      }

      goto LABEL_27;
    }

    v6 = (v1 - 32);
LABEL_27:
    ArgOperandWithAttribute = *v6;
LABEL_30:
    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v11, ArgOperandWithAttribute, v10);
    v1 = ArgOperandWithAttribute;
    if ((v10[16] & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (*(v1 + 16) <= 0x4Cu)
  {
    if (v2 == 33 || v2 == 39)
    {
      goto LABEL_19;
    }

    if (v2 != 62)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }

  if (v2 != 77)
  {
    if (v2 != 78)
    {
      if (v2 != 84)
      {
        goto LABEL_31;
      }

LABEL_19:
      ArgOperandWithAttribute = llvm::CallBase::getArgOperandWithAttribute(v1, 46);
      if (!ArgOperandWithAttribute)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_21;
  }

LABEL_24:
  v7 = *(v1 + 5);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(v1 - 1);
  }

  else
  {
    v8 = (v1 - 32 * (v7 & 0x7FFFFFF));
  }

  ArgOperandWithAttribute = *v8;
  v1 = *v8;
  if (*(**v8 + 8) == 15)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v12 != v11)
  {
    free(v12);
  }

  return v1;
}

char *llvm::Value::stripAndAccumulateConstantOffsets(char *a1, llvm::DataLayout *a2, llvm::APInt *a3, char a4, int a5, unsigned int (*a6)(uint64_t), uint64_t a7)
{
  v12 = a1;
  if ((*(*a1 + 8) & 0xFE) == 0x12)
  {
    v13 = *(**(*a1 + 16) + 8);
  }

  else
  {
    v13 = *(*a1 + 8);
  }

  if (v13 != 15)
  {
    return a1;
  }

  v31 = *(a3 + 2);
  v43 = v47;
  v44 = v47;
  v45 = 4;
  v46 = 0;
  v14 = llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v43, a1, &v40);
  while (1)
  {
    v15 = v14;
    v16 = *(v12 + 16);
    if (v16 > 0x1B)
    {
      break;
    }

    if (v16 == 1)
    {
      if (llvm::GlobalValue::isInterposable(v12))
      {
        goto LABEL_40;
      }

      v20 = (v12 - 32);
      goto LABEL_26;
    }

    if (v16 == 5)
    {
      v17 = *(v12 + 18);
      if ((v17 - 49) < 2)
      {
        goto LABEL_15;
      }

      if (v17 != 34)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v43, v12, &v40);
    v14 = v15;
    v15 = v12;
    if ((v42 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  v18 = v16 - 33;
  if (v18 > 0x33)
  {
    goto LABEL_40;
  }

  if (((1 << v18) & 0x8000000000041) != 0)
  {
    ArgOperandWithAttribute = llvm::CallBase::getArgOperandWithAttribute(v12, 46);
    if (ArgOperandWithAttribute)
    {
      v22 = ArgOperandWithAttribute;
    }

    else
    {
      v22 = v12;
    }

    if (!a5 || !llvm::Instruction::isLaunderOrStripInvariantGroup(v12))
    {
      v12 = v22;
      goto LABEL_40;
    }

    v19 = *(v12 + 20);
LABEL_23:
    v20 = (v12 - 32 * (v19 & 0x7FFFFFF));
LABEL_26:
    v12 = *v20;
    goto LABEL_40;
  }

  if (((1 << v18) & 0x300000000000) != 0)
  {
LABEL_15:
    v19 = *(v12 + 20);
    if ((v19 & 0x40000000) == 0)
    {
      goto LABEL_23;
    }

    v20 = *(v12 - 8);
    goto LABEL_26;
  }

  if (v18 != 29)
  {
    goto LABEL_40;
  }

LABEL_29:
  if ((a4 & 1) != 0 || (*(v12 + 17) & 2) != 0)
  {
    v23 = *(*v12 + 8);
    if ((v23 & 0xFE) == 0x12)
    {
      v23 = *(**(*v12 + 16) + 8);
    }

    PointerAlignElem = llvm::DataLayout::getPointerAlignElem(a2, v23 >> 8);
    llvm::APInt::APInt(&v40, *(PointerAlignElem + 12), 0);
    if (!llvm::GEPOperator::accumulateConstantOffset(v12, a2, &v40, a6, a7) || (v25 = v41, v25 - llvm::APInt::getNumSignBits(&v40) + 1 > v31))
    {
      v26 = 0;
      v15 = v12;
      goto LABEL_36;
    }

    llvm::APInt::sextOrTrunc(&v40, v31, &v38);
    if (a6)
    {
      v37 = 0;
      v36 = *(a3 + 2);
      if (v36 > 0x40)
      {
        operator new[]();
      }

      v35 = *a3;
      llvm::APInt::sadd_ov(a3, &v38, &v37, &v33);
      if (*(a3 + 2) >= 0x41u && *a3)
      {
        MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
      }

      *a3 = v33;
      *(a3 + 2) = v34;
      v27 = v37;
      if (v37)
      {
        llvm::APInt::operator=(a3, &v35);
        v15 = v12;
      }

      if (v36 >= 0x41 && v35)
      {
        MEMORY[0x277C69E10](v35, 0x1000C8000313F17);
      }

      if (v27)
      {
        v26 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      llvm::APInt::operator+=(a3, &v38);
    }

    v28 = *(v12 + 20);
    if ((v28 & 0x40000000) != 0)
    {
      v29 = *(v12 - 8);
    }

    else
    {
      v29 = (v12 - 32 * (v28 & 0x7FFFFFF));
    }

    v12 = *v29;
    v26 = 1;
LABEL_61:
    if (v39 >= 0x41 && v38)
    {
      MEMORY[0x277C69E10](v38, 0x1000C8000313F17);
    }

LABEL_36:
    if (v41 >= 0x41 && v40)
    {
      MEMORY[0x277C69E10](v40, 0x1000C8000313F17);
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_40;
  }

  v15 = v12;
LABEL_66:
  if (v44 != v43)
  {
    free(v44);
  }

  return v15;
}

uint64_t llvm::Value::stripInBoundsOffsets(char *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = a1;
  if (*(*a1 + 8) != 15)
  {
    return v3;
  }

  v15 = v19;
  v16 = v19;
  v17 = 4;
  v18 = 0;
  llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v15, a1, v14);
  while (1)
  {
    a2(a3, v3);
    v6 = *(v3 + 16);
    if (v6 > 0x1B)
    {
      break;
    }

    if (v6 != 5)
    {
      goto LABEL_29;
    }

    v7 = *(v3 + 18);
    if (v7 == 34)
    {
      goto LABEL_13;
    }

    if (v7 == 49)
    {
      goto LABEL_22;
    }

    if (v7 != 50)
    {
      goto LABEL_29;
    }

LABEL_20:
    v9 = *(v3 + 20);
    if ((v9 & 0x40000000) != 0)
    {
      v10 = *(v3 - 8);
    }

    else
    {
      v10 = (v3 - 32 * (v9 & 0x7FFFFFF));
    }

    ArgOperandWithAttribute = *v10;
LABEL_28:
    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v15, ArgOperandWithAttribute, v14);
    v3 = ArgOperandWithAttribute;
    if ((v14[16] & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (*(v3 + 16) <= 0x4Cu)
  {
    if (v6 == 33 || v6 == 39)
    {
      goto LABEL_18;
    }

    if (v6 != 62)
    {
      goto LABEL_29;
    }

LABEL_13:
    if ((*(v3 + 17) & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v6 != 77)
  {
    if (v6 != 78)
    {
      if (v6 != 84)
      {
        goto LABEL_29;
      }

LABEL_18:
      ArgOperandWithAttribute = llvm::CallBase::getArgOperandWithAttribute(v3, 46);
      if (!ArgOperandWithAttribute)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_20;
  }

LABEL_22:
  v11 = *(v3 + 20);
  if ((v11 & 0x40000000) != 0)
  {
    v12 = *(v3 - 8);
  }

  else
  {
    v12 = (v3 - 32 * (v11 & 0x7FFFFFF));
  }

  ArgOperandWithAttribute = *v12;
  v3 = *v12;
  if (*(**v12 + 8) == 15)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v16 != v15)
  {
    free(v16);
  }

  return v3;
}

uint64_t llvm::Value::getPointerAlignment(llvm::Value *this, unsigned __int8 **a2)
{
  v4 = *(this + 16);
  if (v4 > 0x14)
  {
    if (v4 == 21)
    {
      result = llvm::AttributeList::getParamAlignment((*(this + 3) + 112), *(this + 8));
      if ((result & 0x100) != 0)
      {
        return result;
      }

      result = llvm::Argument::hasStructRetAttr(this);
      if (!result)
      {
        return result;
      }

      ParamStructRetType = llvm::AttributeList::getParamStructRetType((*(this + 3) + 112), *(this + 8));
      result = llvm::Type::isSized(ParamStructRetType, 0);
      if (!result)
      {
        return result;
      }

      v10 = a2;
      v11 = ParamStructRetType;
LABEL_55:

      return llvm::DataLayout::getAlignment(v10, v11, 1);
    }

    if (v4 == 59)
    {
      return *(this + 18) & 0x3F;
    }
  }

  else
  {
    if (v4 - 2 < 2)
    {
      v5 = (*(this + 8) >> 17) & 0x3F;
      if (v5)
      {
        return (v5 - 1);
      }

      if (v4 == 3)
      {
        v12 = *(this + 3);
        result = llvm::Type::isSized(v12, 0);
        if (!result)
        {
          return result;
        }

        if (llvm::GlobalValue::isStrongDefinitionForLinker(this))
        {

          return llvm::DataLayout::getPreferredAlign(a2, this);
        }

        v10 = a2;
        v11 = v12;
        goto LABEL_55;
      }

      return 0;
    }

    if (!*(this + 16))
    {
      result = *(a2 + 10) & (*(a2 + 10) << 23 >> 31);
      if (*(a2 + 6))
      {
        v7 = *(this + 8);
        if (((v7 >> 17) & 0x3F) != 0)
        {
          v8 = ((v7 >> 17) & 0x3F) - 1;
        }

        else
        {
          v8 = 0;
        }

        if ((*(a2 + 10) & (*(a2 + 10) << 23 >> 31)) <= v8)
        {
          return v8;
        }

        else
        {
          return (*(a2 + 10) & (*(a2 + 10) << 23 >> 31));
        }
      }

      return result;
    }
  }

  if (v4 < 0x1C)
  {
    if (v4 <= 0x14)
    {
      v13 = llvm::Value::stripPointerCasts(this);
      llvm::DataLayout::getIntPtrType(a2, *this);
      result = llvm::ConstantFoldCastInstruction(0x2F, v13, v14, v15);
      if (!result)
      {
        return result;
      }

      if (*(result + 16) == 16)
      {
        v16 = *(result + 32);
        if (v16 > 0x40)
        {
          LODWORD(result) = llvm::APInt::countTrailingZerosSlowCase((result + 24));
        }

        else
        {
          v17 = __clz(__rbit64(*(result + 24)));
          if (v16 >= v17)
          {
            LODWORD(result) = v17;
          }

          else
          {
            LODWORD(result) = *(result + 32);
          }
        }

        if (result >= 0x20)
        {
          return 32;
        }

        else
        {
          return result;
        }
      }
    }

    return 0;
  }

  result = 0;
  if (v4 <= 59)
  {
    if (v4 != 33 && v4 != 39)
    {
      return result;
    }

LABEL_40:
    result = llvm::AttributeList::getRetAlignment((this + 64));
    if (((result >> 8) & 1) == 0)
    {
      v18 = *(this - 4);
      if (!v18 || *(v18 + 16) || *(v18 + 24) != *(this + 9))
      {
LABEL_46:
        v19 = *(this - 4);
        if (v19 && !*(v19 + 16) && *(v19 + 24) == *(this + 9))
        {
          v23 = *(v19 + 112);
          RetAlignment = llvm::AttributeList::getRetAlignment(&v23);
          return RetAlignment & (RetAlignment << 23 >> 31);
        }

        return 0;
      }

      v23 = *(v18 + 112);
      result = llvm::AttributeList::getRetAlignment(&v23);
    }

    if ((result & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v4 != 60)
  {
    if (v4 != 84)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!*(this + 6) && (*(this + 23) & 0x20) == 0)
  {
    return 0;
  }

  result = llvm::Value::getMetadata(this, 17);
  if (result)
  {
    v21 = *(result - 16);
    if ((v21 & 2) != 0)
    {
      v22 = *(result - 32);
    }

    else
    {
      v22 = result - 16 - 8 * ((v21 >> 2) & 0xF);
    }

    return 63 - __clz(llvm::APInt::getLimitedValue((*(*v22 + 128) + 24), 0xFFFFFFFFFFFFFFFFLL));
  }

  return result;
}

uint64_t llvm::ValueHandleBase::AddToUseList(llvm::ValueHandleBase *this)
{
  v2 = *(this + 2);
  v3 = ***v2;
  v4 = (v3 + 2456);
  if (*(v2 + 17))
  {
    v20 = *(this + 2);
    v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((v3 + 2456), &v20);
    v15 = v14[1];
    result = (v14 + 1);
    *(this + 1) = v15;
    *result = this;
    *this = *this & 7 | result;
    v16 = *(this + 1);
    if (v16)
    {
      *v16 = *v16 & 7 | (this + 8);
    }
  }

  else
  {
    v5 = *v4;
    v20 = *(this + 2);
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((v3 + 2456), &v20);
    v8 = v6[1];
    result = (v6 + 1);
    *(this + 1) = v8;
    *result = this;
    *this = *this & 7 | result;
    v9 = *(this + 1);
    if (v9)
    {
      *v9 = *v9 & 7 | (this + 8);
    }

    *(*(this + 2) + 17) |= 1u;
    v10 = *v4;
    if ((*v4 > v5 || &v10[2 * *(v3 + 2472)] <= v5) && *(v3 + 2464) >= 2u)
    {
      v11 = *(v3 + 2472);
      if (v11)
      {
        v12 = 16 * v11;
        for (i = *v4; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 2)
        {
          v12 -= 16;
          if (!v12)
          {
            return result;
          }
        }
      }

      else
      {
        i = *v4;
      }

      v17 = &v10[2 * v11];
LABEL_17:
      if (i != v17)
      {
        v19 = i[1];
        v18 = (i + 1);
        *v19 = *v19 & 7 | v18;
        for (i = (v18 + 8); i != v17; i += 2)
        {
          if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

  return result;
}

void llvm::ValueHandleBase::RemoveFromUseList(llvm::ValueHandleBase *this)
{
  v1 = *(this + 1);
  v2 = *this & 0xFFFFFFFFFFFFFFF8;
  *v2 = v1;
  if (v1)
  {
    *v1 = *v1 & 7 | v2;
  }

  else
  {
    v4 = ****(this + 2);
    v5 = *(v4 + 2456);
    if (v5 <= v2 && v5 + 16 * *(v4 + 2472) > v2)
    {
      v6 = *(this + 2);
      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(v4 + 2456, &v6);
      *(*(this + 2) + 17) &= ~1u;
    }
  }
}

void llvm::InlineAsm::~InlineAsm(void **this, llvm::Value *a2)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  llvm::Value::~Value(this, a2);
}

void llvm::ShuffleVectorInst::~ShuffleVectorInst(llvm::ShuffleVectorInst *this, llvm::Type *a2)
{
  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }

  llvm::Instruction::~Instruction(this, a2);
}

uint64_t _GLOBAL__sub_I_Value_cpp()
{
  v0 = llvm::cl::Option::Option(&UseDerefAtPointSemantics, 0, 0);
  dword_2815A4938 = 0;
  qword_2815A4940 = &unk_2883EABF0;
  *&dword_2815A4948 = 0;
  UseDerefAtPointSemantics = &unk_2883EA9C8;
  qword_2815A4950 = &unk_2883EA8D8;
  qword_2815A4958 = &unk_2883EE1B8;
  qword_2815A4970 = &qword_2815A4958;
  llvm::cl::Option::setArgStr(v0, "use-dereferenceable-at-point-semantics", 0x26uLL);
  word_2815A48C2 = word_2815A48C2 & 0xFF9F | 0x20;
  dword_2815A4938 = 0;
  byte_2815A494C = 1;
  dword_2815A4948 = 0;
  qword_2815A48D8 = "Deref attributes and metadata infer facts at definition only";
  unk_2815A48E0 = 60;
  llvm::cl::Option::addArgument(&UseDerefAtPointSemantics);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &UseDerefAtPointSemantics, &dword_274E5C000);
}

unint64_t *llvm::ValueSymbolTable::makeUniqueName(llvm::StringMapImpl *a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  while (1)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<false>(a3, v6);
    v21 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = &unk_2883EB968;
    v28 = a3;
    llvm::raw_ostream::SetUnbuffered(&v20);
    if (a2 && *(a2 + 16) <= 3u)
    {
      v7 = *(a2 + 40);
      if (!v7)
      {
        goto LABEL_8;
      }

      v16 = 260;
      v15 = (v7 + 208);
      llvm::Triple::Triple(__p, &v15);
      v8 = v19;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v8 - 43) <= 0xFFFFFFFD)
      {
LABEL_8:
        if (v23 == v24)
        {
          llvm::raw_ostream::write(&v20, ".", 1uLL);
        }

        else
        {
          *v24++ = 46;
        }
      }
    }

    v9 = (*(a1 + 7) + 1);
    *(a1 + 7) = v9;
    write_unsigned<unsigned long>(&v20, v9, 0, 0, 0);
    v10 = *(a3 + 8);
    __p[0] = *a3;
    __p[1] = v10;
    v18 = a2;
    v11 = llvm::StringMap<llvm::StructType *,llvm::MallocAllocator>::try_emplace<llvm::StructType *>(a1, __p[0], v10, &v18);
    if (v12)
    {
      break;
    }

    llvm::raw_ostream::~raw_ostream(&v20);
  }

  v13 = *v11;
  llvm::raw_ostream::~raw_ostream(&v20);
  return v13;
}

void llvm::ValueSymbolTable::reinsertValue(llvm::ValueSymbolTable *this, uint64_t ***a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  ValueName = llvm::Value::getValueName(a2);
  if ((llvm::StringMap<llvm::Value *,llvm::MallocAllocator>::insert(this, ValueName) & 1) == 0)
  {
    if ((*(a2 + 23) & 0x10) != 0)
    {
      v6 = (llvm::Value::getValueName(a2) + 16);
      if ((*(a2 + 23) & 0x10) != 0)
      {
        v8 = llvm::Value::getValueName(a2);
        v7 = v8 + 2;
        v5 = *v8;
      }

      else
      {
        v5 = 0;
        v7 = &str_3_24;
      }
    }

    else
    {
      v5 = 0;
      v6 = &str_3_24;
      v7 = &str_3_24;
    }

    v12 = v14;
    v13 = xmmword_2750C12F0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v12, v6, &v7[v5]);
    v9 = llvm::Value::getValueName(a2);
    MEMORY[0x277C69E30](v9, 8);
    UniqueName = llvm::ValueSymbolTable::makeUniqueName(this, a2, &v12);
    llvm::Value::setValueName(a2, UniqueName);
    if (v12 != v14)
    {
      free(v12);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::StringMap<llvm::Value *,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, uint64_t a2)
{
  v4 = llvm::StringMapImpl::LookupBucketFor(a1, (a2 + 16), *a2);
  v5 = *a1;
  v6 = *(*a1 + 8 * v4);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 == -8)
  {
    --*(a1 + 4);
LABEL_4:
    *(v5 + 8 * v4) = a2;
    ++*(a1 + 3);
    llvm::StringMapImpl::RehashTable(a1, 0);
    return 1;
  }

  return 0;
}

unint64_t *llvm::ValueSymbolTable::createValueName(llvm::StringMapImpl *a1, _BYTE *a2, unint64_t a3, unint64_t a4)
{
  v18[32] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 6);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (a3 < v8)
  {
    v8 = a3;
  }

  if (a3 <= v7 || v7 <= -1)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  v16 = a2;
  *&v17 = v10;
  *(&v17 + 1) = a4;
  v11 = llvm::StringMap<llvm::StructType *,llvm::MallocAllocator>::try_emplace<llvm::StructType *>(a1, a2, v10, &v17 + 1);
  if (v12)
  {
    UniqueName = *v11;
  }

  else
  {
    v16 = v18;
    v17 = xmmword_2750C12F0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, a2, &a2[v10]);
    UniqueName = llvm::ValueSymbolTable::makeUniqueName(a1, a4, &v16);
    if (v16 != v18)
    {
      free(v16);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return UniqueName;
}

_anonymous_namespace_::Verifier *anonymous namespace::Verifier::Verifier(_anonymous_namespace_::Verifier *this, llvm::raw_ostream *a2, char a3, const llvm::Module *a4)
{
  *this = a2;
  *(this + 1) = a4;
  *(this + 2) = &unk_2883F0F70;
  *(this + 3) = 0;
  *(this + 16) = 257;
  *(this + 5) = a4;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 3) = 0u;
  v9 = 260;
  v8 = (a4 + 208);
  llvm::Triple::Triple((this + 128), &v8);
  *(this + 22) = a4 + 256;
  *(this + 23) = *a4;
  *(this + 96) = 0;
  *(this + 25) = this + 216;
  *(this + 26) = 0x100000000;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 67) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0;
  *(this + 34) = this + 304;
  *(this + 35) = this + 304;
  *(this + 36) = 16;
  *(this + 74) = 0;
  *(this + 54) = this + 464;
  *(this + 55) = this + 464;
  *(this + 56) = 32;
  *(this + 114) = 0;
  *(this + 184) = 0;
  *(this + 45) = 0u;
  *(this + 93) = this + 776;
  *(this + 94) = this + 776;
  *(this + 95) = 2;
  *(this + 192) = 0;
  *(this + 99) = 0;
  *(this + 400) = 0;
  *(this + 201) = 0x8000;
  *(this + 206) = 0;
  *(this + 808) = 0u;
  *(this + 212) = 0;
  *(this + 52) = 0u;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 908) = 0u;
  *(this + 116) = this + 960;
  *(this + 117) = this + 960;
  *(this + 118) = 32;
  *(this + 238) = 0;
  *(this + 152) = this + 1232;
  *(this + 153) = 0x400000000;
  *(this + 158) = this + 1296;
  *(this + 159) = this + 1296;
  *(this + 160) = 32;
  *(this + 322) = 0;
  *(this + 194) = this + 1584;
  *(this + 195) = this + 1584;
  *(this + 196) = 32;
  *(this + 394) = 0;
  *(this + 230) = this + 1856;
  *(this + 231) = 0x1000000000;
  *(this + 248) = this;
  *(this + 502) = 0;
  *(this + 1992) = 0u;
  *(this + 508) = 0;
  *(this + 126) = 0u;
  *(this + 255) = this + 2056;
  *(this + 256) = 0x400000000;
  *(this + 194) = a3;
  return this;
}

uint64_t anonymous namespace::Verifier::verify(_anonymous_namespace_::Verifier *this, const llvm::Function *a2)
{
  v243[8] = *MEMORY[0x277D85DE8];
  v4 = (a2 + 72);
  if (*(a2 + 9) != (a2 + 72))
  {
    *(this + 32) = a2;
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<llvm::BasicBlock,false>>::CalculateFromScratch(this + 200, 0);
  }

  for (i = *(a2 + 10); i != v4; i = i[1])
  {
    if (i)
    {
      v6 = (i - 3);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6[5];
    if (v7 != v6 + 5)
    {
      v8 = v7 ? (v7 - 3) : 0;
      if (*(v8 + 16) - 29 < 0xB)
      {
        continue;
      }
    }

    v10 = *this;
    if (*this)
    {
      v11 = *(v10 + 4);
      if (*(v10 + 3) - v11 > 0x18uLL)
      {
        qmemcpy(v11, "Basic Block in function '", 25);
        *(v10 + 4) += 25;
      }

      else
      {
        llvm::raw_ostream::write(*this, "Basic Block in function '", 0x19uLL);
      }

      if ((*(a2 + 23) & 0x10) != 0)
      {
        ValueName = llvm::Value::getValueName(a2);
        v121 = ValueName + 2;
        v120 = *ValueName;
      }

      else
      {
        v120 = 0;
        v121 = &str_3_24;
      }

      v123 = llvm::raw_ostream::operator<<(v10, v121, v120);
      v124 = *(v123 + 4);
      if (*(v123 + 3) - v124 > 0x1BuLL)
      {
        qmemcpy(v124, "' does not have terminator!\n", 28);
        *(v123 + 4) += 28;
      }

      else
      {
        llvm::raw_ostream::write(v123, "' does not have terminator!\n", 0x1CuLL);
      }

      printAsOperandImpl(v6, *this, 1, (this + 16));
      v125 = *this;
      v126 = *(*this + 32);
      if (*(*this + 24) != v126)
      {
        v127 = 0;
        *v126 = 10;
        ++*(v125 + 4);
        goto LABEL_247;
      }

      llvm::raw_ostream::write(v125, "\n", 1uLL);
    }

    v127 = 0;
    goto LABEL_247;
  }

  *(this + 192) = 0;
  if (*(this + 23) != **a2)
  {
    v9 = "Function context does not match Module context!";
LABEL_21:
    v230 = v9;
    v234[0] = 259;
    v239 = a2;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v239);
    goto LABEL_22;
  }

  if ((*(a2 + 8) & 0xF) == 0xA)
  {
    v9 = "Functions may not have common linkage";
    goto LABEL_21;
  }

  v139 = *(a2 + 3);
  if (*(v139 + 12) - 1 != *(a2 + 24))
  {
    v230 = "# formal arguments must match # of arguments for function type!";
    v234[0] = 259;
    llvm::VerifierSupport::CheckFailed(this, &v230);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
      llvm::VerifierSupport::Write(this, v139);
    }

    goto LABEL_22;
  }

  if (*(**(v139 + 16) + 8) == 14)
  {
    v9 = "Functions cannot return aggregate values!";
    goto LABEL_21;
  }

  if (llvm::Function::hasStructRetAttr(a2) && *(**(*(a2 + 3) + 16) + 8) != 7)
  {
    v9 = "Invalid struct return type!";
    goto LABEL_21;
  }

  v141 = *(a2 + 14);
  if (v141 && *(v141 + 8) > (*(v139 + 12) + 1))
  {
    v9 = "Attribute after last parameter!";
    goto LABEL_21;
  }

  v144 = *(a2 + 8);
  if (v141)
  {
    if ((*(v141 + 12) & 0x10) != 0)
    {
      v9 = "Attribute 'builtin' can only be applied to a callsite.";
      goto LABEL_21;
    }

    if (*(v141 + 32) < 0)
    {
      v9 = "Attribute 'elementtype' can only be applied to a callsite.";
      goto LABEL_21;
    }
  }

  v145 = (*(a2 + 9) >> 4) & 0x3FF;
  if (v145 > 0x56)
  {
    if (v145 - 87 < 4)
    {
LABEL_259:
      if (llvm::Function::hasStructRetAttr(a2))
      {
        v9 = "Calling convention does not allow sret";
        goto LABEL_21;
      }

      if ((*(a2 + 9) & 0x3FF0) != 0x4C0)
      {
        v147 = *(*(this + 22) + 4);
        v148 = llvm::Function::args(a2);
        if (v148 != v149)
        {
          v150 = v141 + 40;
          v151 = 2;
          while (1)
          {
            if (v141 && v151 < *(v141 + 8))
            {
              v152 = *(v150 + 8 * v151);
              if (v152 && (*(v152 + 20) & 0x40) != 0)
              {
                v9 = "Calling convention disallows byval";
                goto LABEL_21;
              }

              v153 = *(v150 + 8 * v151);
              if (v153 && (*(v153 + 21) & 2) != 0)
              {
                v9 = "Calling convention disallows preallocated";
                goto LABEL_21;
              }

              v154 = *(v150 + 8 * v151);
              if (v154 && (*(v154 + 21) & 1) != 0)
              {
                v9 = "Calling convention disallows inalloca";
                goto LABEL_21;
              }

              v155 = *(v150 + 8 * v151);
              if (v155 && (*(v155 + 20) & 0x20) != 0)
              {
                v156 = *(*v148 + 8);
                if ((v156 & 0xFE) == 0x12)
                {
                  v156 = *(**(*v148 + 16) + 8);
                }

                if (v147 == v156 >> 8)
                {
                  v9 = "Calling convention disallows stack byref";
                  goto LABEL_21;
                }
              }
            }

            v148 += 40;
            ++v151;
            if (v148 == v149)
            {
              goto LABEL_287;
            }
          }
        }
      }

      goto LABEL_287;
    }

    if (v145 != 91)
    {
      if (v145 != 93)
      {
        goto LABEL_292;
      }

      goto LABEL_259;
    }

LABEL_317:
    if (*(**(*(a2 + 3) + 16) + 8) != 7)
    {
      v9 = "Calling convention requires void return type";
      goto LABEL_21;
    }

    goto LABEL_259;
  }

  if (((*(a2 + 9) >> 4) & 0x3FFu) <= 0x4B)
  {
    if (v145 - 8 >= 2 && v145 - 71 >= 2)
    {
      goto LABEL_292;
    }

    goto LABEL_287;
  }

  switch(v145)
  {
    case 'L':
      goto LABEL_317;
    case 'M':
LABEL_287:
      if (*(*(a2 + 3) + 8) >= 0x100u)
      {
        v9 = "Calling convention does not support varargs or perfect forwarding!";
        goto LABEL_21;
      }

      break;
    case 'S':
      if (*(a2 + 12))
      {
        if (!v141 || *(v141 + 8) < 3u || (v146 = *(v141 + 56)) == 0 || (*(v146 + 20) & 0x40) == 0)
        {
          v9 = "Calling convention parameter requires byval";
          goto LABEL_21;
        }
      }

      break;
  }

LABEL_292:
  v157 = llvm::Function::args(a2);
  if (v157 != v158)
  {
    v160 = v157;
    v161 = v158;
    v162 = 2;
    do
    {
      v163 = *(*(v139 + 16) + 8 * (v162 - 1));
      if (*v160 != v163)
      {
        v230 = "Argument value does not match function argument type!";
        v234[0] = 259;
        v239 = v160;
        v235 = v163;
        llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Type *>(this, &v230, &v239, &v235);
        goto LABEL_22;
      }

      v164 = *(*v160 + 2);
      if (v164 == 14 || v164 == 7)
      {
        v230 = "Function arguments must have first-class types!";
        v234[0] = 259;
        v239 = v160;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v239);
        goto LABEL_22;
      }

      if ((v144 & 0x2000) == 0)
      {
        switch(v164)
        {
          case 0xCu:
            v190 = "Function takes token but isn't an intrinsic";
LABEL_367:
            v230 = v190;
            v234[0] = 259;
            v239 = v160;
            v235 = a2;
            llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v230, &v239, &v235);
            goto LABEL_22;
          case 0xBu:
            v190 = "Function takes x86_amx but isn't an intrinsic";
            goto LABEL_367;
          case 9u:
            v190 = "Function takes metadata but isn't an intrinsic";
            goto LABEL_367;
        }
      }

      if (v141)
      {
        if (v162 < *(v141 + 8))
        {
          v166 = *(v141 + 40 + 8 * v162);
          if (v166)
          {
            if (*(v166 + 20))
            {
            }
          }
        }
      }

      v160 += 5;
      ++v162;
    }

    while (v160 != v161);
  }

  if ((v144 & 0x2000) == 0)
  {
    v159 = *(**(*(a2 + 3) + 16) + 8);
    if (v159 == 11)
    {
      v9 = "Function returns a x86_amx but isn't an intrinsic";
      goto LABEL_21;
    }

    if (v159 == 12)
    {
      v9 = "Function returns a token but isn't an intrinsic";
      goto LABEL_21;
    }
  }

  v239 = &v241;
  v240 = 0x400000000;
  llvm::Value::getAllMetadata(a2, &v239);
  if ((*(a2 + 9) & 8) != 0)
  {
    v167 = *(a2 + 5);
    v168 = (v167 & 0x40000000) != 0 ? *(a2 - 1) : (a2 - 32 * (v167 & 0x7FFFFFF));
    v169 = llvm::Value::stripPointerCasts(*v168);
    v170 = *(v169 + 16) ? 0 : v169;
    v235 = v170;
    if (v170)
    {
      v171 = *(v170 + 5);
      if (v171 != *(a2 + 5))
      {
        v229 = *(a2 + 5);
        v230 = "Referencing personality function in another module!";
        v234[0] = 259;
        v226[0] = a2;
        v228 = v171;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*,llvm::Module const*,llvm::Function*,llvm::Module*>(this, &v230, v226, &v229, &v235, &v228);
        goto LABEL_450;
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::clear(this + 226);
  if (*(a2 + 35))
  {
    if (v240)
    {
      v230 = "unmaterialized function cannot have metadata";
      v234[0] = 259;
      v235 = a2;
      v226[0] = v239[1];
      v174 = &v235;
      v175 = v226;
      v176 = this;
LABEL_338:
      llvm::VerifierSupport::CheckFailed<llvm::Function const*,llvm::MDNode *>(v176, &v230, v174, v175);
      goto LABEL_450;
    }

    goto LABEL_385;
  }

  if (*(a2 + 16) == 3)
  {
    if ((*(a2 + 5) & 0x7FFFFFF) != 0)
    {
      goto LABEL_333;
    }

LABEL_355:
    if (v240)
    {
      v186 = 16 * v240;
      v187 = v239 + 1;
      do
      {
        v188 = *(v187 - 2);
        if (v188)
        {
          if (v188 == 2)
          {
            v173 = "function declaration may not have a !prof attachment";
            goto LABEL_335;
          }

          v189 = *v187;
        }

        else
        {
          v189 = *v187;
          if ((*(*v187 + 1) & 0x7F) == 1)
          {
            v230 = "function declaration may only have a unique !dbg attachment";
            v234[0] = 259;
            v235 = a2;
            v222 = &v235;
            goto LABEL_449;
          }
        }

        v187 += 2;
        v186 -= 16;
      }

      while (v186);
    }

    if ((*(a2 + 9) & 8) != 0)
    {
      v173 = "Function declaration shouldn't have a personality routine";
      goto LABEL_335;
    }

    goto LABEL_385;
  }

  if (!*(a2 + 16) && *v4 == v4)
  {
    goto LABEL_355;
  }

LABEL_333:
  if ((v144 & 0x2000) != 0)
  {
    v173 = "llvm intrinsics cannot be defined!";
LABEL_335:
    v230 = v173;
    v234[0] = 259;
    v235 = a2;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v235);
    goto LABEL_450;
  }

  v177 = *(a2 + 10);
  if (v177)
  {
    v178 = v177 - 24;
  }

  else
  {
    v178 = 0;
  }

  v235 = v178;
  v179 = *(v178 + 8);
  if (v179)
  {
    while (1)
    {
      v180 = *(v179 + 24);
      v181 = *(v180 + 16);
      v182 = v180 && v181 >= 0x1C;
      if (v182 && v181 - 40 > 0xFFFFFFF4)
      {
        break;
      }

      v179 = *(v179 + 8);
      if (!v179)
      {
        goto LABEL_351;
      }
    }

    v185 = "Entry block to function must not have predecessors!";
LABEL_432:
    v230 = v185;
    v234[0] = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v235);
    goto LABEL_450;
  }

LABEL_351:
  if ((*(v178 + 18) & 0x7FFF) != 0)
  {
    v184 = llvm::BlockAddress::lookup(v178, v172);
    if (llvm::Constant::isConstantUsed(v184))
    {
      v185 = "blockaddress may not be used with the entry block!";
      goto LABEL_432;
    }
  }

  if (!v240)
  {
LABEL_385:
    if ((*(a2 + 33) & 0x20) != 0 && !*(*(a2 + 5) + 152))
    {
      v235 = 0;
      if (llvm::Function::hasAddressTaken(a2, &v235, 0, 1, 0, 1))
      {
        v230 = "Invalid user of intrinsic instruction!";
        v234[0] = 259;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v235);
        goto LABEL_450;
      }
    }

    v202 = *(a2 + 9);
    if (v202 == 122)
    {
      v206 = *(a2 + 3);
      if (*(v206 + 12) == 2)
      {
        v207 = *(v206 + 16);
        if (*(v207[1] + 8) != 15)
        {
          v205 = "gc.get.pointer.offset operand must be a pointer";
          goto LABEL_427;
        }

        if (*(*v207 + 8) != 13)
        {
          v205 = "gc.get.pointer.offset must return integer";
          goto LABEL_427;
        }

        goto LABEL_398;
      }
    }

    else
    {
      if (v202 != 121)
      {
        goto LABEL_398;
      }

      v203 = *(a2 + 3);
      if (*(v203 + 12) == 2)
      {
        v204 = *(v203 + 16);
        if (*(*v204 + 8) != 15)
        {
          v205 = "gc.get.pointer.base must return a pointer";
          goto LABEL_427;
        }

        if (v204[1] != *v204)
        {
          v205 = "gc.get.pointer.base operand and result must be of the same type";
LABEL_427:
          v230 = v205;
          v234[0] = 259;
          llvm::VerifierSupport::CheckFailed<llvm::Function>(this, &v230, a2);
          goto LABEL_450;
        }

LABEL_398:
        Metadata = llvm::Value::getMetadata(a2, 0);
        v226[0] = Metadata;
        *(this + 801) = Metadata != 0;
        if (Metadata)
        {
          v230 = v234;
          v231 = v234;
          v232 = 32;
          v233 = 0;
          v235 = &v230;
          v236 = this;
          v237[0] = v226;
          v237[1] = a2;
          for (j = *(a2 + 10); ; j = v225[1])
          {
            v225 = j;
            if (j == v4)
            {
              break;
            }

            v210 = j - 3;
            if (!v225)
            {
              v210 = 0;
            }

            v211 = v210 + 5;
            for (k = v210[6]; k != v211; k = k[1])
            {
              if (k)
              {
                v213 = (k - 3);
              }

              else
              {
                v213 = 0;
              }

              if (v213[6] || (*(v213 + 23) & 0x20) != 0)
              {
                v214 = llvm::Value::getMetadata(v213, 18);
                if (v214)
                {
                  v215 = v214;
                  v216 = (v214 - 16);
                  for (m = 1; ; ++m)
                  {
                    v218 = *v216;
                    if ((*v216 & 2) != 0)
                    {
                      if (m >= *(v215 - 24))
                      {
                        break;
                      }

                      v219 = *(v215 - 32);
                    }

                    else
                    {
                      if (m >= ((v218 >> 6) & 0xF))
                      {
                        break;
                      }

                      v219 = &v216[-((v218 >> 2) & 0xF)];
                    }

                    v220 = v219[m];
                    if (v220)
                    {
                      if (llvm::MDNode::classof(v219[m]))
                      {
                        v221 = v220;
                      }

                      else
                      {
                        v221 = 0;
                      }
                    }

                    else
                    {
                      v221 = 0;
                    }
                  }
                }
              }

              if (*(this + 193))
              {
                goto LABEL_428;
              }
            }
          }

LABEL_428:
          if (v231 != v230)
          {
            free(v231);
          }
        }

        goto LABEL_450;
      }
    }

    v205 = "wrong number of parameters";
    goto LABEL_427;
  }

  v191 = 0;
  v192 = 0;
  v193 = 0;
  v194 = &v239[2 * v240];
  v195 = (v239 + 1);
  while (1)
  {
    v197 = v195 - 1;
    v196 = *(v195 - 2);
    if (v196 != 36)
    {
      break;
    }

    if (v193)
    {
      v224 = "function must have a single !kcfi_type attachment";
      goto LABEL_445;
    }

    v200 = 0;
    v193 = 1;
LABEL_384:
    v201 = *v195;
    v195 += 2;
    if (v197 + 2 == v194)
    {
      goto LABEL_385;
    }
  }

  if (v196 == 2)
  {
    if (v192)
    {
      v224 = "function must have a single !prof attachment";
LABEL_445:
      v230 = v224;
      v234[0] = 259;
      v226[0] = a2;
      v174 = v226;
      v176 = this;
      v175 = v195;
      goto LABEL_338;
    }

    v200 = 0;
    v192 = 1;
    goto LABEL_384;
  }

  if (v196)
  {
    v200 = 0;
    goto LABEL_384;
  }

  if (v191)
  {
    v223 = "function must have a single !dbg attachment";
LABEL_447:
    v230 = v223;
    v234[0] = 259;
    v226[0] = a2;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Function const*,llvm::MDNode *>(this, &v230, v226, v195);
    goto LABEL_450;
  }

  if (**v195 != 17)
  {
    v223 = "function !dbg attachment must be a subprogram";
    goto LABEL_447;
  }

  if ((*(*v195 + 1) & 0x7F) == 1)
  {
    v226[0] = *v195;
    v198 = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram const*,llvm::Function const*,llvm::DenseMapInfo<llvm::DISubprogram const*,void>,llvm::detail::DenseMapPair<llvm::DISubprogram const*,llvm::Function const*>>,llvm::DISubprogram const*,llvm::Function const*,llvm::DenseMapInfo<llvm::DISubprogram const*,void>,llvm::detail::DenseMapPair<llvm::DISubprogram const*,llvm::Function const*>>::FindAndConstruct(this + 720, v226);
    v199 = v198[1];
    if (v199 && v199 != a2)
    {
      v229 = a2;
      v230 = "DISubprogram attached to more than one function";
      v234[0] = 259;
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubprogram *,llvm::Function const*>(this, &v230, v226, &v229);
      goto LABEL_450;
    }

    v198[1] = a2;
    v200 = 1;
    v191 = 1;
    goto LABEL_384;
  }

  v230 = "function definition may only have a distinct !dbg attachment";
  v234[0] = 259;
  v226[0] = a2;
  v222 = v226;
LABEL_449:
  llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Function const*>(this, &v230, v222);
LABEL_450:
  if (v239 != &v241)
  {
    free(v239);
  }

LABEL_22:
  v12 = *(a2 + 10);
  if (v12 != v4)
  {
    while (2)
    {
      v13 = v12[1];
      if (v12)
      {
        v14 = v12 - 3;
      }

      else
      {
        v14 = 0;
      }

      llvm::SmallPtrSetImplBase::clear((this + 272));
      v16 = v14 + 5;
      v15 = v14[5];
      if (v15 == v14 + 5 || (v15 ? (v17 = v15 - 3) : (v17 = 0), *(v17 + 16) - 29 >= 0xB))
      {
        v230 = "Basic Block does not have terminator!";
        v234[0] = 259;
        v239 = (v12 - 3);
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v239);
      }

      else
      {
        v18 = v12[3];
        v19 = v18 - 3;
        if (!v18)
        {
          v19 = 0;
        }

        if (*(v19 + 16) != 83)
        {
          goto LABEL_111;
        }

        for (n = *(v12 - 2); n; n = *(n + 8))
        {
          v21 = *(n + 24);
          v22 = *(v21 + 16);
          if (v21)
          {
            v23 = v22 >= 0x1C;
          }

          else
          {
            v23 = 0;
          }

          if (v23 && v22 - 29 < 0xB)
          {
            break;
          }
        }

        v239 = &v241;
        v240 = 0x800000000;
        llvm::SmallVectorImpl<llvm::BasicBlock *>::append<llvm::PredIterator<llvm::BasicBlock,llvm::Value::user_iterator_impl<llvm::User>>,void>(&v239, n, 0);
        v230 = &v232;
        v231 = 0x800000000;
        if (v240 >= 2)
        {
          qsort(v239, v240, 8uLL, llvm::array_pod_sort_comparator<llvm::BasicBlock *>);
        }

        if (*v16 == v16)
        {
          v28 = 1;
          goto LABEL_88;
        }

        v25 = v14[6];
        v26 = v25 - 24;
        if (v25)
        {
          v27 = v25 - 24;
        }

        else
        {
          v27 = 0;
        }

        v28 = 1;
        if (v25 && *(v27 + 16) == 83)
        {
          while (1)
          {
            v29 = *(v26 + 20) & 0x7FFFFFF;
            if (v240 != v29)
            {
              v235 = "PHINode should have one entry for each predecessor of its parent basic block!";
              v238 = 259;
              llvm::VerifierSupport::CheckFailed(this, &v235);
              if (*this)
              {
                llvm::VerifierSupport::Write(this, v26);
              }

              v28 = 0;
              goto LABEL_88;
            }

            LODWORD(v231) = 0;
            if (HIDWORD(v231) < v29)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v230, &v232, v29, 16);
              v29 = *(v26 + 20) & 0x7FFFFFF;
            }

            if (v29)
            {
              v30 = 0;
              v31 = 0;
              v32 = 8 * v29;
              do
              {
                v33 = *(v26 + 20);
                if ((v33 & 0x40000000) != 0)
                {
                  v34 = *(v26 - 8);
                }

                else
                {
                  v34 = v26 - 32 * (v33 & 0x7FFFFFF);
                }

                llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v230, *(v34 + 32 * *(v26 + 60) + v31), *(v34 + v30));
                v31 += 8;
                v30 += 32;
              }

              while (v32 != v31);
            }

            v35 = 126 - 2 * __clz(v231);
            v36 = v231 ? v35 : 0;
            std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,false>(v230, v230 + 2 * v231, v36, 1);
            v37 = v231;
            if (v231)
            {
              break;
            }

LABEL_72:
            v42 = *(v26 + 32);
            v26 = v42 - 24;
            if (v42)
            {
              v43 = v42 - 24;
            }

            else
            {
              v43 = 0;
            }

            v28 = 1;
            if (!v42 || *(v43 + 16) != 83)
            {
              goto LABEL_88;
            }
          }

          v38 = v230;
          v39 = -16;
          v40 = v239;
          while (1)
          {
            if (v39 == -16)
            {
              v41 = *v230;
            }

            else
            {
              v41 = *(v230 + v39 + 16);
              if (v41 == *(v230 + v39) && *(v230 + v39 + 24) != *(v230 + v39 + 8))
              {
                v235 = "PHI node has multiple entries for the same basic block with different incoming values!";
                v238 = 259;
                llvm::VerifierSupport::CheckFailed(this, &v235);
                if (*this)
                {
                  v47 = &v38[v39];
                  llvm::VerifierSupport::Write(this, v26);
                  v48 = *&v38[v39 + 16];
                  if (v48)
                  {
                    llvm::VerifierSupport::Write(this, v48);
                  }

                  v49 = *(v47 + 3);
                  if (v49)
                  {
                    llvm::VerifierSupport::Write(this, v49);
                  }

                  v45 = *(v47 + 1);
                  if (v45)
                  {
LABEL_86:
                    llvm::VerifierSupport::Write(this, v45);
                  }
                }

LABEL_87:
                v28 = 0;
                break;
              }
            }

            if (v41 != *v40)
            {
              v235 = "PHI node entries do not match predecessors!";
              v238 = 259;
              llvm::VerifierSupport::CheckFailed(this, &v235);
              if (*this)
              {
                llvm::VerifierSupport::Write(this, v26);
                v44 = *&v38[v39 + 16];
                if (v44)
                {
                  llvm::VerifierSupport::Write(this, v44);
                }

                v45 = *v40;
                if (*v40)
                {
                  goto LABEL_86;
                }
              }

              goto LABEL_87;
            }

            ++v40;
            v39 += 16;
            if (!--v37)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_88:
        if (v230 != &v232)
        {
          free(v230);
        }

        if (v239 != &v241)
        {
          free(v239);
        }

        v18 = v12[3];
        if (v18 == v16)
        {
          v46 = 0;
        }

        else
        {
          v46 = v28;
        }

        if (v46)
        {
          while (1)
          {
            v50 = v18 - 3;
            if (!v18)
            {
              v50 = 0;
            }

            if (v50[5] != v14)
            {
              break;
            }

            v18 = v18[1];
LABEL_111:
            if (v18 == v16)
            {
              goto LABEL_79;
            }
          }

          v230 = "Instruction has bogus parent pointer!";
          v234[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v230);
        }
      }

LABEL_79:
      v12 = v13;
      if (v13 == v4)
      {
        break;
      }

      continue;
    }
  }

  v230 = v234;
  v231 = v234;
  v232 = 8;
  v233 = 0;
  v239 = v243;
  v240 = v243;
  v241 = 8;
  v242 = 0;
  v51 = (this + 856);
  v52 = *(this + 110);
  v53 = *(this + 111);
  while (v52 != v53)
  {
    v229 = *v52;
    imp = llvm::SmallPtrSetImplBase::find_imp(&v230, v229);
    if (v231 == v230)
    {
      v55 = (&v232 + 4);
    }

    else
    {
      v55 = &v232;
    }

    if (imp == (v231 + 8 * *v55))
    {
      llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v239, v229, &v235);
      for (ii = *(v52 + 8); ; ii = v61)
      {
        SuccPad = getSuccPad(ii);
        v58 = llvm::SmallPtrSetImplBase::find_imp(&v239, SuccPad);
        v59 = v240 == v239 ? (&v241 + 4) : &v241;
        if (v58 != (v240 + 8 * *v59))
        {
          break;
        }

        llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v230, SuccPad, &v235);
        if (LOBYTE(v237[0]) != 1 || (v229 = SuccPad, v60 = llvm::MapVector<llvm::Instruction *,llvm::Instruction *,llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,std::vector<std::pair<llvm::Instruction *,llvm::Instruction *>>>::find(this + 856, &v229), *(this + 111) == v60))
        {
          llvm::SmallPtrSetImplBase::clear(&v239);
          goto LABEL_129;
        }

        v61 = *(v60 + 8);
        llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v239, v229, &v235);
      }

      v228 = SuccPad;
      v235 = v237;
      v236 = 0x800000000;
      v62 = SuccPad;
      do
      {
        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v235, v62);
        v63 = llvm::MapVector<llvm::Instruction *,llvm::Instruction *,llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,std::vector<std::pair<llvm::Instruction *,llvm::Instruction *>>>::operator[](this + 107, &v228);
        v64 = *v63;
        if (*v63 != v228)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v235, v64);
        }

        v62 = getSuccPad(v64);
        v228 = v62;
      }

      while (v62 != SuccPad);
      v226[0] = "EH pads can't handle each other's exceptions";
      v227 = 259;
      v65 = v235;
      v66 = v236;
      llvm::VerifierSupport::CheckFailed(this, v226);
      if (*this && v66)
      {
        v67 = 8 * v66;
        do
        {
          if (*v65)
          {
            llvm::VerifierSupport::Write(this, *v65);
          }

          ++v65;
          v67 -= 8;
        }

        while (v67);
      }

      if (v235 != v237)
      {
        free(v235);
      }

      break;
    }

LABEL_129:
    v52 += 16;
  }

  if (v240 != v239)
  {
    free(v240);
  }

  if (v231 != v230)
  {
    free(v231);
  }

  llvm::SmallPtrSetImplBase::clear((this + 272));
  *(this + 462) = 0;
  *(this + 99) = 0;
  *(this + 800) = 0;
  v68 = *(this + 216);
  if (v68)
  {
    v69 = *(this + 218);
    if (v69 > 4 * v68 && v69 >= 0x41)
    {
      v70 = 1 << (33 - __clz(v68 - 1));
      if (v70 <= 64)
      {
        v71 = 64;
      }

      else
      {
        v71 = v70;
      }

      goto LABEL_155;
    }

LABEL_163:
    if (v69)
    {
      v79 = 0;
      v80 = v69 + 0xFFFFFFFFFFFFFFFLL;
      v81 = v80 & 0xFFFFFFFFFFFFFFFLL;
      v82 = (v80 & 0xFFFFFFFFFFFFFFFLL) - (v80 & 1) + 2;
      v83 = vdupq_n_s64(v81);
      v84 = (*v51 + 16);
      do
      {
        v85 = vmovn_s64(vcgeq_u64(v83, vorrq_s8(vdupq_n_s64(v79), xmmword_2750C1210)));
        if (v85.i8[0])
        {
          *(v84 - 2) = -4096;
        }

        if (v85.i8[4])
        {
          *v84 = -4096;
        }

        v79 += 2;
        v84 += 4;
      }

      while (v82 != v79);
    }

    *(this + 108) = 0;
  }

  else if (*(this + 217))
  {
    v69 = *(this + 218);
    if (v69 <= 0x40)
    {
      goto LABEL_163;
    }

    v71 = 0;
LABEL_155:
    if (v71 == v69)
    {
      v72 = 0;
      *(this + 108) = 0;
      v73 = v69 + 0xFFFFFFFFFFFFFFFLL;
      v74 = v73 & 0xFFFFFFFFFFFFFFFLL;
      v75 = (v73 & 0xFFFFFFFFFFFFFFFLL) - (v73 & 1) + 2;
      v76 = vdupq_n_s64(v74);
      v77 = (*(this + 107) + 16);
      do
      {
        v78 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(vdupq_n_s64(v72), xmmword_2750C1210)));
        if (v78.i8[0])
        {
          *(v77 - 2) = -4096;
        }

        if (v78.i8[4])
        {
          *v77 = -4096;
        }

        v72 += 2;
        v77 += 4;
      }

      while (v75 != v72);
    }

    else
    {
      MEMORY[0x277C69E30](*v51, 8);
      if (v71)
      {
        v128 = (4 * v71 / 3u + 1) | ((4 * v71 / 3u + 1) >> 1);
        v129 = v128 | (v128 >> 2) | ((v128 | (v128 >> 2)) >> 4);
        LODWORD(v129) = (((v129 | (v129 >> 8)) >> 16) | v129 | (v129 >> 8)) + 1;
        *(this + 218) = v129;
        v130 = operator new(16 * v129, 8uLL);
        *(this + 107) = v130;
        *(this + 108) = 0;
        v131 = *(this + 218);
        if (v131)
        {
          v132 = 0;
          v133 = v131 + 0xFFFFFFFFFFFFFFFLL;
          v134 = v133 & 0xFFFFFFFFFFFFFFFLL;
          v135 = (v133 & 0xFFFFFFFFFFFFFFFLL) - (v133 & 1) + 2;
          v136 = vdupq_n_s64(v134);
          v137 = v130 + 16;
          do
          {
            v138 = vmovn_s64(vcgeq_u64(v136, vorrq_s8(vdupq_n_s64(v132), xmmword_2750C1210)));
            if (v138.i8[0])
            {
              *(v137 - 2) = -4096;
            }

            if (v138.i8[4])
            {
              *v137 = -4096;
            }

            v132 += 2;
            v137 += 4;
          }

          while (v135 != v132);
        }
      }

      else
      {
        *v51 = 0;
        *(this + 108) = 0;
        *(this + 218) = 0;
      }
    }
  }

  *(this + 111) = *(this + 110);
  v86 = *(this + 512);
  if (!v86)
  {
    goto LABEL_246;
  }

  v87 = *(this + 255);
  v88 = 8 * v86;
  while (2)
  {
    v239 = *v87;
    v89 = v239[-4 * (*(v239 + 5) & 0x7FFFFFF)];
    if (v89)
    {
      v90 = *(v89 + 16) == 23;
    }

    else
    {
      v90 = 0;
    }

    if (!v90)
    {
      v140 = "llvm.experimental.noalias.scope.decl must have a MetadataAsValue argument";
LABEL_245:
      v230 = v140;
      v234[0] = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v230, &v239);
      goto LABEL_246;
    }

    v91 = *(v89 + 3);
    v92 = llvm::MDNode::classof(v91);
    if (!v91 || (v92 & 1) == 0)
    {
      v140 = "!id.scope.list must point to an MDNode";
      goto LABEL_245;
    }

    v93 = *(v91 - 2);
    if ((v93 & 2) != 0)
    {
      v94 = *(v91 - 6);
    }

    else
    {
      v94 = (v93 >> 6) & 0xF;
    }

    if (v94 != 1)
    {
      v140 = "!id.scope.list must point to a list with a single scope";
      goto LABEL_245;
    }

    ++v87;
    v88 -= 8;
    if (v88)
    {
      continue;
    }

    break;
  }

  if (byte_2815AB6A8 == 1)
  {
    v95 = *(this + 512);
    v96 = 126 - 2 * __clz(v95);
    v97 = v95 ? v96 : 0;
    v98 = *(this + 512);
    if (v98)
    {
      v99 = *(this + 255);
      v100 = &v99[v98];
      v101 = v99;
      do
      {
        v102 = *((*v101)[-4 * (*(*v101 + 5) & 0x7FFFFFF)] + 3);
        v105 = *(v102 - 16);
        v103 = v102 - 16;
        v104 = v105;
        if ((v105 & 2) != 0)
        {
          v106 = *(*((*v101)[-4 * (*(*v101 + 5) & 0x7FFFFFF)] + 3) - 32);
        }

        else
        {
          v106 = v103 - 8 * ((v104 >> 2) & 0xF);
        }

        v107 = v101 + 1;
        v108 = 8;
        do
        {
          v109 = v107;
          v110 = v108;
          if (v107 == v100)
          {
            break;
          }

          v111 = *((*v107)[-4 * (*(*v107 + 5) & 0x7FFFFFF)] + 3);
          v114 = *(v111 - 16);
          v112 = v111 - 16;
          v113 = v114;
          v115 = (v114 & 2) != 0 ? *(*((*v107)[-4 * (*(*v107 + 5) & 0x7FFFFFF)] + 3) - 32) : v112 - 8 * ((v113 >> 2) & 0xF);
          ++v107;
          v108 = v110 + 8;
        }

        while (v115 == v106);
        if (v110 <= 255)
        {
          v116 = v101;
          while (2)
          {
            v117 = 0;
            v118 = *v116;
            v239 = *v116;
            do
            {
              v119 = v101[v117 / 8];
              if (v118 != v119 && (llvm::DominatorTree::dominates((this + 200), v118, v119) & 1) != 0)
              {
                v140 = "llvm.experimental.noalias.scope.decl dominates another one with the same scope";
                goto LABEL_245;
              }

              v117 += 8;
            }

            while (v110 != v117);
            v90 = v109 - 1 == v116++;
            if (!v90)
            {
              continue;
            }

            break;
          }

          v99 = *(this + 255);
          v98 = *(this + 512);
        }

        v100 = &v99[v98];
        v101 = v109;
      }

      while (v109 != v100);
    }
  }

LABEL_246:
  *(this + 512) = 0;
  v127 = *(this + 192) ^ 1;
LABEL_247:
  v142 = *MEMORY[0x277D85DE8];
  return v127 & 1;
}

void anonymous namespace::Verifier::~Verifier(_anonymous_namespace_::Verifier *this)
{
  v2 = *(this + 255);
  if (v2 != this + 2056)
  {
    free(v2);
  }

  MEMORY[0x277C69E30](*(this + 252), 8);
  MEMORY[0x277C69E30](*(this + 249), 8);
  v3 = *(this + 230);
  if (v3 != this + 1856)
  {
    free(v3);
  }

  v4 = *(this + 195);
  if (v4 != *(this + 194))
  {
    free(v4);
  }

  v5 = *(this + 159);
  if (v5 != *(this + 158))
  {
    free(v5);
  }

  v6 = *(this + 152);
  if (v6 != this + 1232)
  {
    free(v6);
  }

  v7 = *(this + 117);
  if (v7 != *(this + 116))
  {
    free(v7);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::destroyAll(this + 113);
  MEMORY[0x277C69E30](*(this + 113), 8);
  v8 = *(this + 110);
  if (v8)
  {
    *(this + 111) = v8;
    operator delete(v8);
  }

  MEMORY[0x277C69E30](*(this + 107), 8);
  MEMORY[0x277C69E30](*(this + 104), 8);
  MEMORY[0x277C69E30](*(this + 101), 8);
  v9 = *(this + 94);
  if (v9 != *(this + 93))
  {
    free(v9);
  }

  MEMORY[0x277C69E30](*(this + 90), 8);
  v10 = *(this + 55);
  if (v10 != *(this + 54))
  {
    free(v10);
  }

  v11 = *(this + 35);
  if (v11 != *(this + 34))
  {
    free(v11);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll(this + 56);
  MEMORY[0x277C69E30](*(this + 28), 8);
  v12 = *(this + 25);
  if (v12 != this + 216)
  {
    free(v12);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  llvm::ModuleSlotTracker::~ModuleSlotTracker((this + 16));
}

uint64_t llvm::verifyModule(llvm *this, const llvm::Module *a2, llvm::raw_ostream *a3, BOOL *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = this + 24;
  v7 = *(this + 4);
  if (v7 == v6)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (v7)
      {
        v9 = (v7 - 56);
      }

      else
      {
        v9 = 0;
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
  }

  if (a3)
  {
    *a3 = v13[193];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 & 1 | !v10;
}

BOOL anonymous namespace::Verifier::verify(_anonymous_namespace_::Verifier *this)
{
  v386 = *MEMORY[0x277D85DE8];
  *(this + 192) = 0;
  v2 = *(this + 1);
  v3 = v2 + 24;
  for (i = *(v2 + 32); i != v3; i = *(i + 8))
  {
    if (i)
    {
      v5 = i - 56;
    }

    else
    {
      v5 = 0;
    }

    if (*(v5 + 36) == 120)
    {
      v6 = *(this + 306);
      if (v6 >= *(this + 307))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 1216, this + 1232, v6 + 1, 8);
        v6 = *(this + 306);
      }

      *(*(this + 152) + 8 * v6) = v5;
      ++*(this + 306);
    }
  }

  if (*(this + 210))
  {
    v7 = *(this + 212);
    if (v7)
    {
      v8 = 16 * v7;
      v9 = *(this + 104);
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 16;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v9 = *(this + 104);
    }

    v10 = *(this + 104) + 16 * v7;
    if (v9 != v10)
    {
      v11 = *v9;
LABEL_20:
      __p[0] = v11;
      if (*(v9 + 12) > *(v9 + 8))
      {
        v381 = "all indices passed to llvm.localrecover must be less than the number of arguments passed to llvm.localescape in the parent function";
        v385[0] = 259;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, __p);
      }

      else
      {
        while (1)
        {
          v9 += 16;
          if (v9 == v10)
          {
            break;
          }

          v11 = *v9;
          if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v9 != v10)
            {
              goto LABEL_20;
            }

            break;
          }
        }
      }
    }
  }

LABEL_26:
  v12 = *(this + 1);
  v13 = v12 + 8;
  v14 = *(v12 + 16);
  if (v14 != v12 + 8)
  {
    v365 = v12 + 8;
    while (1)
    {
      if (v14)
      {
        v15 = (v14 - 56);
      }

      else
      {
        v15 = 0;
      }

      if (v14 && *(v15 + 16) == 3)
      {
        if ((*(v14 - 36) & 0x7FFFFFF) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (!*(v15 + 16) && v15[9] == (v15 + 9) && (*(v15 + 35) & 1) == 0)
      {
        goto LABEL_49;
      }

      v16 = *(v15 - 4);
      if (*v16 != v15[3])
      {
        v17 = "Global variable initializer type does not match global variable type!";
        goto LABEL_40;
      }

      if ((v15[4] & 0xF) == 0xA)
      {
        if ((llvm::Constant::isNullValue(v16) & 1) == 0)
        {
          v17 = "'common' global must have a zero initializer!";
          goto LABEL_40;
        }

        if (v15[10])
        {
          v17 = "'common' global may not be marked constant!";
          goto LABEL_40;
        }

        if (v15[6])
        {
          v17 = "'common' global may not be in a Comdat!";
          goto LABEL_40;
        }
      }

LABEL_49:
      if ((*(v15 + 23) & 0x10) == 0)
      {
        goto LABEL_67;
      }

      ValueName = llvm::Value::getValueName(v15);
      if (*ValueName != 17 || (*(ValueName + 16) == 0x6F6C672E6D766C6CLL ? (v19 = *(ValueName + 24) == 0x726F74635F6C6162) : (v19 = 0), v19 ? (v20 = *(ValueName + 32) == 115) : (v20 = 0), !v20))
      {
        if ((*(v15 + 23) & 0x10) == 0)
        {
          goto LABEL_67;
        }

        v21 = llvm::Value::getValueName(v15);
        if (*v21 != 17)
        {
          goto LABEL_67;
        }

        v22 = *(v21 + 16) == 0x6F6C672E6D766C6CLL && *(v21 + 24) == 0x726F74645F6C6162;
        if (!v22 || *(v21 + 32) != 115)
        {
          goto LABEL_67;
        }
      }

      if (v14 && *(v15 + 16) == 3)
      {
        if ((*(v15 + 5) & 0x7FFFFFF) == 0)
        {
          goto LABEL_195;
        }
      }

      else if (!*(v15 + 16) && v15[9] == (v15 + 9) && (*(v15 + 35) & 1) == 0)
      {
        goto LABEL_195;
      }

      if ((v15[4] & 0xF) != 6)
      {
        goto LABEL_208;
      }

LABEL_195:
      if (v15[1])
      {
        goto LABEL_207;
      }

      v78 = v15[3];
      if (v78 && *(v78 + 8) == 17)
      {
        v79 = v78[3];
        v80 = *(v79 + 8);
        v81 = llvm::FunctionType::get((**(this + 23) + 1608), 0, 0, 0);
        v82 = llvm::PointerType::get(v81, *(*(this + 22) + 12));
        if (!v79 || v80 != 16 || (v83 = *(v79 + 3), (v83 & 0xFFFFFFFE) != 2) || (v84 = v79[2], *(*v84 + 8) != 8205) || v84[1] != v82)
        {
          v381 = "wrong type for intrinsic global variable";
          goto LABEL_41;
        }

        if (v83 != 3)
        {
          v381 = "the third field of the element type is mandatory, specify ptr null to migrate from the obsoleted 2-field form";
          v385[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v381);
          goto LABEL_216;
        }

        v100 = v84[2];
        if (*(v100 + 8) != 15 || (v101 = *(v100 + 24)) != 0 && v101 != **v100 + 1944)
        {
LABEL_264:
          v17 = "wrong type for intrinsic global variable";
LABEL_40:
          v381 = v17;
LABEL_41:
          v385[0] = 259;
          __p[0] = v15;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, __p);
          goto LABEL_216;
        }
      }

LABEL_67:
      if ((*(v15 + 23) & 0x10) == 0)
      {
        goto LABEL_82;
      }

      v24 = llvm::Value::getValueName(v15);
      if (*v24 != 9 || (*(v24 + 16) == 0x6573752E6D766C6CLL ? (v25 = *(v24 + 24) == 100) : (v25 = 0), !v25))
      {
        if ((*(v15 + 23) & 0x10) == 0)
        {
          goto LABEL_82;
        }

        v26 = llvm::Value::getValueName(v15);
        if (*v26 != 18)
        {
          goto LABEL_82;
        }

        v27 = *(v26 + 16) == 0x6D6F632E6D766C6CLL && *(v26 + 24) == 0x73752E72656C6970;
        if (!v27 || *(v26 + 32) != 25701)
        {
          goto LABEL_82;
        }
      }

      if (v14)
      {
        v73 = *(v15 + 16) == 3;
      }

      else
      {
        v73 = 0;
      }

      v74 = !v73;
      if (v73)
      {
        if ((*(v15 + 5) & 0x7FFFFFF) == 0)
        {
          goto LABEL_206;
        }
      }

      else if (!*(v15 + 16) && v15[9] == (v15 + 9) && (*(v15 + 35) & 1) == 0)
      {
        goto LABEL_206;
      }

      if ((v15[4] & 0xF) != 6)
      {
LABEL_208:
        v17 = "invalid linkage for intrinsic global variable";
        goto LABEL_40;
      }

LABEL_206:
      if (v15[1])
      {
LABEL_207:
        v17 = "invalid uses of intrinsic global variable";
        goto LABEL_40;
      }

      v85 = v15[3];
      if (!v85 || *(v85 + 8) != 17)
      {
        goto LABEL_82;
      }

      v86 = v85[3];
      if (!v86 || *(v86 + 8) != 15)
      {
        goto LABEL_264;
      }

      if (v74)
      {
        if (*(v15 + 16) || v15[9] != (v15 + 9) || (*(v15 + 35) & 1) != 0)
        {
LABEL_244:
          v92 = *(v15 - 4);
          if (!v92 || *(v92 + 16) != 8)
          {
            v381 = "wrong initalizer for intrinsic global variable";
            v385[0] = 259;
            llvm::VerifierSupport::CheckFailed(this, &v381);
            if (*this)
            {
              llvm::VerifierSupport::Write(this, v92);
            }

            goto LABEL_216;
          }

          v93 = *(v92 + 20);
          if ((v93 & 0x40000000) != 0)
          {
            v95 = *(v92 - 8);
            v94 = v93 & 0x7FFFFFF;
          }

          else
          {
            v94 = v93 & 0x7FFFFFF;
            v95 = (v92 - 32 * v94);
          }

          if (v94)
          {
            v96 = 32 * v94;
            while (1)
            {
              v97 = llvm::Value::stripPointerCasts(*v95);
              v374 = v97;
              v98 = *(v97 + 16);
              if (v98 > 3 || v98 == 2)
              {
                break;
              }

              if ((*(v97 + 23) & 0x10) == 0)
              {
                v379.__r_.__value_.__r.__words[0] = "members of ";
                v380 = 259;
                if ((*(v15 + 23) & 0x10) != 0)
                {
                  v104 = llvm::Value::getValueName(v15);
                  v105 = *v104;
                  v103 = (v104 + 2);
                  v102 = v105;
                }

                else
                {
                  v102 = 0;
                  v103 = &str_3_24;
                }

                v373 = 261;
                v371 = v103;
                v372 = v102;
                llvm::operator+(&v379, &v371, __p);
                v106 = " must be named";
LABEL_274:
                v368 = v106;
                v370 = 259;
                llvm::operator+(__p, &v368, &v381);
                llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, &v374);
                goto LABEL_216;
              }

              v95 += 4;
              v96 -= 32;
              if (!v96)
              {
                goto LABEL_82;
              }
            }

            v379.__r_.__value_.__r.__words[0] = "invalid ";
            v380 = 259;
            if ((*(v15 + 23) & 0x10) != 0)
            {
              v109 = llvm::Value::getValueName(v15);
              v110 = *v109;
              v108 = (v109 + 2);
              v107 = v110;
            }

            else
            {
              v107 = 0;
              v108 = &str_3_24;
            }

            v373 = 261;
            v371 = v108;
            v372 = v107;
            llvm::operator+(&v379, &v371, __p);
            v106 = " member";
            goto LABEL_274;
          }
        }
      }

      else if ((*(v15 + 5) & 0x7FFFFFF) != 0)
      {
        goto LABEL_244;
      }

LABEL_82:
      if ((*(v15 + 34) & 0x80) != 0)
      {
        v29 = ***v15;
        v381 = v15;
        v30 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v29 + 2552), &v381);
        if (v30[2] == 12)
        {
          v31 = v30[1];
          v32 = *v31;
          v33 = *(v31 + 2);
          if (v32 == 0x7274702E6D766C6CLL && v33 == 1752462689)
          {
            llvm::GlobalPtrAuthInfo::tryAnalyze(v15, &v381);
            if (v382)
            {
              v35 = v381;
              if (v381)
              {
                v381 = &v383;
                v382 = 0x200000000;
                __p[0] = v35;
                v379.__r_.__value_.__r.__words[0] = &v381;
                llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(__p, &v379);
                if (__p[0])
                {
                  (*(*__p[0] + 8))(__p[0]);
                }

                v36 = v381;
                v37 = v382;
                memset(&v379, 0, sizeof(v379));
                if (v382)
                {
                  v38 = v382 - 1;
                  v39 = v381 + 23;
                  v40 = 24 * v382;
                  do
                  {
                    v41 = *v39;
                    if (v41 < 0)
                    {
                      v41 = *(v39 - 15);
                    }

                    v38 += v41;
                    v39 += 24;
                    v40 -= 24;
                  }

                  while (v40);
                  std::string::reserve(&v379, v38);
                  v42 = v36[23];
                  if (v42 >= 0)
                  {
                    v43 = v36;
                  }

                  else
                  {
                    v43 = *v36;
                  }

                  if (v42 >= 0)
                  {
                    v44 = v36[23];
                  }

                  else
                  {
                    v44 = *(v36 + 1);
                  }

                  std::string::append(&v379, v43, v44);
                  if (v37 != 1)
                  {
                    v45 = v36 + 24;
                    v46 = 24 * v37 - 24;
                    do
                    {
                      std::string::append(&v379, "\n", 1uLL);
                      v47 = v45[23];
                      if (v47 >= 0)
                      {
                        v48 = v45;
                      }

                      else
                      {
                        v48 = *v45;
                      }

                      if (v47 >= 0)
                      {
                        v49 = v45[23];
                      }

                      else
                      {
                        v49 = *(v45 + 1);
                      }

                      std::string::append(&v379, v48, v49);
                      v45 += 24;
                      v46 -= 24;
                    }

                    while (v46);
                  }
                }

                llvm::SmallVector<std::string,2u>::~SmallVector(&v381);
                v50 = std::string::insert(&v379, 0, "invalid llvm.ptrauth global: ");
                v51 = v50->__r_.__value_.__r.__words[2];
                *__p = *&v50->__r_.__value_.__l.__data_;
                v376 = v51;
                v50->__r_.__value_.__l.__size_ = 0;
                v50->__r_.__value_.__r.__words[2] = 0;
                v50->__r_.__value_.__r.__words[0] = 0;
                v385[0] = 260;
                v381 = __p;
                v371 = v15;
                llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, &v371);
                if (SHIBYTE(v376) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v379.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v379.__r_.__value_.__l.__data_);
                }

                goto LABEL_216;
              }
            }
          }
        }
      }

      v379.__r_.__value_.__r.__words[0] = &v379.__r_.__value_.__r.__words[2];
      v379.__r_.__value_.__l.__size_ = 0x100000000;
      llvm::Value::getMetadata(v15, 0, &v379);
      if (LODWORD(v379.__r_.__value_.__r.__words[1]))
      {
        v52 = v379.__r_.__value_.__r.__words[0];
        v53 = 8 * LODWORD(v379.__r_.__value_.__r.__words[1]);
        do
        {
          if (**v52 != 7)
          {
            v381 = "!dbg attachment of global variable must be a DIGlobalVariableExpression";
            v385[0] = 259;
            llvm::VerifierSupport::DebugInfoCheckFailed(this, &v381);
            goto LABEL_214;
          }

          v53 -= 8;
        }

        while (v53);
      }

      LODWORD(v379.__r_.__value_.__r.__words[1]) = 0;
      llvm::Value::getMetadata(v15, 28, &v379);
      if (!LODWORD(v379.__r_.__value_.__r.__words[1]))
      {
LABEL_158:
        v71 = v15[3];
        v72 = *(v71 + 8);
        if (v72 == 16)
        {
          v13 = v365;
          if (llvm::StructType::containsScalableVectorType(v15[3]))
          {
            goto LABEL_160;
          }
        }

        else
        {
          v13 = v365;
          if (v72 == 19)
          {
LABEL_160:
            v381 = "Globals cannot contain scalable vectors";
            v385[0] = 259;
            __p[0] = v15;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, __p);
            goto LABEL_214;
          }
        }

        if (v72 == 21)
        {
          getTargetTypeInfo(v71);
          if ((v75 & 2) == 0)
          {
            if ((*(v15 + 23) & 0x10) != 0)
            {
              v88 = llvm::Value::getValueName(v15);
              v89 = *v88;
              v77 = v88 + 2;
              v76 = v89;
            }

            else
            {
              v76 = 0;
              v77 = &str_3_24;
            }

            v378 = 1283;
            __p[0] = "Global @";
            v376 = v77;
            v377 = v76;
            v381 = __p;
            v383 = " has illegal target extension type";
            v385[0] = 770;
            llvm::VerifierSupport::CheckFailed(this, &v381);
            if (*this)
            {
              llvm::VerifierSupport::Write(this, v71);
            }

            goto LABEL_214;
          }
        }

        if (v14 && *(v15 + 16) == 3)
        {
          if ((*(v15 + 5) & 0x7FFFFFF) == 0)
          {
            goto LABEL_213;
          }
        }

        else if (!*(v15 + 16) && v15[9] == (v15 + 9) && (*(v15 + 35) & 1) == 0)
        {
          goto LABEL_213;
        }

LABEL_213:
        goto LABEL_214;
      }

      v54 = v379.__r_.__value_.__r.__words[0];
      while (1)
      {
        v55 = *v54;
        v57 = (*v54 - 16);
        v56 = *v57;
        if ((*v57 & 2) != 0)
        {
          if (!*(v55 - 24))
          {
            goto LABEL_177;
          }

          v58 = *(v55 - 32);
        }

        else
        {
          if ((v56 & 0x3C0) == 0)
          {
            goto LABEL_177;
          }

          v58 = &v57[-((v56 >> 2) & 0xF)];
        }

        v59 = *v58;
        if (*v59 != 1 || (v60 = *(v59 + 128), *(v60 + 16) != 16))
        {
LABEL_177:
          v381 = "bad !vcall_visibility attachment";
          v385[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v381);
          v13 = v365;
          goto LABEL_214;
        }

        LODWORD(__p[1]) = *(v60 + 32);
        if (LODWORD(__p[1]) >= 0x41)
        {
          operator new[]();
        }

        __p[0] = *(v60 + 24);
        if (__p[0] == -1)
        {
LABEL_178:
          v381 = "bad !vcall_visibility attachment";
          v385[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v381);
LABEL_179:
          v13 = v365;
          goto LABEL_214;
        }

        v61 = *v57;
        if ((*v57 & 2) != 0)
        {
          v63 = *(v55 - 24);
          if (v63 != 3)
          {
            goto LABEL_144;
          }

          v62 = *(v55 - 32);
        }

        else
        {
          if ((*v57 & 0x3C0) != 0xC0)
          {
            v63 = (v61 >> 6) & 0xF;
LABEL_144:
            if (v63 != 1)
            {
              goto LABEL_178;
            }

            goto LABEL_157;
          }

          v62 = &v57[-((v61 >> 2) & 0xF)];
        }

        v64 = v62[1];
        if (*v64 != 1)
        {
          goto LABEL_178;
        }

        v65 = *(v64 + 128);
        if (*(v65 + 16) != 16)
        {
          goto LABEL_178;
        }

        LODWORD(v372) = *(v65 + 32);
        v366 = v372;
        if (v372 >= 0x41)
        {
          operator new[]();
        }

        v66 = *(v65 + 24);
        v371 = v66;
        if (v66 == -1)
        {
          break;
        }

        v67 = (*v57 & 2) != 0 ? *(v55 - 32) : &v57[-((*v57 >> 2) & 0xF)];
        v68 = v67[2];
        if (*v68 != 1)
        {
          break;
        }

        v69 = *(v68 + 128);
        if (*(v69 + 16) != 16)
        {
          v381 = "bad !vcall_visibility attachment";
          v385[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v381);
          if (v366 >= 0x41 && v66 != 0)
          {
            MEMORY[0x277C69E10](v66, 0x1000C8000313F17);
          }

          goto LABEL_179;
        }

        v369 = *(v69 + 32);
        if (v369 >= 0x41)
        {
          operator new[]();
        }

        v70 = *(v69 + 24);
        v368 = v70;
        if (v70 == -1 || v66 > v70)
        {
          v381 = "bad !vcall_visibility attachment";
          v385[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v381);
          v13 = v365;
          if (v366 >= 0x41)
          {
            v91 = v371;
            if (v371)
            {
LABEL_181:
              MEMORY[0x277C69E10](v91, 0x1000C8000313F17);
            }
          }

          goto LABEL_214;
        }

LABEL_157:
        if (++v54 == (v379.__r_.__value_.__r.__words[0] + 8 * LODWORD(v379.__r_.__value_.__r.__words[1])))
        {
          goto LABEL_158;
        }
      }

      v381 = "bad !vcall_visibility attachment";
      v385[0] = 259;
      llvm::VerifierSupport::CheckFailed(this, &v381);
      v13 = v365;
      if (v366 >= 0x41 && v66 != 0)
      {
        v91 = v66;
        goto LABEL_181;
      }

LABEL_214:
      if (v379.__r_.__value_.__l.__data_ != &v379.__r_.__value_.__r.__words[2])
      {
        free(v379.__r_.__value_.__l.__data_);
      }

LABEL_216:
      v14 = *(v14 + 8);
      if (v14 == v13)
      {
        v12 = *(this + 1);
        break;
      }
    }
  }

  v111 = v12 + 40;
  v112 = *(v12 + 48);
  if (v112 == v12 + 40)
  {
    goto LABEL_309;
  }

  do
  {
    if (v112)
    {
      v113 = (v112 - 48);
    }

    else
    {
      v113 = 0;
    }

    v114 = v113[8];
    v115 = (v114 & 0xFu) > 8 || ((1 << (v114 & 0xF)) & 0x181) == 0;
    v116 = v114 & 0xE;
    if (v115 && v116 != 2 && v116 != 4 && (v113[8] & 0xF) != 1)
    {
      v123 = "Alias should have private, internal, linkonce, weak, linkonce_odr, weak_odr, external, or available_externally linkage!";
LABEL_297:
      v381 = v123;
      goto LABEL_298;
    }

    v120 = *(v113 - 4);
    if (!v120)
    {
      v123 = "Aliasee cannot be NULL!";
      goto LABEL_297;
    }

    if (*v113 != *v120)
    {
      v381 = "Alias and aliasee types should match!";
LABEL_298:
      v385[0] = 259;
      __p[0] = v113;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, __p);
      goto LABEL_299;
    }

    v121 = *(v120 + 16);
    if (v121 >= 4 && v121 != 5)
    {
      v123 = "Aliasee should be either GlobalValue or ConstantExpr";
      goto LABEL_297;
    }

    v381 = v385;
    v382 = v385;
    v383 = 4;
    v384 = 0;
    llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert(__p, &v381, v113);
    if (v382 != v381)
    {
      free(v382);
    }

LABEL_299:
    v112 = *(v112 + 8);
  }

  while (v112 != v111);
  v12 = *(this + 1);
LABEL_309:
  v124 = v12 + 56;
  v125 = *(v12 + 64);
  if (v125 != v12 + 56)
  {
    v126 = "IFunc should have private, internal, linkonce, weak, linkonce_odr, weak_odr, or external linkage!";
    v127 = "IFunc resolver must be a definition";
    while (1)
    {
      if (v125)
      {
        v128 = v125 - 56;
      }

      else
      {
        v128 = 0;
      }

      v129 = *(v128 + 32) & 0xF;
      v130 = v129 > 8;
      v131 = (1 << v129) & 0x1BD;
      if (v130 || v131 == 0)
      {
        v381 = v126;
        goto LABEL_333;
      }

      v133 = llvm::Value::stripPointerCastsAndAliases(*(v128 - 32));
      if (v133)
      {
        v134 = *(v133 + 16) == 0;
      }

      else
      {
        v134 = 0;
      }

      if (!v134)
      {
        v381 = "IFunc must have a Function resolver";
LABEL_333:
        v385[0] = 259;
        __p[0] = v128;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, __p);
        goto LABEL_334;
      }

      if ((*(v133 + 8) & 0xF) == 1 || (*(v133 + 8) & 0x1000000) == 0 && *(v133 + 9) == (v133 + 72))
      {
        v381 = v127;
        goto LABEL_333;
      }

      if (*(**(*(v133 + 3) + 16) + 8) != 15)
      {
        break;
      }

      v135 = v127;
      v136 = v126;
      v137 = **(v128 - 32);
      v138 = llvm::PointerType::get(*(v128 + 24), 0);
      v139 = llvm::FunctionType::get(v138, 0, 0, 0);
      v19 = v137 == llvm::PointerType::get(v139, (*(*v128 + 8) >> 8));
      v126 = v136;
      v127 = v135;
      if (!v19)
      {
        v140 = "IFunc resolver has incorrect type";
LABEL_332:
        v381 = v140;
        goto LABEL_333;
      }

LABEL_334:
      v125 = *(v125 + 8);
      if (v125 == v124)
      {
        v12 = *(this + 1);
        goto LABEL_336;
      }
    }

    v140 = "IFunc resolver must return a pointer";
    goto LABEL_332;
  }

LABEL_336:
  v141 = v12 + 72;
  v142 = *(v12 + 80);
  if (v142 == v12 + 72)
  {
    goto LABEL_434;
  }

  while (2)
  {
    v143 = (v142 + 16);
    v144 = *(v142 + 39);
    if (v144 >= 0)
    {
      v145 = (v142 + 16);
    }

    else
    {
      v145 = *(v142 + 16);
    }

    v146 = *(v142 + 24);
    if (v144 >= 0)
    {
      v147 = *(v142 + 39);
    }

    else
    {
      v147 = *(v142 + 24);
    }

    if (v147 >= 9 && *v145 == 0x6762642E6D766C6CLL && *(v145 + 8) == 46)
    {
      if (v147 != 11 || ((v190 = *v145, v191 = *(v145 + 3), v190 == 0x6762642E6D766C6CLL) ? (v192 = v191 == 0x75632E6762642E6DLL) : (v192 = 0), !v192))
      {
        v381 = "unrecognized named metadata node in the llvm.dbg namespace";
        v385[0] = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed(this, &v381);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, v142);
        }

        goto LABEL_432;
      }
    }

    v149 = *(*(v142 + 48) + 8);
    if (v149)
    {
      v150 = 0;
      v151 = 8 * v149;
      while (1)
      {
        v152 = *(**(v142 + 48) + v150);
        v153 = *(v142 + 39);
        v154 = v153;
        if ((v153 & 0x80u) != 0)
        {
          v153 = *(v142 + 24);
        }

        if (v153 == 11 && (v154 >= 0 ? (v155 = (v142 + 16)) : (v155 = *v143), (v156 = *v155, v157 = *(v155 + 3), v156 == 0x6762642E6D766C6CLL) ? (v158 = v157 == 0x75632E6762642E6DLL) : (v158 = 0), v158))
        {
          if (!v152 || *v152 != 16)
          {
            v381 = "invalid compile unit";
            v385[0] = 259;
            llvm::VerifierSupport::DebugInfoCheckFailed(this, &v381);
            if (*this)
            {
              llvm::VerifierSupport::Write(this, v142);
              llvm::VerifierSupport::Write(this, v152);
            }

            goto LABEL_432;
          }
        }

        else if (!v152)
        {
          goto LABEL_365;
        }

LABEL_365:
        v150 += 8;
        if (v151 == v150)
        {
          v144 = *(v142 + 39);
          v146 = *(v142 + 24);
          break;
        }
      }
    }

    v159 = v144;
    if ((v144 & 0x80u) != 0)
    {
      v144 = v146;
    }

    if (v144 == 21)
    {
      v160 = *v143;
      if (v159 >= 0)
      {
        v160 = (v142 + 16);
      }

      v161 = *v160;
      v162 = v160[1];
      v163 = *(v160 + 13);
      v164 = v161 == 0x6573752E6D766C6CLL && v162 == 0x7469646E6F632E64;
      if (v164 && v163 == 0x6C616E6F69746964)
      {
        v166 = *(*(v142 + 48) + 8);
        if (v166)
        {
          v167 = 0;
          while (1)
          {
            v168 = *(**(v142 + 48) + 8 * v167);
            v169 = v168 - 16;
            v170 = *(v168 - 16);
            if ((v170 & 2) != 0)
            {
              if (*(v168 - 24) != 3)
              {
                break;
              }

              v171 = *(v168 - 32);
            }

            else
            {
              if ((*(v168 - 16) & 0x3C0) != 0xC0)
              {
                break;
              }

              v171 = (v169 - 8 * ((v170 >> 2) & 0xF));
            }

            v172 = *v171;
            if (v172)
            {
              if (*v172 != 1 || *(*(v172 + 128) + 16) >= 4u)
              {
                break;
              }
            }

            v173 = (v170 & 2) != 0 ? *(v168 - 32) : v169 - 8 * ((v170 >> 2) & 0xF);
            v174 = *(*(v173 + 8) + 128);
            v175 = *(v174 + 32);
            v176 = v175 > 0x40 ? **(v174 + 24) : (*(v174 + 24) << -v175) >> -v175;
            if (v176 >= 2)
            {
              break;
            }

            v177 = (v170 & 2) != 0 ? *(v168 - 32) : v169 - 8 * ((v170 >> 2) & 0xF);
            v178 = *(v177 + 16);
            v179 = llvm::MDNode::classof(v178);
            if (!v178 || (v179 & 1) == 0)
            {
              break;
            }

            v180 = *(v178 - 2);
            if ((v180 & 2) != 0)
            {
              v184 = *(v178 - 6);
              if (v184)
              {
                v182 = *(v178 - 4);
                v183 = &v182[v184];
                goto LABEL_408;
              }

              break;
            }

            if ((v180 & 0x3C0) == 0)
            {
              break;
            }

            v181 = (v180 >> 6) & 0xF;
            if (v181)
            {
              v182 = &v178[-8 * ((v180 >> 2) & 0xF) - 16];
              v183 = &v182[v181];
LABEL_408:
              do
              {
                v185 = *v182;
                if (*v182)
                {
                  v186 = *v185 == 1 ? *(v185 + 128) : 0;
                  v187 = llvm::Value::stripPointerCasts(v186);
                  v188 = *(v187 + 16);
                  if ((!v187 || v188 - 13 <= 0xFFFFFFFD) && v188 >= 4 && v188 != 19)
                  {
                    goto LABEL_431;
                  }
                }

                ++v182;
              }

              while (v182 != v183);
            }

            if (++v167 == v166)
            {
              goto LABEL_432;
            }
          }

LABEL_431:
          v381 = "invalid llvm.used.conditional member";
          v385[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v381);
        }
      }
    }

LABEL_432:
    v142 = *(v142 + 8);
    if (v142 != v141)
    {
      continue;
    }

    break;
  }

  v12 = *(this + 1);
LABEL_434:
  v193 = *(v12 + 128);
  if (v193)
  {
      ;
    }
  }

  else
  {
    j = *(v12 + 120);
  }

  v196 = *(v12 + 120) + 8 * v193;
  if (j != v196)
  {
    do
    {
      if (*(this + 43) == 1)
      {
        v197 = llvm::ValueSymbolTable::lookup(*(*(this + 1) + 112), (*(*j + 8) + 72), **(*j + 8));
        __p[0] = v197;
        if (v197)
        {
          if ((v197[8] & 0xF) == 8)
          {
            v381 = "comdat global value has private linkage";
            v385[0] = 259;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v381, __p);
          }
        }
      }

      do
      {
        v199 = j[1];
        ++j;
        v198 = v199;
        if (v199)
        {
          v200 = v198 == -8;
        }

        else
        {
          v200 = 1;
        }
      }

      while (v200);
    }

    while (j != v196);
    v12 = *(this + 1);
  }

  v381 = "llvm.module.flags";
  v385[0] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v12, &v381);
  if (NamedMetadata)
  {
    v202 = NamedMetadata;
    memset(&v379, 0, 20);
    v381 = &v383;
    v382 = 0x1000000000;
    v203 = *(*(NamedMetadata + 48) + 8);
    if (!v203)
    {
LABEL_652:
      MEMORY[0x277C69E30](v379.__r_.__value_.__r.__words[0], 8);
      goto LABEL_653;
    }

    v367 = 0;
    v204 = 0;
    while (2)
    {
      v205 = *(**(v202 + 48) + 8 * v204);
      v371 = v205;
      v207 = (v205 - 2);
      v206 = *(v205 - 2);
      if ((v206 & 2) == 0)
      {
        if ((*(v205 - 2) & 0x3C0) == 0xC0)
        {
          LODWORD(v368) = 0;
          v208 = &v207[-((v206 >> 2) & 0xF)];
          goto LABEL_462;
        }

LABEL_465:
        __p[0] = "incorrect number of operands in module flag";
        v378 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, __p, &v371);
LABEL_485:
        if (++v204 == v203)
        {
          v278 = v381;
          if (v382)
          {
            v279 = v379.__r_.__value_.__r.__words[0];
            v280 = v379.__r_.__value_.__r.__words[2];
            v281 = 8 * v382;
            while (1)
            {
              v282 = *(*v278 - 16);
              if ((v282 & 2) != 0)
              {
                v283 = *(*v278 - 32);
              }

              else
              {
                v283 = *v278 - 16 - 8 * ((v282 >> 2) & 0xF);
              }

              v284 = *(v283 + 8);
              v371 = *v283;
              __p[0] = 0;
              if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v279, v280, v371, __p) & 1) != 0 && (v285 = *(__p[0] + 1)) != 0)
              {
                v286 = *(v285 - 16);
                if ((v286 & 2) != 0)
                {
                  v287 = *(v285 - 32);
                }

                else
                {
                  v287 = v285 - 16 - 8 * ((v286 >> 2) & 0xF);
                }

                if (*(v287 + 16) == v284)
                {
                  goto LABEL_648;
                }

                __p[0] = "invalid requirement on flag, flag does not have the required value";
              }

              else
              {
                __p[0] = "invalid requirement on flag, flag is not present in module";
              }

              v378 = 259;
              llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, __p, &v371);
LABEL_648:
              ++v278;
              v281 -= 8;
              if (!v281)
              {
                v278 = v381;
                break;
              }
            }
          }

          if (v278 != &v383)
          {
            free(v278);
          }

          goto LABEL_652;
        }

        continue;
      }

      break;
    }

    if (*(v205 - 6) != 3)
    {
      goto LABEL_465;
    }

    LODWORD(v368) = 0;
    v208 = *(v205 - 4);
LABEL_462:
    isValidModFlagBehavior = llvm::Module::isValidModFlagBehavior(*v208, &v368);
    v210 = *v207;
    if ((isValidModFlagBehavior & 1) == 0)
    {
      if ((v210 & 2) != 0)
      {
        v212 = *(v205 - 4);
      }

      else
      {
        v212 = &v207[-((v210 >> 2) & 0xF)];
      }

      v215 = *v212;
      if (v215 && *v215 == 1 && *(*(v215 + 128) + 16) == 16)
      {
        v216 = "invalid behavior operand in module flag (unexpected constant)";
      }

      else
      {
        v216 = "invalid behavior operand in module flag (expected constant integer)";
      }

      __p[0] = v216;
      v378 = 259;
      if ((v210 & 2) != 0)
      {
        v217 = *(v205 - 4);
      }

      else
      {
        v217 = &v207[-((v210 >> 2) & 0xF)];
      }

      goto LABEL_484;
    }

    if ((v210 & 2) != 0)
    {
      v211 = *(v205 - 4);
    }

    else
    {
      v211 = &v207[-((v210 >> 2) & 0xF)];
    }

    v213 = v211[1];
    if (!v213 || *v213)
    {
      __p[0] = "invalid ID operand in module flag (expected metadata string)";
      v378 = 259;
      if ((v210 & 2) != 0)
      {
        v214 = *(v205 - 4);
      }

      else
      {
        v214 = &v207[-((v210 >> 2) & 0xF)];
      }

      v217 = (v214 + 1);
      goto LABEL_484;
    }

    if (v368 <= 6)
    {
      if ((v368 - 5) < 2)
      {
        if ((v210 & 2) != 0)
        {
          v218 = *(v205 - 4);
        }

        else
        {
          v218 = &v207[-((v210 >> 2) & 0xF)];
        }

        if (llvm::MDNode::classof(v218[2]))
        {
          goto LABEL_500;
        }

        __p[0] = "invalid value for 'append'-type module flag (expected a metadata node)";
        v378 = 259;
        v210 = *v207;
        if ((*v207 & 2) != 0)
        {
LABEL_518:
          v228 = *(v205 - 4);
LABEL_547:
          v217 = (v228 + 2);
LABEL_484:
          llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, __p, v217);
          goto LABEL_485;
        }

LABEL_546:
        v228 = &v207[-((v210 >> 2) & 0xF)];
        goto LABEL_547;
      }

      if (v368 != 3)
      {
        goto LABEL_500;
      }

      if ((v210 & 2) != 0)
      {
        v220 = *(v205 - 4);
      }

      else
      {
        v220 = &v207[-((v210 >> 2) & 0xF)];
      }

      v232 = v220[2];
      v233 = llvm::MDNode::classof(v232);
      if (v232)
      {
        v234 = v233 == 0;
      }

      else
      {
        v234 = 1;
      }

      if (v234)
      {
        goto LABEL_532;
      }

      v235 = *(v232 - 2);
      if ((v235 & 2) == 0)
      {
        if ((*(v232 - 2) & 0x3C0) == 0x80)
        {
          v236 = &v232[-8 * ((v235 >> 2) & 0xF) - 16];
          goto LABEL_570;
        }

LABEL_532:
        __p[0] = "invalid value for 'require' module flag (expected metadata pair)";
        v378 = 259;
        if ((*v207 & 2) != 0)
        {
          v228 = *(v205 - 4);
        }

        else
        {
          v228 = &v207[-((*v207 >> 2) & 0xF)];
        }

        goto LABEL_547;
      }

      if (*(v232 - 6) != 2)
      {
        goto LABEL_532;
      }

      v236 = *(v232 - 4);
LABEL_570:
      if (**v236)
      {
        __p[0] = "invalid value for 'require' module flag (first value operand should be a string)";
        v378 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, __p, v236);
        goto LABEL_485;
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v381, v232);
LABEL_508:
      v223 = *(v213 + 8);
      v224 = v223 + 3;
      v225 = *v223;
      if (*v223 == 14)
      {
        if (*v224 != 0x4F2072656B6E694CLL || *(v223 + 30) != 0x736E6F6974704F20)
        {
          goto LABEL_485;
        }

        v243 = *(this + 1);
        __p[0] = "llvm.linker.options";
        v378 = 259;
        if (!llvm::Module::getNamedMetadata(v243, __p))
        {
          __p[0] = "'Linker Options' named metadata no longer supported";
          v378 = 259;
          llvm::VerifierSupport::CheckFailed(this, __p);
          goto LABEL_485;
        }

        v223 = *(v213 + 8);
        v225 = *v223;
      }

      else if (v225 == 10)
      {
        v226 = *v224 == 0x69735F7261686377 && *(v223 + 16) == 25978;
        if (!v226 || ((*v207 & 2) != 0 ? (v227 = *(v205 - 4)) : (v227 = &v207[-((*v207 >> 2) & 0xF)]), (v250 = v227[2]) != 0 && *v250 == 1 && *(*(v250 + 128) + 16) == 16))
        {
LABEL_577:
          v251 = *v224;
          v252 = *(v224 + 4);
          if (v251 != 0x69666F7250204743 || v252 != 25964)
          {
            goto LABEL_485;
          }

          v254 = (*v207 & 2) != 0 ? *(v205 - 4) : &v207[-((*v207 >> 2) & 0xF)];
          v256 = *(v254 + 2);
          v257 = *(v256 - 16);
          if ((v257 & 2) != 0)
          {
            v258 = *(v256 - 32);
            v259 = *(v256 - 24);
          }

          else
          {
            v258 = (v256 - 16 - 8 * ((v257 >> 2) & 0xF));
            v259 = (v257 >> 6) & 0xF;
          }

          if (!v259)
          {
            goto LABEL_485;
          }

          v260 = 8 * v259;
          while (2)
          {
            v261 = *v258;
            if (*v258 && llvm::MDNode::classof(*v258))
            {
              v263 = (v261 - 16);
              v262 = *(v261 - 16);
              if ((v262 & 2) != 0)
              {
                if (*(v261 - 24) == 3)
                {
                  v264 = *(v261 - 32);
                  goto LABEL_598;
                }
              }

              else if ((*(v261 - 16) & 0x3C0) == 0xC0)
              {
                v264 = &v263[-((v262 >> 2) & 0xF)];
LABEL_598:
                v265 = *v264;
                if (*v264 && (*v265 - 3 < 0xFFFFFFFE || *(llvm::Value::stripPointerCasts(v265[16]) + 16)))
                {
                  __p[0] = "expected a Function or null";
                  v378 = 259;
                  llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, __p, v264);
                }

                if ((*v263 & 2) != 0)
                {
                  v266 = *(v261 - 32);
                }

                else
                {
                  v266 = &v263[-((*v263 >> 2) & 0xF)];
                }

                v271 = v266[1];
                v270 = (v266 + 1);
                v269 = v271;
                if (v271 && (*v269 - 3 < 0xFFFFFFFE || *(llvm::Value::stripPointerCasts(v269[16]) + 16)))
                {
                  __p[0] = "expected a Function or null";
                  v378 = 259;
                  llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, __p, v270);
                }

                v272 = *v263;
                if ((*v263 & 2) != 0)
                {
                  v273 = *(v261 - 32);
                }

                else
                {
                  v273 = &v263[-((v272 >> 2) & 0xF)];
                }

                v274 = v273[2];
                if (!v274 || *v274 != 1 || *(**(v274 + 128) + 8) != 13)
                {
                  __p[0] = "expected an integer constant";
                  v378 = 259;
                  if ((v272 & 2) != 0)
                  {
                    v275 = *(v261 - 32);
                  }

                  else
                  {
                    v275 = &v263[-((v272 >> 2) & 0xF)];
                  }

                  v268 = (v275 + 2);
                  v267 = this;
LABEL_605:
                  llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(v267, __p, v268);
                }

                ++v258;
                v260 -= 8;
                if (!v260)
                {
                  goto LABEL_485;
                }

                continue;
              }
            }

            break;
          }

          __p[0] = "expected a MDNode triple";
          v378 = 259;
          v267 = this;
          v268 = v258;
          goto LABEL_605;
        }

        v255 = "wchar_size metadata requires constant integer argument";
LABEL_630:
        __p[0] = v255;
        v378 = 259;
        llvm::VerifierSupport::CheckFailed(this, __p);
        goto LABEL_485;
      }

      v224 = v223 + 3;
      if (v225 == 10)
      {
        goto LABEL_577;
      }

      if (v225 != 21)
      {
        goto LABEL_485;
      }

      v244 = *v224;
      v245 = v223[4];
      v246 = *(v224 + 13);
      v247 = v244 == 0x6369746E616D6553 && v245 == 0x736F707265746E49;
      if (!v247 || v246 != 0x6E6F697469736F70)
      {
        goto LABEL_485;
      }

      v249 = (*v207 & 2) != 0 ? *(v205 - 4) : &v207[-((*v207 >> 2) & 0xF)];
      v276 = *(v249 + 2);
      if (v276)
      {
        if (*v276 == 1 && *(*(v276 + 128) + 16) == 16)
        {
          goto LABEL_485;
        }
      }

      v255 = "SemanticInterposition metadata requires constant integer argument";
      goto LABEL_630;
    }

    if (v368 == 7)
    {
      if ((v210 & 2) != 0)
      {
        v229 = *(v205 - 4);
      }

      else
      {
        v229 = &v207[-((v210 >> 2) & 0xF)];
      }

      v230 = v229[2];
      if (!v230 || *v230 != 1 || *(*(v230 + 128) + 16) != 16)
      {
        v231 = "invalid value for 'max' module flag (expected constant integer)";
        goto LABEL_545;
      }
    }

    else if (v368 == 8)
    {
      v219 = (v210 & 2) != 0 ? *(v205 - 4) : &v207[-((v210 >> 2) & 0xF)];
      v237 = *(v219 + 2);
      if (!v237)
      {
        goto LABEL_544;
      }

      if (*v237 != 1)
      {
        goto LABEL_544;
      }

      v238 = *(v237 + 128);
      if (*(v238 + 16) != 16)
      {
        goto LABEL_544;
      }

      v239 = (v238 + 24);
      v240 = *(v238 + 32);
      v241 = v240 - 1;
      if (v240 >= 0x41)
      {
        v239 = (*v239 + 8 * (v241 >> 6));
      }

      if ((*v239 >> v241))
      {
LABEL_544:
        v231 = "invalid value for 'min' module flag (expected constant non-negative integer)";
LABEL_545:
        __p[0] = v231;
        v378 = 259;
        if ((v210 & 2) != 0)
        {
          goto LABEL_518;
        }

        goto LABEL_546;
      }
    }

LABEL_500:
    __p[0] = 0;
    v221 = v379.__r_.__value_.__r.__words[2];
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v367, v379.__r_.__value_.__r.__words[2], v213, __p))
    {
      __p[0] = "module flag identifiers must be unique (or of 'require' type)";
      v378 = 259;
      llvm::VerifierSupport::CheckFailed(this, __p);
      if (*this)
      {
        llvm::VerifierSupport::Write(this, v213);
      }

      goto LABEL_485;
    }

    if (4 * LODWORD(v379.__r_.__value_.__r.__words[1]) + 4 >= 3 * v221)
    {
      v277 = 2 * v221;
    }

    else
    {
      if (v221 + ~LODWORD(v379.__r_.__value_.__r.__words[1]) - HIDWORD(v379.__r_.__value_.__r.__words[1]) > v221 >> 3)
      {
LABEL_505:
        v222 = __p[0];
        ++LODWORD(v379.__r_.__value_.__r.__words[1]);
        if (*__p[0] != -4096)
        {
          --HIDWORD(v379.__r_.__value_.__r.__words[1]);
        }

        *__p[0] = v213;
        v222[1] = v205;
        goto LABEL_508;
      }

      v277 = v221;
    }

    llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(&v379, v277);
    __p[0] = 0;
    v367 = v379.__r_.__value_.__r.__words[0];
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v379.__r_.__value_.__l.__data_, v379.__r_.__value_.__r.__words[2], v213, __p);
    goto LABEL_505;
  }

LABEL_653:
  v288 = *(this + 1);
  v381 = "llvm.ident";
  v385[0] = 259;
  v289 = llvm::Module::getNamedMetadata(v288, &v381);
  if (v289)
  {
    v290 = *(v289 + 48);
    v291 = *(v290 + 8);
    if (v291)
    {
      v292 = *v290;
      while (1)
      {
        v293 = *v292;
        __p[0] = v293;
        v294 = v293 - 16;
        v295 = *(v293 - 2);
        if ((v295 & 2) != 0)
        {
          if (*(v293 - 6) != 1)
          {
LABEL_667:
            v381 = "incorrect number of operands in llvm.ident metadata";
            v385[0] = 259;
            llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v381, __p);
            goto LABEL_670;
          }

          v296 = *(v293 - 4);
        }

        else
        {
          if ((*(v293 - 2) & 0x3C0) != 0x40)
          {
            goto LABEL_667;
          }

          v296 = &v294[-8 * ((v295 >> 2) & 0xF)];
        }

        v297 = *v296;
        if (!v297 || *v297)
        {
          break;
        }

        ++v292;
        if (!--v291)
        {
          goto LABEL_670;
        }
      }

      v381 = "invalid value for llvm.ident metadata entry operand(the operand should be a string)";
      v385[0] = 259;
      if ((v295 & 2) != 0)
      {
        v298 = *(v293 - 4);
      }

      else
      {
        v298 = &v294[-8 * ((v295 >> 2) & 0xF)];
      }

      llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v381, v298);
    }
  }

LABEL_670:
  v299 = *(this + 1);
  v381 = "llvm.commandline";
  v385[0] = 259;
  v300 = llvm::Module::getNamedMetadata(v299, &v381);
  if (v300)
  {
    v301 = *(v300 + 48);
    v302 = *(v301 + 8);
    if (v302)
    {
      v303 = *v301;
      while (1)
      {
        v304 = *v303;
        __p[0] = v304;
        v305 = v304 - 16;
        v306 = *(v304 - 2);
        if ((v306 & 2) != 0)
        {
          if (*(v304 - 6) != 1)
          {
LABEL_684:
            v381 = "incorrect number of operands in llvm.commandline metadata";
            v385[0] = 259;
            llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v381, __p);
            goto LABEL_687;
          }

          v307 = *(v304 - 4);
        }

        else
        {
          if ((*(v304 - 2) & 0x3C0) != 0x40)
          {
            goto LABEL_684;
          }

          v307 = &v305[-8 * ((v306 >> 2) & 0xF)];
        }

        v308 = *v307;
        if (!v308 || *v308)
        {
          break;
        }

        ++v303;
        if (!--v302)
        {
          goto LABEL_687;
        }
      }

      v381 = "invalid value for llvm.commandline metadata entry operand(the operand should be a string)";
      v385[0] = 259;
      if ((v306 & 2) != 0)
      {
        v309 = *(v304 - 4);
      }

      else
      {
        v309 = &v305[-8 * ((v306 >> 2) & 0xF)];
      }

      llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v381, v309);
    }
  }

LABEL_687:
  v310 = *(this + 1);
  if ((*(**v310 + 1224) & 1) == 0)
  {
    v381 = "llvm.dbg.cu";
    v385[0] = 259;
    v311 = llvm::Module::getNamedMetadata(v310, &v381);
    v381 = v385;
    v382 = v385;
    v383 = 2;
    v384 = 0;
    if (v311)
    {
      v312 = v311;
      v313 = *(*(v311 + 48) + 8);
      if (v313)
      {
        v314 = 0;
        v315 = 8 * v313;
        do
        {
          llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v381, *(**(v312 + 48) + v314), __p);
          v314 += 8;
        }

        while (v315 != v314);
      }
    }

    v316 = *(this + 94);
    v317 = 16;
    if (v316 == *(this + 93))
    {
      v317 = 20;
    }

    v318 = *(this + v317 + 744);
    if (v318)
    {
      v319 = 8 * v318;
      v320 = *(this + 94);
      while (*v320 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v320;
        v319 -= 8;
        if (!v319)
        {
          goto LABEL_709;
        }
      }
    }

    else
    {
      v320 = *(this + 94);
    }

    v321 = (v316 + 8 * v318);
    if (v320 != v321)
    {
      v322 = *v320;
LABEL_702:
      v379.__r_.__value_.__r.__words[0] = v322;
      imp = llvm::SmallPtrSetImplBase::find_imp(&v381, v322);
      if (v382 == v381)
      {
        v324 = (&v383 + 4);
      }

      else
      {
        v324 = &v383;
      }

      if (imp == (v382 + 8 * *v324))
      {
        __p[0] = "DICompileUnit not listed in llvm.dbg.cu";
        v378 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(this, __p, &v379);
LABEL_710:
        if (v382 != v381)
        {
          free(v382);
        }

        goto LABEL_712;
      }

      while (++v320 != v321)
      {
        v322 = *v320;
        if (*v320 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v320 != v321)
          {
            goto LABEL_702;
          }

          break;
        }
      }
    }

LABEL_709:
    llvm::SmallPtrSetImplBase::clear((this + 744));
    goto LABEL_710;
  }

LABEL_712:
  v325 = *(this + 306);
  if (v325 >= 2)
  {
    v326 = *(this + 152);
    v327 = *v326;
    v328 = 8 * v325;
    v329 = v326 + 1;
    v330 = *(*v326 + 9);
    v331 = v328 - 8;
    while (1)
    {
      v332 = *v329;
      if (((*(*v329 + 9) ^ v330) & 0x3FF0) != 0)
      {
        break;
      }

      ++v329;
      v331 -= 8;
      if (!v331)
      {
        goto LABEL_721;
      }
    }

    v381 = "All llvm.experimental.deoptimize declarations must have the same calling convention";
    v385[0] = 259;
    llvm::VerifierSupport::CheckFailed(this, &v381);
    if (*this)
    {
      if (v327)
      {
        llvm::VerifierSupport::Write(this, v327);
      }

      llvm::VerifierSupport::Write(this, v332);
    }
  }

LABEL_721:
  v333 = (this + 720);
  v334 = *(this + 182);
  if (v334)
  {
    v335 = *(this + 184);
    if (v335 > 4 * v334 && v335 >= 0x41)
    {
      v336 = 1 << (33 - __clz(v334 - 1));
      if (v336 <= 64)
      {
        v337 = 64;
      }

      else
      {
        v337 = v336;
      }

LABEL_730:
      if (v337 == v335)
      {
        v338 = 0;
        *(this + 91) = 0;
        v339 = v335 + 0xFFFFFFFFFFFFFFFLL;
        v340 = v339 & 0xFFFFFFFFFFFFFFFLL;
        v341 = (v339 & 0xFFFFFFFFFFFFFFFLL) - (v339 & 1) + 2;
        v342 = vdupq_n_s64(v340);
        v343 = (*(this + 90) + 16);
        do
        {
          v344 = vmovn_s64(vcgeq_u64(v342, vorrq_s8(vdupq_n_s64(v338), xmmword_2750C1210)));
          if (v344.i8[0])
          {
            *(v343 - 2) = -4096;
          }

          if (v344.i8[4])
          {
            *v343 = -4096;
          }

          v338 += 2;
          v343 += 4;
        }

        while (v341 != v338);
      }

      else
      {
        MEMORY[0x277C69E30](*v333, 8);
        if (v337)
        {
          v354 = (4 * v337 / 3u + 1) | ((4 * v337 / 3u + 1) >> 1);
          v355 = v354 | (v354 >> 2) | ((v354 | (v354 >> 2)) >> 4);
          LODWORD(v355) = (((v355 | (v355 >> 8)) >> 16) | v355 | (v355 >> 8)) + 1;
          *(this + 184) = v355;
          v356 = operator new(16 * v355, 8uLL);
          *(this + 90) = v356;
          *(this + 91) = 0;
          v357 = *(this + 184);
          if (v357)
          {
            v358 = 0;
            v359 = v357 + 0xFFFFFFFFFFFFFFFLL;
            v360 = v359 & 0xFFFFFFFFFFFFFFFLL;
            v361 = (v359 & 0xFFFFFFFFFFFFFFFLL) - (v359 & 1) + 2;
            v362 = vdupq_n_s64(v360);
            v363 = v356 + 16;
            do
            {
              v364 = vmovn_s64(vcgeq_u64(v362, vorrq_s8(vdupq_n_s64(v358), xmmword_2750C1210)));
              if (v364.i8[0])
              {
                *(v363 - 2) = -4096;
              }

              if (v364.i8[4])
              {
                *v363 = -4096;
              }

              v358 += 2;
              v363 += 4;
            }

            while (v361 != v358);
          }
        }

        else
        {
          *v333 = 0;
          *(this + 91) = 0;
          *(this + 184) = 0;
        }
      }

      goto LABEL_746;
    }
  }

  else
  {
    if (!*(this + 183))
    {
      goto LABEL_746;
    }

    v335 = *(this + 184);
    if (v335 > 0x40)
    {
      v337 = 0;
      goto LABEL_730;
    }
  }

  if (v335)
  {
    v345 = 0;
    v346 = v335 + 0xFFFFFFFFFFFFFFFLL;
    v347 = v346 & 0xFFFFFFFFFFFFFFFLL;
    v348 = (v346 & 0xFFFFFFFFFFFFFFFLL) - (v346 & 1) + 2;
    v349 = vdupq_n_s64(v347);
    v350 = (*v333 + 16);
    do
    {
      v351 = vmovn_s64(vcgeq_u64(v349, vorrq_s8(vdupq_n_s64(v345), xmmword_2750C1210)));
      if (v351.i8[0])
      {
        *(v350 - 2) = -4096;
      }

      if (v351.i8[4])
      {
        *v350 = -4096;
      }

      v345 += 2;
      v350 += 4;
    }

    while (v348 != v345);
  }

  *(this + 91) = 0;
LABEL_746:
  v352 = *MEMORY[0x277D85DE8];
  return (*(this + 192) & 1) == 0;
}

unint64_t llvm::TBAAVerifier::verifyTBAABaseNode(llvm::TBAAVerifier *this, llvm::Type **a2, const llvm::MDNode *a3, int a4)
{
  v47 = a3;
  v9 = (a3 - 16);
  v8 = *(a3 - 2);
  if ((v8 & 2) != 0)
  {
    v10 = *(a3 - 6);
  }

  else
  {
    v10 = (v8 >> 6) & 0xF;
  }

  if (v10 <= 1)
  {
    v49 = a2;
    v11 = *this;
    if (*this)
    {
      v53[0] = "Base nodes must have at least two operands";
      v54 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v11, v53, &v49, &v47);
    }

    LODWORD(v12) = 0;
    v13 = 0xFFFFFFFF00000000;
    v14 = 1;
    return v13 | v14 | v12 & 0xFFFFFF00;
  }

  v15 = *(this + 1);
  v53[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v15, *(this + 6), a3, v53))
  {
    v16 = v53[0] == *(this + 1) + 16 * *(this + 6);
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v12 = *(v53[0] + 8);
    v13 = v12 & 0xFFFFFFFF00000000;
    v14 = v12;
    return v13 | v14 | v12 & 0xFFFFFF00;
  }

  v52 = a3;
  v17 = *(a3 - 2);
  if ((v17 & 2) != 0)
  {
    v18 = *(a3 - 6);
  }

  else
  {
    v18 = (v17 >> 6) & 0xF;
  }

  if (v18 == 2)
  {
    v19 = llvm::TBAAVerifier::isValidScalarTBAANode(this, a3) ^ 1;
    v20 = (v19 << 31 >> 31);
    goto LABEL_37;
  }

  if (!a4)
  {
    if ((v17 & 2) != 0)
    {
      if (*(a3 - 24))
      {
        v22 = *(a3 - 4);
LABEL_32:
        if (!**v22)
        {
          v31 = 1;
          v30 = 2;
          goto LABEL_52;
        }

        v23 = *this;
        if (*this)
        {
          v24 = "Struct tag nodes have a string as their first operand";
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    else if ((v17 & 0x40) != 0)
    {
      v22 = &v9[-((v17 >> 2) & 0xF)];
      goto LABEL_32;
    }

    v23 = *this;
    if (*this)
    {
      v24 = "Struct tag nodes must have an odd number of operands!";
      goto LABEL_35;
    }

LABEL_36:
    v20 = 0xFFFFFFFFLL;
    LOBYTE(v19) = 1;
    goto LABEL_37;
  }

  if ((v17 & 2) != 0)
  {
    if ((-1431655765 * *(a3 - 6)) < 0x55555556)
    {
      v21 = *(a3 - 4);
      goto LABEL_45;
    }

LABEL_26:
    v23 = *this;
    if (*this)
    {
      v24 = "Access tag nodes must have the number of operands that is a multiple of 3!";
LABEL_35:
      v53[0] = v24;
      v54 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(v23, v53, &v52);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (-1431655765 * ((v17 >> 6) & 0xF) >= 0x55555556)
  {
    goto LABEL_26;
  }

  v21 = &v9[-((v17 >> 2) & 0xF)];
LABEL_45:
  v29 = v21[1];
  if (!v29 || *v29 != 1 || *(*(v29 + 128) + 16) != 16)
  {
    v49 = a2;
    v32 = *this;
    if (*this)
    {
      v53[0] = "Type size nodes must be constants!";
      v54 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v32, v53, &v49, &v52);
    }

    goto LABEL_36;
  }

  v30 = 3;
  v31 = 3;
LABEL_52:
  LOBYTE(v19) = 0;
  v45 = -1;
  LOBYTE(v49) = 0;
  v51 = 0;
  if ((v17 & 2) != 0)
  {
    goto LABEL_55;
  }

LABEL_53:
  if (v31 < ((v17 >> 6) & 0xF))
  {
    for (i = &v9[-((v17 >> 2) & 0xF)]; ; i = *(a3 - 4))
    {
      if ((llvm::MDNode::classof(i[v31]) & 1) == 0)
      {
        v48 = a2;
        v37 = *this;
        if (*this)
        {
          v38 = "Incorrect field entry in struct type node!";
          goto LABEL_69;
        }

LABEL_70:
        LOBYTE(v19) = 1;
        goto LABEL_71;
      }

      v34 = i[v31 + 1];
      if (!v34 || *v34 != 1 || (v35 = *(v34 + 128), *(v35 + 16) != 16))
      {
        v48 = a2;
        v37 = *this;
        if (*this)
        {
          v38 = "Offset entries must be constants!";
LABEL_69:
          v53[0] = v38;
          v54 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v37, v53, &v48, &v52);
        }

        goto LABEL_70;
      }

      v36 = *(v35 + 32);
      if (v45 != -1 && v36 != v45)
      {
        v48 = a2;
        v37 = *this;
        if (*this)
        {
          v38 = "Bitwidth between the offsets and struct type entries must match";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (v51 != 1)
      {
        break;
      }

      v46 = *(v35 + 32);
      if (llvm::APInt::compare(&v49, (v35 + 24)) >= 1)
      {
        v48 = a2;
        v39 = *this;
        if (*this)
        {
          v53[0] = "Offsets must be increasing!";
          v54 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v39, v53, &v48, &v52);
          if ((v51 & 1) == 0)
          {
            v40 = *(v35 + 32);
            LOBYTE(v19) = 1;
            v36 = v46;
            goto LABEL_80;
          }
        }

        LOBYTE(v19) = 1;
      }

      llvm::APInt::operator=(&v49, (v35 + 24));
      v36 = v46;
LABEL_83:
      if (a4)
      {
        v41 = (*v9 & 2) != 0 ? *(a3 - 4) : &v9[-((*v9 >> 2) & 0xF)];
        v42 = v41[v31 + 2];
        if (!v42 || *v42 != 1 || *(*(v42 + 128) + 16) != 16)
        {
          v48 = a2;
          v43 = *this;
          if (*this)
          {
            v53[0] = "Member size entries must be constants!";
            v54 = 259;
            v44 = v36;
            llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v43, v53, &v48, &v52);
            v36 = v44;
          }

          LOBYTE(v19) = 1;
        }
      }

      v45 = v36;
LABEL_71:
      v31 += v30;
      v17 = *v9;
      if ((*v9 & 2) == 0)
      {
        goto LABEL_53;
      }

LABEL_55:
      if (v31 >= *(a3 - 6))
      {
        goto LABEL_95;
      }
    }

    v40 = *(v35 + 32);
LABEL_80:
    v50 = v40;
    if (v40 > 0x40)
    {
      operator new[]();
    }

    v49 = *(v35 + 24);
    v51 = 1;
    goto LABEL_83;
  }

LABEL_95:
  if (v19)
  {
    v20 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = v45;
  }

  if (v51 == 1 && v50 > 0x40 && v49)
  {
    MEMORY[0x277C69E10](v49, 0x1000C8000313F17);
  }

LABEL_37:
  v13 = v20 << 32;
  v14 = v19 & 1;
  v12 = v14 | (v20 << 32);
  v53[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 1), *(this + 6), a3, v53))
  {
    return v13 | v14 | v12 & 0xFFFFFF00;
  }

  v25 = *(this + 4);
  v26 = *(this + 6);
  if (4 * v25 + 4 >= 3 * v26)
  {
    v26 *= 2;
    goto LABEL_103;
  }

  if (v26 + ~v25 - *(this + 5) <= v26 >> 3)
  {
LABEL_103:
    llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(this + 8, v26);
    v53[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 1), *(this + 6), a3, v53);
  }

  v27 = v53[0];
  ++*(this + 4);
  if (*v27 != -4096)
  {
    --*(this + 5);
  }

  *v27 = a3;
  v27[1] = v12;
  return v13 | v14 | v12 & 0xFFFFFF00;
}

uint64_t llvm::TBAAVerifier::isValidScalarTBAANode(llvm::TBAAVerifier *this, const llvm::MDNode *a2)
{
  v5 = this + 32;
  v4 = *(this + 4);
  v12 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v4, *(v5 + 4), a2, &v12))
  {
    v6 = v12 == (*v5 + 16 * *(v5 + 4));
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v10 = v12[8];
    return v10 & 1;
  }

  v12 = v16;
  v13 = v16;
  v14 = 4;
  v15 = 0;
  v10 = IsScalarTBAANodeImpl(a2, &v12);
  v17 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 4), *(this + 12), a2, &v17) & 1) == 0)
  {
    v7 = *(this + 12);
    v8 = *(this + 10);
    if (4 * v8 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v8 - *(this + 11) > v7 >> 3)
    {
LABEL_9:
      v9 = v17;
      ++*(this + 10);
      if (*v9 != -4096)
      {
        --*(this + 11);
      }

      *v9 = a2;
      *(v9 + 8) = v10;
      goto LABEL_12;
    }

    llvm::DenseMap<llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>::grow(v5, v7);
    v17 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 4), *(this + 12), a2, &v17);
    goto LABEL_9;
  }

LABEL_12:
  if (v13 != v12)
  {
    free(v13);
  }

  return v10 & 1;
}

uint64_t IsScalarTBAANodeImpl(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v4 = a1 - 16;
  v5 = *(a1 - 16);
  if ((v5 & 2) == 0)
  {
    if ((*(a1 - 16) & 0x380 | 0x40) != 0xC0)
    {
      return 0;
    }

    v6 = (v5 >> 2) & 0xF;
    v7 = v4 - 8 * v6;
    if (**v7)
    {
      return 0;
    }

    if ((*(a1 - 16) & 0x3C0) != 0xC0)
    {
      v8 = -v6;
LABEL_6:
      v7 = v4 + 8 * v8;
      goto LABEL_20;
    }

LABEL_10:
    v10 = *(v7 + 16);
    if (*v10 != 1)
    {
      return 0;
    }

    v11 = *(v10 + 128);
    if (*(v11 + 16) != 16)
    {
      return 0;
    }

    v12 = *(v11 + 32);
    if (v12 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v11 + 24)) != v12)
      {
        return 0;
      }
    }

    else if (*(v11 + 24))
    {
      return 0;
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a1 - 32);
      if (!**v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = (v5 >> 2) & 0xF;
      if (!**(v4 - 8 * v13))
      {
        v8 = -v13;
        goto LABEL_6;
      }
    }

    return 0;
  }

  v9 = *(a1 - 24);
  if ((v9 & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v7 = *(a1 - 32);
  if (**v7)
  {
    return 0;
  }

  if (v9 == 3)
  {
    goto LABEL_10;
  }

LABEL_20:
  v14 = *(v7 + 8);
  if (!v14)
  {
    return 0;
  }

  if ((llvm::MDNode::classof(*(v7 + 8)) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallPtrSetImpl<llvm::Value *>::insert(a2, v14, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v15 = *(v14 - 2);
  if ((v15 & 2) != 0)
  {
    v16 = *(v14 - 6);
  }

  else
  {
    v16 = (v15 >> 6) & 0xF;
  }

  if (v16 >= 2)
  {
    return IsScalarTBAANodeImpl(v14, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::TBAAVerifier::getFieldNodeFromTBAABaseNode(llvm::raw_ostream ***this, llvm::Type **a2, const llvm::MDNode *a3, llvm::APInt *a4, int a5)
{
  v25 = a3;
  v8 = (a3 - 16);
  v9 = *(a3 - 2);
  if ((v9 & 2) != 0)
  {
    if (*(a3 - 6) == 2)
    {
      v10 = *(a3 - 4);
      return v10[1];
    }
  }

  else if ((*(a3 - 2) & 0x3C0) == 0x80)
  {
    v10 = &v8[-((v9 >> 2) & 0xF)];
    return v10[1];
  }

  v12 = 0;
  if (a5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  if (a5)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = (v9 >> 6) & 0xF;
  v16 = &v8[-((v9 >> 2) & 0xF)];
  if ((v9 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = &v8[-((v9 >> 2) & 0xF)];
  if (v13 >= v15)
  {
    v17 = &v8[-((v9 >> 2) & 0xF)];
LABEL_25:
    v18 = v15 - v14;
    v19 = v17[v15 - v14 + 1];
    goto LABEL_26;
  }

  while (llvm::APInt::compare((*(v17[v13 + 1] + 128) + 24), a4) < 1)
  {
    v13 += v14;
    v12 -= v14;
    if ((v9 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v17 = *(a3 - 4);
    if (v13 >= *(a3 - 6))
    {
      v15 = *(a3 - 6);
      goto LABEL_25;
    }
  }

  if (v12)
  {
    v18 = v13 - v14;
    if ((v9 & 2) != 0)
    {
      v16 = *(a3 - 4);
    }

    v19 = v16[v18 + 1];
LABEL_26:
    llvm::APInt::operator-=(a4, (*(v19 + 128) + 24));
    if ((*v8 & 2) != 0)
    {
      v20 = *(a3 - 4);
    }

    else
    {
      v20 = &v8[-((*v8 >> 2) & 0xFLL)];
    }

    return v20[v18];
  }

  v23 = a4;
  v24 = a2;
  v21 = *this;
  if (*this)
  {
    v26 = "Could not find TBAA parent in struct type node";
    v27 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Instruction *,llvm::MDNode const*,llvm::APInt *>(v21, &v26, &v24, &v25, &v23);
  }

  return 0;
}

uint64_t llvm::TBAAVerifier::visitTBAAMetadata(llvm::raw_ostream ***this, llvm::Type **a2, const llvm::MDNode *a3)
{
  v67 = a3;
  v5 = *(a2 + 16) - 60;
  v6 = v5 > 0x1C;
  v7 = (1 << v5) & 0x11000033;
  if (v6 || v7 == 0)
  {
    v68[0] = a2;
    v17 = *this;
    if (!*this)
    {
      return 0;
    }

    v18 = "This instruction shall not have a TBAA access tag!";
    goto LABEL_22;
  }

  v11 = (a3 - 16);
  v10 = *(a3 - 2);
  if ((v10 & 2) != 0)
  {
    v12 = *(a3 - 4);
  }

  else
  {
    v12 = &v11[-((v10 >> 2) & 0xF)];
  }

  if (!llvm::MDNode::classof(*v12))
  {
    goto LABEL_20;
  }

  v13 = *v11;
  if ((*v11 & 2) == 0)
  {
    if ((*v11 & 0x3C0) > 0x80)
    {
      v14 = &v11[-((v13 >> 2) & 0xF)];
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (*(a3 - 6) <= 2u)
  {
LABEL_20:
    v68[0] = a2;
    v17 = *this;
    if (!*this)
    {
      return 0;
    }

    v18 = "Old-style TBAA is no longer allowed, use struct-path TBAA instead";
LABEL_22:
    v59 = v18;
    v63[0] = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v17, &v59, v68);
    return 0;
  }

  v14 = *(a3 - 4);
LABEL_14:
  FieldNodeFromTBAABaseNode = *v14;
  if (*v14)
  {
    if (!llvm::MDNode::classof(*v14))
    {
      FieldNodeFromTBAABaseNode = 0;
    }

    v13 = *v11;
  }

  if ((v13 & 2) != 0)
  {
    v16 = *(a3 - 4);
  }

  else
  {
    v16 = &v11[-((v13 >> 2) & 0xF)];
  }

  v21 = v16[1];
  if (!v21 || (llvm::MDNode::classof(v16[1]) & 1) == 0)
  {
    v21 = 0;
    v66 = 0;
    goto LABEL_34;
  }

  v66 = v21;
  v22 = *(v21 - 2);
  if ((v22 & 2) != 0)
  {
    if (*(v21 - 6) >= 3u)
    {
      v23 = *(v21 - 4);
      goto LABEL_45;
    }

LABEL_34:
    v24 = *v11;
    if ((*v11 & 2) != 0)
    {
      v25 = *(a3 - 6);
    }

    else
    {
      v25 = (v24 >> 6) & 0xF;
    }

    if (v25 >= 5)
    {
      v68[0] = a2;
      v29 = *this;
      if (!*this)
      {
        return 0;
      }

      v30 = "Struct tag metadata must have either 3 or 4 operands";
LABEL_91:
      v59 = v30;
      v63[0] = 259;
      llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v29, &v59, v68, &v67);
      return 0;
    }

    v26 = 0;
    v27 = 3;
    if ((v24 & 2) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  if ((*(v21 - 2) & 0x3C0uLL) < 0xC0)
  {
    goto LABEL_34;
  }

  v23 = (v21 - 8 * ((v22 >> 2) & 0xF) - 16);
LABEL_45:
  if (!*v23 || !llvm::MDNode::classof(*v23))
  {
    goto LABEL_34;
  }

  v24 = *v11;
  if ((*v11 & 2) != 0)
  {
    if ((*(a3 - 6) & 0xFFFFFFFE) == 4)
    {
      v31 = *(a3 - 4);
      goto LABEL_52;
    }

LABEL_68:
    v59 = a2;
    llvm::TBAAVerifier::CheckFailed<char const(&)[53],llvm::Instruction *,llvm::MDNode const*&>(*this, "Access tag metadata must have either 4 or 5 operands", &v59, &v67);
    return 0;
  }

  if ((v24 & 0x380 | 0x40) != 0x140)
  {
    goto LABEL_68;
  }

  v31 = &v11[-((v24 >> 2) & 0xF)];
LABEL_52:
  v32 = v31[3];
  if (!v32 || *v32 != 1 || *(*(v32 + 128) + 16) != 16)
  {
    v68[0] = a2;
    v29 = *this;
    if (!*this)
    {
      return 0;
    }

    v30 = "Access size field must be a constant";
    goto LABEL_91;
  }

  v27 = 4;
  v26 = 1;
  if ((v24 & 2) != 0)
  {
LABEL_56:
    if (*(a3 - 6) != v27 + 1)
    {
      goto LABEL_73;
    }

    v28 = *(a3 - 4);
    goto LABEL_58;
  }

LABEL_39:
  if (((v24 >> 6) & 0xF) != v27 + 1)
  {
    goto LABEL_73;
  }

  v28 = &v11[-((v24 >> 2) & 0xF)];
LABEL_58:
  v33 = v28[v27];
  if (!v33 || *v33 != 1 || (v34 = *(v33 + 128), *(v34 + 16) != 16))
  {
    v68[0] = a2;
    v29 = *this;
    if (!*this)
    {
      return 0;
    }

    v30 = "Immutability tag on struct tag metadata must be a constant";
    goto LABEL_91;
  }

  v35 = *(v34 + 32);
  if (v35 <= 0x40)
  {
    if (*(v34 + 24) < 2uLL)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v36 = llvm::APInt::countLeadingZerosSlowCase((v34 + 24));
  if (v36 != v35 && v36 != v35 - 1)
  {
LABEL_71:
    v68[0] = a2;
    v29 = *this;
    if (!*this)
    {
      return 0;
    }

    v30 = "Immutability part of the struct tag metadata must be either 0 or 1";
    goto LABEL_91;
  }

LABEL_73:
  if (!FieldNodeFromTBAABaseNode || !v21)
  {
    v38 = *this;
    if (v38)
    {
      v59 = "Malformed struct tag metadata: base and access-type should be non-null and point to Metadata nodes";
      v63[0] = 259;
      llvm::VerifierSupport::CheckFailed(v38, &v59);
      if (*v38)
      {
        llvm::VerifierSupport::Write(v38, a2);
        llvm::VerifierSupport::Write(v38, a3);
        llvm::VerifierSupport::Write(v38, FieldNodeFromTBAABaseNode);
        llvm::VerifierSupport::Write(v38, v21);
      }
    }

    return 0;
  }

  if ((v26 & 1) == 0)
  {
    if (!llvm::TBAAVerifier::isValidScalarTBAANode(this, v21))
    {
      v59 = a2;
      llvm::TBAAVerifier::CheckFailed<char const(&)[45],llvm::Instruction *,llvm::MDNode const*&,llvm::MDNode*&>(*this, &v59, &v67, &v66);
      return 0;
    }

    v24 = *v11;
  }

  if ((v24 & 2) != 0)
  {
    v37 = *(a3 - 4);
  }

  else
  {
    v37 = &v11[-((v24 >> 2) & 0xF)];
  }

  v39 = v37[2];
  if (!v39 || *v39 != 1 || (v40 = *(v39 + 128), *(v40 + 16) != 16))
  {
    v68[0] = a2;
    v29 = *this;
    if (*this)
    {
      v30 = "Offset must be constant integer";
      goto LABEL_91;
    }

    return 0;
  }

  v65 = *(v40 + 32);
  if (v65 > 0x40)
  {
    operator new[]();
  }

  v41 = *(v40 + 24);
  v42 = 0;
  v64 = v41;
  v59 = v63;
  v60 = v63;
  v61 = 4;
  v62 = 0;
  do
  {
    v43 = *(FieldNodeFromTBAABaseNode - 2);
    v44 = (v43 & 2) != 0 ? *(FieldNodeFromTBAABaseNode - 6) : (v43 >> 6) & 0xF;
    if (v44 < 2)
    {
      break;
    }

    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v59, FieldNodeFromTBAABaseNode, v68);
    if ((v69 & 1) == 0)
    {
      v58 = a2;
      v53 = *this;
      if (!*this)
      {
        goto LABEL_131;
      }

      v54 = "Cycle detected in struct path";
      goto LABEL_127;
    }

    v45 = llvm::TBAAVerifier::verifyTBAABaseNode(this, a2, FieldNodeFromTBAABaseNode, v26);
    v46 = HIDWORD(v45);
    v57 = HIDWORD(v45);
    if (v45)
    {
      goto LABEL_131;
    }

    v47 = FieldNodeFromTBAABaseNode == v66;
    isValidScalarTBAANode = llvm::TBAAVerifier::isValidScalarTBAANode(this, FieldNodeFromTBAABaseNode);
    v49 = v65;
    if ((isValidScalarTBAANode & 1) != 0 || FieldNodeFromTBAABaseNode == v66)
    {
      if (v65 >= 0x41)
      {
        if (v49 - llvm::APInt::countLeadingZerosSlowCase(&v64) > 0x40)
        {
          goto LABEL_128;
        }

        v50 = v64;
      }

      else
      {
        v50 = &v64;
      }

      if (*v50)
      {
LABEL_128:
        v58 = a2;
        v56 = &v64;
        v55 = *this;
        if (*this)
        {
          v68[0] = "Offset not zero at the point of scalar access";
          v70 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::Instruction *,llvm::MDNode const*,llvm::APInt *>(v55, v68, &v58, &v67, &v56);
        }

        goto LABEL_131;
      }
    }

    if (v49 != v46)
    {
      if (v46)
      {
        if (v46 == 0xFFFFFFFF)
        {
          v52 = v26;
        }

        else
        {
          v52 = 0;
        }

        if ((v52 & 1) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v49 >= 0x41)
        {
          if (v49 - llvm::APInt::countLeadingZerosSlowCase(&v64) > 0x40)
          {
            goto LABEL_130;
          }

          v51 = v64;
        }

        else
        {
          v51 = &v64;
        }

        if (*v51)
        {
LABEL_130:
          v68[0] = a2;
          LODWORD(v58) = v49;
          llvm::TBAAVerifier::CheckFailed<char const(&)[55],llvm::Instruction *,llvm::MDNode const*&,unsigned int &,unsigned int>(*this, v68, &v67, &v57, &v58);
          goto LABEL_131;
        }
      }
    }

    v42 |= v47;
    if (v26 & v42)
    {
      goto LABEL_122;
    }

    FieldNodeFromTBAABaseNode = llvm::TBAAVerifier::getFieldNodeFromTBAABaseNode(this, a2, FieldNodeFromTBAABaseNode, &v64, v26);
  }

  while (FieldNodeFromTBAABaseNode);
  if (v42)
  {
LABEL_122:
    v19 = 1;
    goto LABEL_132;
  }

  v58 = a2;
  v53 = *this;
  if (*this)
  {
    v54 = "Did not see access type in access path!";
LABEL_127:
    v68[0] = v54;
    v70 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(v53, v68, &v58, &v67);
  }

LABEL_131:
  v19 = 0;
LABEL_132:
  if (v60 != v59)
  {
    free(v60);
  }

  if (v65 >= 0x41 && v64)
  {
    MEMORY[0x277C69E10](v64, 0x1000C8000313F17);
  }

  return v19;
}

void llvm::TBAAVerifier::CheckFailed<char const(&)[53],llvm::Instruction *,llvm::MDNode const*&>(llvm::raw_ostream **a1, _BYTE *a2, llvm::Type ***a3, uint64_t *a4)
{
  if (a1)
  {
    v4 = 1;
    v7 = 1;
    if (*a2)
    {
      v5 = a2;
      v4 = 3;
    }

    v6 = v4;
    llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(a1, &v5, a3, a4);
  }
}

void llvm::TBAAVerifier::CheckFailed<char const(&)[45],llvm::Instruction *,llvm::MDNode const*&,llvm::MDNode*&>(llvm::raw_ostream **a1, llvm::Type ***a2, uint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    v8 = "Access type node must be a valid scalar type";
    v9 = 259;
    llvm::VerifierSupport::CheckFailed(a1, &v8);
    if (*a1)
    {
      if (*a2)
      {
        llvm::VerifierSupport::Write(a1, *a2);
      }

      llvm::VerifierSupport::Write(a1, *a3);
      llvm::VerifierSupport::Write(a1, *a4);
    }
  }
}

void llvm::TBAAVerifier::CheckFailed<char const(&)[55],llvm::Instruction *,llvm::MDNode const*&,unsigned int &,unsigned int>(llvm::raw_ostream **a1, llvm::Type ***a2, uint64_t *a3, unsigned int *a4, unsigned int *a5)
{
  if (a1)
  {
    v10 = "Access bit-width not the same as description bit-width";
    v11 = 259;
    llvm::VerifierSupport::CheckFailed(a1, &v10);
    if (*a1)
    {
      if (*a2)
      {
        llvm::VerifierSupport::Write(a1, *a2);
      }

      llvm::VerifierSupport::Write(a1, *a3);
      llvm::VerifierSupport::Write(*a1, *a4);
      llvm::VerifierSupport::Write(*a1, *a5);
    }
  }
}

void anonymous namespace::Verifier::visitGlobalValue(llvm::raw_ostream **this, const llvm::GlobalValue *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (*(a2 + 16))
  {
    if (v4 != 3)
    {
      goto LABEL_12;
    }

    if ((*(a2 + 5) & 0x7FFFFFF) != 0)
    {
      goto LABEL_16;
    }

    v5 = *(a2 + 8);
  }

  else
  {
    if (*(a2 + 9) != (a2 + 72))
    {
      goto LABEL_16;
    }

    v5 = *(a2 + 8);
    if ((v5 & 0x1000000) != 0)
    {
      goto LABEL_16;
    }
  }

  v6 = v5 & 0xF;
  if (v6)
  {
    v7 = v6 == 9;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v16 = "Global is external, but doesn't have external or weak linkage!";
LABEL_82:
    v43 = v16;
    v46 = 259;
    v40[0] = a2;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v43, v40);
    goto LABEL_83;
  }

LABEL_12:
  if (v4 > 3 || v4 == 1)
  {
    goto LABEL_42;
  }

LABEL_16:
  v40[0] = a2;
  v9 = (*(a2 + 8) >> 17) & 0x3F;
  if (v9 && (v9 - 1) >= 0x21u)
  {
    v43 = "huge alignment values are unsupported";
    v46 = 259;
    llvm::VerifierSupport::CheckFailed(this, &v43);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }

    goto LABEL_83;
  }

  Metadata = llvm::Value::getMetadata(a2, 22);
  v39 = Metadata;
  if (!Metadata)
  {
    goto LABEL_42;
  }

  v11 = Metadata;
  v12 = *(Metadata - 16);
  if ((v12 & 2) != 0)
  {
    if (*(Metadata - 24) == 1)
    {
      v13 = *(Metadata - 32);
      goto LABEL_26;
    }

LABEL_29:
    v43 = "associated metadata must have one operand";
    v46 = 259;
    llvm::VerifierSupport::CheckFailed(this, &v43);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
      llvm::VerifierSupport::Write(this, v11);
    }

    goto LABEL_83;
  }

  if ((*(Metadata - 16) & 0x3C0) != 0x40)
  {
    goto LABEL_29;
  }

  v13 = (Metadata - 16 - 8 * ((v12 >> 2) & 0xF));
LABEL_26:
  v14 = *v13;
  if (!v14)
  {
    v15 = "associated metadata must have a global value";
    goto LABEL_32;
  }

  if (*v14 - 3 <= 0xFFFFFFFD)
  {
    v15 = "associated metadata must be ValueAsMetadata";
LABEL_32:
    v43 = v15;
    v46 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(this, &v43, v40, &v39);
    goto LABEL_83;
  }

  v17 = *(v14 + 16);
  if (*(*v17 + 8) != 15)
  {
    v43 = "associated value must be pointer typed";
    v46 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::GlobalValue,llvm::MDNode const*>(this, &v43, a2, &v39);
    goto LABEL_83;
  }

  v18 = llvm::Value::stripPointerCastsAndAliases(v17);
  v38 = v18;
  v19 = *(v18 + 16);
  if ((v19 > 3 || v19 == 1) && v19 >= 0x15)
  {
    v43 = "associated metadata must point to a GlobalObject";
    v46 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v43, v40, &v38);
    goto LABEL_83;
  }

  if (v18 == a2)
  {
    v15 = "global values should not associate to themselves";
    goto LABEL_32;
  }

LABEL_42:
  v22 = *(a2 + 8);
  if ((v22 & 0xF) != 1)
  {
    if ((v22 & 0xF) == 6)
    {
      if (*(a2 + 16) != 3)
      {
        v16 = "Only global variables can have appending linkage!";
        goto LABEL_82;
      }

      v40[0] = a2;
      if (*(*(a2 + 3) + 8) != 17)
      {
        v43 = "Only global arrays can have appending linkage!";
        v46 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v43, v40);
        goto LABEL_83;
      }
    }

    else
    {
      if (!*(a2 + 16))
      {
        if ((v22 & 0x1000000) != 0 || *(a2 + 9) != (a2 + 72))
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      if (*(a2 + 16) != 3)
      {
        goto LABEL_57;
      }
    }

    if ((*(a2 + 5) & 0x7FFFFFF) != 0)
    {
      goto LABEL_57;
    }
  }

LABEL_54:
  if (llvm::GlobalValue::getComdat(a2))
  {
    v16 = "Declaration may not be in a Comdat!";
    goto LABEL_82;
  }

  v22 = *(a2 + 8);
LABEL_57:
  if ((v22 & 0x300) == 0x100)
  {
    if ((v22 & 0x30) != 0)
    {
      v16 = "dllimport GlobalValue must have default visibility";
      goto LABEL_82;
    }

    if ((v22 & 0x4000) != 0)
    {
      v16 = "GlobalValue with DLLImport Storage is dso_local!";
      goto LABEL_82;
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 16) == 3 && (*(a2 + 5) & 0x7FFFFFF) == 0)
      {
        goto LABEL_73;
      }
    }

    else if ((v22 & 0x1000000) == 0 && *(a2 + 9) == (a2 + 72))
    {
LABEL_73:
      if ((v22 & 0xF) == 0)
      {
        goto LABEL_76;
      }

      hasExternalWeakLinkage = llvm::GlobalValue::hasExternalWeakLinkage(a2);
      v22 = *(a2 + 8);
      if (hasExternalWeakLinkage)
      {
        goto LABEL_76;
      }
    }

    if ((v22 & 0xF) != 1)
    {
      v16 = "Global is marked as dllimport, but not external";
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  if ((v22 & 0x300) == 0x200 && (v22 & 0x30) == 0x10)
  {
    v16 = "dllexport GlobalValue must have default or protected visibility";
    goto LABEL_82;
  }

LABEL_76:
  if ((v22 & 0xFu) - 7 < 2)
  {
    goto LABEL_80;
  }

  if ((v22 & 0x30) != 0 && (llvm::GlobalValue::hasExternalWeakLinkage(a2) & 1) == 0)
  {
    v22 = *(a2 + 8);
LABEL_80:
    if ((v22 & 0x4000) == 0)
    {
      v16 = "GlobalValue with local linkage or non-default visibility must be dso_local!";
      goto LABEL_82;
    }
  }

  llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 194), a2, &v43);
  if (v45[0] != 1)
  {
    goto LABEL_83;
  }

  v43 = v45;
  v44 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Value const*>::insert<llvm::Value::user_iterator_impl<llvm::User const>,void>(&v43, v45, *(a2 + 1));
  for (i = v44; v44; i = v44)
  {
    v26 = *(v43 + i - 1);
    LODWORD(v44) = i - 1;
    llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 194), v26, v40);
    if (v41 == 1)
    {
      v27 = *(v26 + 16);
      if (v26)
      {
        v28 = v27 >= 0x1C;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v30 = *(v26 + 40);
        if (!v30 || (v31 = *(v30 + 56)) == 0)
        {
          v40[0] = "Global is referenced by parentless instruction!";
          v42 = 259;
          v36 = this[1];
          llvm::VerifierSupport::CheckFailed(this, v40);
          if (*this)
          {
            llvm::VerifierSupport::Write(this, a2);
            llvm::VerifierSupport::Write(*this, v36);
            llvm::VerifierSupport::Write(this, v26);
          }

          continue;
        }

        v32 = v31[5];
        v33 = this[1];
        if (v32 != v33)
        {
          v40[0] = "Global is referenced in a different module!";
          v42 = 259;
          llvm::VerifierSupport::CheckFailed(this, v40);
          if (*this)
          {
            llvm::VerifierSupport::Write(this, a2);
            llvm::VerifierSupport::Write(*this, v33);
            llvm::VerifierSupport::Write(this, v26);
            v34 = this;
            v35 = v31;
LABEL_106:
            llvm::VerifierSupport::Write(v34, v35);
            llvm::VerifierSupport::Write(*this, v32);
          }
        }
      }

      else
      {
        if (v26)
        {
          v29 = v27 == 0;
        }

        else
        {
          v29 = 0;
        }

        if (v29)
        {
          v32 = *(v26 + 40);
          v37 = this[1];
          if (v32 == v37)
          {
            continue;
          }

          v40[0] = "Global is used by function in a different module";
          v42 = 259;
          llvm::VerifierSupport::CheckFailed(this, v40);
          if (!*this)
          {
            continue;
          }

          llvm::VerifierSupport::Write(this, a2);
          llvm::VerifierSupport::Write(*this, v37);
          v34 = this;
          v35 = v26;
          goto LABEL_106;
        }

        llvm::SmallVectorImpl<llvm::Value const*>::insert<llvm::Value::user_iterator_impl<llvm::User const>,void>(&v43, v43 + 8 * v44, *(v26 + 8));
      }
    }
  }

  if (v43 != v45)
  {
    free(v43);
  }

LABEL_83:
  v24 = *MEMORY[0x277D85DE8];
}

void llvm::VerifierSupport::CheckFailed<llvm::Function const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    v5 = *a3;
    if (*a3)
    {

      llvm::VerifierSupport::Write(a1, v5);
    }
  }
}

void anonymous namespace::Verifier::verifyFunctionAttrs(uint64_t a1, uint64_t a2, unsigned int *a3, llvm::Type **a4, char a5, char a6)
{
  v92 = a2;
  v93 = a3;
  v91 = a4;
  if (!a3)
  {
    return;
  }

  llvm::SmallPtrSetImpl<llvm::Value *>::insert((a1 + 1264), a3, v87);
  v10 = a3;
  v81 = a3;
  if (v88 == 1)
  {
    if (!llvm::AttributeList::hasParentContext(&v93, *(a1 + 184)))
    {
      v87[0] = "Attribute list does not match Module context!";
      v90 = 259;
      llvm::VerifierSupport::CheckFailed(a1, v87);
      if (!*a1)
      {
        return;
      }

      llvm::AttributeList::print(&v93, *a1);
      goto LABEL_92;
    }

    v11 = a3[2];
    if (v11)
    {
      v12 = &a3[2 * v11 + 10];
      v13 = (v10 + 40);
      while (1)
      {
        if (*v13)
        {
          if (!llvm::AttributeSet::hasParentContext(v13, *(a1 + 184)))
          {
            v87[0] = "Attribute set does not match Module context!";
            v90 = 259;
            v94.__r_.__value_.__r.__words[0] = v13;
            llvm::VerifierSupport::CheckFailed<llvm::AttributeSet const*,llvm::Value const*>(a1, v87, &v94, &v91);
            return;
          }

          v14 = *v13;
          if (*v13)
          {
            v15 = v14[2];
            if (v15)
            {
              break;
            }
          }
        }

LABEL_13:
        ++v13;
        v10 = v81;
        if (v13 == v12)
        {
          goto LABEL_14;
        }
      }

      v16 = 8 * v15;
      v17 = (v14 + 12);
      while (llvm::Attribute::hasParentContext(v17, *(a1 + 184)))
      {
        ++v17;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v87[0] = "Attribute does not match Module context!";
      v90 = 259;
      llvm::VerifierSupport::CheckFailed(a1, v87);
      v45 = *a1;
      if (!*a1)
      {
        return;
      }

      llvm::Attribute::getAsString(v17, 0, &v94);
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v94;
      }

      else
      {
        v46 = v94.__r_.__value_.__r.__words[0];
      }

      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v94.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(v45, v46, size);
      v48 = *(v45 + 4);
      if (v48 >= *(v45 + 3))
      {
        llvm::raw_ostream::write(v45, 10);
      }

      else
      {
        *(v45 + 4) = v48 + 1;
        *v48 = 10;
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

LABEL_92:
      if (v91)
      {
        llvm::VerifierSupport::Write(a1, v91);
      }

      return;
    }
  }

LABEL_14:
  v78 = a6;
  if (*(v10 + 8) < 2u)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v10 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        v20 = 8 * v19;
        v21 = (v18 + 48);
        while (1)
        {
          v22 = *v21;
          v86 = v22;
          if (!v22)
          {
            break;
          }

          if (*(v22 + 8) != 2)
          {
            v23 = (*(v22 + 12) - 1);
            goto LABEL_22;
          }

LABEL_23:
          ++v21;
          v20 -= 8;
          if (!v20)
          {
            goto LABEL_26;
          }
        }

        v23 = 0xFFFFFFFFLL;
LABEL_22:
        if ((AttrPropTable[v23] & 4) == 0)
        {
          llvm::Attribute::getAsString(&v86, 0, &v84);
          v49 = std::string::insert(&v84, 0, "Attribute '");
          v50 = v49->__r_.__value_.__r.__words[2];
          *&v85.__r_.__value_.__l.__data_ = *&v49->__r_.__value_.__l.__data_;
          v85.__r_.__value_.__r.__words[2] = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          v51 = std::string::append(&v85, "' does not apply to function return values");
          v52 = v51->__r_.__value_.__r.__words[2];
          *&v94.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
          v94.__r_.__value_.__r.__words[2] = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          v90 = 260;
          v87[0] = &v94;
          v53 = a1;
          goto LABEL_112;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_26:
  v83 = a1;
  v24 = *(a2 + 12);
  v25 = (v24 - 1);
  if (v24 != 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v79 = 0;
    v80 = v10 + 40;
    while (1)
    {
      v31 = *(*(a2 + 16) + 8 * v26 + 8);
      if ((v26 + 2) >= *(v10 + 8))
      {
        break;
      }

      v32 = *(v80 + 8 * (v26 + 2));
      if (a5)
      {
        if (!v32)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (!v32)
        {
          break;
        }

        if ((v32[13] & 4) != 0)
        {
          v36 = "immarg attribute only applies to intrinsics";
          goto LABEL_119;
        }

        if ((v78 & 1) == 0 && v32[20] < 0)
        {
          v36 = "Attribute 'elementtype' can only be applied to intrinsics and inline asm.";
LABEL_119:
          v87[0] = v36;
          v90 = 259;
          v54 = v83;
LABEL_120:
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v54, v87, &v91);
          return;
        }
      }

      v33 = v32[14] & 2;
      if ((v27 & (v33 >> 1)) == 1)
      {
        v36 = "More than one parameter has attribute nest!";
        goto LABEL_119;
      }

      if ((v32[17] & 0x40) != 0)
      {
        if ((v79 & 0x100000000) != 0)
        {
          v36 = "More than one parameter has attribute returned!";
          goto LABEL_119;
        }

        if (!llvm::Type::canLosslesslyBitCastTo(v31, **(a2 + 16)))
        {
          v36 = "Incompatible argument and return types for 'returned' attribute";
          goto LABEL_119;
        }

        BYTE4(v79) = 1;
      }

      if ((v32[21] & 4) != 0)
      {
        if (v79)
        {
          v36 = "Cannot have multiple 'sret' parameters!";
          goto LABEL_119;
        }

        if (v26 >= 2)
        {
          v36 = "Attribute 'sret' is not on first or second parameter!";
          goto LABEL_119;
        }

        LOBYTE(v79) = 1;
      }

      v34 = v32[20];
      if ((v28 & ((v34 & 2) >> 1)) == 1)
      {
        v36 = "Cannot have multiple 'swiftself' parameters!";
        goto LABEL_119;
      }

      v35 = v32[19] < 0;
      if ((v35 & v29) == 1)
      {
        v36 = "Cannot have multiple 'swiftasync' parameters!";
        goto LABEL_119;
      }

      if (v34 & v30)
      {
        v36 = "Cannot have multiple 'swifterror' parameters!";
        goto LABEL_119;
      }

      v27 |= v33 >> 1;
      v29 |= v35;
      v30 |= v34;
      v28 |= (v34 & 2) >> 1;
      if (v32[21])
      {
        v10 = v81;
        if (v26 != *(a2 + 12) - 2)
        {
          v36 = "inalloca isn't on the last parameter!";
          goto LABEL_119;
        }
      }

      else
      {
        v10 = v81;
      }

LABEL_52:
      if (v25 == ++v26)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_52;
  }

LABEL_56:
  if (!*(v10 + 8))
  {
    return;
  }

  v37 = *(v10 + 40);
  if (!v37)
  {
    return;
  }

  if (!*(v10 + 8) || (v38 = *(v81 + 40)) == 0 || (v39 = *(v38 + 8), !v39))
  {
LABEL_68:
    if ((*(v81 + 15) & 4) != 0)
    {
      if ((*(v81 + 12) & 8) != 0)
      {
        v44 = "Attributes 'noinline and alwaysinline' are incompatible!";
        goto LABEL_101;
      }

      if ((*(v81 + 17) & 4) != 0)
      {
        if ((*(v81 + 17) & 2) != 0)
        {
          v44 = "Attributes 'optsize and optnone' are incompatible!";
          goto LABEL_101;
        }

        if ((*(v81 + 13) & 0x40) != 0)
        {
          v44 = "Attributes 'minsize and optnone' are incompatible!";
          goto LABEL_101;
        }
      }
    }

    else if ((*(v81 + 17) & 4) != 0)
    {
      v44 = "Attribute 'optnone' requires 'noinline'!";
LABEL_101:
      v87[0] = v44;
      v90 = 259;
      v54 = v83;
      goto LABEL_120;
    }

    if (llvm::AttributeList::hasAttributeAtIndex(&v93, -1, "aarch64_pstate_sm_enabled", 0x19) && llvm::AttributeList::hasAttributeAtIndex(&v93, -1, "aarch64_pstate_sm_compatible", 0x1C))
    {
      v44 = "Attributes 'aarch64_pstate_sm_enabled and aarch64_pstate_sm_compatible' are incompatible!";
      goto LABEL_101;
    }

    if (llvm::AttributeList::hasAttributeAtIndex(&v93, -1, "aarch64_pstate_za_new", 0x15))
    {
      if (llvm::AttributeList::hasAttributeAtIndex(&v93, -1, "aarch64_pstate_za_preserved", 0x1B))
      {
        v44 = "Attributes 'aarch64_pstate_za_new and aarch64_pstate_za_preserved' are incompatible!";
        goto LABEL_101;
      }

      if (llvm::AttributeList::hasAttributeAtIndex(&v93, -1, "aarch64_pstate_za_shared", 0x18))
      {
        v44 = "Attributes 'aarch64_pstate_za_new and aarch64_pstate_za_shared' are incompatible!";
        goto LABEL_101;
      }
    }

    if ((*(v81 + 13) & 0x20) != 0 && (v91[4] & 0xC0) != 0x80)
    {
      v44 = "Attribute 'jumptable' requires 'unnamed_addr'";
      goto LABEL_101;
    }

    v59 = v81;
    if (*(v81 + 8))
    {
      v60 = *(v81 + 40);
      if (v60)
      {
        AllocSizeArgs = llvm::AttributeSetNode::getAllocSizeArgs(v60);
        if ((v62 & 0x100000000) != 0)
        {
          v63 = HIDWORD(AllocSizeArgs);
          v64 = v62;
          v87[0] = &v92;
          v87[1] = v83;
          v88 = &v91;
          {
            return;
          }

          v59 = v81;
        }
      }
    }

    if ((*(v59 + 21) & 0x10) != 0)
    {
      AllocKind = llvm::AttributeList::getAllocKind(&v93);
      v66 = 0;
      v67 = AllocKind & 7;
      while (qword_2750DE010[v66] != v67)
      {
        if (++v66 == 3)
        {
          v87[0] = "'allockind()' requires exactly one of alloc, realloc, and free";
          v90 = 259;
          llvm::VerifierSupport::CheckFailed(v83, v87);
          break;
        }
      }

      if (v67 == 4 && (AllocKind & 0x38) != 0)
      {
        v87[0] = "'allockind(free)' doesn't allow uninitialized, zeroed, or aligned modifiers.";
        v90 = 259;
        llvm::VerifierSupport::CheckFailed(v83, v87);
      }

      if ((~AllocKind & 0x18) == 0)
      {
        v87[0] = "'allockind()' can't be both zeroed and uninitialized";
        v90 = 259;
        llvm::VerifierSupport::CheckFailed(v83, v87);
      }
    }

    if ((*(v81 + 22) & 0x10) != 0)
    {
      if (*(v81 + 8))
      {
        v68 = *(v81 + 40);
        if (v68)
        {
          VScaleRangeMin = llvm::AttributeSetNode::getVScaleRangeMin(v68);
          if (VScaleRangeMin || (v87[0] = "'vscale_range' minimum must be greater than 0", v90 = 259, llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v83, v87, &v91), *(v81 + 8)))
          {
            v70 = *(v81 + 40);
            if (v70)
            {
              VScaleRangeMax = llvm::AttributeSetNode::getVScaleRangeMax(v70);
              if ((VScaleRangeMax & 0x100000000) != 0 && VScaleRangeMin > VScaleRangeMax)
              {
                v87[0] = "'vscale_range' minimum cannot be greater than maximum";
                v90 = 259;
                llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v83, v87, &v91);
              }
            }
          }
        }
      }
    }

    if (llvm::AttributeList::hasAttributeAtIndex(&v93, -1, "frame-pointer", 0xD))
    {
      if (*(v81 + 8))
      {
        v73 = *(v81 + 40);
      }

      else
      {
        v73 = 0;
      }

      v87[0] = v73;
      Attribute = llvm::AttributeSet::getAttribute(v87, "frame-pointer", 13, v72);
      if (!Attribute)
      {
        v76 = 0;
        v75 = 0;
LABEL_172:
        v90 = 1283;
        v87[0] = "invalid value for 'frame-pointer' attribute: ";
        v88 = v76;
        v89 = v75;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v83, v87, &v91);
        goto LABEL_173;
      }

      v75 = *(Attribute + 16);
      v76 = (Attribute + *(Attribute + 12) + 25);
      if (v75 == 8)
      {
        if (*v76 != 0x6661656C2D6E6F6ELL)
        {
          v75 = 8;
          goto LABEL_172;
        }
      }

      else
      {
        if (v75 != 4)
        {
          if (v75 == 3)
          {
            if (*v76 == 27745 && *(Attribute + *(Attribute + 12) + 27) == 108)
            {
              goto LABEL_173;
            }

            v75 = 3;
          }

          goto LABEL_172;
        }

        if (*v76 != 1701736302)
        {
          v75 = 4;
          goto LABEL_172;
        }
      }
    }

LABEL_173:
    return;
  }

  v40 = 8 * v39;
  v41 = (v38 + 48);
  while (1)
  {
    v42 = *v41;
    v86 = v42;
    if (!v42)
    {
      break;
    }

    if (*(v42 + 8) != 2)
    {
      v43 = (*(v42 + 12) - 1);
      goto LABEL_66;
    }

LABEL_67:
    ++v41;
    v40 -= 8;
    if (!v40)
    {
      goto LABEL_68;
    }
  }

  v43 = 0xFFFFFFFFLL;
LABEL_66:
  if (AttrPropTable[v43])
  {
    goto LABEL_67;
  }

  llvm::Attribute::getAsString(&v86, 0, &v84);
  v55 = std::string::insert(&v84, 0, "Attribute '");
  v56 = v55->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(&v85, "' does not apply to functions!");
  v58 = v57->__r_.__value_.__r.__words[2];
  *&v94.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
  v94.__r_.__value_.__r.__words[2] = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  v90 = 260;
  v87[0] = &v94;
  v53 = v83;
LABEL_112:
  llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v53, v87, &v91);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Type *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, llvm::Type **a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    v7 = *a4;

    llvm::VerifierSupport::Write(a1, v7);
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, llvm::Type ***a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    v7 = *a4;
    if (*a4)
    {

      llvm::VerifierSupport::Write(a1, v7);
    }
  }
}

void anonymous namespace::Verifier::verifySwiftErrorValue(llvm::raw_ostream **this, const llvm::Value *a2)
{
  v13 = a2;
  v2 = *(a2 + 1);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v5 = *(v2 + 24);
    v12 = v5;
    v6 = *(v5 + 16);
    if (v6 <= 0x3C)
    {
      if (v6 == 33)
      {
        goto LABEL_8;
      }

      if (v6 != 60)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    if (v6 != 61)
    {
      if (v6 != 84)
      {
LABEL_19:
        v11 = "swifterror value can only be loaded and stored from, or as a swifterror argument!";
        goto LABEL_21;
      }

LABEL_8:
      v7 = (v5 - 32 * (*(v5 + 20) & 0x7FFFFFF));
      v8 = llvm::CallBase::arg_end(v5);
      if (v7 != v8)
      {
        v9 = v8;
        v10 = 0;
        while (*v7 != a2 || llvm::CallBase::paramHasAttr(v5, v10, 64))
        {
          ++v10;
          v7 += 4;
          if (v7 == v9)
          {
            goto LABEL_15;
          }
        }

        v14[0] = "swifterror value when used in a callsite should be marked with swifterror attribute";
        v15 = 259;
        llvm::VerifierSupport::CheckFailed(this, v14);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
          llvm::VerifierSupport::Write(this, v5);
        }
      }

      goto LABEL_15;
    }

    if (*(v5 - 32) != a2)
    {
      break;
    }

LABEL_15:
    v2 = *(v2 + 8);
    if (!v2)
    {
      return;
    }
  }

  v11 = "swifterror value should be the second operand when used by stores";
LABEL_21:
  v14[0] = v11;
  v15 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, v14, &v13, &v12);
}

void anonymous namespace::Verifier::verifyFunctionMetadata(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  v3 = 16 * a3;
  for (i = (a2 + 8); ; i += 2)
  {
    v5 = *(i - 2);
    if (v5 == 36)
    {
      v32 = *i;
      v9 = *(v32 - 16);
      if ((v9 & 2) != 0)
      {
        if (*(v32 - 24) != 1)
        {
LABEL_52:
          v29 = "!kcfi_type must have exactly one operand";
          goto LABEL_60;
        }

        v10 = *(v32 - 32);
      }

      else
      {
        if ((*(v32 - 16) & 0x3C0) != 0x40)
        {
          goto LABEL_52;
        }

        v10 = (v32 - 16 - 8 * ((v9 >> 2) & 0xF));
      }

      v18 = *v10;
      if (!v18)
      {
        v29 = "!kcfi_type operand must not be null";
        goto LABEL_60;
      }

      if (*v18 != 1)
      {
        v29 = "expected a constant operand for !kcfi_type";
        goto LABEL_60;
      }

      v19 = *(v18 + 128);
      if (v19[16] != 16)
      {
        v29 = "expected a constant integer operand for !kcfi_type";
        goto LABEL_60;
      }

      if ((*(*v19 + 8) & 0xFFFFFF00) != 0x2000)
      {
        v29 = "expected a 32-bit integer constant operand for !kcfi_type";
        goto LABEL_60;
      }

      goto LABEL_48;
    }

    if (v5 == 2)
    {
      v32 = *i;
      v6 = v32 - 16;
      v7 = *(v32 - 16);
      if ((v7 & 2) != 0)
      {
        if (*(v32 - 24) <= 1u)
        {
LABEL_51:
          v29 = "!prof annotations should have no less than 2 operands";
          goto LABEL_60;
        }

        v8 = *(v32 - 32);
      }

      else
      {
        if ((v7 & 0x380) == 0)
        {
          goto LABEL_51;
        }

        v8 = (v6 - 8 * ((v7 >> 2) & 0xF));
      }

      v11 = *v8;
      if (!v11)
      {
        v29 = "first operand should not be null";
        goto LABEL_60;
      }

      if (*v11)
      {
        v29 = "expected string with name of the !prof annotation";
        goto LABEL_60;
      }

      v12 = *(v11 + 8);
      if (*v12 == 30)
      {
        v20 = v12[3];
        v21 = v12[4];
        v22 = v12[5];
        v23 = *(v12 + 46);
        if (v20 != 0x69746568746E7973 || v21 != 0x6974636E75665F63 || v22 != 0x7972746E655F6E6FLL || v23 != 0x746E756F635F7972)
        {
LABEL_50:
          v29 = "first operand should be 'function_entry_count' or 'synthetic_function_entry_count'";
          goto LABEL_60;
        }
      }

      else
      {
        if (*v12 != 20)
        {
          goto LABEL_50;
        }

        v13 = v12[3];
        v14 = v12[4];
        v15 = *(v12 + 10);
        v16 = v13 == 0x6E6F6974636E7566 && v14 == 0x635F7972746E655FLL;
        if (!v16 || v15 != 1953396079)
        {
          goto LABEL_50;
        }
      }

      if ((v7 & 2) != 0)
      {
        v27 = *(v32 - 32);
      }

      else
      {
        v27 = v6 - 8 * ((v7 >> 2) & 0xF);
      }

      v28 = *(v27 + 8);
      if (!v28)
      {
        v29 = "second operand should not be null";
        goto LABEL_60;
      }

      if (*v28 != 1)
      {
        break;
      }
    }

LABEL_48:
    v3 -= 16;
    if (!v3)
    {
      return;
    }
  }

  v29 = "expected integer argument to function_entry_count";
LABEL_60:
  v30 = v29;
  v31 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(a1, &v30, &v32);
}

llvm::VerifierSupport *llvm::VerifierSupport::CheckFailed<llvm::Function const*,llvm::Module const*,llvm::Function*,llvm::Module*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, const llvm::Module **a4, llvm::Type ***a5, const llvm::Module **a6)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  result = *a1;
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
      result = *a1;
    }

    llvm::VerifierSupport::Write(result, *a4);
    v12 = *a5;

    return llvm::VerifierSupport::WriteTs<llvm::Function *,llvm::Module *>(a1, v12, a6);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (!v2 && !result[3])
  {
    return result;
  }

  v3 = result[4];
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_24:
      v1[1] = 0;
      return result;
    }

    v10 = 16 * v3;
    result = (*result + 8);
    while (1)
    {
      v11 = *(result - 1);
      if (v11 == -8192)
      {
        goto LABEL_22;
      }

      if (v11 != -4096)
      {
        break;
      }

LABEL_23:
      result += 4;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    result = llvm::TinyPtrVector<llvm::BasicBlock *>::~TinyPtrVector(result);
LABEL_22:
    *(result - 1) = -4096;
    goto LABEL_23;
  }

  result = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::destroyAll(result);
  if (!v2)
  {
    if (*(v1 + 4))
    {
      result = MEMORY[0x277C69E30](*v1, 8);
      *v1 = 0;
      v1[1] = 0;
      *(v1 + 4) = 0;
      return result;
    }

    goto LABEL_24;
  }

  v4 = 1 << (33 - __clz(v2 - 1));
  if (v4 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == *(v1 + 4))
  {
    v6 = 0;
    v1[1] = 0;
    v7 = vdupq_n_s64((v5 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v8 = (*v1 + 16);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
      if (v9.i8[0])
      {
        *(v8 - 2) = -4096;
      }

      if (v9.i8[4])
      {
        *v8 = -4096;
      }

      v6 += 2;
      v8 += 4;
    }

    while (((v5 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v5 - 1) & 1) + 2 != v6);
  }

  else
  {
    MEMORY[0x277C69E30](*v1, 8);
    v12 = (4 * v5 / 3 + 1) | ((4 * v5 / 3 + 1) >> 1);
    v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
    LODWORD(v13) = (((v13 | (v13 >> 8)) >> 16) | v13 | (v13 >> 8)) + 1;
    *(v1 + 4) = v13;
    result = operator new(16 * v13, 8uLL);
    *v1 = result;
    v1[1] = 0;
    v14 = *(v1 + 4);
    if (v14)
    {
      v15 = 0;
      v16 = v14 + 0xFFFFFFFFFFFFFFFLL;
      v17 = v16 & 0xFFFFFFFFFFFFFFFLL;
      v18 = (v16 & 0xFFFFFFFFFFFFFFFLL) - (v16 & 1) + 2;
      v19 = vdupq_n_s64(v17);
      v20 = result + 4;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v15), xmmword_2750C1210)));
        if (v21.i8[0])
        {
          *(v20 - 2) = -4096;
        }

        if (v21.i8[4])
        {
          *v20 = -4096;
        }

        v15 += 2;
        v20 += 4;
      }

      while (v18 != v15);
    }
  }

  return result;
}

void llvm::VerifierSupport::CheckFailed<llvm::Function const*,llvm::MDNode *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, uint64_t *a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    v7 = *a3;

    llvm::VerifierSupport::WriteTs<llvm::Function const*,llvm::MDNode *>(a1, v7, a4);
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Function const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    v5 = *a3;
    if (*a3)
    {

      llvm::VerifierSupport::Write(a1, v5);
    }
  }
}

void anonymous namespace::Verifier::visitMDNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  llvm::SmallPtrSetImpl<llvm::Value *>::insert((a1 + 432), a2, v17);
  if (v18 != 1)
  {
    return;
  }

  v6 = *(a2 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 4) != 0)
  {
    v7 = *v7;
  }

  if (v7 != *(a1 + 184))
  {
    v8 = "MDNode context does not match Module context!";
    goto LABEL_6;
  }

  switch(*a2)
  {
    case 5:
      break;
    case 6:
      break;
    case 7:
      break;
    case 8:
      break;
    case 9:
      break;
    case 0xA:
      break;
    case 0xB:
      break;
    case 0xC:
      break;
    case 0xD:
      break;
    case 0xE:
      break;
    case 0xF:
      break;
    case 0x10:
      break;
    case 0x11:
      break;
    case 0x12:
      break;
    case 0x13:
      break;
    case 0x14:
      break;
    case 0x15:
      break;
    case 0x16:
      break;
    case 0x17:
      break;
    case 0x18:
      break;
    case 0x19:
      break;
    case 0x1A:
      break;
    case 0x1B:
      break;
    case 0x1C:
      break;
    case 0x1D:
      break;
    case 0x1E:
      break;
    case 0x1F:
      break;
    case 0x20:
      break;
    case 0x21:
      break;
    case 0x22:
      break;
    case 0x23:
      break;
    default:
      break;
  }

  v9 = *(a2 - 16);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 - 32);
    v11 = *(a2 - 24);
    if (!*(a2 - 24))
    {
      goto LABEL_54;
    }
  }

  else
  {
    v10 = (a2 - 16 - 8 * ((v9 >> 2) & 0xF));
    v11 = (v9 >> 6) & 0xF;
    if (!v11)
    {
LABEL_54:
      if ((*(a2 + 1) & 0x7F) == 2)
      {
        v8 = "Expected no forward declarations!";
      }

      else
      {
        if (!*(a2 - 8))
        {
          return;
        }

        v8 = "All nodes should be resolved!";
      }

LABEL_6:
      v16 = a2;
      v17[0] = v8;
      v19 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(a1, v17, &v16);
      return;
    }
  }

  v12 = 8 * v11;
  while (1)
  {
    v13 = *v10;
    v16 = v13;
    if (!v13)
    {
      goto LABEL_53;
    }

    v14 = *v13;
    if (v14 == 2)
    {
      break;
    }

    if (a3 != 1 && v14 == 5)
    {
      v17[0] = "DILocation not allowed within this metadata node";
      v19 = 259;
      v15 = a2;
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(a1, v17, &v15, &v16);
      return;
    }

    if (llvm::MDNode::classof(v13))
    {
    }

    else if (*v13 - 3 >= 0xFFFFFFFE)
    {
    }

LABEL_53:
    ++v10;
    v12 -= 8;
    if (!v12)
    {
      goto LABEL_54;
    }
  }

  v17[0] = "Invalid operand for global metadata!";
  v19 = 259;
  llvm::VerifierSupport::CheckFailed(a1, v17);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, a2);
    llvm::VerifierSupport::Write(a1, v13);
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Function const*,llvm::MDNode *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, uint64_t *a4)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    v7 = *a3;

    llvm::VerifierSupport::WriteTs<llvm::Function const*,llvm::MDNode *>(a1, v7, a4);
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubprogram *,llvm::Function const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, uint64_t *a3, llvm::Type ***a4)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, *a3);
    v7 = *a4;
    if (*a4)
    {

      llvm::VerifierSupport::Write(a1, v7);
    }
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::Function>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type **a3)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {

    llvm::VerifierSupport::Write(a1, a3);
  }
}

void anonymous namespace::Verifier::visitFunction(llvm::Function const&)::$_0::operator()(uint64_t a1, llvm::Type **a2, char *a3)
{
  if (a3)
  {
    if (*a3 == 5)
    {
      v25 = a3;
      v6 = *(a1 + 8);
      llvm::SmallPtrSetImpl<llvm::Value *>::insert(*a1, a3, v22);
      if (v23 == 1)
      {
        v7 = *(a3 - 2);
        if ((v7 & 2) != 0)
        {
          v8 = *(a3 - 4);
        }

        else
        {
          v8 = &a3[-8 * ((v7 >> 2) & 0xF) - 16];
        }

        v9 = *v8;
        if (*v8 && *v9 - 17 < 3)
        {
          InlinedAtScope = llvm::DILocation::getInlinedAtScope(a3);
          v21 = InlinedAtScope;
          if (InlinedAtScope)
          {
            v11 = InlinedAtScope;
            llvm::SmallPtrSetImpl<llvm::Value *>::insert(*a1, InlinedAtScope, v22);
            if (v23 == 1)
            {
              Subprogram = llvm::DILocalScope::getSubprogram(v11);
              v13 = Subprogram;
              v20 = Subprogram;
              if (!Subprogram || v11 == Subprogram || (llvm::SmallPtrSetImpl<llvm::Value *>::insert(*a1, Subprogram, v22), (v23 & 1) != 0))
              {
                if (llvm::Value::getMetadata(*(a1 + 24), 0) != v13)
                {
                  v22[0] = "!dbg attachment points at wrong subprogram for function";
                  v24 = 259;
                  v14 = *(a1 + 16);
                  v15 = *(a1 + 24);
                  v18 = a2;
                  v19 = v15;
                  llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubprogram *,llvm::Function const*,llvm::Instruction const*,llvm::DILocation const*,llvm::DILocalScope *,llvm::DISubprogram *>(v6, v22, v14, &v19, &v18, &v25, &v21, &v20);
                }
              }
            }
          }

          else
          {
            v22[0] = "Failed to find DILocalScope";
            v24 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(v6, v22, &v25);
          }
        }

        else
        {
          v22[0] = "DILocation's scope must be a DILocalScope";
          v24 = 259;
          v17 = *(a1 + 16);
          v16 = *(a1 + 24);
          llvm::VerifierSupport::DebugInfoCheckFailed(v6, v22);
          if (*v6)
          {
            llvm::VerifierSupport::Write(v6, *v17);
            if (v16)
            {
              llvm::VerifierSupport::Write(v6, v16);
            }

            llvm::VerifierSupport::Write(v6, a2);
            llvm::VerifierSupport::Write(v6, a3);
            llvm::VerifierSupport::Write(v6, v9);
          }
        }
      }
    }
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::GlobalObject const*,llvm::MDNode const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, uint64_t *a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    v7 = *a4;

    llvm::VerifierSupport::Write(a1, v7);
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::GlobalValue,llvm::MDNode const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type **a3, uint64_t *a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, a3);
    v7 = *a4;

    llvm::VerifierSupport::Write(a1, v7);
  }
}

void llvm::VerifierSupport::CheckFailed(llvm::raw_ostream **this, const llvm::Twine *a2)
{
  v3 = *this;
  if (*this)
  {
    llvm::Twine::print(a2, v3);
    v4 = *(v3 + 4);
    if (v4 >= *(v3 + 3))
    {
      llvm::raw_ostream::write(v3, 10);
    }

    else
    {
      *(v3 + 4) = v4 + 1;
      *v4 = 10;
    }
  }

  *(this + 192) = 1;
}

llvm::raw_ostream *llvm::VerifierSupport::Write(uint64_t ***this, llvm::Type **a2)
{
  v4 = *(a2 + 16);
  v6 = (this + 2);
  v5 = *this;
  if (v4 < 0x1C)
  {
    printAsOperandImpl(a2, v5, 1, v6);
  }

  else
  {
    llvm::Value::print(a2, v5, v6, 0);
  }

  result = *this;
  v8 = (*this)[4];
  if (v8 >= (*this)[3])
  {

    return llvm::raw_ostream::write(result, 10);
  }

  else
  {
    *(result + 4) = v8 + 1;
    *v8 = 10;
  }

  return result;
}

uint64_t llvm::VerifierSupport::Write(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    printMetadataImpl(*result, a2, (result + 16), *(result + 8), 0, 0);
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<llvm::Value const*>::insert<llvm::Value::user_iterator_impl<llvm::User const>,void>(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *result;
  v6 = result[2];
  if (*result + 8 * v6 == a2)
  {
    v16 = 0;
    if (a3)
    {
      v17 = a3;
      do
      {
        ++v16;
        v17 = *(v17 + 8);
      }

      while (v17);
    }

    if (v16 + v6 > result[3])
    {
      result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v16 + v6, 8);
      LODWORD(v6) = v4[2];
      v5 = *v4;
    }

    if (v3)
    {
      v18 = (v5 + 8 * v6);
      do
      {
        *v18++ = *(v3 + 24);
        v3 = *(v3 + 8);
      }

      while (v3);
    }

    v4[2] = v6 + v16;
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      v8 = a3;
      do
      {
        ++v7;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    v9 = a2 - v5;
    if (v7 + v6 > result[3])
    {
      result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v7 + v6, 8);
      v5 = *v4;
      v6 = v4[2];
    }

    v10 = (v5 + v9);
    v11 = 8 * v6;
    v12 = (v5 + 8 * v6);
    v13 = 8 * v6 - v9;
    v14 = v13 >> 3;
    if (v13 >> 3 >= v7)
    {
      v19 = &v12[-v7];
      result = llvm::SmallVectorImpl<llvm::BasicBlock *>::append<std::move_iterator<llvm::BasicBlock **>,void>(v4, v19, (v5 + 8 * v6));
      if (v19 != v10)
      {
        result = memmove(v12 - (v19 - v10), v10, v19 - v10);
      }

      while (v3)
      {
        *v10 = *(v3 + 24);
        v10 += 8;
        v3 = *(v3 + 8);
      }
    }

    else
    {
      v15 = v6 + v7;
      v4[2] = v15;
      if (v11 != v9)
      {
        result = memcpy((v5 + 8 * v15 - 8 * v14), (v5 + v9), v13);
        do
        {
          *v10 = *(v3 + 24);
          v10 += 8;
          v3 = *(v3 + 8);
          --v14;
        }

        while (v14);
      }

      for (; v3; v3 = *(v3 + 8))
      {
        *v12++ = *(v3 + 24);
      }
    }
  }

  return result;
}

llvm::raw_ostream *llvm::VerifierSupport::Write(llvm::VerifierSupport *this, const llvm::Module *a2)
{
  v3 = *(this + 4);
  if (*(this + 3) - v3 > 0xDuLL)
  {
    qmemcpy(v3, "; ModuleID = '", 14);
    *(this + 4) += 14;
  }

  else
  {
    this = llvm::raw_ostream::write(this, "; ModuleID = '", 0xEuLL);
  }

  v6 = *(a2 + 20);
  v5 = a2 + 160;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  result = llvm::raw_ostream::write(this, v8, v9);
  v11 = *(result + 4);
  if (*(result + 3) - v11 > 1uLL)
  {
    *v11 = 2599;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "'\n", 2uLL);
  }

  return result;
}

llvm::raw_ostream **llvm::VerifierSupport::Write(llvm::raw_ostream **this, llvm::Type *a2)
{
  if (a2)
  {
    v3 = *this;
    v4 = *(*this + 4);
    if (v4 >= *(*this + 3))
    {
      llvm::raw_ostream::write(*this, 32);
    }

    else
    {
      *(v3 + 4) = v4 + 1;
      *v4 = 32;
    }

    return llvm::Type::print(a2, v3, 0, 0);
  }

  return this;
}

void llvm::VerifierSupport::CheckFailed<llvm::AttributeSet const*,llvm::Value const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::AttributeSetNode ***a3, llvm::Type ***a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  v7 = *a1;
  if (*a1)
  {
    if (*a3)
    {
      llvm::AttributeSet::getAsString(*a3, 0, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      llvm::raw_ostream::write(v7, v8, v9);
      v10 = *(v7 + 4);
      if (v10 >= *(v7 + 3))
      {
        llvm::raw_ostream::write(v7, 10);
      }

      else
      {
        *(v7 + 4) = v10 + 1;
        *v10 = 10;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = *a4;
    if (*a4)
    {

      llvm::VerifierSupport::Write(a1, v11);
    }
  }
}

void anonymous namespace::Verifier::verifyParameterAttrs(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v80 = a4;
  if (!a2)
  {
    return;
  }

  v7 = (a2 + 48);
  v8 = *(a2 + 8);
  if (!v8)
  {
    v13 = *(a2 + 13);
    if ((v13 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v9 = 8 * v8;
  v10 = (a2 + 48);
  do
  {
    v11 = *v10;
    v75.__r_.__value_.__r.__words[0] = v11;
    if (v11)
    {
      if (*(v11 + 8) == 2)
      {
        goto LABEL_9;
      }

      v12 = (*(v11 + 12) - 1);
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

    if ((AttrPropTable[v12] & 2) == 0)
    {
      llvm::Attribute::getAsString(&v75, 0, &v79);
      v18 = std::string::insert(&v79, 0, "Attribute '");
      v19 = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&__p, "' does not apply to parameters");
      v21 = v20->__r_.__value_.__r.__words[2];
      v77 = *&v20->__r_.__value_.__l.__data_;
      v78[0] = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v74[0] = 260;
      p_p = &v77;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &p_p, &v80);
      if (SHIBYTE(v78[0]) < 0)
      {
        operator delete(v77);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      return;
    }

LABEL_9:
    ++v10;
    v9 -= 8;
  }

  while (v9);
  v13 = *(a2 + 13);
  if ((v13 & 4) != 0 && v8 != 1)
  {
LABEL_12:
    v14 = "Attribute 'immarg' is incompatible with other attributes";
LABEL_34:
    p_p = v14;
    v74[0] = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &p_p, &v80);
    return;
  }

LABEL_14:
  v15 = *(a2 + 20);
  v16 = *(a2 + 21);
  v17 = (v13 >> 3) & 1;
  if ((v16 & 4) != 0)
  {
    v17 = 1;
  }

  if (v17 + ((*(a2 + 14) >> 1) & 1) + (v16 & 1) + ((v15 >> 6) & 1) + ((v16 >> 1) & 1) + ((v15 >> 5) & 1) >= 2)
  {
    v14 = "Attributes 'byval', 'inalloca', 'preallocated', 'inreg', 'nest', 'byref', and 'sret' are incompatible!";
    goto LABEL_34;
  }

  if ((v16 & 1) != 0 && (*(a2 + 17) & 0x20) != 0)
  {
    v14 = "Attributes 'inalloca and readonly' are incompatible!";
    goto LABEL_34;
  }

  if ((v16 & 4) != 0 && (*(a2 + 17) & 0x40) != 0)
  {
    v14 = "Attributes 'sret and returned' are incompatible!";
    goto LABEL_34;
  }

  if (v15 & 0x10) != 0 && (*(a2 + 18))
  {
    v14 = "Attributes 'zeroext and signext' are incompatible!";
    goto LABEL_34;
  }

  if ((*(a2 + 17) & 0x10) != 0)
  {
    if ((*(a2 + 17) & 0x20) != 0)
    {
      v14 = "Attributes 'readnone and readonly' are incompatible!";
      goto LABEL_34;
    }

    if ((v15 & 8) != 0)
    {
      v14 = "Attributes 'readnone and writeonly' are incompatible!";
      goto LABEL_34;
    }
  }

  if ((*(a2 + 17) & 0x20) != 0 && (v15 & 8) != 0)
  {
    v14 = "Attributes 'readonly and writeonly' are incompatible!";
    goto LABEL_34;
  }

  if ((*(a2 + 15) & 4) != 0 && (*(a2 + 12) & 8) != 0)
  {
    v14 = "Attributes 'noinline and alwaysinline' are incompatible!";
    goto LABEL_34;
  }

  llvm::AttributeFuncs::typeIncompatible(a3, 3, &v77);
  v22 = *(a2 + 8);
  if (!v22)
  {
LABEL_51:
    if (!a3 || *(a3 + 8) != 15)
    {
      goto LABEL_132;
    }

    v25 = *(a2 + 20);
    if ((v25 & 0x40) != 0)
    {
      if ((*(a2 + 21) & 8) != 0)
      {
        Alignment = llvm::AttributeSetNode::getAlignment(a2);
        if ((Alignment & 0x100) != 0 && Alignment >= 0xFu)
        {
          v51 = "Attribute 'align' exceed the max size 2^14";
          goto LABEL_139;
        }
      }

      p_p = v74;
      v71 = v74;
      v72 = 4;
      v73 = 0;
      EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(a2, 70);
      v27 = 0;
      if ((v28 & 1) != 0 && EnumAttribute)
      {
        v27 = *(EnumAttribute + 16);
      }

      if ((llvm::Type::isSized(v27, &p_p) & 1) == 0)
      {
        v50 = "Attribute 'byval' does not support unsized types!";
        goto LABEL_111;
      }

      if (v71 != p_p)
      {
        free(v71);
      }

      v25 = *(a2 + 20);
    }

    if ((v25 & 0x20) != 0)
    {
      p_p = v74;
      v71 = v74;
      v72 = 4;
      v73 = 0;
      v29 = llvm::AttributeSetNode::findEnumAttribute(a2, 69);
      v30 = 0;
      if ((v31 & 1) != 0 && v29)
      {
        v30 = *(v29 + 16);
      }

      if ((llvm::Type::isSized(v30, &p_p) & 1) == 0)
      {
        v50 = "Attribute 'byref' does not support unsized types!";
        goto LABEL_111;
      }

      if (v71 != p_p)
      {
        free(v71);
      }
    }

    v32 = *(a2 + 21);
    if (v32)
    {
      p_p = v74;
      v71 = v74;
      v72 = 4;
      v73 = 0;
      v33 = llvm::AttributeSetNode::findEnumAttribute(a2, 72);
      v34 = 0;
      if ((v35 & 1) != 0 && v33)
      {
        v34 = *(v33 + 16);
      }

      if ((llvm::Type::isSized(v34, &p_p) & 1) == 0)
      {
        v50 = "Attribute 'inalloca' does not support unsized types!";
        goto LABEL_111;
      }

      if (v71 != p_p)
      {
        free(v71);
      }

      v32 = *(a2 + 21);
    }

    if ((v32 & 2) == 0)
    {
      goto LABEL_84;
    }

    p_p = v74;
    v71 = v74;
    v72 = 4;
    v73 = 0;
    v36 = llvm::AttributeSetNode::findEnumAttribute(a2, 73);
    v37 = 0;
    if ((v38 & 1) != 0 && v36)
    {
      v37 = *(v36 + 16);
    }

    if (llvm::Type::isSized(v37, &p_p))
    {
      if (v71 != p_p)
      {
        free(v71);
      }

LABEL_84:
      if (*(a3 + 24))
      {
        v39 = **(a3 + 16);
        v40 = *(a2 + 20);
        if (*(v39 + 8) != 15 && (v40 & 1) != 0)
        {
          v51 = "Attribute 'swifterror' only applies to parameters with pointer to pointer type!";
LABEL_139:
          p_p = v51;
          v74[0] = 259;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &p_p, &v80);
          goto LABEL_140;
        }

        if ((*(a2 + 20) & 0x20) != 0)
        {
          v42 = llvm::AttributeSetNode::findEnumAttribute(a2, 69);
          v43 = 0;
          if ((v44 & 1) != 0 && v42)
          {
            v43 = *(v42 + 16);
          }

          if (v43 != v39)
          {
            v51 = "Attribute 'byref' type does not match parameter!";
            goto LABEL_139;
          }
        }

        if ((v40 & 0x40) != 0)
        {
          v59 = llvm::AttributeSetNode::findEnumAttribute(a2, 70);
          if (v60)
          {
            if (v59)
            {
              v61 = *(v59 + 16);
              if (v61)
              {
                if (v61 != v39)
                {
                  v51 = "Attribute 'byval' type does not match parameter!";
                  goto LABEL_139;
                }
              }
            }
          }
        }

        v52 = *(a2 + 21);
        if ((v52 & 2) != 0)
        {
          v53 = llvm::AttributeSetNode::findEnumAttribute(a2, 73);
          v54 = 0;
          if ((v55 & 1) != 0 && v53)
          {
            v54 = *(v53 + 16);
          }

          if (v54 != v39)
          {
            v51 = "Attribute 'preallocated' type does not match parameter!";
            goto LABEL_139;
          }
        }

        if (v52)
        {
          v56 = llvm::AttributeSetNode::findEnumAttribute(a2, 72);
          v57 = 0;
          if ((v58 & 1) != 0 && v56)
          {
            v57 = *(v56 + 16);
          }

          if (v57 != v39)
          {
            v51 = "Attribute 'inalloca' type does not match parameter!";
            goto LABEL_139;
          }
        }

        if (v40 < 0)
        {
          v65 = llvm::AttributeSetNode::findEnumAttribute(a2, 71);
          v66 = 0;
          if ((v67 & 1) != 0 && v65)
          {
            v66 = *(v65 + 16);
          }

          if (v66 != v39)
          {
            v51 = "Attribute 'elementtype' type does not match parameter!";
            goto LABEL_139;
          }
        }
      }

LABEL_132:
      if ((*(a2 + 22) & 2) == 0)
      {
        goto LABEL_140;
      }

      v62 = llvm::AttributeSetNode::findEnumAttribute(a2, 81);
      if ((v63 & 1) != 0 && v62 && (v64 = *(v62 + 16)) != 0)
      {
        if ((v64 & 0xFFFFFC00) == 0)
        {
          goto LABEL_140;
        }

        v51 = "Invalid value for 'nofpclass' test mask";
      }

      else
      {
        v51 = "Attribute 'nofpclass' must have at least one test bit set";
      }

      goto LABEL_139;
    }

    v50 = "Attribute 'preallocated' does not support unsized types!";
LABEL_111:
    __p.__r_.__value_.__r.__words[0] = v50;
    v69 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &__p, &v80);
    if (v71 != p_p)
    {
      free(v71);
    }

    goto LABEL_140;
  }

  v23 = 8 * v22;
  while (1)
  {
    v24 = *v7;
    v76 = v24;
    if (!v24)
    {
      break;
    }

    if (*(v24 + 8) != 2)
    {
      v24 = *(v24 + 12);
      break;
    }

LABEL_50:
    ++v7;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_51;
    }
  }

  if (((*(&v78[-2] + ((v24 >> 3) & 0x1FFFFFF8)) >> v24) & 1) == 0)
  {
    goto LABEL_50;
  }

  llvm::Attribute::getAsString(&v76, 0, &v75);
  v45 = std::string::insert(&v75, 0, "Attribute '");
  v46 = v45->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v47 = std::string::append(&v79, "' applied to incompatible type!");
  v48 = v47->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  v74[0] = 260;
  p_p = &__p;
  llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &p_p, &v80);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

LABEL_140:
  std::__tree<llvm::SmallString<32u>>::destroy(v78, v78[1]);
}

void anonymous namespace::Verifier::verifyAttributeTypes(llvm::raw_ostream **a1, uint64_t a2, llvm::Type **a3)
{
  v71 = a3;
  if (a2)
  {
    v4 = (a2 + 48);
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2 + 48 + 8 * *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v4 == v5)
  {
    return;
  }

  while (1)
  {
    v70 = *v4;
    v6 = v70;
    if (!v70)
    {
      goto LABEL_194;
    }

    v7 = *(v70 + 8);
    if (v7 != 2)
    {
      break;
    }

    v8 = *(v70 + 12);
    if (v8 == 19)
    {
      if (*(v70 + 24) != 0x662D786F72707061 || *(v70 + 32) != 0x6D2D70662D636E75 || *(v70 + 35) != 0x6874616D2D70662DLL)
      {
        goto LABEL_31;
      }

      v11 = *(v70 + 16);
      if (!v11)
      {
        goto LABEL_31;
      }

      v12 = (v70 + 44);
      if (v11 == 5)
      {
        if (*v12 == 1936482662 && *(v70 + 48) == 101)
        {
          goto LABEL_31;
        }
      }

      else if (v11 == 4 && *v12 == 1702195828)
      {
        goto LABEL_31;
      }

      v66[0] = "invalid value for 'approx-func-fp-math' attribute: ";
      v67 = v70 + 44;
      v68 = v11;
      v69 = 1283;
      llvm::VerifierSupport::CheckFailed(a1, v66);
LABEL_31:
      v8 = *(v6 + 12);
    }

    if (v8 == 18)
    {
      v14 = *(v6 + 24) == 0x6572702D7373656CLL && *(v6 + 32) == 0x6D70662D65736963;
      if (v14 && *(v6 + 40) == 25697)
      {
        v16 = *(v6 + 16);
        if (v16)
        {
          v17 = (v6 + 43);
          if (v16 == 5)
          {
            if (*v17 != 1936482662 || *(v6 + 47) != 101)
            {
LABEL_50:
              v66[0] = "invalid value for 'less-precise-fpmad' attribute: ";
              v67 = v6 + 43;
              v68 = v16;
              v69 = 1283;
              llvm::VerifierSupport::CheckFailed(a1, v66);
            }
          }

          else if (v16 != 4 || *v17 != 1702195828)
          {
            goto LABEL_50;
          }
        }
      }
    }

    v19 = *(v6 + 12);
    if (v19 == 15)
    {
      if (*(v6 + 24) != 0x2D73666E692D6F6ELL || *(v6 + 31) != 0x6874616D2D70662DLL)
      {
        goto LABEL_67;
      }

      v21 = *(v6 + 16);
      if (!v21)
      {
        goto LABEL_67;
      }

      v22 = (v6 + 40);
      if (v21 == 5)
      {
        if (*v22 == 1936482662 && *(v6 + 44) == 101)
        {
          goto LABEL_67;
        }
      }

      else if (v21 == 4 && *v22 == 1702195828)
      {
        goto LABEL_67;
      }

      v66[0] = "invalid value for 'no-infs-fp-math' attribute: ";
      v67 = v6 + 40;
      v68 = v21;
      v69 = 1283;
      llvm::VerifierSupport::CheckFailed(a1, v66);
LABEL_67:
      v19 = *(v6 + 12);
    }

    if (v19 == 21)
    {
      v24 = *(v6 + 24) == 0x6E696C6E692D6F6ELL && *(v6 + 32) == 0x742D656E696C2D65;
      if (v24 && *(v6 + 37) == 0x73656C6261742D65)
      {
        v26 = *(v6 + 16);
        if (v26)
        {
          v27 = (v6 + 46);
          if (v26 == 5)
          {
            if (*v27 != 1936482662 || *(v6 + 50) != 101)
            {
LABEL_86:
              v66[0] = "invalid value for 'no-inline-line-tables' attribute: ";
              v67 = v6 + 46;
              v68 = v26;
              v69 = 1283;
              llvm::VerifierSupport::CheckFailed(a1, v66);
            }
          }

          else if (v26 != 4 || *v27 != 1702195828)
          {
            goto LABEL_86;
          }
        }
      }
    }

    v29 = *(v6 + 12);
    if (v29 == 14)
    {
      if (*(v6 + 24) != 0x2D706D756A2D6F6ELL || *(v6 + 30) != 0x73656C6261742D70)
      {
        goto LABEL_103;
      }

      v31 = *(v6 + 16);
      if (!v31)
      {
        goto LABEL_103;
      }

      v32 = (v6 + 39);
      if (v31 == 5)
      {
        if (*v32 == 1936482662 && *(v6 + 43) == 101)
        {
          goto LABEL_103;
        }
      }

      else if (v31 == 4 && *v32 == 1702195828)
      {
        goto LABEL_103;
      }

      v66[0] = "invalid value for 'no-jump-tables' attribute: ";
      v67 = v6 + 39;
      v68 = v31;
      v69 = 1283;
      llvm::VerifierSupport::CheckFailed(a1, v66);
LABEL_103:
      v29 = *(v6 + 12);
    }

    if (v29 == 15 && *(v6 + 24) == 0x2D736E616E2D6F6ELL && *(v6 + 31) == 0x6874616D2D70662DLL)
    {
      v35 = *(v6 + 16);
      if (v35)
      {
        v36 = (v6 + 40);
        if (v35 == 5)
        {
          if (*v36 != 1936482662 || *(v6 + 44) != 101)
          {
LABEL_119:
            v66[0] = "invalid value for 'no-nans-fp-math' attribute: ";
            v67 = v6 + 40;
            v68 = v35;
            v69 = 1283;
            llvm::VerifierSupport::CheckFailed(a1, v66);
          }
        }

        else if (v35 != 4 || *v36 != 1702195828)
        {
          goto LABEL_119;
        }
      }
    }

    v38 = *(v6 + 12);
    if (v38 != 23)
    {
      goto LABEL_159;
    }

    if (*(v6 + 24) == 0x656E6769732D6F6ELL && *(v6 + 32) == 0x2D736F72657A2D64 && *(v6 + 39) == 0x6874616D2D70662DLL)
    {
      v41 = *(v6 + 16);
      if (v41)
      {
        v42 = (v6 + 48);
        if (v41 == 5)
        {
          if (*v42 != 1936482662 || *(v6 + 52) != 101)
          {
LABEL_138:
            v66[0] = "invalid value for 'no-signed-zeros-fp-math' attribute: ";
            v67 = v6 + 48;
            v68 = v41;
            v69 = 1283;
            llvm::VerifierSupport::CheckFailed(a1, v66);
          }
        }

        else if (v41 != 4 || *v42 != 1702195828)
        {
          goto LABEL_138;
        }
      }
    }

    v38 = *(v6 + 12);
    if (v38 == 23)
    {
      if (*(v6 + 24) != 0x2D656C69666F7270 || *(v6 + 32) != 0x612D656C706D6173 || *(v6 + 39) != 0x6574617275636361)
      {
        goto LABEL_158;
      }

      v46 = *(v6 + 16);
      if (!v46)
      {
        goto LABEL_158;
      }

      v47 = (v6 + 48);
      if (v46 == 5)
      {
        if (*v47 == 1936482662 && *(v6 + 52) == 101)
        {
          goto LABEL_158;
        }
      }

      else if (v46 == 4 && *v47 == 1702195828)
      {
        goto LABEL_158;
      }

      v66[0] = "invalid value for 'profile-sample-accurate' attribute: ";
      v67 = v6 + 48;
      v68 = v46;
      v69 = 1283;
      llvm::VerifierSupport::CheckFailed(a1, v66);
LABEL_158:
      v38 = *(v6 + 12);
    }

LABEL_159:
    if (v38 != 14)
    {
      goto LABEL_175;
    }

    if (*(v6 + 24) != 0x662D656661736E75 || *(v6 + 30) != 0x6874616D2D70662DLL)
    {
      goto LABEL_175;
    }

    v50 = *(v6 + 16);
    if (!v50)
    {
      goto LABEL_175;
    }

    v51 = (v6 + 39);
    if (v50 == 5)
    {
      if (*v51 == 1936482662 && *(v6 + 43) == 101)
      {
        goto LABEL_175;
      }

LABEL_174:
      v66[0] = "invalid value for 'unsafe-fp-math' attribute: ";
      v67 = v6 + 39;
      v68 = v50;
      v69 = 1283;
      llvm::VerifierSupport::CheckFailed(a1, v66);
      goto LABEL_175;
    }

    if (v50 != 4 || *v51 != 1702195828)
    {
      goto LABEL_174;
    }

LABEL_175:
    if (*(v6 + 12) != 18)
    {
      goto LABEL_194;
    }

    v53 = *(v6 + 24) == 0x706D61732D657375 && *(v6 + 32) == 0x69666F72702D656CLL;
    if (!v53 || *(v6 + 40) != 25964)
    {
      goto LABEL_194;
    }

    v55 = *(v6 + 16);
    if (!v55)
    {
      goto LABEL_194;
    }

    v56 = (v6 + 43);
    if (v55 == 5)
    {
      if (*v56 == 1936482662 && *(v6 + 47) == 101)
      {
        goto LABEL_194;
      }
    }

    else if (v55 == 4 && *v56 == 1702195828)
    {
      goto LABEL_194;
    }

    v66[0] = "invalid value for 'use-sample-profile' attribute: ";
    v67 = v6 + 43;
    v68 = v55;
    v69 = 1283;
    llvm::VerifierSupport::CheckFailed(a1, v66);
LABEL_194:
    if (++v4 == v5)
    {
      return;
    }
  }

  if ((v7 == 1) == (*(v70 + 12) - 75) < 0xA)
  {
    goto LABEL_194;
  }

  llvm::Attribute::getAsString(&v70, 0, &v62);
  v58 = std::string::insert(&v62, 0, "Attribute '");
  v59 = v58->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = *&v58->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(&v63, "' should have an Argument");
  v61 = v60->__r_.__value_.__r.__words[2];
  *__p = *&v60->__r_.__value_.__l.__data_;
  v65 = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v69 = 260;
  v66[0] = __p;
  llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, v66, &v71);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }
}

uint64_t anonymous namespace::Verifier::verifyFunctionAttrs(llvm::FunctionType *,llvm::AttributeList,llvm::Value const*,BOOL,BOOL)::$_0::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a1[1];
  v6 = **a1;
  if (*(v6 + 12) - 1 <= a4)
  {
    v12 = 1283;
    v9 = "'allocsize' ";
    v10 = a2;
    v11 = a3;
    v8 = " argument is out of bounds";
  }

  else
  {
    if (*(*(*(v6 + 16) + 8 * (a4 + 1)) + 8) == 13)
    {
      return 1;
    }

    v12 = 1283;
    v9 = "'allocsize' ";
    v10 = a2;
    v11 = a3;
    v8 = " argument must refer to an integer parameter";
  }

  v13[0] = &v9;
  v13[2] = v8;
  v14 = 770;
  llvm::VerifierSupport::CheckFailed<llvm::Function const*>(v5, v13, a1[2]);
  return 0;
}

void anonymous namespace::Verifier::checkUnsignedBaseTenFuncAttr(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, unint64_t *a4, llvm::Type **a5)
{
  v24 = a5;
  v25 = a2;
  if (llvm::AttributeList::hasAttributeAtIndex(&v25, -1, a3, a4))
  {
    if (a2 && *(a2 + 8))
    {
      v10 = *(a2 + 40);
    }

    else
    {
      v10 = 0;
    }

    v19 = v10;
    Attribute = llvm::AttributeSet::getAttribute(&v19, a3, a4, v9);
    if (Attribute)
    {
      v13 = *(Attribute + 16);
      v14 = Attribute + *(Attribute + 12) + 25;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v17[0] = 0;
    v19 = v14;
    v20 = v13;
    if ((llvm::consumeUnsignedInteger(&v19, 0xA, v17, v12) & 1) != 0 || v20 || HIDWORD(v17[0]))
    {
      v16 = 1283;
      v15[0] = "";
      v15[2] = a3;
      v15[3] = a4;
      v17[0] = v15;
      v17[2] = " takes an unsigned integer: ";
      v18 = 770;
      v19 = v17;
      v21 = v14;
      v22 = v13;
      v23 = 1282;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &v19, &v24);
    }
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(llvm::raw_ostream **a1, const llvm::Twine *a2, uint64_t *a3)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    v5 = *a3;

    llvm::VerifierSupport::Write(a1, v5);
  }
}

llvm::raw_ostream *llvm::VerifierSupport::WriteTs<llvm::Function *,llvm::Module *>(uint64_t ***this, llvm::Type **a2, const llvm::Module **a3)
{
  if (a2)
  {
    llvm::VerifierSupport::Write(this, a2);
  }

  v5 = *a3;
  v6 = *this;

  return llvm::VerifierSupport::Write(v6, v5);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::destroyAll(uint64_t *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 16 * v1;
    result = (*result + 8);
    do
    {
      if ((*(result - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = llvm::TinyPtrVector<llvm::BasicBlock *>::~TinyPtrVector(result);
      }

      result += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::VerifierSupport::WriteTs<llvm::Function const*,llvm::MDNode *>(uint64_t ***this, llvm::Type **a2, uint64_t *a3)
{
  if (a2)
  {
    llvm::VerifierSupport::Write(this, a2);
  }

  v5 = *a3;

  return llvm::VerifierSupport::Write(this, v5);
}

void llvm::VerifierSupport::DebugInfoCheckFailed(llvm::raw_ostream **this, const llvm::Twine *a2)
{
  v3 = *this;
  if (*this)
  {
    llvm::Twine::print(a2, v3);
    v4 = *(v3 + 4);
    if (v4 >= *(v3 + 3))
    {
      llvm::raw_ostream::write(v3, 10);
    }

    else
    {
      *(v3 + 4) = v4 + 1;
      *v4 = 10;
    }
  }

  *(this + 192) |= *(this + 194);
  *(this + 193) = 1;
}

void anonymous namespace::Verifier::visitDILocation(llvm::raw_ostream **this, const llvm::DILocation *a2)
{
  v4 = a2 - 16;
  v5 = *(a2 - 2);
  if ((v5 & 2) == 0)
  {
    v6 = (v5 >> 2) & 0xF;
    v7 = &v4[-8 * v6];
    v8 = *v7;
    if (*v7 && *v8 - 20 >= 0xFFFFFFFD)
    {
      if ((*(a2 - 2) & 0x3C0) != 0x80)
      {
        v9 = -v6;
LABEL_16:
        v7 = &v4[8 * v9];
        goto LABEL_18;
      }

      goto LABEL_12;
    }

LABEL_8:
    v14 = a2;
    v15[0] = "location requires a valid scope";
    v16 = 259;
    v13 = v8;
    v10 = &v14;
    v11 = &v13;
    goto LABEL_9;
  }

  v7 = *(a2 - 4);
  v8 = *v7;
  if (!*v7 || *v8 - 20 <= 0xFFFFFFFC)
  {
    goto LABEL_8;
  }

  if (*(a2 - 6) == 2)
  {
LABEL_12:
    v12 = *(v7 + 1);
    v14 = v12;
    if (!v12 || *v12 == 5)
    {
      if ((v5 & 2) != 0)
      {
        v7 = *(a2 - 4);
        goto LABEL_18;
      }

      v9 = -((v5 >> 2) & 0xF);
      goto LABEL_16;
    }

    v15[0] = "inlined-at should be a location";
    v16 = 259;
    v13 = a2;
    v10 = &v13;
    v11 = &v14;
LABEL_9:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v15, v10, v11);
    return;
  }

LABEL_18:
  if (**v7 == 17 && (*(*v7 + 36) & 8) == 0)
  {
    v15[0] = "scope points into the type hierarchy";
    v16 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v15);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIExpression(llvm::raw_ostream **this, const llvm::DIExpression *a2)
{
  if (!llvm::DIExpression::isValid(a2))
  {
    v4 = "invalid expression";
    v5 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, &v4);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIGlobalVariableExpression(llvm::raw_ostream **this, uint64_t a2)
{
  v5 = (a2 - 16);
  v4 = *(a2 - 16);
  if ((v4 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = &v5[-((v4 >> 2) & 0xF)];
  }

  if (!*v6)
  {
    v19[0] = "missing variable";
    v20 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v19);
    return;
  }

  if ((*v5 & 2) != 0)
  {
    v7 = *(a2 - 32);
  }

  else
  {
    v7 = &v5[-((*v5 >> 2) & 0xFLL)];
  }

  v8 = v7[1];
  if (v8)
  {
    llvm::DIExpression::getFragmentInfo(*(v8 + 16), *(v8 + 24), &v16);
    if (v17 == 1)
    {
      v9 = (*v5 & 2) != 0 ? *(a2 - 32) : &v5[-((*v5 >> 2) & 0xFLL)];
      v10 = *v9;
      v11 = v16.i32[0];
      v12 = v16.i32[2];
      v21 = a2;
      SizeInBits = llvm::DIVariable::getSizeInBits(v10);
      if (v14)
      {
        if ((v12 + v11) <= SizeInBits)
        {
          if (SizeInBits != v11)
          {
            return;
          }

          v15 = "fragment covers entire variable";
        }

        else
        {
          v15 = "fragment is larger than or outside of variable";
        }

        v18 = v10;
        v19[0] = v15;
        v20 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v19, &v21, &v18);
      }
    }
  }
}

void anonymous namespace::Verifier::visitGenericDINode(llvm::raw_ostream **a1, uint64_t a2)
{
  if (!*(a2 + 2))
  {
    v8 = v2;
    v9 = v3;
    v6 = "invalid tag";
    v7 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, &v6);
    if (*a1)
    {
      llvm::VerifierSupport::Write(a1, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDISubrange(llvm::raw_ostream **this, const llvm::DISubrange *a2)
{
  if (*(a2 + 1) != 33)
  {
    v11 = "invalid tag";
LABEL_56:
    v34 = a2;
    v35 = v11;
    v36 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(this, &v35, &v34);
    return;
  }

  v4 = *(this + 201);
  v5 = v4 > 0x2D;
  v6 = (1 << v4) & 0x200C00004180;
  if (v5 || v6 == 0)
  {
    v19 = *(a2 - 2);
    v20 = (v19 & 2) != 0 ? *(a2 - 4) : (a2 - 8 * ((v19 >> 2) & 0xF) - 16);
    if (!*v20 && !*(v20 + 2))
    {
      v11 = "Subrange must contain count or upperBound";
      goto LABEL_56;
    }
  }

  v8 = a2 - 16;
  v9 = *(a2 - 2);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 - 4);
  }

  else
  {
    v10 = &v8[-8 * ((v9 >> 2) & 0xF)];
  }

  if (*v10)
  {
    if (*(v10 + 2))
    {
      v11 = "Subrange can have any one of count or upperBound";
      goto LABEL_56;
    }

    v12 = **v10;
    v5 = v12 > 0x19;
    v13 = (1 << v12) & 0x3000042;
    if (v5 || v13 == 0)
    {
      v11 = "Count must be signed constant or DIVariable or DIExpression";
      goto LABEL_56;
    }
  }

  Count = llvm::DISubrange::getCount(a2);
  if (Count >= 8 && (Count & 6) == 0)
  {
    v16 = Count & 0xFFFFFFFFFFFFFFF8;
    v17 = *((Count & 0xFFFFFFFFFFFFFFF8) + 32);
    v18 = v17 > 0x40 ? **(v16 + 24) : (*(v16 + 24) << -v17) >> -v17;
    if (v18 <= -2)
    {
      v11 = "invalid subrange count";
      goto LABEL_56;
    }
  }

  if ((v9 & 2) != 0)
  {
    v21 = *(a2 - 4);
  }

  else
  {
    v21 = &v8[-8 * ((v9 >> 2) & 0xF)];
  }

  v22 = *(v21 + 1);
  if (v22)
  {
    v23 = *v22;
    v5 = v23 > 0x19;
    v24 = (1 << v23) & 0x3000042;
    if (v5 || v24 == 0)
    {
      v11 = "LowerBound must be signed constant or DIVariable or DIExpression";
      goto LABEL_56;
    }
  }

  if ((v9 & 2) != 0)
  {
    v26 = *(a2 - 4);
  }

  else
  {
    v26 = &v8[-8 * ((v9 >> 2) & 0xF)];
  }

  v27 = *(v26 + 2);
  if (v27)
  {
    v28 = *v27;
    v5 = v28 > 0x19;
    v29 = (1 << v28) & 0x3000042;
    if (v5 || v29 == 0)
    {
      v11 = "UpperBound must be signed constant or DIVariable or DIExpression";
      goto LABEL_56;
    }
  }

  if ((v9 & 2) != 0)
  {
    v31 = *(a2 - 4);
  }

  else
  {
    v31 = &v8[-8 * ((v9 >> 2) & 0xF)];
  }

  v32 = *(v31 + 3);
  if (v32)
  {
    v33 = *v32;
    if (v33 > 0x19 || ((1 << v33) & 0x3000042) == 0)
    {
      v11 = "Stride must be signed constant or DIVariable or DIExpression";
      goto LABEL_56;
    }
  }
}

void anonymous namespace::Verifier::visitDIEnumerator(llvm::raw_ostream **this, const llvm::DIEnumerator *a2)
{
  if (*(a2 + 1) != 40)
  {
    v8 = v2;
    v9 = v3;
    v6 = "invalid tag";
    v7 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, &v6);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIBasicType(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  v5 = v4 > 0x3B;
  v6 = (1 << v4) & 0x800001000040000;
  if (v5 || v6 == 0)
  {
    v12 = v2;
    v13 = v3;
    v10 = "invalid tag";
    v11 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, &v10);
    if (*a1)
    {
      llvm::VerifierSupport::Write(a1, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIDerivedType(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  v5 = (v4 - 13);
  if (v5 <= 0x3E)
  {
    if (((1 << (v4 - 13)) & 0x442005002200820DLL) != 0)
    {
      goto LABEL_3;
    }

    if (v5 == 18)
    {
      v20 = a2 - 16;
      v21 = *(a2 - 16);
      if ((v21 & 2) != 0)
      {
        v22 = *(a2 - 32);
      }

      else
      {
        v22 = v20 - 8 * ((v21 >> 2) & 0xF);
      }

      v31 = *(v22 + 32);
      if (v31)
      {
        v32 = *v31;
        if ((v32 - 11) >= 4 && v32 != 34)
        {
          v35 = a2;
          v36[0] = "invalid pointer to member type";
          v37 = 259;
          if ((v21 & 2) != 0)
          {
            v33 = *(a2 - 32);
          }

          else
          {
            v33 = v20 - 8 * ((v21 >> 2) & 0xF);
          }

          v23 = *(v33 + 32);
          goto LABEL_56;
        }
      }

      goto LABEL_3;
    }

    if (v5 == 19)
    {
      v16 = *(a2 - 16);
      if ((v16 & 2) != 0)
      {
        v17 = *(a2 - 32);
      }

      else
      {
        v17 = a2 - 16 - 8 * ((v16 >> 2) & 0xF);
      }

      v24 = *(v17 + 24);
      v35 = v24;
      if (v24)
      {
        v25 = *v24;
        v26 = v25 == 11 ? v24 : 0;
        if (v25 != 13 || *(v24 + 1) != 4)
        {
          if (!v26 || ((v27 = *(v26 + 11), (v27 - 5) >= 4) ? (v28 = v27 == 2) : (v28 = 1), !v28))
          {
            v36[0] = "invalid set base type";
            v37 = 259;
            v34 = a2;
            v29 = &v34;
            v30 = &v35;
LABEL_57:
            llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(a1, v36, v29, v30);
            return;
          }
        }
      }

      goto LABEL_3;
    }
  }

  if (v4 != 17152)
  {
    v15 = "invalid tag";
    goto LABEL_24;
  }

LABEL_3:
  v6 = a2 - 16;
  v7 = *(a2 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(a2 - 32);
  }

  else
  {
    v8 = v6 - 8 * ((v7 >> 2) & 0xF);
  }

  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *v9;
    if ((v10 - 11) >= 0xB && v10 != 32 && v10 != 34)
    {
      v35 = a2;
      v36[0] = "invalid scope";
      v37 = 259;
      if ((v7 & 2) != 0)
      {
        v18 = *(a2 - 32);
      }

      else
      {
        v18 = v6 - 8 * ((v7 >> 2) & 0xF);
      }

      v23 = *(v18 + 8);
LABEL_56:
      v34 = v23;
      v29 = &v35;
      v30 = &v34;
      goto LABEL_57;
    }
  }

  if ((v7 & 2) != 0)
  {
    v11 = *(a2 - 32);
  }

  else
  {
    v11 = v6 - 8 * ((v7 >> 2) & 0xF);
  }

  v12 = *(v11 + 24);
  if (v12)
  {
    v13 = *v12;
    if ((v13 - 11) >= 4 && v13 != 34)
    {
      v35 = a2;
      v36[0] = "invalid base type";
      v37 = 259;
      if ((v7 & 2) != 0)
      {
        v19 = *(a2 - 32);
      }

      else
      {
        v19 = v6 - 8 * ((v7 >> 2) & 0xF);
      }

      v23 = *(v19 + 24);
      goto LABEL_56;
    }
  }

  if ((*(a2 + 44) & 0x100000000) != 0)
  {
    v14 = v4 - 15;
    if (v14 > 0x33 || ((1 << v14) & 0x8000000000003) == 0)
    {
      v15 = "DWARF address space only applies to pointer or reference types";
LABEL_24:
      v35 = a2;
      v36[0] = v15;
      v37 = 259;
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, v36, &v35);
    }
  }
}

void anonymous namespace::Verifier::visitDICompositeType(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  v5 = v4 > 0x33;
  v6 = (1 << v4) & 0x8080000880016;
  if (v5 || v6 == 0)
  {
    v22 = "invalid tag";
    goto LABEL_79;
  }

  v9 = a2 - 16;
  v8 = *(a2 - 16);
  if ((v8 & 2) != 0)
  {
    v10 = *(a2 - 32);
  }

  else
  {
    v10 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = *v11;
    if ((v12 - 11) >= 0xB && v12 != 32 && v12 != 34)
    {
      v40 = a2;
      v41[0] = "invalid scope";
      v42 = 259;
      if ((v8 & 2) != 0)
      {
        v23 = *(a2 - 32);
      }

      else
      {
        v23 = v9 - 8 * ((v8 >> 2) & 0xF);
      }

      v27 = *(v23 + 8);
LABEL_73:
      v39 = v27;
      goto LABEL_74;
    }
  }

  if ((v8 & 2) != 0)
  {
    v13 = *(a2 - 32);
  }

  else
  {
    v13 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = *v14;
    if ((v15 - 11) >= 4 && v15 != 34)
    {
      v40 = a2;
      v41[0] = "invalid base type";
      v42 = 259;
      if ((v8 & 2) != 0)
      {
        v24 = *(a2 - 32);
      }

      else
      {
        v24 = v9 - 8 * ((v8 >> 2) & 0xF);
      }

      v27 = *(v24 + 24);
      goto LABEL_73;
    }
  }

  if ((v8 & 2) != 0)
  {
    v16 = *(a2 - 32);
  }

  else
  {
    v16 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  v17 = *(v16 + 32);
  if (v17 && *v17 != 4)
  {
    v40 = a2;
    v41[0] = "invalid composite elements";
    v42 = 259;
    v39 = v17;
LABEL_74:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(a1, v41, &v40, &v39);
    return;
  }

  v18 = *(v16 + 40);
  if (v18)
  {
    v19 = *v18;
    if ((v19 - 11) >= 4 && v19 != 34)
    {
      v40 = a2;
      v41[0] = "invalid vtable holder";
      v42 = 259;
      if ((v8 & 2) != 0)
      {
        v26 = *(a2 - 32);
      }

      else
      {
        v26 = v9 - 8 * ((v8 >> 2) & 0xF);
      }

      v27 = *(v26 + 40);
      goto LABEL_73;
    }
  }

  v20 = *(a2 + 20);
  if ((~v20 & 0x6000) == 0 || (v20 & 0xC00000) == 0xC00000)
  {
    v22 = "invalid reference flags";
LABEL_79:
    v40 = a2;
    v41[0] = v22;
    v42 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, v41, &v40);
    return;
  }

  if ((v20 & 0x10) != 0)
  {
    v22 = "DIBlockByRefStruct on DICompositeType is no longer supported";
    goto LABEL_79;
  }

  if ((v20 & 0x800) != 0)
  {
    if ((v8 & 2) != 0)
    {
      v25 = *(a2 - 32);
    }

    else
    {
      v25 = v9 - 8 * ((v8 >> 2) & 0xF);
    }

    v32 = *(v25 + 32);
    if (v32)
    {
      v33 = *(v32 - 16);
      if ((v33 & 2) != 0)
      {
        if (*(v32 - 24) == 1)
        {
          v34 = *(v32 - 32);
LABEL_77:
          if (*(*v34 + 2) == 33)
          {
            goto LABEL_28;
          }
        }
      }

      else if ((*(v32 - 16) & 0x3C0) == 0x40)
      {
        v34 = v32 - 16 - 8 * ((v33 >> 2) & 0xF);
        goto LABEL_77;
      }
    }

    v22 = "invalid vector, expected one element of type subrange";
    goto LABEL_79;
  }

LABEL_28:
  if ((v8 & 2) != 0)
  {
    v21 = *(a2 - 32);
  }

  else
  {
    v21 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  v28 = *(v21 + 48);
  if (v28)
  {
    v8 = *(a2 - 16);
  }

  if ((v8 & 2) != 0)
  {
    v29 = *(a2 - 32);
  }

  else
  {
    v29 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  v30 = *(v29 + 64);
  if (v30 && (*v30 != 12 || *(a2 + 2) != 51))
  {
    v35 = "discriminator can only appear on variant part";
    goto LABEL_97;
  }

  if ((v8 & 2) != 0)
  {
    v31 = *(a2 - 32);
  }

  else
  {
    v31 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  if (*(v31 + 72) && *(a2 + 2) != 1)
  {
    v35 = "dataLocation can only appear in array type";
LABEL_97:
    v41[0] = v35;
    v42 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, v41);
    return;
  }

  if ((v8 & 2) != 0)
  {
    v36 = *(a2 - 32);
  }

  else
  {
    v36 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  if (*(v36 + 80) && *(a2 + 2) != 1)
  {
    v35 = "associated can only appear in array type";
    goto LABEL_97;
  }

  if ((v8 & 2) != 0)
  {
    v37 = *(a2 - 32);
  }

  else
  {
    v37 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  if (*(v37 + 88) && *(a2 + 2) != 1)
  {
    v35 = "allocated can only appear in array type";
    goto LABEL_97;
  }

  if ((v8 & 2) != 0)
  {
    v38 = *(a2 - 32);
  }

  else
  {
    v38 = v9 - 8 * ((v8 >> 2) & 0xF);
  }

  if (*(v38 + 96) && *(a2 + 2) != 1)
  {
    v35 = "rank can only appear in array type";
    goto LABEL_97;
  }
}

void anonymous namespace::Verifier::visitDISubroutineType(llvm::raw_ostream **this, uint64_t a2)
{
  if (*(a2 + 2) != 21)
  {
    v7 = "invalid tag";
LABEL_25:
    v20 = a2;
    v21[0] = v7;
    v22 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(this, v21, &v20);
    return;
  }

  v4 = a2 - 16;
  v5 = *(a2 - 16);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = v4 - 8 * ((v5 >> 2) & 0xF);
  }

  v8 = *(v6 + 24);
  v20 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  if (*v8 != 4)
  {
    v21[0] = "invalid composite elements";
    v22 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v21);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
      llvm::VerifierSupport::Write(this, v8);
    }

    return;
  }

  if ((v5 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = v4 - 8 * ((v5 >> 2) & 0xF);
  }

  v10 = *(v9 + 24);
  v11 = *(v10 - 16);
  if ((v11 & 2) == 0)
  {
    v12 = (v10 - 16 - 8 * ((v11 >> 2) & 0xF));
    v13 = (v11 >> 6) & 0xF;
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_17:
    v14 = 8 * v13;
    while (1)
    {
      v15 = *v12;
      v19 = v15;
      if (v15)
      {
        v16 = *v15;
        if ((v16 - 11) >= 4 && v16 != 34)
        {
          break;
        }
      }

      ++v12;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    v21[0] = "invalid subroutine type ref";
    v22 = 259;
    v18 = a2;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubroutineType const*,llvm::Metadata *,llvm::Metadata *>(this, v21, &v18, &v20, &v19);
    return;
  }

  v12 = *(v10 - 32);
  v13 = *(v10 - 24);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_22:
  v17 = *(a2 + 20);
  if ((~v17 & 0x6000) == 0 || (v17 & 0xC00000) == 0xC00000)
  {
    v7 = "invalid reference flags";
    goto LABEL_25;
  }
}

void anonymous namespace::Verifier::visitDIFile(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) != 41)
  {
    v6 = "invalid tag";
LABEL_7:
    v11 = a2;
    v12 = v6;
    v13 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, &v12, &v11);
    return;
  }

  if (*(a2 + 32) != 1)
  {
    return;
  }

  v2 = *(a2 + 16);
  if (v2 >= 4)
  {
    v6 = "invalid checksum kind";
    goto LABEL_7;
  }

  v3 = *(*(a2 + 24) + 8);
  v4 = v2 - 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_2750DE050[v4];
  }

  v9 = *v3;
  v7 = v3 + 3;
  v8 = v9;
  if (v9 != v5)
  {
    v6 = "invalid checksum length";
    goto LABEL_7;
  }

  if (v8)
  {
    v10 = 0;
    while (llvm::hexDigitValue(char)::LUT[*(v7 + v10)] != -1)
    {
      if (v8 == ++v10)
      {
        return;
      }
    }

    if (v10 != -1)
    {
      v6 = "invalid checksum";
      goto LABEL_7;
    }
  }
}

void anonymous namespace::Verifier::visitDICompileUnit(llvm::raw_ostream **this, unsigned __int8 *a2)
{
  if ((a2[1] & 0x7F) != 1)
  {
    v9 = "compile units must be distinct";
LABEL_8:
    v76 = a2;
    v77[0] = v9;
    v78 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(this, v77, &v76);
    return;
  }

  if (*(a2 + 1) != 17)
  {
    v9 = "invalid tag";
    goto LABEL_8;
  }

  v4 = *a2;
  v5 = a2;
  if (v4 != 15)
  {
    v6 = a2 - 16;
    v7 = *(a2 - 2);
    v8 = (v7 & 2) != 0 ? *(a2 - 4) : &v6[-8 * ((v7 >> 2) & 0xF)];
    v5 = *v8;
    if (!v5 || *v5 != 15)
    {
      v76 = a2;
      v77[0] = "invalid file";
      v78 = 259;
      if ((v7 & 2) != 0)
      {
        v12 = *(a2 - 4);
      }

      else
      {
        v12 = &v6[-8 * ((v7 >> 2) & 0xF)];
      }

      v75 = *v12;
      v20 = &v76;
      goto LABEL_28;
    }
  }

  v10 = *(v5 - 2);
  if ((v10 & 2) != 0)
  {
    v11 = *(v5 - 4);
  }

  else
  {
    v11 = &v5[-8 * ((v10 >> 2) & 0xF) - 16];
  }

  v13 = *v11;
  if (!v13 || !**(v13 + 8))
  {
    v77[0] = "invalid filename";
    v78 = 259;
    v17 = a2;
    if (v4 != 15)
    {
      v18 = *(a2 - 2);
      if ((v18 & 2) != 0)
      {
        v19 = *(a2 - 4);
      }

      else
      {
        v19 = &a2[-8 * ((v18 >> 2) & 0xF) - 16];
      }

      v17 = *v19;
    }

    llvm::VerifierSupport::DebugInfoCheckFailed(this, v77);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
      llvm::VerifierSupport::Write(this, v17);
    }

    return;
  }

  *(this + 201) = *(a2 + 4);
  v14 = a2;
  if (v4 != 15)
  {
    v15 = *(a2 - 2);
    if ((v15 & 2) != 0)
    {
      v16 = *(a2 - 4);
    }

    else
    {
      v16 = &a2[-8 * ((v15 >> 2) & 0xF) - 16];
    }

    v14 = *v16;
  }

  if (*(a2 + 7) >= 4u)
  {
    v9 = "invalid emission kind";
    goto LABEL_8;
  }

  v22 = a2 - 16;
  v23 = *(a2 - 2);
  if ((v23 & 2) != 0)
  {
    v24 = *(a2 - 4);
  }

  else
  {
    v24 = &v22[-8 * ((v23 >> 2) & 0xF)];
  }

  v25 = *(v24 + 4);
  v76 = v25;
  if (!v25)
  {
    goto LABEL_56;
  }

  if (*v25 != 4)
  {
    v27 = "invalid enum list";
    goto LABEL_125;
  }

  v26 = (v23 & 2) != 0 ? *(a2 - 4) : &v22[-8 * ((v23 >> 2) & 0xF)];
  v28 = *(v26 + 4);
  v29 = *(v28 - 16);
  if ((v29 & 2) != 0)
  {
    v30 = *(v28 - 32);
    v31 = *(v28 - 24);
  }

  else
  {
    v30 = (v28 - 16 - 8 * ((v29 >> 2) & 0xF));
    v31 = (v29 >> 6) & 0xF;
  }

  if (!v31)
  {
LABEL_56:
    if ((v23 & 2) != 0)
    {
      v34 = *(a2 - 4);
    }

    else
    {
      v34 = &v22[-8 * ((v23 >> 2) & 0xF)];
    }

    v35 = *(v34 + 5);
    v76 = v35;
    if (v35)
    {
      if (*v35 != 4)
      {
        v27 = "invalid retained type list";
        goto LABEL_125;
      }

      if ((v23 & 2) != 0)
      {
        v36 = *(a2 - 4);
      }

      else
      {
        v36 = &v22[-8 * ((v23 >> 2) & 0xF)];
      }

      v38 = *(v36 + 5);
      v39 = *(v38 - 16);
      if ((v39 & 2) != 0)
      {
        v40 = *(v38 - 32);
        v41 = *(v38 - 24);
      }

      else
      {
        v40 = (v38 - 16 - 8 * ((v39 >> 2) & 0xF));
        v41 = (v39 >> 6) & 0xF;
      }

      if (v41)
      {
        v42 = 8 * v41;
        while (1)
        {
          v43 = *v40;
          v75 = v43;
          if (!v43)
          {
            break;
          }

          v44 = *v43;
          if ((v44 - 11) >= 4 && v44 != 34 && (v44 != 17 || (v43[36] & 8) != 0))
          {
            break;
          }

          ++v40;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_80;
          }
        }

        v45 = "invalid retained type";
        goto LABEL_138;
      }
    }

LABEL_80:
    if ((v23 & 2) != 0)
    {
      v46 = *(a2 - 4);
    }

    else
    {
      v46 = &v22[-8 * ((v23 >> 2) & 0xF)];
    }

    v47 = *(v46 + 6);
    v76 = v47;
    if (v47)
    {
      if (*v47 != 4)
      {
        v27 = "invalid global variable list";
        goto LABEL_125;
      }

      if ((v23 & 2) != 0)
      {
        v48 = *(a2 - 4);
      }

      else
      {
        v48 = &v22[-8 * ((v23 >> 2) & 0xF)];
      }

      v49 = *(v48 + 6);
      v50 = *(v49 - 16);
      if ((v50 & 2) != 0)
      {
        v51 = *(v49 - 32);
        v52 = *(v49 - 24);
      }

      else
      {
        v51 = (v49 - 16 - 8 * ((v50 >> 2) & 0xF));
        v52 = (v50 >> 6) & 0xF;
      }

      if (v52)
      {
        v53 = 8 * v52;
        while (1)
        {
          v54 = *v51;
          v75 = v54;
          if (!v54 || *v54 != 7)
          {
            break;
          }

          ++v51;
          v53 -= 8;
          if (!v53)
          {
            goto LABEL_99;
          }
        }

        v45 = "invalid global variable ref";
        goto LABEL_138;
      }
    }

LABEL_99:
    if ((v23 & 2) != 0)
    {
      v55 = *(a2 - 4);
    }

    else
    {
      v55 = &v22[-8 * ((v23 >> 2) & 0xF)];
    }

    v56 = *(v55 + 7);
    v76 = v56;
    if (v56)
    {
      if (*v56 != 4)
      {
        v27 = "invalid imported entity list";
        goto LABEL_125;
      }

      if ((v23 & 2) != 0)
      {
        v57 = *(a2 - 4);
      }

      else
      {
        v57 = &v22[-8 * ((v23 >> 2) & 0xF)];
      }

      v58 = *(v57 + 7);
      v59 = *(v58 - 16);
      if ((v59 & 2) != 0)
      {
        v60 = *(v58 - 32);
        v61 = *(v58 - 24);
      }

      else
      {
        v60 = (v58 - 16 - 8 * ((v59 >> 2) & 0xF));
        v61 = (v59 >> 6) & 0xF;
      }

      if (v61)
      {
        v62 = 8 * v61;
        while (1)
        {
          v63 = *v60;
          v75 = v63;
          if (!v63 || *v63 != 28)
          {
            break;
          }

          ++v60;
          v62 -= 8;
          if (!v62)
          {
            goto LABEL_117;
          }
        }

        v45 = "invalid imported entity ref";
        goto LABEL_138;
      }
    }

LABEL_117:
    if ((v23 & 2) != 0)
    {
      v64 = *(a2 - 4);
    }

    else
    {
      v64 = &v22[-8 * ((v23 >> 2) & 0xF)];
    }

    v65 = *(v64 + 8);
    v76 = v65;
    if (!v65)
    {
      goto LABEL_136;
    }

    if (*v65 == 4)
    {
      if ((v23 & 2) != 0)
      {
        v66 = *(a2 - 4);
      }

      else
      {
        v66 = &v22[-8 * ((v23 >> 2) & 0xF)];
      }

      v67 = *(v66 + 8);
      v68 = *(v67 - 16);
      if ((v68 & 2) != 0)
      {
        v69 = *(v67 - 32);
        v70 = *(v67 - 24);
      }

      else
      {
        v69 = (v67 - 16 - 8 * ((v68 >> 2) & 0xF));
        v70 = (v68 >> 6) & 0xF;
      }

      if (v70)
      {
        v71 = 8 * v70;
        while (1)
        {
          v72 = *v69;
          v75 = v72;
          if (!v72 || (*v72 & 0xFE) != 0x1E)
          {
            break;
          }

          ++v69;
          v71 -= 8;
          if (!v71)
          {
            goto LABEL_136;
          }
        }

        v45 = "invalid macro ref";
LABEL_138:
        v77[0] = v45;
        v78 = 259;
        v74 = a2;
        v20 = &v74;
LABEL_28:
        v21 = &v75;
LABEL_29:
        llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v77, v20, v21);
        return;
      }

LABEL_136:
      llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 93), a2, v77);
      return;
    }

    v27 = "invalid macro list";
LABEL_125:
    v77[0] = v27;
    v78 = 259;
    v75 = a2;
    v20 = &v75;
    v21 = &v76;
    goto LABEL_29;
  }

  v32 = 8 * v31;
  while (1)
  {
    v33 = *v30;
    v75 = v33;
    if (!v33 || *v33 != 13 || *(v33 + 2) != 4)
    {
      break;
    }

    ++v30;
    v32 -= 8;
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  v77[0] = "invalid enum type";
  v78 = 259;
  v74 = a2;
  if ((v23 & 2) != 0)
  {
    v37 = *(a2 - 4);
  }

  else
  {
    v37 = &v22[-8 * ((v23 >> 2) & 0xF)];
  }

  v73 = *(v37 + 4);
  llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubroutineType const*,llvm::Metadata *,llvm::Metadata *>(this, v77, &v74, &v73, &v75);
}

void anonymous namespace::Verifier::visitDISubprogram(llvm::raw_ostream **this, const llvm::DISubprogram *a2)
{
  if (*(a2 + 1) != 46)
  {
    v7 = "invalid tag";
LABEL_5:
    v61 = a2;
    v62[0] = v7;
    v63 = 259;
    v8 = &v61;
LABEL_6:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(this, v62, v8);
    return;
  }

  v5 = a2 - 16;
  v4 = *(a2 - 2);
  if ((v4 & 2) != 0)
  {
    v6 = *(a2 - 4);
  }

  else
  {
    v6 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v9 = *(v6 + 1);
  if (v9)
  {
    v10 = *v9;
    if ((v10 - 11) >= 0xB && v10 != 32 && v10 != 34)
    {
      v61 = a2;
      v62[0] = "invalid scope";
      v63 = 259;
      if ((v4 & 2) != 0)
      {
        v21 = *(a2 - 4);
      }

      else
      {
        v21 = &v5[-8 * ((v4 >> 2) & 0xF)];
      }

      v44 = *(v21 + 1);
      goto LABEL_102;
    }
  }

  if (*a2 != 15)
  {
    if ((v4 & 2) != 0)
    {
      v11 = *(a2 - 4);
    }

    else
    {
      v11 = &v5[-8 * ((v4 >> 2) & 0xF)];
    }

    v12 = *v11;
    v61 = v12;
    if (v12)
    {
      if (*v12 != 15)
      {
        v13 = "invalid file";
LABEL_54:
        v62[0] = v13;
        v63 = 259;
        v60 = a2;
        v26 = &v60;
LABEL_55:
        v27 = &v61;
LABEL_56:
        llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v62, v26, v27);
        return;
      }
    }

    else
    {
      v14 = *(a2 + 4);
      if (v14)
      {
        v62[0] = "line specified with no file";
        v63 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed(this, v62);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
          llvm::VerifierSupport::Write(*this, v14);
        }

        return;
      }
    }
  }

  if ((v4 & 2) != 0)
  {
    v15 = *(a2 - 4);
  }

  else
  {
    v15 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v16 = *(v15 + 4);
  v61 = v16;
  if (v16 && *v16 != 14)
  {
    v13 = "invalid subroutine type";
    goto LABEL_54;
  }

  if ((v4 & 2) != 0)
  {
    if (*(a2 - 6) < 9u)
    {
      goto LABEL_45;
    }

    v17 = *(a2 - 4);
  }

  else
  {
    if ((v4 & 0x3C0) <= 0x200)
    {
LABEL_34:
      if ((v4 & 0x380) <= 0x240)
      {
        goto LABEL_45;
      }

      v20 = &v5[-8 * ((v4 >> 2) & 0xF)];
      goto LABEL_43;
    }

    v17 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v18 = *(v17 + 8);
  if (v18)
  {
    v19 = *v18;
    if ((v19 - 11) >= 4 && v19 != 34)
    {
      v61 = a2;
      v62[0] = "invalid containing type";
      v63 = 259;
      if ((v4 & 2) != 0)
      {
        if (*(a2 - 6) >= 9u)
        {
          v43 = *(a2 - 4);
          goto LABEL_100;
        }
      }

      else if ((v4 & 0x3C0) > 0x200)
      {
        v43 = &v5[-8 * ((v4 >> 2) & 0xF)];
LABEL_100:
        v44 = *(v43 + 8);
LABEL_102:
        v60 = v44;
        v26 = &v61;
LABEL_103:
        v27 = &v60;
        goto LABEL_56;
      }

      v44 = 0;
      goto LABEL_102;
    }
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_34;
  }

  if (*(a2 - 6) < 0xAu)
  {
    goto LABEL_45;
  }

  v20 = *(a2 - 4);
LABEL_43:
  v22 = *(v20 + 9);
  if (v22)
  {
    v4 = *(a2 - 2);
  }

LABEL_45:
  if ((v4 & 2) != 0)
  {
    v23 = *(a2 - 4);
  }

  else
  {
    v23 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v24 = *(v23 + 6);
  v61 = v24;
  if (v24 && (*v24 != 17 || (*(v24 + 36) & 8) != 0))
  {
    v13 = "invalid subprogram declaration";
    goto LABEL_54;
  }

  if ((v4 & 2) != 0)
  {
    v25 = *(a2 - 4);
  }

  else
  {
    v25 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v28 = *(v25 + 7);
  v61 = v28;
  if (v28)
  {
    if (*v28 == 4)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v60 = v29;
    if (!v29)
    {
      v62[0] = "invalid retained nodes list";
      v63 = 259;
      v59 = a2;
      v26 = &v59;
      goto LABEL_55;
    }

    v30 = *(v29 - 2);
    if ((v30 & 2) != 0)
    {
      v31 = *(v29 - 4);
      v32 = *(v29 - 6);
    }

    else
    {
      v31 = (v29 - 8 * ((v30 >> 2) & 0xF) - 16);
      v32 = (v30 >> 6) & 0xF;
    }

    if (v32)
    {
      v33 = 8 * v32;
      while (1)
      {
        v34 = *v31;
        v59 = v34;
        if (!v34 || *v34 - 25 >= 2)
        {
          break;
        }

        ++v31;
        v33 -= 8;
        if (!v33)
        {
          goto LABEL_73;
        }
      }

      v62[0] = "invalid retained nodes, expected DILocalVariable or DILabel";
      v63 = 259;
      v58 = a2;
      v37 = &v58;
      v38 = &v60;
      v39 = &v59;
      goto LABEL_79;
    }
  }

LABEL_73:
  v35 = *(a2 + 8);
  if ((~v35 & 0x6000) == 0 || (v35 & 0xC00000) == 0xC00000)
  {
    v7 = "invalid reference flags";
    goto LABEL_5;
  }

  if ((v4 & 2) != 0)
  {
    v36 = *(a2 - 4);
  }

  else
  {
    v36 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v40 = *(v36 + 5);
  v61 = v40;
  if ((*(a2 + 36) & 8) != 0)
  {
    if ((*(a2 + 1) & 0x7F) != 1)
    {
      v41 = "subprogram definitions must be distinct";
      goto LABEL_105;
    }

    if (!v40)
    {
      v41 = "subprogram definitions must have a compile unit";
      goto LABEL_105;
    }

    if (*v40 != 16)
    {
      v13 = "invalid unit type";
      goto LABEL_54;
    }

    if (*a2 == 15)
    {
      if ((v4 & 2) != 0)
      {
        v42 = *(a2 - 4);
      }

      else
      {
        v42 = &v5[-8 * ((v4 >> 2) & 0xF)];
      }

      v47 = a2;
    }

    else
    {
      if ((v4 & 2) != 0)
      {
        v42 = *(a2 - 4);
      }

      else
      {
        v42 = &v5[-8 * ((v4 >> 2) & 0xF)];
      }

      v47 = *v42;
      if (!*v42)
      {
        goto LABEL_117;
      }
    }

    v4 = *(a2 - 2);
    goto LABEL_117;
  }

  if (v40)
  {
    v41 = "subprogram declarations must not have a compile unit";
LABEL_105:
    v62[0] = v41;
    v63 = 259;
    v60 = a2;
    v8 = &v60;
    goto LABEL_6;
  }

  if ((v4 & 2) != 0)
  {
    v45 = *(a2 - 4);
  }

  else
  {
    v45 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  if (*(v45 + 6))
  {
    v46 = "subprogram declaration must not have a declaration field";
LABEL_140:
    v62[0] = v46;
    v63 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v62);
    return;
  }

LABEL_117:
  if ((v4 & 2) != 0)
  {
    if (*(a2 - 6) < 0xBu)
    {
      goto LABEL_137;
    }

    v48 = *(a2 - 4);
  }

  else
  {
    if ((v4 & 0x3C0) <= 0x280)
    {
      goto LABEL_137;
    }

    v48 = &v5[-8 * ((v4 >> 2) & 0xF)];
  }

  v49 = *(v48 + 10);
  v60 = v49;
  if (v49)
  {
    if (*v49 == 4)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v59 = v50;
    if (!v50)
    {
      v62[0] = "invalid thrown types list";
      v63 = 259;
      v58 = a2;
      v26 = &v58;
      goto LABEL_103;
    }

    v51 = *(v50 - 2);
    if ((v51 & 2) != 0)
    {
      v52 = *(v50 - 4);
      v53 = *(v50 - 6);
    }

    else
    {
      v52 = (v50 - 8 * ((v51 >> 2) & 0xF) - 16);
      v53 = (v51 >> 6) & 0xF;
    }

    if (v53)
    {
      v54 = 8 * v53;
      while (1)
      {
        v55 = *v52;
        v58 = v55;
        if (!v55)
        {
          break;
        }

        v56 = *v55;
        if ((v56 - 11) >= 4 && v56 != 34)
        {
          break;
        }

        ++v52;
        v54 -= 8;
        if (!v54)
        {
          goto LABEL_137;
        }
      }

      v62[0] = "invalid thrown type";
      v63 = 259;
      v57 = a2;
      v37 = &v57;
      v38 = &v59;
      v39 = &v58;
LABEL_79:
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubroutineType const*,llvm::Metadata *,llvm::Metadata *>(this, v62, v37, v38, v39);
      return;
    }
  }

LABEL_137:
  if ((*(a2 + 35) & 0x20) != 0 && (*(a2 + 36) & 8) == 0)
  {
    v46 = "DIFlagAllCallsDescribed must be attached to a definition";
    goto LABEL_140;
  }
}

void anonymous namespace::Verifier::visitDILexicalBlock(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 20) == 0;
  }

  if (!v4)
  {
    v5 = "cannot have column info without line info";
    v6 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, &v5);
    if (*a1)
    {
      llvm::VerifierSupport::Write(a1, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDINamespace(llvm::raw_ostream **this, uint64_t a2)
{
  if (*(a2 + 2) == 57)
  {
    v4 = *(a2 - 16);
    if ((v4 & 2) != 0)
    {
      v5 = *(a2 - 32);
    }

    else
    {
      v5 = a2 - 16 - 8 * ((v4 >> 2) & 0xF);
    }

    v8 = *(v5 + 8);
    if (v8)
    {
      v9 = *v8;
      if ((v9 - 11) >= 0xB && v9 != 32 && v9 != 34)
      {
        v10[0] = "invalid scope ref";
        v11 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed(this, v10);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
          v6 = this;
          v7 = v8;
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
    v10[0] = "invalid tag";
    v11 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v10);
    if (*this)
    {
      v6 = this;
      v7 = a2;
LABEL_6:
      llvm::VerifierSupport::Write(v6, v7);
    }
  }
}

void anonymous namespace::Verifier::visitDIModule(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) != 30)
  {
    v4 = "invalid tag";
LABEL_9:
    v6 = a2;
    v7 = v4;
    v8 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, &v7, &v6);
    return;
  }

  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = a2 - 16 - 8 * ((v2 >> 2) & 0xF);
  }

  v5 = *(v3 + 16);
  if (!v5 || !**(v5 + 8))
  {
    v4 = "anonymous module";
    goto LABEL_9;
  }
}

void anonymous namespace::Verifier::visitDITemplateTypeParameter(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) != 47)
  {
    v4 = "invalid tag";
    v5 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, &v4);
    if (*a1)
    {
      llvm::VerifierSupport::Write(a1, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDITemplateValueParameter(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  if ((v4 - 16646) >= 2 && v4 != 48)
  {
    v5 = "invalid tag";
    v6 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, &v5);
    if (*a1)
    {
      llvm::VerifierSupport::Write(a1, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIGlobalVariable(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) != 52)
  {
    v7 = "invalid tag";
LABEL_5:
    v17 = a2;
    v18[0] = v7;
    v19 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, v18, &v17);
    return;
  }

  v4 = a2 - 16;
  v5 = *(a2 - 16);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = v4 - 8 * ((v5 >> 2) & 0xF);
  }

  v8 = *(v6 + 24);
  if (v8)
  {
    v9 = *v8;
    if ((v9 - 11) >= 4 && v9 != 34)
    {
      v17 = a2;
      v18[0] = "invalid type ref";
      v19 = 259;
      if ((v5 & 2) != 0)
      {
        v15 = *(a2 - 32);
      }

      else
      {
        v15 = v4 - 8 * ((v5 >> 2) & 0xF);
      }

      v16 = *(v15 + 24);
      v13 = &v17;
      v14 = &v16;
      goto LABEL_26;
    }
  }

  if (*(a2 + 25) == 1)
  {
    v10 = (v5 & 2) != 0 ? *(a2 - 32) : v4 - 8 * ((v5 >> 2) & 0xF);
    if (!*(v10 + 24))
    {
      v7 = "missing global variable type";
      goto LABEL_5;
    }
  }

  if ((v5 & 2) != 0)
  {
    v11 = *(a2 - 32);
  }

  else
  {
    v11 = v4 - 8 * ((v5 >> 2) & 0xF);
  }

  v12 = *(v11 + 48);
  v17 = v12;
  if (v12 && *v12 != 12)
  {
    v18[0] = "invalid static data member declaration";
    v19 = 259;
    v16 = a2;
    v13 = &v16;
    v14 = &v17;
LABEL_26:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(a1, v18, v13, v14);
  }
}

void anonymous namespace::Verifier::visitDILocalVariable(llvm::raw_ostream **a1, const llvm::DIVariable *a2)
{
  v4 = (a2 - 16);
  v5 = *(a2 - 2);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 - 4);
  }

  else
  {
    v6 = &v4[-4 * ((v5 >> 2) & 0xF)];
  }

  v7 = *(v6 + 3);
  if (v7)
  {
    v8 = *v7;
    if ((v8 - 11) >= 4 && v8 != 34)
    {
      v18 = a2;
      v19[0] = "invalid type ref";
      v20 = 259;
      if ((v5 & 2) != 0)
      {
        v15 = *(a2 - 4);
      }

      else
      {
        v15 = &v4[-4 * ((v5 >> 2) & 0xF)];
      }

      v17 = *(v15 + 3);
      goto LABEL_26;
    }
  }

  if (*(a2 + 1) == 52)
  {
    if ((v5 & 2) != 0)
    {
      v9 = *(a2 - 4);
      v10 = *v9;
      if (*v9 && *v10 - 20 > 0xFFFFFFFC)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = &v4[-4 * ((v5 >> 2) & 0xF)];
      v10 = *v9;
      if (*v9 && *v10 - 20 >= 0xFFFFFFFD)
      {
LABEL_18:
        v13 = v9[3];
        if (v13 && *v13 == 14)
        {
          v19[0] = "invalid type";
          v20 = 259;
          v14 = (v5 & 2) != 0 ? *(a2 - 4) : &v4[-4 * ((v5 >> 2) & 0xF)];
          v16 = *(v14 + 3);
          llvm::VerifierSupport::DebugInfoCheckFailed(a1, v19);
          if (*a1)
          {
            llvm::VerifierSupport::Write(a1, a2);
            v11 = a1;
            v12 = v16;
            goto LABEL_14;
          }
        }

        return;
      }
    }

    v18 = a2;
    v19[0] = "local variable requires a valid scope";
    v20 = 259;
    v17 = v10;
LABEL_26:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(a1, v19, &v18, &v17);
    return;
  }

  v19[0] = "invalid tag";
  v20 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, v19);
  if (*a1)
  {
    v11 = a1;
    v12 = a2;
LABEL_14:
    llvm::VerifierSupport::Write(v11, v12);
  }
}

void anonymous namespace::Verifier::visitDILabel(llvm::raw_ostream **this, uint64_t a2)
{
  v4 = a2 - 16;
  v5 = *(a2 - 16);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = (v4 - 8 * ((v5 >> 2) & 0xF));
  }

  v7 = *v6;
  v21 = v7;
  if (v7)
  {
    v8 = *v7;
    if ((v8 - 11) >= 0xB && v8 != 32 && v8 != 34)
    {
      v14 = "invalid scope";
      goto LABEL_18;
    }
  }

  if ((v5 & 2) != 0)
  {
    v9 = *(a2 - 32);
  }

  else
  {
    v9 = v4 - 8 * ((v5 >> 2) & 0xF);
  }

  v10 = *(v9 + 16);
  v21 = v10;
  if (v10 && *v10 != 15)
  {
    v14 = "invalid file";
LABEL_18:
    v18 = a2;
    v19[0] = v14;
    v20 = 259;
    v15 = &v18;
    v16 = &v21;
LABEL_30:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v19, v15, v16);
    return;
  }

  if (*(a2 + 2) == 10)
  {
    if ((v5 & 2) != 0)
    {
      v17 = *(a2 - 32);
      v12 = *v17;
      if (!*v17)
      {
        v19[0] = "label requires a valid scope";
        v20 = 259;
        v21 = a2;
        goto LABEL_29;
      }
    }

    else
    {
      v11 = (v5 >> 2) & 0xF;
      v12 = *(v4 - 8 * v11);
      if (!v12)
      {
        v13 = -v11;
        v19[0] = "label requires a valid scope";
        v20 = 259;
        v21 = a2;
LABEL_23:
        v17 = (v4 + 8 * v13);
LABEL_29:
        v18 = *v17;
        v15 = &v21;
        v16 = &v18;
        goto LABEL_30;
      }
    }

    if (*v12 - 20 > 0xFFFFFFFC)
    {
      return;
    }

    v19[0] = "label requires a valid scope";
    v20 = 259;
    v21 = a2;
    if ((v5 & 2) != 0)
    {
      v17 = *(a2 - 32);
      goto LABEL_29;
    }

    v13 = -((v5 >> 2) & 0xF);
    goto LABEL_23;
  }

  v19[0] = "invalid tag";
  v20 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed(this, v19);
  if (*this)
  {
    llvm::VerifierSupport::Write(this, a2);
  }
}

void anonymous namespace::Verifier::visitDIObjCProperty(llvm::raw_ostream **this, uint64_t a2)
{
  if (*(a2 + 2) == 16896)
  {
    v4 = a2 - 16;
    v5 = *(a2 - 16);
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = v4 - 8 * ((v5 >> 2) & 0xF);
    }

    v7 = *(v6 + 32);
    v13 = v7;
    if (v7)
    {
      v8 = *v7;
      if ((v8 - 11) >= 4 && v8 != 34)
      {
        v11 = "invalid type ref";
        goto LABEL_17;
      }
    }

    if ((v5 & 2) != 0)
    {
      v9 = *(a2 - 32);
    }

    else
    {
      v9 = v4 - 8 * ((v5 >> 2) & 0xF);
    }

    v10 = *(v9 + 8);
    v13 = v10;
    if (v10 && *v10 != 15)
    {
      v11 = "invalid file";
LABEL_17:
      v14[0] = v11;
      v15 = 259;
      v12 = a2;
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v14, &v12, &v13);
    }
  }

  else
  {
    v14[0] = "invalid tag";
    v15 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v14);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIImportedEntity(llvm::raw_ostream **this, uint64_t a2)
{
  v4 = *(a2 + 2);
  if (v4 == 8 || v4 == 58)
  {
    v5 = a2 - 16;
    v6 = *(a2 - 16);
    if ((v6 & 2) != 0)
    {
      v7 = *(a2 - 32);
    }

    else
    {
      v7 = (v5 - 8 * ((v6 >> 2) & 0xF));
    }

    v8 = *v7;
    v20 = v8;
    if (v8)
    {
      v9 = *v8;
      if ((v9 - 11) >= 0xB && v9 != 32 && v9 != 34)
      {
        v21[0] = "invalid scope for imported entity";
        v22 = 259;
        v19 = a2;
        v13 = &v19;
        v14 = &v20;
LABEL_28:
        llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v21, v13, v14);
        return;
      }
    }

    if ((v6 & 2) != 0)
    {
      v10 = *(a2 - 32);
    }

    else
    {
      v10 = v5 - 8 * ((v6 >> 2) & 0xF);
    }

    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *v11;
      if (v12 - 8 >= 0x16)
      {
        v15 = v12 > 0x23;
        v16 = (1 << v12) & 0xD00000000;
        if (v15 || v16 == 0)
        {
          v20 = a2;
          v21[0] = "invalid imported entity";
          v22 = 259;
          if ((v6 & 2) != 0)
          {
            v18 = *(a2 - 32);
          }

          else
          {
            v18 = v5 - 8 * ((v6 >> 2) & 0xF);
          }

          v19 = *(v18 + 8);
          v13 = &v20;
          v14 = &v19;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v21[0] = "invalid tag";
    v22 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v21);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIAssignID(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(a2 - 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 - 24);
  }

  else
  {
    v5 = (v4 >> 6) & 0xF;
  }

  v10 = v2;
  v11 = v3;
  if (v5)
  {
    v6 = "DIAssignID has no arguments";
  }

  else
  {
    if ((*(a2 + 1) & 0x7F) == 1)
    {
      return;
    }

    v6 = "DIAssignID must be distinct";
  }

  v7 = a2;
  v8 = v6;
  v9 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, &v8, &v7);
}

void anonymous namespace::Verifier::visitDIMacro(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) - 1 >= 2)
  {
    v4 = "invalid macinfo type";
LABEL_9:
    v6 = a2;
    v7 = v4;
    v8 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, &v7, &v6);
    return;
  }

  v2 = *(a2 - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 - 32);
  }

  else
  {
    v3 = (a2 - 16 - 8 * ((v2 >> 2) & 0xF));
  }

  v5 = *v3;
  if (!v5 || !**(v5 + 8))
  {
    v4 = "anonymous macro";
    goto LABEL_9;
  }
}

void anonymous namespace::Verifier::visitDIMacroFile(llvm::raw_ostream **this, uint64_t a2)
{
  if (*(a2 + 2) == 3)
  {
    v4 = a2 - 16;
    v5 = *(a2 - 16);
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v4 - 8 * ((v5 >> 2) & 0xF));
    }

    v7 = *v6;
    v22 = v7;
    if (v7 && *v7 != 15)
    {
      v11 = "invalid file";
      goto LABEL_18;
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 - 32);
    }

    else
    {
      v8 = v4 - 8 * ((v5 >> 2) & 0xF);
    }

    v9 = *(v8 + 8);
    v22 = v9;
    if (v9)
    {
      if (*v9 == 4)
      {
        if ((v5 & 2) != 0)
        {
          v10 = *(a2 - 32);
        }

        else
        {
          v10 = v4 - 8 * ((v5 >> 2) & 0xF);
        }

        v14 = *(v10 + 8);
        v15 = *(v14 - 16);
        if ((v15 & 2) != 0)
        {
          v16 = *(v14 - 32);
          v17 = *(v14 - 24);
          if (!v17)
          {
            return;
          }
        }

        else
        {
          v16 = (v14 - 16 - 8 * ((v15 >> 2) & 0xF));
          v17 = (v15 >> 6) & 0xF;
          if (!v17)
          {
            return;
          }
        }

        v18 = 8 * v17;
        while (1)
        {
          v19 = *v16;
          v21 = v19;
          if (!v19 || (*v19 & 0xFE) != 0x1E)
          {
            break;
          }

          ++v16;
          v18 -= 8;
          if (!v18)
          {
            return;
          }
        }

        v23[0] = "invalid macro ref";
        v24 = 259;
        v20 = a2;
        v12 = &v20;
        v13 = &v21;
LABEL_19:
        llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v23, v12, v13);
        return;
      }

      v11 = "invalid macro list";
LABEL_18:
      v23[0] = v11;
      v24 = 259;
      v21 = a2;
      v12 = &v21;
      v13 = &v22;
      goto LABEL_19;
    }
  }

  else
  {
    v23[0] = "invalid macinfo type";
    v24 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v23);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDICommonBlock(llvm::raw_ostream **this, uint64_t a2)
{
  if (*(a2 + 2) == 26)
  {
    v4 = a2 - 16;
    v5 = *(a2 - 16);
    if ((v5 & 2) != 0)
    {
      v6 = *(a2 - 32);
    }

    else
    {
      v6 = (v4 - 8 * ((v5 >> 2) & 0xF));
    }

    v7 = *v6;
    v13 = v7;
    if (v7)
    {
      v8 = *v7;
      if ((v8 - 11) >= 0xB && v8 != 32 && v8 != 34)
      {
        v11 = "invalid scope ref";
        goto LABEL_15;
      }
    }

    if ((v5 & 2) != 0)
    {
      v9 = *(a2 - 32);
    }

    else
    {
      v9 = v4 - 8 * ((v5 >> 2) & 0xF);
    }

    v10 = *(v9 + 8);
    v13 = v10;
    if (v10 && *v10 != 24)
    {
      v11 = "invalid declaration";
LABEL_15:
      v14[0] = v11;
      v15 = 259;
      v12 = a2;
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v14, &v12, &v13);
    }
  }

  else
  {
    v14[0] = "invalid tag";
    v15 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v14);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }
  }
}

void anonymous namespace::Verifier::visitDIArgList(llvm::raw_ostream **this, const llvm::DIArgList *a2)
{
  v4 = *(a2 - 2);
  if ((v4 & 2) != 0)
  {
    if (!*(a2 - 6))
    {
      return;
    }
  }

  else if (((v4 >> 6) & 0xF) == 0)
  {
    return;
  }

  v5 = "DIArgList should have no operands other than a list of ValueAsMetadata";
  v6 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed(this, &v5);
  if (*this)
  {
    llvm::VerifierSupport::Write(this, a2);
  }
}

void anonymous namespace::Verifier::visitDIStringType(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) == 18)
  {
    if ((~*(a2 + 20) & 0x18000000) != 0)
    {
      return;
    }

    v2 = "has conflicting flags";
  }

  else
  {
    v2 = "invalid tag";
  }

  v3 = a2;
  v4 = v2;
  v5 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, &v4, &v3);
}

void anonymous namespace::Verifier::visitDIGenericSubrange(llvm::raw_ostream **a1, uint64_t a2)
{
  if (*(a2 + 2) != 69)
  {
    v12 = "invalid tag";
LABEL_47:
    v28 = a2;
    v29 = v12;
    v30 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(a1, &v29, &v28);
    return;
  }

  v2 = a2 - 16;
  v3 = *(a2 - 16);
  if ((v3 & 2) == 0)
  {
    v4 = (v2 - 8 * ((v3 >> 2) & 0xF));
    v5 = *v4;
    v6 = v4[2];
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_5;
      }

LABEL_14:
      v12 = "GenericSubrange can have any one of count or upperBound";
      goto LABEL_47;
    }

    if (v6)
    {
LABEL_16:
      v11 = (v2 - 8 * ((v3 >> 2) & 0xF));
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  v11 = *(a2 - 32);
  v5 = *v11;
  v13 = v11[2];
  if (*v11)
  {
    if (!v13)
    {
LABEL_5:
      v7 = *v5;
      v8 = v7 > 0x19;
      v9 = (1 << v7) & 0x3000040;
      if (v8 || v9 == 0)
      {
        v12 = "Count must be signed constant or DIVariable or DIExpression";
        goto LABEL_47;
      }

      if ((v3 & 2) != 0)
      {
        v11 = *(a2 - 32);
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v13)
  {
LABEL_26:
    v12 = "GenericSubrange must contain count or upperBound";
    goto LABEL_47;
  }

LABEL_18:
  v14 = v11[1];
  if (!v14)
  {
    v12 = "GenericSubrange must contain lowerBound";
    goto LABEL_47;
  }

  v15 = *v14;
  v8 = v15 > 0x19;
  v16 = (1 << v15) & 0x3000040;
  if (v8 || v16 == 0)
  {
    v12 = "LowerBound must be signed constant or DIVariable or DIExpression";
    goto LABEL_47;
  }

  if ((v3 & 2) != 0)
  {
    v18 = *(a2 - 32);
  }

  else
  {
    v18 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *v19;
    v8 = v20 > 0x19;
    v21 = (1 << v20) & 0x3000040;
    if (v8 || v21 == 0)
    {
      v12 = "UpperBound must be signed constant or DIVariable or DIExpression";
      goto LABEL_47;
    }
  }

  if ((v3 & 2) != 0)
  {
    v23 = *(a2 - 32);
  }

  else
  {
    v23 = v2 - 8 * ((v3 >> 2) & 0xF);
  }

  v24 = *(v23 + 24);
  if (!v24)
  {
    v12 = "GenericSubrange must contain stride";
    goto LABEL_47;
  }

  v25 = *v24;
  v8 = v25 > 0x19;
  v26 = (1 << v25) & 0x3000040;
  if (v8 || v26 == 0)
  {
    v12 = "Stride must be signed constant or DIVariable or DIExpression";
    goto LABEL_47;
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, uint64_t *a3, uint64_t *a4)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, *a3);
    v7 = *a4;

    llvm::VerifierSupport::Write(a1, v7);
  }
}

void anonymous namespace::Verifier::visitValueAsMetadata(llvm::raw_ostream **this, const llvm::ValueAsMetadata *a2, llvm::Function *a3)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    v16[0] = "Expected valid value";
    v17 = 259;
    llvm::VerifierSupport::CheckFailed(this, v16);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
    }

    return;
  }

  if (*(*v5 + 8) == 9)
  {
    v6 = "Unexpected metadata round-trip through values";
    goto LABEL_4;
  }

  v7 = *a2;
  v8 = v7 == 2;
  if (v7 == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v15 = v9;
  if (v8)
  {
    if (!a3)
    {
      v12 = "function-local metadata used outside a function";
LABEL_27:
      v16[0] = v12;
      v17 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v16, &v15);
      return;
    }

    v10 = *(v5 + 16);
    if (v10 >= 0x1C)
    {
      v13 = v5[5];
      if (!v13)
      {
        v6 = "function-local metadata not in basic block";
LABEL_4:
        v16[0] = v6;
        v17 = 259;
        llvm::VerifierSupport::CheckFailed(this, v16);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
          llvm::VerifierSupport::Write(this, v5);
        }

        return;
      }

      v11 = (v13 + 56);
    }

    else if (v10 == 21)
    {
      v11 = v5 + 3;
    }

    else
    {
      if (v10 != 22)
      {
        v14 = 0;
        goto LABEL_25;
      }

      v11 = v5 + 7;
    }

    v14 = *v11;
LABEL_25:
    if (v14 == a3)
    {
      return;
    }

    v12 = "function-local metadata used in wrong function";
    goto LABEL_27;
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(llvm::raw_ostream **a1, const llvm::Twine *a2, uint64_t *a3)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    v5 = *a3;

    llvm::VerifierSupport::Write(a1, v5);
  }
}

void anonymous namespace::Verifier::visitDIScope(llvm::raw_ostream **this, _BYTE *a2)
{
  if (*a2 != 15)
  {
    v11 = v2;
    v12 = v3;
    v6 = *(a2 - 2);
    if ((v6 & 2) != 0)
    {
      v7 = *(a2 - 4);
    }

    else
    {
      v7 = &a2[-8 * ((v6 >> 2) & 0xF) - 16];
    }

    v8 = *v7;
    if (*v7 && *v8 != 15)
    {
      v9 = "invalid file";
      v10 = 259;
      llvm::VerifierSupport::DebugInfoCheckFailed(this, &v9);
      if (*this)
      {
        llvm::VerifierSupport::Write(this, a2);
        llvm::VerifierSupport::Write(this, v8);
      }
    }
  }
}

void anonymous namespace::Verifier::visitTemplateParams(llvm::raw_ostream **this, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  if (v5 == 4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 != 4)
  {
    v13 = a2;
    v14[0] = "invalid template params";
    v15 = 259;
    v12 = a3;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, v14, &v13, &v12);
    return;
  }

  v7 = *(a3 - 2);
  if ((v7 & 2) != 0)
  {
    v8 = *(a3 - 4);
    v9 = *(a3 - 6);
    if (!*(a3 - 6))
    {
      return;
    }
  }

  else
  {
    v8 = &a3[-8 * ((v7 >> 2) & 0xF) - 16];
    v9 = (v7 >> 6) & 0xF;
    if (!v9)
    {
      return;
    }
  }

  v10 = 8 * v9;
  while (1)
  {
    v11 = *v8;
    if (!*v8 || (*v11 & 0xFE) != 0x16)
    {
      break;
    }

    v8 += 8;
    v10 -= 8;
    if (!v10)
    {
      return;
    }
  }

  v14[0] = "invalid template parameter";
  v15 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed(this, v14);
  if (*this)
  {
    llvm::VerifierSupport::Write(this, a2);
    llvm::VerifierSupport::Write(this, v6);
    llvm::VerifierSupport::Write(this, v11);
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubroutineType const*,llvm::Metadata *,llvm::Metadata *>(llvm::raw_ostream **a1, const llvm::Twine *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, *a3);
    llvm::VerifierSupport::Write(a1, *a4);
    v9 = *a5;

    llvm::VerifierSupport::Write(a1, v9);
  }
}

void anonymous namespace::Verifier::verifySourceDebugInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 != 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(a1 + 808), *(a1 + 824), a2, v6) & 1) == 0)
  {
    v6[0] = a2;
    *(llvm::DenseMapBase<llvm::DenseMap<llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>,llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>::FindAndConstruct(a1 + 808, v6) + 8) = v5;
  }

  v6[0] = a2;
  if (*(llvm::DenseMapBase<llvm::DenseMap<llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>,llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>::FindAndConstruct(a1 + 808, v6) + 8) != v5)
  {
    v6[0] = "inconsistent use of embedded source";
    v7 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(a1, v6);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>,llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  *(result + 8) = 0;
  return result;
}

char *llvm::DenseMap<llvm::DICompileUnit const*,BOOL,llvm::DenseMapInfo<llvm::DICompileUnit const*,void>,llvm::detail::DenseMapPair<llvm::DICompileUnit const*,BOOL>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 8) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

llvm::raw_ostream *llvm::VerifierSupport::Write(llvm::VerifierSupport *this, unsigned int a2)
{
  result = write_unsigned<unsigned long>(this, a2, 0, 0, 0);
  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {

    return llvm::raw_ostream::write(this, 10);
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 10;
  }

  return result;
}

void anonymous namespace::Verifier::visitDILexicalBlockBase(llvm::raw_ostream **this, uint64_t a2)
{
  if (*(a2 + 2) != 11)
  {
    v7 = "invalid tag";
LABEL_7:
    v8 = a2;
    v9[0] = v7;
    v10 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubrange const*>(this, v9, &v8);
    return;
  }

  v4 = *(a2 - 16);
  if ((v4 & 2) == 0)
  {
    v5 = *(a2 - 16 - 8 * ((v4 >> 2) & 0xF) + 8);
    if (v5)
    {
      v6 = *v5;
      if ((v6 - 20) >= 0xFFFFFFFD)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    v9[0] = "invalid local scope";
    v10 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v9);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
      llvm::VerifierSupport::Write(this, v5);
    }

    return;
  }

  v5 = *(*(a2 - 32) + 8);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *v5;
  if ((v6 - 20) <= 0xFFFFFFFC)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v6 == 17 && (v5[36] & 8) == 0)
  {
    v7 = "scope points into the type hierarchy";
    goto LABEL_7;
  }
}

void anonymous namespace::Verifier::visitDITemplateParameter(llvm::raw_ostream **this, uint64_t a2)
{
  v4 = a2 - 16;
  v5 = *(a2 - 16);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 - 32);
  }

  else
  {
    v6 = v4 - 8 * ((v5 >> 2) & 0xF);
  }

  v7 = *(v6 + 8);
  if (v7)
  {
    v8 = *v7;
    if ((v8 - 11) >= 4 && v8 != 34)
    {
      v11 = "invalid type ref";
      v12 = 259;
      if ((v5 & 2) != 0)
      {
        v9 = *(a2 - 32);
      }

      else
      {
        v9 = v4 - 8 * ((v5 >> 2) & 0xF);
      }

      v10 = *(v9 + 8);
      llvm::VerifierSupport::DebugInfoCheckFailed(this, &v11);
      if (*this)
      {
        llvm::VerifierSupport::Write(this, a2);
        llvm::VerifierSupport::Write(this, v10);
      }
    }
  }
}

void anonymous namespace::Verifier::visitDIVariable(llvm::raw_ostream **this, const llvm::DIVariable *a2)
{
  v4 = a2 - 16;
  v5 = *(a2 - 2);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 - 4);
  }

  else
  {
    v6 = &v4[-8 * ((v5 >> 2) & 0xF)];
  }

  v15[1] = v2;
  v15[2] = v3;
  v7 = *v6;
  v15[0] = v7;
  if (v7)
  {
    v8 = *v7;
    if ((v8 - 11) >= 0xB && v8 != 32 && v8 != 34)
    {
      v11 = "invalid scope";
      goto LABEL_12;
    }
  }

  if ((v5 & 2) != 0)
  {
    v9 = *(a2 - 4);
  }

  else
  {
    v9 = &v4[-8 * ((v5 >> 2) & 0xF)];
  }

  v10 = *(v9 + 2);
  v15[0] = v10;
  if (v10 && *v10 != 15)
  {
    v11 = "invalid file";
LABEL_12:
    v12 = a2;
    v13 = v11;
    v14 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(this, &v13, &v12, v15);
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram const*,llvm::Function const*,llvm::DenseMapInfo<llvm::DISubprogram const*,void>,llvm::detail::DenseMapPair<llvm::DISubprogram const*,llvm::Function const*>>,llvm::DISubprogram const*,llvm::Function const*,llvm::DenseMapInfo<llvm::DISubprogram const*,void>,llvm::detail::DenseMapPair<llvm::DISubprogram const*,llvm::Function const*>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DISubprogram *,llvm::Function const*,llvm::Instruction const*,llvm::DILocation const*,llvm::DILocalScope *,llvm::DISubprogram *>(llvm::raw_ostream **a1, const llvm::Twine *a2, uint64_t *a3, llvm::Type ***a4, llvm::Type ***a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, *a3);
    if (*a4)
    {
      llvm::VerifierSupport::Write(a1, *a4);
    }

    if (*a5)
    {
      llvm::VerifierSupport::Write(a1, *a5);
    }

    llvm::VerifierSupport::Write(a1, *a6);
    llvm::VerifierSupport::Write(a1, *a7);
    v15 = *a8;

    llvm::VerifierSupport::Write(a1, v15);
  }
}

void llvm::InstVisitor<anonymous namespace::Verifier,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Instruction,false,false,void>,false,false>>(llvm::raw_ostream **this, uint64_t a2, uint64_t a3)
{
  v392 = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v5 = a2;
  while (2)
  {
    v7 = *(v5 + 8);
    v8 = v5 - 24;
    if (v5)
    {
      v9 = v5 - 24;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v9 + 20);
    v11 = v10 & 0x7FFFFFF;
    if ((v10 & 0x7FFFFFF) != 0)
    {
      v12 = 0;
      do
      {
        v13 = v8 - 32 * v11;
        if ((v10 & 0x40000000) != 0)
        {
          v13 = *(v5 - 32);
        }

        if (!*(v13 + v12))
        {
          v387 = "Operand is null";
          v391[0] = 259;
LABEL_16:
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        v12 += 32;
      }

      while (32 * v11 != v12);
    }

    switch(*(v9 + 16))
    {
      case 0x1E:
        if (v11 != 3 || *(**(v9 - 96) + 8) == 269)
        {
          goto LABEL_777;
        }

        v387 = "Branch condition is not 'i1' type!";
        v391[0] = 259;
        v73 = *(v9 - 96);
        llvm::VerifierSupport::CheckFailed(this, &v387);
        if (!*this)
        {
          goto LABEL_17;
        }

        if (v5)
        {
          llvm::VerifierSupport::Write(this, (v5 - 24));
        }

        if (!v73)
        {
          goto LABEL_17;
        }

        v74 = this;
        v75 = v73;
        goto LABEL_476;
      case 0x1F:
        if (*(*v9 + 8) != 7)
        {
          v387 = "Switch must have void result type!";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if ((v10 & 0x40000000) != 0)
        {
          v76 = *(v9 - 8);
        }

        else
        {
          v76 = (v9 - 32 * v11);
        }

        v241 = **v76;
        v387 = v391;
        v388 = v391;
        v389 = 32;
        v390 = 0;
        v242 = (v10 >> 1) & 0x3FFFFFF;
        v243 = (v242 - 1);
        if (v242 == 1)
        {
          goto LABEL_504;
        }

        v244 = 2;
        while (2)
        {
          v245 = *(v9 + 20);
          if ((v245 & 0x40000000) != 0)
          {
            v246 = *(v9 - 8);
          }

          else
          {
            v246 = v9 - 32 * (v245 & 0x7FFFFFF);
          }

          if (*(*(v246 + 32 * v244) + 16) != 16)
          {
            v206 = "Case value is not a constant integer.";
            goto LABEL_617;
          }

          if (**(v246 + 32 * (v244 & 0xFFFFFFFE)) != v241)
          {
            v206 = "Switch constants must all be same type as switch value!";
            goto LABEL_617;
          }

          if ((v245 & 0x40000000) != 0)
          {
            v247 = *(v9 - 8);
          }

          else
          {
            v247 = v9 - 32 * (v245 & 0x7FFFFFF);
          }

          llvm::SmallPtrSetImplBase::insert_imp(&v387, *(v247 + 32 * (v244 & 0xFFFFFFFE)));
          if (v248)
          {
            v244 += 2;
            if (!--v243)
            {
LABEL_504:
              goto LABEL_618;
            }

            continue;
          }

          break;
        }

        v378 = "Duplicate integer as switch case";
        v381 = 259;
        v382 = v9;
        v303 = *(v9 + 20);
        if ((v303 & 0x40000000) != 0)
        {
          v304 = *(v9 - 8);
        }

        else
        {
          v304 = v9 - 32 * (v303 & 0x7FFFFFF);
        }

        v375[0] = *(v304 + 32 * (v244 & 0xFFFFFFFE));
        llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v378, &v382, v375);
        goto LABEL_618;
      case 0x20:
        if ((v10 & 0x40000000) != 0)
        {
          v70 = *(v9 - 8);
        }

        else
        {
          v70 = v9 - 32 * v11;
        }

        if (*(**v70 + 8) == 15)
        {
          v193 = (v11 - 1);
          v194 = v9 - 32 * v11;
          v195 = -v193;
          v196 = 1;
          do
          {
            if (v195 + v196 == 1)
            {
              goto LABEL_777;
            }

            v197 = v194;
            if ((v10 & 0x40000000) != 0)
            {
              v197 = *(v9 - 8);
            }

            v198 = *(**(v197 + 32 * v196++) + 8);
          }

          while (v198 == 8);
          v18 = "Indirectbr destinations must all have pointer type!";
        }

        else
        {
          v18 = "Indirectbr operand must have pointer type!";
        }

        goto LABEL_692;
      case 0x21:
        for (i = *(*(v9 - 64) + 48); ; i = *(i + 8))
        {
          v96 = i - 24;
          if (!i)
          {
            v96 = 0;
          }

          if (*(v96 + 16) != 83)
          {
            break;
          }
        }

        v97 = *(i - 8) - 38;
        v98 = v97 > 0x38;
        v99 = (1 << v97) & 0x100060000000001;
        if (!v98 && v99 != 0)
        {
          goto LABEL_777;
        }

        v45 = "The unwind destination does not have an exception handling instruction!";
        goto LABEL_358;
      case 0x22:
        if ((*(*(*(v9 + 40) + 56) + 18) & 8) == 0)
        {
          v18 = "ResumeInst needs to be in a function with a personality.";
          goto LABEL_692;
        }

        v204 = this[99];
        v205 = **(v9 - 32);
        if (!v204)
        {
          this[99] = v205;
          goto LABEL_777;
        }

        if (v204 == v205)
        {
          goto LABEL_777;
        }

        v18 = "The resume instruction should have a consistent result type inside a function.";
        goto LABEL_692;
      case 0x23:
        goto LABEL_777;
      case 0x24:
        v77 = (v9 - 32 * v11);
        v37 = *v77;
        if (*(*v77 + 16) != 79)
        {
          v104 = "CleanupReturnInst needs to be provided a CleanupPad";
          goto LABEL_472;
        }

        if ((*(v9 + 18) & 1) == 0)
        {
          goto LABEL_777;
        }

        v78 = v77[4];
        if (!v78)
        {
          goto LABEL_777;
        }

        for (j = *(v78 + 48); ; j = *(j + 8))
        {
          v80 = j - 24;
          if (!j)
          {
            v80 = 0;
          }

          if (*(v80 + 16) != 83)
          {
            break;
          }
        }

        v274 = *(j - 8) - 38;
        v98 = v274 > 0x2A;
        v275 = (1 << v274) & 0x60000000001;
        if (!v98 && v275 != 0)
        {
          goto LABEL_777;
        }

        v387 = "CleanupReturnInst must unwind to an EH block which is not a landingpad.";
        v391[0] = 259;
        v378 = v9;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
        goto LABEL_17;
      case 0x25:
        v37 = *(v9 - 64);
        if (*(v37 + 16) == 80)
        {
          goto LABEL_777;
        }

        v104 = "CatchReturnInst needs to be provided a CatchPad";
        goto LABEL_472;
      case 0x26:
        v71 = *(v9 + 40);
        if ((*(*(v71 + 56) + 18) & 8) == 0)
        {
          v72 = "CatchSwitchInst needs to be in a function with a personality.";
LABEL_462:
          v387 = v72;
          v391[0] = 259;
          v378 = v9;
          v48 = &v378;
          goto LABEL_685;
        }

        v199 = v71 + 40;
        for (k = *(v71 + 48); k != v199; k = *(k + 8))
        {
          v201 = k - 24;
          if (k)
          {
            v202 = k - 24;
          }

          else
          {
            v202 = 0;
          }

          if (*(v202 + 16) != 83)
          {
            goto LABEL_460;
          }
        }

        v201 = 0;
LABEL_460:
        if (v201 != v9)
        {
          v72 = "CatchSwitchInst not the first non-PHI instruction in the block.";
          goto LABEL_462;
        }

        if ((v10 & 0x40000000) != 0)
        {
          v266 = *(v9 - 8);
        }

        else
        {
          v266 = (v9 - 32 * v11);
        }

        v294 = *v266;
        v378 = v294;
        v295 = v294[16];
        if (v295 != 20 && (v295 < 0x1C || v295 - 79 >= 2))
        {
          v387 = "CatchSwitchInst has an invalid parent.";
          v391[0] = 259;
LABEL_470:
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if ((*(v9 + 18) & 1) == 0)
        {
          v297 = 1;
LABEL_667:
          v298 = 1;
LABEL_759:
          if (v11 != v298)
          {
            if ((v10 & 0x40000000) != 0)
            {
              v330 = *(v9 - 8);
            }

            else
            {
              v330 = v9 - 32 * v11;
            }

            v331 = 64;
            if (v297)
            {
              v331 = 32;
            }

            v332 = (v330 + v331);
            v333 = (v330 + 32 * v11);
            while (1)
            {
              if (v332 == v333)
              {
                goto LABEL_777;
              }

              v382 = *v332;
              for (m = v382[6]; ; m = *(m + 1))
              {
                v335 = m - 24;
                if (!m)
                {
                  v335 = 0;
                }

                if (v335[16] != 83)
                {
                  break;
                }
              }

              if (*(m - 8) != 80)
              {
                break;
              }

              v332 += 4;
            }

            v387 = "CatchSwitchInst handlers must be catchpads";
            v391[0] = 259;
            v375[0] = v9;
            llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v387, v375, &v382);
            goto LABEL_17;
          }

          v324 = "CatchSwitchInst cannot have empty handler list";
LABEL_761:
          v387 = v324;
          v391[0] = 259;
          v382 = v9;
          v48 = &v382;
LABEL_685:
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, v48);
          goto LABEL_17;
        }

        if ((v10 & 0x40000000) != 0)
        {
          v305 = *(v9 - 8);
        }

        else
        {
          v305 = v9 - 32 * v11;
        }

        v307 = *(v305 + 32);
        if (!v307)
        {
          goto LABEL_757;
        }

        for (n = *(v307 + 48); ; n = *(n + 8))
        {
          v309 = n - 24;
          if (!n)
          {
            v309 = 0;
          }

          if (*(v309 + 16) != 83)
          {
            break;
          }
        }

        v310 = *(n - 8);
        if (v310 - 38 > 0x2A || ((1 << (v310 - 38)) & 0x60000000001) == 0)
        {
          v324 = "CatchSwitchInst must unwind to an EH block which is not a landingpad.";
          goto LABEL_761;
        }

        if (v310 >= 0x4F)
        {
          v313 = (n - 56);
        }

        else
        {
          v312 = *(n - 4);
          v313 = (v312 & 0x40000000) != 0 ? *(n - 32) : (n - 32 * (v312 & 0x7FFFFFF) - 24);
        }

        if (*v313 == v294)
        {
          v387 = v9;
          *llvm::MapVector<llvm::Instruction *,llvm::Instruction *,llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,std::vector<std::pair<llvm::Instruction *,llvm::Instruction *>>>::operator[](this + 107, &v387) = v9;
          v10 = *(v9 + 20);
          LODWORD(v11) = v10 & 0x7FFFFFF;
          v336 = *(v9 + 18) & 1;
          v297 = v336 == 0;
          if (!v336)
          {
            goto LABEL_667;
          }
        }

        else
        {
LABEL_757:
          v297 = 0;
        }

        v298 = 2;
        goto LABEL_759;
      case 0x27:
        v103 = *(v9 - 32);
        if (*(v103 + 16) == 24)
        {
          if (*(v103 + 88) == 1)
          {
            v42 = "Unwinding from Callbr is not allowed";
            goto LABEL_170;
          }

          goto LABEL_777;
        }

        v45 = "Callbr is currently only used for asm-goto!";
LABEL_358:
        v387 = v45;
        v391[0] = 259;
        llvm::VerifierSupport::CheckFailed(this, &v387);
        if (v5 && *this)
        {
LABEL_360:
          v74 = this;
          v75 = (v5 - 24);
          goto LABEL_476;
        }

        goto LABEL_17;
      case 0x28:
        v101 = *v9;
        if (*v9 != **(v9 - 32))
        {
          v18 = "Unary operators must have same type foroperands and result!";
          goto LABEL_692;
        }

        v233 = *(v101 + 8);
        if ((v233 & 0xFE) == 0x12)
        {
          v233 = *(**(v101 + 16) + 8);
        }

        if (v233 < 4u || v233 == 5 || (v233 & 0xFD) == 4)
        {
          goto LABEL_571;
        }

        v18 = "FNeg operator only works with float types!";
        goto LABEL_692;
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2D:
      case 0x2E:
      case 0x2F:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:
      case 0x3A:
        goto LABEL_17;
      case 0x3B:
        v387 = v391;
        v388 = v391;
        v389 = 4;
        v390 = 0;
        if (llvm::Type::isSized(*(v9 + 64), &v387))
        {
          if (*(**(v9 - 32) + 8) == 13)
          {
            v102 = *(v9 + 18);
            if ((v102 & 0x3Fu) >= 0x21)
            {
              v206 = "huge alignment values are unsupported";
            }

            else
            {
              if ((v102 & 0x80) == 0)
              {
LABEL_166:
                goto LABEL_618;
              }

              if (*(*(v9 + 64) + 8) == 15)
              {
                if (!llvm::AllocaInst::isArrayAllocation(v9))
                {
                  goto LABEL_166;
                }

                v206 = "swifterror alloca must not be array allocation";
              }

              else
              {
                v206 = "swifterror alloca must have pointer type";
              }
            }
          }

          else
          {
            v206 = "Alloca array size must have integer type";
          }
        }

        else
        {
          v206 = "Cannot allocate unsized type";
        }

LABEL_617:
        v378 = v206;
        v381 = 259;
        v382 = v9;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v378, &v382);
LABEL_618:
        v279 = v387;
        v278 = v388;
        goto LABEL_619;
      case 0x3C:
        v55 = **(v9 - 32);
        if (v55)
        {
          v56 = *(v55 + 8) == 15;
        }

        else
        {
          v56 = 0;
        }

        if (!v56)
        {
          v387 = "Load operand must be a pointer.";
          v391[0] = 259;
          v378 = v9;
          v48 = &v378;
          goto LABEL_685;
        }

        v188 = *v9;
        v378 = *v9;
        if ((*(v9 + 18) & 0x7Eu) >= 0x42)
        {
          v189 = "huge alignment values are unsupported";
          goto LABEL_599;
        }

        if ((llvm::Type::isSized(v188, 0) & 1) == 0)
        {
          v189 = "loading unsized types is not allowed";
          goto LABEL_599;
        }

        if (llvm::Instruction::isAtomic(v9))
        {
          if (((*(v9 + 18) >> 7) & 7u) - 5 <= 1)
          {
            v189 = "Load cannot have Release ordering";
LABEL_599:
            v387 = v189;
            v391[0] = 259;
            v382 = v9;
            v48 = &v382;
            goto LABEL_685;
          }

          v314 = *(v188 + 8) & 0xFD;
          v315 = *(v188 + 8);
          if (v314 != 13 && v315 >= 4 && v315 != 5 && v314 != 4)
          {
            v387 = "atomic load operand must have integer, pointer, or floating point type!";
            v391[0] = 259;
            v382 = v9;
            llvm::VerifierSupport::CheckFailed<llvm::Type *,llvm::LoadInst *>(this, &v387, &v378, &v382);
            goto LABEL_17;
          }

          v20 = this;
          v21 = v188;
LABEL_570:
        }

        else if (*(v9 + 60) != 1)
        {
          v189 = "Non-atomic load cannot have SynchronizationScope specified";
          goto LABEL_599;
        }

        goto LABEL_571;
      case 0x3D:
        v46 = **(v9 - 32);
        if (v46)
        {
          v47 = *(v46 + 8) == 15;
        }

        else
        {
          v47 = 0;
        }

        if (!v47)
        {
          v387 = "Store operand must be a pointer.";
          v391[0] = 259;
          v378 = v9;
          v48 = &v378;
          goto LABEL_685;
        }

        v19 = **(v9 - 64);
        v378 = v19;
        v179 = *(v46 + 24);
        if (v179)
        {
          v180 = v179 == v19;
        }

        else
        {
          v180 = 1;
        }

        if (!v180)
        {
          v387 = "Stored value type does not match pointer operand type!";
          v391[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v387);
          if (*this)
          {
            if (v5)
            {
              llvm::VerifierSupport::Write(this, (v5 - 24));
              v19 = v378;
            }

            llvm::VerifierSupport::Write(this, v19);
          }

          goto LABEL_17;
        }

        if ((*(v9 + 18) & 0x7Eu) >= 0x42)
        {
          v181 = "huge alignment values are unsupported";
          goto LABEL_684;
        }

        if ((llvm::Type::isSized(v19, 0) & 1) == 0)
        {
          v181 = "storing unsized types is not allowed";
          goto LABEL_684;
        }

        if (llvm::Instruction::isAtomic(v9))
        {
          if (((*(v9 + 18) >> 7) & 5 | 2) != 6)
          {
            v325 = v19[2] & 0xFD;
            v326 = v19[2];
            if (v325 == 13 || v326 < 4 || v326 == 5 || v325 == 4)
            {
LABEL_28:
              v20 = this;
              v21 = v19;
              goto LABEL_570;
            }

            v387 = "atomic store operand must have integer, pointer, or floating point type!";
            v391[0] = 259;
            v382 = v9;
            llvm::VerifierSupport::CheckFailed<llvm::Type *,llvm::LoadInst *>(this, &v387, &v378, &v382);
            goto LABEL_17;
          }

          v181 = "Store cannot have Acquire ordering";
LABEL_684:
          v387 = v181;
          v391[0] = 259;
          v382 = v9;
          v48 = &v382;
          goto LABEL_685;
        }

        if (*(v9 + 60) != 1)
        {
          v181 = "Non-atomic store cannot have SynchronizationScope specified";
          goto LABEL_684;
        }

        goto LABEL_571;
      case 0x3E:
        v43 = **(v9 - 32 * v11);
        if ((*(v43 + 8) & 0xFE) == 0x12)
        {
          v44 = *(**(v43 + 16) + 8);
        }

        else
        {
          v44 = *(v43 + 8);
        }

        if (v44 != 15)
        {
          v18 = "GEP base pointer is not a vector or a vector of pointers";
          goto LABEL_692;
        }

        if ((llvm::Type::isSized(*(v9 + 64), 0) & 1) == 0)
        {
          v18 = "GEP into unsized type!";
          goto LABEL_692;
        }

        v169 = v9 - 32 * (*(v9 + 20) & 0x7FFFFFF);
        v387 = &v389;
        v388 = 0x1000000000;
        llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v387, (v169 + 32), v9);
        if (v388)
        {
          v171 = 8 * v388;
          v172 = v387;
          do
          {
            v173 = **v172;
            if ((*(v173 + 8) & 0xFE) == 0x12)
            {
              v174 = *(**(v173 + 16) + 8);
            }

            else
            {
              v174 = *(v173 + 8);
            }

            if (v174 != 13)
            {
              v378 = "GEP indexes must be integers";
              v381 = 259;
              v382 = v9;
              v300 = &v382;
              goto LABEL_674;
            }

            ++v172;
            v171 -= 8;
          }

          while (v171);
          TypeAtIndex = *(v9 + 64);
          v176 = (v387 + 8);
          v177 = 8 * v388 - 8;
          do
          {
            if (!v177)
            {
              goto LABEL_633;
            }

            v178 = *v176++;
            TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v178, v170);
            v177 -= 8;
          }

          while (TypeAtIndex);
          v382 = 0;
LABEL_669:
          v299 = "Invalid indices for GEP pointer type!";
          goto LABEL_670;
        }

        TypeAtIndex = *(v9 + 64);
LABEL_633:
        v382 = TypeAtIndex;
        if (!TypeAtIndex)
        {
          goto LABEL_669;
        }

        v281 = *v9;
        v282 = *(*v9 + 8);
        if ((v282 & 0xFE) != 0x12)
        {
          if (*(*v9 + 8) != 15 || *(v9 + 72) != TypeAtIndex)
          {
LABEL_697:
            v378 = "GEP is not of right type for indices!";
            v381 = 259;
            v375[0] = v9;
            llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Type *>(this, &v378, v375, &v382);
            goto LABEL_675;
          }

          v322 = **(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
          v323 = *(v322 + 8);
          if ((v323 & 0xFE) == 0x12)
          {
            v323 = *(**(v322 + 16) + 8);
          }

          if ((v323 ^ v282) >= 0x100)
          {
            v299 = "GEP address space doesn't match type";
            goto LABEL_670;
          }

LABEL_737:
          goto LABEL_675;
        }

        if (*(**(v281 + 16) + 8) != 15 || *(v9 + 72) != TypeAtIndex)
        {
          goto LABEL_697;
        }

        v284 = *(v281 + 32);
        v285 = ((~v282 & 0x13) == 0) << 32;
        v286 = **(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
        if ((*(v286 + 8) & 0xFE) == 0x12 && (v284 != *(v286 + 32) || ((~*(v286 + 8) & 0x13) == 0) != ((~v282 & 0x13) == 0)))
        {
          v299 = "Vector GEP result width doesn't match operand's";
          goto LABEL_670;
        }

        if (!v388)
        {
          goto LABEL_737;
        }

        v287 = v387;
        v288 = HIDWORD(v285);
        v289 = 8 * v388;
        while (2)
        {
          v290 = **v287;
          v291 = *(v290 + 8);
          v292 = *(v290 + 8) & 0xFE;
          if (v290)
          {
            v293 = v292 == 18;
          }

          else
          {
            v293 = 0;
          }

          if (v293)
          {
            if (*(v290 + 32) != v284 || v288 != ((~v291 & 0x13) == 0))
            {
              v299 = "Invalid GEP index vector width";
LABEL_670:
              v378 = v299;
              v381 = 259;
              v375[0] = v9;
              v300 = v375;
LABEL_674:
              llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v378, v300);
              goto LABEL_675;
            }
          }

          else if (v292 != 18)
          {
            goto LABEL_654;
          }

          v291 = *(**(v290 + 16) + 8);
LABEL_654:
          if (v291 == 13)
          {
            ++v287;
            v289 -= 8;
            if (!v289)
            {
              goto LABEL_737;
            }

            continue;
          }

          break;
        }

        v378 = "All GEP indices should be of integer type";
        v381 = 259;
        llvm::VerifierSupport::CheckFailed(this, &v378);
LABEL_675:
        v278 = v387;
        v279 = &v389;
LABEL_619:
        if (v278 != v279)
        {
LABEL_620:
          free(v278);
        }

LABEL_17:
        v5 = v7;
        if (v7 != a3)
        {
          continue;
        }

LABEL_2:
        v3 = *MEMORY[0x277D85DE8];
        return;
      case 0x3F:
        if ((*(v9 + 18) & 4) != 0)
        {
          goto LABEL_571;
        }

        v45 = "fence instructions may only have acquire, release, acq_rel, or seq_cst ordering.";
        goto LABEL_358;
      case 0x40:
        v19 = **(v9 - 64);
        if ((v19[2] & 0xFD) == 0xD)
        {
          goto LABEL_28;
        }

        v387 = "cmpxchg operand must have integer or pointer type";
        v391[0] = 259;
        llvm::VerifierSupport::CheckFailed(this, &v387);
        if (!*this)
        {
          goto LABEL_17;
        }

        llvm::VerifierSupport::Write(this, v19);
        if (!v5)
        {
          goto LABEL_17;
        }

        goto LABEL_360;
      case 0x41:
        v129 = *(v9 + 18);
        if ((v129 & 0xE) == 2)
        {
          v18 = "atomicrmw instructions cannot be unordered.";
          goto LABEL_692;
        }

        v220 = (v129 >> 4) & 0x1F;
        v21 = **(v9 - 32);
        v382 = v21;
        if (!v220)
        {
          v267 = v21[8];
          if (v267 != 13 && v267 >= 4 && v267 != 5 && (v267 & 0xFFFFFFFD) != 4 && v267 != 15)
          {
            v381 = 1283;
            v378 = "atomicrmw ";
            v379[1] = "xchg";
            v380 = 4;
            v227 = " operand must have integer or floating point type!";
            goto LABEL_678;
          }

LABEL_569:
          v20 = this;
          goto LABEL_570;
        }

        v221 = v21[8];
        if (v220 - 11 <= 3)
        {
          v222 = v221 < 4 || v221 == 5;
          v223 = v221 & 0xFFFFFFFD;
          if (!v222 && v223 != 4)
          {
            OperationName = llvm::AtomicRMWInst::getOperationName(v220);
            v381 = 1283;
            v378 = "atomicrmw ";
            v379[1] = OperationName;
            v380 = v226;
            v227 = " operand must have floating point type!";
LABEL_678:
            v387 = &v378;
            v389 = v227;
            v391[0] = 770;
            v375[0] = v9;
            llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Type *>(this, &v387, v375, &v382);
            goto LABEL_17;
          }

          goto LABEL_569;
        }

        if (v221 != 13)
        {
          v301 = llvm::AtomicRMWInst::getOperationName(v220);
          v381 = 1283;
          v378 = "atomicrmw ";
          v379[1] = v301;
          v380 = v302;
          v227 = " operand must have integer type!";
          goto LABEL_678;
        }

        if (v220 < 0x11)
        {
LABEL_571:
          goto LABEL_17;
        }

        v18 = "Invalid binary operation!";
        goto LABEL_692;
      case 0x42:
        v111 = *(v9 - 32);
        v112 = *v111;
        v113 = *(*v111 + 2);
        v114 = v113 & 0xFE;
        v115 = *v111;
        if (v114 == 18)
        {
          v115 = **(v112 + 2);
        }

        v116 = *v9;
        PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v115);
        v117 = *(v116 + 8);
        v118 = v117 & 0xFE;
        v119 = v116;
        if (v118 == 18)
        {
          v119 = **(v116 + 16);
        }

        v120 = llvm::Type::getPrimitiveSizeInBits(v119);
        if (v114 == 18)
        {
          v121 = *(**(v112 + 2) + 8);
        }

        else
        {
          v121 = v113;
        }

        if (v121 != 13)
        {
          v387 = "Trunc only operates on integer";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if (v118 == 18)
        {
          v213 = *(**(v116 + 16) + 8);
        }

        else
        {
          v213 = v117;
        }

        if (v213 != 13)
        {
          v18 = "Trunc only produces integer";
          goto LABEL_692;
        }

        if ((v114 == 18) != (v118 == 18))
        {
          v18 = "trunc source and destination must both be a vector or neither";
          goto LABEL_692;
        }

        if (PrimitiveSizeInBits > v120)
        {
          goto LABEL_571;
        }

        v18 = "DestTy too big for Trunc";
        goto LABEL_692;
      case 0x43:
        v67 = **(v9 - 32);
        v68 = *(v67 + 8) & 0xFE;
        if (v68 == 18)
        {
          v69 = *(**(v67 + 16) + 8);
        }

        else
        {
          v69 = *(v67 + 8);
        }

        if (v69 != 13)
        {
          v18 = "ZExt only operates on integer";
          goto LABEL_692;
        }

        v190 = *v9;
        v191 = *(*v9 + 8) & 0xFE;
        if (v191 == 18)
        {
          v192 = *(**(v190 + 2) + 8);
        }

        else
        {
          v192 = *(*v9 + 8);
        }

        if (v192 != 13)
        {
          v18 = "ZExt only produces an integer";
          goto LABEL_692;
        }

        if ((v68 == 18) != (v191 == 18))
        {
          v18 = "zext source and destination must both be a vector or neither";
          goto LABEL_692;
        }

        if (v68 == 18)
        {
          v67 = **(v67 + 16);
        }

        v277 = llvm::Type::getPrimitiveSizeInBits(v67);
        if (v191 == 18)
        {
          v190 = **(v190 + 2);
        }

        if (v277 < llvm::Type::getPrimitiveSizeInBits(v190))
        {
          goto LABEL_571;
        }

        v18 = "Type too small for ZExt";
        goto LABEL_692;
      case 0x44:
        v83 = *(v9 - 32);
        v84 = *v83;
        v85 = *(*v83 + 2);
        v86 = v85 & 0xFE;
        v87 = *v83;
        if (v86 == 18)
        {
          v87 = **(v84 + 2);
        }

        v88 = *v9;
        v369 = llvm::Type::getPrimitiveSizeInBits(v87);
        v89 = *(v88 + 8);
        v90 = v89 & 0xFE;
        v91 = v88;
        if (v90 == 18)
        {
          v91 = **(v88 + 16);
        }

        v92 = llvm::Type::getPrimitiveSizeInBits(v91);
        if (v86 == 18)
        {
          v93 = *(**(v84 + 2) + 8);
        }

        else
        {
          v93 = v85;
        }

        if (v93 != 13)
        {
          v387 = "SExt only operates on integer";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if (v90 == 18)
        {
          v203 = *(**(v88 + 16) + 8);
        }

        else
        {
          v203 = v89;
        }

        if (v203 != 13)
        {
          v18 = "SExt only produces an integer";
          goto LABEL_692;
        }

        if ((v86 == 18) != (v90 == 18))
        {
          v18 = "sext source and destination must both be a vector or neither";
          goto LABEL_692;
        }

        if (v369 < v92)
        {
          goto LABEL_571;
        }

        v18 = "Type too small for SExt";
        goto LABEL_692;
      case 0x45:
        v125 = **(v9 - 32);
        v126 = *v9;
        v127 = *(v125 + 8) & 0xFE;
        v128 = *(*v9 + 8) & 0xFE;
        if ((v127 == 18) != (v128 == 18))
        {
          v18 = "FPToUI source and dest must both be vector or scalar";
          goto LABEL_692;
        }

        v214 = *(v125 + 8);
        if (v127 == 18)
        {
          v214 = *(**(v125 + 16) + 8);
        }

        v215 = v214 < 4u || v214 == 5;
        v216 = v214 & 0xFD;
        if (!v215 && v216 != 4)
        {
          v18 = "FPToUI source must be FP or FP vector";
          goto LABEL_692;
        }

        v218 = *(*v9 + 8);
        if (v128 == 18)
        {
          v218 = *(**(v126 + 16) + 8);
        }

        if (v218 != 13)
        {
          v18 = "FPToUI result must be integer or integer vector";
          goto LABEL_692;
        }

        v219 = v127 == 18 && v128 == 18;
        if (v219 && (*(v125 + 32) != *(v126 + 32) || ((~*(v125 + 8) & 0x13) == 0) == ((~*(*v9 + 8) & 0x13) != 0)))
        {
          v18 = "FPToUI source and dest vector length mismatch";
          goto LABEL_692;
        }

        goto LABEL_571;
      case 0x46:
        v14 = **(v9 - 32);
        v15 = *v9;
        v16 = *(v14 + 8) & 0xFE;
        v17 = *(*v9 + 8) & 0xFE;
        if ((v16 == 18) != (v17 == 18))
        {
          v18 = "FPToSI source and dest must both be vector or scalar";
          goto LABEL_692;
        }

        v158 = *(v14 + 8);
        if (v16 == 18)
        {
          v158 = *(**(v14 + 16) + 8);
        }

        v159 = v158 < 4u || v158 == 5;
        v160 = v158 & 0xFD;
        if (!v159 && v160 != 4)
        {
          v18 = "FPToSI source must be FP or FP vector";
          goto LABEL_692;
        }

        v162 = *(*v9 + 8);
        if (v17 == 18)
        {
          v162 = *(**(v15 + 16) + 8);
        }

        if (v162 != 13)
        {
          v18 = "FPToSI result must be integer or integer vector";
          goto LABEL_692;
        }

        v163 = v16 == 18 && v17 == 18;
        if (v163 && (*(v14 + 32) != *(v15 + 32) || ((~*(v14 + 8) & 0x13) == 0) == ((~*(*v9 + 8) & 0x13) != 0)))
        {
          v18 = "FPToSI source and dest vector length mismatch";
          goto LABEL_692;
        }

        goto LABEL_571;
      case 0x47:
        v49 = *(v9 - 32);
        v50 = *v49;
        v51 = *v9;
        v52 = *(*v49 + 8);
        v53 = v52 & 0xFE;
        v54 = *(*v9 + 8) & 0xFE;
        if ((v53 == 18) != (v54 == 18))
        {
          v18 = "UIToFP source and dest must both be vector or scalar";
          goto LABEL_692;
        }

        v182 = v52;
        if (v53 == 18)
        {
          v182 = *(**(v50 + 16) + 8);
        }

        if (v182 != 13)
        {
          v18 = "UIToFP source must be integer or integer vector";
          goto LABEL_692;
        }

        v183 = *(v51 + 8);
        if (v54 == 18)
        {
          v183 = *(**(v51 + 16) + 8);
        }

        v184 = v183 < 4u || v183 == 5;
        v185 = v183 & 0xFD;
        if (!v184 && v185 != 4)
        {
          v18 = "UIToFP result must be FP or FP vector";
          goto LABEL_692;
        }

        v187 = v53 == 18 && v54 == 18;
        if (v187 && (*(v50 + 32) != *(v51 + 32) || ((~v52 & 0x13) == 0) == ((~*(*v9 + 8) & 0x13) != 0)))
        {
          v18 = "UIToFP source and dest vector length mismatch";
          goto LABEL_692;
        }

        goto LABEL_571;
      case 0x48:
        v105 = *(v9 - 32);
        v106 = *v105;
        v107 = *v9;
        v108 = *(*v105 + 8);
        v109 = v108 & 0xFE;
        v110 = *(*v9 + 8) & 0xFE;
        if ((v109 == 18) != (v110 == 18))
        {
          v18 = "SIToFP source and dest must both be vector or scalar";
          goto LABEL_692;
        }

        v207 = v108;
        if (v109 == 18)
        {
          v207 = *(**(v106 + 16) + 8);
        }

        if (v207 != 13)
        {
          v18 = "SIToFP source must be integer or integer vector";
          goto LABEL_692;
        }

        v208 = *(v107 + 8);
        if (v110 == 18)
        {
          v208 = *(**(v107 + 16) + 8);
        }

        v209 = v208 < 4u || v208 == 5;
        v210 = v208 & 0xFD;
        if (!v209 && v210 != 4)
        {
          v18 = "SIToFP result must be FP or FP vector";
          goto LABEL_692;
        }

        v212 = v109 == 18 && v110 == 18;
        if (v212 && (*(v106 + 32) != *(v107 + 32) || ((~v108 & 0x13) == 0) == ((~*(*v9 + 8) & 0x13) != 0)))
        {
          v18 = "SIToFP source and dest vector length mismatch";
          goto LABEL_692;
        }

        goto LABEL_571;
      case 0x49:
        v133 = *(v9 - 32);
        v134 = *v133;
        v135 = *(*v133 + 2);
        v136 = v135 & 0xFE;
        v137 = *v133;
        if (v136 == 18)
        {
          v137 = **(v134 + 2);
        }

        v138 = *v9;
        v371 = llvm::Type::getPrimitiveSizeInBits(v137);
        v139 = *(v138 + 8);
        v140 = v139 & 0xFE;
        v141 = v138;
        if (v140 == 18)
        {
          v141 = **(v138 + 16);
        }

        v142 = llvm::Type::getPrimitiveSizeInBits(v141);
        if (v136 == 18)
        {
          v135 = *(**(v134 + 2) + 8);
        }

        if (v135 >= 4u && v135 != 5 && (v135 & 0xFD) != 4)
        {
          v387 = "FPTrunc only operates on FP";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if (v140 == 18)
        {
          v139 = *(**(v138 + 16) + 8);
        }

        if (v139 >= 4u && v139 != 5 && (v139 & 0xFD) != 4)
        {
          v387 = "FPTrunc only produces an FP";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if ((v136 == 18) != (v140 == 18))
        {
          v18 = "fptrunc source and destination must both be a vector or neither";
          goto LABEL_692;
        }

        if (v371 > v142)
        {
          goto LABEL_571;
        }

        v18 = "DestTy too big for FPTrunc";
        goto LABEL_692;
      case 0x4A:
        v23 = *(v9 - 32);
        v24 = *v23;
        v25 = *(*v23 + 2);
        v26 = v25 & 0xFE;
        v27 = *v23;
        if (v26 == 18)
        {
          v27 = **(v24 + 2);
        }

        v28 = *v9;
        v368 = llvm::Type::getPrimitiveSizeInBits(v27);
        v29 = *(v28 + 8);
        v30 = v29 & 0xFE;
        v31 = v28;
        if (v30 == 18)
        {
          v31 = **(v28 + 16);
        }

        v32 = llvm::Type::getPrimitiveSizeInBits(v31);
        if (v26 == 18)
        {
          v25 = *(**(v24 + 2) + 8);
        }

        if (v25 >= 4u && v25 != 5 && (v25 & 0xFD) != 4)
        {
          v387 = "FPExt only operates on FP";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if (v30 == 18)
        {
          v29 = *(**(v28 + 16) + 8);
        }

        if (v29 >= 4u && v29 != 5 && (v29 & 0xFD) != 4)
        {
          v387 = "FPExt only produces an FP";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

        if ((v26 == 18) != (v30 == 18))
        {
          v18 = "fpext source and destination must both be a vector or neither";
          goto LABEL_692;
        }

        if (v368 < v32)
        {
          goto LABEL_571;
        }

        v18 = "DestTy too small for FPExt";
        goto LABEL_692;
      case 0x4B:
        v57 = **(v9 - 32);
        v58 = *(v57 + 8) & 0xFE;
        v59 = *(v57 + 8);
        if (v58 == 18)
        {
          v59 = *(**(v57 + 16) + 8);
        }

        if (v59 != 15)
        {
          v18 = "PtrToInt source must be pointer";
          goto LABEL_692;
        }

        v60 = *v9;
        v61 = *(*v9 + 8);
        if ((*(*v9 + 8) & 0xFE) == 0x12)
        {
          v61 = *(**(v60 + 16) + 8);
        }

        if (v61 != 13)
        {
          v18 = "PtrToInt result must be integral";
          goto LABEL_692;
        }

        if ((v58 == 18) != ((*(*v9 + 8) & 0xFE) == 18))
        {
          v18 = "PtrToInt type mismatch";
          goto LABEL_692;
        }

        if (v58 != 18 || *(v57 + 32) == *(v60 + 32) && ((~*(v57 + 8) & 0x13) == 0) != (*(*v9 + 8) != 19))
        {
          goto LABEL_571;
        }

        v18 = "PtrToInt Vector width mismatch";
        goto LABEL_692;
      case 0x4C:
        v62 = **(v9 - 32);
        v63 = *(v62 + 8) & 0xFE;
        v64 = *(v62 + 8);
        if (v63 == 18)
        {
          v64 = *(**(v62 + 16) + 8);
        }

        if (v64 != 13)
        {
          v18 = "IntToPtr source must be an integral";
          goto LABEL_692;
        }

        v65 = *v9;
        v66 = *(*v9 + 8);
        if ((*(*v9 + 8) & 0xFE) == 0x12)
        {
          v66 = *(**(v65 + 16) + 8);
        }

        if (v66 != 15)
        {
          v18 = "IntToPtr result must be a pointer";
          goto LABEL_692;
        }

        if ((v63 == 18) != ((*(*v9 + 8) & 0xFE) == 18))
        {
          v18 = "IntToPtr type mismatch";
          goto LABEL_692;
        }

        if (v63 != 18 || *(v62 + 32) == *(v65 + 32) && ((~*(v62 + 8) & 0x13) == 0) != (*(*v9 + 8) != 19))
        {
          goto LABEL_571;
        }

        v18 = "IntToPtr Vector width mismatch";
        goto LABEL_692;
      case 0x4D:
        if (llvm::CastInst::castIsValid(49, **(v9 - 32), *v9))
        {
          goto LABEL_571;
        }

        v387 = "Invalid bitcast";
        v391[0] = 259;
        v378 = v9;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
        goto LABEL_17;
      case 0x4E:
        v147 = **(v9 - 32);
        v148 = *(v147 + 8);
        v149 = v148 & 0xFE;
        v150 = v148;
        if (v149 == 18)
        {
          v150 = *(**(v147 + 16) + 8);
        }

        if (v150 != 15)
        {
          v18 = "AddrSpaceCast source must be a pointer";
          goto LABEL_692;
        }

        v151 = *v9;
        v152 = *(*v9 + 8);
        v153 = v152;
        v154 = v152;
        if ((v152 & 0xFE) == 0x12)
        {
          v154 = *(**(v151 + 16) + 8);
        }

        if (v154 != 15)
        {
          v18 = "AddrSpaceCast result must be a pointer";
          goto LABEL_692;
        }

        v155 = *(v147 + 8);
        if (v149 == 18)
        {
          v155 = *(**(v147 + 16) + 8);
        }

        if ((v152 & 0xFE) == 0x12)
        {
          v153 = *(**(v151 + 16) + 8);
        }

        if ((v153 ^ v155) <= 0xFF)
        {
          v18 = "AddrSpaceCast must be between different address spaces";
          goto LABEL_692;
        }

        if (v149 != 18 || *(v147 + 32) == *(v151 + 32) && ((~v148 & 0x13) == 0) != (v152 != 19))
        {
          goto LABEL_571;
        }

        v18 = "AddrSpaceCast vector pointer number of elements mismatch";
        goto LABEL_692;
      case 0x4F:
        v132 = *(v9 + 40);
        if ((*(*(v132 + 56) + 18) & 8) == 0)
        {
          v18 = "CleanupPadInst needs to be in a function with a personality.";
          goto LABEL_692;
        }

        v228 = v132 + 40;
        v229 = *(v132 + 48);
        while (2)
        {
          if (v229 == v228)
          {
            v230 = 0;
          }

          else
          {
            v230 = v229 - 24;
            if (v229)
            {
              v231 = v229 - 24;
            }

            else
            {
              v231 = 0;
            }

            if (*(v231 + 16) == 83)
            {
              v229 = *(v229 + 8);
              continue;
            }
          }

          break;
        }

        if (v230 != v9)
        {
          v18 = "CleanupPadInst not the first non-PHI instruction in the block.";
          goto LABEL_692;
        }

        v272 = *(*(v9 - 32) + 16);
        if (v272 == 20)
        {
          goto LABEL_587;
        }

        if (v272 >= 0x1C && v272 - 79 < 2)
        {
          goto LABEL_587;
        }

        v18 = "CleanupPadInst has an invalid parent.";
        goto LABEL_692;
      case 0x50:
        v22 = *(v9 + 40);
        if ((*(*(v22 + 56) + 18) & 8) == 0)
        {
          v18 = "CatchPadInst needs to be in a function with a personality.";
          goto LABEL_692;
        }

        v164 = *(v9 - 32);
        if (v164[16] != 38)
        {
          v387 = "CatchPadInst needs to be directly nested in a CatchSwitchInst.";
          v391[0] = 259;
          v378 = v164;
          goto LABEL_470;
        }

        v165 = v22 + 40;
        v166 = *(v22 + 48);
        while (2)
        {
          if (v166 == v165)
          {
            v167 = 0;
          }

          else
          {
            v167 = v166 - 24;
            if (v166)
            {
              v168 = v166 - 24;
            }

            else
            {
              v168 = 0;
            }

            if (*(v168 + 16) == 83)
            {
              v166 = *(v166 + 8);
              continue;
            }
          }

          break;
        }

        if (v167 != v9)
        {
          v18 = "CatchPadInst not the first non-PHI instruction in the block.";
          goto LABEL_692;
        }

LABEL_587:
        goto LABEL_17;
      case 0x51:
        v130 = **(v9 - 64);
        if (v130 != **(v9 - 32))
        {
          v18 = "Both operands to ICmp instruction are not of the same type!";
          goto LABEL_692;
        }

        if ((*(v130 + 8) & 0xFE) == 0x12)
        {
          v236 = *(**(v130 + 16) + 8);
        }

        else
        {
          v236 = *(v130 + 8);
        }

        if (v236 == 13 || v236 == 15)
        {
          if ((*(v9 + 18) & 0x3Eu) - 32 < 0xA)
          {
            goto LABEL_571;
          }

          v18 = "Invalid predicate in ICmp instruction!";
        }

        else
        {
          v18 = "Invalid operand types for ICmp instruction";
        }

        goto LABEL_692;
      case 0x52:
        v131 = **(v9 - 64);
        if (v131 != **(v9 - 32))
        {
          v18 = "Both operands to FCmp instruction are not of the same type!";
          goto LABEL_692;
        }

        v237 = *(v131 + 8);
        if ((v237 & 0xFE) == 0x12)
        {
          v237 = *(**(v131 + 16) + 8);
        }

        if (v237 >= 4u && v237 != 5 && (v237 & 0xFD) != 4)
        {
          v18 = "Invalid operand types for FCmp instruction";
          goto LABEL_692;
        }

        if ((*(v9 + 18) & 0x30) == 0)
        {
          goto LABEL_571;
        }

        v18 = "Invalid predicate in FCmp instruction!";
        goto LABEL_692;
      case 0x53:
        v37 = *(v9 + 40);
        v38 = *(v37 + 48);
        if (v38)
        {
          v39 = v38 - 24 == v9;
        }

        else
        {
          v39 = 0;
        }

        if (v39 || ((v40 = *(v9 + 24)) != 0 ? (v41 = v40 - 24) : (v41 = 0), *(v41 + 16) == 83))
        {
          if (*(*v9 + 8) == 12)
          {
            v42 = "PHI nodes cannot have token type!";
LABEL_170:
            v387 = v42;
            v391[0] = 259;
            goto LABEL_171;
          }

          if ((v10 & 0x40000000) != 0)
          {
            v232 = *(v9 - 8);
            v11 = v11;
            if (!v11)
            {
              goto LABEL_571;
            }
          }

          else
          {
            v11 = v11;
            v232 = (v9 - 32 * v11);
            if (!v11)
            {
              goto LABEL_571;
            }
          }

          v265 = 32 * v11;
          while (*v9 == **v232)
          {
            v232 += 4;
            v265 -= 32;
            if (!v265)
            {
              goto LABEL_571;
            }
          }

          v387 = "PHI node operands are not the same type as the result!";
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
        }

        else
        {
          v104 = "PHI nodes not grouped at top of basic block!";
LABEL_472:
          v387 = v104;
          v391[0] = 259;
          llvm::VerifierSupport::CheckFailed(this, &v387);
          if (*this)
          {
            if (v5)
            {
              llvm::VerifierSupport::Write(this, (v5 - 24));
            }

            v74 = this;
            v75 = v37;
LABEL_476:
            llvm::VerifierSupport::Write(v74, v75);
          }
        }

        goto LABEL_17;
      case 0x54:
        v122 = *(v9 + 18);
        if ((v122 & 3) != 2)
        {
          goto LABEL_17;
        }

        v123 = *(v9 - 32);
        v124 = *(v123 + 16);
        if (v124 == 24)
        {
          v18 = "cannot use musttail call with inline asm";
          goto LABEL_692;
        }

        v249 = *(v9 + 40);
        v250 = *(v249 + 56);
        v251 = *(v250 + 24);
        v252 = *(v9 + 72);
        if (*(v251 + 8) > 0xFFu != *(v252 + 8) > 0xFFu)
        {
          v18 = "cannot guarantee tail call due to mismatched varargs";
          goto LABEL_692;
        }

        v367 = *(v9 + 72);
        v372 = *(v249 + 56);
        v364 = *(v251 + 16);
        v366 = *(v250 + 24);
        v363 = *(v252 + 16);
        if (!isTypeCongruent(*v364, *v363))
        {
          v18 = "cannot guarantee tail call due to mismatched return types";
          goto LABEL_692;
        }

        v280 = v372;
        if ((((*(v372 + 18) >> 4) ^ (v122 >> 2)) & 0x3FF) != 0)
        {
          v18 = "cannot guarantee tail call due to mismatched calling conv";
          goto LABEL_692;
        }

        v319 = *(v9 + 32);
        if (v319 == v249 + 40 || !v319)
        {
          goto LABEL_820;
        }

        v320 = v319 - 24;
        if (*(v319 - 8) == 77)
        {
          v378 = (v319 - 24);
          v321 = v367;
          if (*(v319 - 56) != v9)
          {
            v387 = "bitcast following musttail call must use the call";
            v391[0] = 259;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
            goto LABEL_17;
          }

          v351 = v319 + 8;
          v350 = *(v319 + 8);
          if (v350 == *(v351 + 8) + 40 || !v350)
          {
            goto LABEL_820;
          }

          v8 = v320;
          v320 = v350 - 24;
        }

        else
        {
          v321 = v367;
        }

        if (*(v320 + 16) == 29)
        {
          v377 = v320;
          v337 = *(v320 + 20) & 0x7FFFFFF;
          if (v337)
          {
            v338 = *(v320 - 32 * v337);
            v339 = !v338 || v338 == v8;
            if (!v339 && *(v338 + 16) - 13 <= 0xFFFFFFFD)
            {
              v387 = "musttail call result must be returned";
              v391[0] = 259;
              llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v377);
              goto LABEL_17;
            }
          }

          v361 = *(v9 + 64);
          v362 = *(v372 + 112);
          v340 = (v122 >> 2) & 0x3FF;
          if (v340 == 20 || v340 == 18)
          {
            v341 = v340 == 18;
            if (v340 == 18)
            {
              v342 = "tailcc";
            }

            else
            {
              v342 = "swifttailcc";
            }

            v365 = v342;
            if (v341)
            {
              v343 = 6;
            }

            else
            {
              v343 = 11;
            }

            v344 = *(v366 + 12);
            v345 = v344 - 1;
            if (v344 != 1)
            {
              v346 = 0;
              do
              {
                getParameterABIAttributes(&v387, **v280, v346, v362);
                v382 = v365;
                v383 = v343;
                v384 = " musttail caller";
                v385 = 16;
                v378 = &v380;
                *v379 = xmmword_2750C1200;
                llvm::SmallString<128u>::append(&v378, &v382, 2);
                if (v378 != &v380)
                {
                  free(v378);
                }

                if (v388 != &v390)
                {
                  free(v388);
                }

                ++v346;
                v280 = v372;
              }

              while (v345 != v346);
            }

            v347 = *(v367 + 12);
            v348 = v347 - 1;
            if (v347 != 1)
            {
              v349 = 0;
              do
              {
                getParameterABIAttributes(&v387, **v280, v349, v361);
                v382 = v365;
                v383 = v343;
                v384 = " musttail callee";
                v385 = 16;
                v378 = &v380;
                *v379 = xmmword_2750C1200;
                llvm::SmallString<128u>::append(&v378, &v382, 2);
                if (v378 != &v380)
                {
                  free(v378);
                }

                if (v388 != &v390)
                {
                  free(v388);
                }

                ++v349;
                v280 = v372;
              }

              while (v348 != v349);
            }

            if (*(v366 + 8) > 0xFFu)
            {
              v382 = "cannot guarantee ";
              v386 = 259;
              v376 = 261;
              v375[0] = v365;
              v375[1] = v343;
              llvm::operator+(&v382, v375, &v378);
              v373[0] = " tail call for varargs function";
              v374 = 259;
              llvm::operator+(&v378, v373, &v387);
LABEL_171:
              llvm::VerifierSupport::CheckFailed(this, &v387);
            }

            goto LABEL_17;
          }

          if (!v124 && *(v123 + 24) == v321 && (*(v123 + 33) & 0x20) != 0)
          {
            v353 = *(v366 + 12) - 1;
LABEL_831:
            if (!v353)
            {
              goto LABEL_17;
            }

            v356 = 0;
            while (1)
            {
              getParameterABIAttributes(&v387, **v372, v356, v362);
              getParameterABIAttributes(&v378, **v372, v356, v361);
              if (v389 != LODWORD(v379[1]))
              {
                goto LABEL_844;
              }

              v357 = v388;
              if (v389)
              {
                break;
              }

LABEL_838:
              if (v379[0] != &v380)
              {
                free(v379[0]);
                v357 = v388;
              }

              if (v357 != &v390)
              {
                free(v357);
              }

              if (++v356 == v353)
              {
                goto LABEL_17;
              }
            }

            v358 = 8 * v389;
            v359 = v379[0];
            v360 = v388;
            while (*v360 == *v359)
            {
              ++v360;
              ++v359;
              v358 -= 8;
              if (!v358)
              {
                goto LABEL_838;
              }
            }

LABEL_844:
            v382 = "cannot guarantee tail call due to mismatched ABI impacting function attributes";
            v386 = 259;
            v375[0] = v9;
            v373[0] = *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF) + 32 * v356);
            llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v382, v375, v373);
            if (v379[0] != &v380)
            {
              free(v379[0]);
            }

            v278 = v388;
            if (v388 != &v390)
            {
              goto LABEL_620;
            }

            goto LABEL_17;
          }

          v352 = *(v366 + 12);
          if (v352 == *(v321 + 12))
          {
            v353 = v352 - 1;
            v354 = 1;
            while (v354 - v353 != 1)
            {
              v355 = isTypeCongruent(v364[v354], v363[v354]);
              ++v354;
              if (!v355)
              {
                v387 = "cannot guarantee tail call due to mismatched parameter types";
                v391[0] = 259;
                v378 = v9;
                llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
                goto LABEL_17;
              }
            }

            goto LABEL_831;
          }

          v18 = "cannot guarantee tail call due to mismatched parameter counts";
LABEL_692:
          v387 = v18;
          v391[0] = 259;
          v378 = v9;
          llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v387, &v378);
          goto LABEL_17;
        }

LABEL_820:
        v18 = "musttail call must precede a ret with an optional bitcast";
        goto LABEL_692;
      case 0x55:
        if (llvm::SelectInst::areInvalidOperands(*(v9 - 96), *(v9 - 64), *(v9 - 32)))
        {
          v18 = "Invalid operands for select instruction!";
          goto LABEL_692;
        }

        if (**(v9 - 64) == *v9)
        {
          goto LABEL_571;
        }

        v18 = "Select values must have same type as select instruction!";
        goto LABEL_692;
      case 0x56:
      case 0x57:
        v387 = "User-defined operators should not live outside of a pass!";
        v391[0] = 259;
        goto LABEL_16;
      case 0x58:
      case 0x5F:
        goto LABEL_571;
      case 0x59:
        if ((*(**(v9 - 64) + 8) & 0xFE) == 0x12 && *(**(v9 - 32) + 8) == 13)
        {
          goto LABEL_571;
        }

        v45 = "Invalid extractelement operands!";
        goto LABEL_358;
      case 0x5A:
        v94 = **(v9 - 96);
        if ((*(v94 + 8) & 0xFE) == 0x12 && **(v9 - 64) == *(v94 + 24) && *(**(v9 - 32) + 8) == 13)
        {
          goto LABEL_571;
        }

        v45 = "Invalid insertelement operands!";
        goto LABEL_358;
      case 0x5B:
        if (llvm::ShuffleVectorInst::isValidOperands(*(v9 - 64), *(v9 - 32), *(v9 + 64), *(v9 + 72)))
        {
          goto LABEL_571;
        }

        v45 = "Invalid shufflevector operands!";
        goto LABEL_358;
      case 0x5C:
        if (llvm::ExtractValueInst::getIndexedType(**(v9 - 32), *(v9 + 64), *(v9 + 72)) == *v9)
        {
          goto LABEL_571;
        }

        v45 = "Invalid ExtractValueInst operands!";
        goto LABEL_358;
      case 0x5D:
        if (llvm::ExtractValueInst::getIndexedType(**(v9 - 64), *(v9 + 64), *(v9 + 72)) == **(v9 - 32))
        {
          goto LABEL_571;
        }

        v45 = "Invalid InsertValueInst operands!";
        goto LABEL_358;
      case 0x5E:
        if (!v11 && (*(v9 + 18) & 1) == 0)
        {
          v18 = "LandingPadInst needs at least one clause or to be a cleanup.";
          goto LABEL_692;
        }

        v156 = this[99];
        v157 = *v9;
        if (v156)
        {
          if (v156 != v157)
          {
            v18 = "The landingpad instruction should have a consistent result type inside a function.";
            goto LABEL_692;
          }
        }

        else
        {
          this[99] = v157;
        }

        v240 = *(v9 + 40);
        if ((*(*(v240 + 56) + 18) & 8) == 0)
        {
          v18 = "LandingPadInst needs to be in a function with a personality.";
          goto LABEL_692;
        }

        for (ii = *(v240 + 48); ; ii = *(ii + 8))
        {
          v254 = ii ? ii - 24 : 0;
          if (*(v254 + 16) != 83)
          {
            break;
          }
        }

        if (*(ii - 8) == 94)
        {
          v255 = ii - 24 == v9;
        }

        else
        {
          v255 = v5 == 0;
        }

        if (!v255)
        {
          v18 = "LandingPadInst not the first non-PHI instruction in the block.";
          goto LABEL_692;
        }

        v256 = *(v9 + 20);
        v257 = v256 & 0x7FFFFFF;
        if ((v256 & 0x7FFFFFF) == 0)
        {
          goto LABEL_571;
        }

        v258 = 0;
        v259 = 32 * v257;
        v260 = v9 - 32 * v257;
        while (2)
        {
          if ((v256 & 0x40000000) != 0)
          {
            v261 = *(*(v9 - 8) + v258);
          }

          else
          {
            v261 = *(v260 + v258);
          }

          v262 = *(*v261 + 8);
          if (v262 == 17)
          {
            v263 = v261[16];
            if (v263 != 8 && v263 != 13)
            {
              v18 = "Filter operand is not an array of constants!";
              goto LABEL_692;
            }
          }

          else if (v262 != 15)
          {
            v18 = "Catch operand does not have pointer type!";
            goto LABEL_692;
          }

          v258 += 32;
          if (v259 == v258)
          {
            goto LABEL_571;
          }

          continue;
        }

      default:
        v81 = **(*(*(*(v9 + 40) + 56) + 24) + 16);
        if (*(v81 + 8) == 7)
        {
          if (!v11)
          {
            goto LABEL_777;
          }

          v82 = "Found return instr that returns non-void in Function of void return type!";
        }

        else
        {
          if (v11 == 1 && v81 == **(v9 - 32))
          {
LABEL_777:
            goto LABEL_17;
          }

          v82 = "Function return type does not match operand type of return inst!";
        }

        v387 = v82;
        v391[0] = 259;
        v378 = v9;
        v382 = v81;
        llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Type *>(this, &v387, &v378, &v382);
        goto LABEL_17;
    }
  }
}

uint64_t llvm::array_pod_sort_comparator<llvm::BasicBlock *>(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = (a2 - v10) >> 4;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v112 = *(a2 - 2);
        v113 = *v10;
        if (v112 < *v10 || v113 >= v112 && *(a2 - 1) < v10[1])
        {
          *v10 = v112;
          *(a2 - 2) = v113;
          v114 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v114;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      v108 = v10[2];
      v109 = *v10;
      if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
      {
        v175 = *(a2 - 2);
        if (v175 >= v108 && (v108 < v175 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v175;
        *(a2 - 2) = v108;
        v9 = v10 + 3;
        v176 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v176;
        v177 = v10[2];
        v178 = *v10;
        if (v177 >= *v10 && (v178 < v177 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v177;
        v10[2] = v178;
        v111 = v10 + 1;
LABEL_345:
        v189 = *v111;
        *v111 = *v9;
        *v9 = v189;
        return result;
      }

      v110 = *(a2 - 2);
      if (v110 < v108)
      {
LABEL_216:
        *v10 = v110;
        v111 = v10 + 1;
        *(a2 - 2) = v109;
        goto LABEL_345;
      }

      if (v108 >= v110)
      {
        v186 = v10[3];
        if (*(a2 - 1) < v186)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v186 = v10[3];
      }

      v187 = v10[1];
      v10[3] = v187;
      *v10 = v108;
      v10[1] = v186;
      v10[2] = v109;
      v188 = *(a2 - 2);
      if (v188 >= v109 && (v109 < v188 || *(a2 - 1) >= v187))
      {
        return result;
      }

      v10[2] = v188;
      *(a2 - 2) = v109;
      v111 = v10 + 3;
      goto LABEL_345;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v126 = v10 + 2;
      v128 = v10 == a2 || v126 == a2;
      if (a4)
      {
        if (v128)
        {
          return result;
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
              goto LABEL_251;
            }

            v134 = v131[3];
            if (v134 >= v131[1])
            {
              goto LABEL_251;
            }
          }

          else
          {
            v134 = v131[3];
          }

          v131[2] = v133;
          v130[1] = v131[1];
          v135 = v10;
          if (v131 == v10)
          {
            goto LABEL_250;
          }

          v136 = v129;
          while (1)
          {
            v137 = *(v10 + v136 - 16);
            if (v132 >= v137)
            {
              break;
            }

            v138 = *(v10 + v136 - 8);
LABEL_244:
            v131 -= 2;
            v139 = (v10 + v136);
            *v139 = v137;
            v139[1] = v138;
            v136 -= 16;
            if (!v136)
            {
              v135 = v10;
              goto LABEL_250;
            }
          }

          if (v137 >= v132)
          {
            break;
          }

          v135 = v131;
LABEL_250:
          *v135 = v132;
          v135[1] = v134;
LABEL_251:
          v126 = v130 + 2;
          v129 += 16;
          if (v130 + 2 == a2)
          {
            return result;
          }
        }

        v135 = (v10 + v136);
        v138 = *(v10 + v136 - 8);
        if (v134 >= v138)
        {
          goto LABEL_250;
        }

        goto LABEL_244;
      }

      if (v128)
      {
        return result;
      }

      for (i = v10 + 1; ; i += 2)
      {
        v180 = v7;
        v7 = v126;
        v181 = v180[2];
        v182 = *v180;
        if (v181 < *v180)
        {
          break;
        }

        if (v182 >= v181)
        {
          v183 = v180[3];
          if (v183 < v180[1])
          {
            goto LABEL_321;
          }
        }

LABEL_329:
        v126 = v7 + 2;
        if (v7 + 2 == a2)
        {
          return result;
        }
      }

      v183 = v180[3];
LABEL_321:
      for (j = i; ; j -= 2)
      {
        v185 = *j;
        j[1] = v182;
        j[2] = v185;
        v182 = *(j - 3);
        if (v181 >= v182 && (v182 < v181 || v183 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 1) = v181;
      *j = v183;
      goto LABEL_329;
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return result;
      }

      v140 = (v11 - 2) >> 1;
      v141 = v140;
      while (1)
      {
        v142 = v141;
        if (v140 >= v141)
        {
          v143 = (2 * v141) | 1;
          v144 = &v10[2 * v143];
          if (2 * v142 + 2 < v11)
          {
            v145 = v144[2];
            if (*v144 < v145 || v145 >= *v144 && v144[1] < v144[3])
            {
              v144 += 2;
              v143 = 2 * v142 + 2;
            }
          }

          v146 = &v10[2 * v142];
          v147 = *v144;
          v148 = *v146;
          if (*v144 >= *v146)
          {
            if (v148 < v147)
            {
              v149 = v146[1];
LABEL_265:
              *v146 = v147;
              v146[1] = v144[1];
              if (v140 >= v143)
              {
                while (1)
                {
                  v151 = 2 * v143;
                  v143 = (2 * v143) | 1;
                  v150 = &v10[2 * v143];
                  v152 = v151 + 2;
                  if (v152 < v11)
                  {
                    result = v150[2];
                    if (*v150 < result || result >= *v150 && (result = v150[1], result < v150[3]))
                    {
                      v150 += 2;
                      v143 = v152;
                    }
                  }

                  v153 = *v150;
                  if (*v150 < v148 || v148 >= v153 && v150[1] < v149)
                  {
                    break;
                  }

                  *v144 = v153;
                  v144[1] = v150[1];
                  v144 = v150;
                  if (v140 < v143)
                  {
                    goto LABEL_267;
                  }
                }
              }

              v150 = v144;
LABEL_267:
              *v150 = v148;
              v150[1] = v149;
              goto LABEL_268;
            }

            v149 = v146[1];
            if (v144[1] >= v149)
            {
              goto LABEL_265;
            }
          }
        }

LABEL_268:
        v141 = v142 - 1;
        if (!v142)
        {
          while (1)
          {
            v155 = 0;
            v156 = *v10;
            v157 = v10[1];
            v158 = v10;
            do
            {
              v159 = v158;
              v160 = &v158[2 * v155];
              v158 = v160 + 2;
              v161 = 2 * v155;
              v155 = (2 * v155) | 1;
              v162 = v161 + 2;
              if (v162 < v11)
              {
                result = v160[4];
                v163 = v160[2];
                if (v163 < result || result >= v163 && (result = v160[3], result < v160[5]))
                {
                  v158 = v160 + 4;
                  v155 = v162;
                }
              }

              *v159 = *v158;
              v159[1] = v158[1];
            }

            while (v155 <= ((v11 - 2) >> 1));
            if (v158 == a2 - 2)
            {
              *v158 = v156;
              v158[1] = v157;
            }

            else
            {
              *v158 = *(a2 - 2);
              v158[1] = *(a2 - 1);
              *(a2 - 2) = v156;
              *(a2 - 1) = v157;
              v164 = (v158 - v10 + 16) >> 4;
              v165 = v164 - 2;
              if (v164 >= 2)
              {
                v166 = v165 >> 1;
                v167 = &v10[2 * (v165 >> 1)];
                v168 = *v167;
                v169 = *v158;
                if (*v167 < *v158)
                {
                  v154 = v158[1];
LABEL_294:
                  *v158 = v168;
                  v158[1] = v167[1];
                  if (v165 >= 2)
                  {
                    while (1)
                    {
                      v171 = v166 - 1;
                      v166 = (v166 - 1) >> 1;
                      v170 = &v10[2 * v166];
                      v172 = *v170;
                      if (*v170 >= v169)
                      {
                        if (v169 < v172)
                        {
                          break;
                        }

                        v173 = v170[1];
                        if (v173 >= v154)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v173 = v170[1];
                      }

                      *v167 = v172;
                      v167[1] = v173;
                      v167 = &v10[2 * v166];
                      if (v171 <= 1)
                      {
                        goto LABEL_301;
                      }
                    }
                  }

                  v170 = v167;
LABEL_301:
                  *v170 = v169;
                  v170[1] = v154;
                  goto LABEL_303;
                }

                if (v169 >= v168)
                {
                  v154 = v158[1];
                  if (v167[1] < v154)
                  {
                    goto LABEL_294;
                  }
                }
              }
            }

LABEL_303:
            a2 -= 2;
            if (v11-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v12 = &v10[2 * (v11 >> 1)];
    v13 = v12;
    if (v11 >= 0x81)
    {
      v14 = *v12;
      v15 = *v10;
      if (*v12 >= *v10 && (v15 < v14 || v12[1] >= v10[1]))
      {
        v22 = *v8;
        if (*v8 >= v14 && (v14 < v22 || *(a2 - 1) >= v12[1]))
        {
          goto LABEL_44;
        }

        *v12 = v22;
        *(a2 - 2) = v14;
        v23 = v12 + 1;
        v24 = v12[1];
        v12[1] = *(a2 - 1);
        *(a2 - 1) = v24;
        v25 = *v12;
        v26 = *v10;
        if (*v12 >= *v10 && (v26 < v25 || *v23 >= v10[1]))
        {
LABEL_44:
          v36 = v12 - 2;
          v37 = *(v12 - 2);
          v38 = v10[2];
          if (v37 >= v38 && (v38 < v37 || *(v12 - 1) >= v10[3]))
          {
            v41 = *(a2 - 4);
            if (v41 >= v37 && (v37 < v41 || *(a2 - 3) >= *(v12 - 1)))
            {
              goto LABEL_66;
            }

            *v36 = v41;
            *(a2 - 4) = v37;
            v42 = v12 - 1;
            v43 = *(v12 - 1);
            *(v12 - 1) = *(a2 - 3);
            *(a2 - 3) = v43;
            v44 = *v36;
            v45 = v10[2];
            if (*v36 >= v45 && (v45 < v44 || *v42 >= v10[3]))
            {
LABEL_66:
              v54 = v12[2];
              v52 = v12 + 2;
              v53 = v54;
              v55 = v10[4];
              if (v54 >= v55 && (v55 < v53 || v52[1] >= v10[5]))
              {
                v58 = *(a2 - 6);
                if (v58 >= v53 && (v53 < v58 || *(a2 - 5) >= v52[1]))
                {
                  goto LABEL_84;
                }

                *v52 = v58;
                *(a2 - 6) = v53;
                v59 = v52 + 1;
                v60 = v52[1];
                v52[1] = *(a2 - 5);
                *(a2 - 5) = v60;
                v61 = *v52;
                v62 = v10[4];
                if (*v52 >= v62 && (v62 < v61 || *v59 >= v10[5]))
                {
LABEL_84:
                  v67 = *v13;
                  v68 = *v36;
                  if (*v13 >= *v36 && (v68 < v67 || v13[1] >= v36[1]))
                  {
                    v72 = *v52;
                    if (*v52 >= v67)
                    {
                      if (v67 < v72)
                      {
                        goto LABEL_103;
                      }

                      v74 = v52[1];
                      v73 = v13[1];
                      if (v74 >= v73)
                      {
                        goto LABEL_103;
                      }
                    }

                    else
                    {
                      v73 = v13[1];
                      v74 = v52[1];
                    }

                    *v13 = v72;
                    v13[1] = v74;
                    v75 = (v13 + 1);
                    *v52 = v67;
                    v52[1] = v73;
                    if (v72 >= v68 && (v68 < v72 || v74 >= v36[1]))
                    {
                      v67 = v72;
                      goto LABEL_103;
                    }

                    *v36 = v72;
                    v70 = (v36 + 1);
                    *v13 = v68;
LABEL_102:
                    v78 = *v70;
                    *v70 = *v75;
                    *v75 = v78;
                    v67 = *v13;
LABEL_103:
                    v79 = *v10;
                    *v10 = v67;
                    v21 = v10 + 1;
                    *v13 = v79;
                    v29 = v13 + 1;
                    goto LABEL_104;
                  }

                  v69 = *v52;
                  if (*v52 < v67)
                  {
                    goto LABEL_86;
                  }

                  if (v67 >= v69)
                  {
                    v76 = v13[1];
                    if (v52[1] < v76)
                    {
LABEL_86:
                      *v36 = v69;
                      v70 = (v36 + 1);
                      *v52 = v68;
                      v71 = (v52 + 1);
LABEL_101:
                      v75 = v71;
                      goto LABEL_102;
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
                    goto LABEL_103;
                  }

                  *v13 = v69;
                  *v52 = v68;
                  v71 = (v52 + 1);
                  v70 = (v13 + 1);
                  goto LABEL_101;
                }

                v10[4] = v61;
                *v52 = v62;
                v57 = v10 + 5;
LABEL_83:
                v66 = *v57;
                *v57 = *v59;
                *v59 = v66;
                goto LABEL_84;
              }

              v56 = *(a2 - 6);
              if (v56 < v53)
              {
                goto LABEL_68;
              }

              if (v53 >= v56)
              {
                v63 = v52[1];
                if (*(a2 - 5) < v63)
                {
LABEL_68:
                  v10[4] = v56;
                  *(a2 - 6) = v55;
                  v57 = v10 + 5;
LABEL_82:
                  v59 = a2 - 5;
                  goto LABEL_83;
                }
              }

              else
              {
                v63 = v52[1];
              }

              v64 = v10[5];
              v10[4] = v53;
              v10[5] = v63;
              *v52 = v55;
              v52[1] = v64;
              v57 = v52 + 1;
              v65 = *(a2 - 6);
              if (v65 >= v55 && (v55 < v65 || *(a2 - 5) >= v64))
              {
                goto LABEL_84;
              }

              *v52 = v65;
              *(a2 - 6) = v55;
              goto LABEL_82;
            }

            v10[2] = v44;
            *v36 = v45;
            v40 = v10 + 3;
LABEL_65:
            v51 = *v40;
            *v40 = *v42;
            *v42 = v51;
            goto LABEL_66;
          }

          v39 = *(a2 - 4);
          if (v39 < v37)
          {
            goto LABEL_46;
          }

          if (v37 >= v39)
          {
            v46 = *(v12 - 1);
            if (*(a2 - 3) < v46)
            {
LABEL_46:
              v10[2] = v39;
              *(a2 - 4) = v38;
              v40 = v10 + 3;
LABEL_64:
              v42 = a2 - 3;
              goto LABEL_65;
            }
          }

          else
          {
            v46 = *(v12 - 1);
          }

          v49 = v10[3];
          v10[2] = v37;
          v10[3] = v46;
          *v36 = v38;
          *(v12 - 1) = v49;
          v40 = v12 - 1;
          v50 = *(a2 - 4);
          if (v50 >= v38 && (v38 < v50 || *(a2 - 3) >= v49))
          {
            goto LABEL_66;
          }

          *v36 = v50;
          *(a2 - 4) = v38;
          goto LABEL_64;
        }

        *v10 = v25;
        v17 = v10 + 1;
        *v12 = v26;
LABEL_43:
        v35 = *v17;
        *v17 = *v23;
        *v23 = v35;
        goto LABEL_44;
      }

      v16 = *v8;
      if (*v8 < v14)
      {
        goto LABEL_15;
      }

      if (v14 >= v16)
      {
        v31 = v12[1];
        if (*(a2 - 1) < v31)
        {
LABEL_15:
          *v10 = v16;
          v17 = v10 + 1;
LABEL_42:
          *v8 = v15;
          v23 = a2 - 1;
          goto LABEL_43;
        }
      }

      else
      {
        v31 = v12[1];
      }

      v33 = v10[1];
      *v10 = v14;
      v10[1] = v31;
      *v12 = v15;
      v12[1] = v33;
      v17 = v12 + 1;
      v34 = *v8;
      if (*v8 >= v15 && (v15 < v34 || *(a2 - 1) >= v33))
      {
        goto LABEL_44;
      }

      *v12 = v34;
      goto LABEL_42;
    }

    v18 = *v10;
    v19 = *v13;
    if (*v10 < *v13 || v19 >= v18 && v10[1] < v13[1])
    {
      v20 = *v8;
      if (*v8 < v18)
      {
        goto LABEL_18;
      }

      if (v18 >= v20)
      {
        v32 = v10[1];
        if (*(a2 - 1) >= v32)
        {
          goto LABEL_58;
        }

LABEL_18:
        *v13 = v20;
        *v8 = v19;
        v21 = v13 + 1;
      }

      else
      {
        v32 = v10[1];
LABEL_58:
        v47 = v13[1];
        *v13 = v18;
        v13[1] = v32;
        *v10 = v19;
        v10[1] = v47;
        v21 = v10 + 1;
        v48 = *v8;
        if (*v8 >= v19 && (v19 < v48 || *(a2 - 1) >= v47))
        {
          v18 = v19;
          goto LABEL_105;
        }

        *v10 = v48;
        *v8 = v19;
      }

      v29 = a2 - 1;
LABEL_104:
      v80 = *v21;
      *v21 = *v29;
      *v29 = v80;
      v18 = *v10;
      goto LABEL_105;
    }

    v27 = *v8;
    if (*v8 < v18 || v18 >= v27 && *(a2 - 1) < v10[1])
    {
      *v10 = v27;
      *(a2 - 2) = v18;
      v29 = v10 + 1;
      v28 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v28;
      v18 = *v10;
      v30 = *v13;
      if (*v10 < *v13 || v30 >= v18 && *v29 < v13[1])
      {
        *v13 = v18;
        *v10 = v30;
        v21 = v13 + 1;
        goto LABEL_104;
      }
    }

LABEL_105:
    --a3;
    if (a4)
    {
      goto LABEL_109;
    }

    v81 = *(v10 - 2);
    if (v81 < v18)
    {
      goto LABEL_109;
    }

    if (v18 < v81)
    {
      v82 = v10[1];
      goto LABEL_178;
    }

    v82 = v10[1];
    if (*(v10 - 1) >= v82)
    {
LABEL_178:
      v98 = *v8;
      if (v18 < *v8 || v98 >= v18 && v82 < *(a2 - 1))
      {
        do
        {
          v100 = v10[2];
          v10 += 2;
          v99 = v100;
        }

        while (v18 >= v100 && (v99 < v18 || v82 >= v10[1]));
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
          v105 = v10[1];
          v10[1] = k[1];
          k[1] = v105;
          do
          {
            v106 = v10[2];
            v10 += 2;
            v103 = v106;
          }

          while (v18 >= v106 && (v103 < v18 || v82 >= v10[1]));
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

      if (v10 - 2 != v7)
      {
        *v7 = *(v10 - 2);
        v7[1] = *(v10 - 1);
      }

      a4 = 0;
      *(v10 - 2) = v18;
      *(v10 - 1) = v82;
    }

    else
    {
LABEL_109:
      v83 = 0;
      v84 = v10[1];
      while (1)
      {
        v85 = v10[v83 + 2];
        if (v85 >= v18 && (v18 < v85 || v10[v83 + 3] >= v84))
        {
          break;
        }

        v83 += 2;
      }

      v86 = &v10[v83 + 2];
      if (v83 * 8)
      {
        v87 = *v8;
        for (m = a2 - 2; v87 >= v18 && (v18 < v87 || m[1] >= v84); m -= 2)
        {
          v89 = *(m - 2);
          v87 = v89;
        }
      }

      else
      {
        m = a2;
        if (v86 < a2)
        {
          v90 = *v8;
          m = a2 - 2;
          if (*v8 >= v18)
          {
            m = a2 - 2;
            do
            {
              if (v18 >= v90)
              {
                if (v86 >= m || m[1] < v84)
                {
                  break;
                }
              }

              else if (v86 >= m)
              {
                break;
              }

              v91 = *(m - 2);
              m -= 2;
              v90 = v91;
            }

            while (v91 >= v18);
          }
        }
      }

      if (v86 >= m)
      {
        v10 = v86;
      }

      else
      {
        v92 = *m;
        v10 = v86;
        v93 = m;
        do
        {
          *v10 = v92;
          *v93 = v85;
          v94 = v10[1];
          v10[1] = v93[1];
          v93[1] = v94;
          do
          {
            do
            {
              v95 = v10[2];
              v10 += 2;
              v85 = v95;
            }

            while (v95 < v18);
          }

          while (v18 >= v85 && v10[1] < v84);
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

      if (v10 - 2 != v7)
      {
        *v7 = *(v10 - 2);
        v7[1] = *(v10 - 1);
      }

      *(v10 - 2) = v18;
      *(v10 - 1) = v84;
      if (v86 < m)
      {
LABEL_146:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,false>(v7, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v97 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *>(v7, v10 - 2);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *>(v10, a2);
        if (result)
        {
          a2 = v10 - 2;
          if (v97)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v97)
        {
          goto LABEL_146;
        }
      }
    }
  }

  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v115 = *(a2 - 2);
  v116 = v10[6];
  if (v115 < v116 || v116 >= v115 && *(a2 - 1) < v10[7])
  {
    v10[6] = v115;
    *(a2 - 2) = v116;
    v117 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v117;
    v118 = v10[6];
    v119 = v10[4];
    if (v118 >= v119)
    {
      if (v119 < v118)
      {
        return result;
      }

      v121 = v10[7];
      v120 = v10[5];
      if (v121 >= v120)
      {
        return result;
      }
    }

    else
    {
      v120 = v10[5];
      v121 = v10[7];
    }

    v10[4] = v118;
    v10[5] = v121;
    v10[6] = v119;
    v10[7] = v120;
    v122 = v10[2];
    if (v118 >= v122)
    {
      if (v122 < v118)
      {
        return result;
      }

      v123 = v10[3];
      if (v121 >= v123)
      {
        return result;
      }
    }

    else
    {
      v123 = v10[3];
    }

    v10[2] = v118;
    v10[3] = v121;
    v10[4] = v122;
    v10[5] = v123;
    v124 = *v10;
    if (v118 >= *v10)
    {
      if (v124 < v118)
      {
        return result;
      }

      v125 = v10[1];
      if (v121 >= v125)
      {
        return result;
      }
    }

    else
    {
      v125 = v10[1];
    }

    *v10 = v118;
    v10[1] = v121;
    v10[2] = v124;
    v10[3] = v125;
  }

  return result;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *>(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<llvm::BasicBlock *,llvm::Value *> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
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
      v31 = a1[3];
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
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
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
    v23 = a1 + 3;
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
      v7 = a1[1];
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
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 16);
      if (v48 >= v53)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_75:
      v25 -= 2;
      *(v52 + 4) = v53;
      *(a1 + v51 + 40) = v54;
      v51 -= 16;
      if (v51 == -32)
      {
        v25 = a1;
        goto LABEL_81;
      }
    }

    if (v53 >= v48)
    {
      v54 = *(a1 + v51 + 24);
      if (v50 >= v54)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    v25 = (a1 + v51 + 32);
LABEL_81:
    *v25 = v48;
    v25[1] = v50;
    if (++v47 != 8)
    {
LABEL_82:
      v25 = v45;
      v46 += 16;
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

void anonymous namespace::Verifier::visitTerminator(_anonymous_namespace_::Verifier *this, llvm::Instruction *a2)
{
  v4 = *(a2 + 5);
  v5 = *(v4 + 40);
  if (v5 != v4 + 40 && ((v6 = (v5 - 24), v5) ? (v7 = v5 - 24) : (v7 = 0), *(v7 + 16) - 29 <= 0xA ? (v8 = v6 == a2) : (v8 = 0), v8))
  {
  }

  else
  {
    v12 = v2;
    v13 = v3;
    v9 = v4;
    v10 = "Terminator found in the middle of a basic block!";
    v11 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v10, &v9);
  }
}

void anonymous namespace::Verifier::visitInstruction(_anonymous_namespace_::Verifier *this, llvm::Instruction *a2)
{
  v148 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 5);
  if (!v4)
  {
    v8 = "Instruction not embedded in basic block!";
    goto LABEL_325;
  }

  if (*(a2 + 16) != 83)
  {
    for (i = *(a2 + 1); i; i = *(i + 8))
    {
      if (*(i + 24) == a2)
      {
        v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(this + 224, v4);
        if (*(this + 28) + 16 * *(this + 60) != v6)
        {
          if (*(v6 + 8))
          {
            v8 = "Only PHI nodes may reference their own value!";
            goto LABEL_325;
          }
        }
      }
    }
  }

  v7 = *(*a2 + 8);
  if (v7 == 14)
  {
    v8 = "Instruction returns a non-scalar type!";
    goto LABEL_325;
  }

  if (v7 == 9)
  {
    v9 = *(a2 + 16);
    if (v9 != 33 && v9 != 84)
    {
      v8 = "Invalid use of metadata!";
      goto LABEL_325;
    }
  }

  else if (v7 == 7 && (*(a2 + 23) & 0x10) != 0)
  {
    v8 = "Instruction has a name, but provides a void value!";
    goto LABEL_325;
  }

  for (j = *(a2 + 1); j; j = *(j + 8))
  {
    v11 = *(j + 24);
    if (*(v11 + 16) <= 0x1Bu)
    {
      v11 = 0;
    }

    v138 = v11;
    if (!v11)
    {
      v143 = "Use of instruction is not an instruction!";
      v147 = 259;
      llvm::VerifierSupport::CheckFailed(this, &v143);
      if (*this && *j)
      {
        llvm::VerifierSupport::Write(this, *j);
      }

      goto LABEL_327;
    }

    if (!*(v11 + 40))
    {
      v143 = "Instruction referencing instruction not embedded in a basic block!";
      v147 = 259;
      v130 = a2;
      llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v143, &v130, &v138);
      goto LABEL_327;
    }
  }

  v12 = *(a2 + 16) - 33;
  v13 = v12 > 0x33;
  v14 = (1 << v12) & 0x8000000000041;
  if (v13 || v14 == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  v17 = *(a2 + 5);
  v18 = v17 & 0x7FFFFFF;
  if ((v17 & 0x7FFFFFF) != 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = (v16 - 32);
    do
    {
      v22 = *(a2 + 5);
      if ((v22 & 0x40000000) != 0)
      {
        v23 = *(a2 - 1);
      }

      else
      {
        v23 = a2 - 32 * (v22 & 0x7FFFFFF);
      }

      v24 = *&v23[v19];
      if (!v24)
      {
        v8 = "Instruction has null operand!";
        goto LABEL_325;
      }

      v25 = *(*v24 + 8);
      if (v25 == 14 || v25 == 7)
      {
        v8 = "Instruction operands must be first-class values!";
        goto LABEL_325;
      }

      if ((v22 & 0x40000000) != 0)
      {
        v27 = *(a2 - 1);
      }

      else
      {
        v27 = a2 - 32 * (v22 & 0x7FFFFFF);
      }

      v28 = *&v27[v19];
      if (*(v28 + 16))
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      v138 = v29;
      if (v29)
      {
        if ((*(v29 + 33) & 0x20) == 0)
        {
          goto LABEL_52;
        }

        if (!v16)
        {
          goto LABEL_145;
        }

        v37 = (v22 & 0x40000000) != 0 ? *(a2 - 1) : (a2 - 32 * (v22 & 0x7FFFFFF));
        if ((v37 + v19) != v21)
        {
          if (!llvm::CallBase::isOperandBundleOfType(v16, 6, v20))
          {
LABEL_145:
            v53 = "Cannot take the address of an intrinsic!";
            goto LABEL_147;
          }

          if ((*(v29 + 33) & 0x20) == 0)
          {
            goto LABEL_52;
          }
        }

        if (*(a2 + 16) == 84)
        {
          goto LABEL_52;
        }

        v38 = *(v29 + 36);
        if (v38 > 268)
        {
          if ((v38 - 269) < 4 || v38 == 10148)
          {
LABEL_52:
            v30 = *(this + 1);
            if (*(v29 + 40) != v30)
            {
              v142 = *(v29 + 40);
              v143 = "Referencing function in another module!";
              v147 = 259;
              v130 = a2;
              v134 = v30;
              llvm::VerifierSupport::CheckFailed<llvm::Function const*,llvm::Module const*,llvm::Function*,llvm::Module*>(this, &v143, &v130, &v134, &v138, &v142);
              goto LABEL_327;
            }

            goto LABEL_114;
          }
        }

        else
        {
          if (v38 <= 0x3D && ((1 << v38) & 0x2000200080000000) != 0)
          {
            goto LABEL_52;
          }

          v40 = v38 - 125;
          v13 = v40 > 4;
          v41 = (1 << v40) & 0x19;
          if (!v13 && v41 != 0)
          {
            goto LABEL_52;
          }
        }

        if (!llvm::CallBase::isOperandBundleOfType(v16, 6, v20))
        {
          v53 = "Cannot invoke an intrinsic other than donothing, patchpoint, statepoint, coro_resume, coro_destroy or clang.arc.attachedcall";
          goto LABEL_147;
        }

        goto LABEL_52;
      }

      if ((v22 & 0x40000000) != 0)
      {
        v31 = *(a2 - 1);
        v32 = *&v31[v19];
        v33 = *(v32 + 16);
        if (!v32 || v33 != 22)
        {
          if (!v32 || v33 != 21)
          {
            if (v33 >= 4)
            {
              v44 = 0;
            }

            else
            {
              v44 = *&v31[v19];
            }

            v130 = v44;
            if (v44)
            {
LABEL_110:
              v45 = *(v32 + 40);
              if (v45 != *(this + 1))
              {
                v142 = *(this + 1);
                v143 = "Referencing global in another module!";
                v147 = 259;
                v134 = a2;
                v137 = v45;
                llvm::VerifierSupport::CheckFailed<llvm::Instruction *,llvm::Module const*,llvm::GlobalValue *,llvm::Module*>(this, &v143, &v134, &v142, &v130, &v137);
                goto LABEL_327;
              }

              goto LABEL_114;
            }

            if (v33 < 0x1C)
            {
LABEL_68:
              if (v33 == 24)
              {
                if (!v16 || &v31[v19] != v21)
                {
                  v143 = "Cannot take the address of an inline asm!";
                  v147 = 259;
                  v134 = a2;
                  v54 = &v134;
                  goto LABEL_326;
                }
              }

              else if (v33 == 5)
              {
                v46 = (*(*v32 + 8) & 0xFE) == 0x12 ? *(**(*v32 + 16) + 8) : *(*v32 + 8);
                if (v46 == 15)
                {
                }
              }

              goto LABEL_114;
            }

            goto LABEL_113;
          }

          goto LABEL_98;
        }
      }

      else
      {
        v31 = a2 - 32 * (v22 & 0x7FFFFFF);
        v32 = *&v31[v19];
        v33 = *(v32 + 16);
        if (v32)
        {
          v34 = v33 == 22;
        }

        else
        {
          v34 = 0;
        }

        if (!v34)
        {
          if (v32)
          {
            v35 = v33 == 21;
          }

          else
          {
            v35 = 0;
          }

          if (!v35)
          {
            if (v33 >= 4)
            {
              v36 = 0;
            }

            else
            {
              v36 = *&v31[v19];
            }

            v130 = v36;
            if (v36)
            {
              goto LABEL_110;
            }

            if (v33 <= 0x1B)
            {
              goto LABEL_68;
            }

LABEL_113:
            goto LABEL_114;
          }

LABEL_98:
          if (*(v32 + 24) != *(v4 + 56))
          {
            v53 = "Referring to an argument in another function!";
            goto LABEL_147;
          }

          goto LABEL_114;
        }
      }

      if (*(v32 + 56) != *(v4 + 56))
      {
        v53 = "Referring to a basic block in another function!";
LABEL_147:
        v143 = v53;
        v147 = 259;
        v130 = a2;
        v54 = &v130;
        goto LABEL_326;
      }

LABEL_114:
      ++v20;
      v19 += 32;
    }

    while (v18 != v20);
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    Metadata = llvm::Value::getMetadata(a2, 3);
    if (Metadata)
    {
      v48 = *(*a2 + 8);
      if ((v48 & 0xFE) == 0x12)
      {
        v48 = *(**(*a2 + 16) + 8);
      }

      if (v48 >= 4u && v48 != 5 && (v48 & 0xFD) != 4)
      {
        v8 = "fpmath requires a floating point result!";
        goto LABEL_325;
      }

      v49 = *(Metadata - 16);
      if ((v49 & 2) != 0)
      {
        if (*(Metadata - 24) == 1)
        {
          v50 = *(Metadata - 32);
          goto LABEL_138;
        }
      }

      else if ((*(Metadata - 16) & 0x3C0) == 0x40)
      {
        v50 = (Metadata - 16 - 8 * ((v49 >> 2) & 0xF));
LABEL_138:
        v51 = *v50;
        if (!v51 || *v51 != 1 || (v52 = *(v51 + 128), *(v52 + 16) != 17))
        {
          v8 = "invalid fpmath accuracy!";
          goto LABEL_325;
        }

        if (*(v52 + 32) != &llvm::semIEEEsingle)
        {
          v8 = "fpmath accuracy must have float type";
          goto LABEL_325;
        }

        v55 = *(v52 + 52);
        v56 = v55 & 6;
        v57 = v55 & 7;
        v58 = v55 & 8;
        if (v56)
        {
          v59 = v57 == 3;
        }

        else
        {
          v59 = 1;
        }

        if (v59 || v58 != 0)
        {
          v8 = "fpmath accuracy not a positive number!";
          goto LABEL_325;
        }

        goto LABEL_156;
      }

      v8 = "fpmath takes one operand!";
      goto LABEL_325;
    }
  }

LABEL_156:
  if (!*(a2 + 6) && (*(a2 + 23) & 0x20) == 0)
  {
    goto LABEL_219;
  }

  v61 = llvm::Value::getMetadata(a2, 4);
  if (!v61)
  {
    goto LABEL_219;
  }

  v62 = *(a2 + 16) - 33;
  if (v62 > 0x33 || ((1 << v62) & 0x8000008000001) == 0)
  {
    v8 = "Ranges are only for loads, calls and invokes!";
    goto LABEL_325;
  }

  v63 = v61;
  v64 = *a2;
  v142 = v61;
  v66 = (v61 - 16);
  v65 = *(v61 - 2);
  if ((v65 & 2) != 0)
  {
    v67 = *(v61 - 6);
  }

  else
  {
    v67 = (v65 >> 6) & 0xF;
  }

  if (v67)
  {
    v86 = "Unfinished range!";
LABEL_218:
    v143 = v86;
    v147 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v143, &v142);
    goto LABEL_219;
  }

  if (!v67)
  {
    v86 = "It should have at least one range!";
    goto LABEL_218;
  }

  v126 = v67;
  v68 = v67 >> 1;
  llvm::ConstantRange::ConstantRange(&v138, 1u, 1);
  v69 = 0;
  v127 = 16 * v68;
  v128 = v64;
  v129 = v66;
  do
  {
    v70 = *v66;
    if ((*v66 & 2) != 0)
    {
      v71 = *(v63 - 4);
    }

    else
    {
      v71 = &v66[-((v70 >> 2) & 0xF)];
    }

    v72 = v71[v69 / 8];
    if (*v72 != 1 || (v73 = *(v72 + 128), *(v73 + 16) != 16))
    {
      v137 = 0;
      v143 = "The lower limit must be an integer!";
      v147 = 259;
      v99 = &v137;
LABEL_272:
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v143, v99);
      goto LABEL_338;
    }

    if ((v70 & 2) != 0)
    {
      v74 = *(v63 - 4);
    }

    else
    {
      v74 = &v66[-((v70 >> 2) & 0xF)];
    }

    v75 = v74[v69 / 8 + 1];
    if (*v75 != 1 || (v76 = *(v75 + 128), *(v76 + 16) != 16))
    {
      v136 = 0;
      v143 = "The upper limit must be an integer!";
      v147 = 259;
      v99 = &v136;
      goto LABEL_272;
    }

    if (*v76 != *v73)
    {
      goto LABEL_322;
    }

    v77 = v64;
    if ((*(v64 + 8) & 0xFE) == 0x12)
    {
      v77 = **(v64 + 16);
    }

    if (*v76 != v77)
    {
LABEL_322:
      v143 = "Range types must match instruction type!";
      v147 = 259;
      v130 = a2;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v143, &v130);
      goto LABEL_338;
    }

    v78 = *(v76 + 32);
    if (v78 > 0x40)
    {
      operator new[]();
    }

    v79 = *(v76 + 24);
    v80 = *(v73 + 32);
    v135 = v80;
    if (v80 > 0x40)
    {
      operator new[]();
    }

    v82 = *(v73 + 24);
    v81 = v82;
    v134 = v82;
    v131 = v80;
    v130 = v82;
    v133 = v78;
    v132 = v79;
    if (llvm::ConstantRange::isEmptySet(&v130) || llvm::ConstantRange::isFullSet(&v130))
    {
      v113 = "Range must not be empty!";
LABEL_332:
      v143 = v113;
      v147 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v143, &v142);
      if (v133 >= 0x41 && v132)
      {
        MEMORY[0x277C69E10](v132, 0x1000C8000313F17);
      }

      if (v131 >= 0x41 && v130)
      {
        MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
      }

      goto LABEL_338;
    }

    if (v69)
    {
      llvm::ConstantRange::intersectWith(&v130, &v138, 0, &v143);
      isEmptySet = llvm::ConstantRange::isEmptySet(&v143);
      if (v146 >= 0x41 && v145)
      {
        MEMORY[0x277C69E10](v145, 0x1000C8000313F17);
      }

      if (v144 >= 0x41 && v143)
      {
        MEMORY[0x277C69E10](v143, 0x1000C8000313F17);
      }

      if (!isEmptySet)
      {
        v113 = "Intervals are overlapping";
        goto LABEL_332;
      }

      if (llvm::APInt::compareSigned(&v134, &v138) <= 0)
      {
        v113 = "Intervals are not in order";
        goto LABEL_332;
      }

      if (isContiguous(&v130, &v138))
      {
        v113 = "Intervals are contiguous";
        goto LABEL_332;
      }
    }

    if (v139 >= 0x41 && v138)
    {
      MEMORY[0x277C69E10](v138, 0x1000C8000313F17);
    }

    v138 = v81;
    v139 = v80;
    if (v141 >= 0x41 && v140)
    {
      MEMORY[0x277C69E10](v140, 0x1000C8000313F17);
    }

    v140 = v79;
    v141 = v78;
    if (v133 >= 0x41 && v132)
    {
      MEMORY[0x277C69E10](v132, 0x1000C8000313F17);
    }

    v66 = v129;
    if (v131 >= 0x41 && v130)
    {
      MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
    }

    v64 = v128;
    v69 += 16;
  }

  while (v127 != v69);
  if (v126 < 5)
  {
    goto LABEL_338;
  }

  v84 = *v129;
  if ((*v129 & 2) != 0)
  {
    v85 = *(v63 - 4);
  }

  else
  {
    v85 = &v129[-((v84 >> 2) & 0xF)];
  }

  v115 = *(*v85 + 128);
  if (*(v115 + 16) == 16)
  {
    v116 = v115;
  }

  else
  {
    v116 = 0;
  }

  v117 = *(v116 + 32);
  if (v117 > 0x40)
  {
    operator new[]();
  }

  v118 = *(v116 + 24);
  if ((v84 & 2) != 0)
  {
    v119 = *(v63 - 4);
  }

  else
  {
    v119 = &v129[-((v84 >> 2) & 0xF)];
  }

  v120 = *(v119[1] + 128);
  if (*(v120 + 16) == 16)
  {
    v121 = v120;
  }

  else
  {
    v121 = 0;
  }

  v122 = *(v121 + 32);
  if (v122 > 0x40)
  {
    operator new[]();
  }

  v123 = *(v121 + 24);
  v131 = v117;
  v130 = v118;
  v133 = v122;
  v132 = v123;
  llvm::ConstantRange::intersectWith(&v130, &v138, 0, &v143);
  v124 = llvm::ConstantRange::isEmptySet(&v143);
  if (v146 >= 0x41 && v145)
  {
    MEMORY[0x277C69E10](v145, 0x1000C8000313F17);
  }

  if (v144 >= 0x41 && v143)
  {
    MEMORY[0x277C69E10](v143, 0x1000C8000313F17);
  }

  if (v124)
  {
    if (isContiguous(&v130, &v138))
    {
      v125 = "Intervals are contiguous";
      goto LABEL_370;
    }
  }

  else
  {
    v125 = "Intervals are overlapping";
LABEL_370:
    v143 = v125;
    v147 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v143, &v142);
  }

  if (v133 >= 0x41 && v132)
  {
    MEMORY[0x277C69E10](v132, 0x1000C8000313F17);
  }

  if (v131 >= 0x41 && v130)
  {
    MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
  }

LABEL_338:
  if (v141 >= 0x41 && v140)
  {
    MEMORY[0x277C69E10](v140, 0x1000C8000313F17);
  }

  if (v139 >= 0x41 && v138)
  {
    MEMORY[0x277C69E10](v138, 0x1000C8000313F17);
  }

LABEL_219:
  if ((*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && llvm::Value::getMetadata(a2, 16) && (*(a2 + 16) & 0xFE) != 0x3C)
  {
    v8 = "invariant.group metadata is only for loads and stores";
    goto LABEL_325;
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v87 = llvm::Value::getMetadata(a2, 11);
    if (v87)
    {
      if (*(*a2 + 8) != 15)
      {
        v8 = "nonnull applies only to pointer types";
        goto LABEL_325;
      }

      if (*(a2 + 16) != 60)
      {
        v8 = "nonnull applies only to load instructions, use attributes for calls or invokes";
        goto LABEL_325;
      }

      v88 = *(v87 - 16);
      if ((v88 & 2) != 0 ? *(v87 - 24) : (v88 >> 6) & 0xF)
      {
        v8 = "nonnull metadata must be empty";
        goto LABEL_325;
      }
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v90 = llvm::Value::getMetadata(a2, 12);
    if (v90)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v91 = llvm::Value::getMetadata(a2, 13);
    if (v91)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v92 = llvm::Value::getMetadata(a2, 1);
    if (v92)
    {
      llvm::TBAAVerifier::visitTBAAMetadata(this + 248, a2, v92);
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v93 = llvm::Value::getMetadata(a2, 8);
    if (v93)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v94 = llvm::Value::getMetadata(a2, 7);
    if (v94)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v95 = llvm::Value::getMetadata(a2, 25);
    if (v95)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v96 = llvm::Value::getMetadata(a2, 17);
    if (v96)
    {
      if (*(*a2 + 8) != 15)
      {
        v8 = "align applies only to pointer types";
        goto LABEL_325;
      }

      if (*(a2 + 16) != 60)
      {
        v8 = "align applies only to load instructions, use attributes for calls or invokes";
        goto LABEL_325;
      }

      v97 = *(v96 - 16);
      if ((v97 & 2) != 0)
      {
        if (*(v96 - 24) == 1)
        {
          v98 = *(v96 - 32);
          goto LABEL_275;
        }
      }

      else if ((*(v96 - 16) & 0x3C0) == 0x40)
      {
        v98 = (v96 - 16 - 8 * ((v97 >> 2) & 0xF));
LABEL_275:
        v100 = *v98;
        if (*v100 == 1 && (v101 = *(v100 + 128), *(v101 + 16) == 16) && *(*v101 + 8) == 16397)
        {
          v102 = (v101 + 24);
          if (*(v101 + 32) >= 0x41u)
          {
            v102 = *v102;
          }

          if ((*v102 ^ (*v102 - 1)) <= *v102 - 1)
          {
            v8 = "align metadata value must be a power of 2!";
          }

          else
          {
            if (*v102 < 0x100000001uLL)
            {
              goto LABEL_282;
            }

            v8 = "alignment is larger that implementation defined limit";
          }
        }

        else
        {
          v8 = "align metadata value must be an i64!";
        }

LABEL_325:
        v143 = v8;
        v147 = 259;
        v138 = a2;
        v54 = &v138;
LABEL_326:
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v143, v54);
        goto LABEL_327;
      }

      v8 = "align takes one operand!";
      goto LABEL_325;
    }
  }

LABEL_282:
  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v103 = llvm::Value::getMetadata(a2, 2);
    if (v103)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v104 = llvm::Value::getMetadata(a2, 34);
    if (v104)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v105 = llvm::Value::getMetadata(a2, 35);
    if (v105)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v106 = llvm::Value::getMetadata(a2, 38);
    if (v106)
    {
    }
  }

  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    v107 = llvm::Value::getMetadata(a2, 30);
    if (v107)
    {
    }
  }

  v108 = *(a2 + 6);
  v138 = v108;
  if (v108)
  {
    if (*v108 != 5)
    {
      v143 = "invalid !dbg metadata attachment";
      v147 = 259;
      v130 = a2;
      llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Instruction *,llvm::MDNode *>(this, &v143, &v130, &v138);
      goto LABEL_327;
    }
  }

  if (llvm::DbgVariableIntrinsic::classof(a2))
  {
  }

  v143 = &v145;
  v144 = 0x400000000;
  if (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0)
  {
    llvm::Instruction::getAllMetadataImpl(a2, &v143);
    if (v144)
    {
      v109 = v143;
      v110 = v143 + 16 * v144;
      do
      {
        if (*v109)
        {
          v111 = *v109 == 18;
        }

        else
        {
          v111 = 1;
        }

        v112 = v111;
        v109 += 16;
      }

      while (v109 != v110);
    }
  }

  llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 272), a2, &v138);
  if (v143 != &v145)
  {
    free(v143);
  }

LABEL_327:
  v114 = *MEMORY[0x277D85DE8];
}

llvm::VerifierSupport *llvm::VerifierSupport::CheckFailed<llvm::Instruction *,llvm::Module const*,llvm::GlobalValue *,llvm::Module*>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, const llvm::Module **a4, llvm::Type ***a5, const llvm::Module **a6)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  result = *a1;
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
      result = *a1;
    }

    llvm::VerifierSupport::Write(result, *a4);
    if (*a5)
    {
      llvm::VerifierSupport::Write(a1, *a5);
    }

    v12 = *a6;
    v13 = *a1;

    return llvm::VerifierSupport::Write(v13, v12);
  }

  return result;
}

void anonymous namespace::Verifier::verifyDominatesUse(const void ***this, llvm::Instruction *a2, int a3)
{
  v6 = *(a2 + 5);
  if ((v6 & 0x40000000) != 0)
  {
    v7 = *(a2 - 1);
  }

  else
  {
    v7 = a2 - 32 * (v6 & 0x7FFFFFF);
  }

  v8 = *&v7[32 * a3];
  v16 = v8;
  if (v8 && *(v8 + 16) == 33 && *(v8 - 96) == *(v8 - 64))
  {
    return;
  }

  if (*(a2 + 16) == 83)
  {
    goto LABEL_12;
  }

  imp = llvm::SmallPtrSetImplBase::find_imp(this + 34, v8);
  v10 = this[35];
  v11 = 16;
  if (v10 == this[34])
  {
    v11 = 20;
  }

  if (imp == &v10[*(this + v11 + 272)])
  {
    v6 = *(a2 + 5);
LABEL_12:
    if ((v6 & 0x40000000) != 0)
    {
      v12 = *(a2 - 1);
    }

    else
    {
      v12 = a2 - 32 * (v6 & 0x7FFFFFF);
    }

    if ((llvm::DominatorTree::dominates((this + 25), v8, &v12[32 * a3]) & 1) == 0)
    {
      v13 = a2;
      v14 = "Instruction does not dominate all uses!";
      v15 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v14, &v16, &v13);
    }
  }
}

void anonymous namespace::Verifier::visitConstantExprsRecursively(llvm::raw_ostream **this, const llvm::Constant *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 116), a2, &v22);
  if (v24[0] != 1)
  {
    goto LABEL_40;
  }

  v22 = v24;
  v23 = 0x1000000000;
  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v22, a2);
  v4 = v23;
  if (!v23)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v5 = *(v22 + v4 - 1);
    LODWORD(v23) = v4 - 1;
    v6 = *(v5 + 16);
    if (v5)
    {
      v7 = v6 == 5;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      if (*(v5 + 18) == 49 && (llvm::CastInst::castIsValid(49, **(v5 - 32 * (*(v5 + 20) & 0x7FFFFFF)), *v5) & 1) == 0)
      {
        v19[0] = "Invalid bitcast";
        v21 = 259;
        llvm::VerifierSupport::CheckFailed(this, v19);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, v5);
        }
      }

      v6 = *(v5 + 16);
    }

    if (v5 && v6 <= 3)
    {
      break;
    }

    v9 = *(v5 + 20);
    if ((v9 & 0x40000000) != 0)
    {
      v11 = *(v5 - 8);
      v10 = v9 & 0x7FFFFFF;
      if (v10)
      {
LABEL_24:
        v14 = 32 * v10;
        do
        {
          v15 = *v11;
          if (*v11)
          {
            v16 = (*v11)[16] > 0x14u;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 116), *v11, v19);
            if (v20 == 1)
            {
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v22, v15);
            }
          }

          v11 += 4;
          v14 -= 32;
        }

        while (v14);
      }
    }

    else
    {
      v10 = v9 & 0x7FFFFFF;
      v11 = (v5 - 32 * v10);
      if (v10)
      {
        goto LABEL_24;
      }
    }

LABEL_32:
    v4 = v23;
    if (!v23)
    {
      goto LABEL_38;
    }
  }

  v12 = *(v5 + 40);
  v13 = this[1];
  if (v12 == v13)
  {
    goto LABEL_32;
  }

  v19[0] = "Referencing global in another module!";
  v21 = 259;
  llvm::VerifierSupport::CheckFailed(this, v19);
  v17 = *this;
  if (*this)
  {
    if (a2)
    {
      llvm::VerifierSupport::Write(this, a2);
      v17 = *this;
    }

    llvm::VerifierSupport::Write(v17, v13);
    llvm::VerifierSupport::Write(this, v5);
    llvm::VerifierSupport::Write(*this, v12);
  }

LABEL_38:
  if (v22 != v24)
  {
    free(v22);
  }

LABEL_40:
  v18 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::Verifier::visitDereferenceableMetadata(llvm::raw_ostream **this, llvm::Type **a2, llvm::MDNode *a3)
{
  if (*(*a2 + 8) != 15)
  {
    v6 = "dereferenceable, dereferenceable_or_null apply only to pointer types";
LABEL_16:
    v9 = a2;
    v10 = v6;
    v11 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v10, &v9);
    return;
  }

  v3 = *(a2 + 16);
  if (v3 != 60 && v3 != 76)
  {
    v6 = "dereferenceable, dereferenceable_or_null apply only to load and inttoptr instructions, use attributes for calls or invokes";
    goto LABEL_16;
  }

  v4 = *(a3 - 2);
  if ((v4 & 2) != 0)
  {
    if (*(a3 - 6) == 1)
    {
      v5 = *(a3 - 4);
      goto LABEL_10;
    }

LABEL_14:
    v6 = "dereferenceable, dereferenceable_or_null take one operand!";
    goto LABEL_16;
  }

  if ((*(a3 - 2) & 0x3C0) != 0x40)
  {
    goto LABEL_14;
  }

  v5 = (a3 - 8 * ((v4 >> 2) & 0xF) - 16);
LABEL_10:
  v7 = *v5;
  if (*v7 != 1 || (v8 = *(v7 + 128), v8[16] != 16) || *(*v8 + 8) != 16397)
  {
    v6 = "dereferenceable, dereferenceable_or_null metadata value must be an i64!";
    goto LABEL_16;
  }
}

void anonymous namespace::Verifier::visitAliasScopeListMetadata(llvm::raw_ostream **this, const llvm::MDNode *a2)
{
  v26 = a2;
  v3 = *(a2 - 2);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 4);
    v5 = *(a2 - 6);
    if (!*(a2 - 6))
    {
      return;
    }

    goto LABEL_5;
  }

  v4 = (a2 - 8 * ((v3 >> 2) & 0xF) - 16);
  v5 = (v3 >> 6) & 0xF;
  if (v5)
  {
LABEL_5:
    for (i = 8 * v5; i; i -= 8)
    {
      v7 = *v4;
      v8 = llvm::MDNode::classof(*v4);
      if (!v7 || (v8 & 1) == 0)
      {
        v28[0] = "scope list must consist of MDNodes";
        v29 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v28, &v26);
        return;
      }

      v30 = v7;
      v9 = v7 - 16;
      v10 = *(v7 - 16);
      if ((v10 & 2) != 0)
      {
        v11 = *(v7 - 24);
        if ((v11 & 0xFFFFFFFE) != 2)
        {
LABEL_17:
          v28[0] = "scope must have two or three operands";
          goto LABEL_18;
        }

        v15 = *(v7 - 32);
        v13 = *v15;
        if (*v15 == v7)
        {
          if (v11 != 3)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if ((v10 & 0x380) != 0x80)
        {
          goto LABEL_17;
        }

        v11 = (v10 >> 6) & 0xF;
        v12 = (v10 >> 2) & 0xF;
        v13 = *(v9 - 8 * v12);
        if (v13 == v7)
        {
          v14 = -v12;
          if (v11 != 3)
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }
      }

      if (*v13)
      {
        v28[0] = "first scope operand must be self-referential or string";
LABEL_18:
        v29 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v28, &v30);
        goto LABEL_19;
      }

      if (v11 != 3)
      {
        goto LABEL_30;
      }

      if ((v10 & 2) == 0)
      {
        v14 = -((v10 >> 2) & 0xF);
LABEL_24:
        v15 = v9 + 8 * v14;
        goto LABEL_28;
      }

      v15 = *(v7 - 32);
LABEL_28:
      if (**(v15 + 16))
      {
        v28[0] = "third scope operand must be string (if used)";
        goto LABEL_18;
      }

LABEL_30:
      if ((v10 & 2) == 0)
      {
        v14 = -((v10 >> 2) & 0xF);
LABEL_32:
        v15 = v9 + 8 * v14;
        goto LABEL_34;
      }

      v15 = *(v7 - 32);
LABEL_34:
      v16 = *(v15 + 8);
      if (llvm::MDNode::classof(v16))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v27 = v17;
      if (!v17)
      {
        v28[0] = "second scope operand must be MDNode";
        goto LABEL_18;
      }

      v18 = v17 - 16;
      v19 = *(v17 - 16);
      if ((v19 & 2) != 0)
      {
        v20 = *(v17 - 24);
        if (v20 - 1 >= 2)
        {
LABEL_48:
          v28[0] = "domain must have one or two operands";
          goto LABEL_59;
        }

        v24 = *(v17 - 32);
        v22 = *v24;
        if (*v24 == v17)
        {
          if (v20 != 2)
          {
            goto LABEL_19;
          }

          goto LABEL_56;
        }
      }

      else
      {
        v20 = (v19 >> 6) & 0xF;
        if (v20 - 1 >= 2)
        {
          goto LABEL_48;
        }

        v21 = (v19 >> 2) & 0xF;
        v22 = *(v18 - 8 * v21);
        if (v22 == v17)
        {
          if (v20 != 2)
          {
            goto LABEL_19;
          }

          v23 = -v21;
          goto LABEL_52;
        }
      }

      if (*v22)
      {
        v25 = "first domain operand must be self-referential or string";
        goto LABEL_58;
      }

      if (v20 != 2)
      {
        goto LABEL_19;
      }

      if ((v19 & 2) == 0)
      {
        v23 = -((v19 >> 2) & 0xF);
LABEL_52:
        v24 = (v18 + 8 * v23);
        goto LABEL_56;
      }

      v24 = *(v17 - 32);
LABEL_56:
      if (*v24[1])
      {
        v25 = "second domain operand must be string (if used)";
LABEL_58:
        v28[0] = v25;
LABEL_59:
        v29 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v28, &v27);
      }

LABEL_19:
      ++v4;
    }
  }
}

void anonymous namespace::Verifier::visitAccessGroupMetadata(llvm::raw_ostream **this, const llvm::MDNode *a2)
{
  v13 = a2;
  v3 = *(a2 - 2);
  if ((v3 & 2) != 0)
  {
    if (*(a2 - 6))
    {
      goto LABEL_6;
    }
  }

  else if (((v3 >> 6) & 0xF) != 0)
  {
    goto LABEL_6;
  }

  if ((*(a2 + 1) & 0x7F) == 1)
  {
    return;
  }

LABEL_6:
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 - 4);
    v5 = *(a2 - 6);
    if (!*(a2 - 6))
    {
      return;
    }
  }

  else
  {
    v4 = (a2 - 8 * ((v3 >> 2) & 0xF) - 16);
    v5 = (v3 >> 6) & 0xF;
    if (!v5)
    {
      return;
    }
  }

  v6 = 8 * v5;
  while (1)
  {
    v7 = *v4;
    v8 = llvm::MDNode::classof(*v4);
    if (!v7 || (v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v7 - 16);
    if ((v9 & 2) != 0)
    {
      if (*(v7 - 24))
      {
        goto LABEL_20;
      }
    }

    else if (((v9 >> 6) & 0xF) != 0)
    {
      goto LABEL_20;
    }

    if ((*(v7 + 1) & 0x7F) != 1)
    {
LABEL_20:
      v10 = "Access scope list contains invalid access scope";
      goto LABEL_22;
    }

    ++v4;
    v6 -= 8;
    if (!v6)
    {
      return;
    }
  }

  v10 = "Access scope list must consist of MDNodes";
LABEL_22:
  v11 = v10;
  v12 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &v11, &v13);
}

void anonymous namespace::Verifier::visitProfMetadata(llvm::raw_ostream **this, llvm::Instruction *a2, llvm::MDNode *a3)
{
  v23 = a3;
  v6 = (a3 - 16);
  v5 = *(a3 - 2);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 0x380) != 0)
    {
      v7 = &v6[-((v5 >> 2) & 0xF)];
      goto LABEL_6;
    }

LABEL_9:
    v9 = "!prof annotations should have no less than 2 operands";
    goto LABEL_11;
  }

  if (*(a3 - 6) <= 1u)
  {
    goto LABEL_9;
  }

  v7 = *(a3 - 4);
LABEL_6:
  v8 = *v7;
  if (!v8)
  {
    v9 = "first operand should not be null";
    goto LABEL_11;
  }

  if (*v8)
  {
    v9 = "expected string with name of the !prof annotation";
LABEL_11:
    v21[0] = v9;
    v22 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v21, &v23);
    return;
  }

  v10 = *(v8 + 8);
  if (*v10 == 14)
  {
    v11 = v10[3];
    v12 = *(v10 + 30);
    if (v11 == 0x775F68636E617262 && v12 == 0x737468676965775FLL)
    {
      v14 = *(a2 + 16);
      if (v14 <= 0x20)
      {
        if (v14 == 30)
        {
          if ((*(a2 + 5) & 0x7FFFFFF) == 3)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_40;
        }

        if (v14 != 31)
        {
          if (v14 == 32)
          {
            v15 = (*(a2 + 5) & 0x7FFFFFF) - 1;
            goto LABEL_40;
          }

          goto LABEL_34;
        }

        v15 = (*(a2 + 5) >> 1) & 0x3FFFFFF;
      }

      else
      {
        if (*(a2 + 16) <= 0x53u)
        {
          if (v14 == 33)
          {
            if ((v5 & 2) != 0)
            {
              v16 = *(a3 - 6);
              if (v16 == 2)
              {
                goto LABEL_44;
              }
            }

            else
            {
              if ((*(a3 - 2) & 0x3C0) == 0x80)
              {
                goto LABEL_44;
              }

              v16 = (v5 >> 6) & 0xF;
            }

            if (v16 != 3)
            {
              v9 = "Wrong number of InvokeInst branch_weights operands";
              goto LABEL_11;
            }

LABEL_44:
            v18 = 1;
            while (1)
            {
              if ((v5 & 2) != 0)
              {
                if (v18 >= *(a3 - 6))
                {
                  return;
                }

                v19 = *(a3 - 4);
              }

              else
              {
                v19 = &v6[-((v5 >> 2) & 0xF)];
                if (v18 >= ((v5 >> 6) & 0xF))
                {
                  return;
                }
              }

              v20 = v19[v18];
              if (!v20)
              {
                break;
              }

              if (*v20 == 1)
              {
                ++v18;
                if (*(*(v20 + 128) + 16) == 16)
                {
                  continue;
                }
              }

              v21[0] = "!prof brunch_weights operand is not a const int";
              v22 = 259;
              llvm::VerifierSupport::CheckFailed(this, v21);
              return;
            }

            v9 = "second operand should not be null";
            goto LABEL_11;
          }

          if (v14 == 39)
          {
            v15 = *(a2 + 20) + 1;
            goto LABEL_40;
          }

LABEL_34:
          v21[0] = "!prof branch_weights are not allowed for this instruction";
          v22 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v21, &v23);
          v15 = 0;
          v5 = *v6;
          goto LABEL_40;
        }

        if (v14 != 84)
        {
          if (v14 == 85)
          {
            v15 = 2;
            goto LABEL_40;
          }

          goto LABEL_34;
        }

        v15 = 1;
      }

LABEL_40:
      if ((v5 & 2) != 0)
      {
        v17 = *(a3 - 6);
      }

      else
      {
        v17 = (v5 >> 6) & 0xF;
      }

      if (v17 != v15 + 1)
      {
        v9 = "Wrong number of operands";
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }
}

void anonymous namespace::Verifier::visitMemProfMetadata(llvm::raw_ostream **this, llvm::Type **a2, llvm::MDNode *a3)
{
  v31 = a3;
  v4 = *(a2 + 16) - 33;
  v5 = v4 > 0x33;
  v6 = (1 << v4) & 0x8000000000041;
  if (v5 || v6 == 0)
  {
    v28 = a2;
    v29[0] = "!memprof metadata should only exist on calls";
    v30 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, v29, &v28);
    return;
  }

  v8 = *(a3 - 2);
  if ((v8 & 2) != 0)
  {
    v12 = *(a3 - 6);
    if (v12)
    {
      v10 = *(a3 - 4);
      v11 = &v10[v12];
      while (1)
      {
LABEL_11:
        v13 = *v10;
        if (llvm::MDNode::classof(*v10))
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v28 = v14;
        v16 = (v14 - 2);
        v15 = *(v14 - 2);
        if ((v15 & 2) != 0)
        {
          if (*(v14 - 6) <= 1u)
          {
LABEL_42:
            v27 = "Each !memprof MemInfoBlock should have at least 2 operands";
            goto LABEL_38;
          }

          v17 = *(v14 - 4);
        }

        else
        {
          if ((v15 & 0x380) == 0)
          {
            goto LABEL_42;
          }

          v17 = &v16[-((v15 >> 2) & 0xF)];
        }

        if (!*v17)
        {
          v27 = "!memprof MemInfoBlock first operand should not be null";
          goto LABEL_38;
        }

        if ((llvm::MDNode::classof(*v17) & 1) == 0)
        {
          v27 = "!memprof MemInfoBlock first operand should be an MDNode";
          goto LABEL_38;
        }

        v18 = (*v16 & 2) != 0 ? *(v14 - 4) : &v16[-((*v16 >> 2) & 0xF)];
        v19 = *v18;
        v20 = llvm::MDNode::classof(*v18) ? v19 : 0;
        v21 = *v16;
        if ((*v16 & 2) != 0)
        {
          v22 = *(v14 - 4);
          v23 = *(v14 - 6);
        }

        else
        {
          v22 = &v16[-((v21 >> 2) & 0xF)];
          v23 = (v21 >> 6) & 0xF;
        }

        if (v23 != 1)
        {
          break;
        }

LABEL_34:
        if (++v10 == v11)
        {
          return;
        }
      }

      v24 = (v22 + 1);
      v25 = 8 * v23 - 8;
      while (!**v24)
      {
        ++v24;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_34;
        }
      }

      v27 = "Not all !memprof MemInfoBlock operands 1 to N are MDString";
LABEL_38:
      v29[0] = v27;
      v30 = 259;
      v26 = &v28;
      goto LABEL_39;
    }

LABEL_36:
    v29[0] = "!memprof annotations should have at least 1 metadata operand (MemInfoBlock)";
    v30 = 259;
    v26 = &v31;
LABEL_39:
    llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v29, v26);
    return;
  }

  if ((v8 & 0x3C0) == 0)
  {
    goto LABEL_36;
  }

  v9 = (v8 >> 6) & 0xF;
  if (v9)
  {
    v10 = (a3 - 8 * ((v8 >> 2) & 0xF) - 16);
    v11 = &v10[v9];
    goto LABEL_11;
  }
}

void anonymous namespace::Verifier::visitCallsiteMetadata(llvm::raw_ostream **this, llvm::Type **a2, llvm::MDNode *a3)
{
  v5 = *(a2 + 16) - 33;
  v6 = v5 > 0x33;
  v7 = (1 << v5) & 0x8000000000041;
  if (v6 || v7 == 0)
  {
    v12 = v3;
    v13 = v4;
    v9 = a2;
    v10 = "!callsite metadata should only exist on calls";
    v11 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v10, &v9);
  }

  else
  {
  }
}

void anonymous namespace::Verifier::visitDIAssignIDMetadata(uint64_t **this, llvm::Type **a2, llvm::MDNode *a3)
{
  v6 = *(a2 + 16);
  if (v6 == 59 || v6 == 61 || (llvm::MemIntrinsic::classof(a2) & 1) != 0)
  {
    IfExists = llvm::MetadataAsValue::getIfExists(this[23], a3);
    if (IfExists)
    {
      v8 = *(IfExists + 8);
      if (v8)
      {
        while (1)
        {
          v9 = *(v8 + 24);
          if (!llvm::DbgAssignIntrinsic::classof(v9))
          {
            break;
          }

          v10 = llvm::DbgAssignIntrinsic::classof(v9);
          if (v9)
          {
            v11 = !v10;
          }

          else
          {
            v11 = 1;
          }

          if (!v11 && *(*(v9 + 40) + 56) != *(a2[5] + 7))
          {
            v14[0] = "dbg.assign not in same function as inst";
            v15 = 259;
            llvm::VerifierSupport::DebugInfoCheckFailed(this, v14);
            if (!*this)
            {
              return;
            }

            llvm::VerifierSupport::Write(this, v9);
            v12 = this;
            v13 = a2;
            goto LABEL_21;
          }

          v8 = *(v8 + 8);
          if (!v8)
          {
            return;
          }
        }

        v14[0] = "!DIAssignID should only be used by llvm.dbg.assign intrinsics";
        v15 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed(this, v14);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a3);
          if (v9)
          {
            v12 = this;
            v13 = v9;
LABEL_21:
            llvm::VerifierSupport::Write(v12, v13);
          }
        }
      }
    }
  }

  else
  {
    v14[0] = "!DIAssignID attached to unexpected instruction kind";
    v15 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v14);
    if (*this)
    {
      llvm::VerifierSupport::Write(this, a2);
      llvm::VerifierSupport::Write(this, a3);
    }
  }
}

void anonymous namespace::Verifier::visitAnnotationMetadata(llvm::raw_ostream **this, llvm::MDNode *a2)
{
  if (*a2 != 4)
  {
    v6 = "annotation must be a tuple";
LABEL_14:
    v8 = v6;
    v9 = 259;
    llvm::VerifierSupport::CheckFailed(this, &v8);
    return;
  }

  v2 = *(a2 - 2);
  if ((v2 & 2) != 0)
  {
    v7 = *(a2 - 6);
    if (v7)
    {
      v4 = *(a2 - 4);
      v5 = &v4[v7];
LABEL_9:
      while (!**v4)
      {
        if (++v4 == v5)
        {
          return;
        }
      }

      v6 = "operands must be strings";
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((v2 & 0x3C0) == 0)
  {
LABEL_12:
    v6 = "annotation must have at least one operand";
    goto LABEL_14;
  }

  v3 = (v2 >> 6) & 0xF;
  if (v3)
  {
    v4 = (a2 - 8 * ((v2 >> 2) & 0xF) - 16);
    v5 = &v4[v3];
    goto LABEL_9;
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Instruction *,llvm::MDNode *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, uint64_t *a4)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    v7 = *a4;

    llvm::VerifierSupport::Write(a1, v7);
  }
}

void anonymous namespace::Verifier::verifyFragmentExpression(llvm::raw_ostream **this, const llvm::DbgVariableIntrinsic *a2)
{
  v4 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  v5 = *(*(v4 + 4) + 24);
  if (v5)
  {
    if (*v5 == 25)
    {
      v6 = *(*(v4 + 4) + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v4 + 8) + 24);
  if (v7)
  {
    if (v6)
    {
      if (*v7 == 6 && llvm::DIExpression::isValid(v7))
      {
        llvm::DIExpression::getFragmentInfo(v7[2], v7[3], &v13);
        if (v14 == 1 && (*(v6 + 28) & 0x40) == 0)
        {
          v8 = v13.i32[0];
          v9 = v13.i32[2];
          v18 = a2;
          SizeInBits = llvm::DIVariable::getSizeInBits(v6);
          if (v11)
          {
            if ((v9 + v8) <= SizeInBits)
            {
              if (SizeInBits != v8)
              {
                return;
              }

              v12 = "fragment covers entire variable";
            }

            else
            {
              v12 = "fragment is larger than or outside of variable";
            }

            v15 = v6;
            v16 = v12;
            v17 = 259;
            llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Instruction *,llvm::MDNode *>(this, &v16, &v18, &v15);
          }
        }
      }
    }
  }
}

void anonymous namespace::Verifier::verifyNotEntryValue(llvm::raw_ostream **this, const llvm::DbgVariableIntrinsic *a2)
{
  v2 = *((a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[8] + 24);
  if (v2)
  {
    if (*v2 == 6 && llvm::DIExpression::isValid(*((a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[8] + 24)))
    {
      v5 = *(v2 + 16);
      if (((*(v2 + 24) - v5) & 0x7FFFFFFF8) != 0 && *v5 == 4099)
      {
        v6 = "Entry values are only allowed in MIR";
        v7 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed(this, &v6);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
        }
      }
    }
  }
}

BOOL isContiguous(const void **a1, const void **a2)
{
  v4 = *(a1 + 6);
  if (v4 > 0x40)
  {
    if (!memcmp(a1[2], *a2, ((v4 + 63) >> 3) & 0x3FFFFFF8))
    {
      return 1;
    }
  }

  else if (a1[2] == *a2)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    return memcmp(*a1, a2[2], ((v6 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *a1 == a2[2];
  }
}

void anonymous namespace::Verifier::visitCallStackMetadata(llvm::raw_ostream **this, llvm::MDNode *a2)
{
  v10 = a2;
  v2 = *(a2 - 2);
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 - 6);
    if (v6)
    {
      v4 = *(a2 - 4);
      v5 = &v4[v6];
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((v2 & 0x3C0) == 0)
  {
LABEL_13:
    v8[0] = "call stack metadata should have at least 1 operand";
    v9 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v8, &v10);
    return;
  }

  v3 = (v2 >> 6) & 0xF;
  if (v3)
  {
    v4 = (a2 - 8 * ((v2 >> 2) & 0xF) - 16);
    v5 = &v4[v3];
LABEL_7:
    while (1)
    {
      v7 = *v4;
      if (!*v4 || *v7 != 1 || *(*(v7 + 128) + 16) != 16)
      {
        break;
      }

      if (++v4 == v5)
      {
        return;
      }
    }

    v8[0] = "call stack metadata operand should be constant integer";
    v9 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, v8, v4);
  }
}

void anonymous namespace::Verifier::visitCallBase(_anonymous_namespace_::Verifier *this, llvm::CallBase *a2)
{
  v4 = **(a2 - 4);
  if (*(v4 + 8) != 15)
  {
    v14 = "Called function must be a pointer!";
    goto LABEL_11;
  }

  v5 = *(a2 + 9);
  v6 = *(v4 + 24);
  if (v6)
  {
    v7 = v6 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v14 = "Called function is not the same type as the call!";
    goto LABEL_11;
  }

  v8 = *(v5 + 8);
  v9 = llvm::CallBase::arg_end(a2);
  v10 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  v11 = (v9 - v10) >> 5;
  v12 = *(v5 + 12);
  v13 = v12 - 1;
  if (v8 < 0x100)
  {
    if (v13 != v11)
    {
      v14 = "Incorrect number of arguments passed to called function!";
      goto LABEL_11;
    }
  }

  else if (v13 > v11)
  {
    v14 = "Called function requires more parameters than were provided!";
    goto LABEL_11;
  }

  v15 = 1;
  while (v12 != v15)
  {
    v16 = *&v10[32 * v15 - 32];
    v17 = *(*(v5 + 16) + 8 * v15++);
    if (*v16 != v17)
    {
      v125[0] = "Call parameter type does not match function signature!";
      v126 = 259;
      llvm::VerifierSupport::CheckFailed(this, v125);
      if (*this)
      {
        llvm::VerifierSupport::Write(this, v16);
        llvm::VerifierSupport::Write(this, v17);
        llvm::VerifierSupport::Write(this, a2);
      }

      return;
    }
  }

  v18 = *(a2 + 8);
  v19 = llvm::CallBase::arg_end(a2);
  if (v18 && *(v18 + 8) > ((v19 - (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF))) >> 5) + 2)
  {
    v14 = "Attribute after last parameter!";
    goto LABEL_11;
  }

  v20 = llvm::Value::stripPointerCasts(*(a2 - 4));
  if (*(v20 + 16))
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  if (v21 && (*(v21 + 33) & 0x20) != 0)
  {
    if (*(v21 + 3) != v5)
    {
      v14 = "Intrinsic called with incompatible signature";
      goto LABEL_11;
    }

    v111 = v21;
    if (v18)
    {
      v32 = 1;
      if ((*(v18 + 19) & 2) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_110;
    }

    v32 = 1;
LABEL_54:
    v33 = *(a2 - 4);
    goto LABEL_55;
  }

  v22 = **(v5 + 16);
  v111 = v21;
  v114 = "return type";
  v115 = 259;
  if (llvm::Type::isSized(v22, 0) && llvm::DataLayout::getAlignment(*(this + 22), v22, 1) >= 0xFu)
  {
    v118[0] = "Incorrect alignment of ";
    v119 = 259;
    llvm::operator+(v118, &v114, &v120);
    v116 = " to called function!";
    v117 = 259;
    llvm::operator+(&v120, &v116, v125);
    llvm::VerifierSupport::CheckFailed<llvm::Function>(this, v125, a2);
  }

  v23 = *(v5 + 12);
  v24 = (v23 - 1);
  if (v23 != 1)
  {
    v25 = 8;
    do
    {
      v26 = *(*(v5 + 16) + v25);
      v118[0] = "argument passed";
      v119 = 259;
      if (llvm::Type::isSized(v26, 0) && llvm::DataLayout::getAlignment(*(this + 22), v26, 1) >= 0xFu)
      {
        v27 = v119;
        if (v119)
        {
          if (v119 == 1)
          {
            v120 = "Incorrect alignment of ";
            v28 = 3;
            v29 = "Incorrect alignment of ";
          }

          else
          {
            v29 = &v120;
            v31 = v118[0];
            v28 = 2;
            if (HIBYTE(v119) != 1)
            {
              v27 = 2;
              v31 = v118;
            }

            v120 = "Incorrect alignment of ";
            v122 = v31;
            v123 = v118[1];
          }

          v30 = 3;
          LOBYTE(v124) = 3;
          HIBYTE(v124) = v27;
          v125[0] = v29;
          v125[1] = v121;
          v125[2] = " to called function!";
        }

        else
        {
          v28 = 0;
          v124 = 256;
          v30 = 1;
        }

        LOBYTE(v126) = v28;
        HIBYTE(v126) = v30;
        llvm::VerifierSupport::CheckFailed<llvm::Function>(this, v125, a2);
      }

      v25 += 8;
      --v24;
    }

    while (v24);
  }

  if (!v18)
  {
    v32 = 0;
    goto LABEL_54;
  }

  if ((*(v18 + 19) & 2) == 0)
  {
    v32 = 0;
    goto LABEL_48;
  }

  if (!v111)
  {
LABEL_112:
    v14 = "speculatable attribute may not apply to call sites";
    goto LABEL_11;
  }

  v32 = 0;
LABEL_110:
  v57 = *(v111 + 14);
  if (!v57 || (*(v57 + 19) & 2) == 0)
  {
    goto LABEL_112;
  }

LABEL_48:
  v33 = *(a2 - 4);
  if ((*(v18 + 21) & 2) == 0)
  {
LABEL_55:
    v34 = *(v33 + 16) == 24;
    goto LABEL_56;
  }

  if (*(v33 + 36) != 10)
  {
    v58 = "preallocated as a call site attribute can only be on llvm.call.preallocated.arg";
LABEL_160:
    v125[0] = v58;
    v126 = 259;
    llvm::VerifierSupport::CheckFailed(this, v125);
    return;
  }

  v34 = 0;
LABEL_56:
  if (llvm::CallBase::hasInAllocaArgument(a2))
  {
    v35 = llvm::Value::stripInBoundsOffsets(*(a2 + 4 * (*(v5 + 12) - 2) + -4 * (*(a2 + 5) & 0x7FFFFFF)), _ZN4llvm12function_refIFvPKNS_5ValueEEE11callback_fnIZNS1_20stripInBoundsOffsetsES5_Ed_UlS3_E_EEvlS3_, v125);
    v36 = *(v35 + 16) == 59 ? v35 : 0;
    v120 = v36;
    if (v36)
    {
      if ((*(v36 + 18) & 0x40) == 0)
      {
        v125[0] = "inalloca argument for call has mismatched alloca";
        v126 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::AllocaInst *,llvm::CallBase>(this, v125, &v120, a2);
        return;
      }
    }
  }

  v37 = *(v5 + 12);
  v38 = (v37 - 1);
  if (v37 != 1)
  {
    v39 = 0;
    do
    {
      if (llvm::CallBase::paramHasAttr(a2, v39, 64))
      {
        v40 = *(a2 + 4 * v39 + -4 * (*(a2 + 5) & 0x7FFFFFF));
        v120 = v40;
        v41 = llvm::Value::stripInBoundsOffsets(v40, _ZN4llvm12function_refIFvPKNS_5ValueEEE11callback_fnIZNS1_20stripInBoundsOffsetsES5_Ed_UlS3_E_EEvlS3_, v125);
        if (*(v41 + 16) == 59)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        v118[0] = v42;
        if (v42)
        {
          if ((*(v42 + 18) & 0x80) == 0)
          {
            v125[0] = "swifterror argument for call has mismatched alloca";
            v126 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::AllocaInst *,llvm::CallBase>(this, v125, v118, a2);
            goto LABEL_83;
          }

          v47 = 30;
LABEL_84:
          if (v47 != 30)
          {
            return;
          }

          v48 = v39 + 1;
          goto LABEL_102;
        }

        if (*(v40 + 16) == 21)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0;
        }

        v118[0] = v43;
        if (!v43)
        {
          v125[0] = "swifterror argument should come from an alloca or parameter";
          v126 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::AllocaInst *,llvm::CallBase>(this, v125, &v120, a2);
          goto LABEL_83;
        }

        v44 = *(*(v43 + 24) + 112);
        if (!v44 || (v45 = *(v43 + 32) + 2, v45 >= *(v44 + 8)) || (v46 = *(v44 + 8 * v45 + 40)) == 0 || (*(v46 + 20) & 1) == 0)
        {
          v125[0] = "swifterror argument for call has mismatched parameter";
          v126 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::AllocaInst *,llvm::CallBase>(this, v125, v118, a2);
LABEL_83:
          v47 = 1;
          goto LABEL_84;
        }
      }

      v48 = v39 + 1;
      if (v18)
      {
        if ((v39 + 2) < *(v18 + 8))
        {
          v49 = *(v18 + 40 + 8 * (v39 + 2));
          if (v49)
          {
            if ((*(v49 + 13) & 4) != 0 && (!v111 || (v50 = *(v111 + 14)) == 0 || (v39 + 2) >= *(v50 + 8) || (v51 = *(v50 + 8 * (v39 + 2) + 40)) == 0 || (*(v51 + 13) & 4) == 0))
            {
              v125[0] = "immarg may not apply only to call sites";
              v126 = 259;
              v120 = *(a2 + 4 * v39 + -4 * (*(a2 + 5) & 0x7FFFFFF));
              goto LABEL_185;
            }
          }
        }
      }

      if (llvm::CallBase::paramHasAttr(a2, v39, 10))
      {
        v120 = *(a2 + 4 * v39 + -4 * (*(a2 + 5) & 0x7FFFFFF));
        if ((v120[16] & 0xFE) != 0x10)
        {
          v89 = "immarg operand has non-immediate parameter";
LABEL_182:
          v125[0] = v89;
          v126 = 259;
LABEL_185:
          llvm::VerifierSupport::CheckFailed<llvm::AllocaInst *,llvm::CallBase>(this, v125, &v120, a2);
          return;
        }
      }

      if (llvm::CallBase::paramHasAttr(a2, v39, 73))
      {
        v120 = *(a2 + 4 * v39 + -4 * (*(a2 + 5) & 0x7FFFFFF));
        v52 = llvm::CallBase::countOperandBundlesOfType(a2, 4);
        if (*(a2 + 16) == 84)
        {
          if ((v52 == 0) != ((*(a2 + 9) & 3) == 2))
          {
            goto LABEL_181;
          }
        }

        else if (!v52)
        {
LABEL_181:
          v89 = "preallocated operand either requires a preallocated bundle or the call to be musttail (but not both)";
          goto LABEL_182;
        }
      }

LABEL_102:
      v39 = v48;
    }

    while (v48 != v38);
  }

  v112 = v32;
  if (*(v5 + 8) >= 0x100u)
  {
    v53 = *(v5 + 12);
    v54 = (v53 - 1);
    if (v53 == 1)
    {
      LOBYTE(v55) = 0;
      v56 = 0;
      v54 = 0;
    }

    else
    {
      v56 = 0;
      v55 = 0;
      v59 = v18 + 40;
      v60 = 2;
      v61 = v54;
      do
      {
        if (v18 && v60 < *(v18 + 8))
        {
          v62 = *(v59 + 8 * v60);
          if (v62)
          {
            v56 |= (*(v62 + 14) & 2) >> 1;
          }

          v63 = *(v59 + 8 * v60);
          if (v63)
          {
            v55 |= (*(v63 + 17) & 0x40) >> 6;
          }
        }

        ++v60;
        --v61;
      }

      while (v61);
    }

    v64 = llvm::CallBase::arg_end(a2);
    v65 = *(a2 + 5) & 0x7FFFFFF;
    if (v54 < ((v64 - a2 + 32 * v65) >> 5))
    {
      v66 = -v65;
      v67 = a2 + 32 * v54;
      while (1)
      {
        v68 = **&v67[32 * v66];
        if (!v18 || (v54 + 2) >= *(v18 + 8))
        {
          break;
        }

        v69 = *(v18 + 40 + 8 * (v54 + 2));
        if (!v69)
        {
          goto LABEL_131;
        }

        v70 = v69[14] & 2;
        if ((v56 & (v70 >> 1)) == 1)
        {
          v14 = "More than one parameter has attribute nest!";
          goto LABEL_11;
        }

        v56 |= v70 >> 1;
        if ((v69[17] & 0x40) != 0)
        {
          if (v55)
          {
            v14 = "More than one parameter has attribute returned!";
            goto LABEL_11;
          }

          if (!llvm::Type::canLosslesslyBitCastTo(v68, **(v5 + 16)))
          {
            v14 = "Incompatible argument and return types for 'returned' attribute";
            goto LABEL_11;
          }

          v71 = 0;
          LOBYTE(v55) = 1;
        }

        else
        {
          v71 = 0;
        }

LABEL_132:
        v72 = *(a2 - 4);
        if (v72 && !*(v72 + 16) && *(v72 + 24) == *(a2 + 9) && *(v72 + 36) == 125)
        {
          if ((v71 & 1) == 0)
          {
            v73 = v69[21];
            goto LABEL_140;
          }
        }

        else if ((v71 & 1) == 0)
        {
          v73 = v69[21];
          if ((v73 & 4) != 0)
          {
            v14 = "Attribute 'sret' cannot be used for vararg call arguments!";
            goto LABEL_11;
          }

LABEL_140:
          if ((v73 & 1) != 0 && v54 != ((llvm::CallBase::arg_end(a2) - (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF))) >> 5) - 1)
          {
            v14 = "inalloca isn't on the last argument!";
            goto LABEL_11;
          }
        }

        ++v54;
        v74 = llvm::CallBase::arg_end(a2);
        v75 = *(a2 + 5) & 0x7FFFFFF;
        v66 = -v75;
        v67 += 32;
        if (v54 >= ((v74 - a2 + 32 * v75) >> 5))
        {
          goto LABEL_147;
        }
      }

      v69 = 0;
LABEL_131:
      v71 = 1;
      goto LABEL_132;
    }
  }

LABEL_147:
  if ((v112 & 1) == 0)
  {
    v78 = (*(v5 + 16) + 8);
    v79 = 8 * *(v5 + 12) - 8;
    while (v79)
    {
      v80 = *v78++;
      v81 = *(v80 + 8);
      if (v81 == 12)
      {
        v14 = "Function has token parameter but isn't an intrinsic";
        goto LABEL_11;
      }

      v79 -= 8;
      if (v81 == 9)
      {
        v14 = "Function has metadata parameter but isn't an intrinsic";
        goto LABEL_11;
      }
    }
  }

  v76 = *(a2 - 4);
  if (v76 && !*(v76 + 16) && *(v76 + 24) == *(a2 + 9))
  {
    goto LABEL_164;
  }

  v77 = *(**(v5 + 16) + 8);
  if (v77 == 11)
  {
    v58 = "Return type cannot be x86_amx for indirect call!";
    goto LABEL_160;
  }

  if (v77 == 12)
  {
    v58 = "Return type cannot be token for indirect call!";
    goto LABEL_160;
  }

  if (v76 && !*(v76 + 16) && *(v76 + 24) == *(a2 + 9))
  {
LABEL_164:
    v82 = *(v76 + 36);
    if (v82)
    {
    }
  }

  v83 = *(a2 + 5);
  if ((v83 & 0x80000000) == 0 || (v90 = *(a2 - 4 * (v83 & 0x7FFFFFF) - 1), (v90 & 0xFFFFFFFF0) == 0))
  {
    v84 = 0;
LABEL_168:
    v85 = *(a2 - 4);
    if (v85 && !*(v85 + 16) && ((*(v85 + 24) == *(a2 + 9)) & v84) == 1)
    {
      v14 = "Direct call cannot have a ptrauth bundle";
      goto LABEL_11;
    }

    Metadata = llvm::Value::getMetadata(*(*(a2 + 5) + 56), 0);
    v87 = *(a2 - 4);
    if (!Metadata)
    {
      goto LABEL_269;
    }

    if (*(v87 + 16))
    {
      goto LABEL_269;
    }

    if (*(v87 + 24) != *(a2 + 9))
    {
      goto LABEL_269;
    }

    isInterposable = llvm::GlobalValue::isInterposable(*(a2 - 4));
    v87 = *(a2 - 4);
    if (isInterposable)
    {
      goto LABEL_269;
    }

    if (v87)
    {
      if (*(v87 + 16))
      {
        if (llvm::GlobalValue::isDeclaration(0))
        {
          goto LABEL_269;
        }
      }

      else
      {
        if (*(v87 + 24) == *(a2 + 9))
        {
          v108 = *(a2 - 4);
        }

        else
        {
          v108 = 0;
        }

        if (llvm::GlobalValue::isDeclaration(v108))
        {
LABEL_269:
          if (*(v87 + 16) == 24)
          {
          }

          return;
        }

        if (*(v87 + 24) == *(a2 + 9))
        {
LABEL_265:
          if (llvm::Value::getMetadata(v87, 0) && !*(a2 + 6))
          {
            v125[0] = "inlinable function call in a function with debug info must have a !dbg location";
            v126 = 259;
            llvm::VerifierSupport::DebugInfoCheckFailed<llvm::CallBase>(this, v125, a2);
            return;
          }

          v87 = *(a2 - 4);
          goto LABEL_269;
        }
      }
    }

    v87 = 0;
    goto LABEL_265;
  }

  v91 = 0;
  v109 = 0;
  v84 = 0;
  v113 = 0;
  v92 = 0;
  v110 = 0;
  v93 = 0;
  v94 = 0;
  v95 = (v90 >> 4);
  v96 = a2;
  while (1)
  {
    v97 = *(a2 + 5) & 0x7FFFFFF;
    v98 = (v96 - *(a2 - 4 * v97 - 1) + -32 * v97);
    v99 = *v98;
    v100 = a2 + 32 * v99 + -32 * v97;
    v101 = v98[1] - v99;
    v102 = *(v98 - 1);
    v120 = v100;
    v121 = v101;
    v122 = v102;
    v103 = *(v102 + 8);
    if (v103 > 3)
    {
      break;
    }

    if (v103 > 1)
    {
      if (v103 == 2)
      {
        if (v110)
        {
          v14 = "Multiple gc-transition operand bundles";
          goto LABEL_11;
        }

        v110 = 1;
      }

      else
      {
        if ((v109 & 0x100000000) != 0)
        {
          v14 = "Multiple CFGuardTarget operand bundles";
          goto LABEL_11;
        }

        if (v101 != 1)
        {
          v14 = "Expected exactly one cfguardtarget bundle operand";
          goto LABEL_11;
        }

        BYTE4(v109) = 1;
      }
    }

    else if (v103)
    {
      if (v103 == 1)
      {
        if (v93)
        {
          v14 = "Multiple funclet operand bundles";
          goto LABEL_11;
        }

        if (v101 != 1)
        {
          v14 = "Expected exactly one funclet bundle operand";
          goto LABEL_11;
        }

        v105 = *(*v100 + 16);
        if (v105 < 0x1C || v105 - 79 >= 2)
        {
          v14 = "Funclet bundle operands should correspond to a FuncletPadInst";
          goto LABEL_11;
        }

        v93 = 1;
      }
    }

    else
    {
      if (v94)
      {
        v14 = "Multiple deopt operand bundles";
        goto LABEL_11;
      }

      v94 = 1;
    }

LABEL_233:
    v96 = (v96 + 16);
    if (!--v95)
    {
      goto LABEL_168;
    }
  }

  if (v103 <= 5)
  {
    if (v103 == 4)
    {
      if (v92)
      {
        v14 = "Multiple preallocated operand bundles";
        goto LABEL_11;
      }

      if (v101 != 1)
      {
        v14 = "Expected exactly one preallocated bundle operand";
        goto LABEL_11;
      }

      v107 = llvm::CastInfo<llvm::IntrinsicInst,llvm::Use const,void>::doCastIfPossible(*v100);
      if (!v107 || *(*(v107 - 32) + 36) != 11)
      {
        v14 = "preallocated argument must be a token from llvm.call.preallocated.setup";
        goto LABEL_11;
      }

      v92 = 1;
    }

    else
    {
      if (v113)
      {
        v14 = "Multiple gc-live operand bundles";
        goto LABEL_11;
      }

      v113 = 1;
    }

    goto LABEL_233;
  }

  if (v103 == 6)
  {
    if (v91)
    {
      v14 = "Multiple clang.arc.attachedcall operand bundles";
      goto LABEL_11;
    }

    v91 = 1;
    goto LABEL_233;
  }

  if (v103 != 7)
  {
    if (v103 == 8)
    {
      if (v109)
      {
        v14 = "Multiple kcfi operand bundles";
        goto LABEL_11;
      }

      if (v101 != 1)
      {
        v14 = "Expected exactly one kcfi bundle operand";
        goto LABEL_11;
      }

      v104 = *v100;
      if (v104[16] != 16 || *(*v104 + 8) != 8205)
      {
        v14 = "Kcfi bundle operand must be an i32 constant";
        goto LABEL_11;
      }

      LOBYTE(v109) = 1;
    }

    goto LABEL_233;
  }

  if (v84)
  {
    v14 = "Multiple ptrauth operand bundles";
    goto LABEL_11;
  }

  if (v101 != 2)
  {
    v14 = "Expected exactly two ptrauth bundle operands";
    goto LABEL_11;
  }

  if (*(*v100 + 16) != 16 || *(**v100 + 8) != 8205)
  {
    v14 = "Ptrauth bundle key operand must be an i32 constant";
    goto LABEL_11;
  }

  if (*(**(v100 + 4) + 8) == 16397)
  {
    v84 = 1;
    goto LABEL_233;
  }

  v14 = "Ptrauth bundle discriminator operand must be an i64";
LABEL_11:
  v125[0] = v14;
  v126 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::Function>(this, v125, a2);
}

BOOL llvm::CallBase::hasInAllocaArgument(llvm::CallBase *this)
{
  if (llvm::CallBase::arg_end(this) == (this - 32 * (*(this + 5) & 0x7FFFFFF)))
  {
    return 0;
  }

  v2 = ((llvm::CallBase::arg_end(this) - (this - 32 * (*(this + 5) & 0x7FFFFFF))) >> 5) - 1;

  return llvm::CallBase::paramHasAttr(this, v2, 72);
}

void llvm::VerifierSupport::CheckFailed<llvm::AllocaInst *,llvm::CallBase>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, llvm::Type **a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    llvm::VerifierSupport::Write(a1, a4);
  }
}

uint64_t llvm::CallBase::countOperandBundlesOfType(llvm::CallBase *this, int a2)
{
  v2 = *(this + 5);
  if ((v2 & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = this - 32 * (v2 & 0x7FFFFFF);
  v7 = *(v4 - 1);
  v5 = v4 - 8;
  v6 = v7;
  if ((v7 & 0xFFFFFFFF0) == 0)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v8 = (v6 >> 4);
  v9 = &v5[-v6];
  do
  {
    v10 = *v9;
    v9 += 16;
    if (*(v10 + 8) == a2)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    --v8;
  }

  while (v8);
  return result;
}

void anonymous namespace::Verifier::visitIntrinsicCall(_anonymous_namespace_::Verifier *this, int a2, llvm::CallBase *a3)
{
  v357[12] = *MEMORY[0x277D85DE8];
  v6 = *(a3 - 4);
  if (v6 && !*(v6 + 16) && *(v6 + 24) == *(a3 + 9))
  {
    v347 = *(a3 - 4);
  }

  else
  {
    v347 = 0;
    if (MEMORY[0x10])
    {
LABEL_12:
      p_p = "Intrinsic functions should never be defined!";
      v351 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &v347);
      goto LABEL_13;
    }

    v6 = 0;
  }

  if (*(v6 + 72) != v6 + 72 || (*(v6 + 35) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = *(v6 + 24);
  v8 = *(v7 + 8);
  v355 = v357;
  v356 = 0x800000000;
  llvm::Intrinsic::getIntrinsicInfoTableEntries(a2, &v355);
  v345 = v355;
  v346 = v356;
  v352 = v354;
  v353 = 0x400000000;
  matched = llvm::Intrinsic::matchIntrinsicSignature(v7, &v345, &v352);
  if (matched == 2)
  {
    v10 = "Intrinsic has incorrect argument type!";
    goto LABEL_23;
  }

  if (matched != 1)
  {
    if (v8 < 0x100)
    {
      if (v346)
      {
        if (v346 == 1)
        {
          v345 += 3;
          v346 = 0;
        }

        v10 = "Callsite was not defined with variable arguments!";
        goto LABEL_23;
      }
    }

    else if (v346 != 1 || (v12 = *v345, v345 += 3, v346 = 0, v12 != 1))
    {
      v10 = "Intrinsic was not defined with variable arguments!";
      goto LABEL_23;
    }

    getIntrinsicNameImpl(a2, v352, v353, *(v6 + 40), v7, &v344);
    if ((v344.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v344;
    }

    else
    {
      v13 = v344.__r_.__value_.__r.__words[0];
    }

    if ((v344.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v344.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v344.__r_.__value_.__l.__size_;
    }

    if ((*(v6 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(v6);
      v16 = ValueName + 2;
      v15 = *ValueName;
    }

    else
    {
      v15 = 0;
      v16 = &str_3_24;
    }

    if (size != v15 || size && memcmp(v13, v16, size))
    {
      std::operator+<char>();
      v351 = 260;
      p_p = &__p;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &v347);
      if (v342 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_738;
    }

    v18 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
    v19 = llvm::CallBase::arg_end(a3);
    if (v18 != v19)
    {
      v21 = v19;
      while (1)
      {
        v22 = *v18;
        if (*v18)
        {
          v23 = *(*v18 + 16) == 23;
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          v24 = *(*(a3 + 5) + 56);
          v25 = *(v22 + 24);
          v26 = llvm::MDNode::classof(v25);
          if (v25)
          {
            v27 = v26 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            llvm::SmallPtrSetImpl<llvm::Value *>::insert((this + 432), v25, &p_p);
            if (v350 == 1 && *v25 - 3 >= 0xFFFFFFFE)
            {
            }
          }

          else
          {
          }
        }

        v28 = !v22 || *(v22 + 16) > 0x14u;
        if (!v28 && *(*v22 + 8) == 11)
        {
          break;
        }

        v18 += 32;
        if (v18 == v21)
        {
          goto LABEL_63;
        }
      }

      v29 = "const x86_amx is not allowed in argument!";
      goto LABEL_67;
    }

LABEL_63:
    if (a2 <= 663)
    {
      switch(a2)
      {
        case 7:
          v145 = *(a3 + 5);
          if ((v145 & 0x80000000) == 0)
          {
            goto LABEL_738;
          }

          v146 = a3 - 32 * (v145 & 0x7FFFFFF);
          v149 = *(v146 - 1);
          v148 = (v146 - 8);
          v147 = v149;
          if (!v149)
          {
            goto LABEL_738;
          }

          v150 = (v148 - v147);
          while (2)
          {
            v151 = *(v150 + 2);
            v152 = *(v150 + 3);
            v153 = v152 - v151;
            v154 = *v150;
            v155 = (*v150 + 2);
            v156 = **v150;
            if (v156 == 6)
            {
              if (*v155 == 1869506409 && *(*v150 + 10) == 25970)
              {
                v159 = 6;
LABEL_303:
                AttrKindFromName = llvm::Attribute::getAttrKindFromName(v154 + 16, v159);
                if (AttrKindFromName != 75)
                {
                  if (v153 >= 3)
                  {
                    v283 = "too many arguments";
                    goto LABEL_737;
                  }

                  if (!AttrKindFromName)
                  {
                    goto LABEL_69;
                  }

                  if ((AttrKindFromName - 75) > 9)
                  {
                    if ((AttrPropTable[AttrKindFromName - 1] & 2) != 0)
                    {
                      if (v153 != 1)
                      {
                        v283 = "this attribute should have one argument";
                        goto LABEL_737;
                      }
                    }

                    else if ((AttrPropTable[AttrKindFromName - 1] & 1) != 0 && v152 != v151)
                    {
                      v283 = "this attribute has no argument";
                      goto LABEL_737;
                    }
                  }

                  else
                  {
                    if (v153 != 2)
                    {
                      v283 = "this attribute should have 2 arguments";
                      goto LABEL_737;
                    }

                    if (*(*(a3 + 4 * (*(v150 + 2) + 1) + -4 * (*(a3 + 5) & 0x7FFFFFF)) + 16) != 16)
                    {
                      v283 = "the second argument should be a constant integral value";
                      goto LABEL_737;
                    }
                  }

                  v150 += 2;
                  if (v150 == v148)
                  {
                    goto LABEL_69;
                  }

                  continue;
                }

                if ((v153 & 0xFFFFFFFE) != 2)
                {
                  v283 = "alignment assumptions should have 2 or 3 arguments";
                  goto LABEL_737;
                }

                v321 = *(v150 + 2);
                v322 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
                if (*(**&v322[32 * v321] + 8) != 15)
                {
                  v283 = "first argument should be a pointer";
                  goto LABEL_737;
                }

                if (*(**&v322[32 * (v321 + 1)] + 8) != 13)
                {
                  v283 = "second argument should be an integer";
                  goto LABEL_737;
                }

                if (v153 == 3 && *(**&v322[32 * (v321 + 2)] + 8) != 13)
                {
                  v283 = "third argument should be an integer if present";
                  goto LABEL_737;
                }

LABEL_738:
                if (SHIBYTE(v344.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v344.__r_.__value_.__l.__data_);
                }

                goto LABEL_24;
              }
            }

            else if (v156 == 16 && *v155 == 0x6574617261706573 && (*v150)[3] == 0x656761726F74735FLL)
            {
              if (v153 != 2)
              {
                v283 = "separate_storage assumptions should have 2 arguments";
                goto LABEL_737;
              }

              v323 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
              if (*(**&v323[32 * v151] + 8) != 15 || *(**&v323[32 * (v151 + 1)] + 8) != 15)
              {
                v283 = "arguments to separate_storage assumptions should be pointers";
                goto LABEL_737;
              }

              goto LABEL_738;
            }

            break;
          }

          if (!llvm::Attribute::isExistingAttribute(v155, v156))
          {
            v283 = "tags must be valid attribute names";
            goto LABEL_737;
          }

          v154 = *v150;
          v159 = **v150;
          goto LABEL_303;
        case 9:
          v181 = *a3;
          if ((*(*a3 + 8) & 0xFE) == 0x12)
          {
            v181 = **(v181 + 2);
          }

          if ((llvm::Type::getPrimitiveSizeInBits(v181) & 0xF) == 0)
          {
            goto LABEL_738;
          }

          v54 = "bswap must be an even number of bytes";
          goto LABEL_105;
        case 10:
          v182 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          v183 = *(v182 + 16);
          if (v183 < 0x1C || ((v184 = v183 - 33, v28 = v184 > 0x33, v185 = (1 << v184) & 0x8000000000041, !v28) ? (v186 = v185 == 0) : (v186 = 1), v186 || *(*(v182 - 32) + 36) != 11))
          {
            v29 = "llvm.call.preallocated.arg token argument must be a llvm.call.preallocated.setup";
            goto LABEL_67;
          }

          v187 = *(a3 + 8);
          if ((!v187 || (*(v187 + 21) & 2) == 0) && (llvm::CallBase::hasFnAttrOnCalledFunction(a3, 73) & 1) == 0)
          {
            v29 = "llvm.call.preallocated.arg must be called with a preallocated call site attribute";
            goto LABEL_67;
          }

          goto LABEL_738;
        case 11:
          v188 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          if (v188)
          {
            v189 = *(v188 + 16) == 16;
          }

          else
          {
            v189 = 0;
          }

          if (!v189)
          {
            v29 = "llvm.call.preallocated.setup argument must be a constant";
            goto LABEL_67;
          }

          v233 = *(a3 + 1);
          if (!v233)
          {
            goto LABEL_738;
          }

          v234 = 0;
          v338 = (v188 + 24);
          while (2)
          {
            v235 = *(v233 + 24);
            v236 = *(v235 + 16);
            if (v236 < 0x1C || ((v237 = v236 - 33, v28 = v237 > 0x33, v238 = (1 << v237) & 0x8000000000041, !v28) ? (v239 = v238 == 0) : (v239 = 1), v239))
            {
              v29 = "Uses of llvm.call.preallocated.setup must be calls";
              goto LABEL_67;
            }

            v240 = *(v235 - 32);
            if (!v240 || *(v240 + 16) || *(v240 + 24) != *(v235 + 72))
            {
              break;
            }

            v245 = *(v240 + 36);
            if (v245 == 12)
            {
              goto LABEL_485;
            }

            if (v245 == 10)
            {
              v246 = *(v235 - 32 * (*(v235 + 20) & 0x7FFFFFF) + 32);
              if (v246)
              {
                v247 = *(v246 + 16) == 16;
              }

              else
              {
                v247 = 0;
              }

              if (v247)
              {
                LODWORD(v341) = *(v246 + 32);
                if (v341 > 0x40)
                {
                  operator new[]();
                }

                __p = *(v246 + 24);
                if (llvm::APInt::slt(&__p, 0) || (llvm::APInt::compareSigned(&__p, v338) & 0x80000000) == 0)
                {
                  p_p = "llvm.call.preallocated.alloc arg index must be between 0 and corresponding llvm.call.preallocated.setup's argument count";
                  v351 = 259;
                  llvm::VerifierSupport::CheckFailed(this, &p_p);
                  if (v341 >= 0x41 && __p)
                  {
                    MEMORY[0x277C69E10](__p, 0x1000C8000313F17);
                  }

                  goto LABEL_738;
                }

                if (v341 >= 0x41 && __p)
                {
                  MEMORY[0x277C69E10](__p, 0x1000C8000313F17);
                }

LABEL_485:
                v233 = *(v233 + 8);
                if (!v233)
                {
                  goto LABEL_69;
                }

                continue;
              }

              v29 = "llvm.call.preallocated.alloc arg index must be a constant";
LABEL_67:
              p_p = v29;
              v351 = 259;
              llvm::VerifierSupport::CheckFailed(this, &p_p);
              goto LABEL_738;
            }

            break;
          }

          if (v234)
          {
            v29 = "Can have at most one call corresponding to a llvm.call.preallocated.setup";
            goto LABEL_67;
          }

          if (((llvm::CallBase::arg_end(*(v233 + 24)) - (v235 + 32 * -(*(v235 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0)
          {
            goto LABEL_662;
          }

          v241 = 0;
          v242 = 0;
          do
          {
            v241 += llvm::CallBase::paramHasAttr(v235, v242++, 73);
          }

          while (v242 < ((llvm::CallBase::arg_end(v235) - (v235 + 32 * -(*(v235 + 20) & 0x7FFFFFF))) >> 5));
          if (!v241)
          {
LABEL_662:
            v29 = "cannot use preallocated intrinsics on a call without preallocated arguments";
            goto LABEL_67;
          }

          v243 = *(v188 + 32);
          v244 = (v188 + 24);
          if (v243 < 0x41)
          {
            goto LABEL_480;
          }

          if (v243 - llvm::APInt::countLeadingZerosSlowCase(v338) <= 0x40)
          {
            v244 = *v338;
LABEL_480:
            if (*v244 == v241)
            {
              if (llvm::CallBase::countOperandBundlesOfType(v235, 4) > 1)
              {
                goto LABEL_738;
              }

              llvm::CallBase::getOperandBundle(v235, 4, &__p);
              if (v343)
              {
                if (*__p == a3)
                {
                  v234 = 1;
                  goto LABEL_485;
                }

                v29 = "preallocated bundle must have token from corresponding llvm.call.preallocated.setup";
              }

              else
              {
                v29 = "Use of llvm.call.preallocated.setup outside intrinsics must be in preallocated operand bundle";
              }

              goto LABEL_67;
            }
          }

          p_p = "llvm.call.preallocated.setup arg size must be equal to number of preallocated arguments at call site";
          v351 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::CallBase,llvm::CallBase>(this, &p_p, a3, v235);
          goto LABEL_738;
        case 12:
          v164 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          v165 = *(v164 + 16);
          if (v165 >= 0x1C)
          {
            v166 = v165 - 33;
            v28 = v166 > 0x33;
            v167 = (1 << v166) & 0x8000000000041;
            v168 = v28 || v167 == 0;
            if (!v168 && *(*(v164 - 32) + 36) == 11)
            {
              goto LABEL_738;
            }
          }

          v29 = "llvm.call.preallocated.teardown token argument must be a llvm.call.preallocated.setup";
          goto LABEL_67;
        case 13:
          v169 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          if (!v169 || *(v169 + 16) != 39)
          {
            v54 = "intrinstic requires callbr operand";
            goto LABEL_105;
          }

          v170 = *(a3 + 5);
          UniquePredecessor = llvm::BasicBlock::getUniquePredecessor(v170);
          if (!UniquePredecessor)
          {
            v54 = "Intrinsic in block must have 1 unique predecessor";
            goto LABEL_105;
          }

          v172 = *(UniquePredecessor + 40);
          v173 = v172 - 24;
          if (v172)
          {
            v174 = v172 - 24;
          }

          else
          {
            v174 = 0;
          }

          if (*(v174 + 16) - 29 >= 0xB)
          {
            v175 = 0;
          }

          else
          {
            v175 = v173;
          }

          if (*(v175 + 16) != 39)
          {
            v54 = "Intrinsic must have corresponding callbr in predecessor";
            goto LABEL_105;
          }

          llvm::CallBrInst::getIndirectDests(v169, &p_p);
          if (v349)
          {
            v176 = 8 * v349 - 8;
            v177 = p_p;
            do
            {
              v178 = *v177++;
              v179 = v178 == v170;
              v180 = v178 == v170 || v176 == 0;
              v176 -= 8;
            }

            while (!v180);
          }

          else
          {
            v179 = 0;
          }

          if (p_p != &v350)
          {
            free(p_p);
          }

          if (!v179)
          {
            v54 = "Intrinsic's corresponding callbr must have intrinsic's parent basic block in indirect destination list";
            goto LABEL_105;
          }

          v319 = *(v170 + 6);
          if (!v319 || (v319 - 24) != a3)
          {
            v54 = "No other instructions may proceed intrinsic";
            goto LABEL_105;
          }

          goto LABEL_69;
        case 37:
          v142 = llvm::Value::stripPointerCasts((a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[12]);
          v143 = v142[16];
          if (v143 == 19)
          {
            goto LABEL_738;
          }

          if (v143 == 3 && (v144 = v142, (v142[80] & 1) != 0) && llvm::GlobalVariable::hasDefinitiveInitializer(v142))
          {
            if ((*(*(v144 - 4) + 16) & 0xFE) == 8)
            {
              goto LABEL_738;
            }

            v29 = "info argument of llvm.coro.id must refer to either a struct or an array";
          }

          else
          {
            v29 = "info argument of llvm.coro.id must refer to an initialized constant";
          }

          goto LABEL_67;
        case 56:
          v161 = "assign";
          v162 = this;
          v163 = 6;
          goto LABEL_367;
        case 57:
          if (*(*(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF)) + 16) != 23)
          {
            v283 = "invalid llvm.dbg.declare intrinsic call 1";
            goto LABEL_737;
          }

          v161 = "declare";
          v162 = this;
          v163 = 7;
LABEL_367:
          goto LABEL_738;
        case 58:
          goto LABEL_738;
        case 59:
          v161 = "value";
          v162 = this;
          v163 = 5;
          goto LABEL_367;
        case 63:
        case 64:
          if (*(*(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF)) + 16) == 80)
          {
            goto LABEL_69;
          }

          v283 = "eh.exceptionpointer argument must be a catchpad";
          goto LABEL_737;
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
          goto LABEL_69;
        case 120:
          if (*(a3 + 16) != 84)
          {
            v283 = "experimental_deoptimize cannot be invoked";
            goto LABEL_737;
          }

          if (llvm::CallBase::countOperandBundlesOfType(a3, 0) != 1)
          {
            v29 = "experimental_deoptimize must have exactly one deopt operand bundle";
            goto LABEL_67;
          }

          v141 = *(a3 + 5);
          if (*a3 != **(*(*(v141 + 56) + 24) + 16))
          {
            v29 = "experimental_deoptimize return type must match caller return type";
            goto LABEL_67;
          }

          v313 = *(a3 + 4);
          v314 = v313 - 24;
          v315 = v313 == v141 + 40 || v313 == 0;
          v316 = v315;
          if (v315)
          {
            v317 = 0;
          }

          else
          {
            v317 = v314;
          }

          if (*(v317 + 16) != 29 || v316 != 0)
          {
            v29 = "calls to experimental_deoptimize must be followed by a return";
            goto LABEL_67;
          }

          if (*(*a3 + 8) == 7)
          {
            goto LABEL_738;
          }

          v320 = *(v317 + 20) & 0x7FFFFFF;
          if (v320)
          {
            if (*(v317 - 32 * v320) == a3)
            {
              goto LABEL_738;
            }
          }

          v29 = "calls to experimental_deoptimize must be followed by a return of the value computed by experimental_deoptimize";
          goto LABEL_67;
        case 123:
          v115 = llvm::CallBase::arg_end(a3);
          v116 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
          if (((v115 - v116) & 0x1FFFFFFFE0) != 0x60)
          {
            v283 = "wrong number of arguments";
            goto LABEL_737;
          }

          if ((*(*a3 + 8) & 0xFE) == 0x12)
          {
            v117 = *(**(*a3 + 16) + 8);
          }

          else
          {
            v117 = *(*a3 + 8);
          }

          if (v117 != 15)
          {
            v283 = "gc.relocate must return a pointer or a vector of pointers";
            goto LABEL_737;
          }

          v270 = *v116;
          if (*v116 && v270[16] == 94)
          {
            v271 = *(v270 + 5);
            v272 = llvm::BasicBlock::getUniquePredecessor(v271);
            __p = v272;
            if (!v272)
            {
              p_p = "safepoints should have unique landingpads";
              v351 = 259;
              v339 = v271;
              llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &v339);
              goto LABEL_738;
            }

            v273 = v272[5];
            if (v273 == v272 + 5 || ((v274 = (v273 - 3), v273) ? (v275 = v273 - 3) : (v275 = 0), *(v275 + 16) - 29 >= 0xB))
            {
              v298 = "safepoint block should be well formed";
              goto LABEL_672;
            }

            if (!llvm::GCStatepointInst::classof(v274))
            {
              v298 = "gc relocate should be linked to a statepoint";
              goto LABEL_672;
            }
          }

          else
          {
            __p = *v116;
            if (!llvm::GCStatepointInst::classof(v270) && v270[16] - 11 >= 2)
            {
              p_p = "gc relocate is incorrectly tied to the statepoint";
              v351 = 259;
              goto LABEL_578;
            }
          }

          Statepoint = llvm::GCProjectionInst::getStatepoint(a3);
          v300 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
          v301 = *(v300 + 4);
          if (*(v301 + 16) != 16)
          {
            v283 = "gc.relocate operand #2 must be integer offset";
            goto LABEL_737;
          }

          v302 = *(v300 + 8);
          if (*(v302 + 16) != 16)
          {
            v283 = "gc.relocate operand #3 must be integer offset";
            goto LABEL_737;
          }

          v303 = (v301 + 24);
          if (*(v301 + 32) >= 0x41u)
          {
            v303 = *v303;
          }

          v304 = (v302 + 24);
          if (*(v302 + 32) >= 0x41u)
          {
            v304 = *v304;
          }

          if (*(Statepoint + 16) - 11 < 2)
          {
            goto LABEL_738;
          }

          v305 = *v303;
          v306 = *v304;
          llvm::CallBase::getOperandBundle(Statepoint, 5, &__p);
          if (v343 != 1)
          {
            goto LABEL_633;
          }

          if (v305 >= v341)
          {
            v283 = "gc.relocate: statepoint base index out of bounds";
            goto LABEL_737;
          }

          if (v306 >= v341)
          {
            v283 = "gc.relocate: statepoint derived index out of bounds";
            goto LABEL_737;
          }

LABEL_633:
          v307 = *a3;
          v308 = *llvm::GCRelocateInst::getDerivedPtr(a3);
          BasePtr = llvm::GCRelocateInst::getBasePtr(a3);
          v310 = *BasePtr;
          if ((*(*BasePtr + 8) & 0xFE) == 0x12)
          {
            v311 = *(**(v310 + 16) + 8);
          }

          else
          {
            v311 = *(*BasePtr + 8);
          }

          if (v311 != 15)
          {
            goto LABEL_714;
          }

          v324 = *(v308 + 8);
          v325 = v324 & 0xFE;
          v326 = v324;
          if (v325 == 18)
          {
            v326 = *(**(v308 + 16) + 8);
          }

          if (v326 != 15)
          {
LABEL_714:
            v283 = "gc.relocate: relocated value must be a pointer";
            goto LABEL_737;
          }

          v327 = *(v307 + 8);
          if ((v325 == 18) != ((v327 & 0xFE) == 18))
          {
            v283 = "gc.relocate: vector relocates to vector and pointer to pointer";
            goto LABEL_737;
          }

          if ((v327 & 0xFE) == 0x12)
          {
            v327 = *(**(v307 + 16) + 8);
          }

          if (v325 == 18)
          {
            v324 = *(**(v308 + 16) + 8);
          }

          if ((v324 ^ v327) >= 0x100)
          {
            v283 = "gc.relocate: relocating a pointer shouldn't change its address space";
            goto LABEL_737;
          }

          v328 = ****(*(a3 + 5) + 56);
          p_p = *(*(a3 + 5) + 56);
          v329 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::FindAndConstruct((v328 + 2696), &p_p);
          v332 = v329[1];
          v330 = v329 + 1;
          v331 = v332;
          v333 = *(v330 + 23);
          if (v333 >= 0)
          {
            v334 = v330;
          }

          else
          {
            v334 = v331;
          }

          if (v333 >= 0)
          {
            v335 = *(v330 + 23);
          }

          else
          {
            v335 = v330[1];
          }

          llvm::getGCStrategy(v334, v335);
          if (!__p)
          {
            p_p = "gc.relocate: calling function must have GCStrategy";
            v351 = 259;
            v339 = *(*(a3 + 5) + 56);
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &v339);
            goto LABEL_743;
          }

          {
            {
LABEL_743:
              v337 = __p;
              __p = 0;
              if (v337)
              {
                (*(*v337 + 8))(v337);
              }

              goto LABEL_738;
            }

            v336 = "gc.relocate: relocated value must be a gc pointer";
          }

          else
          {
            v336 = "gc.relocate: must return gc pointer";
          }

          p_p = v336;
          v351 = 259;
          llvm::VerifierSupport::CheckFailed<llvm::Function>(this, &p_p, a3);
          goto LABEL_743;
        case 124:
          if ((*(*(*(a3 + 5) + 56) + 18) & 0x4000) == 0)
          {
            goto LABEL_430;
          }

          v118 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          v119 = *(v118 + 16);
          if (v119 - 11 < 2)
          {
            goto LABEL_738;
          }

          if (v119 < 0x1C || ((v120 = v119 - 33, v28 = v120 > 0x33, v121 = (1 << v120) & 0x8000000000041, !v28) ? (v122 = v121 == 0) : (v122 = 1), v122 || (v123 = *(v118 - 32)) == 0 || *(v123 + 16) || *(v123 + 24) != *(v118 + 72) || *(v123 + 72) != v123 + 72 || (*(v123 + 35) & 1) != 0 || *(v123 + 36) != 125))
          {
            p_p = "gc.result operand #1 must be from a statepoint";
            v351 = 259;
            __p = v118;
LABEL_578:
            llvm::VerifierSupport::CheckFailed<llvm::CallBase,llvm::Value *>(this, &p_p, a3, &__p);
            goto LABEL_738;
          }

          if (*a3 == **(llvm::AttributeList::getParamElementType((v118 + 64), 2) + 16))
          {
            goto LABEL_738;
          }

          v283 = "gc.result result type does not match wrapped callee";
          goto LABEL_737;
        case 125:
          v190 = *(a3 + 16);
          v191 = v190 == 84;
          if (v190 == 84)
          {
            v192 = a3;
          }

          else
          {
            v192 = 0;
          }

          __p = v192;
          if (v191 && *(*(a3 - 4) + 16) == 24)
          {
            p_p = "gc.statepoint support for inline assembly unimplemented";
            v351 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &__p);
            goto LABEL_738;
          }

          if ((*(*(*(a3 + 5) + 56) + 18) & 0x4000) == 0)
          {
            goto LABEL_430;
          }

          goto LABEL_738;
        case 126:
          if (*(a3 + 16) != 84)
          {
            v283 = "experimental_guard cannot be invoked";
            goto LABEL_737;
          }

          if (llvm::CallBase::countOperandBundlesOfType(a3, 0) == 1)
          {
            goto LABEL_738;
          }

          v29 = "experimental_guard must have exactly one deopt operand bundle";
          goto LABEL_67;
        case 127:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(this + 510, a3);
          goto LABEL_738;
        case 131:
          v113 = *a3;
          if (*a3)
          {
            if ((*(v113 + 8) & 0xFE) == 0x12)
            {
              v114 = **(v113 + 16);
              if (*(v114 + 8) == 13 && (llvm::Type::getPrimitiveSizeInBits(v114) & 0xFFFFFFF8) != 0)
              {
                goto LABEL_738;
              }
            }
          }

          v54 = "experimental_stepvector only supported for vectors of integers with a bitwidth of at least 8.";
          goto LABEL_105;
        case 135:
          v124 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[8];
          v125 = *(v124 + 32);
          if (v125 > 0x40)
          {
            v126 = **(v124 + 24);
          }

          else
          {
            v126 = (*(v124 + 24) << -v125) >> -v125;
          }

          v227 = *(*a3 + 32);
          v228 = *(a3 + 5);
          if (v228)
          {
            v229 = *(v228 + 56);
            if (v229)
            {
              v230 = *(v229 + 112);
              if (v230)
              {
                if ((*(v230 + 22) & 0x10) != 0)
                {
                  if (*(v230 + 8) && (v231 = *(v230 + 40)) != 0)
                  {
                    VScaleRangeMin = llvm::AttributeSetNode::getVScaleRangeMin(v231);
                  }

                  else
                  {
                    VScaleRangeMin = 1;
                  }

                  v227 = VScaleRangeMin * v227;
                }
              }
            }
          }

          if ((v126 & 0x8000000000000000) != 0)
          {
            if (v227 >= -v126)
            {
              goto LABEL_738;
            }
          }

          else if (v126 < v227)
          {
            goto LABEL_738;
          }

          v54 = "The splice index exceeds the range [-VL, VL-1] where VL is the known minimum number of elements in the vector. For scalable vectors the minimum number of elements is determined from vscale_range.";
          goto LABEL_105;
        case 136:
        case 137:
        case 138:
        case 335:
        case 336:
        case 337:
        case 338:
        case 339:
        case 340:
        case 341:
        case 342:
        case 343:
        case 344:
        case 345:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 356:
        case 357:
        case 358:
        case 359:
        case 360:
        case 361:
        case 362:
        case 363:
        case 364:
        case 365:
        case 366:
        case 367:
        case 368:
        case 369:
        case 370:
        case 371:
        case 372:
        case 373:
        case 374:
        case 375:
        case 376:
        case 377:
        case 378:
        case 379:
        case 380:
        case 381:
        case 382:
        case 383:
        case 384:
        case 385:
        case 386:
        case 387:
        case 388:
        case 389:
        case 390:
        case 391:
        case 392:
        case 393:
        case 394:
        case 395:
        case 396:
        case 397:
        case 398:
        case 399:
        case 400:
        case 401:
        case 402:
        case 403:
        case 404:
        case 405:
        case 406:
        case 407:
        case 408:
        case 409:
        case 410:
        case 411:
          goto LABEL_69;
        case 146:
          v202 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4];
          if (v202)
          {
            v203 = *(v202 + 16) == 23;
          }

          else
          {
            v203 = 0;
          }

          if (!v203 || (v204 = *(v202 + 24), (__p = v204) == 0))
          {
            v283 = "missing rounding mode argument";
            goto LABEL_737;
          }

          if (*v204)
          {
            p_p = "invalid value for llvm.fptrunc.round metadata operand (the operand should be a string)";
            v351 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::MDNode *>(this, &p_p, &__p);
            goto LABEL_738;
          }

          v312 = llvm::convertStrToRoundingMode(v204[1] + 3, *v204[1]);
          if ((v312 & 0x100) != 0 && v312 != 7)
          {
            goto LABEL_738;
          }

          v283 = "unsupported rounding mode argument";
          goto LABEL_737;
        case 150:
        case 151:
        case 152:
          if (a2 != 151)
          {
            goto LABEL_149;
          }

          v71 = llvm::Value::stripPointerCasts(*(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF)));
          if (!v71 || *(v71 + 16) != 59)
          {
            v283 = "llvm.gcroot parameter #1 must be an alloca.";
            goto LABEL_737;
          }

          v72 = *((a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4] + 16);
          if (v72 >= 0x15)
          {
            v283 = "llvm.gcroot parameter #2 must be a constant.";
            goto LABEL_737;
          }

          if (v72 == 19 && *(*(v71 + 8) + 8) != 15)
          {
            v283 = "llvm.gcroot parameter #1 must either be a pointer alloca, or argument #2 must be a non-null constant.";
            goto LABEL_737;
          }

LABEL_149:
          if ((*(*(*(a3 + 5) + 56) + 18) & 0x4000) == 0)
          {
LABEL_430:
            v283 = "Enclosing function does not use GC.";
            goto LABEL_737;
          }

          goto LABEL_69;
        case 153:
          if ((*(*a3 + 8) & 0xFE) == 0x12)
          {
            if (*(**(*a3 + 16) + 8) == 269)
            {
              goto LABEL_738;
            }

            v283 = "get_active_lane_mask: element type is not i1";
          }

          else
          {
            v283 = "get_active_lane_mask: must return a vector";
          }

          goto LABEL_737;
        case 159:
          if (!*(llvm::Value::stripPointerCasts((a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4]) + 16))
          {
            goto LABEL_738;
          }

          v283 = "llvm.init_trampoline parameter #2 must resolve to a function.";
          goto LABEL_737;
        case 166:
          v96 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          if (v96)
          {
            v97 = *(v96 + 16) == 16;
          }

          else
          {
            v97 = 0;
          }

          if (v97)
          {
            v98 = (v96 + 24);
            v99 = *(v96 + 32);
            v100 = v99 - 1;
            v101 = v98;
            if (v99 >= 0x41)
            {
              v101 = (*v98 + 8 * (v100 >> 6));
            }

            if (((*v101 >> v100) & 1) == 0 || llvm::APInt::isAllOnes(v98))
            {
              goto LABEL_738;
            }
          }

          v54 = "invariant_start parameter must be -1, 0 or a positive number";
          goto LABEL_105;
        case 168:
          v108 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4];
          v109 = (v108 + 24);
          if (*(v108 + 32) >= 0x41u)
          {
            v109 = *v109;
          }

          if ((*v109 & 0xFFFFFC00) == 0)
          {
            goto LABEL_738;
          }

          v29 = "unsupported bits for llvm.is.fpclass test mask";
          goto LABEL_67;
        case 172:
        case 173:
        case 183:
        case 184:
          if ((*(**(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF)) + 8) & 0xFE) != 0x12 && (*(*a3 + 8) & 0xFE) != 0x12)
          {
            goto LABEL_69;
          }

          v54 = "Intrinsic does not support vectors";
          goto LABEL_105;
        case 176:
          v110 = *(a3 + 5);
          v111 = *(*(v110 + 56) + 80);
          if (v111)
          {
            v112 = v111 - 24;
          }

          else
          {
            v112 = 0;
          }

          if (v112 != v110)
          {
            v283 = "llvm.localescape used outside of entry block";
            goto LABEL_737;
          }

          if (*(this + 800) == 1)
          {
            v283 = "multiple calls to llvm.localescape in one function";
            goto LABEL_737;
          }

          v284 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
          v285 = llvm::CallBase::arg_end(a3);
          if (v284 == v285)
          {
            goto LABEL_604;
          }

          v286 = v285;
          while (1)
          {
            if (*(*v284 + 16) != 19)
            {
              v287 = llvm::Value::stripPointerCasts(*v284);
              if (!v287 || *(v287 + 16) != 59 || *(*(v287 - 4) + 16) != 16)
              {
                break;
              }

              v288 = *(v287 + 5);
              v289 = *(*(v288 + 56) + 80);
              v290 = v289 ? v289 - 24 : 0;
              if (v290 != v288 || (*(v287 + 9) & 0x40) != 0)
              {
                break;
              }
            }

            v284 += 4;
            if (v284 == v286)
            {
LABEL_604:
              v291 = (llvm::CallBase::arg_end(a3) - (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF))) >> 5;
              p_p = *(v110 + 56);
              *(llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>,llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>::FindAndConstruct(this + 832, &p_p) + 2) = v291;
              *(this + 800) = 1;
              goto LABEL_69;
            }
          }

          v283 = "llvm.localescape only accepts static allocas";
          goto LABEL_737;
        case 177:
          v212 = llvm::Value::stripPointerCasts(*(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF)));
          if (*(v212 + 16))
          {
            v213 = 0;
          }

          else
          {
            v213 = v212;
          }

          __p = v213;
          if (!v213)
          {
            goto LABEL_581;
          }

          if (*(v213 + 16))
          {
            if (*(v213 + 16) == 3 && (*(v213 + 5) & 0x7FFFFFF) == 0)
            {
LABEL_581:
              v283 = "llvm.localrecover first argument must be function defined in this module";
              goto LABEL_737;
            }
          }

          else if (*(v213 + 9) == (v213 + 72) && (*(v213 + 35) & 1) == 0)
          {
            goto LABEL_581;
          }

          v276 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[8];
          v277 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>,llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>::FindAndConstruct(this + 832, &__p);
          v278 = *(v277 + 3);
          LimitedValue = llvm::APInt::getLimitedValue((v276 + 24), 0xFFFFFFFFuLL);
          if (LimitedValue + 1 > v278)
          {
            v280 = LimitedValue + 1;
          }

          else
          {
            v280 = v278;
          }

          *(v277 + 3) = v280;
          goto LABEL_738;
        case 187:
          v193 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4];
          v194 = *(v193 + 32);
          if (v194 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase((v193 + 24)) == v194)
            {
              goto LABEL_738;
            }
          }

          else if (!*(v193 + 24))
          {
            goto LABEL_738;
          }

          if (llvm::APInt::isPowerOf2((v193 + 24)))
          {
            goto LABEL_738;
          }

          v283 = "masked_gather: alignment must be 0 or a power of 2";
          goto LABEL_737;
        case 188:
          if ((*(*a3 + 8) & 0xFE) != 0x12)
          {
            v283 = "masked_load: must return a vector";
            goto LABEL_737;
          }

          v134 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
          v135 = v134[8];
          if ((*(*v135 + 8) & 0xFE) != 0x12)
          {
            v283 = "masked_load: mask must be vector";
            goto LABEL_737;
          }

          v136 = *v134;
          v137 = v134[12];
          if (!llvm::APInt::isPowerOf2((v134[4] + 24)))
          {
            v283 = "masked_load: alignment must be a power of 2";
            goto LABEL_737;
          }

          v138 = *a3;
          v139 = *(*v136 + 24);
          if (v139)
          {
            v140 = v139 == v138;
          }

          else
          {
            v140 = 1;
          }

          if (!v140)
          {
            v283 = "masked_load: return must match pointer type";
            goto LABEL_737;
          }

          if (*v137 != v138)
          {
            v283 = "masked_load: pass through and return type must match";
            goto LABEL_737;
          }

          if (*(*v135 + 32) == *(v138 + 32) && (*(v138 + 8) != 19) != (*(*v135 + 8) == 19))
          {
            goto LABEL_738;
          }

          v283 = "masked_load: vector mask must be same length as return";
          goto LABEL_737;
        case 189:
          v94 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[8];
          v95 = *(v94 + 32);
          if (v95 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase((v94 + 24)) == v95)
            {
              goto LABEL_738;
            }
          }

          else if (!*(v94 + 24))
          {
            goto LABEL_738;
          }

          if (llvm::APInt::isPowerOf2((v94 + 24)))
          {
            goto LABEL_738;
          }

          v283 = "masked_scatter: alignment must be 0 or a power of 2";
          goto LABEL_737;
        case 190:
          v195 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
          v196 = *(v195 + 12);
          if ((*(*v196 + 8) & 0xFE) != 0x12)
          {
            v283 = "masked_store: mask must be vector";
            goto LABEL_737;
          }

          v197 = *v195;
          v198 = *(v195 + 4);
          if (!llvm::APInt::isPowerOf2((*(v195 + 8) + 24)))
          {
            v283 = "masked_store: alignment must be a power of 2";
            goto LABEL_737;
          }

          v199 = *v197;
          v200 = *(*v198 + 24);
          if (v200)
          {
            v201 = v200 == v199;
          }

          else
          {
            v201 = 1;
          }

          if (!v201)
          {
            v283 = "masked_store: storee must match pointer type";
            goto LABEL_737;
          }

          if (*(*v196 + 32) != *(v199 + 32) || (*(v199 + 8) != 19) == (*(*v196 + 8) == 19))
          {
            v283 = "masked_store: vector mask must be same length as value";
            goto LABEL_737;
          }

          goto LABEL_738;
        case 191:
        case 192:
        case 193:
        case 194:
          v62 = *(a3 - 4);
          if (!v62 || *(v62 + 16) || *(v62 + 24) != *(a3 + 9))
          {
            v62 = 0;
          }

          __p = v62;
          v63 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
          if (a2 > 192)
          {
            if (a2 == 194)
            {
              v69 = 0;
              v64 = 0;
              v65 = v63[4];
              v66 = v63[8];
              v67 = *a3;
              v70 = *(**v63 + 24);
            }

            else
            {
              v65 = v63[8];
              v89 = v63[12];
              v90 = **v63;
              v91 = v65 + 3;
              if (*(v65 + 8) >= 0x41u)
              {
                v91 = *v91;
              }

              v66 = v63[16];
              v92 = *v91;
              if (*(v89 + 8) > 0x40u)
              {
                v93 = *v89[3];
              }

              else
              {
                v93 = v89[3];
              }

              if (v93 * v92 != *(v90 + 32))
              {
                v29 = "First argument of a matrix operation does not match specified shape!";
                goto LABEL_67;
              }

              v225 = *v63[4];
              v226 = v66 + 3;
              if (*(v66 + 8) >= 0x41u)
              {
                v226 = *v226;
              }

              if (*v226 * v93 != *(v225 + 32))
              {
                v29 = "Second argument of a matrix operation does not match specified shape!";
                goto LABEL_67;
              }

              v64 = 0;
              v67 = *a3;
              v70 = *(v90 + 24);
              v69 = *(v225 + 24);
            }
          }

          else if (a2 == 191)
          {
            if (*(v63[4] + 16) == 16)
            {
              v64 = v63[4];
            }

            else
            {
              v64 = 0;
            }

            v65 = v63[12];
            v66 = v63[16];
            v67 = *a3;
            v68 = **v63;
            v69 = *(v68 + 24);
            if (v69)
            {
              v69 = 0;
              v70 = **(v68 + 16);
            }

            else
            {
              v70 = 0;
            }
          }

          else
          {
            if (*(v63[8] + 16) == 16)
            {
              v64 = v63[8];
            }

            else
            {
              v64 = 0;
            }

            v65 = v63[16];
            v66 = v63[20];
            v67 = **v63;
            v70 = *(v67 + 24);
            v88 = *v63[4];
            v69 = *(v88 + 24);
            if (v69)
            {
              v69 = **(v88 + 16);
            }
          }

          v248 = *(v67 + 24);
          v249 = *(v248 + 8);
          v251 = v249 == 13 || v249 < 4 || v249 == 5;
          v252 = v249 & 0xFFFFFFFD;
          if (!v251 && v252 != 4)
          {
            v298 = "Result type must be an integer or floating-point type!";
LABEL_672:
            p_p = v298;
            v351 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &__p);
            goto LABEL_738;
          }

          if (v70)
          {
            v254 = v248 == v70;
          }

          else
          {
            v254 = 1;
          }

          if (!v254)
          {
            v298 = "Vector element type mismatch of the result and first operand vector!";
            goto LABEL_672;
          }

          if (v69 && v248 != v69)
          {
            v298 = "Vector element type mismatch of the result and second operand vector!";
            goto LABEL_672;
          }

          v255 = *(v67 + 32);
          v256 = v65 + 3;
          v257 = *(v65 + 8);
          v258 = v256;
          if (v257 >= 0x41)
          {
            v258 = *v256;
          }

          v259 = *v258;
          v260 = v66 + 3;
          if (*(v66 + 8) >= 0x41u)
          {
            v260 = *v260;
          }

          if (*v260 * v259 != v255)
          {
            v29 = "Result of a matrix operation does not fit in the returned vector!";
            goto LABEL_67;
          }

          if (v64)
          {
            v261 = v64 + 3;
            if (*(v64 + 8) >= 0x41u)
            {
              v261 = *v261;
            }

            v262 = *v261;
            if (v257 >= 0x41)
            {
              v256 = *v256;
            }

            if (v262 < *v256)
            {
              v298 = "Stride must be greater or equal than the number of rows!";
              goto LABEL_672;
            }
          }

          goto LABEL_69;
        case 198:
        case 201:
        case 203:
          v74 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[12];
          v75 = (v74 + 24);
          if (!llvm::APInt::isPowerOf2((v74 + 24)))
          {
            v283 = "element size of the element-wise atomic memory intrinsic must be a power of 2";
LABEL_737:
            p_p = v283;
            v351 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::Function>(this, &p_p, a3);
            goto LABEL_738;
          }

          ParamAlignment = llvm::AttributeList::getParamAlignment((a3 + 64), 0);
          if ((ParamAlignment & 0x100) == 0)
          {
            goto LABEL_157;
          }

          v77 = ParamAlignment;
          v78 = *(v74 + 32);
          v79 = v75;
          if (v78 < 0x41)
          {
            goto LABEL_156;
          }

          if (v78 - llvm::APInt::countLeadingZerosSlowCase(v75) > 0x40)
          {
            goto LABEL_157;
          }

          v79 = *v75;
LABEL_156:
          if (*v79 > (1 << v77))
          {
LABEL_157:
            v283 = "incorrect alignment of the destination argument";
            goto LABEL_737;
          }

          v267 = *(*(a3 - 4) + 36);
          if (v267 != 201 && v267 != 198)
          {
            goto LABEL_69;
          }

          v268 = llvm::AttributeList::getParamAlignment((a3 + 64), 1);
          if ((v268 & 0x100) == 0)
          {
            goto LABEL_557;
          }

          v269 = v268;
          if (v78 < 0x41)
          {
            goto LABEL_556;
          }

          if (v78 - llvm::APInt::countLeadingZerosSlowCase(v75) > 0x40)
          {
            goto LABEL_557;
          }

          v75 = *v75;
LABEL_556:
          if (*v75 > (1 << v269))
          {
LABEL_557:
            v283 = "incorrect alignment of the source argument";
            goto LABEL_737;
          }

          goto LABEL_69;
        case 244:
          v205 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
          v206 = v205[4];
          v207 = (v206 + 24);
          if (*(v206 + 32) >= 0x41u)
          {
            v207 = *v207;
          }

          if (*v207 >= 2uLL)
          {
            v283 = "rw argument to llvm.prefetch must be 0-1";
            goto LABEL_737;
          }

          v208 = v205[8];
          v209 = (v208 + 24);
          if (*(v208 + 32) >= 0x41u)
          {
            v209 = *v209;
          }

          if (*v209 >= 4uLL)
          {
            v283 = "locality argument to llvm.prefetch must be 0-4";
            goto LABEL_737;
          }

          v210 = v205[12];
          v211 = (v210 + 24);
          if (*(v210 + 32) >= 0x41u)
          {
            v211 = *v211;
          }

          if (*v211 >= 2uLL)
          {
            v283 = "cache type argument to llvm.prefetch must be 0-1";
            goto LABEL_737;
          }

          goto LABEL_738;
        case 245:
        case 246:
        case 477:
        case 480:
          goto LABEL_115;
        case 267:
        case 268:
        case 279:
        case 280:
        case 306:
        case 307:
        case 310:
        case 311:
          v56 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
          v57 = **v56;
          v58 = *(v57 + 8) & 0xFE;
          if (v58 == 18)
          {
            v59 = *(**(v57 + 16) + 8);
          }

          else
          {
            v59 = *(v57 + 8);
          }

          if (v59 != 13)
          {
            v29 = "first operand of [us][mul|div]_fix[_sat] must be an int type or vector of ints";
            goto LABEL_67;
          }

          v60 = **(v56 + 4);
          if ((*(v60 + 8) & 0xFE) == 0x12)
          {
            v61 = *(**(v60 + 16) + 8);
          }

          else
          {
            v61 = *(v60 + 8);
          }

          if (v61 != 13)
          {
            v29 = "second operand of [us][mul|div]_fix[_sat] must be an int type or vector of ints";
            goto LABEL_67;
          }

          v80 = *(v56 + 8);
          if (*(*v80 + 8) >> 8 >= 0x21u)
          {
            v29 = "third argument of [us][mul|div]_fix[_sat] must fit within 32 bits";
            goto LABEL_67;
          }

          if ((a2 - 267) <= 0xD && ((1 << (a2 - 11)) & 0x3003) != 0)
          {
            v81 = v80 + 3;
            if (*(v80 + 8) >= 0x41u)
            {
              v81 = *v81;
            }

            if (v58 == 18)
            {
              v57 = **(v57 + 16);
            }

            v82 = *v81;
            if (v82 >= llvm::Type::getPrimitiveSizeInBits(v57))
            {
              v29 = "the scale of s[mul|div]_fix[_sat] must be less than the width of the operands";
              goto LABEL_67;
            }
          }

          else
          {
            v281 = v80 + 3;
            if (*(v80 + 8) >= 0x41u)
            {
              v281 = *v281;
            }

            if (v58 == 18)
            {
              v57 = **(v57 + 16);
            }

            v282 = *v281;
            if (v282 > llvm::Type::getPrimitiveSizeInBits(v57))
            {
              v29 = "the scale of u[mul|div]_fix[_sat] must be less than or equal to the width of the operands";
              goto LABEL_67;
            }
          }

          goto LABEL_69;
        case 289:
          if (*(llvm::Value::stripPointerCasts((a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4]) + 16) == 59)
          {
            goto LABEL_738;
          }

          v283 = "llvm.stackprotector parameter #2 must resolve to an alloca.";
          goto LABEL_737;
        case 320:
          v102 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
          v103 = *v102;
          v104 = *(v102 + 4);
          v105 = (v104 + 24);
          if (*(v104 + 32) >= 0x41u)
          {
            v105 = *v105;
          }

          v106 = *a3;
          v107 = *v103;
          if (*(*a3 + 24) != *(v107 + 24))
          {
            v54 = "vector_extract result must have the same element type as the input vector.";
            goto LABEL_105;
          }

          v263 = *v105;
          v264 = *(v106 + 32);
          if (v263 % v264)
          {
            v29 = "vector_extract index must be a constant multiple of the result type's known minimum vector length.";
            goto LABEL_67;
          }

          if ((*(v107 + 8) == 19) != (*(v106 + 8) == 19))
          {
            goto LABEL_738;
          }

          v292 = *(v107 + 32);
          v293 = v264 + v263;
          if (v292 > v263 && v293 <= v292)
          {
            goto LABEL_738;
          }

          v29 = "vector_extract would overrun.";
          goto LABEL_67;
        case 321:
          v127 = a3 - 32 * (*(a3 + 5) & 0x7FFFFFF);
          v128 = *v127;
          v129 = *(v127 + 4);
          v130 = *(v127 + 8);
          v131 = (v130 + 24);
          if (*(v130 + 32) >= 0x41u)
          {
            v131 = *v131;
          }

          v132 = *v128;
          v133 = *v129;
          if (*(v132 + 24) != *(*v129 + 24))
          {
            v54 = "vector_insert parameters must have the same element type.";
            goto LABEL_105;
          }

          v265 = *v131;
          v266 = *(v133 + 32);
          if (v265 % v266)
          {
            v29 = "vector_insert index must be a constant multiple of the subvector's known minimum vector length.";
            goto LABEL_67;
          }

          if ((*(v132 + 8) == 19) != (*(v133 + 8) == 19))
          {
            goto LABEL_738;
          }

          v295 = *(v132 + 32);
          v296 = v266 + v265;
          if (v295 > v265 && v296 <= v295)
          {
            goto LABEL_738;
          }

          v29 = "subvector operand of vector_insert would overrun the vector being inserted into.";
          goto LABEL_67;
        case 322:
        case 323:
        case 328:
        case 329:
        case 330:
        case 331:
        case 332:
        case 333:
        case 334:
          v55 = **(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
          if ((*(v55 + 8) & 0xFE) == 0x12 && *(**(v55 + 16) + 8) == 13)
          {
            goto LABEL_69;
          }

          goto LABEL_188;
        case 324:
        case 327:
          v83 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[4];
          goto LABEL_180;
        case 325:
        case 326:
          v83 = *(a3 - 4 * (*(a3 + 5) & 0x7FFFFFF));
LABEL_180:
          v84 = *v83;
          v85 = *(*v83 + 8);
          v86 = v85 & 0xFE;
          if (v86 == 18)
          {
            v85 = *(**(v84 + 16) + 8);
          }

          if (v85 < 4u || v85 == 5)
          {
            if (v86 == 18)
            {
              goto LABEL_69;
            }

            goto LABEL_188;
          }

          v223 = v85 & 0xFD;
          if (v86 != 18 || v223 != 4)
          {
LABEL_188:
            v29 = "Intrinsic has incorrect argument type!";
            goto LABEL_67;
          }

          break;
        default:
          goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (a2 <= 2598)
    {
      if (a2 == 664)
      {
        v214 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
        v215 = v214[4];
        v216 = (v215 + 24);
        if (*(v215 + 32) >= 0x41u)
        {
          v216 = *v216;
        }

        if (*v216 >= 2uLL)
        {
          v283 = "write argument to llvm.aarch64.prefetch must be 0 or 1";
        }

        else
        {
          v217 = v214[8];
          v218 = (v217 + 24);
          if (*(v217 + 32) >= 0x41u)
          {
            v218 = *v218;
          }

          if (*v218 >= 4uLL)
          {
            v283 = "target argument to llvm.aarch64.prefetch must be 0-3";
          }

          else
          {
            v219 = v214[12];
            v220 = (v219 + 24);
            if (*(v219 + 32) >= 0x41u)
            {
              v220 = *v220;
            }

            if (*v220 >= 2uLL)
            {
              v283 = "stream argument to llvm.aarch64.prefetch must be 0 or 1";
            }

            else
            {
              v221 = v214[16];
              v222 = (v221 + 24);
              if (*(v221 + 32) >= 0x41u)
              {
                v222 = *v222;
              }

              if (*v222 < 2uLL)
              {
                goto LABEL_738;
              }

              v283 = "isdata argument to llvm.aarch64.prefetch must be 0 or 1";
            }
          }
        }

        goto LABEL_737;
      }

      if (a2 != 953 && a2 != 955)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (a2 <= 3004)
      {
        if (a2 == 2599 || a2 == 2605)
        {
LABEL_115:
          if (!llvm::AttributeList::getParamElementType((a3 + 64), 0))
          {
            v54 = "Intrinsic requires elementtype attribute on first argument.";
LABEL_105:
            p_p = v54;
            v351 = 259;
            __p = a3;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &__p);
            goto LABEL_738;
          }
        }

        goto LABEL_69;
      }

      if (a2 != 3005 && a2 != 3007)
      {
        goto LABEL_69;
      }
    }

    p_p = *(a3 + 8);
    if (!llvm::AttributeList::getParamElementType(&p_p, 1))
    {
      v54 = "Intrinsic requires elementtype attribute on second argument.";
      goto LABEL_105;
    }

LABEL_69:
    if ((a2 - 219) >= 0x15 && (a2 - 212) > 4)
    {
      goto LABEL_738;
    }

    v30 = *(*(a3 + 5) + 56);
    if ((*(v30 + 18) & 8) == 0)
    {
      goto LABEL_738;
    }

    v31 = *(v30 + 20);
    v32 = (v31 & 0x40000000) != 0 ? *(v30 - 8) : (v30 - 32 * (v31 & 0x7FFFFFF));
    v33 = llvm::classifyEHPersonality(*v32, v20);
    if ((v33 - 7) >= 4 && v33 != 12)
    {
      goto LABEL_738;
    }

    if (!*(this + 228))
    {
      llvm::colorEHFunclets(v30, &p_p);
      llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::operator=(this + 113, &p_p);
      llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::~DenseMap(&p_p);
    }

    v35 = llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>,llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>::find(*(this + 113), *(this + 230), *(a3 + 5));
    v38 = v35[1];
    v36 = v35 + 1;
    v37 = v38;
    if ((v38 & 4) != 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFFFF8;
      v36 = *v40;
      v39 = *v40 + 8 * *(v40 + 8);
    }

    else
    {
      v39 = &v36[v37 > 7];
    }

    if (v36 == v39)
    {
      v44 = 1;
    }

    else
    {
      v41 = 0;
      do
      {
        for (i = *(*v36 + 48); i != *v36 + 40; i = *(i + 8))
        {
          v43 = i - 24;
          if (!i)
          {
            v43 = 0;
          }

          if (*(v43 + 16) != 83)
          {
            v41 |= *(i - 8) - 79 < 2;
            break;
          }
        }

        ++v36;
      }

      while (v36 != v39);
      v44 = v41 ^ 1;
    }

    v45 = *(a3 + 5);
    if (v45 < 0 && (v47 = a3 - 32 * (v45 & 0x7FFFFFF), v50 = *(v47 - 1), v48 = v47 - 8, v49 = v50, (v50 & 0xFFFFFFFF0) != 0))
    {
      v46 = 0;
      v51 = (v49 >> 4);
      v52 = &v48[-v49];
      do
      {
        v53 = *v52;
        v52 += 16;
        v46 |= *(v53 + 8) == 1;
        --v51;
      }

      while (v51);
    }

    else
    {
      v46 = 0;
    }

    if ((v44 | v46))
    {
      goto LABEL_738;
    }

    v54 = "Missing funclet token on intrinsic call";
    goto LABEL_105;
  }

  v10 = "Intrinsic has incorrect return type!";
LABEL_23:
  p_p = v10;
  v351 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &p_p, &v347);
LABEL_24:
  if (v352 != v354)
  {
    free(v352);
  }

  if (v355 != v357)
  {
    free(v355);
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::Verifier::verifyAttachedCallBundle(llvm::raw_ostream **a1, uint64_t a2, uint64_t **a3)
{
  v6 = *(a2 + 72);
  v7 = *(**(v6 + 16) + 8);
  if (v7 != 15)
  {
    v8 = *(a2 + 64);
    if (!v8 || (*(v8 + 15) & 0x80000000) == 0)
    {
      if (!llvm::CallBase::hasFnAttrOnCalledFunction(a2, 31))
      {
        goto LABEL_10;
      }

      v7 = *(**(v6 + 16) + 8);
    }

    if (v7 == 7)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = "a call with operand bundle clang.arc.attachedcall must call a function returning a pointer or a non-returning function that has a void return type";
    goto LABEL_11;
  }

LABEL_7:
  if (a3[1] != 1 || (v9 = **a3, *(v9 + 16)))
  {
    v10 = "operand bundle clang.arc.attachedcall requires one function as an argument";
LABEL_11:
    v19 = v10;
    v20 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function>(a1, &v19, a2);
    return;
  }

  v11 = *(v9 + 36);
  if ((v11 - 216) > 0x17 || ((1 << (v11 + 40)) & 0x804001) == 0)
  {
    if (v11 || (*(v9 + 23) & 0x10) == 0)
    {
      goto LABEL_27;
    }

    ValueName = llvm::Value::getValueName(v9);
    v16 = *ValueName;
    v14 = ValueName + 2;
    v15 = v16;
    if (v16 == 33)
    {
      v17 = "objc_claimAutoreleasedReturnValue";
      v18 = 33;
    }

    else if (v15 == 39)
    {
      v17 = "objc_unsafeClaimAutoreleasedReturnValue";
      v18 = 39;
    }

    else
    {
      if (v15 != 34)
      {
        goto LABEL_27;
      }

      v17 = "objc_retainAutoreleasedReturnValue";
      v18 = 34;
    }

    if (!memcmp(v14, v17, v18))
    {
      return;
    }

LABEL_27:
    v10 = "invalid function argument";
    goto LABEL_11;
  }
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::CallBase>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type **a3)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {

    llvm::VerifierSupport::Write(a1, a3);
  }
}

void anonymous namespace::Verifier::verifyInlineAsmCall(llvm::raw_ostream **this, const llvm::CallBase *a2)
{
  v4 = *(a2 - 4);
  v7 = *(v4 + 48);
  v5 = v4 + 48;
  v6 = v7;
  v8 = *(v5 + 23);
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v5 + 8);
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  llvm::InlineAsm::ParseConstraints(v9, v11, &v22);
  v12 = v22;
  v13 = v23;
  if (v22 != v23)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v12;
      if (*v12 == 3)
      {
        ++v15;
        goto LABEL_20;
      }

      if (v16 == 1)
      {
        if (*(v12 + 13) == 1)
        {
          goto LABEL_16;
        }
      }

      else if (!v16)
      {
        if (*(v12 + 13))
        {
LABEL_16:
          if (*(**(a2 + 4 * v14 + -4 * (*(a2 + 5) & 0x7FFFFFF)) + 8) != 15)
          {
            v18 = "Operand for indirect constraint must have pointer type";
            goto LABEL_31;
          }

          if (!llvm::AttributeList::getParamElementType((a2 + 64), v14))
          {
            v18 = "Operand for indirect constraint must have elementtype attribute";
LABEL_31:
            v19 = a2;
            v20[0] = v18;
            v21 = 259;
            llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, v20, &v19);
            v20[0] = &v22;
            std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](v20);
            return;
          }
        }

        else if (llvm::CallBase::paramHasAttr(a2, v14, 71))
        {
          v18 = "Elementtype attribute can only be applied for indirect constraints";
          goto LABEL_31;
        }

        ++v14;
      }

LABEL_20:
      v12 += 10;
      if (v12 == v13)
      {
        goto LABEL_23;
      }
    }
  }

  v15 = 0;
LABEL_23:
  v20[0] = &v22;
  std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](v20);
  if (*(a2 + 16) == 39)
  {
    if (v15 == *(a2 + 20))
    {
      return;
    }

    v17 = "Number of label constraints does not match number of callbr dests";
  }

  else
  {
    if (!v15)
    {
      return;
    }

    v17 = "Label constraints can only be used with callbr";
  }

  v20[0] = v17;
  v21 = 259;
  v22 = a2;
  llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, v20, &v22);
}

BOOL llvm::GlobalVariable::hasDefinitiveInitializer(llvm::GlobalVariable *this)
{
  if (this && *(this + 16) == 3)
  {
    if ((*(this + 5) & 0x7FFFFFF) == 0)
    {
      return 0;
    }
  }

  else if (!*(this + 16) && *(this + 9) == (this + 72) && (*(this + 35) & 1) == 0)
  {
    return 0;
  }

  if (llvm::GlobalValue::isInterposable(this))
  {
    return 0;
  }

  return (*(this + 80) & 2) == 0;
}

void anonymous namespace::Verifier::visitVPIntrinsic(llvm::raw_ostream **a1, llvm::VPCmpIntrinsic *this)
{
  v4 = *(*(this - 4) + 36);
  if ((v4 - 348) > 0x3F)
  {
    goto LABEL_27;
  }

  if (((1 << (v4 - 92)) & 0x8502800004020780) == 0)
  {
    if (v4 == 348)
    {
      if (llvm::VPCmpIntrinsic::getPredicate(this) > 0xF)
      {
        v13 = "invalid predicate for VP FP comparison intrinsic";
        goto LABEL_52;
      }

      v4 = *(*(this - 4) + 36);
    }

LABEL_27:
    if (v4 != 364 || llvm::VPCmpIntrinsic::getPredicate(this) - 32 < 0xA)
    {
      return;
    }

    v13 = "invalid predicate for VP integer comparison intrinsic";
LABEL_52:
    v32 = this;
    v33[0] = v13;
    v34 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, v33, &v32);
    return;
  }

  v5 = *this;
  v6 = **(this - 4 * (*(this + 5) & 0x7FFFFFF));
  if (*(*this + 32) != *(v6 + 32) || (v7 = *(v5 + 8), v8 = *(v6 + 8), (v7 == 19) == (v8 != 19)))
  {
    v12 = "VP cast intrinsic first argument and result vector lengths must be equal";
    goto LABEL_22;
  }

  if (v4 > 394)
  {
    if (v4 <= 403)
    {
      if (v4 != 395)
      {
LABEL_33:
        if ((v7 & 0xFE) == 0x12)
        {
          v7 = *(**(v5 + 16) + 8);
        }

        if (v7 >= 4u && v7 != 5 && (v7 & 0xFD) != 4)
        {
          goto LABEL_41;
        }

        if ((v8 & 0xFE) == 0x12)
        {
          v8 = *(**(v6 + 16) + 8);
        }

        if (v8 != 13)
        {
LABEL_41:
          v12 = "llvm.vp.uitofp or llvm.vp.sitofp intrinsic first argument element type must be integer and result element type must be floating-point";
          goto LABEL_22;
        }

        return;
      }
    }

    else
    {
      if (v4 == 404)
      {
        v17 = v7 & 0xFE;
        if (v17 == 18)
        {
          v7 = *(**(v5 + 16) + 8);
        }

        if (v7 != 13)
        {
          goto LABEL_128;
        }

        v18 = v8 & 0xFE;
        if (v18 == 18)
        {
          v8 = *(**(v6 + 16) + 8);
        }

        if (v8 != 13)
        {
LABEL_128:
          v12 = "llvm.vp.trunc intrinsic first argument and result element type must be integer";
          goto LABEL_22;
        }

        if (v17 == 18)
        {
          v5 = **(v5 + 16);
        }

        PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v5);
        if (v18 == 18)
        {
          v6 = **(v6 + 16);
        }

        if (PrimitiveSizeInBits >= llvm::Type::getPrimitiveSizeInBits(v6))
        {
          v12 = "llvm.vp.trunc intrinsic the bit size of first argument must be larger than the bit size of the return type";
          goto LABEL_22;
        }

        return;
      }

      if (v4 == 406)
      {
        goto LABEL_33;
      }
    }

    v14 = v7 & 0xFE;
    if (v14 == 18)
    {
      v7 = *(**(v5 + 16) + 8);
    }

    if (v7 != 13)
    {
      goto LABEL_66;
    }

    v15 = v8 & 0xFE;
    if (v15 == 18)
    {
      v8 = *(**(v6 + 16) + 8);
    }

    if (v8 != 13)
    {
LABEL_66:
      v12 = "llvm.vp.zext or llvm.vp.sext intrinsic first argument and result element type must be integer";
      goto LABEL_22;
    }

    if (v14 == 18)
    {
      v5 = **(v5 + 16);
    }

    v16 = llvm::Type::getPrimitiveSizeInBits(v5);
    if (v15 == 18)
    {
      v6 = **(v6 + 16);
    }

    if (v16 <= llvm::Type::getPrimitiveSizeInBits(v6))
    {
      v12 = "llvm.vp.zext or llvm.vp.sext intrinsic the bit size of first argument must be smaller than the bit size of the return type";
      goto LABEL_22;
    }

    return;
  }

  if (v4 > 357)
  {
    if (v4 == 358)
    {
      v26 = v7 & 0xFE;
      if (v26 == 18)
      {
        v7 = *(**(v5 + 16) + 8);
      }

      if (v7 >= 4u && v7 != 5 && (v7 & 0xFD) != 4)
      {
        goto LABEL_130;
      }

      v27 = v8 & 0xFE;
      if (v27 == 18)
      {
        v8 = *(**(v6 + 16) + 8);
      }

      v28 = v8 < 4u || v8 == 5;
      v29 = v8 & 0xFD;
      if (!v28 && v29 != 4)
      {
LABEL_130:
        v12 = "llvm.vp.fptrunc intrinsic first argument and result element type must be floating-point";
        goto LABEL_22;
      }

      if (v26 == 18)
      {
        v5 = **(v5 + 16);
      }

      v31 = llvm::Type::getPrimitiveSizeInBits(v5);
      if (v27 == 18)
      {
        v6 = **(v6 + 16);
      }

      if (v31 >= llvm::Type::getPrimitiveSizeInBits(v6))
      {
        v12 = "llvm.vp.fptrunc intrinsic the bit size of first argument must be larger than the bit size of the return type";
        goto LABEL_22;
      }
    }

    else if (v4 == 365)
    {
      if ((v7 & 0xFE) == 0x12)
      {
        v7 = *(**(v5 + 16) + 8);
      }

      if (v7 != 15)
      {
        goto LABEL_50;
      }

      if ((v8 & 0xFE) == 0x12)
      {
        v8 = *(**(v6 + 16) + 8);
      }

      if (v8 != 13)
      {
LABEL_50:
        v12 = "llvm.vp.inttoptr intrinsic first argument element type must be integer and result element type must be pointer";
        goto LABEL_22;
      }
    }

    else
    {
      if ((v7 & 0xFE) == 0x12)
      {
        v7 = *(**(v5 + 16) + 8);
      }

      if (v7 != 13)
      {
        goto LABEL_127;
      }

      if ((v8 & 0xFE) == 0x12)
      {
        v8 = *(**(v6 + 16) + 8);
      }

      if (v8 != 15)
      {
LABEL_127:
        v12 = "llvm.vp.ptrtoint intrinsic first argument element type must be pointer and result element type must be integer";
        goto LABEL_22;
      }
    }
  }

  else if ((v4 - 356) >= 2)
  {
    v20 = v7 & 0xFE;
    if (v20 == 18)
    {
      v7 = *(**(v5 + 16) + 8);
    }

    if (v7 >= 4u && v7 != 5 && (v7 & 0xFD) != 4)
    {
      goto LABEL_129;
    }

    v21 = v8 & 0xFE;
    if (v21 == 18)
    {
      v8 = *(**(v6 + 16) + 8);
    }

    v22 = v8 < 4u || v8 == 5;
    v23 = v8 & 0xFD;
    if (!v22 && v23 != 4)
    {
LABEL_129:
      v12 = "llvm.vp.fpext intrinsic first argument and result element type must be floating-point";
      goto LABEL_22;
    }

    if (v20 == 18)
    {
      v5 = **(v5 + 16);
    }

    v25 = llvm::Type::getPrimitiveSizeInBits(v5);
    if (v21 == 18)
    {
      v6 = **(v6 + 16);
    }

    if (v25 <= llvm::Type::getPrimitiveSizeInBits(v6))
    {
      v12 = "llvm.vp.fpext intrinsic the bit size of first argument must be smaller than the bit size of the return type";
      goto LABEL_22;
    }
  }

  else
  {
    if ((v7 & 0xFE) == 0x12)
    {
      v7 = *(**(v5 + 16) + 8);
    }

    if (v7 != 13)
    {
      goto LABEL_20;
    }

    if ((v8 & 0xFE) == 0x12)
    {
      v8 = *(**(v6 + 16) + 8);
    }

    v9 = v8 < 4u || v8 == 5;
    v10 = v8 & 0xFD;
    if (!v9 && v10 != 4)
    {
LABEL_20:
      v12 = "llvm.vp.fptoui or llvm.vp.fptosi intrinsic first argument element type must be floating-point and result element type must be integer";
LABEL_22:
      v33[0] = v12;
      v34 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Function>(a1, v33, this);
    }
  }
}

void anonymous namespace::Verifier::visitConstrainedFPIntrinsic(llvm::raw_ostream **this, llvm::ConstrainedFPIntrinsic *a2)
{
  v2 = *(*(a2 - 4) + 36);
  v3 = 1;
  v4 = 2;
  v7 = 2;
  switch(v2)
  {
    case 'Q':
    case 'R':
    case 'S':
    case '_':
    case 'b':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'm':
    case 'p':
    case 's':
    case 't':
    case 'u':
    case 'w':
      v4 = 1;
      break;
    case 'T':
    case 'W':
    case 'Z':
    case 'a':
    case 'n':
    case 'o':
      break;
    case 'U':
    case 'V':
    case 'i':
    case 'j':
    case 'k':
    case 'l':
      v3 = 0;
      goto LABEL_5;
    case 'Y':
    case '[':
      v4 = 3;
      break;
    default:
      v3 = 0;
      v4 = 1;
LABEL_5:
      v7 = 1;
      break;
  }

  if ((v2 - 85) >= 2)
  {
    v8 = v4;
  }

  else
  {
    v8 = v4 + 1;
  }

  v9 = v8 + v7;
  v10 = llvm::CallBase::arg_end(a2);
  v11 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  if (v9 != ((v10 - v11) >> 5))
  {
    v42 = "invalid arguments for constrained FP intrinsic";
    goto LABEL_28;
  }

  v12 = *(*(a2 - 4) + 36);
  if (v12 > 94)
  {
    v23 = v12 - 98;
    if ((v12 - 98) > 0x15)
    {
      goto LABEL_47;
    }

    if (((1 << v23) & 0x21) != 0 || ((1 << v23) & 0x42) != 0)
    {
      if ((*(**v11 + 8) & 0xFE) == 0x12 || (*(*a2 + 8) & 0xFE) == 0x12)
      {
        v42 = "Intrinsic does not support vectors";
        goto LABEL_28;
      }

      goto LABEL_96;
    }

    if (((1 << v23) & 0x240000) == 0)
    {
LABEL_47:
      if (v12 != 95)
      {
        goto LABEL_96;
      }

      goto LABEL_48;
    }

    v24 = **v11;
    v25 = *(v24 + 8);
    if ((*(v24 + 8) & 0xFE) == 0x12)
    {
      if (*(**(v24 + 16) + 8) == 13)
      {
        v26 = *(v24 + 32);
        v27 = *a2;
        v28 = *(*a2 + 8);
        if ((v26 != 0) != ((v28 & 0xFE) == 18))
        {
          goto LABEL_83;
        }

        v29 = (~v25 & 0x13) == 0;
        if ((v28 & 0xFE) == 0x12)
        {
          v28 = *(**(v27 + 16) + 8);
LABEL_90:
          if (v28 >= 4u && v28 != 5 && (v28 & 0xFD) != 4)
          {
            v42 = "Intrinsic result must be a floating point";
            goto LABEL_28;
          }

          if (v27 && (v26 != *(v27 + 32) || ((v29 ^ (*(v27 + 8) != 19)) & 1) == 0))
          {
            goto LABEL_101;
          }

          goto LABEL_96;
        }

LABEL_89:
        v27 = 0;
        goto LABEL_90;
      }
    }

    else if (v25 == 13)
    {
      v28 = *(*a2 + 8);
      if ((v28 & 0xFE) == 0x12)
      {
        goto LABEL_83;
      }

      v29 = 0;
      v26 = 0;
      goto LABEL_89;
    }

    v42 = "Intrinsic first argument must be integer";
    goto LABEL_28;
  }

  if ((v12 - 85) < 2)
  {
    if (getFPPredicateFromMD(v11[8]) >= 0x10)
    {
      v42 = "invalid predicate for constrained FP comparison intrinsic";
      goto LABEL_28;
    }

    goto LABEL_96;
  }

  if ((v12 - 93) < 2)
  {
    v13 = **v11;
    v14 = *(v13 + 8);
    LOBYTE(v15) = v14;
    if ((v14 & 0xFE) == 0x12)
    {
      v15 = *(**(v13 + 16) + 8);
    }

    v16 = v15 < 4u || v15 == 5;
    v17 = v15 & 0xFD;
    if (!v16 && v17 != 4)
    {
      v42 = "Intrinsic first argument must be floating point";
LABEL_28:
      v43 = a2;
      v44 = v42;
      v45 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v44, &v43);
      return;
    }

    if ((v14 & 0xFE) == 0x12)
    {
      v19 = *(v13 + 32);
      v20 = *a2;
      v21 = *(*a2 + 8);
      if ((v19 != 0) == ((v21 & 0xFE) == 18))
      {
        v22 = (~v14 & 0x13) == 0;
        if ((v21 & 0xFE) == 0x12)
        {
          v21 = *(**(v20 + 16) + 8);
          goto LABEL_76;
        }

LABEL_75:
        v20 = 0;
        v21 = v21;
LABEL_76:
        if (v21 != 13)
        {
          v42 = "Intrinsic result must be an integer";
          goto LABEL_28;
        }

        if (v20 && (v19 != *(v20 + 32) || ((v22 ^ (*(v20 + 8) != 19)) & 1) == 0))
        {
LABEL_101:
          v42 = "Intrinsic first argument and result vector lengths must be equal";
          goto LABEL_28;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v21 = *(*a2 + 8);
      if ((v21 & 0xFE) != 0x12)
      {
        v22 = 0;
        v19 = 0;
        goto LABEL_75;
      }
    }

LABEL_83:
    v42 = "Intrinsic first argument and result disagree on vector use";
    goto LABEL_28;
  }

  if (v12 != 92)
  {
    goto LABEL_96;
  }

LABEL_48:
  v30 = **v11;
  v31 = *(v30 + 8);
  v32 = v31 & 0xFE;
  LOBYTE(v33) = v31;
  if (v32 == 18)
  {
    v33 = *(**(v30 + 16) + 8);
  }

  v34 = v33 < 4u || v33 == 5;
  v35 = v33 & 0xFD;
  if (!v34 && v35 != 4)
  {
    v42 = "Intrinsic first argument must be FP or FP vector";
    goto LABEL_28;
  }

  v37 = *a2;
  v38 = *(*a2 + 8) & 0xFE;
  LOBYTE(v39) = *(*a2 + 8);
  if (v38 == 18)
  {
    v39 = *(**(v37 + 16) + 8);
  }

  if (v39 >= 4u && v39 != 5 && (v39 & 0xFD) != 4)
  {
    v42 = "Intrinsic result must be FP or FP vector";
    goto LABEL_28;
  }

  if ((v32 == 18) != (v38 == 18))
  {
    goto LABEL_83;
  }

  if (v32 == 18)
  {
    if (*(v30 + 32) != *(v37 + 32) || ((~v31 & 0x13) == 0) == (*(*a2 + 8) != 19))
    {
      goto LABEL_101;
    }

    v30 = **(v30 + 16);
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v30);
  if (v38 == 18)
  {
    v37 = **(v37 + 16);
  }

  v41 = llvm::Type::getPrimitiveSizeInBits(v37);
  if (v12 == 95)
  {
    if (PrimitiveSizeInBits <= v41)
    {
      v42 = "Intrinsic first argument's type must be larger than result type";
      goto LABEL_28;
    }
  }

  else if (PrimitiveSizeInBits >= v41)
  {
    v42 = "Intrinsic first argument's type must be smaller than result type";
    goto LABEL_28;
  }

LABEL_96:
  if ((llvm::ConstrainedFPIntrinsic::getExceptionBehavior(a2) & 0x100) == 0)
  {
    v42 = "invalid exception behavior argument";
    goto LABEL_28;
  }

  if (v3 && (llvm::ConstrainedFPIntrinsic::getRoundingMode(a2) & 0x100) == 0)
  {
    v42 = "invalid rounding mode argument";
    goto LABEL_28;
  }
}

void anonymous namespace::Verifier::visitDbgIntrinsic(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 20);
  v9 = *(*(a4 - 32 * (v8 & 0x7FFFFFF)) + 24);
  v69 = v9;
  v10 = *v9;
  v11 = v10 > 0x21;
  v12 = (1 << v10) & 0x200000006;
  if (!v11 && v12 != 0)
  {
    v14 = -(v8 & 0x7FFFFFF);
    goto LABEL_6;
  }

  if (!llvm::MDNode::classof(v9))
  {
LABEL_28:
    v65 = 1283;
    v62[0] = "invalid llvm.dbg.";
    v63 = a2;
    v64 = a3;
    v66[0] = v62;
    v67 = " intrinsic address/value";
    v68 = 770;
    v56[0] = a4;
    v33 = &v69;
LABEL_33:
    llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Instruction *,llvm::MDNode *>(a1, v66, v56, v33);
    return;
  }

  v32 = *(v9 - 2);
  if ((v32 & 2) != 0)
  {
    if (*(v9 - 6))
    {
      goto LABEL_28;
    }
  }

  else if (((v32 >> 6) & 0xF) != 0)
  {
    goto LABEL_28;
  }

  v8 = *(a4 + 20);
  v14 = -(v8 & 0x7FFFFFF);
LABEL_6:
  v15 = a4 + 32 * v14;
  v16 = *(*(v15 + 32) + 24);
  if (*v16 != 25)
  {
    v65 = 1283;
    v62[0] = "invalid llvm.dbg.";
    v63 = a2;
    v64 = a3;
    v31 = " intrinsic variable";
LABEL_30:
    v66[0] = v62;
    v67 = v31;
    v34 = 770;
LABEL_31:
    v68 = v34;
    v56[0] = a4;
    v61 = v16;
LABEL_32:
    v33 = &v61;
    goto LABEL_33;
  }

  v16 = *(*(v15 + 64) + 24);
  if (*v16 != 6)
  {
    v65 = 1283;
    v62[0] = "invalid llvm.dbg.";
    v63 = a2;
    v64 = a3;
    v31 = " intrinsic expression";
    goto LABEL_30;
  }

  v17 = *(*(a4 - 32) + 36);
  v18 = v17 == 56;
  if (v17 == 56)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0;
  }

  v62[0] = v19;
  if (!v18)
  {
LABEL_20:
    v28 = *(a4 + 48);
    if (!v28 || *v28 == 5)
    {
      v29 = *(a4 + 40);
      v61 = v29;
      if (v29)
      {
        v30 = *(v29 + 56);
      }

      else
      {
        v30 = 0;
      }

      v60 = v30;
      v35 = *(*(a4 - 32 * (*(a4 + 20) & 0x7FFFFFF) + 32) + 24);
      v58 = v28;
      v59 = v35;
      if (v28)
      {
        v36 = (v35 - 16);
        v37 = *(v35 - 16);
        if ((v37 & 2) != 0)
        {
          v38 = *(v35 - 32);
        }

        else
        {
          v38 = &v36[-((v37 >> 2) & 0xF)];
        }

        Subprogram = getSubprogram(*v38);
        v43 = v28 - 16;
        v42 = *(v28 - 2);
        if ((v42 & 2) != 0)
        {
          v44 = *(v28 - 4);
        }

        else
        {
          v44 = &v43[-((v42 >> 2) & 0xF)];
        }

        v45 = getSubprogram(*v44);
        if (Subprogram)
        {
          v46 = v45 == 0;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          if (Subprogram == v45)
          {
            if ((v37 & 2) != 0)
            {
              v48 = *(v35 - 32);
            }

            else
            {
              v48 = &v36[-((v37 >> 2) & 0xF)];
            }

            v50 = v48[3];
            if (v50 && (v51 = *v50, (v51 - 11) >= 4) && v51 != 34)
            {
              v66[0] = "invalid type ref";
              v68 = 259;
              if ((v37 & 2) != 0)
              {
                v52 = *(v35 - 32);
              }

              else
              {
                v52 = &v36[-((v37 >> 2) & 0xF)];
              }

              v62[0] = v52[3];
              llvm::VerifierSupport::DebugInfoCheckFailed<llvm::MDNode const*,llvm::Metadata const*>(a1, v66, &v59, v62);
            }

            else
            {
            }
          }

          else
          {
            v65 = 1283;
            v62[0] = "mismatched subprogram between llvm.dbg.";
            v63 = a2;
            v64 = a3;
            v56[0] = " variable and !dbg attachment";
            v57 = 259;
            llvm::operator+(v62, v56, v66);
            v55 = a4;
            if ((*v36 & 2) != 0)
            {
              v47 = *(v35 - 32);
            }

            else
            {
              v47 = &v36[-((*v36 >> 2) & 0xFLL)];
            }

            v54 = llvm::DILocalScope::getSubprogram(*v47);
            if ((*v43 & 2) != 0)
            {
              v49 = *(v28 - 4);
            }

            else
            {
              v49 = &v43[-((*v43 >> 2) & 0xFLL)];
            }

            v53 = llvm::DILocalScope::getSubprogram(*v49);
            llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DbgVariableIntrinsic *,llvm::BasicBlock *,llvm::Function *,llvm::DILocalVariable *,llvm::DISubprogram *,llvm::DILocation *,llvm::DISubprogram *>(a1, v66, &v55, &v61, &v60, &v59, &v54, &v58, &v53);
          }
        }
      }

      else
      {
        v65 = 1283;
        v62[0] = "llvm.dbg.";
        v63 = a2;
        v64 = a3;
        v66[0] = v62;
        v67 = " intrinsic requires a !dbg attachment";
        v68 = 770;
        llvm::VerifierSupport::DebugInfoCheckFailed(a1, v66);
        if (*a1)
        {
          llvm::VerifierSupport::Write(a1, a4);
          llvm::VerifierSupport::WriteTs<llvm::BasicBlock *,llvm::Function *>(a1, v29, &v60);
        }
      }
    }

    return;
  }

  v20 = v8 & 0x7FFFFFF;
  v21 = a4 - 32 * v20;
  v16 = *(*(v21 + 96) + 24);
  if (*v16 != 29)
  {
    v66[0] = "invalid llvm.dbg.assign intrinsic DIAssignID";
    v34 = 259;
    goto LABEL_31;
  }

  v22 = *(*(v21 + 128) + 24);
  if (*v22 - 1 >= 2)
  {
    if (!llvm::MDNode::classof(*(*(v21 + 128) + 24)) || ((v39 = *(v22 - 2), (v39 & 2) != 0) ? (v40 = *(v22 - 6)) : (v40 = (v39 >> 6) & 0xF), v40))
    {
      v66[0] = "invalid llvm.dbg.assign intrinsic address";
      v68 = 259;
      v56[0] = a4;
      v24 = *(*(a4 - 32 * (*(a4 + 20) & 0x7FFFFFF) + 128) + 24);
      goto LABEL_69;
    }

    v20 = *(a4 + 20) & 0x7FFFFFF;
  }

  v23 = a4 - 32 * v20;
  v24 = *(*(v23 + 160) + 24);
  if (*v24 != 6)
  {
    v66[0] = "invalid llvm.dbg.assign intrinsic address expression";
    v68 = 259;
    v56[0] = a4;
LABEL_69:
    v61 = v24;
    goto LABEL_32;
  }

  AssignmentInsts = llvm::at::getAssignmentInsts(*(*(v23 + 96) + 24));
  if (AssignmentInsts == v26)
  {
    goto LABEL_20;
  }

  v27 = *(*(a4 + 40) + 56);
  while (1)
  {
    v56[0] = *AssignmentInsts;
    if (v27 != *(v56[0][5] + 7))
    {
      break;
    }

    if (++AssignmentInsts == v26)
    {
      goto LABEL_20;
    }
  }

  v66[0] = "inst not in same function as dbg.assign";
  v68 = 259;
  llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Instruction *,llvm::DbgAssignIntrinsic *>(a1, v66, v56, v62);
}

void anonymous namespace::Verifier::visitDbgLabelIntrinsic(llvm::raw_ostream **this, uint64_t a2)
{
  v4 = *(*(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF)) + 24);
  if (*v4 != 26)
  {
    v29 = 1283;
    v26[0] = "invalid llvm.dbg.";
    v27 = "label";
    v28 = 5;
    v30[0] = v26;
    v31 = " intrinsic variable";
    v32 = 770;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v30);
    if (!*this)
    {
      return;
    }

    llvm::VerifierSupport::Write(this, a2);
    v8 = this;
    v9 = v4;
    goto LABEL_8;
  }

  v5 = *(a2 + 48);
  if (!v5 || *v5 == 5)
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    v25 = v7;
    if (v5)
    {
      v10 = v4 - 16;
      v11 = *(v4 - 2);
      v24 = v7;
      if ((v11 & 2) != 0)
      {
        v12 = *(v4 - 4);
      }

      else
      {
        v12 = &v10[-8 * ((v11 >> 2) & 0xF)];
      }

      Subprogram = getSubprogram(*v12);
      v15 = v5 - 16;
      v14 = *(v5 - 2);
      if ((v14 & 2) != 0)
      {
        v16 = *(v5 - 4);
      }

      else
      {
        v16 = &v15[-8 * ((v14 >> 2) & 0xF)];
      }

      v17 = getSubprogram(*v16);
      if (Subprogram != v17 && Subprogram != 0 && v17 != 0)
      {
        v29 = 1283;
        v26[0] = "mismatched subprogram between llvm.dbg.";
        v27 = "label";
        v28 = 5;
        v30[0] = v26;
        v31 = " label and !dbg attachment";
        v32 = 770;
        v20 = (v11 & 2) != 0 ? *(v4 - 4) : &v10[-8 * ((v11 >> 2) & 0xF)];
        v21 = llvm::DILocalScope::getSubprogram(*v20);
        v22 = (v14 & 2) != 0 ? *(v5 - 4) : &v15[-8 * ((v14 >> 2) & 0xF)];
        v23 = llvm::DILocalScope::getSubprogram(*v22);
        llvm::VerifierSupport::DebugInfoCheckFailed(this, v30);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
          if (v6)
          {
            llvm::VerifierSupport::Write(this, v6);
          }

          if (v24)
          {
            llvm::VerifierSupport::Write(this, v24);
          }

          llvm::VerifierSupport::Write(this, v4);
          llvm::VerifierSupport::Write(this, v21);
          llvm::VerifierSupport::Write(this, v5);
          v8 = this;
          v9 = v23;
LABEL_8:
          llvm::VerifierSupport::Write(v8, v9);
        }
      }
    }

    else
    {
      v29 = 1283;
      v26[0] = "llvm.dbg.";
      v27 = "label";
      v28 = 5;
      v30[0] = v26;
      v31 = " intrinsic requires a !dbg attachment";
      v32 = 770;
      llvm::VerifierSupport::CheckFailed(this, v30);
      if (*this)
      {
        llvm::VerifierSupport::Write(this, a2);
        llvm::VerifierSupport::WriteTs<llvm::BasicBlock *,llvm::Function *>(this, v6, &v25);
      }
    }
  }
}

void llvm::VerifierSupport::CheckFailed<llvm::CallBase,llvm::CallBase>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type **a3, llvm::Type **a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, a3);

    llvm::VerifierSupport::Write(a1, a4);
  }
}

void anonymous namespace::Verifier::verifyStatepoint(llvm::raw_ostream **this, const llvm::CallBase *a2)
{
  if (!llvm::CallBase::getMemoryEffects(a2) || (MemoryEffects = llvm::CallBase::getMemoryEffects(a2), !(((MemoryEffects >> 2) | (MemoryEffects >> 4)) & 2 | MemoryEffects & 2)) || llvm::CallBase::getMemoryEffects(a2) <= 3)
  {
    v5 = "gc.statepoint must read and write all memory to preserve reordering restrictions required by safepoint semantics";
    goto LABEL_5;
  }

  v6 = *(a2 + 5) & 0x7FFFFFF;
  v7 = (a2 - 32 * v6);
  v8 = v7[4];
  v9 = *(v8 + 32);
  if (v9 > 0x40)
  {
    if ((**(v8 + 24) & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((*(v8 + 24) << -v9) >> -v9 < 0)
  {
LABEL_9:
    v5 = "gc.statepoint number of patchable bytes must be positive";
    goto LABEL_5;
  }

  ParamElementType = llvm::AttributeList::getParamElementType((a2 + 64), 2);
  if (!ParamElementType)
  {
    v5 = "gc.statepoint callee argument must have elementtype attribute";
    goto LABEL_5;
  }

  v11 = *(ParamElementType + 8);
  if (v11 != 14)
  {
    v5 = "gc.statepoint callee elementtype must be function type";
    goto LABEL_5;
  }

  v12 = v7[12];
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  if ((v14 & 0x80000000) != 0)
  {
    v5 = "gc.statepoint number of arguments to underlying call must be positive";
    goto LABEL_5;
  }

  v15 = (*(ParamElementType + 12) - 1);
  if (v11 < 0x100)
  {
    if (v15 != v14)
    {
      v5 = "gc.statepoint mismatch in number of call args";
      goto LABEL_5;
    }
  }

  else
  {
    if (v15 > v14)
    {
      v5 = "gc.statepoint mismatch in number of vararg call args";
      goto LABEL_5;
    }

    if (*(**(ParamElementType + 16) + 8) != 7)
    {
      v5 = "gc.statepoint doesn't support wrapping non-void vararg functions yet";
      goto LABEL_5;
    }
  }

  v16 = v7[16];
  v17 = (v16 + 24);
  if (*(v16 + 32) >= 0x41u)
  {
    v17 = *v17;
  }

  if (*v17 >= 4uLL)
  {
    v5 = "unknown flag used in gc.statepoint flags argument";
    goto LABEL_5;
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = *(a2 + 8);
    v20 = 160 - 32 * v6;
    while (**(a2 + v20) == *(*(ParamElementType + 16) + 8 + 8 * v18))
    {
      if (v11 >= 0x100)
      {
        if (v19)
        {
          if ((v18 + 7) < *(v19 + 8))
          {
            v21 = *(v19 + 96 + 8 * v18);
            if (v21)
            {
              if ((*(v21 + 21) & 4) != 0)
              {
                v5 = "Attribute 'sret' cannot be used for vararg call arguments!";
                goto LABEL_5;
              }
            }
          }
        }
      }

      ++v18;
      v20 += 32;
      if (v15 == v18)
      {
        goto LABEL_37;
      }
    }

    v5 = "gc.statepoint call argument does not match wrapped function type";
LABEL_5:
    v34[0] = v5;
    v35 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function>(this, v34, a2);
    return;
  }

LABEL_37:
  v22 = v7[4 * (v14 + 5)];
  if (*(v22 + 16) != 16)
  {
    v5 = "gc.statepoint number of transition arguments must be constant integer";
    goto LABEL_5;
  }

  v23 = (v22 + 24);
  if (*(v22 + 32) >= 0x41u)
  {
    v23 = *v23;
  }

  if (*v23)
  {
    v5 = "gc.statepoint w/inline transition bundle is deprecated";
    goto LABEL_5;
  }

  v24 = v7[4 * (v14 + 6)];
  if (*(v24 + 16) != 16)
  {
    v5 = "gc.statepoint number of deoptimization arguments must be constant integer";
    goto LABEL_5;
  }

  v25 = (v24 + 24);
  if (*(v24 + 32) >= 0x41u)
  {
    v25 = *v25;
  }

  if (*v25)
  {
    v5 = "gc.statepoint w/inline deopt operands is deprecated";
    goto LABEL_5;
  }

  if (v14 + 7 != ((llvm::CallBase::arg_end(a2) - (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF))) >> 5))
  {
    v5 = "gc.statepoint too many arguments";
    goto LABEL_5;
  }

  v26 = *(a2 + 1);
  if (!v26)
  {
    return;
  }

  while (1)
  {
    v27 = *(v26 + 24);
    if (*(v27 + 16) == 84)
    {
      v28 = *(v26 + 24);
    }

    else
    {
      v28 = 0;
    }

    v32 = v28;
    v33 = v27;
    if (!v28)
    {
      v30 = "illegal use of statepoint token";
LABEL_71:
      v34[0] = v30;
      v35 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::CallBase,llvm::Value *>(this, v34, a2, &v33);
      return;
    }

    if (!llvm::GCRelocateInst::classof(v28) && !llvm::GCResultInst::classof(v28, v29))
    {
      v30 = "gc.result or gc.relocate are the only value uses of a gc.statepoint";
      goto LABEL_71;
    }

    if (!llvm::GCResultInst::classof(v28, v29))
    {
      break;
    }

    if (*(v28 - 32 * (*(v28 + 20) & 0x7FFFFFF)) != a2)
    {
      v31 = "gc.result connected to wrong gc.statepoint";
      goto LABEL_73;
    }

LABEL_66:
    v26 = *(v26 + 8);
    if (!v26)
    {
      return;
    }
  }

  if (!llvm::GCRelocateInst::classof(a2) || *(v28 - 32 * (*(v28 + 20) & 0x7FFFFFF)) == a2)
  {
    goto LABEL_66;
  }

  v31 = "gc.relocate connected to wrong gc.statepoint";
LABEL_73:
  v34[0] = v31;
  v35 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::CallBase,llvm::Value *>(this, v34, a2, &v32);
}

void llvm::VerifierSupport::CheckFailed<llvm::CallBase,llvm::Value *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type **a3, llvm::Type ***a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, a3);
    v7 = *a4;
    if (*a4)
    {

      llvm::VerifierSupport::Write(a1, v7);
    }
  }
}

uint64_t anonymous namespace::Verifier::visitIntrinsicCall(unsigned int,llvm::CallBase &)::$_2::operator()(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  v2 = (*(*a1 + 16))(a1, a2);
  return ((v2 & 0x100) == 0) | v2 & 1u;
}

uint64_t *llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::operator=(uint64_t *a1, uint64_t a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::destroyAll(a1);
  MEMORY[0x277C69E30](*a1, 8);
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 4) = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 2) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 16);
  *(a2 + 16) = v5;
  return a1;
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::Instruction *,llvm::DbgAssignIntrinsic *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, llvm::Type ***a4)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    v7 = *a4;
    if (*a4)
    {

      llvm::VerifierSupport::Write(a1, v7);
    }
  }
}

unsigned __int8 *getSubprogram(unsigned __int8 *result)
{
  for (; result; result = *(v3 + 8))
  {
    v1 = *result;
    if (v1 == 17)
    {
      break;
    }

    if ((v1 & 0xFE) != 0x12)
    {
      return 0;
    }

    v2 = *(result - 2);
    if ((v2 & 2) != 0)
    {
      v3 = *(result - 4);
    }

    else
    {
      v3 = &result[-8 * ((v2 >> 2) & 0xF) - 16];
    }
  }

  return result;
}

void llvm::VerifierSupport::DebugInfoCheckFailed<llvm::DbgVariableIntrinsic *,llvm::BasicBlock *,llvm::Function *,llvm::DILocalVariable *,llvm::DISubprogram *,llvm::DILocation *,llvm::DISubprogram *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, llvm::Type ***a4, llvm::Type ***a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  llvm::VerifierSupport::DebugInfoCheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    if (*a4)
    {
      llvm::VerifierSupport::Write(a1, *a4);
    }

    if (*a5)
    {
      llvm::VerifierSupport::Write(a1, *a5);
    }

    llvm::VerifierSupport::Write(a1, *a6);
    v16 = *a7;

    llvm::VerifierSupport::WriteTs<llvm::DISubprogram *,llvm::DILocation *,llvm::DISubprogram *>(a1, v16, a8, a9);
  }
}

void anonymous namespace::Verifier::verifyFnArgs(_anonymous_namespace_::Verifier *this, const llvm::DbgVariableIntrinsic *a2)
{
  if (*(this + 801) != 1)
  {
    return;
  }

  v19 = v2;
  v20 = v3;
  v6 = *(a2 + 6);
  v7 = *(v6 - 16);
  if ((v7 & 2) != 0)
  {
    if (*(v6 - 24) == 2)
    {
      v8 = *(v6 - 32);
LABEL_7:
      if (*(v8 + 8))
      {
        return;
      }
    }
  }

  else if ((*(v6 - 16) & 0x3C0) == 0x80)
  {
    v8 = v6 - 16 - 8 * ((v7 >> 2) & 0xF);
    goto LABEL_7;
  }

  v9 = *((a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[4] + 24);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (*(v9 + 24))
    {
      v11 = (this + 1840);
      v12 = *(this + 462);
      v13 = v10 - v12;
      if (v10 > v12)
      {
        if (*(this + 463) < v10)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 1840, this + 1856, *(v9 + 24), 8);
          v12 = *(this + 462);
        }

        bzero((*(this + 230) + 8 * v12), 8 * v13);
        *(this + 462) = v12 + v13;
      }

      v14 = v10 - 1;
      v15 = *(*v11 + 8 * (v10 - 1));
      *(*v11 + 8 * v14) = v9;
      if (v15)
      {
        v16 = v15 == v9;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17[0] = "conflicting debug info for argument";
        v18 = 259;
        llvm::VerifierSupport::DebugInfoCheckFailed(this, v17);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, a2);
          llvm::VerifierSupport::Write(this, v15);
          llvm::VerifierSupport::Write(this, v9);
        }
      }
    }
  }

  else
  {
    v17[0] = "dbg intrinsic without variable";
    v18 = 259;
    llvm::VerifierSupport::DebugInfoCheckFailed(this, v17);
  }
}

llvm::raw_ostream *llvm::VerifierSupport::WriteTs<llvm::BasicBlock *,llvm::Function *>(llvm::raw_ostream *this, llvm::Type **a2, llvm::Type ***a3)
{
  v4 = this;
  if (a2)
  {
    this = llvm::VerifierSupport::Write(this, a2);
  }

  v5 = *a3;
  if (*a3)
  {

    return llvm::VerifierSupport::Write(v4, v5);
  }

  return this;
}

uint64_t llvm::VerifierSupport::WriteTs<llvm::DISubprogram *,llvm::DILocation *,llvm::DISubprogram *>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  llvm::VerifierSupport::Write(a1, a2);
  llvm::VerifierSupport::Write(a1, *a3);
  v7 = *a4;

  return llvm::VerifierSupport::Write(a1, v7);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>,llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>,llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>::InsertIntoBucketImpl<llvm::Function *>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>,llvm::Function *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::pair<unsigned int,unsigned int>>>::InsertIntoBucketImpl<llvm::Function *>(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::~DenseMap(uint64_t *a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>,llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::TinyPtrVector<llvm::BasicBlock *>>>::destroyAll(a1);
  MEMORY[0x277C69E30](*a1, 8);
  return a1;
}

uint64_t llvm::CastInfo<llvm::IntrinsicInst,llvm::Use const,void>::doCastIfPossible(uint64_t result)
{
  if (*(result + 16) != 84)
  {
    return 0;
  }

  v1 = *(result - 32);
  if (!v1 || *(v1 + 16) || *(v1 + 24) != *(result + 72))
  {
    return 0;
  }

  if ((*(v1 + 32) & 0x2000) == 0)
  {
    return 0;
  }

  return result;
}

void anonymous namespace::Verifier::visitEHPadPredecessors(llvm::raw_ostream **this, llvm::Type **a2)
{
  v2 = a2;
  v4 = a2[5];
  v5 = *(*(v4 + 7) + 80);
  if (v5)
  {
    v6 = (v5 - 24);
  }

  else
  {
    v6 = 0;
  }

  if (v4 == v6)
  {
    v58 = "EH pad cannot be in entry block.";
    v62[0] = 259;
    v55[0] = a2;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v58, v55);
    return;
  }

  v7 = *(a2 + 16);
  if (v7 == 94)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v55[0] = v8;
  if (v7 == 94)
  {
    v9 = *(v4 + 1);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 24);
        v11 = *(v10 + 16);
        v12 = v10 && v11 >= 0x1C;
        if (v12 && v11 - 29 <= 0xA)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          return;
        }
      }

LABEL_49:
      v24 = *(*(v10 + 40) + 40);
      v25 = v24 - 24;
      if (v24)
      {
        v26 = v24 - 24;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v26 + 16) - 40;
      if (v27 < 0xFFFFFFF5)
      {
        v25 = 0;
      }

      v28 = *(v25 + 16) == 33 && v27 >= 0xFFFFFFF5;
      if (v28 && *(v24 - 88) == v4 && *(v24 - 120) != v4)
      {
        while (1)
        {
          v9 = *(v9 + 8);
          if (!v9)
          {
            break;
          }

          v10 = *(v9 + 24);
          v21 = *(v10 + 16);
          if (v10)
          {
            v22 = v21 >= 0x1C;
          }

          else
          {
            v22 = 0;
          }

          if (v22 && v21 - 29 < 0xB)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v58 = "Block containing LandingPadInst must be jumped to only by the unwind edge of an invoke.";
        v62[0] = 259;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v58, v55);
      }
    }

    return;
  }

  if (v7 == 80)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v55[0] = v14;
  if (v7 == 80)
  {
    v15 = *(v4 + 1);
    if (!v15)
    {
      goto LABEL_63;
    }

    while (1)
    {
      v16 = *(v15 + 24);
      v17 = *(v16 + 16);
      v18 = v16 && v17 >= 0x1C;
      if (v18 && v17 - 40 > 0xFFFFFFF4)
      {
        break;
      }

      v15 = *(v15 + 8);
      if (!v15)
      {
        goto LABEL_63;
      }
    }

    if (llvm::BasicBlock::getUniquePredecessor(v4) == *(*(v14 - 4) + 5))
    {
LABEL_63:
      v30 = *(v14 - 4);
      if (*(v30 + 18))
      {
        v32 = *(v30 + 20);
        if ((v32 & 0x40000000) != 0)
        {
          v33 = *(v30 - 8);
        }

        else
        {
          v33 = v30 - 32 * (v32 & 0x7FFFFFF);
        }

        v31 = *(v33 + 32);
      }

      else
      {
        v31 = 0;
      }

      if (v4 == v31)
      {
        v58 = "Catchswitch cannot unwind to one of its catchpads";
        v62[0] = 259;
        llvm::VerifierSupport::CheckFailed(this, &v58);
        if (*this)
        {
          llvm::VerifierSupport::Write(this, v30);
          llvm::VerifierSupport::Write(this, v14);
        }
      }
    }

    else
    {
      v58 = "Block containg CatchPadInst must be jumped to only by its catchswitch.";
      v62[0] = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v58, v55);
    }

    return;
  }

  v66 = a2;
  if (v7 < 0x1C || v7 - 81 < 0xFFFFFFFE)
  {
    v29 = *(a2 + 5);
    if ((v29 & 0x40000000) != 0)
    {
      v20 = *(a2 - 1);
    }

    else
    {
      v20 = &a2[-4 * (v29 & 0x7FFFFFF)];
    }
  }

  else
  {
    v20 = a2 - 4;
  }

  v34 = *(v4 + 1);
  if (!v34)
  {
    return;
  }

  v35 = *v20;
  while (1)
  {
    v36 = *(v34 + 24);
    v37 = *(v36 + 16);
    v38 = v36 && v37 >= 0x1C;
    if (v38 && v37 - 29 < 0xB)
    {
      break;
    }

    v34 = *(v34 + 8);
    if (!v34)
    {
      return;
    }
  }

LABEL_80:
  v40 = *(*(v36 + 40) + 40);
  v41 = (v40 - 24);
  if (v40)
  {
    v42 = v40 - 24;
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v42 + 16) - 40;
  if (v43 >= 0xFFFFFFF5)
  {
    v44 = v40 - 24;
  }

  else
  {
    v44 = 0;
  }

  v65 = v44;
  v45 = *(v44 + 16);
  if (v45 == 33)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  v55[0] = v46;
  if (v43 >= 0xFFFFFFF5 && v45 == 33)
  {
    if (*(v40 - 88) != v4 || *(v40 - 120) == v4)
    {
      v58 = "EH pad must be jumped to via an unwind edge";
      v62[0] = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v58, &v66, v55);
      return;
    }

    llvm::CallBase::getOperandBundle(v41, 1, &v58);
    if (v61 == 1)
    {
      v41 = *v58;
    }

    else
    {
      v41 = llvm::ConstantTokenNone::get(**v41);
    }
  }

  else
  {
    if (v45 != 36)
    {
      v44 = 0;
    }

    v63 = v44;
    if (v43 >= 0xFFFFFFF5 && v45 == 36)
    {
      v41 = v41[-4 * (*(v40 - 4) & 0x7FFFFFF)];
      v64 = v41;
      if (v41 == v35)
      {
        v58 = "A cleanupret must exit its cleanup";
        v62[0] = 259;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, &v58, &v63);
        return;
      }

      goto LABEL_106;
    }

    if (v43 < 0xFFFFFFF5 || v45 != 38)
    {
      v58 = "EH pad must be jumped to via an unwind edge";
      v62[0] = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, &v58, &v66, &v65);
      return;
    }
  }

  v64 = v41;
LABEL_106:
  v58 = v62;
  v59 = v62;
  v60 = 8;
  v61 = 0;
  while (1)
  {
    if (v41 == v2)
    {
      v55[0] = "EH pad cannot handle exceptions raised within it";
      v57 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Argument const*,llvm::Function const*>(this, v55, &v64, &v65);
      goto LABEL_142;
    }

    if (v41 == v35)
    {
      break;
    }

    if (*(v41 + 16) == 20)
    {
      v54 = "A single unwind edge may only enter one EH pad";
      goto LABEL_141;
    }

    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v58, v41, v55);
    if ((v56 & 1) == 0)
    {
      v55[0] = "EH pad jumps through a cycle of pads";
      v57 = 259;
      llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, v55, &v64);
      goto LABEL_142;
    }

    v47 = *(v64 + 16);
    if (v47 < 0x1C || v47 - 79 >= 2)
    {
      if (v47 != 38)
      {
        v54 = "Parent pad must be catchpad/cleanuppad/catchswitch";
LABEL_141:
        v55[0] = v54;
        v57 = 259;
        llvm::VerifierSupport::CheckFailed<llvm::Function const*>(this, v55, &v65);
LABEL_142:
        if (v59 != v58)
        {
          free(v59);
        }

        return;
      }

      v49 = *(v64 + 5);
      if ((v49 & 0x40000000) != 0)
      {
        v50 = *(v64 - 1);
      }

      else
      {
        v50 = &v64[-4 * (v49 & 0x7FFFFFF)];
      }
    }

    else
    {
      v50 = v64 - 4;
    }

    v41 = *v50;
    v64 = *v50;
    v2 = v66;
  }

  if (v59 != v58)
  {
    free(v59);
  }

  while (1)
  {
    v34 = *(v34 + 8);
    if (!v34)
    {
      break;
    }

    v36 = *(v34 + 24);
    v51 = *(v36 + 16);
    if (v36)
    {
      v52 = v51 >= 0x1C;
    }

    else
    {
      v52 = 0;
    }

    if (v52 && v51 - 29 < 0xB)
    {
      goto LABEL_80;
    }
  }
}

void anonymous namespace::Verifier::visitBinaryOperator(llvm::raw_ostream **a1, uint64_t a2)
{
  v2 = **(a2 - 64);
  if (v2 != **(a2 - 32))
  {
    v3 = "Both operands to a binary operator are not of the same type!";
LABEL_3:
    v17 = a2;
    v18 = v3;
    v19 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, &v18, &v17);
    return;
  }

  v4 = *(a2 + 16);
  if (v4 > 0x31)
  {
    if (*(a2 + 16) > 0x37u)
    {
      v13 = *a2;
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v14 = *(**(v13 + 2) + 8);
      }

      else
      {
        v14 = *(*a2 + 8);
      }

      if (v14 != 13)
      {
        v3 = "Logical operators only work with integral types!";
        goto LABEL_3;
      }

      if (v13 != v2)
      {
        v3 = "Logical operators must have same type for operands and result!";
        goto LABEL_3;
      }

      goto LABEL_47;
    }

    if (v4 - 53 < 3)
    {
      v10 = *a2;
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v11 = *(**(v10 + 2) + 8);
      }

      else
      {
        v11 = *(*a2 + 8);
      }

      if (v11 != 13)
      {
        v3 = "Shifts only work with integral types!";
        goto LABEL_3;
      }

      if (v10 != v2)
      {
        v3 = "Shift return type must be same as operands!";
        goto LABEL_3;
      }

      goto LABEL_47;
    }

    v12 = v4 - 50;
LABEL_28:
    if (v12 >= 2)
    {
      goto LABEL_8;
    }

LABEL_29:
    v15 = *a2;
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v16 = *(**(v15 + 2) + 8);
    }

    else
    {
      v16 = *(*a2 + 8);
    }

    if (v16 != 13)
    {
      v3 = "Integer arithmetic operators only work with integral types!";
      goto LABEL_3;
    }

    if (v15 != v2)
    {
      v3 = "Integer arithmetic operators must have same type for operands and result!";
      goto LABEL_3;
    }

    goto LABEL_47;
  }

  if (*(a2 + 16) > 0x2Du)
  {
    v12 = v4 - 47;
    goto LABEL_28;
  }

  if (*(a2 + 16) <= 0x2Au)
  {
    if (v4 != 41)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  if (v4 != 44)
  {
    goto LABEL_29;
  }

LABEL_8:
  v5 = *a2;
  v6 = *(*a2 + 8);
  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(**(v5 + 2) + 8);
  }

  v7 = v6 < 4u || v6 == 5;
  v8 = v6 & 0xFD;
  if (!v7 && v8 != 4)
  {
    v3 = "Floating-point arithmetic operators only work with floating-point types!";
    goto LABEL_3;
  }

  if (v5 != v2)
  {
    v3 = "Floating-point arithmetic operators must have same type for operands and result!";
    goto LABEL_3;
  }

LABEL_47:
}

void llvm::VerifierSupport::CheckFailed<llvm::Type *,llvm::LoadInst *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type **a3, llvm::Type ***a4)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    llvm::VerifierSupport::Write(a1, *a3);
    v7 = *a4;
    if (*a4)
    {

      llvm::VerifierSupport::Write(a1, v7);
    }
  }
}

void anonymous namespace::Verifier::checkAtomicMemAccessSize(llvm::DataLayout **this, llvm::Type *a2, llvm::Type **a3)
{
  v9 = a3;
  v10 = a2;
  TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(this[22], a2);
  if (v4)
  {
  }

  if (TypeSizeInBits <= 7)
  {
    v6 = "atomic memory access' size must be byte-sized";
  }

  else
  {
    if ((TypeSizeInBits & (TypeSizeInBits - 1)) == 0)
    {
      return;
    }

    v6 = "atomic memory access' operand must have a power-of-two size";
  }

  v7 = v6;
  v8 = 259;
  llvm::VerifierSupport::CheckFailed<llvm::Type *,llvm::LoadInst *>(this, &v7, &v10, &v9);
}

void anonymous namespace::Verifier::visitFuncletPadInst(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v67[8] = *MEMORY[0x277D85DE8];
  v64 = v67;
  v66 = 8;
  v67[0] = a2;
  v59 = v63;
  v60 = v63;
  v61 = 8;
  v62 = 0;
  LODWORD(v5) = 1;
  do
  {
LABEL_2:
    v6 = *(v64 + v5 - 1);
    v65 = v5 - 1;
    llvm::SmallPtrSetImplBase::insert_imp(&v59, v6);
    if ((v7 & 1) == 0)
    {
      v57[0] = "FuncletPadInst must not be nested within itself";
      v58 = 259;
      v46 = a1;
      llvm::VerifierSupport::CheckFailed(a1, v57);
      if (v6)
      {
        v47 = *a1 == 0;
      }

      else
      {
        v47 = 1;
      }

      if (v47)
      {
        goto LABEL_145;
      }

      goto LABEL_118;
    }

    v8 = *(v6 + 8);
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        v10 = *(v8 + 24);
        v11 = *(v10 + 16);
        if (v10)
        {
          if (v11 == 36)
          {
            break;
          }
        }

        if (v10 && v11 == 38)
        {
          if ((*(v10 + 9) & 1) == 0)
          {
            goto LABEL_77;
          }

          v12 = *(v10 + 5);
          if ((v12 & 0x40000000) != 0)
          {
            v13 = *(v10 - 1);
LABEL_10:
            v14 = v13 + 4;
LABEL_19:
            v15 = *v14;
            if (v15)
            {
              for (i = *(v15 + 6); ; i = *(i + 8))
              {
                v17 = i - 24;
                v18 = i ? i - 24 : 0;
                if (*(v18 + 16) != 83)
                {
                  break;
                }
              }

              v20 = *(i - 8);
              if ((v20 - 38) > 0x38 || ((1 << (v20 - 38)) & 0x100060000000001) == 0)
              {
                goto LABEL_77;
              }

              if ((v20 - 81) >= 0xFFFFFFFE)
              {
                v23 = (i - 56);
              }

              else
              {
                v22 = *(i - 4);
                v23 = (v22 & 0x40000000) != 0 ? *(i - 32) : (v17 - 32 * (v22 & 0x7FFFFFF));
              }

              v19 = *v23;
              if (v19 == v6)
              {
                goto LABEL_77;
              }

              v27 = v6;
              while (v27 != a2)
              {
                if (v27 && ((v28 = *(v27 + 16), v28 >= 0x1C) ? (v29 = v28 - 81 >= 0xFFFFFFFE) : (v29 = 0), v29))
                {
                  v30 = (v27 - 32);
                }

                else
                {
                  v31 = *(v27 + 20);
                  if ((v31 & 0x40000000) != 0)
                  {
                    v30 = *(v27 - 8);
                  }

                  else
                  {
                    v30 = (v27 - 32 * (v31 & 0x7FFFFFF));
                  }
                }

                v27 = *v30;
                if (v27 == v19)
                {
                  v10 = v3;
                  goto LABEL_30;
                }

                if (*(v27 + 16) == 20)
                {
                  v10 = v3;
                  v19 = v9;
                  goto LABEL_30;
                }
              }

              goto LABEL_27;
            }

LABEL_26:
            v17 = llvm::ConstantTokenNone::get(**a2);
LABEL_27:
            if (v3)
            {
              if (v17 != v4)
              {
                v57[0] = "Unwind edges out of a funclet pad must have the same unwind dest";
                v58 = 259;
                llvm::VerifierSupport::CheckFailed(a1, v57);
                if (!*a1)
                {
                  goto LABEL_145;
                }

                llvm::VerifierSupport::Write(a1, a2);
                llvm::VerifierSupport::Write(a1, v10);
                v44 = a1;
                v45 = v3;
                goto LABEL_128;
              }

              v10 = v3;
              v19 = a2;
LABEL_30:
              v17 = v4;
            }

            else
            {
              if (*(a2 + 16) == 79)
              {
                v24 = *(v17 + 16);
                if (v24 != 20)
                {
                  if (v24 < 0x1C || v24 - 81 < 0xFFFFFFFE)
                  {
                    v32 = *(v17 + 20);
                    v25 = (v32 & 0x40000000) != 0 ? *(v17 - 8) : (v17 - 32 * (v32 & 0x7FFFFFF));
                  }

                  else
                  {
                    v25 = (v17 - 32);
                  }

                  if (*v25 == *(a2 - 32))
                  {
                    v57[0] = a2;
                    *llvm::MapVector<llvm::Instruction *,llvm::Instruction *,llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,std::vector<std::pair<llvm::Instruction *,llvm::Instruction *>>>::operator[]((a1 + 856), v57) = v10;
                  }
                }
              }

              v19 = a2;
            }

            v3 = v10;
            v4 = v17;
            v9 = v19;
            if (v6 != a2)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }

LABEL_9:
          v13 = &v10[-4 * (v12 & 0x7FFFFFF)];
          goto LABEL_10;
        }

        if (v10 && v11 == 33)
        {
          v14 = v10 - 8;
          goto LABEL_19;
        }

        if (v11 != 84)
        {
          if (v10 && v11 == 79)
          {
            v26 = v65;
            if (v65 >= v66)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 8);
              v26 = v65;
            }

            *(v64 + v26) = v10;
            ++v65;
          }

          else if (v11 != 37)
          {
            v57[0] = "Bogus funclet pad use";
            v58 = 259;
            llvm::VerifierSupport::CheckFailed(a1, v57);
            if (*a1)
            {
              v44 = a1;
              v45 = v10;
              goto LABEL_128;
            }

            goto LABEL_145;
          }
        }

LABEL_77:
        v8 = *(v8 + 8);
        v10 = v3;
        v17 = v4;
        v19 = v9;
        if (!v8)
        {
LABEL_78:
          v5 = v65;
          if (!v19 || v6 == v19)
          {
LABEL_108:
            v3 = v10;
            v4 = v17;
            if (v5)
            {
              goto LABEL_2;
            }
          }

          else
          {
            if (v65)
            {
              do
              {
                v33 = *(v64 + v5 - 1);
                v34 = *(v33 + 16);
                if (v33)
                {
                  v35 = v34 >= 0x1C;
                }

                else
                {
                  v35 = 0;
                }

                if (v35 && v34 - 81 >= 0xFFFFFFFE)
                {
                  v38 = (v33 - 32);
                }

                else
                {
                  v37 = *(v33 + 20);
                  if ((v37 & 0x40000000) != 0)
                  {
                    v38 = *(v33 - 8);
                  }

                  else
                  {
                    v38 = (v33 - 32 * (v37 & 0x7FFFFFF));
                  }
                }

                v39 = *v38;
                while (v6 != v39)
                {
                  if (v6 && ((v40 = *(v6 + 16), v40 >= 0x1C) ? (v41 = v40 - 81 >= 0xFFFFFFFE) : (v41 = 0), v41))
                  {
                    v42 = (v6 - 32);
                  }

                  else
                  {
                    v43 = *(v6 + 20);
                    if ((v43 & 0x40000000) != 0)
                    {
                      v42 = *(v6 - 8);
                    }

                    else
                    {
                      v42 = (v6 - 32 * (v43 & 0x7FFFFFF));
                    }
                  }

                  v6 = *v42;
                  if (*v42 == v19)
                  {
                    goto LABEL_108;
                  }
                }

                v65 = --v5;
              }

              while (v5);
            }

            v3 = v10;
            v4 = v17;
          }

          goto LABEL_120;
        }
      }

      if ((*(v10 + 9) & 1) == 0)
      {
        goto LABEL_26;
      }

      v12 = *(v10 + 5);
      goto LABEL_9;
    }

    LODWORD(v5) = v65;
  }

  while (v65);
LABEL_120:
  v46 = a1;
  if (!v4)
  {
    goto LABEL_144;
  }

  v6 = *(a2 - 32);
  if (!v6 || *(v6 + 16) != 38)
  {
    goto LABEL_144;
  }

  if ((*(v6 + 18) & 1) != 0 && ((v48 = *(v6 + 20), (v48 & 0x40000000) != 0) ? (v49 = *(v6 - 8)) : (v49 = v6 - 32 * (v48 & 0x7FFFFFF)), (v50 = *(v49 + 32)) != 0))
  {
    v51 = v50 + 40;
    for (j = *(v50 + 48); j != v51; j = *(j + 8))
    {
      v53 = j - 24;
      if (j)
      {
        v54 = j - 24;
      }

      else
      {
        v54 = 0;
      }

      if (*(v54 + 16) != 83)
      {
        goto LABEL_140;
      }
    }

    v53 = 0;
  }

  else
  {
    v53 = llvm::ConstantTokenNone::get(**a2);
  }

LABEL_140:
  if (v53 == v4)
  {
LABEL_144:
    goto LABEL_145;
  }

  v57[0] = "Unwind edges out of a catch must have the same unwind dest as the parent catchswitch";
  v58 = 259;
  llvm::VerifierSupport::CheckFailed(a1, v57);
  if (!*a1)
  {
    goto LABEL_145;
  }

  llvm::VerifierSupport::Write(a1, a2);
  if (v3)
  {
    llvm::VerifierSupport::Write(a1, v3);
  }

LABEL_118:
  v44 = v46;
  v45 = v6;
LABEL_128:
  llvm::VerifierSupport::Write(v44, v45);
LABEL_145:
  if (v60 != v59)
  {
    free(v60);
  }

  if (v64 != v67)
  {
    free(v64);
  }

  v55 = *MEMORY[0x277D85DE8];
}

BOOL isTypeCongruent(llvm::Type *a1, llvm::Type *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 8) == 15)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 8) == 15)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && (*(v3 + 2) ^ *(v2 + 2)) < 0x100;
}

uint64_t **getParameterABIAttributes(uint64_t **result, uint64_t *a2, int a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v13 = a4;
  *result = a2;
  result[1] = (result + 3);
  result[2] = 0x800000000;
  v8 = (a3 + 2);
  v9 = a4 + 40;
  do
  {
    while (!a4)
    {
      if (++v7 == 10)
      {
        return result;
      }
    }

    if (v8 < *(a4 + 8))
    {
      result = *(v9 + 8 * v8);
      if (result)
      {
        result = llvm::AttributeSetNode::findEnumAttribute(result, getParameterABIAttributes(llvm::LLVMContext &,unsigned int,llvm::AttributeList)::ABIAttrs[v7]);
        if (v10)
        {
          if (result)
          {
            result = llvm::AttrBuilder::addAttribute(v6, result);
          }
        }
      }
    }

    ++v7;
  }

  while (v7 != 10);
  if (v8 < *(a4 + 8))
  {
    v11 = *(v9 + 8 * v8);
    if (v11)
    {
      if ((*(v11 + 21) & 8) != 0 && (*(v11 + 20) & 0x60) != 0)
      {
        ParamAlignment = llvm::AttributeList::getParamAlignment(&v13, a3);

        return llvm::AttrBuilder::addAlignmentAttr(v6, ParamAlignment);
      }
    }
  }

  return result;
}

void anonymous namespace::Verifier::verifyTailCCMustTailAttrs(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (llvm::AttrBuilder::getAttribute(a2, 72))
  {
    v8 = "inalloca attribute not allowed in ";
  }

  else if (llvm::AttrBuilder::getAttribute(a2, 11))
  {
    v8 = "inreg attribute not allowed in ";
  }

  else if (llvm::AttrBuilder::getAttribute(a2, 64))
  {
    v8 = "swifterror attribute not allowed in ";
  }

  else if (llvm::AttrBuilder::getAttribute(a2, 73))
  {
    v8 = "preallocated attribute not allowed in ";
  }

  else
  {
    if (!llvm::AttrBuilder::getAttribute(a2, 69))
    {
      return;
    }

    v8 = "byref attribute not allowed in ";
  }

  v9[0] = v8;
  v9[2] = a3;
  v9[3] = a4;
  v10 = 1283;
  llvm::VerifierSupport::CheckFailed(a1, v9);
}

uint64_t getSuccPad(llvm::Instruction *a1)
{
  v1 = *(a1 + 16);
  if (a1 && v1 == 33)
  {
    v2 = (a1 - 64);
LABEL_14:
    v6 = *v2;
    goto LABEL_15;
  }

  v3 = *(a1 + 9);
  if (a1 && v1 == 38)
  {
    if (v3)
    {
      v4 = *(a1 + 5);
      if ((v4 & 0x40000000) != 0)
      {
        v5 = *(a1 - 1);
LABEL_13:
        v2 = (v5 + 32);
        goto LABEL_14;
      }

LABEL_12:
      v5 = a1 - 32 * (v4 & 0x7FFFFFF);
      goto LABEL_13;
    }
  }

  else if (v3)
  {
    v4 = *(a1 + 5);
    goto LABEL_12;
  }

  v6 = 0;
LABEL_15:
  v7 = v6 + 40;
  for (i = *(v6 + 48); i != v7; i = *(i + 8))
  {
    result = i - 24;
    if (i)
    {
      v10 = i - 24;
    }

    else
    {
      v10 = 0;
    }

    if (*(v10 + 16) != 83)
    {
      return result;
    }
  }

  return 0;
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::Verifier::verifyNoAliasScopeDecl(void)::$_0 &,llvm::IntrinsicInst **,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

              case 4:

              case 5:
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
              v105 = *(a2 - 1);
              v106 = *v9;
              v107 = *(*(v105 - 32 * (*(v105 + 20) & 0x7FFFFFF)) + 24);
              v110 = *(v107 - 16);
              v108 = v107 - 16;
              v109 = v110;
              if ((v110 & 2) != 0)
              {
                v111 = *(*(*(v105 - 32 * (*(v105 + 20) & 0x7FFFFFF)) + 24) - 32);
              }

              else
              {
                v111 = v108 - 8 * ((v109 >> 2) & 0xF);
              }

              v234 = *(*(v106 - 32 * (*(v106 + 20) & 0x7FFFFFF)) + 24);
              v237 = *(v234 - 16);
              v235 = v234 - 16;
              v236 = v237;
              if ((v237 & 2) != 0)
              {
                v238 = *(*(*(v106 - 32 * (*(v106 + 20) & 0x7FFFFFF)) + 24) - 32);
              }

              else
              {
                v238 = v235 - 8 * ((v236 >> 2) & 0xF);
              }

              if (v111 < v238)
              {
                *v9 = v105;
                *(a2 - 1) = v106;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v112 = v9 + 1;
            v114 = v9 == a2 || v112 == a2;
            if (a4)
            {
              if (!v114)
              {
                v115 = 8;
                v116 = v9;
                do
                {
                  v117 = v112;
                  v118 = v116[1];
                  v119 = *(*(v118 - 32 * (*(v118 + 20) & 0x7FFFFFF)) + 24);
                  v122 = *(v119 - 16);
                  v120 = v119 - 16;
                  v121 = v122;
                  if ((v122 & 2) != 0)
                  {
                    v123 = *(*(*(v118 - 32 * (*(v118 + 20) & 0x7FFFFFF)) + 24) - 32);
                  }

                  else
                  {
                    v123 = v120 - 8 * ((v121 >> 2) & 0xF);
                  }

                  v124 = *v116;
                  v125 = *(*(v124 - 32 * (*(v124 + 20) & 0x7FFFFFF)) + 24);
                  v128 = *(v125 - 16);
                  v126 = v125 - 16;
                  v127 = v128;
                  if ((v128 & 2) != 0)
                  {
                    v129 = *(*(*(v124 - 32 * (*(v124 + 20) & 0x7FFFFFF)) + 24) - 32);
                  }

                  else
                  {
                    v129 = v126 - 8 * ((v127 >> 2) & 0xF);
                  }

                  if (v123 < v129)
                  {
                    v130 = v115;
                    while (1)
                    {
                      *(v9 + v130) = v124;
                      v131 = v130 - 8;
                      if (v130 == 8)
                      {
                        break;
                      }

                      v132 = *(*(v118 - 32 * (*(v118 + 20) & 0x7FFFFFF)) + 24);
                      v135 = *(v132 - 16);
                      v133 = v132 - 16;
                      v134 = v135;
                      if ((v135 & 2) != 0)
                      {
                        v136 = *(*(*(v118 - 32 * (*(v118 + 20) & 0x7FFFFFF)) + 24) - 32);
                      }

                      else
                      {
                        v136 = v133 - 8 * ((v134 >> 2) & 0xF);
                      }

                      v124 = *(v9 + v130 - 16);
                      v137 = *(*(v124 - 32 * (*(v124 + 20) & 0x7FFFFFF)) + 24);
                      v140 = *(v137 - 16);
                      v138 = v137 - 16;
                      v139 = v140;
                      if ((v140 & 2) != 0)
                      {
                        v141 = *(*(*(v124 - 32 * (*(v124 + 20) & 0x7FFFFFF)) + 24) - 32);
                      }

                      else
                      {
                        v141 = v138 - 8 * ((v139 >> 2) & 0xF);
                      }

                      v130 -= 8;
                      if (v136 >= v141)
                      {
                        v142 = (v9 + v131);
                        goto LABEL_159;
                      }
                    }

                    v142 = v9;
LABEL_159:
                    *v142 = v118;
                  }

                  v112 = v117 + 1;
                  v115 += 8;
                  v116 = v117;
                }

                while (v117 + 1 != a2);
              }
            }

            else if (!v114)
            {
              do
              {
                v239 = v112;
                v240 = v7[1];
                v241 = *(*(v240 - 32 * (*(v240 + 20) & 0x7FFFFFF)) + 24);
                v244 = *(v241 - 16);
                v242 = v241 - 16;
                v243 = v244;
                if ((v244 & 2) != 0)
                {
                  v245 = *(*(*(v240 - 32 * (*(v240 + 20) & 0x7FFFFFF)) + 24) - 32);
                }

                else
                {
                  v245 = v242 - 8 * ((v243 >> 2) & 0xF);
                }

                v246 = *v7;
                v247 = *(*(*v7 - 32 * (*(*v7 + 20) & 0x7FFFFFF)) + 24);
                v250 = *(v247 - 16);
                v248 = v247 - 16;
                v249 = v250;
                if ((v250 & 2) != 0)
                {
                  v251 = *(*(*(*v7 - 32 * (*(*v7 + 20) & 0x7FFFFFF)) + 24) - 32);
                }

                else
                {
                  v251 = v248 - 8 * ((v249 >> 2) & 0xF);
                }

                if (v245 < v251)
                {
                  v252 = v239;
                  do
                  {
                    *v252 = v246;
                    v253 = *(*(v240 - 32 * (*(v240 + 20) & 0x7FFFFFF)) + 24);
                    v256 = *(v253 - 16);
                    v254 = v253 - 16;
                    v255 = v256;
                    if ((v256 & 2) != 0)
                    {
                      v257 = *(*(*(v240 - 32 * (*(v240 + 20) & 0x7FFFFFF)) + 24) - 32);
                    }

                    else
                    {
                      v257 = v254 - 8 * ((v255 >> 2) & 0xF);
                    }

                    v246 = *(v252 - 2);
                    v258 = *(*(v246 - 32 * (*(v246 + 20) & 0x7FFFFFF)) + 24);
                    v261 = *(v258 - 16);
                    v259 = v258 - 16;
                    v260 = v261;
                    if ((v261 & 2) != 0)
                    {
                      v262 = *(*(*(v246 - 32 * (*(v246 + 20) & 0x7FFFFFF)) + 24) - 32);
                    }

                    else
                    {
                      v262 = v259 - 8 * ((v260 >> 2) & 0xF);
                    }

                    --v252;
                  }

                  while (v257 < v262);
                  *v252 = v240;
                }

                v112 = v239 + 1;
                v7 = v239;
              }

              while (v239 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v143 = (v10 - 2) >> 1;
              v144 = v143;
              do
              {
                v145 = v144;
                if (v143 >= v144)
                {
                  v146 = (2 * v144) | 1;
                  v147 = &v9[v146];
                  if (2 * v145 + 2 < v10)
                  {
                    v148 = *(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24);
                    v151 = *(v148 - 16);
                    v149 = v148 - 16;
                    v150 = v151;
                    if ((v151 & 2) != 0)
                    {
                      v152 = *(*(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24) - 32);
                    }

                    else
                    {
                      v152 = v149 - 8 * ((v150 >> 2) & 0xF);
                    }

                    v153 = v147[1];
                    ++v147;
                    v154 = *(*(v153 - 32 * (*(v153 + 20) & 0x7FFFFFF)) + 24);
                    v155 = *(v154 - 16);
                    if ((v155 & 2) != 0)
                    {
                      v156 = *(v154 - 32);
                    }

                    else
                    {
                      v156 = v154 - 16 - 8 * ((v155 >> 2) & 0xF);
                    }

                    if (v152 < v156)
                    {
                      v146 = 2 * v145 + 2;
                    }

                    else
                    {
                      v147 = &v9[v146];
                    }
                  }

                  v157 = *v147;
                  v158 = *(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24);
                  v161 = *(v158 - 16);
                  v159 = v158 - 16;
                  v160 = v161;
                  if ((v161 & 2) != 0)
                  {
                    v162 = *(*(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24) - 32);
                  }

                  else
                  {
                    v162 = v159 - 8 * ((v160 >> 2) & 0xF);
                  }

                  v163 = &v9[v145];
                  v164 = *v163;
                  v165 = *(*(*v163 - 32 * (*(*v163 + 20) & 0x7FFFFFF)) + 24);
                  v167 = *(v165 - 16);
                  result = (v165 - 16);
                  v166 = v167;
                  if ((v167 & 2) != 0)
                  {
                    v168 = *(*(*(*v163 - 32 * (*(*v163 + 20) & 0x7FFFFFF)) + 24) - 32);
                  }

                  else
                  {
                    v168 = &result[-((v166 >> 2) & 0xF)];
                  }

                  if (v162 >= v168)
                  {
                    do
                    {
                      v169 = v147;
                      *v163 = v157;
                      if (v143 < v146)
                      {
                        break;
                      }

                      v170 = (2 * v146) | 1;
                      v147 = &v9[v170];
                      if (2 * v146 + 2 >= v10)
                      {
                        v146 = (2 * v146) | 1;
                      }

                      else
                      {
                        v171 = *(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24);
                        v174 = *(v171 - 16);
                        v172 = v171 - 16;
                        v173 = v174;
                        v175 = (v174 & 2) != 0 ? *(*(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24) - 32) : v172 - 8 * ((v173 >> 2) & 0xF);
                        v176 = v147[1];
                        ++v147;
                        v177 = *(*(v176 - 32 * (*(v176 + 20) & 0x7FFFFFF)) + 24);
                        v178 = *(v177 - 16);
                        v179 = (v178 & 2) != 0 ? *(v177 - 32) : v177 - 16 - 8 * ((v178 >> 2) & 0xF);
                        if (v175 < v179)
                        {
                          v146 = 2 * v146 + 2;
                        }

                        else
                        {
                          v147 = &v9[v170];
                          v146 = (2 * v146) | 1;
                        }
                      }

                      v157 = *v147;
                      v180 = *(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24);
                      v183 = *(v180 - 16);
                      v182 = v180 - 16;
                      v181 = v183;
                      v184 = (v183 & 2) != 0 ? *(*(*(*v147 - 32 * (*(*v147 + 20) & 0x7FFFFFF)) + 24) - 32) : v182 - 8 * ((v181 >> 2) & 0xF);
                      v185 = *(*(v164 - 32 * (*(v164 + 20) & 0x7FFFFFF)) + 24);
                      v188 = *(v185 - 16);
                      v186 = v185 - 16;
                      v187 = v188;
                      result = (v188 & 2) != 0 ? *(*(*(v164 - 32 * (*(v164 + 20) & 0x7FFFFFF)) + 24) - 32) : (v186 - 8 * ((v187 >> 2) & 0xF));
                      v163 = v169;
                    }

                    while (v184 >= result);
                    *v169 = v164;
                  }
                }

                v144 = v145 - 1;
              }

              while (v145);
              do
              {
                v189 = 0;
                v190 = *v9;
                v191 = v9;
                do
                {
                  v192 = &v191[v189];
                  v193 = v192 + 1;
                  v194 = (2 * v189) | 1;
                  v189 = 2 * v189 + 2;
                  if (v189 >= v10)
                  {
                    v189 = v194;
                  }

                  else
                  {
                    v197 = v192[2];
                    v195 = v192 + 2;
                    v196 = v197;
                    v198 = *(*(*(v195 - 1) - 32 * (*(*(v195 - 1) + 20) & 0x7FFFFFF)) + 24);
                    v201 = *(v198 - 16);
                    v199 = v198 - 16;
                    v200 = v201;
                    if ((v201 & 2) != 0)
                    {
                      v202 = *(*(*(*(v195 - 1) - 32 * (*(*(v195 - 1) + 20) & 0x7FFFFFF)) + 24) - 32);
                    }

                    else
                    {
                      v202 = v199 - 8 * ((v200 >> 2) & 0xF);
                    }

                    v203 = *(*(v196 - 32 * (*(v196 + 20) & 0x7FFFFFF)) + 24);
                    result = (v203 - 16);
                    v204 = *(v203 - 16);
                    if ((v204 & 2) != 0)
                    {
                      v205 = *(v203 - 32);
                    }

                    else
                    {
                      v205 = &result[-((v204 >> 2) & 0xF)];
                    }

                    if (v202 >= v205)
                    {
                      v189 = v194;
                    }

                    else
                    {
                      v193 = v195;
                    }
                  }

                  *v191 = *v193;
                  v191 = v193;
                }

                while (v189 <= ((v10 - 2) >> 1));
                if (v193 == --a2)
                {
                  *v193 = v190;
                }

                else
                {
                  *v193 = *a2;
                  *a2 = v190;
                  v206 = (v193 - v9 + 8) >> 3;
                  v207 = v206 < 2;
                  v208 = v206 - 2;
                  if (!v207)
                  {
                    v209 = v208 >> 1;
                    v210 = &v9[v209];
                    v211 = *v210;
                    v212 = *(*(*v210 - 32 * (*(*v210 + 20) & 0x7FFFFFF)) + 24);
                    v215 = *(v212 - 16);
                    v213 = v212 - 16;
                    v214 = v215;
                    v216 = (v215 & 2) != 0 ? *(*(*(*v210 - 32 * (*(*v210 + 20) & 0x7FFFFFF)) + 24) - 32) : v213 - 8 * ((v214 >> 2) & 0xF);
                    v217 = *v193;
                    v218 = *(*(*v193 - 32 * (*(*v193 + 20) & 0x7FFFFFF)) + 24);
                    v221 = *(v218 - 16);
                    v219 = v218 - 16;
                    v220 = v221;
                    v222 = (v221 & 2) != 0 ? *(*(*(*v193 - 32 * (*(*v193 + 20) & 0x7FFFFFF)) + 24) - 32) : v219 - 8 * ((v220 >> 2) & 0xF);
                    if (v216 < v222)
                    {
                      do
                      {
                        v223 = v210;
                        *v193 = v211;
                        if (!v209)
                        {
                          break;
                        }

                        v209 = (v209 - 1) >> 1;
                        v210 = &v9[v209];
                        v211 = *v210;
                        v224 = *(*(*v210 - 32 * (*(*v210 + 20) & 0x7FFFFFF)) + 24);
                        v227 = *(v224 - 16);
                        v225 = v224 - 16;
                        v226 = v227;
                        v228 = (v227 & 2) != 0 ? *(*(*(*v210 - 32 * (*(*v210 + 20) & 0x7FFFFFF)) + 24) - 32) : v225 - 8 * ((v226 >> 2) & 0xF);
                        v229 = *(*(v217 - 32 * (*(v217 + 20) & 0x7FFFFFF)) + 24);
                        v232 = *(v229 - 16);
                        v230 = v229 - 16;
                        v231 = v232;
                        v233 = (v232 & 2) != 0 ? *(*(*(v217 - 32 * (*(v217 + 20) & 0x7FFFFFF)) + 24) - 32) : v230 - 8 * ((v231 >> 2) & 0xF);
                        v193 = v223;
                      }

                      while (v228 < v233);
                      *v223 = v217;
                    }
                  }
                }

                v207 = v10-- <= 2;
              }

              while (!v207);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
          }

          else
          {
            v13 = *v7;
            *v7 = *v12;
            *v12 = v13;
          }

          --a3;
          v14 = *v7;
          if (a4)
          {
            break;
          }

          v18 = *(*(*(v7 - 1) - 32 * (*(*(v7 - 1) + 20) & 0x7FFFFFF)) + 24);
          v21 = *(v18 - 16);
          v19 = v18 - 16;
          v20 = v21;
          if ((v21 & 2) != 0)
          {
            v22 = *(*(*(*(v7 - 1) - 32 * (*(*(v7 - 1) + 20) & 0x7FFFFFF)) + 24) - 32);
          }

          else
          {
            v22 = v19 - 8 * ((v20 >> 2) & 0xF);
          }

          v15 = *(*(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF)) + 24);
          v23 = v15 - 16;
          v16 = *(v15 - 16);
          if ((v16 & 2) != 0)
          {
            v24 = *(v15 - 32);
            if (v22 < v24)
            {
              v17 = 0;
              goto LABEL_25;
            }
          }

          else
          {
            v24 = v23 - 8 * ((v16 >> 2) & 0xF);
            if (v22 < v24)
            {
              v17 = 1;
              goto LABEL_25;
            }
          }

          v63 = *(*(*v8 - 32 * (*(*v8 + 20) & 0x7FFFFFF)) + 24);
          v66 = *(v63 - 16);
          v64 = v63 - 16;
          v65 = v66;
          if ((v66 & 2) != 0)
          {
            v67 = *(*(*(*v8 - 32 * (*(*v8 + 20) & 0x7FFFFFF)) + 24) - 32);
          }

          else
          {
            v67 = v64 - 8 * ((v65 >> 2) & 0xF);
          }

          v68 = v23 - 8 * ((v16 >> 2) & 0xF);
          if (v24 >= v67)
          {
            v74 = v7 + 1;
            do
            {
              v9 = v74;
              if (v74 >= a2)
              {
                break;
              }

              v75 = v68;
              if ((v16 & 2) != 0)
              {
                v75 = *(v15 - 32);
              }

              v76 = *(*(*v74 - 32 * (*(*v74 + 20) & 0x7FFFFFF)) + 24);
              v79 = *(v76 - 16);
              v77 = v76 - 16;
              v78 = v79;
              v80 = (v79 & 2) != 0 ? *(*(*(*v74 - 32 * (*(*v74 + 20) & 0x7FFFFFF)) + 24) - 32) : v77 - 8 * ((v78 >> 2) & 0xF);
              ++v74;
            }

            while (v75 >= v80);
          }

          else
          {
            v9 = v7;
            do
            {
              v69 = v68;
              if ((v16 & 2) != 0)
              {
                v69 = *(v15 - 32);
              }

              v70 = v9[1];
              ++v9;
              v71 = *(*(v70 - 32 * (*(v70 + 20) & 0x7FFFFFF)) + 24);
              v72 = *(v71 - 16);
              if ((v72 & 2) != 0)
              {
                v73 = *(v71 - 32);
              }

              else
              {
                v73 = v71 - 16 - 8 * ((v72 >> 2) & 0xF);
              }
            }

            while (v69 >= v73);
          }

          v81 = a2;
          if (v9 < a2)
          {
            v81 = a2;
            do
            {
              v82 = v68;
              if ((v16 & 2) != 0)
              {
                v82 = *(v15 - 32);
              }

              v83 = *--v81;
              v84 = *(*(v83 - 32 * (*(v83 + 20) & 0x7FFFFFF)) + 24);
              v85 = *(v84 - 16);
              if ((v85 & 2) != 0)
              {
                v86 = *(v84 - 32);
              }

              else
              {
                v86 = v84 - 16 - 8 * ((v85 >> 2) & 0xF);
              }
            }

            while (v82 < v86);
          }

          if (v9 < v81)
          {
            v87 = *v9;
            v88 = *v81;
            do
            {
              *v9 = v88;
              *v81 = v87;
              v89 = *(*(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF)) + 24);
              v90 = *(v89 - 16);
              do
              {
                v91 = v9[1];
                ++v9;
                v87 = v91;
                v92 = v89 - 16 - 8 * ((v90 >> 2) & 0xF);
                if ((v90 & 2) != 0)
                {
                  v92 = *(v89 - 32);
                }

                v93 = *(*(v87 - 32 * (*(v87 + 20) & 0x7FFFFFF)) + 24);
                v96 = *(v93 - 16);
                v94 = v93 - 16;
                v95 = v96;
                if ((v96 & 2) != 0)
                {
                  v97 = *(*(*(v87 - 32 * (*(v87 + 20) & 0x7FFFFFF)) + 24) - 32);
                }

                else
                {
                  v97 = v94 - 8 * ((v95 >> 2) & 0xF);
                }
              }

              while (v92 >= v97);
              do
              {
                v98 = *--v81;
                v88 = v98;
                v99 = v89 - 16 - 8 * ((v90 >> 2) & 0xF);
                if ((v90 & 2) != 0)
                {
                  v99 = *(v89 - 32);
                }

                v100 = *(*(v88 - 32 * (*(v88 + 20) & 0x7FFFFFF)) + 24);
                v102 = *(v100 - 16);
                v101 = v100 - 16;
                result = v102;
                if ((v102 & 2) != 0)
                {
                  v103 = *(*(*(v88 - 32 * (*(v88 + 20) & 0x7FFFFFF)) + 24) - 32);
                }

                else
                {
                  v103 = v101 - 8 * ((result >> 2) & 0xF);
                }
              }

              while (v99 < v103);
            }

            while (v9 < v81);
          }

          v104 = v9 - 1;
          if (v9 - 1 != v7)
          {
            *v7 = *v104;
          }

          a4 = 0;
          *v104 = v14;
        }

        v15 = *(*(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF)) + 24);
        v16 = *(v15 - 16);
        v17 = (v16 & 2) == 0;
LABEL_25:
        v25 = 0;
        v26 = v15 - 8 * ((v16 >> 2) & 0xF) - 16;
        do
        {
          v27 = v7[v25 + 1];
          v28 = *(*(v27 - 32 * (*(v27 + 20) & 0x7FFFFFF)) + 24);
          v31 = *(v28 - 16);
          v29 = v28 - 16;
          v30 = v31;
          if ((v31 & 2) != 0)
          {
            v32 = *(*(*(v27 - 32 * (*(v27 + 20) & 0x7FFFFFF)) + 24) - 32);
          }

          else
          {
            v32 = v29 - 8 * ((v30 >> 2) & 0xF);
          }

          v33 = v26;
          if (!v17)
          {
            v33 = *(v15 - 32);
          }

          ++v25;
        }

        while (v32 < v33);
        v34 = &v7[v25];
        v35 = a2;
        if (v25 == 1)
        {
          v35 = a2;
          do
          {
            if (v34 >= v35)
            {
              break;
            }

            v41 = *--v35;
            v42 = *(*(v41 - 32 * (*(v41 + 20) & 0x7FFFFFF)) + 24);
            v43 = *(v42 - 16);
            if ((v43 & 2) != 0)
            {
              v44 = *(v42 - 32);
            }

            else
            {
              v44 = v42 - 16 - 8 * ((v43 >> 2) & 0xF);
            }

            v45 = v26;
            if (!v17)
            {
              v45 = *(v15 - 32);
            }
          }

          while (v44 >= v45);
        }

        else
        {
          do
          {
            v36 = *--v35;
            v37 = *(*(v36 - 32 * (*(v36 + 20) & 0x7FFFFFF)) + 24);
            v38 = *(v37 - 16);
            if ((v38 & 2) != 0)
            {
              v39 = *(v37 - 32);
            }

            else
            {
              v39 = v37 - 16 - 8 * ((v38 >> 2) & 0xF);
            }

            v40 = v26;
            if (!v17)
            {
              v40 = *(v15 - 32);
            }
          }

          while (v39 >= v40);
        }

        if (v34 >= v35)
        {
          v61 = v34 - 1;
        }

        else
        {
          v46 = *v35;
          v47 = v34;
          v48 = v35;
          do
          {
            *v47 = v46;
            *v48 = v27;
            v49 = *(*(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF)) + 24);
            v50 = *(v49 - 16);
            do
            {
              v51 = v47[1];
              ++v47;
              v27 = v51;
              v52 = *(*(v51 - 32 * (*(v51 + 20) & 0x7FFFFFF)) + 24);
              v53 = *(v52 - 16);
              if ((v53 & 2) != 0)
              {
                v54 = *(v52 - 32);
              }

              else
              {
                v54 = v52 - 16 - 8 * ((v53 >> 2) & 0xF);
              }

              v55 = v49 - 16 - 8 * ((v50 >> 2) & 0xF);
              if ((v50 & 2) != 0)
              {
                v55 = *(v49 - 32);
              }
            }

            while (v54 < v55);
            do
            {
              v56 = *--v48;
              v46 = v56;
              v57 = *(*(v56 - 32 * (*(v56 + 20) & 0x7FFFFFF)) + 24);
              v58 = *(v57 - 16);
              if ((v58 & 2) != 0)
              {
                v59 = *(v57 - 32);
              }

              else
              {
                v59 = v57 - 16 - 8 * ((v58 >> 2) & 0xF);
              }

              v60 = v49 - 16 - 8 * ((v50 >> 2) & 0xF);
              if ((v50 & 2) != 0)
              {
                v60 = *(v49 - 32);
              }
            }

            while (v59 >= v60);
          }

          while (v47 < v48);
          v61 = v47 - 1;
        }

        if (v61 != v7)
        {
          *v7 = *v61;
        }

        *v61 = v14;
        if (v34 >= v35)
        {
          break;
        }

LABEL_71:
        a4 = 0;
        v9 = v61 + 1;
      }

      v9 = v61 + 1;
      if (result)
      {
        break;
      }

      if (!v62)
      {
        goto LABEL_71;
      }
    }

    a2 = v61;
    if (!v62)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::Verifier::verifyNoAliasScopeDecl(void)::$_0 &,llvm::IntrinsicInst **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24);
  v6 = v5 - 16;
  v7 = *(v5 - 16);
  if ((v7 & 2) != 0)
  {
    v8 = *(v5 - 32);
  }

  else
  {
    v8 = v6 - 8 * ((v7 >> 2) & 0xF);
  }

  v9 = *(*(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)) + 24);
  v12 = *(v9 - 16);
  v10 = v9 - 16;
  v11 = v12;
  if ((v12 & 2) != 0)
  {
    v13 = *(*(*(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v13 = v10 - 8 * ((v11 >> 2) & 0xF);
  }

  v14 = *a3;
  v15 = *(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24);
  v17 = v15 - 16;
  v16 = *(v15 - 16);
  if (v8 >= v13)
  {
    if ((v16 & 2) != 0)
    {
      v20 = *(v15 - 32);
      if ((v7 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v20 = v17 - 8 * ((v16 >> 2) & 0xF);
      if ((v7 & 2) != 0)
      {
LABEL_13:
        v21 = *(v5 - 32);
LABEL_20:
        if (v20 < v21)
        {
          *a2 = v14;
          *a3 = v3;
          v22 = *result;
          v23 = *(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24);
          v26 = *(v23 - 16);
          v24 = v23 - 16;
          v25 = v26;
          v27 = (v26 & 2) != 0 ? *(*(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24) - 32) : v24 - 8 * ((v25 >> 2) & 0xF);
          v33 = *(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 24);
          v36 = *(v33 - 16);
          v34 = v33 - 16;
          v35 = v36;
          v37 = (v36 & 2) != 0 ? *(*(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 24) - 32) : v34 - 8 * ((v35 >> 2) & 0xF);
          if (v27 < v37)
          {
            *result = *a2;
            *a2 = v22;
          }
        }

        return result;
      }
    }

    v21 = v6 - 8 * ((v7 >> 2) & 0xF);
    goto LABEL_20;
  }

  if ((v16 & 2) != 0)
  {
    v18 = *(v15 - 32);
    if ((v7 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v19 = v6 - 8 * ((v7 >> 2) & 0xF);
    goto LABEL_16;
  }

  v18 = v17 - 8 * ((v16 >> 2) & 0xF);
  if ((v7 & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v19 = *(v5 - 32);
LABEL_16:
  if (v18 < v19)
  {
    *result = v14;
LABEL_37:
    *a3 = v4;
    return result;
  }

  *result = v3;
  *a2 = v4;
  v28 = *(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24);
  v31 = *(v28 - 16);
  v29 = v28 - 16;
  v30 = v31;
  if ((v31 & 2) != 0)
  {
    v32 = *(*(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v32 = v29 - 8 * ((v30 >> 2) & 0xF);
  }

  v38 = *(*(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)) + 24);
  v41 = *(v38 - 16);
  v39 = v38 - 16;
  v40 = v41;
  if ((v41 & 2) != 0)
  {
    v42 = *(*(*(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v42 = v39 - 8 * ((v40 >> 2) & 0xF);
  }

  if (v32 < v42)
  {
    *a2 = *a3;
    goto LABEL_37;
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::Verifier::verifyNoAliasScopeDecl(void)::$_0 &,llvm::IntrinsicInst **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *a3;
  v10 = *(*(*a4 - 32 * (*(*a4 + 20) & 0x7FFFFFF)) + 24);
  v13 = *(v10 - 16);
  v11 = v10 - 16;
  v12 = v13;
  if ((v13 & 2) != 0)
  {
    v14 = *(*(*(*a4 - 32 * (*(*a4 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v14 = v11 - 8 * ((v12 >> 2) & 0xF);
  }

  v15 = *(*(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF)) + 24);
  v18 = *(v15 - 16);
  v16 = v15 - 16;
  v17 = v18;
  if ((v18 & 2) != 0)
  {
    v19 = *(*(*(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v19 = v16 - 8 * ((v17 >> 2) & 0xF);
  }

  if (v14 < v19)
  {
    *a3 = *a4;
    *a4 = v9;
    v20 = *a2;
    v21 = *(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24);
    v24 = *(v21 - 16);
    v22 = v21 - 16;
    v23 = v24;
    v25 = (v24 & 2) != 0 ? *(*(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24) - 32) : v22 - 8 * ((v23 >> 2) & 0xF);
    v26 = *(*(v20 - 32 * (*(v20 + 20) & 0x7FFFFFF)) + 24);
    v29 = *(v26 - 16);
    v27 = v26 - 16;
    v28 = v29;
    v30 = (v29 & 2) != 0 ? *(*(*(v20 - 32 * (*(v20 + 20) & 0x7FFFFFF)) + 24) - 32) : v27 - 8 * ((v28 >> 2) & 0xF);
    if (v25 < v30)
    {
      *a2 = *a3;
      *a3 = v20;
      v31 = *a1;
      v32 = *(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24);
      v35 = *(v32 - 16);
      v33 = v32 - 16;
      v34 = v35;
      if ((v35 & 2) != 0)
      {
        v36 = *(*(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24) - 32);
      }

      else
      {
        v36 = v33 - 8 * ((v34 >> 2) & 0xF);
      }

      v37 = *(*(v31 - 32 * (*(v31 + 20) & 0x7FFFFFF)) + 24);
      v40 = *(v37 - 16);
      v38 = v37 - 16;
      v39 = v40;
      if ((v40 & 2) != 0)
      {
        v41 = *(*(*(v31 - 32 * (*(v31 + 20) & 0x7FFFFFF)) + 24) - 32);
      }

      else
      {
        v41 = v38 - 8 * ((v39 >> 2) & 0xF);
      }

      if (v36 < v41)
      {
        *a1 = *a2;
        *a2 = v31;
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::Verifier::verifyNoAliasScopeDecl(void)::$_0 &,llvm::IntrinsicInst **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = *a4;
  v12 = *(*(*a5 - 32 * (*(*a5 + 20) & 0x7FFFFFF)) + 24);
  v15 = *(v12 - 16);
  v13 = v12 - 16;
  v14 = v15;
  if ((v15 & 2) != 0)
  {
    v16 = *(*(*(*a5 - 32 * (*(*a5 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v16 = v13 - 8 * ((v14 >> 2) & 0xF);
  }

  v17 = *(*(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF)) + 24);
  v20 = *(v17 - 16);
  v18 = v17 - 16;
  v19 = v20;
  if ((v20 & 2) != 0)
  {
    v21 = *(*(*(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF)) + 24) - 32);
  }

  else
  {
    v21 = v18 - 8 * ((v19 >> 2) & 0xF);
  }

  if (v16 < v21)
  {
    *a4 = *a5;
    *a5 = v11;
    v22 = *a3;
    v23 = *(*(*a4 - 32 * (*(*a4 + 20) & 0x7FFFFFF)) + 24);
    v26 = *(v23 - 16);
    v24 = v23 - 16;
    v25 = v26;
    v27 = (v26 & 2) != 0 ? *(*(*(*a4 - 32 * (*(*a4 + 20) & 0x7FFFFFF)) + 24) - 32) : v24 - 8 * ((v25 >> 2) & 0xF);
    v28 = *(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 24);
    v31 = *(v28 - 16);
    v29 = v28 - 16;
    v30 = v31;
    v32 = (v31 & 2) != 0 ? *(*(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 24) - 32) : v29 - 8 * ((v30 >> 2) & 0xF);
    if (v27 < v32)
    {
      *a3 = *a4;
      *a4 = v22;
      v33 = *a2;
      v34 = *(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24);
      v37 = *(v34 - 16);
      v35 = v34 - 16;
      v36 = v37;
      v38 = (v37 & 2) != 0 ? *(*(*(*a3 - 32 * (*(*a3 + 20) & 0x7FFFFFF)) + 24) - 32) : v35 - 8 * ((v36 >> 2) & 0xF);
      v39 = *(*(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF)) + 24);
      v42 = *(v39 - 16);
      v40 = v39 - 16;
      v41 = v42;
      v43 = (v42 & 2) != 0 ? *(*(*(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF)) + 24) - 32) : v40 - 8 * ((v41 >> 2) & 0xF);
      if (v38 < v43)
      {
        *a2 = *a3;
        *a3 = v33;
        v44 = *a1;
        v45 = *(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24);
        v48 = *(v45 - 16);
        v46 = v45 - 16;
        v47 = v48;
        if ((v48 & 2) != 0)
        {
          v49 = *(*(*(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF)) + 24) - 32);
        }

        else
        {
          v49 = v46 - 8 * ((v47 >> 2) & 0xF);
        }

        v50 = *(*(v44 - 32 * (*(v44 + 20) & 0x7FFFFFF)) + 24);
        v53 = *(v50 - 16);
        v51 = v50 - 16;
        v52 = v53;
        if ((v53 & 2) != 0)
        {
          v54 = *(*(*(v44 - 32 * (*(v44 + 20) & 0x7FFFFFF)) + 24) - 32);
        }

        else
        {
          v54 = v51 - 8 * ((v52 >> 2) & 0xF);
        }

        if (v49 < v54)
        {
          *a1 = *a2;
          *a2 = v44;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::Verifier::verifyNoAliasScopeDecl(void)::$_0 &,llvm::IntrinsicInst **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = *(*(v5 - 32 * (*(v5 + 20) & 0x7FFFFFF)) + 24);
        v10 = *(v7 - 16);
        v8 = v7 - 16;
        v9 = v10;
        if ((v10 & 2) != 0)
        {
          v11 = *(*(*(v5 - 32 * (*(v5 + 20) & 0x7FFFFFF)) + 24) - 32);
        }

        else
        {
          v11 = v8 - 8 * ((v9 >> 2) & 0xF);
        }

        v41 = *(*(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF)) + 24);
        v44 = *(v41 - 16);
        v42 = v41 - 16;
        v43 = v44;
        if ((v44 & 2) != 0)
        {
          v45 = *(*(*(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF)) + 24) - 32);
        }

        else
        {
          v45 = v42 - 8 * ((v43 >> 2) & 0xF);
        }

        if (v11 < v45)
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v12 = a1 + 2;
  v13 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v14 = 0;
  for (i = 24; ; i += 8)
  {
    v16 = *v13;
    v17 = *(*(*v13 - 32 * (*(*v13 + 20) & 0x7FFFFFF)) + 24);
    v20 = *(v17 - 16);
    v18 = v17 - 16;
    v19 = v20;
    v21 = (v20 & 2) != 0 ? *(*(*(*v13 - 32 * (*(*v13 + 20) & 0x7FFFFFF)) + 24) - 32) : v18 - 8 * ((v19 >> 2) & 0xF);
    v22 = *v12;
    v23 = *(*(*v12 - 32 * (*(*v12 + 20) & 0x7FFFFFF)) + 24);
    v26 = *(v23 - 16);
    v24 = v23 - 16;
    v25 = v26;
    v27 = (v26 & 2) != 0 ? *(*(*(*v12 - 32 * (*(*v12 + 20) & 0x7FFFFFF)) + 24) - 32) : v24 - 8 * ((v25 >> 2) & 0xF);
    if (v21 < v27)
    {
      v28 = i;
      while (1)
      {
        *(a1 + v28) = v22;
        v29 = v28 - 8;
        if (v28 == 8)
        {
          break;
        }

        v30 = *(*(v16 - 32 * (*(v16 + 20) & 0x7FFFFFF)) + 24);
        v33 = *(v30 - 16);
        v31 = v30 - 16;
        v32 = v33;
        if ((v33 & 2) != 0)
        {
          v34 = *(*(*(v16 - 32 * (*(v16 + 20) & 0x7FFFFFF)) + 24) - 32);
        }

        else
        {
          v34 = v31 - 8 * ((v32 >> 2) & 0xF);
        }

        v22 = *(a1 + v28 - 16);
        v35 = *(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 24);
        v38 = *(v35 - 16);
        v36 = v35 - 16;
        v37 = v38;
        if ((v38 & 2) != 0)
        {
          v39 = *(*(*(v22 - 32 * (*(v22 + 20) & 0x7FFFFFF)) + 24) - 32);
        }

        else
        {
          v39 = v36 - 8 * ((v37 >> 2) & 0xF);
        }

        v28 -= 8;
        if (v34 >= v39)
        {
          v40 = (a1 + v29);
          goto LABEL_31;
        }
      }

      v40 = a1;
LABEL_31:
      *v40 = v16;
      if (++v14 == 8)
      {
        break;
      }
    }

    v12 = v13++;
    if (v13 == a2)
    {
      return 1;
    }
  }

  return v13 + 1 == a2;
}

void anonymous namespace::Verifier::visitAliaseeSubExpr(llvm::raw_ostream **a1, llvm::SmallPtrSetImplBase *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  if ((*(a3 + 32) & 0xF) == 1)
  {
    if (v8 <= 3 && (*(a4 + 32) & 0xF) == 1)
    {
      if (v8 != 1)
      {
        return;
      }

      goto LABEL_36;
    }

    v12 = "available_externally alias must point to available_externally global value";
LABEL_40:
    v18 = a3;
    v19[0] = v12;
    v21 = 259;
    llvm::VerifierSupport::CheckFailed<llvm::Function const*>(a1, v19, &v18);
    return;
  }

  if (v8 > 3)
  {
LABEL_7:
    if (v8 == 5)
    {
    }

    v9 = *(a4 + 20);
    if ((v9 & 0x40000000) != 0)
    {
      v11 = *(a4 - 8);
      v10 = v9 & 0x7FFFFFF;
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = v9 & 0x7FFFFFF;
      v11 = (a4 - 32 * v10);
      if (!v10)
      {
        return;
      }
    }

    v13 = 32 * v10;
    while (1)
    {
      v14 = *v11;
      v15 = *(*v11 + 16);
      if (*v11)
      {
        v16 = v15 == 1;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v14 = *(v14 - 32);
      }

      else
      {
        if (v14)
        {
          v17 = v15 > 0x14;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_29;
        }
      }

LABEL_29:
      v11 += 4;
      v13 -= 32;
      if (!v13)
      {
        return;
      }
    }
  }

  if ((*(a4 + 32) & 0xF) == 1)
  {
LABEL_14:
    v12 = "Alias must point to a definition";
    goto LABEL_40;
  }

  if (*(a4 + 16))
  {
    if (v8 == 1)
    {
LABEL_36:
      llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert(v19, a2, a4);
      if ((v20 & 1) == 0)
      {
        v12 = "Aliases cannot form a cycle";
        goto LABEL_40;
      }

      if (llvm::GlobalValue::isInterposable(a4))
      {
        v12 = "Alias cannot point to an interposable alias";
        goto LABEL_40;
      }

      v8 = *(a4 + 16);
      goto LABEL_7;
    }

    if (v8 == 3 && (*(a4 + 20) & 0x7FFFFFF) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(a4 + 32) & 0x1000000) == 0 && *(a4 + 72) == a4 + 72)
  {
    goto LABEL_14;
  }
}

llvm::raw_ostream *llvm::VerifierSupport::Write(llvm::raw_ostream *this, const llvm::NamedMDNode *a2)
{
  if (a2)
  {
    v2 = this;
    llvm::NamedMDNode::print(a2, *this, (this + 16), 0);
    this = *v2;
    v3 = *(*v2 + 32);
    if (v3 >= *(*v2 + 24))
    {

      return llvm::raw_ostream::write(this, 10);
    }

    else
    {
      *(this + 4) = v3 + 1;
      *v3 = 10;
    }
  }

  return this;
}

void llvm::VerifierSupport::CheckFailed<llvm::Instruction *,llvm::MDNode const*,llvm::APInt *>(llvm::raw_ostream **a1, const llvm::Twine *a2, llvm::Type ***a3, uint64_t *a4, llvm::APInt **a5)
{
  llvm::VerifierSupport::CheckFailed(a1, a2);
  if (*a1)
  {
    if (*a3)
    {
      llvm::VerifierSupport::Write(a1, *a3);
    }

    llvm::VerifierSupport::Write(a1, *a4);
    if (*a5)
    {
      v9 = *a1;
      llvm::APInt::print(*a5, v9, 1);
      v10 = *(v9 + 4);
      if (v10 >= *(v9 + 3))
      {

        llvm::raw_ostream::write(v9, 10);
      }

      else
      {
        *(v9 + 4) = v10 + 1;
        *v10 = 10;
      }
    }
  }
}

uint64_t _GLOBAL__sub_I_Verifier_cpp()
{
  v5 = 1;
  v3 = 0;
  v4 = &v3;
  v2.n128_u64[0] = "Ensure that llvm.experimental.noalias.scope.decl for identical scopes are not dominating";
  v2.n128_u64[1] = 88;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [30],llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&_MergedGlobals_49, "verify-noalias-scope-decl-dom", &v5, &v4, &v2);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_49, &dword_274E5C000);
  v0 = llvm::cl::Option::Option(qword_2815AB6E8, 0, 0);
  byte_2815AB768 = 0;
  qword_2815AB770 = &unk_2883EAB68;
  *&word_2815AB778 = 0;
  qword_2815AB6E8[0] = &unk_2883EAB00;
  qword_2815AB780 = &unk_2883EA848;
  qword_2815AB788 = &unk_2883EAB88;
  qword_2815AB7A0 = &qword_2815AB788;
  llvm::cl::Option::setArgStr(v0, "enable-swifttailcc-musttail-check", 0x21uLL);
  byte_2815AB768 = 0;
  word_2815AB778 = 256;
  qword_2815AB708 = "Check that tail calls from swifttailcc functions to swifttailcc functions are marked musttail.";
  unk_2815AB710 = 94;
  llvm::cl::Option::addArgument(qword_2815AB6E8);
  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, qword_2815AB6E8, &dword_274E5C000);
}

const char *llvm::dwarf::TagString(llvm::dwarf *this)
{
  v1 = this;
  if (this <= 16640)
  {
    result = 0;
    switch(v1)
    {
      case 0:
        result = "DW_TAG_null";
        break;
      case 1:
        result = "DW_TAG_array_type";
        break;
      case 2:
        result = "DW_TAG_class_type";
        break;
      case 3:
        result = "DW_TAG_entry_point";
        break;
      case 4:
        result = "DW_TAG_enumeration_type";
        break;
      case 5:
        result = "DW_TAG_formal_parameter";
        break;
      case 6:
      case 7:
      case 9:
      case 12:
      case 14:
      case 20:
      case 62:
        return result;
      case 8:
        result = "DW_TAG_imported_declaration";
        break;
      case 10:
        result = "DW_TAG_label";
        break;
      case 11:
        result = "DW_TAG_lexical_block";
        break;
      case 13:
        result = "DW_TAG_member";
        break;
      case 15:
        result = "DW_TAG_pointer_type";
        break;
      case 16:
        result = "DW_TAG_reference_type";
        break;
      case 17:
        result = "DW_TAG_compile_unit";
        break;
      case 18:
        result = "DW_TAG_string_type";
        break;
      case 19:
        result = "DW_TAG_structure_type";
        break;
      case 21:
        result = "DW_TAG_subroutine_type";
        break;
      case 22:
        result = "DW_TAG_typedef";
        break;
      case 23:
        result = "DW_TAG_union_type";
        break;
      case 24:
        result = "DW_TAG_unspecified_parameters";
        break;
      case 25:
        result = "DW_TAG_variant";
        break;
      case 26:
        result = "DW_TAG_common_block";
        break;
      case 27:
        result = "DW_TAG_common_inclusion";
        break;
      case 28:
        result = "DW_TAG_inheritance";
        break;
      case 29:
        result = "DW_TAG_inlined_subroutine";
        break;
      case 30:
        result = "DW_TAG_module";
        break;
      case 31:
        result = "DW_TAG_ptr_to_member_type";
        break;
      case 32:
        result = "DW_TAG_set_type";
        break;
      case 33:
        result = "DW_TAG_subrange_type";
        break;
      case 34:
        result = "DW_TAG_with_stmt";
        break;
      case 35:
        result = "DW_TAG_access_declaration";
        break;
      case 36:
        result = "DW_TAG_base_type";
        break;
      case 37:
        result = "DW_TAG_catch_block";
        break;
      case 38:
        result = "DW_TAG_const_type";
        break;
      case 39:
        result = "DW_TAG_constant";
        break;
      case 40:
        result = "DW_TAG_enumerator";
        break;
      case 41:
        result = "DW_TAG_file_type";
        break;
      case 42:
        result = "DW_TAG_friend";
        break;
      case 43:
        result = "DW_TAG_namelist";
        break;
      case 44:
        result = "DW_TAG_namelist_item";
        break;
      case 45:
        result = "DW_TAG_packed_type";
        break;
      case 46:
        result = "DW_TAG_subprogram";
        break;
      case 47:
        result = "DW_TAG_template_type_parameter";
        break;
      case 48:
        result = "DW_TAG_template_value_parameter";
        break;
      case 49:
        result = "DW_TAG_thrown_type";
        break;
      case 50:
        result = "DW_TAG_try_block";
        break;
      case 51:
        result = "DW_TAG_variant_part";
        break;
      case 52:
        result = "DW_TAG_variable";
        break;
      case 53:
        result = "DW_TAG_volatile_type";
        break;
      case 54:
        result = "DW_TAG_dwarf_procedure";
        break;
      case 55:
        result = "DW_TAG_restrict_type";
        break;
      case 56:
        result = "DW_TAG_interface_type";
        break;
      case 57:
        result = "DW_TAG_namespace";
        break;
      case 58:
        result = "DW_TAG_imported_module";
        break;
      case 59:
        result = "DW_TAG_unspecified_type";
        break;
      case 60:
        result = "DW_TAG_partial_unit";
        break;
      case 61:
        result = "DW_TAG_imported_unit";
        break;
      case 63:
        result = "DW_TAG_condition";
        break;
      case 64:
        result = "DW_TAG_shared_type";
        break;
      case 65:
        result = "DW_TAG_type_unit";
        break;
      case 66:
        result = "DW_TAG_rvalue_reference_type";
        break;
      case 67:
        result = "DW_TAG_template_alias";
        break;
      case 68:
        result = "DW_TAG_coarray_type";
        break;
      case 69:
        result = "DW_TAG_generic_subrange";
        break;
      case 70:
        result = "DW_TAG_dynamic_type";
        break;
      case 71:
        result = "DW_TAG_atomic_type";
        break;
      case 72:
        result = "DW_TAG_call_site";
        break;
      case 73:
        result = "DW_TAG_call_site_parameter";
        break;
      case 74:
        result = "DW_TAG_skeleton_unit";
        break;
      case 75:
        result = "DW_TAG_immutable_type";
        break;
      default:
        v4 = v1 == 16513;
        v5 = "DW_TAG_MIPS_loop";
        goto LABEL_59;
    }

    return result;
  }

  if (this <= 17150)
  {
    if (this > 16648)
    {
      switch(this)
      {
        case 16896:
          result = "DW_TAG_APPLE_property";
          break;
        case 16897:
          result = "DW_TAG_SUN_function_template";
          break;
        case 16898:
          result = "DW_TAG_SUN_class_template";
          break;
        case 16899:
          result = "DW_TAG_SUN_struct_template";
          break;
        case 16900:
          result = "DW_TAG_SUN_union_template";
          break;
        case 16901:
          result = "DW_TAG_SUN_indirect_inheritance";
          break;
        case 16902:
          result = "DW_TAG_SUN_codeflags";
          break;
        case 16903:
          result = "DW_TAG_SUN_memop_info";
          break;
        case 16904:
          result = "DW_TAG_SUN_omp_child_func";
          break;
        case 16905:
          result = "DW_TAG_SUN_rtti_descriptor";
          break;
        case 16906:
          result = "DW_TAG_SUN_dtor_info";
          break;
        case 16907:
          result = "DW_TAG_SUN_dtor";
          break;
        case 16908:
          result = "DW_TAG_SUN_f90_interface";
          break;
        case 16909:
          result = "DW_TAG_SUN_fortran_vax_structure";
          break;
        default:
          v14 = "DW_TAG_GNU_call_site";
          v15 = 16649;
          v16 = this == 16650;
          v17 = "DW_TAG_GNU_call_site_parameter";
          goto LABEL_53;
      }

      return result;
    }

    if (this > 16644)
    {
      if (this <= 16646)
      {
        v6 = 16645;
        v7 = "DW_TAG_GNU_EINCL";
        v8 = this == 16646;
        v9 = "DW_TAG_GNU_template_template_param";
        goto LABEL_47;
      }

      v14 = "DW_TAG_GNU_template_parameter_pack";
      v15 = 16647;
      v16 = this == 16648;
      v17 = "DW_TAG_GNU_formal_parameter_pack";
    }

    else
    {
      if (this <= 16642)
      {
        v6 = 16641;
        v7 = "DW_TAG_format_label";
        v8 = this == 16642;
        v9 = "DW_TAG_function_template";
LABEL_47:
        if (!v8)
        {
          v9 = 0;
        }

        if (this == v6)
        {
          return v7;
        }

        else
        {
          return v9;
        }
      }

      v14 = "DW_TAG_class_template";
      v15 = 16643;
      v16 = this == 16644;
      v17 = "DW_TAG_GNU_BINCL";
    }

LABEL_53:
    if (!v16)
    {
      v17 = 0;
    }

    if (this == v15)
    {
      return v14;
    }

    else
    {
      return v17;
    }
  }

  if (this <= 32774)
  {
    if (this <= 20752)
    {
      if (this <= 20736)
      {
        v14 = "DW_TAG_SUN_hi";
        v15 = 17151;
        v16 = this == 17152;
        v17 = "DW_TAG_LLVM_ptrauth_type";
        goto LABEL_53;
      }

      if (this == 20737)
      {
        return "DW_TAG_ALTIUM_circ_type";
      }

      if (this == 20738)
      {
        return "DW_TAG_ALTIUM_mwa_circ_type";
      }

      v4 = this == 20739;
      v5 = "DW_TAG_ALTIUM_rev_carry_type";
      goto LABEL_59;
    }

    if (this > 32771)
    {
      if (this == 32772)
      {
        return "DW_TAG_GHS_namespace";
      }

      if (this == 32773)
      {
        return "DW_TAG_GHS_using_namespace";
      }

      v4 = this == 32774;
      v5 = "DW_TAG_GHS_using_declaration";
      goto LABEL_59;
    }

    v10 = 20753;
    v11 = "DW_TAG_ALTIUM_rom";
    v12 = this == 24576;
    v13 = "DW_TAG_LLVM_annotation";
  }

  else
  {
    if (this > 40991)
    {
      if (this <= 45057)
      {
        if (this == 40992)
        {
          return "DW_TAG_PGI_interface_block";
        }

        v3 = "DW_TAG_BORLAND_Delphi_string";
        if (this != 45057)
        {
          v3 = 0;
        }

        if (this == 45056)
        {
          return "DW_TAG_BORLAND_property";
        }

        else
        {
          return v3;
        }
      }

      if (this == 45058)
      {
        return "DW_TAG_BORLAND_Delphi_dynamic_array";
      }

      if (this == 45059)
      {
        return "DW_TAG_BORLAND_Delphi_set";
      }

      v4 = this == 45060;
      v5 = "DW_TAG_BORLAND_Delphi_variant";
LABEL_59:
      if (v4)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    if (this <= 34661)
    {
      v6 = 32775;
      v7 = "DW_TAG_GHS_template_templ_param";
      v8 = this == 34661;
      v9 = "DW_TAG_UPC_shared_type";
      goto LABEL_47;
    }

    if (this == 34662)
    {
      return "DW_TAG_UPC_strict_type";
    }

    v10 = 34663;
    v11 = "DW_TAG_UPC_relaxed";
    v12 = this == 40960;
    v13 = "DW_TAG_PGI_kanji_type";
  }

  if (!v12)
  {
    v13 = 0;
  }

  if (this == v10)
  {
    return v11;
  }

  else
  {
    return v13;
  }
}

const char *llvm::dwarf::OperationEncodingString(llvm::dwarf *this)
{
  v1 = this;
  result = 0;
  if (v1 > 4095)
  {
    v3 = "DW_OP_LLVM_arg";
    if (v1 != 4101)
    {
      v3 = 0;
    }

    if (v1 == 4100)
    {
      v4 = "DW_OP_LLVM_implicit_pointer";
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 4099)
    {
      v5 = "DW_OP_LLVM_entry_value";
    }

    else
    {
      v5 = v4;
    }

    v6 = "DW_OP_LLVM_fragment";
    v7 = "DW_OP_LLVM_tag_offset";
    if (v1 != 4098)
    {
      v7 = 0;
    }

    if (v1 == 4097)
    {
      v8 = "DW_OP_LLVM_convert";
    }

    else
    {
      v8 = v7;
    }

    if (v1 != 4096)
    {
      v6 = v8;
    }

    if (v1 <= 4098)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(v1)
    {
      case 3:
        result = "DW_OP_addr";
        break;
      case 6:
        result = "DW_OP_deref";
        break;
      case 8:
        result = "DW_OP_const1u";
        break;
      case 9:
        result = "DW_OP_const1s";
        break;
      case 10:
        result = "DW_OP_const2u";
        break;
      case 11:
        result = "DW_OP_const2s";
        break;
      case 12:
        result = "DW_OP_const4u";
        break;
      case 13:
        result = "DW_OP_const4s";
        break;
      case 14:
        result = "DW_OP_const8u";
        break;
      case 15:
        result = "DW_OP_const8s";
        break;
      case 16:
        result = "DW_OP_constu";
        break;
      case 17:
        result = "DW_OP_consts";
        break;
      case 18:
        result = "DW_OP_dup";
        break;
      case 19:
        result = "DW_OP_drop";
        break;
      case 20:
        result = "DW_OP_over";
        break;
      case 21:
        result = "DW_OP_pick";
        break;
      case 22:
        result = "DW_OP_swap";
        break;
      case 23:
        result = "DW_OP_rot";
        break;
      case 24:
        result = "DW_OP_xderef";
        break;
      case 25:
        result = "DW_OP_abs";
        break;
      case 26:
        result = "DW_OP_and";
        break;
      case 27:
        result = "DW_OP_div";
        break;
      case 28:
        result = "DW_OP_minus";
        break;
      case 29:
        result = "DW_OP_mod";
        break;
      case 30:
        result = "DW_OP_mul";
        break;
      case 31:
        result = "DW_OP_neg";
        break;
      case 32:
        result = "DW_OP_not";
        break;
      case 33:
        result = "DW_OP_or";
        break;
      case 34:
        result = "DW_OP_plus";
        break;
      case 35:
        result = "DW_OP_plus_uconst";
        break;
      case 36:
        result = "DW_OP_shl";
        break;
      case 37:
        result = "DW_OP_shr";
        break;
      case 38:
        result = "DW_OP_shra";
        break;
      case 39:
        result = "DW_OP_xor";
        break;
      case 40:
        result = "DW_OP_bra";
        break;
      case 41:
        result = "DW_OP_eq";
        break;
      case 42:
        result = "DW_OP_ge";
        break;
      case 43:
        result = "DW_OP_gt";
        break;
      case 44:
        result = "DW_OP_le";
        break;
      case 45:
        result = "DW_OP_lt";
        break;
      case 46:
        result = "DW_OP_ne";
        break;
      case 47:
        result = "DW_OP_skip";
        break;
      case 48:
        result = "DW_OP_lit0";
        break;
      case 49:
        result = "DW_OP_lit1";
        break;
      case 50:
        result = "DW_OP_lit2";
        break;
      case 51:
        result = "DW_OP_lit3";
        break;
      case 52:
        result = "DW_OP_lit4";
        break;
      case 53:
        result = "DW_OP_lit5";
        break;
      case 54:
        result = "DW_OP_lit6";
        break;
      case 55:
        result = "DW_OP_lit7";
        break;
      case 56:
        result = "DW_OP_lit8";
        break;
      case 57:
        result = "DW_OP_lit9";
        break;
      case 58:
        result = "DW_OP_lit10";
        break;
      case 59:
        result = "DW_OP_lit11";
        break;
      case 60:
        result = "DW_OP_lit12";
        break;
      case 61:
        result = "DW_OP_lit13";
        break;
      case 62:
        result = "DW_OP_lit14";
        break;
      case 63:
        result = "DW_OP_lit15";
        break;
      case 64:
        result = "DW_OP_lit16";
        break;
      case 65:
        result = "DW_OP_lit17";
        break;
      case 66:
        result = "DW_OP_lit18";
        break;
      case 67:
        result = "DW_OP_lit19";
        break;
      case 68:
        result = "DW_OP_lit20";
        break;
      case 69:
        result = "DW_OP_lit21";
        break;
      case 70:
        result = "DW_OP_lit22";
        break;
      case 71:
        result = "DW_OP_lit23";
        break;
      case 72:
        result = "DW_OP_lit24";
        break;
      case 73:
        result = "DW_OP_lit25";
        break;
      case 74:
        result = "DW_OP_lit26";
        break;
      case 75:
        result = "DW_OP_lit27";
        break;
      case 76:
        result = "DW_OP_lit28";
        break;
      case 77:
        result = "DW_OP_lit29";
        break;
      case 78:
        result = "DW_OP_lit30";
        break;
      case 79:
        result = "DW_OP_lit31";
        break;
      case 80:
        result = "DW_OP_reg0";
        break;
      case 81:
        result = "DW_OP_reg1";
        break;
      case 82:
        result = "DW_OP_reg2";
        break;
      case 83:
        result = "DW_OP_reg3";
        break;
      case 84:
        result = "DW_OP_reg4";
        break;
      case 85:
        result = "DW_OP_reg5";
        break;
      case 86:
        result = "DW_OP_reg6";
        break;
      case 87:
        result = "DW_OP_reg7";
        break;
      case 88:
        result = "DW_OP_reg8";
        break;
      case 89:
        result = "DW_OP_reg9";
        break;
      case 90:
        result = "DW_OP_reg10";
        break;
      case 91:
        result = "DW_OP_reg11";
        break;
      case 92:
        result = "DW_OP_reg12";
        break;
      case 93:
        result = "DW_OP_reg13";
        break;
      case 94:
        result = "DW_OP_reg14";
        break;
      case 95:
        result = "DW_OP_reg15";
        break;
      case 96:
        result = "DW_OP_reg16";
        break;
      case 97:
        result = "DW_OP_reg17";
        break;
      case 98:
        result = "DW_OP_reg18";
        break;
      case 99:
        result = "DW_OP_reg19";
        break;
      case 100:
        result = "DW_OP_reg20";
        break;
      case 101:
        result = "DW_OP_reg21";
        break;
      case 102:
        result = "DW_OP_reg22";
        break;
      case 103:
        result = "DW_OP_reg23";
        break;
      case 104:
        result = "DW_OP_reg24";
        break;
      case 105:
        result = "DW_OP_reg25";
        break;
      case 106:
        result = "DW_OP_reg26";
        break;
      case 107:
        result = "DW_OP_reg27";
        break;
      case 108:
        result = "DW_OP_reg28";
        break;
      case 109:
        result = "DW_OP_reg29";
        break;
      case 110:
        result = "DW_OP_reg30";
        break;
      case 111:
        result = "DW_OP_reg31";
        break;
      case 112:
        result = "DW_OP_breg0";
        break;
      case 113:
        result = "DW_OP_breg1";
        break;
      case 114:
        result = "DW_OP_breg2";
        break;
      case 115:
        result = "DW_OP_breg3";
        break;
      case 116:
        result = "DW_OP_breg4";
        break;
      case 117:
        result = "DW_OP_breg5";
        break;
      case 118:
        result = "DW_OP_breg6";
        break;
      case 119:
        result = "DW_OP_breg7";
        break;
      case 120:
        result = "DW_OP_breg8";
        break;
      case 121:
        result = "DW_OP_breg9";
        break;
      case 122:
        result = "DW_OP_breg10";
        break;
      case 123:
        result = "DW_OP_breg11";
        break;
      case 124:
        result = "DW_OP_breg12";
        break;
      case 125:
        result = "DW_OP_breg13";
        break;
      case 126:
        result = "DW_OP_breg14";
        break;
      case 127:
        result = "DW_OP_breg15";
        break;
      case 128:
        result = "DW_OP_breg16";
        break;
      case 129:
        result = "DW_OP_breg17";
        break;
      case 130:
        result = "DW_OP_breg18";
        break;
      case 131:
        result = "DW_OP_breg19";
        break;
      case 132:
        result = "DW_OP_breg20";
        break;
      case 133:
        result = "DW_OP_breg21";
        break;
      case 134:
        result = "DW_OP_breg22";
        break;
      case 135:
        result = "DW_OP_breg23";
        break;
      case 136:
        result = "DW_OP_breg24";
        break;
      case 137:
        result = "DW_OP_breg25";
        break;
      case 138:
        result = "DW_OP_breg26";
        break;
      case 139:
        result = "DW_OP_breg27";
        break;
      case 140:
        result = "DW_OP_breg28";
        break;
      case 141:
        result = "DW_OP_breg29";
        break;
      case 142:
        result = "DW_OP_breg30";
        break;
      case 143:
        result = "DW_OP_breg31";
        break;
      case 144:
        result = "DW_OP_regx";
        break;
      case 145:
        result = "DW_OP_fbreg";
        break;
      case 146:
        result = "DW_OP_bregx";
        break;
      case 147:
        result = "DW_OP_piece";
        break;
      case 148:
        result = "DW_OP_deref_size";
        break;
      case 149:
        result = "DW_OP_xderef_size";
        break;
      case 150:
        result = "DW_OP_nop";
        break;
      case 151:
        result = "DW_OP_push_object_address";
        break;
      case 152:
        result = "DW_OP_call2";
        break;
      case 153:
        result = "DW_OP_call4";
        break;
      case 154:
        result = "DW_OP_call_ref";
        break;
      case 155:
        result = "DW_OP_form_tls_address";
        break;
      case 156:
        result = "DW_OP_call_frame_cfa";
        break;
      case 157:
        result = "DW_OP_bit_piece";
        break;
      case 158:
        result = "DW_OP_implicit_value";
        break;
      case 159:
        result = "DW_OP_stack_value";
        break;
      case 160:
        result = "DW_OP_implicit_pointer";
        break;
      case 161:
        result = "DW_OP_addrx";
        break;
      case 162:
        result = "DW_OP_constx";
        break;
      case 163:
        result = "DW_OP_entry_value";
        break;
      case 164:
        result = "DW_OP_const_type";
        break;
      case 165:
        result = "DW_OP_regval_type";
        break;
      case 166:
        result = "DW_OP_deref_type";
        break;
      case 167:
        result = "DW_OP_xderef_type";
        break;
      case 168:
        result = "DW_OP_convert";
        break;
      case 169:
        result = "DW_OP_reinterpret";
        break;
      case 224:
        result = "DW_OP_GNU_push_tls_address";
        break;
      case 225:
        result = "DW_OP_HP_is_value";
        break;
      case 226:
        result = "DW_OP_HP_fltconst4";
        break;
      case 227:
        result = "DW_OP_HP_fltconst8";
        break;
      case 228:
        result = "DW_OP_HP_mod_range";
        break;
      case 229:
        result = "DW_OP_HP_unmod_range";
        break;
      case 230:
        result = "DW_OP_HP_tls";
        break;
      case 232:
        result = "DW_OP_INTEL_bit_piece";
        break;
      case 237:
        result = "DW_OP_WASM_location";
        break;
      case 238:
        result = "DW_OP_WASM_location_int";
        break;
      case 240:
        result = "DW_OP_APPLE_uninit";
        break;
      case 243:
        result = "DW_OP_GNU_entry_value";
        break;
      case 248:
        result = "DW_OP_PGI_omp_thread_num";
        break;
      case 251:
        result = "DW_OP_GNU_addr_index";
        break;
      case 252:
        result = "DW_OP_GNU_const_index";
        break;
      default:
        return result;
    }
  }

  return result;
}

const char *llvm::dwarf::AttributeEncodingString(llvm::dwarf *this)
{
  if (this > 128)
  {
    v2 = "DW_ATE_HP_floathpintel";
    v3 = "DW_ATE_HP_imaginary_float90";
    v4 = "DW_ATE_HP_imaginary_float128";
    if (this != 134)
    {
      v4 = 0;
    }

    if (this != 133)
    {
      v3 = v4;
    }

    if (this != 132)
    {
      v2 = v3;
    }

    v5 = "DW_ATE_HP_complex_float";
    v6 = "DW_ATE_HP_float128";
    v7 = "DW_ATE_HP_complex_float128";
    if (this != 131)
    {
      v7 = 0;
    }

    if (this != 130)
    {
      v6 = v7;
    }

    if (this != 129)
    {
      v5 = v6;
    }

    if (this <= 131)
    {
      return v5;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    switch(this)
    {
      case 1:
        result = "DW_ATE_address";
        break;
      case 2:
        result = "DW_ATE_BOOLean";
        break;
      case 3:
        result = "DW_ATE_complex_float";
        break;
      case 4:
        result = "DW_ATE_float";
        break;
      case 5:
        result = "DW_ATE_signed";
        break;
      case 6:
        result = "DW_ATE_signed_char";
        break;
      case 7:
        result = "DW_ATE_unsigned";
        break;
      case 8:
        result = "DW_ATE_unsigned_char";
        break;
      case 9:
        result = "DW_ATE_imaginary_float";
        break;
      case 10:
        result = "DW_ATE_packed_decimal";
        break;
      case 11:
        result = "DW_ATE_numeric_string";
        break;
      case 12:
        result = "DW_ATE_edited";
        break;
      case 13:
        result = "DW_ATE_signed_fixed";
        break;
      case 14:
        result = "DW_ATE_unsigned_fixed";
        break;
      case 15:
        result = "DW_ATE_decimal_float";
        break;
      case 16:
        result = "DW_ATE_UTF";
        break;
      case 17:
        result = "DW_ATE_UCS";
        break;
      case 18:
        result = "DW_ATE_ASCII";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

const char *llvm::dwarf::LanguageString(llvm::dwarf *this)
{
  v1 = this;
  result = 0;
  if (v1 > 0x8000)
  {
    v3 = "DW_LANG_BORLAND_Delphi";
    if (v1 != 45056)
    {
      v3 = 0;
    }

    if (v1 == 36439)
    {
      v4 = "DW_LANG_GOOGLE_RenderScript";
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 32769)
    {
      return "DW_LANG_Mips_Assembler";
    }

    else
    {
      return v4;
    }
  }

  else
  {
    switch(v1)
    {
      case 1:
        result = "DW_LANG_C89";
        break;
      case 2:
        result = "DW_LANG_C";
        break;
      case 3:
        result = "DW_LANG_Ada83";
        break;
      case 4:
        result = "DW_LANG_C_plus_plus";
        break;
      case 5:
        result = "DW_LANG_Cobol74";
        break;
      case 6:
        result = "DW_LANG_Cobol85";
        break;
      case 7:
        result = "DW_LANG_Fortran77";
        break;
      case 8:
        result = "DW_LANG_Fortran90";
        break;
      case 9:
        result = "DW_LANG_Pascal83";
        break;
      case 10:
        result = "DW_LANG_Modula2";
        break;
      case 11:
        result = "DW_LANG_Java";
        break;
      case 12:
        result = "DW_LANG_C99";
        break;
      case 13:
        result = "DW_LANG_Ada95";
        break;
      case 14:
        result = "DW_LANG_Fortran95";
        break;
      case 15:
        result = "DW_LANG_PLI";
        break;
      case 16:
        result = "DW_LANG_ObjC";
        break;
      case 17:
        result = "DW_LANG_ObjC_plus_plus";
        break;
      case 18:
        result = "DW_LANG_UPC";
        break;
      case 19:
        result = "DW_LANG_D";
        break;
      case 20:
        result = "DW_LANG_Python";
        break;
      case 21:
        result = "DW_LANG_OpenCL";
        break;
      case 22:
        result = "DW_LANG_Go";
        break;
      case 23:
        result = "DW_LANG_Modula3";
        break;
      case 24:
        result = "DW_LANG_Haskell";
        break;
      case 25:
        result = "DW_LANG_C_plus_plus_03";
        break;
      case 26:
        result = "DW_LANG_C_plus_plus_11";
        break;
      case 27:
        result = "DW_LANG_OCaml";
        break;
      case 28:
        result = "DW_LANG_Rust";
        break;
      case 29:
        result = "DW_LANG_C11";
        break;
      case 30:
        result = "DW_LANG_Swift";
        break;
      case 31:
        result = "DW_LANG_Julia";
        break;
      case 32:
        result = "DW_LANG_Dylan";
        break;
      case 33:
        result = "DW_LANG_C_plus_plus_14";
        break;
      case 34:
        result = "DW_LANG_Fortran03";
        break;
      case 35:
        result = "DW_LANG_Fortran08";
        break;
      case 36:
        result = "DW_LANG_RenderScript";
        break;
      case 37:
        result = "DW_LANG_BLISS";
        break;
      case 38:
        result = "DW_LANG_Kotlin";
        break;
      case 39:
        result = "DW_LANG_Zig";
        break;
      case 40:
        result = "DW_LANG_Crystal";
        break;
      case 42:
        result = "DW_LANG_C_plus_plus_17";
        break;
      case 43:
        result = "DW_LANG_C_plus_plus_20";
        break;
      case 44:
        result = "DW_LANG_C17";
        break;
      case 45:
        result = "DW_LANG_Fortran18";
        break;
      case 46:
        result = "DW_LANG_Ada2005";
        break;
      case 47:
        result = "DW_LANG_Ada2012";
        break;
      default:
        return result;
    }
  }

  return result;
}

const char *llvm::dwarf::ConventionString(llvm::dwarf *this)
{
  if (this <= 64)
  {
    v3 = "DW_CC_pass_by_reference";
    v4 = "DW_CC_pass_by_value";
    v5 = "DW_CC_GNU_renesas_sh";
    if (this != 64)
    {
      v5 = 0;
    }

    if (this != 5)
    {
      v4 = v5;
    }

    if (this != 4)
    {
      v3 = v4;
    }

    v6 = "DW_CC_normal";
    v7 = "DW_CC_program";
    v8 = "DW_CC_nocall";
    if (this != 3)
    {
      v8 = 0;
    }

    if (this != 2)
    {
      v7 = v8;
    }

    if (this != 1)
    {
      v6 = v7;
    }

    if (this <= 3)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = this - 176;
    result = 0;
    switch(v1)
    {
      case 0:
        result = "DW_CC_BORLAND_safecall";
        break;
      case 1:
        result = "DW_CC_BORLAND_stdcall";
        break;
      case 2:
        result = "DW_CC_BORLAND_pascal";
        break;
      case 3:
        result = "DW_CC_BORLAND_msfastcall";
        break;
      case 4:
        result = "DW_CC_BORLAND_msreturn";
        break;
      case 5:
        result = "DW_CC_BORLAND_thiscall";
        break;
      case 6:
        result = "DW_CC_BORLAND_fastcall";
        break;
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        return result;
      case 16:
        result = "DW_CC_LLVM_vectorcall";
        break;
      case 17:
        result = "DW_CC_LLVM_Win64";
        break;
      case 18:
        result = "DW_CC_LLVM_X86_64SysV";
        break;
      case 19:
        result = "DW_CC_LLVM_AAPCS";
        break;
      case 20:
        result = "DW_CC_LLVM_AAPCS_VFP";
        break;
      case 21:
        result = "DW_CC_LLVM_IntelOclBicc";
        break;
      case 22:
        result = "DW_CC_LLVM_SpirFunction";
        break;
      case 23:
        result = "DW_CC_LLVM_OpenCLKernel";
        break;
      case 24:
        result = "DW_CC_LLVM_Swift";
        break;
      case 25:
        result = "DW_CC_LLVM_PreserveMost";
        break;
      case 26:
        result = "DW_CC_LLVM_PreserveAll";
        break;
      case 27:
        result = "DW_CC_LLVM_X86RegCall";
        break;
      case 28:
        result = "DW_CC_LLVM_SwiftTail";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

const char *llvm::dwarf::MacinfoString(llvm::dwarf *this)
{
  v1 = "DW_MACINFO_start_file";
  v2 = "DW_MACINFO_end_file";
  v3 = "DW_MACINFO_vendor_ext";
  if (this != 255)
  {
    v3 = 0;
  }

  if (this != 4)
  {
    v2 = v3;
  }

  if (this != 3)
  {
    v1 = v2;
  }

  v4 = "DW_MACINFO_invalid";
  v5 = "DW_MACINFO_define";
  v6 = "DW_MACINFO_undef";
  if (this != 2)
  {
    v6 = 0;
  }

  if (this != 1)
  {
    v5 = v6;
  }

  if (this != -1)
  {
    v4 = v5;
  }

  if (this <= 2)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

int *llvm::MachO::getCPUType@<X0>(int *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  if (this[11] != 5)
  {
    unsupported("type", this);
  }

  v5 = this[6];
  if (v5 - 37 > 1)
  {
    goto LABEL_7;
  }

  this = getArchPointerBitWidth(this[6]);
  if (this == 64)
  {
    *(a2 + 8) &= ~1u;
    v6 = 16777223;
    goto LABEL_22;
  }

  if (this == 32)
  {
    *(a2 + 8) &= ~1u;
    v6 = 7;
  }

  else
  {
LABEL_7:
    if (v5 > 0x24 || ((1 << v5) & 0x1800000006) == 0)
    {
      if (v5 - 3 > 2)
      {
        if (v5 == 23)
        {
          *(a2 + 8) &= ~1u;
          v6 = 16777234;
        }

        else
        {
          if (v5 != 21)
          {
            unsupported("type", v3);
          }

          *(a2 + 8) &= ~1u;
          v6 = 18;
        }
      }

      else
      {
        this = getArchPointerBitWidth(v5);
        if (this == 32)
        {
          v6 = 33554444;
        }

        else
        {
          v6 = 16777228;
        }

        *(a2 + 8) &= ~1u;
      }
    }

    else
    {
      *(a2 + 8) &= ~1u;
      v6 = 12;
    }
  }

LABEL_22:
  *a2 = v6;
  return this;
}

void unsupported(const char *a1, const llvm::Triple *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v14[3] = 22;
  v14[4] = std::generic_category();
  memset(v14, 0, 24);
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2883EB8F0;
  v13 = v14;
  llvm::raw_ostream::SetUnbuffered(&v5);
  v4[0] = &unk_2883EB2C8;
  v4[1] = "Unsupported triple for mach-o cpu %s: %s";
  v4[2] = a1;
  v4[3] = v3;
  llvm::raw_ostream::operator<<(&v5, v4);
  llvm::make_error<llvm::StringError,std::string,std::error_code>();
}

_DWORD *llvm::MachO::getCPUSubType@<X0>(_DWORD *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  if (this[11] != 5)
  {
    unsupported("subtype", this);
  }

  v5 = this[6];
  if (v5 - 37 <= 1)
  {
    this = getArchPointerBitWidth(this[6]);
    if (this == 32 || (this = llvm::Triple::getArchName(v3), v6 != 7))
    {
      v10 = 3;
    }

    else
    {
      v7 = 2016949855;
      v8 = bswap32(*this);
      if (v8 == 2016949855 && (v7 = 1597387880, v8 = bswap32(*(this + 3)), v8 == 1597387880))
      {
        v9 = 0;
      }

      else if (v8 < v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 8;
      }
    }

    goto LABEL_54;
  }

  if (v5 > 0x24)
  {
LABEL_52:
    unsupported("subtype", this);
  }

  if (((1 << v5) & 0x1800000006) != 0)
  {
    ArchName = llvm::Triple::getArchName(this);
    this = llvm::ARM::parseArch(ArchName, v12);
    if (this == 39)
    {
      v13 = 12;
    }

    else
    {
      v13 = 9;
    }

    if (this == 38)
    {
      v14 = 11;
    }

    else
    {
      v14 = v13;
    }

    if (this == 15)
    {
      v15 = 16;
    }

    else
    {
      v15 = v14;
    }

    if (this == 14)
    {
      v16 = 15;
    }

    else
    {
      v16 = 9;
    }

    if (this == 10)
    {
      v17 = 14;
    }

    else
    {
      v17 = v16;
    }

    if (this <= 14)
    {
      v15 = v17;
    }

    if (this == 2)
    {
      v10 = 5;
    }

    else
    {
      v10 = 9;
    }

    if ((this - 6) < 2)
    {
      v10 = 6;
    }

    if ((this - 3) < 3)
    {
      v10 = 7;
    }

    if (this > 9)
    {
      v10 = v15;
    }

    goto LABEL_54;
  }

  if (((1 << v5) & 0x38) == 0)
  {
    if (((1 << v5) & 0xA00000) != 0)
    {
      *(a2 + 8) &= ~1u;
      *a2 = 0;
      return this;
    }

    goto LABEL_52;
  }

  this = getArchPointerBitWidth(this[6]);
  if (this == 32)
  {
    v10 = 1;
  }

  else if (v5 == 3)
  {
    v10 = 2 * (*(v3 + 7) == 33);
  }

  else
  {
    v10 = 0;
  }

LABEL_54:
  *(a2 + 8) &= ~1u;
  *a2 = v10;
  return this;
}

uint64_t llvm::identify_magic(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return 0;
  }

  v3 = *a1;
  if (v3 > 0x65)
  {
    if (*a1 <= 0xC3u)
    {
      if (*a1 > 0x7Eu)
      {
        if (v3 - 131 >= 2)
        {
          if (v3 == 127)
          {
            if (a2 < 0x12 || *a1 != 1179403647)
            {
              return 0;
            }

            v20 = a1[5];
            v21 = 16;
            if (v20 != 2)
            {
              v21 = 17;
            }

            if (a1[v21])
            {
              return 3;
            }

            v12 = v20 == 2;
            v22 = 16;
            if (v12)
            {
              v22 = 17;
            }

            v23 = a1[v22] - 1;
            if (v23 >= 4u)
            {
              return 3;
            }

            else
            {
              return v23 | 4u;
            }
          }

          if (v3 != 144)
          {
            return 0;
          }

          goto LABEL_78;
        }
      }

      else if (v3 != 102)
      {
        if (v3 != 104)
        {
          if (v3 != 123)
          {
            return 0;
          }

          return 32;
        }

        goto LABEL_78;
      }

      goto LABEL_76;
    }

    if (*a1 > 0xDDu)
    {
      if (v3 == 222)
      {
        v17 = *a1;
        v18 = 186106078;
        return v17 == v18;
      }

      if (v3 == 240)
      {
LABEL_76:
        if (*a1 == -1168773808)
        {
          return 33;
        }

        goto LABEL_77;
      }

      if (v3 != 254)
      {
        return 0;
      }
    }

    else if (v3 - 206 >= 2)
    {
      if (v3 != 196)
      {
        if (v3 != 202)
        {
          return 0;
        }

        if (*a1 == -1095041334)
        {
          if (a2 < 8)
          {
            return 0;
          }
        }

        else if (a2 < 8 || *a1 != -1078264118)
        {
          return 0;
        }

        if (a1[7] >= 43)
        {
          return 0;
        }

        return 20;
      }

LABEL_77:
      if (a1[1] == 1)
      {
        return 24;
      }

LABEL_78:
      if (a1[1] != 2)
      {
        return 0;
      }

      return 24;
    }

    if (*a1 == -822415874 || *a1 == -805638658)
    {
      v13 = 32;
      if (a1[3] == 206)
      {
        v13 = 28;
      }

      if (a2 < v13)
      {
        return 0;
      }

      v8 = 15;
      v9 = 14;
      v10 = 13;
    }

    else
    {
      if (*a1 != -17958194 && *a1 != -17958193)
      {
        return 0;
      }

      v12 = v3 == 206;
      v7 = 32;
      if (v12)
      {
        v7 = 28;
      }

      if (a2 < v7)
      {
        return 0;
      }

      v8 = 12;
      v9 = 13;
      v10 = 14;
    }

    v14 = ((a1[v9] << 8) | (a1[v10] << 12) | a1[v8]) - 1;
    if (v14 >= 0xCu)
    {
      return 0;
    }

    return dword_2750DE068[v14];
  }

  if (*a1 > 0x40u)
  {
    if (*a1 > 0x4Bu)
    {
      if (*a1 <= 0x4Fu)
      {
        if (v3 != 76)
        {
          if (v3 != 77)
          {
            return 0;
          }

          if (a2 >= 0x40 && *a1 == 23117)
          {
            v6 = *(a1 + 15);
            if (a2 < v6)
            {
              v6 = a2;
            }

            if (a2 - v6 >= 4 && *&a1[v6] == 17744)
            {
              return 26;
            }
          }

          else if (a2 < 0x1A)
          {
LABEL_139:
            if (*a1 != 1347241037)
            {
              return 0;
            }

            return 22;
          }

          if (*a1 == 0x666F736F7263694DLL && *(a1 + 1) == 0x202B2B432F432074 && *(a1 + 2) == 0x30302E372046534DLL && *(a1 + 12) == 2573)
          {
            return 31;
          }

          goto LABEL_139;
        }

        goto LABEL_77;
      }

      if (v3 != 80)
      {
        if (v3 != 100)
        {
          return 0;
        }

        v11 = a1[1];
        v12 = v11 == 170 || v11 == 134;
        if (v12)
        {
          return 24;
        }

        else
        {
          return 0;
        }
      }

      goto LABEL_76;
    }

    if (v3 == 65)
    {
      if (a1[1] != 166)
      {
        return 0;
      }

      return 24;
    }

    if (v3 != 66)
    {
      if (v3 == 68 && *a1 == 1128421444)
      {
        return 35;
      }

      return 0;
    }

    v17 = *a1;
    v18 = -557825214;
    return v17 == v18;
  }

  if (*a1 <= 0xFu)
  {
    if (*a1)
    {
      if (v3 != 1)
      {
        if (v3 == 3 && !(*a1 ^ 0xF003 | a1[2]))
        {
          return 8;
        }

        return 0;
      }

      if (*a1 == 57089)
      {
        return 28;
      }

      if (*a1 != -2303)
      {
        return 0;
      }

      return 29;
    }

    if (*a1 == -65536)
    {
      if (a2 < 0x1C)
      {
        return 25;
      }

      if (*(a1 + 12) != 0x4BA9BAEED1BAA1C7 || *(a1 + 20) != 0xB8DCA46AF6FA20AFLL)
      {
        if (*(a1 + 12) ^ 0x4DABD9A50CB3FE38 | *(a1 + 20) ^ 0xC2532622B6D69BACLL)
        {
          return 25;
        }

        else
        {
          return 23;
        }
      }
    }

    else
    {
      if (a2 >= 0x10 && *a1 == 0x2000000000 && *(a1 + 1) == 0xFFFF0000FFFFLL)
      {
        return 27;
      }

      if (a1[1])
      {
        if (*a1 != 1836278016)
        {
          return 0;
        }

        return 30;
      }
    }

    return 24;
  }

  if (*a1 > 0x2Cu)
  {
    if (v3 != 45)
    {
      if (v3 != 60 || a2 < 8)
      {
        return 0;
      }

      v4 = *a1;
      v5 = 0x66616769623CLL;
LABEL_66:
      if (v4 == (v5 & 0xFFFFFFFFFFFFLL | 0xA3E000000000000))
      {
        return 2;
      }

      return 0;
    }

    if (a2 < 9)
    {
      return 0;
    }

    if (*a1 != 0x70617421202D2D2DLL || a1[8] != 105)
    {
      if (a2 == 9)
      {
        return 0;
      }

      if (*a1 != 0x686372610A2D2D2DLL || *(a1 + 4) != 14963)
      {
        return 0;
      }
    }

    return 32;
  }

  if (v3 != 16)
  {
    if (v3 != 33 || a2 < 8)
    {
      return 0;
    }

    if (*a1 == 0xA3E686372613C21)
    {
      return 2;
    }

    v4 = *a1;
    v5 = 0x6E6968743C21;
    goto LABEL_66;
  }

  if (*a1 != -1391395056)
  {
    return 0;
  }

  return 34;
}

uint64_t llvm::identify_magic(const llvm::Twine *a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  getFileAux<llvm::MemoryBuffer>(a1, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 0, 0, 0, &v6);
  if (v7)
  {
    result = v6;
  }

  else
  {
    v4 = v6;
    *a2 = llvm::identify_magic(*(v6 + 8), *(v6 + 16) - *(v6 + 8));
    std::system_category();
    (*(*v4 + 8))(v4);
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::XCOFF::getMappingClassString(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return "Unknown";
  }

  v1 = qword_2750DE108[a1];
  return off_279F177E0[a1];
}

const char *llvm::XCOFF::getRelocationTypeString(unsigned int a1)
{
  if (a1 > 0x31)
  {
    return "Unknown";
  }

  v1 = qword_2750DE1C0[a1];
  return off_279F17898[a1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::BitstreamBlockInfo::BlockInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t _GLOBAL__sub_I_RemarkStreamer_cpp()
{
  v0 = llvm::cl::Option::Option(&EnableRemarksSection, 0, 0);
  dword_2815A4E78 = 0;
  qword_2815A4E80 = &unk_2883EA808;
  *&dword_2815A4E88 = 0;
  EnableRemarksSection = &unk_2883EB3F0;
  qword_2815A4E90 = &unk_2883EA878;
  qword_2815A4E98 = &unk_2883EB458;
  qword_2815A4EB0 = &qword_2815A4E98;
  llvm::cl::Option::setArgStr(v0, "remarks-section", 0xFuLL);
  qword_2815A4E18 = "Emit a section containing remark diagnostics metadata. By default, this is enabled for the following formats: yaml-strtab, bitstream.";
  unk_2815A4E20 = 133;
  dword_2815A4E78 = 0;
  byte_2815A4E8C = 1;
  dword_2815A4E88 = 0;
  word_2815A4E02 = word_2815A4E02 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&EnableRemarksSection);

  return __cxa_atexit(llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt, &EnableRemarksSection, &dword_274E5C000);
}

void **llvm::BitstreamCursor::EnterSubBlock@<X0>(llvm::BitstreamCursor *this@<X0>, unsigned int *a2@<X2>, int a3@<W1>, void ***a4@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = (this + 64);
  v8 = *(this + 8);
  LODWORD(v56) = *(this + 9);
  v10 = &v56;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v11 = *(this + 18);
  if (v11 >= *(this + 19))
  {
    if (v8 <= &v56 && v8 + 32 * v11 > &v56)
    {
      v55 = &v56 - v8;
      llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(this + 64, v11 + 1);
      v8 = *v9;
      v10 = &v55[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(this + 64, v11 + 1);
      v8 = *v9;
      v10 = &v56;
    }
  }

  v12 = v8 + 32 * *(this + 18);
  *v12 = *v10;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 8) = 0;
  *(v12 + 8) = *(v10 + 1);
  *(v12 + 24) = v10[3];
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  ++*(this + 18);
  v68 = &v57;
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v68);
  v13 = *(this + 8) + 32 * *(this + 18);
  v14 = *(v13 - 24);
  *(v13 - 24) = *(this + 5);
  *(this + 5) = v14;
  v15 = *(v13 - 16);
  *(v13 - 16) = *(this + 6);
  *(this + 6) = v15;
  v16 = *(v13 - 8);
  *(v13 - 8) = *(this + 7);
  *(this + 7) = v16;
  v17 = *(this + 42);
  if (v17)
  {
    v19 = *v17;
    v18 = v17[1];
    if (*v17 != v18)
    {
      v20 = v18 - 80;
      if (*(v18 - 80) != a3)
      {
        v20 = v19;
        while (*v20 != a3)
        {
          v20 += 80;
          if (v20 == v18)
          {
            goto LABEL_32;
          }
        }
      }

      v22 = *(v20 + 8);
      v21 = *(v20 + 16);
      v23 = v21 - v22;
      v24 = (v21 - v22) >> 4;
      if (v24 >= 1)
      {
        v25 = *(this + 6);
        if (v16 - v25 >= v23)
        {
          if (v22 == v21)
          {
            v30 = *(this + 6);
          }

          else
          {
            v30 = *(this + 6);
            do
            {
              *v25 = *v22;
              v31 = *(v22 + 1);
              v25[1] = v31;
              if (v31)
              {
                atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
              }

              v22 += 16;
              v25 += 2;
              v30 += 16;
            }

            while (v22 != v21);
          }

          *(this + 6) = v30;
        }

        else
        {
          v26 = *(this + 5);
          v27 = v24 + ((v25 - v26) >> 4);
          if (v27 >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v28 = v16 - v26;
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

          v60 = this + 40;
          if (v29)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>(this + 40, v29);
          }

          v32 = 16 * ((v25 - v26) >> 4);
          v59 = 0;
          v33 = (v32 + v23);
          v34 = v32;
          do
          {
            *v34 = *v22;
            v35 = *(v22 + 1);
            *(v34 + 1) = v35;
            if (v35)
            {
              atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
            }

            v34 += 16;
            v22 += 16;
          }

          while (v34 != v33);
          memcpy(v33, v25, *(this + 6) - v25);
          v36 = *(this + 5);
          v37 = &v33[*(this + 6) - v25];
          *(this + 6) = v25;
          v38 = v25 - v36;
          v39 = (v32 - (v25 - v36));
          memcpy(v39, v36, v38);
          v40 = *(this + 5);
          *(this + 5) = v39;
          *(this + 6) = v37;
          v41 = *(this + 7);
          *(this + 7) = v59;
          v58 = v40;
          v59 = v41;
          v56 = v40;
          v57 = v40;
          std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(&v56);
        }
      }
    }
  }

LABEL_32:
  result = llvm::SimpleBitstreamCursor::ReadVBR(this, 4u, &v66);
  if (v67)
  {
    v43 = v66;
    v66 = 0;
    *a4 = v43;
    goto LABEL_53;
  }

  v44 = v66;
  *(this + 9) = v66;
  if (v44 >= 0x21)
  {
    v45 = std::generic_category();
    __p[3] = 92;
    __p[4] = v45;
    memset(__p, 0, 24);
    LODWORD(v57) = 0;
    v61 = 0;
    v62 = 0;
    v63 = 1;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v56 = &unk_2883EB8F0;
    v64 = __p;
    llvm::raw_ostream::SetUnbuffered(&v56);
    v68 = &unk_2883F18F8;
    v69 = "can't read more than %zu at a time, trying to read %u";
    v70 = 32;
    v71 = *(this + 9);
    llvm::raw_ostream::operator<<(&v56, &v68);
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  v46 = *(this + 8);
  v47 = v46 >= 0x20;
  v48 = v46 - 32;
  if (v47)
  {
    *(this + 3) >>= v48;
    v49 = 32;
  }

  else
  {
    v49 = 0;
  }

  *(this + 8) = v49;
  result = llvm::SimpleBitstreamCursor::Read(this, 0x20u, &v68);
  if ((v69 & 1) == 0)
  {
    if (a2)
    {
      *a2 = v68;
    }

    if (*(this + 9))
    {
      if (*(this + 8) || *(this + 1) > *(this + 2))
      {
        *a4 = 0;
        goto LABEL_50;
      }

      v53 = std::generic_category();
      v56 = 92;
      v57 = v53;
      v52 = "can't enter sub block: already at end of stream";
    }

    else
    {
      v51 = std::generic_category();
      v56 = 92;
      v57 = v51;
      v52 = "can't enter sub-block: current code size is 0";
    }

    __p[0] = v52;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v50 = v68;
  v68 = 0;
  *a4 = v50;
LABEL_50:
  if (v69)
  {
    result = v68;
    v68 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }
  }

LABEL_53:
  if (v67)
  {
    result = v66;
    v66 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::BitstreamCursor::skipRecord@<X0>(llvm::BitstreamCursor *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2 == 3)
  {
    result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v43);
    if (v44)
    {
LABEL_3:
      v6 = v43;
      *(a3 + 8) |= 1u;
      *a3 = v6;
      goto LABEL_82;
    }

    v8 = v43;
    result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v41);
    if (v42)
    {
      v9 = v41;
      v41 = 0;
    }

    else
    {
      v34 = v41;
      if (!v41)
      {
LABEL_63:
        *(a3 + 8) &= ~1u;
        *a3 = v8;
        goto LABEL_76;
      }

      while (1)
      {
        result = llvm::SimpleBitstreamCursor::ReadVBR64(&v39, this, 6u);
        if (v40)
        {
          break;
        }

        if (!--v34)
        {
          goto LABEL_63;
        }
      }

      v9 = v39;
    }

    *(a3 + 8) |= 1u;
    *a3 = v9;
LABEL_76:
    if (v42)
    {
      result = v41;
      v41 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    if (v44)
    {
      result = v43;
      v43 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    goto LABEL_82;
  }

  result = llvm::BitstreamCursor::getAbbrev(&v41, *(this + 5), *(this + 6), a2);
  v7 = v41;
  if (v42)
  {
    *(a3 + 8) |= 1u;
    *a3 = v7;
    goto LABEL_82;
  }

  v10 = *v41;
  v11 = *(*v41 + 8);
  if (v11)
  {
    v12 = *v10;
  }

  else
  {
    v35 = (v11 >> 1) & 7;
    if (v35 == 5 || v35 == 3)
    {
      v37 = std::generic_category();
      v43 = 92;
      v44 = v37;
      v39 = "Abbreviation starts with an Array or a Blob";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    result = readAbbreviatedField(&v43, this, *v10, v11);
    if (v44)
    {
      goto LABEL_3;
    }

    LODWORD(v12) = v43;
  }

  v13 = *(v7 + 8);
  v14 = *a3;
  if (v13 <= 1)
  {
    LOBYTE(v15) = *(a3 + 8);
    goto LABEL_71;
  }

  v15 = *(a3 + 8);
  v16 = 1;
  while (1)
  {
    v17 = *v7 + 16 * v16;
    v18 = *(v17 + 8);
    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_58:
    if (++v16 >= v13)
    {
      goto LABEL_71;
    }
  }

  v19 = (v18 >> 1) & 7;
  if (v19 == 3)
  {
    result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v39);
    if (v40)
    {
      v14 = v39;
      v39 = 0;
      v15 |= 1u;
      v20 = 1;
      goto LABEL_50;
    }

    v24 = v39;
    v25 = *v7 + 16 * ++v16;
    v26 = (*(v25 + 8) >> 1) & 7;
    switch(v26)
    {
      case 1:
        result = llvm::SimpleBitstreamCursor::JumpToBit(this, *v25 * v39 - *(this + 8) + 8 * *(this + 2), &v43);
        if (v43)
        {
          v15 |= 1u;
          v20 = 1;
          v14 = v43;
          goto LABEL_50;
        }

        break;
      case 4:
        result = llvm::SimpleBitstreamCursor::JumpToBit(this, (6 * v39) + 8 * *(this + 2) - *(this + 8), &v43);
        if (v43)
        {
          v15 |= 1u;
          v20 = 1;
          v14 = v43;
        }

        else
        {
          v20 = 7;
        }

        goto LABEL_50;
      case 2:
        if (v39)
        {
          while (1)
          {
            result = llvm::SimpleBitstreamCursor::ReadVBR64(&v43, this, *v25);
            if (v44)
            {
              break;
            }

            if (!--v24)
            {
              goto LABEL_46;
            }
          }

          v14 = v43;
          v15 |= 1u;
          v20 = 1;
LABEL_50:
          if ((v40 & 1) == 0)
          {
            goto LABEL_53;
          }

          result = v39;
          v39 = 0;
          if (!result)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        break;
      default:
        v32 = std::generic_category();
        v43 = 92;
        v44 = v32;
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

LABEL_46:
    v20 = 7;
    goto LABEL_50;
  }

  if (v19 != 5)
  {
    result = readAbbreviatedField(&v43, this, *v17, v18);
    if (v44)
    {
      v20 = 1;
    }

    else
    {
      v20 = 7;
    }

    if (v44)
    {
      v14 = v43;
    }

    v15 |= v44 & 1;
    goto LABEL_53;
  }

  result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v43);
  if (v44)
  {
    v14 = v43;
    v15 |= 1u;
    v20 = 1;
    goto LABEL_53;
  }

  v21 = *(this + 8);
  v22 = v21 >= 0x20;
  v23 = v21 - 32;
  if (v22)
  {
    *(this + 3) >>= v23;
    v27 = 32;
  }

  else
  {
    v27 = 0;
  }

  v28 = v43;
  *(this + 8) = v27;
  v29 = ((8 * v28 + 24) & 0xFFFFFFFE0) - v27;
  v30 = *(this + 1);
  v31 = v29 + 8 * *(this + 2);
  if (v30 < v31 >> 3)
  {
    *(this + 2) = v30;
    v20 = 5;
    goto LABEL_53;
  }

  result = llvm::SimpleBitstreamCursor::JumpToBit(this, v31, &v39);
  v20 = v39 != 0;
  v15 |= v20;
  if (v39)
  {
    v14 = v39;
  }

  if (v44)
  {
    result = v43;
    v43 = 0;
    if (result)
    {
LABEL_52:
      result = (*(*result + 8))(result);
    }
  }

LABEL_53:
  if (v20)
  {
    v33 = v20 == 7;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    goto LABEL_58;
  }

  if (v20 != 5)
  {
    *(a3 + 8) = v15;
    *a3 = v14;
    goto LABEL_82;
  }

LABEL_71:
  *a3 = v14;
  *(a3 + 8) = v15 & 0xFE;
  *a3 = v12;
LABEL_82:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::SimpleBitstreamCursor::ReadVBR64(llvm::SimpleBitstreamCursor *this, llvm::SimpleBitstreamCursor *a2, unsigned int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  result = llvm::SimpleBitstreamCursor::Read(a2, a3, &v19);
  v18 = v20 & 1;
  v7 = v19;
  v17 = v19;
  if (v20)
  {
    v8 = *(this + 8) & 0xFE | v20 & 1;
LABEL_18:
    *(this + 8) = v8;
    goto LABEL_19;
  }

  v9 = 1 << (a3 - 1);
  if ((v19 & v9) == 0)
  {
    v7 = v19;
    v8 = *(this + 8) & 0xFE;
    goto LABEL_18;
  }

  v10 = (v9 - 1) & v19;
  v11 = a3 - 1;
  while (1)
  {
    if (v11 >= 0x40)
    {
      v14 = std::generic_category();
      v19 = 92;
      v20 = v14;
      v15 = "Unterminated VBR";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    llvm::SimpleBitstreamCursor::Read(a2, a3, &v15);
    LOBYTE(v20) = v20 & 0xFE | v16 & 1;
    v12 = v15;
    if (v16)
    {
      v15 = 0;
    }

    v19 = v12;
    result = llvm::Expected<llvm::orc::ExecutorAddr>::moveAssign<llvm::orc::ExecutorAddr>(&v17, &v19);
    if (v20)
    {
      result = v19;
      v19 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    if (v16)
    {
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    if (v18)
    {
      break;
    }

    v10 |= ((v9 - 1) & v17) << v11;
    v11 += a3 - 1;
    if ((v17 & v9) == 0)
    {
      *(this + 8) &= ~1u;
      *this = v10;
      goto LABEL_20;
    }
  }

  *(this + 8) = *(this + 8) & 0xFE | v18 & 1;
  v7 = v17;
LABEL_19:
  *this = v7;
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::BitstreamCursor::getAbbrev(uint64_t this, uint64_t a2, uint64_t a3, int a4)
{
  v4 = (a4 - 4);
  if (v4 >= (a3 - a2) >> 4)
  {
    std::generic_category();
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v5 = *(a2 + 16 * v4);
  *(this + 8) &= ~1u;
  *this = v5;
  return this;
}

uint64_t readAbbreviatedField(llvm::SimpleBitstreamCursor *this, llvm::SimpleBitstreamCursor *a2, unsigned int a3, unsigned int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = (a4 >> 1) & 7;
  if (v5 == 4)
  {
    result = llvm::SimpleBitstreamCursor::Read(a2, 6u, &v11);
    if (v12)
    {
      v8 = v11;
      v9 = *(this + 8) | 1;
    }

    else
    {
      v8 = aAbcdefghijklmn_5[v11];
      v9 = *(this + 8) & 0xFE;
    }

    *(this + 8) = v9;
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    result = llvm::SimpleBitstreamCursor::Read(a2, a3, &v11);
    *(this + 8) = *(this + 8) & 0xFE | v12 & 1;
    v8 = v11;
LABEL_11:
    *this = v8;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = *MEMORY[0x277D85DE8];

  return llvm::SimpleBitstreamCursor::ReadVBR64(this, a2, a3);
}

uint64_t llvm::BitstreamCursor::readRecord@<X0>(llvm::SimpleBitstreamCursor *this@<X0>, int a2@<W1>, unsigned int *a3@<X2>, unsigned __int8 **a4@<X3>, uint64_t a5@<X8>)
{
  v75 = *MEMORY[0x277D85DE8];
  if (a2 != 3)
  {
    result = llvm::BitstreamCursor::getAbbrev(&v73, *(this + 5), *(this + 6), a2);
    v11 = v73;
    if (v74)
    {
      *(a5 + 8) |= 1u;
      *a5 = v11;
      goto LABEL_115;
    }

    v18 = *v73;
    v19 = *(*v73 + 8);
    if (v19)
    {
      v20 = *v18;
    }

    else
    {
      v27 = (v19 >> 1) & 7;
      if (v27 == 5 || v27 == 3)
      {
        *&__p = 92;
        *(&__p + 1) = std::generic_category();
        v68.__r_.__value_.__r.__words[0] = "Abbreviation starts with an Array or a Blob";
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
      }

      result = readAbbreviatedField(&__p, this, *v18, v19);
      if (BYTE8(__p))
      {
        v9 = __p;
        goto LABEL_4;
      }

      LODWORD(v20) = __p;
    }

    v62 = v20;
    v21 = *(v11 + 8);
    if (v21 == 1)
    {
      LOBYTE(v22) = *(a5 + 8);
      v23 = *a5;
LABEL_16:
      *a5 = v23;
      *(a5 + 8) = v22 & 0xFE;
      *a5 = v62;
      goto LABEL_115;
    }

    v60 = a4;
    v29 = 1;
    v22 = *(a5 + 8);
    v23 = *a5;
    while (1)
    {
      v30 = *v11 + 16 * v29;
      v31 = *(v30 + 8);
      if (v31)
      {
        result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, *v30);
        goto LABEL_83;
      }

      v32 = (v31 >> 1) & 7;
      if (v32 == 3)
      {
        break;
      }

      if (v32 == 5)
      {
        result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v68);
        if (v68.__r_.__value_.__s.__data_[8])
        {
          v23 = v68.__r_.__value_.__r.__words[0];
          v68.__r_.__value_.__r.__words[0] = 0;
          v22 |= 1u;
          v33 = 1;
        }

        else
        {
          v39 = *(this + 8);
          v40 = v23;
          v41 = v39 >= 0x20;
          v42 = v39 - 32;
          if (v41)
          {
            *(this + 3) >>= v42;
            v48 = 32;
          }

          else
          {
            v48 = 0;
          }

          data_low = LODWORD(v68.__r_.__value_.__l.__data_);
          *(this + 8) = v48;
          v50 = 8 * *(this + 2) - v48;
          v51 = v50 + ((8 * data_low + 24) & 0xFFFFFFFE0);
          if (*(this + 1) < v51 >> 3)
          {
            v52 = std::generic_category();
            *&__p = 92;
            *(&__p + 1) = v52;
            v66 = "Blob ends too soon";
            llvm::make_error<llvm::StringError,char const*&,std::error_code>();
          }

          result = llvm::SimpleBitstreamCursor::JumpToBit(this, v51, &__p);
          if (__p)
          {
            v22 |= 1u;
            v33 = 1;
            v23 = __p;
          }

          else
          {
            v55 = (*this + (v50 >> 3));
            if (v60)
            {
              v33 = 0;
              *v60 = v55;
              v60[1] = data_low;
            }

            else
            {
              result = llvm::SmallVectorImpl<unsigned long long>::append<unsigned char const*,void>(a3, v55, &data_low[v55]);
              v33 = 0;
            }

            v23 = v40;
          }
        }

        if (v68.__r_.__value_.__s.__data_[8])
        {
          result = v68.__r_.__value_.__r.__words[0];
          v68.__r_.__value_.__r.__words[0] = 0;
          if (result)
          {
LABEL_80:
            result = (*(*result + 8))(result);
          }
        }
      }

      else
      {
        result = readAbbreviatedField(&__p, this, *v30, v31);
        if (BYTE8(__p))
        {
          v23 = __p;
          v22 |= 1u;
          v33 = 1;
        }

        else
        {
          result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, __p);
          v33 = 7;
        }
      }

LABEL_81:
      if (v33 != 7 && v33)
      {
        *(a5 + 8) = v22;
        *a5 = v23;
        goto LABEL_115;
      }

LABEL_83:
      if (++v29 == v21)
      {
        goto LABEL_16;
      }
    }

    result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v71);
    if (v72)
    {
      v34 = v71;
      v71 = 0;
      v63 = v34;
      llvm::toString(&v63, &v68);
      v35 = std::string::insert(&v68, 0, "Failed to read size: ");
      v36 = v35->__r_.__value_.__r.__words[2];
      __p = *&v35->__r_.__value_.__l.__data_;
      v70 = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (v70 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v38 = std::generic_category();
      v66 = 92;
      v67 = v38;
      v65 = p_p;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v61 = v23;
    v43 = v71;
    if (v71 >= (8 * *(this + 1)))
    {
      v53 = std::generic_category();
      *&__p = 92;
      *(&__p + 1) = v53;
      v68.__r_.__value_.__r.__words[0] = "Size is not plausible";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v44 = a3[2] + v71;
    if (v44 > a3[3])
    {
      result = llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v44, 8);
    }

    if (v29 + 2 != v21)
    {
      v54 = std::generic_category();
      *&__p = 92;
      *(&__p + 1) = v54;
      v68.__r_.__value_.__r.__words[0] = "Array op not second to last";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v45 = *v11 + 16 * ++v29;
    v46 = *(v45 + 8);
    if (v46)
    {
      v47 = std::generic_category();
      *&__p = 92;
      *(&__p + 1) = v47;
      v68.__r_.__value_.__r.__words[0] = "Array element type has to be an encoding of a type";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v56 = (v46 >> 1) & 7;
    switch(v56)
    {
      case 1:
        if (v43)
        {
          while (1)
          {
            result = llvm::SimpleBitstreamCursor::Read(this, *v45, &__p);
            if (BYTE8(__p))
            {
              goto LABEL_98;
            }

            result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, __p);
            if (BYTE8(__p))
            {
              result = __p;
              *&__p = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }
            }

            v33 = 7;
            if (!--v43)
            {
              goto LABEL_100;
            }
          }
        }

        break;
      case 2:
        if (v43)
        {
          while (1)
          {
            result = llvm::SimpleBitstreamCursor::ReadVBR64(&__p, this, *v45);
            if (BYTE8(__p))
            {
              break;
            }

            result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, __p);
            v33 = 7;
            if (!--v43)
            {
              goto LABEL_100;
            }
          }

LABEL_98:
          v23 = __p;
          v22 |= 1u;
          v33 = 1;
          goto LABEL_61;
        }

        break;
      case 4:
        if (v43)
        {
          while (1)
          {
            result = llvm::SimpleBitstreamCursor::Read(this, 6u, &__p);
            if (BYTE8(__p))
            {
              break;
            }

            result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, aAbcdefghijklmn_5[__p]);
            if (BYTE8(__p))
            {
              result = __p;
              *&__p = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }
            }

            v33 = 7;
            if (!--v43)
            {
              goto LABEL_100;
            }
          }

          v23 = __p;
          v22 |= 1u;
          v33 = 1;
LABEL_61:
          if (v72)
          {
            result = v71;
            v71 = 0;
            if (result)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_81;
        }

        v33 = 7;
LABEL_100:
        v23 = v61;
        goto LABEL_61;
      default:
        v57 = std::generic_category();
        *&__p = 92;
        *(&__p + 1) = v57;
        v68.__r_.__value_.__r.__words[0] = "Array element type can't be an Array or a Blob";
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v33 = 7;
    goto LABEL_100;
  }

  result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v73);
  if (v74)
  {
    v9 = v73;
LABEL_4:
    *(a5 + 8) |= 1u;
    *a5 = v9;
    goto LABEL_115;
  }

  v12 = v73;
  result = llvm::SimpleBitstreamCursor::ReadVBR(this, 6u, &v71);
  if (v72)
  {
    v13 = v71;
    v71 = 0;
    v64 = v13;
    llvm::toString(&v64, &v68);
    v14 = std::string::insert(&v68, 0, "Failed to read size: ");
    v15 = v14->__r_.__value_.__r.__words[2];
    __p = *&v14->__r_.__value_.__l.__data_;
    v70 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v70 >= 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p;
    }

    v17 = std::generic_category();
    v66 = 92;
    v67 = v17;
    v65 = v16;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v24 = v71;
  if (v71 >= (8 * *(this + 1)))
  {
    *&__p = 92;
    *(&__p + 1) = std::generic_category();
    v68.__r_.__value_.__r.__words[0] = "Size is not plausible";
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v25 = a3[2] + v71;
  if (v25 > a3[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v25, 8);
  }

  if (v24)
  {
    v26 = *(a5 + 8);
    while (1)
    {
      result = llvm::SimpleBitstreamCursor::ReadVBR64(&__p, this, 6u);
      if (BYTE8(__p))
      {
        break;
      }

      result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, __p);
      if (!--v24)
      {
        goto LABEL_106;
      }
    }

    v58 = __p;
    *(a5 + 8) = v26 | 1;
    *a5 = v58;
  }

  else
  {
    v26 = *(a5 + 8);
LABEL_106:
    *(a5 + 8) = v26 & 0xFE;
    *a5 = v12;
  }

  if (v72)
  {
    result = v71;
    v71 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if (v74)
  {
    result = v73;
    v73 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_115:
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::BitstreamCursor::ReadBlockInfoBlock(llvm::BitstreamCursor *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v53[64] = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(this, 0, 0, &v51);
  v6 = v51;
  if (v51)
  {
    *(a3 + 32) |= 1u;
    *a3 = v6;
    goto LABEL_78;
  }

  v7 = 0;
  v45 = 0uLL;
  v46 = 0;
  v51 = v53;
  v52 = 0x4000000000;
  do
  {
    llvm::BitstreamCursor::advanceSkippingSubblocks(this, 2, &v49);
    if (v50)
    {
      v8 = v49;
      v49 = 0;
LABEL_6:
      *(a3 + 32) |= 1u;
      *a3 = v8;
      goto LABEL_11;
    }

    switch(v49)
    {
      case 2:
        goto LABEL_10;
      case 1:
        *(a3 + 32) &= ~1u;
        *a3 = v45;
        *(a3 + 16) = v46;
        v45 = 0uLL;
        v46 = 0;
        v9 = 1;
        *(a3 + 24) = 1;
        goto LABEL_12;
      case 0:
        goto LABEL_10;
    }

    if (HIDWORD(v49) == 2)
    {
      if (v7)
      {
        llvm::BitstreamCursor::ReadAbbrevRecord(this);
      }

LABEL_10:
      *(a3 + 32) &= ~1u;
      *a3 = 0;
      *(a3 + 24) = 0;
LABEL_11:
      v9 = 1;
      goto LABEL_12;
    }

    LODWORD(v52) = 0;
    llvm::BitstreamCursor::readRecord(this, SHIDWORD(v49), &v51, 0, &v47);
    if (v48)
    {
      v8 = v47;
      v47 = 0;
      goto LABEL_6;
    }

    switch(v47)
    {
      case 3:
        if (!v7)
        {
          goto LABEL_10;
        }

        if (a2)
        {
          v15 = *v51;
          std::string::__init_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(__p, v51 + 1, v51 + v52, (8 * v52 - 8) >> 3);
          v16 = *(v7 + 64);
          v17 = *(v7 + 72);
          if (v16 >= v17)
          {
            v23 = *(v7 + 56);
            v24 = (v16 - v23) >> 5;
            v25 = v24 + 1;
            if ((v24 + 1) >> 59)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v26 = v17 - v23;
            if (v26 >> 4 > v25)
            {
              v25 = v26 >> 4;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFE0)
            {
              v27 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,std::string>>>(v7 + 56, v27);
            }

            v33 = 32 * v24;
            *v33 = v15;
            v34 = *__p;
            *(v33 + 24) = v44;
            *(v33 + 8) = v34;
            __p[1] = 0;
            v44 = 0;
            __p[0] = 0;
            v35 = 32 * v24 + 32;
            v36 = *(v7 + 56);
            v37 = *(v7 + 64) - v36;
            v38 = v33 - v37;
            memcpy((v33 - v37), v36, v37);
            v39 = *(v7 + 56);
            *(v7 + 56) = v38;
            *(v7 + 64) = v35;
            *(v7 + 72) = 0;
            if (v39)
            {
              operator delete(v39);
            }

            v40 = SHIBYTE(v44);
            *(v7 + 64) = v35;
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *v16 = v15;
            v18 = *__p;
            *(v16 + 24) = v44;
            *(v16 + 8) = v18;
            *(v7 + 64) = v16 + 32;
          }

          if (v48)
          {
            v41 = v47;
            v47 = 0;
            if (v41)
            {
              (*(*v41 + 8))(v41);
            }
          }
        }

LABEL_74:
        v9 = 0;
        break;
      case 2:
        if (!v7)
        {
          goto LABEL_10;
        }

        if (!a2)
        {
          goto LABEL_74;
        }

        std::string::__init_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(__p, v51, v51 + v52, v52);
        if (*(v7 + 55) < 0)
        {
          operator delete(*(v7 + 32));
        }

        v9 = 0;
        *(v7 + 32) = *__p;
        *(v7 + 48) = v44;
        break;
      case 1:
        if (!v52)
        {
          goto LABEL_10;
        }

        v11 = *v51;
        v13 = *(&v45 + 1);
        v12 = v45;
        if (v45 != *(&v45 + 1))
        {
          v7 = *(&v45 + 1) - 80;
          if (*(*(&v45 + 1) - 80) != v11)
          {
            v7 = v45;
            while (*v7 != v11)
            {
              v7 += 80;
              if (v7 == *(&v45 + 1))
              {
                goto LABEL_32;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_32:
        if (*(&v45 + 1) >= v46)
        {
          v19 = *(&v45 + 1) - v45;
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v45 + 1) - v45) >> 4);
          v21 = v20 + 1;
          if (v20 + 1 > 0x333333333333333)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          if (0x999999999999999ALL * ((v46 - v45) >> 4) > v21)
          {
            v21 = 0x999999999999999ALL * ((v46 - v45) >> 4);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v46 - v45) >> 4) >= 0x199999999999999)
          {
            v22 = 0x333333333333333;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::BitstreamBlockInfo::BlockInfo>>(&v45, v22);
          }

          v28 = (16 * ((*(&v45 + 1) - v45) >> 4));
          v28[3] = 0u;
          v28[4] = 0u;
          v28[1] = 0u;
          v28[2] = 0u;
          *v28 = 0u;
          v29 = 80 * v20 - v19;
          if (v12 != v13)
          {
            v30 = v12;
            v31 = v29;
            do
            {
              *v31 = *v30;
              *(v31 + 16) = 0;
              *(v31 + 24) = 0;
              *(v31 + 8) = 0;
              *(v31 + 8) = *(v30 + 8);
              *(v31 + 24) = *(v30 + 3);
              *(v30 + 1) = 0;
              *(v30 + 2) = 0;
              *(v30 + 3) = 0;
              v32 = *(v30 + 2);
              *(v31 + 48) = *(v30 + 6);
              *(v31 + 32) = v32;
              *(v30 + 5) = 0;
              *(v30 + 6) = 0;
              *(v30 + 4) = 0;
              *(v31 + 56) = 0;
              *(v31 + 64) = 0;
              *(v31 + 72) = 0;
              *(v31 + 56) = *(v30 + 56);
              *(v31 + 72) = *(v30 + 9);
              *(v30 + 7) = 0;
              *(v30 + 8) = 0;
              *(v30 + 9) = 0;
              v30 += 80;
              v31 += 80;
            }

            while (v30 != v13);
            do
            {
              std::allocator_traits<std::allocator<llvm::BitstreamBlockInfo::BlockInfo>>::destroy[abi:nn200100]<llvm::BitstreamBlockInfo::BlockInfo,0>(v12);
              v12 += 80;
            }

            while (v12 != v13);
            v12 = v45;
            v22 = 0;
          }

          v14 = v28 + 5;
          *&v45 = v29;
          *(&v45 + 1) = v28 + 5;
          v46 = 80 * v22;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          *(*(&v45 + 1) + 48) = 0u;
          *(v13 + 4) = 0u;
          *(v13 + 1) = 0u;
          *(v13 + 2) = 0u;
          v14 = v13 + 80;
          *v13 = 0u;
        }

        v9 = 0;
        *(&v45 + 1) = v14;
        *(v14 - 20) = v11;
        v7 = (v14 - 5);
        break;
      default:
        goto LABEL_74;
    }

LABEL_12:
    if (v50)
    {
      v10 = v49;
      v49 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  while ((v9 | 2) == 2);
  if (v51 != v53)
  {
    free(v51);
  }

  v51 = &v45;
  std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v51);
LABEL_78:
  v42 = *MEMORY[0x277D85DE8];
}

void std::allocator_traits<std::allocator<llvm::BitstreamBlockInfo::BlockInfo>>::destroy[abi:nn200100]<llvm::BitstreamBlockInfo::BlockInfo,0>(uint64_t a1)
{
  v2 = (a1 + 56);
  std::vector<std::pair<unsigned int,std::string>>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = (a1 + 8);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t llvm::ARM::getArchSynonym(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[0] = a1;
  v45[1] = a2;
  LOBYTE(v46) = 0;
  v48 = 0;
  if (a2 == 4)
  {
    if (*a1 != 1818769014)
    {
      goto LABEL_21;
    }

    v9 = "v6k";
    goto LABEL_18;
  }

  if (a2 != 3)
  {
    if (a2 != 2 || *a1 != 13686)
    {
      goto LABEL_21;
    }

    v9 = "v5t";
LABEL_18:
    v12 = 3;
    goto LABEL_20;
  }

  if (*a1 == 13686 && *(a1 + 2) == 101)
  {
    v9 = "v5te";
    v12 = 4;
    goto LABEL_20;
  }

  if (*a1 == 13942 && *(a1 + 2) == 106)
  {
    v9 = "v6";
    v12 = 2;
LABEL_20:
    v46 = v9;
    v47 = v12;
    v48 = 1;
  }

LABEL_21:
  v13 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Cases(v45, "v6m", 3, "v6sm", 4, "v6s-m", 5, a8, "v6-m", 4);
  v14 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v13, "v6z", 3, "v6kz", 4);
  v15 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v14, "v6zk", 4, "v6kz", 4);
  v16 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v15, "v7", 2, "v7-a", 4);
  v18 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Cases(v16, "v7a", 3, "v7hl", 4, "v7l", 3, v17, "v7-a", 4);
  v19 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v18, "v7r", 3, "v7-r", 4);
  v20 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v19, "v7m", 3, "v7-m", 4);
  v21 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v20, "v7em", 4, "v7e-m", 5);
  v23 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Cases(v21, "v8", 2, "v8a", 3, "v8l", 3, v22, "aarch64", 7, "arm64", 5, "v8-a", 4);
  v24 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v23, "v8.1a", 5, "v8.1-a", 6);
  v25 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v24, "v8.2a", 5, "v8.2-a", 6);
  v26 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v25, "v8.3a", 5, "v8.3-a", 6);
  v27 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v26, "v8.4a", 5, "v8.4-a", 6);
  v28 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v27, "v8.5a", 5, "v8.5-a", 6);
  v29 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v28, "v8.6a", 5, "v8.6-a", 6);
  v30 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v29, "v8.7a", 5, "v8.7-a", 6);
  v31 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v30, "v8.8a", 5, "v8.8-a", 6);
  v32 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v31, "v8.9a", 5, "v8.9-a", 6);
  v33 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v32, "v8r", 3, "v8-r", 4);
  v34 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v33, "v9", 2, "v9-a", 4);
  v35 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v34, "v9a", 3, "v9-a", 4);
  v36 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v35, "v9.1a", 5, "v9.1-a", 6);
  v37 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v36, "v9.2a", 5, "v9.2-a", 6);
  v38 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v37, "v9.3a", 5, "v9.3-a", 6);
  v39 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v38, "v9.4a", 5, "v9.4-a", 6);
  v40 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v39, "v8m.base", 8, "v8-m.base", 9);
  v41 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v40, "v8m.main", 8, "v8-m.main", 9);
  v42 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v41, "v8.1m.main", 10, "v8.1-m.main", 11);
  v43 = *(v42 + 24);
  if (*(v42 + 32))
  {
    return *(v42 + 16);
  }

  else
  {
    return a1;
  }
}

uint64_t llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v7 = *(a1 + 8);
    if (v7 == a3 && (!v7 || !memcmp(*a1, a2, v7)))
    {
      *(a1 + 16) = a4;
      *(a1 + 24) = a5;
      *(a1 + 32) = 1;
    }
  }

  return a1;
}

uint64_t llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(a1, a2, a3, a9, a10);
  v15 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v14, a4, a5, a9, a10);

  return llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v15, a6, a7, a9, a10);
}

uint64_t llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(a1, a2, a3, a13, a14);
  v19 = llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Case(v18, a4, a5, a13, a14);

  return llvm::StringSwitch<llvm::StringRef,llvm::StringRef>::Cases(v19, a6, a7, a9, a10, a11, a12, v20, a13, a14);
}

const char *llvm::ARM::getCanonicalArchName(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v26 = a1;
  v27 = a2;
  if (a2 >= 8)
  {
    if (*a1 == 0x32335F34366D7261)
    {
      v5 = 8;
      goto LABEL_61;
    }
  }

  else if (a2 < 6)
  {
    if (a2 != 5)
    {
      if (a2 < 3)
      {
        v5 = -1;
        v4 = a2;
        goto LABEL_67;
      }

      if (*a1 != 29281 || *(a1 + 2) != 109)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v3 = *a1 == 913142369 && *(a1 + 4) == 52;
    if (v3)
    {
      v4 = 5;
      v5 = 5;
      goto LABEL_62;
    }

LABEL_24:
    if (*a1 != 29281 || *(a1 + 2) != 109)
    {
      if (*a1 != 1836410996 || *(a1 + 4) != 98)
      {
        if (a2 < 7 || (*a1 == 1668440417 ? (v11 = *(a1 + 3) == 875980899) : (v11 = 0), !v11))
        {
LABEL_58:
          v5 = -1;
          v18 = a1;
          v4 = a2;
          goto LABEL_69;
        }

        if (llvm::StringRef::find(&v26, "eb", 2uLL, 0) != -1)
        {
          return "";
        }

        v4 = v27;
        v5 = 7;
        if (v27 >= 7)
        {
          v12 = 7;
        }

        else
        {
          v12 = v27;
        }

        if (v27 - v12 >= 3)
        {
          v13 = bswap32(*(v26 + v12) | (*(v26 + v12 + 2) << 16));
          v14 = v13 >= 0x5F626500;
          v15 = v13 > 0x5F626500;
          v16 = !v14;
          v3 = v15 == v16;
          v5 = 7;
          if (v3)
          {
            v5 = 10;
          }
        }

        goto LABEL_62;
      }

      goto LABEL_50;
    }

LABEL_59:
    v5 = 3;
    goto LABEL_61;
  }

  if (*a1 != 913142369 || *(a1 + 4) != 25908)
  {
    if (*a1 == 913142369 && *(a1 + 4) == 52)
    {
LABEL_50:
      v5 = 5;
      goto LABEL_61;
    }

    if (a2 >= 0xA && *a1 == 0x5F34366863726161 && *(a1 + 8) == 12851)
    {
      v5 = 10;
      goto LABEL_61;
    }

    goto LABEL_24;
  }

  v5 = 6;
LABEL_61:
  v4 = a2;
LABEL_62:
  if (v4 >= v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = v4;
  }

  if (v4 - v19 >= 2)
  {
    v20 = v26;
    if (*(v26 + v19) == 25189)
    {
      v5 += 2;
      goto LABEL_76;
    }
  }

LABEL_67:
  if (v4 >= 2)
  {
    v18 = v26;
LABEL_69:
    if (*(v18 + v4 - 2) == 25189)
    {
      v4 -= 2;
      v26 = v18;
    }
  }

  if (v5 == -1)
  {
    if (!v4)
    {
      return v2;
    }

    return v26;
  }

  v20 = v26;
LABEL_76:
  if (v4 >= v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = v4;
  }

  v22 = (v20 + v21);
  v23 = v4 - v21;
  v26 = v20 + v21;
  v27 = v23;
  if (v23)
  {
    if (v23 == 1 || *v22 == 118 && (v24 = v22[1], (v24 & 0x8000000000000000) == 0) && (*(MEMORY[0x277D85DE0] + 4 * v24 + 60) & 0x400) != 0)
    {
      if (llvm::StringRef::find(&v26, "eb", 2uLL, 0) == -1)
      {
        return v26;
      }
    }

    return "";
  }

  return v2;
}

uint64_t llvm::ARM::parseArchISA(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
    if (*a1 == 1668440417 && *(a1 + 3) == 875980899)
    {
      return 3;
    }
  }

  else if (a2 < 5)
  {
    if (a2 < 3)
    {
      return 0;
    }

    return *a1 == 29281 && *(a1 + 2) == 109;
  }

  if (*a1 == 913142369 && *(a1 + 4) == 52)
  {
    return 3;
  }

  if (*a1 == 1836410996 && *(a1 + 4) == 98)
  {
    return 2;
  }

  return *a1 == 29281 && *(a1 + 2) == 109;
}

uint64_t llvm::ARM::parseArchEndian(uint64_t a1, unint64_t a2)
{
  if (a2 < 5)
  {
    if (a2 < 3)
    {
      return 0;
    }

    if (*a1 != 29281 || *(a1 + 2) != 109)
    {
      return 0;
    }

    goto LABEL_30;
  }

  if (*a1 == 1701671521 && *(a1 + 4) == 98)
  {
    return 2;
  }

  if (a2 < 7)
  {
LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  if (*a1 == 1836410996 && *(a1 + 3) == 1650811501)
  {
    return 2;
  }

  if (a2 < 0xA)
  {
    goto LABEL_18;
  }

  if (*a1 == 0x5F34366863726161 && *(a1 + 8) == 25954)
  {
    return 2;
  }

  v6 = 0;
LABEL_19:
  v7 = *a1 == 29281 && *(a1 + 2) == 109;
  if (v7 || (*a1 == 1836410996 ? (v8 = *(a1 + 4) == 98) : (v8 = 0), v8))
  {
LABEL_30:
    if (bswap32(*(a1 + a2 - 2)) >> 16 == 25954)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  if (a2 < 7)
  {
    if (v6)
    {
      return 0;
    }

    goto LABEL_50;
  }

  v11 = *a1 == 1668440417 && *(a1 + 3) == 875980899;
  v3 = v11;
  if (v11)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
LABEL_50:
    v12 = 0x616172636836345FLL;
    v13 = bswap64(*a1);
    if (v13 == 0x616172636836345FLL && (v13 = bswap32(*(a1 + 8)) >> 16, v12 = 13106, v13 == 13106))
    {
      v14 = 0;
    }

    else if (v13 < v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    return v14 == 0;
  }

  return v3;
}

uint64_t llvm::ARM::parseArch(uint64_t a1, unint64_t a2)
{
  CanonicalArchName = llvm::ARM::getCanonicalArchName(a1, a2);
  ArchSynonym = llvm::ARM::getArchSynonym(CanonicalArchName, v3, v4, v5, v6, v7, v8, v9);
  v12 = v11;
  v13 = -v11;
  v14 = &llvm::ARM::ARMArchNames;
  v15 = 2880;
  while (1)
  {
    v16 = v14[1];
    if (v16 >= v12 && (!v12 || !memcmp(&(*v14)[v16 + v13], ArchSynonym, v12)))
    {
      break;
    }

    v14 += 9;
    v15 -= 72;
    if (!v15)
    {
      return 0;
    }
  }

  return *(v14 + 16);
}

void updateTripleOSVersion(std::string *a1, std::string *__s)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __s;
    size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  }

  if (size >= 7)
  {
    v7 = v5 + size;
    v8 = v5;
    do
    {
      v9 = memchr(v8, 45, size - 6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 1918985261 && *(v9 + 3) == 1852405618)
      {
        if (v9 == v7 || v9 - v5 == -1)
        {
          break;
        }

        std::string::resize(__s, v9 - v5 + 7, 0);
        getOSVersion(&__p);
        if (__p.sysname[23] >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = *__p.sysname;
        }

        if (__p.sysname[23] >= 0)
        {
          v12 = __p.sysname[23];
        }

        else
        {
          v12 = *&__p.sysname[8];
        }

        std::string::append(__s, p_p->sysname, v12);
        if (__p.sysname[23] < 0)
        {
          v13 = *__p.sysname;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 >= 7);
  }

  if ((v4 & 0x80000000) != 0)
  {
    v14 = __s->__r_.__value_.__r.__words[0];
    v4 = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v14 = __s;
  }

  if (v4 >= 6)
  {
    v15 = v14 + v4;
    v16 = v14;
    do
    {
      v17 = memchr(v16, 45, v4 - 5);
      if (!v17)
      {
        break;
      }

      if (*v17 == 1667329325 && *(v17 + 2) == 29551)
      {
        if (v17 != v15 && v17 - v14 != -1)
        {
          std::string::resize(__s, v17 - v14, 0);
          std::string::append(__s, "-darwin");
          getOSVersion(&__p);
          v19 = __p.sysname[23] >= 0 ? &__p : *__p.sysname;
          v20 = __p.sysname[23] >= 0 ? __p.sysname[23] : *&__p.sysname[8];
          std::string::append(__s, v19->sysname, v20);
          if (__p.sysname[23] < 0)
          {
            operator delete(*__p.sysname);
          }
        }

        break;
      }

      v16 = (v17 + 1);
      v4 = v15 - v16;
    }

    while (v15 - v16 >= 6);
  }

  v26[0] = "x86_64-apple-darwin23.0.0";
  v28 = 259;
  llvm::Triple::Triple(&__p, v26);
  v21 = *&__p.sysname[36];
  if (__p.sysname[23] < 0)
  {
    operator delete(*__p.sysname);
  }

  if (v21 != 21)
  {
    goto LABEL_53;
  }

  *&__p.sysname[32] = 260;
  *__p.sysname = __s;
  llvm::Triple::Triple(v26, &__p);
  if (v29 != 21 || llvm::Triple::getOSVersion(v26) || uname(&__p) == -1)
  {
    if (SHIBYTE(v27) < 0)
    {
      v13 = v26[0];
LABEL_52:
      operator delete(v13);
    }

LABEL_53:
    *&a1->__r_.__value_.__l.__data_ = *&__s->__r_.__value_.__l.__data_;
    a1->__r_.__value_.__r.__words[2] = __s->__r_.__value_.__r.__words[2];
    __s->__r_.__value_.__l.__size_ = 0;
    __s->__r_.__value_.__r.__words[2] = 0;
    __s->__r_.__value_.__r.__words[0] = 0;
    goto LABEL_54;
  }

  *(&v25.__r_.__value_.__s + 23) = 3;
  strcpy(&v25, "aix");
  std::string::append(&v25, __p.version);
  std::string::push_back(&v25, 46);
  std::string::append(&v25, __p.release);
  std::string::append(&v25, ".0.0");
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v25;
  }

  else
  {
    v23 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v25.__r_.__value_.__l.__size_;
  }

  llvm::Triple::setOSName(v26, v23, v24);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v26[0], v26[1]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *v26;
    a1->__r_.__value_.__r.__words[2] = v27;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

LABEL_54:
  v22 = *MEMORY[0x277D85DE8];
}

void llvm::sys::getProcessTriple(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, "x86_64-apple-darwin23.0.0");
  updateTripleOSVersion(&v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v17;
  }

  else
  {
    v3 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  llvm::Triple::normalize(v3, size, &v18);
  LOWORD(v11.__r_.__value_.__r.__words[1]) = 260;
  v10.__r_.__value_.__r.__words[0] = &v18;
  llvm::Triple::Triple(&v14, &v10);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v14;
  }

  v13 = v15;
  ArchTypeName = llvm::Triple::getArchTypeName(3);
  llvm::Triple::setArchName(&v12, ArchTypeName, v6);
  llvm::Triple::setArchName(&v12, "arm64e", 6);
  v18.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__l.__size_;
  v7 = v12.__r_.__value_.__r.__words[0];
  *(v18.__r_.__value_.__r.__words + 7) = *(&v12.__r_.__value_.__r.__words[1] + 7);
  v8 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  memset(&v12, 0, sizeof(v12));
  v10 = v13;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    v14.__r_.__value_.__r.__words[0] = v7;
    v14.__r_.__value_.__l.__size_ = v18.__r_.__value_.__r.__words[0];
    *(&v14.__r_.__value_.__r.__words[1] + 7) = *(v18.__r_.__value_.__r.__words + 7);
    *(&v14.__r_.__value_.__s + 23) = v8;
    v15 = v10;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14.__r_.__value_.__r.__words[0] = v7;
    v14.__r_.__value_.__l.__size_ = v18.__r_.__value_.__r.__words[0];
    *(&v14.__r_.__value_.__r.__words[1] + 7) = *(v18.__r_.__value_.__r.__words + 7);
    *(&v14.__r_.__value_.__s + 23) = v8;
    v15 = v13;
  }

  if (getArchPointerBitWidth(v15.__r_.__value_.__l.__data_) == 32)
  {
    llvm::Triple::get64BitArchVariant(&v14, &v10);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v14 = v10;
    v15 = v11;
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = v14;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x277D85DE8];
}

_BYTE *getOSVersion(_BYTE *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (uname(&v5))
  {
    v2 = *MEMORY[0x277D85DE8];

    return std::string::basic_string[abi:nn200100]<0>(a1, "");
  }

  else
  {
    result = std::string::basic_string[abi:nn200100]<0>(a1, v5.release);
    v4 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t parseBPFArch(unsigned int *a1, uint64_t a2)
{
  if (a2 != 6)
  {
    if (a2 != 5)
    {
      if (a2 != 3)
      {
        return 0;
      }

      v2 = *a1 == 28770 && *(a1 + 2) == 102;
      goto LABEL_22;
    }

    if (*a1 != 1701212258 || *(a1 + 4) != 98)
    {
      v4 = bswap64(*a1 | (*(a1 + 4) << 32));
      v5 = v4 >= 0x627066656C000000;
      v6 = v4 > 0x627066656C000000;
      v7 = !v5;
      v2 = v6 == v7;
      goto LABEL_22;
    }

    return 9;
  }

  if (*a1 == 1600548962 && *(a1 + 2) == 25954)
  {
    return 9;
  }

  v2 = *a1 == 1600548962 && *(a1 + 2) == 25964;
LABEL_22:
  v9 = v2;
  return (8 * v9);
}

uint64_t llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    v6 = *(a1 + 8);
    if (v6 == a3 && (!v6 || !memcmp(*a1, a2, v6)))
    {
      *(a1 + 16) = a4;
      *(a1 + 20) = 1;
    }
  }

  return a1;
}

llvm::Triple *llvm::Triple::Triple(llvm::Triple *this, llvm::formatv_object_base **a2)
{
  v38[8] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(a2, this);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v3 = *(this + 23);
  v4 = *this;
  if (v3 >= 0)
  {
    v4 = this;
  }

  if (v3 < 0)
  {
    v3 = *(this + 1);
  }

  v35[1] = v3;
  v36 = v38;
  v37 = 0x400000000;
  v35[0] = v4;
  llvm::StringRef::split(v35, &v36, 45, 3, 1);
  if (!v37)
  {
LABEL_102:
    if (*(this + 11))
    {
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  *(this + 6) = parseArch(*v36, *(v36 + 1));
  v5 = *v36;
  v6 = *(v36 + 1);
  if (v6 >= 4 && *v5 == 1936746861 && (*(v5 + v6 - 4) == 1818572402 || *(v5 + v6 - 2) == 13938))
  {
    v8 = 38;
    goto LABEL_61;
  }

  switch(v6)
  {
    case 6uLL:
      if (*v5 == 913142369 && *(v5 + 4) == 25908)
      {
        v8 = 33;
        goto LABEL_61;
      }

      break;
    case 7uLL:
      if (*v5 == 913142369 && *(v5 + 3) == 1667576886)
      {
        v8 = 34;
        goto LABEL_61;
      }

      break;
    case 0xAuLL:
      if (*v5 == 0x7363707265776F70 && *(v5 + 8) == 25968)
      {
        v8 = 39;
        goto LABEL_61;
      }

      break;
    default:
      if (v6 < 5)
      {
LABEL_34:
        CanonicalArchName = llvm::ARM::getCanonicalArchName(*v36, *(v36 + 1));
        if (v13)
        {
          v14 = llvm::ARM::parseArch(CanonicalArchName, v13) - 2;
          if (v14 <= 0x25)
          {
            v8 = dword_2750DE960[v14];
            goto LABEL_61;
          }

          goto LABEL_47;
        }

        if (v6 < 8)
        {
LABEL_47:
          v8 = 0;
          goto LABEL_61;
        }

        v17 = v5 + v6;
        if (*(v5 + v6 - 8) == 0x3361626D696C616BLL)
        {
          v8 = 35;
          goto LABEL_61;
        }

        if (*(v17 - 8) == 0x3461626D696C616BLL)
        {
          v8 = 36;
          goto LABEL_61;
        }

        v16 = *(v17 - 8) == 0x3561626D696C616BLL;
        v8 = 37;
        goto LABEL_51;
      }

      break;
  }

  if (*v5 != 1919512691 || *(v5 + 4) != 118)
  {
    goto LABEL_34;
  }

  v15 = v5 + v6;
  if (*(v5 + v6 - 4) == 808333686)
  {
    v8 = 40;
    goto LABEL_61;
  }

  switch(*(v15 - 4))
  {
    case 0x312E3176:
      v8 = 41;
      goto LABEL_61;
    case 0x322E3176:
      v8 = 42;
      goto LABEL_61;
    case 0x332E3176:
      v8 = 43;
      goto LABEL_61;
    case 0x342E3176:
      v8 = 44;
      goto LABEL_61;
  }

  v16 = *(v15 - 4) == 892219766;
  v8 = 45;
LABEL_51:
  if (!v16)
  {
    v8 = 0;
  }

LABEL_61:
  *(this + 7) = v8;
  v18 = v37;
  v19 = v36;
  if (v37 < 2)
  {
    v23 = *v36;
    v24 = *(v36 + 1);
    if (v24 < 7)
    {
      if (v24 == 4)
      {
        if (*v23 == 1936746861)
        {
LABEL_99:
          v28 = 1;
          goto LABEL_101;
        }

        goto LABEL_89;
      }

      if (v24 == 6)
      {
        if (*v23 != 1936746861 || *(v23 + 2) != 13366)
        {
          if (!memcmp(*v36, "mipsel", *(v36 + 1)) || !memcmp(v23, "mipsr6", 6uLL))
          {
            goto LABEL_99;
          }

          goto LABEL_89;
        }

LABEL_100:
        v28 = 3;
        goto LABEL_101;
      }

LABEL_89:
      v28 = 0;
      goto LABEL_101;
    }

    if (*v23 == 1936746861 && *(v23 + 3) == 842231411)
    {
      v28 = 2;
    }

    else
    {
      if (*v23 == 1936746861 && *(v23 + 2) == 13366)
      {
        goto LABEL_100;
      }

      if (v24 >= 9)
      {
        if (*v23 == 0x366173697370696DLL && *(v23 + 8) == 52)
        {
          goto LABEL_100;
        }

        if (*v23 == 0x336173697370696DLL && *(v23 + 8) == 50)
        {
          goto LABEL_99;
        }

        goto LABEL_89;
      }

      if (v24 != 8)
      {
        goto LABEL_89;
      }

      v28 = *v23 == 0x6C6536727370696DLL;
    }

LABEL_101:
    *(this + 10) = v28;
    goto LABEL_102;
  }

  *(this + 8) = parseVendor(*(v36 + 2), *(v36 + 3));
  if (v18 == 2)
  {
    goto LABEL_102;
  }

  *(this + 9) = parseOS(v19[4], v19[5]);
  if (v18 < 4)
  {
    goto LABEL_102;
  }

  v20 = v19[6];
  v21 = v19[7];
  *(this + 10) = parseEnvironment(v20, v21);
  v22 = parseFormat(v20, v21);
  *(this + 11) = v22;
  if (v22)
  {
    goto LABEL_105;
  }

LABEL_103:
  v31 = *(this + 9);
  v32 = 3;
  switch(*(this + 6))
  {
    case 2:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x16:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x21:
    case 0x22:
    case 0x24:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x3A:
    case 0x3B:
    case 0x3C:
      break;
    case 0xB:
      v32 = 2;
      break;
    case 0x15:
    case 0x17:
      if (v31 == 21)
      {
        v32 = 8;
      }

      else
      {
        v32 = 3;
      }

      break;
    case 0x20:
      if (v31 == 16)
      {
        v32 = 4;
      }

      else
      {
        v32 = 3;
      }

      break;
    case 0x33:
    case 0x34:
      v32 = 6;
      break;
    case 0x38:
    case 0x39:
      v32 = 7;
      break;
    default:
      if (v31 <= 0x21 && ((1 << v31) & 0x3F0000888) != 0)
      {
        v32 = 5;
      }

      else if (v31 == 15)
      {
        v32 = 1;
      }

      else
      {
        v32 = 3;
      }

      break;
  }

  *(this + 11) = v32;
LABEL_105:
  if (v36 != v38)
  {
    free(v36);
  }

  v33 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t parseArch(uint64_t a1, unint64_t a2)
{
  v32 = a1;
  v33 = a2;
  LOBYTE(v34) = 0;
  v35 = 0;
  if (a2 == 4 && *a1 == 909652841)
  {
    v34 = 37;
    v35 = 1;
  }

  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "i486", 4, "i586", 4, "i686", 4, 37);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "i786", 4, "i886", 4, "i986", 4, 37);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "amd64", 5, "x86_64", 6, "x86_64h", 7, 38);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "powerpc", 7, 21);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "powerpcspe", 10, "ppc", 3, "ppc32", 5, 21);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "powerpcle", 9, "ppcle", 5, "ppc32le", 7, 22);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "powerpc64", 9, "ppu", 3, "ppc64", 5, 23);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "powerpc64le", 11, 24);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "ppc64le", 7, 24);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "xscale", 6, 1);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "xscaleeb", 8, 2);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "aarch64", 7, 3);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "aarch64_be", 10, 4);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "aarch64_32", 10, 5);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "arc", 3, 6);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "arm64", 5, 3);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "arm64_32", 8, 5);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "arm64e", 6, 3);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "arm64ec", 7, 3);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "arm", 3, 1);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "armeb", 5, 2);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "thumb", 5, 35);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "thumbeb", 7, 36);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "avr", 3, 7);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "m68k", 4, 15);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "msp430", 6, 20);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "mips", 4, "mipseb", 6, "mipsallegrex", 12, v4, "mipsisa32r6", 11, "mipsr6", 6, 16);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "mipsel", 6, 17);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "mipsallegrexel", 14, "mipsisa32r6el", 13, "mipsr6el", 8, 17);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "mips64", 6, 18);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "mips64eb", 8, "mipsn32", 7, "mipsisa64r6", 11, v5, "mips64r6", 8, "mipsn32r6", 9, 18);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "mips64el", 8, "mipsn32el", 9, "mipsisa64r6el", 13, v6, "mips64r6el", 10, "mipsn32r6el", 11, 19);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "r600", 4, 25);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "amdgcn", 6, 26);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "riscv32", 7, 27);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "riscv64", 7, 28);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "hexagon", 7, 12);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "s390x", 5, 32);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "systemz", 7, 32);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "sparc", 5, 29);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "sparcel", 7, 31);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "sparcv9", 7, 30);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "sparc64", 7, 30);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "tce", 3, 33);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "tcele", 5, 34);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "xcore", 5, 39);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "nvptx", 5, 41);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "nvptx64", 7, 42);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "le32", 4, 43);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "le64", 4, 44);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "amdil", 5, 45);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "amdil64", 7, 46);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "hsail", 5, 47);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "hsail64", 7, 48);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "spir", 4, 49);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "spir64", 6, 50);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "spirv32", 7, "spirv32v1.0", 11, "spirv32v1.1", 11, v7, "spirv32v1.2", 11, "spirv32v1.3", 11, "spirv32v1.4", 11, "spirv32v1.5", 11, 51);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(&v32, "spirv64", 7, "spirv64v1.0", 11, "spirv64v1.1", 11, v8, "spirv64v1.2", 11, "spirv64v1.3", 11, "spirv64v1.4", 11, "spirv64v1.5", 11, 52);
  if ((v35 & 1) == 0 && v33 >= 7 && *v32 == 1768710507 && *(v32 + 3) == 1633840489)
  {
    v34 = 53;
    v35 = 1;
  }

  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "lanai", 5, 55);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "renderscript32", 14, 58);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "renderscript64", 14, 59);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "shave", 5, 54);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "ve", 2, 60);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "wasm32", 6, 56);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "wasm64", 6, 57);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "csky", 4, 10);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "loongarch32", 11, 13);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "loongarch64", 11, 14);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "dxil", 4, 11);
  llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(&v32, "xtensa", 6, 40);
  if ((v35 & 1) == 0 || (result = v34) == 0)
  {
    if (a2 < 3)
    {
      return 0;
    }

    if (*a1 != 29281 || *(a1 + 2) != 109)
    {
      if (a2 < 5 || (*a1 == 1836410996 ? (v12 = *(a1 + 4) == 98) : (v12 = 0), !v12 && (a2 < 7 || (*a1 == 1668440417 ? (v13 = *(a1 + 3) == 875980899) : (v13 = 0), !v13))))
      {
        if (*a1 == 28770 && *(a1 + 2) == 102)
        {
          return parseBPFArch(a1, a2);
        }

        return 0;
      }
    }

    v15 = llvm::ARM::parseArchISA(a1, a2);
    v16 = llvm::ARM::parseArchEndian(a1, a2);
    v17 = v16;
    if (v16 == 2)
    {
      v18 = v15 - 1;
      if ((v15 - 1) <= 2)
      {
        v19 = &unk_2750DEA04;
        goto LABEL_41;
      }
    }

    else if (v16 == 1)
    {
      v18 = v15 - 1;
      if ((v15 - 1) < 3)
      {
        v19 = &unk_2750DE9F8;
LABEL_41:
        v20 = v19[v18];
LABEL_43:
        CanonicalArchName = llvm::ARM::getCanonicalArchName(a1, a2);
        if (v22)
        {
          v23 = CanonicalArchName;
          v24 = v22;
          if (v15 != 2 || v22 == 1 || *CanonicalArchName != 12918 && *CanonicalArchName != 13174)
          {
            v25 = llvm::ARM::getCanonicalArchName(CanonicalArchName, v22);
            v27 = llvm::ARM::parseArch(v25, v26);
            ProfileKind = getProfileKind(v27);
            v29 = llvm::ARM::parseArchVersion(v23, v24);
            if (v17 == 2)
            {
              v30 = 36;
            }

            else
            {
              v30 = 35;
            }

            if (v29 == 6 && ProfileKind == 3)
            {
              return v30;
            }

            else
            {
              return v20;
            }
          }
        }

        return 0;
      }
    }

    v20 = 0;
    goto LABEL_43;
  }

  return result;
}

uint64_t parseVendor(uint64_t a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      if (*a1 == 25456)
      {
        return 2;
      }

      if (*a1 == 25967)
      {
        return 14;
      }
    }

    else if (a2 == 3)
    {
      if (*a1 != 26995 || *(a1 + 2) != 101)
      {
        if (*a1 == 29542 && *(a1 + 2) == 108)
        {
          return 4;
        }

        if (*a1 == 25193 && *(a1 + 2) == 109)
        {
          return 5;
        }

        if (*a1 == 28009 && *(a1 + 2) == 103)
        {
          return 6;
        }

        if (*a1 == 29805 && *(a1 + 2) == 105)
        {
          return 7;
        }

        if (*a1 != 29539 || *(a1 + 2) != 114)
        {
          if (*a1 == 28001 && *(a1 + 2) == 100)
          {
            return 11;
          }

          return 0;
        }

        return 9;
      }

      return 3;
    }

    return 0;
  }

  if (a2 == 4)
  {
    if (*a1 != 1768252275)
    {
      if (*a1 != 1634952557)
      {
        if (*a1 == 1702065523)
        {
          return 13;
        }

        return 0;
      }

      return 12;
    }

    return 3;
  }

  if (a2 != 6)
  {
    return a2 == 5 && *a1 == 1819308129 && *(a1 + 4) == 101;
  }

  if (*a1 != 1684633198 || *(a1 + 4) != 24937)
  {
    if (*a1 == 1769109869 && *(a1 + 4) == 25697)
    {
      return 10;
    }

    return 0;
  }

  return 8;
}

uint64_t parseOS(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    if (*a1 == 1851879009 && *(a1 + 4) == 29537)
    {
      return 1;
    }

    if (a2 >= 8 && *a1 == 0x69626164756F6C63)
    {
      return 2;
    }

    if (*a1 == 2003984740 && *(a1 + 4) == 28265)
    {
      return 3;
    }

    if (a2 >= 9)
    {
      if (*a1 == 0x6C666E6F67617264 && *(a1 + 8) == 121)
      {
        return 4;
      }
    }

    else if (a2 == 6)
    {
      if (*a1 != 28521 || *(a1 + 2) != 115)
      {
        goto LABEL_45;
      }

      return 7;
    }

    if (*a1 == 1701147238 && *(a1 + 3) == 1685283429)
    {
      return 5;
    }

    if (*a1 == 1751348582 && *(a1 + 3) == 1634300776)
    {
      return 6;
    }
  }

  else if (a2 < 3)
  {
    return 0;
  }

  if (*a1 == 28521 && *(a1 + 2) == 115)
  {
    return 7;
  }

  if (a2 >= 8)
  {
    if (*a1 == 0x647362656572666BLL)
    {
      return 8;
    }
  }

  else if (a2 < 5)
  {
    goto LABEL_49;
  }

LABEL_45:
  if (*a1 == 1970170220 && *(a1 + 4) == 120)
  {
    return 9;
  }

LABEL_49:
  if (*a1 == 30316 && *(a1 + 2) == 50)
  {
    return 10;
  }

  if (a2 >= 5)
  {
    if (*a1 == 1868783981 && *(a1 + 4) == 115)
    {
      return 11;
    }

    if (a2 != 5)
    {
      if (*a1 == 1651795310 && *(a1 + 4) == 25715)
      {
        return 12;
      }

      if (a2 >= 7)
      {
        if (*a1 == 1852141679 && *(a1 + 3) == 1685283438)
        {
          return 13;
        }

        if (*a1 == 1634496371 && *(a1 + 3) == 1936290401)
        {
          return 14;
        }
      }
    }

    if (*a1 == 862873975 && *(a1 + 4) == 50)
    {
      return 15;
    }

    if (a2 >= 7 && *a1 == 1684957559 && *(a1 + 3) == 1937207140)
    {
      return 15;
    }

    if (*a1 != 28538 || *(a1 + 2) != 115)
    {
      if (*a1 == 1802068328 && *(a1 + 4) == 117)
      {
        return 17;
      }

      if (*a1 == 1768843629 && *(a1 + 4) == 120)
      {
        return 18;
      }

      if (*a1 == 1835365490 && *(a1 + 4) == 115)
      {
        return 19;
      }

      goto LABEL_59;
    }

    return 16;
  }

  if (*a1 == 28538 && *(a1 + 2) == 115)
  {
    return 16;
  }

  if (a2 != 4)
  {
    if (*a1 != 26977 || *(a1 + 2) != 120)
    {
      goto LABEL_131;
    }

    return 21;
  }

LABEL_59:
  if (*a1 == 1818452334)
  {
    return 20;
  }

  if (*a1 == 26977 && *(a1 + 2) == 120)
  {
    return 21;
  }

  if (*a1 == 1633973603)
  {
    return 22;
  }

  if (*a1 == 1818457710)
  {
    return 23;
  }

  if (a2 >= 6 && *a1 == 1751412065 && *(a1 + 4) == 24947)
  {
    return 24;
  }

LABEL_131:
  if (*a1 == 29552 && *(a1 + 2) == 52)
  {
    return 25;
  }

  if (*a1 == 29552 && *(a1 + 2) == 53)
  {
    return 26;
  }

  if (a2 >= 8)
  {
    if (*a1 == 0x75636D6169666C65)
    {
      return 27;
    }
  }

  else if (a2 < 4)
  {
    return 0;
  }

  if (*a1 == 1936684660)
  {
    return 28;
  }

  if (a2 < 7)
  {
    goto LABEL_153;
  }

  if (*a1 == 1668571511 && *(a1 + 3) == 1936681059)
  {
    return 29;
  }

  if (a2 != 7)
  {
    if (*a1 == 0x736F656764697262)
    {
      return 30;
    }

    if (a2 >= 9)
    {
      if (*a1 == 0x696B726576697264 && *(a1 + 8) == 116)
      {
        return 31;
      }

LABEL_153:
      if (*a1 != 1936683640)
      {
        if (a2 < 5)
        {
          goto LABEL_200;
        }

        if (*a1 != 1869636979 || *(a1 + 4) != 115)
        {
          if (a2 == 5)
          {
            goto LABEL_200;
          }

          if (*a1 != 1634952557 || *(a1 + 4) != 25651)
          {
            if (a2 < 7)
            {
              goto LABEL_192;
            }

            goto LABEL_188;
          }

          return 34;
        }

        return 33;
      }

      return 32;
    }
  }

  if (*a1 == 1936683640)
  {
    return 32;
  }

  if (*a1 == 1869636979 && *(a1 + 4) == 115)
  {
    return 33;
  }

  if (*a1 == 1634952557 && *(a1 + 4) == 25651)
  {
    return 34;
  }

LABEL_188:
  if (*a1 == 1953394531 && *(a1 + 3) == 1768647028)
  {
    return 35;
  }

LABEL_192:
  if (*a1 == 1885629793 && *(a1 + 4) == 27745)
  {
    return 36;
  }

  if (*a1 == 1836213608 && *(a1 + 4) == 29801)
  {
    return 37;
  }

LABEL_200:
  if (*a1 == 1685222760)
  {
    return 38;
  }

  if (*a1 == 1769169271)
  {
    return 39;
  }

  if (a2 >= 0xA)
  {
    if (*a1 == 0x7470697263736D65 && *(a1 + 8) == 28261)
    {
      return 40;
    }

    if (a2 != 10 && *a1 == 0x6F6D726564616873 && *(a1 + 3) == 0x6C65646F6D726564)
    {
      return 41;
    }
  }

  else if (a2 < 6)
  {
    return 0;
  }

  if (*a1 != 1702127980 || *(a1 + 4) != 29551)
  {
    return 0;
  }

  return 42;
}

uint64_t parseEnvironment(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    if (*a1 == 1768055141 && *(a1 + 4) == 26216)
    {
      return 13;
    }
  }

  else if (a2 < 4)
  {
    if (a2 != 3)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (*a1 == 1768055141)
  {
    return 12;
  }

  if (a2 >= 9)
  {
    if (*a1 == 0x336E696261756E67 && *(a1 + 8) == 50)
    {
      return 2;
    }

    if (*a1 == 0x3436696261756E67)
    {
      return 3;
    }

    if (*a1 == 0x6869626165756E67 && *(a1 + 8) == 102)
    {
      return 5;
    }

    goto LABEL_42;
  }

  if (a2 == 8)
  {
    if (*a1 == 0x3436696261756E67)
    {
      return 3;
    }

    goto LABEL_42;
  }

  if (a2 >= 7)
  {
LABEL_42:
    if (*a1 == 1702194791 && *(a1 + 3) == 1768055141)
    {
      return 4;
    }

    goto LABEL_46;
  }

  if (a2 != 6)
  {
    if (a2 < 5)
    {
      goto LABEL_4;
    }

    if (*a1 != 1937075815 || *(a1 + 4) != 102)
    {
      goto LABEL_4;
    }

    return 8;
  }

LABEL_46:
  if (*a1 == 1718972007 && *(a1 + 4) == 12851)
  {
    return 6;
  }

  if (*a1 == 1718972007 && *(a1 + 4) == 13366)
  {
    return 7;
  }

  if (*a1 == 1937075815 && *(a1 + 4) == 102)
  {
    return 8;
  }

  if (*a1 == 2020961895 && *(a1 + 4) == 12851)
  {
    return 9;
  }

  if (a2 >= 9 && *a1 == 0x33706C695F756E67 && *(a1 + 8) == 50)
  {
    return 10;
  }

  if (*a1 == 1701080931 && *(a1 + 4) == 13873)
  {
    return 11;
  }

LABEL_4:
  if (*a1 == 28263 && *(a1 + 2) == 117)
  {
    return 1;
  }

  if (a2 < 7)
  {
    if (a2 < 4)
    {
      return 0;
    }

    goto LABEL_97;
  }

  if (*a1 == 1919184481 && *(a1 + 3) == 1684631410)
  {
    return 14;
  }

  if (a2 >= 0xA)
  {
    if (*a1 == 0x696261656C73756DLL && *(a1 + 8) == 26216)
    {
      return 17;
    }

    goto LABEL_92;
  }

  if (a2 != 7)
  {
LABEL_92:
    if (*a1 == 0x696261656C73756DLL)
    {
      return 16;
    }
  }

  if (*a1 == 1819506029 && *(a1 + 3) == 842233964)
  {
    return 18;
  }

LABEL_97:
  if (*a1 == 1819506029)
  {
    return 15;
  }

  if (*a1 == 1668707181)
  {
    return 19;
  }

  if (a2 >= 7)
  {
    if (*a1 == 1851880553 && *(a1 + 3) == 1836411246)
    {
      return 20;
    }

    if (*a1 != 1852275043 || *(a1 + 4) != 29557)
    {
      if (*a1 == 1701998435 && *(a1 + 3) == 1919705957)
      {
        return 22;
      }

      if (a2 >= 9 && *a1 == 0x6F74616C756D6973 && *(a1 + 8) == 114)
      {
        return 23;
      }

      goto LABEL_127;
    }

    return 21;
  }

  if (a2 != 6)
  {
    if (a2 < 5)
    {
      goto LABEL_150;
    }

    if (*a1 != 1702390128 || *(a1 + 4) != 108)
    {
      goto LABEL_150;
    }

    return 25;
  }

  if (*a1 == 1852275043 && *(a1 + 4) == 29557)
  {
    return 21;
  }

LABEL_127:
  if (*a1 == 1633902957 && *(a1 + 4) == 26978)
  {
    return 24;
  }

  if (*a1 == 1702390128 && *(a1 + 4) == 108)
  {
    return 25;
  }

  if (*a1 == 1953654134 && *(a1 + 4) == 30821)
  {
    return 26;
  }

  if (a2 >= 8 && *a1 == 0x797274656D6F6567)
  {
    return 27;
  }

LABEL_150:
  if (*a1 == 1819047272)
  {
    return 28;
  }

  if (a2 < 6)
  {
    goto LABEL_152;
  }

  if (*a1 == 1634561892 && *(a1 + 4) == 28265)
  {
    return 29;
  }

  if (a2 != 6)
  {
    if (*a1 == 1886220131 && *(a1 + 3) == 1702131056)
    {
      return 30;
    }

    if (*a1 == 1919052140 && *(a1 + 3) == 2037539186)
    {
      return 31;
    }

    if (a2 >= 0xD)
    {
      if (*a1 == 0x72656E6567796172 && *(a1 + 5) == 0x6E6F69746172656ELL)
      {
        return 32;
      }
    }

    else if (a2 != 12)
    {
      goto LABEL_211;
    }

    if (*a1 == 0x6365737265746E69 && *(a1 + 8) == 1852795252)
    {
      return 33;
    }

LABEL_211:
    if (*a1 != 1752788577 || *(a1 + 4) != 29801)
    {
      if (a2 >= 0xA && *a1 == 0x68747365736F6C63 && *(a1 + 8) == 29801)
      {
        return 35;
      }

LABEL_152:
      if (*a1 != 1936943469)
      {
        if (a2 >= 8 && *a1 == 0x656C62616C6C6163)
        {
          return 37;
        }

        if (*a1 != 1752393069)
        {
          if (a2 >= 0xD && *a1 == 0x636966696C706D61 && *(a1 + 5) == 0x6E6F697461636966)
          {
            return 39;
          }

          goto LABEL_180;
        }

        return 38;
      }

      return 36;
    }

    return 34;
  }

  if (*a1 == 1752788577 && *(a1 + 4) == 29801)
  {
    return 34;
  }

  if (*a1 == 1936943469)
  {
    return 36;
  }

  if (*a1 == 1752393069)
  {
    return 38;
  }

LABEL_180:
  if (*a1 == 1936681071)
  {
    return 40;
  }

  else
  {
    return 0;
  }
}

uint64_t parseFormat(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
    if (*(a1 + a2 - 5) == 1718575992 && *(a1 + a2 - 1) == 102)
    {
      return 8;
    }
  }

  else if (a2 != 4)
  {
    if (a2 < 3)
    {
      return 0;
    }

    if (*a1 != 27749 || *(a1 + 2) != 102)
    {
      return 0;
    }

    return 3;
  }

  v4 = a1 + a2;
  if (*(a1 + a2 - 4) == 1717989219)
  {
    return 1;
  }

  if (*(v4 - 3) == 27749 && *(v4 - 1) == 102)
  {
    return 3;
  }

  if (*(v4 - 4) == 1717989223)
  {
    return 4;
  }

  if (a2 == 4)
  {
    if (*a1 != 1836278135)
    {
      return 0;
    }

    return 7;
  }

  if (*(v4 - 5) == 1751343469 && *(v4 - 1) == 111)
  {
    return 5;
  }

  if (*(v4 - 4) == 1836278135)
  {
    return 7;
  }

  if (*(v4 - 5) ^ 0x72697073 | *(v4 - 1) ^ 0x76)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void llvm::Triple::normalize(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v91[8] = *MEMORY[0x277D85DE8];
  v88[0] = a1;
  v88[1] = a2;
  v89 = v91;
  v90 = 0x400000000;
  llvm::StringRef::split(v88, &v89, 45, -1, 1);
  if (!v90)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = parseArch(*v89, *(v89 + 1)) != 0;
  v5 = v90;
  if (v90 < 2)
  {
LABEL_6:
    v8 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = v89;
  v7 = parseVendor(*(v89 + 2), *(v89 + 3));
  if (v5 == 2)
  {
    v8 = 0;
LABEL_7:
    v9 = 0;
    v81 = 0;
    goto LABEL_8;
  }

  v57 = v6[4];
  v58 = v6[5];
  v9 = parseOS(v57, v58);
  if (v58 >= 6)
  {
    v59 = *v57 == 2003269987 && *(v57 + 4) == 28265;
  }

  else
  {
    v59 = 0;
    v81 = 0;
    if (v58 != 5)
    {
      goto LABEL_148;
    }
  }

  v75 = *v57 == 1735289197 && *(v57 + 4) == 119;
  v81 = __PAIR64__(v59, v75);
LABEL_148:
  if (v5 < 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = parseEnvironment(v6[6], v6[7]);
    if (v5 != 4)
    {
      v79 = parseFormat(v6[8], v6[9]);
      goto LABEL_9;
    }
  }

LABEL_8:
  v79 = 0;
LABEL_9:
  v10 = 0;
  v87[0] = v4;
  v87[1] = v7 != 0;
  v80 = v9;
  v87[2] = v9 != 0;
  v87[3] = v8 != 0;
  do
  {
    if (v87[v10])
    {
      goto LABEL_82;
    }

    v11 = v90;
    if (!v90)
    {
      goto LABEL_82;
    }

    v12 = 0;
    LODWORD(v13) = 0;
    while (1)
    {
      if (v13 <= 3 && (v87[v12] & 1) != 0)
      {
        goto LABEL_44;
      }

      v14 = (v89 + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      if (v10 <= 1)
      {
        v17 = *v14;
        v18 = v14[1];
        if (v10)
        {
          v7 = parseVendor(v17, v18);
          if (v7)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (parseArch(v17, v18))
          {
            goto LABEL_47;
          }

          v11 = v90;
        }

        goto LABEL_44;
      }

      v19 = *v14;
      v20 = v14[1];
      if (v10 != 2)
      {
        break;
      }

      v80 = parseOS(v19, v20);
      if (v16 >= 6)
      {
        v21 = *v15 == 2003269987 && *(v15 + 4) == 28265;
LABEL_34:
        v25 = *v15 == 1735289197 && *(v15 + 4) == 119;
        v81 = __PAIR64__(v21, v25);
        goto LABEL_41;
      }

      v21 = 0;
      v81 = 0;
      if (v16 == 5)
      {
        goto LABEL_34;
      }

LABEL_41:
      if (v80 || __PAIR64__(v81, 0) != (BYTE4(v81) & 1))
      {
        goto LABEL_47;
      }

      v80 = 0;
      v81 = 0;
LABEL_44:
      v12 = (v13 + 1);
      LODWORD(v13) = v12;
      if (v12 == v11)
      {
        goto LABEL_82;
      }
    }

    v8 = parseEnvironment(v19, v20);
    if (v8)
    {
      goto LABEL_47;
    }

    v22 = parseFormat(v15, v16);
    if (!v22)
    {
      v79 = 0;
      goto LABEL_44;
    }

    v79 = v22;
LABEL_47:
    if (v10 >= v13)
    {
      if (v10 > v13)
      {
        do
        {
          v35 = v90;
          if (v90 > v13)
          {
            v36 = 0;
            v37 = v13;
            v38 = &str_167_0;
            while (1)
            {
              v39 = v38;
              v40 = v36;
              v41 = v89 + 16 * v37;
              v38 = *v41;
              v36 = *(v41 + 1);
              *v41 = v39;
              *(v41 + 1) = v40;
              if (!v36)
              {
                break;
              }

              if (v37 <= 3)
              {
                v42 = 3;
              }

              else
              {
                v42 = v37;
              }

              while (v42 != v37)
              {
                if ((v87[++v37] & 1) == 0)
                {
                  goto LABEL_70;
                }
              }

              v37 = v42 + 1;
LABEL_70:
              if (v35 <= v37)
              {
                llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v89, v38, v36);
                break;
              }
            }
          }

          if ((v13 + 1) > 4)
          {
            v43 = (v13 + 1);
          }

          else
          {
            v43 = 4;
          }

          while (v43 - 1 != v13)
          {
            v13 = (v13 + 1);
            if ((v87[v13] & 1) == 0)
            {
              LODWORD(v43) = v13;
              goto LABEL_79;
            }
          }

          v13 = v43;
LABEL_79:
          v44 = v13 >= v10;
          LODWORD(v13) = v43;
        }

        while (!v44);
      }
    }

    else
    {
      v26 = (v89 + 16 * v12);
      v28 = *v26;
      v27 = v26[1];
      *v26 = &str_167_0;
      v26[1] = 0;
      if (v27)
      {
        v29 = v10;
        do
        {
          v30 = v29;
          if (v29 <= 3)
          {
            v31 = v29 + (3 - v29) + 1;
            while (v87[v30] == 1)
            {
              if (++v30 == 4)
              {
                v29 = 4;
                goto LABEL_57;
              }
            }

            v29 = v30;
          }

          v31 = v30;
LABEL_57:
          v32 = (v89 + 16 * v31);
          v33 = *v32;
          v34 = v32[1];
          *v32 = v28;
          v32[1] = v27;
          ++v29;
          v27 = v34;
          v28 = v33;
        }

        while (v34);
      }
    }

    v87[v10] = 1;
LABEL_82:
    ++v10;
  }

  while (v10 != 4);
  if (v90)
  {
    v45 = 16 * v90;
    v46 = v89 + 8;
    do
    {
      if (!*v46)
      {
        *(v46 - 1) = "unknown";
        *v46 = 7;
      }

      v46 += 2;
      v45 -= 16;
    }

    while (v45);
  }

  __p = 0;
  v85 = 0;
  v86 = 0;
  if (v8 != 14)
  {
    if (v7 != 13 || v8 != 4)
    {
      goto LABEL_101;
    }

    v47 = v89;
    v52 = "gnueabihf";
    v53 = 9;
LABEL_100:
    v47[6] = v52;
    v47[7] = v53;
    goto LABEL_101;
  }

  v47 = v89;
  v48 = *(v89 + 7);
  if (v48 < 0xB)
  {
    goto LABEL_101;
  }

  v49 = *(v89 + 6);
  if (*v49 != 0x6564696F72646E61 || *(v49 + 3) != 0x6962616564696F72)
  {
    goto LABEL_101;
  }

  v51 = (v48 - 11);
  if (!v51)
  {
    v52 = "android";
    v53 = 7;
    goto LABEL_100;
  }

  v83 = 1283;
  v82[0] = "android";
  v82[2] = (v49 + 11);
  v82[3] = v51;
  llvm::Twine::str(v82, &__p);
  v76 = v89;
  v77 = SHIBYTE(v86);
  p_p = __p;
  if (v86 >= 0)
  {
    p_p = &__p;
  }

  if (v86 < 0)
  {
    v77 = v85;
  }

  *(v89 + 6) = p_p;
  v76[7] = v77;
LABEL_101:
  v54 = v80;
  if (v80 == 15)
  {
    llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(&v89, 4uLL);
    v55 = v89;
    *(v89 + 4) = "windows";
    v55[5] = 7;
    v54 = 15;
    if (!v8)
    {
      if (v79 <= 1)
      {
        v55[6] = "msvc";
        v55[7] = 4;
        goto LABEL_124;
      }

      v55[6] = llvm::Triple::getObjectFormatTypeName(v79);
LABEL_113:
      v55[7] = v56;
      v54 = v80;
    }
  }

  else
  {
    if (v81)
    {
      llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(&v89, 4uLL);
      v55 = v89;
      *(v89 + 4) = "windows";
      v55[5] = 7;
      v55[6] = "gnu";
      v56 = 3;
      goto LABEL_113;
    }

    if ((v81 & 0x100000000) != 0)
    {
      llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(&v89, 4uLL);
      v55 = v89;
      *(v89 + 4) = "windows";
      v55[5] = 7;
      v55[6] = "cygnus";
      v56 = 6;
      goto LABEL_113;
    }
  }

  v61 = v54 == 15 && v8 != 0;
  if (((v81 | HIDWORD(v81) | v61) & 1) != 0 && v79 > 1)
  {
    llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(&v89, 5uLL);
    ObjectFormatTypeName = llvm::Triple::getObjectFormatTypeName(v79);
    v55 = v89;
    *(v89 + 8) = ObjectFormatTypeName;
    v55[9] = v63;
  }

  else
  {
    v55 = v89;
  }

LABEL_124:
  v64 = v90;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  if (v64)
  {
    v65 = 16 * v64;
    v66 = v64 - 1;
    v67 = 1;
    v68 = &v55[2 * v64];
    do
    {
      v66 += v55[v67];
      v67 += 2;
      v65 -= 16;
    }

    while (v65);
    std::string::reserve(a3, v66);
    std::string::append(a3, *v55, v55[1]);
    if (v64 != 1)
    {
      v69 = (v55 + 2);
      do
      {
        std::string::append(a3, "-", 1uLL);
        v70 = *v69;
        v71 = *(v69 + 1);
        v69 += 16;
        std::string::append(a3, v70, v71);
      }

      while (v69 != v68);
    }
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(__p);
  }

  if (v89 != v91)
  {
    free(v89);
  }

  v72 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::Triple::getArchName(llvm::Triple *this)
{
  v1 = *(this + 23);
  v2 = *this;
  if (v1 >= 0)
  {
    v2 = this;
  }

  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  v4[0] = v2;
  v4[1] = v1;
  v6 = 45;
  llvm::StringRef::split(v4, &v6, 1uLL, &v5);
  return v5;
}

const char *llvm::Triple::getArchName(uint64_t a1, int a2, int a3)
{
  if (a2 <= 16)
  {
    if (a2 == 3)
    {
      if (a3 == 34)
      {
        return "arm64ec";
      }
    }

    else if (a2 == 16 && a3 == 38)
    {
      return "mipsisa32r6";
    }

    return llvm::Triple::getArchTypeName(a2);
  }

  if (a2 == 17)
  {
    if (a3 == 38)
    {
      return "mipsisa32r6el";
    }

    return llvm::Triple::getArchTypeName(a2);
  }

  if (a2 != 18)
  {
    if (a2 == 19 && a3 == 38)
    {
      return "mipsisa64r6el";
    }

    return llvm::Triple::getArchTypeName(a2);
  }

  if (a3 != 38)
  {
    return llvm::Triple::getArchTypeName(a2);
  }

  return "mipsisa64r6";
}

uint64_t llvm::Triple::getVendorName(llvm::Triple *this)
{
  v1 = *(this + 23);
  v2 = *this;
  if (v1 >= 0)
  {
    v2 = this;
  }

  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  v4[0] = v2;
  v4[1] = v1;
  LOBYTE(v7) = 45;
  llvm::StringRef::split(v4, &v7, 1uLL, &v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  llvm::StringRef::split(&v7, v4, 1uLL, &v5);
  return v5;
}

uint64_t llvm::Triple::getOSName(llvm::Triple *this)
{
  v1 = *(this + 23);
  v2 = *this;
  if (v1 >= 0)
  {
    v2 = this;
  }

  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  v4[0] = v2;
  v4[1] = v1;
  LOBYTE(v7) = 45;
  llvm::StringRef::split(v4, &v7, 1uLL, &v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  llvm::StringRef::split(&v7, v4, 1uLL, &v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  llvm::StringRef::split(&v7, v4, 1uLL, &v5);
  return v5;
}

uint64_t llvm::Triple::getEnvironmentName(llvm::Triple *this)
{
  v1 = *(this + 23);
  v2 = *this;
  if (v1 >= 0)
  {
    v2 = this;
  }

  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  v4[0] = v2;
  v4[1] = v1;
  LOBYTE(v7) = 45;
  llvm::StringRef::split(v4, &v7, 1uLL, v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  llvm::StringRef::split(&v7, v4, 1uLL, v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  llvm::StringRef::split(&v7, v4, 1uLL, v5);
  return v6;
}

uint64_t llvm::Triple::getOSAndEnvironmentName(llvm::Triple *this)
{
  v1 = *(this + 23);
  v2 = *this;
  if (v1 >= 0)
  {
    v2 = this;
  }

  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  v4[0] = v2;
  v4[1] = v1;
  LOBYTE(v7) = 45;
  llvm::StringRef::split(v4, &v7, 1uLL, v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  llvm::StringRef::split(&v7, v4, 1uLL, v5);
  return v6;
}

unint64_t llvm::Triple::getOSVersion(llvm::Triple *this)
{
  OSName = llvm::Triple::getOSName(this);
  v4 = v3;
  v5 = *(this + 9);
  OSTypeName = llvm::Triple::getOSTypeName(v5);
  v8 = v4 - v7;
  if (v4 >= v7 && ((v9 = v7) == 0 || !memcmp(OSName, OSTypeName, v7)))
  {
    OSName += v9;
  }

  else if (v5 == 11 && v4 >= 5)
  {
    if (*OSName != 1868783981 || OSName[4] != 115)
    {
      v8 = v4;
    }

    else
    {
      OSName += 5;
      v8 = v4 - 5;
    }
  }

  else
  {
    v8 = v4;
  }

  v15 = 0;
  v16 = 0;
  llvm::VersionTuple::tryParse(&v15, OSName, v8);
  v13 = v16 & 0x8000000000000000;
  if (*(this + 9) == 33 && v15 == 0)
  {
    v13 = 0x8000000000000001;
  }

  return v13 | v15;
}

double llvm::Triple::setTriple(llvm::Triple *this, llvm::formatv_object_base **a2)
{
  llvm::Triple::Triple(&v4, a2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = v4;
  *(this + 2) = v5;
  result = *&v6;
  *(this + 24) = v6;
  *(this + 5) = v7;
  return result;
}

void llvm::Triple::setArchName(llvm::Triple *a1, _BYTE *a2, uint64_t a3)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_2750C1860;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, a2, &a2[a3]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, "-", "");
  VendorName = llvm::Triple::getVendorName(a1);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, VendorName, &VendorName[v5]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, "-", "");
  OSAndEnvironmentName = llvm::Triple::getOSAndEnvironmentName(a1);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, OSAndEnvironmentName, &OSAndEnvironmentName[v7]);
  v10 = 261;
  v9[0] = v11;
  v9[1] = v12;
  llvm::Triple::setTriple(a1, v9);
  if (v11 != v13)
  {
    free(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

double llvm::Triple::setOSName(llvm::Triple *a1, uint64_t a2, uint64_t a3)
{
  llvm::Triple::getEnvironmentName(a1);
  if (v6)
  {
    v15 = 773;
    v14[0] = llvm::Triple::getArchName(a1);
    v14[1] = v7;
    v14[2] = "-";
    v16[0] = v14;
    v16[2] = llvm::Triple::getVendorName(a1);
    v16[3] = v8;
    v17 = 1282;
    v18[0] = v16;
    v19 = "-";
    v20 = 770;
    v21[0] = v18;
    VendorName = a2;
    v23 = a3;
    v24 = 1282;
    v25[0] = v21;
    v26 = "-";
    v27 = 770;
    EnvironmentName = llvm::Triple::getEnvironmentName(a1);
    v28 = v25;
    v29 = EnvironmentName;
    v30 = v10;
  }

  else
  {
    v20 = 773;
    v18[0] = llvm::Triple::getArchName(a1);
    v18[1] = v11;
    v19 = "-";
    v21[0] = v18;
    VendorName = llvm::Triple::getVendorName(a1);
    v23 = v12;
    v24 = 1282;
    v25[0] = v21;
    v26 = "-";
    v27 = 770;
    v28 = v25;
    v29 = a2;
    v30 = a3;
  }

  v31 = 1282;
  return llvm::Triple::setTriple(a1, &v28);
}

double llvm::Triple::setEnvironmentName(llvm::Triple *a1, llvm::formatv_object_base *a2, llvm::formatv_object_base *a3)
{
  v12 = 773;
  v11[0] = llvm::Triple::getArchName(a1);
  v11[1] = v6;
  v11[2] = "-";
  v13[0] = v11;
  v13[2] = llvm::Triple::getVendorName(a1);
  v13[3] = v7;
  v14 = 1282;
  v15[0] = v13;
  v15[2] = "-";
  v16 = 770;
  OSName = llvm::Triple::getOSName(a1);
  v17[0] = v15;
  v17[2] = OSName;
  v17[3] = v9;
  v18 = 1282;
  v19[0] = v17;
  v19[2] = "-";
  v20 = 770;
  v21[0] = v19;
  v21[2] = a2;
  v21[3] = a3;
  v22 = 1282;
  return llvm::Triple::setTriple(a1, v21);
}

double llvm::Triple::setObjectFormat(llvm::Triple *a1, int a2)
{
  v4 = *(a1 + 10);
  if (v4)
  {
    v12[0] = llvm::Triple::getEnvironmentTypeName(v4);
    v12[1] = v5;
    v12[2] = "-";
    v13 = 773;
    v14[0] = v12;
    v14[2] = llvm::Triple::getObjectFormatTypeName(a2);
    v14[3] = v6;
    v15 = 1282;
    llvm::Twine::str(v14, v16);
    if (v17 >= 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = v16[0];
    }

    if (v17 >= 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = v16[1];
    }

    result = llvm::Triple::setEnvironmentName(a1, v7, v8);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  else
  {
    ObjectFormatTypeName = llvm::Triple::getObjectFormatTypeName(a2);

    return llvm::Triple::setEnvironmentName(a1, ObjectFormatTypeName, v10);
  }

  return result;
}

void llvm::Triple::get64BitArchVariant(llvm::Triple *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *a2 = *this;
    *(a2 + 16) = *(this + 2);
  }

  *(a2 + 24) = *(this + 24);
  *(a2 + 40) = *(this + 5);
  v4 = "unknown";
  v5 = 7;
  switch(*(this + 6))
  {
    case 0:
    case 6:
    case 7:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xF:
    case 0x14:
    case 0x19:
    case 0x1F:
    case 0x21:
    case 0x22:
    case 0x27:
    case 0x28:
    case 0x35:
    case 0x36:
    case 0x37:
      goto LABEL_35;
    case 1:
    case 5:
    case 0x23:
      v4 = "aarch64";
      goto LABEL_34;
    case 2:
    case 0x24:
      v4 = "aarch64_be";
      v5 = 10;
      goto LABEL_35;
    case 0xD:
      v4 = "loongarch64";
      goto LABEL_31;
    case 0x10:
      v6 = *(this + 7) == 38;
      if (*(this + 7) == 38)
      {
        v5 = 11;
      }

      else
      {
        v5 = 6;
      }

      v7 = "mips64";
      v8 = "mipsisa64r6";
      goto LABEL_22;
    case 0x11:
      v6 = *(this + 7) == 38;
      if (*(this + 7) == 38)
      {
        v5 = 13;
      }

      else
      {
        v5 = 8;
      }

      v7 = "mips64el";
      v8 = "mipsisa64r6el";
LABEL_22:
      if (v6)
      {
        v4 = v8;
      }

      else
      {
        v4 = v7;
      }

      goto LABEL_35;
    case 0x15:
      v4 = "powerpc64";
      v5 = 9;
      goto LABEL_35;
    case 0x16:
      v4 = "powerpc64le";
LABEL_31:
      v5 = 11;
      goto LABEL_35;
    case 0x1B:
      v4 = "riscv64";
      goto LABEL_34;
    case 0x1D:
      v4 = "sparcv9";
      goto LABEL_34;
    case 0x25:
      v4 = "x86_64";
      goto LABEL_28;
    case 0x29:
      v4 = "nvptx64";
      goto LABEL_34;
    case 0x2B:
      v4 = "le64";
      v5 = 4;
      goto LABEL_35;
    case 0x2D:
      v4 = "amdil64";
      goto LABEL_34;
    case 0x2F:
      v4 = "hsail64";
      goto LABEL_34;
    case 0x31:
      v4 = "spir64";
      goto LABEL_28;
    case 0x33:
      v4 = "spirv64";
LABEL_34:
      v5 = 7;
      goto LABEL_35;
    case 0x38:
      v4 = "wasm64";
LABEL_28:
      v5 = 6;
      goto LABEL_35;
    case 0x3A:
      v4 = "renderscript64";
      v5 = 14;
LABEL_35:

      llvm::Triple::setArchName(a2, v4, v5);
      break;
    default:
      return;
  }
}

uint64_t llvm::Triple::isMacOSXVersionLT(llvm::Triple *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 9) != 11)
  {
    if (a2 == 10)
    {
      a2 = a3 + 4;
      a3 = a4;
      LODWORD(a4) = 0;
    }

    else
    {
      a2 += 9;
    }
  }

  return llvm::Triple::isOSVersionLT(this, a2, a3, a4);
}

unint64_t llvm::Triple::getMinimumSupportedOSVersion(llvm::Triple *this)
{
  if (*(this + 8) != 1 || *(this + 6) != 3)
  {
    return 0;
  }

  v1 = 0x800000000000000ELL;
  v2 = *(this + 9);
  if (v2 <= 27)
  {
    if (v2 != 7)
    {
      if (v2 == 11)
      {
        return 0x800000000000000BLL;
      }

      return 0;
    }

    if ((*(this + 10) - 23) >= 2 && *(this + 7) != 33)
    {
      return 0;
    }
  }

  else
  {
    switch(v2)
    {
      case 28:
        if (*(this + 10) != 23)
        {
          ArchName = llvm::Triple::getArchName(this);
          if (v4 != 6)
          {
            return 0;
          }

          if (*ArchName != 913142369 || *(ArchName + 4) != 25908)
          {
            return 0;
          }
        }

        break;
      case 29:
        if (*(this + 10) == 23)
        {
          return 0x8000000000000007;
        }

        else
        {
          return 0x8000000000000009;
        }

      case 31:
        return 0x8000000000000014;
      default:
        return 0;
    }
  }

  return v1;
}

uint64_t llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, int a8)
{
  v13 = llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(a1, a2, a3, a8);
  v14 = llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(v13, a4, a5, a8);

  return llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(v14, a6, a7, a8);
}

uint64_t llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, uint64_t a12, int a13)
{
  v17 = llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(a1, a2, a3, a13);
  v18 = llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(v17, a4, a5, a13);

  return llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(v18, a6, a7, a9, a10, a11, a12, a13);
}

uint64_t llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, uint64_t a16, int a17)
{
  v19 = llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(a1, a2, a3, a17);
  v20 = llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Case(v19, a4, a5, a17);

  return llvm::StringSwitch<llvm::Triple::ArchType,llvm::Triple::ArchType>::Cases(v20, a6, a7, a9, a10, a11, a12, v21, a13, a14, a15, a16, a17);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
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

void operator delete(void *__p, std::align_val_t a2)
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

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}