uint64_t std::vector<std::pair<unsigned int,std::string>>::emplace<unsigned int const&,std::string>(const void **a1, char *a2, int *a3, uint64_t *a4)
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v6 < v8)
  {
    if (a2 != v6)
    {
      v9 = *a3;
      v10 = *a4;
      *v36 = a4[1];
      *&v36[7] = *(a4 + 15);
      v11 = *(a4 + 23);
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      v12 = a1[1];
      v13 = v12;
      if (v12 >= 0x20)
      {
        v13 = v12 + 32;
        *v12 = *(v12 - 32);
        v14 = *(v12 - 24);
        *(v12 + 24) = *(v12 - 8);
        *(v12 + 8) = v14;
        *(v12 - 16) = 0;
        *(v12 - 8) = 0;
        *(v12 - 24) = 0;
      }

      a1[1] = v13;
      if (v12 != a2 + 32)
      {
        v15 = 0;
        v16 = &a2[-v12 + 32];
        do
        {
          v18 = v12 + v15;
          *(v12 + v15 - 32) = *(v12 + v15 - 64);
          v19 = v12 + v15 - 24;
          if (*(v12 + v15 - 1) < 0)
          {
            operator delete(*v19);
          }

          v15 -= 32;
          v17 = *(v18 - 56);
          *(v19 + 16) = *(v18 - 40);
          *v19 = v17;
          *(v18 - 33) = 0;
          *(v18 - 56) = 0;
        }

        while (v16 != v15);
      }

      *v4 = v9;
      if (v4[31] < 0)
      {
        operator delete(*(v4 + 1));
      }

      *(v4 + 1) = v10;
      *(v4 + 2) = *v36;
      *(v4 + 23) = *&v36[7];
      v4[31] = v11;
      return v4;
    }

    if (v7)
    {
      *v6 = *a3;
      v23 = *a4;
      *(v6 + 3) = a4[2];
      *(v6 + 8) = v23;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      a1[1] = v6 + 32;
      return v4;
    }

LABEL_37:
    __break(1u);
  }

  v20 = ((v6 - v7) >> 5) + 1;
  if (v20 >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v21 = v8 - v7;
  if (v21 >> 4 > v20)
  {
    v20 = v21 >> 4;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFE0)
  {
    v22 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 59))
    {
      operator new();
    }

    goto LABEL_39;
  }

  v24 = a2 - v7;
  v25 = (a2 - v7) >> 5;
  v26 = 32 * v25;
  if (!v25)
  {
    if (v24 < 1)
    {
      v34 = v24 >> 4;
      if (v7 == a2)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      if (!(v35 >> 59))
      {
        operator new();
      }

LABEL_39:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v26 -= ((v24 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0;
  }

  if (!v26)
  {
    goto LABEL_37;
  }

  *v26 = *a3;
  v27 = *a4;
  *(v26 + 24) = a4[2];
  *(v26 + 8) = v27;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  memcpy((v26 + 32), a2, a1[1] - a2);
  v28 = *a1;
  v29 = v26 + 32 + a1[1] - v4;
  a1[1] = v4;
  v30 = v4 - v28;
  v31 = (v26 - (v4 - v28));
  memcpy(v31, v28, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v29;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

uint64_t webrtc::RtpDependencyDescriptorExtension::ValueSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v11[0] = 0;
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v4 = *(a1 + 8);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (*(a3 + 88) >> 1 != v4)
  {
    goto LABEL_17;
  }

  v3 = 0;
  v5 = *(a1 + 4);
  if ((v5 & 0x80000000) != 0 || *(a3 + 16) >> 1 != v5)
  {
    goto LABEL_17;
  }

  webrtc::RtpDependencyDescriptorWriter::FindBestTemplate(v11);
  if (v11[0])
  {
    v3 = 0;
    goto LABEL_17;
  }

  v6 = v12;
  v7 = *(v12 + 136);
  if (v18 <= 0)
  {
    if (!v7)
    {
      if (*(v12 + 128) != 1)
      {
        v3 = v18 + 24;
        goto LABEL_17;
      }

      v3 = v18 + 29;
      goto LABEL_14;
    }

    v3 = v18 + 29;
    goto LABEL_12;
  }

  v3 = v18 + 29;
  if (v7)
  {
LABEL_12:
    v3 += webrtc::RtpDependencyDescriptorWriter::StructureSizeBits(v11);
  }

  if (*(v6 + 128) != 1)
  {
    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v13 + 4);
  if (!*(v6 + 136) || ((-1 << v8) ^ *(v6 + 124)) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v3 += v8;
  }

LABEL_17:
  v9 = v3 / 8;
  if (v3 >= 0 && (v3 & 0x80000007) != 0)
  {
    ++v9;
  }

  return v9;
}

uint64_t *webrtc::RtpDependencyDescriptorReader::RtpDependencyDescriptorReader(uint64_t *a1, _BYTE *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a5;
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  a1[1] = v8;
  v9 = (a1 + 1);
  if (((a3 >> 28) & 0x1FFFFFFFFLL) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v182);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = 8 * a3;
  *(a1 + 4) = 8 * a3;
  v12 = (a1 + 2);
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 20) = 0;
  if (!(8 * a3))
  {
    *(a1 + 4) = -1;
    *a5 = 0;
    *(a1 + 6) = 0;
    *(a1 + 20) = 0;
LABEL_13:
    v12->i32[0] = -1;
    *(a5 + 4) = 0;
    v17 = a5;
    if (a3 <= 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *(a1 + 4) = v11 - 1;
  *a5 = *v8 >> 7;
  *(a1 + 20) = 0;
  *(a1 + 4) = v11 - 2;
  *(a5 + 1) = (*v8 & 0x40) != 0;
  *(a1 + 20) = 0;
  *(a1 + 4) = v11 - 8;
  v13 = *v8 & 0x3F;
  a1[1] = (v8 + 1);
  *(a1 + 6) = v13;
  *(a1 + 20) = 0;
  if (v11 < 0x18)
  {
    goto LABEL_13;
  }

  v12->i32[0] = v11 - 24;
  v14 = v8[1];
  *v9 = (v8 + 2);
  v15 = v8[2] | (v14 << 8);
  v16 = (v8 + 3);
  *v9 = v16;
  *(a5 + 4) = v15;
  v17 = a5;
  if (a3 <= 3)
  {
    goto LABEL_15;
  }

  *(a1 + 20) = 0;
  if (v11 <= 24)
  {
LABEL_14:
    *(a1 + 7) = 0;
    *(a1 + 20) = 0;
    *(a1 + 4) = -1;
    v17 = a5;
    goto LABEL_15;
  }

  *(a1 + 4) = v11 - 25;
  v18 = v16->i8[0];
  *(a1 + 20) = 0;
  *(a1 + 4) = v11 - 26;
  *(a1 + 28) = (v16->i8[0] & 0x40) != 0;
  *(a1 + 20) = 0;
  if (v11 == 24)
  {
    *(a1 + 29) = 0;
    *(a1 + 4) = -1;
    *(a1 + 31) = 0;
    v17 = a5;
    if (v18 < 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    *(a1 + 4) = v11 - 27;
    *(a1 + 29) = (v16->i8[0] & 0x20) != 0;
    *(a1 + 20) = 0;
    *(a1 + 4) = v11 - 28;
    *(a1 + 30) = (v16->i8[0] & 0x10) != 0;
    *(a1 + 20) = 0;
    *(a1 + 4) = v11 - 29;
    *(a1 + 31) = (v16->i8[0] & 8) != 0;
    v17 = a5;
    if (v18 < 0)
    {
LABEL_89:
      operator new();
    }
  }

LABEL_15:
  v19 = *(a5 + 136);
  if (v19)
  {
    a1[4] = v19;
    a4 = v19;
  }

  else
  {
    a1[4] = a4;
    if (!a4)
    {
LABEL_71:
      v12->i32[0] = -1;
      return a1;
    }
  }

  if (*(a1 + 28) == 1)
  {
    v20 = *(a4 + 4);
    *(a1 + 20) = 0;
    if (v20 < 0 || (v21 = *(a1 + 4), v21 < v20))
    {
      LODWORD(v23) = 0;
      v12->i32[0] = -1;
      goto LABEL_44;
    }

    if (v21 <= 0)
    {
      v22 = -(-v21 & 7);
    }

    else
    {
      v22 = a1[2] & 7;
    }

    v12->i32[0] = v21 - v20;
    if (v22 > v20)
    {
      LODWORD(v23) = ((*v9)->u8[0] >> (v22 - v20)) & ~(-1 << v20);
LABEL_44:
      if ((*(a5 + 128) & 1) == 0)
      {
        *(a5 + 128) = 1;
      }

      *(a5 + 124) = v23;
      goto LABEL_47;
    }

    if (v22 < 1)
    {
      v23 = 0;
      v24 = v20;
      if (v20 < 8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = v20 - v22;
      v23 = ((*v9)->u8[0] & ~(-1 << v22)) << (v20 - v22);
      *v9 = (*v9 + 1);
      if (v20 - v22 < 8)
      {
        goto LABEL_42;
      }
    }

    v25 = *v9;
    v26 = v24;
    v27 = v20 + (v22 & (v22 >> 31));
    if (v24 >= 15)
    {
      v28 = 15;
    }

    else
    {
      v28 = v24;
    }

    v29 = v27 - (v22 + v28) + 7;
    if (v29 < 0x78)
    {
      goto LABEL_39;
    }

    if (v24 >= 15)
    {
      v24 = 15;
    }

    if (v9 >= (v25->i64 + ((v27 - (v22 + v24) + 7) >> 3) + 1) || v25 >= v12)
    {
      v144 = (v29 >> 3) + 1;
      v145 = vdupq_n_s64(v26);
      v146 = vaddq_s64(v145, xmmword_273B8EFC0);
      v147 = vaddq_s64(v145, xmmword_273B8EFD0);
      v148 = vaddq_s64(v145, xmmword_273B8EFE0);
      v149 = vaddq_s64(v145, xmmword_273B8EFF0);
      v150 = vaddq_s64(v145, xmmword_273B8F000);
      v151 = vaddq_s64(v145, xmmword_273B8F010);
      v152 = vaddq_s64(v145, xmmword_273B8F020);
      v153 = vaddq_s64(v145, xmmword_273B8F030);
      v154 = v23;
      v155 = 0uLL;
      v156 = vdupq_n_s64(0xFFFFFFF8uLL);
      v157.i64[0] = 0xFFFFFFFFLL;
      v157.i64[1] = 0xFFFFFFFFLL;
      v158 = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
      v24 = v26 - 8 * (v144 & 0x3FFFFFF0);
      v30 = (v25 + (v144 & 0x3FFFFFF0));
      v159 = v144 & 0x3FFFFFF0;
      v160 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v163 = 0uLL;
      v164 = 0uLL;
      v165 = 0uLL;
      do
      {
        v166 = *v25++;
        v167 = vmovl_u8(*v166.i8);
        v168 = vmovl_high_u8(v166);
        v169 = vmovl_u16(*v168.i8);
        v170 = vmovl_high_u16(v168);
        v171.i64[0] = v170.u32[2];
        v171.i64[1] = v170.u32[3];
        v172 = vshlq_u64(v171, vandq_s8(vaddq_s64(v146, v156), v157));
        v173 = vmovl_u16(*v167.i8);
        v171.i64[0] = v170.u32[0];
        v171.i64[1] = v170.u32[1];
        v174 = vshlq_u64(v171, vandq_s8(vaddq_s64(v147, v156), v157));
        v171.i64[0] = v173.u32[0];
        v171.i64[1] = v173.u32[1];
        v175 = vshlq_u64(v171, vandq_s8(vaddq_s64(v153, v156), v157));
        v171.i64[0] = v169.u32[2];
        v171.i64[1] = v169.u32[3];
        v176 = vshlq_u64(v171, vandq_s8(vaddq_s64(v148, v156), v157));
        v177 = vmovl_high_u16(v167);
        v171.i64[0] = v173.u32[2];
        v171.i64[1] = v173.u32[3];
        v178 = vshlq_u64(v171, vandq_s8(vaddq_s64(v152, v156), v157));
        v171.i64[0] = v177.u32[0];
        v171.i64[1] = v177.u32[1];
        v179 = vshlq_u64(v171, vandq_s8(vaddq_s64(v151, v156), v157));
        v171.i64[0] = v169.u32[0];
        v171.i64[1] = v169.u32[1];
        v180 = vshlq_u64(v171, vandq_s8(vaddq_s64(v149, v156), v157));
        v171.i64[0] = v177.u32[2];
        v171.i64[1] = v177.u32[3];
        v161 = vorrq_s8(vshlq_u64(v171, vandq_s8(vaddq_s64(v150, v156), v157)), v161);
        v162 = vorrq_s8(v180, v162);
        v160 = vorrq_s8(v179, v160);
        v155 = vorrq_s8(v178, v155);
        v163 = vorrq_s8(v176, v163);
        v154 = vorrq_s8(v175, v154);
        v164 = vorrq_s8(v174, v164);
        v165 = vorrq_s8(v172, v165);
        v152 = vaddq_s64(v152, v158);
        v153 = vaddq_s64(v153, v158);
        v151 = vaddq_s64(v151, v158);
        v150 = vaddq_s64(v150, v158);
        v149 = vaddq_s64(v149, v158);
        v148 = vaddq_s64(v148, v158);
        v147 = vaddq_s64(v147, v158);
        v146 = vaddq_s64(v146, v158);
        v159 -= 16;
      }

      while (v159);
      *v9 = v25;
      v181 = vorrq_s8(vorrq_s8(vorrq_s8(v154, v162), vorrq_s8(v160, v164)), vorrq_s8(vorrq_s8(v155, v163), vorrq_s8(v161, v165)));
      v23 = vorr_s8(*v181.i8, *&vextq_s8(v181, v181, 8uLL));
      if ((v144 & 0x3FFFFFF0) == v144)
      {
LABEL_42:
        if (v24 >= 1)
        {
          LODWORD(v23) = v23 | ((*v9)->u8[0] >> (8 - v24));
        }

        goto LABEL_44;
      }
    }

    else
    {
LABEL_39:
      v24 = v26;
      v30 = *v9;
    }

    v31 = v24 + 8;
    v32 = (v24 - 8);
    v33 = &v30->i8[1];
    do
    {
      v24 -= 8;
      v23 |= v33[-1].u8[15] << v32;
      *v9 = v33;
      v31 -= 8;
      v32 -= 8;
      v33 = (v33 + 1);
    }

    while (v31 > 15);
    goto LABEL_42;
  }

LABEL_47:
  v34 = *(a1 + 6) - *a4 + 64;
  v35 = v34 & 0x3F;
  v37 = -v34;
  v36 = v37 < 0;
  v38 = v37 & 0x3F;
  if (v36)
  {
    v39 = v35;
  }

  else
  {
    v39 = -v38;
  }

  v40 = *(a4 + 104);
  if (0x4EC4EC4EC4EC4EC5 * ((*(a4 + 112) - v40) >> 3) <= v39)
  {
    goto LABEL_71;
  }

  v41 = (v40 + 104 * v39);
  v17[1] = *v41;
  if (v17 + 1 != v41)
  {
    v42 = v41[1];
    if (v42)
    {
      v43 = v41[2];
    }

    else
    {
      v43 = (v41 + 2);
    }

    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v17 + 2, v43, v42 >> 1);
    v44 = v41[7];
    if (v44)
    {
      v45 = v41[8];
    }

    else
    {
      v45 = (v41 + 8);
    }

    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v17 + 8, v45, v44 >> 1);
    v48 = v41[11];
    v47 = v41 + 11;
    v46 = v48;
    v49 = *(v47 - 1);
    if (v49)
    {
      v50 = v46;
    }

    else
    {
      v50 = v47;
    }

    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v17 + 11, v50, v49 >> 1);
  }

  if (*(a1 + 29) == 1)
  {
    v51 = *(*a1 + 16);
    v52 = (*a1 + 24);
    if (v51)
    {
      v52 = *v52;
    }

    if (v51 >= 2)
    {
      v55 = v12->i32[0];
      for (i = 4 * (v51 >> 1); i; i -= 4)
      {
        *(a1 + 20) = 0;
        if (v55 <= 1)
        {
          v57 = 0;
          v55 = -1;
          v12->i32[0] = -1;
        }

        else
        {
          v58 = v55 & 7;
          v55 -= 2;
          v12->i32[0] = v55;
          v59 = *v9;
          if (v58 < 3)
          {
            if (!v58)
            {
              v57 = 0;
              v61 = 6;
              goto LABEL_82;
            }

            v60 = v59->u8[0];
            v59 = (v59 + 1);
            v57 = (v60 << (2 - v58)) & 3;
            *v9 = v59;
            if (v58 != 2)
            {
              v61 = 7;
LABEL_82:
              v57 |= v59->u8[0] >> v61;
            }
          }

          else
          {
            v57 = (v59->u8[0] >> (v58 - 2)) & 3;
          }
        }

        *v52 = v57;
        v52 = (v52 + 4);
      }
    }
  }

  if (*(a1 + 30) != 1)
  {
    goto LABEL_139;
  }

  v53 = *a1;
  if (*(*a1 + 64))
  {
    operator delete(*(v53 + 72));
  }

  *(v53 + 64) = 0;
  *(a1 + 20) = 0;
  v54 = *(a1 + 4);
  if (v54 < 2)
  {
LABEL_70:
    v12->i32[0] = -1;
    goto LABEL_139;
  }

  v62 = a1[2] & 7;
  v63 = v54 - 2;
  v12->i32[0] = v54 - 2;
  v64 = *v9;
  if (v62 >= 3)
  {
    v65 = (v64->u8[0] >> (v62 - 2)) & 3;
    goto LABEL_92;
  }

  if (v62)
  {
    v66 = v64->u8[0];
    v64 = (v64 + 1);
    v65 = (v66 & ~(-1 << v62)) << (2 - v62);
    *v9 = v64;
    if (v62 == 2)
    {
      goto LABEL_92;
    }

    v67 = 7;
  }

  else
  {
    v65 = 0;
    v67 = 6;
  }

  v65 |= v64->u8[0] >> v67;
LABEL_92:
  if (v65)
  {
    v68 = vdupq_n_s64(0xFFFFFFF8uLL);
    v69 = xmmword_273B8F030;
    v70 = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
    while (1)
    {
      v71 = 4 * v65;
      *(a1 + 20) = 0;
      v72 = v63 - v71;
      if (v63 < v71)
      {
        LODWORD(v73) = 0;
        v12->i32[0] = -1;
        goto LABEL_126;
      }

      v74 = v63 & 7;
      v12->i32[0] = v72;
      if (v74 > v71)
      {
        LODWORD(v73) = (v64->u8[0] >> (v74 - v71)) & ~(-1 << v71);
        goto LABEL_126;
      }

      if (!v74)
      {
        break;
      }

      v71 -= v74;
      v75 = v64->u8[0];
      v64 = (v64 + 1);
      v73 = (v75 & ~(-1 << v74)) << v71;
      *v9 = v64;
      if (v71 >= 8)
      {
        goto LABEL_104;
      }

LABEL_124:
      if (v71 >= 1)
      {
        LODWORD(v73) = v73 | (v64->u8[0] >> (8 - v71));
      }

LABEL_126:
      v122 = *a1;
      v123 = (*a1 + 64);
      v124 = *v123;
      v125 = (v73 + 1);
      if (*v123)
      {
        v126 = *(v122 + 72);
        v127 = *(v122 + 80);
      }

      else
      {
        v126 = v122 + 72;
        v127 = 4;
      }

      v128 = v124 >> 1;
      if (v124 >> 1 == v127)
      {
        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::EmplaceBackSlow<int>(v123);
      }

      if (!v126)
      {
        goto LABEL_164;
      }

      *(v126 + 4 * v128) = v125;
      *v123 = v124 + 2;
      *(a1 + 20) = 0;
      v129 = *(a1 + 4);
      if (v129 < 2)
      {
        goto LABEL_70;
      }

      v130 = a1[2] & 7;
      v63 = v129 - 2;
      v12->i32[0] = v129 - 2;
      v64 = *v9;
      if (v130 >= 3)
      {
        v65 = (v64->u8[0] >> (v130 - 2)) & 3;
      }

      else
      {
        if (!v130)
        {
          v65 = 0;
          v132 = 6;
          goto LABEL_137;
        }

        v131 = v64->u8[0];
        v64 = (v64 + 1);
        v65 = (v131 & ~(-1 << v130)) << (2 - v130);
        *v9 = v64;
        if (v130 != 2)
        {
          v132 = 7;
LABEL_137:
          v65 |= v64->u8[0] >> v132;
        }
      }

      if (!v65)
      {
        goto LABEL_139;
      }
    }

    v73 = 0;
    if (v71 < 8)
    {
      goto LABEL_124;
    }

LABEL_104:
    v76 = v71;
    if (v71 >= 15)
    {
      v77 = 15;
    }

    else
    {
      v77 = v71;
    }

    v78 = v71 - v77 + 7;
    if (v78 >= 0x78 && (v71 >= 15 ? (v79 = 15) : (v79 = v71), v9 < (v64->i64 + ((v71 - v79 + 7) >> 3) + 1) ? (v80 = v64 >= v12) : (v80 = 1), v80))
    {
      v81 = (v78 >> 3) + 1;
      v71 -= 8 * (v81 & 0x3FFFFFF0);
      v82 = &v64->u8[v81 & 0x3FFFFFF0];
      v83 = vdupq_n_s64(v76);
      v84 = vaddq_s64(v83, xmmword_273B8EFC0);
      v85.i64[0] = 0xFFFFFFFFLL;
      v85.i64[1] = 0xFFFFFFFFLL;
      v86 = vaddq_s64(v83, xmmword_273B8EFD0);
      v87 = vaddq_s64(v83, xmmword_273B8EFE0);
      v88 = vaddq_s64(v83, xmmword_273B8EFF0);
      v89 = vaddq_s64(v83, xmmword_273B8F000);
      v90 = vaddq_s64(v83, xmmword_273B8F010);
      v91 = vaddq_s64(v83, xmmword_273B8F020);
      v92 = v69;
      v93 = vaddq_s64(v83, v69);
      v94 = 0uLL;
      v95 = v73;
      v96 = v81 & 0x3FFFFFF0;
      v97 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      do
      {
        v103 = *v64++;
        v104 = vmovl_u8(*v103.i8);
        v105 = vmovl_high_u8(v103);
        v106 = vmovl_u16(*v105.i8);
        v107 = vmovl_high_u16(v105);
        v108.i64[0] = v107.u32[2];
        v108.i64[1] = v107.u32[3];
        v109 = vshlq_u64(v108, vandq_s8(vaddq_s64(v84, v68), v85));
        v110 = vmovl_u16(*v104.i8);
        v108.i64[0] = v107.u32[0];
        v108.i64[1] = v107.u32[1];
        v111 = vshlq_u64(v108, vandq_s8(vaddq_s64(v86, v68), v85));
        v108.i64[0] = v110.u32[0];
        v108.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v108, vandq_s8(vaddq_s64(v93, v68), v85));
        v108.i64[0] = v106.u32[2];
        v108.i64[1] = v106.u32[3];
        v113 = vshlq_u64(v108, vandq_s8(vaddq_s64(v87, v68), v85));
        v114 = vmovl_high_u16(v104);
        v108.i64[0] = v110.u32[2];
        v108.i64[1] = v110.u32[3];
        v115 = vshlq_u64(v108, vandq_s8(vaddq_s64(v91, v68), v85));
        v108.i64[0] = v114.u32[0];
        v108.i64[1] = v114.u32[1];
        v116 = vshlq_u64(v108, vandq_s8(vaddq_s64(v90, v68), v85));
        v108.i64[0] = v106.u32[0];
        v108.i64[1] = v106.u32[1];
        v117 = vshlq_u64(v108, vandq_s8(vaddq_s64(v88, v68), v85));
        v108.i64[0] = v114.u32[2];
        v108.i64[1] = v114.u32[3];
        v98 = vorrq_s8(vshlq_u64(v108, vandq_s8(vaddq_s64(v89, v68), v85)), v98);
        v99 = vorrq_s8(v117, v99);
        v97 = vorrq_s8(v116, v97);
        v94 = vorrq_s8(v115, v94);
        v100 = vorrq_s8(v113, v100);
        v95 = vorrq_s8(v112, v95);
        v101 = vorrq_s8(v111, v101);
        v102 = vorrq_s8(v109, v102);
        v91 = vaddq_s64(v91, v70);
        v93 = vaddq_s64(v93, v70);
        v90 = vaddq_s64(v90, v70);
        v89 = vaddq_s64(v89, v70);
        v88 = vaddq_s64(v88, v70);
        v87 = vaddq_s64(v87, v70);
        v86 = vaddq_s64(v86, v70);
        v84 = vaddq_s64(v84, v70);
        v96 -= 16;
      }

      while (v96);
      *v9 = v64;
      v118 = vorrq_s8(vorrq_s8(vorrq_s8(v95, v99), vorrq_s8(v97, v101)), vorrq_s8(vorrq_s8(v94, v100), vorrq_s8(v98, v102)));
      v73 = vorr_s8(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
      v69 = v92;
      if ((v81 & 0x3FFFFFF0) == v81)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v82 = v64;
    }

    v119 = v71 + 8;
    v120 = (v71 - 8);
    do
    {
      v71 -= 8;
      v121 = *v82++;
      v73 |= v121 << v120;
      *v9 = v82;
      v119 -= 8;
      v120 -= 8;
    }

    while (v119 > 15);
LABEL_123:
    v64 = v82;
    goto LABEL_124;
  }

LABEL_139:
  v124 = *a1;
  if (*(a1 + 31) == 1)
  {
    v133 = *(v124 + 88);
    v134 = (v124 + 96);
    if (v133)
    {
      v134 = *v134;
    }

    if (v133 >= 2)
    {
      v139 = 4 * (v133 >> 1);
      do
      {
        *(a1 + 20) = 0;
        v141 = *(a1 + 4);
        if (v141 <= 7)
        {
          v140 = 0;
          v12->i32[0] = -1;
        }

        else
        {
          v12->i32[0] = v141 - 8;
          v142 = *v9;
          v140 = (*v9)->u8[0];
          v143 = v141 & 7;
          *v9 = (*v9 + 1);
          if (v143)
          {
            v140 = (v142->u8[1] >> v143) | (v140 << (8 - v143)) & 0xFE;
          }
        }

        *v134 = v140;
        v134 = (v134 + 4);
        v139 -= 4;
      }

      while (v139);
    }
  }

  v128 = a1[4];
  v135 = *(v128 + 64);
  if (v135 > 1)
  {
    v125 = *(v124 + 8);
    if (v125 >= v135 >> 1)
    {
LABEL_164:
      __break(1u);
      *(v125 + 4) = (*v124 >> (8 - v128)) + 1;
      operator new();
    }

    v136 = (v128 + 72);
    if (v135)
    {
      v136 = *v136;
    }

    v137 = v136[v125];
    if ((*(v124 + 120) & 1) == 0)
    {
      *(v124 + 120) = 1;
    }

    *(v124 + 112) = v137;
  }

  else if (*(v124 + 120) == 1)
  {
    *(v124 + 120) = 0;
  }

  return a1;
}

void absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<webrtc::DecodeTargetIndication>>>(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *a1 & 1;
  if (*a1)
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = v4 >> 1;
    v9 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 10;
    v7 = a1 + 1;
    v8 = v4 >> 1;
    v9 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_13;
    }
  }

  if (v6 < a2)
  {
    v10 = 2 * v6;
    if (v10 <= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v10;
    }

    if (!(v11 >> 62))
    {
      operator new();
    }

LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  bzero(v7 + 4 * v8, 4 * v9);
LABEL_13:
  *a1 = v5 | (2 * a2);
}

void absl::inlined_vector_internal::Storage<int,10ul,std::allocator<int>>::EmplaceBackSlow<int>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 61) & 3) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<int,int>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

