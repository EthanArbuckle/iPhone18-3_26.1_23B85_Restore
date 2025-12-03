@interface _UIFastIndexSet
+ (char)indexSetWithIndexesInRange:(uint64_t)range;
+ (id)indexSet;
- (BOOL)isEqual:(id)equal;
- (__n128)initWithIndex:(__n128 *)index;
- (char)initWithIndexesInRange:(uint64_t)range;
- (id).cxx_construct;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int8x16_t)count;
- (uint64_t)firstIndex;
- (uint64_t)indexGreaterThanOrEqualToIndex:(uint16x8_t *)index;
- (unint64_t)containsIndex:(uint16x8_t *)index;
- (unint64_t)hash;
- (unsigned)initWithIndexSet:(void *)set;
- (void)enumerateIndexesUsingBlock:(uint64_t)block;
@end

@implementation _UIFastIndexSet

- (int8x16_t)count
{
  if (result)
  {
    v1 = result;
    v2 = result[4].i32[0];
    if (v2 != 2)
    {
      if (v2 != 1)
      {
        if (!v2)
        {
          return vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(result[1])))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(result[2])))));
        }

        return 0;
      }

      v3 = result[3].i64[0];
      if (v3)
      {
        result = 0;
        v4 = 0;
        v6 = v1[1];
        v5 = v1[2];
        do
        {
          v12[0] = v6;
          v12[1] = v5;
          v11[0] = v6;
          v11[1] = v5;
          result = (result + *(v11 + ((v4 + 1) & 0xF)) - *(v12 + (v4 & 0xF)));
          v4 += 2;
        }

        while (v4 != v3);
        return result;
      }

      return 0;
    }

    v8 = result[1].i64[0];
    v7 = result[1].i64[1];
    if (v8 == v7)
    {
      return 0;
    }

    result = 0;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v8 += 2;
      result = (result + v10 - v9);
    }

    while (v8 != v7);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 16) = 0;
  return self;
}

- (uint64_t)firstIndex
{
  if (result)
  {
    v1 = *(result + 64);
    if (v1 == 2)
    {
      v3 = *(result + 16);
      if (v3 == *(result + 24))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return *v3;
    }

    else
    {
      if (v1 != 1)
      {
        if (v1)
        {
          return 0;
        }

        v2 = vorrq_s8(*(result + 16), *(result + 32));
        if (vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)))
        {
          return _UIBitSet<256ul>::front((result + 16));
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }

      if (*(result + 48))
      {
        return *(result + 16);
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return result;
}

+ (id)indexSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27___UIFastIndexSet_indexSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_1080 != -1)
  {
    dispatch_once(&_MergedGlobals_1080, block);
  }

  v2 = qword_1ED49DBF0;

  return v2;
}

