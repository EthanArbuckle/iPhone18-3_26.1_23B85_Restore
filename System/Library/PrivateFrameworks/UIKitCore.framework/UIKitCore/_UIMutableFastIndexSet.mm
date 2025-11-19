@interface _UIMutableFastIndexSet
+ (id)indexSet;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addIndex:(int8x16_t)a3;
- (void)addIndexesInRange:(uint64_t)a3;
- (void)removeIndex:(__n128)a3;
@end

@implementation _UIMutableFastIndexSet

+ (id)indexSet
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIMutableFastIndexSet alloc];

  return [(_UIFastIndexSet *)v4 initWithIndexSet:?];
}

- (void)addIndex:(int8x16_t)a3
{
  v142 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v3 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v5 = &a1[1];
  v6 = a2 + 1;
  v7 = a1[4].n128_u32[0];
  if (v7)
  {
    n128_u64 = 0;
  }

  else
  {
    n128_u64 = a1[1].n128_u64;
  }

  if (!v7)
  {
    if ((v6 | a2) < 0x100)
    {
      v9 = a2 >> 6;
      if (a2 >> 6 <= v6 >> 6)
      {
        v10 = (v6 >> 6) - v9 + 1;
        v11 = &n128_u64[v9];
        v12 = v9 << 6;
        v13 = (v9 << 6) + 64;
        v14 = v13 + a2;
        v15 = -64 * v9;
        do
        {
          v16 = a2 - v12;
          if (a2 >= v12)
          {
            v17 = v12;
          }

          else
          {
            v17 = a2;
          }

          if (a2 < v12)
          {
            v16 = 0;
          }

          v18 = v14 - v17;
          if (v13 >= v6)
          {
            v19 = a2 + 1;
          }

          else
          {
            v19 = v13;
          }

          v20 = 0xFFFFFFFFFFFFFFFFLL >> (v18 - v19) << v16;
          if (v16 >= v19 + v15)
          {
            v21 = 0;
          }

          else
          {
            v21 = v20;
          }

          *v11++ |= v21;
          v14 += 64;
          v12 += 64;
          v13 += 64;
          v15 -= 64;
          --v10;
        }

        while (v10);
      }

      return;
    }

    v22 = 0;
    v23 = 256;
    v24 = n128_u64;
    while (1)
    {
      v25 = *v24++;
      v26 = __clz(__rbit64(v25));
      if (v26 < 0x40)
      {
        break;
      }

      v22 -= 64;
      if (v22 == -256)
      {
        goto LABEL_28;
      }
    }

    v23 = v26 - v22;
LABEL_28:
    if ((v6 | a2) >> 16)
    {
      __p.n128_u64[0] = n128_u64;
      __p.n128_u64[1] = v23;
      v131 = 0;
      v135 = n128_u64;
      v136 = xmmword_18A679F50;
      std::vector<unsigned long>::vector[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,0>(&__src, &__p, &v135);
      a3 = std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v5, v5, &__src);
      v32 = __src.n128_u64[0];
      if (!__src.n128_u64[0])
      {
LABEL_47:
        v7 = a1[4].n128_u32[0];
        goto LABEL_48;
      }

      __src.n128_u64[1] = __src.n128_u64[0];
    }

    else
    {
      __p.n128_u64[0] = n128_u64;
      __p.n128_u64[1] = v23;
      v131 = 0;
      v27 = std::uninitialized_copy[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,unsigned long *>(&__p, 256, __src.n128_u64);
      if ((v27 - &__src) <= 0x80)
      {
        if (&__src == v27)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0;
          p_src = &__src;
          do
          {
            v31 = p_src->n128_u16[0];
            p_src = (p_src + 8);
            v128 = v28;
            v129 = a3;
            v128.n128_u16[v29 & 0xF] = v31;
            v28 = v128;
            a3 = v129;
            ++v29;
          }

          while (p_src != v27);
        }

        v33 = a1[4].n128_u32[0];
        if (v33 != -1)
        {
          if (v33 == 1)
          {
            a1[1] = v28;
            a1[2] = a3;
            a1[3].n128_u64[0] = v29;
            goto LABEL_47;
          }

          v106 = v28;
          v107 = a3;
          (off_1EFB00DA8[v33])(&__p, v5);
          v28 = v106;
          a3 = v107;
        }

        a1[1] = v28;
        a1[2] = a3;
        a1[3].n128_u64[0] = v29;
        a1[4].n128_u32[0] = 1;
        goto LABEL_47;
      }

      __p = 0uLL;
      v131 = 0;
      if (v27 != &__src)
      {
        std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v27 - &__src) >> 3);
      }

      a3 = std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v5, v5, &__p);
      v32 = __p.n128_u64[0];
      if (!__p.n128_u64[0])
      {
        goto LABEL_47;
      }

      __p.n128_u64[1] = __p.n128_u64[0];
    }

    operator delete(v32);
    goto LABEL_47;
  }