uint64_t webrtc::RtpDependencyDescriptorWriter::FindBestTemplate(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v4 = *(v2 + 104);
  v3 = *(v2 + 112);
  if (v4 != v3)
  {
    v5 = *(this + 8);
    while (*(v5 + 8) != *v4 || *(v5 + 12) != *(v4 + 4))
    {
      v4 += 104;
      if (v4 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v4 == v3)
  {
LABEL_17:
    *this = 1;
  }

  else
  {
    v6 = *(this + 8);
    v7 = v4;
    while (*(v6 + 8) == *v7 && *(v6 + 12) == v7[1])
    {
      v7 += 26;
      if (v7 == v3)
      {
        v7 = v3;
        break;
      }
    }

    this = webrtc::RtpDependencyDescriptorWriter::CalculateMatch(this, v4);
    *(v1 + 64) = this;
    *(v1 + 72) = v8;
    v9 = (v4 + 104);
    if (v7 != v9)
    {
      v10 = HIDWORD(v8);
      v11 = v9;
      do
      {
        this = webrtc::RtpDependencyDescriptorWriter::CalculateMatch(v1, v9);
        if (v10 > SHIDWORD(v12))
        {
          *(v1 + 64) = this;
          *(v1 + 72) = v12;
          v10 = HIDWORD(v12);
        }

        v11 += 26;
        v9 += 13;
      }

      while (v11 != v7);
    }
  }

  return this;
}

uint64_t webrtc::RtpDependencyDescriptorWriter::Write(webrtc::RtpDependencyDescriptorWriter *this)
{
  if (*this)
  {
    return 0;
  }

  webrtc::RtpDependencyDescriptorWriter::WriteMandatoryFields(this);
  if (*(this + 19) > 0 || (v3 = *(this + 1), *(v3 + 136)) || *(v3 + 128) == 1)
  {
    webrtc::RtpDependencyDescriptorWriter::WriteExtendedFields(this);
    webrtc::RtpDependencyDescriptorWriter::WriteFrameDependencyDefinition(this);
  }

  v4 = 8 * (*(this + 5) - *(this + 6)) - *(this + 7);
  if ((v4 & 0x3F) != 0 && (webrtc::BitBufferWriter::WriteBits((this + 32), 0, v4 & 0x3F) & 1) == 0)
  {
    *this = 1;
  }

  if (v4 >= 0x40)
  {
    v5 = v4 >> 6;
    do
    {
      if ((webrtc::BitBufferWriter::WriteBits((this + 32), 0, 0x40uLL) & 1) == 0)
      {
        *this = 1;
      }

      --v5;
    }

    while (v5);
  }

  return (*this ^ 1) & 1;
}

uint64_t webrtc::RtpDependencyDescriptorWriter::WriteMandatoryFields(webrtc::RtpDependencyDescriptorWriter *this)
{
  if ((webrtc::BitBufferWriter::WriteBits((this + 32), **(this + 1), 1uLL) & 1) == 0)
  {
    *this = 1;
  }

  if ((webrtc::BitBufferWriter::WriteBits((this + 32), *(*(this + 1) + 1), 1uLL) & 1) == 0)
  {
    *this = 1;
  }

  if (**(this + 2) + 0x4EC4EC4EC4EC4EC5 * ((*(this + 8) - *(*(this + 2) + 104)) >> 3) <= 0)
  {
    v2 = -(-(**(this + 2) + 0x4EC4EC4EC4EC4EC5 * ((*(this + 8) - *(*(this + 2) + 104)) >> 3)) & 0x3F);
  }

  else
  {
    v2 = (**(this + 2) - 59 * ((*(this + 8) - *(*(this + 2) + 104)) >> 3)) & 0x3F;
  }

  if (webrtc::BitBufferWriter::WriteBits((this + 32), v2, 6uLL))
  {
    result = webrtc::BitBufferWriter::WriteBits((this + 32), *(*(this + 1) + 4), 0x10uLL);
    if (result)
    {
      return result;
    }

LABEL_12:
    *this = 1;
    return result;
  }

  *this = 1;
  result = webrtc::BitBufferWriter::WriteBits((this + 32), *(*(this + 1) + 4), 0x10uLL);
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t webrtc::RtpDependencyDescriptorWriter::WriteExtendedFields(webrtc::RtpDependencyDescriptorWriter *this)
{
  v2 = *(*(this + 1) + 136);
  if ((webrtc::BitBufferWriter::WriteBits((this + 32), v2 != 0, 1uLL) & 1) == 0)
  {
    *this = 1;
  }

  v3 = *(this + 1);
  if (*(v3 + 128) != 1 || *(v3 + 136) && ((-1 << *(*(this + 2) + 4)) ^ *(v3 + 124)) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
    if (webrtc::BitBufferWriter::WriteBits((this + 32), 0, 1uLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 1;
  if ((webrtc::BitBufferWriter::WriteBits((this + 32), 1, 1uLL) & 1) == 0)
  {
LABEL_9:
    *this = 1;
  }

LABEL_10:
  if (webrtc::BitBufferWriter::WriteBits((this + 32), *(this + 72), 1uLL))
  {
    if (webrtc::BitBufferWriter::WriteBits((this + 32), *(this + 73), 1uLL))
    {
      goto LABEL_12;
    }
  }

  else
  {
    *this = 1;
    if (webrtc::BitBufferWriter::WriteBits((this + 32), *(this + 73), 1uLL))
    {
LABEL_12:
      result = webrtc::BitBufferWriter::WriteBits((this + 32), *(this + 74), 1uLL);
      if (result)
      {
        goto LABEL_13;
      }

LABEL_17:
      *this = 1;
      if (!v2)
      {
        goto LABEL_132;
      }

      goto LABEL_18;
    }
  }

  *this = 1;
  result = webrtc::BitBufferWriter::WriteBits((this + 32), *(this + 74), 1uLL);
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (!v2)
  {
    goto LABEL_132;
  }

LABEL_18:
  if ((webrtc::BitBufferWriter::WriteBits((this + 32), **(this + 2), 6uLL) & 1) == 0)
  {
    *this = 1;
  }

  result = webrtc::BitBufferWriter::WriteBits((this + 32), *(*(this + 2) + 4) - 1, 5uLL);
  if ((result & 1) == 0)
  {
    *this = 1;
  }

  v6 = *(this + 2);
  v7 = *(v6 + 104);
  v8 = 0x4EC4EC4EC4EC4EC5 * ((*(v6 + 112) - v7) >> 3);
  if (v8 >= 2)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v8 <= v10 - 1)
      {
        goto LABEL_144;
      }

      v11 = v7 + v9;
      v12 = *(v7 + v9);
      v13 = *(v7 + v9 + 104);
      v14 = *(v11 + 108);
      if (v13 != v12)
      {
        break;
      }

      v15 = *(v11 + 4);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        if (v15 + 1 != v14)
        {
          break;
        }

        v16 = 1;
      }

LABEL_37:
      result = webrtc::BitBufferWriter::WriteBits((this + 32), v16, 2uLL);
      if ((result & 1) == 0)
      {
        *this = 1;
      }

      ++v10;
      v7 = *(v6 + 104);
      v8 = 0x4EC4EC4EC4EC4EC5 * ((*(v6 + 112) - v7) >> 3);
      v9 += 104;
      if (v10 >= v8)
      {
        goto LABEL_39;
      }
    }

    v17 = v12 + 1;
    if (v14)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 == v13;
    }

    if (v18)
    {
      v16 = 2;
    }

    else
    {
      v16 = 4;
    }

    goto LABEL_37;
  }

LABEL_39:
  if ((webrtc::BitBufferWriter::WriteBits((this + 32), 3, 2uLL) & 1) == 0)
  {
    *this = 1;
  }

  v19 = *(this + 2);
  v20 = *(v19 + 104);
  v21 = *(v19 + 112);
  if (v20 != v21)
  {
    do
    {
      v22 = *(v20 + 8);
      v23 = (v20 + 16);
      if (v22)
      {
        v23 = *v23;
      }

      if (v22 >= 2)
      {
        v25 = *(this + 5);
        v24 = *(this + 6);
        v26 = *(this + 7);
        v27 = 4 * (v22 >> 1);
        do
        {
          while (1)
          {
            if ((8 * (v25 - v24) - v26) >= 2)
            {
              v28 = 8 - v26;
              if ((8 - v26) >= 2)
              {
                v29 = 2;
              }

              else
              {
                v29 = 8 - v26;
              }

              v30 = 8 - v29;
              v31 = *v23;
              v32 = (*(this + 4) + v24);
              *v32 = ((*v23 & 3) << 6 >> v26) | *v32 & ~(((255 << v30) & 0xFEu) >> v26);
              if (v28 < 2)
              {
                v32[1] = ((-1 << (14 - v26)) & 0x7E ^ 0x7F) & v32[1] | ((v31 << 62 << v28) >> 56);
              }

              v25 = *(this + 5);
              v24 = *(this + 6);
              v26 = *(this + 7);
              if ((8 * (v25 - v24) - v26) >= 2)
              {
                break;
              }
            }

            *this = 1;
            ++v23;
            v27 -= 4;
            if (!v27)
            {
              goto LABEL_43;
            }
          }

          v33 = v26 + 2;
          v24 += v33 >> 3;
          v26 = v33 & 7;
          *(this + 6) = v24;
          *(this + 7) = v26;
          ++v23;
          v27 -= 4;
        }

        while (v27);
      }

LABEL_43:
      v20 += 104;
    }

    while (v20 != v21);
    v19 = *(this + 2);
    v20 = *(v19 + 104);
    v21 = *(v19 + 112);
  }

  if (v20 != v21)
  {
    do
    {
      v34 = *(v20 + 56);
      v35 = (v20 + 64);
      if (v34)
      {
        v35 = *v35;
      }

      if (v34 >= 2)
      {
        v37 = *(this + 5);
        v36 = *(this + 6);
        v38 = *(this + 7);
        v39 = 4 * (v34 >> 1);
        do
        {
          while (1)
          {
            if ((8 * (v37 - v36) - v38) >= 5)
            {
              v40 = 8 - v38;
              if ((8 - v38) >= 5)
              {
                v41 = 5;
              }

              else
              {
                v41 = 8 - v38;
              }

              v42 = (*v35 - 1) | 0x10u;
              v43 = (*(this + 4) + v36);
              *v43 = ((8 * ((*v35 - 1) & 0xF | 0x10u)) >> v38) | *v43 & ~(((255 << (8 - v41)) & 0xFEu) >> v38);
              if (v40 < 5)
              {
                v43[1] = ((-1 << (11 - v38)) & 0x7E ^ 0x7F) & v43[1] | ((v42 << 59 << v40) >> 56);
              }

              v37 = *(this + 5);
              v36 = *(this + 6);
              v38 = *(this + 7);
              if ((8 * (v37 - v36) - v38) >= 5)
              {
                break;
              }
            }

            *this = 1;
            v35 = (v35 + 4);
            v39 -= 4;
            if (!v39)
            {
              goto LABEL_65;
            }
          }

          v44 = v38 + 5;
          v36 += v44 >> 3;
          v38 = v44 & 7;
          *(this + 6) = v36;
          *(this + 7) = v38;
          v35 = (v35 + 4);
          v39 -= 4;
        }

        while (v39);
      }

LABEL_65:
      if ((webrtc::BitBufferWriter::WriteBits((this + 32), 0, 1uLL) & 1) == 0)
      {
        *this = 1;
      }

      v20 += 104;
    }

    while (v20 != v21);
    v19 = *(this + 2);
  }

  v45 = *(v19 + 4);
  if (!v45)
  {
    goto LABEL_85;
  }

  v46 = *(v19 + 8);
  v47 = v45 + 1;
  v48 = __clz(v45 + 1);
  v49 = 32 - v48;
  v50 = (1 << -v48) - v47;
  if (v50 > v46)
  {
    if (webrtc::BitBufferWriter::WriteBits((this + 32), v46, v49 - 1))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if ((webrtc::BitBufferWriter::WriteBits((this + 32), v50 + v46, v49) & 1) == 0)
  {
LABEL_84:
    *this = 1;
  }

LABEL_85:
  v51 = *(this + 2);
  v52 = *(v51 + 8);
  if (!v52)
  {
    goto LABEL_125;
  }

  v53 = *(v51 + 16);
  v54 = (v51 + 24);
  if (v53)
  {
    v54 = *v54;
    if (v52 == 1 || v53 < 2)
    {
LABEL_91:
      v56 = *(v51 + 104);
      v57 = *(v51 + 112);
      if (v56 != v57)
      {
        goto LABEL_110;
      }

      goto LABEL_125;
    }
  }

  else if (v52 == 1 || v53 < 2)
  {
    goto LABEL_91;
  }

  v59 = 4 * (v53 >> 1);
  do
  {
    v60 = *(*(this + 2) + 8);
    if (v60 != 1)
    {
      v61 = *v54;
      v62 = __clz(v60);
      v63 = 32 - v62;
      v64 = (1 << -v62) - v60;
      if (v64 <= v61)
      {
        if ((webrtc::BitBufferWriter::WriteBits((this + 32), v64 + v61, v63) & 1) == 0)
        {
LABEL_99:
          *this = 1;
        }
      }

      else if ((webrtc::BitBufferWriter::WriteBits((this + 32), v61, v63 - 1) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    ++v54;
    v59 -= 4;
  }

  while (v59);
  v51 = *(this + 2);
  v56 = *(v51 + 104);
  v57 = *(v51 + 112);
  if (v56 != v57)
  {
    do
    {
LABEL_110:
      v65 = *(v56 + 80);
      v66 = (v56 + 88);
      if (v65)
      {
        v66 = *v66;
      }

      if (v65 >= 2)
      {
        v68 = *(this + 5);
        v67 = *(this + 6);
        v69 = *(this + 7);
        v70 = 4 * (v65 >> 1);
        do
        {
          while (1)
          {
            if ((8 * (v68 - v67) - v69) >= 4)
            {
              v71 = 8 - v69;
              if ((8 - v69) >= 4)
              {
                v72 = 4;
              }

              else
              {
                v72 = 8 - v69;
              }

              v73 = 8 - v72;
              v74 = *v66;
              v75 = (*(this + 4) + v67);
              *v75 = ((16 * (*v66 & 0xF)) >> v69) | *v75 & ~(((255 << v73) & 0xFEu) >> v69);
              if (v71 < 4)
              {
                v75[1] = ((-1 << (12 - v69)) & 0x7E ^ 0x7F) & v75[1] | ((v74 << 60 << v71) >> 56);
              }

              v68 = *(this + 5);
              v67 = *(this + 6);
              v69 = *(this + 7);
              if ((8 * (v68 - v67) - v69) >= 4)
              {
                break;
              }
            }

            *this = 1;
            ++v66;
            v70 -= 4;
            if (!v70)
            {
              goto LABEL_109;
            }
          }

          v76 = v69 + 4;
          v67 += v76 >> 3;
          v69 = v76 & 7;
          *(this + 6) = v67;
          *(this + 7) = v69;
          ++v66;
          v70 -= 4;
        }

        while (v70);
      }

LABEL_109:
      v56 += 104;
    }

    while (v56 != v57);
    v51 = *(this + 2);
  }

LABEL_125:
  v77 = *(v51 + 64);
  result = webrtc::BitBufferWriter::WriteBits((this + 32), v77 > 1, 1uLL);
  if ((result & 1) == 0)
  {
    *this = 1;
  }

  if (v77 < 2)
  {
LABEL_132:
    if (v4)
    {
      v81 = *(this + 1);
      if ((*(v81 + 128) & 1) == 0)
      {
        goto LABEL_144;
      }

      result = webrtc::BitBufferWriter::WriteBits((this + 32), *(v81 + 124), *(*(this + 2) + 4));
      if ((result & 1) == 0)
      {
        *this = 1;
      }
    }
  }

  else
  {
    v78 = *(this + 2);
    if (v78[13] != v78[14])
    {
      v79 = v78[8];
      v80 = (v78 + 9);
      if (v79)
      {
        v80 = *v80;
      }

      if (v79 < 2)
      {
        goto LABEL_132;
      }

      v82 = &v80[2 * (v79 >> 1)];
      while (2)
      {
        if (webrtc::BitBufferWriter::WriteBits((this + 32), *v80 - 1, 0x10uLL))
        {
          result = webrtc::BitBufferWriter::WriteBits((this + 32), v80[1] - 1, 0x10uLL);
          if ((result & 1) == 0)
          {
LABEL_143:
            *this = 1;
          }
        }

        else
        {
          *this = 1;
          result = webrtc::BitBufferWriter::WriteBits((this + 32), v80[1] - 1, 0x10uLL);
          if ((result & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        v80 += 2;
        if (v80 == v82)
        {
          goto LABEL_132;
        }

        continue;
      }
    }

LABEL_144:
    __break(1u);
  }

  return result;
}

uint64_t webrtc::RtpDependencyDescriptorWriter::WriteFrameDependencyDefinition(uint64_t this)
{
  v1 = this;
  if (*(this + 72) == 1)
  {
    v2 = *(this + 8);
    v3 = *(v2 + 16);
    v4 = (v2 + 24);
    if (v3)
    {
      v4 = *v4;
    }

    if (v3 >= 2)
    {
      v12 = 4 * (v3 >> 1);
      do
      {
        this = webrtc::BitBufferWriter::WriteBits((v1 + 32), *v4, 2uLL);
        if ((this & 1) == 0)
        {
          *v1 = 1;
        }

        ++v4;
        v12 -= 4;
      }

      while (v12);
    }
  }

  if (*(v1 + 73) == 1)
  {
    v5 = *(v1 + 8);
    v6 = *(v5 + 64);
    v7 = (v5 + 72);
    if (v6)
    {
      v7 = *v7;
    }

    if (v6 < 2)
    {
LABEL_9:
      this = webrtc::BitBufferWriter::WriteBits((v1 + 32), 0, 2uLL);
      if ((this & 1) == 0)
      {
        *v1 = 1;
      }

      goto LABEL_11;
    }

    v13 = 4 * (v6 >> 1);
    while (1)
    {
      v14 = *v7;
      if (*v7 > 16)
      {
        v15 = v14 - 1;
        if (v14 > 0x100)
        {
          if ((webrtc::BitBufferWriter::WriteBits((v1 + 32), v15 | 0x3000, 0xEuLL) & 1) == 0)
          {
LABEL_38:
            *v1 = 1;
          }
        }

        else if ((webrtc::BitBufferWriter::WriteBits((v1 + 32), v15 | 0x200, 0xAuLL) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if ((webrtc::BitBufferWriter::WriteBits((v1 + 32), (v14 - 1) | 0x10, 6uLL) & 1) == 0)
      {
        goto LABEL_38;
      }

      v7 = (v7 + 4);
      v13 -= 4;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_11:
  if (*(v1 + 74) == 1 && *(*(v1 + 16) + 8) >= 1)
  {
    for (i = 0; i < *(*(v1 + 16) + 8); ++i)
    {
      if (i == 32)
      {
LABEL_39:
        __break(1u);
        return this;
      }

      if ((*(v1 + 24) >> i))
      {
        v9 = *(v1 + 8);
        v10 = *(v9 + 88);
        if (i >= v10 >> 1)
        {
          goto LABEL_39;
        }

        v11 = (v9 + 96);
        if (v10)
        {
          v11 = *v11;
        }

        this = webrtc::BitBufferWriter::WriteBits((v1 + 32), *(v11 + i), 8uLL);
        if ((this & 1) == 0)
        {
LABEL_23:
          *v1 = 1;
        }
      }

      else
      {
        this = webrtc::BitBufferWriter::WriteBits((v1 + 32), 0, 8uLL);
        if ((this & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::RtpDependencyDescriptorWriter::StructureSizeBits(webrtc::RtpDependencyDescriptorWriter *this)
{
  v1 = *(this + 2);
  v3 = *(v1 + 104);
  v2 = *(v1 + 112);
  v4 = 0x4EC4EC4EC4EC4EC5 * ((v2 - v3) >> 3);
  v5 = *(v1 + 4);
  for (i = 0xEC4EC4EC4EC4EC4FLL * ((v2 - v3) >> 3) + 0x9D89D89D89D89D8ALL * ((v2 - v3) >> 3) * v5 + 11; v3 != v2; v3 += 104)
  {
    i = 5 * (*(v3 + 56) >> 1) + i;
  }

  v7 = *(v1 + 8);
  v8 = v5 + 1;
  v9 = __clz(v8);
  v10 = (__PAIR64__(i + 32 - v9, v7) - ((1 << -v9) - v8)) >> 32;
  if (v7 > 0)
  {
    v11 = *(v1 + 16);
    v12 = (v1 + 24);
    if (v11)
    {
      v12 = v12->i64[0];
    }

    if (v11 >= 2)
    {
      v13 = v11 >> 1;
      v14 = __clz(v7);
      v15 = 32 - v14;
      v16 = (1 << -v14) - v7;
      v17 = (v13 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v18 = v12;
      if (v17 <= 6)
      {
        goto LABEL_11;
      }

      v19 = v17 + 1;
      v18 = (v12 + 4 * (v19 & 0x7FFFFFFFFFFFFFF8));
      v20 = 0uLL;
      v21 = v10;
      v22 = vdupq_n_s32(v16);
      v23 = vdupq_n_s32(v15);
      v24 = v12 + 1;
      v25 = v19 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = vaddq_s32(vaddq_s32(v21, v23), vcgtq_u32(v22, v24[-1]));
        v20 = vaddq_s32(vaddq_s32(v20, v23), vcgtq_u32(v22, *v24));
        v24 += 2;
        v25 -= 8;
      }

      while (v25);
      v10 = vaddvq_s32(vaddq_s32(v20, v21));
      if (v19 != (v19 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_11:
        v26 = (v12 + 4 * v13);
        do
        {
          v27 = v18->i32[0];
          v18 = (v18 + 4);
          v10 = (__PAIR64__(v10 + v15, v27) - v16) >> 32;
        }

        while (v18 != v26);
      }
    }

    v10 += 4 * v7 * v4;
  }

  return v10 + 32 * (*(v1 + 64) >> 1) + 1;
}

unint64_t webrtc::RtpDependencyDescriptorWriter::CalculateMatch(unint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4[8];
  v6 = a2[7];
  v7 = (2 * v5) & 0x7FFFFFFFFFFFFFFCLL;
  if (v7 == ((2 * v6) & 0x7FFFFFFFFFFFFFFCLL))
  {
    if (v6)
    {
      v8 = a2[8];
    }

    else
    {
      v8 = a2 + 8;
    }

    if (v5)
    {
      v9 = v4[9];
    }

    else
    {
      v9 = v4 + 9;
    }

    result = memcmp(v9, v8, v7);
    v10 = result != 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = (v4 + 3);
  v12 = v4[2];
  if (v12)
  {
    v11 = v4[3];
  }

  v13 = a2 + 2;
  v14 = a2[1];
  if (v14)
  {
    v13 = a2[2];
  }

  if (v12 >> 1 != v14 >> 1)
  {
    goto LABEL_26;
  }

  if (v12 >= 2 && v14 >= 2)
  {
    v17 = 4 * (v12 >> 1) - 4;
    v18 = 4 * (v14 >> 1) - 4;
    v19 = v11;
    v20 = v13;
    while (1)
    {
      result = *v19;
      if (result != *v20)
      {
        break;
      }

      ++v19;
      ++v20;
      if (v17)
      {
        v17 -= 4;
        result = v18;
        v18 -= 4;
        if (result)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

LABEL_26:
    v16 = *(*(v3 + 16) + 8);
    if (v16 < 1)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

LABEL_19:
  v16 = *(*(v3 + 16) + 8);
  if (v16 < 1)
  {
LABEL_38:
    if (v10)
    {
LABEL_39:
      v25 = v5 >> 1;
      v26 = 2 * (v5 >> 1) + 2;
      v27 = (v4 + 9);
      if (v5)
      {
        v27 = v27->i64[0];
      }

      if (v5 >= 2)
      {
        v28 = (v25 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        v29 = v27;
        if (v28 < 7)
        {
          goto LABEL_47;
        }

        v30 = v28 + 1;
        v29 = v27 + (v30 & 0x7FFFFFFFFFFFFFF8);
        v31 = 0uLL;
        v32 = (2 * (v5 >> 1) + 2);
        v33 = v27 + 1;
        v34.i64[0] = 0x1100000011;
        v34.i64[1] = 0x1100000011;
        v35 = vdupq_n_s32(0x101u);
        v36.i64[0] = 0xC0000000CLL;
        v36.i64[1] = 0xC0000000CLL;
        v37.i64[0] = 0x800000008;
        v37.i64[1] = 0x800000008;
        v38.i64[0] = 0x400000004;
        v38.i64[1] = 0x400000004;
        v39 = v30 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v32 = vaddq_s32(vbslq_s8(vcgtq_s32(v34, v33[-1]), v38, vbslq_s8(vcgtq_u32(v35, v33[-1]), v37, v36)), v32);
          v31 = vaddq_s32(vbslq_s8(vcgtq_s32(v34, *v33), v38, vbslq_s8(vcgtq_u32(v35, *v33), v37, v36)), v31);
          v33 += 2;
          v39 -= 8;
        }

        while (v39);
        v26 = vaddvq_s32(vaddq_s32(v31, v32));
        if (v30 != (v30 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_47:
          v40 = v27 + v25;
          do
          {
            v42 = *v29++;
            v41 = v42;
            if (v42 >= 0x101)
            {
              v43 = 12;
            }

            else
            {
              v43 = 8;
            }

            if (v41 >= 17)
            {
              v44 = v43;
            }

            else
            {
              v44 = 4;
            }

            v26 += v44;
          }

          while (v29 != v40);
        }
      }
    }

    return a2;
  }

LABEL_27:
  v21 = 0;
  while (1)
  {
    if (v21 == 32)
    {
LABEL_58:
      __break(1u);
      return result;
    }

    if ((*(v3 + 24) >> v21))
    {
      v22 = v4[11];
      if (v21 >= v22 >> 1)
      {
        goto LABEL_58;
      }

      v23 = v4 + 12;
      if (v22)
      {
        v23 = v4[12];
      }

      result = a2[10];
      if (v21 >= result >> 1)
      {
        goto LABEL_58;
      }

      v24 = a2 + 11;
      if (result)
      {
        v24 = a2[11];
      }

      if (*(v23 + v21) != *(v24 + v21))
      {
        break;
      }
    }

    if (v16 == ++v21)
    {
      goto LABEL_38;
    }
  }

  if (v10)
  {
    goto LABEL_39;
  }

  return a2;
}

uint64_t *webrtc::RtpDescriptorAuthentication@<X0>(uint64_t *this@<X0>, void *a2@<X8>)
{
  if ((this[18] & 1) == 0 || (v3 = *(this + 2), (v3 & 0x80000000) != 0) || (v4 = *(this + 3), (v4 | v3) > 7) || (v5 = this[8], v5 >= 0x12))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return this;
  }

  v49.i64[1] = 0;
  v51.i64[0] = 0;
  v49.i16[0] = 1;
  v49.i8[5] = v4;
  v49.i8[4] = 1 << v3;
  v6 = *this;
  v49.i16[1] = *this;
  v7 = this[9];
  if ((v5 & 1) == 0)
  {
    v7 = this + 9;
  }

  if (v5 < 2)
  {
    v8 = *(this + 79);
    v51.i32[0] = *(this + 78);
    v51.i32[1] = v8;
LABEL_42:
    v12 = 1;
    v14 = 4;
    goto LABEL_57;
  }

  v9 = (4 * v5) & 0x78;
  if (v6 == *v7)
  {
    v10 = 0;
  }

  else
  {
    v50.i16[0] = v6 - *v7;
    v10 = 1;
  }

  if (v9 != 8)
  {
    if (v6 != *(v7 + 4))
    {
      v50.i16[v10++] = v6 - *(v7 + 4);
    }

    if (v9 != 16)
    {
      if (v6 != *(v7 + 8))
      {
        v50.i16[v10++] = v6 - *(v7 + 8);
      }

      if (v9 != 24)
      {
        if (v10 != 8 && v6 != *(v7 + 12))
        {
          v50.i16[v10++] = v6 - *(v7 + 12);
        }

        if (v9 != 32)
        {
          if (v10 != 8 && v6 != *(v7 + 16))
          {
            v50.i16[v10++] = v6 - *(v7 + 16);
          }

          if (v9 != 40)
          {
            if (v10 != 8 && v6 != *(v7 + 20))
            {
              v50.i16[v10++] = v6 - *(v7 + 20);
            }

            if (v9 != 48)
            {
              if (v10 != 8 && v6 != *(v7 + 24))
              {
                v50.i16[v10++] = v6 - *(v7 + 24);
              }

              if (v9 != 56 && v10 != 8)
              {
                v11 = v6 - *(v7 + 14);
                if (v11)
                {
                  v50.i16[v10++] = v11;
                }
              }
            }
          }
        }
      }
    }
  }

  v49.i64[1] = v10;
  v12 = v10 == 0;
  if (!v10)
  {
    goto LABEL_42;
  }

  v13 = (v10 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v13 < 3)
  {
    v14 = 4;
    v15 = &v50;
    goto LABEL_52;
  }

  v16 = v13 + 1;
  if (v13 < 0xF)
  {
    v17 = 0;
    v14 = 4;
    goto LABEL_47;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFF0;
  v18.i64[0] = 0x3F003F003F003FLL;
  v18.i64[1] = 0x3F003F003F003FLL;
  v19 = vcgtq_u16(v50, v18);
  v20 = vmovl_s16(*v19.i8);
  v21.i64[0] = v20.i32[0];
  v21.i64[1] = v20.i32[1];
  v22 = v21;
  v23 = vmovl_high_s16(v19);
  v21.i64[0] = v23.i32[0];
  v21.i64[1] = v23.i32[1];
  v24 = v21;
  v21.i64[0] = v23.i32[2];
  v21.i64[1] = v23.i32[3];
  v25 = v21;
  v21.i64[0] = v20.i32[2];
  v21.i64[1] = v20.i32[3];
  v26 = v21;
  v27 = vcgtq_u16(v51, v18);
  v28 = vmovl_high_s16(v27);
  v21.i64[0] = v28.i32[0];
  v21.i64[1] = v28.i32[1];
  v29 = v21;
  v21.i64[0] = v28.i32[2];
  v21.i64[1] = v28.i32[3];
  v30 = v21;
  v31 = vmovl_s16(*v27.i8);
  v21.i64[0] = v31.i32[2];
  v21.i64[1] = v31.i32[3];
  v32 = v21;
  v21.i64[0] = v31.i32[0];
  v21.i64[1] = v31.i32[1];
  v33 = vdupq_n_s64(2uLL);
  v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vsubq_s64(vandq_s8(v21, v33), vmvnq_s8(v21)), vbslq_s8(v22, xmmword_273BA34A0, xmmword_273BA3490)), vaddq_s64(vsubq_s64(vandq_s8(v29, v33), vmvnq_s8(v29)), vsubq_s64(vandq_s8(v24, v33), vmvnq_s8(v24)))), vaddq_s64(vaddq_s64(vsubq_s64(vandq_s8(v32, v33), vmvnq_s8(v32)), vsubq_s64(vandq_s8(v26, v33), vmvnq_s8(v26))), vaddq_s64(vsubq_s64(vandq_s8(v30, v33), vmvnq_s8(v30)), vsubq_s64(vandq_s8(v25, v33), vmvnq_s8(v25))))));
  if (v16 == (v16 & 0xFFFFFFFFFFFFFFF0))
  {
    goto LABEL_57;
  }

  if ((v16 & 0xC) != 0)
  {
LABEL_47:
    v15 = (&v50 + 2 * (v16 & 0xFFFFFFFFFFFFFFFCLL));
    v34 = 0uLL;
    v35 = v14;
    v36 = (&v50 + 2 * v17);
    v37 = v17 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
    v38 = vdupq_n_s64(2uLL);
    do
    {
      v39 = *v36++;
      v40 = vmovl_s16(vcgt_u16(v39, 0x3F003F003F003FLL));
      v41.i64[0] = v40.i32[2];
      v41.i64[1] = v40.i32[3];
      v42 = v41;
      v41.i64[0] = v40.i32[0];
      v41.i64[1] = v40.i32[1];
      v34 = vaddq_s64(vsubq_s64(vandq_s8(v42, v38), vmvnq_s8(v42)), v34);
      v35 = vaddq_s64(vsubq_s64(vandq_s8(v41, v38), vmvnq_s8(v41)), v35);
      v37 += 4;
    }

    while (v37);
    v14 = vaddvq_s64(vaddq_s64(v35, v34));
    if (v16 == (v16 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v15 = (&v50 + 2 * v17);
LABEL_52:
  v43 = (&v50 + 2 * v10);
  do
  {
    v44 = v15->u16[0];
    v15 = (v15 + 2);
    if (v44 <= 0x3F)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    v14 += v45;
  }

  while (v15 != v43);
LABEL_57:
  v46 = v51.i32[1];
  v47 = v51.i32[0] > 0 && v12;
  a2[1] = 0;
  a2[2] = 0;
  if (v47 && v46 > 0)
  {
    v48 = v14 + 4;
  }

  else
  {
    v48 = v14;
  }

  *a2 = 0;
  if (v48)
  {
    if ((v48 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return webrtc::RtpGenericFrameDescriptorExtension00::Write(0, 0, &v49);
}

void *webrtc::RtpPacketizer::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x100000000) == 0)
  {
    operator new();
  }

  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        operator new();
      case 5:
        operator new();
      case 4:
        if (*(a6 + 1936) == 3)
        {
          operator new();
        }

        goto LABEL_18;
    }

LABEL_17:
    operator new();
  }

  if (a1 == 1)
  {
    if (*(a6 + 1936) == 1)
    {
      operator new();
    }
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_17;
    }

    if (*(a6 + 1936) == 2)
    {
      operator new();
    }
  }

LABEL_18:
  v6 = std::__throw_bad_variant_access[abi:sn200100]();
  return webrtc::RtpPacketizer::SplitAboutEqually(v6, v7, v8);
}

void *webrtc::RtpPacketizer::SplitAboutEqually@<X0>(void *result@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v9 = result;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (result)
  {
    v4 = *a2;
    if (*a2 >= a2[3] + result)
    {
      return std::vector<unsigned int>::push_back[abi:sn200100](a3, &v9);
    }

    else
    {
      v5 = a2[1];
      if (v4 > v5)
      {
        v6 = a2[2];
        if (v4 > v6)
        {
          v7 = (v4 + v5 + result + v6 - 1) / v4;
          v8 = v7 == 1 ? 2 : v7;
          if (v8 <= result)
          {
            if ((v8 & 0x80000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }
      }
    }
  }

  return result;
}

void webrtc::RtpPacketizerH264::RtpPacketizerH264(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_28829BEF8;
  *(a1 + 8) = a4;
  v8 = (a1 + 8);
  *(a1 + 16) = a5;
  *(a1 + 24) = 0u;
  v9 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  if (a6 >= 2)
  {
LABEL_199:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 43, "packetization_mode == H264PacketizationMode::NonInterleaved || packetization_mode == H264PacketizationMode::SingleNalUnit", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v133);
    webrtc::RtpPacketizerH264::~RtpPacketizerH264(v132);
    return;
  }

  v10 = a6;
  if (a3)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v144 = 0;
  v15 = a3 - 3;
  if (a3 < 4)
  {
    goto LABEL_40;
  }

  v135 = (a1 + 24);
  v16 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v18 = *(v14 + 2 + v16);
        if (v18 <= 1)
        {
          break;
        }

LABEL_8:
        v16 += 3;
        if (v16 >= v15)
        {
          goto LABEL_21;
        }
      }

      if (v18 == 1)
      {
        break;
      }

      if (++v16 >= v15)
      {
        goto LABEL_21;
      }
    }

    if (*(v14 + 1 + v16) || *(v14 + v16))
    {
      goto LABEL_8;
    }

    *&v145 = v16;
    *(&v145 + 1) = v16 + 3;
    v146 = 0;
    if (v16)
    {
      v17 = v16;
      if (!*(v14 + v16 - 1))
      {
        *&v145 = v16 - 1;
        v17 = v16 - 1;
      }
    }

    else
    {
      v17 = 0;
    }

    if (__p[1] != __p[0])
    {
      *(__p[1] - 1) = v17 - *(__p[1] - 2);
    }

    std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](__p, &v145);
    v16 += 3;
  }

  while (v16 < v15);
LABEL_21:
  v19 = __p[1];
  v20 = __p[0];
  if (__p[1] == __p[0])
  {
    v9 = v135;
    if (__p[0])
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(__p[1] - 1) = a3 - *(__p[1] - 2);
    v9 = v135;
    do
    {
      v21 = v20[1];
      if (a3 <= v21)
      {
        v22 = 0;
        v24 = 0;
      }

      else
      {
        if (a3 - v21 >= v20[2])
        {
          v22 = v20[2];
        }

        else
        {
          v22 = a3 - v21;
        }

        v23 = v21 + a2;
        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v27 = 32 * (v26 - v25) - 1;
      if (v26 == v25)
      {
        v27 = 0;
      }

      if (v27 == *(a1 + 72) + *(a1 + 64))
      {
        std::deque<webrtc::ArrayView<unsigned char const,-4711l>>::__add_back_capacity((a1 + 32));
        v25 = *(a1 + 40);
        v26 = *(a1 + 48);
      }

      if (v26 == v25)
      {
        goto LABEL_168;
      }

      v28 = *(a1 + 72) + *(a1 + 64);
      v25 = *(v25 + ((v28 >> 5) & 0x7FFFFFFFFFFFFF8));
      if (!v25)
      {
        goto LABEL_168;
      }

      v29 = (v25 + 16 * v28);
      *v29 = v24;
      v29[1] = v22;
      ++*(a1 + 72);
      v20 += 3;
    }

    while (v20 != v19);
    v20 = __p[0];
    if (__p[0])
    {
LABEL_39:
      __p[1] = v20;
      operator delete(v20);
    }
  }

LABEL_40:
  v30 = *(a1 + 40);
  if (*(a1 + 48) == v30)
  {
    v25 = *(a1 + 72);
  }

  else
  {
    v31 = *(a1 + 64);
    v25 = *(a1 + 72);
    v32 = (v30 + 8 * (v31 >> 8));
    v33 = *v32;
    v34 = *v32 + 16 * v31;
    v35 = *(v30 + (((v25 + v31) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v25 + v31);
    while (v34 != v35)
    {
      if (!*(v34 + 8))
      {
        goto LABEL_54;
      }

      v34 += 16;
      if (v34 - v33 == 4096)
      {
        v36 = v32[1];
        ++v32;
        v33 = v36;
        v34 = v36;
      }
    }
  }

  if (!v25)
  {
    return;
  }

  v142 = -1;
  if (v10 != 1)
  {
    v45 = 0;
    v134 = v8;
    v136 = v9;
    while (1)
    {
      v46 = *(a1 + 8);
      v47 = v25 - 1;
      if (v25 == 1)
      {
        break;
      }

      if (!v45)
      {
        v48 = *(a1 + 12);
        goto LABEL_69;
      }

      v49 = *(a1 + 8);
      if (v45 + 1 == v25)
      {
        v48 = *(a1 + 16);
        goto LABEL_69;
      }

LABEL_70:
      v50 = &v45[*(a1 + 64)];
      v51 = *(*(a1 + 40) + ((v50 >> 5) & 0x7FFFFFFFFFFFFF8));
      v52 = (*(a1 + 64) + v45);
      v53 = *(v51 + 16 * v50 + 8);
      v140 = v53;
      if (v49 >= v53)
      {
        if (v25 <= v45)
        {
          goto LABEL_168;
        }

        v56 = v46;
        v57 = v46 - v53;
        if (v46 < v53)
        {
          goto LABEL_196;
        }

        v10 = *(v51 + 16 * v52);
        ++*v9;
        if (v45 || v47)
        {
          if (v45)
          {
            v59 = v53;
            if (v47 != v45)
            {
              goto LABEL_116;
            }

            v58 = *(a1 + 16);
          }

          else
          {
            v58 = *(a1 + 12);
          }
        }

        else
        {
          v58 = *(a1 + 20);
        }

        v59 = v53 + v58;
LABEL_116:
        if (v59 > v56)
        {
          goto LABEL_195;
        }

        if (!v53)
        {
LABEL_194:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 174, "fragment.size() > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 0);
LABEL_195:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 195, "aggregated_fragments > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 0);
LABEL_196:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 156, "payload_size_left >= fragment.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v56);
LABEL_197:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 146, "0 == payload_left", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, 0);
LABEL_198:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 218, "!fragment.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v133);
          goto LABEL_199;
        }

        v25 = *(a1 + 88);
        v80 = *(a1 + 96);
        v81 = 170 * ((v80 - v25) >> 3) - 1;
        v82 = *v10;
        if (v80 == v25)
        {
          v81 = 0;
        }

        if (v81 == *(a1 + 120) + *(a1 + 112))
        {
          v83 = v45;
          std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity((a1 + 80));
          v53 = v140;
          v45 = v83;
          v25 = *(a1 + 88);
          v80 = *(a1 + 96);
        }

        if (v80 == v25)
        {
          goto LABEL_168;
        }

        v84 = *(a1 + 120) + *(a1 + 112);
        v25 = *(v25 + 8 * (v84 / 0xAA));
        if (!v25)
        {
          goto LABEL_168;
        }

        v85 = v25 + 24 * (v84 % 0xAA);
        *v85 = v10;
        *(v85 + 8) = v53;
        *(v85 + 16) = 1;
        *(v85 + 18) = 1;
        *(v85 + 19) = v82;
        v86 = *(a1 + 120) + 1;
        *(a1 + 120) = v86;
        v10 = v45 + 1;
        v25 = *(a1 + 72);
        if (v45 + 1 == v25)
        {
          goto LABEL_125;
        }

        if (v25 <= v10)
        {
          goto LABEL_168;
        }

        v87 = *(*(a1 + 40) + ((&v10[*(a1 + 64)] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v10);
        v88 = *(v87 + 8);
        v89 = v88 + 5;
        if (v45 || v25 != 2)
        {
          if (v45)
          {
            v91 = v88 + 5;
            if ((v25 - 2) != v45)
            {
              goto LABEL_136;
            }

            v90 = *(a1 + 16);
          }

          else
          {
            v90 = *(a1 + 12);
          }
        }

        else
        {
          v90 = *(a1 + 20);
        }

        v91 = v89 + v90;
LABEL_136:
        if (v57 < v91)
        {
          goto LABEL_137;
        }

        if (!v88)
        {
          goto LABEL_194;
        }

        v10 = *v87;
        v25 = *(a1 + 88);
        v92 = *(a1 + 96);
        v93 = 170 * ((v92 - v25) >> 3) - 1;
        v94 = *v10;
        if (v92 == v25)
        {
          v93 = 0;
        }

        if (v93 == *(a1 + 112) + v86)
        {
          v95 = v45;
          std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity((a1 + 80));
          v45 = v95;
          v25 = *(a1 + 88);
          v92 = *(a1 + 96);
        }

        if (v92 == v25)
        {
          goto LABEL_168;
        }

        v96 = *(a1 + 120) + *(a1 + 112);
        v25 = *(v25 + 8 * (v96 / 0xAA));
        if (!v25)
        {
          goto LABEL_168;
        }

        v97 = v25 + 24 * (v96 % 0xAA);
        *v97 = v10;
        *(v97 + 8) = v88;
        *(v97 + 16) = 0;
        *(v97 + 18) = 1;
        *(v97 + 19) = v94;
        v86 = *(a1 + 120) + 1;
        *(a1 + 120) = v86;
        v10 = v45 + 2;
        v25 = *(a1 + 72);
        if (v45 + 2 != v25)
        {
          if (v25 <= v10)
          {
            goto LABEL_168;
          }

          v98 = v57 - v89;
          while (1)
          {
            v99 = *(*(a1 + 40) + ((&v10[*(a1 + 64)] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v10 + *(a1 + 64));
            v100 = *(v99 + 8);
            v101 = v100 + 2;
            v102 = (v25 - 1);
            if (v45 || v10 != v102)
            {
              if (v45)
              {
                v104 = v100 + 2;
                if (v10 != v102)
                {
                  goto LABEL_158;
                }

                v103 = *(a1 + 16);
              }

              else
              {
                v103 = *(a1 + 12);
              }
            }

            else
            {
              v103 = *(a1 + 20);
            }

            v104 = v101 + v103;
LABEL_158:
            if (v98 < v104)
            {
              goto LABEL_137;
            }

            if (!v100)
            {
              goto LABEL_194;
            }

            v105 = *v99;
            v25 = *(a1 + 88);
            v106 = *(a1 + 96);
            v107 = 170 * ((v106 - v25) >> 3) - 1;
            v108 = *v105;
            if (v106 == v25)
            {
              v107 = 0;
            }

            if (v107 == *(a1 + 112) + v86)
            {
              v109 = v9;
              v110 = v8;
              v111 = v45;
              std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity((a1 + 80));
              v45 = v111;
              v8 = v110;
              v9 = v109;
              v25 = *(a1 + 88);
              v106 = *(a1 + 96);
            }

            if (v106 == v25)
            {
              goto LABEL_168;
            }

            v112 = *(a1 + 120) + *(a1 + 112);
            v25 = *(v25 + 8 * (v112 / 0xAA));
            if (!v25)
            {
              goto LABEL_168;
            }

            v113 = v25 + 24 * (v112 % 0xAA);
            *v113 = v105;
            *(v113 + 8) = v100;
            *(v113 + 16) = 0;
            *(v113 + 18) = 1;
            *(v113 + 19) = v108;
            v86 = *(a1 + 120) + 1;
            *(a1 + 120) = v86;
            ++v10;
            v25 = *(a1 + 72);
            if (v10 == v25)
            {
              break;
            }

            v98 -= v101;
            if (v25 <= v10)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_125:
        v25 = v10;
LABEL_137:
        if (!v86)
        {
          goto LABEL_168;
        }

        *(*(*(a1 + 88) + 8 * ((v86 + *(a1 + 112) - 1) / 0xAAuLL)) + 24 * ((v86 + *(a1 + 112) - 1) % 0xAAuLL) + 17) = 1;
        v45 = v10;
        if (v10 >= v25)
        {
          return;
        }
      }

      else
      {
        if (v25 <= v45)
        {
          goto LABEL_168;
        }

        v141 = *(v51 + 16 * v52);
        *__p = *v8;
        LODWORD(__p[0]) -= 2;
        v54 = v25 - 1;
        if (v54)
        {
          if (v54 == v45)
          {
            v55 = *(a1 + 16);
          }

          else
          {
            if (!v45)
            {
              v60 = *(a1 + 12);
              v61 = &__p[1] + 4;
              goto LABEL_86;
            }

            v55 = 0;
          }

          v60 = 0;
          HIDWORD(__p[1]) = v55;
          v61 = __p + 4;
LABEL_86:
          *v61 = v60;
        }

        v139 = v45;
        if (v54 != v45)
        {
          LODWORD(__p[1]) = 0;
        }

        v10 = (v53 - 1);
        webrtc::RtpPacketizer::SplitAboutEqually((v53 - 1), __p, &v145);
        v63 = *(&v145 + 1);
        v62 = v145;
        if (v145 != *(&v145 + 1))
        {
          v8 = 0;
          v137 = *(&v145 + 1);
          v138 = v145;
          v64 = (*(&v145 + 1) - v145) >> 2;
          v65 = 1;
          v66 = v145;
          v67 = v140;
          do
          {
            v68 = v66[v8];
            if (v68 <= 0)
            {
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 137, "packet_length > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v66[v8]);
              goto LABEL_194;
            }

            v69 = *(a1 + 88);
            v70 = *(a1 + 96);
            v71 = 170 * ((v70 - v69) >> 3) - 1;
            v72 = &v141[v65];
            if (v70 == v69)
            {
              v71 = 0;
            }

            v73 = v67 - v65;
            if (v67 <= v65)
            {
              v72 = 0;
            }

            if (v73 >= v68)
            {
              v73 = v66[v8];
            }

            if (v67 <= v65)
            {
              v74 = 0;
            }

            else
            {
              v74 = v73;
            }

            v75 = v8 == (v64 - 1);
            v76 = *v141;
            if (v74)
            {
              v77 = v72;
            }

            else
            {
              v77 = 0;
            }

            v25 = *(a1 + 120) + *(a1 + 112);
            if (v71 == v25)
            {
              std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity((a1 + 80));
              v67 = v140;
              v69 = *(a1 + 88);
              v70 = *(a1 + 96);
            }

            if (v70 == v69)
            {
              goto LABEL_168;
            }

            v25 = *(a1 + 120) + *(a1 + 112);
            v78 = *(v69 + 8 * (v25 / 0xAA));
            if (!v78)
            {
              goto LABEL_168;
            }

            v79 = v78 + 24 * (v25 % 0xAA);
            *v79 = v77;
            *(v79 + 8) = v74;
            *(v79 + 16) = v8 == 0;
            *(v79 + 17) = v75;
            *(v79 + 18) = 0;
            *(v79 + 19) = v76;
            ++*(a1 + 120);
            v65 += v68;
            v10 -= v68;
            v8 = (v8 + 1);
            v66 = v145;
            v64 = (*(&v145 + 1) - v145) >> 2;
          }

          while (v8 < v64);
          v8 = v134;
          v9 = v136;
          *v136 += v64;
          v63 = v137;
          v62 = v138;
          if (v10)
          {
            goto LABEL_197;
          }

          if (!v66)
          {
            goto LABEL_61;
          }

LABEL_113:
          *(&v145 + 1) = v66;
          operator delete(v66);
          goto LABEL_61;
        }

        v66 = v145;
        if (v145)
        {
          goto LABEL_113;
        }

LABEL_61:
        if (v62 == v63)
        {
          goto LABEL_54;
        }

        v10 = v139 + 1;
        v25 = *(a1 + 72);
        v45 = v139 + 1;
        if ((v139 + 1) >= v25)
        {
          return;
        }
      }
    }

    v48 = *(a1 + 20);
LABEL_69:
    v49 = v46 - v48;
    goto LABEL_70;
  }

  v37 = v25 == 1;
  v38 = 12;
  if (v37)
  {
    v38 = 20;
  }

  v39 = *(a1 + 8) - *(a1 + v38);
  v25 = *(v30 + ((*(a1 + 64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 64);
  v10 = *(v25 + 8);
  if (v39 >= v10)
  {
    goto LABEL_169;
  }

LABEL_52:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v40, v41, v42, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc");
  }

LABEL_54:
  *(a1 + 24) = 0;
  v43 = *(a1 + 120);
  if (v43)
  {
    v25 = *(a1 + 88);
    v44 = *(a1 + 112);
    v10 = 0xC0C0C0C0C0C0C0C1;
    while (*(v25 + ((((v44 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
    {
      --v43;
      *(a1 + 112) = ++v44;
      *(a1 + 120) = v43;
      if (v44 >= 0x154)
      {
        operator delete(*v25);
        v25 = *(a1 + 88) + 8;
        *(a1 + 88) = v25;
        v43 = *(a1 + 120);
        v44 = *(a1 + 112) - 170;
        *(a1 + 112) = v44;
      }

      if (!v43)
      {
        return;
      }
    }

LABEL_168:
    while (1)
    {
      __break(1u);
LABEL_169:
      if (!v10)
      {
        goto LABEL_198;
      }

      v114 = *v25;
      v25 = *(a1 + 88);
      v115 = *(a1 + 96);
      v116 = v142 + 170 * ((v115 - v25) >> 3);
      v117 = *v114;
      if (v115 == v25)
      {
        v116 = 0;
      }

      if (v116 == *(a1 + 120) + *(a1 + 112))
      {
        std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity((a1 + 80));
        v25 = *(a1 + 88);
        v115 = *(a1 + 96);
      }

      if (v115 != v25)
      {
        v118 = *(a1 + 120) + *(a1 + 112);
        v25 = *(v25 + 8 * (v118 / 0xAA));
        if (v25)
        {
          v119 = v25 + 24 * (v118 % 0xAA);
          *v119 = v114;
          *(v119 + 8) = v10;
          *(v119 + 16) = 257;
          *(v119 + 18) = 0;
          *(v119 + 19) = v117;
          v25 = *(a1 + 120) + 1;
          *(a1 + 120) = v25;
          ++*(a1 + 24);
          v120 = *(a1 + 72);
          if (v120 < 2)
          {
            return;
          }

          v121 = 1;
          while (1)
          {
            v122 = *v8;
            v123 = v121 + 1;
            if (v121 + 1 == v120)
            {
              v122 -= *(a1 + 16);
            }

            if (v120 <= v121)
            {
              break;
            }

            v124 = *(*(a1 + 40) + (((v121 + *(a1 + 64)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v121 + *(a1 + 64));
            v10 = *(v124 + 8);
            if (v122 < v10)
            {
              goto LABEL_52;
            }

            if (!v10)
            {
              goto LABEL_198;
            }

            v125 = *v124;
            v126 = *(a1 + 88);
            v127 = *(a1 + 96);
            v128 = v142 + 170 * ((v127 - v126) >> 3);
            v129 = *v125;
            if (v127 == v126)
            {
              v128 = 0;
            }

            v25 += *(a1 + 112);
            if (v128 == v25)
            {
              std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity((a1 + 80));
              v126 = *(a1 + 88);
              v127 = *(a1 + 96);
            }

            if (v127 == v126)
            {
              goto LABEL_168;
            }

            v25 = *(a1 + 120) + *(a1 + 112);
            v130 = *(v126 + 8 * (v25 / 0xAA));
            if (!v130)
            {
              goto LABEL_168;
            }

            v131 = v130 + 24 * (v25 % 0xAA);
            *v131 = v125;
            *(v131 + 8) = v10;
            *(v131 + 16) = 257;
            *(v131 + 18) = 0;
            *(v131 + 19) = v129;
            v25 = *(a1 + 120) + 1;
            *(a1 + 120) = v25;
            ++*(a1 + 24);
            v120 = *(a1 + 72);
            v121 = v123;
            if (v123 >= v120)
            {
              return;
            }
          }
        }
      }
    }
  }
}

void webrtc::RtpPacketizerH264::~RtpPacketizerH264(void **this)
{
  *this = &unk_28829BEF8;
  v1 = this + 4;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 10);
  std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](v1);
}

{
  *this = &unk_28829BEF8;
  v1 = this + 4;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 10);
  std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](v1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpPacketizerH264::NextPacket(webrtc::RtpPacketizerH264 *this, webrtc::RtpPacketToSend *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 15);
  if (!v9)
  {
    return v9 != 0;
  }

  v12 = *(*(this + 11) + 8 * (*(this + 14) / 0xAAuLL)) + 24 * (*(this + 14) % 0xAAuLL);
  v14 = *v12;
  v13 = *(v12 + 8);
  if (*(v12 + 16) & 1) != 0 && (*(v12 + 17))
  {
    *(a2 + 3) = 0;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
    v15 = *(a2 + 11);
    if (v15)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v15 + 8) - *(a2 + 12));
    }

    *(a2 + 3) = v13;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v13);
    v16 = *(a2 + 2);
    v17 = *(a2 + 11);
    if (v17)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v17 + 8) - *(a2 + 12));
      v17 = *(*(a2 + 11) + 16) + *(a2 + 12);
    }

    memcpy((v17 + v16), v14, v13);
    v22 = *(this + 15);
    if (v22)
    {
      v23 = *(this + 11);
      v24 = *(this + 14);
      if (*(v23 + ((((v24 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
      {
        v25 = v24 + 1;
        *(this + 14) = v25;
        *(this + 15) = v22 - 1;
        if (v25 >= 0x154)
        {
          operator delete(*v23);
          *(this + 11) += 8;
          *(this + 14) -= 170;
        }

        v26 = *(this + 9);
        if (v26)
        {
          v27 = *(this + 5);
          v28 = *(this + 8);
          if (*(v27 + ((v28 >> 5) & 0x7FFFFFFFFFFFFF8)))
          {
            v29 = v28 + 1;
            *(this + 8) = v29;
            *(this + 9) = v26 - 1;
            if (v29 >= 0x200)
            {
              operator delete(*v27);
              *(this + 5) += 8;
              *(this + 8) -= 256;
            }

LABEL_68:
            v69 = *(this + 15) == 0;
            *a2 = v69;
            v70 = *(a2 + 12);
            v71 = *(*(*(a2 + 11) + 16) + v70 + 1);
            webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(*(a2 + 11) + 8) - v70);
            *(*(*(a2 + 11) + 16) + *(a2 + 12) + 1) = v71 & 0x7F | (v69 << 7);
            --*(this + 3);
            return v9 != 0;
          }
        }
      }
    }

    goto LABEL_70;
  }

  if ((*(v12 + 18) & 1) == 0)
  {
    v37 = *(v12 + 19);
    v38 = v37 & 0xE0 | 0x1C;
    if (*(v12 + 17))
    {
      v39 = 64;
    }

    else
    {
      v39 = 0;
    }

    if (*(v12 + 16))
    {
      v40 = -128;
    }

    else
    {
      v40 = 0;
    }

    v8 = v40 & 0xFFFFFFE0 | v37 & 0x1F | v39;
    if (!v13)
    {
      v14 = 0;
    }

    v41 = v13 + 2;
    *(a2 + 3) = 0;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
    v42 = *(a2 + 11);
    if (v42)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v42 + 8) - *(a2 + 12));
    }

    *(a2 + 3) = v41;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v41);
    v43 = *(a2 + 2);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(*(a2 + 11) + 8) - *(a2 + 12));
    v44 = (*(*(a2 + 11) + 16) + *(a2 + 12) + v43);
    *v44 = v38;
    v44[1] = v8;
    memcpy(v44 + 2, v14, v13);
    if (*(v12 + 17) == 1)
    {
      v45 = *(this + 9);
      if (!v45)
      {
        goto LABEL_70;
      }

      v46 = *(this + 5);
      v47 = *(this + 8);
      if (!*(v46 + ((v47 >> 5) & 0x7FFFFFFFFFFFFF8)))
      {
        goto LABEL_70;
      }

      v48 = v47 + 1;
      *(this + 8) = v48;
      *(this + 9) = v45 - 1;
      if (v48 >= 0x200)
      {
        operator delete(*v46);
        *(this + 5) += 8;
        *(this + 8) -= 256;
      }
    }

    v49 = *(this + 15);
    if (v49)
    {
      v50 = *(this + 11);
      v51 = *(this + 14);
      if (*(v50 + ((((v51 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
      {
        v52 = v51 + 1;
        *(this + 14) = v52;
        *(this + 15) = v49 - 1;
        if (v52 >= 0x154)
        {
          operator delete(*v50);
          *(this + 11) += 8;
          *(this + 14) -= 170;
        }

        goto LABEL_68;
      }
    }

    goto LABEL_70;
  }

  v30 = *(a2 + 11);
  if (v30)
  {
    v30 = *(v30 + 8) - *(a2 + 12);
  }

  v31 = *(a2 + 2);
  v32 = *(a2 + 3) + v31 + *(a2 + 2);
  v14 = (v30 - v32);
  if (v30 == v32)
  {
    goto LABEL_72;
  }

  *(a2 + 3) = 0;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, v31);
  v33 = *(a2 + 11);
  if (v33)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v33 + 8) - *(a2 + 12));
  }

  *(a2 + 3) = v14;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, v14 + *(a2 + 2));
  v34 = *(a2 + 2);
  v35 = *(a2 + 11);
  if (v35)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v35 + 8) - *(a2 + 12));
    v36 = *(*(a2 + 11) + 16) + *(a2 + 12);
    if (!*(this + 15))
    {
      goto LABEL_70;
    }
  }

  else
  {
    v36 = 0;
    if (!*(this + 15))
    {
LABEL_70:
      __break(1u);
LABEL_71:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 264, "index + kLengthFieldSize + fragment.size() <= payload_capacity", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v18, v19, v20, v21, v8);
LABEL_72:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 252, "payload_capacity >= kNalHeaderSize", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v14);
      goto LABEL_73;
    }
  }

  v53 = *(*(this + 11) + 8 * (*(this + 14) / 0xAAuLL)) + 24 * (*(this + 14) % 0xAAuLL);
  if ((*(v53 + 16) & 1) == 0)
  {
LABEL_73:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 256, "packet->first_fragment", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v18, v19, v20, v21, v73);
    goto LABEL_74;
  }

  v54 = v36 + v34;
  *(v36 + v34) = *(v53 + 19) & 0xE0 | 0x18;
  v55 = *(v53 + 17);
  if (*(v53 + 18) == 1)
  {
    v56 = 1;
    while (1)
    {
      v57 = *(v53 + 8);
      v8 = v57 + v56 + 2;
      if (v8 > v14)
      {
        goto LABEL_71;
      }

      v58 = *v53;
      if (v57)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      *(v54 + v56) = bswap32(v57) >> 16;
      memcpy((v54 + v56 + 2), v59, v57);
      v60 = *(this + 15);
      if (!v60)
      {
        goto LABEL_70;
      }

      v61 = *(this + 11);
      v62 = *(this + 14);
      if (!*(v61 + ((((v62 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_70;
      }

      v63 = v62 + 1;
      *(this + 14) = v63;
      *(this + 15) = v60 - 1;
      if (v63 >= 0x154)
      {
        operator delete(*v61);
        *(this + 11) += 8;
        *(this + 14) -= 170;
      }

      v64 = *(this + 9);
      if (!v64)
      {
        goto LABEL_70;
      }

      v65 = *(this + 5);
      v66 = *(this + 8);
      if (!*(v65 + ((v66 >> 5) & 0x7FFFFFFFFFFFFF8)))
      {
        goto LABEL_70;
      }

      v67 = v66 + 1;
      *(this + 8) = v67;
      *(this + 9) = v64 - 1;
      if (v67 >= 0x200)
      {
        operator delete(*v65);
        *(this + 5) += 8;
        *(this + 8) -= 256;
      }

      if (v55)
      {
        goto LABEL_66;
      }

      if (!*(this + 15))
      {
        goto LABEL_70;
      }

      v53 = *(*(this + 11) + 8 * (*(this + 14) / 0xAAuLL)) + 24 * (*(this + 14) % 0xAAuLL);
      v55 = *(v53 + 17);
      v56 = v8;
      if ((*(v53 + 18) & 1) == 0)
      {
        goto LABEL_65;
      }
    }
  }

  v8 = 1;
LABEL_65:
  if (v55)
  {
LABEL_66:
    *(a2 + 3) = v8;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v8);
    v68 = *(a2 + 11);
    if (v68)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v68 + 8) - *(a2 + 12));
    }

    goto LABEL_68;
  }

LABEL_74:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_h264.cc", 278, "is_last_fragment", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v18, v19, v20, v21, v73);
  return std::deque<webrtc::ArrayView<unsigned char const,-4711l>>::__add_back_capacity();
}

void *std::deque<webrtc::ArrayView<unsigned char const,-4711l>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v11);
}

void *std::deque<webrtc::RtpPacketizerH264::PacketUnit>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

void webrtc::RtpPacketizerGeneric::~RtpPacketizerGeneric(webrtc::RtpPacketizerGeneric *this)
{
  *this = &unk_28829BF28;
  v1 = *(this + 5);
  if (v1)
  {
    *(this + 6) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829BF28;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpPacketizerGeneric::NextPacket(webrtc::RtpPacketizerGeneric *this, webrtc::RtpPacketToSend *a2)
{
  v2 = *(this + 6);
  v3 = *(this + 8);
  if (v3 == v2)
  {
    return v3 != v2;
  }

  v6 = *v3;
  v7 = *(this + 2) + v6;
  *(a2 + 3) = 0;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
  v8 = *(a2 + 11);
  if (v8)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v8 + 8) - *(a2 + 12));
  }

  *(a2 + 3) = v7;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v7);
  v13 = *(a2 + 11);
  if (v13)
  {
    v14 = *(a2 + 2);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v13 + 8) - *(a2 + 12));
    v15 = *(*(a2 + 11) + 16);
    if (v15)
    {
      v16 = *(a2 + 12) + v14;
      v17 = v15 + v16;
      v18 = *(this + 2);
      if (v18)
      {
        memcpy((v15 + v16), this + 8, v18);
        *(this + 8) &= ~2u;
        v19 = *(this + 2);
      }

      else
      {
        v19 = 0;
      }

      memcpy((v17 + v19), *(this + 3), v6);
      v20 = *(this + 4);
      if (v20 <= v6)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v21 = *(this + 3) + v6;
        if (v20 - v6 < v20)
        {
          v20 -= v6;
        }
      }

      *(this + 3) = v21;
      *(this + 4) = v20;
      *(this + 8) += 4;
      v22 = v20 == 0;
      *a2 = v20 == 0;
      v23 = *(a2 + 12);
      v24 = *(*(*(a2 + 11) + 16) + v23 + 1);
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(*(a2 + 11) + 8) - v23);
      *(*(*(a2 + 11) + 16) + *(a2 + 12) + 1) = v24 & 0x7F | (v22 << 7);
      return v3 != v2;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_video_generic.cc", 66, "out_ptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v28);
  return webrtc::RtpPacketizerVp8::BuildHeader(v26, v27);
}

uint64_t webrtc::RtpPacketizerVp8::BuildHeader@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 6);
  v3 = *(result + 8);
  v4 = *(result + 4);
  v5 = *(result + 2);
  if (v4 == 0xFFFF)
  {
    v6 = (v5 != 0xFFFF) << 7;
  }

  else
  {
    v6 = ((v5 != 0xFFFF) << 7) | 0x40;
  }

  if (v2 != 255)
  {
    v6 |= 0x20u;
  }

  v7 = v6 | 0x10;
  if (v3 == -1)
  {
    v7 = v6;
  }

  if (*result)
  {
    v8 = ((v7 != 0) << 7) | 0x20;
  }

  else
  {
    v8 = (v7 != 0) << 7;
  }

  *(a2 + 8) = v8 | 0x10;
  v9 = a2 + 8;
  *a2 = 2;
  if (v7)
  {
    *(a2 + 9) = v7;
    v10 = 4;
    *a2 = 4;
    if (v5 == 0xFFFF)
    {
      if (v4 == 0xFFFF)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 10) = BYTE1(v5) | 0x80;
      *(a2 + 11) = v5;
      v10 = 8;
      *a2 = 8;
      if (v4 == 0xFFFF)
      {
LABEL_14:
        if (v2 != 255)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    *(v9 + (v10 >> 1)) = v4;
    v10 |= 2uLL;
    *a2 = v10;
    if (v2 != 255)
    {
LABEL_20:
      v11 = v2 << 6;
      if (*(result + 7))
      {
        v11 = (v2 << 6) | 0x20;
      }

      if (v2 == 255)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (v3 == -1)
      {
        v13 = 0;
      }

      else
      {
        v13 = v3 & 0x1F;
      }

      *(v9 + (v10 >> 1)) = v12 | v13;
      *a2 += 2;
      return result;
    }

LABEL_18:
    if (v3 == -1)
    {
      return result;
    }

    goto LABEL_20;
  }

  return result;
}

void webrtc::RtpPacketizerVp8::~RtpPacketizerVp8(webrtc::RtpPacketizerVp8 *this)
{
  *this = &unk_28829BF58;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 8))
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_28829BF58;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 8))
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpPacketizerVp8::NextPacket(webrtc::RtpPacketizerVp8 *this, webrtc::RtpPacketToSend *a2)
{
  v2 = *(this + 7);
  v3 = *(this + 9);
  if (v3 == v2)
  {
    return v3 != v2;
  }

  v6 = *v3;
  *(this + 9) = v3 + 1;
  v7 = v6 + (*(this + 1) >> 1);
  *(a2 + 3) = 0;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
  v8 = *(a2 + 11);
  if (v8)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v8 + 8) - *(a2 + 12));
  }

  *(a2 + 3) = v7;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v7);
  v13 = *(a2 + 11);
  if (v13)
  {
    v14 = *(a2 + 2);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v13 + 8) - *(a2 + 12));
    v15 = *(*(a2 + 11) + 16);
    if (v15)
    {
      v16 = (v15 + *(a2 + 12) + v14);
      v17 = *(this + 1);
      v18 = (this + 16);
      v19 = (this + 16);
      if (v17)
      {
        v19 = *v18;
      }

      memcpy(v16, v19, v17 >> 1);
      memcpy(&v16[*(this + 1) >> 1], *(this + 4), v6);
      v20 = *(this + 5);
      if (v20 <= v6)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v21 = *(this + 4) + v6;
        if (v20 - v6 < v20)
        {
          v20 -= v6;
        }
      }

      *(this + 4) = v21;
      *(this + 5) = v20;
      v22 = *(this + 1);
      if (v22 > 1)
      {
        if (v22)
        {
          v18 = *v18;
        }

        *v18 &= ~0x10u;
        v23 = *(this + 9) == *(this + 7);
        *a2 = v23;
        v24 = *(a2 + 12);
        v25 = *(*(*(a2 + 11) + 16) + v24 + 1);
        webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(*(a2 + 11) + 8) - v24);
        *(*(*(a2 + 11) + 16) + *(a2 + 12) + 1) = v25 & 0x7F | (v23 << 7);
        return v3 != v2;
      }

      __break(1u);
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp8.cc", 88, "buffer", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v9, v10, v11, v12, v33);
  return webrtc::RtpPacketizerVp9::RtpPacketizerVp9(v27, v28, v29, v30, v31, v32);
}

void webrtc::RtpPacketizerVp9::RtpPacketizerVp9(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8)
{
  v60 = a5;
  *a1 = &unk_28829BF88;
  v9 = (a1 + 8);
  v10 = __src[4];
  if (v10 >= 9)
  {
LABEL_66:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 291, "original_header.num_spatial_layers <= kMaxVp9NumberOfSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, __src, a7, a8, v10);
LABEL_67:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 322, "hdr_.first_active_layer == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v16, v17, v18, v19, v49);
    goto LABEL_68;
  }

  v12 = HIDWORD(a5);
  memcpy(v9, __src, 0x668uLL);
  if (__src[5])
  {
    v20 = *(a1 + 40);
    if (v20 - 9 >= 0xFFFFFFFFFFFFFFF8)
    {
      v21 = *(a1 + 48);
      v22 = v20 - v21;
      if (v20 > v21)
      {
        v23 = *(a1 + 48);
        if (v22 <= 0xF)
        {
          goto LABEL_6;
        }

        v53 = 2 * v21;
        v23 = *(a1 + 48);
        if (-2 * v21 < 0x10)
        {
          goto LABEL_6;
        }

        v23 = *(a1 + 48);
        if (v53 > 0xFFFFFFFFFFFFFFEFLL)
        {
          goto LABEL_6;
        }

        v23 = *(a1 + 48);
        if (v53 - 1 < 0x10)
        {
          goto LABEL_6;
        }

        v23 = v21 + (v22 & 0xFFFFFFFFFFFFFFF8);
        v54 = v22 & 0xFFFFFFFFFFFFFFF8;
        v55 = a1;
        do
        {
          *(v55 + 58) = *(v55 + v53 + 58);
          *(v55 + 74) = *(v55 + v53 + 74);
          v55 += 16;
          v54 -= 8;
        }

        while (v54);
        if (v22 != (v22 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_6:
          v24 = v20 - v23;
          v25 = a1 + 2 * v23;
          do
          {
            v26 = v25 - 2 * v21;
            *(v26 + 58) = *(v25 + 58);
            *(v26 + 74) = *(v25 + 74);
            v25 += 2;
            --v24;
          }

          while (v24);
        }
      }

      if (v22 < v20)
      {
        v27 = v20 - v21;
        if (v21 <= 7)
        {
          goto LABEL_13;
        }

        v27 = v22 + (v21 & 0xFFFFFFFFFFFFFFF8);
        v28 = (a1 - 2 * v21 + 2 * v20 + 74);
        v29 = v21 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *(v28 - 1) = 0uLL;
          *v28++ = 0uLL;
          v29 -= 8;
        }

        while (v29);
        if (v21 != (v21 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_13:
          v30 = v20 - v27;
          v31 = (a1 + 2 * v27 + 74);
          do
          {
            *(v31 - 8) = 0;
            *v31++ = 0;
            --v30;
          }

          while (v30);
        }
      }

      *(a1 + 21) -= v21;
      *(a1 + 40) = v22;
      *(a1 + 48) = 0;
    }
  }

  LODWORD(v32) = 0;
  if (*(a1 + 8) == 1 && (*(a1 + 9) & 1) != 0)
  {
    v32 = *(a1 + 25);
    if (!*(a1 + 25))
    {
LABEL_68:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 99, "hdr.num_ref_pics > 0U", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, 0);
      goto LABEL_69;
    }

    if (v32 >= 4)
    {
LABEL_70:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 100, "hdr.num_ref_pics <= kMaxVp9RefPics", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v32);
      goto LABEL_71;
    }
  }

  if (*(a1 + 16) == 127)
  {
    v33 = 2;
  }

  else
  {
    v33 = 3;
  }

  if (*(a1 + 14) == 0xFFFF)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (*(a1 + 9))
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  if ((*(a1 + 20) & *(a1 + 21)) == 0xFF)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  v37 = v36 + v34 + v32;
  *(a1 + 1648) = v37;
  if (*(a1 + 12) == 1)
  {
    v38 = *(a1 + 40);
    if (!v38)
    {
LABEL_69:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 128, "hdr.num_spatial_layers > 0U", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, 0);
      goto LABEL_70;
    }

    if (v38 >= 9)
    {
LABEL_71:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 129, "hdr.num_spatial_layers <= kMaxVp9NumberOfSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v38);
      goto LABEL_72;
    }

    v39 = *(a1 + 96);
    if (v39 >= 0x100)
    {
LABEL_72:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 130, "hdr.gof.num_frames_in_gof <= kMaxVp9FramesInGof", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v39);
      webrtc::RtpPacketizerVp9::~RtpPacketizerVp9(v56);
      return;
    }

    v40 = 4 * v38;
    if (*(a1 + 56))
    {
      v41 = v40 + 1;
    }

    else
    {
      v41 = 1;
    }

    if (v39)
    {
      v42 = v39 + 1;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 + v41;
    if (v39)
    {
      v44 = (a1 + 614);
      while (1)
      {
        v46 = *v44++;
        v45 = v46;
        if (v46 >= 4)
        {
          break;
        }

        v43 += v45;
        if (!--v39)
        {
          goto LABEL_48;
        }
      }

      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 141, "hdr.gof.num_ref_pics[i] <= kMaxVp9RefPics", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v45);
      goto LABEL_66;
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_48:
  *(a1 + 1652) = v43;
  if (a3)
  {
    v47 = a2;
  }

  else
  {
    v47 = 0;
  }

  *(a1 + 1656) = v47;
  *(a1 + 1664) = a3;
  v48 = (a1 + 1672);
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  v49 = *(a1 + 48);
  if (v49)
  {
    goto LABEL_67;
  }

  v59[0] = a4 - v37;
  v59[1] = v43 + HIDWORD(a4);
  HIDWORD(v60) = v43 + v12;
  if (a3)
  {
    webrtc::RtpPacketizer::SplitAboutEqually(a3, v59, &v57);
    v50 = *v48;
    if (*v48)
    {
      *(a1 + 1680) = v50;
      operator delete(v50);
    }

    v51 = v57;
    *v48 = v57;
    *(a1 + 1688) = v58;
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 1696) = v52;
}

void webrtc::RtpPacketizerVp9::~RtpPacketizerVp9(webrtc::RtpPacketizerVp9 *this)
{
  *this = &unk_28829BF88;
  v1 = *(this + 209);
  if (v1)
  {
    *(this + 210) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829BF88;
  v2 = *(this + 209);
  if (v2)
  {
    *(this + 210) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpPacketizerVp9::NextPacket(webrtc::RtpPacketizerVp9 *this, webrtc::RtpPacketToSend *a2)
{
  v2 = *(this + 210);
  v3 = *(this + 212);
  if (v3 == v2)
  {
    return 0;
  }

  v6 = *(this + 209);
  v8 = v3 + 1;
  v7 = *v3;
  *(this + 212) = v3 + 1;
  v9 = *(this + 412);
  if (v3 == v6)
  {
    v9 += *(this + 413);
  }

  __n = v7;
  v10 = v7 + v9;
  *(a2 + 3) = 0;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
  v11 = *(a2 + 11);
  if (v11)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v11 + 8) - *(a2 + 12));
  }

  *(a2 + 3) = v10;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v10);
  v16 = *(a2 + 11);
  if (!v16 || (v17 = *(a2 + 2), webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v16 + 8) - *(a2 + 12)), (v20 = *(*(a2 + 11) + 16)) == 0))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 355, "buffer", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v89);
LABEL_92:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 366, "hdr_.spatial_idx < hdr_.num_spatial_layers - 1 || hdr_.end_of_picture", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v67, v68, v69, v70, v89);
  }

  v21 = v20 + *(a2 + 12) + v17;
  v22 = v9;
  if (v9)
  {
    v23 = (v20 + *(a2 + 12) + v17);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(this + 8);
  v25 = *(this + 7);
  v26 = (*(this + 21) & *(this + 20)) != 255;
  v27 = *(this + 9);
  v28 = *(this + 12);
  v29 = *(this + 13);
  v91 = v23;
  v92 = v9;
  if ((v9 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  v30 = (v3 == v6) & v28;
  if (v26)
  {
    v31 = 32;
  }

  else
  {
    v31 = 0;
  }

  if (((v3 == v6) & v28) != 0)
  {
    v32 = 2;
  }

  else
  {
    v32 = 0;
  }

  v93 = xmmword_273B91FB0;
  *v23 = ((v25 != 0xFFFF) << 7) | (v24 << 6) | v31 | (16 * v27) | (8 * (v3 == v6)) | (4 * (v8 == v2)) | v32 | v29;
  if (v25 == 0xFFFF)
  {
    v44 = v21;
    v45 = 1;
    if (!v26)
    {
      goto LABEL_54;
    }

    goto LABEL_39;
  }

  v34 = *(this + 7) != -1 && *(this + 8) != 127;
  if (v9 == 1)
  {
    goto LABEL_32;
  }

  if (v34)
  {
    v35 = 0x80;
  }

  else
  {
    v35 = 0;
  }

  v23[1] = v35 & 0x80 | v23[1] & 0x7F;
  v36 = 7;
  if (v34)
  {
    v36 = 15;
  }

  if (8 * v9 - 9 < v36)
  {
LABEL_32:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_61;
    }

    return 0;
  }

  v46 = *(this + 7) << -v36;
  v23[1] = v35 | (v46 >> 57);
  if (v34)
  {
    v23[2] = v46 >> 49;
  }

  v44 = v21;
  v45 = ((v36 + 1) >> 3) + 1;
  v93 = v45;
  if (v26)
  {
LABEL_39:
    if (((v92 - v45) & 0x1FFFFFFFFFFFFFFFLL) == 0 || ((v47 = *(this + 20), v47 != -1) ? (v48 = 32 * v47) : (v48 = 0), (v91[v45] = v48 & 0xE0 | v91[v45] & 0x1F, *&v93 = v45, *(&v93 + 1) = 3, v49 = v27, !webrtc::BitBufferWriter::WriteBits(&v91, *(this + 22), 1uLL)) || (*(this + 21) != 255 ? (v50 = *(this + 21)) : (v50 = 0), !webrtc::BitBufferWriter::WriteBits(&v91, v50, 3uLL) || !webrtc::BitBufferWriter::WriteBits(&v91, *(this + 23), 1uLL) || (v27 = v49, (*(this + 9) & 1) == 0) && (*(this + 9) != 0xFFFF ? (v51 = *(this + 9)) : (v51 = 0), v52 = webrtc::BitBufferWriter::WriteBits(&v91, v51, 8uLL), v27 = v49, (v52 & 1) == 0))))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_61:
        webrtc::webrtc_logging_impl::Log("\r\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc");
      }

      return 0;
    }
  }

LABEL_54:
  if ((v24 & 1) != 0 && v27)
  {
    if (*(this + 7) != -1)
    {
      LODWORD(v53) = *(this + 25);
      if ((v53 - 4) >= 0xFFFFFFFD)
      {
        v55 = 0;
        v57 = *(&v93 + 1);
        v56 = v93;
        v59 = v91;
        v58 = v92;
        while ((8 * (v58 - v56) - v57) >= 7)
        {
          v60 = *(this + v55 + 26);
          v61 = &v59[v56];
          v12 = 8 - v57;
          if ((8 - v57) >= 7)
          {
            v62 = 7;
          }

          else
          {
            v62 = 8 - v57;
          }

          v15 = *v61;
          v14 = (2 * (v60 & 0x7F)) >> v57;
          v13 = v14 | v15 & ~(((255 << (8 - v62)) & 0xFEu) >> v57);
          *v61 = v13;
          if (v12 <= 6)
          {
            v63 = (v60 << 57 << v12) >> 56;
            v13 = v61[1];
            v12 = ((255 << (9 - v57)) & 0x7E ^ 0x7F) & v13;
            v61[1] = ((-1 << (9 - v57)) & 0x7E ^ 0x7F) & v13 | v63;
          }

          v64 = v57 + 7;
          v65 = v56 + (v64 >> 3);
          v66 = v64 & 7;
          if (v66 == 8 * (v58 - v65))
          {
            break;
          }

          v19 = (-129 >> v66);
          v18 = (v19 & v59[v65]);
          v59[v65] = v19 & v59[v65] | (((v55 != v53 - 1) << 7) >> v66);
          v56 = v65 + ((v66 + 1) >> 3);
          v57 = (v66 + 1) & 7;
          ++v55;
          v53 = *(this + 25);
          if (v55 >= v53)
          {
            *&v93 = v56;
            *(&v93 + 1) = v57;
            goto LABEL_73;
          }
        }
      }
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_61;
  }

LABEL_73:
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_61;
  }

  memcpy((v44 + v22), *(this + 207), __n);
  v71 = *(this + 208);
  if (v71 <= __n)
  {
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v72 = *(this + 207) + __n;
    if (v71 - __n < v71)
    {
      v71 -= __n;
    }
  }

  *(this + 207) = v72;
  *(this + 208) = v71;
  if (*(this + 5) - 1 <= *(this + 21) && (*(this + 1640) & 1) == 0)
  {
    goto LABEL_92;
  }

  if (v8 == v2)
  {
    v73 = *(this + 1640);
  }

  else
  {
    v73 = 0;
  }

  v74 = *(a2 + 11);
  v75 = *(a2 + 12);
  v77 = *(v74 + 8);
  v76 = *(v74 + 16);
  v78 = v73 & 1;
  *a2 = v78;
  v79 = *(v76 + v75 + 1);
  if (v78)
  {
    v80 = 0x80;
  }

  else
  {
    v80 = 0;
  }

  webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, v77 - v75);
  *(*(*(a2 + 11) + 16) + *(a2 + 12) + 1) = v80 & 0x80 | v79 & 0x7F;
  return 1;
}