- (__n128)initWithIndex:(__n128 *)index
{
  v151 = *MEMORY[0x1E69E9840];
  if (index)
  {
    v2 = a2;
    if (a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v138.receiver = index;
      v138.super_class = _UIFastIndexSet;
      v4 = [(__n128 *)&v138 init];
      v6 = v4;
      if (!v4)
      {
        goto LABEL_188;
      }

      v7 = &v4[1];
      v8 = v2 + 1;
      v9 = v4[4].n128_u32[0];
      if (v9)
      {
        n128_u64 = 0;
      }

      else
      {
        n128_u64 = v4[1].n128_u64;
      }

      if (v9)
      {
LABEL_50:
        if (v9 == 1)
        {
          v36 = v7;
        }

        else
        {
          v36 = 0;
        }

        if (v9 != 1)
        {
          goto LABEL_58;
        }

        v37 = v6[3].n128_u64[0];
        if ((v8 | v2) >> 16)
        {
          __src = 0uLL;
          v147 = 0;
          _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&__src, v7, 0, v7, v37, v37);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &__src);
          if (__src.n128_u64[0])
          {
            __src.n128_u64[1] = __src.n128_u64[0];
            operator delete(__src.n128_u64[0]);
          }

          v9 = v6[4].n128_u32[0];
LABEL_58:
          if (v9 == 2)
          {
            v38 = v7;
          }

          else
          {
            v38 = 0;
          }

          if (v9 != 2)
          {
            goto LABEL_188;
          }

          v39 = &v148;
          v41 = v6[1].n128_u64[0];
          v40 = v6[1].n128_u64[1];
          if (v41 == v40)
          {
            v44 = v6[1].n128_u64[0];
          }

          else
          {
            v43 = v40 - 8;
            v42 = *(v40 - 1);
            v44 = v6[1].n128_u64[1];
            if (v42 >= v2)
            {
              if (v42 == v2)
              {
                __src.n128_u64[0] = v7;
                v45 = v40;
                v46 = v40;
                goto LABEL_115;
              }

              v53 = (v40 - v41) >> 3;
              if (v53 < 2)
              {
                v55 = 0;
              }

              else
              {
                v54 = 0;
                do
                {
                  if (*&v41[8 * v54 + 8 * (v53 >> 1)] < v2)
                  {
                    v54 += v53 >> 1;
                  }

                  v53 -= v53 >> 1;
                }

                while (v53 > 1);
                v55 = 8 * v54;
              }

              v43 = &v41[8 * (*&v41[v55] < v2) + v55];
              if (v40 >= v43 + 16)
              {
                v40 = v43 + 16;
              }

              v60 = (v40 - v43) >> 3;
              if (v60 < 2)
              {
                v62 = 0;
              }

              else
              {
                v61 = 0;
                do
                {
                  if (*&v43[8 * v61 + 8 * (v60 >> 1)] <= v8)
                  {
                    v61 += v60 >> 1;
                  }

                  v60 -= v60 >> 1;
                }

                while (v60 > 1);
                v62 = 8 * v61;
              }

              v63 = &v43[v62];
              if (v43 == v40)
              {
                v64 = 0;
              }

              else
              {
                v64 = 8 * (*v63 <= v8);
              }

              v45 = &v63[v64];
              v65 = ((v43 - v41) >> 3) & 1;
              __src.n128_u64[0] = v38;
              if (((v45 - v43) & 8) != 0)
              {
                v8 = v65 + v2;
                v46 = v43 + 8;
                v40 = v45;
                v7 = v38;
LABEL_115:
                __src.n128_u64[1] = v43;
                v147 = v40;
                v148 = v8;
                v149 = xmmword_18A64C520;
                v66 = (v45 - v43) >> 3;
                if (v66)
                {
                  if (v66 == 1)
                  {
                    *v43 = v8;
                    goto LABEL_188;
                  }

                  *v43 = v8;
LABEL_120:
                  if (v45 != v46)
                  {
                    v67 = *(v7 + 8);
                    v68 = v67 - v45;
                    if (v67 != v45)
                    {
                      memmove(v46, v45, v67 - v45);
                    }

                    *(v7 + 8) = &v46[v68];
                  }

                  goto LABEL_188;
                }

LABEL_118:
                std::vector<unsigned long>::insert(v7, v43, v39);
                goto LABEL_188;
              }

              __src.n128_u64[1] = v43;
              v147 = v45;
              if (v65)
              {
                v148 = 0;
                v149 = 0uLL;
                if (v45 != v43)
                {
                  v84 = *(v38 + 8);
                  v85 = v84 - v45;
                  if (v84 != v45)
                  {
                    memmove(v43, v45, v84 - v45);
                  }

                  *(v38 + 8) = &v43[v85];
                }

                goto LABEL_188;
              }

              v44 = v43;
              v7 = v38;
              v40 = v43;
              goto LABEL_71;
            }
          }

          __src.n128_u64[0] = v7;
          __src.n128_u64[1] = v40;
          v43 = v40;
          v45 = v44;
          v147 = v40;
LABEL_71:
          v148 = v2;
          *&v149 = v2 + 1;
          *(&v149 + 1) = 2;
          v52 = (v45 - v43) >> 3;
          if (v52 == 2)
          {
            *v40 = v2;
            *(v40 + 1) = v149;
          }

          else
          {
            if (v52 == 1)
            {
              v39 = &v149;
              *v40 = v2;
              v43 = v44 + 8;
              goto LABEL_118;
            }

            if (v52)
            {
              *v40 = v2;
              *(v40 + 1) = v149;
              v46 = v44 + 16;
              goto LABEL_120;
            }

            std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(v7, v43, &v148, &v149 + 8);
          }

LABEL_188:
          index = v6;
          indexCopy = index;
          goto LABEL_189;
        }

        if (!v37)
        {
          v47 = 0;
          v51 = 0;
          __src.n128_u64[0] = v7;
          __src.n128_u64[1] = v7;
          v147 = 0;
          v148 = v7;
          *&v149 = 0;
          WORD4(v149) = v2;
          v50 = 2;
          goto LABEL_76;
        }

        v47 = v37 - 1;
        v5 = *v7;
        v48 = *(v7 + 16);
        v135[0] = *v7;
        v135[1] = v48;
        v49 = *(v135 + ((v37 - 1) & 0xF));
        if (v49 < v2)
        {
          __src.n128_u64[0] = v7;
          __src.n128_u64[1] = v7;
          v147 = v37;
          v148 = v7;
          *&v149 = v37;
          WORD4(v149) = v2;
          v50 = 2;
          v47 = v37;
          v51 = v37;
LABEL_76:
          WORD5(v149) = v2 + 1;
          goto LABEL_128;
        }

        if (v49 == v2)
        {
          __src.n128_u64[0] = v7;
          __src.n128_u64[1] = v7;
          v147 = v37 - 1;
          v148 = v7;
          *&v149 = v37;
          WORD4(v149) = v2 + 1;
          v50 = 1;
          LOWORD(v2) = v2 + 1;
          v51 = v37;
        }

        else
        {
          v56 = vdupq_n_s16(v2);
          v57 = __clz(__rbit64(*&vshrn_n_s16(vuzp1q_s8(vcgeq_u16(v5, v56), vcgeq_u16(v48, v56)), 4uLL))) >> 2;
          if (v57 >= v37)
          {
            v47 = v37;
          }

          else
          {
            v47 = v57;
          }

          v51 = v47 + 2;
          if (v37 < v47 + 2)
          {
            v51 = v37;
          }

          v58 = vdupq_n_s16(v8);
          v5 = vuzp1q_s8(vcgtq_u16(v5, v58), vcgtq_u16(v48, v58));
          v5.n128_u64[0] = vshrn_n_s16(v5, 4uLL);
          v59 = __clz(__rbit64((-1 << (4 * v47)) & v5.n128_u64[0])) >> 2;
          if (v59 < v51)
          {
            v51 = v59;
          }

          if (((v51 - v47) & 1) == 0)
          {
            __src.n128_u64[0] = v7;
            __src.n128_u64[1] = v7;
            v147 = v47;
            v148 = v7;
            *&v149 = v51;
            if (v47)
            {
              v50 = 0;
              LOWORD(v2) = 0;
              DWORD2(v149) = 0;
            }

            else
            {
              WORD4(v149) = v2;
              WORD5(v149) = v2 + 1;
              v50 = 2;
            }

LABEL_128:
            v150 = v50;
            v69 = v47 - v51;
            if (v47 - v51 + v50 + v37 <= 0x10)
            {
              v70 = v51 - v47;
              if (v50 != 2)
              {
                if (v50 == 1)
                {
                  if (v70 == 1)
                  {
                    *(v7 + 2 * (v47 & 0xF)) = v2;
                    goto LABEL_188;
                  }

                  if (!v70)
                  {
                    v71 = &v149 + 4;
LABEL_168:
                    _UISmallVector<unsigned short,16ul>::insert(v7, v7, v47, v71);
                    goto LABEL_188;
                  }

                  v86 = *(v7 + 16);
                  v122 = *v7;
                  v123 = v86;
                  v122.n128_u16[v47 & 0xF] = v2;
                  v88 = v122;
                  v87 = v123;
                  *v7 = v122;
                  *(v7 + 16) = v87;
                  v89 = v149;
                  v90 = v147 + 1;
                  if (v149 < v37)
                  {
                    v91 = v149;
                    v92 = v147 + 1;
                    do
                    {
                      v121[0] = v88;
                      v121[1] = v87;
                      v93 = *(v121 + (v91 & 0xF));
                      v119 = v88;
                      v120 = v87;
                      v119.n128_u16[v92 & 0xF] = v93;
                      v88 = v119;
                      v87 = v120;
                      ++v91;
                      ++v92;
                    }

                    while (v37 != v91);
                    *v7 = v119;
                    *(v7 + 16) = v87;
                  }

                  v83 = v90 - v89 + v37;
                }

                else
                {
                  if (v51 == v47)
                  {
                    goto LABEL_188;
                  }

                  if (v51 < v37)
                  {
                    v81 = *v7;
                    v80 = *(v7 + 16);
                    do
                    {
                      v118[0] = v81;
                      v118[1] = v80;
                      v82 = *(v118 + (v51 & 0xF));
                      v116 = v81;
                      v117 = v80;
                      v116.n128_u16[v47 & 0xF] = v82;
                      v81 = v116;
                      v80 = v117;
                      ++v51;
                      ++v47;
                    }

                    while (v37 != v51);
                    *v36 = v116;
                    v36[1] = v80;
                  }

                  v83 = v69 + v37;
                }

                v6[3].n128_u64[0] = v83;
                goto LABEL_188;
              }

              if (v70 == 2)
              {
                v94 = *(v7 + 16);
                v133 = *v7;
                v134 = v94;
                v133.n128_u16[v47 & 0xF] = v2;
                v96 = v133;
                v95 = v134;
                *v7 = v133;
                *(v7 + 16) = v95;
                v131 = v96;
                v132 = v95;
                v131.n128_u16[(v147 + 1) & 0xF] = WORD5(v149);
                v97 = v132;
                *v7 = v131;
                *(v7 + 16) = v97;
                goto LABEL_188;
              }

              if (v70 != 1)
              {
                if (v70)
                {
                  v98 = *(v7 + 16);
                  v129 = *v7;
                  v130 = v98;
                  v129.n128_u16[v47 & 0xF] = v2;
                  v100 = v129;
                  v99 = v130;
                  *v7 = v129;
                  *(v7 + 16) = v99;
                  v127 = v100;
                  v128 = v99;
                  v127.n128_u16[(v147 + 1) & 0xF] = WORD5(v149);
                  v101 = v128;
                  *v7 = v127;
                  *(v7 + 16) = v101;
                  v102 = __src.n128_u64[0];
                  v103 = v147 + 2;
                  v104 = v149;
                  v105 = *(__src.n128_u64[0] + 32);
                  if (v149 < v105)
                  {
                    v107 = *__src.n128_u64[0];
                    v106 = *(__src.n128_u64[0] + 16);
                    v108 = v149;
                    v109 = v147 + 2;
                    do
                    {
                      v126[0] = v107;
                      v126[1] = v106;
                      v110 = *(v126 + (v108 & 0xF));
                      v124 = v107;
                      v125 = v106;
                      *(&v124 + (v109 & 0xF)) = v110;
                      v107 = v124;
                      v106 = v125;
                      ++v108;
                      ++v109;
                    }

                    while (v105 != v108);
                    *v102 = v124;
                    *(v102 + 16) = v106;
                  }

                  *(v102 + 32) = v103 - v104 + v105;
                }

                else
                {
                  _UISmallVector<unsigned short,16ul>::insert<unsigned short *>(v7, v5, v7, v47, &v149 + 4, &v149 + 6);
                }

                goto LABEL_188;
              }

              *(v7 + 2 * (v47 & 0xF)) = v2;
              v47 = v147 + 1;
              v71 = &v149 + 5;
              goto LABEL_168;
            }

            v145 = 0uLL;
            v144 = 0;
            _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&v144, v7, 0, v7, v37, v37);
            v72 = v144 + 8 * v147;
            __p.n128_u64[0] = &v144;
            __p.n128_u64[1] = v72;
            v73 = 8 * v149;
            v74 = v144 + 8 * v149;
            v75 = &v141;
            v140 = v74;
            v141 = WORD4(v149);
            v76 = WORD5(v149);
            v142 = WORD5(v149);
            v143 = v150;
            v77 = (8 * v149 - 8 * v147) >> 3;
            if (v150 == 2)
            {
              if (v77 == 2)
              {
                *v72 = WORD4(v149);
                *(v72 + 1) = v76;
                goto LABEL_186;
              }

              if (v77 != 1)
              {
                if (!v77)
                {
                  std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(&v144, v144 + 8 * v147, &v141, &v143);
                  goto LABEL_186;
                }

                *v72 = WORD4(v149);
                *(v72 + 1) = v76;
                v78 = v72 + 16;
                goto LABEL_181;
              }

              v75 = &v142;
              *v72 = WORD4(v149);
              v72 += 8;
            }

            else
            {
              if (v150 != 1)
              {
                if (!v150 && v73 != 8 * v147)
                {
                  v78 = v144 + 8 * v147;
                  v79 = v144 + v73;
LABEL_183:
                  v112 = v145 - v79;
                  if (v145 != v79)
                  {
                    memmove(v78, v79, v145 - v79);
                  }

                  *&v145 = &v78[v112];
                  goto LABEL_186;
                }

                goto LABEL_186;
              }

              if (v77)
              {
                if (v77 == 1)
                {
                  *v72 = WORD4(v149);
                  goto LABEL_186;
                }

                *v72 = WORD4(v149);
                v78 = v72 + 8;
LABEL_181:
                v111 = v74 - v78;
                if (v111)
                {
                  v79 = &v78[v111];
                  goto LABEL_183;
                }

LABEL_186:
                std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &v144);
                if (v144)
                {
                  *&v145 = v144;
                  operator delete(v144);
                }

                goto LABEL_188;
              }
            }

            std::vector<unsigned long>::insert(&v144, v72, v75);
            goto LABEL_186;
          }

          if (v47)
          {
            LOWORD(v2) = v2 + 1;
          }

          __src.n128_u64[0] = v7;
          __src.n128_u64[1] = v7;
          v147 = v47;
          v148 = v7;
          *&v149 = v51;
          WORD4(v149) = v2;
          v50 = 1;
        }

        WORD5(v149) = 0;
        goto LABEL_128;
      }

      if ((v8 | v2) < 0x100)
      {
        v11 = v2 >> 6;
        if (v2 >> 6 <= v8 >> 6)
        {
          v12 = (v8 >> 6) - v11 + 1;
          v13 = &n128_u64[v11];
          v14 = v11 << 6;
          v15 = (v11 << 6) + 64;
          v16 = v15 + v2;
          v17 = -64 * v11;
          do
          {
            v18 = v2 - v14;
            if (v2 >= v14)
            {
              v19 = v14;
            }

            else
            {
              v19 = v2;
            }

            if (v2 < v14)
            {
              v18 = 0;
            }

            v20 = v16 - v19;
            if (v15 >= v8)
            {
              v21 = v2 + 1;
            }

            else
            {
              v21 = v15;
            }

            v22 = 0xFFFFFFFFFFFFFFFFLL >> (v20 - v21) << v18;
            if (v18 >= v21 + v17)
            {
              v23 = 0;
            }

            else
            {
              v23 = v22;
            }

            *v13++ |= v23;
            v16 += 64;
            v14 += 64;
            v15 += 64;
            v17 -= 64;
            --v12;
          }

          while (v12);
        }

        goto LABEL_188;
      }

      v24 = 0;
      v25 = 256;
      v26 = n128_u64;
      while (1)
      {
        v27 = *v26++;
        v28 = __clz(__rbit64(v27));
        if (v28 < 0x40)
        {
          break;
        }

        v24 -= 64;
        if (v24 == -256)
        {
          goto LABEL_30;
        }
      }

      v25 = v28 - v24;