LABEL_48:
  if (v7 == 1)
  {
    v34 = v5;
  }

  else
  {
    v34 = 0;
  }

  if (v7 != 1)
  {
    goto LABEL_56;
  }

  v35 = a1[3].n128_u64[0];
  if (!((v6 | v3) >> 16))
  {
    if (!v35)
    {
      v44 = 0;
      v49 = 0;
      __src.n128_u64[0] = v5;
      __src.n128_u64[1] = v5;
      v138 = 0;
      v139 = v5;
      *&v140 = 0;
      WORD4(v140) = v3;
      v47 = 2;
      v48 = v3 + 1;
      goto LABEL_74;
    }

    v44 = v35 - 1;
    a3 = *v5;
    v45 = *(v5 + 16);
    v127[0] = *v5;
    v127[1] = v45;
    v46 = *(v127 + ((v35 - 1) & 0xF));
    if (v46 < v3)
    {
      __src.n128_u64[0] = v5;
      __src.n128_u64[1] = v5;
      v138 = v35;
      v139 = v5;
      *&v140 = v35;
      v47 = 2;
      WORD4(v140) = v3;
      v48 = v3 + 1;
      v44 = v35;
      v49 = v35;
LABEL_74:
      WORD5(v140) = v6;
      goto LABEL_126;
    }

    if (v46 == v3)
    {
      v48 = 0;
      __src.n128_u64[0] = v5;
      __src.n128_u64[1] = v5;
      v138 = v35 - 1;
      v139 = v5;
      *&v140 = v35;
      WORD4(v140) = v3 + 1;
      v47 = 1;
      LOWORD(v3) = v3 + 1;
      v49 = v35;
    }

    else
    {
      v54 = vdupq_n_s16(v3);
      v55 = __clz(__rbit64(*&vshrn_n_s16(vuzp1q_s8(vcgeq_u16(a3, v54), vcgeq_u16(v45, v54)), 4uLL))) >> 2;
      if (v55 >= v35)
      {
        v44 = v35;
      }

      else
      {
        v44 = v55;
      }

      v49 = v44 + 2;
      if (v35 < v44 + 2)
      {
        v49 = v35;
      }

      v56 = vdupq_n_s16(v6);
      a3 = vuzp1q_s8(vcgtq_u16(a3, v56), vcgtq_u16(v45, v56));
      *a3.i8 = vshrn_n_s16(a3, 4uLL);
      v57 = __clz(__rbit64((-1 << (4 * v44)) & a3.i64[0])) >> 2;
      if (v57 < v49)
      {
        v49 = v57;
      }

      if (((v49 - v44) & 1) == 0)
      {
        __src.n128_u64[0] = v5;
        __src.n128_u64[1] = v5;
        v138 = v44;
        v139 = v5;
        *&v140 = v49;
        if (v44)
        {
          v48 = 0;
          v47 = 0;
          LOWORD(v3) = 0;
          DWORD2(v140) = 0;
        }

        else
        {
          WORD4(v140) = v3;
          WORD5(v140) = v3 + 1;
          v47 = 2;
          v48 = v3 + 1;
        }

LABEL_126:
        v141 = v47;
        if (v47 + v44 + v35 - v49 <= 0x10)
        {
          v67 = v49 - v44;
          if (v47 != 2)
          {
            if (v47 == 1)
            {
              if (v67 == 1)
              {
                *(v5 + 2 * (v44 & 0xF)) = v3;
                return;
              }

              if (!v67)
              {
                v68 = &v140 + 4;
                goto LABEL_166;
              }

              v85 = *(v5 + 16);
              v114 = *v5;
              v115 = v85;
              v114.n128_u16[v44 & 0xF] = v3;
              v87 = v114;
              v86 = v115;
              *v5 = v114;
              *(v5 + 16) = v86;
              if (v49 < v35)
              {
                v88 = v49;
                v89 = v44 + 1;
                do
                {
                  v113[0] = v87;
                  v113[1] = v86;
                  v90 = *(v113 + (v88 & 0xF));
                  v111 = v87;
                  v112 = v86;
                  v111.n128_u16[v89 & 0xF] = v90;
                  v87 = v111;
                  v86 = v112;
                  ++v88;
                  ++v89;
                }

                while (v35 != v88);
                *v5 = v111;
                *(v5 + 16) = v86;
              }

              v82 = v44 + 1 - v49 + v35;
            }

            else
            {
              if (v49 == v44)
              {
                return;
              }

              if (v49 < v35)
              {
                v78 = *v5;
                v77 = *(v5 + 16);
                v79 = v49;
                v80 = v44;
                do
                {
                  v110[0] = v78;
                  v110[1] = v77;
                  v81 = *(v110 + (v79 & 0xF));
                  v108 = v78;
                  v109 = v77;
                  v108.n128_u16[v80 & 0xF] = v81;
                  v78 = v108;
                  v77 = v109;
                  ++v79;
                  ++v80;
                }

                while (v35 != v79);
                *v34 = v108;
                v34[1] = v77;
              }

              v82 = v44 + v35 - v49;
            }

            a1[3].n128_u64[0] = v82;
            return;
          }

          if (v67 == 2)
          {
            v91 = *(v5 + 16);
            v125 = *v5;
            v126 = v91;
            v125.n128_u16[v44 & 0xF] = v3;
            v123 = v125;
            v124 = v126;
            v123.n128_u16[(v44 + 1) & 0xF] = v48;
            v92 = v124;
            *v5 = v123;
            *(v5 + 16) = v92;
            return;
          }

          if (v67 != 1)
          {
            if (v67)
            {
              v93 = *(v5 + 16);
              v121 = *v5;
              v122 = v93;
              v121.n128_u16[v44 & 0xF] = v3;
              v119 = v121;
              v120 = v122;
              v119.n128_u16[(v44 + 1) & 0xF] = v48;
              v94 = v120;
              *v5 = v119;
              *(v5 + 16) = v94;
              v95 = __src.n128_u64[0];
              v96 = v138 + 2;
              v97 = v140;
              v98 = *(__src.n128_u64[0] + 32);
              if (v140 < v98)
              {
                v100 = *__src.n128_u64[0];
                v99 = *(__src.n128_u64[0] + 16);
                v101 = v140;
                v102 = v138 + 2;
                do
                {
                  v118[0] = v100;
                  v118[1] = v99;
                  v103 = *(v118 + (v101 & 0xF));
                  v116 = v100;
                  v117 = v99;
                  *(&v116 + (v102 & 0xF)) = v103;
                  v100 = v116;
                  v99 = v117;
                  ++v101;
                  ++v102;
                }

                while (v98 != v101);
                *v95 = v116;
                *(v95 + 16) = v99;
              }

              *(v95 + 32) = v96 - v97 + v98;
            }

            else
            {
              _UISmallVector<unsigned short,16ul>::insert<unsigned short *>(v5, a3, v5, v44, &v140 + 4, &v140 + 6);
            }

            return;
          }

          *(v5 + 2 * (v44++ & 0xF)) = v3;
          v68 = &v140 + 5;
LABEL_166:
          _UISmallVector<unsigned short,16ul>::insert(v5, v5, v44, v68);
          return;
        }

        v135 = 0;
        v136 = 0uLL;
        _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&v135, v5, 0, v5, v35, v35);
        v69 = v135 + 8 * v138;
        __p.n128_u64[0] = &v135;
        __p.n128_u64[1] = v69;
        v70 = 8 * v140;
        v71 = v135 + 8 * v140;
        v72 = &v132;
        v131 = v71;
        v132 = WORD4(v140);
        v73 = WORD5(v140);
        v133 = WORD5(v140);
        v134 = v141;
        v74 = (8 * v140 - 8 * v138) >> 3;
        if (v141 == 2)
        {
          if (v74 == 2)
          {
            *v69 = WORD4(v140);
            *(v69 + 1) = v73;
            goto LABEL_184;
          }

          if (v74 != 1)
          {
            if (!v74)
            {
              std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(&v135, v135 + 8 * v138, &v132, &v134);
              goto LABEL_184;
            }

            *v69 = WORD4(v140);
            *(v69 + 1) = v73;
            v75 = v69 + 16;
            goto LABEL_179;
          }

          v72 = &v133;
          *v69 = WORD4(v140);
          v69 += 8;
        }

        else
        {
          if (v141 != 1)
          {
            if (!v141 && v70 != 8 * v138)
            {
              v75 = v135 + 8 * v138;
              v76 = v135 + v70;
LABEL_181:
              v105 = v136 - v76;
              if (v136 != v76)
              {
                memmove(v75, v76, v136 - v76);
              }

              *&v136 = &v75[v105];
              goto LABEL_184;
            }

            goto LABEL_184;
          }

          if (v74)
          {
            if (v74 == 1)
            {
              *v69 = WORD4(v140);
              goto LABEL_184;
            }

            *v69 = WORD4(v140);
            v75 = v69 + 8;
LABEL_179:
            v104 = v71 - v75;
            if (v104)
            {
              v76 = &v75[v104];
              goto LABEL_181;
            }

LABEL_184:
            std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v5, v5, &v135);
            if (v135)
            {
              *&v136 = v135;
              operator delete(v135);
            }

            return;
          }
        }

        std::vector<unsigned long>::insert(&v135, v69, v72);
        goto LABEL_184;
      }

      v48 = 0;
      if (v44)
      {
        LOWORD(v3) = v6;
      }

      __src.n128_u64[0] = v5;
      __src.n128_u64[1] = v5;
      v138 = v44;
      v139 = v5;
      *&v140 = v49;
      WORD4(v140) = v3;
      v47 = 1;
    }

    WORD5(v140) = 0;
    goto LABEL_126;
  }

  __src = 0uLL;
  v138 = 0;
  _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&__src, v5, 0, v5, v35, v35);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v5, v5, &__src);
  if (__src.n128_u64[0])
  {
    __src.n128_u64[1] = __src.n128_u64[0];
    operator delete(__src.n128_u64[0]);
  }

  v7 = a1[4].n128_u32[0];