uint64_t webrtc::anonymous namespace::WriteSsData(uint64_t a1, webrtc::BitBufferWriter *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (!v9)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 250, "vp9.num_spatial_layers > 0U", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 0);
    goto LABEL_32;
  }

  if (v9 >= 9)
  {
LABEL_32:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 251, "vp9.num_spatial_layers <= kMaxVp9NumberOfSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v9);
    goto LABEL_33;
  }

  v8 = *(a1 + 88);
  if (v8 >= 0x100)
  {
LABEL_33:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_format_vp9.cc", 252, "vp9.gof.num_frames_in_gof <= kMaxVp9FramesInGof", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v8);
    return webrtc::internal::RtpFrameReferenceFinderImpl::ManageFrame(v19);
  }

  result = webrtc::BitBufferWriter::WriteBits(this, v9 - 1, 3uLL);
  if (result)
  {
    result = webrtc::BitBufferWriter::WriteBits(this, *(a1 + 48), 1uLL);
    if (result)
    {
      result = webrtc::BitBufferWriter::WriteBits(this, v8 != 0, 1uLL);
      if (result)
      {
        result = webrtc::BitBufferWriter::WriteBits(this, 0, 3uLL);
        if (result)
        {
          if (*(a1 + 48) == 1 && *(a1 + 32))
          {
            v13 = 0;
            v14 = (a1 + 66);
            while (1)
            {
              result = webrtc::BitBufferWriter::WriteBits(this, *(v14 - 8), 0x10uLL);
              if (!result)
              {
                break;
              }

              if ((webrtc::BitBufferWriter::WriteBits(this, *v14, 0x10uLL) & 1) == 0)
              {
                return 0;
              }

              ++v13;
              ++v14;
              if (v13 >= *(a1 + 32))
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (!v8 || (result = webrtc::BitBufferWriter::WriteBits(this, *(a1 + 88), 8uLL), result))
            {
              if (*(a1 + 88))
              {
                v15 = 0;
                v16 = a1 + 606;
                v17 = a1 + 861;
                do
                {
                  result = webrtc::BitBufferWriter::WriteBits(this, *(a1 + 96 + v15), 3uLL);
                  if (!result)
                  {
                    break;
                  }

                  result = webrtc::BitBufferWriter::WriteBits(this, *(a1 + 351 + v15), 1uLL);
                  if (!result)
                  {
                    break;
                  }

                  result = webrtc::BitBufferWriter::WriteBits(this, *(v16 + v15), 2uLL);
                  if (!result)
                  {
                    break;
                  }

                  result = webrtc::BitBufferWriter::WriteBits(this, 0, 2uLL);
                  if (!result)
                  {
                    break;
                  }

                  if (*(v16 + v15))
                  {
                    v18 = 0;
                    while ((webrtc::BitBufferWriter::WriteBits(this, *(v17 + v18), 8uLL) & 1) != 0)
                    {
                      if (++v18 >= *(v16 + v15))
                      {
                        goto LABEL_18;
                      }
                    }

                    return 0;
                  }

LABEL_18:
                  ++v15;
                  v17 += 3;
                  result = 1;
                }

                while (v15 < *(a1 + 88));
              }

              else
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

webrtc::RtpFrameObject *webrtc::internal::RtpFrameReferenceFinderImpl::ManageFrame@<X0>(webrtc::RtpFrameObject *this@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t *a7@<X8>)
{
  v8 = this;
  v9 = this + 73728;
  v10 = *a2;
  if (*(*a2 + 2656) != 1)
  {
    v15 = *(v10 + 4552);
    if (v15)
    {
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          if (*(v10 + 4448) == 1)
          {
            if (*(v10 + 2814) != 255 && *(v10 + 2812) != 0xFFFF)
            {
              if (this)
              {
                v24 = *(this + 19364);
                if (v24 == 4)
                {
                  goto LABEL_94;
                }
              }

              else
              {
                v24 = MEMORY[0x12E90];
              }

              if (v24 != -1)
              {
                v42 = a7;
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v24])(&v67, this);
                a7 = v42;
              }

              *v8 = 0u;
              *(v8 + 16) = 0;
              *(v8 + 6) = 0u;
              *(v8 + 7) = 0u;
              *(v8 + 4) = 0u;
              *(v8 + 5) = 0u;
              *(v8 + 2) = 0u;
              *(v8 + 3) = 0u;
              *(v8 + 1) = 0u;
              *v8 = -1;
              *(v8 + 3) = 0;
              *(v8 + 2) = 0;
              *(v8 + 1) = v8 + 16;
              *(v8 + 12) = 0;
              *(v8 + 11) = 0;
              *(v8 + 10) = v8 + 88;
              *(v9 + 932) = 4;
              v10 = *a2;
LABEL_94:
              *a2 = 0;
              v64 = v10;
              webrtc::RtpVp8RefFinder::ManageFrame(v8, &v64, a7);
              this = v64;
              v64 = 0;
              if (this)
              {
                return (*(*this + 8))(this);
              }

              return this;
            }

            v17 = *(v10 + 2810);
            if (v17 != 0xFFFF)
            {
              if (this)
              {
                v18 = *(this + 19364);
                if (v18 == 2)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                v18 = MEMORY[0x12E90];
              }

              if (v18 != -1)
              {
                v46 = a7;
                this = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v18])(&v67, this);
                a7 = v46;
              }

              *v8 = 0;
              *(v8 + 1) = 0;
              *(v9 + 932) = 2;
              LOWORD(v17) = *(v10 + 2810);
              goto LABEL_106;
            }

            if (this)
            {
              v41 = *(this + 19364);
              if (v41 == 3)
              {
                goto LABEL_130;
              }
            }

            else
            {
              v41 = MEMORY[0x12E90];
            }

            if (v41 != -1)
            {
              v58 = a7;
              (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v41])(&v67, this);
              a7 = v58;
            }

            *(v8 + 40) = 0u;
            *(v8 + 24) = 0u;
            *(v8 + 56) = 0u;
            *(v8 + 72) = 0u;
            *(v8 + 88) = 0u;
            *(v8 + 13) = 0;
            *(v8 + 8) = 0u;
            *v8 = v8 + 8;
            *(v8 + 5) = 0;
            *(v8 + 4) = 0;
            *(v8 + 3) = v8 + 32;
            *(v8 + 3) = 0u;
            *(v8 + 4) = 0u;
            *(v8 + 5) = 0u;
            *(v8 + 89) = 0u;
            *(v9 + 932) = 3;
            v10 = *a2;
LABEL_130:
            *a2 = 0;
            v65 = v10;
            webrtc::RtpSeqNumOnlyRefFinder::ManageFrame(v8, &v65, a7);
            this = v65;
            v65 = 0;
            if (this)
            {
              return (*(*this + 8))(this);
            }

            return this;
          }

LABEL_133:
          v59 = std::__throw_bad_variant_access[abi:sn200100]();
          return webrtc::internal::RtpFrameReferenceFinderImpl::GetRefFinderAs<webrtc::RtpSeqNumOnlyRefFinder>(v59);
        }

        if (this)
        {
          v22 = *(this + 19364);
          if (v22 == 3)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v22 = MEMORY[0x12E90];
        }

        if (v22 != -1)
        {
          v25 = a7;
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v22])(&v67, this);
          a7 = v25;
        }

        *(v8 + 40) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 13) = 0;
        *(v8 + 8) = 0u;
        *v8 = v8 + 8;
        *(v8 + 5) = 0;
        *(v8 + 4) = 0;
        *(v8 + 3) = v8 + 32;
        *(v8 + 3) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 5) = 0u;
        *(v8 + 89) = 0u;
        *(v9 + 932) = 3;
        v10 = *a2;