LABEL_30:
      if ((v8 | v2) >> 16)
      {
        __p.n128_u64[0] = n128_u64;
        __p.n128_u64[1] = v25;
        v140 = 0;
        v144 = n128_u64;
        v145 = xmmword_18A679F50;
        std::vector<unsigned long>::vector[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,0>(&__src, &__p, &v144);
        v5 = std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &__src);
        v34 = __src.n128_u64[0];
        if (!__src.n128_u64[0])
        {
LABEL_49:
          v9 = v6[4].n128_u32[0];
          goto LABEL_50;
        }

        __src.n128_u64[1] = __src.n128_u64[0];
      }

      else
      {
        __p.n128_u64[0] = n128_u64;
        __p.n128_u64[1] = v25;
        v140 = 0;
        v29 = std::uninitialized_copy[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,unsigned long *>(&__p, 256, __src.n128_u64);
        if ((v29 - &__src) <= 0x80)
        {
          if (&__src == v29)
          {
            v31 = 0;
          }

          else
          {
            v31 = 0;
            p_src = &__src;
            do
            {
              v33 = p_src->n128_u16[0];
              p_src = (p_src + 8);
              v136 = v30;
              v137 = v5;
              v136.n128_u16[v31 & 0xF] = v33;
              v30 = v136;
              v5 = v137;
              ++v31;
            }

            while (p_src != v29);
          }

          v35 = v6[4].n128_u32[0];
          if (v35 != -1)
          {
            if (v35 == 1)
            {
              v6[1] = v30;
              v6[2] = v5;
              v6[3].n128_u64[0] = v31;
              goto LABEL_49;
            }

            v114 = v30;
            v115 = v5;
            (off_1EFB00DA8[v35])(&__p, v7);
            v30 = v114;
            v5 = v115;
          }

          v6[1] = v30;
          v6[2] = v5;
          v6[3].n128_u64[0] = v31;
          v6[4].n128_u32[0] = 1;
          goto LABEL_49;
        }

        __p = 0uLL;
        v140 = 0;
        if (v29 != &__src)
        {
          std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v29 - &__src) >> 3);
        }

        v5 = std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &__p);
        v34 = __p.n128_u64[0];
        if (!__p.n128_u64[0])
        {
          goto LABEL_49;
        }

        __p.n128_u64[1] = __p.n128_u64[0];
      }

      operator delete(v34);
      goto LABEL_49;
    }
  }

  indexCopy = 0;