LABEL_56:
  if (v7 == 2)
  {
    v36 = v5;
  }

  else
  {
    v36 = 0;
  }

  if (v7 != 2)
  {
    return;
  }

  v38 = a1[1].n128_u64[0];
  v37 = a1[1].n128_u64[1];
  if (v38 == v37)
  {
    v41 = a1[1].n128_u64[0];
    goto LABEL_68;
  }

  v40 = v37 - 8;
  v39 = *(v37 - 1);
  v41 = v37;
  if (v39 < v3)
  {
LABEL_68:
    __src.n128_u64[0] = v5;
    __src.n128_u64[1] = v37;
    v40 = v37;
    v42 = v41;
    v138 = v37;
LABEL_69:
    v139 = v3;
    *&v140 = v3 + 1;
    *(&v140 + 1) = 2;
    v50 = (v42 - v40) >> 3;
    switch(v50)
    {
      case 2:
        *v37 = v3;
        *(v37 + 1) = v140;
        return;
      case 1:
        *v37 = v3;
        std::vector<unsigned long>::insert(v5, v41 + 8, &v140);
        return;
      case 0:
        std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(v5, v40, &v139, &v140 + 8);
        return;
    }

    *v37 = v3;
    *(v37 + 1) = v140;
    v43 = v41 + 16;
LABEL_118:
    if (v42 != v43)
    {
      v65 = *(v5 + 8);
      v66 = v65 - v42;
      if (v65 != v42)
      {
        memmove(v43, v42, v65 - v42);
      }

      *(v5 + 8) = &v43[v66];
    }

    return;
  }

  if (v39 == v3)
  {
    __src.n128_u64[0] = v5;
    v42 = v37;
    v43 = v37;
LABEL_113:
    __src.n128_u64[1] = v40;
    v138 = v37;
    v139 = v6;
    v140 = xmmword_18A64C520;
    v64 = (v42 - v40) >> 3;
    if (v64 == 1)
    {
      *v40 = v6;
      return;
    }

    if (!v64)
    {
      std::vector<unsigned long>::insert(v5, v40, &v139);
      return;
    }

    *v40 = v6;
    goto LABEL_118;
  }

  v51 = (v37 - v38) >> 3;
  if (v51 < 2)
  {
    v53 = 0;
  }

  else
  {
    v52 = 0;
    do
    {
      if (*&v38[8 * v52 + 8 * (v51 >> 1)] < v3)
      {
        v52 += v51 >> 1;
      }

      v51 -= v51 >> 1;
    }

    while (v51 > 1);
    v53 = 8 * v52;
  }

  v40 = &v38[8 * (*&v38[v53] < v3) + v53];
  if (v37 >= v40 + 16)
  {
    v37 = v40 + 16;
  }

  v58 = (v37 - v40) >> 3;
  if (v58 < 2)
  {
    v60 = 0;
  }

  else
  {
    v59 = 0;
    do
    {
      if (*&v40[8 * v59 + 8 * (v58 >> 1)] <= v6)
      {
        v59 += v58 >> 1;
      }

      v58 -= v58 >> 1;
    }

    while (v58 > 1);
    v60 = 8 * v59;
  }

  v61 = &v40[v60];
  if (v40 == v37)
  {
    v62 = 0;
  }

  else
  {
    v62 = 8 * (*v61 <= v6);
  }

  v42 = &v61[v62];
  v63 = ((v40 - v38) >> 3) & 1;
  __src.n128_u64[0] = v36;
  if (((v42 - v40) & 8) != 0)
  {
    v6 = v63 + v3;
    v43 = v40 + 8;
    v37 = v42;
    v5 = v36;
    goto LABEL_113;
  }

  __src.n128_u64[1] = v40;
  v138 = v42;
  if (!v63)
  {
    v41 = v40;
    v5 = v36;
    v37 = v40;
    goto LABEL_69;
  }

  v139 = 0;
  v140 = 0uLL;
  if (v42 != v40)
  {
    v83 = *(v36 + 8);
    v84 = v83 - v42;
    if (v83 != v42)
    {
      memmove(v40, v42, v83 - v42);
    }

    *(v36 + 8) = &v40[v84];
  }
}