LABEL_47:
        *a2 = 0;
        v60 = v10;
        webrtc::RtpSeqNumOnlyRefFinder::ManageFrame(v8, &v60, a7);
        this = v60;
        v60 = 0;
        if (this)
        {
          return (*(*this + 8))(this);
        }

        return this;
      }

      if (*(v10 + 4448) != 2)
      {
        goto LABEL_133;
      }

      if (*(v10 + 2820) == 255)
      {
        v17 = *(v10 + 2814);
        if (v17 == 0xFFFF)
        {
          v43 = a7;
          v44 = webrtc::internal::RtpFrameReferenceFinderImpl::GetRefFinderAs<webrtc::RtpSeqNumOnlyRefFinder>(this);
          v45 = *a2;
          *a2 = 0;
          v63 = v45;
          webrtc::RtpSeqNumOnlyRefFinder::ManageFrame(v44, &v63, v43);
          this = v63;
          v63 = 0;
          if (this)
          {
            return (*(*this + 8))(this);
          }

          return this;
        }

        if (this)
        {
          v26 = *(this + 19364);
          if (v26 == 2)
          {
LABEL_107:
            *a2 = 0;
            *(v10 + 192) = 0;
            *(v10 + 196) = 1;
            v48 = v17 & 0x7FFF;
            if (*(v8 + 10))
            {
              v49 = *(v8 + 4);
              v50 = v48 - v49;
              v51 = (v48 - v49) ^ 0x8000;
              v52 = v49 >= v48;
              v53 = v49 - v48;
              if (v53 != 0 && v52)
              {
                v50 = v51;
              }

              v54 = !v52;
              if (!v52)
              {
                LOWORD(v53) = v53 ^ 0x8000;
              }

              v53 = v53;
              if (v50 < v53)
              {
                v53 = v50;
              }

              if (v53 == 0x4000)
              {
                v55 = v54;
              }

              else
              {
                v55 = v50 <= 0x4000u;
              }

              if (v55)
              {
                v56 = v50;
              }

              else
              {
                v56 = v50 - 0x8000;
              }

              v57 = v56 + *v8;
            }

            else
            {
              v57 = v48;
            }

            *v8 = v57;
            *(v8 + 4) = v48;
            *(v8 + 10) = 1;
            *(v10 + 2496) = v57;
            *(v10 + 352) = *(v10 + 2664) != 3;
            *(v10 + 360) = v57 - 1;
            *a7 = 2;
            a7[1] = v10;
            return this;
          }
        }

        else
        {
          v26 = MEMORY[0x12E90];
        }

        if (v26 != -1)
        {
          v47 = a7;
          this = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v26])(&v67, this);
          a7 = v47;
        }

        *v8 = 0;
        *(v8 + 1) = 0;
        *(v9 + 932) = 2;
        LOWORD(v17) = *(v10 + 2814);