LABEL_189:

  return indexCopy;
}

+ (char)indexSetWithIndexesInRange:(uint64_t)range
{
  v5 = objc_alloc(objc_opt_self());
  range = [(_UIFastIndexSet *)v5 initWithIndexesInRange:a2, range];

  return range;
}

- (char)initWithIndexesInRange:(uint64_t)range
{
  if (self && a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36.receiver = self;
    v36.super_class = _UIFastIndexSet;
    v6 = objc_msgSendSuper2(&v36, sel_init);
    v9 = v6;
    if (v6)
    {
      v10 = range == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_9;
    }

    v12 = a2 + range;
    if (a2 <= 0xFF && v12 <= 0xFF)
    {
      if (*(v6 + 16))
      {
        v13 = 0;
      }

      else
      {
        v13 = v6 + 16;
      }

      if (a2 < v12)
      {
        v14 = a2 >> 6;
        if (a2 >> 6 <= v12 >> 6)
        {
          v15 = (v12 >> 6) - v14 + 1;
          v16 = &v13[8 * v14];
          v17 = v14 << 6;
          v18 = (v14 << 6) + 64;
          v19 = v18 + a2;
          v20 = -64 * v14;
          do
          {
            v21 = a2 - v17;
            if (a2 >= v17)
            {
              v22 = v17;
            }

            else
            {
              v22 = a2;
            }

            if (a2 < v17)
            {
              v21 = 0;
            }

            v23 = v19 - v22;
            if (v18 >= v12)
            {
              v24 = v12;
            }

            else
            {
              v24 = v18;
            }

            v25 = 0xFFFFFFFFFFFFFFFFLL >> (v23 - v24) << v21;
            if (v21 >= v24 + v20)
            {
              v26 = 0;
            }

            else
            {
              v26 = v25;
            }

            *v16 |= v26;
            v16 += 8;
            v19 += 64;
            v17 += 64;
            v18 += 64;
            v20 -= 64;
            --v15;
          }

          while (v15);
        }
      }

      goto LABEL_9;
    }

    if (a2 >> 16 || (v27 = v12 >> 16) != 0)
    {
      operator new();
    }

    LOWORD(__p) = a2;
    WORD1(__p) = v12;
    v28 = 4;
    do
    {
      v29 = *(&__p + v27);
      v33 = v8;
      v34 = v7;
      *(&v33 + (v27 & 0xF)) = v29;
      v8 = v33;
      v7 = v34;
      ++v27;
      v28 -= 2;
    }

    while (v28);
    v30 = *(v6 + 16);
    if (v30 != -1)
    {
      if (v30 == 1)
      {
        *(v6 + 1) = v33;
        *(v6 + 2) = v7;
        *(v6 + 6) = 2;
LABEL_9:
        self = v9;
        selfCopy = self;
        goto LABEL_10;
      }

      v31 = v33;
      v32 = v34;
      (off_1EFB00DA8[v30])(&v37, v6 + 16);
      v8 = v31;
      v7 = v32;
    }

    *(v9 + 1) = v8;
    *(v9 + 2) = v7;
    *(v9 + 6) = 2;
    *(v9 + 16) = 1;
    goto LABEL_9;
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (unsigned)initWithIndexSet:(void *)set
{
  if (!set)
  {
    return 0;
  }

  v8.receiver = set;
  v8.super_class = _UIFastIndexSet;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (a2 && v3)
  {
    v5 = v3[16];
    v6 = *(a2 + 64);
    if (v5 == -1)
    {
      if (v6 == -1)
      {
        return v4;
      }
    }

    else if (v6 == -1)
    {
      (off_1EFB00DA8[v5])(&v9, v3 + 4);
      v4[16] = -1;
      return v4;
    }

    v9 = (v3 + 4);
    (off_1EFB00DC0[v6])(&v9);
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [_UIMutableFastIndexSet alloc];

  return [(_UIFastIndexSet *)v4 initWithIndexSet:?];
}

- (unint64_t)containsIndex:(uint16x8_t *)index
{
  v2 = 0;
  if (index && a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = index[4].i32[0];
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        v4 = index[3].u64[0];
        v5 = vdupq_n_s16(a2);
        v6 = __clz(__rbit64(*&vshrn_n_s16(vuzp1q_s8(vcgtq_u16(index[1], v5), vcgtq_u16(index[2], v5)), 4uLL))) >> 2;
        if (v6 < v4)
        {
          LOBYTE(v4) = v6;
        }
      }

      else
      {
        if (v3 || a2 > 0xFF)
        {
          return 0;
        }

        v4 = *(index[1].i64 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2;
      }

      return v4 & 1;
    }

    v7 = index[1].i64[0];
    v8 = index[1].i64[1];
    v9 = (v8 - v7) >> 3;
    if (v9 < 2)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        if (*(v7 + 8 * (v10 + (v9 >> 1))) <= a2)
        {
          v10 += v9 >> 1;
        }

        v9 -= v9 >> 1;
      }

      while (v9 > 1);
      v11 = 8 * v10;
    }

    if (v8 == v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = 8 * (*(v11 + v7) <= a2);
    }

    return ((v12 + v11) >> 3) & 1;
  }

  return v2;
}

