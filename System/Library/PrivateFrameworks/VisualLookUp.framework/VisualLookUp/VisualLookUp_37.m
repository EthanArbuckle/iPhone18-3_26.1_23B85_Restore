void sub_1D9C53C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder16>::scan_codes_range(faiss::BufferList *a1, uint64_t a2, int8x16_t *a3, uint64_t a4, faiss::RangeQueryResult *this, double a6)
{
  v8 = *&a6;
  v11 = a1;
  v12 = *(a1 + 18);
  if (*(a1 + 220))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a1 + 56);
  if (*(a1 + 13) >= 1)
  {
    if (v14 != 2)
    {
    }

    v15 = *(*(a1 + 4) + 32);
    v16 = *(*(a1 + 1) + 416);
    if (v15 > 19)
    {
      switch(v15)
      {
        case 20:
          v17 = 0;
          if (a2)
          {
            v77 = 0;
            v78 = *(a1 + 20);
            v79 = *v78;
            v80 = v78[1].i32[0];
            v81 = v12 << 32;
            v139 = *v78;
            do
            {
              v82 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v79))))));
              v83 = vadd_s32(vdup_lane_s32(v82, 1), v82);
              v84 = v83.i32[0];
              v83.i32[0] = a3[1].i32[0] ^ v80;
              v85 = vcnt_s8(v83);
              v85.i16[0] = vaddlv_u8(v85);
              if (v84 + v85.i32[0] < v16)
              {
                v86 = *(v11 + 4);
                if (*(v86 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v87 = *(v11 + 54);
                v88 = *(v86 + 8);
                if (v88)
                {
                  v89 = 0;
                  v90 = *(v11 + 7);
                  v91 = 4 * *(v86 + 40);
                  do
                  {
                    v87 = v87 + *(v90 + 4 * a3->u16[v89++]);
                    v90 += v91;
                  }

                  while (v88 != v89);
                }

                ++v17;
                if (v87 < v8)
                {
                  if (v13)
                  {
                    v92 = *(v13 + 8 * v77);
                  }

                  else
                  {
                    v92 = v77 | v81;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v87, v92);
                  v79 = v139;
                }
              }

              a3 = (a3 + 20);
              ++v77;
            }

            while (v77 != a2);
          }

          goto LABEL_142;
        case 32:
          v17 = 0;
          if (a2)
          {
            v114 = 0;
            v115 = *(a1 + 20);
            v117 = *v115;
            v116 = v115[1];
            v118 = v12 << 32;
            v136 = *v115;
            v140 = v116;
            do
            {
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v117))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v116))))))) < v16)
              {
                v119 = *(v11 + 4);
                if (*(v119 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v120 = *(v11 + 54);
                v121 = *(v119 + 8);
                if (v121)
                {
                  v122 = 0;
                  v123 = *(v11 + 7);
                  v124 = 4 * *(v119 + 40);
                  do
                  {
                    v120 = v120 + *(v123 + 4 * a3->u16[v122++]);
                    v123 += v124;
                  }

                  while (v121 != v122);
                }

                ++v17;
                if (v120 < v8)
                {
                  if (v13)
                  {
                    v125 = *(v13 + 8 * v114);
                  }

                  else
                  {
                    v125 = v114 | v118;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v120, v125);
                  v117 = v136;
                  v116 = v140;
                }
              }

              a3 += 2;
              ++v114;
            }

            while (v114 != a2);
          }

          goto LABEL_142;
        case 64:
          v17 = 0;
          if (a2)
          {
            v39 = 0;
            v40 = *(a1 + 20);
            v42 = v40[2];
            v41 = v40[3];
            v44 = *v40;
            v43 = v40[1];
            v45 = v12 << 32;
            v135 = v42;
            v138 = v41;
            v133 = *v40;
            v134 = v43;
            do
            {
              if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v44))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v43)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v42))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v41)))))))) < v16)
              {
                v46 = *(v11 + 4);
                if (*(v46 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v47 = *(v11 + 54);
                v48 = *(v46 + 8);
                if (v48)
                {
                  v49 = 0;
                  v50 = *(v11 + 7);
                  v51 = 4 * *(v46 + 40);
                  do
                  {
                    v47 = v47 + *(v50 + 4 * a3->u16[v49++]);
                    v50 += v51;
                  }

                  while (v48 != v49);
                }

                ++v17;
                if (v47 < v8)
                {
                  if (v13)
                  {
                    v52 = *(v13 + 8 * v39);
                  }

                  else
                  {
                    v52 = v39 | v45;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v47, v52);
                  v42 = v135;
                  v41 = v138;
                  v44 = v133;
                  v43 = v134;
                }
              }

              a3 += 4;
              ++v39;
            }

            while (v39 != a2);
          }

          goto LABEL_142;
      }
    }

    else
    {
      switch(v15)
      {
        case 4:
          v17 = 0;
          if (a2)
          {
            v67 = 0;
            v68 = **(a1 + 20);
            v69 = v12 << 32;
            do
            {
              LODWORD(a6) = a3->i32[0] ^ v68;
              a6 = COERCE_DOUBLE(vcnt_s8(*&a6));
              LOWORD(a6) = vaddlv_u8(*&a6);
              if (SLODWORD(a6) < v16)
              {
                v70 = *(v11 + 4);
                if (*(v70 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v71 = *(v11 + 54);
                v72 = *(v70 + 8);
                if (v72)
                {
                  v73 = 0;
                  v74 = *(v11 + 7);
                  v75 = 4 * *(v70 + 40);
                  do
                  {
                    v71 = v71 + *(v74 + 4 * a3->u16[v73++]);
                    v74 += v75;
                  }

                  while (v72 != v73);
                }

                ++v17;
                if (v71 < v8)
                {
                  if (v13)
                  {
                    v76 = *(v13 + 8 * v67);
                  }

                  else
                  {
                    v76 = v67 | v69;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v71, v76);
                }
              }

              a3 = (a3 + 4);
              ++v67;
            }

            while (v67 != a2);
          }

          goto LABEL_142;
        case 8:
          v17 = 0;
          if (a2)
          {
            v103 = 0;
            v104 = **(a1 + 20);
            v105 = v12 << 32;
            do
            {
              v106 = vcnt_s8((a3->i64[0] ^ v104));
              v106.i16[0] = vaddlv_u8(v106);
              if (v16 > v106.i32[0])
              {
                v107 = *(v11 + 4);
                if (*(v107 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v108 = *(v11 + 54);
                v109 = *(v107 + 8);
                if (v109)
                {
                  v110 = 0;
                  v111 = *(v11 + 7);
                  v112 = 4 * *(v107 + 40);
                  do
                  {
                    v108 = v108 + *(v111 + 4 * a3->u16[v110++]);
                    v111 += v112;
                  }

                  while (v109 != v110);
                }

                ++v17;
                if (v108 < v8)
                {
                  if (v13)
                  {
                    v113 = *(v13 + 8 * v103);
                  }

                  else
                  {
                    v113 = v103 | v105;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v108, v113);
                }
              }

              a3 = (a3 + 8);
              ++v103;
            }

            while (v103 != a2);
          }

          goto LABEL_142;
        case 16:
          v17 = 0;
          if (a2)
          {
            v18 = 0;
            v19 = **(a1 + 20);
            v20 = v12 << 32;
            v137 = v19;
            do
            {
              v21 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v19))))));
              if (vadd_s32(vdup_lane_s32(v21, 1), v21).i32[0] < v16)
              {
                v22 = *(v11 + 4);
                if (*(v22 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v23 = *(v11 + 54);
                v24 = *(v22 + 8);
                if (v24)
                {
                  v25 = 0;
                  v26 = *(v11 + 7);
                  v27 = 4 * *(v22 + 40);
                  do
                  {
                    v23 = v23 + *(v26 + 4 * a3->u16[v25++]);
                    v26 += v27;
                  }

                  while (v24 != v25);
                }

                ++v17;
                if (v23 < v8)
                {
                  if (v13)
                  {
                    v28 = *(v13 + 8 * v18);
                  }

                  else
                  {
                    v28 = v18 | v20;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v23, v28);
                  v19 = v137;
                }
              }

              ++a3;
              ++v18;
            }

            while (v18 != a2);
          }

LABEL_142:
          faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
          qword_1ECB70E30 += v17;
          return;
      }
    }

    v141 = *(a1 + 20);
    v142 = v15 / 8;
    v143 = v15 - (v6 & 0xFFFFFFF8);
    v17 = 0;
    if (a2)
    {
      v93 = 0;
      v94 = v15;
      v95 = v12 << 32;
      do
      {
        a1 = faiss::HammingComputerDefault::hamming(&v141, a3);
        if (a1 < v16)
        {
          v96 = *(v11 + 4);
          if (*(v96 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v97 = *(v11 + 54);
          v98 = *(v96 + 8);
          if (v98)
          {
            v99 = 0;
            v100 = *(v11 + 7);
            v101 = 4 * *(v96 + 40);
            do
            {
              v97 = v97 + *(v100 + 4 * a3->u16[v99++]);
              v100 += v101;
            }

            while (v98 != v99);
          }

          ++v17;
          if (v97 < v8)
          {
            if (v13)
            {
              v102 = *(v13 + 8 * v93);
            }

            else
            {
              v102 = v93 | v95;
            }

            a1 = faiss::RangeQueryResult::add(this, v97, v102);
          }
        }

        a3 = (a3 + v94);
        ++v93;
      }

      while (v93 != a2);
    }

    goto LABEL_142;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2)
      {
        v53 = 0;
        v54 = v12 << 32;
        do
        {
          v55 = *(v11 + 4);
          if (*(v55 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v56 = *(v11 + 54);
          v57 = *(v55 + 8);
          if (v57)
          {
            v58 = *(v11 + 8);
            v59 = *(v11 + 14);
            v60 = a3;
            do
            {
              v62 = v60->u16[0];
              v60 = (v60 + 2);
              v61 = v62;
              v63 = *v59++;
              v56 = v56 + (*(v63 + 4 * v61) + (*(v58 + 4 * v61) * -2.0));
              v58 += 4 * *(v55 + 40);
              --v57;
            }

            while (v57);
          }

          v64 = *(v55 + 32);
          if (v56 < v8)
          {
            if (v13)
            {
              v65 = *(v13 + 8 * v53);
            }

            else
            {
              v65 = v53 | v54;
            }

            faiss::RangeQueryResult::add(this, v56, v65);
          }

          a3 = (a3 + v64);
          ++v53;
        }

        while (v53 != a2);
      }
    }

    else
    {
      if (v14 != 2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v141, "bad precomp mode");
        faiss::FaissException::FaissException(exception, &v141, "virtual void faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_L2, faiss::CMax<float, long long>, faiss::PQDecoder16>::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const [METRIC_TYPE = faiss::METRIC_L2, C = faiss::CMax<float, long long>, PQDecoder = faiss::PQDecoder16]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1126);
      }

      if (a2)
      {
        v29 = 0;
        v30 = v12 << 32;
        do
        {
          v31 = *(v11 + 4);
          if (*(v31 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v32 = *(v11 + 54);
          v33 = *(v31 + 8);
          if (v33)
          {
            v34 = *(v11 + 7);
            v35 = a3;
            do
            {
              v36 = v35->u16[0];
              v35 = (v35 + 2);
              v32 = v32 + *(v34 + 4 * v36);
              v34 += 4 * *(v31 + 40);
              --v33;
            }

            while (v33);
          }

          v37 = *(v31 + 32);
          if (v32 < v8)
          {
            if (v13)
            {
              v38 = *(v13 + 8 * v29);
            }

            else
            {
              v38 = v29 | v30;
            }

            faiss::RangeQueryResult::add(this, v32, v38);
          }

          a3 = (a3 + v37);
          ++v29;
        }

        while (v29 != a2);
      }
    }
  }

  else
  {
    if (*(a1 + 44) == 1)
    {
      v66 = (a1 + 72);
      (*(**(*(a1 + 1) + 40) + 104))(*(*(a1 + 1) + 40), *(a1 + 17), *(a1 + 9), v12);
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v66 = (a1 + 136);
      if (!a2)
      {
        return;
      }
    }

    v126 = 0;
    v127 = *v66;
    v128 = v12 << 32;
    do
    {
      faiss::ProductQuantizer::decode(*(v11 + 4), a3, *(v11 + 10));
      v129 = *(*(v11 + 4) + 32);
      v130 = faiss::fvec_L2sqr(*(v11 + 10), v127, *(v11 + 6));
      if (v130 < v8)
      {
        if (v13)
        {
          v131 = *(v13 + 8 * v126);
        }

        else
        {
          v131 = v126 | v128;
        }

        faiss::RangeQueryResult::add(this, v130, v131);
      }

      a3 = (a3 + v129);
      ++v126;
    }

    while (a2 != v126);
  }
}

void sub_1D9C54630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder16>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder16>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoderGeneric>::set_list(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 224);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  if (v4 == 1)
  {
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }
  }

  *(a1 + 216) = v5;
}

float faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoderGeneric>::distance_to_code(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 224) != 2)
  {
  }

  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3 > 64)
  {
    faiss::decode<faiss::PQDecoderGeneric>();
  }

  result = *(a1 + 216);
  v5 = v2[1];
  if (v5)
  {
    v6 = 0;
    LOBYTE(v7) = 0;
    LODWORD(v8) = 0;
    v9 = *(a1 + 56);
    v10 = v2[5];
    do
    {
      if (!v7)
      {
        LODWORD(v8) = *a2;
      }

      v11 = v8 >> v7;
      v12 = v3 + v7;
      v13 = v12 - 8;
      if (v12 < 8)
      {
        LOBYTE(v7) = v3 + v7;
      }

      else
      {
        v14 = 8 - v7;
        v15 = a2 + 1;
        if (v12 < 0x10)
        {
          ++a2;
        }

        else
        {
          v16 = v13 >> 3;
          v17 = (v13 >> 3) - 1;
          do
          {
            v18 = *v15++;
            v11 |= v18 << v14;
            v14 += 8;
            --v16;
          }

          while (v16);
          a2 += v17 + 2;
        }

        v7 = (v7 + v3) & 7;
        if (v7)
        {
          v8 = *a2;
          v11 |= v8 << v14;
        }
      }

      result = result + *(v9 + 4 * (v11 & ~(-1 << v3)));
      v9 += 4 * v10;
      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoderGeneric>::scan_codes(unint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v12 = a1;
  v13 = *(a1 + 144);
  if (*(a1 + 220))
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v303 = v14;
  v15 = *(a1 + 224);
  if (*(a1 + 52) >= 1)
  {
    if (v15 != 2)
    {
    }

    v16 = *(a1 + 32);
    v17 = v16[4];
    v304 = *(*(a1 + 8) + 416);
    if (v17 <= 19)
    {
      if (v17 != 4)
      {
        if (v17 != 8)
        {
          if (v17 == 16)
          {
            v18 = 0;
            if (a2)
            {
              v19 = 0;
              v20 = 0;
              v21 = 0;
              v22 = **(a1 + 160);
              v23 = a5 - 1;
              v24 = a6 - 8;
              v295 = v13 << 32;
              while (1)
              {
                v25 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v22))))));
                if (vadd_s32(vdup_lane_s32(v25, 1), v25).i32[0] >= v304)
                {
                  goto LABEL_43;
                }

                v26 = v16[2];
                if (v26 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v27 = *(v12 + 216);
                v28 = v16[1];
                if (v28)
                {
                  a1 = 0;
                  LOBYTE(v29) = 0;
                  LODWORD(v30) = 0;
                  v31 = *(v12 + 56);
                  v32 = a3;
                  do
                  {
                    if (!v29)
                    {
                      LODWORD(v30) = v32->u8[0];
                    }

                    v33 = v30 >> v29;
                    v34 = v26 + v29;
                    if (v34 < 8)
                    {
                      LOBYTE(v29) = v26 + v29;
                      v36 = v32;
                    }

                    else
                    {
                      v35 = 8 - v29;
                      v36 = &v32->i8[1];
                      v37 = (v34 - 8) >> 3;
                      if (v34 >= 0x10)
                      {
                        do
                        {
                          v38 = v36->u8[0];
                          v36 = (v36 + 1);
                          v33 |= v38 << v35;
                          v35 += 8;
                          --v37;
                        }

                        while (v37);
                        v36 = &v32->i8[((v34 - 8) >> 3) + 1];
                      }

                      v29 = (v29 + v26) & 7;
                      if (v29)
                      {
                        v30 = v36->u8[0];
                        v33 |= v30 << v35;
                      }
                    }

                    v27 = v27 + *(v31 + 4 * (v33 & ~(-1 << v26)));
                    v31 += 4 * v16[5];
                    ++a1;
                    v32 = v36;
                  }

                  while (a1 != v28);
                }

                ++v20;
                if (*a5 >= v27)
                {
                  goto LABEL_43;
                }

                if (v303)
                {
                  v39 = *(v303 + 8 * v21);
                }

                else
                {
                  v39 = v21 | v295;
                }

                if (a7 < 2)
                {
                  v40 = 1;
                  goto LABEL_42;
                }

                v41 = 3;
                v42 = 2;
                a1 = 1;
                while (1)
                {
                  if (v42 == a7)
                  {
                    v43 = v23[a7];
                    goto LABEL_36;
                  }

                  v43 = v23[v42];
                  v44 = a5[v42];
                  if (v43 >= v44)
                  {
                    break;
                  }

LABEL_36:
                  v44 = v43;
                  v45 = a6 - 8;
                  v41 = v42;
                  if (v43 > v27)
                  {
                    goto LABEL_41;
                  }

LABEL_39:
                  v23[a1] = v44;
                  *(v24 + 8 * a1) = *(v45 + 8 * v42);
                  v40 = v41;
                  v42 = 2 * v41;
                  v41 = (2 * v41) | 1;
                  a1 = v40;
                  if (v42 > a7)
                  {
                    goto LABEL_42;
                  }
                }

                v45 = a6;
                if (v44 <= v27)
                {
                  goto LABEL_39;
                }

LABEL_41:
                v40 = a1;
LABEL_42:
                v23[v40] = v27;
                *(v24 + 8 * v40) = v39;
                v18 = ++v19;
LABEL_43:
                ++a3;
                if (++v21 == a2)
                {
LABEL_358:
                  faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                  qword_1ECB70E30 += v20;
                  return v18;
                }
              }
            }

LABEL_357:
            v20 = 0;
            goto LABEL_358;
          }

          goto LABEL_252;
        }

        v18 = 0;
        if (!a2)
        {
          goto LABEL_357;
        }

        v20 = 0;
        v234 = 0;
        v235 = **(a1 + 160);
        v236 = a5 - 1;
        v237 = a6 - 8;
        v294 = v13 << 32;
        v301 = 0;
LABEL_289:
        v238 = vcnt_s8((a3->i64[0] ^ v235));
        v238.i16[0] = vaddlv_u8(v238);
        if (v304 <= v238.i32[0])
        {
          goto LABEL_320;
        }

        v239 = v16[2];
        if (v239 >= 65)
        {
          faiss::decode<faiss::PQDecoderGeneric>();
        }

        v240 = *(v12 + 216);
        a1 = v16[1];
        if (a1)
        {
          v241 = 0;
          LOBYTE(v242) = 0;
          LODWORD(v243) = 0;
          v244 = *(v12 + 56);
          v245 = a3;
          do
          {
            if (!v242)
            {
              LODWORD(v243) = v245->u8[0];
            }

            v246 = v243 >> v242;
            v247 = v239 + v242;
            v248 = v247 - 8;
            if (v247 < 8)
            {
              LOBYTE(v242) = v239 + v242;
              v250 = v245;
            }

            else
            {
              v249 = 8 - v242;
              v250 = &v245->i8[1];
              v251 = v248 >> 3;
              v252 = v248 >> 3;
              if (v247 >= 0x10)
              {
                do
                {
                  v253 = v250->u8[0];
                  v250 = (v250 + 1);
                  v246 |= v253 << v249;
                  v249 += 8;
                  --v252;
                }

                while (v252);
                v250 = &v245->i8[v251 + 1];
              }

              v242 = (v242 + v239) & 7;
              if (v242)
              {
                v243 = v250->u8[0];
                v246 |= v243 << v249;
              }
            }

            v240 = v240 + *(v244 + 4 * (v246 & ~(-1 << v239)));
            v244 += 4 * v16[5];
            ++v241;
            v245 = v250;
          }

          while (v241 != a1);
        }

        ++v20;
        if (*a5 >= v240)
        {
          goto LABEL_320;
        }

        if (v303)
        {
          v254 = *(v303 + 8 * v234);
        }

        else
        {
          v254 = v234 | v294;
        }

        if (a7 < 2)
        {
          v255 = 1;
          goto LABEL_319;
        }

        v256 = 3;
        a1 = 2;
        v257 = 1;
        while (a1 != a7)
        {
          v258 = v236[a1];
          v259 = a5[a1];
          if (v258 < v259)
          {
            goto LABEL_313;
          }

          v260 = a6;
          if (v259 > v240)
          {
LABEL_318:
            v255 = v257;
LABEL_319:
            v236[v255] = v240;
            *(v237 + 8 * v255) = v254;
            v18 = ++v301;
LABEL_320:
            a3 = (a3 + 8);
            if (++v234 == a2)
            {
              goto LABEL_358;
            }

            goto LABEL_289;
          }

LABEL_316:
          v236[v257] = v259;
          *(v237 + 8 * v257) = *(v260 + 8 * a1);
          v255 = v256;
          a1 = 2 * v256;
          v256 = (2 * v256) | 1;
          v257 = v255;
          if (a1 > a7)
          {
            goto LABEL_319;
          }
        }

        v258 = v236[a7];
LABEL_313:
        v259 = v258;
        v260 = v237;
        v256 = a1;
        if (v258 > v240)
        {
          goto LABEL_318;
        }

        goto LABEL_316;
      }

      v18 = 0;
      if (!a2)
      {
        goto LABEL_357;
      }

      v20 = 0;
      v149 = 0;
      v150 = **(a1 + 160);
      v151 = a5 - 1;
      v152 = a6 - 8;
      v291 = v13 << 32;
      v298 = 0;
LABEL_184:
      a8.i32[0] = a3->i32[0] ^ v150;
      a8 = vcnt_s8(a8);
      a8.i16[0] = vaddlv_u8(a8);
      if (a8.i32[0] >= v304)
      {
        goto LABEL_215;
      }

      v153 = v16[2];
      if (v153 >= 65)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v154 = *(v12 + 216);
      a1 = v16[1];
      if (a1)
      {
        v155 = 0;
        LOBYTE(v156) = 0;
        LODWORD(v157) = 0;
        v158 = *(v12 + 56);
        v159 = a3;
        do
        {
          if (!v156)
          {
            LODWORD(v157) = v159->u8[0];
          }

          v160 = v157 >> v156;
          v161 = v153 + v156;
          v162 = v161 - 8;
          if (v161 < 8)
          {
            LOBYTE(v156) = v153 + v156;
            v164 = v159;
          }

          else
          {
            v163 = 8 - v156;
            v164 = &v159->i8[1];
            v165 = v162 >> 3;
            v166 = v162 >> 3;
            if (v161 >= 0x10)
            {
              do
              {
                v167 = v164->u8[0];
                v164 = (v164 + 1);
                v160 |= v167 << v163;
                v163 += 8;
                --v166;
              }

              while (v166);
              v164 = &v159->i8[v165 + 1];
            }

            v156 = (v156 + v153) & 7;
            if (v156)
            {
              v157 = v164->u8[0];
              v160 |= v157 << v163;
            }
          }

          v154 = v154 + *(v158 + 4 * (v160 & ~(-1 << v153)));
          v158 += 4 * v16[5];
          ++v155;
          v159 = v164;
        }

        while (v155 != a1);
      }

      ++v20;
      if (*a5 >= v154)
      {
        goto LABEL_215;
      }

      if (v303)
      {
        v168 = *(v303 + 8 * v149);
      }

      else
      {
        v168 = v149 | v291;
      }

      if (a7 < 2)
      {
        v169 = 1;
        goto LABEL_214;
      }

      v170 = 3;
      a1 = 2;
      v171 = 1;
      while (a1 != a7)
      {
        v172 = v151[a1];
        v173 = a5[a1];
        if (v172 < v173)
        {
          goto LABEL_208;
        }

        v174 = a6;
        if (v173 > v154)
        {
LABEL_213:
          v169 = v171;
LABEL_214:
          v151[v169] = v154;
          *(v152 + 8 * v169) = v168;
          v18 = ++v298;
LABEL_215:
          a3 = (a3 + 4);
          if (++v149 == a2)
          {
            goto LABEL_358;
          }

          goto LABEL_184;
        }

LABEL_211:
        v151[v171] = v173;
        *(v152 + 8 * v171) = *(v174 + 8 * a1);
        v169 = v170;
        a1 = 2 * v170;
        v170 = (2 * v170) | 1;
        v171 = v169;
        if (a1 > a7)
        {
          goto LABEL_214;
        }
      }

      v172 = v151[a7];
LABEL_208:
      v173 = v172;
      v174 = v152;
      v170 = a1;
      if (v172 > v154)
      {
        goto LABEL_213;
      }

      goto LABEL_211;
    }

    if (v17 != 20)
    {
      if (v17 != 32)
      {
        if (v17 != 64)
        {
LABEL_252:
          v309 = *(a1 + 160);
          v310 = v17 / 8;
          v311 = v17 - (v16 & 0xFFFFFFF8);
          if (!a2)
          {
            v293 = 0;
            v207 = 0;
            goto LABEL_361;
          }

          v207 = 0;
          v208 = 0;
          v293 = 0;
          v300 = v17;
          v290 = v13 << 32;
          v209 = a5 - 1;
          v210 = a6 - 8;
LABEL_254:
          a1 = faiss::HammingComputerDefault::hamming(&v309, a3);
          if (a1 >= v304)
          {
            goto LABEL_285;
          }

          v211 = *(v12 + 32);
          v212 = v211[2];
          if (v212 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v213 = *(v12 + 216);
          v214 = v211[1];
          if (v214)
          {
            v215 = 0;
            LOBYTE(v216) = 0;
            LODWORD(v217) = 0;
            v218 = *(v12 + 56);
            v219 = v211[5];
            v220 = a3;
            do
            {
              if (!v216)
              {
                LODWORD(v217) = v220->u8[0];
              }

              v221 = v217 >> v216;
              v222 = v212 + v216;
              if (v222 < 8)
              {
                LOBYTE(v216) = v212 + v216;
                a1 = v220;
              }

              else
              {
                v223 = 8 - v216;
                a1 = v220->u64 + 1;
                v224 = (v222 - 8) >> 3;
                if (v222 >= 0x10)
                {
                  do
                  {
                    v225 = *a1++;
                    v221 |= v225 << v223;
                    v223 += 8;
                    --v224;
                  }

                  while (v224);
                  a1 = v220->u64 + ((v222 - 8) >> 3) + 1;
                }

                v216 = (v216 + v212) & 7;
                if (v216)
                {
                  v217 = *a1;
                  v221 |= v217 << v223;
                }
              }

              v213 = v213 + *(v218 + 4 * (v221 & ~(-1 << v212)));
              v218 += 4 * v219;
              ++v215;
              v220 = a1;
            }

            while (v215 != v214);
          }

          ++v207;
          if (*a5 >= v213)
          {
            goto LABEL_285;
          }

          if (v303)
          {
            v226 = *(v303 + 8 * v208);
          }

          else
          {
            v226 = v208 | v290;
          }

          if (a7 < 2)
          {
            v227 = 1;
            goto LABEL_284;
          }

          v228 = 3;
          v229 = 2;
          v230 = 1;
          while (v229 != a7)
          {
            v231 = v209[v229];
            v232 = a5[v229];
            if (v231 < v232)
            {
              goto LABEL_278;
            }

            v233 = a6;
            if (v232 > v213)
            {
LABEL_283:
              v227 = v230;
LABEL_284:
              v209[v227] = v213;
              *(v210 + 8 * v227) = v226;
              ++v293;
LABEL_285:
              a3 = (a3 + v300);
              if (++v208 == a2)
              {
LABEL_361:
                faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                qword_1ECB70E30 += v207;
                return v293;
              }

              goto LABEL_254;
            }

LABEL_281:
            v209[v230] = v232;
            *(v210 + 8 * v230) = *(v233 + 8 * v229);
            v227 = v228;
            v229 = 2 * v228;
            v228 = (2 * v228) | 1;
            v230 = v227;
            if (v229 > a7)
            {
              goto LABEL_284;
            }
          }

          v231 = v209[a7];
LABEL_278:
          v232 = v231;
          v233 = v210;
          v228 = v229;
          if (v231 > v213)
          {
            goto LABEL_283;
          }

          goto LABEL_281;
        }

        v18 = 0;
        if (!a2)
        {
          goto LABEL_357;
        }

        v77 = 0;
        v20 = 0;
        v78 = 0;
        v79 = *(a1 + 160);
        v81 = v79[2];
        v80 = v79[3];
        v82 = a5 - 1;
        v84 = *v79;
        v83 = v79[1];
        v85 = a6 - 8;
        v296 = v13 << 32;
LABEL_89:
        if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v84))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v83)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v81))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v80)))))))) >= v304)
        {
          goto LABEL_120;
        }

        v86 = v16[2];
        if (v86 >= 65)
        {
          faiss::decode<faiss::PQDecoderGeneric>();
        }

        v87 = *(v12 + 216);
        v88 = v16[1];
        if (v88)
        {
          a1 = 0;
          LOBYTE(v89) = 0;
          LODWORD(v90) = 0;
          v91 = *(v12 + 56);
          v92 = a3;
          do
          {
            if (!v89)
            {
              LODWORD(v90) = v92->u8[0];
            }

            v93 = v90 >> v89;
            v94 = v86 + v89;
            if (v94 < 8)
            {
              LOBYTE(v89) = v86 + v89;
              v96 = v92;
            }

            else
            {
              v95 = 8 - v89;
              v96 = &v92->i8[1];
              v97 = (v94 - 8) >> 3;
              if (v94 >= 0x10)
              {
                do
                {
                  v98 = v96->u8[0];
                  v96 = (v96 + 1);
                  v93 |= v98 << v95;
                  v95 += 8;
                  --v97;
                }

                while (v97);
                v96 = &v92->i8[((v94 - 8) >> 3) + 1];
              }

              v89 = (v89 + v86) & 7;
              if (v89)
              {
                v90 = v96->u8[0];
                v93 |= v90 << v95;
              }
            }

            v87 = v87 + *(v91 + 4 * (v93 & ~(-1 << v86)));
            v91 += 4 * v16[5];
            ++a1;
            v92 = v96;
          }

          while (a1 != v88);
        }

        ++v20;
        if (*a5 >= v87)
        {
          goto LABEL_120;
        }

        if (v303)
        {
          v99 = *(v303 + 8 * v78);
        }

        else
        {
          v99 = v78 | v296;
        }

        if (a7 < 2)
        {
          v100 = 1;
          goto LABEL_119;
        }

        v101 = 3;
        v102 = 2;
        a1 = 1;
        while (v102 != a7)
        {
          v103 = v82[v102];
          v104 = a5[v102];
          if (v103 < v104)
          {
            goto LABEL_113;
          }

          v105 = a6;
          if (v104 > v87)
          {
LABEL_118:
            v100 = a1;
LABEL_119:
            v82[v100] = v87;
            *(v85 + 8 * v100) = v99;
            v18 = ++v77;
LABEL_120:
            a3 += 4;
            if (++v78 == a2)
            {
              goto LABEL_358;
            }

            goto LABEL_89;
          }

LABEL_116:
          v82[a1] = v104;
          *(v85 + 8 * a1) = *(v105 + 8 * v102);
          v100 = v101;
          v102 = 2 * v101;
          v101 = (2 * v101) | 1;
          a1 = v100;
          if (v102 > a7)
          {
            goto LABEL_119;
          }
        }

        v103 = v82[a7];
LABEL_113:
        v104 = v103;
        v105 = a6 - 8;
        v101 = v102;
        if (v103 > v87)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      v18 = 0;
      if (!a2)
      {
        goto LABEL_357;
      }

      v261 = 0;
      v20 = 0;
      v262 = 0;
      v263 = *(a1 + 160);
      v264 = a5 - 1;
      v266 = *v263;
      v265 = v263[1];
      v267 = a6 - 8;
      v302 = v13 << 32;
LABEL_324:
      if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v266))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v265))))))) >= v304)
      {
        goto LABEL_355;
      }

      v268 = v16[2];
      if (v268 >= 65)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v269 = *(v12 + 216);
      v270 = v16[1];
      if (v270)
      {
        a1 = 0;
        LOBYTE(v271) = 0;
        LODWORD(v272) = 0;
        v273 = *(v12 + 56);
        v274 = a3;
        do
        {
          if (!v271)
          {
            LODWORD(v272) = v274->u8[0];
          }

          v275 = v272 >> v271;
          v276 = v268 + v271;
          if (v276 < 8)
          {
            LOBYTE(v271) = v268 + v271;
            v278 = v274;
          }

          else
          {
            v277 = 8 - v271;
            v278 = &v274->i8[1];
            v279 = (v276 - 8) >> 3;
            if (v276 >= 0x10)
            {
              do
              {
                v280 = v278->u8[0];
                v278 = (v278 + 1);
                v275 |= v280 << v277;
                v277 += 8;
                --v279;
              }

              while (v279);
              v278 = &v274->i8[((v276 - 8) >> 3) + 1];
            }

            v271 = (v271 + v268) & 7;
            if (v271)
            {
              v272 = v278->u8[0];
              v275 |= v272 << v277;
            }
          }

          v269 = v269 + *(v273 + 4 * (v275 & ~(-1 << v268)));
          v273 += 4 * v16[5];
          ++a1;
          v274 = v278;
        }

        while (a1 != v270);
      }

      ++v20;
      if (*a5 >= v269)
      {
        goto LABEL_355;
      }

      if (v303)
      {
        v281 = *(v303 + 8 * v262);
      }

      else
      {
        v281 = v262 | v302;
      }

      if (a7 < 2)
      {
        v282 = 1;
        goto LABEL_354;
      }

      v283 = 3;
      v284 = 2;
      a1 = 1;
      while (v284 != a7)
      {
        v285 = v264[v284];
        v286 = a5[v284];
        if (v285 < v286)
        {
          goto LABEL_348;
        }

        v287 = a6;
        if (v286 > v269)
        {
LABEL_353:
          v282 = a1;
LABEL_354:
          v264[v282] = v269;
          *(v267 + 8 * v282) = v281;
          v18 = ++v261;
LABEL_355:
          a3 += 2;
          if (++v262 == a2)
          {
            goto LABEL_358;
          }

          goto LABEL_324;
        }

LABEL_351:
        v264[a1] = v286;
        *(v267 + 8 * a1) = *(v287 + 8 * v284);
        v282 = v283;
        v284 = 2 * v283;
        v283 = (2 * v283) | 1;
        a1 = v282;
        if (v284 > a7)
        {
          goto LABEL_354;
        }
      }

      v285 = v264[a7];
LABEL_348:
      v286 = v285;
      v287 = a6 - 8;
      v283 = v284;
      if (v285 > v269)
      {
        goto LABEL_353;
      }

      goto LABEL_351;
    }

    v18 = 0;
    if (!a2)
    {
      goto LABEL_357;
    }

    v20 = 0;
    v175 = 0;
    v176 = *(a1 + 160);
    v177 = *v176;
    v178 = a5 - 1;
    v179 = v176[1].i32[0];
    v180 = a6 - 8;
    v292 = v13 << 32;
    v299 = 0;
LABEL_219:
    v181 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v177))))));
    v182 = vadd_s32(vdup_lane_s32(v181, 1), v181);
    v183 = v182.i32[0];
    v182.i32[0] = a3[1].i32[0] ^ v179;
    v184 = vcnt_s8(v182);
    v184.i16[0] = vaddlv_u8(v184);
    if (v183 + v184.i32[0] >= v304)
    {
      goto LABEL_250;
    }

    v185 = v16[2];
    if (v185 >= 65)
    {
      faiss::decode<faiss::PQDecoderGeneric>();
    }

    v186 = *(v12 + 216);
    a1 = v16[1];
    if (a1)
    {
      v187 = 0;
      LOBYTE(v188) = 0;
      LODWORD(v189) = 0;
      v190 = *(v12 + 56);
      v191 = a3;
      do
      {
        if (!v188)
        {
          LODWORD(v189) = v191->u8[0];
        }

        v192 = v189 >> v188;
        v193 = v185 + v188;
        v194 = v193 - 8;
        if (v193 < 8)
        {
          LOBYTE(v188) = v185 + v188;
          v196 = v191;
        }

        else
        {
          v195 = 8 - v188;
          v196 = &v191->i8[1];
          v197 = v194 >> 3;
          v198 = v194 >> 3;
          if (v193 >= 0x10)
          {
            do
            {
              v199 = v196->u8[0];
              v196 = (v196 + 1);
              v192 |= v199 << v195;
              v195 += 8;
              --v198;
            }

            while (v198);
            v196 = &v191->i8[v197 + 1];
          }

          v188 = (v188 + v185) & 7;
          if (v188)
          {
            v189 = v196->u8[0];
            v192 |= v189 << v195;
          }
        }

        v186 = v186 + *(v190 + 4 * (v192 & ~(-1 << v185)));
        v190 += 4 * v16[5];
        ++v187;
        v191 = v196;
      }

      while (v187 != a1);
    }

    ++v20;
    if (*a5 >= v186)
    {
      goto LABEL_250;
    }

    if (v303)
    {
      v200 = *(v303 + 8 * v175);
    }

    else
    {
      v200 = v175 | v292;
    }

    if (a7 < 2)
    {
      v201 = 1;
      goto LABEL_249;
    }

    v202 = 3;
    a1 = 2;
    v203 = 1;
    while (a1 != a7)
    {
      v204 = v178[a1];
      v205 = a5[a1];
      if (v204 < v205)
      {
        goto LABEL_243;
      }

      v206 = a6;
      if (v205 > v186)
      {
LABEL_248:
        v201 = v203;
LABEL_249:
        v178[v201] = v186;
        *(v180 + 8 * v201) = v200;
        v18 = ++v299;
LABEL_250:
        a3 = (a3 + 20);
        if (++v175 == a2)
        {
          goto LABEL_358;
        }

        goto LABEL_219;
      }

LABEL_246:
      v178[v203] = v205;
      *(v180 + 8 * v203) = *(v206 + 8 * a1);
      v201 = v202;
      a1 = 2 * v202;
      v202 = (2 * v202) | 1;
      v203 = v201;
      if (a1 > a7)
      {
        goto LABEL_249;
      }
    }

    v204 = v178[a7];
LABEL_243:
    v205 = v204;
    v206 = v180;
    v202 = a1;
    if (v204 > v186)
    {
      goto LABEL_248;
    }

    goto LABEL_246;
  }

  if (!v15)
  {
    v135 = 0.0;
    if (*(a1 + 44) == 1)
    {
      (*(**(*(a1 + 8) + 40) + 80))(*(*(a1 + 8) + 40), v13, *(a1 + 72));
      v135 = faiss::fvec_inner_product(*(v12 + 72), *(v12 + 136), *(v12 + 24));
    }

    if (!a2)
    {
      return 0;
    }

    v18 = 0;
    v136 = 0;
    v307 = v13 << 32;
    v137 = a5 - 1;
    v138 = a6 - 8;
LABEL_162:
    faiss::ProductQuantizer::decode(*(v12 + 32), a3, *(v12 + 80));
    v139 = *(*(v12 + 32) + 32);
    v140 = v135 + faiss::fvec_inner_product(*(v12 + 80), *(v12 + 136), *(v12 + 24));
    if (*a5 >= v140)
    {
      goto LABEL_179;
    }

    if (v303)
    {
      v141 = *(v303 + 8 * v136);
    }

    else
    {
      v141 = v136 | v307;
    }

    if (a7 < 2)
    {
      v142 = 1;
      goto LABEL_178;
    }

    v143 = 3;
    v144 = 2;
    v145 = 1;
    while (v144 != a7)
    {
      v146 = v137[v144];
      v147 = a5[v144];
      if (v146 < v147)
      {
        goto LABEL_172;
      }

      v148 = a6;
      if (v147 > v140)
      {
LABEL_177:
        v142 = v145;
LABEL_178:
        v137[v142] = v140;
        *(v138 + 8 * v142) = v141;
        ++v18;
LABEL_179:
        a3 = (a3 + v139);
        if (++v136 == a2)
        {
          return v18;
        }

        goto LABEL_162;
      }

LABEL_175:
      v137[v145] = v147;
      *(v138 + 8 * v145) = *(v148 + 8 * v144);
      v142 = v143;
      v144 = 2 * v143;
      v143 = (2 * v143) | 1;
      v145 = v142;
      if (v144 > a7)
      {
        goto LABEL_178;
      }
    }

    v146 = v137[a7];
LABEL_172:
    v147 = v146;
    v148 = a6 - 8;
    v143 = v144;
    if (v146 > v140)
    {
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  if (v15 == 1)
  {
    if (!a2)
    {
      return 0;
    }

    v106 = *(a1 + 32);
    v107 = v106[2];
    if (v107 > 64)
    {
      faiss::decode<faiss::PQDecoderGeneric>();
    }

    v18 = 0;
    v108 = 0;
    v109 = 0;
    v110 = a5 - 1;
    v111 = a6 - 8;
    v112 = v106[4];
    v306 = *(a1 + 64);
    v113 = v106[1];
    v297 = v13 << 32;
LABEL_125:
    v114 = *(v12 + 216);
    if (v113)
    {
      v115 = 0;
      LOBYTE(v116) = 0;
      LODWORD(v117) = 0;
      v118 = v306;
      v119 = a3;
      do
      {
        if (!v116)
        {
          LODWORD(v117) = v119->u8[0];
        }

        v120 = v117 >> v116;
        v121 = v107 + v116;
        if (v121 < 8)
        {
          LOBYTE(v116) = v107 + v116;
        }

        else
        {
          v122 = 8 - v116;
          v123 = &v119->u8[1];
          if (v121 < 0x10)
          {
            v119 = (v119 + 1);
          }

          else
          {
            v124 = (v121 - 8) >> 3;
            v125 = v124 - 1;
            do
            {
              v126 = *v123++;
              v120 |= v126 << v122;
              v122 += 8;
              --v124;
            }

            while (v124);
            v119 = (v119 + v125 + 2);
          }

          v116 = (v116 + v107) & 7;
          if (v116)
          {
            v117 = v119->u8[0];
            v120 |= v117 << v122;
          }
        }

        v114 = v114 + (*(*(*(v12 + 112) + 8 * v115) + 4 * (v120 & ~(-1 << v107))) + (*(v118 + 4 * (v120 & ~(-1 << v107))) * -2.0));
        v118 += 4 * v106[5];
        ++v115;
      }

      while (v115 != v113);
    }

    if (*a5 >= v114)
    {
      goto LABEL_156;
    }

    if (v303)
    {
      v127 = *(v303 + 8 * v109);
    }

    else
    {
      v127 = v109 | v297;
    }

    if (a7 < 2)
    {
      v128 = 1;
      goto LABEL_155;
    }

    v129 = 3;
    v130 = 2;
    v131 = 1;
    while (v130 != a7)
    {
      v132 = v110[v130];
      v133 = a5[v130];
      if (v132 < v133)
      {
        goto LABEL_149;
      }

      v134 = a6;
      if (v133 > v114)
      {
LABEL_154:
        v128 = v131;
LABEL_155:
        v110[v128] = v114;
        *(v111 + 8 * v128) = v127;
        v18 = ++v108;
LABEL_156:
        a3 = (a3 + v112);
        if (++v109 == a2)
        {
          return v18;
        }

        goto LABEL_125;
      }

LABEL_152:
      v110[v131] = v133;
      *(v111 + 8 * v131) = *(v134 + 8 * v130);
      v128 = v129;
      v130 = 2 * v129;
      v129 = (2 * v129) | 1;
      v131 = v128;
      if (v130 > a7)
      {
        goto LABEL_155;
      }
    }

    v132 = v110[a7];
LABEL_149:
    v133 = v132;
    v134 = v111;
    v129 = v130;
    if (v132 > v114)
    {
      goto LABEL_154;
    }

    goto LABEL_152;
  }

  if (v15 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v309, "bad precomp mode");
    faiss::FaissException::FaissException(exception, &v309, "virtual size_t faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_INNER_PRODUCT, faiss::CMin<float, long long>, faiss::PQDecoderGeneric>::scan_codes(size_t, const uint8_t *, const idx_t *, float *, idx_t *, size_t) const [METRIC_TYPE = faiss::METRIC_INNER_PRODUCT, C = faiss::CMin<float, long long>, PQDecoder = faiss::PQDecoderGeneric]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1099);
  }

  if (a2)
  {
    v46 = *(a1 + 32);
    v47 = v46[2];
    if (v47 > 64)
    {
      faiss::decode<faiss::PQDecoderGeneric>();
    }

    v18 = 0;
    v48 = 0;
    v49 = 0;
    v50 = a5 - 1;
    v51 = a6 - 8;
    v52 = v46[4];
    v53 = *(a1 + 56);
    v54 = v46[1];
    v305 = v13 << 32;
LABEL_51:
    v55 = *(a1 + 216);
    if (v54)
    {
      v56 = 0;
      LOBYTE(v57) = 0;
      LODWORD(v58) = 0;
      v59 = v53;
      v60 = a3;
      do
      {
        if (!v57)
        {
          LODWORD(v58) = v60->u8[0];
        }

        v61 = v58 >> v57;
        v62 = v47 + v57;
        v63 = v62 - 8;
        if (v62 < 8)
        {
          LOBYTE(v57) = v47 + v57;
        }

        else
        {
          v64 = 8 - v57;
          v65 = &v60->u8[1];
          if (v62 < 0x10)
          {
            v60 = (v60 + 1);
          }

          else
          {
            v66 = v63 >> 3;
            v67 = (v63 >> 3) - 1;
            do
            {
              v68 = *v65++;
              v61 |= v68 << v64;
              v64 += 8;
              --v66;
            }

            while (v66);
            v60 = (v60 + v67 + 2);
          }

          v57 = (v57 + v47) & 7;
          if (v57)
          {
            v58 = v60->u8[0];
            v61 |= v58 << v64;
          }
        }

        v55 = v55 + *(v59 + 4 * (v61 & ~(-1 << v47)));
        v59 += 4 * v46[5];
        ++v56;
      }

      while (v56 != v54);
    }

    if (*a5 >= v55)
    {
      goto LABEL_82;
    }

    if (v303)
    {
      v69 = *(v303 + 8 * v49);
    }

    else
    {
      v69 = v49 | v305;
    }

    if (a7 < 2)
    {
      v70 = 1;
      goto LABEL_81;
    }

    v71 = 3;
    v72 = 2;
    v73 = 1;
    while (v72 != a7)
    {
      v74 = v50[v72];
      v75 = a5[v72];
      if (v74 < v75)
      {
        goto LABEL_75;
      }

      v76 = a6;
      if (v75 > v55)
      {
LABEL_80:
        v70 = v73;
LABEL_81:
        v50[v70] = v55;
        *(v51 + 8 * v70) = v69;
        v18 = ++v48;
LABEL_82:
        a3 = (a3 + v52);
        if (++v49 == a2)
        {
          return v18;
        }

        goto LABEL_51;
      }

LABEL_78:
      v50[v73] = v75;
      *(v51 + 8 * v73) = *(v76 + 8 * v72);
      v70 = v71;
      v72 = 2 * v71;
      v71 = (2 * v71) | 1;
      v73 = v70;
      if (v72 > a7)
      {
        goto LABEL_81;
      }
    }

    v74 = v50[a7];
LABEL_75:
    v75 = v74;
    v76 = v51;
    v71 = v72;
    if (v74 > v55)
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  return 0;
}

void sub_1D9C55F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoderGeneric>::scan_codes_range(faiss::BufferList *a1, uint64_t a2, int8x16_t *a3, uint64_t a4, faiss::RangeQueryResult *this, double a6)
{
  v8 = *&a6;
  v11 = a1;
  v12 = *(a1 + 18);
  if (*(a1 + 220))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a1 + 56);
  if (*(a1 + 13) >= 1)
  {
    if (v14 != 2)
    {
    }

    v15 = *(*(a1 + 4) + 32);
    v16 = *(*(a1 + 1) + 416);
    if (v15 > 19)
    {
      switch(v15)
      {
        case 20:
          v17 = 0;
          if (a2)
          {
            v125 = 0;
            v126 = *(a1 + 20);
            v127 = *v126;
            v128 = v126[1].i32[0];
            v213 = *v126;
            do
            {
              v129 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v127))))));
              v130 = vadd_s32(vdup_lane_s32(v129, 1), v129);
              v131 = v130.i32[0];
              v130.i32[0] = a3[1].i32[0] ^ v128;
              v132 = vcnt_s8(v130);
              v132.i16[0] = vaddlv_u8(v132);
              if (v131 + v132.i32[0] < v16)
              {
                v133 = *(v11 + 4);
                v134 = v133[2];
                if (v134 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v135 = *(v11 + 54);
                v136 = v133[1];
                if (v136)
                {
                  v137 = 0;
                  LOBYTE(v138) = 0;
                  LODWORD(v139) = 0;
                  v140 = *(v11 + 7);
                  v141 = v133[5];
                  v142 = a3;
                  do
                  {
                    if (!v138)
                    {
                      LODWORD(v139) = v142->u8[0];
                    }

                    v143 = v139 >> v138;
                    v144 = v134 + v138;
                    if (v144 < 8)
                    {
                      LOBYTE(v138) = v134 + v138;
                      a1 = v142;
                    }

                    else
                    {
                      v145 = 8 - v138;
                      a1 = &v142->i8[1];
                      v146 = (v144 - 8) >> 3;
                      if (v144 >= 0x10)
                      {
                        do
                        {
                          v147 = *a1;
                          a1 = (a1 + 1);
                          v143 |= v147 << v145;
                          v145 += 8;
                          --v146;
                        }

                        while (v146);
                        a1 = &v142->i8[((v144 - 8) >> 3) + 1];
                      }

                      v138 = (v138 + v134) & 7;
                      if (v138)
                      {
                        v139 = *a1;
                        v143 |= v139 << v145;
                      }
                    }

                    v135 = v135 + *(v140 + 4 * (v143 & ~(-1 << v134)));
                    v140 += 4 * v141;
                    ++v137;
                    v142 = a1;
                  }

                  while (v137 != v136);
                }

                ++v17;
                if (v135 > v8)
                {
                  if (v13)
                  {
                    v148 = *(v13 + 8 * v125);
                  }

                  else
                  {
                    v148 = v125 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v135, v148);
                  v127 = v213;
                }
              }

              a3 = (a3 + 20);
              ++v125;
            }

            while (v125 != a2);
          }

          goto LABEL_235;
        case 32:
          v17 = 0;
          if (a2)
          {
            v186 = 0;
            v187 = *(a1 + 20);
            v189 = *v187;
            v188 = v187[1];
            v210 = *v187;
            v214 = v188;
            do
            {
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v189))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v188))))))) < v16)
              {
                v190 = *(v11 + 4);
                v191 = v190[2];
                if (v191 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v192 = *(v11 + 54);
                v193 = v190[1];
                if (v193)
                {
                  v194 = 0;
                  LOBYTE(v195) = 0;
                  LODWORD(v196) = 0;
                  v197 = *(v11 + 7);
                  v198 = v190[5];
                  v199 = a3;
                  do
                  {
                    if (!v195)
                    {
                      LODWORD(v196) = v199->u8[0];
                    }

                    v200 = v196 >> v195;
                    v201 = v191 + v195;
                    if (v201 < 8)
                    {
                      LOBYTE(v195) = v191 + v195;
                      a1 = v199;
                    }

                    else
                    {
                      v202 = 8 - v195;
                      a1 = &v199->i8[1];
                      v203 = (v201 - 8) >> 3;
                      if (v201 >= 0x10)
                      {
                        do
                        {
                          v204 = *a1;
                          a1 = (a1 + 1);
                          v200 |= v204 << v202;
                          v202 += 8;
                          --v203;
                        }

                        while (v203);
                        a1 = &v199->i8[((v201 - 8) >> 3) + 1];
                      }

                      v195 = (v195 + v191) & 7;
                      if (v195)
                      {
                        v196 = *a1;
                        v200 |= v196 << v202;
                      }
                    }

                    v192 = v192 + *(v197 + 4 * (v200 & ~(-1 << v191)));
                    v197 += 4 * v198;
                    ++v194;
                    v199 = a1;
                  }

                  while (v194 != v193);
                }

                ++v17;
                if (v192 > v8)
                {
                  if (v13)
                  {
                    v205 = *(v13 + 8 * v186);
                  }

                  else
                  {
                    v205 = v186 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v192, v205);
                  v189 = v210;
                  v188 = v214;
                }
              }

              a3 += 2;
              ++v186;
            }

            while (v186 != a2);
          }

          goto LABEL_235;
        case 64:
          v17 = 0;
          if (a2)
          {
            v58 = 0;
            v59 = *(a1 + 20);
            v61 = v59[2];
            v60 = v59[3];
            v63 = *v59;
            v62 = v59[1];
            v209 = v61;
            v212 = v60;
            v207 = *v59;
            v208 = v62;
            do
            {
              if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v63))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v62)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v61))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v60)))))))) < v16)
              {
                v64 = *(v11 + 4);
                v65 = v64[2];
                if (v65 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v66 = *(v11 + 54);
                v67 = v64[1];
                if (v67)
                {
                  v68 = 0;
                  LOBYTE(v69) = 0;
                  LODWORD(v70) = 0;
                  v71 = *(v11 + 7);
                  v72 = v64[5];
                  v73 = a3;
                  do
                  {
                    if (!v69)
                    {
                      LODWORD(v70) = v73->u8[0];
                    }

                    v74 = v70 >> v69;
                    v75 = v65 + v69;
                    if (v75 < 8)
                    {
                      LOBYTE(v69) = v65 + v69;
                      a1 = v73;
                    }

                    else
                    {
                      v76 = 8 - v69;
                      a1 = &v73->i8[1];
                      v77 = (v75 - 8) >> 3;
                      if (v75 >= 0x10)
                      {
                        do
                        {
                          v78 = *a1;
                          a1 = (a1 + 1);
                          v74 |= v78 << v76;
                          v76 += 8;
                          --v77;
                        }

                        while (v77);
                        a1 = &v73->i8[((v75 - 8) >> 3) + 1];
                      }

                      v69 = (v69 + v65) & 7;
                      if (v69)
                      {
                        v70 = *a1;
                        v74 |= v70 << v76;
                      }
                    }

                    v66 = v66 + *(v71 + 4 * (v74 & ~(-1 << v65)));
                    v71 += 4 * v72;
                    ++v68;
                    v73 = a1;
                  }

                  while (v68 != v67);
                }

                ++v17;
                if (v66 > v8)
                {
                  if (v13)
                  {
                    v79 = *(v13 + 8 * v58);
                  }

                  else
                  {
                    v79 = v58 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v66, v79);
                  v61 = v209;
                  v60 = v212;
                  v63 = v207;
                  v62 = v208;
                }
              }

              a3 += 4;
              ++v58;
            }

            while (v58 != a2);
          }

          goto LABEL_235;
      }
    }

    else
    {
      switch(v15)
      {
        case 4:
          v17 = 0;
          if (a2)
          {
            v107 = 0;
            v108 = **(a1 + 20);
            do
            {
              LODWORD(a6) = a3->i32[0] ^ v108;
              a6 = COERCE_DOUBLE(vcnt_s8(*&a6));
              LOWORD(a6) = vaddlv_u8(*&a6);
              if (SLODWORD(a6) < v16)
              {
                v109 = *(v11 + 4);
                v110 = v109[2];
                if (v110 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v111 = *(v11 + 54);
                v112 = v109[1];
                if (v112)
                {
                  v113 = 0;
                  LOBYTE(v114) = 0;
                  LODWORD(v115) = 0;
                  v116 = *(v11 + 7);
                  v117 = v109[5];
                  v118 = a3;
                  do
                  {
                    if (!v114)
                    {
                      LODWORD(v115) = v118->u8[0];
                    }

                    v119 = v115 >> v114;
                    v120 = v110 + v114;
                    if (v120 < 8)
                    {
                      LOBYTE(v114) = v110 + v114;
                      a1 = v118;
                    }

                    else
                    {
                      v121 = 8 - v114;
                      a1 = &v118->i8[1];
                      v122 = (v120 - 8) >> 3;
                      if (v120 >= 0x10)
                      {
                        do
                        {
                          v123 = *a1;
                          a1 = (a1 + 1);
                          v119 |= v123 << v121;
                          v121 += 8;
                          --v122;
                        }

                        while (v122);
                        a1 = &v118->i8[((v120 - 8) >> 3) + 1];
                      }

                      v114 = (v114 + v110) & 7;
                      if (v114)
                      {
                        v115 = *a1;
                        v119 |= v115 << v121;
                      }
                    }

                    v111 = v111 + *(v116 + 4 * (v119 & ~(-1 << v110)));
                    v116 += 4 * v117;
                    ++v113;
                    v118 = a1;
                  }

                  while (v113 != v112);
                }

                ++v17;
                if (v111 > v8)
                {
                  if (v13)
                  {
                    v124 = *(v13 + 8 * v107);
                  }

                  else
                  {
                    v124 = v107 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v111, v124);
                }
              }

              a3 = (a3 + 4);
              ++v107;
            }

            while (v107 != a2);
          }

          goto LABEL_235;
        case 8:
          v17 = 0;
          if (a2)
          {
            v167 = 0;
            v168 = **(a1 + 20);
            do
            {
              v169 = vcnt_s8((a3->i64[0] ^ v168));
              v169.i16[0] = vaddlv_u8(v169);
              if (v16 > v169.i32[0])
              {
                v170 = *(v11 + 4);
                v171 = v170[2];
                if (v171 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v172 = *(v11 + 54);
                v173 = v170[1];
                if (v173)
                {
                  v174 = 0;
                  LOBYTE(v175) = 0;
                  LODWORD(v176) = 0;
                  v177 = *(v11 + 7);
                  v178 = v170[5];
                  v179 = a3;
                  do
                  {
                    if (!v175)
                    {
                      LODWORD(v176) = v179->u8[0];
                    }

                    v180 = v176 >> v175;
                    v181 = v171 + v175;
                    if (v181 < 8)
                    {
                      LOBYTE(v175) = v171 + v175;
                      a1 = v179;
                    }

                    else
                    {
                      v182 = 8 - v175;
                      a1 = &v179->i8[1];
                      v183 = (v181 - 8) >> 3;
                      if (v181 >= 0x10)
                      {
                        do
                        {
                          v184 = *a1;
                          a1 = (a1 + 1);
                          v180 |= v184 << v182;
                          v182 += 8;
                          --v183;
                        }

                        while (v183);
                        a1 = &v179->i8[((v181 - 8) >> 3) + 1];
                      }

                      v175 = (v175 + v171) & 7;
                      if (v175)
                      {
                        v176 = *a1;
                        v180 |= v176 << v182;
                      }
                    }

                    v172 = v172 + *(v177 + 4 * (v180 & ~(-1 << v171)));
                    v177 += 4 * v178;
                    ++v174;
                    v179 = a1;
                  }

                  while (v174 != v173);
                }

                ++v17;
                if (v172 > v8)
                {
                  if (v13)
                  {
                    v185 = *(v13 + 8 * v167);
                  }

                  else
                  {
                    v185 = v167 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v172, v185);
                }
              }

              a3 = (a3 + 8);
              ++v167;
            }

            while (v167 != a2);
          }

          goto LABEL_235;
        case 16:
          v17 = 0;
          if (a2)
          {
            v18 = 0;
            v19 = **(a1 + 20);
            v211 = v19;
            do
            {
              v20 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v19))))));
              if (vadd_s32(vdup_lane_s32(v20, 1), v20).i32[0] < v16)
              {
                v21 = *(v11 + 4);
                v22 = v21[2];
                if (v22 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v23 = *(v11 + 54);
                v24 = v21[1];
                if (v24)
                {
                  v25 = 0;
                  LOBYTE(v26) = 0;
                  LODWORD(v27) = 0;
                  v28 = *(v11 + 7);
                  v29 = v21[5];
                  v30 = a3;
                  do
                  {
                    if (!v26)
                    {
                      LODWORD(v27) = v30->u8[0];
                    }

                    v31 = v27 >> v26;
                    v32 = v22 + v26;
                    if (v32 < 8)
                    {
                      LOBYTE(v26) = v22 + v26;
                      a1 = v30;
                    }

                    else
                    {
                      v33 = 8 - v26;
                      a1 = &v30->i8[1];
                      v34 = (v32 - 8) >> 3;
                      if (v32 >= 0x10)
                      {
                        do
                        {
                          v35 = *a1;
                          a1 = (a1 + 1);
                          v31 |= v35 << v33;
                          v33 += 8;
                          --v34;
                        }

                        while (v34);
                        a1 = &v30->i8[((v32 - 8) >> 3) + 1];
                      }

                      v26 = (v26 + v22) & 7;
                      if (v26)
                      {
                        v27 = *a1;
                        v31 |= v27 << v33;
                      }
                    }

                    v23 = v23 + *(v28 + 4 * (v31 & ~(-1 << v22)));
                    v28 += 4 * v29;
                    ++v25;
                    v30 = a1;
                  }

                  while (v25 != v24);
                }

                ++v17;
                if (v23 > v8)
                {
                  if (v13)
                  {
                    v36 = *(v13 + 8 * v18);
                  }

                  else
                  {
                    v36 = v18 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v23, v36);
                  v19 = v211;
                }
              }

              ++a3;
              ++v18;
            }

            while (v18 != a2);
          }

LABEL_235:
          faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
          qword_1ECB70E30 += v17;
          return;
      }
    }

    v215 = *(a1 + 20);
    v216 = v15 / 8;
    v217 = v15 - (v6 & 0xFFFFFFF8);
    v17 = 0;
    if (a2)
    {
      v149 = 0;
      v150 = v15;
      do
      {
        a1 = faiss::HammingComputerDefault::hamming(&v215, a3);
        if (a1 < v16)
        {
          v151 = *(v11 + 4);
          v152 = v151[2];
          if (v152 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v153 = *(v11 + 54);
          v154 = v151[1];
          if (v154)
          {
            v155 = 0;
            LOBYTE(v156) = 0;
            LODWORD(v157) = 0;
            v158 = *(v11 + 7);
            v159 = v151[5];
            v160 = a3;
            do
            {
              if (!v156)
              {
                LODWORD(v157) = v160->u8[0];
              }

              v161 = v157 >> v156;
              v162 = v152 + v156;
              if (v162 < 8)
              {
                LOBYTE(v156) = v152 + v156;
                a1 = v160;
              }

              else
              {
                v163 = 8 - v156;
                a1 = &v160->i8[1];
                v164 = (v162 - 8) >> 3;
                if (v162 >= 0x10)
                {
                  do
                  {
                    v165 = *a1;
                    a1 = (a1 + 1);
                    v161 |= v165 << v163;
                    v163 += 8;
                    --v164;
                  }

                  while (v164);
                  a1 = &v160->i8[((v162 - 8) >> 3) + 1];
                }

                v156 = (v156 + v152) & 7;
                if (v156)
                {
                  v157 = *a1;
                  v161 |= v157 << v163;
                }
              }

              v153 = v153 + *(v158 + 4 * (v161 & ~(-1 << v152)));
              v158 += 4 * v159;
              ++v155;
              v160 = a1;
            }

            while (v155 != v154);
          }

          ++v17;
          if (v153 > v8)
          {
            if (v13)
            {
              v166 = *(v13 + 8 * v149);
            }

            else
            {
              v166 = v149 | (v12 << 32);
            }

            a1 = faiss::RangeQueryResult::add(this, v153, v166);
          }
        }

        a3 = (a3 + v150);
        ++v149;
      }

      while (v149 != a2);
    }

    goto LABEL_235;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2)
      {
        v80 = 0;
        v81 = v12 << 32;
        do
        {
          v82 = *(v11 + 4);
          v83 = v82[2];
          if (v83 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v84 = *(v11 + 54);
          v85 = v82[1];
          if (v85)
          {
            v86 = 0;
            LOBYTE(v87) = 0;
            LODWORD(v88) = 0;
            v89 = *(v11 + 8);
            v90 = a3;
            do
            {
              if (!v87)
              {
                LODWORD(v88) = v90->u8[0];
              }

              v91 = v88 >> v87;
              v92 = v83 + v87;
              v93 = v92 - 8;
              if (v92 < 8)
              {
                LOBYTE(v87) = v83 + v87;
              }

              else
              {
                v94 = 8 - v87;
                v95 = &v90->u8[1];
                if (v92 < 0x10)
                {
                  v90 = (v90 + 1);
                }

                else
                {
                  v96 = v93 >> 3;
                  v97 = (v93 >> 3) - 1;
                  do
                  {
                    v98 = *v95++;
                    v91 |= v98 << v94;
                    v94 += 8;
                    --v96;
                  }

                  while (v96);
                  v90 = (v90 + v97 + 2);
                }

                v87 = (v87 + v83) & 7;
                if (v87)
                {
                  v88 = v90->u8[0];
                  v91 |= v88 << v94;
                }
              }

              v84 = v84 + (*(*(*(v11 + 14) + 8 * v86) + 4 * (v91 & ~(-1 << v83))) + (*(v89 + 4 * (v91 & ~(-1 << v83))) * -2.0));
              v89 += 4 * v82[5];
              ++v86;
            }

            while (v86 != v85);
          }

          v99 = v82[4];
          if (v84 > v8)
          {
            if (v13)
            {
              v100 = *(v13 + 8 * v80);
            }

            else
            {
              v100 = v80 | v81;
            }

            faiss::RangeQueryResult::add(this, v84, v100);
          }

          a3 = (a3 + v99);
          ++v80;
        }

        while (v80 != a2);
      }
    }

    else
    {
      if (v14 != 2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v215, "bad precomp mode");
        faiss::FaissException::FaissException(exception, &v215, "virtual void faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_INNER_PRODUCT, faiss::CMin<float, long long>, faiss::PQDecoderGeneric>::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const [METRIC_TYPE = faiss::METRIC_INNER_PRODUCT, C = faiss::CMin<float, long long>, PQDecoder = faiss::PQDecoderGeneric]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1126);
      }

      if (a2)
      {
        v37 = 0;
        v38 = v12 << 32;
        do
        {
          v39 = *(v11 + 4);
          v40 = v39[2];
          if (v40 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v41 = *(v11 + 54);
          v42 = v39[1];
          if (v42)
          {
            v43 = 0;
            LOBYTE(v44) = 0;
            LODWORD(v45) = 0;
            v46 = *(v11 + 7);
            v47 = a3;
            do
            {
              if (!v44)
              {
                LODWORD(v45) = v47->u8[0];
              }

              v48 = v45 >> v44;
              v49 = v40 + v44;
              v50 = v49 - 8;
              if (v49 < 8)
              {
                LOBYTE(v44) = v40 + v44;
              }

              else
              {
                v51 = 8 - v44;
                v52 = &v47->u8[1];
                if (v49 < 0x10)
                {
                  v47 = (v47 + 1);
                }

                else
                {
                  v53 = v50 >> 3;
                  v54 = (v50 >> 3) - 1;
                  do
                  {
                    v55 = *v52++;
                    v48 |= v55 << v51;
                    v51 += 8;
                    --v53;
                  }

                  while (v53);
                  v47 = (v47 + v54 + 2);
                }

                v44 = (v44 + v40) & 7;
                if (v44)
                {
                  v45 = v47->u8[0];
                  v48 |= v45 << v51;
                }
              }

              v41 = v41 + *(v46 + 4 * (v48 & ~(-1 << v40)));
              v46 += 4 * v39[5];
              ++v43;
            }

            while (v43 != v42);
          }

          v56 = v39[4];
          if (v41 > v8)
          {
            if (v13)
            {
              v57 = *(v13 + 8 * v37);
            }

            else
            {
              v57 = v37 | v38;
            }

            faiss::RangeQueryResult::add(this, v41, v57);
          }

          a3 = (a3 + v56);
          ++v37;
        }

        while (v37 != a2);
      }
    }
  }

  else
  {
    v101 = 0.0;
    if (*(a1 + 44) == 1)
    {
      (*(**(*(a1 + 1) + 40) + 80))(*(*(a1 + 1) + 40), v12, *(a1 + 9));
      v101 = faiss::fvec_inner_product(*(v11 + 9), *(v11 + 17), *(v11 + 6));
    }

    if (a2)
    {
      v102 = 0;
      v103 = v12 << 32;
      do
      {
        faiss::ProductQuantizer::decode(*(v11 + 4), a3, *(v11 + 10));
        v104 = *(*(v11 + 4) + 32);
        v105 = v101 + faiss::fvec_inner_product(*(v11 + 10), *(v11 + 17), *(v11 + 6));
        if (v105 > v8)
        {
          if (v13)
          {
            v106 = *(v13 + 8 * v102);
          }

          else
          {
            v106 = v102 | v103;
          }

          faiss::RangeQueryResult::add(this, v105, v106);
        }

        a3 = (a3 + v104);
        ++v102;
      }

      while (a2 != v102);
    }
  }
}

void sub_1D9C56ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoderGeneric>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoderGeneric>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoderGeneric>::set_list(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 224);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  if (v4 == 1)
  {
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }
  }

  *(a1 + 216) = v5;
}

float faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoderGeneric>::distance_to_code(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 224) != 2)
  {
  }

  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3 > 64)
  {
    faiss::decode<faiss::PQDecoderGeneric>();
  }

  result = *(a1 + 216);
  v5 = v2[1];
  if (v5)
  {
    v6 = 0;
    LOBYTE(v7) = 0;
    LODWORD(v8) = 0;
    v9 = *(a1 + 56);
    v10 = v2[5];
    do
    {
      if (!v7)
      {
        LODWORD(v8) = *a2;
      }

      v11 = v8 >> v7;
      v12 = v3 + v7;
      v13 = v12 - 8;
      if (v12 < 8)
      {
        LOBYTE(v7) = v3 + v7;
      }

      else
      {
        v14 = 8 - v7;
        v15 = a2 + 1;
        if (v12 < 0x10)
        {
          ++a2;
        }

        else
        {
          v16 = v13 >> 3;
          v17 = (v13 >> 3) - 1;
          do
          {
            v18 = *v15++;
            v11 |= v18 << v14;
            v14 += 8;
            --v16;
          }

          while (v16);
          a2 += v17 + 2;
        }

        v7 = (v7 + v3) & 7;
        if (v7)
        {
          v8 = *a2;
          v11 |= v8 << v14;
        }
      }

      result = result + *(v9 + 4 * (v11 & ~(-1 << v3)));
      v9 += 4 * v10;
      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

faiss::IndexIVFPQStats *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoderGeneric>::scan_codes(unint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v12 = a1;
  v13 = *(a1 + 144);
  if (*(a1 + 220))
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v299 = v14;
  v15 = *(a1 + 224);
  if (*(a1 + 52) < 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        if (v15 != 2)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(&v305, "bad precomp mode");
          faiss::FaissException::FaissException(exception, &v305, "virtual size_t faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_L2, faiss::CMax<float, long long>, faiss::PQDecoderGeneric>::scan_codes(size_t, const uint8_t *, const idx_t *, float *, idx_t *, size_t) const [METRIC_TYPE = faiss::METRIC_L2, C = faiss::CMax<float, long long>, PQDecoder = faiss::PQDecoderGeneric]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1099);
        }

        if (a2)
        {
          v45 = *(a1 + 32);
          v46 = v45[2];
          if (v46 > 64)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v300 = 0;
          v47 = 0;
          v48 = 0;
          v49 = a5 - 1;
          v50 = a6 - 8;
          v51 = v45[4];
          v52 = *(a1 + 56);
          v53 = v45[1];
          v54 = v13 << 32;
LABEL_51:
          v55 = *(v12 + 216);
          if (v53)
          {
            v56 = 0;
            LOBYTE(v57) = 0;
            LODWORD(v58) = 0;
            v59 = v52;
            v60 = a3;
            do
            {
              if (!v57)
              {
                LODWORD(v58) = v60->u8[0];
              }

              v61 = v58 >> v57;
              v62 = v46 + v57;
              v63 = v62 - 8;
              if (v62 < 8)
              {
                LOBYTE(v57) = v46 + v57;
              }

              else
              {
                v64 = 8 - v57;
                v65 = &v60->u8[1];
                if (v62 < 0x10)
                {
                  v60 = (v60 + 1);
                }

                else
                {
                  v66 = v63 >> 3;
                  v67 = (v63 >> 3) - 1;
                  do
                  {
                    v68 = *v65++;
                    v61 |= v68 << v64;
                    v64 += 8;
                    --v66;
                  }

                  while (v66);
                  v60 = (v60 + v67 + 2);
                }

                v57 = (v57 + v46) & 7;
                if (v57)
                {
                  v58 = v60->u8[0];
                  v61 |= v58 << v64;
                }
              }

              v55 = v55 + *(v59 + 4 * (v61 & ~(-1 << v46)));
              v59 += 4 * v45[5];
              ++v56;
            }

            while (v56 != v53);
          }

          if (*a5 <= v55)
          {
            goto LABEL_82;
          }

          if (v299)
          {
            v69 = *(v299 + 8 * v48);
          }

          else
          {
            v69 = v48 | v54;
          }

          if (a7 < 2)
          {
            v70 = 1;
            goto LABEL_81;
          }

          v71 = 3;
          v72 = 2;
          v73 = 1;
          while (v72 != a7)
          {
            v74 = v49[v72];
            v75 = a5[v72];
            if (v74 > v75)
            {
              goto LABEL_75;
            }

            v76 = a6;
            if (v75 < v55)
            {
LABEL_80:
              v70 = v73;
LABEL_81:
              v49[v70] = v55;
              *(v50 + 8 * v70) = v69;
              v300 = ++v47;
LABEL_82:
              a3 = (a3 + v51);
              if (++v48 == a2)
              {
                return v300;
              }

              goto LABEL_51;
            }

LABEL_78:
            v49[v73] = v75;
            *(v50 + 8 * v73) = *(v76 + 8 * v72);
            v70 = v71;
            v72 = 2 * v71;
            v71 = (2 * v71) | 1;
            v73 = v70;
            if (v72 > a7)
            {
              goto LABEL_81;
            }
          }

          v74 = v49[a7];
LABEL_75:
          v75 = v74;
          v76 = v50;
          v71 = v72;
          if (v74 < v55)
          {
            goto LABEL_80;
          }

          goto LABEL_78;
        }

        return 0;
      }

      if (!a2)
      {
        return 0;
      }

      v106 = *(a1 + 32);
      v107 = v106[2];
      if (v107 > 64)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v108 = 0;
      v109 = 0;
      v110 = a5 - 1;
      v111 = a6 - 8;
      v112 = v106[4];
      v113 = *(a1 + 64);
      v114 = v106[1];
      v300 = 0;
      v302 = v13 << 32;
LABEL_125:
      v115 = *(a1 + 216);
      if (v114)
      {
        v116 = 0;
        LOBYTE(v117) = 0;
        LODWORD(v118) = 0;
        v119 = v113;
        v120 = a3;
        do
        {
          if (!v117)
          {
            LODWORD(v118) = v120->u8[0];
          }

          v121 = v118 >> v117;
          v122 = v107 + v117;
          v123 = v122 - 8;
          if (v122 < 8)
          {
            LOBYTE(v117) = v107 + v117;
          }

          else
          {
            v124 = 8 - v117;
            v125 = &v120->u8[1];
            if (v122 < 0x10)
            {
              v120 = (v120 + 1);
            }

            else
            {
              v126 = v123 >> 3;
              v127 = (v123 >> 3) - 1;
              do
              {
                v128 = *v125++;
                v121 |= v128 << v124;
                v124 += 8;
                --v126;
              }

              while (v126);
              v120 = (v120 + v127 + 2);
            }

            v117 = (v117 + v107) & 7;
            if (v117)
            {
              v118 = v120->u8[0];
              v121 |= v118 << v124;
            }
          }

          v115 = v115 + (*(*(*(a1 + 112) + 8 * v116) + 4 * (v121 & ~(-1 << v107))) + (*(v119 + 4 * (v121 & ~(-1 << v107))) * -2.0));
          v119 += 4 * v106[5];
          ++v116;
        }

        while (v116 != v114);
      }

      if (*a5 <= v115)
      {
        goto LABEL_156;
      }

      if (v299)
      {
        v129 = *(v299 + 8 * v109);
      }

      else
      {
        v129 = v109 | v302;
      }

      if (a7 < 2)
      {
        v130 = 1;
        goto LABEL_155;
      }

      v131 = 3;
      v132 = 2;
      v133 = 1;
      while (v132 != a7)
      {
        v134 = v110[v132];
        v135 = a5[v132];
        if (v134 > v135)
        {
          goto LABEL_149;
        }

        v136 = a6;
        if (v135 < v115)
        {
LABEL_154:
          v130 = v133;
LABEL_155:
          v110[v130] = v115;
          *(v111 + 8 * v130) = v129;
          v300 = ++v108;
LABEL_156:
          a3 = (a3 + v112);
          if (++v109 == a2)
          {
            return v300;
          }

          goto LABEL_125;
        }

LABEL_152:
        v110[v133] = v135;
        *(v111 + 8 * v133) = *(v136 + 8 * v132);
        v130 = v131;
        v132 = 2 * v131;
        v131 = (2 * v131) | 1;
        v133 = v130;
        if (v132 > a7)
        {
          goto LABEL_155;
        }
      }

      v134 = v110[a7];
LABEL_149:
      v135 = v134;
      v136 = v111;
      v131 = v132;
      if (v134 < v115)
      {
        goto LABEL_154;
      }

      goto LABEL_152;
    }

    if (*(a1 + 44) == 1)
    {
      v137 = (a1 + 72);
      (*(**(*(a1 + 8) + 40) + 104))(*(*(a1 + 8) + 40), *(a1 + 136), *(a1 + 72), v13);
      if (!a2)
      {
        return 0;
      }
    }

    else
    {
      v137 = (a1 + 136);
      if (!a2)
      {
        return 0;
      }
    }

    v138 = 0;
    v139 = *v137;
    v300 = 0;
    v303 = v13 << 32;
    v140 = a5 - 1;
    v141 = a6 - 8;
LABEL_161:
    faiss::ProductQuantizer::decode(*(v12 + 32), a3, *(v12 + 80));
    v142 = *(*(v12 + 32) + 32);
    v143 = faiss::fvec_L2sqr(*(v12 + 80), v139, *(v12 + 24));
    if (*a5 <= v143)
    {
      goto LABEL_178;
    }

    if (v299)
    {
      v144 = *(v299 + 8 * v138);
    }

    else
    {
      v144 = v138 | v303;
    }

    if (a7 < 2)
    {
      v145 = 1;
      goto LABEL_177;
    }

    v146 = 3;
    v147 = 2;
    v148 = 1;
    while (v147 != a7)
    {
      v149 = v140[v147];
      v150 = a5[v147];
      if (v149 > v150)
      {
        goto LABEL_171;
      }

      v151 = a6;
      if (v150 < v143)
      {
LABEL_176:
        v145 = v148;
LABEL_177:
        v140[v145] = v143;
        *(v141 + 8 * v145) = v144;
        v300 = (v300 + 1);
LABEL_178:
        a3 = (a3 + v142);
        if (++v138 == a2)
        {
          return v300;
        }

        goto LABEL_161;
      }

LABEL_174:
      v140[v148] = v150;
      *(v141 + 8 * v148) = *(v151 + 8 * v147);
      v145 = v146;
      v147 = 2 * v146;
      v146 = (2 * v146) | 1;
      v148 = v145;
      if (v147 > a7)
      {
        goto LABEL_177;
      }
    }

    v149 = v140[a7];
LABEL_171:
    v150 = v149;
    v151 = a6 - 8;
    v146 = v147;
    if (v149 < v143)
    {
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  if (v15 != 2)
  {
  }

  v16 = *(a1 + 32);
  v17 = v16[4];
  v301 = *(*(a1 + 8) + 416);
  if (v17 <= 19)
  {
    if (v17 != 4)
    {
      if (v17 != 8)
      {
        if (v17 == 16)
        {
          if (a2)
          {
            v300 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = **(a1 + 160);
            v22 = a5 - 1;
            v23 = a6 - 8;
            v292 = v13 << 32;
            while (1)
            {
              v24 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v21))))));
              if (vadd_s32(vdup_lane_s32(v24, 1), v24).i32[0] >= v301)
              {
                goto LABEL_43;
              }

              v25 = v16[2];
              if (v25 >= 65)
              {
                faiss::decode<faiss::PQDecoderGeneric>();
              }

              v26 = *(v12 + 216);
              v27 = v16[1];
              if (v27)
              {
                a1 = 0;
                LOBYTE(v28) = 0;
                LODWORD(v29) = 0;
                v30 = *(v12 + 56);
                v31 = a3;
                do
                {
                  if (!v28)
                  {
                    LODWORD(v29) = v31->u8[0];
                  }

                  v32 = v29 >> v28;
                  v33 = v25 + v28;
                  if (v33 < 8)
                  {
                    LOBYTE(v28) = v25 + v28;
                    v35 = v31;
                  }

                  else
                  {
                    v34 = 8 - v28;
                    v35 = &v31->i8[1];
                    v36 = (v33 - 8) >> 3;
                    if (v33 >= 0x10)
                    {
                      do
                      {
                        v37 = v35->u8[0];
                        v35 = (v35 + 1);
                        v32 |= v37 << v34;
                        v34 += 8;
                        --v36;
                      }

                      while (v36);
                      v35 = &v31->i8[((v33 - 8) >> 3) + 1];
                    }

                    v28 = (v28 + v25) & 7;
                    if (v28)
                    {
                      v29 = v35->u8[0];
                      v32 |= v29 << v34;
                    }
                  }

                  v26 = v26 + *(v30 + 4 * (v32 & ~(-1 << v25)));
                  v30 += 4 * v16[5];
                  ++a1;
                  v31 = v35;
                }

                while (a1 != v27);
              }

              ++v19;
              if (*a5 <= v26)
              {
                goto LABEL_43;
              }

              if (v299)
              {
                v38 = *(v299 + 8 * v20);
              }

              else
              {
                v38 = v20 | v292;
              }

              if (a7 < 2)
              {
                v39 = 1;
                goto LABEL_42;
              }

              v40 = 3;
              v41 = 2;
              a1 = 1;
              while (1)
              {
                if (v41 == a7)
                {
                  v42 = v22[a7];
                  goto LABEL_36;
                }

                v42 = v22[v41];
                v43 = a5[v41];
                if (v42 <= v43)
                {
                  break;
                }

LABEL_36:
                v43 = v42;
                v44 = a6 - 8;
                v40 = v41;
                if (v42 < v26)
                {
                  goto LABEL_41;
                }

LABEL_39:
                v22[a1] = v43;
                *(v23 + 8 * a1) = *(v44 + 8 * v41);
                v39 = v40;
                v41 = 2 * v40;
                v40 = (2 * v40) | 1;
                a1 = v39;
                if (v41 > a7)
                {
                  goto LABEL_42;
                }
              }

              v44 = a6;
              if (v43 >= v26)
              {
                goto LABEL_39;
              }

LABEL_41:
              v39 = a1;
LABEL_42:
              v22[v39] = v26;
              *(v23 + 8 * v39) = v38;
              v300 = ++v18;
LABEL_43:
              ++a3;
              if (++v20 == a2)
              {
LABEL_356:
                faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                v288 = qword_1ECB70E30 + v19;
                goto LABEL_357;
              }
            }
          }

LABEL_355:
          v300 = 0;
          v19 = 0;
          goto LABEL_356;
        }

        goto LABEL_250;
      }

      if (!a2)
      {
        goto LABEL_355;
      }

      v300 = 0;
      v235 = 0;
      v19 = 0;
      v236 = 0;
      v237 = **(a1 + 160);
      v238 = a5 - 1;
      v239 = a6 - 8;
      v297 = v13 << 32;
LABEL_287:
      v240 = vcnt_s8((a3->i64[0] ^ v237));
      v240.i16[0] = vaddlv_u8(v240);
      if (v301 <= v240.i32[0])
      {
        goto LABEL_318;
      }

      v241 = v16[2];
      if (v241 >= 65)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v242 = *(v12 + 216);
      a1 = v16[1];
      if (a1)
      {
        v243 = 0;
        LOBYTE(v244) = 0;
        LODWORD(v245) = 0;
        v246 = *(v12 + 56);
        v247 = a3;
        do
        {
          if (!v244)
          {
            LODWORD(v245) = v247->u8[0];
          }

          v248 = v245 >> v244;
          v249 = v241 + v244;
          if (v249 < 8)
          {
            LOBYTE(v244) = v241 + v244;
            v251 = v247;
          }

          else
          {
            v250 = 8 - v244;
            v251 = &v247->i8[1];
            v252 = (v249 - 8) >> 3;
            if (v249 >= 0x10)
            {
              do
              {
                v253 = v251->u8[0];
                v251 = (v251 + 1);
                v248 |= v253 << v250;
                v250 += 8;
                --v252;
              }

              while (v252);
              v251 = &v247->i8[((v249 - 8) >> 3) + 1];
            }

            v244 = (v244 + v241) & 7;
            if (v244)
            {
              v245 = v251->u8[0];
              v248 |= v245 << v250;
            }
          }

          v242 = v242 + *(v246 + 4 * (v248 & ~(-1 << v241)));
          v246 += 4 * v16[5];
          ++v243;
          v247 = v251;
        }

        while (v243 != a1);
      }

      ++v19;
      if (*a5 <= v242)
      {
        goto LABEL_318;
      }

      if (v299)
      {
        v254 = *(v299 + 8 * v236);
      }

      else
      {
        v254 = v236 | v297;
      }

      if (a7 < 2)
      {
        v255 = 1;
        goto LABEL_317;
      }

      v256 = 3;
      a1 = 2;
      v257 = 1;
      while (a1 != a7)
      {
        v258 = v238[a1];
        v259 = a5[a1];
        if (v258 > v259)
        {
          goto LABEL_311;
        }

        v260 = a6;
        if (v259 < v242)
        {
LABEL_316:
          v255 = v257;
LABEL_317:
          v238[v255] = v242;
          *(v239 + 8 * v255) = v254;
          v300 = ++v235;
LABEL_318:
          a3 = (a3 + 8);
          if (++v236 == a2)
          {
            goto LABEL_356;
          }

          goto LABEL_287;
        }

LABEL_314:
        v238[v257] = v259;
        *(v239 + 8 * v257) = *(v260 + 8 * a1);
        v255 = v256;
        a1 = 2 * v256;
        v256 = (2 * v256) | 1;
        v257 = v255;
        if (a1 > a7)
        {
          goto LABEL_317;
        }
      }

      v258 = v238[a7];
LABEL_311:
      v259 = v258;
      v260 = v239;
      v256 = a1;
      if (v258 < v242)
      {
        goto LABEL_316;
      }

      goto LABEL_314;
    }

    if (!a2)
    {
      goto LABEL_355;
    }

    v300 = 0;
    v152 = 0;
    v19 = 0;
    v153 = 0;
    v154 = **(a1 + 160);
    v155 = a5 - 1;
    v156 = a6 - 8;
    v294 = v13 << 32;
LABEL_182:
    a8.i32[0] = a3->i32[0] ^ v154;
    a8 = vcnt_s8(a8);
    a8.i16[0] = vaddlv_u8(a8);
    if (a8.i32[0] >= v301)
    {
      goto LABEL_213;
    }

    v157 = v16[2];
    if (v157 >= 65)
    {
      faiss::decode<faiss::PQDecoderGeneric>();
    }

    v158 = *(v12 + 216);
    a1 = v16[1];
    if (a1)
    {
      v159 = 0;
      LOBYTE(v160) = 0;
      LODWORD(v161) = 0;
      v162 = *(v12 + 56);
      v163 = a3;
      do
      {
        if (!v160)
        {
          LODWORD(v161) = v163->u8[0];
        }

        v164 = v161 >> v160;
        v165 = v157 + v160;
        if (v165 < 8)
        {
          LOBYTE(v160) = v157 + v160;
          v167 = v163;
        }

        else
        {
          v166 = 8 - v160;
          v167 = &v163->i8[1];
          v168 = (v165 - 8) >> 3;
          if (v165 >= 0x10)
          {
            do
            {
              v169 = v167->u8[0];
              v167 = (v167 + 1);
              v164 |= v169 << v166;
              v166 += 8;
              --v168;
            }

            while (v168);
            v167 = &v163->i8[((v165 - 8) >> 3) + 1];
          }

          v160 = (v160 + v157) & 7;
          if (v160)
          {
            v161 = v167->u8[0];
            v164 |= v161 << v166;
          }
        }

        v158 = v158 + *(v162 + 4 * (v164 & ~(-1 << v157)));
        v162 += 4 * v16[5];
        ++v159;
        v163 = v167;
      }

      while (v159 != a1);
    }

    ++v19;
    if (*a5 <= v158)
    {
      goto LABEL_213;
    }

    if (v299)
    {
      v170 = *(v299 + 8 * v153);
    }

    else
    {
      v170 = v153 | v294;
    }

    if (a7 < 2)
    {
      v171 = 1;
      goto LABEL_212;
    }

    v172 = 3;
    a1 = 2;
    v173 = 1;
    while (a1 != a7)
    {
      v174 = v155[a1];
      v175 = a5[a1];
      if (v174 > v175)
      {
        goto LABEL_206;
      }

      v176 = a6;
      if (v175 < v158)
      {
LABEL_211:
        v171 = v173;
LABEL_212:
        v155[v171] = v158;
        *(v156 + 8 * v171) = v170;
        v300 = ++v152;
LABEL_213:
        a3 = (a3 + 4);
        if (++v153 == a2)
        {
          goto LABEL_356;
        }

        goto LABEL_182;
      }

LABEL_209:
      v155[v173] = v175;
      *(v156 + 8 * v173) = *(v176 + 8 * a1);
      v171 = v172;
      a1 = 2 * v172;
      v172 = (2 * v172) | 1;
      v173 = v171;
      if (a1 > a7)
      {
        goto LABEL_212;
      }
    }

    v174 = v155[a7];
LABEL_206:
    v175 = v174;
    v176 = v156;
    v172 = a1;
    if (v174 < v158)
    {
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  switch(v17)
  {
    case 20:
      if (!a2)
      {
        goto LABEL_355;
      }

      v300 = 0;
      v177 = 0;
      v19 = 0;
      v178 = 0;
      v179 = *(a1 + 160);
      v180 = *v179;
      v181 = a5 - 1;
      v182 = v179[1].i32[0];
      v183 = a6 - 8;
      v295 = v13 << 32;
LABEL_217:
      v184 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v180))))));
      v185 = vadd_s32(vdup_lane_s32(v184, 1), v184);
      v186 = v185.i32[0];
      v185.i32[0] = a3[1].i32[0] ^ v182;
      v187 = vcnt_s8(v185);
      v187.i16[0] = vaddlv_u8(v187);
      if (v186 + v187.i32[0] >= v301)
      {
        goto LABEL_248;
      }

      v188 = v16[2];
      if (v188 >= 65)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v189 = *(v12 + 216);
      a1 = v16[1];
      if (a1)
      {
        v190 = 0;
        LOBYTE(v191) = 0;
        LODWORD(v192) = 0;
        v193 = *(v12 + 56);
        v194 = a3;
        do
        {
          if (!v191)
          {
            LODWORD(v192) = v194->u8[0];
          }

          v195 = v192 >> v191;
          v196 = v188 + v191;
          if (v196 < 8)
          {
            LOBYTE(v191) = v188 + v191;
            v198 = v194;
          }

          else
          {
            v197 = 8 - v191;
            v198 = &v194->i8[1];
            v199 = (v196 - 8) >> 3;
            if (v196 >= 0x10)
            {
              do
              {
                v200 = v198->u8[0];
                v198 = (v198 + 1);
                v195 |= v200 << v197;
                v197 += 8;
                --v199;
              }

              while (v199);
              v198 = &v194->i8[((v196 - 8) >> 3) + 1];
            }

            v191 = (v191 + v188) & 7;
            if (v191)
            {
              v192 = v198->u8[0];
              v195 |= v192 << v197;
            }
          }

          v189 = v189 + *(v193 + 4 * (v195 & ~(-1 << v188)));
          v193 += 4 * v16[5];
          ++v190;
          v194 = v198;
        }

        while (v190 != a1);
      }

      ++v19;
      if (*a5 <= v189)
      {
        goto LABEL_248;
      }

      if (v299)
      {
        v201 = *(v299 + 8 * v178);
      }

      else
      {
        v201 = v178 | v295;
      }

      if (a7 < 2)
      {
        v202 = 1;
        goto LABEL_247;
      }

      v203 = 3;
      a1 = 2;
      v204 = 1;
      while (a1 != a7)
      {
        v205 = v181[a1];
        v206 = a5[a1];
        if (v205 > v206)
        {
          goto LABEL_241;
        }

        v207 = a6;
        if (v206 < v189)
        {
LABEL_246:
          v202 = v204;
LABEL_247:
          v181[v202] = v189;
          *(v183 + 8 * v202) = v201;
          v300 = ++v177;
LABEL_248:
          a3 = (a3 + 20);
          if (++v178 == a2)
          {
            goto LABEL_356;
          }

          goto LABEL_217;
        }

LABEL_244:
        v181[v204] = v206;
        *(v183 + 8 * v204) = *(v207 + 8 * a1);
        v202 = v203;
        a1 = 2 * v203;
        v203 = (2 * v203) | 1;
        v204 = v202;
        if (a1 > a7)
        {
          goto LABEL_247;
        }
      }

      v205 = v181[a7];
LABEL_241:
      v206 = v205;
      v207 = v183;
      v203 = a1;
      if (v205 < v189)
      {
        goto LABEL_246;
      }

      goto LABEL_244;
    case 32:
      if (!a2)
      {
        goto LABEL_355;
      }

      v300 = 0;
      v261 = 0;
      v19 = 0;
      v262 = 0;
      v263 = *(a1 + 160);
      v264 = a5 - 1;
      v266 = *v263;
      v265 = v263[1];
      v267 = a6 - 8;
      v298 = v13 << 32;
LABEL_322:
      if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v266))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v265))))))) >= v301)
      {
        goto LABEL_353;
      }

      v268 = v16[2];
      if (v268 >= 65)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v269 = *(v12 + 216);
      v270 = v16[1];
      if (v270)
      {
        a1 = 0;
        LOBYTE(v271) = 0;
        LODWORD(v272) = 0;
        v273 = *(v12 + 56);
        v274 = a3;
        do
        {
          if (!v271)
          {
            LODWORD(v272) = v274->u8[0];
          }

          v275 = v272 >> v271;
          v276 = v268 + v271;
          if (v276 < 8)
          {
            LOBYTE(v271) = v268 + v271;
            v278 = v274;
          }

          else
          {
            v277 = 8 - v271;
            v278 = &v274->i8[1];
            v279 = (v276 - 8) >> 3;
            if (v276 >= 0x10)
            {
              do
              {
                v280 = v278->u8[0];
                v278 = (v278 + 1);
                v275 |= v280 << v277;
                v277 += 8;
                --v279;
              }

              while (v279);
              v278 = &v274->i8[((v276 - 8) >> 3) + 1];
            }

            v271 = (v271 + v268) & 7;
            if (v271)
            {
              v272 = v278->u8[0];
              v275 |= v272 << v277;
            }
          }

          v269 = v269 + *(v273 + 4 * (v275 & ~(-1 << v268)));
          v273 += 4 * v16[5];
          ++a1;
          v274 = v278;
        }

        while (a1 != v270);
      }

      ++v19;
      if (*a5 <= v269)
      {
        goto LABEL_353;
      }

      if (v299)
      {
        v281 = *(v299 + 8 * v262);
      }

      else
      {
        v281 = v262 | v298;
      }

      if (a7 < 2)
      {
        v282 = 1;
        goto LABEL_352;
      }

      v283 = 3;
      v284 = 2;
      a1 = 1;
      while (v284 != a7)
      {
        v285 = v264[v284];
        v286 = a5[v284];
        if (v285 > v286)
        {
          goto LABEL_346;
        }

        v287 = a6;
        if (v286 < v269)
        {
LABEL_351:
          v282 = a1;
LABEL_352:
          v264[v282] = v269;
          *(v267 + 8 * v282) = v281;
          v300 = ++v261;
LABEL_353:
          a3 += 2;
          if (++v262 == a2)
          {
            goto LABEL_356;
          }

          goto LABEL_322;
        }

LABEL_349:
        v264[a1] = v286;
        *(v267 + 8 * a1) = *(v287 + 8 * v284);
        v282 = v283;
        v284 = 2 * v283;
        v283 = (2 * v283) | 1;
        a1 = v282;
        if (v284 > a7)
        {
          goto LABEL_352;
        }
      }

      v285 = v264[a7];
LABEL_346:
      v286 = v285;
      v287 = a6 - 8;
      v283 = v284;
      if (v285 < v269)
      {
        goto LABEL_351;
      }

      goto LABEL_349;
    case 64:
      if (!a2)
      {
        goto LABEL_355;
      }

      v300 = 0;
      v77 = 0;
      v19 = 0;
      v78 = 0;
      v79 = *(a1 + 160);
      v81 = v79[2];
      v80 = v79[3];
      v82 = a5 - 1;
      v84 = *v79;
      v83 = v79[1];
      v85 = a6 - 8;
      v293 = v13 << 32;
LABEL_89:
      if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v84))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v83)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v81))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v80)))))))) >= v301)
      {
        goto LABEL_120;
      }

      v86 = v16[2];
      if (v86 >= 65)
      {
        faiss::decode<faiss::PQDecoderGeneric>();
      }

      v87 = *(v12 + 216);
      v88 = v16[1];
      if (v88)
      {
        a1 = 0;
        LOBYTE(v89) = 0;
        LODWORD(v90) = 0;
        v91 = *(v12 + 56);
        v92 = a3;
        do
        {
          if (!v89)
          {
            LODWORD(v90) = v92->u8[0];
          }

          v93 = v90 >> v89;
          v94 = v86 + v89;
          if (v94 < 8)
          {
            LOBYTE(v89) = v86 + v89;
            v96 = v92;
          }

          else
          {
            v95 = 8 - v89;
            v96 = &v92->i8[1];
            v97 = (v94 - 8) >> 3;
            if (v94 >= 0x10)
            {
              do
              {
                v98 = v96->u8[0];
                v96 = (v96 + 1);
                v93 |= v98 << v95;
                v95 += 8;
                --v97;
              }

              while (v97);
              v96 = &v92->i8[((v94 - 8) >> 3) + 1];
            }

            v89 = (v89 + v86) & 7;
            if (v89)
            {
              v90 = v96->u8[0];
              v93 |= v90 << v95;
            }
          }

          v87 = v87 + *(v91 + 4 * (v93 & ~(-1 << v86)));
          v91 += 4 * v16[5];
          ++a1;
          v92 = v96;
        }

        while (a1 != v88);
      }

      ++v19;
      if (*a5 <= v87)
      {
        goto LABEL_120;
      }

      if (v299)
      {
        v99 = *(v299 + 8 * v78);
      }

      else
      {
        v99 = v78 | v293;
      }

      if (a7 < 2)
      {
        v100 = 1;
        goto LABEL_119;
      }

      v101 = 3;
      v102 = 2;
      a1 = 1;
      while (v102 != a7)
      {
        v103 = v82[v102];
        v104 = a5[v102];
        if (v103 > v104)
        {
          goto LABEL_113;
        }

        v105 = a6;
        if (v104 < v87)
        {
LABEL_118:
          v100 = a1;
LABEL_119:
          v82[v100] = v87;
          *(v85 + 8 * v100) = v99;
          v300 = ++v77;
LABEL_120:
          a3 += 4;
          if (++v78 == a2)
          {
            goto LABEL_356;
          }

          goto LABEL_89;
        }

LABEL_116:
        v82[a1] = v104;
        *(v85 + 8 * a1) = *(v105 + 8 * v102);
        v100 = v101;
        v102 = 2 * v101;
        v101 = (2 * v101) | 1;
        a1 = v100;
        if (v102 > a7)
        {
          goto LABEL_119;
        }
      }

      v103 = v82[a7];
LABEL_113:
      v104 = v103;
      v105 = a6 - 8;
      v101 = v102;
      if (v103 < v87)
      {
        goto LABEL_118;
      }

      goto LABEL_116;
  }

LABEL_250:
  v305 = *(a1 + 160);
  v306 = v17 / 8;
  v307 = v17 - (v16 & 0xFFFFFFF8);
  if (!a2)
  {
    v300 = 0;
    v208 = 0;
    goto LABEL_362;
  }

  v300 = 0;
  v208 = 0;
  v209 = 0;
  v291 = v13 << 32;
  v296 = v17;
  v210 = a5 - 1;
  v211 = a6 - 8;
  do
  {
    a1 = faiss::HammingComputerDefault::hamming(&v305, a3);
    if (a1 >= v301)
    {
      goto LABEL_283;
    }

    v212 = *(v12 + 32);
    v213 = v212[2];
    if (v213 >= 65)
    {
      faiss::decode<faiss::PQDecoderGeneric>();
    }

    v214 = *(v12 + 216);
    v215 = v212[1];
    if (v215)
    {
      v216 = 0;
      LOBYTE(v217) = 0;
      LODWORD(v218) = 0;
      v219 = *(v12 + 56);
      v220 = v212[5];
      v221 = a3;
      do
      {
        if (!v217)
        {
          LODWORD(v218) = v221->u8[0];
        }

        v222 = v218 >> v217;
        v223 = v213 + v217;
        if (v223 < 8)
        {
          LOBYTE(v217) = v213 + v217;
          a1 = v221;
        }

        else
        {
          v224 = 8 - v217;
          a1 = v221->u64 + 1;
          v225 = (v223 - 8) >> 3;
          if (v223 >= 0x10)
          {
            do
            {
              v226 = *a1++;
              v222 |= v226 << v224;
              v224 += 8;
              --v225;
            }

            while (v225);
            a1 = v221->u64 + ((v223 - 8) >> 3) + 1;
          }

          v217 = (v217 + v213) & 7;
          if (v217)
          {
            v218 = *a1;
            v222 |= v218 << v224;
          }
        }

        v214 = v214 + *(v219 + 4 * (v222 & ~(-1 << v213)));
        v219 += 4 * v220;
        ++v216;
        v221 = a1;
      }

      while (v216 != v215);
    }

    ++v208;
    if (*a5 <= v214)
    {
      goto LABEL_283;
    }

    if (v299)
    {
      v227 = *(v299 + 8 * v209);
    }

    else
    {
      v227 = v209 | v291;
    }

    if (a7 < 2)
    {
      v228 = 1;
      goto LABEL_282;
    }

    v229 = 3;
    v230 = 2;
    v231 = 1;
    while (1)
    {
      if (v230 == a7)
      {
        v232 = v210[a7];
        goto LABEL_276;
      }

      v232 = v210[v230];
      v233 = a5[v230];
      if (v232 <= v233)
      {
        break;
      }

LABEL_276:
      v233 = v232;
      v234 = v211;
      v229 = v230;
      if (v232 < v214)
      {
        goto LABEL_281;
      }

LABEL_279:
      v210[v231] = v233;
      *(v211 + 8 * v231) = *(v234 + 8 * v230);
      v228 = v229;
      v230 = 2 * v229;
      v229 = (2 * v229) | 1;
      v231 = v228;
      if (v230 > a7)
      {
        goto LABEL_282;
      }
    }

    v234 = a6;
    if (v233 >= v214)
    {
      goto LABEL_279;
    }

LABEL_281:
    v228 = v231;
LABEL_282:
    v210[v228] = v214;
    *(v211 + 8 * v228) = v227;
    v300 = (v300 + 1);
LABEL_283:
    a3 = (a3 + v296);
    ++v209;
  }

  while (v209 != a2);
LABEL_362:
  faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
  v288 = qword_1ECB70E30 + v208;
LABEL_357:
  qword_1ECB70E30 = v288;
  return v300;
}

void sub_1D9C587C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoderGeneric>::scan_codes_range(faiss::BufferList *a1, uint64_t a2, int8x16_t *a3, uint64_t a4, faiss::RangeQueryResult *this, double a6)
{
  v8 = *&a6;
  v11 = a1;
  v12 = *(a1 + 18);
  if (*(a1 + 220))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a1 + 56);
  if (*(a1 + 13) >= 1)
  {
    if (v14 != 2)
    {
    }

    v15 = *(*(a1 + 4) + 32);
    v16 = *(*(a1 + 1) + 416);
    if (v15 > 19)
    {
      switch(v15)
      {
        case 20:
          v17 = 0;
          if (a2)
          {
            v120 = 0;
            v121 = *(a1 + 20);
            v122 = *v121;
            v123 = v121[1].i32[0];
            v214 = *v121;
            do
            {
              v124 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v122))))));
              v125 = vadd_s32(vdup_lane_s32(v124, 1), v124);
              v126 = v125.i32[0];
              v125.i32[0] = a3[1].i32[0] ^ v123;
              v127 = vcnt_s8(v125);
              v127.i16[0] = vaddlv_u8(v127);
              if (v126 + v127.i32[0] < v16)
              {
                v128 = *(v11 + 4);
                v129 = v128[2];
                if (v129 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v130 = *(v11 + 54);
                v131 = v128[1];
                if (v131)
                {
                  v132 = 0;
                  LOBYTE(v133) = 0;
                  LODWORD(v134) = 0;
                  v135 = *(v11 + 7);
                  v136 = v128[5];
                  v137 = a3;
                  do
                  {
                    if (!v133)
                    {
                      LODWORD(v134) = v137->u8[0];
                    }

                    v138 = v134 >> v133;
                    v139 = v129 + v133;
                    if (v139 < 8)
                    {
                      LOBYTE(v133) = v129 + v133;
                      a1 = v137;
                    }

                    else
                    {
                      v140 = 8 - v133;
                      a1 = &v137->i8[1];
                      v141 = (v139 - 8) >> 3;
                      if (v139 >= 0x10)
                      {
                        do
                        {
                          v142 = *a1;
                          a1 = (a1 + 1);
                          v138 |= v142 << v140;
                          v140 += 8;
                          --v141;
                        }

                        while (v141);
                        a1 = &v137->i8[((v139 - 8) >> 3) + 1];
                      }

                      v133 = (v133 + v129) & 7;
                      if (v133)
                      {
                        v134 = *a1;
                        v138 |= v134 << v140;
                      }
                    }

                    v130 = v130 + *(v135 + 4 * (v138 & ~(-1 << v129)));
                    v135 += 4 * v136;
                    ++v132;
                    v137 = a1;
                  }

                  while (v132 != v131);
                }

                ++v17;
                if (v130 < v8)
                {
                  if (v13)
                  {
                    v143 = *(v13 + 8 * v120);
                  }

                  else
                  {
                    v143 = v120 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v130, v143);
                  v122 = v214;
                }
              }

              a3 = (a3 + 20);
              ++v120;
            }

            while (v120 != a2);
          }

          goto LABEL_227;
        case 32:
          v17 = 0;
          if (a2)
          {
            v181 = 0;
            v182 = *(a1 + 20);
            v184 = *v182;
            v183 = v182[1];
            v211 = *v182;
            v215 = v183;
            do
            {
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v184))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v183))))))) < v16)
              {
                v185 = *(v11 + 4);
                v186 = v185[2];
                if (v186 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v187 = *(v11 + 54);
                v188 = v185[1];
                if (v188)
                {
                  v189 = 0;
                  LOBYTE(v190) = 0;
                  LODWORD(v191) = 0;
                  v192 = *(v11 + 7);
                  v193 = v185[5];
                  v194 = a3;
                  do
                  {
                    if (!v190)
                    {
                      LODWORD(v191) = v194->u8[0];
                    }

                    v195 = v191 >> v190;
                    v196 = v186 + v190;
                    if (v196 < 8)
                    {
                      LOBYTE(v190) = v186 + v190;
                      a1 = v194;
                    }

                    else
                    {
                      v197 = 8 - v190;
                      a1 = &v194->i8[1];
                      v198 = (v196 - 8) >> 3;
                      if (v196 >= 0x10)
                      {
                        do
                        {
                          v199 = *a1;
                          a1 = (a1 + 1);
                          v195 |= v199 << v197;
                          v197 += 8;
                          --v198;
                        }

                        while (v198);
                        a1 = &v194->i8[((v196 - 8) >> 3) + 1];
                      }

                      v190 = (v190 + v186) & 7;
                      if (v190)
                      {
                        v191 = *a1;
                        v195 |= v191 << v197;
                      }
                    }

                    v187 = v187 + *(v192 + 4 * (v195 & ~(-1 << v186)));
                    v192 += 4 * v193;
                    ++v189;
                    v194 = a1;
                  }

                  while (v189 != v188);
                }

                ++v17;
                if (v187 < v8)
                {
                  if (v13)
                  {
                    v200 = *(v13 + 8 * v181);
                  }

                  else
                  {
                    v200 = v181 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v187, v200);
                  v184 = v211;
                  v183 = v215;
                }
              }

              a3 += 2;
              ++v181;
            }

            while (v181 != a2);
          }

          goto LABEL_227;
        case 64:
          v17 = 0;
          if (a2)
          {
            v58 = 0;
            v59 = *(a1 + 20);
            v61 = v59[2];
            v60 = v59[3];
            v63 = *v59;
            v62 = v59[1];
            v210 = v61;
            v213 = v60;
            v208 = *v59;
            v209 = v62;
            do
            {
              if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v63))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v62)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v61))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v60)))))))) < v16)
              {
                v64 = *(v11 + 4);
                v65 = v64[2];
                if (v65 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v66 = *(v11 + 54);
                v67 = v64[1];
                if (v67)
                {
                  v68 = 0;
                  LOBYTE(v69) = 0;
                  LODWORD(v70) = 0;
                  v71 = *(v11 + 7);
                  v72 = v64[5];
                  v73 = a3;
                  do
                  {
                    if (!v69)
                    {
                      LODWORD(v70) = v73->u8[0];
                    }

                    v74 = v70 >> v69;
                    v75 = v65 + v69;
                    if (v75 < 8)
                    {
                      LOBYTE(v69) = v65 + v69;
                      a1 = v73;
                    }

                    else
                    {
                      v76 = 8 - v69;
                      a1 = &v73->i8[1];
                      v77 = (v75 - 8) >> 3;
                      if (v75 >= 0x10)
                      {
                        do
                        {
                          v78 = *a1;
                          a1 = (a1 + 1);
                          v74 |= v78 << v76;
                          v76 += 8;
                          --v77;
                        }

                        while (v77);
                        a1 = &v73->i8[((v75 - 8) >> 3) + 1];
                      }

                      v69 = (v69 + v65) & 7;
                      if (v69)
                      {
                        v70 = *a1;
                        v74 |= v70 << v76;
                      }
                    }

                    v66 = v66 + *(v71 + 4 * (v74 & ~(-1 << v65)));
                    v71 += 4 * v72;
                    ++v68;
                    v73 = a1;
                  }

                  while (v68 != v67);
                }

                ++v17;
                if (v66 < v8)
                {
                  if (v13)
                  {
                    v79 = *(v13 + 8 * v58);
                  }

                  else
                  {
                    v79 = v58 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v66, v79);
                  v61 = v210;
                  v60 = v213;
                  v63 = v208;
                  v62 = v209;
                }
              }

              a3 += 4;
              ++v58;
            }

            while (v58 != a2);
          }

          goto LABEL_227;
      }
    }

    else
    {
      switch(v15)
      {
        case 4:
          v17 = 0;
          if (a2)
          {
            v102 = 0;
            v103 = **(a1 + 20);
            do
            {
              LODWORD(a6) = a3->i32[0] ^ v103;
              a6 = COERCE_DOUBLE(vcnt_s8(*&a6));
              LOWORD(a6) = vaddlv_u8(*&a6);
              if (SLODWORD(a6) < v16)
              {
                v104 = *(v11 + 4);
                v105 = v104[2];
                if (v105 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v106 = *(v11 + 54);
                v107 = v104[1];
                if (v107)
                {
                  v108 = 0;
                  LOBYTE(v109) = 0;
                  LODWORD(v110) = 0;
                  v111 = *(v11 + 7);
                  v112 = v104[5];
                  v113 = a3;
                  do
                  {
                    if (!v109)
                    {
                      LODWORD(v110) = v113->u8[0];
                    }

                    v114 = v110 >> v109;
                    v115 = v105 + v109;
                    if (v115 < 8)
                    {
                      LOBYTE(v109) = v105 + v109;
                      a1 = v113;
                    }

                    else
                    {
                      v116 = 8 - v109;
                      a1 = &v113->i8[1];
                      v117 = (v115 - 8) >> 3;
                      if (v115 >= 0x10)
                      {
                        do
                        {
                          v118 = *a1;
                          a1 = (a1 + 1);
                          v114 |= v118 << v116;
                          v116 += 8;
                          --v117;
                        }

                        while (v117);
                        a1 = &v113->i8[((v115 - 8) >> 3) + 1];
                      }

                      v109 = (v109 + v105) & 7;
                      if (v109)
                      {
                        v110 = *a1;
                        v114 |= v110 << v116;
                      }
                    }

                    v106 = v106 + *(v111 + 4 * (v114 & ~(-1 << v105)));
                    v111 += 4 * v112;
                    ++v108;
                    v113 = a1;
                  }

                  while (v108 != v107);
                }

                ++v17;
                if (v106 < v8)
                {
                  if (v13)
                  {
                    v119 = *(v13 + 8 * v102);
                  }

                  else
                  {
                    v119 = v102 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v106, v119);
                }
              }

              a3 = (a3 + 4);
              ++v102;
            }

            while (v102 != a2);
          }

          goto LABEL_227;
        case 8:
          v17 = 0;
          if (a2)
          {
            v162 = 0;
            v163 = **(a1 + 20);
            do
            {
              v164 = vcnt_s8((a3->i64[0] ^ v163));
              v164.i16[0] = vaddlv_u8(v164);
              if (v16 > v164.i32[0])
              {
                v165 = *(v11 + 4);
                v166 = v165[2];
                if (v166 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v167 = *(v11 + 54);
                v168 = v165[1];
                if (v168)
                {
                  v169 = 0;
                  LOBYTE(v170) = 0;
                  LODWORD(v171) = 0;
                  v172 = *(v11 + 7);
                  v173 = v165[5];
                  v174 = a3;
                  do
                  {
                    if (!v170)
                    {
                      LODWORD(v171) = v174->u8[0];
                    }

                    v175 = v171 >> v170;
                    v176 = v166 + v170;
                    if (v176 < 8)
                    {
                      LOBYTE(v170) = v166 + v170;
                      a1 = v174;
                    }

                    else
                    {
                      v177 = 8 - v170;
                      a1 = &v174->i8[1];
                      v178 = (v176 - 8) >> 3;
                      if (v176 >= 0x10)
                      {
                        do
                        {
                          v179 = *a1;
                          a1 = (a1 + 1);
                          v175 |= v179 << v177;
                          v177 += 8;
                          --v178;
                        }

                        while (v178);
                        a1 = &v174->i8[((v176 - 8) >> 3) + 1];
                      }

                      v170 = (v170 + v166) & 7;
                      if (v170)
                      {
                        v171 = *a1;
                        v175 |= v171 << v177;
                      }
                    }

                    v167 = v167 + *(v172 + 4 * (v175 & ~(-1 << v166)));
                    v172 += 4 * v173;
                    ++v169;
                    v174 = a1;
                  }

                  while (v169 != v168);
                }

                ++v17;
                if (v167 < v8)
                {
                  if (v13)
                  {
                    v180 = *(v13 + 8 * v162);
                  }

                  else
                  {
                    v180 = v162 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v167, v180);
                }
              }

              a3 = (a3 + 8);
              ++v162;
            }

            while (v162 != a2);
          }

          goto LABEL_227;
        case 16:
          v17 = 0;
          if (a2)
          {
            v18 = 0;
            v19 = **(a1 + 20);
            v212 = v19;
            do
            {
              v20 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v19))))));
              if (vadd_s32(vdup_lane_s32(v20, 1), v20).i32[0] < v16)
              {
                v21 = *(v11 + 4);
                v22 = v21[2];
                if (v22 >= 65)
                {
                  faiss::decode<faiss::PQDecoderGeneric>();
                }

                v23 = *(v11 + 54);
                v24 = v21[1];
                if (v24)
                {
                  v25 = 0;
                  LOBYTE(v26) = 0;
                  LODWORD(v27) = 0;
                  v28 = *(v11 + 7);
                  v29 = v21[5];
                  v30 = a3;
                  do
                  {
                    if (!v26)
                    {
                      LODWORD(v27) = v30->u8[0];
                    }

                    v31 = v27 >> v26;
                    v32 = v22 + v26;
                    if (v32 < 8)
                    {
                      LOBYTE(v26) = v22 + v26;
                      a1 = v30;
                    }

                    else
                    {
                      v33 = 8 - v26;
                      a1 = &v30->i8[1];
                      v34 = (v32 - 8) >> 3;
                      if (v32 >= 0x10)
                      {
                        do
                        {
                          v35 = *a1;
                          a1 = (a1 + 1);
                          v31 |= v35 << v33;
                          v33 += 8;
                          --v34;
                        }

                        while (v34);
                        a1 = &v30->i8[((v32 - 8) >> 3) + 1];
                      }

                      v26 = (v26 + v22) & 7;
                      if (v26)
                      {
                        v27 = *a1;
                        v31 |= v27 << v33;
                      }
                    }

                    v23 = v23 + *(v28 + 4 * (v31 & ~(-1 << v22)));
                    v28 += 4 * v29;
                    ++v25;
                    v30 = a1;
                  }

                  while (v25 != v24);
                }

                ++v17;
                if (v23 < v8)
                {
                  if (v13)
                  {
                    v36 = *(v13 + 8 * v18);
                  }

                  else
                  {
                    v36 = v18 | (v12 << 32);
                  }

                  a1 = faiss::RangeQueryResult::add(this, v23, v36);
                  v19 = v212;
                }
              }

              ++a3;
              ++v18;
            }

            while (v18 != a2);
          }

LABEL_227:
          faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
          qword_1ECB70E30 += v17;
          return;
      }
    }

    v216 = *(a1 + 20);
    v217 = v15 / 8;
    v218 = v15 - (v6 & 0xFFFFFFF8);
    v17 = 0;
    if (a2)
    {
      v144 = 0;
      v145 = v15;
      do
      {
        a1 = faiss::HammingComputerDefault::hamming(&v216, a3);
        if (a1 < v16)
        {
          v146 = *(v11 + 4);
          v147 = v146[2];
          if (v147 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v148 = *(v11 + 54);
          v149 = v146[1];
          if (v149)
          {
            v150 = 0;
            LOBYTE(v151) = 0;
            LODWORD(v152) = 0;
            v153 = *(v11 + 7);
            v154 = v146[5];
            v155 = a3;
            do
            {
              if (!v151)
              {
                LODWORD(v152) = v155->u8[0];
              }

              v156 = v152 >> v151;
              v157 = v147 + v151;
              if (v157 < 8)
              {
                LOBYTE(v151) = v147 + v151;
                a1 = v155;
              }

              else
              {
                v158 = 8 - v151;
                a1 = &v155->i8[1];
                v159 = (v157 - 8) >> 3;
                if (v157 >= 0x10)
                {
                  do
                  {
                    v160 = *a1;
                    a1 = (a1 + 1);
                    v156 |= v160 << v158;
                    v158 += 8;
                    --v159;
                  }

                  while (v159);
                  a1 = &v155->i8[((v157 - 8) >> 3) + 1];
                }

                v151 = (v151 + v147) & 7;
                if (v151)
                {
                  v152 = *a1;
                  v156 |= v152 << v158;
                }
              }

              v148 = v148 + *(v153 + 4 * (v156 & ~(-1 << v147)));
              v153 += 4 * v154;
              ++v150;
              v155 = a1;
            }

            while (v150 != v149);
          }

          ++v17;
          if (v148 < v8)
          {
            if (v13)
            {
              v161 = *(v13 + 8 * v144);
            }

            else
            {
              v161 = v144 | (v12 << 32);
            }

            a1 = faiss::RangeQueryResult::add(this, v148, v161);
          }
        }

        a3 = (a3 + v145);
        ++v144;
      }

      while (v144 != a2);
    }

    goto LABEL_227;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2)
      {
        v80 = 0;
        v81 = v12 << 32;
        do
        {
          v82 = *(v11 + 4);
          v83 = v82[2];
          if (v83 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v84 = *(v11 + 54);
          v85 = v82[1];
          if (v85)
          {
            v86 = 0;
            LOBYTE(v87) = 0;
            LODWORD(v88) = 0;
            v89 = *(v11 + 8);
            v90 = a3;
            do
            {
              if (!v87)
              {
                LODWORD(v88) = v90->u8[0];
              }

              v91 = v88 >> v87;
              v92 = v83 + v87;
              v93 = v92 - 8;
              if (v92 < 8)
              {
                LOBYTE(v87) = v83 + v87;
              }

              else
              {
                v94 = 8 - v87;
                v95 = &v90->u8[1];
                if (v92 < 0x10)
                {
                  v90 = (v90 + 1);
                }

                else
                {
                  v96 = v93 >> 3;
                  v97 = (v93 >> 3) - 1;
                  do
                  {
                    v98 = *v95++;
                    v91 |= v98 << v94;
                    v94 += 8;
                    --v96;
                  }

                  while (v96);
                  v90 = (v90 + v97 + 2);
                }

                v87 = (v87 + v83) & 7;
                if (v87)
                {
                  v88 = v90->u8[0];
                  v91 |= v88 << v94;
                }
              }

              v84 = v84 + (*(*(*(v11 + 14) + 8 * v86) + 4 * (v91 & ~(-1 << v83))) + (*(v89 + 4 * (v91 & ~(-1 << v83))) * -2.0));
              v89 += 4 * v82[5];
              ++v86;
            }

            while (v86 != v85);
          }

          v99 = v82[4];
          if (v84 < v8)
          {
            if (v13)
            {
              v100 = *(v13 + 8 * v80);
            }

            else
            {
              v100 = v80 | v81;
            }

            faiss::RangeQueryResult::add(this, v84, v100);
          }

          a3 = (a3 + v99);
          ++v80;
        }

        while (v80 != a2);
      }
    }

    else
    {
      if (v14 != 2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v216, "bad precomp mode");
        faiss::FaissException::FaissException(exception, &v216, "virtual void faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_L2, faiss::CMax<float, long long>, faiss::PQDecoderGeneric>::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const [METRIC_TYPE = faiss::METRIC_L2, C = faiss::CMax<float, long long>, PQDecoder = faiss::PQDecoderGeneric]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1126);
      }

      if (a2)
      {
        v37 = 0;
        v38 = v12 << 32;
        do
        {
          v39 = *(v11 + 4);
          v40 = v39[2];
          if (v40 >= 65)
          {
            faiss::decode<faiss::PQDecoderGeneric>();
          }

          v41 = *(v11 + 54);
          v42 = v39[1];
          if (v42)
          {
            v43 = 0;
            LOBYTE(v44) = 0;
            LODWORD(v45) = 0;
            v46 = *(v11 + 7);
            v47 = a3;
            do
            {
              if (!v44)
              {
                LODWORD(v45) = v47->u8[0];
              }

              v48 = v45 >> v44;
              v49 = v40 + v44;
              v50 = v49 - 8;
              if (v49 < 8)
              {
                LOBYTE(v44) = v40 + v44;
              }

              else
              {
                v51 = 8 - v44;
                v52 = &v47->u8[1];
                if (v49 < 0x10)
                {
                  v47 = (v47 + 1);
                }

                else
                {
                  v53 = v50 >> 3;
                  v54 = (v50 >> 3) - 1;
                  do
                  {
                    v55 = *v52++;
                    v48 |= v55 << v51;
                    v51 += 8;
                    --v53;
                  }

                  while (v53);
                  v47 = (v47 + v54 + 2);
                }

                v44 = (v44 + v40) & 7;
                if (v44)
                {
                  v45 = v47->u8[0];
                  v48 |= v45 << v51;
                }
              }

              v41 = v41 + *(v46 + 4 * (v48 & ~(-1 << v40)));
              v46 += 4 * v39[5];
              ++v43;
            }

            while (v43 != v42);
          }

          v56 = v39[4];
          if (v41 < v8)
          {
            if (v13)
            {
              v57 = *(v13 + 8 * v37);
            }

            else
            {
              v57 = v37 | v38;
            }

            faiss::RangeQueryResult::add(this, v41, v57);
          }

          a3 = (a3 + v56);
          ++v37;
        }

        while (v37 != a2);
      }
    }
  }

  else
  {
    if (*(a1 + 44) == 1)
    {
      v101 = (a1 + 72);
      (*(**(*(a1 + 1) + 40) + 104))(*(*(a1 + 1) + 40), *(a1 + 17), *(a1 + 9), v12);
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v101 = (a1 + 136);
      if (!a2)
      {
        return;
      }
    }

    v201 = 0;
    v202 = *v101;
    v203 = v12 << 32;
    do
    {
      faiss::ProductQuantizer::decode(*(v11 + 4), a3, *(v11 + 10));
      v204 = *(*(v11 + 4) + 32);
      v205 = faiss::fvec_L2sqr(*(v11 + 10), v202, *(v11 + 6));
      if (v205 < v8)
      {
        if (v13)
        {
          v206 = *(v13 + 8 * v201);
        }

        else
        {
          v206 = v201 | v203;
        }

        faiss::RangeQueryResult::add(this, v205, v206);
      }

      a3 = (a3 + v204);
      ++v201;
    }

    while (a2 != v201);
  }
}

void sub_1D9C5975C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoderGeneric>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoderGeneric>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1DA73F410);
}

int *std::__introsort<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = result;
LABEL_2:
  v8 = v7;
  v87 = a2;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v77 = *(a2 - 1);
        v78 = *v8;
        result = memcmp((*v5 + *(v5 + 8) * v77), (*v5 + *(v5 + 8) * v78), *(v5 + 8));
        if (result >= 1)
        {
          *v8 = v77;
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(v8, v8 + 1, v8 + 2, a2 - 1, v5);
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1, v5);
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(v8, a2, v5);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(v8, a2, v5);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,int *>(v8, a2, a2, v5);
      }

      return result;
    }

    v86 = v10;
    v12 = &v8[v11 >> 1];
    v13 = *v5;
    v14 = *(v5 + 8);
    v15 = *(a2 - 1);
    v16 = (*v5 + v14 * v15);
    v90 = &v7[v11 >> 1];
    if (v11 >= 0x81)
    {
      v88 = &v7[v11 >> 1];
      v17 = v7;
      v18 = *v12;
      v19 = v17;
      v20 = *v17;
      v21 = (v13 + v14 * v20);
      v22 = memcmp((v13 + v14 * v18), v21, v14);
      v23 = memcmp(v16, (v13 + v14 * v18), v14);
      if (v22 <= 0)
      {
        v25 = v87;
        if (v23 >= 1)
        {
          *v90 = v15;
          *(v87 - 1) = v18;
          v30 = *v90;
          v31 = *v19;
          if (memcmp((v13 + v14 * v30), (v13 + v14 * v31), v14) >= 1)
          {
            *v19 = v30;
            *v90 = v31;
          }
        }
      }

      else if (v23 < 1)
      {
        *v19 = v18;
        *v90 = v20;
        v34 = v20;
        v25 = v87;
        v35 = *(v87 - 1);
        if (memcmp((v13 + v14 * v35), v21, v14) >= 1)
        {
          *v90 = v35;
          *(v87 - 1) = v34;
        }
      }

      else
      {
        *v19 = v15;
        v24 = v20;
        v25 = v87;
        *(v87 - 1) = v24;
      }

      v36 = *(v88 - 1);
      v85 = v88 - 1;
      v82 = v19[1];
      v37 = memcmp((v13 + v14 * v36), (v13 + v14 * v82), v14);
      v38 = *(v25 - 2);
      v39 = memcmp((v13 + v14 * v38), (v13 + v14 * v36), v14);
      v7 = v19;
      if (v37 <= 0)
      {
        v40 = v88;
        if (v39 >= 1)
        {
          *v85 = v38;
          *(v25 - 2) = v36;
          v41 = *v85;
          v42 = v7[1];
          if (memcmp((v13 + v14 * v41), (v13 + v14 * v42), v14) >= 1)
          {
            v7[1] = v41;
            *v85 = v42;
          }
        }
      }

      else if (v39 < 1)
      {
        v19[1] = v36;
        *v85 = v82;
        v44 = *(v25 - 2);
        v40 = v88;
        if (memcmp((v13 + v14 * v44), (v13 + v14 * v82), v14) >= 1)
        {
          *v85 = v44;
          *(v25 - 2) = v82;
        }
      }

      else
      {
        v19[1] = v38;
        *(v25 - 2) = v82;
        v40 = v88;
      }

      v45 = v40[1];
      v89 = v40 + 1;
      v46 = v7[2];
      v47 = memcmp((v13 + v14 * v45), (v13 + v14 * v46), v14);
      v48 = *(v25 - 3);
      v49 = memcmp((v13 + v14 * v48), (v13 + v14 * v45), v14);
      if (v47 <= 0)
      {
        v51 = v40 + 1;
        v50 = v90;
        if (v49 >= 1)
        {
          *v89 = v48;
          *(v25 - 3) = v45;
          v52 = *v89;
          v53 = v7[2];
          if (memcmp((v13 + v14 * v52), (v13 + v14 * v53), v14) >= 1)
          {
            v7[2] = v52;
            *v89 = v53;
          }
        }
      }

      else
      {
        v50 = v90;
        if (v49 < 1)
        {
          v7[2] = v45;
          v51 = v40 + 1;
          *v89 = v46;
          v54 = *(v25 - 3);
          if (memcmp((v13 + v14 * v54), (v13 + v14 * v46), v14) >= 1)
          {
            *v89 = v54;
            *(v25 - 3) = v46;
          }
        }

        else
        {
          v7[2] = v48;
          *(v25 - 3) = v46;
          v51 = v40 + 1;
        }
      }

      v55 = *v50;
      v56 = *v85;
      v57 = memcmp((v13 + v14 * v55), (v13 + v14 * v56), v14);
      v58 = *v51;
      v59 = memcmp((v13 + v14 * v58), (v13 + v14 * v55), v14);
      if (v57 <= 0)
      {
        v5 = a3;
        if (v59 < 1)
        {
          v61 = v90;
        }

        else
        {
          v61 = v90;
          *v90 = v58;
          *v89 = v55;
          v62 = memcmp((v13 + v14 * v58), (v13 + v14 * v56), v14);
          v60 = v90;
          LODWORD(v55) = v56;
          if (v62 > 0)
          {
            goto LABEL_53;
          }

          LODWORD(v55) = v58;
        }
      }

      else
      {
        v5 = a3;
        if (v59 > 0)
        {
          v60 = v40 + 1;
          v61 = v90;
          goto LABEL_53;
        }

        *v85 = v55;
        v61 = v90;
        *v90 = v56;
        v63 = memcmp((v13 + v14 * v58), (v13 + v14 * v56), v14);
        v85 = v90;
        LODWORD(v55) = v58;
        v60 = v40 + 1;
        if (v63 < 1)
        {
          LODWORD(v55) = v56;
        }

        else
        {
LABEL_53:
          *v85 = v58;
          *v60 = v56;
        }
      }

      v64 = *v7;
      *v7 = v55;
      *v61 = v64;
      goto LABEL_57;
    }

    v26 = *v7;
    v27 = *v12;
    v28 = memcmp((v13 + v14 * v26), (v13 + v14 * v27), v14);
    v29 = memcmp(v16, (v13 + v14 * v26), v14);
    if (v28 <= 0)
    {
      v5 = a3;
      if (v29 >= 1)
      {
        *v7 = v15;
        *(v87 - 1) = v26;
        v32 = *v7;
        v33 = *v90;
        if (memcmp((v13 + v14 * v32), (v13 + v14 * v33), v14) >= 1)
        {
          *v90 = v32;
          *v7 = v33;
        }
      }
    }

    else if (v29 < 1)
    {
      *v90 = v26;
      *v7 = v27;
      v43 = *(v87 - 1);
      v5 = a3;
      if (memcmp((v13 + v14 * v43), (v13 + v14 * v27), v14) >= 1)
      {
        *v7 = v43;
        *(v87 - 1) = v27;
      }
    }

    else
    {
      *v90 = v15;
      *(v87 - 1) = v27;
      v5 = a3;
    }

LABEL_57:
    if ((a5 & 1) == 0 && memcmp((v13 + v14 * *(v7 - 1)), (v13 + v14 * *v7), v14) <= 0)
    {
      a2 = v87;
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::CodeCmp &>(v7, v87, v5);
      v8 = result;
      v66 = v86;
      goto LABEL_64;
    }

    a2 = v87;
    v65 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::CodeCmp &>(v7, v87, v5);
    v66 = v86;
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(v7, v65, v5);
    v8 = v65 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(v65 + 1, v87, v5);
    if (result)
    {
      a4 = -v86;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v86 + 1;
    if (!v68)
    {
LABEL_62:
      result = std::__introsort<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,false>(v7, v65, v5, -v86, a5 & 1);
      v8 = v65 + 1;
LABEL_64:
      a5 = 0;
      a4 = -v66;
      goto LABEL_3;
    }
  }

  v69 = *v8;
  v70 = v8[1];
  v72 = *v5;
  v71 = *(v5 + 8);
  v73 = (*v5 + v71 * v70);
  v74 = (*v5 + v71 * v69);
  v75 = memcmp(v73, v74, v71);
  v76 = *(a2 - 1);
  result = memcmp((v72 + v71 * v76), v73, v71);
  if (v75 <= 0)
  {
    if (result >= 1)
    {
      v7[1] = v76;
      *(a2 - 1) = v70;
      v80 = *v7;
      v79 = v7[1];
      result = memcmp((v72 + v71 * v79), (v72 + v71 * v80), v71);
      if (result >= 1)
      {
        *v7 = v79;
        v7[1] = v80;
      }
    }
  }

  else
  {
    if (result < 1)
    {
      *v7 = v70;
      v7[1] = v69;
      v81 = *(a2 - 1);
      result = memcmp((v72 + v71 * v81), v74, v71);
      if (result < 1)
      {
        return result;
      }

      v7[1] = v81;
    }

    else
    {
      *v7 = v76;
    }

    *(a2 - 1) = v69;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  v6 = *a2;
  v8 = *a5;
  v7 = a5[1];
  v9 = *a1;
  v10 = v7 * v9;
  v11 = memcmp((*a5 + v7 * v6), (*a5 + v7 * v9), v7);
  v12 = a3;
  v13 = *a3;
  v14 = memcmp((v8 + v7 * v13), (v8 + v7 * v6), v7);
  if (v11 <= 0)
  {
    if (v14 < 1)
    {
      v10 = v7 * v13;
      LODWORD(v6) = v13;
      v15 = a2;
    }

    else
    {
      *a2 = v13;
      *a3 = v6;
      v16 = *a2;
      v17 = *a1;
      v10 = v7 * v6;
      v15 = a2;
      if (memcmp((v8 + v7 * v16), (v8 + v7 * v17), v7) >= 1)
      {
        *a1 = v16;
        *a2 = v17;
        v6 = *a3;
        v10 = v7 * v6;
      }
    }
  }

  else
  {
    if (v14 < 1)
    {
      v15 = a2;
      *a1 = v6;
      *a2 = v9;
      v6 = *a3;
      if (memcmp((v8 + v7 * v6), (v8 + v10), v7) < 1)
      {
        v10 = v7 * v6;
        goto LABEL_12;
      }

      *a2 = v6;
    }

    else
    {
      v15 = a2;
      *a1 = v13;
    }

    *a3 = v9;
    LODWORD(v6) = v9;
  }

LABEL_12:
  v18 = *a4;
  result = memcmp((v8 + v7 * v18), (v8 + v10), v7);
  if (result >= 1)
  {
    *v12 = v18;
    *a4 = v6;
    v20 = *v12;
    v21 = *v15;
    result = memcmp((v8 + v7 * v20), (v8 + v7 * v21), v7);
    if (result >= 1)
    {
      *v15 = v20;
      *v12 = v21;
      v22 = *v15;
      v23 = *a1;
      result = memcmp((v8 + v7 * v22), (v8 + v7 * v23), v7);
      if (result >= 1)
      {
        *a1 = v22;
        *v15 = v23;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v15 = *a6;
  v14 = a6[1];
  result = memcmp((v15 + v14 * v12), (v15 + v14 * v13), v14);
  if (result >= 1)
  {
    *a4 = v12;
    *a5 = v13;
    v17 = *a4;
    v18 = *a3;
    result = memcmp((v15 + v14 * v17), (v15 + v14 * v18), v14);
    if (result >= 1)
    {
      *a3 = v17;
      *a4 = v18;
      v19 = *a3;
      v20 = *a2;
      result = memcmp((v15 + v14 * v19), (v15 + v14 * v20), v14);
      if (result >= 1)
      {
        *a2 = v19;
        *a3 = v20;
        v21 = *a2;
        v22 = *a1;
        result = memcmp((v15 + v14 * v21), (v15 + v14 * v22), v14);
        if (result >= 1)
        {
          *a1 = v21;
          *a2 = v22;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v6 = 0;
      v8 = *a3;
      v7 = a3[1];
      v9 = result;
      do
      {
        v11 = *v9;
        v10 = v9[1];
        v9 = v5;
        result = memcmp((v8 + v7 * v10), (v8 + v7 * v11), v7);
        if (result >= 1)
        {
          v12 = v6;
          while (1)
          {
            *(v4 + v12 + 4) = v11;
            if (!v12)
            {
              break;
            }

            v11 = *(v4 + v12 - 4);
            result = memcmp((v8 + v7 * v10), (v8 + v7 * v11), v7);
            v12 -= 4;
            if (result <= 0)
            {
              v13 = (v4 + v12 + 4);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
        }

        v5 = v9 + 1;
        v6 += 4;
      }

      while (v9 + 1 != a2);
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = *a3;
      v6 = a3[1];
      do
      {
        v9 = *v4;
        v8 = v4[1];
        v4 = v5;
        result = memcmp((v7 + v6 * v8), (v7 + v6 * v9), v6);
        if (result >= 1)
        {
          v10 = v4;
          do
          {
            *v10 = v9;
            v9 = *(v10 - 2);
            result = memcmp((v7 + v6 * v8), (v7 + v6 * v9), v6);
            --v10;
          }

          while (result > 0);
          *v10 = v8;
        }

        v5 = v4 + 1;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::CodeCmp &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a1;
  v7 = *a3;
  v6 = a3[1];
  v8 = (*a3 + v6 * v5);
  if (memcmp(v8, (*a3 + v6 * *(a2 - 1)), v6) <= 0)
  {
    v11 = a1 + 1;
    do
    {
      v9 = v11;
      if (v11 >= v3)
      {
        break;
      }

      ++v11;
    }

    while (memcmp(v8, (v7 + v6 * *v9), v6) < 1);
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
    }

    while (memcmp(v8, (v7 + v6 * v10), v6) <= 0);
  }

  if (v9 < v3)
  {
    do
    {
      v12 = *--v3;
    }

    while (memcmp(v8, (v7 + v6 * v12), v6) > 0);
  }

  if (v9 < v3)
  {
    v13 = *v9;
    v14 = *v3;
    do
    {
      *v9 = v14;
      *v3 = v13;
      do
      {
        v15 = v9[1];
        ++v9;
        v13 = v15;
      }

      while (memcmp(v8, (v7 + v6 * v15), v6) < 1);
      do
      {
        v16 = *--v3;
        v14 = v16;
      }

      while (memcmp(v8, (v7 + v6 * v16), v6) > 0);
    }

    while (v9 < v3);
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v5;
  return v9;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::CodeCmp &>(int *a1, int *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *a1;
  v8 = *a3;
  v7 = a3[1];
  v9 = (*a3 + v7 * v6);
  do
  {
    v10 = a1[++v5];
  }

  while (memcmp((v8 + v7 * v10), v9, v7) > 0);
  v11 = &a1[v5];
  v12 = &a1[v5 - 1];
  if (v5 == 1)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      v14 = *--a2;
    }

    while (memcmp((v8 + v7 * v14), v9, v7) <= 0);
  }

  else
  {
    do
    {
      v13 = *--a2;
    }

    while (memcmp((v8 + v7 * v13), v9, v7) < 1);
  }

  if (v11 < a2)
  {
    v22 = v6;
    v15 = *a2;
    v16 = v10;
    v17 = v11;
    v18 = a2;
    do
    {
      *v17 = v15;
      *v18 = v16;
      do
      {
        v19 = v17[1];
        ++v17;
        v16 = v19;
      }

      while (memcmp((v8 + v7 * v19), v9, v7) > 0);
      do
      {
        v20 = *--v18;
        v15 = v20;
      }

      while (memcmp((v8 + v7 * v20), v9, v7) < 1);
    }

    while (v17 < v18);
    v12 = v17 - 1;
    LODWORD(v6) = v22;
  }

  if (v12 != a1)
  {
    *a1 = *v12;
  }

  *v12 = v6;
  return v12;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(int *a1, int *a2, uint64_t a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v9 = *a1;
        v10 = a1[1];
        v12 = *a3;
        v11 = *(a3 + 8);
        v13 = (*a3 + v11 * v10);
        v14 = (*a3 + v11 * v9);
        v15 = memcmp(v13, v14, v11);
        v16 = *(a2 - 1);
        v17 = memcmp((v12 + v11 * v16), v13, v11);
        if (v15 <= 0)
        {
          if (v17 >= 1)
          {
            a1[1] = v16;
            *(a2 - 1) = v10;
            v31 = *a1;
            v30 = a1[1];
            if (memcmp((v12 + v11 * v30), (v12 + v11 * v31), v11) >= 1)
            {
              *a1 = v30;
              a1[1] = v31;
            }
          }
        }

        else if (v17 < 1)
        {
          *a1 = v10;
          a1[1] = v9;
          v43 = a2;
          v44 = *(a2 - 1);
          if (memcmp((v12 + v11 * v44), v14, v11) >= 1)
          {
            a1[1] = v44;
            *(v43 - 1) = v9;
          }
        }

        else
        {
          *a1 = v16;
          *(a2 - 1) = v9;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (memcmp((*a3 + *(a3 + 8) * v7), (*a3 + *(a3 + 8) * v8), *(a3 + 8)) >= 1)
    {
      *a1 = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_13:
  v19 = a1 + 1;
  v18 = a1[1];
  v21 = *a3;
  v20 = *(a3 + 8);
  v22 = (*a3 + v20 * v18);
  v48 = *a1;
  __s2 = (*a3 + v20 * v48);
  v23 = memcmp(v22, __s2, v20);
  v24 = a1 + 2;
  v47 = a1[2];
  v25 = (v21 + v20 * v47);
  v26 = memcmp(v25, v22, v20);
  if (v23 > 0)
  {
    v27 = a1;
    v28 = a1 + 2;
    if (v26 <= 0)
    {
      *a1 = v18;
      a1[1] = v48;
      v29 = memcmp(v25, __s2, v20);
      v27 = a1 + 1;
      v28 = a1 + 2;
      if (v29 < 1)
      {
        goto LABEL_24;
      }
    }

LABEL_23:
    *v27 = v47;
    *v28 = v48;
    goto LABEL_24;
  }

  if (v26 >= 1)
  {
    *v19 = v47;
    *v24 = v18;
    v32 = memcmp(v25, __s2, v20);
    v27 = a1;
    v28 = a1 + 1;
    if (v32 > 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 12;
  v49 = a2;
  while (1)
  {
    v36 = *v33;
    v37 = *v24;
    if (memcmp((v21 + v20 * v36), (v21 + v20 * v37), v20) >= 1)
    {
      break;
    }

    v42 = v49;
LABEL_34:
    v24 = v33;
    v35 += 4;
    if (++v33 == v42)
    {
      return 1;
    }
  }

  v38 = v35;
  while (1)
  {
    *(a1 + v38) = v37;
    v39 = v38 - 4;
    if (v38 == 4)
    {
      break;
    }

    v37 = *(a1 + v38 - 8);
    v40 = memcmp((v21 + v20 * v36), (v21 + v20 * v37), v20);
    v38 = v39;
    if (v40 <= 0)
    {
      v41 = (a1 + v39);
      goto LABEL_33;
    }
  }

  v41 = a1;
LABEL_33:
  *v41 = v36;
  ++v34;
  v42 = v49;
  if (v34 != 8)
  {
    goto LABEL_34;
  }

  return v33 + 1 == v49;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,int *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (memcmp((*a4 + *(a4 + 8) * v13), (*a4 + *(a4 + 8) * v14), *(a4 + 8)) >= 1)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(uint64_t result, char **a2, uint64_t a3, int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v8 = a3;
      v9 = (a4 - result) >> 1;
      v10 = v9 + 1;
      v11 = (result + 4 * (v9 + 1));
      v12 = v9 + 2;
      v13 = *v11;
      if (v9 + 2 >= a3)
      {
        v15 = *a2;
        v14 = a2[1];
      }

      else
      {
        v21 = v11[1];
        v14 = a2[1];
        __s2 = *a2;
        if (memcmp(&(*a2)[v14 * v13], &(*a2)[v14 * v21], v14) > 0)
        {
          v13 = v21;
          ++v11;
          v10 = v12;
        }

        v15 = __s2;
      }

      v16 = *v5;
      __s2a = &v15[v14 * v16];
      result = memcmp(&v15[v14 * v13], __s2a, v14);
      if (result <= 0)
      {
        v22 = v16;
        v23 = v8;
        v24 = v7;
        do
        {
          v17 = v11;
          *v5 = v13;
          if (v7 < v10)
          {
            break;
          }

          v18 = (2 * v10) | 1;
          v11 = (v6 + 4 * v18);
          v10 = 2 * v10 + 2;
          v13 = *v11;
          if (v10 >= v8)
          {
            v10 = v18;
          }

          else
          {
            v19 = v11[1];
            v20 = memcmp(&v15[v14 * v13], &v15[v14 * v19], v14);
            if (v20 > 0)
            {
              v13 = v19;
              ++v11;
            }

            v8 = v23;
            v7 = v24;
            if (v20 <= 0)
            {
              v10 = v18;
            }
          }

          result = memcmp(&v15[v14 * v13], __s2a, v14);
          v5 = v17;
        }

        while (result < 1);
        *v17 = v22;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  v7 = a2[1];
  v17 = *a2;
  do
  {
    v8 = &a1[v5];
    v9 = v8 + 1;
    v10 = v8[1];
    v11 = (2 * v5) | 1;
    v12 = 2 * v5 + 2;
    if (v12 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v15 = v8[2];
      v14 = v8 + 2;
      v13 = v15;
      if (memcmp((v17 + v7 * v10), (v17 + v7 * v15), v7) <= 0)
      {
        v5 = v11;
      }

      else
      {
        v10 = v13;
        v9 = v14;
        v5 = v12;
      }
    }

    *a1 = v10;
    a1 = v9;
  }

  while (v5 <= v6);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 4 * (v4 >> 1));
    v8 = *v7;
    v9 = (a2 - 4);
    v10 = *(a2 - 4);
    v12 = *a3;
    v11 = a3[1];
    v13 = (*a3 + v11 * v10);
    result = memcmp((*a3 + v11 * v8), v13, v11);
    if (result >= 1)
    {
      do
      {
        v14 = v7;
        *v9 = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 4 * v6);
        v8 = *v7;
        result = memcmp((v12 + v11 * v8), v13, v11);
        v9 = v14;
      }

      while (result > 0);
      *v14 = v10;
    }
  }

  return result;
}

void faiss::IndexIVFPQStats::get_indexIVFPQ_stats()
{
  if (__cxa_guard_acquire(&_MergedGlobals_1))
  {
    unk_1ECB70E38 = 0u;
    unk_1ECB70E28 = 0u;

    __cxa_guard_release(&_MergedGlobals_1);
  }
}

void faiss::anonymous namespace::QueryTables::QueryTables(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 112) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 88) = v6;

    operator delete(v6);
  }
}

void faiss::IndexBinary::range_search(faiss::IndexBinary *this, uint64_t a2, const unsigned __int8 *a3, int a4, faiss::RangeSearchResult *a5)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v6, "range search not implemented");
  faiss::FaissException::FaissException(exception, v6, "virtual void faiss::IndexBinary::range_search(idx_t, const uint8_t *, int, RangeSearchResult *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexBinary.cpp", 26);
}

void sub_1D9C5B15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexBinary::assign(faiss::IndexBinary *this, uint64_t a2, const unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  std::vector<int>::vector[abi:ne200100](__p, a5 * a2);
  (*(*this + 40))(this, a2, a3, a5, __p[0], a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9C5B234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::IndexBinary::add_with_ids(faiss::IndexBinary *this, uint64_t a2, const unsigned __int8 *a3, const uint64_t *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "add_with_ids not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::IndexBinary::add_with_ids(idx_t, const uint8_t *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexBinary.cpp", 36);
}

void sub_1D9C5B2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexBinary::remove_ids()
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v1, "remove_ids not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v1, "virtual size_t faiss::IndexBinary::remove_ids(const IDSelector &)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexBinary.cpp", 40);
}

void sub_1D9C5B388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexBinary::reconstruct(faiss::IndexBinary *this, uint64_t a2, unsigned __int8 *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v4, "reconstruct not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v4, "virtual void faiss::IndexBinary::reconstruct(idx_t, uint8_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexBinary.cpp", 45);
}

void sub_1D9C5B440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

int *faiss::IndexBinary::reconstruct_n(int *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (a3 >= 1)
  {
    v7 = this;
    for (i = 0; i != a3; ++i)
    {
      this = (*(*v7 + 72))(v7, a2 + i, &a4[i * v7[2]]);
    }
  }

  return this;
}

void *faiss::IndexBinary::search_and_reconstruct(faiss::IndexBinary *this, uint64_t a2, const unsigned __int8 *a3, uint64_t a4, int *a5, uint64_t *a6, unsigned __int8 *a7)
{
  if (a4 <= 0)
  {
    memset(&v21, 0, sizeof(v21));
    v17 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v21, v17 + 1, 0);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v21;
    }

    else
    {
      v18 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    snprintf(v18, size, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v21, "virtual void faiss::IndexBinary::search_and_reconstruct(idx_t, const uint8_t *, idx_t, int32_t *, idx_t *, uint8_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexBinary.cpp", 61);
  }

  result = (*(*this + 40))(this, a2, a3);
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v13;
      v16 = a4;
      do
      {
        if (a6[v15] < 0)
        {
          result = memset(&a7[v15 * *(this + 2)], 255, *(this + 2));
        }

        else
        {
          result = (*(*this + 72))(this);
        }

        ++v15;
        --v16;
      }

      while (v16);
      ++v14;
      v13 += a4;
    }

    while (v14 != a2);
  }

  return result;
}

void sub_1D9C5B6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexBinary::display(faiss::IndexBinary *this)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  return printf("Index: %s  -> %lld elements\n", (*(*(*this - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL), *(this + 2));
}

faiss::IndexIVFPQR *faiss::IndexIVFPQR::IndexIVFPQR(faiss::IndexIVFPQR *this)
{
  v2 = faiss::IndexIVFPQ::IndexIVFPQ(this);
  *v2 = &unk_1F5538790;
  faiss::ProductQuantizer::ProductQuantizer((v2 + 448));
  *(this + 77) = 0;
  *(this + 600) = 0u;
  *(this + 156) = 1065353216;
  *(this + 232) = 1;
  return this;
}

uint64_t faiss::IndexIVFPQR::reset(faiss::IndexIVFPQR *this)
{
  result = faiss::IndexIVF::reset(this);
  *(this + 76) = *(this + 75);
  return result;
}

void faiss::IndexIVFPQR::reconstruct_from_offset(faiss::IndexIVFPQR *this, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = a4;
  faiss::IndexIVFPQ::reconstruct_from_offset(this, a2, a3, a4);
  v8 = (*(**(this + 14) + 40))(*(this + 14), a2, a3);
  if (v8 < 0 || (v9 = v8, v8 >= *(this + 2)))
  {
    faiss::IndexIVFPQR::reconstruct_from_offset();
  }

  std::vector<float>::vector[abi:ne200100](__p, *(this + 2));
  faiss::ProductQuantizer::decode(this + 112, *(this + 75) + *(this + 60) * v9, __p[0]);
  v10 = *(this + 2);
  v11 = __p[0];
  if (v10 < 1)
  {
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v12 = __p[0];
    do
    {
      v13 = *v12++;
      *v4 = v13 + *v4;
      ++v4;
      --v10;
    }

    while (v10);
  }

  __p[1] = v11;
  operator delete(v11);
}

void sub_1D9C5C384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *faiss::IndexIVFPQR::merge_from(faiss::IndexIVFPQR *this, faiss::IndexIVF *lpsrc, uint64_t a3)
{
  if (!v6)
  {
    memset(&v13, 0, sizeof(v13));
    v9 = snprintf(0, 0, "Error: '%s' failed", "other");
    std::string::resize(&v13, v9 + 1, 0);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    snprintf(v10, size, "Error: '%s' failed", "other");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v13, "virtual void faiss::IndexIVFPQR::merge_from(IndexIVF &, idx_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQR.cpp", 206);
  }

  v7 = v6;
  faiss::IndexIVF::merge_from(this, lpsrc, a3);
  result = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(this + 600, *(this + 76), v7[75], v7[76], v7[76] - v7[75]);
  v7[76] = v7[75];
  return result;
}

void sub_1D9C5C504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVFPQR::remove_ids()
{
  exception = __cxa_allocate_exception(0x20uLL);
  v1[23] = 15;
  strcpy(v1, "not implemented");
  faiss::FaissException::FaissException(exception, v1, "virtual size_t faiss::IndexIVFPQR::remove_ids(const IDSelector &)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQR.cpp", 218);
}

void sub_1D9C5C5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexIVFPQR::~IndexIVFPQR(faiss::IndexIVFPQR *this)
{
  faiss::IndexIVFPQR::~IndexIVFPQR(this);

  JUMPOUT(0x1DA73F410);
}

{
  *this = &unk_1F5538790;
  v2 = *(this + 75);
  if (v2)
  {
    *(this + 76) = v2;
    operator delete(v2);
  }

  v3 = *(this + 72);
  if (v3)
  {
    *(this + 73) = v3;
    operator delete(v3);
  }

  v4 = *(this + 69);
  if (v4)
  {
    *(this + 70) = v4;
    operator delete(v4);
  }

  *this = &unk_1F5538268;
  free(*(this + 53));
  v5 = *(this + 46);
  if (v5)
  {
    *(this + 47) = v5;
    operator delete(v5);
  }

  v6 = *(this + 43);
  if (v6)
  {
    *(this + 44) = v6;
    operator delete(v6);
  }

  faiss::IndexIVF::~IndexIVF(this);
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

uint64_t faiss::IndexFlat::IndexFlat(uint64_t result, int a2, int a3)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = a3;
  *(result + 32) = 0;
  *result = &unk_1F5538898;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  return result;
}

{
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = a3;
  *(result + 32) = 0;
  *result = &unk_1F5538898;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  return result;
}

char *faiss::IndexFlat::add(faiss::IndexFlat *this, uint64_t a2, float *a3)
{
  result = std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(this + 5, *(this + 6), a3, &a3[*(this + 2) * a2], *(this + 2) * a2);
  *(this + 2) += a2;
  return result;
}

void *faiss::IndexFlat::reset(void *this)
{
  this[6] = this[5];
  this[2] = 0;
  return this;
}

void faiss::IndexFlat::search(faiss::IndexFlat *this, unint64_t a2, const float *a3, int64_t a4, float *a5, uint64_t *a6)
{
  if (a4 <= 0)
  {
    memset(&v12, 0, sizeof(v12));
    v8 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v12, v8 + 1, 0);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    snprintf(v9, size, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v12, "virtual void faiss::IndexFlat::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexFlat.cpp", 40);
  }

  v7 = *(this + 7);
  if (v7 == 1)
  {
    v12.__r_.__value_.__r.__words[0] = a2;
    v12.__r_.__value_.__l.__size_ = a4;
    v12.__r_.__value_.__r.__words[2] = a6;
    v13 = a5;
    faiss::knn_L2sqr(a3, *(this + 5), *(this + 2), a2, *(this + 2), &v12);
  }

  else
  {
    v12.__r_.__value_.__r.__words[0] = a2;
    v12.__r_.__value_.__l.__size_ = a4;
    v12.__r_.__value_.__r.__words[2] = a6;
    v13 = a5;
    if (v7)
    {
      faiss::knn_extra_metrics(a3, *(this + 5), *(this + 2), a2, *(this + 2), v7, &v12, *(this + 8));
    }

    else
    {
      faiss::knn_inner_product(a3, *(this + 5), *(this + 2), a2, *(this + 2), &v12);
    }
  }
}

void sub_1D9C5CB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexFlat::range_search(faiss::IndexFlat *this, unint64_t a2, faiss *a3, float a4, faiss::RangeSearchResult *a5, uint64_t a6, uint64_t a7, faiss::RangeSearchResult *a8)
{
  v10 = *(this + 7);
  if (v10 == 1)
  {
    v15 = *(this + 5);
    v16 = *(this + 2);
    v17 = *(this + 2);

    return faiss::range_search_L2sqr(a3, v15, v16, a2, v17, a5, a4, a8);
  }

  else
  {
    if (v10)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v19, "metric type not supported");
      faiss::FaissException::FaissException(exception, v19, "virtual void faiss::IndexFlat::range_search(idx_t, const float *, float, RangeSearchResult *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexFlat.cpp", 71);
    }

    v11 = *(this + 5);
    v12 = *(this + 2);
    v13 = *(this + 2);

    return faiss::range_search_inner_product(a3, v11, v12, a2, v13, a5, a4, a8);
  }
}

void sub_1D9C5CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexFlat::compute_distance_subset(faiss::IndexFlat *this, uint64_t a2, float *a3, uint64_t a4, faiss *a5, const float *a6)
{
  v6 = *(this + 7);
  if (v6 == 1)
  {
    v9 = *(this + 5);
    v10 = *(this + 2);

    faiss::fvec_L2sqr_by_idx(a5, a3, v9, a6, v10, a2, a4);
  }

  else
  {
    if (v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v12, "metric type not supported");
      faiss::FaissException::FaissException(exception, v12, "void faiss::IndexFlat::compute_distance_subset(idx_t, const float *, idx_t, float *, const idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexFlat.cpp", 90);
    }

    v7 = *(this + 5);
    v8 = *(this + 2);

    faiss::fvec_inner_products_by_idx(a5, a3, v7, a6, v8, a2, a4);
  }
}

void sub_1D9C5CE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t faiss::IndexFlat::remove_ids(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    for (i = 0; i < v3; ++i)
    {
      if (((**a2)(a2, i) & 1) == 0)
      {
        if (i > v5)
        {
          memmove((*(a1 + 40) + 4 * v5 * *(a1 + 8)), (*(a1 + 40) + 4 * i * *(a1 + 8)), 4 * *(a1 + 8));
        }

        ++v5;
      }

      v3 = *(a1 + 16);
    }
  }

  v7 = v3 - v5;
  if (v3 != v5)
  {
    *(a1 + 16) = v5;
    std::vector<float>::resize((a1 + 40), v5 * *(a1 + 8));
  }

  return v7;
}

void faiss::IndexFlat::get_distance_computer(faiss::IndexFlat *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    if (v1 == 1)
    {
      operator new();
    }

    v2 = *(this + 2);

    faiss::get_extra_distance_computer(v2, v1);
  }

  operator new();
}

uint64_t faiss::IndexFlat1D::IndexFlat1D(uint64_t this, char a2)
{
  *(this + 8) = 1;
  *(this + 16) = 0;
  *(this + 24) = 256;
  *(this + 28) = 1;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 40) = 0;
  *this = &unk_1F5538940;
  *(this + 64) = a2;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  return this;
}

{
  *(this + 8) = 1;
  *(this + 16) = 0;
  *(this + 24) = 256;
  *(this + 28) = 1;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 40) = 0;
  *this = &unk_1F5538940;
  *(this + 64) = a2;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  return this;
}

uint64_t faiss::IndexFlat1D::update_permutation(faiss::IndexFlat1D *this)
{
  std::vector<long long>::resize(this + 9, *(this + 2));
  v3 = *(this + 2);
  v4 = *(this + 5);
  v5 = *(this + 9);
  if (v3 > 999999)
  {

    faiss::fvec_argsort_parallel(v3, v4, v5, v2);
  }

  return faiss::fvec_argsort(v3, v4, v5, v2);
}

char *faiss::IndexFlat1D::add(faiss::IndexFlat1D *this, uint64_t a2, float *a3)
{
  result = std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(this + 5, *(this + 6), a3, &a3[*(this + 2) * a2], *(this + 2) * a2);
  *(this + 2) += a2;
  if (*(this + 64) == 1)
  {

    return faiss::IndexFlat1D::update_permutation(this);
  }

  return result;
}

void *faiss::IndexFlat1D::reset(void *this)
{
  this[6] = this[5];
  this[2] = 0;
  this[10] = this[9];
  return this;
}

void *faiss::IndexFlat1D::search(void *this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6)
{
  if (a4 <= 0)
  {
    memset(&v32, 0, sizeof(v32));
    v24 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v32, v24 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v32;
    }

    else
    {
      v25 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v25, size, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v32, "virtual void faiss::IndexFlat1D::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexFlat.cpp", 237);
  }

  v6 = this[9];
  if (this[2] != (this[10] - v6) >> 3)
  {
    memset(&v32, 0, sizeof(v32));
    v28 = snprintf(0, 0, "Error: '%s' failed: Call update_permutation before search", "perm.size() == ntotal");
    std::string::resize(&v32, v28 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v32;
    }

    else
    {
      v29 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v29, v30, "Error: '%s' failed: Call update_permutation before search", "perm.size() == ntotal");
    v31 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v31, &v32, "virtual void faiss::IndexFlat1D::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexFlat.cpp", 240);
  }

  if (a2 >= 1)
  {
    v7 = 0;
    v8 = this[5];
    do
    {
      v9 = a3[v7];
      if (*(v8 + 4 * *v6) <= v9)
      {
        v10 = this[2];
        v14 = v10 - 1;
        if (*(v8 + 4 * v6[v10 - 1]) > v9)
        {
          if (v10 < 2)
          {
            v14 = 0;
          }

          else
          {
            v14 = 0;
            do
            {
              if (*(v8 + 4 * v6[(v10 + v14) >> 1]) > v9)
              {
                v10 = (v10 + v14) >> 1;
              }

              else
              {
                v14 = (v10 + v14) >> 1;
              }
            }

            while (v14 + 1 < v10);
          }

          v16 = 0;
          while (1)
          {
            v17 = v6[v14];
            v18 = v6[v10];
            v19 = v9 - *(v8 + 4 * v17);
            v20 = *(v8 + 4 * v18) - v9;
            if (v19 >= v20)
            {
              a5[v16] = v20;
              a6[v16] = v18;
              if (++v10 >= this[2])
              {
                v15 = v16 + 1;
                goto LABEL_32;
              }
            }

            else
            {
              a5[v16] = v19;
              a6[v16] = v17;
              if (v14-- < 1)
              {
                v11 = v16 + 1;
                goto LABEL_7;
              }
            }

            if (++v16 >= a4)
            {
              goto LABEL_37;
            }
          }
        }

        v15 = 0;
LABEL_32:
        if (v15 < a4)
        {
          do
          {
            if (v14 < 0)
            {
              v22 = -1;
              v23 = INFINITY;
            }

            else
            {
              v22 = v6[v14];
              v23 = v9 - *(v8 + 4 * v22);
              --v14;
            }

            a5[v15] = v23;
            a6[v15++] = v22;
          }

          while (a4 != v15);
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
LABEL_7:
        if (v11 < a4)
        {
          do
          {
            if (v10 >= this[2])
            {
              v12 = -1;
              v13 = INFINITY;
            }

            else
            {
              v12 = v6[v10];
              v13 = *(v8 + 4 * v12) - v9;
              ++v10;
            }

            a5[v11] = v13;
            a6[v11++] = v12;
          }

          while (a4 != v11);
        }
      }

LABEL_37:
      ++v7;
      a6 += a4;
      a5 += a4;
    }

    while (v7 != a2);
  }

  return this;
}

void sub_1D9C5D548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexFlat::~IndexFlat(faiss::IndexFlat *this)
{
  *this = &unk_1F5538898;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  faiss::Index::~Index(this);
}

{
  *this = &unk_1F5538898;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  faiss::Index::~Index(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::IndexFlat1D::~IndexFlat1D(faiss::IndexFlat1D *this)
{
  *this = &unk_1F5538940;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5538898;
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  faiss::Index::~Index(this);
}

{
  *this = &unk_1F5538940;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5538898;
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  faiss::Index::~Index(this);

  JUMPOUT(0x1DA73F410);
}

float faiss::anonymous namespace::FlatL2Dis::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  ++*(a1 + 40);
  return faiss::fvec_L2sqr(*(a1 + 24), (v2 + 4 * *(a1 + 8) * a2), *(a1 + 8));
}

float faiss::anonymous namespace::FlatIPDis::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  ++*(a1 + 40);
  return faiss::fvec_inner_product(*(a1 + 24), (v2 + 4 * *(a1 + 8) * a2), *(a1 + 8));
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t faiss::read_VectorTransform(faiss *this, faiss::IOReader *a2)
{
  v147 = 0;
  v3 = (**this)(this, &v147, 4, 1);
  if (v3 != 1)
  {
    v28 = v3;
    memset(&v146, 0, sizeof(v146));
    v29 = this + 8;
    v30 = this + 8;
    if (*(this + 31) < 0)
    {
      v30 = *v29;
    }

    v31 = __error();
    v32 = strerror(*v31);
    v33 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v30, v28, 1uLL, v32);
    v34 = &v146;
    std::string::resize(&v146, v33 + 1, 0);
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v146.__r_.__value_.__l.__size_;
      v34 = v146.__r_.__value_.__r.__words[0];
    }

    if (*(this + 31) < 0)
    {
      v29 = *v29;
    }

    v36 = __error();
    v37 = strerror(*v36);
    snprintf(v34, size, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v29, v28, 1uLL, v37);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 77);
  }

  v5 = v147;
  if (v5 == faiss::fourcc("rrot", v4) || (v7 = v147, v7 == faiss::fourcc("PCAm", v6)) || (v8 = v147, v8 == faiss::fourcc("LTra", v6)) || (v9 = v147, v9 == faiss::fourcc("PcAm", v6)) || (v10 = v147, v10 == faiss::fourcc("Viqm", v6)))
  {
    v11 = v147;
    if (v11 == faiss::fourcc("rrot", v6))
    {
      operator new();
    }

    v13 = v147;
    if (v13 == faiss::fourcc("PCAm", v12) || (v15 = v147, v15 == faiss::fourcc("PcAm", v14)))
    {
      operator new();
    }

    v17 = (**this)(this, 17, 1, 1, v16);
    if (v17 != 1)
    {
      v72 = v17;
      memset(&v146, 0, sizeof(v146));
      v73 = this + 8;
      v74 = this + 8;
      if (*(this + 31) < 0)
      {
        v74 = *v73;
      }

      v75 = __error();
      v76 = strerror(*v75);
      v77 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v74, v72, 1uLL, v76);
      v78 = &v146;
      std::string::resize(&v146, v77 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v79 = v146.__r_.__value_.__l.__size_;
        v78 = v146.__r_.__value_.__r.__words[0];
      }

      if (*(this + 31) < 0)
      {
        v73 = *v73;
      }

      v80 = __error();
      v81 = strerror(*v80);
      snprintf(v78, v79, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v73, v72, 1uLL, v81);
      v82 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v82, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 97);
    }

    __sz = 0;
    v18 = (**this)(this, &__sz, 8, 1);
    if (v18 != 1)
    {
      v83 = v18;
      memset(&v146, 0, sizeof(v146));
      v84 = this + 8;
      v85 = this + 8;
      if (*(this + 31) < 0)
      {
        v85 = *v84;
      }

      v86 = __error();
      v87 = strerror(*v86);
      v88 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v85, v83, 1uLL, v87);
      v89 = &v146;
      std::string::resize(&v146, v88 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v146.__r_.__value_.__l.__size_;
        v89 = v146.__r_.__value_.__r.__words[0];
      }

      if (*(this + 31) < 0)
      {
        v84 = *v84;
      }

      v91 = __error();
      v92 = strerror(*v91);
      snprintf(v89, v90, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v84, v83, 1uLL, v92);
      v93 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v93, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 98);
    }

    if (__sz >> 40)
    {
      memset(&v146, 0, sizeof(v146));
      v94 = snprintf(0, 0, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
      std::string::resize(&v146, v94 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = &v146;
      }

      else
      {
        v95 = v146.__r_.__value_.__r.__words[0];
      }

      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v96 = v146.__r_.__value_.__l.__size_;
      }

      snprintf(v95, v96, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
      v97 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v97, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 98);
    }

    std::vector<float>::resize(0x18, __sz);
    v19 = (**this)(this, MEMORY[0x18], 4, __sz);
    v20 = __sz;
    if (v19 != __sz)
    {
      v98 = v19;
      memset(&v146, 0, sizeof(v146));
      v99 = this + 8;
      v100 = this + 8;
      if (*(this + 31) < 0)
      {
        v100 = *v99;
      }

      v101 = __error();
      v102 = strerror(*v101);
      v103 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v100, v98, v20, v102);
      v104 = &v146;
      std::string::resize(&v146, v103 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v105 = v146.__r_.__value_.__l.__size_;
        v104 = v146.__r_.__value_.__r.__words[0];
      }

      if (*(this + 31) < 0)
      {
        v99 = *v99;
      }

      v106 = __sz;
      v107 = __error();
      v108 = strerror(*v107);
      snprintf(v104, v105, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v99, v98, v106, v108);
      v109 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v109, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 98);
    }

    __sz = 0;
    v21 = (**this)(this, &__sz, 8, 1);
    if (v21 != 1)
    {
      v110 = v21;
      memset(&v146, 0, sizeof(v146));
      v111 = this + 8;
      v112 = this + 8;
      if (*(this + 31) < 0)
      {
        v112 = *v111;
      }

      v113 = __error();
      v114 = strerror(*v113);
      v115 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v112, v110, 1uLL, v114);
      v116 = &v146;
      std::string::resize(&v146, v115 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v117 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v117 = v146.__r_.__value_.__l.__size_;
        v116 = v146.__r_.__value_.__r.__words[0];
      }

      if (*(this + 31) < 0)
      {
        v111 = *v111;
      }

      v118 = __error();
      v119 = strerror(*v118);
      snprintf(v116, v117, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v111, v110, 1uLL, v119);
      v120 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v120, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 99);
    }

    if (__sz >> 40)
    {
      memset(&v146, 0, sizeof(v146));
      v121 = snprintf(0, 0, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
      std::string::resize(&v146, v121 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = &v146;
      }

      else
      {
        v122 = v146.__r_.__value_.__r.__words[0];
      }

      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v123 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v123 = v146.__r_.__value_.__l.__size_;
      }

      snprintf(v122, v123, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
      v124 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v124, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 99);
    }

    std::vector<float>::resize(0x30, __sz);
    v22 = (**this)(this, MEMORY[0x30], 4, __sz);
    v23 = __sz;
    if (v22 != __sz)
    {
      v125 = v22;
      memset(&v146, 0, sizeof(v146));
      v126 = this + 8;
      v127 = this + 8;
      if (*(this + 31) < 0)
      {
        v127 = *v126;
      }

      v128 = __error();
      v129 = strerror(*v128);
      v130 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v127, v125, v23, v129);
      v131 = &v146;
      std::string::resize(&v146, v130 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v132 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v132 = v146.__r_.__value_.__l.__size_;
        v131 = v146.__r_.__value_.__r.__words[0];
      }

      if (*(this + 31) < 0)
      {
        v126 = *v126;
      }

      v133 = __sz;
      v134 = __error();
      v135 = strerror(*v134);
      snprintf(v131, v132, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v126, v125, v133, v135);
      v136 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v136, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 99);
    }

    if (MEMORY[0xC] * MEMORY[8] > ((MEMORY[0x20] - MEMORY[0x18]) >> 2))
    {
      memset(&v146, 0, sizeof(v146));
      v137 = snprintf(0, 0, "Error: '%s' failed", "lt->A.size() >= lt->d_in * lt->d_out");
      std::string::resize(&v146, v137 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v138 = &v146;
      }

      else
      {
        v138 = v146.__r_.__value_.__r.__words[0];
      }

      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v139 = v146.__r_.__value_.__l.__size_;
      }

      snprintf(v138, v139, "Error: '%s' failed", "lt->A.size() >= lt->d_in * lt->d_out");
      v140 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v140, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 100);
    }

    if (MEMORY[0x11] == 1 && MEMORY[0xC] > ((MEMORY[0x38] - MEMORY[0x30]) >> 2))
    {
      memset(&v146, 0, sizeof(v146));
      v141 = snprintf(0, 0, "Error: '%s' failed", "!lt->have_bias || lt->b.size() >= lt->d_out");
      std::string::resize(&v146, v141 + 1, 0);
      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = &v146;
      }

      else
      {
        v142 = v146.__r_.__value_.__r.__words[0];
      }

      if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v143 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v143 = v146.__r_.__value_.__l.__size_;
      }

      snprintf(v142, v143, "Error: '%s' failed", "!lt->have_bias || lt->b.size() >= lt->d_out");
      v144 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v144, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 101);
    }

    faiss::LinearTransform::set_is_orthonormal(0);
  }

  v24 = (**this)(this, 8, 4, 1);
  if (v24 != 1)
  {
    v39 = v24;
    memset(&v146, 0, sizeof(v146));
    v40 = this + 8;
    v41 = this + 8;
    if (*(this + 31) < 0)
    {
      v41 = *v40;
    }

    v42 = __error();
    v43 = strerror(*v42);
    v44 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v41, v39, 1uLL, v43);
    v45 = &v146;
    std::string::resize(&v146, v44 + 1, 0);
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v146.__r_.__value_.__l.__size_;
      v45 = v146.__r_.__value_.__r.__words[0];
    }

    if (*(this + 31) < 0)
    {
      v40 = *v40;
    }

    v47 = __error();
    v48 = strerror(*v47);
    snprintf(v45, v46, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v40, v39, 1uLL, v48);
    v49 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v49, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 105);
  }

  v25 = (**this)(this, 12, 4, 1);
  if (v25 != 1)
  {
    v50 = v25;
    memset(&v146, 0, sizeof(v146));
    v51 = this + 8;
    v52 = this + 8;
    if (*(this + 31) < 0)
    {
      v52 = *v51;
    }

    v53 = __error();
    v54 = strerror(*v53);
    v55 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v52, v50, 1uLL, v54);
    v56 = &v146;
    std::string::resize(&v146, v55 + 1, 0);
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v146.__r_.__value_.__l.__size_;
      v56 = v146.__r_.__value_.__r.__words[0];
    }

    if (*(this + 31) < 0)
    {
      v51 = *v51;
    }

    v58 = __error();
    v59 = strerror(*v58);
    snprintf(v56, v57, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v51, v50, 1uLL, v59);
    v60 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v60, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 106);
  }

  v26 = (**this)(this, 16, 1, 1);
  if (v26 != 1)
  {
    v61 = v26;
    memset(&v146, 0, sizeof(v146));
    v62 = this + 8;
    v63 = this + 8;
    if (*(this + 31) < 0)
    {
      v63 = *v62;
    }

    v64 = __error();
    v65 = strerror(*v64);
    v66 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v63, v61, 1uLL, v65);
    v67 = &v146;
    std::string::resize(&v146, v66 + 1, 0);
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v146.__r_.__value_.__l.__size_;
      v67 = v146.__r_.__value_.__r.__words[0];
    }

    if (*(this + 31) < 0)
    {
      v62 = *v62;
    }

    v69 = __error();
    v70 = strerror(*v69);
    snprintf(v67, v68, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v62, v61, 1uLL, v70);
    v71 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v71, &v146, "VectorTransform *faiss::read_VectorTransform(IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 107);
  }

  return 0;
}

void sub_1D9C5EABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::read_InvertedLists(faiss *this, faiss::IOReader *a2)
{
  v2 = a2;
  v22 = 0;
  v4 = (**this)(this, &v22, 4, 1);
  if (v4 != 1)
  {
    v11 = v4;
    memset(&v23, 0, sizeof(v23));
    v12 = this + 8;
    v13 = this + 8;
    if (*(this + 31) < 0)
    {
      v13 = *v12;
    }

    v14 = __error();
    v15 = strerror(*v14);
    v16 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v13, v11, 1uLL, v15);
    v17 = &v23;
    std::string::resize(&v23, v16 + 1, 0);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
      v17 = v23.__r_.__value_.__r.__words[0];
    }

    if (*(this + 31) < 0)
    {
      v12 = *v12;
    }

    v19 = __error();
    v20 = strerror(*v19);
    snprintf(v17, size, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v12, v11, 1uLL, v20);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v23, "InvertedLists *faiss::read_InvertedLists(IOReader *, int)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 215);
  }

  v6 = v22;
  if (v6 == faiss::fourcc("il00", v5))
  {
    fwrite("read_InvertedLists: WARN! inverted lists not stored with IVF object\n", 0x44uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  else
  {
    v8 = v22;
    v9 = faiss::fourcc("ilar", v7);
    if ((v2 & 8) == 0 && v8 == v9)
    {
      operator new();
    }
  }

  return 0;
}

void sub_1D9C5FEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 96);
  if (v27)
  {
    *(v25 - 88) = v27;
    operator delete(v27);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1D9C600E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  faiss::ScopeDeleter1<faiss::ProductQuantizer>::~ScopeDeleter1(va);
  _Unwind_Resume(a1);
}

uint64_t faiss::read_ProductQuantizer(uint64_t a1, uint64_t a2)
{
  v4 = (**a2)(a2, a1, 8, 1);
  if (v4 != 1)
  {
    v10 = v4;
    memset(&v71, 0, sizeof(v71));
    v11 = (a2 + 8);
    v12 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v12 = *v11;
    }

    v13 = __error();
    v14 = strerror(*v13);
    v15 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v12, v10, 1uLL, v14);
    std::string::resize(&v71, v15 + 1, 0);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v71;
    }

    else
    {
      v16 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v71.__r_.__value_.__l.__size_;
    }

    if (*(a2 + 31) < 0)
    {
      v11 = *v11;
    }

    v18 = __error();
    v19 = strerror(*v18);
    snprintf(v16, size, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v11, v10, 1uLL, v19);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v71, "void faiss::read_ProductQuantizer(ProductQuantizer *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 276);
  }

  v5 = (**a2)(a2, a1 + 8, 8, 1);
  if (v5 != 1)
  {
    v21 = v5;
    memset(&v71, 0, sizeof(v71));
    v22 = (a2 + 8);
    v23 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v23 = *v22;
    }

    v24 = __error();
    v25 = strerror(*v24);
    v26 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v23, v21, 1uLL, v25);
    v27 = &v71;
    std::string::resize(&v71, v26 + 1, 0);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v71.__r_.__value_.__l.__size_;
      v27 = v71.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v22 = *v22;
    }

    v29 = __error();
    v30 = strerror(*v29);
    snprintf(v27, v28, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v22, v21, 1uLL, v30);
    v31 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v31, &v71, "void faiss::read_ProductQuantizer(ProductQuantizer *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 277);
  }

  v6 = (**a2)(a2, a1 + 16, 8, 1);
  if (v6 != 1)
  {
    v32 = v6;
    memset(&v71, 0, sizeof(v71));
    v33 = (a2 + 8);
    v34 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v34 = *v33;
    }

    v35 = __error();
    v36 = strerror(*v35);
    v37 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v34, v32, 1uLL, v36);
    v38 = &v71;
    std::string::resize(&v71, v37 + 1, 0);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v71.__r_.__value_.__l.__size_;
      v38 = v71.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v33 = *v33;
    }

    v40 = __error();
    v41 = strerror(*v40);
    snprintf(v38, v39, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v33, v32, 1uLL, v41);
    v42 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v42, &v71, "void faiss::read_ProductQuantizer(ProductQuantizer *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 278);
  }

  faiss::ProductQuantizer::set_derived_values(a1);
  __sz = 0;
  v7 = (**a2)(a2, &__sz, 8, 1);
  if (v7 != 1)
  {
    v43 = v7;
    memset(&v71, 0, sizeof(v71));
    v44 = (a2 + 8);
    v45 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v45 = *v44;
    }

    v46 = __error();
    v47 = strerror(*v46);
    v48 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v45, v43, 1uLL, v47);
    v49 = &v71;
    std::string::resize(&v71, v48 + 1, 0);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v71.__r_.__value_.__l.__size_;
      v49 = v71.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v44 = *v44;
    }

    v51 = __error();
    v52 = strerror(*v51);
    snprintf(v49, v50, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v44, v43, 1uLL, v52);
    v53 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v53, &v71, "void faiss::read_ProductQuantizer(ProductQuantizer *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 280);
  }

  if (__sz >> 40)
  {
    memset(&v71, 0, sizeof(v71));
    v54 = snprintf(0, 0, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
    std::string::resize(&v71, v54 + 1, 0);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v71;
    }

    else
    {
      v55 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v71.__r_.__value_.__l.__size_;
    }

    snprintf(v55, v56, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
    v57 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v57, &v71, "void faiss::read_ProductQuantizer(ProductQuantizer *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 280);
  }

  std::vector<float>::resize((a1 + 104), __sz);
  result = (**a2)(a2, *(a1 + 104), 4, __sz);
  v9 = __sz;
  if (result != __sz)
  {
    v58 = result;
    memset(&v71, 0, sizeof(v71));
    v59 = (a2 + 8);
    v60 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v60 = *v59;
    }

    v61 = __error();
    v62 = strerror(*v61);
    v63 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v60, v58, v9, v62);
    v64 = &v71;
    std::string::resize(&v71, v63 + 1, 0);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v71.__r_.__value_.__l.__size_;
      v64 = v71.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v59 = *v59;
    }

    v66 = __sz;
    v67 = __error();
    v68 = strerror(*v67);
    snprintf(v64, v65, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v59, v58, v66, v68);
    v69 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v69, &v71, "void faiss::read_ProductQuantizer(ProductQuantizer *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 280);
  }

  return result;
}

void sub_1D9C6089C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::read_index(faiss *this, faiss::IOReader *a2)
{
  v38 = 0;
  v3 = (**this)(this, &v38, 4, 1);
  if (v3 != 1)
  {
    v27 = v3;
    memset(&v39, 0, sizeof(v39));
    v28 = this + 8;
    v29 = this + 8;
    if (*(this + 31) < 0)
    {
      v29 = *v28;
    }

    v30 = __error();
    v31 = strerror(*v30);
    v32 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v29, v27, 1uLL, v31);
    v33 = &v39;
    std::string::resize(&v39, v32 + 1, 0);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
      v33 = v39.__r_.__value_.__r.__words[0];
    }

    if (*(this + 31) < 0)
    {
      v28 = *v28;
    }

    v35 = __error();
    v36 = strerror(*v35);
    snprintf(v33, size, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v28, v27, 1uLL, v36);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v39, "Index *faiss::read_index(IOReader *, int)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 453);
  }

  v5 = v38;
  if (v5 == faiss::fourcc("IxFI", v4) || (v7 = v38, v7 == faiss::fourcc("IxF2", v6)) || (v8 = v38, v8 == faiss::fourcc("IxFl", v6)))
  {
    v9 = v38;
    if (v9 == faiss::fourcc("IxFI", v6))
    {
      operator new();
    }

    faiss::fourcc("IxF2", v10);
    operator new();
  }

  v12 = v38;
  if (v12 == faiss::fourcc("IvPQ", v6) || (v14 = v38, v14 == faiss::fourcc("IvQR", v13)) || (v15 = v38, v15 == faiss::fourcc("IwPQ", v13)) || (v16 = v38, v16 == faiss::fourcc("IwQR", v13)))
  {
    v17 = v38;
    if (faiss::fourcc("IvQR", v13) != v17)
    {
      faiss::fourcc("IvPQ", v18);
    }

    if (faiss::fourcc("IvQR", v18) == v17 || faiss::fourcc("IwQR", v19) == v17)
    {
      operator new();
    }

    operator new();
  }

  v20 = v38;
  if (v20 == faiss::fourcc("IxMp", v13) || (v22 = v38, v22 == faiss::fourcc("IxM2", v21)))
  {
    v23 = v38;
    if (v23 == faiss::fourcc("IxM2", v21))
    {
      operator new();
    }

    operator new();
  }

  v24 = v38;
  if (v24 == faiss::fourcc("Imiq", v21))
  {
    operator new();
  }

  v26 = v38;
  if (v26 == faiss::fourcc("IwFl", v25))
  {
    operator new();
  }

  return 0;
}

{
  faiss::FileIOReader::FileIOReader(v5, this);
  index = faiss::read_index(v5, a2);
  faiss::FileIOReader::~FileIOReader(v5);
  return index;
}

void sub_1D9C622F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::read_index_header(uint64_t a1, uint64_t a2)
{
  v4 = (**a2)(a2, a1 + 8, 4, 1);
  if (v4 != 1)
  {
    v10 = v4;
    memset(&v88, 0, sizeof(v88));
    v11 = (a2 + 8);
    v12 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v12 = *v11;
    }

    v13 = __error();
    v14 = strerror(*v13);
    v15 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v12, v10, 1uLL, v14);
    std::string::resize(&v88, v15 + 1, 0);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v88;
    }

    else
    {
      v16 = v88.__r_.__value_.__r.__words[0];
    }

    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v88.__r_.__value_.__l.__size_;
    }

    if (*(a2 + 31) < 0)
    {
      v11 = *v11;
    }

    v18 = __error();
    v19 = strerror(*v18);
    snprintf(v16, size, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v11, v10, 1uLL, v19);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 62);
  }

  v5 = (**a2)(a2, a1 + 16, 8, 1);
  if (v5 != 1)
  {
    v21 = v5;
    memset(&v88, 0, sizeof(v88));
    v22 = (a2 + 8);
    v23 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v23 = *v22;
    }

    v24 = __error();
    v25 = strerror(*v24);
    v26 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v23, v21, 1uLL, v25);
    v27 = &v88;
    std::string::resize(&v88, v26 + 1, 0);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v88.__r_.__value_.__l.__size_;
      v27 = v88.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v22 = *v22;
    }

    v29 = __error();
    v30 = strerror(*v29);
    snprintf(v27, v28, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v22, v21, 1uLL, v30);
    v31 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v31, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 63);
  }

  v87 = 0;
  v6 = (**a2)(a2, &v87, 8, 1);
  if (v6 != 1)
  {
    v32 = v6;
    memset(&v88, 0, sizeof(v88));
    v33 = (a2 + 8);
    v34 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v34 = *v33;
    }

    v35 = __error();
    v36 = strerror(*v35);
    v37 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v34, v32, 1uLL, v36);
    v38 = &v88;
    std::string::resize(&v88, v37 + 1, 0);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v88.__r_.__value_.__l.__size_;
      v38 = v88.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v33 = *v33;
    }

    v40 = __error();
    v41 = strerror(*v40);
    snprintf(v38, v39, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v33, v32, 1uLL, v41);
    v42 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v42, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 65);
  }

  v7 = (**a2)(a2, &v87, 8, 1);
  if (v7 != 1)
  {
    v43 = v7;
    memset(&v88, 0, sizeof(v88));
    v44 = (a2 + 8);
    v45 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v45 = *v44;
    }

    v46 = __error();
    v47 = strerror(*v46);
    v48 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v45, v43, 1uLL, v47);
    v49 = &v88;
    std::string::resize(&v88, v48 + 1, 0);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v88.__r_.__value_.__l.__size_;
      v49 = v88.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v44 = *v44;
    }

    v51 = __error();
    v52 = strerror(*v51);
    snprintf(v49, v50, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v44, v43, 1uLL, v52);
    v53 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v53, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 66);
  }

  v8 = (**a2)(a2, a1 + 25, 1, 1);
  if (v8 != 1)
  {
    v54 = v8;
    memset(&v88, 0, sizeof(v88));
    v55 = (a2 + 8);
    v56 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v56 = *v55;
    }

    v57 = __error();
    v58 = strerror(*v57);
    v59 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v56, v54, 1uLL, v58);
    v60 = &v88;
    std::string::resize(&v88, v59 + 1, 0);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v88.__r_.__value_.__l.__size_;
      v60 = v88.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v55 = *v55;
    }

    v62 = __error();
    v63 = strerror(*v62);
    snprintf(v60, v61, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v55, v54, 1uLL, v63);
    v64 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v64, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 67);
  }

  result = (**a2)(a2, a1 + 28, 4, 1);
  if (result != 1)
  {
    v65 = result;
    memset(&v88, 0, sizeof(v88));
    v66 = (a2 + 8);
    v67 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v67 = *v66;
    }

    v68 = __error();
    v69 = strerror(*v68);
    v70 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v67, v65, 1uLL, v69);
    v71 = &v88;
    std::string::resize(&v88, v70 + 1, 0);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v88.__r_.__value_.__l.__size_;
      v71 = v88.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      v66 = *v66;
    }

    v73 = __error();
    v74 = strerror(*v73);
    snprintf(v71, v72, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v66, v65, 1uLL, v74);
    v75 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v75, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 68);
  }

  if (*(a1 + 28) >= 2)
  {
    result = (**a2)(a2, a1 + 32, 4, 1);
    if (result != 1)
    {
      v76 = result;
      memset(&v88, 0, sizeof(v88));
      v77 = (a2 + 8);
      v78 = (a2 + 8);
      if (*(a2 + 31) < 0)
      {
        v78 = *v77;
      }

      v79 = __error();
      v80 = strerror(*v79);
      v81 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v78, v76, 1uLL, v80);
      v82 = &v88;
      std::string::resize(&v88, v81 + 1, 0);
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v83 = v88.__r_.__value_.__l.__size_;
        v82 = v88.__r_.__value_.__r.__words[0];
      }

      if (*(a2 + 31) < 0)
      {
        v77 = *v77;
      }

      v84 = __error();
      v85 = strerror(*v84);
      snprintf(v82, v83, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v77, v76, 1uLL, v85);
      v86 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v86, &v88, "void faiss::read_index_header(Index *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 70);
    }
  }

  *(a1 + 24) = 0;
  return result;
}

void sub_1D9C62DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::read_ivf_header(uint64_t a1, char *a2, void *a3)
{
  faiss::read_index_header(a1, a2);
  v6 = (**a2)(a2, a1 + 48, 8, 1);
  if (v6 != 1)
  {
    v51 = v6;
    memset(&v137, 0, sizeof(v137));
    v52 = a2 + 8;
    v53 = a2 + 8;
    if (a2[31] < 0)
    {
      v53 = *v52;
    }

    v54 = __error();
    v55 = strerror(*v54);
    v56 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v53, v51, 1uLL, v55);
    v57 = &v137;
    std::string::resize(&v137, v56 + 1, 0);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v137.__r_.__value_.__l.__size_;
      v57 = v137.__r_.__value_.__r.__words[0];
    }

    if (a2[31] < 0)
    {
      v52 = *v52;
    }

    v59 = __error();
    v60 = strerror(*v59);
    snprintf(v57, size, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v52, v51, 1uLL, v60);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v137, "void faiss::read_ivf_header(IndexIVF *, IOReader *, std::vector<std::vector<Index::idx_t>> *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 390);
  }

  v7 = (**a2)(a2, a1 + 136, 8, 1);
  if (v7 != 1)
  {
    v62 = v7;
    memset(&v137, 0, sizeof(v137));
    v63 = a2 + 8;
    v64 = a2 + 8;
    if (a2[31] < 0)
    {
      v64 = *v63;
    }

    v65 = __error();
    v66 = strerror(*v65);
    v67 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v64, v62, 1uLL, v66);
    v68 = &v137;
    std::string::resize(&v137, v67 + 1, 0);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v137.__r_.__value_.__l.__size_;
      v68 = v137.__r_.__value_.__r.__words[0];
    }

    if (a2[31] < 0)
    {
      v63 = *v63;
    }

    v70 = __error();
    v71 = strerror(*v70);
    snprintf(v68, v69, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v63, v62, 1uLL, v71);
    v72 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v72, &v137, "void faiss::read_ivf_header(IndexIVF *, IOReader *, std::vector<std::vector<Index::idx_t>> *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 391);
  }

  *(a1 + 40) = faiss::read_index(a2, 0, v8);
  *(a1 + 57) = 1;
  if (a3)
  {
    std::vector<std::vector<long long>>::resize(a3, *(a1 + 48));
    if (*(a1 + 48))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v136.__r_.__value_.__r.__words[0] = 0;
        v11 = (**a2)(a2, &v136, 8, 1);
        if (v11 != 1)
        {
          v40 = v11;
          memset(&v137, 0, sizeof(v137));
          v41 = a2 + 8;
          v42 = a2 + 8;
          if (a2[31] < 0)
          {
            v42 = *v41;
          }

          v43 = __error();
          v44 = strerror(*v43);
          v45 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v42, v40, 1uLL, v44);
          v46 = &v137;
          std::string::resize(&v137, v45 + 1, 0);
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v47 = v137.__r_.__value_.__l.__size_;
            v46 = v137.__r_.__value_.__r.__words[0];
          }

          if (a2[31] < 0)
          {
            v41 = *v41;
          }

          v48 = __error();
          v49 = strerror(*v48);
          snprintf(v46, v47, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v41, v40, 1uLL, v49);
          v50 = __cxa_allocate_exception(0x20uLL);
          faiss::FaissException::FaissException(v50, &v137, "void faiss::read_ivf_header(IndexIVF *, IOReader *, std::vector<std::vector<Index::idx_t>> *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 397);
        }

        if (v136.__r_.__value_.__r.__words[0] >> 40)
        {
          memset(&v137, 0, sizeof(v137));
          v36 = snprintf(0, 0, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
          std::string::resize(&v137, v36 + 1, 0);
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v137;
          }

          else
          {
            v37 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v38 = v137.__r_.__value_.__l.__size_;
          }

          snprintf(v37, v38, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
          v39 = __cxa_allocate_exception(0x20uLL);
          faiss::FaissException::FaissException(v39, &v137, "void faiss::read_ivf_header(IndexIVF *, IOReader *, std::vector<std::vector<Index::idx_t>> *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 397);
        }

        std::vector<long long>::resize((*a3 + v9), v136.__r_.__value_.__r.__words[0]);
        v12 = (**a2)(a2, *(*a3 + v9), 8, v136.__r_.__value_.__r.__words[0]);
        v13 = v136.__r_.__value_.__r.__words[0];
        if (v12 != v136.__r_.__value_.__r.__words[0])
        {
          v24 = v12;
          memset(&v137, 0, sizeof(v137));
          v25 = a2 + 8;
          v26 = a2 + 8;
          if (a2[31] < 0)
          {
            v26 = *v25;
          }

          v27 = __error();
          v28 = strerror(*v27);
          v29 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v26, v24, v13, v28);
          v30 = &v137;
          std::string::resize(&v137, v29 + 1, 0);
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v137.__r_.__value_.__l.__size_;
            v30 = v137.__r_.__value_.__r.__words[0];
          }

          if (a2[31] < 0)
          {
            v25 = *v25;
          }

          v32 = v136.__r_.__value_.__r.__words[0];
          v33 = __error();
          v34 = strerror(*v33);
          snprintf(v30, v31, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v25, v24, v32, v34);
          v35 = __cxa_allocate_exception(0x20uLL);
          faiss::FaissException::FaissException(v35, &v137, "void faiss::read_ivf_header(IndexIVF *, IOReader *, std::vector<std::vector<Index::idx_t>> *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 397);
        }

        ++v10;
        v9 += 24;
      }

      while (v10 < *(a1 + 48));
    }
  }

  v138 = 0;
  v14 = (**a2)(a2, &v138, 1, 1);
  if (v14 != 1)
  {
    v73 = v14;
    memset(&v137, 0, sizeof(v137));
    v74 = a2 + 8;
    v75 = a2 + 8;
    if (a2[31] < 0)
    {
      v75 = *v74;
    }

    v76 = __error();
    v77 = strerror(*v76);
    v78 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v75, v73, 1uLL, v77);
    v79 = &v137;
    std::string::resize(&v137, v78 + 1, 0);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v137.__r_.__value_.__l.__size_;
      v79 = v137.__r_.__value_.__r.__words[0];
    }

    if (a2[31] < 0)
    {
      v74 = *v74;
    }

    v81 = __error();
    v82 = strerror(*v81);
    snprintf(v79, v80, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v74, v73, 1uLL, v82);
    v83 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v83, &v137, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 370);
  }

  *(a1 + 160) = v138;
  v136.__r_.__value_.__r.__words[0] = 0;
  v15 = (**a2)(a2, &v136, 8, 1);
  if (v15 != 1)
  {
    v84 = v15;
    memset(&v137, 0, sizeof(v137));
    v85 = a2 + 8;
    v86 = a2 + 8;
    if (a2[31] < 0)
    {
      v86 = *v85;
    }

    v87 = __error();
    v88 = strerror(*v87);
    v89 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v86, v84, 1uLL, v88);
    v90 = &v137;
    std::string::resize(&v137, v89 + 1, 0);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v137.__r_.__value_.__l.__size_;
      v90 = v137.__r_.__value_.__r.__words[0];
    }

    if (a2[31] < 0)
    {
      v85 = *v85;
    }

    v92 = __error();
    v93 = strerror(*v92);
    snprintf(v90, v91, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v85, v84, 1uLL, v93);
    v94 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v94, &v137, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 372);
  }

  if (v136.__r_.__value_.__r.__words[0] >> 40)
  {
    memset(&v137, 0, sizeof(v137));
    v95 = snprintf(0, 0, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
    std::string::resize(&v137, v95 + 1, 0);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = &v137;
    }

    else
    {
      v96 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v97 = v137.__r_.__value_.__l.__size_;
    }

    snprintf(v96, v97, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
    v98 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v98, &v137, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 372);
  }

  std::vector<long long>::resize((a1 + 168), v136.__r_.__value_.__r.__words[0]);
  v16 = (**a2)(a2, *(a1 + 168), 8, v136.__r_.__value_.__r.__words[0]);
  v17 = v136.__r_.__value_.__r.__words[0];
  if (v16 != v136.__r_.__value_.__r.__words[0])
  {
    v99 = v16;
    memset(&v137, 0, sizeof(v137));
    v100 = a2 + 8;
    v101 = a2 + 8;
    if (a2[31] < 0)
    {
      v101 = *v100;
    }

    v102 = __error();
    v103 = strerror(*v102);
    v104 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v101, v99, v17, v103);
    v105 = &v137;
    std::string::resize(&v137, v104 + 1, 0);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v106 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v106 = v137.__r_.__value_.__l.__size_;
      v105 = v137.__r_.__value_.__r.__words[0];
    }

    if (a2[31] < 0)
    {
      v100 = *v100;
    }

    v107 = v136.__r_.__value_.__r.__words[0];
    v108 = __error();
    v109 = strerror(*v108);
    snprintf(v105, v106, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v100, v99, v107, v109);
    v110 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v110, &v137, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 372);
  }

  if (*(a1 + 160) == 2)
  {
    memset(&v137, 0, sizeof(v137));
    v139 = 0;
    v18 = (**a2)(a2, &v139, 8, 1);
    if (v18 != 1)
    {
      memset(&v136, 0, sizeof(v136));
      v111 = a2 + 8;
      v112 = a2 + 8;
      if (a2[31] < 0)
      {
        v112 = *v111;
      }

      v113 = __error();
      v114 = strerror(*v113);
      v115 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v112, v18, 1uLL, v114);
      v116 = &v136;
      std::string::resize(&v136, v115 + 1, 0);
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v117 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v117 = v136.__r_.__value_.__l.__size_;
        v116 = v136.__r_.__value_.__r.__words[0];
      }

      if (a2[31] < 0)
      {
        v111 = *v111;
      }

      v118 = __error();
      v119 = strerror(*v118);
      snprintf(v116, v117, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (1)", v111, v18, 1uLL, v119);
      v120 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v120, &v136, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 376);
    }

    if (v139 >> 40)
    {
      memset(&v136, 0, sizeof(v136));
      v121 = snprintf(0, 0, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
      std::string::resize(&v136, v121 + 1, 0);
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = &v136;
      }

      else
      {
        v122 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v123 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v123 = v136.__r_.__value_.__l.__size_;
      }

      snprintf(v122, v123, "Error: '%s' failed", "size >= 0 && size < (uint64_t{1} << 40)");
      v124 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v124, &v136, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 376);
    }

    std::vector<std::pair<long long,long long>>::resize(&v137, v139);
    v19 = (**a2)(a2, v137.__r_.__value_.__r.__words[0], 16, v139);
    v20 = v139;
    if (v19 != v139)
    {
      memset(&v136, 0, sizeof(v136));
      v125 = a2 + 8;
      v126 = a2 + 8;
      if (a2[31] < 0)
      {
        v126 = *v125;
      }

      v127 = __error();
      v128 = strerror(*v127);
      v129 = snprintf(0, 0, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v126, v19, v20, v128);
      v130 = &v136;
      std::string::resize(&v136, v129 + 1, 0);
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v131 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v131 = v136.__r_.__value_.__l.__size_;
        v130 = v136.__r_.__value_.__r.__words[0];
      }

      if (a2[31] < 0)
      {
        v125 = *v125;
      }

      v132 = v139;
      v133 = __error();
      v134 = strerror(*v133);
      snprintf(v130, v131, "Error: '%s' failed: read error in %s: %zd != %zd (%s)", "ret == (size)", v125, v19, v132, v134);
      v135 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v135, &v136, "void faiss::read_direct_map(DirectMap *, IOReader *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 376);
    }

    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1 + 192, vcvtps_u32_f32(((v137.__r_.__value_.__l.__size_ - v137.__r_.__value_.__r.__words[0]) >> 4) / *(a1 + 224)));
    v22 = v137.__r_.__value_.__l.__size_;
    v21 = v137.__r_.__value_.__r.__words[0];
    if (v137.__r_.__value_.__r.__words[0] != v137.__r_.__value_.__l.__size_)
    {
      do
      {
        *&v136.__r_.__value_.__l.__data_ = *v21;
        v23 = v136.__r_.__value_.__l.__size_;
        v139 = &v136;
        std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 192), &v136)[3] = v23;
        ++v21;
      }

      while (v21 != v22);
      v21 = v137.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      v137.__r_.__value_.__l.__size_ = v21;
      operator delete(v21);
    }
  }
}

void sub_1D9C63D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::read_InvertedLists(faiss *this, faiss::IndexIVF *a2, faiss::IOReader *a3)
{
  result = faiss::read_InvertedLists(a2, a3);
  if (result)
  {
    if (*(result + 8) != *(this + 6))
    {
      memset(&v14, 0, sizeof(v14));
      v6 = snprintf(0, 0, "Error: '%s' failed", "ils->nlist == ivf->nlist");
      std::string::resize(&v14, v6 + 1, 0);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v14;
      }

      else
      {
        v7 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      snprintf(v7, size, "Error: '%s' failed", "ils->nlist == ivf->nlist");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v14, "void faiss::read_InvertedLists(IndexIVF *, IOReader *, int)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 266);
    }

    v5 = *(result + 16);
    if (v5 != -1 && v5 != *(this + 16))
    {
      memset(&v14, 0, sizeof(v14));
      v10 = snprintf(0, 0, "Error: '%s' failed", "ils->code_size == InvertedLists::INVALID_CODE_SIZE || ils->code_size == ivf->code_size");
      std::string::resize(&v14, v10 + 1, 0);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v14;
      }

      else
      {
        v11 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = v14.__r_.__value_.__l.__size_;
      }

      snprintf(v11, v12, "Error: '%s' failed", "ils->code_size == InvertedLists::INVALID_CODE_SIZE || ils->code_size == ivf->code_size");
      v13 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v13, &v14, "void faiss::read_InvertedLists(IndexIVF *, IOReader *, int)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/index_read.cpp", 269);
    }
  }

  *(this + 14) = result;
  *(this + 120) = 1;
  return result;
}

void sub_1D9C64008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::read_index(__sFILE *this, __sFILE *a2)
{
  faiss::FileIOReader::FileIOReader(v5, this);
  index = faiss::read_index(v5, a2);
  faiss::FileIOReader::~FileIOReader(v5);
  return index;
}

uint64_t faiss::read_VectorTransform(faiss *this, const char *a2)
{
  faiss::FileIOReader::FileIOReader(v5, this);
  VectorTransform = faiss::read_VectorTransform(v5, v2);
  faiss::FileIOReader::~FileIOReader(v5);
  return VectorTransform;
}

faiss::MultiIndexQuantizer *faiss::MultiIndexQuantizer::MultiIndexQuantizer(faiss::MultiIndexQuantizer *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 28) = 1;
  *this = &unk_1F5538C20;
  faiss::ProductQuantizer::ProductQuantizer((this + 40));
  return this;
}

void std::vector<std::pair<long long,long long>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<long long,long long>>::__append(a1, a2 - v2);
  }
}

void std::vector<std::pair<long long,long long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long long,long long>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C64370(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *faiss::ScopeDeleter1<faiss::ProductQuantizer>::~ScopeDeleter1(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[13];
    if (v4)
    {
      v2[14] = v4;
      operator delete(v4);
    }

    MEMORY[0x1DA73F410](v2, 0x10A0C40B82B9555);
  }

  return a1;
}

uint64_t faiss::IndexPQ::IndexPQ(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = a4;
  v6 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = a5;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5538B78;
  faiss::ProductQuantizer::ProductQuantizer((a1 + 40), a2, a3, a4);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  faiss::PolysemousTraining::PolysemousTraining((a1 + 224));
  *(a1 + 25) = 0;
  *(a1 + 216) = 0;
  *(a1 + 320) = v5 * v6 + 1;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  return a1;
}

void sub_1D9C64490(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[25] = v4;
    operator delete(v4);
  }

  faiss::ProductQuantizer::~ProductQuantizer((v1 + 5));
  faiss::Index::~Index(v1);
  _Unwind_Resume(a1);
}

faiss::IndexPQ *faiss::IndexPQ::IndexPQ(faiss::IndexPQ *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 28) = 1;
  *this = &unk_1F5538B78;
  faiss::ProductQuantizer::ProductQuantizer((this + 40));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  faiss::PolysemousTraining::PolysemousTraining((this + 224));
  *(this + 7) = 1;
  *(this + 25) = 0;
  *(this + 216) = 0;
  *(this + 80) = *(this + 12) * *(this + 14) + 1;
  *(this + 78) = 0;
  *(this + 316) = 0;
  return this;
}

void sub_1D9C64564(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[25] = v5;
    operator delete(v5);
  }

  faiss::ProductQuantizer::~ProductQuantizer((v1 + 5));
  faiss::Index::~Index(v1);
  _Unwind_Resume(a1);
}

void faiss::IndexPQ::train(faiss::IndexPQ *this, uint64_t a2, const float *a3)
{
  if (*(this + 216))
  {
    if (a2 / 4 >= *(this + 66))
    {
      v5 = *(this + 66);
    }

    else
    {
      v5 = a2 / 4;
    }

    v6 = a2 - v5;
    if (*(this + 24) == 1)
    {
      v7 = "these";
      if (!v5)
      {
        v7 = "centroids";
      }

      printf("PQ training on %lld points, remains %lld points: training polysemous on %s\n", a2 - v5, v5, v7);
    }

    faiss::ProductQuantizer::train((this + 40), v6, a3);
    faiss::PolysemousTraining::optimize_pq_for_hamming((this + 224), (this + 40), v5, &a3[v6 * *(this + 2)]);
  }

  else
  {
    faiss::ProductQuantizer::train((this + 40), a2, a3);
  }

  *(this + 25) = 1;
}

uint64_t faiss::IndexPQ::add(faiss::IndexPQ *this, unint64_t a2, const float *a3)
{
  if ((*(this + 25) & 1) == 0)
  {
    memset(&v18, 0, sizeof(v18));
    v14 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&v18, v14 + 1, 0);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    snprintf(v15, size, "Error: '%s' failed", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v18, "virtual void faiss::IndexPQ::add(idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 73);
  }

  v8 = *(this + 24);
  v6 = this + 192;
  v7 = v8;
  v9 = *(v6 - 22);
  v10 = *(v6 - 15);
  v11 = (v9 + a2) * v10;
  v12 = *(v6 + 1) - v8;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      *(this + 25) = v7 + v11;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v6, v11 - v12);
    v9 = *(this + 2);
    v10 = *(this + 9);
    v7 = *(this + 24);
  }

  result = faiss::ProductQuantizer::compute_codes((this + 40), a3, (v7 + v10 * v9), a2);
  *(this + 2) += a2;
  return result;
}

void sub_1D9C647D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *faiss::IndexPQ::add_encoded(faiss::IndexPQ *this, uint64_t a2, const unsigned __int8 *a3)
{
  if ((*(this + 25) & 1) == 0)
  {
    memset(&v18, 0, sizeof(v18));
    v14 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&v18, v14 + 1, 0);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    snprintf(v15, size, "Error: '%s' failed", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v18, "void faiss::IndexPQ::add_encoded(idx_t, const uint8_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 80);
  }

  v8 = *(this + 24);
  v6 = this + 192;
  v7 = v8;
  v9 = *(v6 - 22);
  v10 = *(v6 - 15);
  v11 = (v9 + a2) * v10;
  v12 = *(v6 + 1) - v8;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      *(this + 25) = v7 + v11;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v6, v11 - v12);
    v9 = *(this + 2);
    v10 = *(this + 9);
    v7 = *(this + 24);
  }

  result = memcpy((v7 + v10 * v9), a3, v10 * a2);
  *(this + 2) += a2;
  return result;
}

void sub_1D9C64950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexPQ::remove_ids(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    for (i = 0; i < v3; ++i)
    {
      if (((**a2)(a2, i) & 1) == 0)
      {
        if (i > v5)
        {
          memmove((*(a1 + 192) + *(a1 + 72) * v5), (*(a1 + 192) + *(a1 + 72) * i), *(a1 + 72));
        }

        ++v5;
      }

      v3 = *(a1 + 16);
    }
  }

  v7 = v3 - v5;
  if (v3 != v5)
  {
    v8 = *(a1 + 192);
    *(a1 + 16) = v5;
    v9 = *(a1 + 72) * v5;
    v10 = *(a1 + 200) - v8;
    if (v9 <= v10)
    {
      if (v9 < v10)
      {
        *(a1 + 200) = v8 + v9;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 192), v9 - v10);
    }
  }

  return v7;
}

void *faiss::IndexPQ::reset(void *this)
{
  this[25] = this[24];
  this[2] = 0;
  return this;
}

_DWORD *faiss::IndexPQ::reconstruct_n(_DWORD *this, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3)
  {
    if (a2 < 0 || (v6 = this, a3 + a2 > *(this + 2)))
    {
      memset(&v13, 0, sizeof(v13));
      v9 = snprintf(0, 0, "Error: '%s' failed", "ni == 0 || (i0 >= 0 && i0 + ni <= ntotal)");
      std::string::resize(&v13, v9 + 1, 0);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v13;
      }

      else
      {
        v10 = v13.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      snprintf(v10, size, "Error: '%s' failed", "ni == 0 || (i0 >= 0 && i0 + ni <= ntotal)");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v13, "virtual void faiss::IndexPQ::reconstruct_n(idx_t, idx_t, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 114);
    }

    if (a3 >= 1)
    {
      for (i = 0; i != a3; ++i)
      {
        this = faiss::ProductQuantizer::decode((v6 + 40), *(v6 + 192) + *(v6 + 72) * (a2 + i), &a4[i * *(v6 + 8)]);
      }
    }
  }

  return this;
}

void sub_1D9C64BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *faiss::IndexPQ::reconstruct(faiss::IndexPQ *this, uint64_t a2, float *a3)
{
  if (a2 < 0 || *(this + 2) <= a2)
  {
    memset(&v10, 0, sizeof(v10));
    v6 = snprintf(0, 0, "Error: '%s' failed", "key >= 0 && key < ntotal");
    std::string::resize(&v10, v6 + 1, 0);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    snprintf(v7, size, "Error: '%s' failed", "key >= 0 && key < ntotal");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v10, "virtual void faiss::IndexPQ::reconstruct(idx_t, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 122);
  }

  v3 = *(this + 24) + *(this + 9) * a2;
  v4 = (this + 40);

  return faiss::ProductQuantizer::decode(v4, v3, a3);
}

void sub_1D9C64CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D9C64E94(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  MEMORY[0x1DA73F410](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *faiss::IndexPQ::search(faiss::IndexPQ *this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6)
{
  if (a4 <= 0)
  {
    memset(&v25, 0, sizeof(v25));
    v13 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v25, v13 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v25;
    }

    else
    {
      v14 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v14, size, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v25, "virtual void faiss::IndexPQ::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 214);
  }

  if ((*(this + 25) & 1) == 0)
  {
    memset(&v25, 0, sizeof(v25));
    v17 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&v25, v17 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v18, v19, "Error: '%s' failed", "is_trained");
    v20 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v20, &v25, "virtual void faiss::IndexPQ::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 216);
  }

  v8 = *(this + 78);
  if ((v8 - 4) >= 2)
  {
    if (v8)
    {
      operator new[]();
    }

    if (*(this + 7) == 1)
    {
      v25.__r_.__value_.__r.__words[0] = a2;
      v25.__r_.__value_.__l.__size_ = a4;
      v25.__r_.__value_.__r.__words[2] = a6;
      v26 = a5;
      v10 = faiss::ProductQuantizer::search(this + 40, a3, a2, *(this + 24), *(this + 2), &v25, 1);
    }

    else
    {
      v25.__r_.__value_.__r.__words[0] = a2;
      v25.__r_.__value_.__l.__size_ = a4;
      v25.__r_.__value_.__r.__words[2] = a6;
      v26 = a5;
      v10 = faiss::ProductQuantizer::search_ip(this + 40, a3, a2, *(this + 24), *(this + 2), &v25, 1);
    }

    indexPQ_stats = faiss::IndexPQStats::get_indexPQ_stats(v10);
    qword_1ECB70E50 += a2;
    v12 = *(this + 2);
    result = faiss::IndexPQStats::get_indexPQ_stats(indexPQ_stats);
    qword_1ECB70E58 += v12 * a2;
  }

  else
  {
    if (*(this + 7) != 1)
    {
      memset(&v25, 0, sizeof(v25));
      v21 = snprintf(0, 0, "Error: '%s' failed", "metric_type == METRIC_L2");
      std::string::resize(&v25, v21 + 1, 0);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v25;
      }

      else
      {
        v22 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v25.__r_.__value_.__l.__size_;
      }

      snprintf(v22, v23, "Error: '%s' failed", "metric_type == METRIC_L2");
      v24 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v24, &v25, "virtual void faiss::IndexPQ::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 234);
    }

    return faiss::IndexPQ::search_core_polysemous(this, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1D9C654F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA73F3F0](v17, v16);
  _Unwind_Resume(a1);
}

uint64_t *faiss::IndexPQStats::get_indexPQ_stats(faiss::IndexPQStats *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    faiss::IndexPQStats::get_indexPQ_stats();
  }

  return &qword_1ECB70E50;
}

void sub_1D9C66C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v14);
  if (*(v15 - 89) < 0)
  {
    operator delete(*(v15 - 112));
  }

  _Unwind_Resume(a1);
}

void *faiss::IndexPQStats::reset(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void faiss::IndexPQ::hamming_distance_histogram(faiss::IndexPQ *this, uint64_t a2, const float *a3, uint64_t a4, const float *a5, uint64_t *a6)
{
  if (*(this + 7) == 1)
  {
    if ((*(this + 9) & 7) == 0)
    {
      if (*(this + 7) == 8)
      {
        operator new[]();
      }

      memset(&__p, 0, sizeof(__p));
      v14 = snprintf(0, 0, "Error: '%s' failed", "pq.nbits == 8");
      std::string::resize(&__p, v14 + 1, 0);
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

      snprintf(p_p, size, "Error: '%s' failed", "pq.nbits == 8");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &__p, "void faiss::IndexPQ::hamming_distance_histogram(idx_t, const float *, idx_t, const float *, int64_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 500);
    }

    memset(&__p, 0, sizeof(__p));
    v10 = snprintf(0, 0, "Error: '%s' failed", "pq.code_size % 8 == 0");
    std::string::resize(&__p, v10 + 1, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    snprintf(v11, v12, "Error: '%s' failed", "pq.code_size % 8 == 0");
    v13 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v13, &__p, "void faiss::IndexPQ::hamming_distance_histogram(idx_t, const float *, idx_t, const float *, int64_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 499);
  }

  memset(&__p, 0, sizeof(__p));
  v6 = snprintf(0, 0, "Error: '%s' failed", "metric_type == METRIC_L2");
  std::string::resize(&__p, v6 + 1, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  snprintf(v7, v8, "Error: '%s' failed", "metric_type == METRIC_L2");
  v9 = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(v9, &__p, "void faiss::IndexPQ::hamming_distance_histogram(idx_t, const float *, idx_t, const float *, int64_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 498);
}

void sub_1D9C67288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

faiss::MultiIndexQuantizer *faiss::MultiIndexQuantizer::MultiIndexQuantizer(faiss::MultiIndexQuantizer *this, int a2, unint64_t a3, unint64_t a4)
{
  *(this + 2) = a2;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 28) = 1;
  *this = &unk_1F5538C20;
  faiss::ProductQuantizer::ProductQuantizer((this + 40), a2, a3, a4);
  *(this + 25) = 0;
  *(this + 88) = *(this + 24);
  return this;
}

void faiss::MultiIndexQuantizer::train(faiss::MultiIndexQuantizer *this, int a2, const float *a3)
{
  *(this + 88) = *(this + 24);
  faiss::ProductQuantizer::train((this + 40), a2, a3);
  *(this + 25) = 1;
  *(this + 2) = 1;
  v4 = *(this + 6);
  if (v4)
  {
    v5 = 1;
    do
    {
      v5 *= *(this + 10);
      --v4;
    }

    while (v4);
    *(this + 2) = v5;
  }
}

uint64_t faiss::MultiIndexQuantizer::search(uint64_t this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6)
{
  if (a2)
  {
    if (a4 <= 0)
    {
      memset(&v23, 0, sizeof(v23));
      v16 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
      std::string::resize(&v23, v16 + 1, 0);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      snprintf(v17, size, "Error: '%s' failed", "k > 0");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v23, "virtual void faiss::MultiIndexQuantizer::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 932);
    }

    v9 = this;
    v22 = this;
    if (a2 <= 0x8000)
    {
      operator new[]();
    }

    v10 = 0;
    v11 = 0;
    v12 = 0x8000;
    do
    {
      v13 = v11 + 0x8000;
      if (a2 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = a2;
      }

      if (v13 >= a2)
      {
        v15 = a2;
      }

      else
      {
        v15 = v11 + 0x8000;
      }

      if (*(v9 + 24) == 1)
      {
        printf("MultiIndexQuantizer::search: %lld:%lld / %lld\n", v11, v15, a2);
        v9 = v22;
      }

      this = (*(*v9 + 40))(v9, v14 + v10, &a3[v11 * *(v9 + 8)], a4, a5, a6);
      v9 = v22;
      a6 += 0x8000 * a4;
      a5 += 0x8000 * a4;
      v12 += 0x8000;
      v10 -= 0x8000;
      v11 += 0x8000;
    }

    while (v13 < a2);
  }

  return this;
}

void sub_1D9C67F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  __cxa_free_exception(v34);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::anonymous namespace::MinSumK<float,faiss::anonymous namespace::SemiSortedArray<float>,false>::~MinSumK(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    MEMORY[0x1DA73F3F0](v2, 0x1000C8000313F17);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    MEMORY[0x1DA73F3F0](v3, 0x1000C8052888210);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  return a1;
}

void *faiss::MultiIndexQuantizer::reconstruct(void *this, uint64_t a2, float *__dst)
{
  if (this[6])
  {
    v5 = this;
    v6 = 0;
    v7 = this[8];
    do
    {
      v8 = v5[7];
      v9 = a2 & ~(-1 << v8);
      a2 >>= v8;
      this = memcpy(__dst, (v5[18] + 4 * (v9 + v5[10] * v6) * v7), 4 * v7);
      v7 = v5[8];
      __dst += v7;
      ++v6;
    }

    while (v5[6] > v6);
  }

  return this;
}

void faiss::MultiIndexQuantizer::add(faiss::MultiIndexQuantizer *this, uint64_t a2, const float *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v4, "This index has virtual elements, it does not support add");
  faiss::FaissException::FaissException(exception, v4, "virtual void faiss::MultiIndexQuantizer::add(idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 1013);
}

void sub_1D9C68168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::MultiIndexQuantizer::reset(faiss::MultiIndexQuantizer *this)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "This index has virtual elements, it does not support reset");
  faiss::FaissException::FaissException(exception, v2, "virtual void faiss::MultiIndexQuantizer::reset()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 1019);
}

void sub_1D9C68220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

faiss::MultiIndexQuantizer2 *faiss::MultiIndexQuantizer2::MultiIndexQuantizer2(faiss::MultiIndexQuantizer2 *this, int a2, unint64_t a3, unint64_t a4, faiss::Index **a5)
{
  v8 = faiss::MultiIndexQuantizer::MultiIndexQuantizer(this, a2, a3, a4);
  *v8 = &unk_1F5538CC8;
  *(v8 + 24) = 0;
  v9 = (v8 + 192);
  *(v8 + 25) = 0;
  *(v8 + 26) = 0;
  std::vector<faiss::Index *>::resize(v8 + 24, a3);
  if (a3)
  {
    v10 = 0;
    v11 = *(this + 8);
    do
    {
      v12 = a5[v10];
      if (v11 != *(v12 + 2))
      {
        memset(&v18, 0, sizeof(v18));
        v14 = snprintf(0, 0, "Error: '%s' failed: Provided sub-index has incorrect size", "indexes[i]->d == pq.dsub");
        std::string::resize(&v18, v14 + 1, 0);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v18;
        }

        else
        {
          v15 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        snprintf(v15, size, "Error: '%s' failed: Provided sub-index has incorrect size", "indexes[i]->d == pq.dsub");
        exception = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(exception, &v18, "faiss::MultiIndexQuantizer2::MultiIndexQuantizer2(int, size_t, size_t, Index **)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 1036);
      }

      *(*v9 + 8 * v10++) = v12;
    }

    while (a3 != v10);
  }

  *(this + 216) = 0;
  return this;
}

void sub_1D9C683B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 25) = v18;
    operator delete(v18);
  }

  faiss::MultiIndexQuantizer::~MultiIndexQuantizer(v15);
  _Unwind_Resume(a1);
}

void std::vector<faiss::Index *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<faiss::Index *>::__append(a1, a2 - v2);
  }
}

void faiss::MultiIndexQuantizer::~MultiIndexQuantizer(faiss::MultiIndexQuantizer *this)
{
  *this = &unk_1F5538C20;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  faiss::Index::~Index(this);
}

{
  *this = &unk_1F5538C20;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  faiss::Index::~Index(this);

  JUMPOUT(0x1DA73F410);
}

faiss::MultiIndexQuantizer2 *faiss::MultiIndexQuantizer2::MultiIndexQuantizer2(faiss::MultiIndexQuantizer2 *this, int a2, unint64_t a3, faiss::Index *a4, faiss::Index *a5)
{
  v8 = faiss::MultiIndexQuantizer::MultiIndexQuantizer(this, a2, 2uLL, a3);
  *(v8 + 24) = 0;
  *v8 = &unk_1F5538CC8;
  *(v8 + 25) = 0;
  *(v8 + 26) = 0;
  v9 = *(a4 + 2);
  if (*(v8 + 8) != v9 || v9 != *(a5 + 2))
  {
    memset(&v15, 0, sizeof(v15));
    v11 = snprintf(0, 0, "Error: '%s' failed: Provided sub-index has incorrect size", "assign_index_0->d == pq.dsub && assign_index_1->d == pq.dsub");
    std::string::resize(&v15, v11 + 1, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    snprintf(v12, size, "Error: '%s' failed: Provided sub-index has incorrect size", "assign_index_0->d == pq.dsub && assign_index_1->d == pq.dsub");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v15, "faiss::MultiIndexQuantizer2::MultiIndexQuantizer2(int, size_t, Index *, Index *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 1050);
  }

  std::vector<faiss::Index *>::resize(v8 + 24, 2uLL);
  **(this + 24) = a4;
  *(*(this + 24) + 8) = a5;
  *(this + 216) = 0;
  return this;
}

void sub_1D9C68604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 25) = v19;
    operator delete(v19);
  }

  faiss::MultiIndexQuantizer::~MultiIndexQuantizer(v15);
  _Unwind_Resume(a1);
}

void faiss::MultiIndexQuantizer2::train(faiss::MultiIndexQuantizer2 *this, int a2, const float *a3)
{
  faiss::MultiIndexQuantizer::train(this, a2, a3);
  if (*(this + 6))
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 24) + 8 * v4);
      (*(*v5 + 24))(v5);
      ++v4;
    }

    while (*(this + 6) > v4);
  }
}

void faiss::MultiIndexQuantizer2::search(faiss::MultiIndexQuantizer2 *this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6)
{
  if (a2)
  {
    if (*(this + 10) >= a4)
    {
      LODWORD(v8) = a4;
    }

    else
    {
      v8 = *(this + 10);
    }

    if (!v8)
    {
      memset(&v39, 0, sizeof(v39));
      v28 = snprintf(0, 0, "Error: '%s' failed", "k2");
      std::string::resize(&v39, v28 + 1, 0);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v39;
      }

      else
      {
        v29 = v39.__r_.__value_.__r.__words[0];
      }

      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v39.__r_.__value_.__l.__size_;
      }

      snprintf(v29, size, "Error: '%s' failed", "k2");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v39, "virtual void faiss::MultiIndexQuantizer2::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 1075);
    }

    v9 = a2;
    v10 = *(this + 6);
    v11 = *(this + 8);
    v34 = v8;
    v37 = v8;
    v12 = v8 * a2;
    std::vector<long long>::vector[abi:ne200100](v45, v12 * v10);
    std::vector<float>::vector[abi:ne200100](v44, v12 * v10);
    v35 = a4;
    std::vector<float>::vector[abi:ne200100](v43, v11 * v9);
    v38 = v9;
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = v43[0];
        if (v9 >= 1)
        {
          v15 = &a3[i * v11];
          do
          {
            memcpy(v14, v15, 4 * v11);
            v15 += *(this + 2);
            v14 += 4 * v11;
            --v9;
          }

          while (v9);
          v14 = v43[0];
          v9 = v38;
        }

        v16 = *(*(this + 24) + 8 * i);
        (*(*v16 + 40))(v16, v9, v14, v37, v44[0] + 4 * v12 * i, v45[0] + 8 * v12 * i);
      }
    }

    if (v35 != 1)
    {
      v26 = *(this + 12);
      v27 = *(this + 14);
      v39.__r_.__value_.__r.__words[0] = __PAIR64__(v26, v35);
      v39.__r_.__value_.__l.__size_ = __PAIR64__(v34, v27);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39.__r_.__value_.__r.__words[2] = (v26 * v35);
      if (1 << v27 >= v34)
      {
        operator new[]();
      }

      __assert_rtn("MinSumK", "IndexPQ.cpp", 782, "N <= (1 << nbit)");
    }

    if (v34 != 1)
    {
      __assert_rtn("search", "IndexPQ.cpp", 1100, "k2 == 1");
    }

    if (v9 >= 1)
    {
      v17 = 0;
      v18 = v44[0];
      v19 = v45[0];
      do
      {
        if (v10 < 1)
        {
          v21 = 0;
          v22 = 0.0;
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0.0;
          v23 = v10;
          v24 = v18;
          v25 = v19;
          do
          {
            v21 |= *v25 << v20;
            v22 = v22 + *v24;
            v20 += *(this + 7);
            v25 += v9;
            v24 += v9;
            --v23;
          }

          while (v23);
        }

        a5[v17] = v22;
        a6[v17++] = v21;
        ++v19;
        ++v18;
      }

      while (v17 != v9);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    if (v44[0])
    {
      v44[1] = v44[0];
      operator delete(v44[0]);
    }

    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }
  }
}

void sub_1D9C68FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31)
{
  __cxa_free_exception(v31);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *faiss::anonymous namespace::MinSumK<float,faiss::anonymous namespace::PreSortedArray<float>,false>::~MinSumK(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x1DA73F3F0](v2, 0x1000C8000313F17);
  }

  v3 = a1[4];
  if (v3)
  {
    MEMORY[0x1DA73F3F0](v3, 0x1000C8052888210);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

void faiss::IndexPQ::~IndexPQ(void **this)
{
  *this = &unk_1F5538B78;
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = this[24];
  if (v2)
  {
    this[25] = v2;
    operator delete(v2);
  }

  v3 = this[21];
  if (v3)
  {
    this[22] = v3;
    operator delete(v3);
  }

  v4 = this[18];
  if (v4)
  {
    this[19] = v4;
    operator delete(v4);
  }

  faiss::Index::~Index(this);
}

{
  *this = &unk_1F5538B78;
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = this[24];
  if (v2)
  {
    this[25] = v2;
    operator delete(v2);
  }

  v3 = this[21];
  if (v3)
  {
    this[22] = v3;
    operator delete(v3);
  }

  v4 = this[18];
  if (v4)
  {
    this[19] = v4;
    operator delete(v4);
  }

  faiss::Index::~Index(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::MultiIndexQuantizer2::~MultiIndexQuantizer2(faiss::MultiIndexQuantizer2 *this)
{
  *this = &unk_1F5538CC8;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5538C20;
  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  faiss::Index::~Index(this);
}

{
  *this = &unk_1F5538CC8;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5538C20;
  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  faiss::Index::~Index(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder8>::set_query(uint64_t a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  if (v7 == 1)
  {
    faiss::ProductQuantizer::compute_distance_table(v8, a2, v9);
  }

  else
  {
    faiss::ProductQuantizer::compute_inner_prod_table(v8, a2, v9, a4, a5, a6);
  }
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder8>::operator()(void *result, uint64_t a2)
{
  v2 = result[6];
  if (*(v2 + 16) != 8)
  {
    faiss::decode<faiss::PQDecoder8>();
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (result[4] + result[5] * a2);
    v5 = result[8];
    v6 = 0.0;
    do
    {
      v7 = *v4++;
      v6 = v6 + *(v5 + 4 * v7);
      v5 += 1024;
      --v3;
    }

    while (v3);
  }

  ++result[11];
  return result;
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder8>::symmetric_dis(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[7];
  if (!v3)
  {
    memset(&v18, 0, sizeof(v18));
    v14 = snprintf(0, 0, "Error: '%s' failed", "sdc");
    std::string::resize(&v18, v14 + 1, 0);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    snprintf(v15, size, "Error: '%s' failed", "sdc");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v18, "virtual float faiss::(anonymous namespace)::PQDistanceComputer<faiss::PQDecoder8>::symmetric_dis(idx_t, idx_t) [PQDecoder = faiss::PQDecoder8]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 154);
  }

  v4 = result[6];
  if (*(v4 + 16) != 8)
  {
    faiss::decode<faiss::PQDecoder8>();
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = result[4];
    v7 = result[5];
    v8 = (v6 + v7 * a3);
    v9 = (v6 + v7 * a2);
    v10 = 0.0;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v8++;
      v10 = v10 + *(v3 + ((4 * v11) | (v13 << 10)));
      v3 += 0x40000;
      --v5;
    }

    while (v5);
  }

  ++result[11];
  return result;
}

void sub_1D9C695C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder8>::~PQDistanceComputer(void *a1)
{
  *a1 = &unk_1F5538DB8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return a1;
}

void faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder8>::~PQDistanceComputer(void *a1)
{
  *a1 = &unk_1F5538DB8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder16>::set_query(uint64_t a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  if (v7 == 1)
  {
    faiss::ProductQuantizer::compute_distance_table(v8, a2, v9);
  }

  else
  {
    faiss::ProductQuantizer::compute_inner_prod_table(v8, a2, v9, a4, a5, a6);
  }
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder16>::operator()(void *result, uint64_t a2)
{
  v2 = result[6];
  if (*(v2 + 16) != 16)
  {
    faiss::decode<faiss::PQDecoder16>();
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (result[4] + result[5] * a2);
    v5 = result[8];
    v6 = 0.0;
    do
    {
      v7 = *v4++;
      v6 = v6 + *(v5 + 4 * v7);
      v5 += 0x40000;
      --v3;
    }

    while (v3);
  }

  ++result[11];
  return result;
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder16>::symmetric_dis(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[7];
  if (!v3)
  {
    memset(&v18, 0, sizeof(v18));
    v14 = snprintf(0, 0, "Error: '%s' failed", "sdc");
    std::string::resize(&v18, v14 + 1, 0);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    snprintf(v15, size, "Error: '%s' failed", "sdc");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v18, "virtual float faiss::(anonymous namespace)::PQDistanceComputer<faiss::PQDecoder16>::symmetric_dis(idx_t, idx_t) [PQDecoder = faiss::PQDecoder16]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 154);
  }

  v4 = result[6];
  if (*(v4 + 16) != 16)
  {
    faiss::decode<faiss::PQDecoder16>();
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = result[4];
    v7 = result[5];
    v8 = (v6 + v7 * a3);
    v9 = (v6 + v7 * a2);
    v10 = 0.0;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v8++;
      v10 = v10 + *(v3 + ((4 * v11) | (v13 << 18)));
      v3 += 0x400000000;
      --v5;
    }

    while (v5);
  }

  ++result[11];
  return result;
}

void sub_1D9C69884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder16>::~PQDistanceComputer(void *a1)
{
  *a1 = &unk_1F5538E08;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return a1;
}

void faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoder16>::~PQDistanceComputer(void *a1)
{
  *a1 = &unk_1F5538E08;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoderGeneric>::set_query(uint64_t a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  if (v7 == 1)
  {
    faiss::ProductQuantizer::compute_distance_table(v8, a2, v9);
  }

  else
  {
    faiss::ProductQuantizer::compute_inner_prod_table(v8, a2, v9, a4, a5, a6);
  }
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoderGeneric>::operator()(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = *(v2 + 16);
  if (v3 > 64)
  {
    faiss::decode<faiss::PQDecoderGeneric>();
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = 0;
    LOBYTE(v6) = 0;
    LODWORD(v7) = 0;
    v8 = (result[4] + result[5] * a2);
    v9 = result[8];
    v10 = 0.0;
    do
    {
      if (!v6)
      {
        LODWORD(v7) = *v8;
      }

      v11 = v7 >> v6;
      v12 = v3 + v6;
      v13 = v12 - 8;
      if (v12 < 8)
      {
        LOBYTE(v6) = v3 + v6;
      }

      else
      {
        v14 = 8 - v6;
        v15 = v8 + 1;
        if (v12 < 0x10)
        {
          ++v8;
        }

        else
        {
          v16 = v13 >> 3;
          v17 = (v13 >> 3) - 1;
          do
          {
            v18 = *v15++;
            v11 |= v18 << v14;
            v14 += 8;
            --v16;
          }

          while (v16);
          v8 += v17 + 2;
        }

        v6 = (v6 + v3) & 7;
        if (v6)
        {
          v7 = *v8;
          v11 |= v7 << v14;
        }
      }

      v10 = v10 + *(v9 + 4 * (v11 & ~(-1 << v3)));
      v9 += 4 * (1 << v3);
      ++v5;
    }

    while (v5 != v4);
  }

  ++result[11];
  return result;
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoderGeneric>::symmetric_dis(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[7];
  if (!v3)
  {
    memset(&v37, 0, sizeof(v37));
    v33 = snprintf(0, 0, "Error: '%s' failed", "sdc");
    std::string::resize(&v37, v33 + 1, 0);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v37;
    }

    else
    {
      v34 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    snprintf(v34, size, "Error: '%s' failed", "sdc");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v37, "virtual float faiss::(anonymous namespace)::PQDistanceComputer<faiss::PQDecoderGeneric>::symmetric_dis(idx_t, idx_t) [PQDecoder = faiss::PQDecoderGeneric]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexPQ.cpp", 154);
  }

  v4 = result[6];
  v5 = *(v4 + 16);
  if (v5 >= 65)
  {
    faiss::decode<faiss::PQDecoderGeneric>();
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    v7 = 0;
    LOBYTE(v8) = 0;
    LODWORD(v9) = 0;
    LOBYTE(v10) = 0;
    LODWORD(v11) = 0;
    v12 = result[4];
    v13 = result[5];
    v14 = (v12 + v13 * a3);
    v15 = (v12 + v13 * a2);
    v16 = 0.0;
    do
    {
      if (!v10)
      {
        LODWORD(v9) = *v15;
      }

      v17 = v9 >> v10;
      v18 = v5 + v10;
      v19 = v18 - 8;
      if (v18 < 8)
      {
        LOBYTE(v10) = v5 + v10;
      }

      else
      {
        v20 = 8 - v10;
        v21 = v15 + 1;
        if (v18 < 0x10)
        {
          ++v15;
        }

        else
        {
          v22 = v19 >> 3;
          v23 = (v19 >> 3) - 1;
          do
          {
            v24 = *v21++;
            v17 |= v24 << v20;
            v20 += 8;
            --v22;
          }

          while (v22);
          v15 += v23 + 2;
        }

        v10 = (v10 + v5) & 7;
        if (v10)
        {
          v9 = *v15;
          v17 |= v9 << v20;
        }
      }

      if (!v8)
      {
        LODWORD(v11) = *v14;
      }

      v25 = v11 >> v8;
      v26 = v5 + v8;
      v27 = v26 - 8;
      if (v26 < 8)
      {
        LOBYTE(v8) = v5 + v8;
      }

      else
      {
        v28 = 8 - v8;
        v29 = v14 + 1;
        if (v26 < 0x10)
        {
          ++v14;
        }

        else
        {
          v30 = v27 >> 3;
          v31 = (v27 >> 3) - 1;
          do
          {
            v32 = *v29++;
            v25 |= v32 << v28;
            v28 += 8;
            --v30;
          }

          while (v30);
          v14 += v31 + 2;
        }

        v8 = (v8 + v5) & 7;
        if (v8)
        {
          v11 = *v14;
          v25 |= v11 << v28;
        }
      }

      v16 = v16 + *(v3 + 4 * (((v25 & ~(-1 << v5)) << v5) + (v17 & ~(-1 << v5))));
      v3 += 4 * (1 << (2 * v5));
      ++v7;
    }

    while (v7 != v6);
  }

  ++result[11];
  return result;
}

void sub_1D9C69D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoderGeneric>::~PQDistanceComputer(void *a1)
{
  *a1 = &unk_1F5538E58;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return a1;
}

void faiss::anonymous namespace::PQDistanceComputer<faiss::PQDecoderGeneric>::~PQDistanceComputer(void *a1)
{
  *a1 = &unk_1F5538E58;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void **std::vector<faiss::anonymous namespace::SemiSortedArray<float>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

float faiss::anonymous namespace::SemiSortedArray<float>::get_diff(unint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
  }

  return *(*a1 + 4 * *(*(a1 + 16) + 4 * a2)) - *(*a1 + 4 * *(*(a1 + 16) + 4 * a2 - 4));
}

unint64_t faiss::anonymous namespace::SemiSortedArray<float>::grow(unint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (v3 > a2)
  {
    v4 = *(result + 40);
    v5 = (a2 - v4);
    v6 = v3 - v4;
    v7 = *result;
    v8 = (*(result + 16) + 4 * v4);
    if (v5 >= 2)
    {
      v9 = v8 - 1;
      v10 = 1;
      do
      {
        v11 = v8[v10++];
        v12 = *(v7 + 4 * v11);
        v13 = v10;
        while (1)
        {
          v14 = v13 >> 1;
          v15 = v9[v13 >> 1];
          if (v12 <= *(v7 + 4 * v15))
          {
            break;
          }

          v9[v13] = v15;
          v16 = v13 > 3;
          v13 >>= 1;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

        v14 = v13;
LABEL_9:
        v9[v14] = v11;
      }

      while (v10 != v5);
    }

    v17 = v8 - 1;
    v18 = v5;
    do
    {
      v19 = v8[v18];
      v20 = *v8;
      v21 = *(v7 + 4 * v19);
      if (*(v7 + 4 * v20) <= v21)
      {
        goto LABEL_29;
      }

      v22 = v17[v5];
      if (v5 < 2)
      {
        *v8 = v22;
        v23 = v5;
        goto LABEL_28;
      }

      v24 = *(v7 + 4 * v22);
      v25 = 3;
      v26 = 2;
      v27 = 1;
      while (1)
      {
        v28 = v17[v26];
        v29 = *(v7 + 4 * v28);
        if (v26 == v5 || (v30 = *(v7 + 4 * v8[v26]), v29 > v30))
        {
          if (v24 > v29)
          {
            break;
          }

          goto LABEL_20;
        }

        LODWORD(v28) = v8[v26];
        v26 = v25;
        if (v24 > v30)
        {
          break;
        }

LABEL_20:
        v17[v27] = v28;
        v31 = v26;
        v26 *= 2;
        v25 = (2 * v31) | 1;
        v27 = v31;
        if (v26 > v5)
        {
          goto LABEL_23;
        }
      }

      v31 = v27;
LABEL_23:
      v17[v31] = v17[v5];
      result = v5;
      while (1)
      {
        v23 = result >> 1;
        v32 = v17[result >> 1];
        if (v21 <= *(v7 + 4 * v32))
        {
          break;
        }

        v17[result] = v32;
        v16 = result > 3;
        result >>= 1;
        if (!v16)
        {
          goto LABEL_28;
        }
      }

      v23 = result;
LABEL_28:
      v17[v23] = v19;
      v8[v18] = v20;
LABEL_29:
      ++v18;
    }

    while (v18 != v6);
    if (v5 < 2)
    {
      goto LABEL_41;
    }

LABEL_31:
    v33 = v5--;
    v34 = *v8;
    v35 = *(v7 + 4 * v17[v33]);
    v36 = 3;
    v37 = 2;
    v38 = 1;
    while (1)
    {
      v39 = v17[v37];
      v40 = *(v7 + 4 * v39);
      if (v37 == v33 || (result = v8[v37], v41 = *(v7 + 4 * result), v40 > v41))
      {
        if (v35 > v40)
        {
          goto LABEL_39;
        }
      }

      else
      {
        LODWORD(v39) = v8[v37];
        v37 = v36;
        if (v35 > v41)
        {
LABEL_39:
          v42 = v38;
LABEL_40:
          v17[v42] = v17[v33];
          v8[v5] = v34;
          if (v33 <= 2)
          {
LABEL_41:
            *(v2 + 40) = a2;
            return result;
          }

          goto LABEL_31;
        }
      }

      v17[v38] = v39;
      v42 = v37;
      v37 *= 2;
      v36 = (2 * v42) | 1;
      v38 = v42;
      if (v37 > v33)
      {
        goto LABEL_40;
      }
    }
  }

  v43 = *(result + 24);
  v44 = *(result + 16) + 4 * *(result + 40);
  v45 = 126 - 2 * __clz((v43 - v44) >> 2);
  v47 = *v2;
  if (v43 == v44)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  *(v2 + 40) = *(v2 + 8);
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,faiss::anonymous namespace::ArgSort<float> &,int *,false>(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v10;
        if (*(*a3 + 4 * v84) >= *(*a3 + 4 * v85))
        {
          return result;
        }

        *v10 = v84;
LABEL_172:
        *(a2 - 1) = v85;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v92 = v10 + 1;
      v93 = v10[1];
      v94 = v10 + 2;
      v95 = v10[2];
      v96 = *v10;
      v97 = *a3;
      v98 = *(*a3 + 4 * v93);
      v99 = *(*a3 + 4 * *v10);
      v100 = v95;
      v101 = *(*a3 + 4 * v95);
      if (v98 >= v99)
      {
        if (v101 < v98)
        {
          v102 = v93;
          *v92 = v95;
          *v94 = v93;
          v103 = v10;
          v104 = v10 + 1;
          v100 = v93;
          if (v101 < v99)
          {
            goto LABEL_174;
          }

LABEL_176:
          v154 = *(a2 - 1);
          if (*(v97 + 4 * v154) < *(v97 + 4 * v100))
          {
            *v94 = v154;
            *(a2 - 1) = v93;
            v155 = *v94;
            v156 = *v92;
            v157 = *(v97 + 4 * v155);
            if (v157 < *(v97 + 4 * v156))
            {
              v10[1] = v155;
              v10[2] = v156;
              v158 = *v10;
              if (v157 < *(v97 + 4 * v158))
              {
                *v10 = v155;
                v10[1] = v158;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v102 = v96;
        if (v101 < v98)
        {
          v103 = v10;
          v104 = v10 + 2;
          v93 = *v10;
          goto LABEL_174;
        }

        *v10 = v93;
        v10[1] = v96;
        v103 = v10 + 1;
        v104 = v10 + 2;
        v93 = v96;
        if (v101 < v99)
        {
LABEL_174:
          *v103 = v95;
          *v104 = v96;
          v100 = v102;
          goto LABEL_176;
        }
      }

      v93 = v95;
      goto LABEL_176;
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v105 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v106 = 0;
            v107 = *a3;
            v108 = v10;
            do
            {
              v110 = *v108;
              v109 = v108[1];
              v108 = v105;
              v111 = *(v107 + 4 * v109);
              if (v111 < *(v107 + 4 * v110))
              {
                v112 = v106;
                while (1)
                {
                  *(v10 + v112 + 4) = v110;
                  if (!v112)
                  {
                    break;
                  }

                  v110 = *(v10 + v112 - 4);
                  v112 -= 4;
                  if (v111 >= *(v107 + 4 * v110))
                  {
                    v113 = (v10 + v112 + 4);
                    goto LABEL_124;
                  }
                }

                v113 = v10;
LABEL_124:
                *v113 = v109;
              }

              v105 = v108 + 1;
              v106 += 4;
            }

            while (v108 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v148 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v149 = *a3;
          do
          {
            v151 = *v9;
            v150 = v9[1];
            v9 = v148;
            v152 = *(v149 + 4 * v150);
            if (v152 < *(v149 + 4 * v151))
            {
              do
              {
                *v148 = v151;
                v151 = *(v148 - 2);
                --v148;
              }

              while (v152 < *(v149 + 4 * v151));
              *v148 = v150;
            }

            v148 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v114 = (v11 - 2) >> 1;
        v115 = *a3;
        v116 = v114;
        do
        {
          v117 = v116;
          if (v114 >= v116)
          {
            v118 = (2 * v116) | 1;
            v119 = &v10[v118];
            if (2 * v117 + 2 < v11 && *(v115 + 4 * *v119) < *(v115 + 4 * v119[1]))
            {
              ++v119;
              v118 = 2 * v117 + 2;
            }

            v120 = &v10[v117];
            v121 = *v119;
            v122 = *v120;
            v123 = *(v115 + 4 * v122);
            if (*(v115 + 4 * v121) >= v123)
            {
              do
              {
                v124 = v119;
                *v120 = v121;
                if (v114 < v118)
                {
                  break;
                }

                v125 = 2 * v118;
                v118 = (2 * v118) | 1;
                v119 = &v10[v118];
                v126 = v125 + 2;
                if (v126 < v11)
                {
                  result = v119[1];
                  if (*(v115 + 4 * *v119) < *(v115 + 4 * result))
                  {
                    ++v119;
                    v118 = v126;
                  }
                }

                v121 = *v119;
                v120 = v124;
              }

              while (*(v115 + 4 * v121) >= v123);
              *v124 = v122;
            }
          }

          v116 = v117 - 1;
        }

        while (v117);
        do
        {
          v127 = 0;
          v128 = *v10;
          v129 = *a3;
          v130 = v10;
          do
          {
            v131 = v130;
            v132 = &v130[v127];
            v130 = v132 + 1;
            v133 = 2 * v127;
            v127 = (2 * v127) | 1;
            v134 = v133 + 2;
            if (v134 < v11)
            {
              v136 = v132[2];
              v135 = v132 + 2;
              result = *(v135 - 1);
              if (*(v129 + 4 * result) < *(v129 + 4 * v136))
              {
                v130 = v135;
                v127 = v134;
              }
            }

            *v131 = *v130;
          }

          while (v127 <= ((v11 - 2) >> 1));
          if (v130 == --a2)
          {
            *v130 = v128;
          }

          else
          {
            *v130 = *a2;
            *a2 = v128;
            v137 = (v130 - v10 + 4) >> 2;
            v138 = v137 < 2;
            v139 = v137 - 2;
            if (!v138)
            {
              v140 = v139 >> 1;
              v141 = &v10[v140];
              v142 = *v141;
              v143 = *v130;
              v144 = *(v129 + 4 * v143);
              if (*(v129 + 4 * v142) < v144)
              {
                do
                {
                  v145 = v141;
                  *v130 = v142;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = &v10[v140];
                  v142 = *v141;
                  v130 = v145;
                }

                while (*(v129 + 4 * v142) < v144);
                *v145 = v143;
              }
            }
          }

          v138 = v11-- <= 2;
        }

        while (!v138);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      v20 = *(v14 + 4 * v18);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v29 = *(a2 - 1);
        if (*(v14 + 4 * v29) < v20)
        {
          *v12 = v29;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(v14 + 4 * v31);
      v34 = *(v14 + 4 * v32);
      v35 = *(a2 - 2);
      v36 = *(v14 + 4 * v35);
      if (v33 >= v34)
      {
        if (v36 < v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = *v30;
          v38 = v10[1];
          if (*(v14 + 4 * v37) < *(v14 + 4 * v38))
          {
            v10[1] = v37;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v36 < v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v31;
        *v30 = v32;
        v40 = *(a2 - 2);
        if (*(v14 + 4 * v40) < v34)
        {
          *v30 = v40;
LABEL_39:
          *(a2 - 2) = v32;
        }
      }

      v43 = v12[1];
      v41 = v12 + 1;
      v42 = v43;
      v44 = v10[2];
      v45 = *(v14 + 4 * v43);
      v46 = *(v14 + 4 * v44);
      v47 = *(a2 - 3);
      v48 = *(v14 + 4 * v47);
      if (v45 >= v46)
      {
        if (v48 < v45)
        {
          *v41 = v47;
          *(a2 - 3) = v42;
          v49 = *v41;
          v50 = v10[2];
          if (*(v14 + 4 * v49) < *(v14 + 4 * v50))
          {
            v10[2] = v49;
            *v41 = v50;
          }
        }
      }

      else
      {
        if (v48 < v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v42;
        *v41 = v44;
        v51 = *(a2 - 3);
        if (*(v14 + 4 * v51) < v46)
        {
          *v41 = v51;
LABEL_48:
          *(a2 - 3) = v44;
        }
      }

      v52 = *v13;
      v53 = *v30;
      v54 = *(v14 + 4 * v52);
      v55 = *(v14 + 4 * v53);
      v56 = *v41;
      v57 = *(v14 + 4 * v56);
      if (v54 >= v55)
      {
        if (v57 >= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v41 = v52;
        v41 = v13;
        LODWORD(v52) = v53;
        if (v57 >= v55)
        {
          LODWORD(v52) = v56;
          goto LABEL_56;
        }
      }

      else if (v57 >= v54)
      {
        *v30 = v52;
        *v13 = v53;
        v30 = v13;
        LODWORD(v52) = v56;
        if (v57 >= v55)
        {
          LODWORD(v52) = v53;
LABEL_56:
          v58 = *v10;
          *v10 = v52;
          *v13 = v58;
          goto LABEL_57;
        }
      }

      *v30 = v56;
      *v41 = v53;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + 4 * v21);
    v24 = *(v14 + 4 * v22);
    if (v23 >= v24)
    {
      if (v16 < v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v27 = *v10;
        v28 = *v13;
        if (*(v14 + 4 * v27) < *(v14 + 4 * v28))
        {
          *v13 = v27;
          *v10 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v39 = *(a2 - 1);
    if (*(v14 + 4 * v39) < v24)
    {
      *v10 = v39;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v59 = *v10;
    if (a5)
    {
      v60 = *(v14 + 4 * v59);
LABEL_60:
      v61 = 0;
      do
      {
        v62 = v10[++v61];
      }

      while (*(v14 + 4 * v62) < v60);
      v63 = &v10[v61];
      v64 = a2;
      if (v61 == 1)
      {
        v64 = a2;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v66 = *--v64;
        }

        while (*(v14 + 4 * v66) >= v60);
      }

      else
      {
        do
        {
          v65 = *--v64;
        }

        while (*(v14 + 4 * v65) >= v60);
      }

      if (v63 >= v64)
      {
        v73 = v63 - 1;
      }

      else
      {
        v67 = *v64;
        v68 = v62;
        v69 = &v10[v61];
        v70 = v64;
        do
        {
          *v69 = v67;
          *v70 = v68;
          do
          {
            v71 = v69[1];
            ++v69;
            v68 = v71;
          }

          while (*(v14 + 4 * v71) < v60);
          do
          {
            v72 = *--v70;
            v67 = v72;
          }

          while (*(v14 + 4 * v72) >= v60);
        }

        while (v69 < v70);
        v73 = v69 - 1;
      }

      if (v73 != v10)
      {
        *v10 = *v73;
      }

      *v73 = v59;
      if (v63 < v64)
      {
        goto LABEL_81;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(v10, v73, a3);
      v10 = v73 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(v73 + 1, a2, a3);
      if (result)
      {
        a2 = v73;
        if (!v74)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v74)
      {
LABEL_81:
        a5 = 0;
        v10 = v73 + 1;
      }
    }

    else
    {
      v60 = *(v14 + 4 * v59);
      if (*(v14 + 4 * *(v10 - 1)) < v60)
      {
        goto LABEL_60;
      }

      if (v60 >= *(v14 + 4 * *(a2 - 1)))
      {
        v76 = v10 + 1;
        do
        {
          v10 = v76;
          if (v76 >= a2)
          {
            break;
          }

          ++v76;
        }

        while (v60 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v75 = v10[1];
          ++v10;
        }

        while (v60 >= *(v14 + 4 * v75));
      }

      v77 = a2;
      if (v10 < a2)
      {
        v77 = a2;
        do
        {
          v78 = *--v77;
        }

        while (v60 < *(v14 + 4 * v78));
      }

      if (v10 < v77)
      {
        v79 = *v10;
        v80 = *v77;
        do
        {
          *v10 = v80;
          *v77 = v79;
          do
          {
            v81 = v10[1];
            ++v10;
            v79 = v81;
          }

          while (v60 >= *(v14 + 4 * v81));
          do
          {
            v82 = *--v77;
            v80 = v82;
          }

          while (v60 < *(v14 + 4 * v82));
        }

        while (v10 < v77);
      }

      v83 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v83;
      }

      a5 = 0;
      *v83 = v59;
    }
  }

  v85 = *v10;
  v86 = v10[1];
  v87 = *a3;
  v88 = *(*a3 + 4 * v86);
  v89 = *(*a3 + 4 * v85);
  v90 = *(a2 - 1);
  v91 = *(*a3 + 4 * v90);
  if (v88 < v89)
  {
    if (v91 >= v88)
    {
      *v10 = v86;
      v10[1] = v85;
      v153 = *(a2 - 1);
      if (*(v87 + 4 * v153) >= v89)
      {
        return result;
      }

      v10[1] = v153;
    }

    else
    {
      *v10 = v90;
    }

    goto LABEL_172;
  }

  if (v91 < v88)
  {
    v10[1] = v90;
    *(a2 - 1) = v86;
    v147 = *v10;
    v146 = v10[1];
    if (*(v87 + 4 * v146) < *(v87 + 4 * v147))
    {
      *v10 = v146;
      v10[1] = v147;
    }
  }

  return result;
}

void std::vector<faiss::Index *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void faiss::IndexPQStats::get_indexPQ_stats()
{
  if (__cxa_guard_acquire(&_MergedGlobals_2))
  {
    qword_1ECB70E50 = 0;
    qword_1ECB70E58 = 0;
    qword_1ECB70E60 = 0;

    __cxa_guard_release(&_MergedGlobals_2);
  }
}

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::IndexIDMapTemplate(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = 1;
  *result = &unk_1F5538EA8;
  *(result + 40) = a2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  if (*(a2 + 16))
  {
    memset(&v6, 0, sizeof(v6));
    v2 = snprintf(0, 0, "Error: '%s' failed: index must be empty on input", "index->ntotal == 0");
    std::string::resize(&v6, v2 + 1, 0);
    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v6;
    }

    else
    {
      v3 = v6.__r_.__value_.__r.__words[0];
    }

    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v6.__r_.__value_.__l.__size_;
    }

    snprintf(v3, size, "Error: '%s' failed: index must be empty on input", "index->ntotal == 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v6, "faiss::IndexIDMapTemplate<faiss::Index>::IndexIDMapTemplate(IndexT *) [IndexT = faiss::Index]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 33);
  }

  *(result + 24) = *(a2 + 24);
  *(result + 28) = *(a2 + 28);
  *(result + 8) = *(a2 + 8);
  return result;
}

void sub_1D9C6AE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, faiss::Index *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *a10;
  if (*a10)
  {
    *(a11 + 8) = v19;
    operator delete(v19);
  }

  faiss::Index::~Index(a11);
  _Unwind_Resume(a1);
}

void faiss::IndexIDMapTemplate<faiss::Index>::add_with_ids(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (*(**(a1 + 40) + 24))(*(a1 + 40));
  if (a2 >= 1)
  {
    do
    {
      std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 56), a4++);
      --a2;
    }

    while (a2);
  }

  *(a1 + 16) = *(*(a1 + 40) + 16);
}

void faiss::IndexIDMapTemplate<faiss::Index>::add()
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v1, "add does not make sense with IndexIDMap, use add_with_ids");
  faiss::FaissException::FaissException(exception, v1, "virtual void faiss::IndexIDMapTemplate<faiss::Index>::add(idx_t, const typename IndexT::component_t *) [IndexT = faiss::Index]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 46);
}

void sub_1D9C6AFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::search(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  result = (*(**(a1 + 40) + 40))(*(a1 + 40));
  v11 = a4 * a2;
  if (a4 * a2 >= 1)
  {
    do
    {
      v12 = *a6;
      if ((*a6 & 0x8000000000000000) == 0)
      {
        v12 = *(*(a1 + 56) + 8 * v12);
      }

      *a6++ = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::train(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))(*(a1 + 40));
  *(a1 + 25) = *(*(a1 + 40) + 25);
  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::reset(uint64_t a1)
{
  result = (*(**(a1 + 40) + 64))(*(a1 + 40));
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 16) = 0;
  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::remove_ids(uint64_t a1, uint64_t (***a2)(void, void))
{
  v4 = (a1 + 56);
  v9[0] = &unk_1F55391F8;
  v9[1] = a1 + 56;
  v9[2] = a2;
  v5 = (*(**(a1 + 40) + 72))(*(a1 + 40), v9);
  if (*(a1 + 16) < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (((**a2)(a2, *(*v4 + 8 * v6)) & 1) == 0)
      {
        *(*v4 + 8 * v7++) = *(*v4 + 8 * v6);
      }

      ++v6;
    }

    while (v6 < *(a1 + 16));
  }

  if (v7 != *(*(a1 + 40) + 16))
  {
    faiss::IndexIDMapTemplate<faiss::Index>::remove_ids();
  }

  *(a1 + 16) = v7;
  std::vector<long long>::resize(v4, v7);
  return v5;
}

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::range_search(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  v7 = *(a4[2] + 8 * a4[1]);
  if (v7)
  {
    v8 = a4[3];
    do
    {
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) == 0)
      {
        v9 = *(*(a1 + 56) + 8 * v9);
      }

      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

void faiss::IndexIDMapTemplate<faiss::Index>::~IndexIDMapTemplate(faiss::Index *this)
{
  *this = &unk_1F5538EA8;
  if (*(this + 48) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  faiss::Index::~Index(this);
}

void faiss::IndexIDMapTemplate<faiss::Index>::~IndexIDMapTemplate()
{
  faiss::IndexIDMapTemplate<faiss::Index>::~IndexIDMapTemplate();
}

{
    ;
  }
}

uint64_t faiss::IndexIDMapTemplate<faiss::Index>::IndexIDMapTemplate(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = 1;
  *result = &unk_1F5538EA8;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 48) = 0;
  *(result + 40) = 0;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = 1;
  *result = &unk_1F5538EA8;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 48) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::IndexIDMapTemplate(uint64_t result, uint64_t a2)
{
  *(result + 24) = 256;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 28) = 1;
  *result = &unk_1F5538F50;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  if (*(a2 + 16))
  {
    memset(&v6, 0, sizeof(v6));
    v2 = snprintf(0, 0, "Error: '%s' failed: index must be empty on input", "index->ntotal == 0");
    std::string::resize(&v6, v2 + 1, 0);
    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v6;
    }

    else
    {
      v3 = v6.__r_.__value_.__r.__words[0];
    }

    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v6.__r_.__value_.__l.__size_;
    }

    snprintf(v3, size, "Error: '%s' failed: index must be empty on input", "index->ntotal == 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v6, "faiss::IndexIDMapTemplate<faiss::IndexBinary>::IndexIDMapTemplate(IndexT *) [IndexT = faiss::IndexBinary]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 33);
  }

  *(result + 24) = *(a2 + 24);
  *(result + 28) = *(a2 + 28);
  *(result + 8) = *(a2 + 8);
  return result;
}

void sub_1D9C6B550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, faiss::IndexBinary *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *a10;
  if (*a10)
  {
    *(a11 + 7) = v19;
    operator delete(v19);
  }

  faiss::IndexBinary::~IndexBinary(a11);
  _Unwind_Resume(a1);
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::add_with_ids(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (a2 >= 1)
  {
    do
    {
      std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 48), a4++);
      --a2;
    }

    while (a2);
  }

  *(a1 + 16) = *(*(a1 + 32) + 16);
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::add()
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v1, "add does not make sense with IndexIDMap, use add_with_ids");
  faiss::FaissException::FaissException(exception, v1, "virtual void faiss::IndexIDMapTemplate<faiss::IndexBinary>::add(idx_t, const typename IndexT::component_t *) [IndexT = faiss::IndexBinary]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 46);
}

void sub_1D9C6B6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::search(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  result = (*(**(a1 + 32) + 40))(*(a1 + 32));
  v11 = a4 * a2;
  if (a4 * a2 >= 1)
  {
    do
    {
      v12 = *a6;
      if ((*a6 & 0x8000000000000000) == 0)
      {
        v12 = *(*(a1 + 48) + 8 * v12);
      }

      *a6++ = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::train(uint64_t a1)
{
  result = (*(**(a1 + 32) + 16))(*(a1 + 32));
  *(a1 + 25) = *(*(a1 + 32) + 25);
  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::reset(uint64_t a1)
{
  result = (*(**(a1 + 32) + 56))(*(a1 + 32));
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 16) = 0;
  return result;
}

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::remove_ids(uint64_t a1, uint64_t (***a2)(void, void))
{
  v4 = (a1 + 48);
  v9[0] = &unk_1F55391F8;
  v9[1] = a1 + 48;
  v9[2] = a2;
  v5 = (*(**(a1 + 32) + 64))(*(a1 + 32), v9);
  if (*(a1 + 16) < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (((**a2)(a2, *(*v4 + 8 * v6)) & 1) == 0)
      {
        *(*v4 + 8 * v7++) = *(*v4 + 8 * v6);
      }

      ++v6;
    }

    while (v6 < *(a1 + 16));
  }

  if (v7 != *(*(a1 + 32) + 16))
  {
    faiss::IndexIDMapTemplate<faiss::IndexBinary>::remove_ids();
  }

  *(a1 + 16) = v7;
  std::vector<long long>::resize(v4, v7);
  return v5;
}

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::range_search(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = (*(**(a1 + 32) + 48))(*(a1 + 32));
  v8 = *(a5[2] + 8 * a5[1]);
  if (v8)
  {
    v9 = a5[3];
    do
    {
      v10 = *v9;
      if ((*v9 & 0x8000000000000000) == 0)
      {
        v10 = *(*(a1 + 48) + 8 * v10);
      }

      *v9++ = v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::~IndexIDMapTemplate(faiss::IndexBinary *this)
{
  *this = &unk_1F5538F50;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  faiss::IndexBinary::~IndexBinary(this);
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::~IndexIDMapTemplate()
{
  faiss::IndexIDMapTemplate<faiss::IndexBinary>::~IndexIDMapTemplate();
}

{
    ;
  }
}

uint64_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::IndexIDMapTemplate(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = 1;
  *result = &unk_1F5538F50;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 256;
  *(result + 28) = 1;
  *result = &unk_1F5538F50;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  return result;
}

void faiss::IndexIDMap2Template<faiss::Index>::IndexIDMap2Template()
{
  faiss::IndexIDMapTemplate<faiss::Index>::IndexIDMapTemplate();
}

{
  faiss::IndexIDMapTemplate<faiss::Index>::IndexIDMapTemplate();
}

void *faiss::IndexIDMap2Template<faiss::Index>::construct_rev_map(void *a1)
{
  result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(a1 + 10);
  if (a1[2])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      result = std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 10, (a1[7] + v3));
      result[3] = v4++;
      v3 += 8;
    }

    while (v4 < a1[2]);
  }

  return result;
}

uint64_t faiss::IndexIDMap2Template<faiss::Index>::reconstruct(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a2;
  v4 = *(a1 + 40);
  v5 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 80), &v7);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return (*(*v4 + 80))(v4, v5[3], a3);
}

void sub_1D9C6BE1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1D9C6BE44);
}

void faiss::IndexIDMap2Template<faiss::Index>::~IndexIDMap2Template(void *a1)
{
  *a1 = &unk_1F5538FC0;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((a1 + 10));

  faiss::IndexIDMapTemplate<faiss::Index>::~IndexIDMapTemplate();
}

{
  *a1 = &unk_1F5538FC0;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((a1 + 10));

  faiss::IndexIDMapTemplate<faiss::Index>::~IndexIDMapTemplate();
}

{
  *a1 = &unk_1F5538FC0;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((a1 + 10));
  faiss::IndexIDMapTemplate<faiss::Index>::~IndexIDMapTemplate();
}

double faiss::IndexIDMap2Template<faiss::Index>::IndexIDMap2Template(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F5538FC0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  return result;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F5538FC0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  return result;
}

void faiss::IndexIDMap2Template<faiss::IndexBinary>::IndexIDMap2Template()
{
  faiss::IndexIDMapTemplate<faiss::IndexBinary>::IndexIDMapTemplate();
}

{
  faiss::IndexIDMapTemplate<faiss::IndexBinary>::IndexIDMapTemplate();
}

void *faiss::IndexIDMap2Template<faiss::IndexBinary>::construct_rev_map(void *a1)
{
  result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(a1 + 9);
  if (a1[2])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      result = std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 9, (a1[6] + v3));
      result[3] = v4++;
      v3 += 8;
    }

    while (v4 < a1[2]);
  }

  return result;
}

uint64_t faiss::IndexIDMap2Template<faiss::IndexBinary>::reconstruct(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a2;
  v4 = *(a1 + 32);
  v5 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 72), &v7);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return (*(*v4 + 72))(v4, v5[3], a3);
}

void sub_1D9C6C32C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1D9C6C354);
}

void faiss::IndexIDMap2Template<faiss::IndexBinary>::~IndexIDMap2Template(void *a1)
{
  *a1 = &unk_1F5539068;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((a1 + 9));

  faiss::IndexIDMapTemplate<faiss::IndexBinary>::~IndexIDMapTemplate();
}

{
  *a1 = &unk_1F5539068;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((a1 + 9));

  faiss::IndexIDMapTemplate<faiss::IndexBinary>::~IndexIDMapTemplate();
}

{
  *a1 = &unk_1F5539068;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((a1 + 9));
  faiss::IndexIDMapTemplate<faiss::IndexBinary>::~IndexIDMapTemplate();
}

double faiss::IndexIDMap2Template<faiss::IndexBinary>::IndexIDMap2Template(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5539068;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  return result;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5539068;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  return result;
}

double faiss::IndexSplitVectors::IndexSplitVectors(faiss::IndexSplitVectors *this, int a2, char a3)
{
  *(this + 2) = a2;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 28) = 1;
  *this = &unk_1F55390D8;
  *(this + 36) = 0;
  *(this + 37) = a3;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *(this + 2) = a2;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 28) = 1;
  *this = &unk_1F55390D8;
  *(this + 36) = 0;
  *(this + 37) = a3;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t faiss::IndexSplitVectors::add_sub_index(faiss::IndexSplitVectors *this, faiss::Index *a2)
{
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v5 >= v4)
  {
    v7 = *(this + 5);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(this + 40, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(this + 5);
    v14 = *(this + 6) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v6;
    *(this + 7) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 6) = v6;

  return faiss::IndexSplitVectors::sync_with_sub_indexes(this);
}

uint64_t faiss::IndexSplitVectors::sync_with_sub_indexes(uint64_t this)
{
  v1 = *(this + 40);
  v2 = *(this + 48);
  if (v1 != v2)
  {
    v3 = *v1;
    v4 = *(*v1 + 8);
    *(this + 64) = v4;
    v5 = *(v3 + 28);
    *(this + 28) = v5;
    *(this + 25) = *(v3 + 25);
    v6 = *(v3 + 16);
    *(this + 16) = v6;
    v7 = v2 - v1;
    if (v7 >= 2)
    {
      v8 = v1 + 1;
      v9 = v7 - 1;
      do
      {
        v10 = *v8;
        if (v5 != *(*v8 + 28))
        {
          memset(&v19, 0, sizeof(v19));
          v15 = snprintf(0, 0, "Error: '%s' failed", "metric_type == index->metric_type");
          std::string::resize(&v19, v15 + 1, 0);
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v19;
          }

          else
          {
            v16 = v19.__r_.__value_.__r.__words[0];
          }

          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v19.__r_.__value_.__l.__size_;
          }

          snprintf(v16, size, "Error: '%s' failed", "metric_type == index->metric_type");
          exception = __cxa_allocate_exception(0x20uLL);
          faiss::FaissException::FaissException(exception, &v19, "void faiss::IndexSplitVectors::sync_with_sub_indexes()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 223);
        }

        if (v6 != *(v10 + 16))
        {
          memset(&v19, 0, sizeof(v19));
          v11 = snprintf(0, 0, "Error: '%s' failed", "ntotal == index->ntotal");
          std::string::resize(&v19, v11 + 1, 0);
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v19;
          }

          else
          {
            v12 = v19.__r_.__value_.__r.__words[0];
          }

          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v13 = v19.__r_.__value_.__l.__size_;
          }

          snprintf(v12, v13, "Error: '%s' failed", "ntotal == index->ntotal");
          v14 = __cxa_allocate_exception(0x20uLL);
          faiss::FaissException::FaissException(v14, &v19, "void faiss::IndexSplitVectors::sync_with_sub_indexes()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 224);
        }

        v4 += *(v10 + 8);
        *(this + 64) = v4;
        ++v8;
        --v9;
      }

      while (v9);
    }
  }

  return this;
}

void sub_1D9C6C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexSplitVectors::add(faiss::IndexSplitVectors *this, uint64_t a2, const float *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v4, "not implemented");
  faiss::FaissException::FaissException(exception, v4, "virtual void faiss::IndexSplitVectors::add(idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 230);
}

void sub_1D9C6C954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexSplitVectors::search(faiss::IndexSplitVectors *this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    if (*(this + 8) == *(this + 2))
    {
      operator new[]();
    }

    memset(&v14, 0, sizeof(v14));
    v10 = snprintf(0, 0, "Error: '%s' failed: not enough indexes compared to # dimensions", "sum_d == d");
    std::string::resize(&v14, v10 + 1, 0);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v14;
    }

    else
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    snprintf(v11, size, "Error: '%s' failed: not enough indexes compared to # dimensions", "sum_d == d");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v14, "virtual void faiss::IndexSplitVectors::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 241);
  }

  memset(&v14, 0, sizeof(v14));
  v6 = snprintf(0, 0, "Error: '%s' failed: search implemented only for k=1", "k == 1");
  std::string::resize(&v14, v6 + 1, 0);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v14;
  }

  else
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v14.__r_.__value_.__l.__size_;
  }

  snprintf(v7, v8, "Error: '%s' failed: search implemented only for k=1", "k == 1");
  v9 = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(v9, &v14, "virtual void faiss::IndexSplitVectors::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 239);
}

void sub_1D9C6CFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  __cxa_free_exception(v35);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexSplitVectors::search(long long,float const*,long long,float *,long long *)const::$_1::operator()(void *a1, int a2)
{
  v3 = a1[7];
  if (*(v3 + 24) == 1)
  {
    printf("begin query shard %d on %lld points\n", a2, *a1);
  }

  v4 = *(v3 + 40);
  v5 = 0;
  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      v7 = *v4++;
      v5 += *(v7 + 8);
      --v6;
    }

    while (v6);
  }

  operator new[]();
}

void faiss::IndexSplitVectors::train(faiss::IndexSplitVectors *this, uint64_t a2, const float *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v4, "not implemented");
  faiss::FaissException::FaissException(exception, v4, "virtual void faiss::IndexSplitVectors::train(idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 316);
}

void sub_1D9C6D368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexSplitVectors::reset(faiss::IndexSplitVectors *this)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "not implemented");
  faiss::FaissException::FaissException(exception, v2, "virtual void faiss::IndexSplitVectors::reset()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 320);
}

void sub_1D9C6D420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::IndexSplitVectors::~IndexSplitVectors(faiss::IndexSplitVectors *this)
{
  *this = &unk_1F55390D8;
  if (*(this + 36))
  {
    v2 = *(this + 5);
    v3 = *(this + 6);
    if (v3 != v2)
    {
      v4 = 0;
      do
      {
        v5 = v2[v4];
        if (v5)
        {
          (*(*v5 + 8))(v2[v4]);
          v2 = *(this + 5);
          v3 = *(this + 6);
        }

        ++v4;
      }

      while (v4 < (v3 - v2) >> 3);
    }
  }

  else
  {
    v2 = *(this + 5);
  }

  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  faiss::Index::~Index(this);
}

{
  faiss::IndexSplitVectors::~IndexSplitVectors(this);

  JUMPOUT(0x1DA73F410);
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E858A9A8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::vector<std::unique_ptr<faiss::WorkerThread>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<faiss::WorkerThread>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

faiss::WorkerThread *std::vector<std::unique_ptr<faiss::WorkerThread>>::__base_destruct_at_end[abi:ne200100](faiss::WorkerThread *result, faiss::WorkerThread **a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<faiss::WorkerThread>>>::destroy[abi:ne200100]<std::unique_ptr<faiss::WorkerThread>,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

faiss::WorkerThread *std::allocator_traits<std::allocator<std::unique_ptr<faiss::WorkerThread>>>::destroy[abi:ne200100]<std::unique_ptr<faiss::WorkerThread>,0>(uint64_t a1, faiss::WorkerThread **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    faiss::WorkerThread::~WorkerThread(result);

    JUMPOUT(0x1DA73F410);
  }

  return result;
}

void std::vector<std::future<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::future<BOOL>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_ullong *std::vector<std::future<BOOL>>::__base_destruct_at_end[abi:ne200100](atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<faiss::WorkerThread>>::~__split_buffer(uint64_t *a1)
{
  std::__split_buffer<std::unique_ptr<faiss::WorkerThread>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

faiss::WorkerThread *std::__split_buffer<std::unique_ptr<faiss::WorkerThread>>::__destruct_at_end[abi:ne200100](faiss::WorkerThread *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 4);
    *(v3 + 2) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<faiss::WorkerThread>>>::destroy[abi:ne200100]<std::unique_ptr<faiss::WorkerThread>,0>(v5, (v4 - 8));
  }

  return result;
}

__n128 std::__function::__func<faiss::IndexSplitVectors::search(long long,float const*,long long,float *,long long *)::$_0,std::allocator<faiss::IndexSplitVectors::search(long long,float const*,long long,float *,long long *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5539238;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<faiss::IndexSplitVectors::search(long long,float const*,long long,float *,long long *)::$_0,std::allocator<faiss::IndexSplitVectors::search(long long,float const*,long long,float *,long long *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::future<BOOL>>::__emplace_back_slow_path<std::future<BOOL>>(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<BOOL>>,std::future<BOOL>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::future<BOOL>>::~__split_buffer(&v13);
  return v12;
}

void sub_1D9C6DB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::future<BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<BOOL>>,std::future<BOOL>*>(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
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
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    if (a2 != a3)
    {
      do
      {
        v7 = *v5;
        if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

atomic_ullong *std::_AllocatorDestroyRangeReverse<std::allocator<std::future<BOOL>>,std::future<BOOL>*>::operator()[abi:ne200100](atomic_ullong *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        result = (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *std::__split_buffer<std::future<BOOL>>::~__split_buffer(atomic_ullong *a1)
{
  std::__split_buffer<std::future<BOOL>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::__split_buffer<std::future<BOOL>>::__destruct_at_end[abi:ne200100](atomic_ullong *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      v4[2] = v2 - 8;
      if (result)
      {
        if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          result = (*(*result + 16))(result);
        }
      }

      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void faiss::IndexIDMapTemplate<faiss::Index>::remove_ids()
{
  fprintf(*MEMORY[0x1E69E9848], "Faiss assertion '%s' failed in %s at %s:%d\n", "j == index->ntotal", "virtual size_t faiss::IndexIDMapTemplate<faiss::Index>::remove_ids(const IDSelector &) [IndexT = faiss::Index]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 135);
  abort();
}

{
    ;
  }
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::remove_ids()
{
  fprintf(*MEMORY[0x1E69E9848], "Faiss assertion '%s' failed in %s at %s:%d\n", "j == index->ntotal", "virtual size_t faiss::IndexIDMapTemplate<faiss::IndexBinary>::remove_ids(const IDSelector &) [IndexT = faiss::IndexBinary]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/MetaIndexes.cpp", 135);
  abort();
}

{
    ;
  }
}

double faiss::DirectMap::DirectMap(faiss::DirectMap *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 1065353216;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 1065353216;
  return result;
}

void faiss::DirectMap::set_type(uint64_t a1, unsigned int a2, void *a3, unint64_t a4)
{
  if (a2 >= 3)
  {
    memset(&v26, 0, sizeof(v26));
    v19 = snprintf(0, 0, "Error: '%s' failed", "new_type == NoMap || new_type == Array || new_type == Hashtable");
    std::string::resize(&v26, v19 + 1, 0);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    snprintf(v20, size, "Error: '%s' failed", "new_type == NoMap || new_type == Array || new_type == Hashtable");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v26, "void faiss::DirectMap::set_type(Type, const InvertedLists *, size_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 27);
  }

  v4 = a2;
  if (*a1 != a2)
  {
    v8 = (a1 + 8);
    *(a1 + 16) = *(a1 + 8);
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear((a1 + 32));
    *a1 = v4;
    if (v4)
    {
      if (v4 == 1)
      {
        v26.__r_.__value_.__r.__words[0] = -1;
        std::vector<long long>::resize((a1 + 8), a4, &v26);
      }

      else
      {
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(a1 + 32, vcvtps_u32_f32(a4 / *(a1 + 64)));
      }

      if (a3[1])
      {
        v9 = 0;
        v23 = v4;
        do
        {
          v10 = (**a3)(a3, v9);
          v26.__r_.__value_.__r.__words[0] = a3;
          v11 = (*(*a3 + 16))(a3, v9);
          v26.__r_.__value_.__l.__size_ = v11;
          v26.__r_.__value_.__r.__words[2] = v9;
          if (v4 == 1)
          {
            if (v10)
            {
              for (i = 0; i != v10; ++i)
              {
                v13 = *(v11 + 8 * i);
                if ((v13 & 0x8000000000000000) != 0 || v13 >= a4)
                {
                  memset(&v25, 0, sizeof(v25));
                  v15 = snprintf(0, 0, "Error: '%s' failed: direct map supported only for seuquential ids", "0 <= idlist[ofs] && idlist[ofs] < ntotal");
                  std::string::resize(&v25, v15 + 1, 0);
                  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v16 = &v25;
                  }

                  else
                  {
                    v16 = v25.__r_.__value_.__r.__words[0];
                  }

                  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v17 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v17 = v25.__r_.__value_.__l.__size_;
                  }

                  snprintf(v16, v17, "Error: '%s' failed: direct map supported only for seuquential ids", "0 <= idlist[ofs] && idlist[ofs] < ntotal");
                  v18 = __cxa_allocate_exception(0x20uLL);
                  faiss::FaissException::FaissException(v18, &v25, "void faiss::DirectMap::set_type(Type, const InvertedLists *, size_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 54);
                }

                *(*v8 + 8 * v13) = i | (v9 << 32);
              }
            }
          }

          else if (v10)
          {
            for (j = 0; j != v10; ++j)
            {
              v24 = *(v26.__r_.__value_.__l.__size_ + 8 * j);
              v25.__r_.__value_.__r.__words[0] = &v24;
              std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 32), &v24)[3] = j | (v9 << 32);
            }
          }

          faiss::InvertedLists::ScopedIds::~ScopedIds(&v26);
          ++v9;
          v4 = v23;
        }

        while (v9 < a3[1]);
      }
    }
  }
}

void sub_1D9C6E1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<long long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(a1, a2 - v3, a3);
  }
}

uint64_t faiss::DirectMap::get(faiss::DirectMap *this, unint64_t a2)
{
  v19 = a2;
  if (*this == 2)
  {
    v8 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(this + 4, &v19);
    if (!v8)
    {
      memset(&v18, 0, sizeof(v18));
      v14 = snprintf(0, 0, "Error: '%s' failed: key not found", "res != hashtable.end()");
      std::string::resize(&v18, v14 + 1, 0);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v18;
      }

      else
      {
        v15 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      snprintf(v15, size, "Error: '%s' failed: key not found", "res != hashtable.end()");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v18, "DirectMap::idx_t faiss::DirectMap::get(idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 78);
    }

    return v8[3];
  }

  else
  {
    if (*this != 1)
    {
      v13 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v18, "direct map not initialized");
      faiss::FaissException::FaissException(v13, &v18, "DirectMap::idx_t faiss::DirectMap::get(idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 81);
    }

    if ((a2 & 0x8000000000000000) != 0 || (v2 = *(this + 1), a2 >= (*(this + 2) - v2) >> 3))
    {
      memset(&v18, 0, sizeof(v18));
      v9 = snprintf(0, 0, "Error: '%s' failed: invalid key", "key >= 0 && key < array.size()");
      std::string::resize(&v18, v9 + 1, 0);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v18;
      }

      else
      {
        v10 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v18.__r_.__value_.__l.__size_;
      }

      snprintf(v10, v11, "Error: '%s' failed: invalid key", "key >= 0 && key < array.size()");
      v12 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v12, &v18, "DirectMap::idx_t faiss::DirectMap::get(idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 72);
    }

    result = *(v2 + 8 * a2);
    if (result < 0)
    {
      memset(&v18, 0, sizeof(v18));
      v4 = snprintf(0, 0, "Error: '%s' failed: -1 entry in direct_map", "lo >= 0");
      std::string::resize(&v18, v4 + 1, 0);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v18;
      }

      else
      {
        v5 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v6 = v18.__r_.__value_.__l.__size_;
      }

      snprintf(v5, v6, "Error: '%s' failed: -1 entry in direct_map", "lo >= 0");
      v7 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v7, &v18, "DirectMap::idx_t faiss::DirectMap::get(idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 74);
    }
  }

  return result;
}

void sub_1D9C6E548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::DirectMap::add_single_id(faiss::DirectMap *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      v6 = *(this + 1);
      v7 = *(this + 2);
      v5 = (this + 8);
      if (a2 != (v7 - v6) >> 3)
      {
        faiss::DirectMap::add_single_id();
      }

      if (a3 < 0)
      {
        v8 = -1;
      }

      else
      {
        v8 = a4 | (a3 << 32);
      }

      v10 = v8;
      std::vector<unsigned long>::push_back[abi:ne200100](v5, &v10);
    }

    else if ((a3 & 0x8000000000000000) == 0 && v4 == 2)
    {
      v10 = &v9;
      std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 4, &v9)[3] = a4 | (a3 << 32);
    }
  }
}

_DWORD *faiss::DirectMap::check_can_add(_DWORD *this, const uint64_t *a2)
{
  if (a2)
  {
    if (*this == 1)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v3, "cannot have array direct map and add with ids");
      faiss::FaissException::FaissException(exception, v3, "void faiss::DirectMap::check_can_add(const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 105);
    }
  }

  return this;
}

void sub_1D9C6E700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

faiss::DirectMapAdd *faiss::DirectMapAdd::DirectMapAdd(faiss::DirectMapAdd *this, faiss::DirectMap *a2, unint64_t a3, const uint64_t *a4)
{
  *this = a2;
  v5 = *a2;
  *(this + 2) = *a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v5 == 2)
  {
    v12.__r_.__value_.__r.__words[0] = -1;
    std::vector<long long>::resize(this + 5, a3, &v12);
  }

  else if (v5 == 1)
  {
    if (a4)
    {
      memset(&v12, 0, sizeof(v12));
      v8 = snprintf(0, 0, "Error: '%s' failed", "xids == nullptr");
      std::string::resize(&v12, v8 + 1, 0);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12.__r_.__value_.__r.__words[0];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      snprintf(v9, size, "Error: '%s' failed", "xids == nullptr");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v12, "faiss::DirectMapAdd::DirectMapAdd(DirectMap &, size_t, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 114);
    }

    v6 = (*(a2 + 2) - *(a2 + 1)) >> 3;
    *(this + 2) = v6;
    v12.__r_.__value_.__r.__words[0] = -1;
    std::vector<long long>::resize(a2 + 1, a3 + v6, &v12);
  }

  return this;
}

void sub_1D9C6E89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 48) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::DirectMapAdd::add(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 8);
  if (v4 == 2)
  {
    v5 = *(this + 40);
  }

  else
  {
    if (v4 != 1)
    {
      return this;
    }

    v5 = *(*this + 8) + 8 * *(this + 16);
  }

  *(v5 + 8 * a2) = a4 | (a3 << 32);
  return this;
}

void faiss::DirectMapAdd::~DirectMapAdd(faiss::DirectMapAdd *this)
{
  if (*(this + 2) == 2 && *(this + 3))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 4);
      if (v3)
      {
        v4 = *(v3 + 8 * v2);
      }

      else
      {
        v4 = v2 + *(this + 2);
      }

      v8[0] = v4;
      v5 = *(*(this + 5) + 8 * v2);
      v6 = *this;
      v8[2] = v8;
      std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v6 + 32), v8)[3] = v5;
      ++v2;
    }

    while (*(this + 3) > v2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }
}

uint64_t faiss::DirectMap::remove_ids(uint64_t a1, unsigned int (***a2)(const void *, void), void *a3)
{
  v6 = a3[1];
  std::vector<long long>::vector[abi:ne200100](__p, v6);
  if (*a1 != 2)
  {
    if (*a1)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v35, "remove not supported with this direct_map format");
      faiss::FaissException::FaissException(exception, &v35, "size_t faiss::DirectMap::remove_ids(const IDSelector &, InvertedLists *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 209);
    }

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = (**a3)(a3, i);
        v35.__r_.__value_.__r.__words[0] = a3;
        v35.__r_.__value_.__l.__size_ = (*(*a3 + 16))(a3, i);
        v35.__r_.__value_.__r.__words[2] = i;
        if (v8 < 1)
        {
          v10 = v8;
        }

        else
        {
          v9 = 0;
          v10 = v8;
          do
          {
            if ((**a2)(a2, *(v35.__r_.__value_.__l.__size_ + 8 * v9)))
            {
              v11 = (*(*a3 + 40))(a3, i, --v10);
              v32 = a3;
              v33 = (*(*a3 + 48))(a3, i, v10);
              v34 = i;
              (*(*a3 + 80))(a3, i, v9, v11, v33);
              faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v32);
            }

            else
            {
              ++v9;
            }
          }

          while (v9 < v10);
        }

        *(__p[0] + i) = v8 - v10;
        faiss::InvertedLists::ScopedIds::~ScopedIds(&v35);
      }

      v12 = 0;
      for (j = 0; j != v6; ++j)
      {
        v14 = *(__p[0] + j);
        if (v14 >= 1)
        {
          v15 = (**a3)(a3, j);
          (*(*a3 + 96))(a3, j, v15 - *(__p[0] + j));
          v12 += v14;
        }
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  if (!v16)
  {
    memset(&v35, 0, sizeof(v35));
    v27 = snprintf(0, 0, "Error: '%s' failed: remove with hashtable works only with IDSelectorArray", "sela");
    std::string::resize(&v35, v27 + 1, 0);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v35;
    }

    else
    {
      v28 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    snprintf(v28, size, "Error: '%s' failed: remove with hashtable works only with IDSelectorArray", "sela");
    v30 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v30, &v35, "size_t faiss::DirectMap::remove_ids(const IDSelector &, InvertedLists *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 183);
  }

  v17 = v16;
  if (!v16[1])
  {
    goto LABEL_28;
  }

  v12 = 0;
  v18 = 0;
  do
  {
    v32 = *(v17[2] + 8 * v18);
    v19 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 32), &v32);
    v20 = v19;
    if (v19)
    {
      v21 = v19[3];
      v22 = (**a3)(a3, HIDWORD(v21));
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::erase((a1 + 32), v20);
      v23 = v22 - 1;
      if (v21 < (v22 - 1))
      {
        v24 = (*(*a3 + 40))(a3, HIDWORD(v21), v22 - 1);
        v31 = v24;
        v35.__r_.__value_.__r.__words[0] = a3;
        v35.__r_.__value_.__l.__size_ = (*(*a3 + 48))(a3, HIDWORD(v21), v23);
        v35.__r_.__value_.__r.__words[2] = HIDWORD(v21);
        (*(*a3 + 80))(a3, HIDWORD(v21), v21, v24, v35.__r_.__value_.__l.__size_);
        faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v35);
        v35.__r_.__value_.__r.__words[0] = &v31;
        std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 32), &v31)[3] = v21;
      }

      (*(*a3 + 96))(a3, HIDWORD(v21), v23);
      ++v12;
    }

    ++v18;
  }

  while (v18 < v17[1]);
LABEL_29:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_1D9C6EFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  __cxa_free_exception(v21);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

_DWORD *faiss::DirectMap::update_codes(_DWORD *this, faiss::InvertedLists *a2, int a3, unint64_t *a4, uint64_t *a5, const unsigned __int8 *a6)
{
  v31 = this;
  if (*this != 1)
  {
    memset(&v32, 0, sizeof(v32));
    v26 = snprintf(0, 0, "Error: '%s' failed", "type == Array");
    std::string::resize(&v32, v26 + 1, 0);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v32;
    }

    else
    {
      v27 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    snprintf(v27, size, "Error: '%s' failed", "type == Array");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v32, "void faiss::DirectMap::update_codes(InvertedLists *, int, const idx_t *, const idx_t *, const uint8_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 220);
  }

  if (a3)
  {
    v30 = *(a2 + 2);
    v10 = a3;
    do
    {
      v12 = *a4++;
      v11 = v12;
      if ((v12 & 0x8000000000000000) != 0 || (v13 = *(v31 + 1), v11 >= (*(v31 + 2) - v13) >> 3))
      {
        memset(&v32, 0, sizeof(v32));
        v22 = snprintf(0, 0, "Error: '%s' failed: id to update out of range", "0 <= id && id < array.size()");
        std::string::resize(&v32, v22 + 1, 0);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v32;
        }

        else
        {
          v23 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v32.__r_.__value_.__l.__size_;
        }

        snprintf(v23, v24, "Error: '%s' failed: id to update out of range", "0 <= id && id < array.size()");
        v25 = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(v25, &v32, "void faiss::DirectMap::update_codes(InvertedLists *, int, const idx_t *, const idx_t *, const uint8_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/DirectMap.cpp", 227);
      }

      v14 = *(v13 + 8 * v11);
      v15 = v14;
      v16 = HIDWORD(v14);
      v17 = (**a2)(a2, HIDWORD(v14)) - 1;
      if (v14 != v17)
      {
        v18 = (*(*a2 + 40))(a2, HIDWORD(v14), v17);
        *(*(v31 + 1) + 8 * v18) = v14;
        v19 = v18;
        v20 = (*(*a2 + 48))(a2, v16, v17);
        (*(*a2 + 80))(a2, v16, v15, v19, v20);
      }

      (*(*a2 + 96))(a2, v16, v17);
      v21 = *a5++;
      *(*(v31 + 1) + 8 * v11) = (**a2)(a2, v21) | (v21 << 32);
      this = (*(*a2 + 64))(a2, v21, v11, a6);
      a6 += v30;
      --v10;
    }

    while (v10);
  }

  return this;
}

void sub_1D9C6F418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1D9C84A30)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1D9C84A30)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

faiss::Level1Quantizer *faiss::Level1Quantizer::Level1Quantizer(faiss::Level1Quantizer *this, faiss::Index *a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  faiss::ClusteringParameters::ClusteringParameters((this + 24));
  *(this + 8) = 0;
  *(this + 6) = 10;
  return this;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  faiss::ClusteringParameters::ClusteringParameters((this + 24));
  *(this + 8) = 0;
  *(this + 6) = 10;
  return this;
}

faiss::Level1Quantizer *faiss::Level1Quantizer::Level1Quantizer(faiss::Level1Quantizer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  faiss::ClusteringParameters::ClusteringParameters((this + 24));
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  faiss::ClusteringParameters::ClusteringParameters((this + 24));
  *(this + 8) = 0;
  return this;
}

void faiss::Level1Quantizer::~Level1Quantizer(faiss::Level1Quantizer *this)
{
  if (*(this + 17) == 1)
  {
    v2 = *this;
    if (*this)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

{
  if (*(this + 17) == 1)
  {
    v2 = *this;
    if (*this)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

void faiss::Level1Quantizer::train_q1(void *a1, unint64_t a2, const float *a3, int a4, int a5)
{
  v10 = *a1;
  v11 = *(v10 + 2);
  if (*(v10 + 25) == 1 && *(v10 + 2) == a1[1])
  {
    if (a4)
    {

      puts("IVF quantizer does not need training.");
    }

    return;
  }

  v12 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    if (a4)
    {
      printf("Training level-1 quantizer on %zd vectors in %zdD\n", a2, v11);
    }

    v20 = faiss::Clustering::Clustering(&v29, v11, *(a1 + 2), (a1 + 3));
    (*(**a1 + 64))(v20);
    v21 = a1[8];
    if (v21)
    {
      faiss::Clustering::train(&v29, a2, a3, v21, 0);
      (*(**a1 + 24))(*a1, a1[1], v30);
    }

    else
    {
      faiss::Clustering::train(&v29, a2, a3, *a1, 0);
    }

    *(*a1 + 25) = 1;
    goto LABEL_42;
  }

  if (v12 == 2)
  {
    if (a4)
    {
      if (a1[8])
      {
        v18 = "(user provided index)";
      }

      else
      {
        v18 = "";
      }

      printf("Training L2 quantizer on %zd vectors in %zdD%s\n", a2, *(v10 + 2), v18);
    }

    if (a5 != 1 && (a5 || (*(a1 + 33) & 1) == 0))
    {
      memset(&v29, 0, sizeof(v29));
      v22 = snprintf(0, 0, "Error: '%s' failed", "metric_type == METRIC_L2 || (metric_type == METRIC_INNER_PRODUCT && cp.spherical)");
      std::string::resize(&v29, v22 + 1, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v29;
      }

      else
      {
        v23 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      snprintf(v23, size, "Error: '%s' failed", "metric_type == METRIC_L2 || (metric_type == METRIC_INNER_PRODUCT && cp.spherical)");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v29, "void faiss::Level1Quantizer::train_q1(size_t, const float *, BOOL, MetricType)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 104);
    }

    faiss::Clustering::Clustering(&v29, v11, *(a1 + 2), (a1 + 3));
    v19 = a1[8];
    if (v19)
    {
      faiss::Clustering::train(&v29, a2, a3, v19, 0);
      if (!a4)
      {
LABEL_31:
        (*(**a1 + 24))(*a1, a1[1], v30);
LABEL_42:
        faiss::Clustering::~Clustering(&v29);
        return;
      }
    }

    else
    {
      faiss::IndexFlat::IndexFlat(v26, v11, 1);
      v26[0] = &unk_1F5537258;
      faiss::Clustering::train(&v29, a2, a3, v26, 0);
      v26[0] = &unk_1F5538898;
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      faiss::Index::~Index(v26);
      if (!a4)
      {
        goto LABEL_31;
      }
    }

    puts("Adding centroids to quantizer");
    goto LABEL_31;
  }

  if (v12 == 1)
  {
    if (a4)
    {
      puts("IVF quantizer trains alone...");
      v10 = *a1;
    }

    (*(*v10 + 16))(v10, a2, a3);
    v13 = *a1;
    *(v13 + 24) = a4;
    if (*(v13 + 2) != a1[1])
    {
      memset(&v29, 0, sizeof(v29));
      v14 = snprintf(0, 0, "Error: '%s' failed: nlist not consistent with quantizer size", "quantizer->ntotal == nlist");
      std::string::resize(&v29, v14 + 1, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v29;
      }

      else
      {
        v15 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v29.__r_.__value_.__l.__size_;
      }

      snprintf(v15, v16, "Error: '%s' failed: nlist not consistent with quantizer size", "quantizer->ntotal == nlist");
      v17 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v17, &v29, "void faiss::Level1Quantizer::train_q1(size_t, const float *, BOOL, MetricType)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 79);
    }
  }
}

void sub_1D9C6FD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::Level1Quantizer::coarse_code_size(faiss::Level1Quantizer *this)
{
  v1 = *(this + 1);
  result = 0;
  v3 = v1 - 1;
  if (v3)
  {
    do
    {
      ++result;
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t faiss::Level1Quantizer::encode_listno(uint64_t this, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(this + 8) - 1;
  if (*(this + 8) != 1)
  {
    do
    {
      *a3++ = a2;
      a2 >>= 8;
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  return this;
}

unint64_t faiss::Level1Quantizer::decode_listno(faiss::Level1Quantizer *this, const unsigned __int8 *a2)
{
  v2 = *(this + 1);
  v3 = v2 - 1;
  if (v2 == 1)
  {
    result = 0;
  }

  else
  {
    v4 = 0;
    result = 0;
    do
    {
      v6 = *a2++;
      result |= v6 << v4;
      v4 += 8;
      v7 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v7);
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  if (result >= v2)
  {
LABEL_8:
    memset(&v12, 0, sizeof(v12));
    v8 = snprintf(0, 0, "Error: '%s' failed", "list_no >= 0 && list_no < nlist");
    std::string::resize(&v12, v8 + 1, 0);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    snprintf(v9, size, "Error: '%s' failed", "list_no >= 0 && list_no < nlist");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v12, "Index::idx_t faiss::Level1Quantizer::decode_listno(const uint8_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 148);
  }

  return result;
}

void sub_1D9C6FF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::IndexIVF(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = &unk_1F5538160;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = a6;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  faiss::ClusteringParameters::ClusteringParameters((a1 + 64));
  *(a1 + 104) = 0;
  *(a1 + 64) = 10;
  *a1 = &unk_1F55392B8;
  operator new();
}

void sub_1D9C7012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  faiss::DirectMap::~DirectMap((v15 + 160));
  if (*(v15 + 57) == 1)
  {
    v18 = *(v15 + 40);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  faiss::Index::~Index(v15);
  _Unwind_Resume(a1);
}

faiss::IndexIVF *faiss::IndexIVF::IndexIVF(faiss::IndexIVF *this)
{
  *this = &unk_1F5538160;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 28) = 1;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  faiss::ClusteringParameters::ClusteringParameters((this + 64));
  *this = &unk_1F55392B8;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  *(this + 8) = xmmword_1D9C84A30;
  *(this + 18) = 0;
  *(this + 19) = 0x40000000000;
  faiss::DirectMap::DirectMap((this + 160));
  return this;
}

void sub_1D9C70290(_Unwind_Exception *a1)
{
  if (*(v1 + 57) == 1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }
  }

  faiss::Index::~Index(v1);
  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVF::add_core(faiss::IndexIVF *this, uint64_t a2, const float *a3, const uint64_t *a4, const uint64_t *a5)
{
  v5 = a5;
  if (a2 <= 0x10000)
  {
    if (a5)
    {
      if (*(this + 25))
      {
        faiss::DirectMap::check_can_add(this + 40, a4);
        v18 = 0;
        if (a2)
        {
          v19 = v5;
          v20 = a2;
          do
          {
            v21 = *v19++;
            v18 += v21 >> 63;
            --v20;
          }

          while (v20);
        }

        operator new[]();
      }

      memset(&v31, 0, sizeof(v31));
      v26 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
      std::string::resize(&v31, v26 + 1, 0);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v31;
      }

      else
      {
        v27 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      snprintf(v27, size, "Error: '%s' failed", "is_trained");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v31, "virtual void faiss::IndexIVF::add_core(idx_t, const float *, const idx_t *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 225);
    }

    memset(&v31, 0, sizeof(v31));
    v22 = snprintf(0, 0, "Error: '%s' failed", "coarse_idx");
    std::string::resize(&v31, v22 + 1, 0);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v31;
    }

    else
    {
      v23 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v31.__r_.__value_.__l.__size_;
    }

    snprintf(v23, v24, "Error: '%s' failed", "coarse_idx");
    v25 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v25, &v31, "virtual void faiss::IndexIVF::add_core(idx_t, const float *, const idx_t *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 224);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0x10000;
  v12 = a4;
  do
  {
    v13 = v9 + 0x10000;
    if (a2 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = a2;
    }

    if (v13 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = v9 + 0x10000;
    }

    if (*(this + 24) == 1)
    {
      printf("   IndexIVF::add_with_ids %lld:%lld\n", v9, v15);
    }

    if (a4)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    result = (*(*this + 152))(this, v14 + v8, &a3[v9 * *(this + 2)], v16, v5);
    v5 += 0x10000;
    v12 += 0x10000;
    v10 += 0x10000;
    v8 -= 0x10000;
    v9 += 0x10000;
  }

  while (v13 < a2);
  return result;
}

void sub_1D9C70770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::search(faiss::IndexIVF *this, uint64_t a2, const float *a3, void *a4, float *a5, uint64_t *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 <= 0)
  {
    memset(&v26, 0, 24);
    v14 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v26, v14 + 1, 0);
    if (v26.__m_.__opaque[15] >= 0)
    {
      sig = &v26;
    }

    else
    {
      sig = v26.__m_.__sig;
    }

    if (v26.__m_.__opaque[15] >= 0)
    {
      v16 = v26.__m_.__opaque[15];
    }

    else
    {
      v16 = *v26.__m_.__opaque;
    }

    snprintf(sig, v16, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v26, "virtual void faiss::IndexIVF::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 298);
  }

  v6 = *(this + 17);
  if (v6 >= *(this + 6))
  {
    v6 = *(this + 6);
  }

  if (!v6)
  {
    memset(&v26, 0, 24);
    v18 = snprintf(0, 0, "Error: '%s' failed", "nprobe > 0");
    std::string::resize(&v26, v18 + 1, 0);
    if (v26.__m_.__opaque[15] >= 0)
    {
      v19 = &v26;
    }

    else
    {
      v19 = v26.__m_.__sig;
    }

    if (v26.__m_.__opaque[15] >= 0)
    {
      v20 = v26.__m_.__opaque[15];
    }

    else
    {
      v20 = *v26.__m_.__opaque;
    }

    snprintf(v19, v20, "Error: '%s' failed", "nprobe > 0");
    v21 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v21, &v26, "virtual void faiss::IndexIVF::search(idx_t, const float *, idx_t, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 301);
  }

  v25[3] = this;
  v25[4] = a4;
  v25[5] = v6;
  if ((*(this + 38) & ~*(this + 39)) != 0)
  {
    faiss::IndexIVFStats::get_indexIVF_stats(this);
    faiss::IndexIVF::search(long long,float const*,long long,float *,long long *)const::$_0::operator()();
  }

  v8 = a2;
  v9 = std::vector<faiss::IndexIVFStats>::vector[abi:ne200100](v25, a2);
  v26.__m_.__sig = 850045863;
  memset(v26.__m_.__opaque, 0, sizeof(v26.__m_.__opaque));
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2 > 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = a2;
    do
    {
      if ((a2 + v11) / a2 > v11 / a2)
      {
        faiss::IndexIVF::search(long long,float const*,long long,float *,long long *)const::$_0::operator()();
      }

      v11 += a2;
      v10 += 48;
      --v12;
    }

    while (v12);
    v13 = 0;
    do
    {
      faiss::IndexIVFStats::get_indexIVF_stats(v9);
      faiss::IndexIVFStats::add(&unk_1ECB70E70, v25[0] + v13);
      v13 += 48;
      --v8;
    }

    while (v8);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex(&v26);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }
}

void sub_1D9C70C08()
{
  if (v1 < 0)
  {
    operator delete(v0);
  }

  std::mutex::~mutex(&v3);
  if (v2)
  {
    JUMPOUT(0x1D9C70CBCLL);
  }

  JUMPOUT(0x1D9C70CC8);
}

void sub_1D9C70C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::mutex *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::mutex::unlock(&a23);
  __cxa_end_catch();
  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::mutex::~mutex(&v26);
  if (v25)
  {
    JUMPOUT(0x1D9C70CBCLL);
  }

  JUMPOUT(0x1D9C70CC8);
}

void sub_1D9C70C2C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(v2);
}

void sub_1D9C70C3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (v19 < 0)
      {
        operator delete(v18);
      }

      std::mutex::~mutex(&v21);
      if (v20)
      {
        JUMPOUT(0x1D9C70CBCLL);
      }

      JUMPOUT(0x1D9C70CC8);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_1D9C70C94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_free_exception(v28);
  if (a28 < 0)
  {
    JUMPOUT(0x1D9C70CBCLL);
  }

  _Unwind_Resume(v29);
}

void sub_1D9C70EB4(_Unwind_Exception *a1)
{
  MEMORY[0x1DA73F3F0](v3, 0x1000C8052888210);
  MEMORY[0x1DA73F3F0](v2, v1);
  _Unwind_Resume(a1);
}

void *faiss::IndexIVFStats::get_indexIVF_stats(faiss::IndexIVFStats *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    faiss::IndexIVFStats::get_indexIVF_stats();
  }

  return &unk_1ECB70E70;
}

int64x2_t faiss::IndexIVFStats::add(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *a1 = vaddq_s64(*a1, *a2);
  result = vaddq_s64(v2, *(a2 + 16));
  v4 = vaddq_f64(*(a2 + 32), *(a1 + 32));
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  return result;
}

void faiss::IndexIVF::search_preassigned(std::string::size_type a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t *a5, float *a6, _DWORD *a7, void *a8, char a9, uint64_t a10, void *a11)
{
  v356 = *MEMORY[0x1E69E9840];
  v354 = a4;
  v353 = a9;
  if (a4 <= 0)
  {
    memset(&v339, 0, sizeof(v339));
    v302 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v339, v302 + 1, 0);
    if ((v339.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v303 = &v339;
    }

    else
    {
      v303 = v339.__r_.__value_.__r.__words[0];
    }

    if ((v339.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v339.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v339.__r_.__value_.__l.__size_;
    }

    snprintf(v303, size, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v339, "virtual void faiss::IndexIVF::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 393);
  }

  v12 = a1;
  v13 = (a10 + 8);
  if (!a10)
  {
    v13 = (a1 + 136);
  }

  v14 = *v13;
  if (v14 >= *(a1 + 48))
  {
    v14 = *(a1 + 48);
  }

  v332 = v14;
  if (v14 <= 0)
  {
    memset(&v339, 0, sizeof(v339));
    v306 = snprintf(0, 0, "Error: '%s' failed", "nprobe > 0");
    std::string::resize(&v339, v306 + 1, 0);
    if ((v339.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v307 = &v339;
    }

    else
    {
      v307 = v339.__r_.__value_.__r.__words[0];
    }

    if ((v339.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v308 = HIBYTE(v339.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v308 = v339.__r_.__value_.__l.__size_;
    }

    snprintf(v307, v308, "Error: '%s' failed", "nprobe > 0");
    v309 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v309, &v339, "virtual void faiss::IndexIVF::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 397);
  }

  if (a10)
  {
    v15 = (a10 + 16);
  }

  else
  {
    v15 = (a1 + 144);
  }

  v16 = *v15;
  v351 = 0;
  v352 = 0;
  v350 = 0;
  memset(v355.__m_.__opaque, 0, sizeof(v355.__m_.__opaque));
  v355.__m_.__sig = 850045863;
  v347 = 0;
  v348 = 0;
  v349 = 0;
  v17 = *(a1 + 152);
  v18 = *(a1 + 156);
  v19 = v17 & ~v18;
  v346 = (*(*a1 + 184))(a1);
  v330 = v18 & v17;
  v339.__r_.__value_.__r.__words[0] = v12;
  v339.__r_.__value_.__l.__size_ = &v346;
  v339.__r_.__value_.__r.__words[2] = &v352;
  v340 = &v353;
  v341 = &v351;
  v342 = &v354;
  v343 = &v355;
  v344 = &v347;
  v345 = &v350;
  v324 = a2;
  v326 = v12;
  v321 = v346;
  if (v19 <= 1)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        std::vector<long long>::vector[abi:ne200100](&v338, v354);
        std::vector<float>::vector[abi:ne200100](&__p, v354);
        if (!a2)
        {
          v21 = 0;
          v31 = __p;
          goto LABEL_413;
        }

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v325 = 0;
        while (1)
        {
          (**v346)(v346, a3 + 4 * v22 * *(v12 + 8));
          if (!v330)
          {
            v45 = __p;
            v46 = v338.__r_.__value_.__r.__words[0];
            v47 = v354;
            if (*(v12 + 28))
            {
              if (v354)
              {
                do
                {
                  *v45++ = 2139095039;
                  *v46++ = -1;
                  --v47;
                }

                while (v47);
              }
            }

            else if (v354)
            {
              do
              {
                *v45++ = -8388609;
                *v46++ = -1;
                --v47;
              }

              while (v47);
            }
          }

          v24 = v332;
          v23 = a5;
          v25 = a6;
          do
          {
            v26 = *v23++;
            v21 += faiss::IndexIVF::search_preassigned(long long,float const*,long long,long long const*,float const*,float *,long long *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_3::operator()(&v339, v26, __p, v338.__r_.__value_.__l.__data_, *v25++);
            --v24;
          }

          while (v24);
          v27 = v354;
          v28 = &a7[v354 * v22];
          v29 = &a8[v354 * v22];
          v12 = v326;
          v30 = *(v326 + 28);
          if (v330)
          {
            goto LABEL_19;
          }

          if (v30)
          {
            break;
          }

          if (v354)
          {
            v51 = (a8 + v354 * v20);
            v52 = v354;
            v53 = (a7 + v354 * v325);
            do
            {
              *v53++ = -8388609;
              *v51++ = -1;
              --v52;
            }

            while (v52);
LABEL_19:
            v31 = __p;
            v32 = v338.__r_.__value_.__r.__words[0];
            if (v30)
            {
              if (v338.__r_.__value_.__r.__words[0])
              {
LABEL_21:
                if (!v27)
                {
                  goto LABEL_73;
                }

                v33 = 0;
                v34 = v28 - 1;
                v35 = v29 - 1;
                while (1)
                {
                  v36 = v31[v33];
                  if (*v28 <= v36)
                  {
                    goto LABEL_37;
                  }

                  v37 = *(v32 + 8 * v33);
                  if (v27 == 1)
                  {
                    v38 = 1;
                    goto LABEL_36;
                  }

                  v39 = 3;
                  v40 = 2;
                  v41 = 1;
                  while (1)
                  {
                    if (v40 == v27)
                    {
                      v42 = v34[v27];
LABEL_30:
                      v43 = v42;
                      v44 = v29 - 1;
                      v39 = v40;
                      if (v42 < v36)
                      {
                        break;
                      }

                      goto LABEL_33;
                    }

                    v42 = v34[v40];
                    v43 = v28[v40];
                    if (v42 > v43)
                    {
                      goto LABEL_30;
                    }

                    v44 = v29;
                    if (v43 < v36)
                    {
                      break;
                    }

LABEL_33:
                    v34[v41] = v43;
                    v35[v41] = v44[v40];
                    v38 = v39;
                    v40 = 2 * v39;
                    v39 = (2 * v39) | 1;
                    v41 = v38;
                    if (v40 > v27)
                    {
                      goto LABEL_36;
                    }
                  }

                  v38 = v41;
LABEL_36:
                  v34[v38] = v36;
                  v35[v38] = v37;
LABEL_37:
                  if (++v33 == v27)
                  {
LABEL_73:
                    v65 = 0;
                    goto LABEL_112;
                  }
                }
              }

              goto LABEL_56;
            }

            goto LABEL_75;
          }

          v31 = __p;
          v32 = v338.__r_.__value_.__r.__words[0];
LABEL_75:
          if (!v32)
          {
            if (!v27)
            {
              goto LABEL_111;
            }

            v78 = 0;
            v79 = v28 - 1;
            v80 = v29 - 1;
            while (2)
            {
              v81 = v31[v78];
              if (*v28 >= v81)
              {
                goto LABEL_110;
              }

              if (v27 == 1)
              {
                v82 = 1;
                goto LABEL_109;
              }

              v83 = 3;
              v84 = 2;
              v85 = 1;
LABEL_100:
              if (v84 == v27)
              {
                v86 = v79[v27];
LABEL_103:
                v87 = v86;
                v88 = v29 - 1;
                v83 = v84;
                if (v86 > v81)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v86 = v79[v84];
                v87 = v28[v84];
                if (v86 < v87)
                {
                  goto LABEL_103;
                }

                v88 = v29;
                if (v87 > v81)
                {
LABEL_108:
                  v82 = v85;
LABEL_109:
                  v79[v82] = v81;
                  v80[v82] = v78;
LABEL_110:
                  if (++v78 == v27)
                  {
                    goto LABEL_111;
                  }

                  continue;
                }
              }

              break;
            }

            v79[v85] = v87;
            v80[v85] = v88[v84];
            v82 = v83;
            v84 = 2 * v83;
            v83 = (2 * v83) | 1;
            v85 = v82;
            if (v84 > v27)
            {
              goto LABEL_109;
            }

            goto LABEL_100;
          }

          if (!v27)
          {
            goto LABEL_111;
          }

          v66 = 0;
          v67 = v28 - 1;
          v68 = v29 - 1;
          do
          {
            v69 = v31[v66];
            if (*v28 >= v69)
            {
              goto LABEL_92;
            }

            v70 = *(v32 + 8 * v66);
            if (v27 == 1)
            {
              v71 = 1;
              goto LABEL_91;
            }

            v72 = 3;
            v73 = 2;
            v74 = 1;
            while (1)
            {
              if (v73 == v27)
              {
                v75 = v67[v27];
LABEL_85:
                v76 = v75;
                v77 = v29 - 1;
                v72 = v73;
                if (v75 > v69)
                {
                  break;
                }

                goto LABEL_88;
              }

              v75 = v67[v73];
              v76 = v28[v73];
              if (v75 < v76)
              {
                goto LABEL_85;
              }

              v77 = v29;
              if (v76 > v69)
              {
                break;
              }

LABEL_88:
              v67[v74] = v76;
              v68[v74] = v77[v73];
              v71 = v72;
              v73 = 2 * v72;
              v72 = (2 * v72) | 1;
              v74 = v71;
              if (v73 > v27)
              {
                goto LABEL_91;
              }
            }

            v71 = v74;
LABEL_91:
            v67[v71] = v69;
            v68[v71] = v70;
LABEL_92:
            ++v66;
          }

          while (v66 != v27);
LABEL_111:
          v65 = 1;
LABEL_112:
          if (v330)
          {
            goto LABEL_113;
          }

          if (v65)
          {
            if (!v27)
            {
              v90 = 0;
              goto LABEL_155;
            }

            v89 = 0;
            v90 = 0;
            v91 = v28 - 1;
            v92 = v29 - 1;
            while (1)
            {
              v93 = *v28;
              v94 = *v29;
              v95 = v27 - v89;
              v96 = v91[v27 - v89];
              if (v27 - v89 < 2)
              {
                v97 = 1;
                goto LABEL_131;
              }

              v98 = 3;
              v99 = 2;
              v100 = 1;
              while (1)
              {
                if (v99 == v95)
                {
                  v101 = v91[v95];
                  goto LABEL_124;
                }

                v101 = v91[v99];
                v102 = v28[v99];
                if (v101 >= v102)
                {
                  break;
                }

LABEL_124:
                v102 = v101;
                v103 = v29 - 1;
                v98 = v99;
                if (v96 < v101)
                {
                  goto LABEL_129;
                }

LABEL_127:
                v91[v100] = v102;
                v92[v100] = v103[v99];
                v97 = v98;
                v99 = 2 * v98;
                v98 = (2 * v98) | 1;
                v100 = v97;
                if (v99 > v95)
                {
                  goto LABEL_130;
                }
              }

              v103 = v29;
              if (v96 >= v102)
              {
                goto LABEL_127;
              }

LABEL_129:
              v97 = v100;
LABEL_130:
              v96 = v91[v95];
LABEL_131:
              v91[v97] = v96;
              v92[v97] = v92[v95];
              v104 = v27 + ~v90;
              v28[v104] = v93;
              v29[v104] = v94;
              if (v94 != -1)
              {
                ++v90;
              }

              if (++v89 == v27)
              {
LABEL_155:
                memmove(v28, &v28[v27 - v90], 4 * v90);
                memmove(v29, &v29[v27 - v90], 8 * v90);
                v121 = v27 - v90;
                if (v27 > v90)
                {
                  v122 = (&a8[v90] + v27 * v20);
                  v123 = (&a7[v90] + v27 * v325);
                  do
                  {
                    *v123++ = -8388609;
                    *v122++ = -1;
                    --v121;
                  }

                  while (v121);
                }

                goto LABEL_113;
              }
            }
          }

          if (!v27)
          {
            v106 = 0;
            goto LABEL_160;
          }

          v105 = 0;
          v106 = 0;
          v107 = v28 - 1;
          v108 = v29 - 1;
          do
          {
            v109 = *v28;
            v110 = *v29;
            v111 = v27 - v105;
            v112 = v107[v27 - v105];
            if (v27 - v105 < 2)
            {
              v113 = 1;
              goto LABEL_150;
            }

            v114 = 3;
            v115 = 2;
            v116 = 1;
            while (1)
            {
              if (v115 == v111)
              {
                v117 = v107[v111];
                goto LABEL_143;
              }

              v117 = v107[v115];
              v118 = v28[v115];
              if (v117 <= v118)
              {
                break;
              }

LABEL_143:
              v118 = v117;
              v119 = v29 - 1;
              v114 = v115;
              if (v112 > v117)
              {
                goto LABEL_148;
              }

LABEL_146:
              v107[v116] = v118;
              v108[v116] = v119[v115];
              v113 = v114;
              v115 = 2 * v114;
              v114 = (2 * v114) | 1;
              v116 = v113;
              if (v115 > v111)
              {
                goto LABEL_149;
              }
            }

            v119 = v29;
            if (v112 <= v118)
            {
              goto LABEL_146;
            }

LABEL_148:
            v113 = v116;
LABEL_149:
            v112 = v107[v111];
LABEL_150:
            v107[v113] = v112;
            v108[v113] = v108[v111];
            v120 = v27 + ~v106;
            v28[v120] = v109;
            v29[v120] = v110;
            if (v110 != -1)
            {
              ++v106;
            }

            ++v105;
          }

          while (v105 != v27);
LABEL_160:
          memmove(v28, &v28[v27 - v106], 4 * v106);
          memmove(v29, &v29[v27 - v106], 8 * v106);
          v124 = v27 - v106;
          if (v27 > v106)
          {
            v125 = (&a8[v106] + v27 * v20);
            v126 = (&a7[v106] + v27 * v325);
            do
            {
              *v126++ = 2139095039;
              *v125++ = -1;
              --v124;
            }

            while (v124);
          }

LABEL_113:
          ++v22;
          a6 += v332;
          a5 += v332;
          v20 += 8;
          v325 += 4;
          if (v22 == a2)
          {
LABEL_413:
            if (v31)
            {
              v337 = v31;
              operator delete(v31);
            }

            v299 = v338.__r_.__value_.__r.__words[0];
            if (!v338.__r_.__value_.__r.__words[0])
            {
              goto LABEL_404;
            }

LABEL_403:
            v338.__r_.__value_.__l.__size_ = v299;
            operator delete(v299);
            goto LABEL_404;
          }
        }

        if (!v354)
        {
          v31 = __p;
          v32 = v338.__r_.__value_.__r.__words[0];
          if (v338.__r_.__value_.__r.__words[0])
          {
            goto LABEL_21;
          }

LABEL_56:
          if (!v27)
          {
            goto LABEL_73;
          }

          v54 = 0;
          v55 = v28 - 1;
          v56 = v29 - 1;
LABEL_58:
          v57 = v31[v54];
          if (*v28 <= v57)
          {
            goto LABEL_72;
          }

          if (v27 == 1)
          {
            v58 = 1;
            goto LABEL_71;
          }

          v59 = 3;
          v60 = 2;
          v61 = 1;
          while (v60 != v27)
          {
            v62 = v55[v60];
            v63 = v28[v60];
            if (v62 > v63)
            {
              goto LABEL_65;
            }

            v64 = v29;
            if (v63 < v57)
            {
LABEL_70:
              v58 = v61;
LABEL_71:
              v55[v58] = v57;
              v56[v58] = v54;
LABEL_72:
              if (++v54 == v27)
              {
                goto LABEL_73;
              }

              goto LABEL_58;
            }

LABEL_68:
            v55[v61] = v63;
            v56[v61] = v64[v60];
            v58 = v59;
            v60 = 2 * v59;
            v59 = (2 * v59) | 1;
            v61 = v58;
            if (v60 > v27)
            {
              goto LABEL_71;
            }
          }

          v62 = v55[v27];
LABEL_65:
          v63 = v62;
          v64 = v29 - 1;
          v59 = v60;
          if (v62 < v57)
          {
            goto LABEL_70;
          }

          goto LABEL_68;
        }

        v48 = (a8 + v354 * v20);
        v49 = v354;
        v50 = (a7 + v354 * v325);
        do
        {
          *v50++ = 2139095039;
          *v48++ = -1;
          --v49;
        }

        while (v49);
        goto LABEL_19;
      }

LABEL_436:
      memset(&v338, 0, sizeof(v338));
      v312 = snprintf(0, 0, "parallel_mode %d not supported\n", v17 & ~v18);
      std::string::resize(&v338, v312 + 1, 0);
      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v313 = &v338;
      }

      else
      {
        v313 = v338.__r_.__value_.__r.__words[0];
      }

      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v314 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v314 = v338.__r_.__value_.__l.__size_;
      }

      snprintf(v313, v314, "parallel_mode %d not supported\n", v17 & ~v18);
      v315 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v315, &v338, "virtual void faiss::IndexIVF::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 629);
    }

    goto LABEL_166;
  }

  if (v19 != 2)
  {
    if (v19 != 3)
    {
      goto LABEL_436;
    }

LABEL_166:
    if (a2 < 1)
    {
      v21 = 0;
      goto LABEL_404;
    }

    v127 = 0;
    v128 = 0;
    v21 = 0;
    v129 = 0;
    v130 = 4 * v332;
    v131 = 8 * v332;
    while ((v350 & 1) != 0)
    {
LABEL_183:
      ++v129;
      v128 += 8;
      v127 += 4;
      a6 = (a6 + v130);
      a5 = (a5 + v131);
      if (v129 == a2)
      {
        goto LABEL_404;
      }
    }

    (**v346)(v346, a3 + 4 * v129 * *(v12 + 8));
    v132 = v354;
    if (!v330)
    {
      if (*(v12 + 28))
      {
        if (v354)
        {
          v140 = (a8 + v354 * v128);
          v141 = v354;
          v142 = (a7 + v354 * v127);
          do
          {
            *v142++ = 2139095039;
            *v140++ = -1;
            --v141;
          }

          while (v141);
        }
      }

      else if (v354)
      {
        v161 = (a8 + v354 * v128);
        v162 = v354;
        v163 = (a7 + v354 * v127);
        do
        {
          *v163++ = -8388609;
          *v161++ = -1;
          --v162;
        }

        while (v162);
      }
    }

    v133 = 0;
    v134 = 0;
    v323 = v132;
    v135 = &a7[v132 * v129];
    v136 = &a8[v132 * v129];
    do
    {
      v137 = faiss::IndexIVF::search_preassigned(long long,float const*,long long,long long const*,float const*,float *,long long *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_3::operator()(&v339, a5[v134], v135, v136, a6[v134]);
      v133 += v137;
      v138 = v133 < v16 || v16 == 0;
      ++v134;
    }

    while (v138 && v134 < v332);
    if (v330)
    {
LABEL_180:
      v12 = v326;
      v21 += v133;
      a2 = v324;
      v131 = 8 * v332;
      if (faiss::InterruptCallback::is_interrupted(v137))
      {
        v350 = 1;
      }

      v130 = 4 * v332;
      goto LABEL_183;
    }

    v143 = v354;
    v144 = &v135[v354];
    v322 = &v136[v354];
    if (*(v326 + 28))
    {
      if (!v354)
      {
        v146 = 0;
        goto LABEL_234;
      }

      v145 = 0;
      v146 = 0;
      v147 = v135 - 1;
      v148 = v136 - 1;
      while (1)
      {
        v149 = *v135;
        v150 = *v136;
        v151 = v143 - v145;
        v152 = *&v147[v143 - v145];
        if (v143 - v145 < 2)
        {
          v153 = 1;
          goto LABEL_206;
        }

        v154 = 3;
        v155 = 2;
        v156 = 1;
        while (1)
        {
          if (v155 == v151)
          {
            v157 = *&v147[v151];
LABEL_199:
            v158 = v157;
            v159 = v136 - 1;
            v154 = v155;
            if (v152 > v157)
            {
              break;
            }

            goto LABEL_202;
          }

          v157 = *&v147[v155];
          v158 = *&v135[v155];
          if (v157 > v158)
          {
            goto LABEL_199;
          }

          v159 = v136;
          if (v152 > v158)
          {
            break;
          }

LABEL_202:
          *&v147[v156] = v158;
          v148[v156] = v159[v155];
          v153 = v154;
          v155 = 2 * v154;
          v154 = (2 * v154) | 1;
          v156 = v153;
          if (v155 > v151)
          {
            goto LABEL_205;
          }
        }

        v153 = v156;
LABEL_205:
        v152 = *&v147[v151];
LABEL_206:
        *&v147[v153] = v152;
        v148[v153] = v148[v151];
        v160 = v143 + ~v146;
        v135[v160] = v149;
        v136[v160] = v150;
        if (v150 != -1)
        {
          ++v146;
        }

        if (++v145 == v143)
        {
LABEL_234:
          memmove(v135, &v144[-v146], 4 * v146);
          v137 = memmove(v136, &v322[-v146], 8 * v146);
          v180 = v143 - v146;
          if (v143 > v146)
          {
            v181 = (&a8[v146] + v323 * v128);
            v182 = (&a7[v146] + v323 * v127);
            do
            {
              *v182++ = 2139095039;
              *v181++ = -1;
              --v180;
            }

            while (v180);
          }

          goto LABEL_180;
        }
      }
    }

    if (!v354)
    {
      v165 = 0;
      goto LABEL_239;
    }

    v164 = 0;
    v165 = 0;
    v166 = v135 - 1;
    v167 = v136 - 1;
LABEL_216:
    v168 = *v135;
    v169 = *v136;
    v170 = v143 - v164;
    v171 = *&v166[v143 - v164];
    if (v143 - v164 < 2)
    {
      v172 = 1;
      goto LABEL_229;
    }

    v173 = 3;
    v174 = 2;
    v175 = 1;
    while (v174 != v170)
    {
      v176 = *&v166[v174];
      v177 = *&v135[v174];
      if (v176 < v177)
      {
        goto LABEL_222;
      }

      v178 = v136;
      if (v171 < v177)
      {
LABEL_227:
        v172 = v175;
LABEL_228:
        v171 = *&v166[v170];
LABEL_229:
        *&v166[v172] = v171;
        v167[v172] = v167[v170];
        v179 = v143 + ~v165;
        v135[v179] = v168;
        v136[v179] = v169;
        if (v169 != -1)
        {
          ++v165;
        }

        if (++v164 == v143)
        {
LABEL_239:
          memmove(v135, &v144[-v165], 4 * v165);
          v137 = memmove(v136, &v322[-v165], 8 * v165);
          v183 = v143 - v165;
          if (v143 > v165)
          {
            v184 = (&a8[v165] + v323 * v128);
            v185 = (&a7[v165] + v323 * v127);
            do
            {
              *v185++ = -8388609;
              *v184++ = -1;
              --v183;
            }

            while (v183);
          }

          goto LABEL_180;
        }

        goto LABEL_216;
      }

LABEL_225:
      *&v166[v175] = v177;
      v167[v175] = v178[v174];
      v172 = v173;
      v174 = 2 * v173;
      v173 = (2 * v173) | 1;
      v175 = v172;
      if (v174 > v170)
      {
        goto LABEL_228;
      }
    }

    v176 = *&v166[v170];
LABEL_222:
    v177 = v176;
    v178 = v136 - 1;
    v173 = v174;
    if (v171 < v176)
    {
      goto LABEL_227;
    }

    goto LABEL_225;
  }

  std::vector<long long>::vector[abi:ne200100](&v338, v354);
  std::vector<float>::vector[abi:ne200100](&__p, v354);
  if (a2 >= 1)
  {
    v186 = 0;
    v187 = v354;
    v188 = a7;
    v189 = a8;
    do
    {
      if (!v330)
      {
        if (*(v12 + 28))
        {
          if (v187)
          {
            v190 = v188;
            v191 = v189;
            v192 = v187;
            do
            {
              *v190++ = 2139095039;
              *v191++ = -1;
              --v192;
            }

            while (v192);
          }
        }

        else if (v187)
        {
          for (i = 0; i != v187; ++i)
          {
            v188[i] = -8388609;
            v189[i] = -1;
          }
        }
      }

      ++v186;
      v189 += v187;
      v188 += v187;
    }

    while (v186 != a2);
  }

  if ((v332 * a2) < 1)
  {
    v21 = 0;
    goto LABEL_347;
  }

  v21 = 0;
  v194 = 0;
  do
  {
    v195 = v194 / v332;
    (**v346)(v346, a3 + 4 * v194 / v332 * *(v12 + 8));
    v196 = __p;
    v197 = v338.__r_.__value_.__r.__words[0];
    if (!v330)
    {
      v216 = v354;
      if (*(v12 + 28))
      {
        if (v354)
        {
          v217 = __p;
          v218 = v338.__r_.__value_.__r.__words[0];
          do
          {
            *v217++ = 2139095039;
            *v218++ = -1;
            --v216;
          }

          while (v216);
        }
      }

      else if (v354)
      {
        v242 = __p;
        v243 = v338.__r_.__value_.__r.__words[0];
        do
        {
          *v242++ = -8388609;
          *v243++ = -1;
          --v216;
        }

        while (v216);
      }
    }

    v198 = faiss::IndexIVF::search_preassigned(long long,float const*,long long,long long const*,float const*,float *,long long *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_3::operator()(&v339, a5[v194], v196, v197, a6[v194]);
    v199 = __p;
    v200 = v338.__r_.__value_.__r.__words[0];
    v201 = v354;
    v202 = &a7[v354 * v195];
    v203 = &a8[v354 * v195];
    if (!*(v12 + 28))
    {
      if (v338.__r_.__value_.__r.__words[0])
      {
        if (!v354)
        {
          goto LABEL_343;
        }

        v219 = 0;
        v220 = v202 - 1;
        v221 = v203 - 1;
LABEL_288:
        v222 = v199[v219];
        if (*v202 >= v222)
        {
          goto LABEL_302;
        }

        v223 = *(v200 + 8 * v219);
        if (v201 == 1)
        {
          v224 = 1;
          goto LABEL_301;
        }

        v225 = 3;
        v226 = 2;
        v227 = 1;
        while (v226 != v201)
        {
          v228 = v220[v226];
          v229 = v202[v226];
          if (v228 < v229)
          {
            goto LABEL_295;
          }

          v230 = v203;
          if (v229 > v222)
          {
LABEL_300:
            v224 = v227;
LABEL_301:
            v220[v224] = v222;
            v221[v224] = v223;
LABEL_302:
            if (++v219 == v201)
            {
              goto LABEL_343;
            }

            goto LABEL_288;
          }

LABEL_298:
          v220[v227] = v229;
          v221[v227] = v230[v226];
          v224 = v225;
          v226 = 2 * v225;
          v225 = (2 * v225) | 1;
          v227 = v224;
          if (v226 > v201)
          {
            goto LABEL_301;
          }
        }

        v228 = v220[v201];
LABEL_295:
        v229 = v228;
        v230 = v203 - 1;
        v225 = v226;
        if (v228 > v222)
        {
          goto LABEL_300;
        }

        goto LABEL_298;
      }

      if (!v354)
      {
        goto LABEL_343;
      }

      v244 = 0;
      v245 = v202 - 1;
      v246 = v203 - 1;
LABEL_328:
      v247 = v199[v244];
      if (*v202 >= v247)
      {
        goto LABEL_342;
      }

      if (v201 == 1)
      {
        v248 = 1;
        goto LABEL_341;
      }

      v249 = 3;
      v250 = 2;
      v251 = 1;
      while (v250 != v201)
      {
        v252 = v245[v250];
        v253 = v202[v250];
        if (v252 < v253)
        {
          goto LABEL_335;
        }

        v254 = v203;
        if (v253 > v247)
        {
LABEL_340:
          v248 = v251;
LABEL_341:
          v245[v248] = v247;
          v246[v248] = v244;
LABEL_342:
          if (++v244 == v201)
          {
            goto LABEL_343;
          }

          goto LABEL_328;
        }

LABEL_338:
        v245[v251] = v253;
        v246[v251] = v254[v250];
        v248 = v249;
        v250 = 2 * v249;
        v249 = (2 * v249) | 1;
        v251 = v248;
        if (v250 > v201)
        {
          goto LABEL_341;
        }
      }

      v252 = v245[v201];
LABEL_335:
      v253 = v252;
      v254 = v203 - 1;
      v249 = v250;
      if (v252 > v247)
      {
        goto LABEL_340;
      }

      goto LABEL_338;
    }

    if (!v338.__r_.__value_.__r.__words[0])
    {
      if (!v354)
      {
        goto LABEL_343;
      }

      v231 = 0;
      v232 = v202 - 1;
      v233 = v203 - 1;
LABEL_306:
      v234 = v199[v231];
      if (*v202 <= v234)
      {
        goto LABEL_320;
      }

      if (v201 == 1)
      {
        v235 = 1;
        goto LABEL_319;
      }

      v236 = 3;
      v237 = 2;
      v238 = 1;
      while (v237 != v201)
      {
        v239 = v232[v237];
        v240 = v202[v237];
        if (v239 > v240)
        {
          goto LABEL_313;
        }

        v241 = v203;
        if (v240 < v234)
        {
LABEL_318:
          v235 = v238;
LABEL_319:
          v232[v235] = v234;
          v233[v235] = v231;
LABEL_320:
          if (++v231 == v201)
          {
            goto LABEL_343;
          }

          goto LABEL_306;
        }

LABEL_316:
        v232[v238] = v240;
        v233[v238] = v241[v237];
        v235 = v236;
        v237 = 2 * v236;
        v236 = (2 * v236) | 1;
        v238 = v235;
        if (v237 > v201)
        {
          goto LABEL_319;
        }
      }

      v239 = v232[v201];
LABEL_313:
      v240 = v239;
      v241 = v203 - 1;
      v236 = v237;
      if (v239 < v234)
      {
        goto LABEL_318;
      }

      goto LABEL_316;
    }

    if (!v354)
    {
      goto LABEL_343;
    }

    v204 = 0;
    v205 = v202 - 1;
    v206 = v203 - 1;
    do
    {
      v207 = v199[v204];
      if (*v202 <= v207)
      {
        goto LABEL_278;
      }

      v208 = *(v200 + 8 * v204);
      if (v201 == 1)
      {
        v209 = 1;
        goto LABEL_277;
      }

      v210 = 3;
      v211 = 2;
      v212 = 1;
      while (1)
      {
        if (v211 == v201)
        {
          v213 = v205[v201];
          goto LABEL_271;
        }

        v213 = v205[v211];
        v214 = v202[v211];
        if (v213 <= v214)
        {
          break;
        }

LABEL_271:
        v214 = v213;
        v215 = v203 - 1;
        v210 = v211;
        if (v213 < v207)
        {
          goto LABEL_276;
        }

LABEL_274:
        v205[v212] = v214;
        v206[v212] = v215[v211];
        v209 = v210;
        v211 = 2 * v210;
        v210 = (2 * v210) | 1;
        v212 = v209;
        if (v211 > v201)
        {
          goto LABEL_277;
        }
      }

      v215 = v203;
      if (v214 >= v207)
      {
        goto LABEL_274;
      }

LABEL_276:
      v209 = v212;
LABEL_277:
      v205[v209] = v207;
      v206[v209] = v208;
LABEL_278:
      ++v204;
    }

    while (v204 != v201);
LABEL_343:
    v21 += v198;
    ++v194;
  }

  while (v194 != v332 * a2);
LABEL_347:
  if (a2 < 1)
  {
    goto LABEL_400;
  }

  v255 = 0;
  v256 = v354;
  v257 = 8 * v354;
  v258 = 4 * v354;
  v260 = a7;
  v259 = a8;
  v333 = 4 * v354;
  v335 = 8 * v354;
  while (2)
  {
    if (v330)
    {
      goto LABEL_350;
    }

    v261 = &a7[v256 * v255];
    v262 = v12;
    v263 = &a8[v256 * v255];
    if (*(v262 + 28))
    {
      if (!v256)
      {
        v265 = 0;
        goto LABEL_392;
      }

      v264 = 0;
      v265 = 0;
      v266 = v261 - 1;
      v267 = v263 - 1;
      while (1)
      {
        v268 = *v261;
        v269 = *v263;
        v270 = v256 - v264;
        v271 = *&v266[v256 - v264];
        if (v256 - v264 < 2)
        {
          v272 = 1;
          goto LABEL_368;
        }

        v273 = 3;
        v274 = 2;
        v275 = 1;
        while (1)
        {
          if (v274 == v270)
          {
            v276 = *&v266[v270];
            goto LABEL_361;
          }

          v276 = *&v266[v274];
          v277 = *&v261[v274];
          if (v276 <= v277)
          {
            break;
          }

LABEL_361:
          v277 = v276;
          v278 = v263 - 1;
          v273 = v274;
          if (v271 > v276)
          {
            goto LABEL_366;
          }

LABEL_364:
          *&v266[v275] = v277;
          v267[v275] = v278[v274];
          v272 = v273;
          v274 = 2 * v273;
          v273 = (2 * v273) | 1;
          v275 = v272;
          if (v274 > v270)
          {
            goto LABEL_367;
          }
        }

        v278 = &a8[v256 * v255];
        if (v271 <= v277)
        {
          goto LABEL_364;
        }

LABEL_366:
        v272 = v275;
LABEL_367:
        v271 = *&v266[v270];
LABEL_368:
        *&v266[v272] = v271;
        v267[v272] = v267[v270];
        v279 = v256 + ~v265;
        v261[v279] = v268;
        v263[v279] = v269;
        if (v269 != -1)
        {
          ++v265;
        }

        if (++v264 == v256)
        {
LABEL_392:
          memmove(v261, &v261[v256 - v265], 4 * v265);
          memmove(v263, &v263[v256 - v265], 8 * v265);
          v296 = v256 - v265;
          v12 = v326;
          v258 = v333;
          v257 = v335;
          if (v256 > v265)
          {
            v297 = &v259[v265];
            v298 = &v260[v265];
            do
            {
              *v298++ = 2139095039;
              *v297++ = -1;
              --v296;
            }

            while (v296);
          }

          goto LABEL_350;
        }
      }
    }

    if (!v256)
    {
      v281 = 0;
      goto LABEL_397;
    }

    v280 = 0;
    v281 = 0;
    v282 = v261 - 1;
    v283 = v263 - 1;
    while (2)
    {
      v284 = *v261;
      v285 = *v263;
      v286 = v256 - v280;
      v287 = *&v282[v256 - v280];
      if (v256 - v280 < 2)
      {
        v288 = 1;
        goto LABEL_387;
      }

      v289 = 3;
      v290 = 2;
      v291 = 1;
      while (2)
      {
        if (v290 == v286)
        {
          v292 = *&v282[v286];
LABEL_380:
          v293 = v292;
          v294 = v263 - 1;
          v289 = v290;
          if (v287 < v292)
          {
            break;
          }

          goto LABEL_383;
        }

        v292 = *&v282[v290];
        v293 = *&v261[v290];
        if (v292 < v293)
        {
          goto LABEL_380;
        }

        v294 = &a8[v256 * v255];
        if (v287 >= v293)
        {
LABEL_383:
          *&v282[v291] = v293;
          v283[v291] = v294[v290];
          v288 = v289;
          v290 = 2 * v289;
          v289 = (2 * v289) | 1;
          v291 = v288;
          if (v290 > v286)
          {
            goto LABEL_386;
          }

          continue;
        }

        break;
      }

      v288 = v291;
LABEL_386:
      v287 = *&v282[v286];
LABEL_387:
      *&v282[v288] = v287;
      v283[v288] = v283[v286];
      v295 = v256 + ~v281;
      v261[v295] = v284;
      v263[v295] = v285;
      if (v285 != -1)
      {
        ++v281;
      }

      if (++v280 != v256)
      {
        continue;
      }

      break;
    }

LABEL_397:
    memmove(v261, &v261[v256 - v281], 4 * v281);
    memmove(v263, &v263[v256 - v281], 8 * v281);
    v12 = v326;
    v258 = v333;
    v257 = v335;
    if (v281 < v256)
    {
      do
      {
        v260[v281] = -8388609;
        v259[v281++] = -1;
      }

      while (v256 != v281);
    }

LABEL_350:
    ++v255;
    v259 = (v259 + v257);
    v260 = (v260 + v258);
    if (v255 != a2)
    {
      continue;
    }

    break;
  }

LABEL_400:
  if (__p)
  {
    v337 = __p;
    operator delete(__p);
  }

  v299 = v338.__r_.__value_.__r.__words[0];
  if (v338.__r_.__value_.__r.__words[0])
  {
    goto LABEL_403;
  }

LABEL_404:
  if (v321)
  {
    ((*v321)[6])(v321);
  }

  if (v350 == 1)
  {
    if (SHIBYTE(v349) < 0)
    {
      if (v348)
      {
        memset(&v339, 0, sizeof(v339));
        v310 = v347;
        goto LABEL_444;
      }
    }

    else if (HIBYTE(v349))
    {
      memset(&v339, 0, sizeof(v339));
      v310 = &v347;
LABEL_444:
      v316 = snprintf(0, 0, "search interrupted with: %s", v310);
      std::string::resize(&v339, v316 + 1, 0);
      if ((v339.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v317 = &v339;
      }

      else
      {
        v317 = v339.__r_.__value_.__r.__words[0];
      }

      if ((v339.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v318 = HIBYTE(v339.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v318 = v339.__r_.__value_.__l.__size_;
      }

      v319 = &v347;
      if (v349 < 0)
      {
        v319 = v347;
      }

      snprintf(v317, v318, "search interrupted with: %s", v319);
      v320 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v320, &v339, "virtual void faiss::IndexIVF::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 636);
    }

    v311 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v339, "computation interrupted");
    faiss::FaissException::FaissException(v311, &v339, "virtual void faiss::IndexIVF::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 638);
  }

  if (a11)
  {
    v300 = a11[1] + v352;
    *a11 += a2;
    a11[1] = v300;
    v301 = a11[3] + v351;
    a11[2] += v21;
    a11[3] = v301;
  }

  if (SHIBYTE(v349) < 0)
  {
    operator delete(v347);
  }

  std::mutex::~mutex(&v355);
}

void sub_1D9C7293C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_free_exception(v39);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    (*(*v40 + 48))(v40);
  }

  if (*(v41 - 201) < 0)
  {
    operator delete(*(v41 - 224));
  }

  std::mutex::~mutex((v41 - 160));
  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVF::search_preassigned(long long,float const*,long long,long long const*,float const*,float *,long long *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_3::operator()(uint64_t *a1, int64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(*a1 + 48);
  if (v8 <= a2)
  {
    memset(&v19, 0, sizeof(v19));
    v14 = snprintf(0, 0, "Error: '%s' failed: Invalid key=%lld nlist=%zd\n", "key < (idx_t)nlist", a2, v8);
    std::string::resize(&v19, v14 + 1, 0);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v19;
    }

    else
    {
      v15 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    snprintf(v15, size, "Error: '%s' failed: Invalid key=%lld nlist=%zd\n", "key < (idx_t)nlist", a2, *(v7 + 48));
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v19, "auto faiss::IndexIVF::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *)::(anonymous class)::operator()(idx_t, float, float *, idx_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 480);
  }

  v12 = (***(v7 + 112))(*(v7 + 112), a2);
  if (v12)
  {
    (*(**a1[1] + 8))(*a1[1], a2, a5);
    ++*a1[2];
    v19.__r_.__value_.__r.__words[0] = *(v7 + 112);
    v13 = (*(*v19.__r_.__value_.__l.__data_ + 8))(v19.__r_.__value_.__r.__words[0], a2);
    v19.__r_.__value_.__l.__size_ = v13;
    v19.__r_.__value_.__r.__words[2] = a2;
    if ((*a1[3] & 1) == 0)
    {
      operator new();
    }

    *a1[4] += (*(**a1[1] + 24))(*a1[1], v12, v13, 0, a3, a4, *a1[5]);
    faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v19);
  }

  return v12;
}

void sub_1D9C72F60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::mutex::unlock(v23);
  __cxa_end_catch();
  JUMPOUT(0x1D9C72DD4);
}

void sub_1D9C72FAC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1D9C72DD4);
}

void faiss::IndexIVF::range_search_preassigned(std::string::size_type a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, faiss::RangeSearchResult *a6, uint64_t a7, uint64_t a8, float a9, void *a10)
{
  v73 = *MEMORY[0x1E69E9840];
  v71 = a9;
  v69 = a5;
  v70 = a4;
  v15 = (a8 + 8);
  if (!a8)
  {
    v15 = (a1 + 136);
  }

  v16 = *v15;
  if (v16 >= *(a1 + 48))
  {
    v16 = *(a1 + 48);
  }

  v67 = 0;
  v68 = v16;
  v66 = 0;
  v65 = 0;
  memset(v72.__m_.__opaque, 0, sizeof(v72.__m_.__opaque));
  v72.__m_.__sig = 850045863;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  std::vector<faiss::RangeSearchPartialResult *>::vector[abi:ne200100](v61, 1uLL);
  faiss::RangeSearchPartialResult::RangeSearchPartialResult(v58, a6);
  v57 = (*(*a1 + 184))(a1, a7);
  if (!v57)
  {
    memset(&v48, 0, sizeof(v48));
    v32 = snprintf(0, 0, "Error: '%s' failed", "scanner.get()");
    std::string::resize(&v48, v32 + 1, 0);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v48;
    }

    else
    {
      v33 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v48.__r_.__value_.__l.__size_;
    }

    snprintf(v33, size, "Error: '%s' failed", "scanner.get()");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v48, "void faiss::IndexIVF::range_search_preassigned(idx_t, const float *, float, const idx_t *, const float *, RangeSearchResult *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 721);
  }

  *v61[0] = v58;
  v48.__r_.__value_.__r.__words[0] = &v70;
  v48.__r_.__value_.__l.__size_ = &v68;
  v48.__r_.__value_.__r.__words[2] = a1;
  v49 = &v57;
  v50 = &v69;
  v51 = &v67;
  v52 = &v66;
  v53 = &v71;
  v54 = &v72;
  v55 = &v62;
  v56 = &v65;
  v17 = *(a1 + 152);
  if (v17)
  {
    if (v17 != 2)
    {
      if (v17 != 1)
      {
        memset(&__p, 0, sizeof(__p));
        v38 = snprintf(0, 0, "parallel_mode %d not supported\n", v17);
        std::string::resize(&__p, v38 + 1, 0);
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
          v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = __p.__r_.__value_.__l.__size_;
        }

        snprintf(p_p, v40, "parallel_mode %d not supported\n", *(a1 + 152));
        v41 = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(v41, &__p, "void faiss::IndexIVF::range_search_preassigned(idx_t, const float *, float, const idx_t *, const float *, RangeSearchResult *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 802);
      }

      if (!a2)
      {
        goto LABEL_32;
      }

      v18 = 0;
      do
      {
        (**v57)(v57, a3 + 4 * v18 * *(a1 + 8));
        v19 = faiss::RangeSearchPartialResult::new_result(v58, v18);
        if (v68 >= 1)
        {
          v20 = v19;
          for (i = 0; i < v68; ++i)
          {
            faiss::IndexIVF::range_search_preassigned(long long,float const*,float,long long const*,float const*,faiss::RangeSearchResult *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_0::operator()(&v48, v18, i, v20);
          }
        }

        ++v18;
      }

      while (v18 != a2);
      goto LABEL_31;
    }

    std::vector<faiss::RangeQueryResult *>::vector[abi:ne200100](&__p, a2);
    v22 = v68;
    if (v68 * a2 < 1)
    {
LABEL_23:
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_31;
    }

    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = v23 / v22;
      if (!v24)
      {
        goto LABEL_21;
      }

      if (*v24 != v25)
      {
        break;
      }

LABEL_22:
      faiss::IndexIVF::range_search_preassigned(long long,float const*,float,long long const*,float const*,faiss::RangeSearchResult *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_0::operator()(&v48, v23 / v22, v23 % v22, v24);
      ++v23;
      v22 = v68;
      if (v23 >= v68 * a2)
      {
        goto LABEL_23;
      }
    }

    if (v25 <= *v24)
    {
      faiss::IndexIVF::range_search_preassigned();
    }

LABEL_21:
    v24 = faiss::RangeSearchPartialResult::new_result(v58, v23 / v22);
    (**v57)(v57, a3 + 4 * v25 * *(a1 + 8));
    goto LABEL_22;
  }

  if (a2 < 1)
  {
    goto LABEL_33;
  }

  v26 = 0;
  do
  {
    (**v57)(v57, a3 + 4 * v26 * *(a1 + 8));
    v27 = faiss::RangeSearchPartialResult::new_result(v58, v26);
    if (v68)
    {
      v28 = v27;
      for (j = 0; j < v68; ++j)
      {
        faiss::IndexIVF::range_search_preassigned(long long,float const*,float,long long const*,float const*,faiss::RangeSearchResult *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_0::operator()(&v48, v26, j, v28);
      }
    }

    ++v26;
  }

  while (v26 != a2);
LABEL_31:
  if (*(a1 + 152))
  {
LABEL_32:
    faiss::RangeSearchPartialResult::merge(v61, 0);
    goto LABEL_34;
  }

LABEL_33:
  faiss::RangeSearchPartialResult::finalize(v58);
LABEL_34:
  v30 = v57;
  v57 = 0;
  if (v30)
  {
    ((*v30)[6])(v30);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  faiss::BufferList::~BufferList(v58);
  if (v65 == 1)
  {
    if (SHIBYTE(v64) < 0)
    {
      if (v63)
      {
        memset(&v48, 0, sizeof(v48));
        v36 = v62;
        goto LABEL_67;
      }
    }

    else if (HIBYTE(v64))
    {
      memset(&v48, 0, sizeof(v48));
      v36 = &v62;
LABEL_67:
      v42 = snprintf(0, 0, "search interrupted with: %s", v36);
      std::string::resize(&v48, v42 + 1, 0);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v48;
      }

      else
      {
        v43 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v48.__r_.__value_.__l.__size_;
      }

      v45 = &v62;
      if (v64 < 0)
      {
        v45 = v62;
      }

      snprintf(v43, v44, "search interrupted with: %s", v45);
      v46 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v46, &v48, "void faiss::IndexIVF::range_search_preassigned(idx_t, const float *, float, const idx_t *, const float *, RangeSearchResult *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 817);
    }

    v37 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v48, "computation interrupted");
    faiss::FaissException::FaissException(v37, &v48, "void faiss::IndexIVF::range_search_preassigned(idx_t, const float *, float, const idx_t *, const float *, RangeSearchResult *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 819);
  }

  if (a10)
  {
    v31 = a10[1] + v67;
    *a10 += a2;
    a10[1] = v31;
    a10[2] += v66;
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v62);
  }

  std::mutex::~mutex(&v72);
}

void sub_1D9C738D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  __cxa_free_exception(v42);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    (*(*a31 + 48))(a31);
  }

  faiss::RangeSearchPartialResult::~RangeSearchPartialResult(&a32);
  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  if (*(v43 - 193) < 0)
  {
    operator delete(*(v43 - 216));
  }

  std::mutex::~mutex((v43 - 136));
  _Unwind_Resume(a1);
}

void faiss::IndexIVF::range_search_preassigned(long long,float const*,float,long long const*,float const*,faiss::RangeSearchResult *,BOOL,faiss::IVFSearchParameters const*,faiss::IndexIVFStats *)const::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(**a1 + 8 * **(a1 + 8) * a2 + 8 * a3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48);
    if (v4 >= v8)
    {
      memset(&v19, 0, sizeof(v19));
      v14 = snprintf(0, 0, "Error: '%s' failed: Invalid key=%lld at ik=%zd nlist=%zd\n", "key < (idx_t)nlist", v4, a3, v8);
      std::string::resize(&v19, v14 + 1, 0);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v19;
      }

      else
      {
        v15 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      snprintf(v15, size, "Error: '%s' failed: Invalid key=%lld at ik=%zd nlist=%zd\n", "key < (idx_t)nlist", v4, a3, *(v7 + 48));
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v19, "auto faiss::IndexIVF::range_search_preassigned(idx_t, const float *, float, const idx_t *, const float *, RangeSearchResult *, BOOL, const IVFSearchParameters *, IndexIVFStats *)::(anonymous class)::operator()(size_t, size_t, RangeQueryResult &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 739);
    }

    v11 = (***(v7 + 112))(*(v7 + 112), v4);
    if (v11)
    {
      v12 = v11;
      v19.__r_.__value_.__r.__words[0] = *(v7 + 112);
      v19.__r_.__value_.__l.__size_ = (*(*v19.__r_.__value_.__l.__data_ + 8))(v19.__r_.__value_.__r.__words[0], v4);
      v19.__r_.__value_.__r.__words[2] = v4;
      v18[0] = *(v7 + 112);
      v13 = (*(*v18[0] + 16))(v18[0], v4);
      v18[1] = v13;
      v18[2] = v4;
      (*(***(a1 + 24) + 8))(**(a1 + 24), v4, *(**(a1 + 32) + 4 * **(a1 + 8) * a2 + 4 * a3));
      ++**(a1 + 40);
      **(a1 + 48) += v12;
      (*(***(a1 + 24) + 32))(**(a1 + 24), v12, v19.__r_.__value_.__l.__size_, v13, a4, **(a1 + 56));
      faiss::InvertedLists::ScopedIds::~ScopedIds(v18);
      faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v19);
    }
  }
}

void sub_1D9C73CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::string *a14, __int128 __p, void *__pa, uint64_t __p_8, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a21 < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

void sub_1D9C73D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  faiss::InvertedLists::ScopedIds::~ScopedIds(va);
  JUMPOUT(0x1D9C73D48);
}

void sub_1D9C73E78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  std::mutex::unlock(v25);
  __cxa_end_catch();
  JUMPOUT(0x1D9C73D30);
}

void sub_1D9C73EC4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1D9C73D30);
}

uint64_t faiss::IndexIVF::reconstruct(faiss::IndexIVF *this, unint64_t a2, float *a3)
{
  v5 = faiss::DirectMap::get((this + 160), a2);
  v6 = *(*this + 200);

  return v6(this, HIDWORD(v5), v5, a3);
}

void faiss::IndexIVF::reconstruct_n(faiss::IndexIVF *this, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 && (a2 < 0 || a3 + a2 > *(this + 2)))
  {
    memset(&v17, 0, sizeof(v17));
    v13 = snprintf(0, 0, "Error: '%s' failed", "ni == 0 || (i0 >= 0 && i0 + ni <= ntotal)");
    std::string::resize(&v17, v13 + 1, 0);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v17;
    }

    else
    {
      v14 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    snprintf(v14, size, "Error: '%s' failed", "ni == 0 || (i0 >= 0 && i0 + ni <= ntotal)");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v17, "virtual void faiss::IndexIVF::reconstruct_n(idx_t, idx_t, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 841);
  }

  if (*(this + 6))
  {
    v7 = 0;
    v8 = a3 + a2;
    do
    {
      v9 = (***(this + 14))(*(this + 14), v7);
      v17.__r_.__value_.__r.__words[0] = *(this + 14);
      v17.__r_.__value_.__l.__size_ = (*(*v17.__r_.__value_.__l.__data_ + 16))(v17.__r_.__value_.__r.__words[0], v7);
      v17.__r_.__value_.__r.__words[2] = v7;
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11 = *(v17.__r_.__value_.__l.__size_ + 8 * i);
          if (v11 >= a2 && v11 < v8)
          {
            (*(*this + 200))(this, v7, i, &a4[(v11 - a2) * *(this + 2)]);
          }
        }
      }

      faiss::InvertedLists::ScopedIds::~ScopedIds(&v17);
      ++v7;
    }

    while (v7 < *(this + 6));
  }
}

void sub_1D9C7414C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVF::sa_code_size(faiss::IndexIVF *this)
{
  v1 = *(this + 6);
  v2 = v1 - 1;
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      ++v3;
      v4 = v2 > 0xFF;
      v2 >>= 8;
    }

    while (v4);
  }

  return *(this + 16) + v3;
}

void faiss::IndexIVF::sa_encode(faiss::IndexIVF *this, uint64_t a2, const float *a3, unsigned __int8 *a4)
{
  if (*(this + 25))
  {
    operator new[]();
  }

  memset(&v8, 0, sizeof(v8));
  v4 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
  std::string::resize(&v8, v4 + 1, 0);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  snprintf(v5, size, "Error: '%s' failed", "is_trained");
  exception = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(exception, &v8, "virtual void faiss::IndexIVF::sa_encode(idx_t, const float *, uint8_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 866);
}

void sub_1D9C74378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::search_and_reconstruct(faiss::IndexIVF *this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6, float *a7)
{
  if (a4 > 0)
  {
    if (*(this + 17) >= *(this + 6))
    {
      v7 = *(this + 6);
    }

    else
    {
      v7 = *(this + 17);
    }

    if (v7)
    {
      operator new[]();
    }

    memset(&v16, 0, sizeof(v16));
    v12 = snprintf(0, 0, "Error: '%s' failed", "nprobe > 0");
    std::string::resize(&v16, v12 + 1, 0);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    else
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    snprintf(v13, size, "Error: '%s' failed", "nprobe > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v16, "virtual void faiss::IndexIVF::search_and_reconstruct(idx_t, const float *, idx_t, float *, idx_t *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 882);
  }

  memset(&v16, 0, sizeof(v16));
  v8 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
  std::string::resize(&v16, v8 + 1, 0);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v16;
  }

  else
  {
    v9 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v16.__r_.__value_.__l.__size_;
  }

  snprintf(v9, v10, "Error: '%s' failed", "k > 0");
  v11 = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(v11, &v16, "virtual void faiss::IndexIVF::search_and_reconstruct(idx_t, const float *, idx_t, float *, idx_t *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 879);
}

void sub_1D9C747C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::reconstruct_from_offset(faiss::IndexIVF *this, uint64_t a2, uint64_t a3, float *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "reconstruct_from_offset not implemented");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::IndexIVF::reconstruct_from_offset(int64_t, int64_t, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 929);
}

void sub_1D9C748C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t faiss::IndexIVF::reset(faiss::IndexIVF *this)
{
  faiss::DirectMap::clear((this + 160));
  result = (*(**(this + 14) + 104))(*(this + 14));
  *(this + 2) = 0;
  return result;
}

uint64_t faiss::IndexIVF::remove_ids(uint64_t a1, unsigned int (***a2)(const void *, void))
{
  result = faiss::DirectMap::remove_ids(a1 + 160, a2, *(a1 + 112));
  *(a1 + 16) -= result;
  return result;
}

void faiss::IndexIVF::update_vectors(faiss::IndexIVF *this, int a2, unint64_t *a3, const float *a4)
{
  v9 = (this + 160);
  v8 = *(this + 40);
  if (v8 == 1)
  {
    if ((*(this + 25) & 1) == 0)
    {
      memset(&v24, 0, sizeof(v24));
      v15 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
      std::string::resize(&v24, v15 + 1, 0);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v24;
      }

      else
      {
        v16 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      snprintf(v16, size, "Error: '%s' failed", "is_trained");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v24, "virtual void faiss::IndexIVF::update_vectors(int, const idx_t *, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 959);
    }

    std::vector<long long>::vector[abi:ne200100](&v24, a2);
    (*(**(this + 5) + 56))(*(this + 5), a2, a4, v24.__r_.__value_.__r.__words[0], 1);
    std::vector<unsigned char>::vector[abi:ne200100](&__p, *(this + 16) * a2);
    (*(*this + 160))(this, a2, a4, v24.__r_.__value_.__r.__words[0], __p.__r_.__value_.__r.__words[0], 0);
    faiss::DirectMap::update_codes(v9, *(this + 14), a2, a3, v24.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__data_);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v24.__r_.__value_.__r.__words[0])
    {
      v24.__r_.__value_.__l.__size_ = v24.__r_.__value_.__r.__words[0];
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v8 != 2)
    {
      memset(&v24, 0, sizeof(v24));
      v11 = snprintf(0, 0, "Error: '%s' failed", "direct_map.type == DirectMap::Array");
      std::string::resize(&v24, v11 + 1, 0);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v24;
      }

      else
      {
        v12 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v24.__r_.__value_.__l.__size_;
      }

      snprintf(v12, v13, "Error: '%s' failed", "direct_map.type == DirectMap::Array");
      v14 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v14, &v24, "virtual void faiss::IndexIVF::update_vectors(int, const idx_t *, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 955);
    }

    faiss::IDSelectorArray::IDSelectorArray(&v24, a2, a3);
    if ((*(*this + 72))(this, &v24) != a2)
    {
      memset(&__p, 0, sizeof(__p));
      v19 = snprintf(0, 0, "Error: '%s' failed: did not find all entries to remove", "nremove == n");
      std::string::resize(&__p, v19 + 1, 0);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      snprintf(p_p, v21, "Error: '%s' failed: did not find all entries to remove", "nremove == n");
      v22 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v22, &__p, "virtual void faiss::IndexIVF::update_vectors(int, const idx_t *, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 950);
    }

    (*(*this + 32))(this, a2, a4, a3);
  }
}

void sub_1D9C74D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v22);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVF::train(faiss::IndexIVF *this, unint64_t a2, const float *a3)
{
  if (*(this + 24) == 1)
  {
    puts("Training level-1 quantizer");
    v6 = *(this + 24);
  }

  else
  {
    v6 = 0;
  }

  faiss::Level1Quantizer::train_q1(this + 5, a2, a3, v6 & 1, *(this + 7));
  if (*(this + 24) == 1)
  {
    puts("Training IVF residual");
  }

  result = (*(*this + 168))(this, a2, a3);
  *(this + 25) = 1;
  return result;
}

uint64_t faiss::IndexIVF::train_residual(uint64_t this, uint64_t a2, const float *a3)
{
  if (*(this + 24) == 1)
  {
    return puts("IndexIVF: no residual training");
  }

  return this;
}

BOOL faiss::IndexIVF::check_compatible_for_merge(faiss::IndexIVF *this, const faiss::IndexIVF *a2)
{
  if (*(a2 + 2) != *(this + 2))
  {
    memset(&v25, 0, sizeof(v25));
    v5 = snprintf(0, 0, "Error: '%s' failed", "other.d == d");
    std::string::resize(&v25, v5 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v25;
    }

    else
    {
      v6 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v6, size, "Error: '%s' failed", "other.d == d");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v25, "void faiss::IndexIVF::check_compatible_for_merge(const IndexIVF &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 991);
  }

  if (*(a2 + 6) != *(this + 6))
  {
    memset(&v25, 0, sizeof(v25));
    v9 = snprintf(0, 0, "Error: '%s' failed", "other.nlist == nlist");
    std::string::resize(&v25, v9 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v25;
    }

    else
    {
      v10 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v10, v11, "Error: '%s' failed", "other.nlist == nlist");
    v12 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v12, &v25, "void faiss::IndexIVF::check_compatible_for_merge(const IndexIVF &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 992);
  }

  if (*(a2 + 16) != *(this + 16))
  {
    memset(&v25, 0, sizeof(v25));
    v13 = snprintf(0, 0, "Error: '%s' failed", "other.code_size == code_size");
    std::string::resize(&v25, v13 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v25;
    }

    else
    {
      v14 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v14, v15, "Error: '%s' failed", "other.code_size == code_size");
    v16 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v16, &v25, "void faiss::IndexIVF::check_compatible_for_merge(const IndexIVF &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 993);
  }

  result = std::type_info::operator==[abi:ne200100](*(*this - 8), *(*a2 - 8));
  if (!result)
  {
    memset(&v25, 0, sizeof(v25));
    v17 = snprintf(0, 0, "Error: '%s' failed: can only merge indexes of the same type", "typeid(*this) == typeid(other)");
    std::string::resize(&v25, v17 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v18, v19, "Error: '%s' failed: can only merge indexes of the same type", "typeid(*this) == typeid(other)");
    v20 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v20, &v25, "void faiss::IndexIVF::check_compatible_for_merge(const IndexIVF &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 996);
  }

  if (*(this + 40) | *(a2 + 40))
  {
    memset(&v25, 0, sizeof(v25));
    v21 = snprintf(0, 0, "Error: '%s' failed: merge direct_map not implemented", "this->direct_map.no() && other.direct_map.no()");
    std::string::resize(&v25, v21 + 1, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v25;
    }

    else
    {
      v22 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v25.__r_.__value_.__l.__size_;
    }

    snprintf(v22, v23, "Error: '%s' failed: merge direct_map not implemented", "this->direct_map.no() && other.direct_map.no()");
    v24 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v24, &v25, "void faiss::IndexIVF::check_compatible_for_merge(const IndexIVF &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 999);
  }

  return result;
}

void sub_1D9C752E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::merge_from(faiss::InvertedLists **this, faiss::InvertedLists **a2, uint64_t a3)
{
  faiss::IndexIVF::check_compatible_for_merge(this, a2);
  faiss::InvertedLists::merge_from(this[14], a2[14], a3);
  this[2] = (a2[2] + this[2]);
  a2[2] = 0;
}

uint64_t faiss::IndexIVF::replace_invlists(uint64_t this, faiss::InvertedLists *a2, char a3)
{
  v5 = this;
  if (*(this + 120) == 1)
  {
    this = *(this + 112);
    if (this)
    {
      this = (*(*this + 120))(this);
    }

    *(v5 + 112) = 0;
  }

  if (a2)
  {
    if (*(a2 + 1) != *(v5 + 48))
    {
      memset(&v16, 0, sizeof(v16));
      v8 = snprintf(0, 0, "Error: '%s' failed", "il->nlist == nlist");
      std::string::resize(&v16, v8 + 1, 0);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v16;
      }

      else
      {
        v9 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      snprintf(v9, size, "Error: '%s' failed", "il->nlist == nlist");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v16, "void faiss::IndexIVF::replace_invlists(InvertedLists *, BOOL)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1018);
    }

    v6 = *(a2 + 2);
    if (v6 != -1 && v6 != *(v5 + 128))
    {
      memset(&v16, 0, sizeof(v16));
      v12 = snprintf(0, 0, "Error: '%s' failed", "il->code_size == code_size || il->code_size == InvertedLists::INVALID_CODE_SIZE");
      std::string::resize(&v16, v12 + 1, 0);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v16;
      }

      else
      {
        v13 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v16.__r_.__value_.__l.__size_;
      }

      snprintf(v13, v14, "Error: '%s' failed", "il->code_size == code_size || il->code_size == InvertedLists::INVALID_CODE_SIZE");
      v15 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v15, &v16, "void faiss::IndexIVF::replace_invlists(InvertedLists *, BOOL)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1021);
    }
  }

  *(v5 + 112) = a2;
  *(v5 + 120) = a3;
  return this;
}

void sub_1D9C75598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::copy_subset_to(faiss::IndexIVF *this, faiss::IndexIVF *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(this + 6);
  if (v5 != *(a2 + 6))
  {
    memset(&v54, 0, sizeof(v54));
    v28 = snprintf(0, 0, "Error: '%s' failed", "nlist == other.nlist");
    std::string::resize(&v54, v28 + 1, 0);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v54;
    }

    else
    {
      v29 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    snprintf(v29, size, "Error: '%s' failed", "nlist == other.nlist");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v54, "virtual void faiss::IndexIVF::copy_subset_to(IndexIVF &, int, idx_t, idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1032);
  }

  if (*(this + 16) != *(a2 + 16))
  {
    memset(&v54, 0, sizeof(v54));
    v32 = snprintf(0, 0, "Error: '%s' failed", "code_size == other.code_size");
    std::string::resize(&v54, v32 + 1, 0);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v54;
    }

    else
    {
      v33 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v54.__r_.__value_.__l.__size_;
    }

    snprintf(v33, v34, "Error: '%s' failed", "code_size == other.code_size");
    v35 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v35, &v54, "virtual void faiss::IndexIVF::copy_subset_to(IndexIVF &, int, idx_t, idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1033);
  }

  if (*(a2 + 40))
  {
    memset(&v54, 0, sizeof(v54));
    v36 = snprintf(0, 0, "Error: '%s' failed", "other.direct_map.no()");
    std::string::resize(&v54, v36 + 1, 0);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v54;
    }

    else
    {
      v37 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v54.__r_.__value_.__l.__size_;
    }

    snprintf(v37, v38, "Error: '%s' failed", "other.direct_map.no()");
    v39 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v39, &v54, "virtual void faiss::IndexIVF::copy_subset_to(IndexIVF &, int, idx_t, idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1034);
  }

  v8 = a3;
  if (a3 >= 3)
  {
    memset(&v54, 0, sizeof(v54));
    v40 = snprintf(0, 0, "Error: '%s' failed: subset type %d not implemented", "subset_type == 0 || subset_type == 1 || subset_type == 2", a3);
    std::string::resize(&v54, v40 + 1, 0);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v54;
    }

    else
    {
      v41 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v54.__r_.__value_.__l.__size_;
    }

    snprintf(v41, v42, "Error: '%s' failed: subset type %d not implemented", "subset_type == 0 || subset_type == 1 || subset_type == 2", a3);
    v43 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v43, &v54, "virtual void faiss::IndexIVF::copy_subset_to(IndexIVF &, int, idx_t, idx_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1038);
  }

  if (v5)
  {
    v11 = 0;
    v46 = 0;
    v48 = 0;
    v12 = 0;
    v13 = *(a2 + 14);
    while (1)
    {
      v14 = (***(this + 14))(*(this + 14), v12);
      v54.__r_.__value_.__r.__words[0] = *(this + 14);
      v54.__r_.__value_.__l.__size_ = (*(*v54.__r_.__value_.__l.__data_ + 16))(v54.__r_.__value_.__r.__words[0], v12);
      v54.__r_.__value_.__r.__words[2] = v12;
      if (v8)
      {
        break;
      }

      if (v14)
      {
        v50 = v11;
        for (i = 0; i != v14; ++i)
        {
          v25 = *(v54.__r_.__value_.__l.__size_ + 8 * i);
          v26 = v25 >= a4 && v25 < a5;
          if (v26)
          {
            v27 = (*(**(this + 14) + 40))(*(this + 14), v12, i);
            v51 = *(this + 14);
            v52 = (*(*v51 + 48))(v51, v12, i);
            v53 = v12;
            (*(*v13 + 64))(v13, v12, v27, v52);
            faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v51);
            ++*(a2 + 2);
          }
        }

LABEL_29:
        v11 = v50;
      }

LABEL_30:
      v11 += v14;
      faiss::InvertedLists::ScopedIds::~ScopedIds(&v54);
      if (++v12 >= *(this + 6))
      {
        goto LABEL_33;
      }
    }

    if (v8 == 2)
    {
      v50 = v11;
      v17 = v14 + v11;
      v18 = *(this + 2);
      v19 = (v14 + v11) * a4 / v18;
      v20 = v19 - v46;
      v45 = v19;
      v47 = v17 * a5 / v18;
      v21 = v47 - v48;
      v26 = v47 - v48 > v20;
      v49 = v47 - v48 - v20;
      if (v26)
      {
        do
        {
          v22 = (*(**(this + 14) + 40))(*(this + 14), v12, v20);
          v51 = *(this + 14);
          v52 = (*(*v51 + 48))(v51, v12, v20);
          v53 = v12;
          (*(*v13 + 64))(v13, v12, v22, v52);
          faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v51);
          ++v20;
        }

        while (v20 < v21);
      }

      *(a2 + 2) += v49;
      v23 = v47;
      v46 = v45;
      v48 = v23;
      v8 = a3;
    }

    else
    {
      if (v8 != 1 || !v14)
      {
        goto LABEL_30;
      }

      v50 = v11;
      for (j = 0; j != v14; ++j)
      {
        if (*(v54.__r_.__value_.__l.__size_ + 8 * j) % a4 == a5)
        {
          v16 = (*(**(this + 14) + 40))(*(this + 14), v12, j);
          v51 = *(this + 14);
          v52 = (*(*v51 + 48))(v51, v12, j);
          v53 = v12;
          (*(*v13 + 64))(v13, v12, v16, v52);
          faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v51);
          ++*(a2 + 2);
        }
      }
    }

    goto LABEL_29;
  }

  v11 = 0;
LABEL_33:
  if (v11 != *(this + 2))
  {
    faiss::IndexIVF::copy_subset_to();
  }
}

void sub_1D9C75CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVF::~IndexIVF(faiss::IndexIVF *this)
{
  *this = &unk_1F55392B8;
  if (*(this + 120) == 1)
  {
    v2 = *(this + 14);
    if (v2)
    {
      (*(*v2 + 120))(v2);
    }
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(this + 192);
  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  if (*(this + 57) == 1)
  {
    v4 = *(this + 5);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  faiss::Index::~Index(this);
}

double faiss::IndexIVFStats::reset(faiss::IndexIVFStats *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void faiss::InvertedListScanner::scan_codes_range()
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v1, "scan_codes_range not implemented");
  faiss::FaissException::FaissException(exception, v1, "virtual void faiss::InvertedListScanner::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVF.cpp", 1126);
}

void sub_1D9C75EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void faiss::DirectMap::~DirectMap(faiss::DirectMap *this)
{
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(this + 32);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

faiss::InvertedLists::ScopedIds *std::unique_ptr<faiss::InvertedLists::ScopedIds>::reset[abi:ne200100](faiss::InvertedLists::ScopedIds **a1, faiss::InvertedLists::ScopedIds *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    faiss::InvertedLists::ScopedIds::~ScopedIds(result);

    JUMPOUT(0x1DA73F410);
  }

  return result;
}

void *std::vector<faiss::IndexIVFStats>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<faiss::IndexIVFStats>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C75FFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<faiss::IndexIVFStats>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::IndexIVFStats>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::IndexIVFStats>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<faiss::RangeSearchPartialResult *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<faiss::RangeSearchPartialResult *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C76118(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<faiss::RangeSearchPartialResult *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void *std::vector<faiss::RangeQueryResult *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<faiss::RangeSearchPartialResult *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C761CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void faiss::IndexIVFStats::get_indexIVF_stats()
{
  if (__cxa_guard_acquire(&_MergedGlobals_3))
  {
    *&qword_1ECB70E90 = 0u;
    unk_1ECB70E80 = 0u;
    unk_1ECB70E70 = 0u;

    __cxa_guard_release(&_MergedGlobals_3);
  }
}

void faiss::VectorTransform::reverse_transform(faiss::VectorTransform *this, uint64_t a2, const float *a3, float *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "reverse transform not implemented");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::VectorTransform::reverse_transform(idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 149);
}

void sub_1D9C76404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

double faiss::LinearTransform::LinearTransform(faiss::LinearTransform *this, int a2, int a3, char a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *this = &unk_1F5539448;
  *(this + 17) = a4;
  *(this + 18) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  return result;
}

{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *this = &unk_1F5539448;
  *(this + 17) = a4;
  *(this + 18) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  return result;
}

uint64_t faiss::LinearTransform::apply_noalloc(faiss::LinearTransform *this, uint64_t a2, float *b, float *c__)
{
  if ((*(this + 16) & 1) == 0)
  {
    memset(&alpha, 0, sizeof(alpha));
    v15 = snprintf(0, 0, "Error: '%s' failed: Transformation not trained yet", "is_trained");
    std::string::resize(&alpha, v15 + 1, 0);
    if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_alpha = &alpha;
    }

    else
    {
      p_alpha = alpha.__r_.__value_.__r.__words[0];
    }

    if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(alpha.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = alpha.__r_.__value_.__l.__size_;
    }

    snprintf(p_alpha, size, "Error: '%s' failed: Transformation not trained yet", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &alpha, "virtual void faiss::LinearTransform::apply_noalloc(Index::idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 167);
  }

  if (*(this + 17))
  {
    v4 = *(this + 6);
    v5 = *(this + 3);
    if (v5 != (*(this + 7) - v4) >> 2)
    {
      memset(&alpha, 0, sizeof(alpha));
      v23 = snprintf(0, 0, "Error: '%s' failed: Bias not initialized", "b.size() == d_out");
      std::string::resize(&alpha, v23 + 1, 0);
      if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &alpha;
      }

      else
      {
        v24 = alpha.__r_.__value_.__r.__words[0];
      }

      if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(alpha.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = alpha.__r_.__value_.__l.__size_;
      }

      snprintf(v24, v25, "Error: '%s' failed: Bias not initialized", "b.size() == d_out");
      v26 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v26, &alpha, "virtual void faiss::LinearTransform::apply_noalloc(Index::idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 171);
    }

    v6 = 1.0;
    if (a2 >= 1)
    {
      v7 = 0;
      v8 = c__;
      do
      {
        v9 = v5;
        v10 = v4;
        if (v5 >= 1)
        {
          do
          {
            v11 = *v10++;
            *v8++ = v11;
            --v9;
          }

          while (v9);
        }

        ++v7;
      }

      while (v7 != a2);
    }
  }

  else
  {
    LODWORD(v5) = *(this + 3);
    v6 = 0.0;
  }

  beta = v6;
  v12 = *(this + 3);
  v13 = *(this + 2);
  if (v13 * v5 != (*(this + 4) - v12) >> 2)
  {
    memset(&alpha, 0, sizeof(alpha));
    v19 = snprintf(0, 0, "Error: '%s' failed: Transformation matrix not initialized", "A.size() == d_out * d_in");
    std::string::resize(&alpha, v19 + 1, 0);
    if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &alpha;
    }

    else
    {
      v20 = alpha.__r_.__value_.__r.__words[0];
    }

    if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(alpha.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = alpha.__r_.__value_.__l.__size_;
    }

    snprintf(v20, v21, "Error: '%s' failed: Transformation matrix not initialized", "A.size() == d_out * d_in");
    v22 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v22, &alpha, "virtual void faiss::LinearTransform::apply_noalloc(Index::idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 182);
  }

  LODWORD(alpha.__r_.__value_.__l.__data_) = 1065353216;
  n = a2;
  m = v5;
  lda = v13;
  return sgemm_("Transposed", "Not transposed", &m, &n, &lda, &alpha, v12, &lda, b, &lda, &beta, c__, &m);
}

void sub_1D9C767EC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::LinearTransform::transform_transpose(faiss::LinearTransform *this, int a2, float *b, float *c__)
{
  if (*(this + 17) == 1)
  {
    operator new[]();
  }

  v6 = *(this + 2);
  k = *(this + 3);
  lda = v6;
  n = a2;
  beta = 0.0;
  alpha = 1.0;
  result = sgemm_("Not", "Not", &lda, &n, &k, &alpha, *(this + 3), &lda, b, &k, &beta, c__, &lda);
  if (b)
  {
    if (*(this + 17))
    {
      return MEMORY[0x1DA73F3F0](b, 0x1000C8052888210);
    }
  }

  return result;
}

void faiss::LinearTransform::set_is_orthonormal(faiss::LinearTransform *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2 > v3)
  {
    *(this + 18) = 0;
    return;
  }

  if (!v2)
  {
    *(this + 18) = 1;
    return;
  }

  if (v3 * v2 > ((*(this + 4) - *(this + 3)) >> 2))
  {
    faiss::LinearTransform::set_is_orthonormal();
  }

  std::vector<float>::vector[abi:ne200100](c__, (v2 * v2));
  v4 = *(this + 3);
  lda = *(this + 2);
  alpha = 1.0;
  n = v4;
  v13 = 0;
  sgemm_("Transposed", "Not", &n, &n, &lda, &alpha, *(this + 3), &lda, *(this + 3), &lda, &v13, c__[0], &n);
  *(this + 18) = 1;
  v5 = *(this + 3);
  v6 = c__[0];
  if (v5 < 1)
  {
    if (!c__[0])
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    v8 = c__[0];
    do
    {
      v9 = v8;
      v10 = v7;
      v11 = v5;
      do
      {
        v12 = *v9;
        if (!v10)
        {
          v12 = *v9 + -1.0;
        }

        if (fabsf(v12) > 0.00004)
        {
          *(this + 18) = 0;
        }

        --v10;
        v9 += v5;
        --v11;
      }

      while (v11);
      ++v7;
      ++v8;
    }

    while (v7 != v5);
  }

  c__[1] = v6;
  operator delete(v6);
}

void sub_1D9C76AC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t faiss::LinearTransform::reverse_transform(faiss::LinearTransform *this, int a2, float *a3, float *a4)
{
  if (*(this + 18) != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v6, "reverse transform not implemented for non-orthonormal matrices");
    faiss::FaissException::FaissException(exception, v6, "virtual void faiss::LinearTransform::reverse_transform(idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 289);
  }

  return faiss::LinearTransform::transform_transpose(this, a2, a3, a4);
}

void sub_1D9C76B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t faiss::LinearTransform::print_if_verbose(uint64_t result, const char *a2, void *a3, int a4, int a5)
{
  if (*(result + 72) == 1)
  {
    printf("matrix %s: %d*%d [\n", a2, a4, a5);
    if (a5 * a4 > ((a3[1] - *a3) >> 3))
    {
      memset(&v16, 0, sizeof(v16));
      v12 = snprintf(0, 0, "Error: '%s' failed", "mat.size() >= n * d");
      std::string::resize(&v16, v12 + 1, 0);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v16;
      }

      else
      {
        v13 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      snprintf(v13, size, "Error: '%s' failed", "mat.size() >= n * d");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v16, "void faiss::LinearTransform::print_if_verbose(const char *, const std::vector<double> &, int, int) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 301);
    }

    if (a4 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a5;
        v11 = v8;
        if (a5 >= 1)
        {
          do
          {
            printf("%10.5g ", *(*a3 + v11));
            v11 += 8;
            --v10;
          }

          while (v10);
        }

        putchar(10);
        ++v9;
        v8 += 8 * a5;
      }

      while (v9 != a4);
    }

    return puts("]");
  }

  return result;
}

void sub_1D9C76DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::RandomRotationMatrix::init(faiss::RandomRotationMatrix *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2 <= v3)
  {
    std::vector<float>::resize(this + 1, v3 * v2);
    v14 = *(this + 3);
    faiss::float_randn(v14, (*(this + 2) * *(this + 3)));
    faiss::matrix_qr(*(this + 2), *(this + 3), v14, v15);
  }

  else
  {
    std::vector<float>::resize(this + 1, (v2 * v2));
    v4 = *(this + 3);
    faiss::float_randn(v4, (*(this + 3) * *(this + 3)));
    faiss::matrix_qr(*(this + 3), *(this + 3), v4, v5);
    v7 = *(this + 2);
    v6 = *(this + 3);
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (v7 >= 1)
        {
          v10 = v7;
          v11 = v4;
          v12 = v9;
          do
          {
            v13 = *v12;
            v12 = (v12 + 4);
            *v11 = v13;
            v11 = (v11 + 4);
            --v10;
          }

          while (v10);
        }

        ++v8;
        v9 = (v9 + 4 * v6);
        v4 = (v4 + 4 * v7);
      }

      while (v8 != v6);
    }

    std::vector<float>::resize(this + 1, v7 * v6);
  }

  *(this + 18) = 1;
  *(this + 16) = 1;
}

uint64_t faiss::PCAMatrix::PCAMatrix(uint64_t this, int a2, int a3, float a4, char a5)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *this = &unk_1F5539480;
  *(this + 76) = a4;
  *(this + 80) = a5;
  *(this + 16) = 256;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
  *(this + 88) = 1000;
  *(this + 96) = 0;
  return this;
}

{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *this = &unk_1F5539480;
  *(this + 76) = a4;
  *(this + 80) = a5;
  *(this + 16) = 256;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
  *(this + 88) = 1000;
  *(this + 96) = 0;
  return this;
}

void faiss::PCAMatrix::train(faiss::PCAMatrix *this, int *a2, const float *a3)
{
  v66 = a2;
  v4 = faiss::fvecs_maybe_subsample(*(this + 2), &v66, (*(this + 11) * *(this + 2)), a3, *(this + 72), 0x4D2u);
  v5 = (this + 104);
  *(this + 14) = *(this + 13);
  v6 = *(this + 2);
  v65[0] = 0;
  std::vector<float>::resize(this + 13, v6, v65, v7);
  if (*(this + 17) == 1)
  {
    v8 = v66;
    v9 = *(this + 2);
    if (v66 >= 1)
    {
      v10 = 0;
      v11 = v4;
      do
      {
        if (v9 >= 1)
        {
          v12 = *v5;
          v13 = v9;
          do
          {
            v14 = *v11++;
            *v12 = v14 + *v12;
            ++v12;
            --v13;
          }

          while (v13);
        }

        v10 = (v10 + 1);
      }

      while (v10 != v8);
    }

    if (v9 >= 1)
    {
      v15 = v8;
      v16 = *v5;
      do
      {
        *v16 = *v16 / v15;
        ++v16;
        --v9;
      }

      while (v9);
    }
  }

  if (*(this + 72) == 1)
  {
    printf("mean=[");
    if (*(this + 2) >= 1)
    {
      v17 = 0;
      do
      {
        printf("%g ", *(*(this + 13) + 4 * v17++));
      }

      while (v17 < *(this + 2));
    }

    puts("]");
  }

  v18 = *(this + 2);
  if (v66 < v18)
  {
    std::vector<float>::vector[abi:ne200100](v65, v66 * v18);
    v19 = v66;
    if (v66)
    {
      v20 = 0;
      v21 = *(this + 2);
      v22 = *v65;
      v23 = 4 * v21;
      do
      {
        if (v21)
        {
          v24 = *v5;
          v25 = v22;
          v26 = v4;
          v27 = v21;
          do
          {
            v28 = *v26++;
            v29 = v28;
            v30 = *v24++;
            *v25++ = v29 - v30;
            --v27;
          }

          while (v27);
        }

        v20 = (v20 + 1);
        v4 = (v4 + v23);
        v22 = (v22 + v23);
      }

      while (v20 != v19);
    }

    std::vector<float>::vector[abi:ne200100](&b, v19 * v19);
    lda[0] = *(this + 2);
    n[0] = v66;
    beta = 0.0;
    alpha = 1.0;
    ssyrk_("Up", "Transposed", n, lda, &alpha, *v65, lda, &beta, b, n);
    if (*(this + 72) == 1 && *(this + 2) <= 10)
    {
      v31 = b;
      puts("gram=");
      v32 = v66;
      if (v66 >= 1)
      {
        for (i = 0; i < v66; ++i)
        {
          if (v32 >= 1)
          {
            v34 = 0;
            v35 = 0;
            do
            {
              printf("%10g ", v31[v35++]);
              v34 += 4;
            }

            while (v66 > v35);
            v31 = (v31 + v34);
          }

          putchar(10);
          v32 = v66;
        }
      }
    }

    std::vector<double>::vector[abi:ne200100](lda, v66 * v66);
    v36 = v66;
    if (v66)
    {
      v37 = v66 * v66;
      v38 = b;
      v39 = *lda;
      if ((v66 * v66) <= 1)
      {
        v37 = 1;
      }

      do
      {
        v40 = *v38++;
        *v39++ = v40;
        --v37;
      }

      while (v37);
    }

    std::vector<double>::vector[abi:ne200100](n, v36);
  }

  std::vector<float>::resize((this + 152), (v18 * v18));
  c__ = *(this + 19);
  v42 = *(this + 2);
  v43 = v66;
  if (v42 >= 1)
  {
    v44 = 0;
    v45 = -v66;
    v46 = *v5;
    v47 = *(this + 19);
    do
    {
      v48 = v42;
      v49 = v46;
      do
      {
        v50 = *v49++;
        *v47++ = (v46[v44] * v45) * v50;
        --v48;
      }

      while (v48);
      ++v44;
    }

    while (v44 != v42);
  }

  v65[0] = v42;
  LODWORD(b) = v43;
  lda[0] = 1065353216;
  ssyrk_("Up", "Non transposed", v65, &b, lda, v4, v65, lda, c__, v65);
  v51 = *(this + 2);
  if (*(this + 72) == 1 && v51 <= 10)
  {
    puts("cov=");
    v51 = *(this + 2);
    if (v51 >= 1)
    {
      v52 = 0;
      v53 = c__;
      do
      {
        if (v51 >= 1)
        {
          v54 = 0;
          do
          {
            v55 = *v53++;
            printf("%10g ", v55);
            ++v54;
          }

          while (v54 < *(this + 2));
        }

        putchar(10);
        ++v52;
        v51 = *(this + 2);
      }

      while (v52 < v51);
    }
  }

  std::vector<double>::vector[abi:ne200100](v65, (v51 * v51));
  v56 = *(this + 2);
  if (v56)
  {
    LODWORD(v57) = v56 * v56;
    v58 = *v65;
    if ((v56 * v56) <= 1)
    {
      v57 = 1;
    }

    else
    {
      v57 = v57;
    }

    do
    {
      v59 = *c__++;
      *v58 = v59;
      v58 += 2;
      --v57;
    }

    while (v57);
  }

  std::vector<double>::vector[abi:ne200100](&b, v56);
}

void sub_1D9C776C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v26 = *(v24 - 96);
  if (v26)
  {
    *(v24 - 88) = v26;
    operator delete(v26);
  }

  if (v23)
  {
    MEMORY[0x1DA73F3F0](v23, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

void anonymous namespace::eig(_anonymous_namespace_ *this, __CLPK_doublereal *__a, __CLPK_doublereal *__w, double *a4)
{
  __lwork = -1;
  __info = 0;
  __lda = this;
  __work = 0.0;
  dsyev_("Vectors as well", "Upper", &__lda, __a, &__lda, __w, &__work, &__lwork, &__info);
  __lwork = __work;
  operator new[]();
}

void faiss::PCAMatrix::prepare_Ab(faiss::PCAMatrix *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = *(this + 19);
  v5 = *(this + 20);
  v6 = (v5 - v4) >> 2;
  if (v6 < v3 * v2)
  {
    memset(&__p, 0, sizeof(__p));
    v46 = snprintf(0, 0, "Error: '%s' failed: PCA matrix cannot output %d dimensions from %d ", "d_out * d_in <= PCAMat.size()", v2, v3);
    std::string::resize(&__p, v46 + 1, 0);
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

    snprintf(p_p, size, "Error: '%s' failed: PCA matrix cannot output %d dimensions from %d ", "d_out * d_in <= PCAMat.size()", *(this + 3), *(this + 2));
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &__p, "void faiss::PCAMatrix::prepare_Ab()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 613);
  }

  if (*(this + 80))
  {
    if (*(this + 24))
    {
      memset(&__p, 0, sizeof(__p));
      v50 = snprintf(0, 0, "Error: '%s' failed: both balancing bins and applying a random rotation does not make sense", "balanced_bins == 0");
      std::string::resize(&__p, v50 + 1, 0);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &__p;
      }

      else
      {
        v51 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = __p.__r_.__value_.__l.__size_;
      }

      snprintf(v51, v52, "Error: '%s' failed: both balancing bins and applying a random rotation does not make sense", "balanced_bins == 0");
      v53 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v53, &__p, "void faiss::PCAMatrix::prepare_Ab()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 668);
    }

    LODWORD(__p.__r_.__value_.__r.__words[1]) = *(this + 3);
    HIDWORD(__p.__r_.__value_.__r.__words[1]) = v2;
    __p.__r_.__value_.__s.__data_[18] = 0;
    LOWORD(__p.__r_.__value_.__r.__words[2]) = 0;
    *b = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5539668;
    faiss::RandomRotationMatrix::init(&__p);
    v7 = *(this + 3);
    if (*(this + 19) != 0.0 && v7 >= 1)
    {
      v8 = 0;
      v9 = *(this + 16);
      v10 = b[0];
      do
      {
        v11 = powf(*(v9 + 4 * v8), *(this + 19));
        v12 = v7;
        v13 = v10;
        do
        {
          *v13 = v11 * *v13;
          v13 += v7;
          --v12;
        }

        while (v12);
        ++v8;
        ++v10;
      }

      while (v8 != v7);
    }

    std::vector<float>::resize(this + 1, v7 * *(this + 2));
    v14 = *(this + 3);
    lda[0] = *(this + 2);
    alpha = 1.0;
    k = v14;
    v58 = 0;
    sgemm_("Not", "Not", lda, &k, &k, &alpha, *(this + 19), lda, b[0], &k, &v58, *(this + 3), lda);
    faiss::LinearTransform::~LinearTransform(&__p);
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 3, v4, v5, v6);
    std::vector<float>::resize(this + 1, *(this + 2) * *(this + 3));
    if (*(this + 19) != 0.0)
    {
      v15 = *(this + 3);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *(this + 3);
        v18 = *(this + 16);
        v19 = *(this + 2);
        do
        {
          v20 = powf(*(v18 + 4 * v16), *(this + 19));
          v21 = v19;
          if (v19 >= 1)
          {
            do
            {
              *v17 = v20 * *v17;
              ++v17;
              --v21;
            }

            while (v21);
          }

          ++v16;
        }

        while (v16 != v15);
      }
    }

    v22 = *(this + 24);
    if (v22)
    {
      v23 = *(this + 3);
      v24 = v23 / v22;
      if (v23 % v22)
      {
        memset(&__p, 0, sizeof(__p));
        v54 = snprintf(0, 0, "Error: '%s' failed", "d_out % balanced_bins == 0");
        std::string::resize(&__p, v54 + 1, 0);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = &__p;
        }

        else
        {
          v55 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v56 = __p.__r_.__value_.__l.__size_;
        }

        snprintf(v55, v56, "Error: '%s' failed", "d_out % balanced_bins == 0");
        v57 = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(v57, &__p, "void faiss::PCAMatrix::prepare_Ab()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 630);
      }

      v25 = *(this + 3);
      *(this + 3) = 0;
      *(this + 4) = 0;
      *(this + 5) = 0;
      std::vector<float>::resize(this + 1, *(this + 2) * v23);
      std::vector<float>::vector[abi:ne200100](&__p, *(this + 24));
      std::vector<int>::vector[abi:ne200100](lda, *(this + 24));
      if (*(this + 3) >= 1)
      {
        v26 = 0;
        do
        {
          v27 = *(this + 24);
          v28 = *lda;
          if (v27 < 1)
          {
            v30 = -1;
          }

          else
          {
            v29 = 0;
            v30 = -1;
            v31 = 1.0e30;
            do
            {
              if (*(*lda + 4 * v29) < v24 && *(__p.__r_.__value_.__r.__words[0] + 4 * v29) < v31)
              {
                v30 = v29;
                v31 = *(__p.__r_.__value_.__r.__words[0] + 4 * v29);
              }

              ++v29;
            }

            while (v27 != v29);
          }

          v32 = *(*lda + 4 * v30);
          *(__p.__r_.__value_.__r.__words[0] + 4 * v30) = *(*(this + 16) + 4 * v26) + *(__p.__r_.__value_.__r.__words[0] + 4 * v30);
          v28[v30] = v32 + 1;
          memcpy((*(this + 3) + 4 * *(this + 2) * (v32 + v30 * v24)), &v25[4 * *(this + 2) * v26++], 4 * *(this + 2));
        }

        while (v26 < *(this + 3));
      }

      if (*(this + 72))
      {
        printf("  bin accu=[");
        if (*(this + 24) >= 1)
        {
          v33 = 0;
          do
          {
            printf("%g ", *(__p.__r_.__value_.__r.__words[0] + 4 * v33++));
          }

          while (v33 < *(this + 24));
        }

        puts("]");
      }

      if (*lda)
      {
        v67 = *lda;
        operator delete(*lda);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v25)
      {
        operator delete(v25);
      }
    }
  }

  *(this + 7) = *(this + 6);
  std::vector<float>::resize(this + 2, *(this + 3));
  v34 = *(this + 3);
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = *(this + 2);
    v38 = *(this + 6);
    do
    {
      if (v37 < 1)
      {
        v41 = 0.0;
      }

      else
      {
        v39 = *(this + 13);
        v40 = (*(this + 3) + v35);
        v41 = 0.0;
        v42 = v37;
        do
        {
          v43 = *v39++;
          v44 = v43;
          v45 = *v40++;
          v41 = v41 - (v44 * v45);
          --v42;
        }

        while (v42);
      }

      *(v38 + 4 * v36++) = v41;
      v35 += 4 * v37;
    }

    while (v36 != v34);
  }

  *(this + 18) = *(this + 19) == 0.0;
}

void sub_1D9C78054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::PCAMatrix::copy_from(faiss::PCAMatrix *this, const faiss::PCAMatrix *a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    memset(&v8, 0, sizeof(v8));
    v4 = snprintf(0, 0, "Error: '%s' failed", "other.is_trained");
    std::string::resize(&v8, v4 + 1, 0);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    snprintf(v5, size, "Error: '%s' failed", "other.is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v8, "void faiss::PCAMatrix::copy_from(const PCAMatrix &)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 600);
  }

  if (this != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 19, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
  }

  faiss::PCAMatrix::prepare_Ab(this);
  *(this + 16) = 1;
}

void sub_1D9C7820C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double faiss::ITQMatrix::ITQMatrix(faiss::ITQMatrix *this, int a2)
{
  *(this + 2) = a2;
  *(this + 3) = a2;
  *(this + 18) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *this = &unk_1F55394B8;
  *&result = 0x7B00000032;
  *(this + 76) = 0x7B00000032;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  return result;
}

{
  *(this + 2) = a2;
  *(this + 3) = a2;
  *(this + 18) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *this = &unk_1F55394B8;
  *&result = 0x7B00000032;
  *(this + 76) = 0x7B00000032;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  return result;
}

void faiss::ITQMatrix::train(faiss::ITQMatrix *this, uint64_t a2, float *a3)
{
  v6 = *(this + 2);
  v7 = v6 * v6;
  std::vector<double>::vector[abi:ne200100](c__, v7);
  v8 = *(this + 11);
  if (v7 == (*(this + 12) - v8) >> 3)
  {
    memcpy(c__[0], v8, 8 * v7);
  }

  else
  {
    LODWORD(v50) = v6;
    HIDWORD(v50) = v6;
    v52 = 0;
    v51 = 0;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    b = &unk_1F5539668;
    faiss::RandomRotationMatrix::init(&b);
    if (v6)
    {
      v9 = v53;
      v10 = c__[0];
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6 * v6;
      }

      do
      {
        v12 = *v9++;
        *v10++ = v12;
        --v11;
      }

      while (v11);
    }

    faiss::LinearTransform::~LinearTransform(&b);
  }

  v13 = v6 * a2;
  std::vector<double>::vector[abi:ne200100](&b, v13);
  if (v13)
  {
    v14 = b;
    v15 = v6 * a2;
    do
    {
      v16 = *a3++;
      *v14++ = v16;
      --v15;
    }

    while (v15);
  }

  std::vector<double>::vector[abi:ne200100](a, v6 * a2);
  std::vector<double>::vector[abi:ne200100](__a, v7);
  std::vector<double>::vector[abi:ne200100](__u, v7);
  std::vector<double>::vector[abi:ne200100](__vt, v7);
  std::vector<double>::vector[abi:ne200100](__s, v6);
  if (*(this + 19) >= 1)
  {
    v17 = 0;
    do
    {
      faiss::LinearTransform::print_if_verbose(this, "rotation", c__, v6, v6);
      lda[0] = v6;
      n = a2;
      alpha.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
      v38.__r_.__value_.__r.__words[0] = 0;
      dgemm_("N", "N", lda, &n, lda, &alpha, c__[0], lda, b, lda, &v38, a[0], lda);
      faiss::LinearTransform::print_if_verbose(this, "rotated_x", a, a2, v6);
      v18 = a[0];
      v19 = a[0];
      v20 = v6 * a2;
      if (v13)
      {
        do
        {
          if (*v19 >= 0.0)
          {
            v21 = 1.0;
          }

          else
          {
            v21 = -1.0;
          }

          *v19++ = v21;
          --v20;
        }

        while (v20);
      }

      lda[0] = v6;
      n = a2;
      alpha.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
      v38.__r_.__value_.__r.__words[0] = 0;
      dgemm_("N", "T", lda, lda, &n, &alpha, v18, lda, b, lda, &v38, __a[0], lda);
      faiss::LinearTransform::print_if_verbose(this, "cov_mat", __a, v6, v6);
      v42 = -1;
      n = v6;
      __info = 0;
      *lda = 0.0;
      dgesvd_("A", "A", &n, &n, __a[0], &n, __s[0], __u[0], &n, __vt[0], &n, lda, &v42, &__info);
      if (__info)
      {
        memset(&alpha, 0, sizeof(alpha));
        v34 = snprintf(0, 0, "Error: '%s' failed", "info == 0");
        std::string::resize(&alpha, v34 + 1, 0);
        if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_alpha = &alpha;
        }

        else
        {
          p_alpha = alpha.__r_.__value_.__r.__words[0];
        }

        if ((alpha.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(alpha.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = alpha.__r_.__value_.__l.__size_;
        }

        snprintf(p_alpha, size, "Error: '%s' failed", "info == 0");
        exception = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(exception, &alpha, "virtual void faiss::ITQMatrix::train(Index::idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 814);
      }

      v42 = *lda;
      std::vector<double>::vector[abi:ne200100](&alpha, *lda);
      dgesvd_("A", "A", &n, &n, __a[0], &n, __s[0], __u[0], &n, __vt[0], &n, alpha.__r_.__value_.__l.__data_, &v42, &__info);
      if (__info)
      {
        memset(&v38, 0, sizeof(v38));
        v30 = snprintf(0, 0, "Error: '%s' failed: sgesvd returned info=%d", "info == 0", __info);
        std::string::resize(&v38, v30 + 1, 0);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v38;
        }

        else
        {
          v31 = v38.__r_.__value_.__r.__words[0];
        }

        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v38.__r_.__value_.__l.__size_;
        }

        snprintf(v31, v32, "Error: '%s' failed: sgesvd returned info=%d", "info == 0", __info);
        v33 = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(v33, &v38, "virtual void faiss::ITQMatrix::train(Index::idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 831);
      }

      if (alpha.__r_.__value_.__r.__words[0])
      {
        alpha.__r_.__value_.__l.__size_ = alpha.__r_.__value_.__r.__words[0];
        operator delete(alpha.__r_.__value_.__l.__data_);
      }

      faiss::LinearTransform::print_if_verbose(this, "u", __u, v6, v6);
      faiss::LinearTransform::print_if_verbose(this, "vt", __vt, v6, v6);
      lda[0] = v6;
      alpha.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
      v38.__r_.__value_.__r.__words[0] = 0;
      dgemm_("N", "T", lda, lda, lda, &alpha, __u[0], lda, __vt[0], lda, &v38, c__[0], lda);
      faiss::LinearTransform::print_if_verbose(this, "final rot", c__, v6, v6);
      ++v17;
    }

    while (v17 < *(this + 19));
  }

  std::vector<float>::resize(this + 1, v7);
  if (v6)
  {
    v22 = 0;
    v23 = c__[0];
    v24 = *(this + 3);
    do
    {
      v25 = v23;
      v26 = v24;
      v27 = v6;
      do
      {
        v28 = *v25++;
        v29 = v28;
        *v26 = v29;
        v26 += v6;
        --v27;
      }

      while (v27);
      ++v22;
      ++v24;
      v23 += v6;
    }

    while (v22 != v6);
  }

  *(this + 16) = 1;
  if (__s[0])
  {
    __s[1] = __s[0];
    operator delete(__s[0]);
  }

  if (__vt[0])
  {
    __vt[1] = __vt[0];
    operator delete(__vt[0]);
  }

  if (__u[0])
  {
    __u[1] = __u[0];
    operator delete(__u[0]);
  }

  if (__a[0])
  {
    __a[1] = __a[0];
    operator delete(__a[0]);
  }

  if (a[0])
  {
    a[1] = a[0];
    operator delete(a[0]);
  }

  if (b)
  {
    v50 = b;
    operator delete(b);
  }

  if (c__[0])
  {
    c__[1] = c__[0];
    operator delete(c__[0]);
  }
}

void sub_1D9C78970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  faiss::LinearTransform::~LinearTransform((v45 - 208));
  v47 = *(v45 - 128);
  if (v47)
  {
    *(v45 - 120) = v47;
    operator delete(v47);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::ITQTransform::ITQTransform(uint64_t this, int a2, int a3, char a4)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 1;
  *this = &unk_1F55394F0;
  *(this + 24) = 0;
  *(this + 32) = 0u;
  *(this + 48) = a4;
  *(this + 64) = a3;
  *(this + 68) = a3;
  *(this + 74) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0u;
  *(this + 96) = 0u;
  *(this + 112) = 0u;
  *(this + 128) = 0;
  *(this + 56) = &unk_1F55394B8;
  *(this + 132) = 0x7B00000032;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *(this + 144) = 0;
  *(this + 184) = a2;
  *(this + 188) = a3;
  *(this + 176) = &unk_1F5539448;
  *(this + 193) = 0;
  *(this + 192) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0;
  if (a2 != a3 && (a4 & 1) == 0)
  {
    memset(&v8, 0, sizeof(v8));
    v4 = snprintf(0, 0, "Error: '%s' failed", "d_in == d_out");
    std::string::resize(&v8, v4 + 1, 0);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    snprintf(v5, size, "Error: '%s' failed", "d_in == d_out");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v8, "faiss::ITQTransform::ITQTransform(int, int, BOOL)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 870);
  }

  *(this + 168) = 10;
  *(this + 16) = 0;
  return this;
}

void sub_1D9C78C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, faiss::LinearTransform *a12, faiss::ITQMatrix *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  faiss::LinearTransform::~LinearTransform(a12);
  faiss::ITQMatrix::~ITQMatrix(a13);
  v21 = *a11;
  if (*a11)
  {
    *(a10 + 32) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void faiss::ITQTransform::train(faiss::ITQTransform *this, int *a2, const float *a3)
{
  v13 = a2;
  if (*(this + 16) != 1)
  {
    v5 = *(this + 2);
    v6 = *(this + 42) * v5;
    if (v6 <= 0x8000)
    {
      v7 = 0x8000;
    }

    else
    {
      v7 = v6;
    }

    faiss::fvecs_maybe_subsample(v5, &v13, v7, a3, 0, 0x4D2u);
    operator new[]();
  }

  memset(&v12, 0, sizeof(v12));
  v8 = snprintf(0, 0, "Error: '%s' failed", "!is_trained");
  std::string::resize(&v12, v8 + 1, 0);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  snprintf(v9, size, "Error: '%s' failed", "!is_trained");
  exception = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(exception, &v12, "virtual void faiss::ITQTransform::train(idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 877);
}

void sub_1D9C79164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::ITQTransform::apply_noalloc(faiss::ITQTransform *this, uint64_t a2, const float *a3, float *a4)
{
  if (*(this + 16))
  {
    operator new[]();
  }

  memset(&v8, 0, sizeof(v8));
  v4 = snprintf(0, 0, "Error: '%s' failed: Transformation not trained yet", "is_trained");
  std::string::resize(&v8, v4 + 1, 0);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  snprintf(v5, size, "Error: '%s' failed: Transformation not trained yet", "is_trained");
  exception = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(exception, &v8, "virtual void faiss::ITQTransform::apply_noalloc(Index::idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 950);
}

void sub_1D9C793B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double faiss::OPQMatrix::OPQMatrix(faiss::OPQMatrix *this, int a2, int a3, int a4)
{
  if (a4 == -1)
  {
    v4 = a2;
  }

  else
  {
    v4 = a4;
  }

  *(this + 2) = a2;
  *(this + 3) = v4;
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *this = &unk_1F5539528;
  *(this + 19) = a3;
  *&result = 0x400000032;
  *(this + 10) = 0x400000032;
  *(this + 22) = 40;
  *(this + 104) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0x10000;
  *(this + 14) = 0;
  return result;
}

{
  if (a4 == -1)
  {
    v4 = a2;
  }

  else
  {
    v4 = a4;
  }

  *(this + 2) = a2;
  *(this + 3) = v4;
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *this = &unk_1F5539528;
  *(this + 19) = a3;
  *&result = 0x400000032;
  *(this + 10) = 0x400000032;
  *(this + 22) = 40;
  *(this + 104) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0x10000;
  *(this + 14) = 0;
  return result;
}

void faiss::OPQMatrix::train(faiss::OPQMatrix *this, int *a2, const float *a3)
{
  v85 = a2;
  v5 = faiss::fvecs_maybe_subsample(*(this + 2), &v85, *(this + 12), a3, *(this + 104), 0x4D2u);
  v6 = v5;
  if (v5 == a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(this + 2);
  LODWORD(v9) = *(this + 3);
  v62 = v9;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v9;
  }

  v63 = v9;
  v10 = v9;
  if (*(this + 104) == 1)
  {
    printf("OPQMatrix::train: training an OPQ rotation matrix for M=%d from %lld vectors in %dD -> %dD\n", *(this + 19), v85, v8, v62);
  }

  std::vector<float>::vector[abi:ne200100](b, v85 * v10);
  std::vector<float>::vector[abi:ne200100](__p, v10);
  v11 = v85;
  v12 = __p[0].__r_.__value_.__r.__words[0];
  if (v85)
  {
    v13 = 0;
    v14 = *(this + 2);
    v15 = v6;
    do
    {
      v16 = v14;
      v17 = v12;
      if (v14 >= 1)
      {
        do
        {
          v18 = *v15++;
          *v17 = v18 + *v17;
          ++v17;
          --v16;
        }

        while (v16);
      }

      v13 = (v13 + 1);
    }

    while (v13 != v11);
  }

  if (v63)
  {
    v19 = v63;
    v20 = v12;
    do
    {
      *v20 = *v20 / v11;
      ++v20;
      v19 = (v19 - 1);
    }

    while (v19);
  }

  if (v11)
  {
    v21 = 0;
    v22 = b[0];
    v23 = *(this + 2);
    do
    {
      v24 = v23;
      v25 = v12;
      if (v23 >= 1)
      {
        do
        {
          v26 = *v6++;
          v27 = v26;
          v28 = *v25++;
          *v22++ = v27 - v28;
          --v24;
        }

        while (v24);
      }

      v22 += v10 - v23;
      v21 = (v21 + 1);
    }

    while (v21 != v11);
  }

  if (v12)
  {
    __p[0].__r_.__value_.__l.__size_ = v12;
    operator delete(v12);
  }

  v29 = *(this + 3);
  v30 = *(this + 4) - v29;
  if (v30)
  {
    if (v10 * v62 != v30 >> 2)
    {
      memset(__p, 0, 24);
      v31 = snprintf(0, 0, "Error: '%s' failed", "A.size() == d * d2");
      std::string::resize(__p, v31 + 1, 0);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      snprintf(v32, size, "Error: '%s' failed", "A.size() == d * d2");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, __p, "virtual void faiss::OPQMatrix::train(Index::idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 1056);
    }
  }

  else
  {
    std::vector<float>::resize(this + 1, v10 * v10);
    v29 = *(this + 3);
    if (*(this + 104) == 1)
    {
      printf("  OPQMatrix::train: making random %zd*%zd rotation\n", v10, v10);
    }

    faiss::float_randn(v29, (v10 * v10));
    faiss::matrix_qr(v63, v63, v29, v35);
    std::vector<float>::resize(this + 1, v10 * v62);
  }

  std::vector<float>::vector[abi:ne200100](c__, v85 * v62);
  std::vector<float>::vector[abi:ne200100](v82, v85 * v62);
  std::vector<float>::vector[abi:ne200100](v81, v85 * v10);
  a = v29;
  v60 = v10 * v10;
  std::vector<float>::vector[abi:ne200100](v80, 4 * v60);
  faiss::ProductQuantizer::ProductQuantizer(__p, v62, *(this + 19), 8uLL);
  v58 = v10;
  v36 = *(this + 14);
  if (v36)
  {
    v37 = *(this + 14);
  }

  else
  {
    v37 = __p;
  }

  v38 = std::vector<unsigned char>::vector[abi:ne200100](v74, v85 * v37[1].__r_.__value_.__l.__size_);
  v39 = faiss::getmillisecs(v38);
  v59 = v7;
  if (*(this + 20) >= 1)
  {
    v40 = v39;
    v41 = 0;
    if (v36)
    {
      v42 = v36;
    }

    else
    {
      v42 = __p;
    }

    do
    {
      lda[0] = v63;
      n = v85;
      m = v62;
      alpha = 1.0;
      k = 0;
      sgemm_("Transposed", "Not transposed", &m, &n, lda, &alpha, v29, lda, b[0], lda, &k, c__[0], &m);
      HIDWORD(v42[3].__r_.__value_.__r.__words[0]) = 1000;
      v43 = 84;
      if (!v41)
      {
        v43 = 88;
      }

      LODWORD(v42[2].__r_.__value_.__r.__words[1]) = *(this + v43);
      v42[2].__r_.__value_.__s.__data_[0] = *(this + 104);
      faiss::ProductQuantizer::train(v37, v85, c__[0]);
      if (*(this + 104) == 1)
      {
        puts("    encode / decode");
      }

      if (v42[4].__r_.__value_.__r.__words[0])
      {
        faiss::ProductQuantizer::compute_codes_with_assign_index(v37, c__[0], v74[0]);
      }

      else
      {
        faiss::ProductQuantizer::compute_codes(v37, c__[0], v74[0], v85);
      }

      faiss::ProductQuantizer::decode(v37, v74[0], v82[0], v85);
      v45 = faiss::fvec_L2sqr(v82[0], c__[0], v85 * v62);
      v46 = v85;
      if (*(this + 104) == 1)
      {
        v47 = v45;
        v48 = v42[2].__r_.__value_.__r.__words[1];
        v49 = faiss::getmillisecs(v44);
        printf("    Iteration %d (%d PQ iterations):%.3f s, obj=%g\n", v41, v48, (v49 - v40) / 1000.0, (v47 / v46));
        v50 = *(this + 104);
        v51 = v80[0];
        n = v62;
        m = v63;
        k = v85;
        beta = 0;
        alpha = 1.0;
        if (v50)
        {
          puts("    X * recons");
        }
      }

      else
      {
        v51 = v80[0];
        n = v62;
        m = v63;
        alpha = 1.0;
        k = v85;
        beta = 0;
      }

      sgemm_("Not", "Transposed", &n, &m, &k, &alpha, v82[0], &n, b[0], &m, &beta, v81[0], &n);
      v52 = &v51[v60];
      v67 = -1;
      ldc = -1;
      v66 = 0.0;
      sgesvd_("All", "All", &n, &m, v81[0], &n, &v51[2 * v58 * v58], v52, &n, v51, &m, &v66, &ldc, &v67);
      ldc = v66;
      std::vector<float>::vector[abi:ne200100](lda, v66);
      sgesvd_("All", "All", &n, &m, v81[0], &n, &v51[2 * v58 * v58], v52, &n, v51, &m, *lda, &ldc, &v67);
      v29 = a;
      sgemm_("Transposed", "Transposed", &m, &n, &n, &alpha, v51, &m, v52, &n, &beta, a, &m);
      if (*lda)
      {
        v65 = *lda;
        operator delete(*lda);
      }

      HIDWORD(v42[2].__r_.__value_.__r.__words[0]) = 1;
      ++v41;
    }

    while (v41 < *(this + 20));
  }

  v53 = *(this + 2);
  if (v63 > v53)
  {
    LODWORD(v54) = *(this + 3);
    if (v54 < 1)
    {
      v57 = (this + 24);
    }

    else
    {
      v55 = 0;
      v56 = 0;
      v57 = (this + 24);
      do
      {
        memmove((*(this + 3) + 4 * v56 * *(this + 2)), (*(this + 3) + v55), 4 * *(this + 2));
        ++v56;
        v54 = *(this + 3);
        v55 += 4 * v58;
      }

      while (v56 < v54);
      v53 = *(this + 2);
    }

    std::vector<float>::resize(v57, (v53 * v54));
  }

  *(this + 16) = 1;
  *(this + 18) = 1;
  if (v74[0])
  {
    v74[1] = v74[0];
    operator delete(v74[0]);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }

  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }

  if (v82[0])
  {
    v82[1] = v82[0];
    operator delete(v82[0]);
  }

  if (c__[0])
  {
    c__[1] = c__[0];
    operator delete(c__[0]);
  }

  if (b[0])
  {
    b[1] = b[0];
    operator delete(b[0]);
  }

  if (v59)
  {
    MEMORY[0x1DA73F3F0](v59, 0x1000C8052888210);
  }
}

void sub_1D9C79CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  __cxa_free_exception(v40);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 152);
  if (v44)
  {
    *(v42 - 144) = v44;
    operator delete(v44);
  }

  if (v41)
  {
    MEMORY[0x1DA73F3F0](v41, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::NormalizationTransform::NormalizationTransform(uint64_t this, int a2, float a3)
{
  *(this + 8) = a2;
  *(this + 12) = a2;
  *(this + 16) = 1;
  *this = &unk_1F5539560;
  *(this + 20) = a3;
  return this;
}

{
  *(this + 8) = a2;
  *(this + 12) = a2;
  *(this + 16) = 1;
  *this = &unk_1F5539560;
  *(this + 20) = a3;
  return this;
}

double faiss::NormalizationTransform::NormalizationTransform(faiss::NormalizationTransform *this)
{
  result = NAN;
  *(this + 1) = -1;
  *(this + 16) = 1;
  *this = &unk_1F5539560;
  *(this + 5) = -1082130432;
  return result;
}

{
  result = NAN;
  *(this + 1) = -1;
  *(this + 16) = 1;
  *this = &unk_1F5539560;
  *(this + 5) = -1082130432;
  return result;
}

void faiss::NormalizationTransform::apply_noalloc(faiss::NormalizationTransform *this, uint64_t a2, const float *__src, float *__dst)
{
  if (*(this + 5) != 2.0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "not implemented");
    faiss::FaissException::FaissException(exception, v10, "virtual void faiss::NormalizationTransform::apply_noalloc(idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 1217);
  }

  memcpy(__dst, __src, 4 * a2 * *(this + 2));
  v8 = *(this + 2);

  faiss::fvec_renorm_L2(v8, a2, __dst, v7);
}

void sub_1D9C79F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

uint64_t faiss::CenteringTransform::CenteringTransform(uint64_t this, int a2)
{
  *(this + 8) = a2;
  *(this + 12) = a2;
  *this = &unk_1F5539598;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 8) = a2;
  *(this + 12) = a2;
  *this = &unk_1F5539598;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

void faiss::CenteringTransform::train(faiss::CenteringTransform *this, uint64_t a2, float *a3, int16x4_t a4)
{
  if (a2 <= 0)
  {
    memset(&v19, 0, sizeof(v19));
    v15 = snprintf(0, 0, "Error: '%s' failed: need at least one training vector", "n > 0");
    std::string::resize(&v19, v15 + 1, 0);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v19;
    }

    else
    {
      v16 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    snprintf(v16, size, "Error: '%s' failed: need at least one training vector", "n > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v19, "virtual void faiss::CenteringTransform::train(Index::idx_t, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 1237);
  }

  v7 = *(this + 2);
  LODWORD(v19.__r_.__value_.__l.__data_) = 0;
  std::vector<float>::resize(this + 3, v7, &v19, a4);
  v8 = 0;
  v9 = *(this + 2);
  do
  {
    while (!v9)
    {
      if (a2 == ++v8)
      {
        goto LABEL_12;
      }
    }

    v10 = *(this + 3);
    v11 = v9;
    do
    {
      v12 = *a3++;
      *v10 = v12 + *v10;
      ++v10;
      --v11;
    }

    while (v11);
  }

  while (a2 - 1 != v8++);
  v14 = *(this + 3);
  do
  {
    *v14 = *v14 / a2;
    ++v14;
    --v9;
  }

  while (v9);
LABEL_12:
  *(this + 16) = 1;
}

void sub_1D9C7A1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::CenteringTransform::apply_noalloc(uint64_t this, uint64_t a2, float *a3, float *a4)
{
  if (*(this + 16) != 1)
  {
    memset(&v15, 0, sizeof(v15));
    v11 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&v15, v11 + 1, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    snprintf(v12, size, "Error: '%s' failed", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v15, "virtual void faiss::CenteringTransform::apply_noalloc(idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 1253);
  }

  if (a2 >= 1)
  {
    v4 = 0;
    v5 = *(this + 8);
    do
    {
      if (v5)
      {
        v6 = *(this + 24);
        v7 = v5;
        do
        {
          v8 = *a3++;
          v9 = v8;
          v10 = *v6++;
          *a4++ = v9 - v10;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return this;
}

void sub_1D9C7A31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::CenteringTransform::reverse_transform(uint64_t this, uint64_t a2, float *a3, float *a4)
{
  if (*(this + 16) != 1)
  {
    memset(&v15, 0, sizeof(v15));
    v11 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&v15, v11 + 1, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    snprintf(v12, size, "Error: '%s' failed", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v15, "virtual void faiss::CenteringTransform::reverse_transform(idx_t, const float *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 1264);
  }

  if (a2 >= 1)
  {
    v4 = 0;
    v5 = *(this + 8);
    do
    {
      if (v5)
      {
        v6 = *(this + 24);
        v7 = v5;
        do
        {
          v8 = *a3++;
          v9 = v8;
          v10 = *v6++;
          *a4++ = v9 + v10;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return this;
}

void sub_1D9C7A46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

faiss::RemapDimensionsTransform *faiss::RemapDimensionsTransform::RemapDimensionsTransform(faiss::RemapDimensionsTransform *this, int a2, int a3, int *a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 16) = 1;
  *this = &unk_1F55395D0;
  *(this + 3) = 0;
  v8 = (this + 24);
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<float>::resize(this + 1, a3);
  if (a3 >= 1)
  {
    v9 = *v8;
    v10 = a3;
    do
    {
      v12 = *a4++;
      v11 = v12;
      *v9 = v12;
      if (v12 != -1 && (v11 < 0 || v11 >= a2))
      {
        memset(&v18, 0, sizeof(v18));
        v14 = snprintf(0, 0, "Error: '%s' failed", "map[i] == -1 || (map[i] >= 0 && map[i] < d_in)");
        std::string::resize(&v18, v14 + 1, 0);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v18;
        }

        else
        {
          v15 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        snprintf(v15, size, "Error: '%s' failed", "map[i] == -1 || (map[i] >= 0 && map[i] < d_in)");
        exception = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(exception, &v18, "faiss::RemapDimensionsTransform::RemapDimensionsTransform(int, int, const int *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/VectorTransform.cpp", 1285);
      }

      ++v9;
      --v10;
    }

    while (v10);
  }

  return this;
}

void sub_1D9C7A60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 32) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

faiss::RemapDimensionsTransform *faiss::RemapDimensionsTransform::RemapDimensionsTransform(faiss::RemapDimensionsTransform *this, signed int a2, int a3, char a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 16) = 1;
  *(this + 3) = 0;
  v8 = (this + 24);
  *this = &unk_1F55395D0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  __x = -1;
  std::vector<int>::resize(this + 1, a3, &__x);
  if (a4)
  {
    if (a2 >= a3)
    {
      if (a3 >= 1)
      {
        v25 = vdupq_n_s64(a3 - 1);
        v26 = vdupq_n_s32(a2);
        v27 = (a3 + 3) & 0xFFFFFFFC;
        v28 = xmmword_1D9C84A40;
        v29 = xmmword_1D9C84A30;
        v30 = xmmword_1D9CA0A70;
        v31 = (*v8 + 8);
        v32 = vdupq_n_s64(4uLL);
        v33.i64[0] = 0x400000004;
        v33.i64[1] = 0x400000004;
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v25, v29));
          v35 = vmulq_s32(v30, v26);
          if (vuzp1_s16(v34, *v25.i8).u8[0])
          {
            *(v31 - 2) = v35.i32[0] / a3;
          }

          if (vuzp1_s16(v34, *&v25).i8[2])
          {
            *(v31 - 1) = v35.i32[1] / a3;
          }

          if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v28))).i32[1])
          {
            *v31 = v35.i32[2] / a3;
            v31[1] = v35.i32[3] / a3;
          }

          v28 = vaddq_s64(v28, v32);
          v29 = vaddq_s64(v29, v32);
          v30 = vaddq_s32(v30, v33);
          v31 += 4;
          v27 -= 4;
        }

        while (v27);
      }
    }

    else if (a2 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *v8;
      v12 = vdupq_n_s32(a2 - 1);
      v13 = xmmword_1D9CA0A70;
      v14.i64[0] = 0x400000004;
      v14.i64[1] = 0x400000004;
      do
      {
        v15 = vmovn_s32(vcgeq_u32(v12, v13));
        if (v15.i8[0])
        {
          *(v11 + 4 * (v9 / a2)) = v10;
        }

        if (v15.i8[2])
        {
          *(v11 + 4 * ((a3 + v9) / a2)) = v10 + 1;
        }

        if (v15.i8[4])
        {
          *(v11 + 4 * ((2 * a3 + v9) / a2)) = v10 + 2;
        }

        if (v15.i8[6])
        {
          *(v11 + 4 * ((3 * a3 + v9) / a2)) = v10 + 3;
        }

        v10 += 4;
        v13 = vaddq_s32(v13, v14);
        v9 += 4 * a3;
      }

      while (((a2 + 3) & 0xFFFFFFFC) != v10);
    }
  }

  else
  {
    if (a2 >= a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = a2;
    }

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = (v16 + 3) & 0xFFFFFFFC;
      v19 = vdupq_n_s64(v16 - 1);
      v20 = xmmword_1D9C84A40;
      v21 = xmmword_1D9C84A30;
      v22 = (*v8 + 8);
      v23 = vdupq_n_s64(4uLL);
      do
      {
        v24 = vmovn_s64(vcgeq_u64(v19, v21));
        if (vuzp1_s16(v24, *v19.i8).u8[0])
        {
          *(v22 - 2) = v17;
        }

        if (vuzp1_s16(v24, *&v19).i8[2])
        {
          *(v22 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v20))).i32[1])
        {
          *v22 = v17 + 2;
          v22[1] = v17 + 3;
        }

        v17 += 4;
        v20 = vaddq_s64(v20, v23);
        v21 = vaddq_s64(v21, v23);
        v22 += 4;
      }

      while (v18 != v17);
    }
  }

  return this;
}

void sub_1D9C7A934(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

uint64_t faiss::RemapDimensionsTransform::apply_noalloc(uint64_t this, uint64_t a2, const float *a3, float *a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = *(this + 12);
    v6 = *(this + 8);
    do
    {
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = *(this + 24);
        do
        {
          v9 = *(v8 + v7 * 4);
          if ((v9 & 0x80000000) != 0)
          {
            v10 = 0.0;
          }

          else
          {
            v10 = a3[v9];
          }

          a4[v7++] = v10;
        }

        while (v5 != v7);
      }

      a3 += v6;
      ++v4;
      a4 += v5;
    }

    while (v4 != a2);
  }

  return this;
}

void faiss::RemapDimensionsTransform::reverse_transform(faiss::RemapDimensionsTransform *this, uint64_t a2, const float *a3, float *a4)
{
  v4 = a4;
  bzero(a4, 4 * a2 * *(this + 2));
  if (a2 >= 1)
  {
    v8 = 0;
    v9 = *(this + 3);
    v10 = *(this + 2);
    do
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = *(this + 3);
        do
        {
          v13 = *(v12 + v11 * 4);
          if ((v13 & 0x80000000) == 0)
          {
            v4[v13] = a3[v11];
          }

          ++v11;
        }

        while (v9 != v11);
      }

      v4 += v10;
      ++v8;
      a3 += v9;
    }

    while (v8 != a2);
  }
}

void faiss::RemapDimensionsTransform::~RemapDimensionsTransform(faiss::RemapDimensionsTransform *this)
{
  *this = &unk_1F55395D0;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F55395D0;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::ITQMatrix::~ITQMatrix(faiss::ITQMatrix *this)
{
  *this = &unk_1F55394B8;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  faiss::LinearTransform::~LinearTransform(this);

  JUMPOUT(0x1DA73F410);
}

{
  *this = &unk_1F55394B8;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  faiss::LinearTransform::~LinearTransform(this);
}

void faiss::ITQTransform::~ITQTransform(faiss::ITQTransform *this)
{
  *this = &unk_1F55394F0;
  faiss::LinearTransform::~LinearTransform((this + 176));
  *(this + 7) = &unk_1F55394B8;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  faiss::LinearTransform::~LinearTransform((this + 56));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1F55394F0;
  faiss::LinearTransform::~LinearTransform((this + 176));
  *(this + 7) = &unk_1F55394B8;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  faiss::LinearTransform::~LinearTransform((this + 56));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::OPQMatrix::~OPQMatrix(faiss::OPQMatrix *this)
{
  faiss::LinearTransform::~LinearTransform(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::CenteringTransform::~CenteringTransform(faiss::CenteringTransform *this)
{
  *this = &unk_1F5539598;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5539598;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1D9C84A30)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1D9C84A40)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1D9C84A30)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1D9C84A40)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C7B1E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1D9C84A30)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1D9C84A40)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1D9C84A30)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1D9C84A40)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x1EEDE7378](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void faiss::partition_fuzzy<faiss::CMax<float,long long>>()
{
    ;
  }
}

void faiss::partition_fuzzy<faiss::CMin<float,long long>>()
{
    ;
  }
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::add_with_ids()
{
    ;
  }
}

void faiss::IndexIDMapTemplate<faiss::IndexBinary>::IndexIDMapTemplate()
{
    ;
  }
}

void faiss::IndexIDMapTemplate<faiss::Index>::add_with_ids()
{
    ;
  }
}

void faiss::IndexIDMapTemplate<faiss::Index>::IndexIDMapTemplate()
{
    ;
  }
}

void faiss::IndexIDMap2Template<faiss::IndexBinary>::construct_rev_map()
{
    ;
  }
}

void faiss::IndexIDMap2Template<faiss::Index>::construct_rev_map()
{
    ;
  }
}

void faiss::HeapArray<faiss::CMax<float,long long>>::addn()
{
    ;
  }
}

void faiss::HeapArray<faiss::CMax<int,long long>>::addn()
{
    ;
  }
}

void faiss::HeapArray<faiss::CMax<int,long long>>::heapify()
{
    ;
  }
}

void faiss::HeapArray<faiss::CMax<int,long long>>::reorder()
{
    ;
  }
}

void faiss::HeapArray<faiss::CMin<int,long long>>::addn()
{
    ;
  }
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