LABEL_106:
        v10 = *a2;
        goto LABEL_107;
      }

      if (this)
      {
        v19 = *(this + 19364);
        if (v19 == 5)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v19 = MEMORY[0x12E90];
      }

      v27 = a7;
      if (v19 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v19])(&v67, this);
      }

      bzero(v8, 0x12E90uLL);
      *(v9 + 441) = v8 + 77264;
      *(v8 + 77288) = 0u;
      *(v9 + 444) = v8 + 77288;
      *(v8 + 4832) = 0u;
      *(v9 + 447) = v8 + 77312;
      *(v8 + 77336) = 0u;
      *(v9 + 450) = v8 + 77336;
      *(v8 + 4835) = 0u;
      *(v9 + 453) = v8 + 77360;
      *(v8 + 77384) = 0u;
      *(v9 + 456) = v8 + 77384;
      *(v8 + 4838) = 0u;
      *(v9 + 459) = v8 + 77408;
      *(v9 + 932) = 5;
      v10 = *a2;
      a7 = v27;
LABEL_57:
      *a2 = 0;
      v62 = v10;
      webrtc::RtpVp9RefFinder::ManageFrame(v8, &v62, a3, a4, a5, a6, a7);
      this = v62;
      v62 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }

      return this;
    }

    if (*(v10 + 4448) == 4)
    {
      if (this)
      {
        v20 = *(this + 19364);
        v21 = *a2;
        if (v20 == 2)
        {
LABEL_63:
          *a2 = 0;
          v29 = *(v10 + 2808);
          *(v21 + 196) = 1;
          *(v21 + 192) = 0;
          v30 = v29 & 0x7FFF;
          v31 = v30;
          if (*(v8 + 10))
          {
            v32 = *(v8 + 4);
            v33 = v30 - v32;
            v34 = (v30 - v32) ^ 0x8000;
            v35 = v32 >= v30;
            v36 = v32 - v30;
            if (v36 != 0 && v35)
            {
              v33 = v34;
            }

            v37 = !v35;
            if (!v35)
            {
              LOWORD(v36) = v36 ^ 0x8000;
            }

            v36 = v36;
            if (v33 < v36)
            {
              v36 = v33;
            }

            if (v36 == 0x4000)
            {
              v38 = v37;
            }

            else
            {
              v38 = v33 <= 0x4000u;
            }

            if (v38)
            {
              v39 = v33;
            }

            else
            {
              v39 = v33 - 0x8000;
            }

            v31 = v39 + *v8;
          }

          *v8 = v31;
          *(v8 + 4) = v30;
          *(v8 + 10) = 1;
          *(v21 + 2496) = v31;
          *(v21 + 352) = *(v21 + 2664) != 3;
          *(v21 + 360) = v31 - 1;
          *a7 = 2;
          a7[1] = v21;
          return this;
        }
      }

      else
      {
        v20 = MEMORY[0x12E90];
      }

      if (v20 != -1)
      {
        v28 = a7;
        this = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v20])(&v67, this);
        a7 = v28;
      }

      *v8 = 0;
      *(v8 + 1) = 0;
      *(v9 + 932) = 2;
      v21 = *a2;
      goto LABEL_63;
    }

    if (this)
    {
      v23 = *(this + 19364);
      if (v23 == 3)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v23 = MEMORY[0x12E90];
    }

    if (v23 != -1)
    {
      v40 = a7;
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v23])(&v67, this);
      a7 = v40;
    }

    *(v8 + 40) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 13) = 0;
    *(v8 + 8) = 0u;
    *v8 = v8 + 8;
    *(v8 + 5) = 0;
    *(v8 + 4) = 0;
    *(v8 + 3) = v8 + 32;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 89) = 0u;
    *(v9 + 932) = 3;
    v10 = *a2;
LABEL_85:
    *a2 = 0;
    v61 = v10;
    webrtc::RtpSeqNumOnlyRefFinder::ManageFrame(v8, &v61, a7);
    this = v61;
    v61 = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }

    return this;
  }

  if (this)
  {
    v11 = *(this + 19364);
    if (v11 == 1)
    {
      goto LABEL_23;
    }

    if (v11 != -1)
    {
      goto LABEL_5;
    }

LABEL_22:
    *(this + 19364) = 1;
LABEL_23:
    *a2 = 0;
    v66 = v10;
    webrtc::RtpGenericFrameRefFinder::ManageFrame(&v66, v10 + 2512, a7);
    this = v66;
    if (v66)
    {
      return (*(*this + 8))(this);
    }

    return this;
  }

  v11 = MEMORY[0x12E90];
  if (MEMORY[0x12E90] == -1)
  {
    goto LABEL_22;
  }

LABEL_5:
  v12 = a7;
  (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v11])(&v67, this);
  v13 = *(v10 + 2656);
  *(v9 + 932) = 1;
  v14 = *a2;
  *a2 = 0;
  v66 = v14;
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_133;
  }

  webrtc::RtpGenericFrameRefFinder::ManageFrame(&v66, v10 + 2512, v12);
  this = v66;
  if (v66)
  {
    return (*(*this + 8))(this);
  }

  return this;
}

uint64_t webrtc::internal::RtpFrameReferenceFinderImpl::GetRefFinderAs<webrtc::RtpSeqNumOnlyRefFinder>(uint64_t result)
{
  v1 = result;
  if (result)
  {
    v2 = *(result + 77456);
    if (v2 == 3)
    {
      return result;
    }
  }

  else
  {
    v2 = MEMORY[0x12E90];
  }

  if (v2 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v2])(&v3, result);
  }

  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 8) = 0u;
  *v1 = v1 + 8;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = v1 + 32;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 77456) = 3;
  return v1;
}

uint64_t webrtc::RtpFrameReferenceFinder::ManageFrame@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t *a7@<X8>)
{
  v7 = result;
  v9 = *result;
  v10 = *a2;
  if (*result != -1)
  {
    v11 = *(v10 + 4556);
    if (v11 != v9)
    {
      v12 = (v9 - v11) >= 0;
      if (*result - v11 == 0x8000)
      {
        v12 = *result > v11;
      }

      if (v12)
      {
        *a7 = 0;
        return result;
      }
    }
  }

  v13 = *(result + 16);
  *a2 = 0;
  v30 = v10;
  webrtc::internal::RtpFrameReferenceFinderImpl::ManageFrame(v13, &v30, a3, a4, a5, a6, a7);
  result = v30;
  if (v30)
  {
    result = (*(*v30 + 8))(v30);
  }

  v14 = *a7;
  v17 = a7[1];
  v16 = a7 + 1;
  v15 = v17;
  if ((v14 & 1) == 0)
  {
    v15 = v16;
  }

  if (v14 >= 2)
  {
    v18 = v15 + 8 * (v14 >> 1);
    v19 = (v7 + 8);
    do
    {
      v20 = *v15;
      *(v20 + 2496) = *v19 + *(*v15 + 2496);
      v21 = *(v20 + 352);
      if (v21)
      {
        if (v21 > 3 && (v20 + 360 < (v7 + 16) ? (v22 = v19 >= v20 + 8 * v21 + 360) : (v22 = 1), v22))
        {
          v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
          v24 = vld1q_dup_f64(v19);
          v25 = (v20 + 376);
          v26 = v21 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v27 = vaddq_s64(*v25, v24);
            v25[-1] = vaddq_s64(v25[-1], v24);
            *v25 = v27;
            v25 += 2;
            v26 -= 4;
          }

          while (v26);
          if (v21 == v23)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v23 = 0;
        }

        v28 = v21 - v23;
        v29 = (v20 + 8 * v23 + 360);
        do
        {
          *v29++ += *v19;
          --v28;
        }

        while (v28);
      }

LABEL_14:
      v15 += 8;
    }

    while (v15 != v18);
  }

  return result;
}

int64x2_t *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::internal::RtpFrameReferenceFinderImpl::ClearTo(unsigned short)::ClearToVisitor> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,webrtc::RtpGenericFrameRefFinder,webrtc::RtpFrameIdOnlyRefFinder,webrtc::RtpSeqNumOnlyRefFinder,webrtc::RtpVp8RefFinder,webrtc::RtpVp9RefFinder> &>(int64x2_t *result, int64x2_t *a2)
{
  v3 = a2[3].i64[1];
  v4 = a2[4].i64[0];
  v5 = (v3 + 8 * (a2[5].i64[0] >> 9));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v5->i64[0] + 8 * (a2[5].i64[0] & 0x1FF));
  }

  v7 = *result->i64[0];
LABEL_5:
  v8 = a2[5].i64[1] + a2[5].i64[0];
  v9 = v8 >> 9;
  v10 = v8 & 0x1FF;
LABEL_6:
  v11 = v6;
  while (1)
  {
    if (v4 != v3)
    {
      if (v11 == (*(v3 + 8 * v9) + 8 * v10))
      {
        return result;
      }

      goto LABEL_12;
    }

    if (!v11)
    {
      return result;
    }

LABEL_12:
    v12 = (*v11)[284].u16[6];
    if (v12 != v7)
    {
      v13 = v7 >= v12;
      v14 = v7 - v12;
      v15 = v14 != 0 && v13;
      v16 = v14 == 0x8000 ? v15 : (v14 & 0x8000u) == 0;
      if (v16 == 1)
      {
        result = std::deque<std::unique_ptr<webrtc::RtpFrameObject>>::erase(a2 + 3, v5->i8, v6);
        v5 = result;
        v6 = v18;
        v3 = a2[3].i64[1];
        v4 = a2[4].i64[0];
        goto LABEL_5;
      }
    }

    ++v11;
    if ((v5->i64[0] + 4096) == ++v6)
    {
      v17 = v5->i64[1];
      v5 = (v5 + 8);
      v6 = v17;
      goto LABEL_6;
    }
  }
}

int64x2_t *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::internal::RtpFrameReferenceFinderImpl::ClearTo(unsigned short)::ClearToVisitor> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,webrtc::RtpGenericFrameRefFinder,webrtc::RtpFrameIdOnlyRefFinder,webrtc::RtpSeqNumOnlyRefFinder,webrtc::RtpVp8RefFinder,webrtc::RtpVp9RefFinder> &>(int64x2_t *result, int64x2_t *a2)
{
  v3 = a2[4].u64[0];
  v4 = a2[2].i64[1];
  v5 = a2[3].i64[0];
  v6 = (v4 + 8 * (v3 >> 8));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6->i64[0] + 16 * v3);
  }

  v8 = *result->i64[0];
LABEL_5:
  v9 = v7;
  while (1)
  {
    if (v5 != v4)
    {
      if (v9 == (*(v4 + 8 * ((a2[4].i64[1] + a2[4].i64[0]) >> 8)) + 16 * (a2[4].i8[8] + a2[4].i8[0])))
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!v9)
    {
      return result;
    }

LABEL_11:
    v10 = *(*(v9 + 1) + 4556);
    if (v10 != v8)
    {
      v11 = v8 >= v10;
      v12 = v8 - v10;
      v13 = v12 != 0 && v11;
      v14 = v12 == 0x8000 ? v13 : (v12 & 0x8000u) == 0;
      if (v14 == 1)
      {
        result = std::deque<webrtc::RtpVp8RefFinder::UnwrappedTl0Frame>::erase(a2 + 2, v6->i8, v7);
        v6 = result;
        v7 = v16;
        v4 = a2[2].i64[1];
        v5 = a2[3].i64[0];
        goto LABEL_5;
      }
    }

    v7 += 16;
    v9 += 16;
    if ((v6->i64[0] + 4096) == v7)
    {
      v15 = v6->i64[1];
      v6 = (v6 + 8);
      v7 = v15;
      goto LABEL_5;
    }
  }
}

int64x2_t *std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::internal::RtpFrameReferenceFinderImpl::ClearTo(unsigned short)::ClearToVisitor> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,webrtc::RtpGenericFrameRefFinder,webrtc::RtpFrameIdOnlyRefFinder,webrtc::RtpSeqNumOnlyRefFinder,webrtc::RtpVp8RefFinder,webrtc::RtpVp9RefFinder> &>(int64x2_t *result, int64x2_t *a2)
{
  v3 = a2[2].u64[0];
  v4 = a2->i64[1];
  v5 = a2[1].i64[0];
  v6 = (v4 + 8 * (v3 >> 8));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6->i64[0] + 16 * v3);
  }

  v8 = *result->i64[0];
LABEL_5:
  v9 = v7;
  while (1)
  {
    if (v5 != v4)
    {
      if (v9 == (*(v4 + 8 * ((a2[2].i64[1] + a2[2].i64[0]) >> 8)) + 16 * (a2[2].i8[8] + a2[2].i8[0])))
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!v9)
    {
      return result;
    }

LABEL_11:
    v10 = *(*(v9 + 1) + 4556);
    if (v10 != v8)
    {
      v11 = v8 >= v10;
      v12 = v8 - v10;
      v13 = v12 != 0 && v11;
      v14 = v12 == 0x8000 ? v13 : (v12 & 0x8000u) == 0;
      if (v14 == 1)
      {
        result = std::deque<webrtc::RtpVp8RefFinder::UnwrappedTl0Frame>::erase(a2, v6->i8, v7);
        v6 = result;
        v7 = v16;
        v4 = a2->i64[1];
        v5 = a2[1].i64[0];
        goto LABEL_5;
      }
    }

    v7 += 16;
    v9 += 16;
    if ((v6->i64[0] + 4096) == v7)
    {
      v15 = v6->i64[1];
      v6 = (v6 + 8);
      v7 = v15;
      goto LABEL_5;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS9_23RtpFrameIdOnlyRefFinderENS9_22RtpSeqNumOnlyRefFinderENS9_15RtpVp8RefFinderENS9_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v4 == v3)
  {
    v4 = *(a2 + 56);
    *(a2 + 88) = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v5 = *(a2 + 80);
  v6 = &v3[v5 >> 9];
  v7 = *v6;
  v8 = (*v6 + 8 * (v5 & 0x1FF));
  v9 = *(v3 + (((*(a2 + 88) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a2 + 88) + v5) & 0x1FF);
  if (v8 == v9)
  {
LABEL_11:
    *(a2 + 88) = 0;
    v12 = v4 - v3;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v3);
        v4 = *(a2 + 64);
        v3 = (*(a2 + 56) + 8);
        *(a2 + 56) = v3;
        v12 = v4 - v3;
      }

      while (v12 > 2);
    }

LABEL_13:
    if (v12 == 1)
    {
      v13 = 256;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_19;
      }

      v13 = 512;
    }

    *(a2 + 80) = v13;
LABEL_19:
    if (v3 != v4)
    {
      do
      {
        v14 = *v3++;
        operator delete(v14);
      }

      while (v3 != v4);
      v16 = *(a2 + 56);
      v15 = *(a2 + 64);
      if (v15 != v16)
      {
        *(a2 + 64) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v17 = *(a2 + 48);
    if (v17)
    {
      operator delete(v17);
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(a2 + 24, *(a2 + 32));
    v18 = *(a2 + 8);

    std::__tree<sigslot::_signal_base_interface *>::destroy(a2, v18);
    return;
  }

  while (v8)
  {
    v10 = *v8;
    *v8 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v7 = *v6;
    }

    if (++v8 - v7 == 4096)
    {
      v11 = v6[1];
      ++v6;
      v7 = v11;
      v8 = v11;
    }

    if (v8 == v9)
    {
      v3 = *(a2 + 56);
      v4 = *(a2 + 64);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS9_23RtpFrameIdOnlyRefFinderENS9_22RtpSeqNumOnlyRefFinderENS9_15RtpVp8RefFinderENS9_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a2 + 88));
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4 == v3)
  {
    v4 = *(a2 + 40);
    *(a2 + 72) = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v5 = *(a2 + 64);
  v6 = &v3[v5 >> 8];
  v7 = *v6;
  v8 = *v6 + 16 * v5;
  v9 = *(v3 + (((*(a2 + 72) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 72) + v5);
  if (v8 == v9)
  {
LABEL_11:
    *(a2 + 72) = 0;
    v12 = v4 - v3;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v3);
        v4 = *(a2 + 48);
        v3 = (*(a2 + 40) + 8);
        *(a2 + 40) = v3;
        v12 = v4 - v3;
      }

      while (v12 > 2);
    }

LABEL_13:
    if (v12 == 1)
    {
      v13 = 128;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_19;
      }

      v13 = 256;
    }

    *(a2 + 64) = v13;
LABEL_19:
    if (v3 != v4)
    {
      do
      {
        v14 = *v3++;
        operator delete(v14);
      }

      while (v3 != v4);
      v16 = *(a2 + 40);
      v15 = *(a2 + 48);
      if (v15 != v16)
      {
        *(a2 + 48) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v17 = *(a2 + 32);
    if (v17)
    {
      operator delete(v17);
    }

    v18 = *(a2 + 16);

    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v18);
    return;
  }

  while (v8)
  {
    v10 = *(v8 + 8);
    *(v8 + 8) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v7 = *v6;
    }

    v8 += 16;
    if (v8 - v7 == 4096)
    {
      v11 = v6[1];
      ++v6;
      v7 = v11;
      v8 = v11;
    }

    if (v8 == v9)
    {
      v3 = *(a2 + 40);
      v4 = *(a2 + 48);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS9_23RtpFrameIdOnlyRefFinderENS9_22RtpSeqNumOnlyRefFinderENS9_15RtpVp8RefFinderENS9_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 73728);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a2 + 77408));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v3[457]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v3[454]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v3[451]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v3[448]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v3[445]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v3[442]);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5 == v4)
  {
    v5 = *(a2 + 8);
    *(a2 + 40) = 0;
    v13 = 0;
    goto LABEL_13;
  }

  v6 = *(a2 + 32);
  v7 = &v4[v6 >> 8];
  v8 = *v7;
  v9 = *v7 + 16 * v6;
  v10 = *(v4 + (((*(a2 + 40) + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 40) + v6);
  if (v9 == v10)
  {
LABEL_11:
    *(a2 + 40) = 0;
    v13 = v5 - v4;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v4);
        v5 = *(a2 + 16);
        v4 = (*(a2 + 8) + 8);
        *(a2 + 8) = v4;
        v13 = v5 - v4;
      }

      while (v13 > 2);
    }

LABEL_13:
    if (v13 == 1)
    {
      v14 = 128;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_19;
      }

      v14 = 256;
    }

    *(a2 + 32) = v14;