- (void)enumerateIndexesUsingBlock:(uint64_t)block
{
  if (block)
  {
    v3 = (block + 16);
    v4 = *(block + 64);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = block + 16;
    }

    if (v4)
    {
      if (v4 == 2)
      {
        v27 = 0;
        v19 = *(block + 16);
        v20 = *(block + 24);
        if (v19 != v20)
        {
          while (1)
          {
            v21 = *v19;
            v22 = v19[1];
            if (*v19 != v22)
            {
              break;
            }

LABEL_30:
            v19 += 2;
            if (v19 == v20)
            {
              return;
            }
          }

          while (1)
          {
            (a2)[2](a2, v21, &v27);
            if (v27 == 1)
            {
              break;
            }

            if (v22 == ++v21)
            {
              goto LABEL_30;
            }
          }
        }
      }

      else if (v4 == 1)
      {
        v27 = 0;
        v6 = *(block + 48);
        if (v6)
        {
          v7 = 0;
          while (1)
          {
            v8 = v3[1];
            v26[0] = *v3;
            v26[1] = v8;
            v9 = *(v26 + (v7 & 0xF));
            v25[0] = v26[0];
            v25[1] = v8;
            v10 = *(v25 + (v7 & 0xE | 1));
            if (v9 != v10)
            {
              break;
            }

LABEL_13:
            v7 += 2;
            if (v7 == v6)
            {
              return;
            }
          }

          while (1)
          {
            (a2)[2](a2, v9, &v27);
            if (v27 == 1)
            {
              break;
            }

            if (v10 == ++v9)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }

    else
    {
      v23 = v5;
      v11 = a2;
      v12 = 0;
      v24 = 0;
      v27 = 0;
      while (2)
      {
        LOBYTE(v13) = 0;
        v14 = *(v23 + 8 * v24);
        do
        {
          if (((-1 << v13) & v14) == 0)
          {
            break;
          }

          v15 = __clz(__rbit64((-1 << v13) & v14));
          v16 = (-1 << v15) & ~v14;
          v13 = __clz(__rbit64(v16));
          v17 = v13 - v15;
          if (v13 != v15)
          {
            v18 = v12 + v15;
            do
            {
              (*(v11 + 2))(v11, v18, &v27);
              if (v27)
              {
                goto LABEL_24;
              }

              ++v18;
            }

            while (--v17);
          }
        }

        while (v16);
        v12 += 64;
        if (++v24 != 4)
        {
          continue;
        }

        break;
      }

LABEL_24:
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:128];
  v41.receiver = self;
  v41.super_class = _UIFastIndexSet;
  v4 = [(_UIFastIndexSet *)&v41 description];
  [v3 appendString:v4];

  p_inOutIndexes = &self->_inOutIndexes;
  tail = self[1]._inOutIndexes.__impl_.__data.__tail;
  if (tail.var1)
  {
    v7 = 0;
  }

  else
  {
    v7 = &self->_inOutIndexes;
  }

  switch(tail.var1)
  {
    case 0:
      [v3 appendString:@"{"];
      v15 = 0;
      v16 = v7;
      while (1)
      {
        v17 = *v16++;
        v18 = __clz(__rbit64(v17));
        if (v18 < 0x40)
        {
          break;
        }

        v15 -= 64;
        if (v15 == -256)
        {
          goto LABEL_30;
        }
      }

      if ((v18 | 0xFFFFFFFFFFFFFF00) == v15)
      {
        break;
      }

      v25 = 0;
      v26 = v18 - v15;
      while (1)
      {
        v27 = v26 >> 6;
        if (v26 >> 6 == 4)
        {
LABEL_39:
          v32 = 256;
        }

        else
        {
          v28 = v26 & 0x3F;
          v29 = -64 * v27;
          v30 = v26 >> 6;
          while (1)
          {
            v31 = __clz(__rbit64((-1 << v28) & ~v7->__impl_.__data.__head.__value._chunks[v30]));
            if (v31 < 0x40)
            {
              break;
            }

            v28 = 0;
            ++v30;
            v29 -= 64;
            ++v27;
            if (v30 == 4)
            {
              goto LABEL_39;
            }
          }

          v32 = v31 - v29;
          v34 = v30 & 0x3FFFFFFFFFFFFFFLL;
          if ((v30 & 0x3FFFFFFFFFFFFFFLL) != 4)
          {
            v35 = -64 * v27;
            while (1)
            {
              v36 = __clz(__rbit64(v7->__impl_.__data.__head.__value._chunks[v34] & (-1 << v31)));
              if (v36 < 0x40)
              {
                break;
              }

              LOBYTE(v31) = 0;
              ++v34;
              v35 -= 64;
              if (v34 == 4)
              {
                goto LABEL_40;
              }
            }

            v33 = v36 - v35;
            if ((v25 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_41:
            [v3 appendString:{@", "}];
            goto LABEL_42;
          }
        }

LABEL_40:
        v33 = 256;
        if (v25)
        {
          goto LABEL_41;
        }

LABEL_42:
        if (v26 + 1 == v32)
        {
          [v3 appendFormat:@"%lu", v26];
        }

        else
        {
          [v3 appendFormat:@"%lu-%lu", v26, v32 - 1];
        }

        v25 = 1;
        v26 = v33;
        if (v33 == 256)
        {
          goto LABEL_30;
        }
      }

    case 2:
      [v3 appendString:@"{"];
      v19 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[0];
      v20 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[1];
      if (v19 != v20)
      {
        v21 = 0;
        do
        {
          v22 = *v19;
          v23 = v19[1];
          if (v21)
          {
            [v3 appendString:{@", "}];
          }

          if (v22 + 1 == v23)
          {
            [v3 appendFormat:@"%lu", v22];
          }

          else
          {
            [v3 appendFormat:@"%lu-%lu", v22, v23 - 1];
          }

          v19 += 2;
          v21 = 1;
        }

        while (v19 != v20);
      }

      break;
    case 1:
      [v3 appendString:@"{"];
      isa = self[1].super.isa;
      if (isa)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(&p_inOutIndexes->__impl_.__data.__tail + 1);
          v39 = *&p_inOutIndexes->__impl_.__data.__dummy;
          v40 = v11;
          v12 = *(&v39 + (v10 & 0xF));
          v13 = v10 + 1;
          v37 = v39;
          v38 = v11;
          v14 = *(&v37 + ((v10 + 1) & 0xF));
          if (v9)
          {
            [v3 appendString:{@", "}];
          }

          if (v12 + 1 == v14)
          {
            [v3 appendFormat:@"%lu", v12];
          }

          else
          {
            [v3 appendFormat:@"%lu-%lu", v12, v14 - 1, v37, v38, v39, v40];
          }

          v10 = v13 + 1;
          v9 = 1;
        }

        while ((v13 + 1) != isa);
      }

      break;
    default:
      goto LABEL_31;
  }

LABEL_30:
  [v3 appendString:@"}"];
LABEL_31:

  return v3;
}

- (unint64_t)hash
{
  tail = self[1]._inOutIndexes.__impl_.__data.__tail;
  if (tail.var1 == 2)
  {
    v12 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[0];
    v13 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[1];
    if (v12 != v13)
    {
      return *(v13 - 8) + *v12;
    }

    return 0;
  }

  if (tail.var1 == 1)
  {
    isa = self[1].super.isa;
    if (isa)
    {
      v9 = *(&self->_inOutIndexes.__impl_.__data.__tail + 1);
      v10 = *&self->_inOutIndexes.__impl_.__data.__dummy;
      v15[0] = *&self->_inOutIndexes.__impl_.__data.__dummy;
      v15[1] = v9;
      return *(v15 + ((isa - 1) & 0xF)) + v10;
    }

    return 0;
  }

  if (tail.var1)
  {
    return 0;
  }

  v4 = vorrq_s8(*&self->_inOutIndexes.__impl_.__data.__dummy, *(&self->_inOutIndexes.__impl_.__data.__tail + 1));
  if (!*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))
  {
    return 0;
  }

  v5 = _UIBitSet<256ul>::front(&self->_inOutIndexes);
  v6 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[3];
  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v6 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[2];
    if (v6)
    {
      v7 = 192;
    }

    else
    {
      v6 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[1];
      if (v6)
      {
        v7 = 128;
      }

      else
      {
        v6 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[0];
        if (!v6)
        {
          v14 = 256;
          return v14 + v5;
        }

        v7 = 64;
      }
    }
  }

  v14 = v7 - __clz(v6);
  return v14 + v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_135;
  }

  v5 = 0;
  if (self && equal)
  {
    p_inOutIndexes = &self->_inOutIndexes;
    tail = self[1]._inOutIndexes.__impl_.__data.__tail;
    if (tail.var1)
    {
      v8 = 0;
    }

    else
    {
      v8 = &self->_inOutIndexes;
    }

    switch(tail.var1)
    {
      case 0:
        v15 = *(equal + 16);
        if (!v15)
        {
          v5 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*p_inOutIndexes, *(equal + 1)), vceqq_s64(*(&self->_inOutIndexes.__impl_.__data.__tail + 1), *(equal + 2)))))) ^ 1;
          return v5 & 1;
        }

        if (v15 == 1)
        {
          v16 = equal + 16;
        }

        else
        {
          v16 = 0;
        }

        if (v15 == 1)
        {
          v17 = 0;
          v18 = v8;
          while (1)
          {
            v19 = *v18++;
            v20 = __clz(__rbit64(v19));
            if (v20 < 0x40)
            {
              break;
            }

            v17 -= 64;
            if (v17 == -256)
            {
              v21 = 0;
              v22 = *(v16 + 4);
LABEL_138:
              v53 = 256;
              goto LABEL_139;
            }
          }

          v53 = v20 - v17;
          v22 = *(v16 + 4);
          if ((v20 | 0xFFFFFFFFFFFFFF00) == v17 || v22 == 0)
          {
            v21 = 0;
LABEL_139:
            v14 = v53 == 256 && v21 == v22;
            break;
          }

          v85 = 0;
          v87 = *v16;
          v86 = *(v16 + 1);
          v21 = 0;
          while (1)
          {
            v94[0] = v87;
            v94[1] = v86;
            if (v53 != *(v94 + (v21 & 0xF)))
            {
              break;
            }

            v88 = v53 >> 6;
            if (v53 >> 6 == 4)
            {
LABEL_137:
              ++v21;
              goto LABEL_138;
            }

            v89 = v53 & 0x3F;
            v90 = -64 * v88;
            while (1)
            {
              v91 = __clz(__rbit64((v8->__impl_.__data.__head.__value._chunks[v88] ^ -!v85) & (-1 << v89)));
              if (v91 < 0x40)
              {
                break;
              }

              v89 = 0;
              ++v88;
              v90 -= 64;
              if (v88 == 4)
              {
                goto LABEL_137;
              }
            }

            v53 = v91 - v90;
            v85 = !v85;
            ++v21;
            if ((v91 | 0xFFFFFFFFFFFFFF00) == v90 || v21 == v22)
            {
              goto LABEL_139;
            }
          }
        }

        else
        {
          v32 = v15 == 2;
          if (v15 == 2)
          {
            v33 = equal + 16;
          }

          else
          {
            v33 = 0;
          }

          if (v32)
          {
            v34 = 0;
            v35 = v8;
            while (1)
            {
              v36 = *v35++;
              v37 = __clz(__rbit64(v36));
              if (v37 < 0x40)
              {
                break;
              }

              v34 -= 64;
              if (v34 == -256)
              {
                v38 = *v33;
                v39 = *(v33 + 1);
LABEL_143:
                v77 = 256;
                goto LABEL_144;
              }
            }

            v77 = v37 - v34;
            v38 = *v33;
            v39 = *(v33 + 1);
            if ((v37 | 0xFFFFFFFFFFFFFF00) == v34 || v38 == v39)
            {
LABEL_144:
              v60 = v77 == 256;
              goto LABEL_145;
            }

            v79 = 0;
            while (v77 == *v38)
            {
              v80 = v77 >> 6;
              if (v77 >> 6 == 4)
              {
LABEL_142:
                ++v38;
                goto LABEL_143;
              }

              v81 = v77 & 0x3F;
              v82 = -64 * v80;
              while (1)
              {
                v83 = __clz(__rbit64((v8->__impl_.__data.__head.__value._chunks[v80] ^ -!v79) & (-1 << v81)));
                if (v83 < 0x40)
                {
                  break;
                }

                v81 = 0;
                ++v80;
                v82 -= 64;
                if (v80 == 4)
                {
                  goto LABEL_142;
                }
              }

              v77 = v83 - v82;
              v79 = !v79;
              ++v38;
              if ((v83 | 0xFFFFFFFFFFFFFF00) == v82 || v38 == v39)
              {
                goto LABEL_144;
              }
            }
          }
        }

        goto LABEL_135;
      case 2:
        v23 = *(equal + 16);
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = (equal + 16);
        }

        if (v23)
        {
          if (v23 != 2)
          {
            if (v23 == 1)
            {
              v25 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[0];
              v26 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[1];
              v27 = *(equal + 6);
              if (v27 == (v26 - v25) >> 3)
              {
                if (v25 == v26)
                {
                  v28 = 0;
LABEL_152:
                  v14 = v28 == v27;
                  break;
                }

                v28 = 0;
                v30 = *(equal + 1);
                v29 = *(equal + 2);
                while (v27 != v28)
                {
                  v31 = *v25;
                  v97[0] = v30;
                  v97[1] = v29;
                  if (v31 != *(v97 + (v28 & 0xF)))
                  {
                    break;
                  }

                  ++v25;
                  ++v28;
                  if (v25 == v26)
                  {
                    goto LABEL_152;
                  }
                }
              }
            }

            goto LABEL_135;
          }

          v61 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[0];
          v62 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[1] - v61;
          v63 = *(equal + 2);
          if (v62 != *(equal + 3) - v63)
          {
            goto LABEL_135;
          }

          v14 = memcmp(v61, v63, v62) == 0;
        }

        else
        {
          v46 = 0;
          v47 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[0];
          v48 = self->_inOutIndexes.__impl_.__data.__head.__value._chunks[1];
          v49 = 256;
          v50 = v24;
          while (1)
          {
            v51 = *v50++;
            v52 = __clz(__rbit64(v51));
            if (v52 < 0x40)
            {
              break;
            }

            v46 -= 64;
            if (v46 == -256)
            {
              goto LABEL_91;
            }
          }

          v49 = v52 - v46;
LABEL_91:
          if (v47 != v48)
          {
            v72 = 0;
            while (v49 != 256 && *v47 == v49)
            {
              v73 = v49 >> 6;
              if (v49 >> 6 == 4)
              {
LABEL_99:
                v49 = 256;
              }

              else
              {
                v74 = v49 & 0x3F;
                v75 = -64 * v73;
                while (1)
                {
                  v76 = __clz(__rbit64((v24[v73] ^ -!v72) & (-1 << v74)));
                  if (v76 < 0x40)
                  {
                    break;
                  }

                  v74 = 0;
                  ++v73;
                  v75 -= 64;
                  if (v73 == 4)
                  {
                    goto LABEL_99;
                  }
                }

                v49 = v76 - v75;
              }

              ++v47;
              v72 = !v72;
              if (v47 == v48)
              {
                goto LABEL_102;
              }
            }

            goto LABEL_135;
          }

LABEL_102:
          v14 = v49 == 256;
        }

        break;
      case 1:
        v9 = *(equal + 16);
        if (v9)
        {
          if (v9 == 2)
          {
            isa = self[1].super.isa;
            v38 = *(equal + 2);
            v39 = *(equal + 3);
            if (isa == (v39 - v38))
            {
              v56 = 0;
              if (!isa || v38 == v39)
              {
LABEL_74:
                v60 = v56 == isa;
LABEL_145:
                v14 = v60 && v38 == v39;
                break;
              }

              v57 = 0;
              v59 = *p_inOutIndexes;
              v58 = *(&self->_inOutIndexes.__impl_.__data.__tail + 1);
              while (1)
              {
                v96[0] = v59;
                v96[1] = v58;
                if (*v38 != *(v96 + (v57 & 0xF)))
                {
                  break;
                }

                v56 = (v57 + 1);
                ++v38;
                if ((isa - 1) != v57)
                {
                  v57 = (v57 + 1);
                  if (v38 != v39)
                  {
                    continue;
                  }
                }

                goto LABEL_74;
              }
            }
          }

          else if (v9 == 1)
          {
            v10 = *(equal + 6);
            v11 = self[1].super.isa;
            if (v10 >= v11)
            {
              v12 = self[1].super.isa;
            }

            else
            {
              v12 = *(equal + 6);
            }

            v13 = __clz(__rbit64(*&vshrn_n_s16(vmvnq_s8(vuzp1q_s8(vceqq_s16(*&self->_inOutIndexes.__impl_.__data.__dummy, *(equal + 1)), vceqq_s16(*(&self->_inOutIndexes.__impl_.__data.__tail + 1), *(equal + 2)))), 4uLL))) >> 2;
            if (v13 < v12)
            {
              v12 = v13;
            }

            if (v11 > v10)
            {
              v10 = self[1].super.isa;
            }

            v14 = v12 == v10;
            break;
          }

LABEL_135:
          v5 = 0;
          return v5 & 1;
        }

        v40 = 0;
        v41 = self[1].super.isa;
        v42 = 256;
        v43 = (equal + 16);
        while (1)
        {
          v44 = *v43++;
          v45 = __clz(__rbit64(v44));
          if (v45 < 0x40)
          {
            break;
          }

          v40 -= 64;
          if (v40 == -256)
          {
            goto LABEL_78;
          }
        }

        v42 = v45 - v40;