- (void)addIndexesInRange:(uint64_t)a3
{
  v148 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v4 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL || !a3)
  {
    return;
  }

  v7 = &a1[1];
  v8 = a2 + a3;
  v9 = a1[4].n128_u32[0];
  if (v9)
  {
    n128_u64 = 0;
  }

  else
  {
    n128_u64 = a1[1].n128_u64;
  }

  if (!v9)
  {
    if ((v8 | a2) < 0x100)
    {
      if (a2 < v8)
      {
        v11 = a2 >> 6;
        if (a2 >> 6 <= v8 >> 6)
        {
          v12 = (v8 >> 6) - v11 + 1;
          v13 = &n128_u64[v11];
          v14 = v11 << 6;
          v15 = (v11 << 6) + 64;
          v16 = v15 + a2;
          v17 = -64 * v11;
          do
          {
            v18 = a2 - v14;
            if (a2 >= v14)
            {
              v19 = v14;
            }

            else
            {
              v19 = a2;
            }

            if (a2 < v14)
            {
              v18 = 0;
            }

            v20 = v16 - v19;
            if (v15 >= v8)
            {
              v21 = a2 + a3;
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
      }

      return;
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
    if ((v8 | a2) >> 16)
    {
      __p.n128_u64[0] = n128_u64;
      __p.n128_u64[1] = v25;
      v137 = 0;
      v141 = n128_u64;
      v142 = xmmword_18A679F50;
      std::vector<unsigned long>::vector[abi:nn200100]<_UIBitSetIterator<unsigned long,256ul>,0>(&__src, &__p, &v141);
      a4 = std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &__src);
      v34 = __src.n128_u64[0];
      if (!__src.n128_u64[0])
      {
LABEL_49:
        v9 = a1[4].n128_u32[0];
        goto LABEL_50;
      }

      __src.n128_u64[1] = __src.n128_u64[0];
    }

    else
    {
      __p.n128_u64[0] = n128_u64;
      __p.n128_u64[1] = v25;
      v137 = 0;
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
            v134 = v30;
            v135 = a4;
            v134.n128_u16[v31 & 0xF] = v33;
            v30 = v134;
            a4 = v135;
            ++v31;
          }

          while (p_src != v29);
        }

        v35 = a1[4].n128_u32[0];
        if (v35 != -1)
        {
          if (v35 == 1)
          {
            a1[1] = v30;
            a1[2] = a4;
            a1[3].n128_u64[0] = v31;
            goto LABEL_49;
          }

          v112 = v30;
          v113 = a4;
          (off_1EFB00DA8[v35])(&__p, v7);
          v30 = v112;
          a4 = v113;
        }

        a1[1] = v30;
        a1[2] = a4;
        a1[3].n128_u64[0] = v31;
        a1[4].n128_u32[0] = 1;
        goto LABEL_49;
      }

      __p = 0uLL;
      v137 = 0;
      if (v29 != &__src)
      {
        std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v29 - &__src) >> 3);
      }

      a4 = std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &__p);
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

  v37 = a1[3].n128_u64[0];
  if (!((v8 | v4) >> 16))
  {
    if (!v37)
    {
      v46 = 0;
      v51 = 0;
      __src.n128_u64[0] = v7;
      __src.n128_u64[1] = v7;
      v144 = 0;
      v145 = v7;
      *&v146 = 0;
      WORD4(v146) = v4;
      v49 = 2;
      v50 = v4 + a3;
      goto LABEL_76;
    }

    v46 = v37 - 1;
    a4 = *v7;
    v47 = *(v7 + 16);
    v133[0] = *v7;
    v133[1] = v47;
    v48 = *(v133 + ((v37 - 1) & 0xF));
    if (v48 < v4)
    {
      __src.n128_u64[0] = v7;
      __src.n128_u64[1] = v7;
      v144 = v37;
      v145 = v7;
      *&v146 = v37;
      v49 = 2;
      WORD4(v146) = v4;
      v50 = v4 + a3;
      v46 = v37;
      v51 = v37;
LABEL_76:
      WORD5(v146) = v8;
      goto LABEL_134;
    }

    if (v48 == v4)
    {
      v50 = 0;
      __src.n128_u64[0] = v7;
      __src.n128_u64[1] = v7;
      v144 = v37 - 1;
      v145 = v7;
      *&v146 = v37;
      WORD4(v146) = v4 + a3;
      v49 = 1;
      LOWORD(v4) = v4 + a3;
      v51 = v37;
    }

    else
    {
      v60 = vdupq_n_s16(v4);
      v61 = __clz(__rbit64(*&vshrn_n_s16(vuzp1q_s8(vcgeq_u16(a4, v60), vcgeq_u16(v47, v60)), 4uLL))) >> 2;
      if (v61 >= v37)
      {
        v46 = v37;
      }

      else
      {
        v46 = v61;
      }

      if (v37 >= a3 + v46 + 1)
      {
        v51 = a3 + v46 + 1;
      }

      else
      {
        v51 = v37;
      }

      v62 = vdupq_n_s16(v8);
      a4 = vuzp1q_s8(vcgtq_u16(a4, v62), vcgtq_u16(v47, v62));
      *a4.i8 = vshrn_n_s16(a4, 4uLL);
      v63 = __clz(__rbit64((-1 << (4 * v46)) & a4.i64[0])) >> 2;
      if (v63 < v51)
      {
        v51 = v63;
      }

      if (((v51 - v46) & 1) == 0)
      {
        __src.n128_u64[0] = v7;
        __src.n128_u64[1] = v7;
        v144 = v46;
        v145 = v7;
        *&v146 = v51;
        if (v46)
        {
          v50 = 0;
          v49 = 0;
          LOWORD(v4) = 0;
          DWORD2(v146) = 0;
        }

        else
        {
          WORD4(v146) = v4;
          WORD5(v146) = v4 + a3;
          v49 = 2;
          v50 = v4 + a3;
        }

LABEL_134:
        v147 = v49;
        if (v49 + v46 + v37 - v51 <= 0x10)
        {
          v73 = v51 - v46;
          if (v49 != 2)
          {
            if (v49 == 1)
            {
              if (v73 == 1)
              {
                *(v7 + 2 * (v46 & 0xF)) = v4;
                return;
              }

              if (!v73)
              {
                v74 = &v146 + 4;
                goto LABEL_174;
              }

              v91 = *(v7 + 16);
              v120 = *v7;
              v121 = v91;
              v120.n128_u16[v46 & 0xF] = v4;
              v93 = v120;
              v92 = v121;
              *v7 = v120;
              *(v7 + 16) = v92;
              if (v51 < v37)
              {
                v94 = v51;
                v95 = v46 + 1;
                do
                {
                  v119[0] = v93;
                  v119[1] = v92;
                  v96 = *(v119 + (v94 & 0xF));
                  v117 = v93;
                  v118 = v92;
                  v117.n128_u16[v95 & 0xF] = v96;
                  v93 = v117;
                  v92 = v118;
                  ++v94;
                  ++v95;
                }

                while (v37 != v94);
                *v7 = v117;
                *(v7 + 16) = v92;
              }

              v88 = v46 + 1 - v51 + v37;
            }

            else
            {
              if (v51 == v46)
              {
                return;
              }

              if (v51 < v37)
              {
                v84 = *v7;
                v83 = *(v7 + 16);
                v85 = v51;
                v86 = v46;
                do
                {
                  v116[0] = v84;
                  v116[1] = v83;
                  v87 = *(v116 + (v85 & 0xF));
                  v114 = v84;
                  v115 = v83;
                  v114.n128_u16[v86 & 0xF] = v87;
                  v84 = v114;
                  v83 = v115;
                  ++v85;
                  ++v86;
                }

                while (v37 != v85);
                *v36 = v114;
                v36[1] = v83;
              }

              v88 = v46 + v37 - v51;
            }

            a1[3].n128_u64[0] = v88;
            return;
          }

          if (v73 == 2)
          {
            v97 = *(v7 + 16);
            v131 = *v7;
            v132 = v97;
            v131.n128_u16[v46 & 0xF] = v4;
            v129 = v131;
            v130 = v132;
            v129.n128_u16[(v46 + 1) & 0xF] = v50;
            v98 = v130;
            *v7 = v129;
            *(v7 + 16) = v98;
            return;
          }

          if (v73 != 1)
          {
            if (v73)
            {
              v99 = *(v7 + 16);
              v127 = *v7;
              v128 = v99;
              v127.n128_u16[v46 & 0xF] = v4;
              v125 = v127;
              v126 = v128;
              v125.n128_u16[(v46 + 1) & 0xF] = v50;
              v100 = v126;
              *v7 = v125;
              *(v7 + 16) = v100;
              v101 = __src.n128_u64[0];
              v102 = v144 + 2;
              v103 = v146;
              v104 = *(__src.n128_u64[0] + 32);
              if (v146 < v104)
              {
                v106 = *__src.n128_u64[0];
                v105 = *(__src.n128_u64[0] + 16);
                v107 = v146;
                v108 = v144 + 2;
                do
                {
                  v124[0] = v106;
                  v124[1] = v105;
                  v109 = *(v124 + (v107 & 0xF));
                  v122 = v106;
                  v123 = v105;
                  *(&v122 + (v108 & 0xF)) = v109;
                  v106 = v122;
                  v105 = v123;
                  ++v107;
                  ++v108;
                }

                while (v104 != v107);
                *v101 = v122;
                *(v101 + 16) = v105;
              }

              *(v101 + 32) = v102 - v103 + v104;
            }

            else
            {
              _UISmallVector<unsigned short,16ul>::insert<unsigned short *>(v7, a4, v7, v46, &v146 + 4, &v146 + 6);
            }

            return;
          }

          *(v7 + 2 * (v46++ & 0xF)) = v4;
          v74 = &v146 + 5;
LABEL_174:
          _UISmallVector<unsigned short,16ul>::insert(v7, v7, v46, v74);
          return;
        }

        v141 = 0;
        v142 = 0uLL;
        _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&v141, v7, 0, v7, v37, v37);
        v75 = v141 + 8 * v144;
        __p.n128_u64[0] = &v141;
        __p.n128_u64[1] = v75;
        v76 = 8 * v146;
        v77 = v141 + 8 * v146;
        v78 = &v138;
        v137 = v77;
        v138 = WORD4(v146);
        v79 = WORD5(v146);
        v139 = WORD5(v146);
        v140 = v147;
        v80 = (8 * v146 - 8 * v144) >> 3;
        if (v147 == 2)
        {
          if (v80 == 2)
          {
            *v75 = WORD4(v146);
            *(v75 + 1) = v79;
            goto LABEL_192;
          }

          if (v80 != 1)
          {
            if (!v80)
            {
              std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(&v141, v141 + 8 * v144, &v138, &v140);
              goto LABEL_192;
            }

            *v75 = WORD4(v146);
            *(v75 + 1) = v79;
            v81 = v75 + 16;
            goto LABEL_187;
          }

          v78 = &v139;
          *v75 = WORD4(v146);
          v75 += 8;
        }

        else
        {
          if (v147 != 1)
          {
            if (!v147 && v76 != 8 * v144)
            {
              v81 = v141 + 8 * v144;
              v82 = v141 + v76;
LABEL_189:
              v111 = v142 - v82;
              if (v142 != v82)
              {
                memmove(v81, v82, v142 - v82);
              }

              *&v142 = &v81[v111];
              goto LABEL_192;
            }

            goto LABEL_192;
          }

          if (v80)
          {
            if (v80 == 1)
            {
              *v75 = WORD4(v146);
              goto LABEL_192;
            }

            *v75 = WORD4(v146);
            v81 = v75 + 8;
LABEL_187:
            v110 = v77 - v81;
            if (v110)
            {
              v82 = &v81[v110];
              goto LABEL_189;
            }

LABEL_192:
            std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &v141);
            if (v141)
            {
              *&v142 = v141;
              operator delete(v141);
            }

            return;
          }
        }

        std::vector<unsigned long>::insert(&v141, v75, v78);
        goto LABEL_192;
      }

      v50 = 0;
      if (v46)
      {
        LOWORD(v4) = v8;
      }

      __src.n128_u64[0] = v7;
      __src.n128_u64[1] = v7;
      v144 = v46;
      v145 = v7;
      *&v146 = v51;
      WORD4(v146) = v4;
      v49 = 1;
    }

    WORD5(v146) = 0;
    goto LABEL_134;
  }

  __src = 0uLL;
  v144 = 0;
  _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&__src, v7, 0, v7, v37, v37);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v7, v7, &__src);
  if (__src.n128_u64[0])
  {
    __src.n128_u64[1] = __src.n128_u64[0];
    operator delete(__src.n128_u64[0]);
  }

  v9 = a1[4].n128_u32[0];
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
    return;
  }

  v40 = a1[1].n128_u64[0];
  v39 = a1[1].n128_u64[1];
  if (v40 == v39)
  {
    v43 = a1[1].n128_u64[0];
    goto LABEL_70;
  }

  v42 = v39 - 8;
  v41 = *(v39 - 1);
  v43 = v39;
  if (v4 > v41)
  {
LABEL_70:
    __src.n128_u64[0] = v7;
    __src.n128_u64[1] = v39;
    v42 = v39;
    v44 = v43;
    v144 = v39;
    goto LABEL_71;
  }

  if (v4 == v41)
  {
    v44 = v39;
    v45 = v39;
    goto LABEL_121;
  }

  v57 = (v39 - v40) >> 3;
  if (v57 < 2)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    do
    {
      if (*&v40[8 * v58 + 8 * (v57 >> 1)] < v4)
      {
        v58 += v57 >> 1;
      }

      v57 -= v57 >> 1;
    }

    while (v57 > 1);
    v59 = 8 * v58;
  }

  v42 = &v40[8 * (*&v40[v59] < v4) + v59];
  v45 = v42 + 8;
  if (v39 >= &v42[8 * a3 + 8])
  {
    v39 = &v42[8 * a3 + 8];
  }

  v64 = (v39 - v42) >> 3;
  if (v64 < 2)
  {
    v66 = 0;
  }

  else
  {
    v65 = 0;
    do
    {
      if (*&v42[8 * v65 + 8 * (v64 >> 1)] <= v8)
      {
        v65 += v64 >> 1;
      }

      v64 -= v64 >> 1;
    }

    while (v64 > 1);
    v66 = 8 * v65;
  }

  v67 = &v42[v66];
  if (v42 == v39)
  {
    v68 = 0;
  }

  else
  {
    v68 = 8 * (*v67 <= v8);
  }

  v44 = &v67[v68];
  v69 = v42 - v40;
  if (((v44 - v42) & 8) != 0)
  {
    if ((v69 & 8) == 0)
    {
      v8 = v4;
    }

    v7 = v38;
    v39 = v44;
LABEL_121:
    __src.n128_u64[0] = v7;
    __src.n128_u64[1] = v42;
    v144 = v39;
    v145 = v8;
    v146 = xmmword_18A64C520;
    v70 = (v44 - v42) >> 3;
    if (v70 == 1)
    {
      *v42 = v8;
      return;
    }

    if (!v70)
    {
      std::vector<unsigned long>::insert(v7, v42, &v145);
      return;
    }

    *v42 = v8;
    if (v44 != v45)
    {
      v71 = *(v7 + 8);
      v72 = v71 - v44;
      if (v71 != v44)
      {
        memmove(v45, v44, v71 - v44);
      }

      v56 = &v45[v72];
LABEL_129:
      *(v7 + 8) = v56;
      return;
    }

    return;
  }

  __src.n128_u64[0] = v38;
  __src.n128_u64[1] = v42;
  v144 = v44;
  if ((v69 & 8) != 0)
  {
    v145 = 0;
    v146 = 0uLL;
    if (v44 != v42)
    {
      v89 = *(v38 + 8);
      v90 = v89 - v44;
      if (v89 != v44)
      {
        memmove(v42, v44, v89 - v44);
      }

      *(v38 + 8) = &v42[v90];
    }

    return;
  }

  v43 = v42;
  v7 = v38;
  v39 = v42;