LABEL_19:
    if (v4 != v5)
    {
      do
      {
        v15 = *v4++;
        operator delete(v15);
      }

      while (v4 != v5);
      v17 = *(a2 + 8);
      v16 = *(a2 + 16);
      if (v16 != v17)
      {
        *(a2 + 16) = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v18 = *a2;
    if (*a2)
    {

      operator delete(v18);
    }

    return;
  }

  while (v9)
  {
    v11 = *(v9 + 8);
    *(v9 + 8) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v8 = *v7;
    }

    v9 += 16;
    if (v9 - v8 == 4096)
    {
      v12 = v7[1];
      ++v7;
      v8 = v12;
      v9 = v12;
    }

    if (v9 == v10)
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL webrtc::RtpGenericFrameDescriptorExtension00::Parse(char *a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *a1;
    *a3 = *a1 >> 7;
    *(a3 + 1) = (*a1 & 0x40) != 0;
    if ((v3 & 0x80) == 0)
    {
      return a2 == 1;
    }

    if (a2 >= 4)
    {
      *(a3 + 5) = *a1 & 7;
      *(a3 + 4) = a1[1];
      *(a3 + 2) = *(a1 + 1);
      *(a3 + 8) = 0;
      if (a2 >= 8 && (*a1 & 8) == 0)
      {
        v6 = __rev16(*(a1 + 3));
        *(a3 + 32) = __rev16(*(a1 + 2));
        *(a3 + 36) = v6;
        return 1;
      }

      if ((*a1 & 8) == 0)
      {
        return 1;
      }

      v7 = 0;
      v8 = 4;
      while (a2 != v8)
      {
        v9 = a1[v8];
        v10 = v9 >> 2;
        v11 = v8 + 1;
        if ((v9 & 2) != 0)
        {
          if (a2 == v11)
          {
            return 0;
          }

          v10 |= a1[v11] << 6;
          v8 += 2;
        }

        else
        {
          ++v8;
        }

        if (!v10 || v7 == 8)
        {
          break;
        }

        *(a3 + 16 + 2 * v7++) = v10;
        *(a3 + 8) = v7;
        v5 = 1;
        if ((v9 & 1) == 0)
        {
          return v5;
        }
      }
    }
  }

  return 0;
}

uint64_t webrtc::RtpGenericFrameDescriptorExtension00::ValueSize(uint16x8_t *a1)
{
  if (a1->i8[0] != 1)
  {
    return 1;
  }

  v1 = a1->i64[1];
  if (v1)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = (v1 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v3 < 3)
    {
      v4 = 4;
      v5 = v2;
      goto LABEL_21;
    }

    v7 = v3 + 1;
    if (v3 >= 0xF)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFF0;
      v9 = 0uLL;
      v10.i64[0] = 0x3F003F003F003FLL;
      v10.i64[1] = 0x3F003F003F003FLL;
      v11 = vdupq_n_s64(2uLL);
      v12 = xmmword_273BA34C0;
      v13 = v2 + 1;
      v14 = v7 & 0xFFFFFFFFFFFFFFF0;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21 = vcgtq_u16(v13[-1], v10);
        v22 = vmovl_high_s16(v21);
        v23.i64[0] = v22.i32[2];
        v23.i64[1] = v22.i32[3];
        v24 = v23;
        v23.i64[0] = v22.i32[0];
        v23.i64[1] = v22.i32[1];
        v25 = v23;
        v26 = vmovl_s16(*v21.i8);
        v23.i64[0] = v26.i32[2];
        v23.i64[1] = v26.i32[3];
        v27 = v23;
        v23.i64[0] = v26.i32[0];
        v23.i64[1] = v26.i32[1];
        v28 = v23;
        v29 = vcgtq_u16(*v13, v10);
        v30 = vmovl_high_s16(v29);
        v23.i64[0] = v30.i32[2];
        v23.i64[1] = v30.i32[3];
        v31 = v23;
        v23.i64[0] = v30.i32[0];
        v23.i64[1] = v30.i32[1];
        v32 = v23;
        v33 = vmovl_s16(*v29.i8);
        v23.i64[0] = v33.i32[2];
        v23.i64[1] = v33.i32[3];
        v34 = v23;
        v23.i64[0] = v33.i32[0];
        v23.i64[1] = v33.i32[1];
        v16 = vaddq_s64(vsubq_s64(vandq_s8(v24, v11), vmvnq_s8(v24)), v16);
        v15 = vaddq_s64(vsubq_s64(vandq_s8(v25, v11), vmvnq_s8(v25)), v15);
        v9 = vaddq_s64(vsubq_s64(vandq_s8(v27, v11), vmvnq_s8(v27)), v9);
        v12 = vaddq_s64(vsubq_s64(vandq_s8(v28, v11), vmvnq_s8(v28)), v12);
        v20 = vaddq_s64(vsubq_s64(vandq_s8(v31, v11), vmvnq_s8(v31)), v20);
        v19 = vaddq_s64(vsubq_s64(vandq_s8(v32, v11), vmvnq_s8(v32)), v19);
        v18 = vaddq_s64(vsubq_s64(vandq_s8(v34, v11), vmvnq_s8(v34)), v18);
        v17 = vaddq_s64(vsubq_s64(vandq_s8(v23, v11), vmvnq_s8(v23)), v17);
        v13 += 2;
        v14 -= 16;
      }

      while (v14);
      v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v17, v12), vaddq_s64(v19, v15)), vaddq_s64(vaddq_s64(v18, v9), vaddq_s64(v20, v16))));
      if (v7 == v8)
      {
        goto LABEL_26;
      }

      if ((v7 & 0xC) == 0)
      {
        v5 = v2 + v8;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
      v4 = 4;
    }

    v5 = v2 + (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v35 = 0uLL;
    v36 = v4;
    v37 = (v2 + 2 * v8);
    v38 = v8 - (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v39 = vdupq_n_s64(2uLL);
    do
    {
      v40 = *v37++;
      v41 = vmovl_s16(vcgt_u16(v40, 0x3F003F003F003FLL));
      v42.i64[0] = v41.i32[2];
      v42.i64[1] = v41.i32[3];
      v43 = v42;
      v42.i64[0] = v41.i32[0];
      v42.i64[1] = v41.i32[1];
      v35 = vaddq_s64(vsubq_s64(vandq_s8(v43, v39), vmvnq_s8(v43)), v35);
      v36 = vaddq_s64(vsubq_s64(vandq_s8(v42, v39), vmvnq_s8(v42)), v36);
      v38 += 4;
    }

    while (v38);
    v4 = vaddvq_s64(vaddq_s64(v36, v35));
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_26;
    }

LABEL_21:
    v44 = v2 + v1;
    do
    {
      v45 = *v5++;
      if (v45 <= 0x3F)
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }

      v4 += v46;
    }

    while (v5 != v44);
    goto LABEL_26;
  }

  v4 = 4;
LABEL_26:
  if (!v1 && a1[2].i32[0] >= 1 && a1[2].i32[1] > 0)
  {
    v4 += 4;
  }

  return v4;
}

uint64_t webrtc::RtpGenericFrameDescriptorExtension00::Write(uint64_t a1, uint64_t a2, uint16x8_t *a3)
{
  if (a3->i8[0] == 1)
  {
    v3 = a3 + 1;
    v4 = a3->i64[1];
    if (v4)
    {
      v5 = a3 + 1;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      v7 = 4;
      goto LABEL_31;
    }

    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v6 < 3)
    {
      v7 = 4;
      v8 = v5;
      goto LABEL_26;
    }

    v11 = v6 + 1;
    if (v6 >= 0xF)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v13 = 0uLL;
      v14.i64[0] = 0x3F003F003F003FLL;
      v14.i64[1] = 0x3F003F003F003FLL;
      v15 = vdupq_n_s64(2uLL);
      v16 = xmmword_273BA34C0;
      v17 = v5 + 1;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = vcgtq_u16(v17[-1], v14);
        v26 = vmovl_high_s16(v25);
        v27.i64[0] = v26.i32[2];
        v27.i64[1] = v26.i32[3];
        v28 = v27;
        v27.i64[0] = v26.i32[0];
        v27.i64[1] = v26.i32[1];
        v29 = v27;
        v30 = vmovl_s16(*v25.i8);
        v27.i64[0] = v30.i32[2];
        v27.i64[1] = v30.i32[3];
        v31 = v27;
        v27.i64[0] = v30.i32[0];
        v27.i64[1] = v30.i32[1];
        v32 = v27;
        v33 = vcgtq_u16(*v17, v14);
        v34 = vmovl_high_s16(v33);
        v27.i64[0] = v34.i32[2];
        v27.i64[1] = v34.i32[3];
        v35 = v27;
        v27.i64[0] = v34.i32[0];
        v27.i64[1] = v34.i32[1];
        v36 = v27;
        v37 = vmovl_s16(*v33.i8);
        v27.i64[0] = v37.i32[2];
        v27.i64[1] = v37.i32[3];
        v38 = v27;
        v27.i64[0] = v37.i32[0];
        v27.i64[1] = v37.i32[1];
        v20 = vaddq_s64(vsubq_s64(vandq_s8(v28, v15), vmvnq_s8(v28)), v20);
        v19 = vaddq_s64(vsubq_s64(vandq_s8(v29, v15), vmvnq_s8(v29)), v19);
        v13 = vaddq_s64(vsubq_s64(vandq_s8(v31, v15), vmvnq_s8(v31)), v13);
        v16 = vaddq_s64(vsubq_s64(vandq_s8(v32, v15), vmvnq_s8(v32)), v16);
        v24 = vaddq_s64(vsubq_s64(vandq_s8(v35, v15), vmvnq_s8(v35)), v24);
        v23 = vaddq_s64(vsubq_s64(vandq_s8(v36, v15), vmvnq_s8(v36)), v23);
        v22 = vaddq_s64(vsubq_s64(vandq_s8(v38, v15), vmvnq_s8(v38)), v22);
        v21 = vaddq_s64(vsubq_s64(vandq_s8(v27, v15), vmvnq_s8(v27)), v21);
        v17 += 2;
        v18 -= 16;
      }

      while (v18);
      v7 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v21, v16), vaddq_s64(v23, v19)), vaddq_s64(vaddq_s64(v22, v13), vaddq_s64(v24, v20))));
      if (v11 == v12)
      {
        goto LABEL_31;
      }

      if ((v11 & 0xC) == 0)
      {
        v8 = v5 + v12;
LABEL_26:
        v48 = v5 + v4;
        do
        {
          v49 = *v8++;
          if (v49 <= 0x3F)
          {
            v50 = 1;
          }

          else
          {
            v50 = 2;
          }

          v7 += v50;
        }

        while (v8 != v48);
LABEL_31:
        if (v4)
        {
          v51 = 1;
        }

        else
        {
          v51 = a3[2].i32[1] <= 0;
        }

        v52 = v51 || a3[2].i32[0] <= 0;
        v53 = v7 + 4;
        if (v52)
        {
          v53 = v7;
        }

        if (a2 == v53)
        {
          v54 = v4 != 0;
          if (a3->i8[1])
          {
            v55 = -16;
          }

          else
          {
            v55 = -80;
          }

          *a1 = a3->i8[5] | (8 * v54) | v55;
          *(a1 + 1) = a3->i8[4];
          *(a1 + 2) = a3->i16[1];
          v56 = a3->i64[1];
          if (!v56)
          {
            v3 = 0;
          }

          if (a3->i8[0] != 1 || v56)
          {
            if (v56)
            {
              v58 = 0;
              v59 = 4;
              do
              {
                v60 = v3->u16[v58];
                if (v58 >= v56 - 1)
                {
                  v61 = (4 * v60) | (2 * (v60 > 0x3F));
                }

                else
                {
                  v61 = ((4 * v60) | (2 * (v60 > 0x3F))) + 1;
                }

                v62 = v59 + 1;
                *(a1 + v59) = v61;
                if (v60 >= 0x40)
                {
                  *(a1 + v62) = v3->u16[v58] >> 6;
                  v62 = v59 + 2;
                }

                ++v58;
                v59 = v62;
              }

              while (v56 != v58);
            }
          }

          else
          {
            v57 = a3[2].i32[0];
            if (v57 >= 1 && a3[2].i32[1] >= 1)
            {
              *(a1 + 4) = BYTE1(v57);
              *(a1 + 5) = a3[2].i32[0];
              *(a1 + 6) = BYTE1(a3[2].i32[1]);
              *(a1 + 7) = a3[2].i32[1];
              return 1;
            }
          }

          return 1;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v12 = 0;
      v7 = 4;
    }

    v8 = v5 + (v11 & 0xFFFFFFFFFFFFFFFCLL);
    v39 = 0uLL;
    v40 = v7;
    v41 = (v5 + 2 * v12);
    v42 = v12 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    v43 = vdupq_n_s64(2uLL);
    do
    {
      v44 = *v41++;
      v45 = vmovl_s16(vcgt_u16(v44, 0x3F003F003F003FLL));
      v46.i64[0] = v45.i32[2];
      v46.i64[1] = v45.i32[3];
      v47 = v46;
      v46.i64[0] = v45.i32[0];
      v46.i64[1] = v45.i32[1];
      v39 = vaddq_s64(vsubq_s64(vandq_s8(v47, v43), vmvnq_s8(v47)), v39);
      v40 = vaddq_s64(vsubq_s64(vandq_s8(v46, v43), vmvnq_s8(v46)), v40);
      v42 += 4;
    }

    while (v42);
    v7 = vaddvq_s64(vaddq_s64(v40, v39));
    if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (a2 == 1)
  {
    if (a3->i8[1])
    {
      v9 = 112;
    }

    else
    {
      v9 = 48;
    }

    *a1 = v9;
    return 1;
  }

LABEL_59:
  webrtc::RtpGenericFrameDescriptorExtension00::ValueSize(a3);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_generic_frame_descriptor_extension.cc", 136, "data.size() == ValueSize(descriptor)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v64, v65, v66, v67, a2);
  return webrtc::RtpGenericFrameRefFinder::ManageFrame();
}

void webrtc::RtpGenericFrameRefFinder::ManageFrame(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  v3 = *(a2 + 8);
  if (v3 >= 5)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_generic_ref_finder.cc");
    }

    return;
  }

  v11 = *a1;
  *(v11 + 2496) = *a2;
  *(v11 + 192) = v3;
  *(v11 + 196) = 1;
  v12 = *(a2 + 12);
  if (v12 != 255)
  {
    v13 = *a1;
    *(v13 + 200) = v12;
    *(v13 + 204) = 1;
  }

  v14 = *(a2 + 64);
  if (v14 < 0xC)
  {
    v22 = v14 >> 1;
    v23 = *a1;
    *(*a1 + 352) = v22;
    v24 = *(a2 + 64);
    if (v24 >= 2)
    {
      v25 = v24 >> 1;
      if (v24)
      {
        v32 = 0;
        do
        {
          *(v23 + 360 + 8 * v32) = *(*(a2 + 72) + 8 * v32);
          ++v32;
        }

        while (v25 != v32);
        goto LABEL_20;
      }

      if (v24 >= 0xC && (v23 - a2 + 288) >= 0x20)
      {
        v26 = v25 & 0x7FFFFFFFFFFFFFFCLL;
        v33 = (a2 + 88);
        v34 = (v23 + 376);
        v35 = v25 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v25 == v26)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v26 = 0;
      }

      v27 = v25 - v26;
      v28 = 8 * v26;
      v29 = (8 * v26 + v23 + 360);
      v30 = (v28 + a2 + 72);
      do
      {
        v31 = *v30++;
        *v29++ = v31;
        --v27;
      }

      while (v27);
    }

LABEL_20:
    *a1 = 0;
    *a3 = 2;
    a3[1] = v23;
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_generic_ref_finder.cc");
  }
}

uint64_t webrtc::RtpHeaderExtensionMap::RegisterByUri(webrtc::RtpHeaderExtensionMap *a1, int a2, void *__s1, uint64_t a4)
{
  switch(a4)
  {
    case 26:
      if (*__s1 != 0x707067333A6E7275 || __s1[1] != 0x6F2D6F656469763ALL || __s1[2] != 0x697461746E656972 || *(__s1 + 12) != 28271)
      {
        goto LABEL_287;
      }

      v8 = &dword_279E94850;
      goto LABEL_295;
    case 34:
      if (*__s1 != *"urn:ietf:params:rtp-hdrext:toffset" || __s1[1] != *":params:rtp-hdrext:toffset" || __s1[2] != *"rtp-hdrext:toffset" || __s1[3] != *"xt:toffset" || *(__s1 + 16) != *"et")
      {
        goto LABEL_287;
      }

      goto LABEL_295;
    case 35:
      if (*__s1 != *"urn:ietf:params:rtp-hdrext:sdes:mid" || __s1[1] != *":params:rtp-hdrext:sdes:mid" || __s1[2] != *"rtp-hdrext:sdes:mid" || __s1[3] != *"xt:sdes:mid" || *(__s1 + 27) != *"sdes:mid")
      {
        goto LABEL_287;
      }

      v8 = &dword_279E94928;
      goto LABEL_295;
    case 43:
      if (*__s1 == *"urn:ietf:params:rtp-hdrext:ssrc-audio-level" && __s1[1] == *":params:rtp-hdrext:ssrc-audio-level" && __s1[2] == *"rtp-hdrext:ssrc-audio-level" && __s1[3] == *"xt:ssrc-audio-level" && __s1[4] == *"audio-level" && *(__s1 + 35) == *"io-level")
      {
        v8 = &dword_279E947F0;
        goto LABEL_295;
      }

      if (*__s1 == 0x667465693A6E7275 && __s1[1] == 0x3A736D617261703ALL && __s1[2] == 0x657264682D707472 && __s1[3] == 0x2D637273633A7478 && __s1[4] == 0x656C2D6F69647561 && *(__s1 + 35) == 0x6C6576656C2D6F69)
      {
        v8 = &dword_279E94808;
        goto LABEL_295;
      }

      goto LABEL_287;
    case 45:
      if (*__s1 != *"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id" || __s1[1] != *":params:rtp-hdrext:sdes:rtp-stream-id" || __s1[2] != *"rtp-hdrext:sdes:rtp-stream-id" || __s1[3] != *"xt:sdes:rtp-stream-id" || __s1[4] != *"rtp-stream-id" || *(__s1 + 37) != *"tream-id")
      {
        goto LABEL_287;
      }

      v8 = &dword_279E948F8;
      goto LABEL_295;
    case 54:
      if (*__s1 == *"urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id" && __s1[1] == *":params:rtp-hdrext:sdes:repaired-rtp-stream-id" && __s1[2] == *"rtp-hdrext:sdes:repaired-rtp-stream-id" && __s1[3] == *"xt:sdes:repaired-rtp-stream-id" && __s1[4] == *"repaired-rtp-stream-id" && __s1[5] == *"-rtp-stream-id" && *(__s1 + 46) == *"tream-id")
      {
        v8 = &dword_279E94910;
        goto LABEL_295;
      }

      if (*__s1 == 0x772F2F3A70747468 && __s1[1] == 0x74726265772E7777 && __s1[2] == 0x78652F67726F2E63 && __s1[3] == 0x746E656D69726570 && __s1[4] == 0x64682D7074722F73 && __s1[5] == 0x626E692F74786572 && *(__s1 + 46) == 0x6E632D646E61626ELL)
      {
        v8 = &dword_279E94988;
        goto LABEL_295;
      }

      goto LABEL_287;
    case 56:
      if (*__s1 != 0x772F2F3A70747468 || __s1[1] != 0x74726265772E7777 || __s1[2] != 0x78652F67726F2E63 || __s1[3] != 0x746E656D69726570 || __s1[4] != 0x64682D7074722F73 || __s1[5] != 0x6C6F632F74786572 || __s1[6] != 0x65636170732D726FLL)
      {
        goto LABEL_287;
      }

      v8 = &dword_279E94970;
      goto LABEL_295;
    case 57:
      if (*__s1 != 0x772F2F3A70747468 || __s1[1] != 0x74726265772E7777 || __s1[2] != 0x78652F67726F2E63 || __s1[3] != 0x746E656D69726570 || __s1[4] != 0x64682D7074722F73 || __s1[5] != 0x6469762F74786572 || __s1[6] != 0x6E696D69742D6F65 || *(__s1 + 56) != 103)
      {
        goto LABEL_287;
      }

      v8 = &dword_279E948E0;
      goto LABEL_295;
    case 58:
      if (*__s1 == *"http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time" && __s1[1] == *"ww.webrtc.org/experiments/rtp-hdrext/abs-send-time" && __s1[2] == *"c.org/experiments/rtp-hdrext/abs-send-time" && __s1[3] == *"periments/rtp-hdrext/abs-send-time" && __s1[4] == *"s/rtp-hdrext/abs-send-time" && __s1[5] == *"rext/abs-send-time" && __s1[6] == *"-send-time" && *(__s1 + 28) == *"me")
      {
        v8 = &dword_279E94820;
        goto LABEL_295;
      }

      if (*__s1 == 0x772F2F3A70747468 && __s1[1] == 0x74726265772E7777 && __s1[2] == 0x78652F67726F2E63 && __s1[3] == 0x746E656D69726570 && __s1[4] == 0x64682D7074722F73 && __s1[5] == 0x616C702F74786572 && __s1[6] == 0x6C65642D74756F79 && *(__s1 + 28) == 31073)
      {
        v8 = &dword_279E94898;
        goto LABEL_295;
      }

      goto LABEL_287;
    case 61:
      v70 = *__s1;
      v71 = __s1[1];
      v72 = __s1[2];
      v73 = __s1[3];
      v74 = __s1[4];
      v75 = __s1[5];
      v76 = __s1[6];
      v77 = *(__s1 + 53);
      if (v70 != *"http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time" || v71 != *"ww.webrtc.org/experiments/rtp-hdrext/abs-capture-time" || v72 != *"c.org/experiments/rtp-hdrext/abs-capture-time" || v73 != *"periments/rtp-hdrext/abs-capture-time" || v74 != *"s/rtp-hdrext/abs-capture-time" || v75 != *"rext/abs-capture-time" || v76 != *"-capture-time" || v77 != *"ure-time")
      {
        goto LABEL_287;
      }

      v8 = &dword_279E94838;
      goto LABEL_295;
    case 63:
      if (*__s1 != 0x772F2F3A70747468 || __s1[1] != 0x74726265772E7777 || __s1[2] != 0x78652F67726F2E63 || __s1[3] != 0x746E656D69726570 || __s1[4] != 0x64682D7074722F73 || __s1[5] != 0x6469762F74786572 || __s1[6] != 0x65746E6F632D6F65 || *(__s1 + 55) != 0x657079742D746E65)
      {
        goto LABEL_287;
      }

      v8 = &dword_279E948B0;
      goto LABEL_295;
    case 65:
      v39 = a1;
      if (!memcmp(__s1, "http://www.webrtc.org/experiments/rtp-hdrext/transport-wide-cc-02", 0x41uLL))
      {
        v8 = &dword_279E94880;
        a1 = v39;
      }

      else
      {
        if (memcmp(__s1, "http://www.webrtc.org/experiments/rtp-hdrext/corruption-detection", 0x41uLL))
        {
LABEL_287:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v100, v101, v102, v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_header_extension_map.cc");
          }

          return 0;
        }

        a1 = v39;
        v8 = &dword_279E949B8;
      }

LABEL_295:
      v108 = *v8;

      return webrtc::RtpHeaderExtensionMap::Register(a1, a2, v108);
    case 68:
      v22 = a1;
      if (memcmp(__s1, "http://www.webrtc.org/experiments/rtp-hdrext/video-frame-tracking-id", 0x44uLL))
      {
        goto LABEL_287;
      }

      a1 = v22;
      v8 = &dword_279E949A0;
      goto LABEL_295;
    case 70:
      v9 = a1;
      if (memcmp(__s1, "http://www.webrtc.org/experiments/rtp-hdrext/video-layers-allocation00", 0x46uLL))
      {
        goto LABEL_287;
      }

      a1 = v9;
      v8 = &dword_279E948C8;
      goto LABEL_295;
    case 72:
      v68 = a1;
      if (memcmp(__s1, "http://www.webrtc.org/experiments/rtp-hdrext/generic-frame-descriptor-00", 0x48uLL))
      {
        goto LABEL_287;
      }

      a1 = v68;
      v8 = &dword_279E94940;
      goto LABEL_295;
    case 73:
      v69 = a1;
      if (memcmp(__s1, "http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01", 0x49uLL))
      {
        goto LABEL_287;
      }

      a1 = v69;
      v8 = &dword_279E94868;
      goto LABEL_295;
    case 87:
      v99 = a1;
      if (memcmp(__s1, "https://aomediacodec.github.io/av1-rtp-spec/#dependency-descriptor-rtp-header-extension", 0x57uLL))
      {
        goto LABEL_287;
      }

      a1 = v99;
      v8 = &dword_279E94958;
      goto LABEL_295;
    default:
      goto LABEL_287;
  }
}

uint64_t webrtc::RtpHeaderExtensionMap::Register(webrtc::RtpHeaderExtensionMap *a1, int a2, int a3)
{
  v3 = a2;
  if ((a2 - 256) <= 0xFFFFFF00)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    v22 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t;
LABEL_18:
    webrtc::webrtc_logging_impl::Log(v22, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_header_extension_map.cc");
    return 0;
  }

  Type = webrtc::RtpHeaderExtensionMap::GetType(a1, a2);
  if (Type != a3)
  {
    if (Type)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }
    }

    else
    {
      if (!*(a1 + a3))
      {
        *(a1 + a3) = v3;
        return 1;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return 0;
      }
    }

    v22 = &webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t;
    goto LABEL_18;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_header_extension_map.cc");
  }

  return 1;
}

uint64_t webrtc::RtpHeaderExtensionMap::GetType(webrtc::RtpHeaderExtensionMap *this, int a2)
{
  if (*(this + 1) == a2)
  {
    return 1;
  }

  if (*(this + 2) == a2)
  {
    return 2;
  }

  if (*(this + 3) == a2)
  {
    return 3;
  }

  if (*(this + 4) == a2)
  {
    return 4;
  }

  if (*(this + 5) == a2)
  {
    return 5;
  }

  if (*(this + 6) == a2)
  {
    return 6;
  }

  if (*(this + 7) == a2)
  {
    return 7;
  }

  if (*(this + 8) == a2)
  {
    return 8;
  }

  if (*(this + 9) == a2)
  {
    return 9;
  }

  if (*(this + 10) == a2)
  {
    return 10;
  }

  if (*(this + 11) == a2)
  {
    return 11;
  }

  if (*(this + 12) == a2)
  {
    return 12;
  }

  if (*(this + 13) == a2)
  {
    return 13;
  }

  if (*(this + 14) == a2)
  {
    return 14;
  }

  if (*(this + 15) == a2)
  {
    return 15;
  }

  if (*(this + 16) == a2)
  {
    return 16;
  }

  if (*(this + 17) == a2)
  {
    return 17;
  }

  if (*(this + 18) == a2)
  {
    return 18;
  }

  if (*(this + 19) == a2)
  {
    return 19;
  }

  if (*(this + 20) == a2)
  {
    return 20;
  }

  if (*(this + 21) == a2)
  {
    return 21;
  }

  return 0;
}