LABEL_78:
        if (v41)
        {
          v64 = 0;
          v66 = *p_inOutIndexes;
          v65 = *(&self->_inOutIndexes.__impl_.__data.__tail + 1);
          v67 = 0;
          while (v42 != 256)
          {
            v95[0] = v66;
            v95[1] = v65;
            if (v42 != *(v95 + (v67 & 0xF)))
            {
              goto LABEL_135;
            }

            v68 = v42 >> 6;
            if (v42 >> 6 == 4)
            {
LABEL_86:
              v42 = 256;
            }

            else
            {
              v69 = v42 & 0x3F;
              v70 = -64 * v68;
              while (1)
              {
                v71 = __clz(__rbit64((*(equal + v68 + 2) ^ -!v64) & (-1 << v69)));
                if (v71 < 0x40)
                {
                  break;
                }

                v69 = 0;
                ++v68;
                v70 -= 64;
                if (v68 == 4)
                {
                  goto LABEL_86;
                }
              }

              v42 = v71 - v70;
            }

            v67 = (v67 + 1);
            v64 = !v64;
            if (v67 == v41)
            {
              goto LABEL_134;
            }
          }
        }

        else
        {
          v67 = 0;
        }

        if (v67 != v41)
        {
          goto LABEL_135;
        }

LABEL_134:
        v14 = v42 == 256;
        break;
      default:
        goto LABEL_135;
    }

    v5 = v14;
  }

  return v5 & 1;
}