LABEL_71:
  v145 = v4;
  *&v146 = v4 + a3;
  *(&v146 + 1) = 2;
  v52 = (v44 - v42) >> 3;
  switch(v52)
  {
    case 2:
      *v39 = v4;
      *(v39 + 1) = v146;
      return;
    case 1:
      *v39 = v4;
      std::vector<unsigned long>::insert(v7, v43 + 8, &v146);
      return;
    case 0:
      std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(v7, v42, &v145, &v146 + 8);
      return;
  }

  *v39 = v4;
  *(v39 + 1) = v146;
  v53 = v43 + 16;
  if (v44 != v43 + 16)
  {
    v54 = *(v7 + 8);
    v55 = v54 - v44;
    if (v54 != v44)
    {
      memmove(v43 + 16, v44, v54 - v44);
    }

    v56 = &v53[v55];
    goto LABEL_129;
  }
}

- (void)removeIndex:(__n128)a3
{
  if (!a1)
  {
    return;
  }

  v3 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v4 = (a1 + 16);
  v5 = a2 + 1;
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 + 16;
  }

  switch(v6)
  {
    case 0:
      if (a2 <= 0xFF)
      {
        v19 = a2 >> 6;
        v20 = 255;
        if (v5 < 0xFF)
        {
          v20 = a2 + 1;
        }

        if (v19 <= v20 >> 6)
        {
          v21 = (v20 >> 6) - v19 + 1;
          v22 = (v7 + 8 * v19);
          v23 = v19 << 6;
          v24 = (v19 << 6) + 64;
          v25 = v24 + a2;
          v26 = -64 * v19;
          do
          {
            v27 = a2 - v23;
            if (a2 >= v23)
            {
              v28 = v23;
            }

            else
            {
              v28 = a2;
            }

            if (a2 < v23)
            {
              v27 = 0;
            }

            v29 = v25 - v28;
            if (v24 >= v5)
            {
              v30 = a2 + 1;
            }

            else
            {
              v30 = v24;
            }

            v31 = 0xFFFFFFFFFFFFFFFFLL >> (v29 - v30) << v27;
            if (v27 < v30 + v26)
            {
              v32 = ~v31;
            }

            else
            {
              v32 = -1;
            }

            *v22++ &= v32;
            v25 += 64;
            v23 += 64;
            v24 += 64;
            v26 -= 64;
            --v21;
          }

          while (v21);
        }
      }

      return;
    case 1:
      v8 = *(a1 + 48);
      if (v8)
      {
        a3 = *v4;
        v9 = *(a1 + 32);
        v117[0] = *v4;
        v117[1] = v9;
        if (*(v117 + ((v8 - 1) & 0xF)) <= a2)
        {
          LOWORD(v5) = 0;
          v18 = 0;
          v3 = 0;
          v126 = (a1 + 16);
          v127 = a1 + 16;
          v128 = v8;
          v129 = a1 + 16;
          *&v130 = v8;
          v12 = v8;
          v17 = v8;
          goto LABEL_55;
        }

        v10 = vdupq_n_s16(a2);
        v11 = __clz(__rbit64(*&vshrn_n_s16(vuzp1q_s8(vcgeq_u16(a3, v10), vcgeq_u16(v9, v10)), 4uLL))) >> 2;
        if (v11 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        v13 = v12 - a2 + v5;
        if (v8 >= v13 + 1)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = v8;
        }

        v15 = vdupq_n_s16(v5);
        a3 = vuzp1q_s8(vcgtq_u16(a3, v15), vcgtq_u16(v9, v15));
        a3.n128_u64[0] = vshrn_n_s16(a3, 4uLL);
        v16 = __clz(__rbit64((-1 << (4 * v12)) & a3.n128_u64[0])) >> 2;
        if (v16 >= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v16;
        }

        if ((v17 - v12))
        {
          if (v12)
          {
            v3 = a2;
          }

          else
          {
            v3 = a2 + 1;
          }

          v126 = (a1 + 16);
          v127 = a1 + 16;
          v128 = v12;
          v129 = a1 + 16;
          *&v130 = v17;
          DWORD2(v130) = v3;
          v18 = 1;
          LOWORD(v5) = 0;
        }

        else
        {
          v126 = (a1 + 16);
          v127 = a1 + 16;
          v128 = v12;
          v129 = a1 + 16;
          *&v130 = v17;
          if ((v12 & 1) == 0)
          {
            LOWORD(v5) = 0;
            v18 = 0;
            v3 = 0;
LABEL_55:
            DWORD2(v130) = 0;
            goto LABEL_56;
          }

          WORD4(v130) = a2;
          WORD5(v130) = a2 + 1;
          v18 = 2;
        }

LABEL_56:
        v131 = v18;
        if (v18 + v12 + v8 - v17 <= 0x10)
        {
          v39 = v17 - v12;
          if (v18 == 2)
          {
            switch(v39)
            {
              case 2uLL:
                v81 = *(a1 + 32);
                v115 = *v4;
                v116 = v81;
                v115.n128_u16[v12 & 0xF] = v3;
                v113 = v115;
                v114 = v116;
                v113.n128_u16[(v12 + 1) & 0xF] = v5;
                v82 = v114;
                *v4 = v113;
                *(a1 + 32) = v82;
                return;
              case 1uLL:
                v4->n128_u16[v12 & 0xF] = v3;
                v43 = v12 + 1;
                v40 = &v130 + 5;
                v41 = (a1 + 16);
                v42 = v4;
                goto LABEL_119;
              case 0uLL:
                _UISmallVector<unsigned short,16ul>::insert<unsigned short *>((a1 + 16), a3, v4, v12, &v130 + 4, &v130 + 6);
                return;
            }

            v83 = *(a1 + 32);
            v111 = *(a1 + 16);
            v112 = v83;
            v111.n128_u16[v12 & 0xF] = v3;
            v109 = v111;
            v110 = v112;
            v109.n128_u16[(v12 + 1) & 0xF] = v5;
            v85 = v109;
            v84 = v110;
            *(a1 + 16) = v109;
            *(a1 + 32) = v84;
            v86 = *(a1 + 48);
            if (v17 < v86)
            {
              v87 = v17;
              v88 = v12 + 2;
              do
              {
                v108[0] = v85;
                v108[1] = v84;
                v89 = *(v108 + (v87 & 0xF));
                v106 = v85;
                v107 = v84;
                v106.n128_u16[v88 & 0xF] = v89;
                v85 = v106;
                v84 = v107;
                ++v87;
                ++v88;
              }

              while (v86 != v87);
              *v4 = v106;
              *(a1 + 32) = v84;
            }

            v54 = v12 + 2 - v17 + v86;
            goto LABEL_129;
          }

          if (v18 == 1)
          {
            if (v39 == 1)
            {
              v4->n128_u16[v12 & 0xF] = v3;
              return;
            }

            if (!v39)
            {
              v40 = &v130 + 4;
              v41 = (a1 + 16);
              v42 = v4;
              v43 = v12;
LABEL_119:
              _UISmallVector<unsigned short,16ul>::insert(v41, v42, v43, v40);
              return;
            }

            v71 = *(a1 + 32);
            v104 = *v4;
            v105 = v71;
            v104.n128_u16[v12 & 0xF] = v3;
            v73 = v104;
            v72 = v105;
            *v4 = v104;
            *(a1 + 32) = v72;
            if (v17 < v8)
            {
              v74 = v17;
              v75 = v12 + 1;
              do
              {
                v103[0] = v73;
                v103[1] = v72;
                v76 = *(v103 + (v74 & 0xF));
                v101 = v73;
                v102 = v72;
                v101.n128_u16[v75 & 0xF] = v76;
                v73 = v101;
                v72 = v102;
                ++v74;
                ++v75;
              }

              while (v8 != v74);
              *v4 = v101;
              *(a1 + 32) = v72;
            }

            v54 = v12 + 1 - v17 + v8;
            goto LABEL_129;
          }

          if (v17 != v12)
          {
            if (v17 < v8)
            {
              v50 = *v4;
              v49 = *(a1 + 32);
              v51 = v17;
              v52 = v12;
              do
              {
                v100[0] = v50;
                v100[1] = v49;
                v53 = *(v100 + (v51 & 0xF));
                v98 = v50;
                v99 = v49;
                v98.n128_u16[v52 & 0xF] = v53;
                v50 = v98;
                v49 = v99;
                ++v51;
                ++v52;
              }

              while (v8 != v51);
              *v4 = v98;
              *(a1 + 32) = v49;
            }

            v54 = v12 + v8 - v17;
LABEL_129:
            *(a1 + 48) = v54;
            return;
          }

          return;
        }

        v124 = 0uLL;
        v125 = 0;
        _ZNSt3__16vectorImNS_9allocatorImEEE16__init_with_sizeB8nn200100I22_UISmallVectorIteratorIDv16_tES7_EEvT_T0_m(&v124, v4, 0, v4, v8, v8);
        v44 = v124.n128_u64[0] + 8 * v12;
        v45 = 8 * v17;
        v118 = &v124;
        v119 = v44;
        v46 = v124.n128_u64[0] + 8 * v17;
        v47 = &v121;
        v120 = v46;
        v121 = v3;
        v122 = v5;
        v123 = v18;
        v48 = (8 * v17 - 8 * v12) >> 3;
        if (v18 == 2)
        {
          switch(v48)
          {
            case 2:
              *v44 = v3;
              *(v44 + 8) = v5;
              goto LABEL_136;
            case 1:
              v47 = &v122;
              *v44 = v3;
              v44 += 8;
              goto LABEL_121;
            case 0:
              std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(&v124, (v124.n128_u64[0] + 8 * v12), &v121, &v123);
              goto LABEL_136;
          }

          *v44 = v3;
          *(v44 + 8) = v5;
          v55 = (v44 + 16);
          v90 = v46 - (v44 + 16);
          if (!v90)
          {
            goto LABEL_136;
          }

          v56 = &v55[v90];
        }

        else
        {
          if (v18 == 1)
          {
            if (v48)
            {
              if (v48 == 1)
              {
                *v44 = v3;
                goto LABEL_136;
              }

              *v44 = v3;
              v77 = (v44 + 8);
              v78 = v46 - v77;
              if (v78)
              {
                v79 = v124.n128_u64[1] - &v77[v78];
                if (v124.n128_u64[1] != &v77[v78])
                {
                  memmove(v77, &v77[v78], v124.n128_u64[1] - &v77[v78]);
                }

                v80 = &v77[v79];
LABEL_135:
                v124.n128_u64[1] = v80;
              }

LABEL_136:
              std::__variant_detail::__assignment<std::__variant_detail::__traits<_UIBitSet<256ul>,_UISmallVector<unsigned short,16ul>,std::vector<unsigned long>>>::__assign_alt[abi:nn200100]<2ul,std::vector<unsigned long>,std::vector<unsigned long>>(v4, v4, &v124);
              if (v124.n128_u64[0])
              {
                v124.n128_u64[1] = v124.n128_u64[0];
                operator delete(v124.n128_u64[0]);
              }

              return;
            }

LABEL_121:
            std::vector<unsigned long>::insert(&v124, v44, v47);
            goto LABEL_136;
          }

          if (v45 == 8 * v12)
          {
            goto LABEL_136;
          }

          v55 = (v124.n128_u64[0] + 8 * v12);
          v56 = (v124.n128_u64[0] + v45);
        }

        v91 = v124.n128_u64[1] - v56;
        if (v124.n128_u64[1] != v56)
        {
          memmove(v55, v56, v124.n128_u64[1] - v56);
        }

        v80 = &v55[v91];
        goto LABEL_135;
      }

      LOWORD(v5) = 0;
      v18 = 0;
      v3 = 0;
      v12 = 0;
      v17 = 0;
      v126 = (a1 + 16);
      v127 = a1 + 16;
      v128 = 0;
      v129 = a1 + 16;
      *&v130 = 0;
      goto LABEL_55;
    case 2:
      v33 = (a1 + 16);
      break;
    default:
      v33 = 0;
      break;
  }

  if (v6 != 2)
  {
    return;
  }

  v34 = *(a1 + 16);
  v35 = *(a1 + 24);
  if (v34 == v35 || *(v35 - 8) <= a2)
  {
    v126 = (a1 + 16);
    v127 = v35;
    v128 = v35;
    v129 = 0;
    v130 = 0uLL;
    return;
  }

  v36 = (v35 - v34) >> 3;
  if (v36 < 2)
  {
    v38 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      if (*(v34 + 8 * (v37 + (v36 >> 1))) < a2)
      {
        v37 += v36 >> 1;
      }

      v36 -= v36 >> 1;
    }

    while (v36 > 1);
    v38 = 8 * v37;
  }

  v57 = v38 + v34 + 8 * (*(v38 + v34) < a2);
  v58 = (v57 + 16);
  if (v35 >= v57 + 16)
  {
    v35 = v57 + 16;
  }

  v59 = (v35 - v57) >> 3;
  if (v59 < 2)
  {
    v61 = 0;
  }

  else
  {
    v60 = 0;
    do
    {
      if (*(v57 + 8 * (v60 + (v59 >> 1))) <= v5)
      {
        v60 += v59 >> 1;
      }

      v59 -= v59 >> 1;
    }

    while (v59 > 1);
    v61 = 8 * v60;
  }

  v62 = (v61 + v57);
  v63 = v57 != v35 && *v62 <= v5;
  v64 = &v62[v63];
  v65 = v64 - v57;
  v66 = (v57 - v34);
  if (((v64 - v57) & 8) != 0)
  {
    v68 = ((v66 & 8) == 0) + a2;
    v126 = v33;
    v127 = v57;
    v128 = v64;
    v129 = v68;
    v130 = xmmword_18A64C520;
    v69 = v65 >> 3;
    if (v69 == 1)
    {
      *v57 = v68;
      return;
    }

    if (v69)
    {
      *v57 = v68;
      v57 += 8;
      if (v64 == v57)
      {
        return;
      }

      v67 = v64;
      goto LABEL_146;
    }

    v70 = &v129;
LABEL_151:
    std::vector<unsigned long>::insert(v33, v57, v70);
    return;
  }

  v126 = v33;
  v127 = v57;
  v128 = v64;
  if (((v66 >> 3) & 1) == 0)
  {
    v129 = 0;
    v130 = 0uLL;
    if (v64 == v57)
    {
      return;
    }

    v67 = v64;
LABEL_146:
    v93 = v33[1];
    v94 = v93 - v67;
    if (v93 != v67)
    {
      memmove(v57, v67, v93 - v67);
    }

    v95 = (v57 + v94);
LABEL_149:
    v33[1] = v95;
    return;
  }

  v129 = a2;
  *&v130 = a2 + 1;
  *(&v130 + 1) = 2;
  v92 = v65 >> 3;
  switch(v92)
  {
    case 2:
      *v57 = a2;
      *(v57 + 8) = v5;
      return;
    case 1:
      *v57 = a2;
      v57 += 8;
      v70 = &v130;
      goto LABEL_151;
    case 0:
      std::vector<unsigned long>::__insert_with_size[abi:nn200100]<unsigned long *,unsigned long *>(v33, v57, &v129, &v130 + 8);
      return;
  }

  *v57 = a2;
  *(v57 + 8) = v5;
  if (v64 != v58)
  {
    v96 = v33[1];
    v97 = v96 - v64;
    if (v96 != v64)
    {
      memmove(v58, v64, v96 - v64);
    }

    v95 = &v58[v97];
    goto LABEL_149;
  }
}

@end