uint64_t webrtc::RtpHeaderExtensionMap::Deregister(uint64_t result, void *a2, uint64_t a3)
{
  switch(a3)
  {
    case 26:
      if (*a2 == 0x707067333A6E7275 && a2[1] == 0x6F2D6F656469763ALL && a2[2] == 0x697461746E656972 && *(a2 + 12) == 28271)
      {
        v6 = &dword_279E94850;
        goto LABEL_292;
      }

      break;
    case 34:
      if (*"urn:ietf:params:rtp-hdrext:toffset" == *a2 && *":params:rtp-hdrext:toffset" == a2[1] && *"rtp-hdrext:toffset" == a2[2] && *"xt:toffset" == a2[3] && *"et" == *(a2 + 16))
      {
        goto LABEL_292;
      }

      break;
    case 35:
      if (*"urn:ietf:params:rtp-hdrext:sdes:mid" == *a2 && *":params:rtp-hdrext:sdes:mid" == a2[1] && *"rtp-hdrext:sdes:mid" == a2[2] && *"xt:sdes:mid" == a2[3] && *"sdes:mid" == *(a2 + 27))
      {
        v6 = &dword_279E94928;
        goto LABEL_292;
      }

      break;
    case 43:
      if (*"urn:ietf:params:rtp-hdrext:ssrc-audio-level" == *a2 && *":params:rtp-hdrext:ssrc-audio-level" == a2[1] && *"rtp-hdrext:ssrc-audio-level" == a2[2] && *"xt:ssrc-audio-level" == a2[3] && *"audio-level" == a2[4] && *"io-level" == *(a2 + 35))
      {
        v6 = &dword_279E947F0;
        goto LABEL_292;
      }

      if (*a2 == 0x667465693A6E7275 && a2[1] == 0x3A736D617261703ALL && a2[2] == 0x657264682D707472 && a2[3] == 0x2D637273633A7478 && a2[4] == 0x656C2D6F69647561 && *(a2 + 35) == 0x6C6576656C2D6F69)
      {
        v6 = &dword_279E94808;
        goto LABEL_292;
      }

      break;
    case 45:
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[3];
      v19 = a2[4];
      v20 = *(a2 + 37);
      if (*"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id" == v15 && *":params:rtp-hdrext:sdes:rtp-stream-id" == v16 && *"rtp-hdrext:sdes:rtp-stream-id" == v17 && *"xt:sdes:rtp-stream-id" == v18 && *"rtp-stream-id" == v19 && *"tream-id" == v20)
      {
        v6 = &dword_279E948F8;
        goto LABEL_292;
      }

      break;
    case 54:
      if (*"urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id" == *a2 && *":params:rtp-hdrext:sdes:repaired-rtp-stream-id" == a2[1] && *"rtp-hdrext:sdes:repaired-rtp-stream-id" == a2[2] && *"xt:sdes:repaired-rtp-stream-id" == a2[3] && *"repaired-rtp-stream-id" == a2[4] && *"-rtp-stream-id" == a2[5] && *"tream-id" == *(a2 + 46))
      {
        v6 = &dword_279E94910;
        goto LABEL_292;
      }

      if (*a2 == 0x772F2F3A70747468 && a2[1] == 0x74726265772E7777 && a2[2] == 0x78652F67726F2E63 && a2[3] == 0x746E656D69726570 && a2[4] == 0x64682D7074722F73 && a2[5] == 0x626E692F74786572 && *(a2 + 46) == 0x6E632D646E61626ELL)
      {
        v6 = &dword_279E94988;
        goto LABEL_292;
      }

      break;
    case 56:
      if (*a2 == 0x772F2F3A70747468 && a2[1] == 0x74726265772E7777 && a2[2] == 0x78652F67726F2E63 && a2[3] == 0x746E656D69726570 && a2[4] == 0x64682D7074722F73 && a2[5] == 0x6C6F632F74786572 && a2[6] == 0x65636170732D726FLL)
      {
        v6 = &dword_279E94970;
        goto LABEL_292;
      }

      break;
    case 57:
      if (*a2 == 0x772F2F3A70747468 && a2[1] == 0x74726265772E7777 && a2[2] == 0x78652F67726F2E63 && a2[3] == 0x746E656D69726570 && a2[4] == 0x64682D7074722F73 && a2[5] == 0x6469762F74786572 && a2[6] == 0x6E696D69742D6F65 && *(a2 + 56) == 103)
      {
        v6 = &dword_279E948E0;
        goto LABEL_292;
      }

      break;
    case 58:
      if (*"http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time" == *a2 && *"ww.webrtc.org/experiments/rtp-hdrext/abs-send-time" == a2[1] && *"c.org/experiments/rtp-hdrext/abs-send-time" == a2[2] && *"periments/rtp-hdrext/abs-send-time" == a2[3] && *"s/rtp-hdrext/abs-send-time" == a2[4] && *"rext/abs-send-time" == a2[5] && *"-send-time" == a2[6] && *"me" == *(a2 + 28))
      {
        v6 = &dword_279E94820;
        goto LABEL_292;
      }

      if (*a2 == 0x772F2F3A70747468 && a2[1] == 0x74726265772E7777 && a2[2] == 0x78652F67726F2E63 && a2[3] == 0x746E656D69726570 && a2[4] == 0x64682D7074722F73 && a2[5] == 0x616C702F74786572 && a2[6] == 0x6C65642D74756F79 && *(a2 + 28) == 31073)
      {
        v6 = &dword_279E94898;
        goto LABEL_292;
      }

      break;
    case 61:
      v74 = *a2;
      v75 = a2[1];
      v76 = a2[2];
      v77 = a2[3];
      v78 = a2[4];
      v79 = a2[5];
      v80 = a2[6];
      v81 = *(a2 + 53);
      if (*"http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time" == v74 && *"ww.webrtc.org/experiments/rtp-hdrext/abs-capture-time" == v75 && *"c.org/experiments/rtp-hdrext/abs-capture-time" == v76 && *"periments/rtp-hdrext/abs-capture-time" == v77 && *"s/rtp-hdrext/abs-capture-time" == v78 && *"rext/abs-capture-time" == v79 && *"-capture-time" == v80 && *"ure-time" == v81)
      {
        v6 = &dword_279E94838;
        goto LABEL_292;
      }

      break;
    case 63:
      if (*a2 == 0x772F2F3A70747468 && a2[1] == 0x74726265772E7777 && a2[2] == 0x78652F67726F2E63 && a2[3] == 0x746E656D69726570 && a2[4] == 0x64682D7074722F73 && a2[5] == 0x6469762F74786572 && a2[6] == 0x65746E6F632D6F65 && *(a2 + 55) == 0x657079742D746E65)
      {
        v6 = &dword_279E948B0;
        goto LABEL_292;
      }

      break;
    case 65:
      v43 = result;
      if (!memcmp("http://www.webrtc.org/experiments/rtp-hdrext/transport-wide-cc-02", a2, 0x41uLL))
      {
        v6 = &dword_279E94880;
        result = v43;
        goto LABEL_292;
      }

      result = memcmp("http://www.webrtc.org/experiments/rtp-hdrext/corruption-detection", a2, 0x41uLL);
      if (!result)
      {
        result = v43;
        v6 = &dword_279E949B8;
        goto LABEL_292;
      }

      break;
    case 68:
      v26 = result;
      result = memcmp("http://www.webrtc.org/experiments/rtp-hdrext/video-frame-tracking-id", a2, 0x44uLL);
      if (!result)
      {
        result = v26;
        v6 = &dword_279E949A0;
        goto LABEL_292;
      }

      break;
    case 70:
      v7 = result;
      result = memcmp("http://www.webrtc.org/experiments/rtp-hdrext/video-layers-allocation00", a2, 0x46uLL);
      if (!result)
      {
        result = v7;
        v6 = &dword_279E948C8;
        goto LABEL_292;
      }

      break;
    case 72:
      v72 = result;
      result = memcmp("http://www.webrtc.org/experiments/rtp-hdrext/generic-frame-descriptor-00", a2, 0x48uLL);
      if (!result)
      {
        result = v72;
        v6 = &dword_279E94940;
        goto LABEL_292;
      }

      break;
    case 73:
      v73 = result;
      result = memcmp("http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01", a2, 0x49uLL);
      if (!result)
      {
        result = v73;
        v6 = &dword_279E94868;
        goto LABEL_292;
      }

      break;
    case 87:
      v103 = result;
      result = memcmp("https://aomediacodec.github.io/av1-rtp-spec/#dependency-descriptor-rtp-header-extension", a2, 0x57uLL);
      if (!result)
      {
        result = v103;
        v6 = &dword_279E94958;
LABEL_292:
        *(result + *v6) = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

BOOL webrtc::ColorSpaceExtension::Parse(unsigned __int16 *a1, unint64_t a2, uint64_t a3)
{
  if (a2 != 28 && a2 != 4)
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  v5 = *a1;
  if (v5 > 0x3F)
  {
    return 0;
  }

  if (((0x401FF6uLL >> v5) & 1) == 0)
  {
    return 0;
  }

  *a3 = v5;
  v7 = *(a1 + 1);
  if (v7 > 0x3F)
  {
    return 0;
  }

  if (((0x7FFF6uLL >> v7) & 1) == 0)
  {
    return 0;
  }

  *(a3 + 1) = v7;
  v8 = *(a1 + 2);
  if (v8 > 0x3F)
  {
    return 0;
  }

  if (((0x7FF7uLL >> v8) & 1) == 0)
  {
    return 0;
  }

  *(a3 + 2) = v8;
  v9 = *(a1 + 3);
  *(a3 + 4) = (v9 >> 4) & 3;
  v10 = (v9 >> 2) & 3;
  if (((7uLL >> v10) & 1) == 0)
  {
    return 0;
  }

  *(a3 + 8) = v10;
  v11 = v9 & 3;
  if (((7uLL >> v11) & 1) == 0)
  {
    return 0;
  }

  *(a3 + 12) = v11;
  if (a2 == 4)
  {
    *(a3 + 16) = 0;
    *(a3 + 64) = 0;
    return 1;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    if (a2 - 4 < a2)
    {
      a2 -= 4;
    }

    webrtc::ColorSpaceExtension::ParseHdrMetadata(a1 + 2, a2, v13);
    result = webrtc::HdrMetadata::Validate(v13);
    if (result)
    {
      *(a3 + 16) = v13[0];
      *(a3 + 17) = *(v13 + 1);
      *(a3 + 33) = *(&v13[1] + 1);
      *(a3 + 48) = v13[2];
      result = 1;
      *(a3 + 64) = 1;
    }
  }

  return result;
}

uint64_t webrtc::ColorSpaceExtension::ParseHdrMetadata(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = (bswap32(*a1) >> 16);
  *(a3 + 36) = (bswap32(a1[1]) >> 16) / 10000.0;
  v3 = bswap32(a1[3]);
  *a3 = (bswap32(a1[2]) >> 16) / 50000.0;
  *(a3 + 4) = HIWORD(v3) / 50000.0;
  v4 = bswap32(a1[5]);
  *(a3 + 8) = (bswap32(a1[4]) >> 16) / 50000.0;
  *(a3 + 12) = HIWORD(v4) / 50000.0;
  v5 = bswap32(a1[7]);
  *(a3 + 16) = (bswap32(a1[6]) >> 16) / 50000.0;
  *(a3 + 20) = HIWORD(v5) / 50000.0;
  v6 = (bswap32(a1[9]) >> 16) / 50000.0;
  *(a3 + 24) = (bswap32(a1[8]) >> 16) / 50000.0;
  *(a3 + 28) = v6;
  *(a3 + 40) = __rev16(a1[10]);
  *(a3 + 44) = __rev16(a1[11]);
  return 24;
}

BOOL webrtc::HdrMetadata::Validate(webrtc::HdrMetadata *this)
{
  if (*(this + 10) > 0x4E20u || *(this + 11) > 0x4E20u)
  {
    return 0;
  }

  v1 = *(this + 8);
  if (v1 < 0.0 || v1 > 20000.0)
  {
    return 0;
  }

  v3 = *(this + 9);
  if (v3 < 0.0 || v3 > 5.0)
  {
    return 0;
  }

  if (*this < 0.0 || *this > 1.0)
  {
    return 0;
  }

  v6 = *(this + 1);
  if (v6 < 0.0 || v6 > 1.0)
  {
    return 0;
  }

  v9 = 0;
  v10 = *(this + 2);
  if (v10 < 0.0)
  {
    return v9;
  }

  if (v10 > 1.0)
  {
    return v9;
  }

  v9 = 0;
  v11 = *(this + 3);
  if (v11 < 0.0)
  {
    return v9;
  }

  if (v11 > 1.0)
  {
    return v9;
  }

  v9 = 0;
  v12 = *(this + 4);
  if (v12 < 0.0)
  {
    return v9;
  }

  if (v12 > 1.0)
  {
    return v9;
  }

  v9 = 0;
  v13 = *(this + 5);
  if (v13 < 0.0)
  {
    return v9;
  }

  if (v13 > 1.0)
  {
    return v9;
  }

  v9 = 0;
  v14 = *(this + 6);
  if (v14 < 0.0 || v14 > 1.0)
  {
    return v9;
  }

  v15 = *(this + 7);
  if (v15 < 0.0)
  {
    return 0;
  }

  return v15 <= 1.0;
}

uint64_t webrtc::ColorSpaceExtension::WriteHdrMetadata(_WORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = __rev16(llroundf(*(a3 + 32)));
  a1[1] = __rev16(llroundf(*(a3 + 36) * 10000.0));
  a1[2] = __rev16(llroundf(*a3 * 50000.0));
  a1[3] = __rev16(llroundf(*(a3 + 4) * 50000.0));
  a1[4] = __rev16(llroundf(*(a3 + 8) * 50000.0));
  a1[5] = __rev16(llroundf(*(a3 + 12) * 50000.0));
  a1[6] = __rev16(llroundf(*(a3 + 16) * 50000.0));
  a1[7] = __rev16(llroundf(*(a3 + 20) * 50000.0));
  a1[8] = __rev16(llroundf(*(a3 + 24) * 50000.0));
  a1[9] = __rev16(llroundf(*(a3 + 28) * 50000.0));
  a1[10] = bswap32(*(a3 + 40)) >> 16;
  a1[11] = bswap32(*(a3 + 44)) >> 16;
  return 24;
}

uint64_t webrtc::RTPHeaderExtension::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  if (a1 == a2)
  {
    goto LABEL_35;
  }

  v9 = *(a2 + 135);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    if ((*(a2 + 135) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 112), *(a2 + 14), *(a2 + 15));
      v11 = (a2 + 136);
      v12 = *(a2 + 159);
      if (*(a1 + 159) < 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v10;
      v11 = (a2 + 136);
      v12 = *(a2 + 159);
      if (*(a1 + 159) < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    if ((v12 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 136), *(a2 + 17), *(a2 + 18));
      v16 = (a2 + 10);
      v17 = *(a2 + 183);
      if ((*(a1 + 183) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *v11;
      *(a1 + 152) = *(v11 + 2);
      *(a1 + 136) = v15;
      v16 = (a2 + 10);
      v17 = *(a2 + 183);
      if ((*(a1 + 183) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

  if (v9 >= 0)
  {
    v13 = (a2 + 7);
  }

  else
  {
    v13 = *(a2 + 14);
  }

  if (v9 >= 0)
  {
    v14 = *(a2 + 135);
  }

  else
  {
    v14 = *(a2 + 15);
  }

  std::string::__assign_no_alias<false>((a1 + 112), v13, v14);
  v11 = (a2 + 136);
  v12 = *(a2 + 159);
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if ((v12 & 0x80u) == 0)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(a2 + 17);
  }

  if ((v12 & 0x80u) == 0)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(a2 + 18);
  }

  std::string::__assign_no_alias<false>((a1 + 136), v18, v19);
  v16 = (a2 + 10);
  v17 = *(a2 + 183);
  if (*(a1 + 183) < 0)
  {
LABEL_28:
    if ((v17 & 0x80u) == 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = *(a2 + 20);
    }

    if ((v17 & 0x80u) == 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *(a2 + 21);
    }

    std::string::__assign_no_alias<false>((a1 + 160), v22, v23);
LABEL_35:
    v21 = *(a1 + 252);
    if (v21 != *(a2 + 252))
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_24:
  if ((v17 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 160), *(a2 + 20), *(a2 + 21));
    v21 = *(a1 + 252);
    if (v21 != *(a2 + 252))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v20 = *v16;
    *(a1 + 176) = *(v16 + 2);
    *(a1 + 160) = v20;
    v21 = *(a1 + 252);
    if (v21 != *(a2 + 252))
    {
LABEL_39:
      if (v21)
      {
        *(a1 + 252) = 0;
      }

      else
      {
        *(a1 + 184) = *(a2 + 184);
        v27 = *(a2 + 200);
        v28 = *(a2 + 216);
        v29 = *(a2 + 232);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 232) = v29;
        *(a1 + 216) = v28;
        *(a1 + 200) = v27;
        *(a1 + 252) = 1;
      }

      goto LABEL_42;
    }
  }

LABEL_36:
  if (v21)
  {
    *(a1 + 184) = *(a2 + 184);
    v24 = *(a2 + 200);
    v25 = *(a2 + 216);
    v26 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v26;
    *(a1 + 216) = v25;
    *(a1 + 200) = v24;
  }

LABEL_42:
  v30 = *(a2 + 32);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = v30;
  return a1;
}

void webrtc::RtpPacket::RtpPacket(webrtc::RtpPacket *this, const webrtc::RtpHeaderExtensionMap *a2)
{
  if (a2)
  {
    v2 = *a2;
    *(this + 47) = *(a2 + 15);
    *(this + 2) = v2;
  }

  else
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 47) = 0;
  }

  *(this + 72) = 0u;
  *(this + 56) = 0u;
  operator new();
}

uint64_t webrtc::RtpPacket::ParseBuffer(webrtc::RtpPacket *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 < 0xC)
  {
    return 0;
  }

  v4 = *a2;
  if ((*a2 & 0xC0) != 0x80)
  {
    return 0;
  }

  *this = a2[1] >> 7;
  *(this + 1) = a2[1] & 0x7F;
  *(this + 2) = bswap32(*(a2 + 1)) >> 16;
  *(this + 2) = bswap32(*(a2 + 1));
  *(this + 3) = bswap32(*(a2 + 2));
  v5 = 4 * (v4 & 0xF) + 12;
  if (v5 > a3)
  {
    return 0;
  }

  *(this + 2) = v5;
  *(this + 10) = 0;
  *(this + 8) = *(this + 7);
  if ((v4 & 0x10) != 0)
  {
    v14 = 4 * (v4 & 0xF) + 16;
    if (v14 > a3)
    {
      return 0;
    }

    v15 = &a2[v5];
    v16 = (a2[v5 + 2] << 10) | (4 * a2[v5 + 3]);
    v5 = v16 + v14;
    if (v16 + v14 > a3)
    {
      return 0;
    }

    v17 = bswap32(*v15) >> 16;
    v79 = this;
    if (v17 != 48862 && (v17 & 0xFFF0) != 0x1000)
    {
      v18 = a3;
      v19 = a2;
      v20 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
      a2 = v19;
      a3 = v18;
      v26 = v20;
      this = v79;
      if (v26)
      {
        goto LABEL_54;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v19, v18, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
      a2 = v19;
      a3 = v18;
      goto LABEL_17;
    }

    if (v17 == 48862)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 < v16)
    {
      v28 = &a2[v14];
      v77 = v27 | v14;
      v78 = &a2[v14];
      if (v17 != 48862)
      {
        v50 = 0;
        v76 = v28 + 1;
        v51 = &a2[4 * (v4 & 0xF) + 17];
        v52 = 2;
        while (1)
        {
          v53 = v28[v50];
          v54 = v50;
          if (!v28[v50])
          {
            while (1)
            {
              v54 = v50 + 1;
              *(this + 10) = v50 + 1;
              if (v50 + 1 + v27 >= v16)
              {
                goto LABEL_54;
              }

              v53 = v51[v50++];
              if (v53)
              {
                v52 = v27 + v54;
                break;
              }
            }
          }

          v38 = a2;
          v39 = a3;
          v55 = v76[v54];
          if (v52 + v55 > v16)
          {
            break;
          }

          ExtensionInfo = webrtc::RtpPacket::FindOrCreateExtensionInfo(this, v53);
          if (ExtensionInfo[1] && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
          {
            v74 = v74 & 0xFFFFFFFF00000000 | 0x10B8;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
          }

          v28 = v78;
          this = v79;
          a3 = v39;
          a2 = v38;
          v64 = *(v79 + 10);
          if (!((v64 + v77) >> 16))
          {
            *(ExtensionInfo + 1) = v64 + v77;
            ExtensionInfo[1] = v55;
            v50 = v27 + v55 + v64;
            *(v79 + 10) = v50;
            v52 = v50 + v27;
            if (v50 + v27 < v16)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

LABEL_53:
        v70 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
        this = v79;
        a3 = v39;
        a2 = v38;
        if (v70)
        {
          goto LABEL_54;
        }

        webrtc::webrtc_logging_impl::Log("\r\t", v38, v39, v65, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
        a2 = v38;
        a3 = v39;
LABEL_17:
        this = v79;
        goto LABEL_54;
      }

      v29 = 0;
      v30 = &a2[4 * (v4 & 0xF) + 17];
      v31 = 1;
      while (1)
      {
        v32 = v28[v29];
        if (!v28[v29])
        {
          break;
        }

LABEL_28:
        if (v32 >> 4 != 15)
        {
          v36 = v32 & 0xF;
          if (v32 > 0xF || v36 == 0)
          {
            v38 = a2;
            v39 = a3;
            v40 = (v36 + 1);
            if (v31 + v40 > v16)
            {
              goto LABEL_53;
            }

            v41 = webrtc::RtpPacket::FindOrCreateExtensionInfo(this, v32 >> 4);
            if (v41[1] && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
            {
              v75 = v75 & 0xFFFFFFFF00000000 | 0x10B8;
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
            }

            v28 = v78;
            this = v79;
            a3 = v39;
            a2 = v38;
            v49 = *(v79 + 10);
            if (!((v49 + v77) >> 16))
            {
              *(v41 + 1) = v49 + v77;
              v41[1] = v40;
              v29 = v27 + v40 + v49;
              *(v79 + 10) = v29;
              v31 = v29 + v27;
              if (v29 + v27 < v16)
              {
                continue;
              }
            }
          }
        }

        goto LABEL_54;
      }

      v31 = v27 + v29;
      v33 = v29 + 1;
      v34 = &v30[v29];
      while (1)
      {
        *(this + 10) = v33;
        if (++v31 >= v16)
        {
          break;
        }

        v35 = *v34++;
        v32 = v35;
        ++v33;
        if (v35)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_54:
    *(this + 2) = v5;
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  if ((v4 & 0x20) == 0)
  {
LABEL_55:
    v6 = 0;
    *(this + 2) = 0;
    goto LABEL_56;
  }

LABEL_7:
  if (v5 >= a3)
  {
    goto LABEL_55;
  }

  v6 = a2[a3 - 1];
  *(this + 2) = v6;
  if (!v6)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
    }

    return 0;
  }

LABEL_56:
  v71 = v5 + v6;
  v72 = a3 >= v71;
  v73 = a3 - v71;
  if (v72)
  {
    *(this + 3) = v73;
    return 1;
  }

  return 0;
}

uint64_t webrtc::RtpPacket::Parse(uint64_t a1, void *a2)
{
  if (*a2)
  {
    result = webrtc::RtpPacket::ParseBuffer(a1, (*(*a2 + 16) + a2[1]), a2[2]);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    *a1 = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = xmmword_273BA3780;
    *(a1 + 2) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = *(a1 + 56);
    v9 = result;
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity((a1 + 88), *(*(a1 + 88) + 8) - *(a1 + 96));
    v10 = *(*(a1 + 88) + 16) + *(a1 + 96);
    *(v10 + 8) = 0;
    *v10 = 0;
    webrtc::CopyOnWriteBuffer::SetSize((a1 + 88), 0xCuLL);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity((a1 + 88), *(*(a1 + 88) + 8) - *(a1 + 96));
    result = v9;
    *(*(*(a1 + 88) + 16) + *(a1 + 96)) = 0x80;
    return result;
  }

  result = webrtc::RtpPacket::ParseBuffer(a1, 0, a2[2]);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = *a2;
  *a2 = 0;
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;
  if (v6 && atomic_fetch_add((v6 + 24), 0xFFFFFFFF) == 1)
  {
    v7 = result;
    v8 = *(v6 + 16);
    *(v6 + 16) = 0;
    if (v8)
    {
      MEMORY[0x2743DA520](v8, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v6, 0x1010C40EE34DA14);
    result = v7;
  }

  *(a1 + 96) = *(a2 + 1);
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

char *webrtc::RtpPacket::CopyHeaderFrom(char *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  *(result + 2) = *(a2 + 4);
  *(result + 1) = *(a2 + 8);
  *(result + 2) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(result + 47) = *(a2 + 47);
  *(result + 2) = v4;
  if (result != a2)
  {
    result = std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(result + 7, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  v5 = *(a2 + 88);
  *(v3 + 10) = *(a2 + 80);
  v6 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 24), 1u, memory_order_relaxed);
  }

  v7 = *(a2 + 96);
  v8 = *(v3 + 11);
  *(v3 + 11) = v5;
  if (v8 && atomic_fetch_add((v8 + 24), 0xFFFFFFFF) == 1)
  {
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
    if (v9)
    {
      MEMORY[0x2743DA520](v9, 0x1000C8077774924);
    }

    result = MEMORY[0x2743DA540](v8, 0x1010C40EE34DA14);
  }

  *(v3 + 12) = v7;
  *(v3 + 13) = v6;
  *(v3 + 3) = 0;
  v3[2] = 0;
  return result;
}

uint64_t webrtc::RtpPacket::WriteAt(webrtc::RtpPacket *this, uint64_t a2)
{
  v3 = *(this + 11);
  if (!v3)
  {
    return a2;
  }

  webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this + 11, *(v3 + 8) - *(this + 12));
  return *(*(this + 11) + 16) + *(this + 12) + a2;
}

void webrtc::RtpPacket::ZeroMutableExtensions(webrtc::RtpPacket *this)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 != v3)
  {
    while (1)
    {
      Type = webrtc::RtpHeaderExtensionMap::GetType((this + 32), *v2);
      if (Type > 0xD)
      {
        goto LABEL_5;
      }

      if (((1 << Type) & 0x322) != 0)
      {
        break;
      }

      if (!Type)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v1 = v1 & 0xFFFFFFFF00000000 | 0x562;
          webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
        }

        goto LABEL_5;
      }

      if (Type == 13)
      {
        v10 = v2[1];
        if (v10 >= 8)
        {
          v11 = *(v2 + 1);
          v12 = *(this + 11);
          if (v12)
          {
            webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this + 11, *(v12 + 8) - *(this + 12));
            v12 = *(*(this + 11) + 16) + *(this + 12);
            v10 = v2[1];
          }

          v5 = v10 - 7;
          v6 = (v12 + v11 + 7);
          goto LABEL_4;
        }
      }

LABEL_5:
      v2 += 4;
      if (v2 == v3)
      {
        return;
      }
    }

    v8 = *(v2 + 1);
    v9 = *(this + 11);
    if (v9)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this + 11, *(v9 + 8) - *(this + 12));
      v9 = *(*(this + 11) + 16) + *(this + 12);
    }

    v5 = v2[1];
    v6 = (v9 + v8);
LABEL_4:
    bzero(v6, v5);
    goto LABEL_5;
  }
}

unint64_t *webrtc::RtpPacket::SetCsrcs(webrtc::CopyOnWriteBuffer *this, uint64_t a2, uint64_t a3)
{
  v6 = 4 * a3;
  v8 = (this + 88);
  v7 = *(this + 11);
  *(this + 2) = 4 * a3 + 12;
  v9 = *(this + 12);
  v10 = *(*(v7 + 16) + v9) & 0xF0 | a3;
  webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this + 11, *(v7 + 8) - v9);
  *(*(*v8 + 16) + v8[1]) = v10;
  if (a3)
  {
    v11 = 0;
    do
    {
      v12 = *(a2 + v11);
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v8, *(*(this + 11) + 8) - *(this + 12));
      *(*(*(this + 11) + 16) + *(this + 12) + v11 + 12) = bswap32(v12);
      v11 += 4;
    }

    while (v6 != v11);
  }

  v13 = *(this + 2);

  return webrtc::CopyOnWriteBuffer::SetSize(v8, v13);
}