- (uint64_t)indexGreaterThanOrEqualToIndex:(uint16x8_t *)index
{
  if (!index)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = index[4].i32[0];
  if (v3)
  {
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        v4 = index[3].u64[0];
        v5 = index[2];
        v6 = vdupq_n_s16(a2);
        v7 = __clz(__rbit64(*&vshrn_n_s16(vuzp1q_s8(vcgtq_u16(index[1], v6), vcgtq_u16(v5, v6)), 4uLL)));
        v8 = v7 >> 2;
        if (v7 >> 2 >= v4)
        {
          v9 = index[3].u64[0];
        }

        else
        {
          v9 = v7 >> 2;
        }

        if ((v9 & 1) == 0)
        {
          if (v4 > v8)
          {
            v22[0] = index[1];
            v22[1] = v5;
            return *(v22 + (v9 & 0xF));
          }

          return 0x7FFFFFFFFFFFFFFFLL;
        }

        return a2;
      }

      return 0;
    }

    v15 = index[1].i64[0];
    v14 = index[1].i64[1];
    v16 = (v14 - v15) >> 3;
    if (v16 < 2)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        if (*(v15 + 8 * (v17 + (v16 >> 1))) <= a2)
        {
          v17 += v16 >> 1;
        }

        v16 -= v16 >> 1;
      }

      while (v16 > 1);
      v18 = 8 * v17;
    }

    v19 = (v18 + v15);
    v20 = v14 != v15 && *v19 <= a2;
    v21 = &v19[v20];
    if (((v21 - v15) & 8) == 0)
    {
      if (v14 != v21)
      {
        return *v21;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (a2 > 0xFF)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = a2 & 0x3F;
    v11 = -64 * (a2 >> 6);
    v12 = a2 >> 6;
    while (1)
    {
      v13 = __clz(__rbit64(index[1].i64[v12] & (-1 << v10)));
      if (v13 < 0x40)
      {
        break;
      }

      v10 = 0;
      v11 -= 64;
      if (++v12 == 4)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    return v13 - v11;
  }

  return a2;
}

@end