uint64_t webrtc::RtpPacket::AllocateRawExtension(webrtc::RtpPacket *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *(this + 7);
  v10 = *(this + 8);
  if (v9 != v10)
  {
    v11 = *(this + 7);
    while (*v11 != a2)
    {
      v11 += 4;
      if (v11 == v10)
      {
        goto LABEL_5;
      }
    }

    if (v11[1] == a3)
    {
      v19 = *(v11 + 1);
      v20 = *(this + 11);
      if (v20)
      {
        v21 = this;
        v22 = a3;
        webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this + 11, *(v20 + 8) - *(this + 12));
        a3 = v22;
        v23 = *(*(v21 + 11) + 16) + *(v21 + 12);
      }

      else
      {
        v23 = 0;
      }

      v51 = v23 + v19;
      v52 = a3 == 0;
      goto LABEL_69;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
    }

    return 0;
  }

LABEL_5:
  if (*(this + 3))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_13:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
    return 0;
  }

  if (*(this + 2))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_13;
  }

  v31 = *(this + 11);
  v32 = *(this + 12);
  v33 = (this + 88);
  v34 = (*(v31 + 16) + v32);
  v35 = a2 >= 15 || (a3 - 1) >= 0x10;
  v36 = !v35;
  if (v35 && (*(this + 54) & 1) == 0)
  {
    goto LABEL_75;
  }

  v37 = 4 * (*v34 & 0xF);
  v38 = v37 + 12;
  v39 = v37 + 16;
  v40 = *(this + 10);
  v41 = this;
  if (!v40)
  {
    if (v36)
    {
      v42 = -16674;
    }

    else
    {
      v42 = 4096;
    }

    goto LABEL_37;
  }

  v42 = v34[v39 - 3] | (v34[v38] << 8);
  if (v42 != 48862)
  {
    LOBYTE(v36) = 1;
  }

  if (v36)
  {
LABEL_37:
    v53 = v42 == 48862;
    if (v42 == 48862)
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    v55 = v40 + a3 + v54;
    v56 = HIBYTE(v42);
    if (v55 + v39 > (*(v31 + 8) - v32))
    {
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  v43 = a3 + 2;
  if (a3 + 2 + ((v10 - v9) >> 2) + v39 + v40 > (*(v31 + 8) - v32))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_42:
    webrtc::webrtc_logging_impl::Log("\r\t", v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
    return 0;
  }

  v89 = a3;
  webrtc::RtpPacket::PromoteToTwoByteHeaderExtension(this, a2, a3, a4, a5, a6, a7, a8);
  this = v41;
  v40 = *(v41 + 10);
  v31 = *(v41 + 11);
  v55 = v43 + v40;
  v58 = v55 + v39;
  v53 = 0;
  LOBYTE(v42) = 0;
  if (v31)
  {
    v56 = 16;
    v54 = 2;
    LOBYTE(a3) = v89;
    if (v58 <= *(v31 + 8) - *(v41 + 12))
    {
      goto LABEL_46;
    }

LABEL_41:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_42;
  }

  v56 = 16;
  v54 = 2;
  LOBYTE(a3) = v89;
  if (v58)
  {
    goto LABEL_41;
  }

LABEL_46:
  if (!v40)
  {
    v59 = *(this + 12);
    v88 = *(*(v31 + 16) + v59) | 0x10;
    v90 = v56;
    v60 = a3;
    v61 = v55;
    v62 = v53;
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(v31 + 8) - v59);
    *(*(*(v41 + 11) + 16) + *(v41 + 12)) = v88;
    v63 = webrtc::RtpPacket::WriteAt(v41, v38);
    v53 = v62;
    v55 = v61;
    LOBYTE(a3) = v60;
    v64 = v63;
    this = v41;
    *v64 = v90;
    v64[1] = v42;
  }

  if (v53)
  {
    v65 = (a3 - 1) | (16 * v8);
    v66 = *(this + 10);
    v67 = a3;
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(*(this + 11) + 8) - *(this + 12));
    v68 = v41;
    *(*(*(v41 + 11) + 16) + *(v41 + 12) + v39 + v66) = v65;
    v69 = v67;
  }

  else
  {
    v70 = *(this + 10);
    v69 = a3;
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(*(this + 11) + 8) - *(this + 12));
    *(*(*(v41 + 11) + 16) + *(v41 + 12) + v39 + v70) = v8;
    v71 = *(v41 + 10);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(*(v41 + 11) + 8) - *(v41 + 12));
    v68 = v41;
    *(*(*(v41 + 11) + 16) + *(v41 + 12) + v39 + v71 + 1) = v69;
  }

  v72 = *(v68 + 10) + (v54 | v39);
  v73 = *(v68 + 8);
  v74 = *(v68 + 9);
  if (v73 >= v74)
  {
    v75 = *(v68 + 7);
    v76 = ((v73 - v75) >> 2) + 1;
    if (v76 >> 62)
    {
      goto LABEL_76;
    }

    v77 = v74 - v75;
    if (v77 >> 1 > v76)
    {
      v76 = v77 >> 1;
    }

    v35 = v77 >= 0x7FFFFFFFFFFFFFFCLL;
    v78 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v35)
    {
      v78 = v76;
    }

    if (v78)
    {
      if (!(v78 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_74;
  }

  if (!v73)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc", 271, "!two_byte_header_required || extensions_.ExtmapAllowMixed()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v87);
LABEL_76:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v73 = v8;
  *(v73 + 1) = v69;
  *(v73 + 2) = v72;
  *(v68 + 8) = v73 + 4;
  *(v68 + 10) = v55;
  v79 = v55 + 3;
  webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(*(v68 + 11) + 8) - *(v68 + 12));
  v80 = *(*(v41 + 11) + 16) + *(v41 + 12) + v39;
  *(v80 - 2) = v79 >> 10;
  *(v80 - 1) = (v55 + 3) >> 2;
  v82 = *(v41 + 10);
  v81 = *(v41 + 11);
  if (v81)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(v81 + 8) - *(v41 + 12));
    v83 = *(*(v41 + 11) + 16) + *(v41 + 12);
  }

  else
  {
    v83 = 0;
  }

  bzero((v83 + v82 + v39), (v79 & 0x3FFFC) - v82);
  v84 = v39 + (v79 & 0xFFFC);
  *(v41 + 2) = v84;
  webrtc::CopyOnWriteBuffer::SetSize(v33, v84);
  v85 = *(v41 + 11);
  if (v85)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v33, *(v85 + 8) - *(v41 + 12));
    v86 = *(*(v41 + 11) + 16) + *(v41 + 12);
  }

  else
  {
    v86 = 0;
  }

  v51 = v86 + v72;
  v52 = v69 == 0;
LABEL_69:
  if (v52)
  {
    return 0;
  }

  else
  {
    return v51;
  }
}

unint64_t *webrtc::RtpPacket::PromoteToTwoByteHeaderExtension(webrtc::RtpPacket *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (this + 88);
  v10 = *(this + 8);
  v11 = v10 - *(this + 7);
  v12 = v11 >> 2;
  if (!v11)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc", 352, "extension_entries_.size() > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v12);
    goto LABEL_14;
  }

  v14 = *(this + 3);
  if (v14)
  {
LABEL_14:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc", 353, "payload_size_ == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v14);
    return webrtc::RtpPacket::SetPadding(v32, v33);
  }

  v15 = (*(*(this + 11) + 16) + *(this + 12));
  v16 = 4 * (*v15 & 0xF);
  v17 = v16 + 12;
  v18 = v16 + 16;
  if ((v15[v16 + 13] | (v15[v16 + 12] << 8)) == 0xBEDE)
  {
    goto LABEL_6;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc", 355, "kOneByteExtensionProfileId == ByteReader<uint16_t>::ReadBigEndian( data() + extensions_offset - 4)", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 48862);
  while (1)
  {
    v20 = v10 - 4;
    memmove((v19 + v8 + v12), (v19 + v8), *(v10 - 3));
    v21 = *(v10 - 3);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(*(this + 11) + 8) - *(this + 12));
    *(*(*(this + 11) + 16) + *(this + 12) + v8 + v12 - 1) = v21;
    v22 = *(v10 - 4);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(*(this + 11) + 8) - *(this + 12));
    *(*(*(this + 11) + 16) + *(this + 12) + v8 + v12-- - 2) = v22;
    v10 = v20;
    if (v20 == *(this + 7))
    {
      break;
    }

LABEL_6:
    v8 = *(v10 - 2);
    *(v10 - 2) = v12 + v8;
    v19 = *v9;
    if (*v9)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(v19 + 8) - *(this + 12));
      v19 = *(*(this + 11) + 16) + *(this + 12);
    }
  }

  webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(*(this + 11) + 8) - *(this + 12));
  *(*(*(this + 11) + 16) + *(this + 12) + v17) = 16;
  v23 = *(this + 11);
  v24 = *(this + 10) + ((*(this + 8) - *(this + 7)) >> 2);
  *(this + 10) = v24;
  v25 = v24 + 3;
  v26 = (v24 + 3) >> 2;
  webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(v23 + 8) - *(this + 12));
  v27 = *(*(this + 11) + 16) + *(this + 12) + v18;
  *(v27 - 2) = v25 >> 10;
  *(v27 - 1) = v26;
  v29 = *(this + 10);
  v28 = *(this + 11);
  if (v28)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v9, *(v28 + 8) - *(this + 12));
    v28 = *(*(this + 11) + 16) + *(this + 12);
  }

  bzero((v28 + v29 + v18), (v25 & 0x3FFFC) - v29);
  v30 = v18 + (v25 & 0xFFFC);
  *(this + 2) = v30;

  return webrtc::CopyOnWriteBuffer::SetSize(v9, v30);
}

BOOL webrtc::RtpPacket::SetPadding(webrtc::RtpPacket *this, uint64_t a2)
{
  v4 = (this + 88);
  v3 = *(this + 11);
  v5 = *(this + 3) + *(this + 2);
  v6 = v5 + a2;
  if (v3)
  {
    v7 = *(v3 + 8) - *(this + 12);
    if (v6 <= v7)
    {
LABEL_3:
      *(this + 2) = a2;
      webrtc::CopyOnWriteBuffer::SetSize(this + 11, v5 + a2);
      v8 = *(this + 2);
      if (*(this + 2))
      {
        v9 = *(this + 3) + *(this + 2);
        v10 = *(this + 11);
        if (v10)
        {
          webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v4, *(v10 + 8) - *(this + 12));
          v10 = *(*(this + 11) + 16) + *(this + 12);
        }

        bzero((v10 + v9), *(this + 2) - 1);
        v21 = *(this + 2);
        webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v4, *(*(this + 11) + 8) - *(this + 12));
        *(*(*(this + 11) + 16) + *(this + 12) + v9 + v8 - 1) = v21;
        v18 = *(this + 12);
        v19 = *(*(this + 11) + 8);
        v20 = *(*(*(this + 11) + 16) + v18) | 0x20;
      }

      else
      {
        v18 = *(this + 12);
        v19 = *(*(this + 11) + 8);
        v20 = *(*(*(this + 11) + 16) + v18) & 0xDF;
      }

      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v4, v19 - v18);
      *(*(*(this + 11) + 16) + *(this + 12)) = v20;
      return v6 <= v7;
    }
  }

  else
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet.cc");
  }

  return v6 <= v7;
}

unsigned __int8 *webrtc::RtpPacket::FindOrCreateExtensionInfo(webrtc::RtpPacket *this, int a2)
{
  v4 = *(this + 7);
  v3 = *(this + 8);
  if (v4 == v3)
  {
LABEL_5:
    v6 = *(this + 9);
    if (v3 >= v6)
    {
      v8 = ((v3 - v4) >> 2) + 1;
      if (v8 >> 62)
      {
        goto LABEL_20;
      }

      v9 = v6 - v4;
      if (v9 >> 1 > v8)
      {
        v8 = v9 >> 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        if (!(v8 >> 62))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v3)
    {
      *v3 = a2;
      *(v3 + 1) = 0;
      v7 = v3 + 4;
      *(v3 + 2) = 0;
      *(this + 8) = v7;
      if (v4 != v7)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = *(this + 7);
  while (*result != a2)
  {
    result += 4;
    if (result == v3)
    {
      goto LABEL_5;
    }
  }

  return result;
}

void webrtc::RtpPacketHistory::~RtpPacketHistory(webrtc::RtpPacketHistory *this)
{
  if (*(this + 368) == 1)
  {
    v2 = *(this + 42);
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 31);
    if (v3 && atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        MEMORY[0x2743DA520](v4, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
    }

    v5 = *(this + 27);
    if (v5)
    {
      *(this + 28) = v5;
      operator delete(v5);
    }
  }

  std::deque<webrtc::RtpPacketHistory::StoredPacket>::clear(this + 13);
  v6 = *(this + 14);
  v7 = *(this + 15);
  if (v6 != v7)
  {
    do
    {
      v8 = *v6++;
      operator delete(v8);
    }

    while (v6 != v7);
    v6 = *(this + 14);
    v7 = *(this + 15);
  }

  if (v7 != v6)
  {
    *(this + 15) = v7 + ((v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    operator delete(v9);
  }

  pthread_mutex_destroy((this + 16));
}

uint64_t webrtc::RtpPacketHistory::SetStorePacketsStatus(uint64_t a1, int a2, unint64_t a3)
{
  pthread_mutex_lock((a1 + 16));
  if (a2 && *(a1 + 88) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet_history.cc");
  }

  std::deque<webrtc::RtpPacketHistory::StoredPacket>::clear((a1 + 104));
  if (*(a1 + 368) == 1)
  {
    v13 = *(a1 + 336);
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(a1 + 248);
    if (v14 && atomic_fetch_add((v14 + 24), 0xFFFFFFFF) == 1)
    {
      v15 = *(v14 + 16);
      *(v14 + 16) = 0;
      if (v15)
      {
        MEMORY[0x2743DA520](v15, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v14, 0x1010C40EE34DA14);
    }

    v16 = *(a1 + 216);
    if (v16)
    {
      *(a1 + 224) = v16;
      operator delete(v16);
    }

    *(a1 + 368) = 0;
  }

  *(a1 + 88) = a2;
  v17 = 9600;
  if (a3 < 0x2580)
  {
    v17 = a3;
  }

  *(a1 + 80) = v17;

  return pthread_mutex_unlock((a1 + 16));
}

void webrtc::RtpPacketHistory::CullOldPackets(webrtc::RtpPacketHistory *this)
{
  v2 = (*(**this + 16))(*this);
  v3 = *(this + 12);
  v4 = &webrtc::RtpPacketHistory::kMinPacketDuration;
  if ((v3 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = 3 * v3;
    if (v3 >= 333334)
    {
      v4 = &v25;
    }
  }

  v5 = *(this + 18);
  if (v5)
  {
    v6 = *v4;
    v24 = 3 * *v4;
    do
    {
      if (v5 >> 7 < 0x4B)
      {
        v12 = *(this + 14);
        v13 = *(this + 17);
        v14 = v12[v13 / 0x66] + 40 * (v13 % 0x66);
        if (*(v14 + 8))
        {
          return;
        }

        v15 = *(v14 + 16);
        v16 = v6 == 0x8000000000000000 || v15 == 0x8000000000000000;
        v17 = v15 + v6;
        if (v16)
        {
          v17 = 0x8000000000000000;
        }

        if (v6 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v17 > v2)
        {
          return;
        }

        if (v5 < *(this + 10))
        {
          v19 = v15 + v24;
          if (v15 == 0x8000000000000000)
          {
            v19 = *(v14 + 16);
          }

          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v19;
          }

          if (v15 > v2)
          {
            return;
          }
        }

        v11 = *v14;
        *v14 = 0;
        do
        {
          if (*(v12[v13 / 0x66] + 5 * (v13 % 0x66)))
          {
            break;
          }

          --v5;
          *(this + 17) = ++v13;
          *(this + 18) = v5;
          if (v13 >= 0xCC)
          {
            operator delete(*v12);
            v12 = (*(this + 14) + 8);
            *(this + 14) = v12;
            v5 = *(this + 18);
            v13 = *(this + 17) - 102;
            *(this + 17) = v13;
          }
        }

        while (v5);
      }

      else
      {
        v7 = *(this + 17);
        v8 = *(this + 14);
        v9 = v8[v7 / 0x66];
        v10 = 40 * (v7 % 0x66);
        v11 = *&v9[v10];
        *&v9[v10] = 0;
        do
        {
          if (*(v8[v7 / 0x66] + 5 * (v7 % 0x66)))
          {
            break;
          }

          --v5;
          *(this + 17) = ++v7;
          *(this + 18) = v5;
          if (v7 >= 0xCC)
          {
            operator delete(*v8);
            v8 = (*(this + 14) + 8);
            *(this + 14) = v8;
            v5 = *(this + 18);
            v7 = *(this + 17) - 102;
            *(this + 17) = v7;
          }
        }

        while (v5);
      }

      if (v11)
      {
        v20 = v11[22];
        if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v20 + 8))(v20);
        }

        v21 = v11[11];
        if (v21 && atomic_fetch_add((v21 + 24), 0xFFFFFFFF) == 1)
        {
          v22 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v22)
          {
            MEMORY[0x2743DA520](v22, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v21, 0x1010C40EE34DA14);
        }

        v23 = v11[7];
        if (v23)
        {
          v11[8] = v23;
          operator delete(v23);
        }

        MEMORY[0x2743DA540](v11, 0x1020C4060F6C936);
        v5 = *(this + 18);
      }
    }

    while (v5);
  }
}

uint64_t webrtc::RtpPacketHistory::PutRtpPacket(uint64_t a1, void *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 88))
  {
    goto LABEL_81;
  }

  webrtc::RtpPacketHistory::CullOldPackets(a1);
  v6 = *(*a2 + 4);
  v7 = *(a1 + 144);
  v79 = a3;
  v80 = a2;
  if (!v7 || (v8 = *(a1 + 112), v9 = *(a1 + 136), v10 = *(*(*(v8 + 8 * (v9 / 0x66)) + 40 * (v9 % 0x66)) + 4), v10 == v6))
  {
    v11 = 0;
    goto LABEL_5;
  }

  v11 = v6 - v10;
  if (v6 - v10 == 0x8000)
  {
    if (v10 >= v6)
    {
      goto LABEL_86;
    }

LABEL_89:
    if (v10 > v6)
    {
      v11 += 0x10000;
      goto LABEL_5;
    }

    goto LABEL_91;
  }

  if ((v11 & 0x8000) == 0)
  {
    goto LABEL_89;
  }

LABEL_86:
  if (v10 < v6)
  {
    goto LABEL_104;
  }

LABEL_91:
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_105;
  }

LABEL_5:
  if (v7 <= v11 || !*(*(*(a1 + 112) + 8 * ((*(a1 + 136) + v11) / 0x66)) + 40 * ((*(a1 + 136) + v11) % 0x66)))
  {
    goto LABEL_26;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packet_history.cc");
  }

  v19 = *(a1 + 144);
  if (v19 <= v11)
  {
    goto LABEL_134;
  }

  v20 = *(a1 + 136);
  v21 = *(a1 + 112);
  v22 = v21[(v20 + v11) / 0x66];
  v23 = 40 * ((v20 + v11) % 0x66);
  v24 = *&v22[v23];
  *&v22[v23] = 0;
  if (!v11)
  {
    do
    {
      if (*(v21[v20 / 0x66] + 5 * (v20 % 0x66)))
      {
        break;
      }

      --v19;
      *(a1 + 136) = ++v20;
      *(a1 + 144) = v19;
      if (v20 >= 0xCC)
      {
        operator delete(*v21);
        v21 = (*(a1 + 112) + 8);
        *(a1 + 112) = v21;
        v19 = *(a1 + 144);
        v20 = *(a1 + 136) - 102;
        *(a1 + 136) = v20;
      }
    }

    while (v19);
  }

  if (v24)
  {
    v25 = v24[22];
    if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v24[11];
    if (v26 && atomic_fetch_add((v26 + 24), 0xFFFFFFFF) == 1)
    {
      v27 = *(v26 + 16);
      *(v26 + 16) = 0;
      if (v27)
      {
        MEMORY[0x2743DA520](v27, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v26, 0x1010C40EE34DA14);
    }

    v28 = v24[7];
    if (v28)
    {
      v24[8] = v28;
      operator delete(v28);
    }

    MEMORY[0x2743DA540](v24, 0x1020C4060F6C936);
  }

  v7 = *(a1 + 144);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = *(a1 + 112);
  v9 = *(a1 + 136);
  v29 = *(*(*(v8 + 8 * (v9 / 0x66)) + 40 * (v9 % 0x66)) + 4);
  if (v29 == v6)
  {
    goto LABEL_25;
  }

  v11 = v6 - v29;
  if (v6 - v29 == 0x8000)
  {
    if (v29 >= v6)
    {
      goto LABEL_103;
    }

LABEL_130:
    if (v29 > v6)
    {
      v11 += 0x10000;
      goto LABEL_26;
    }

    goto LABEL_132;
  }

  if ((v11 & 0x8000) == 0)
  {
    goto LABEL_130;
  }

LABEL_103:
  if (v29 < v6)
  {
LABEL_104:
    v11 -= 0x10000;
    goto LABEL_105;
  }

LABEL_132:
  if ((v11 & 0x80000000) != 0)
  {
LABEL_105:
    v68 = *(a1 + 120);
    do
    {
      if (!v9)
      {
        v71 = v68 - v8;
        v72 = 102 * ((v68 - v8) >> 3) - 1;
        if (v68 == v8)
        {
          v72 = 0;
        }

        if (v72 - v7 < 0x66)
        {
          v73 = *(a1 + 128);
          v74 = *(a1 + 104);
          if (v71 < v73 - v74)
          {
            if (v8 != v74)
            {
              operator new();
            }

            operator new();
          }

          if (v73 == v74)
          {
            v75 = 1;
          }

          else
          {
            v75 = (v73 - v74) >> 2;
          }

          if (!(v75 >> 61))
          {
            operator new();
          }

LABEL_135:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(a1 + 136) = 102;
        v81 = *(v68 - 8);
        *(a1 + 120) = v68 - 8;
        std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>((a1 + 104), &v81);
        v9 = *(a1 + 136);
        v8 = *(a1 + 112);
        v68 = *(a1 + 120);
      }

      v76 = (v8 + 8 * (v9 / 0x66));
      v77 = *v76 + 40 * (v9 % 0x66);
      if (v68 == v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v77;
      }

      if (v78 == *v76)
      {
        v78 = *(v76 - 1) + 4080;
      }

      *(v78 - 8) = 0;
      *(v78 - 24) = 0u;
      *(v78 - 40) = 0u;
      v69 = vaddq_s64(*(a1 + 136), xmmword_273BA37A0);
      *(a1 + 136) = v69;
      v8 = *(a1 + 112);
      v68 = *(a1 + 120);
      v7 = v69.u64[1];
      v9 = v69.i64[0];
    }

    while (!__CFADD__(v11++, 1));
LABEL_25:
    v11 = 0;
  }

LABEL_26:
  while (v11 >= v7)
  {
    v30 = *(a1 + 112);
    v31 = *(a1 + 120);
    if (v31 == v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = 102 * ((v31 - v30) >> 3) - 1;
    }

    v33 = *(a1 + 136);
    if (v32 == v33 + v7)
    {
      if (v33 < 0x66)
      {
        v34 = *(a1 + 128);
        v35 = *(a1 + 104);
        if (v31 - v30 < (v34 - v35))
        {
          if (v34 != v31)
          {
            operator new();
          }

          operator new();
        }

        if (v34 == v35)
        {
          v36 = 1;
        }

        else
        {
          v36 = (v34 - v35) >> 2;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_135;
      }

      *(a1 + 136) = v33 - 102;
      v81 = *v30;
      *(a1 + 112) = v30 + 8;
      std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((a1 + 104), &v81);
      v30 = *(a1 + 112);
      v31 = *(a1 + 120);
    }

    if (v31 == v30)
    {
      goto LABEL_134;
    }

    v37 = *(a1 + 144) + *(a1 + 136);
    v38 = *&v30[8 * (v37 / 0x66)];
    if (!v38)
    {
      goto LABEL_134;
    }

    v39 = v38 + 40 * (v37 % 0x66);
    *(v39 + 32) = 0;
    *v39 = 0u;
    *(v39 + 16) = 0u;
    v7 = *(a1 + 144) + 1;
    *(a1 + 144) = v7;
  }

  v40 = v80;
  v41 = *v80;
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 368) == 1)
    {
      if ((*(v41 + 3) + 100) <= *(a1 + 184))
      {
        v65 = *(v41 + 2);
        v66 = *(a1 + 164) + 0x2000;
        v67 = v65 - v66;
        if (v67 == 0x8000)
        {
          if (v65 <= v66)
          {
            goto LABEL_67;
          }
        }

        else if (v65 == v66 || (v67 & 0x8000) != 0)
        {
          goto LABEL_67;
        }
      }

      v42 = *(a1 + 336);
      if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v42 + 8))(v42);
      }

      v43 = *(a1 + 248);
      if (v43 && atomic_fetch_add((v43 + 24), 0xFFFFFFFF) == 1)
      {
        v44 = *(v43 + 16);
        *(v43 + 16) = 0;
        if (v44)
        {
          MEMORY[0x2743DA520](v44, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v43, 0x1010C40EE34DA14);
      }

      v45 = *(a1 + 216);
      if (v45)
      {
        *(a1 + 224) = v45;
        operator delete(v45);
      }

      *(a1 + 368) = 0;
    }

    v46 = *v41;
    v47 = v41[1];
    v48 = v41[2];
    *(a1 + 207) = *(v41 + 47);
    *(a1 + 176) = v47;
    *(a1 + 192) = v48;
    *(a1 + 160) = v46;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 216) = 0;
    v50 = *(v41 + 7);
    v49 = *(v41 + 8);
    if (v49 != v50)
    {
      if (((v49 - v50) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 240) = *(v41 + 10);
    v51 = *(v41 + 11);
    *(a1 + 248) = v51;
    v40 = v80;
    if (v51)
    {
      atomic_fetch_add_explicit((v51 + 24), 1u, memory_order_relaxed);
    }

    *(a1 + 256) = v41[6];
    v52 = v41[7];
    v53 = v41[8];
    v54 = v41[9];
    *(a1 + 317) = *(v41 + 157);
    *(a1 + 288) = v53;
    *(a1 + 304) = v54;
    *(a1 + 272) = v52;
    v55 = *(v41 + 22);
    *(a1 + 336) = v55;
    if (v55)
    {
      atomic_fetch_add_explicit((v55 + 8), 1u, memory_order_relaxed);
    }

    v56 = *(v41 + 184);
    *(a1 + 360) = *(v41 + 200);
    *(a1 + 344) = v56;
    *(a1 + 368) = 1;
    v7 = *(a1 + 144);
    v41 = *v80;
  }

LABEL_67:
  *v40 = 0;
  v57 = *(a1 + 152);
  *(a1 + 152) = v57 + 1;
  if (v7 <= v11)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v58 = *(*(a1 + 112) + 8 * ((*(a1 + 136) + v11) / 0x66)) + 40 * ((*(a1 + 136) + v11) % 0x66);
  v59 = *v58;
  *v58 = v41;
  if (v59)
  {
    v60 = v59[22];
    if (v60 && atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v60 + 8))(v60);
    }

    v61 = v59[11];
    if (v61 && atomic_fetch_add((v61 + 24), 0xFFFFFFFF) == 1)
    {
      v62 = *(v61 + 16);
      *(v61 + 16) = 0;
      if (v62)
      {
        MEMORY[0x2743DA520](v62, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v61, 0x1010C40EE34DA14);
    }

    v63 = v59[7];
    if (v63)
    {
      v59[8] = v63;
      operator delete(v63);
    }

    MEMORY[0x2743DA540](v59, 0x1020C4060F6C936);
  }

  *(v58 + 8) = 0;
  *(v58 + 16) = v79;
  *(v58 + 24) = v57;
  *(v58 + 32) = 0;
LABEL_81:

  return pthread_mutex_unlock((a1 + 16));
}