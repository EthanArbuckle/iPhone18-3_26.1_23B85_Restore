void sub_1B2B29EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a29 == 1)
  {
    (*(*a25 + 56))(a25);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (a23 == 1)
  {
    (*(*a19 + 56))(a19);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v29 + 272));
  _Unwind_Resume(a1);
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey>(uint64_t a1, float *a2)
{
  v3 = *(a1 + 12224);
  v4 = *(a1 + 12240);
  if (*(a1 + 12216) == v3)
  {
    v5 = ((*(a1 + 12248) - v4) >> 3) | 0x100000000;
    v86 = v5;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 12240, &v86);
  }

  else
  {
    v5 = *(v4 + 8 * *(v3 - 8));
    *(a1 + 12224) = v3 - 8;
  }

  v86 = v5;
  v6 = v5 >> 6;
  v7 = *(a1 + 12024);
  v8 = *(a1 + 12016);
  if (v6 >= (v7 - v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((v7 - v8) >> 3);
    v11 = *(a1 + 12032);
    if (v10 > (v11 - v7) >> 3)
    {
      v12 = v11 - v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
    }

    bzero(*(a1 + 12024), 8 * v10);
    *(a1 + 12024) = v7 + 8 * v10;
    v8 = *(a1 + 12016);
  }

  v14 = *(v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 12040, &v86);
    v17 = ((*(a1 + 12048) - *(a1 + 12040)) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v18 = v17 & 0x3F;
    v19 = *(*(a1 + 12064) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 12064), v17)) + 24 * v18;
    *v19 = xmmword_1B33B09D0;
    *(v19 + 16) = 0;
    v20 = v17 >> 6;
    v21 = *(a1 + 12120);
    v22 = *(a1 + 12112);
    v23 = v21 - v22;
    v84 = v18;
    if (v17 >> 6 < (v21 - v22) >> 3)
    {
LABEL_50:
      v43 = *(v22 + 8 * v20) + 24 * v18;
      *v43 = 0uLL;
      *(v43 + 16) = 0;
      v44 = *(a1 + 12168);
      v45 = *(a1 + 12160);
      v46 = v44 - v45;
      if (v20 < (v44 - v45) >> 3)
      {
LABEL_80:
        *(*(v45 + 8 * v20) + 8 * v18) = 0;
        goto LABEL_81;
      }

      v47 = v20 + 1;
      v48 = v20 + 1 - (v46 >> 3);
      v49 = *(a1 + 12176);
      if (v48 > (v49 - v44) >> 3)
      {
        v50 = v49 - v45;
        v51 = (v49 - v45) >> 2;
        if (v51 <= v47)
        {
          v51 = v20 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        if (!(v52 >> 61))
        {
          operator new();
        }

        goto LABEL_125;
      }

      v53 = 0;
      v54 = (v48 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v55 = vdupq_n_s64(v54);
      do
      {
        v56 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(vdupq_n_s64(v53), xmmword_1B33B0560)));
        if (v56.i8[0])
        {
          *(v44 + 8 * v53) = 0;
        }

        if (v56.i8[4])
        {
          *(v44 + 8 * v53 + 8) = 0;
        }

        v53 += 2;
      }

      while (v54 - ((v48 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v53);
      *(a1 + 12168) = v44 + 8 * v48;
      v57 = *(a1 + 12192);
      v58 = *(a1 + 12184);
      v59 = (v57 - v58) >> 4;
      if (v59 > v20)
      {
        if (v47 >= v59)
        {
          goto LABEL_78;
        }

        v60 = v58 + 16 * v47;
LABEL_77:
        *(a1 + 12192) = v60;
LABEL_78:
        v45 = *(a1 + 12160);
        v18 = v84;
        if (v46 < (*(a1 + 12168) - v45))
        {
          operator new();
        }

        goto LABEL_80;
      }

      v61 = v47 - v59;
      v62 = *(a1 + 12200);
      if (v61 <= (v62 - v57) >> 4)
      {
        bzero(*(a1 + 12192), 16 * v61);
        v60 = v57 + 16 * v61;
        goto LABEL_77;
      }

      v63 = v62 - v58;
      v64 = v63 >> 3;
      if (v63 >> 3 <= v47)
      {
        v64 = v20 + 1;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFF0)
      {
        v65 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v64;
      }

      if (!(v65 >> 60))
      {
        operator new();
      }

LABEL_125:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = v20 + 1;
    v25 = v20 + 1 - (v23 >> 3);
    v26 = *(a1 + 12128);
    if (v25 > (v26 - v21) >> 3)
    {
      v27 = v26 - v22;
      v28 = (v26 - v22) >> 2;
      if (v28 <= v24)
      {
        v28 = v20 + 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

      goto LABEL_125;
    }

    v30 = 0;
    v31 = (v25 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v32 = vdupq_n_s64(v31);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v30), xmmword_1B33B0560)));
      if (v33.i8[0])
      {
        *(v21 + 8 * v30) = 0;
      }

      if (v33.i8[4])
      {
        *(v21 + 8 * v30 + 8) = 0;
      }

      v30 += 2;
    }

    while (v31 - ((v25 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v30);
    *(a1 + 12120) = v21 + 8 * v25;
    v34 = *(a1 + 12144);
    v35 = *(a1 + 12136);
    v36 = (v34 - v35) >> 4;
    if (v36 <= v20)
    {
      v38 = v24 - v36;
      v39 = *(a1 + 12152);
      if (v38 > (v39 - v34) >> 4)
      {
        v40 = v39 - v35;
        v41 = v40 >> 3;
        if (v40 >> 3 <= v24)
        {
          v41 = v20 + 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF0)
        {
          v42 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (!(v42 >> 60))
        {
          operator new();
        }

        goto LABEL_125;
      }

      bzero(*(a1 + 12144), 16 * v38);
      v37 = v34 + 16 * v38;
    }

    else
    {
      if (v24 >= v36)
      {
        goto LABEL_48;
      }

      v37 = v35 + 16 * v24;
    }

    *(a1 + 12144) = v37;
LABEL_48:
    v22 = *(a1 + 12112);
    v18 = v84;
    if (v23 < (*(a1 + 12120) - v22))
    {
      operator new();
    }

    goto LABEL_50;
  }

LABEL_81:
  v66 = a2[1];
  v67 = *a2;
  if (*a2 == 0.0)
  {
    v67 = 0;
  }

  v68 = LODWORD(v66) - 0x61C8864680B583EBLL;
  if (v66 == 0.0)
  {
    v68 = 0x9E3779B97F4A7C15;
  }

  v69 = ((v67 >> 2) + (v67 << 6) + v68) ^ v67;
  v70 = *(a1 + 12368);
  if (!*&v70)
  {
    goto LABEL_106;
  }

  v71 = vcnt_s8(v70);
  v71.i16[0] = vaddlv_u8(v71);
  if (v71.u32[0] > 1uLL)
  {
    v72 = ((v67 >> 2) + (v67 << 6) + v68) ^ v67;
    if (v69 >= *&v70)
    {
      v72 = v69 % *&v70;
    }
  }

  else
  {
    v72 = v69 & (*&v70 - 1);
  }

  v73 = *(*(a1 + 12360) + 8 * v72);
  if (!v73 || (v74 = *v73) == 0)
  {
LABEL_106:
    operator new();
  }

  while (1)
  {
    v75 = *(v74 + 1);
    if (v75 == v69)
    {
      break;
    }

    if (v71.u32[0] > 1uLL)
    {
      if (v75 >= *&v70)
      {
        v75 %= *&v70;
      }
    }

    else
    {
      v75 &= *&v70 - 1;
    }

    if (v75 != v72)
    {
      goto LABEL_106;
    }

LABEL_105:
    v74 = *v74;
    if (!v74)
    {
      goto LABEL_106;
    }
  }

  if (v74[4] != *a2 || v74[5] != v66)
  {
    goto LABEL_105;
  }

  *(v74 + 3) = v5;
  v77 = *(a1 + 12408);
  if (!*&v77)
  {
    goto LABEL_124;
  }

  v78 = vcnt_s8(v77);
  v78.i16[0] = vaddlv_u8(v78);
  if (v78.u32[0] > 1uLL)
  {
    v79 = v5;
    if (v5 >= *&v77)
    {
      v79 = v5 % *&v77;
    }
  }

  else
  {
    v79 = (*&v77 - 1) & v5;
  }

  v80 = *(*(a1 + 12400) + 8 * v79);
  if (!v80 || (v81 = *v80) == 0)
  {
LABEL_124:
    operator new();
  }

  while (2)
  {
    v82 = v81[1];
    if (v82 != v5)
    {
      if (v78.u32[0] > 1uLL)
      {
        if (v82 >= *&v77)
        {
          v82 %= *&v77;
        }
      }

      else
      {
        v82 &= *&v77 - 1;
      }

      if (v82 != v79)
      {
        goto LABEL_124;
      }

      goto LABEL_123;
    }

    if (v81[2] != v5)
    {
LABEL_123:
      v81 = *v81;
      if (!v81)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  v81[3] = *a2;
  return v5;
}

void sub_1B2B2B04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  operator delete(v15);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

unint64_t md::VKMRenderResourcesStore::pop<ggl::DaVinci::MaterialStyle>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1501, a2);
  if (v3 != a1[1506])
  {
    v5 = v3;
    v6 = a1[1505];
    v7 = a1[1539];
    if (a1[1538] == v7)
    {
      v8 = a1[1544];
      if (!v8)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v4 = (*(*v8 + 48))(v8);
    }

    else
    {
      v4 = *(v7 - 8);
      a1[1539] = v7 - 8;
    }

    v9 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v9 >> 47) ^ v9);
    v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    v12 = a1[1534];
    if (!*&v12)
    {
      goto LABEL_24;
    }

    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      if (v11 >= *&v12)
      {
        v14 = v11 % *&v12;
      }
    }

    else
    {
      v14 = v11 & (*&v12 - 1);
    }

    v15 = *(a1[1533] + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v11)
      {
        if (v16[2] == v4)
        {
          v18 = (((v5 - v6) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
          v19 = *(a1[1508] + v18);
          v20 = ((v5 - v6) >> 3) & 0x3F;
          v21 = *(a1[1514] + v18);
          v22 = *(a1[1520] + v18);
          *(v21 + 24 * v20) = v4;
          ++*(v19 + 24 * v20);
          *(v22 + 8 * v20) = v4;
          return v4;
        }
      }

      else
      {
        if (v13.u32[0] > 1uLL)
        {
          if (v17 >= *&v12)
          {
            v17 %= *&v12;
          }
        }

        else
        {
          v17 &= *&v12 - 1;
        }

        if (v17 != v14)
        {
          goto LABEL_24;
        }
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_24;
      }
    }
  }

  return 0;
}

void *gms::BasicMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 552);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 552))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 552))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

unint64_t md::add2(uint64_t a1, void *a2, char a3)
{
  v8 = *(a1 + 184);
  v6 = a1 + 184;
  v7 = v8;
  v9 = *(v6 - 16);
  if (*(v6 - 24) == v9)
  {
    v10 = ((*(a1 + 192) - v7) >> 3) | 0x100000000;
    v52.i64[0] = v10;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v6, &v52);
  }

  else
  {
    v10 = *(v7 + 8 * *(v9 - 8));
    *(a1 + 168) = v9 - 8;
  }

  v51 = v10;
  v11 = *a2;
  v52 = vdupq_n_s64(1uLL);
  LOBYTE(v53) = 1;
  BYTE1(v53) = a3;
  v12 = v10 >> 6;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v12 >= (v14 - v13) >> 3)
  {
    v15 = v12 + 1;
    v16 = v12 + 1 - ((v14 - v13) >> 3);
    v17 = *(a1 + 24);
    if (v16 > (v17 - v14) >> 3)
    {
      v18 = v17 - v13;
      if (v18 >> 2 > v15)
      {
        v15 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v15;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v19);
    }

    bzero(*(a1 + 16), 8 * v16);
    *(a1 + 16) = v14 + 8 * v16;
    v13 = *(a1 + 8);
  }

  v20 = *(v13 + 8 * v12);
  if (!v20)
  {
    operator new();
  }

  v21 = (v20 + 16 * (v10 & 0x3F));
  if (*v21 == -1 && v21[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 32, &v51);
    v23 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
    *v21 = HIDWORD(v10);
    v21[1] = v23;
    v54 = v11;
    v24 = v23 & 0x3F;
    v25 = *(*(a1 + 56) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 56), v23)) + 24 * v24;
    v26 = v54;
    *(v25 + 16) = v53;
    *v25 = v52;
    v27 = v23 >> 6;
    v29 = *(a1 + 104);
    v28 = *(a1 + 112);
    v30 = v28 - v29;
    if (v23 >> 6 >= (v28 - v29) >> 3)
    {
      v31 = v27 + 1;
      v32 = v27 + 1 - (v30 >> 3);
      v33 = *(a1 + 120);
      if (v32 > (v33 - v28) >> 3)
      {
        v34 = v33 - v29;
        v35 = (v33 - v29) >> 2;
        if (v35 <= v31)
        {
          v35 = v27 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_51;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v28 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v28 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(a1 + 112) = v28 + 8 * v32;
      v41 = *(a1 + 128);
      v42 = *(a1 + 136);
      v43 = &v42[-v41] >> 4;
      if (v43 <= v27)
      {
        v50 = v24;
        v44 = v31 - v43;
        v45 = *(a1 + 144);
        if (v44 > (v45 - v42) >> 4)
        {
          v46 = v45 - v41;
          v47 = v46 >> 3;
          if (v46 >> 3 <= v31)
          {
            v47 = v27 + 1;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          if (!(v48 >> 60))
          {
            operator new();
          }

LABEL_51:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v42, 16 * v44);
        *(a1 + 136) = &v42[16 * v44];
        v24 = v50;
      }

      else if (v31 < v43)
      {
        *(a1 + 136) = v41 + 16 * v31;
      }

      v29 = *(a1 + 104);
      if (v30 < (*(a1 + 112) - v29))
      {
        operator new();
      }
    }

    *(*(v29 + 8 * v27) + 8 * v24) = *v26;
  }

  return v10;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StencilRefValueToUse>(ecs2::Entity,md::ls::StencilRefValueToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A0DFD8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StencilRefValueToUse>(ecs2::Entity,md::ls::StencilRefValueToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StencilRefValueToUse>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
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
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata) = *(a2 + 4096);
}

void md::RouteRenderLayer::layoutOverlay(uint64_t a1, uint64_t a2, float32x2_t *a3, char a4, void *a5)
{
  v5 = a3;
  v1349 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(*&v7 + 200) >= 1.0 || *(*&v7 + 176))
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v63 = [[VKTimedAnimation alloc] initWithDuration:0.25];
  v64 = *(*&v7 + 176);
  *(*&v7 + 176) = v63;

  *v1276 = MEMORY[0x1E69E9820];
  *&v1276[8] = 3321888768;
  *&v1276[16] = ___ZN2md16RouteRenderLayer27startRouteAnimationIfNeededERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
  *&v1276[24] = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
  *&v1276[32] = v7;
  *&v1276[40] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [*(*&v7 + 176) setStepHandler:v1276];
  v1250[0] = MEMORY[0x1E69E9820];
  v1250[1] = 3321888768;
  *&v1251 = ___ZN2md16RouteRenderLayer27startRouteAnimationIfNeededERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8;
  *(&v1251 + 1) = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
  *&v1252 = v7;
  *(&v1252 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [*(*&v7 + 176) setCompletionHandler:v1250];
  md::AnimationRunner::runAnimation(*(a1 + 88), *(*&v7 + 176));
  if (*(&v1252 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v1252 + 1));
  }

  if (*&v1276[40])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v1276[40]);
  }

  v8 = 1;
  if (v6)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_7:
  v10 = *v5;
  v9 = v5[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(*&v10 + 204);
  v1237 = v5;
  if (*(*&v10 + 208) == 1)
  {
    if (v11 >= 1.0 || *(*&v10 + 184))
    {
      goto LABEL_27;
    }

    v12 = [[VKTimedAnimation alloc] initWithDuration:0.25];
    v13 = *(*&v10 + 184);
    *(*&v10 + 184) = v12;

    *v1276 = MEMORY[0x1E69E9820];
    *&v1276[8] = 3321888768;
    *&v1276[16] = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
    *&v1276[24] = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
    *&v1276[32] = v10;
    *&v1276[40] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [*(*&v10 + 184) setStepHandler:v1276];
    v1250[0] = MEMORY[0x1E69E9820];
    v1250[1] = 3321888768;
    *&v1251 = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8;
    *(&v1251 + 1) = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
    *&v1252 = v10;
    *(&v1252 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (v11 <= 0.0 || *(*&v10 + 184))
    {
      goto LABEL_27;
    }

    v14 = [[VKTimedAnimation alloc] initWithDuration:0.25];
    v15 = *(*&v10 + 184);
    *(*&v10 + 184) = v14;

    *v1276 = MEMORY[0x1E69E9820];
    *&v1276[8] = 3321888768;
    *&v1276[16] = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_13;
    *&v1276[24] = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
    *&v1276[32] = v10;
    *&v1276[40] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [*(*&v10 + 184) setStepHandler:v1276];
    v1250[0] = MEMORY[0x1E69E9820];
    v1250[1] = 3321888768;
    *&v1251 = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_2;
    *(&v1251 + 1) = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
    *&v1252 = v10;
    *(&v1252 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  [*(*&v10 + 184) setCompletionHandler:v1250];
  md::AnimationRunner::runAnimation(*(a1 + 88), *(*&v10 + 184));
  if (*(&v1252 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v1252 + 1));
  }

  if (*&v1276[40])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v1276[40]);
  }

LABEL_27:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v16 = *v5;
  if (!*(*v5 + 216))
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (!v16[29])
  {
    md::GeometryLogic::createUnitTransformConstantData(v1276);
  }

  if (!v16[31])
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_19SinglePassRouteLine10ClipParamsEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v17 = *(a2 + 8);
  v18 = md::LayoutContext::get<md::CameraContext>(v17);
  v1184 = gdc::Context::context<md::RouteOverlayContext>(v17);
  v19 = md::LayoutContext::get<md::NavigationContext>(v17);
  v20 = gdc::Context::context<md::RouteLineContext>(v17);
  v21 = md::LayoutContext::get<md::SettingsContext>(v17);
  v1177 = v20[19];
  ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, v16[27], 1);
  v22 = 0;
  v23 = *v5 + 8;
  v24 = 808;
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      v27 = 0;
      v28 = 0.0;
      v29 = v24;
      do
      {
        v28 = v28 + *(v26 + v27) * *(v18 + v29);
        v27 += 8;
        v29 += 32;
      }

      while (v27 != 32);
      *&v1276[32 * v25++ + 8 * v22] = v28;
      v26 += 32;
    }

    while (v25 != 4);
    ++v22;
    v24 += 8;
  }

  while (v22 != 4);
  v1161 = v18 + 202;
  v30 = 0;
  v31 = v1276;
  do
  {
    v33 = *v31;
    v32 = v31[1];
    v31 += 2;
    *&v1250[v30] = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v32);
    v30 += 2;
  }

  while (v30 != 8);
  v34 = buf[2].i64[1];
  *buf[2].i64[1] = *v1250;
  *(v34 + 16) = v1251;
  *(v34 + 32) = v1252;
  *(v34 + 48) = v1253[0];
  *(v34 + 64) = v1177;
  ggl::BufferMemory::~BufferMemory(buf);
  v35 = md::LayoutContext::cameraType(a2);
  if (gdc::ToCoordinateSystem(v35))
  {
    v36 = gdc::CameraView::position((v18 + 950));
    v37 = md::GlobeClipPlane(*v36, v36[1], v36[2]);
    v39 = v38;
    v41 = v40;
    v43 = v42;
  }

  else
  {
    v37 = 0.0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  v1168 = v21;
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v1250, *(*v5 + 248), 1);
  v44 = 0;
  v45 = (*v5 + 8);
  do
  {
    v47 = *v45;
    v46 = v45[1];
    v45 += 2;
    *&v1276[v44] = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v46);
    v44 += 16;
  }

  while (v44 != 64);
  v48 = *(&v1252 + 1);
  **(&v1252 + 1) = *v1276;
  *(v48 + 16) = *&v1276[16];
  *(v48 + 32) = *&v1276[32];
  *(v48 + 48) = *&v1276[48];
  *(v48 + 64) = v37;
  *(v48 + 68) = v39;
  *(v48 + 72) = v41;
  *(v48 + 76) = v43;
  ggl::BufferMemory::~BufferMemory(v1250);
  v1178 = v19;
  obj = v18;
  if (!*(*v5 + 312))
  {
    md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 8));
    operator new();
  }

  v49 = *(a2 + 8);
  v1167 = md::LayoutContext::get<md::SceneQueryContext>(v49);
  if (!v19)
  {
    v51 = gdc::Context::get<md::StyleLogicContext>(v49);
    v1174 = 0;
    v53 = -1;
LABEL_60:
    v54 = -1;
    goto LABEL_61;
  }

  v1174 = v19[5];

  if (v1174)
  {
    v50 = [v1174 snappingToTransitLines];
    v51 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
    v52 = v1178;
    if (v50)
    {
      v53 = [v1174 currentSegmentIndex];
    }

    else
    {
      v53 = -1;
    }
  }

  else
  {
    v51 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
    v1174 = 0;
    v53 = -1;
    v52 = v1178;
  }

  if (*v52 != 1 || *(v52 + 36) != 1)
  {
    goto LABEL_60;
  }

  v54 = *(v52 + 8);
LABEL_61:
  v55 = *(*v51 + 520);
  v56 = *(*v51 + 528);
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v1247 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v55);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v1171 = *(v1184 + 176);
  v57 = fmaxf(v18[770] + v18[769], 1.0);
  v58 = *v5;
  v59 = *(*v5 + 160);
  v1241[0] = MEMORY[0x1E69E9820];
  v1241[1] = 3321888768;
  v1241[2] = ___ZN2md16RouteRenderLayer13layoutOverlayERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEbPN3ggl13CommandBufferE_block_invoke;
  v1241[3] = &__block_descriptor_77_ea8_48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e90_v16__0_fast_shared_ptr_md::RouteLineSection__mdm::allocator_____fast_shared_ptr_control__8l;
  v1241[4] = v51;
  v1241[5] = &v1247;
  v60 = v5[1];
  v1241[6] = v58;
  v1242 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v1246 = v1171 == 2;
  v1243 = v57;
  v1244 = v53;
  v1245 = v54;
  [v59 forEachSection:v1241];
  v61 = *v5;
  v1175 = v51;
  if (!*(*v5 + 320))
  {
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(*&v61 + 440));
    *(*&v61 + 456) = 0;
    *(*&v61 + 432) = *&v61 + 440;
    *(*&v61 + 440) = 0;
    v1217 = +[VKDebugSettings sharedSettings];
    *v1276 = 0;
    *&v1276[8] = v1276;
    *&v1276[16] = 0x5812000000;
    *&v1276[24] = __Block_byref_object_copy__6702;
    *&v1276[32] = __Block_byref_object_dispose__6703;
    *&v1276[40] = "";
    memset(&v1276[48], 0, 32);
    *&v1276[80] = 1065353216;
    v1250[0] = 0;
    v1250[1] = v1250;
    *&v1251 = 0x5812000000;
    *(&v1251 + 1) = __Block_byref_object_copy__7_6705;
    *&v1252 = __Block_byref_object_dispose__8_6706;
    *(&v1252 + 1) = "";
    memset(v1253, 0, sizeof(v1253));
    v1254 = 1065353216;
    v62 = *(*v5 + 160);
    if (v62)
    {
      [v62 sections];
    }

    else
    {
      v1323 = 0uLL;
      v1324 = 0;
    }

    if ([v1217 disableContinuousMultiSectionRoutes])
    {
LABEL_82:
      v66 = *(&v1323 + 1);
      v65 = v1323;
      if (v1323 == *(&v1323 + 1))
      {
        goto LABEL_261;
      }

      while (1)
      {
        v67 = *v65;
        v1320[0] = v67;
        if (v67)
        {
          *v67 = (*v67 + 1);
        }

        if ([v1217 routeDebugPoints])
        {
          v68 = *v1237;
          if (v1320[0])
          {
            v69 = (v1320[0] + 1);
          }

          else
          {
            v69 = 0;
          }

          *&v1302 = objc_loadWeakRetained(v69 + 25);
          buf[0].i64[0] = &v1302;
          std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * {__strong}&&>,std::tuple<>>((*&v68 + 432), v1302, buf);
          operator new();
        }

        if (v1320[0])
        {
          v70 = (v1320[0] + 1);
        }

        else
        {
          v70 = 0;
        }

        if (*(v70 + 236) != 1)
        {
          v91 = *&v1276[8];
          v1309.i64[0] = v70;
          v92 = (*(**(v70 + 72) + 24))(*(v70 + 72));
          v93 = mdm::zone_mallocator::instance(v92);
          v94 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteLineRibbon>(v93);
          md::RouteLineRibbon::RouteLineRibbon(v94, v92);
          __src.i64[0] = v94;
          if (v92)
          {
            v95 = 0;
            for (i = 0; i != v92; i = (i + 1))
            {
              v97 = (*(**(v70 + 72) + 32))(*(v70 + 72), i);
              v98 = 0;
              v99 = *(v94 + 9) + v95;
              do
              {
                *(v99 + v98) = *(v97 + v98);
                v98 += 4;
              }

              while (v98 != 12);
              *(*(v94 + 13) + 12 * i + 8) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 44);
              *(*(v94 + 13) + 12 * i + 9) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 45);
              *(*(v94 + 13) + 12 * i + 4) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 40);
              *(*(v94 + 13) + 12 * i) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 36);
              v95 += 12;
            }
          }

          v100 = (*(**(v70 + 72) + 32))(*(v70 + 72), 0);
          v101 = __src.i64[0];
          *(__src.i64[0] + 100) = *(v100 + 32);
          *(v101 + 96) = 257;
          buf[0].i64[0] = &v1309;
          v102 = std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RouteLineBatchKey,std::piecewise_construct_t const&,std::tuple<md::RouteLineBatchKey const&>,std::tuple<>>((v91 + 48), v1309.u64[0]);
          v103 = v102;
          v105 = v102[4];
          v104 = v102[5];
          if (v105 < v104)
          {
            v106 = __src.i64[0];
            __src.i64[0] = 0;
            *v105 = v106;
            v107 = v105 + 1;
LABEL_135:
            v103[4] = v107;
            std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](&__src);
            goto LABEL_149;
          }

          v108 = v102[3];
          v109 = v105 - v108;
          v110 = (v105 - v108) >> 3;
          v111 = v110 + 1;
          if (!((v110 + 1) >> 61))
          {
            v112 = v104 - v108;
            if (v112 >> 2 > v111)
            {
              v111 = v112 >> 2;
            }

            if (v112 >= 0x7FFFFFFFFFFFFFF8)
            {
              v113 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v113 = v111;
            }

            buf[2].i64[0] = (v102 + 6);
            if (v113)
            {
              v114 = mdm::zone_mallocator::instance(v102);
              v115 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v114, v113);
              v108 = v103[3];
              v109 = v103[4] - v108;
              v116 = v109 >> 3;
            }

            else
            {
              v115 = 0;
              v116 = v110;
            }

            v120 = &v115[8 * v110];
            v121 = &v115[8 * v113];
            v122 = __src.i64[0];
            __src.i64[0] = 0;
            v123 = &v120[-v116];
            *v120 = v122;
            v107 = v120 + 1;
            memcpy(v123, v108, v109);
            v124 = v103[3];
            v103[3] = v123;
            v103[4] = v107;
            v125 = v103[5];
            v103[5] = v121;
            buf[1].i64[0] = v124;
            buf[1].i64[1] = v125;
            buf[0].i64[1] = v124;
            buf[0].i64[0] = v124;
            std::__split_buffer<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(buf);
            goto LABEL_135;
          }

LABEL_1384:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v71 = v1250[1];
        v72 = (*(**(v70 + 72) + 24))(*(v70 + 72));
        v73 = mdm::zone_mallocator::instance(v72);
        v74 = pthread_rwlock_rdlock((v73 + 32));
        if (v74)
        {
          geo::read_write_lock::logFailure(v74, "read lock", v75);
        }

        v76 = malloc_type_zone_malloc(*v73, 0x70uLL, 0x10A1040D893A2BCuLL);
        atomic_fetch_add((v73 + 24), 1u);
        geo::read_write_lock::unlock((v73 + 32));
        v77 = *(v70 + 208);
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v76, v72);
        v78 = v77;
        v76[48] = 0;
        *v76 = &unk_1F2A2F900;
        *(v76 + 25) = 0;
        *(v76 + 26) = v78;
        v1309.i64[0] = v76;
        if (v72)
        {
          v79 = 0;
          for (j = 0; j != v72; j = (j + 1))
          {
            v81 = (*(**(v70 + 72) + 32))(*(v70 + 72), j);
            v82 = 0;
            v83 = *(v76 + 9) + v79;
            do
            {
              *(v83 + v82) = *(v81 + v82);
              v82 += 4;
            }

            while (v82 != 12);
            v79 += 12;
          }
        }

        v84 = (*(**(v70 + 72) + 32))(*(v70 + 72), 0);
        *(v1309.i64[0] + 100) = *(v84 + 8);
        v85 = 0x9DDFEA08EB382D69 * ((8 * (v70 & 0x1FFFFFFF) + 8) ^ HIDWORD(v70));
        v86 = 0x9DDFEA08EB382D69 * (HIDWORD(v70) ^ (v85 >> 47) ^ v85);
        v87 = 0x9DDFEA08EB382D69 * (v86 ^ (v86 >> 47));
        v88 = *(v71 + 56);
        if (!*&v88)
        {
          goto LABEL_132;
        }

        v89 = vcnt_s8(v88);
        v89.i16[0] = vaddlv_u8(v89);
        if (v89.u32[0] > 1uLL)
        {
          v90 = 0x9DDFEA08EB382D69 * (v86 ^ (v86 >> 47));
          if (v87 >= *&v88)
          {
            v90 = v87 % *&v88;
          }
        }

        else
        {
          v90 = (*&v88 - 1) & v87;
        }

        v117 = *(*(v71 + 6) + 8 * v90);
        if (!v117 || (v118 = *v117) == 0)
        {
LABEL_132:
          operator new();
        }

        while (1)
        {
          v119 = v118[1];
          if (v119 == v87)
          {
            break;
          }

          if (v89.u32[0] > 1uLL)
          {
            if (v119 >= *&v88)
            {
              v119 %= *&v88;
            }
          }

          else
          {
            v119 &= *&v88 - 1;
          }

          if (v119 != v90)
          {
            goto LABEL_132;
          }

LABEL_131:
          v118 = *v118;
          if (!v118)
          {
            goto LABEL_132;
          }
        }

        if (v118[2] != v70)
        {
          goto LABEL_131;
        }

        v127 = v118[4];
        v126 = v118[5];
        if (v127 >= v126)
        {
          v130 = v118[3];
          v131 = v127 - v130;
          v132 = (v127 - v130) >> 3;
          v133 = v132 + 1;
          if ((v132 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v134 = v126 - v130;
          if (v134 >> 2 > v133)
          {
            v133 = v134 >> 2;
          }

          if (v134 >= 0x7FFFFFFFFFFFFFF8)
          {
            v135 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v135 = v133;
          }

          buf[2].i64[0] = (v118 + 6);
          if (v135)
          {
            v136 = mdm::zone_mallocator::instance(v84);
            v137 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(v136, v135);
            v130 = v118[3];
            v131 = v118[4] - v130;
            v138 = v131 >> 3;
          }

          else
          {
            v137 = 0;
            v138 = v132;
          }

          v139 = &v137[8 * v132];
          v140 = &v137[8 * v135];
          v141 = v1309.i64[0];
          v1309.i64[0] = 0;
          v142 = &v139[-v138];
          *v139 = v141;
          v129 = v139 + 1;
          memcpy(v142, v130, v131);
          v143 = v118[3];
          v118[3] = v142;
          v118[4] = v129;
          v144 = v118[5];
          v118[5] = v140;
          buf[1].i64[0] = v143;
          buf[1].i64[1] = v144;
          buf[0].i64[1] = v143;
          buf[0].i64[0] = v143;
          std::__split_buffer<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(buf);
        }

        else
        {
          v128 = v1309.i64[0];
          v1309.i64[0] = 0;
          *v127 = v128;
          v129 = v127 + 1;
        }

        v118[4] = v129;
        std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>::~unique_ptr[abi:nn200100](&v1309);
LABEL_149:
        geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v1320);
        if (++v65 == v66)
        {
LABEL_261:
          v261 = *(*&v1276[8] + 64);
          if (v261)
          {
            v262 = 0;
            do
            {
              for (k = v261[3]; k != v261[4]; ++k)
              {
                v264 = *k;
                v262 += *(v264 + 88);
              }

              v261 = *v261;
            }

            while (v261);
          }

          else
          {
            v262 = 0;
          }

          if (GEOGetVectorKitRouteLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
          }

          v265 = GEOGetVectorKitRouteLog_log;
          if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
          {
            v266 = *(*&v1276[8] + 72);
            buf[0].i32[0] = 134218240;
            *(buf[0].i64 + 4) = v266;
            buf[0].i16[6] = 1024;
            *(&buf[0].i32[3] + 2) = v262;
            _os_log_impl(&dword_1B2754000, v265, OS_LOG_TYPE_INFO, "RouteRenderLayer::buildRouteLineLayer routeRibbons size: %zu  pointCount: %d", buf, 0x12u);
          }

          v267 = *(a2 + 744);
          buf[0].i64[0] = MEMORY[0x1E69E9820];
          buf[0].i64[1] = 3221225472;
          buf[1].i64[0] = ___ZN2md16RouteRenderLayer19buildRouteLineLayerERKNS_13LayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
          buf[1].i64[1] = &unk_1E7B33008;
          buf[2].i64[1] = v1237;
          buf[2].i64[0] = v1276;
          *&v1310[8] = 0;
          v1309.i64[0] = &unk_1F2A59B50;
          v1309.i64[1] = MEMORY[0x1B8C62DA0](buf);
          *&v1310[8] = &v1309;
          __src = 0uLL;
          ggl::Loader::performWithAccessor(*(v267 + 32));
          if (__src.i64[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__src.i64[1]);
          }

          std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v1309);
          v268 = *(a2 + 744);
          v1309.i64[0] = MEMORY[0x1E69E9820];
          v1309.i64[1] = 3221225472;
          *v1310 = ___ZN2md16RouteRenderLayer19buildRouteLineLayerERKNS_13LayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_2;
          *&v1310[8] = &unk_1E7B33008;
          *&v1310[24] = v1237;
          *&v1310[16] = v1250;
          p_src = 0;
          __src.i64[0] = &unk_1F2A59B50;
          __src.i64[1] = MEMORY[0x1B8C62DA0](&v1309);
          p_src = &__src;
          v1320[1] = 0;
          v1320[0] = 0;
          ggl::Loader::performWithAccessor(*(v268 + 32));
          if (v1320[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v1320[1]);
          }

          std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&__src);
          __src.i64[0] = &v1323;
          std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
          _Block_object_dispose(v1250, 8);
          std::__hash_table<std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DottedRouteLineBatchKey,std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DottedRouteLineBatchKey>,std::equal_to<md::DottedRouteLineBatchKey>,true>,std::__unordered_map_equal<md::DottedRouteLineBatchKey,std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DottedRouteLineBatchKey>,std::hash<md::DottedRouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(v1253);
          _Block_object_dispose(v1276, 8);
          std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&v1276[48]);

          v5 = v1237;
          v61 = *v1237;
          v8 = 1;
          goto LABEL_278;
        }
      }
    }

    v145 = *(*v5 + 144);
    v146 = [v145 composedRoute];
    if ([v146 transportType] == 3)
    {
    }

    else
    {
      v147 = [*(*v5 + 144) composedRoute];
      v148 = [v147 transportType] == 2;

      if (!v148)
      {
        goto LABEL_82;
      }
    }

    v149 = v1323;
    if (*(&v1323 + 1) == v1323)
    {
      goto LABEL_261;
    }

    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = (*(&v1323 + 1) - v1323) >> 3;
    while (1)
    {
      v154 = 0;
      v155 = *(v149 + 8 * v152);
      if (v155)
      {
        v156 = (v155 + 8);
      }

      else
      {
        v156 = 0;
      }

      v157 = v152 + 1;
      if (v157 < v153)
      {
        v158 = *(v149 + 8 * v157);
        if (v158)
        {
          v154 = v158 + 8;
        }

        else
        {
          v154 = 0;
        }
      }

      __p = v150;
      v1192 = v157;
      v159 = [v1217 continuousMultiSectionRouteAdditionalOverlap];
      v160 = v1237;
      v1198 = v151;
      if (!v154)
      {
        break;
      }

      v161 = v159;
      v162 = (*(*v154 + 48))(v154, 0);
      v163 = (*(*v156 + 7))(v156);
      v164 = (*(*v156 + 6))(v156, v163 - 1);
      if (vabds_f32(*v164, *v162) >= 0.000001)
      {
        goto LABEL_193;
      }

      v165 = (v161 + 1);
      v166 = 1;
      do
      {
        if (v166 == 3)
        {
          goto LABEL_169;
        }

        v167 = v166;
        v168 = vabds_f32(*(v164 + 4 * v166), v162[v166]);
        ++v166;
      }

      while (v168 < 0.000001);
      if ((v167 - 1) < 2)
      {
LABEL_193:
        __n = 0;
LABEL_195:
        v169 = v150;
        goto LABEL_198;
      }

LABEL_169:
      buf[0].i64[0] = *v164;
      buf[0].i32[2] = *(v164 + 8);
      if (v161 == -1)
      {
        v169 = v150;
      }

      else
      {
        v169 = v150;
        v170 = 1;
        do
        {
          if (v170 >= (*(*v154 + 56))(v154))
          {
            break;
          }

          v171 = (*(*v154 + 48))(v154, v170);
          v172 = v171;
          if (vabds_f32(buf[0].f32[0], *v171) >= 0.000001)
          {
            goto LABEL_177;
          }

          v173 = 0;
          do
          {
            if (v173 == 2)
            {
              goto LABEL_191;
            }

            v174 = v173++;
          }

          while (vabds_f32(buf[0].f32[v174 + 1], v171[v174 + 1]) < 0.000001);
          if (v174 <= 1)
          {
LABEL_177:
            v175 = 0xAAAAAAAAAAAAAAABLL * ((v169 - __p) >> 4) + 1;
            if (v175 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (0x5555555555555556 * (-__p >> 4) > v175)
            {
              v175 = 0x5555555555555556 * (-__p >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-__p >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v176 = 0x555555555555555;
            }

            else
            {
              v176 = v175;
            }

            if (v176)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::RouteLineSection::Vertex>>(v176);
            }

            v177 = (16 * ((v169 - __p) >> 4));
            v178 = *v172;
            v179 = *(v172 + 2);
            v177[1] = *(v172 + 1);
            v177[2] = v179;
            *v177 = v178;
            v180 = &v177[3 * ((v169 - __p) / -48)];
            if (__p != v169)
            {
              v181 = __p;
              v182 = (16 * ((v169 - __p) >> 4) + 48 * ((v169 - __p) / -48));
              do
              {
                v183 = *v181;
                v184 = v181[2];
                v182[1] = v181[1];
                v182[2] = v184;
                *v182 = v183;
                v182 += 3;
                v181 += 3;
              }

              while (v181 != v169);
            }

            v169 = v177 + 3;
            if (__p)
            {
              operator delete(__p);
            }

            __p = v180;
            buf[0].i64[0] = *v172;
            buf[0].f32[2] = v172[2];
            --v165;
          }

LABEL_191:
          ++v170;
          v160 = v1237;
        }

        while (v165);
      }

      __n = 1;
LABEL_198:
      v185 = (*(*v156 + 7))(v156);
      v186 = mdm::zone_mallocator::instance(v185);
      v187 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteLineRibbon>(v186);
      v188 = 0xAAAAAAAAAAAAAAABLL * ((v169 - __p) >> 4);
      v1229 = v185 + v188;
      v1320[0] = md::RouteLineRibbon::RouteLineRibbon(v187, v185 + v188);
      v189 = (*(*v156 + 6))(v156, 0);
      v190 = 0;
      v191 = 0;
      v192 = v1320[0];
      *(v1320[0] + 25) = *(v189 + 32);
      *(v192 + 96) = (v1198 & 1) == 0;
      *(v192 + 97) = __n ^ 1;
      while (v191 < (*(*v156 + 7))(v156))
      {
        v193 = (*(*v156 + 6))(v156, v191);
        v194 = 0;
        v195 = v1320[0][9] + v190;
        do
        {
          *&v195[v194] = *(v193 + v194);
          v194 += 4;
        }

        while (v194 != 12);
        v196 = (*(*v156 + 6))(v156, v191);
        *(v1320[0][13] + 12 * v191++ + 8) = *(v196 + 44);
        v190 += 12;
      }

      if (v169 != __p)
      {
        v197 = 0;
        v198 = 0;
        if (v188 <= 1)
        {
          v188 = 1;
        }

        v199 = __p;
        do
        {
          v200 = v1320[0][9];
          v201 = (*(*v156 + 7))(v156);
          for (m = 0; m != 12; m += 4)
          {
            *(v200 + 12 * v201 + v197 + m) = *(v199 + m);
          }

          v203 = *(__p + 48 * v198 + 44);
          v204 = v1320[0];
          *(v204[13] + 12 * (*(*v156 + 7))(v156) + 12 * v198++ + 8) = v203;
          v197 += 12;
          v199 += 48;
        }

        while (v198 != v188);
      }

      v205 = [v1217 routeDebugPoints];
      v150 = __p;
      if (v205)
      {
        v1309 = 0uLL;
        *v1310 = 0;
        __src = 0uLL;
        v1331 = 0;
        if (v1229)
        {
          v206 = 0;
          v207 = 0;
          for (n = 0; n != v1229; ++n)
          {
            v209 = v1320[0];
            v210 = v1320[0][9] + 12 * n;
            if (v207 >= v206)
            {
              v212 = v1309.i64[0];
              v213 = v207 - v1309.i64[0];
              v214 = 0xAAAAAAAAAAAAAAABLL * ((v207 - v1309.i64[0]) >> 2);
              v215 = v214 + 1;
              if (v214 + 1 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v206 - v1309.i64[0]) >> 2) > v215)
              {
                v215 = 0x5555555555555556 * ((v206 - v1309.i64[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v206 - v1309.i64[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v216 = 0x1555555555555555;
              }

              else
              {
                v216 = v215;
              }

              if (v216)
              {
                v217 = mdm::zone_mallocator::instance(v205);
                v205 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,3,1>>(v217, v216);
                v218 = v205;
              }

              else
              {
                v218 = 0;
              }

              v219 = *v210;
              v220 = *(v210 + 2);
              v221 = v218 + 12 * v214;
              *(v221 + 2) = v220;
              *v221 = v219;
              if (v212 != v207)
              {
                v222 = &v221[-v213];
                do
                {
                  v223 = *v212;
                  *(v222 + 2) = v212[2];
                  *v222 = v223;
                  v222 += 12;
                  v212 += 3;
                }

                while (v212 != v207);
                v212 = v1309.i64[0];
              }

              v1309.i64[0] = &v221[-v213];
              if (v212)
              {
                v224 = mdm::zone_mallocator::instance(v205);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(v224, v212);
              }

              v206 = v218 + 12 * v216;
              v209 = v1320[0];
              v207 = v218 + 12 * v214;
              v160 = v1237;
            }

            else
            {
              v211 = *v210;
              *(v207 + 8) = *(v210 + 2);
              *v207 = v211;
            }

            v207 += 12;
            v225 = v209[13] + 12 * n;
            v226 = __src.i64[1];
            if (__src.i64[1] >= v1331)
            {
              v228 = __src.i64[1] - __src.i64[0];
              v229 = __src.i64[1] - __src.i64[0] + 1;
              if (v229 < 0)
              {
LABEL_1376:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v230 = v1331 - __src.i64[0];
              if (2 * (v1331 - __src.i64[0]) > v229)
              {
                v229 = 2 * v230;
              }

              if (v230 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v231 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v231 = v229;
              }

              buf[2].i64[0] = &p_src;
              if (v231)
              {
                v232 = mdm::zone_mallocator::instance(v205);
                v233 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v232, v231);
                v160 = v1237;
              }

              else
              {
                v233 = 0;
              }

              v234 = &v233[v228];
              v233[v228] = *(v225 + 8);
              v227 = &v233[v228 + 1];
              v235 = &v233[v231];
              v236 = &v234[__src.i64[0] - __src.i64[1]];
              memcpy(v236, __src.i64[0], __src.i64[1] - __src.i64[0]);
              v237 = __src.i64[0];
              v238 = v1331;
              __src.i64[0] = v236;
              __src.i64[1] = v227;
              v1331 = v235;
              buf[1].i64[0] = v237;
              buf[1].i64[1] = v238;
              buf[0].i64[1] = v237;
              buf[0].i64[0] = v237;
              v205 = std::__split_buffer<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator> &>::~__split_buffer(buf);
            }

            else
            {
              *__src.i64[1] = *(v225 + 8);
              v227 = v226 + 1;
            }

            __src.i64[1] = v227;
          }

          v1309.i64[1] = v207;
          *v1310 = v206;
        }

        v239 = *v160;
        *&v1302 = objc_loadWeakRetained(v156 + 25);
        buf[0].i64[0] = &v1302;
        std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * {__strong}&&>,std::tuple<>>((*&v239 + 432), v1302, buf);
        operator new();
      }

      v1309.i64[0] = v156;
      buf[0].i64[0] = &v1309;
      v240 = std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RouteLineBatchKey,std::piecewise_construct_t const&,std::tuple<md::RouteLineBatchKey const&>,std::tuple<>>((*&v1276[8] + 48), v156);
      v152 = v1192;
      v241 = v240;
      v243 = v240[4];
      v242 = v240[5];
      if (v243 >= v242)
      {
        v246 = v240[3];
        v247 = v243 - v246;
        v248 = (v243 - v246) >> 3;
        v249 = v248 + 1;
        if ((v248 + 1) >> 61)
        {
          goto LABEL_1384;
        }

        v250 = v242 - v246;
        if (v250 >> 2 > v249)
        {
          v249 = v250 >> 2;
        }

        if (v250 >= 0x7FFFFFFFFFFFFFF8)
        {
          v251 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v251 = v249;
        }

        buf[2].i64[0] = (v240 + 6);
        if (v251)
        {
          v252 = mdm::zone_mallocator::instance(v240);
          v253 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v252, v251);
          v246 = v241[3];
          v247 = v241[4] - v246;
          v254 = v247 >> 3;
        }

        else
        {
          v253 = 0;
          v254 = v248;
        }

        v255 = &v253[8 * v248];
        v256 = &v253[8 * v251];
        v257 = v1320[0];
        v1320[0] = 0;
        v258 = &v255[-8 * v254];
        *v255 = v257;
        v245 = v255 + 8;
        memcpy(v258, v246, v247);
        v259 = v241[3];
        v241[3] = v258;
        v241[4] = v245;
        v260 = v241[5];
        v241[5] = v256;
        buf[1].i64[0] = v259;
        buf[1].i64[1] = v260;
        buf[0].i64[1] = v259;
        buf[0].i64[0] = v259;
        std::__split_buffer<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        v244 = v1320[0];
        v1320[0] = 0;
        *v243 = v244;
        v245 = v243 + 8;
      }

      v241[4] = v245;
      std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](v1320);
      v149 = v1323;
      v153 = (*(&v1323 + 1) - v1323) >> 3;
      v151 = __n;
      if (v1192 >= v153)
      {
        if (__p)
        {
          operator delete(__p);
        }

        goto LABEL_261;
      }
    }

    __n = 0;
    goto LABEL_195;
  }

LABEL_278:
  if (*(*&v61 + 328))
  {
    goto LABEL_389;
  }

  v269 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
  *v1276 = 0;
  *&v1276[8] = v1276;
  *&v1276[16] = 0x5812000000;
  *&v1276[24] = __Block_byref_object_copy__11;
  *&v1276[32] = __Block_byref_object_dispose__12;
  *&v1276[40] = "";
  memset(&v1276[48], 0, 32);
  *&v1276[80] = 1065353216;
  v270 = *(*&v61 + 160);
  if (!v270)
  {
    v1302 = 0uLL;
    *&v1303 = 0;
    goto LABEL_386;
  }

  [v270 sections];
  v1201 = *(&v1302 + 1);
  v271 = v1302;
  if (v1302 == *(&v1302 + 1))
  {
    goto LABEL_386;
  }

  v1218 = v269;
  do
  {
    v1207 = v271;
    v272 = *v271;
    v1300[0] = v272;
    if (v272)
    {
      ++*v272;
    }

    v273 = 0;
    v274 = 0;
    *&v1320[1] = 0u;
    if (v272)
    {
      v275 = v272 + 1;
    }

    else
    {
      v275 = 0;
    }

    v1320[0] = v275;
    v1331 = 0;
    *v1219 = 0u;
    __src = 0uLL;
    v1230 = *&v1276[8];
    while ((*(*v275[9] + 24))(v275[9]) != v273)
    {
      v276 = (*(*v275[9] + 32))(v275[9], v273);
      buf[0].i32[0] = 5;
      buf[0].i16[2] = 11;
      v277 = *(v276 + 47);
      buf[0].i32[2] = 65621;
      buf[0].i16[6] = v277;
      buf[1].i32[0] = 65613;
      buf[1].i16[2] = 0;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v1250, buf, 3uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v1323, v1250);
      gss::FeatureAttributeSet::sort(v1323, *(&v1323 + 1));
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1250);
      v278 = (*(*v275[9] + 24))(v275[9]);
      if (!v273)
      {
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(&__src, v1323, *(&v1323 + 1), (*(&v1323 + 1) - v1323) >> 3);
LABEL_300:
        *__pa = *v1219;
        goto LABEL_378;
      }

      v279 = v278 - 1;
      v280 = __src.i64[0];
      v281 = v1323;
      if (__src.i64[1] - __src.i64[0] == *(&v1323 + 1) - v1323)
      {
        while (v280 != __src.i64[1])
        {
          _ZF = *v280 == *v281 && *(v280 + 4) == *(v281 + 4);
          if (!_ZF)
          {
            goto LABEL_301;
          }

          v280 += 8;
          v281 += 8;
        }

        if (v279 != v273)
        {
          goto LABEL_300;
        }
      }

LABEL_301:
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v1250, *v269, &__src);
      v283 = *v1250;
      v1250[1] = 0;
      v1250[0] = 0;
      v284 = v1320[2];
      *&v1320[1] = v283;
      if (v284)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v284);
        if (v1250[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v1250[1]);
        }
      }

      v285 = *v269;
      LODWORD(v1306) = 65613;
      WORD2(v1306) = 1;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](buf, &v1306, 1uLL);
      gss::FeatureAttributeSet::setByReplacingAttributes(v1250, &__src, buf[0].i64[0], buf[0].i64[1]);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v1309, v285, v1250);
      *__pa = v1309;
      v1309 = 0uLL;
      if (v1219[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1219[1]);
        if (v1309.i64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v1309.i64[1]);
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1250);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
      v286 = v1320[1];
      v287 = v1320[2];
      if (v1320[2])
      {
        atomic_fetch_add_explicit(v1320[2] + 1, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v286, v287);
      if (v287)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v287);
      }

      if (__pa[1])
      {
        atomic_fetch_add_explicit(__pa[1] + 1, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v1309, __pa[0], __pa[1]);
      if (__pa[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__pa[1]);
      }

      if ((buf[2].i8[0] & 1) != 0 || v1310[16] == 1)
      {
        v288 = (*(*v275[9] + 32))(v275[9], (v273 - (v279 != v273)));
        v289 = mdm::zone_mallocator::instance(v288);
        v290 = pthread_rwlock_rdlock((v289 + 32));
        if (v290)
        {
          geo::read_write_lock::logFailure(v290, "read lock", v291);
        }

        v292 = malloc_type_zone_malloc(*v289, 0x80uLL, 0x10A10404927B2FBuLL);
        atomic_fetch_add((v289 + 24), 1u);
        geo::read_write_lock::unlock((v289 + 32));
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v292, v273 - v274);
        *v292 = &unk_1F2A2F920;
        *(v292 + 6) = 0u;
        *(v292 + 7) = 0u;
        if (v273 != v274)
        {
          if (!((v273 - v274) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v1306 = v292;
        v293 = (*(*v275[9] + 32))(v275[9], v274);
        v294 = v293[8];
        v295 = v1306;
        *(v1306 + 24) = v294;
        v296 = v288[8];
        *(v295 + 25) = v296;
        v297 = v1320[0];
        v298 = v1320[1];
        v299 = 0x9DDFEA08EB382D69 * ((8 * (v1320[0] & 0x1FFFFFFF) + 8) ^ (v1320[0] >> 32));
        v300 = 0x9DDFEA08EB382D69 * ((v1320[0] >> 32) ^ (v299 >> 47) ^ v299);
        v301 = v300 ^ (v300 >> 47);
        v302 = 0x9DDFEA08EB382D69 * v301;
        if (v1320[1])
        {
          v293 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v1320[1]);
          v302 ^= &v293[0x1DFEA08EB382D690 * v301 - 0x18722191A02D60FALL] + (v302 >> 2) - 3;
          if (__pa[0])
          {
            goto LABEL_324;
          }
        }

        else if (__pa[0])
        {
LABEL_324:
          v293 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(__pa[0]);
          v302 ^= &v293[16 * v302 - 0x18722191A02D60FALL] + (v302 >> 2) - 3;
        }

        v303 = LODWORD(v294) - 0x61C8864680B583EBLL;
        if (v294 == 0.0)
        {
          v303 = 0x9E3779B97F4A7C15;
        }

        v304 = ((v302 >> 2) + (v302 << 6) + v303) ^ v302;
        v305 = LODWORD(v296) - 0x61C8864680B583EBLL;
        if (v296 == 0.0)
        {
          v305 = 0x9E3779B97F4A7C15;
        }

        v306 = (v305 + (v304 << 6) + (v304 >> 2)) ^ v304;
        v307 = v1230[7];
        if (!*&v307)
        {
          goto LABEL_351;
        }

        v308 = vcnt_s8(v307);
        v308.i16[0] = vaddlv_u8(v308);
        if (v308.u32[0] > 1uLL)
        {
          v309 = (v305 + (v304 << 6) + (v304 >> 2)) ^ v304;
          if (v306 >= *&v307)
          {
            v309 = v306 % *&v307;
          }
        }

        else
        {
          v309 = (*&v307 - 1) & v306;
        }

        v310 = *(*&v1230[6] + 8 * v309);
        if (!v310 || (v311 = *v310) == 0)
        {
LABEL_351:
          operator new();
        }

        while (1)
        {
          v312 = *(v311 + 1);
          if (v312 == v306)
          {
            if (*(v311 + 2) == v297 && *(v311 + 3) == v298 && *(v311 + 5) == __pa[0] && v311[14] == v294 && v311[15] == v296)
            {
              v269 = v1218;
              v314 = *(v311 + 9);
              v313 = *(v311 + 10);
              if (v314 >= v313)
              {
                v317 = *(v311 + 8);
                v318 = v314 - v317;
                v319 = (v314 - v317) >> 3;
                v320 = v319 + 1;
                if ((v319 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v321 = v313 - v317;
                if (v321 >> 2 > v320)
                {
                  v320 = v321 >> 2;
                }

                if (v321 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v322 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v322 = v320;
                }

                *&v1252 = v311 + 22;
                if (v322)
                {
                  v323 = mdm::zone_mallocator::instance(v293);
                  v324 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(v323, v322);
                  v317 = *(v311 + 8);
                  v318 = *(v311 + 9) - v317;
                  v325 = v318 >> 3;
                  v269 = v1218;
                }

                else
                {
                  v324 = 0;
                  v325 = (v314 - v317) >> 3;
                }

                v326 = &v324[8 * v319];
                v327 = &v324[8 * v322];
                v328 = v1306;
                v1306 = 0;
                v329 = &v326[-v325];
                *v326 = v328;
                v316 = v326 + 1;
                memcpy(v329, v317, v318);
                v330 = *(v311 + 8);
                *(v311 + 8) = v329;
                *(v311 + 9) = v316;
                v331 = *(v311 + 10);
                *(v311 + 10) = v327;
                *&v1251 = v330;
                *(&v1251 + 1) = v331;
                v1250[1] = v330;
                v1250[0] = v330;
                std::__split_buffer<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v1250);
              }

              else
              {
                v315 = v1306;
                v1306 = 0;
                *v314 = v315;
                v316 = v314 + 8;
              }

              *(v311 + 9) = v316;
              std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>::~unique_ptr[abi:nn200100](&v1306);
              break;
            }
          }

          else
          {
            if (v308.u32[0] > 1uLL)
            {
              if (v312 >= *&v307)
              {
                v312 %= *&v307;
              }
            }

            else
            {
              v312 &= *&v307 - 1;
            }

            if (v312 != v309)
            {
              goto LABEL_351;
            }
          }

          v311 = *v311;
          if (!v311)
          {
            goto LABEL_351;
          }
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(&__src, v1323, *(&v1323 + 1), (*(&v1323 + 1) - v1323) >> 3);
      v5 = v1237;
      if (v1310[16] == 1)
      {
        (*(*v1309.i64[0] + 56))(v1309.i64[0]);
      }

      if (*&v1310[8])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v1310[8]);
      }

      if (v1309.i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1309.i64[1]);
      }

      if (buf[2].u8[0] == 1)
      {
        (*(*buf[0].i64[0] + 56))(buf[0].i64[0]);
      }

      if (buf[1].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[1].i64[1]);
      }

      if (buf[0].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[0].i64[1]);
      }

      v274 = v273;
LABEL_378:
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1323);
      ++v273;
      *v1219 = *__pa;
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
    if (v1219[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1219[1]);
    }

    if (v1320[2])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1320[2]);
    }

    geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v1300);
    v271 = v1207 + 1;
  }

  while (v1207 + 1 != v1201);
LABEL_386:
  v332 = *(a2 + 744);
  v1250[0] = MEMORY[0x1E69E9820];
  v1250[1] = 3221225472;
  *&v1251 = ___ZN2md16RouteRenderLayer28buildRouteStyledOverlayLayerERKNS_13LayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
  *(&v1251 + 1) = &unk_1E7B33008;
  *(&v1252 + 1) = v5;
  *&v1252 = v1276;
  buf[1].i64[1] = 0;
  buf[0].i64[0] = &unk_1F2A59B50;
  buf[0].i64[1] = MEMORY[0x1B8C62DA0](v1250);
  buf[1].i64[1] = buf;
  v1309 = 0uLL;
  ggl::Loader::performWithAccessor(*(v332 + 32));
  if (v1309.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1309.i64[1]);
  }

  std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](buf);
  buf[0].i64[0] = &v1302;
  std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](buf);
  _Block_object_dispose(v1276, 8);
  std::__hash_table<std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteStyledOverlayBatchKey,std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteStyledOverlayBatchKey>,std::equal_to<md::RouteStyledOverlayBatchKey>,true>,std::__unordered_map_equal<md::RouteStyledOverlayBatchKey,std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteStyledOverlayBatchKey>,std::hash<md::RouteStyledOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&v1276[48]);
  v5 = v1237;
  v61 = *v1237;
  v8 = 1;
LABEL_389:
  v333 = *(*&v61 + 320);
  v334 = *(v333 + 8);
  v335 = *(v333 + 16);
  if (v334 != v335)
  {
    do
    {
      v336 = *v334++;
      ggl::Batcher::reset((v336 + 2832));
      md::RenderItemPool::reset((v336 + 2912));
    }

    while (v334 != v335);
    v61 = *v5;
  }

  v337 = *(*&v61 + 328);
  v338 = *(v337 + 8);
  v339 = *(v337 + 16);
  if (v338 != v339)
  {
    do
    {
      v340 = *v338++;
      ggl::Batcher::reset((v340 + 144));
      md::RenderItemPool::reset((v340 + 224));
    }

    while (v338 != v339);
    v61 = *v5;
  }

  if (*(*&v61 + 620) == 1)
  {
    v341 = *(*&v61 + 160);
    v342 = v1184[23];
    [v341 splitRouteLineAtAnnotation:v342 puckOffset:*(v1178 + 12)];
    goto LABEL_399;
  }

  if (*(*&v61 + 622) == 1)
  {
    v343 = *(*&v61 + 160);
    v342 = v1184[24];
    [v343 splitRouteLineAtAnnotation:v342 puckOffset:*MEMORY[0x1E69A1918]];
LABEL_399:
  }

  v344 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
  if (v344)
  {
    v1170 = *(v344 + 85) == 3;
  }

  else
  {
    v1170 = 0;
  }

  v345 = +[VKDebugSettings sharedSettings];
  v1185 = [v345 showRoutelineAnimation];

  v346 = md::LayoutContext::get<md::NavigationContext>(*(a2 + 8));
  v347 = v1237;
  if (v346)
  {
    v348 = v346;
    v349 = [*(v346 + 5) routeInfo];
    v350 = [v349 route];
    v351 = [v350 source];

    v352 = [*(v348 + 5) routeInfo];
    v353 = [v352 route];
    if ([v353 transportType])
    {
      v354 = v1171 == 9;
    }

    else
    {
      v354 = 1;
    }

    v355 = !v354;

    v356 = *(v348 + 5);
    if (v356)
    {
      v357 = [*(v348 + 5) useType] != 1;
    }

    else
    {
      v357 = 1;
    }

    v358 = +[VKPlatform sharedPlatform];
    v359 = [v358 reduceMotionEnabled];

    if ((v351 == 4 || v357) | v355 & 1 | v1170 & 1)
    {
      v1185 = 0;
      v347 = v1237;
      goto LABEL_437;
    }

    v347 = v1237;
    if ((*v348 | v359))
    {
      v1185 = 0;
      goto LABEL_437;
    }
  }

  if (!v8)
  {
LABEL_437:
    v363 = obj;
    goto LABEL_438;
  }

  v360 = *v347;
  if (!*(*v347 + 320))
  {
    v363 = obj;
    goto LABEL_439;
  }

  if (v1171 == 9)
  {
    v364 = [*(*&v360 + 160) composedRoute];
    v365 = [v364 anchorPoints];
    v366 = [v365 count];

    v347 = v1237;
    v367 = *v1237;
    if (v366 < 2 || *(a1 + 48) >= v366)
    {
      if (*(*&v367 + 849) != 1)
      {
LABEL_436:
        *(a1 + 48) = v366;
        goto LABEL_437;
      }

      v372 = [*(*&v367 + 160) composedRoute];
      v373 = [v372 anchorPoints];
      v370 = [v373 lastObject];

      v371 = v1237[1];
      *v1276 = *v1237;
      *&v1276[8] = v371;
      if (v371)
      {
        atomic_fetch_add_explicit(&v371->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v368 = [*(*&v367 + 160) composedRoute];
      v369 = [v368 anchorPoints];
      v370 = [v369 objectAtIndexedSubscript:v366 - 2];

      v371 = v1237[1];
      *v1276 = *v1237;
      *&v1276[8] = v371;
      if (v371)
      {
        atomic_fetch_add_explicit(&v371->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v374 = [v370 routeCoordinate];
    md::RouteRenderLayer::updateRoutelineDrawinAnimation(a1, a2, v1276, v374);
    if (v371)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v371);
    }

    v347 = v1237;
    goto LABEL_436;
  }

  v361 = v347[1];
  *v1276 = *v347;
  *&v1276[8] = v361;
  if (v361)
  {
    atomic_fetch_add_explicit(&v361->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v362 = 0;
  md::RouteRenderLayer::updateRoutelineDrawinAnimation(a1, a2, v1276, v362);
  v363 = obj;
  if (v361)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v361);
  }

LABEL_438:
  v360 = *v347;
LABEL_439:
  if (v1185 && *&v360)
  {
    LODWORD(v1250[0]) = 0;
    md::RouteLineDrawAnimation::update((*&v360 + 632), *(*&v360 + 832), v1250);
    md::RouteLineLayer::updateAnimationParameters(*(*(*v347 + 320) + 8), v375, *(*(*v347 + 320) + 16), v1250[0], 0);
  }

  else
  {
    v376 = *(*&v360 + 696);
    if (v376)
    {
      [v376 stop];
      v360 = *v347;
      v363 = obj;
    }

    v377 = *(*&v360 + 320);
    v378 = *(v377 + 8);
    for (ii = *(v377 + 16); v378 != ii; v378 += 8)
    {
      if (*(*v378 + 2960) == 1)
      {
        *(*v378 + 3112) = 1065353216;
      }
    }
  }

  v380 = *v347;
  if (v1185 && (v381 = *(*&v380 + 696)) != 0 && *(*&v380 + 832) < 1.0)
  {
    if ([v381 state] == 3)
    {
      v380 = *v347;
      goto LABEL_454;
    }

    v382 = [*(*&v380 + 696) state];
    v380 = *v347;
    if (v382 == 4)
    {
LABEL_454:
      v363 = obj;
      goto LABEL_455;
    }

    v383 = 1;
    v363 = obj;
  }

  else
  {
LABEL_455:
    v383 = 0;
    v1185 = 0;
  }

  *(*&v380 + 857) = v383;
  v384 = *(*&v380 + 312);
  v385 = *(*&v380 + 320);
  v386 = v385[43];
  if (v386)
  {
    v387 = v386 == v384;
  }

  else
  {
    v387 = 0;
  }

  if (!v387)
  {
    v385[43] = v384;
    v388 = v385[1];
    v389 = v385[2];
    if (v388 != v389)
    {
      do
      {
        v390 = *v388;
        v391 = *(*(*v388 + 8) + 344);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(*v388 + 2976), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 2976) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 2984), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 2984) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 2992), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 2992) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3000), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3000) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3008), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3008) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3016), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3016) + 168) = *(*(v391 + 248) + 24);
        if (*(v390 + 3137))
        {
          v392 = *(v390 + 3040);
          v393 = *(v391 + 136);
          *v1276 = *(v391 + 128);
          *&v1276[8] = v393;
          if (v393)
          {
            atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v392, v1276);
            std::__shared_weak_count::__release_shared[abi:nn200100](v393);
          }

          else
          {
            ggl::PipelineSetup::setState(v392, v1276);
          }
        }

        else
        {
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3048), *(v391 + 96), *(v391 + 104));
          **(*(v390 + 3048) + 168) = *(*(v391 + 248) + 24);
        }

        v394 = *(v390 + 3080);
        v395 = *(v391 + 168);
        *v1276 = *(v391 + 160);
        *&v1276[8] = v395;
        if (v395)
        {
          atomic_fetch_add_explicit(&v395->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v394, v1276);
          std::__shared_weak_count::__release_shared[abi:nn200100](v395);
        }

        else
        {
          ggl::PipelineSetup::setState(v394, v1276);
        }

        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3024), *(v391 + 112), *(v391 + 120));
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3032), *(v391 + 112), *(v391 + 120));
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3056), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3056) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3064), *(v391 + 144), *(v391 + 152));
        **(*(v390 + 3064) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3072), *(v391 + 144), *(v391 + 152));
        **(*(v390 + 3072) + 168) = *(*(v391 + 248) + 24);
        **(*(v390 + 3088) + 168) = *(*(v391 + 256) + 16);
        **(*(v390 + 3096) + 168) = *(*(v391 + 256) + 16);
        **(*(v390 + 3104) + 168) = *(*(v391 + 256) + 16);
        ++v388;
      }

      while (v388 != v389);
      v380 = *v347;
      v384 = *(*v347 + 312);
    }
  }

  v396 = *(*&v380 + 336);
  v397 = v396[20];
  if (v397)
  {
    v398 = v397 == v384;
  }

  else
  {
    v398 = 0;
  }

  if (!v398)
  {
    v396[20] = v384;
    v399 = v396[1];
    v400 = v396[2];
    if (v399 != v400)
    {
      do
      {
        v401 = *(*(*v399 + 8) + 160);
        v402 = *(*v399 + 288);
        v403 = *(v401 + 184);
        *v1276 = *(v401 + 176);
        *&v1276[8] = v403;
        if (v403)
        {
          atomic_fetch_add_explicit(&v403->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v402, v1276);
          std::__shared_weak_count::__release_shared[abi:nn200100](v403);
        }

        else
        {
          ggl::PipelineSetup::setState(v402, v1276);
        }

        v399 += 8;
      }

      while (v399 != v400);
      v380 = *v347;
      v384 = *(*v347 + 312);
    }
  }

  v404 = *(*&v380 + 328);
  v405 = v404[20];
  if (v405)
  {
    v406 = v405 == v384;
  }

  else
  {
    v406 = 0;
  }

  if (!v406)
  {
    v404[20] = v384;
    v407 = v404[1];
    v408 = v404[2];
    if (v407 != v408)
    {
      do
      {
        v409 = *(*(*v407 + 8) + 160);
        v410 = *(*v407 + 328);
        v411 = *(v409 + 200);
        *v1276 = *(v409 + 192);
        *&v1276[8] = v411;
        if (v411)
        {
          atomic_fetch_add_explicit(&v411->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v410, v1276);
          std::__shared_weak_count::__release_shared[abi:nn200100](v411);
        }

        else
        {
          ggl::PipelineSetup::setState(v410, v1276);
        }

        v407 += 8;
      }

      while (v407 != v408);
      v380 = *v347;
    }
  }

  v412 = *(v363 + 1310);
  v413 = *(*&v380 + 144);
  v414 = [v413 composedRoute];
  v415 = [v414 transportType] != 1;

  v416 = v1237;
  if (v1168)
  {
    v417 = *v1168;
    v418 = v1168[1];
    if (*v1168 != v418)
    {
      v419 = *v1168;
      while (*v419 != 2)
      {
        v419 += 16;
        if (v419 == v418)
        {
          goto LABEL_499;
        }
      }

      if (v419 != v418)
      {
        v420 = *(v419 + 8) == 0;
        goto LABEL_500;
      }
    }

LABEL_499:
    v420 = 1;
LABEL_500:
    while (v417 != v418)
    {
      if (*v417 == 23)
      {
        if (v417 == v418)
        {
          if (v420)
          {
            goto LABEL_504;
          }
        }

        else
        {
          v422 = *(v417 + 8);
          if (v420)
          {
            v1173 = *(*v1237 + 623);
            if (!v422)
            {
              goto LABEL_515;
            }

            v1176 = 0;
            v423 = 1;
            goto LABEL_518;
          }

          v423 = 1;
          if (v422)
          {
            v1176 = 0;
            v1173 = 1;
            goto LABEL_518;
          }
        }

LABEL_513:
        v421 = 1;
        goto LABEL_514;
      }

      v417 += 16;
    }

    if (v420)
    {
      goto LABEL_504;
    }

    goto LABEL_513;
  }

LABEL_504:
  v421 = *(*v1237 + 623);
LABEL_514:
  v1173 = v421;
LABEL_515:
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v1239, *v1175, (*v1237 + 536));
  md::TrafficMeshStyle::TrafficMeshStyle(v1276, v1239, v1240, 0);
  v1176 = *&v1276[4] == 0;
  if (v1240)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1240);
  }

  v423 = 0;
LABEL_518:
  v1164 = v423;
  if (*(a1 + 113) != 1)
  {
    goto LABEL_530;
  }

  v424 = *v1168;
  v425 = v1168[1];
  if (*v1168 == v425)
  {
    goto LABEL_529;
  }

  v426 = *v1168;
  while (*v426 != 21)
  {
    v426 += 16;
    if (v426 == v425)
    {
      goto LABEL_529;
    }
  }

  if (v426 == v425 || !*(v426 + 8))
  {
LABEL_529:
    while (v424 != v425)
    {
      if (*v424 == 25)
      {
        if (v424 == v425)
        {
          break;
        }

        v427 = *(v424 + 8) != 0;
        goto LABEL_798;
      }

      v424 += 16;
    }

LABEL_530:
    v1199 = 0;
    goto LABEL_531;
  }

  v427 = 1;
LABEL_798:
  v1199 = v427;
LABEL_531:
  md::RouteLayoutContext::RouteLayoutContext(v1250, v1171, *v1237 + 464, a2);
  if (v1167 && *(v1167 + 64) == 1)
  {
    v429 = v1167[9];
    v428 = v1167[10];
    if (v428)
    {
      atomic_fetch_add_explicit(&v428->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v430 = v1265;
    v1264 = v429;
    v1265 = v428;
    if (v430)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v430);
    }

    v1172 = 1;
  }

  else
  {
    v1172 = 0;
  }

  v431 = *v1237;
  v1255 = *(*v1237 + 620);
  v432 = *(*&v431 + 168);
  if (fabs(v432) <= 2.22044605e-16)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v433 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v433, OS_LOG_TYPE_INFO))
    {
      v434 = *(*v1237 + 168);
      *v1276 = 134217984;
      *&v1276[4] = v434;
      _os_log_impl(&dword_1B2754000, v433, OS_LOG_TYPE_INFO, "*** RouteLine width scale = %f ", v1276, 0xCu);
    }

    v416 = v1237;
    v431 = *v1237;
    v432 = *(*v1237 + 168);
  }

  v435 = v432;
  v1257 = v435;
  v436 = *(*&v431 + 200);
  if (fabsf(v436) <= 0.00000011921)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v437 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v437, OS_LOG_TYPE_INFO))
    {
      v438 = *(*v416 + 200);
      *v1276 = 134217984;
      *&v1276[4] = v438;
      _os_log_impl(&dword_1B2754000, v437, OS_LOG_TYPE_INFO, "*** RouteLine alpha scale = %f ", v1276, 0xCu);
    }

    v431 = *v1237;
    v436 = *(*v1237 + 200);
  }

  v1256 = v436;
  if (*(*&v431 + 621) == 1)
  {
    if (v1199)
    {
      v439 = 2;
    }

    else
    {
      v439 = 0;
    }
  }

  else
  {
    v439 = *(*&v431 + 620);
    if (*(*&v431 + 620))
    {
      v440 = 1;
    }

    else
    {
      v440 = 2;
    }

    if (!v1199)
    {
      v439 = v440;
    }
  }

  v1258 = (v439 << 24) | (*(*&v431 + 616) << 16);
  BYTE9(v1253[0]) = *(*&v431 + 512);
  v441 = *(*&v431 + 144);
  v442 = [v441 composedRoute];
  v1261 = [v442 transportType];

  if ((**(a2 + 744) | v1199))
  {
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
    v443 = v1237;
    v445 = v444 > 13.5 && (v415 || v412 >= 1.0);
  }

  else
  {
    v445 = 0;
    v443 = v1237;
  }

  v1259 = v445;
  v446 = *a2;
  [v446 contentScale];
  v448 = v447;
  v449 = obj[372];
  v450 = *(*v443 + 168);
  v451 = *a2;
  [v451 sizeInPixels];
  v453 = v452;

  v454 = v449 * v448 * v450 / v453;
  v1262 = v454;
  v1260 = v1176;
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v1263 = v455;
  v1266 = a4;
  v1267 = v1177;
  md::LayoutContext::frameState(a2);
  __x = *(v456 + 88);
  v1269 = v1199;
  if (v1178)
  {
    v457 = v1178;
    v458 = *v1178;
  }

  else
  {
    v458 = 0;
    v457 = 0;
  }

  v1270 = v458 & 1;
  v459 = md::LayoutContext::cameraType(a2);
  v1271 = gdc::ToCoordinateSystem(v459);
  isSplinedEnabled = md::CameraContext::isSplinedEnabled(obj, v460);
  if (*(v457 + 36) == 1)
  {
    v461 = *(v457 + 8);
  }

  else
  {
    v461 = -1;
  }

  v1273 = v461;
  v462 = v457[5];
  v463 = [v462 routeInfo];
  v464 = [v463 route];
  v465 = v1274;
  v1274 = v464;

  v466 = v1237;
  v467 = *(*v1237 + 320);
  v468 = *(v467 + 344);
  *(v467 + 200) = v468[2];
  *(v467 + 216) = v468[9];
  *(v467 + 192) = v468[2];
  v469 = *v468;
  *(v467 + 72) = *v468;
  *(v467 + 88) = v469;
  v470 = !v1259;
  v471 = 1;
  if (!v1259)
  {
    v471 = 0;
  }

  v472 = 4;
  if (v1259)
  {
    v472 = 5;
  }

  v473 = v468[v471];
  *(v467 + 56) = v473;
  *(v467 + 104) = v473;
  v474 = v468[v471];
  *(v467 + 120) = v474;
  *(v467 + 136) = v474;
  v475 = v468[v472];
  *(v467 + 64) = v475;
  *(v467 + 80) = v475;
  v476 = v468[v472];
  *(v467 + 96) = v476;
  *(v467 + 112) = v476;
  v477 = 8;
  v478 = v468[v472];
  if (v470)
  {
    v477 = 7;
  }

  *(v467 + 128) = v478;
  *(v467 + 144) = v478;
  *(v467 + 208) = v468[v477];
  *(v467 + 152) = v468[v471];
  v479 = v468[10];
  *(v467 + 224) = v479;
  if (v468[38])
  {
    v480 = 168;
  }

  else
  {
    *(v467 + 184) = v468[6];
    v479 = v468[3];
    v480 = 176;
  }

  *(v467 + v480) = v479;
  *(v467 + 160) = v468[11];
  v481 = *(v467 + 8);
  v482 = *(v467 + 16);
  if (v481 != v482)
  {
    v1163 = v467;
    v483 = 0.5;
    v1231 = vdupq_n_s64(0x16uLL);
    v1220 = *(v467 + 16);
    while (1)
    {
      v484 = *v481;
      if (*(*v481 + 2960) == 1)
      {
        break;
      }

LABEL_758:
      if (++v481 == v482)
      {
        v467 = v1163;
        v481 = *(v1163 + 8);
        v482 = *(v1163 + 16);
        goto LABEL_761;
      }
    }

    v485 = *(*(*(v484 + 8) + 344) + 248);
    if (v485)
    {
      v486 = *(v485 + 16);
    }

    else
    {
      v486 = 1.0;
    }

    md::RouteStyleContext::RouteStyleContext(v1276, v1250, *(v484 + 2968), *(v484 + 3137), v486);
    if ((v1276[2] & 1) == 0)
    {
      if ((*(*(v484 + 8) + 356) & 1) == 0)
      {
        if (GEOGetVectorKitRouteLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
        }

        v492 = GEOGetVectorKitRouteLog_log;
        if (os_log_type_enabled(v492, OS_LOG_TYPE_INFO))
        {
          v493 = [v1274 uniqueRouteID];
          v494 = [v493 UUIDString];
          buf[0].i32[0] = 138412546;
          *(buf[0].i64 + 4) = v494;
          buf[0].i16[6] = 1024;
          *(&buf[0].i32[3] + 2) = v1273;
          _os_log_impl(&dword_1B2754000, v492, OS_LOG_TYPE_INFO, "RouteLineBatch::layout failed due to style locker fail. Route ID %@, route leg %d", buf, 0x12u);
        }

        md::RouteLineSection::dumpStyleAttributes(*(v484 + 2968));
        v466 = v1237;
        *(*(v484 + 8) + 356) = 1;
        v482 = v1220;
      }

      v495 = 24;
      v496 = v484;
      v497 = xmmword_1B33B0560;
      v498 = xmmword_1B33B0550;
      v499 = xmmword_1B33B0C10;
      v500 = xmmword_1B33B0C00;
      do
      {
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), v497)), *v497.i8), *v497.i8).u8[0])
        {
          v496[136] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v497)), *&v497), *&v497).i8[1])
        {
          v496[264] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v497, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v498))), *&v497).i8[2])
        {
          v496[392] = 0;
          v496[520] = 0;
        }

        if (vuzp1_s8(*&v497, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v499)), *&v497)).i32[1])
        {
          v496[648] = 0;
        }

        if (vuzp1_s8(*&v497, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v499)), *&v497)).i8[5])
        {
          v496[776] = 0;
        }

        if (vuzp1_s8(*&v497, vuzp1_s16(*&v497, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v500)))).i8[6])
        {
          v496[904] = 0;
          v496[1032] = 0;
        }

        v501 = vdupq_n_s64(8uLL);
        v499 = vaddq_s64(v499, v501);
        v498 = vaddq_s64(v498, v501);
        v497 = vaddq_s64(v497, v501);
        v500 = vaddq_s64(v500, v501);
        v496 += 1024;
        v495 -= 8;
      }

      while (v495);
      *(v484 + 2960) = 0;
      goto LABEL_757;
    }

    if (v1276[0] == 1)
    {
      *(v484 + 136) = 0;
      *(v484 + 392) = 0;
      *(v484 + 648) = 0;
      *(v484 + 904) = 0;
      *(v484 + 1160) = 0;
      *(v484 + 1416) = 0;
      *(v484 + 2440) = 0;
      *(v484 + 2568) = 0;
      *(v484 + 2696) = 0;
      *(v484 + 264) = 0;
      *(v484 + 520) = 0;
      *(v484 + 776) = 0;
      *(v484 + 1032) = 0;
      *(v484 + 1288) = 0;
      *(v484 + 1544) = 0;
      *(v484 + 1672) = 1;
      *(v484 + 2312) = 1;
      *(v484 + 2824) = 1;
      v487 = *(*(v484 + 8) + 344);
      LOBYTE(v1306) = *(v487 + 304);
      BYTE1(v1306) = isSplinedEnabled;
      WORD1(v1306) = v1271;
      md::SinglePassRoutePipelineStateManager::pipelineStateForFunctionConstants(&__src, *(v487 + 208), &v1306);
      v488 = __src;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v484 + 3088), __src.i64[0], __src.i64[1]);
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v484 + 3096), v488.i64[0], v488.i64[1]);
      BYTE3(v1306) = 1;
      md::SinglePassRoutePipelineStateManager::pipelineStateForFunctionConstants(buf, *(v487 + 208), &v1306);
      v489 = buf[0];
      __src = buf[0];
      if (v488.i64[1])
      {
        v1193 = buf[0];
        std::__shared_weak_count::__release_shared[abi:nn200100](v488.i64[1]);
        v489 = v1193;
      }

      v490 = v489.i64[1];
      v491 = *(v484 + 3104);
      buf[0] = v489;
      if (v489.i64[1])
      {
        atomic_fetch_add_explicit((v489.i64[1] + 8), 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v491, buf);
        std::__shared_weak_count::__release_shared[abi:nn200100](v490);
      }

      else
      {
        ggl::PipelineSetup::setState(v491, buf);
      }

      v510 = *(v484 + 3112);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3088) + 136) + 64));
      *buf[2].i64[1] = v510;
      ggl::BufferMemory::~BufferMemory(buf);
      v511 = *(*(v484 + 2968) + 208);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3088) + 136) + 64));
      v512 = v511;
      *(buf[2].i64[1] + 4) = v512;
      ggl::BufferMemory::~BufferMemory(buf);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, *(*(v484 + 8) + 328), 0);
      v513 = buf[2].i64[1];
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1309, *(*(*(v484 + 3088) + 136) + 48), 1);
      v514 = 0;
      v515 = *&v1310[24];
      do
      {
        *(v515 + v514) = *(v513 + v514);
        v514 += 4;
      }

      while (v514 != 64);
      ggl::BufferMemory::~BufferMemory(&v1309);
      v516 = buf[2].i64[1] + 64;
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1309, *(*(*(v484 + 3088) + 136) + 48), 1);
      v517 = 0;
      v518 = *&v1310[24] + 64;
      do
      {
        *(v518 + v517) = *(v516 + v517);
        v517 += 4;
      }

      while (v517 != 16);
      ggl::BufferMemory::~BufferMemory(&v1309);
      v519 = buf[2].i64[1];
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1309, *(*(*(v484 + 3096) + 136) + 48), 1);
      v520 = 0;
      v521 = *&v1310[24];
      do
      {
        *(v521 + v520) = *(v519 + v520);
        v520 += 4;
      }

      while (v520 != 64);
      ggl::BufferMemory::~BufferMemory(&v1309);
      v522 = buf[2].i64[1] + 64;
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1309, *(*(*(v484 + 3096) + 136) + 48), 1);
      v523 = 0;
      v524 = *&v1310[24] + 64;
      do
      {
        *(v524 + v523) = *(v522 + v523);
        v523 += 4;
      }

      while (v523 != 16);
      ggl::BufferMemory::~BufferMemory(&v1309);
      v525 = buf[2].i64[1];
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1309, *(*(*(v484 + 3104) + 136) + 48), 1);
      v526 = 0;
      v527 = *&v1310[24];
      do
      {
        *(v527 + v526) = *(v525 + v526);
        v526 += 4;
      }

      while (v526 != 64);
      ggl::BufferMemory::~BufferMemory(&v1309);
      v528 = buf[2].i64[1] + 64;
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1309, *(*(*(v484 + 3104) + 136) + 48), 1);
      v529 = 0;
      v530 = *&v1310[24] + 64;
      do
      {
        *(v530 + v529) = *(v528 + v529);
        v529 += 4;
      }

      while (v529 != 16);
      ggl::BufferMemory::~BufferMemory(&v1309);
      ggl::BufferMemory::~BufferMemory(buf);
      v531 = *(v484 + 3112);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3096) + 136) + 64));
      *buf[2].i64[1] = v531;
      ggl::BufferMemory::~BufferMemory(buf);
      v532 = *(*(v484 + 2968) + 208);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3096) + 136) + 64));
      v533 = v532;
      *(buf[2].i64[1] + 4) = v533;
      ggl::BufferMemory::~BufferMemory(buf);
      *(v484 + 1584) = *(v484 + 3088);
      *(v484 + 2224) = *(v484 + 3096);
      *(v484 + 2736) = *(v484 + 3104);
      operator new();
    }

    v502 = *(*(v484 + 2968) + 64);
    *&v1306 = v502;
    v503 = *(v484 + 3137);
    v504 = v1276[1];
    if ((v503 & 1) == 0)
    {
      if (v1276[1])
      {
        v504 = 1;
        v505 = 11;
        v506 = 9;
        v1194 = 7;
        v507 = 5;
        v508 = 3;
        v509 = 1;
        goto LABEL_635;
      }

      v504 = 0;
    }

    v509 = 0;
    v505 = 10;
    v506 = 8;
    v1194 = 6;
    v507 = 4;
    v508 = 2;
LABEL_635:
    v534 = (v504 ^ 1 | v503) & 1;
    *(v484 + 136) = v534;
    *(v484 + 392) = v534;
    *(v484 + 648) = v534;
    *(v484 + 904) = v534;
    *(v484 + 1160) = v534;
    *(v484 + 1416) = v534;
    *(v484 + 264) = v504 & (v503 ^ 1);
    *(v484 + 520) = v504 & (v503 ^ 1);
    *(v484 + 776) = v504 & (v503 ^ 1);
    *(v484 + 1032) = v504 & (v503 ^ 1);
    *(v484 + 1288) = v504 & (v503 ^ 1);
    *(v484 + 1544) = v504 & (v503 ^ 1);
    if ((v503 & 1) == 0)
    {
      *(v484 + 2056) = (v504 ^ 1) & 1;
      *(v484 + 2184) = v504 & 1;
    }

    v535 = v484 + 16;
    *(v484 + 2440) = 0;
    *(v484 + 1672) = 0;
    *(v484 + 2312) = 0;
    *(v484 + 2824) = 0;
    if (v1276[3] == 1)
    {
      v536 = 0;
      buf[0] = 0uLL;
      v1309 = 0uLL;
      __src = 0uLL;
      if ((v503 & 1) == 0)
      {
        v536 = *(v484 + 3048);
      }

      _setupRenderItems(&v1276[8], buf, &v1276[56], &v1309, &v1277, &__src, *(v484 + 2976), *(v484 + 2984), v1292, v1293, v1294, v1256, v502, v1295, v1296, *(v484 + 2992), v536, v535 + (v509 << 7), v535 + (v508 << 7), v535 + (v507 << 7), v503);
      buf[0] = 0uLL;
      v1309 = 0uLL;
      __src = 0uLL;
      _setupRenderItems(buf, &v1279, &v1309, &v1280 + 8, &__src, v1282, *(v484 + 3000), *(v484 + 3008), v1292, v1293, v1294, v1256, *&v1306, v1295, v1296, *(v484 + 3016), 0, v535 + (v1194 << 7), v535 + (v506 << 7), v535 + (v505 << 7), *(v484 + 3137));
LABEL_722:
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3080) + 136) + 32));
      v580 = *(v484 + 3080);
      v581 = +[VKDebugSettings sharedSettings];
      [v581 routeLineMaskWidth];
      v482 = v1220;
      v583 = v582;
      [v581 routeLineMaskAlphaFalloff];
      v585 = v584;
      v586 = *(v484 + 2968);
      gm::Box<double,3>::center<double>(v586 + 144);
      v588 = exp(v587 * 6.28318531 + -3.14159265);
      v589 = atan(v588);
      v590 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v589 * 114.591559 + -90.0);
      if (v1264)
      {
        v591 = *v1264;
        v585 = v1264[1];
      }

      else
      {
        v591 = v583;
      }

      v592 = *(v586 + 64);
      v593 = v590 * (v483 * v591 * v1257) / v1267;
      v594 = buf[2].i64[1];
      *(buf[2].i64[1] + 100) = v585;
      *v594 = v593;
      *(v594 + 32) = v592;
      *(v594 + 96) = 0;
      *(v594 + 92) = v1296;
      *(v484 + 1712) = v580;
      *(v484 + 1800) = 1;

      ggl::BufferMemory::~BufferMemory(buf);
      v595 = 0;
      v596 = *(v484 + 2968);
      v597 = (*(v596 + 216) + v1258) | (v1290 << 18);
      v598 = v1261;
      v599 = v1261 != 1;
      v600 = *(v596 + 192);
      if (v600 != 2)
      {
        v599 = 1;
      }

      v601 = BYTE9(v1253[0]);
      v602 = BYTE9(v1253[0]) + 2;
      v603 = v600 == 1 && v1261 == 1;
      v604 = 163840;
      v605 = BYTE9(v1253[0]) + 1;
      if (v599)
      {
        v604 = 0x8000;
        v606 = v597;
      }

      else
      {
        v606 = v597 | 0x20000;
      }

      v607 = v484 + 56;
      v466 = v1237;
      while (2)
      {
        switch(v595)
        {
          case 2:
          case 3:
          case 4:
          case 5:
            *v607 = v601;
            goto LABEL_737;
          case 6:
          case 7:
          case 10:
          case 11:
            *v607 = BYTE9(v1253[0]) + v603;
LABEL_737:
            v608 = v606;
            goto LABEL_755;
          case 8:
          case 9:
            *v607 = v601;
            v608 = v597 | v604;
            goto LABEL_755;
          case 12:
            v608 = v597 | 0x2000;
            if (*(v484 + 3137))
            {
              goto LABEL_755;
            }

            goto LABEL_752;
          case 13:
          case 15:
          case 16:
            *v607 = v601;
            v608 = v597;
            goto LABEL_755;
          case 14:
            *v607 = v601;
            v608 = v597 | 0xFFFFFFFF80000000;
            goto LABEL_755;
          case 17:
            v608 = v597 | 0x4000;
            if ((*(v484 + 3137) & 1) == 0)
            {
              goto LABEL_752;
            }

            goto LABEL_755;
          case 19:
          case 20:
            if (v599)
            {
              *v607 = v601;
            }

            else
            {
              *v607 = v602;
            }

            v608 = v597 | 0x40000000;
            goto LABEL_755;
          case 21:
LABEL_752:
            *v607 = v601;
            goto LABEL_753;
          default:
            *v607 = v601;
            v608 = v597 | 0x8000;
            if (v598 != 1)
            {
              goto LABEL_755;
            }

            if (v600 == 2)
            {
              *v607 = v602;
              v608 = v597 | 0x28000;
            }

            else
            {
              v608 = v597 | 0x8000;
              if (v600 == 1)
              {
                *v607 = v605;
LABEL_753:
                v608 = v597 | 0x8000;
              }
            }

LABEL_755:
            *(v607 + 8) = v608;
            ++v595;
            v607 += 128;
            if (v595 != 22)
            {
              continue;
            }

            md::RenderItemPool::reset((v484 + 2912));
            break;
        }

        break;
      }

LABEL_757:
      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1286);
      goto LABEL_758;
    }

    v537 = 0;
    v538 = *(v484 + 2984);
    v539 = *(v484 + 2992);
    obja = *(v484 + 3024);
    v1169 = *(v484 + 3032);
    if (v1276[5])
    {
      v540 = 0;
    }

    else
    {
      v540 = *(v484 + 2976);
    }

    buf[0] = 0uLL;
    v1309 = 0uLL;
    if ((v503 & 1) == 0)
    {
      v537 = *(v484 + 3048);
    }

    v1166 = v535 + (v508 << 7);
    v1179 = v535 + (v509 << 7);
    _setupRenderItems(&v1276[8], &v1276[40], &v1276[56], buf, &v1277, &v1309, v540, v538, v1292, v1293, v1294, v1256, v502, v1295, v1296, v539, v537, v1179, v1166, v535 + (v507 << 7), v503);
    v541 = *(v484 + 2968);
    v543 = *(v541 + 280);
    v542 = *(v541 + 288);
    if (v542)
    {
      atomic_fetch_add_explicit(&v542->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v543)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v542);
        goto LABEL_655;
      }

      v544 = v1259;
      std::__shared_weak_count::__release_shared[abi:nn200100](v542);
      if (!v544)
      {
LABEL_655:
        if (v1276[5] != 1)
        {
LABEL_698:
          *(v535 + (v1194 << 7) + 120) = 0;
          *(v535 + (v506 << 7) + 120) = 0;
          *(v535 + (v505 << 7) + 120) = 0;
          if (*(v484 + 3137) == 1)
          {
            if (v1276[5] == 1)
            {
              *(v484 + 1928) = 0;
            }

            else
            {
              md::RouteLineBatch::setupAlphaResetRenderItem(v1250, v484 + 1808, *(v484 + 3040), v1291, v1297);
            }
          }

          *(v484 + 2568) = 0;
          *(v484 + 2696) = 0;
          if (v1276[6] == 1)
          {
            v573 = *(v484 + 2968);
            v574 = v573[37];
            v575 = v573[38];
            __src.i64[0] = v574;
            __src.i64[1] = v575;
            if (v575)
            {
              atomic_fetch_add_explicit(&v575->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v576 = v573[40];
            *&v1323 = v573[39];
            *(&v1323 + 1) = v576;
            if (v576)
            {
              atomic_fetch_add_explicit(&v576->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v577 = v573[41];
            v578 = v573[42];
            v1320[0] = v577;
            v1320[1] = v578;
            if (v578)
            {
              atomic_fetch_add_explicit((v578 + 8), 1uLL, memory_order_relaxed);
            }

            v579 = v573[44];
            *&v1302 = v573[43];
            *(&v1302 + 1) = v579;
            if (v579)
            {
              atomic_fetch_add_explicit(&v579->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v574)
            {
              setupTrafficRenderItem(v1250, &__src, &v1323, v484 + 2448, v1292, v1296, v1295, *&v1306);
            }

            if (v577 && v1259)
            {
              setupTrafficRenderItem(v1250, v1320, &v1302, v484 + 2576, v1292, v1296, v1295, *&v1306);
            }

            if (v579)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v579);
            }

            if (v578)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v578);
            }

            if (v576)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v576);
            }

            if (v575)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v575);
            }
          }

          goto LABEL_722;
        }

        v545 = *(&v1251 + 1) * v1291;
        v546 = *(v484 + 3120);
        if (v546)
        {
          memset(buf, 0, 24);
          buf[1].i8[8] = v1288;
          v547 = v1286;
          v548 = v1287 - v1286;
          v1160 = v505;
          if (v1287 == v1286)
          {
            v550 = 0;
          }

          else
          {
            std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](buf, v548 >> 2);
            v549 = buf[0].i64[1];
            memmove(buf[0].i64[1], v547, v548);
            v550 = v549 + v548;
            buf[0].i64[1] = v549 + v548;
          }

          buf[2].f32[0] = v1289;
          if (*(v546 + 46) == (v545 + 0.5) && v1289 == *(v546 + 32) && v550 - buf[0].i64[0] == *(v546 + 8) - *v546)
          {
            v505 = v1160;
            if (v550 == buf[0].i64[0])
            {
              std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
              goto LABEL_677;
            }

            v551 = 0;
            v552 = (v550 - buf[0].i64[0]) >> 2;
            v553 = 1;
            do
            {
              v554 = vabds_f32(*(buf[0].i64[0] + 4 * v551), *(*v546 + 4 * v551));
              v551 = v553++;
            }

            while (v554 <= 0.00000011921 && v552 > v551);
            std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
            v483 = 0.5;
            if (v554 <= 0.00000011921)
            {
LABEL_677:
              v564 = *(v484 + 3120);
              LOWORD(v556) = *(v564 + 40);
              *&v1323 = (v1257 * v556) / *(&v1251 + 1);
              if (*(*(v484 + 2968) + 208) / v1262 >= *(v564 + 48))
              {
                __src.i64[0] = &v1323;
                __src.i64[1] = v484;
                v1331 = v1250;
                p_src = &v1306;
                v1333 = v1276;
                md::RouteLineBatch::layoutTwoPasses(md::RouteLayoutContext const&,md::RouteStyleContext const&)::$_0::operator()(&__src, obja, &v1276[24], &v1276[40]);
                *(v1179 + 32) = obja;
                v572 = fabsf(v1293);
                if (v572 <= (v572 * 0.000011921) || v572 < 1.1755e-38)
                {
                  *(v1166 + 120) = 0;
                }

                if (*(v484 + 2440) == 1)
                {
                  md::RouteLineBatch::layoutTwoPasses(md::RouteLayoutContext const&,md::RouteStyleContext const&)::$_0::operator()(&__src, v1169, &v1284, v1285);
                  *(v484 + 2352) = v1169;
                }
              }

              else
              {
                v565 = 24;
                v566 = v484;
                v567 = xmmword_1B33B0560;
                v568 = xmmword_1B33B0550;
                v569 = xmmword_1B33B0C10;
                v570 = xmmword_1B33B0C00;
                do
                {
                  if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v1231, v567)), *v567.i8), *v567.i8).u8[0])
                  {
                    v566[136] = 0;
                  }

                  if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v567)), *&v567), *&v567).i8[1])
                  {
                    v566[264] = 0;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v567, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v568))), *&v567).i8[2])
                  {
                    v566[392] = 0;
                    v566[520] = 0;
                  }

                  if (vuzp1_s8(*&v567, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v569)), *&v567)).i32[1])
                  {
                    v566[648] = 0;
                  }

                  if (vuzp1_s8(*&v567, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v569)), *&v567)).i8[5])
                  {
                    v566[776] = 0;
                  }

                  if (vuzp1_s8(*&v567, vuzp1_s16(*&v567, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v570)))).i8[6])
                  {
                    v566[904] = 0;
                    v566[1032] = 0;
                  }

                  v571 = vdupq_n_s64(8uLL);
                  v569 = vaddq_s64(v569, v571);
                  v568 = vaddq_s64(v568, v571);
                  v567 = vaddq_s64(v567, v571);
                  v570 = vaddq_s64(v570, v571);
                  v566 += 1024;
                  v565 -= 8;
                }

                while (v565);
                *(v484 + 2960) = 0;
              }

              goto LABEL_698;
            }
          }

          else
          {
            std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
            v505 = v1160;
          }
        }

        v557 = *(*(v484 + 8) + 344);
        *v1310 = 0;
        v1309 = 0uLL;
        v1310[8] = v1288;
        v558 = v1286;
        v559 = v1287 - v1286;
        if (v1287 != v1286)
        {
          std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](&v1309, v559 >> 2);
          v1159 = v506;
          v560 = v505;
          v561 = v1309.i64[1];
          memmove(v1309.i64[1], v558, v559);
          v562 = v561 + v559;
          v505 = v560;
          v506 = v1159;
          v1309.i64[1] = v562;
        }

        *&v1310[16] = v1289;
        md::DashTextureCache::textureForPattern(&__src, (v557 + 264), &v1309, 0, v545);
        v563 = *(v484 + 3128);
        *(v484 + 3120) = __src;
        if (v563)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v563);
        }

        std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1309);
        **(*(v484 + 3024) + 168) = *(*(v484 + 3120) + 64);
        **(*(v484 + 3032) + 168) = *(*(v484 + 3120) + 64);
        goto LABEL_677;
      }
    }

    else if (!v543 || !v1259)
    {
      goto LABEL_655;
    }

    if (v1276[4] == 1)
    {
      *(v484 + 2440) = 1;
      buf[0] = 0u;
      v1309 = 0u;
      __src = 0u;
      v1323 = 0u;
      _setupRenderItems(&v1284, v1285, buf, &v1309, &__src, &v1323, *(v484 + 3056), 0, v1298, 0.0, 0.0, v1256, *&v1306, v1295, v1296, 0, 0, v484 + 2320, 0, 0, *(v484 + 3137));
    }

    goto LABEL_655;
  }

LABEL_761:
  v609 = v467;
  if (v481 == v482)
  {
    v610 = 0;
  }

  else
  {
    v610 = 0;
    do
    {
      v611 = *v481++;
      v610 += *(v611 + 2960);
    }

    while (v481 != v482);
  }

  if (*(v467 + 352) != v610)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v612 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v612, OS_LOG_TYPE_INFO))
    {
      *v1276 = 67109120;
      *&v1276[4] = v610;
      _os_log_impl(&dword_1B2754000, v612, OS_LOG_TYPE_INFO, "RouteLine batchRendered = %d", v1276, 8u);
    }

    v466 = v1237;
  }

  *(v609 + 352) = v610;
  v613 = *(*v466 + 336);
  *(v613 + 56) = **(v613 + 160);
  md::LayoutContext::frameState(v1250[0]);
  if ((*(v614 + 632) & 1) == 0)
  {
    v634 = *(v613 + 8);
    v633 = *(v613 + 16);
    goto LABEL_811;
  }

  v615 = *(v1250[0] + 1);
  __pb = md::LayoutContext::get<md::CameraContext>(v615);
  v1221 = v613;
  if (*(__pb + 3784))
  {
    v616 = *(v613 + 72);
    if (v616)
    {
      v617 = 0;
      v618 = 0;
      v619 = *(gdc::Camera::cameraFrame(__pb) + 16);
      do
      {
        for (jj = 0; jj != 4; ++jj)
        {
          v621 = v617 | (4 * jj);
          geo::Frustum<double>::transformed(v1276, __pb + 984, v616 + 1696 + 56 * v621);
          v622 = v616 + 32 + 104 * v621;
          v623 = *(v622 + 56);
          v624 = *(v622 + 88);
          buf[1] = *(v622 + 72);
          buf[2] = v624;
          buf[0] = v623;
          v1309 = 0uLL;
          *v1310 = v619;
          gm::Box<double,3>::operator+=(buf[0].i64, &v1309);
          for (kk = 0; kk != 192; kk += 32)
          {
            v626 = 0;
            v627 = *&v1276[kk + 16];
            __src = *&v1276[kk];
            v1331 = v627;
            do
            {
              v628 = (buf + v626 * 8);
              if (*&__src.i64[v626] >= 0.0)
              {
                v628 = &buf[1].i64[v626 + 1];
              }

              v1309.i64[v626++] = *v628;
            }

            while (v626 != 3);
            v629 = 0;
            v630 = 0.0;
            do
            {
              v630 = v630 + *&v1276[kk + v629 * 8] * *&v1309.i64[v629];
              ++v629;
            }

            while (v629 != 3);
            v631 = *&v1276[kk + 24] + v630;
            if (v631 < 0.0)
            {
              break;
            }
          }

          v632 = 1 << (4 * jj + v617);
          if (v631 < 0.0)
          {
            v632 = 0;
          }

          v618 |= v632;
        }

        ++v617;
      }

      while (v617 != 4);
      goto LABEL_801;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1276, *(v613 + 120), 0);
    v636 = *&v1276[40];
    v637 = 0.0;
  }

  else
  {
    v635 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v615) == 1 && *(v613 + 112) == 1)
    {
      v635 = *(gdc::Camera::cameraFrame(__pb) + 16) * 0.0000000249532021 * (1 << *(v613 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1276, *(v613 + 120), 0);
    v636 = *&v1276[40];
    v637 = v635;
  }

  v618 = ggl::CullingGrid::intersectedCellsForView(v636, v637);
  ggl::BufferMemory::~BufferMemory(v1276);
LABEL_801:
  v634 = *(v1221 + 8);
  v633 = *(v1221 + 16);
  if (v634 == v633)
  {
    v466 = v1237;
  }

  else
  {
    v638 = *(v1221 + 8);
    v466 = v1237;
    do
    {
      v639 = *v638;
      v640 = *(*v638 + 248);
      v641 = *(*v638 + 256);
      if (v640 == v641)
      {
        v642 = 0;
      }

      else
      {
        v642 = 0;
        do
        {
          v643 = *v640++;
          v644 = (*(v643 + 96) & v618) != 0;
          v642 |= v644;
          *(v643 + 48) = v644;
        }

        while (v640 != v641);
      }

      *(v639 + 136) = v642 & 1;
      *(v639 + 272) = v642 & 1;
      ++v638;
    }

    while (v638 != v633);
  }

LABEL_811:
  __asm { FMOV            V0.4S, #1.0 }

  for (mm = _Q0; v634 != v633; ++v634)
  {
    v649 = *v634;
    if (*(*v634 + 272) == 1)
    {
      v650 = *(*(*(v649 + 8) + 160) + 248);
      if (v650)
      {
        v651 = *(v650 + 16);
      }

      else
      {
        v651 = 1.0;
      }

      md::RouteStyleContext::RouteStyleContext(v1276, v1250, *(v649 + 280), *(v649 + 296), v651);
      if (v1276[2])
      {
        *(v649 + 272) = 1;
        v652 = *(v649 + 280);
        v653 = *(v649 + 288);
        v654 = *(v652 + 64);
        *(v649 + 136) = 1;
        v655 = v1256;
        v656 = *(v652 + 208);
        v657 = v656 / (v1257 * v1267);
        v658 = (v1257 * v657) / (v656 / ((*(v652 + 56) * v1299) + ((v1257 * v1267) * v1291)));
        v659 = v1292;
        v660 = *(v649 + 296);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v653 + 136) + 32));
        v661 = 0;
        v662 = buf[2].i64[1];
        *(buf[2].i64[1] + 80) = v655;
        v662->f32[0] = v659;
        v662[4] = vsubq_f32(mm, *&v1276[8]);
        do
        {
          v662[3].i32[v661] = *&v1276[v661 * 4 + 40];
          ++v661;
        }

        while (v661 != 4);
        v662[2].i32[0] = v654;
        v662[6].f32[2] = v658;
        ggl::BufferMemory::~BufferMemory(buf);
        if (v653 && (v660 & 1) == 0)
        {
          v663 = *&v1276[20];
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v653 + 136) + 32));
          v664 = buf[2].i64[1];
          *(buf[2].i64[1] + 84) = v663 * 0.9;
          *(v664 + 88) = 1065353216;
          ggl::BufferMemory::~BufferMemory(buf);
        }

        *(v649 + 48) = v653;
        md::RenderItemPool::reset((v649 + 224));
        v466 = v1237;
      }

      else
      {
        *(v649 + 136) = 0;
        *(v649 + 272) = 0;
      }

      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1286);
    }
  }

  v1180 = *(*(a1 + 40) + 24);
  v665 = *(v1180 + 8);
  v666 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 98));
  if (v666)
  {
    v667 = *(*(v666 + 16) + 8 * *(a1 + 99));
  }

  else
  {
    v667 = 0;
  }

  v668 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 104));
  if (v668)
  {
    v669 = *(*(v668 + 16) + 8 * *(a1 + 105));
  }

  else
  {
    v669 = 0;
  }

  v670 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 96));
  if (v670)
  {
    v671 = *(*(v670 + 16) + 8 * *(a1 + 97));
  }

  else
  {
    v671 = 0;
  }

  v672 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 102));
  if (v672)
  {
    v673 = *(*(v672 + 16) + 8 * *(a1 + 103));
  }

  else
  {
    v673 = 0;
  }

  v674 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 100));
  if (v674)
  {
    v675 = *(*(v674 + 16) + 8 * *(a1 + 101));
  }

  else
  {
    v675 = 0;
  }

  v676 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 106));
  if (v676)
  {
    __pc = *(*(v676 + 16) + 8 * *(a1 + 107));
  }

  else
  {
    __pc = 0;
  }

  v677 = *(*v466 + 320);
  v678 = *(v677 + 8);
  v679 = *(v677 + 16);
  if (v678 != v679)
  {
    do
    {
      v680 = *v678;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = v667;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v680, 0x300u, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
      ++v678;
    }

    while (v678 != v679);
    v466 = v1237;
    v677 = *(*v1237 + 320);
  }

  v681 = *(v677 + 8);
  v682 = *(v677 + 16);
  if (v681 != v682)
  {
    do
    {
      v683 = *v681;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = v669;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v683, 0xCu, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
      ++v681;
    }

    while (v681 != v682);
    v677 = *(*v466 + 320);
  }

  v684 = *(v677 + 8);
  v685 = *(v677 + 16);
  if (v684 != v685)
  {
    do
    {
      v686 = *v684;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = v671;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v686, 0xC00u, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
      ++v684;
    }

    while (v684 != v685);
    v677 = *(*v466 + 320);
  }

  v687 = *(v677 + 8);
  v688 = *(v677 + 16);
  if (v687 != v688)
  {
    do
    {
      v689 = *v687;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = v673;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v689, 0x30u, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
      ++v687;
    }

    while (v687 != v688);
    v677 = *(*v466 + 320);
  }

  v690 = *(v677 + 8);
  for (nn = *(v677 + 16); v690 != nn; ++v690)
  {
    v692 = *v690;
    *v1276 = &unk_1F29F1AD0;
    *&v1276[8] = v675;
    *&v1276[24] = v1276;
    md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v692, 0xC0u, v1276);
    std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
  }

  if (v1199)
  {
    v693 = 2494467;
  }

  else
  {
    v693 = 262147;
  }

  v694 = v693 | 0x180000;
  if (v1176)
  {
    v694 = v693;
  }

  if (v1173)
  {
    v695 = v694;
  }

  else
  {
    v695 = v693;
  }

  if (*(a1 + 113))
  {
    v696 = 0x4000;
  }

  else
  {
    v696 = 98304;
  }

  if (*(a1 + 113) & v1164)
  {
    v697 = md::FrameGraph::renderQueueForPass(*(v1180 + 8), *(a1 + 108));
    if (v697)
    {
      v698 = *(*(v697 + 16) + 8 * *(a1 + 109));
    }

    else
    {
      v698 = 0;
    }

    v699 = *(*v466 + 320);
    v700 = *(v699 + 8);
    for (i1 = *(v699 + 16); v700 != i1; ++v700)
    {
      v702 = *v700;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = v698;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v702, 0x4000u, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
    }

    v696 = 0x4000;
  }

  v703 = *v466;
  v704 = *(*v466 + 320);
  v705 = *(v704 + 8);
  v706 = *(v704 + 16);
  if (v705 != v706)
  {
    do
    {
      v707 = *v705;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = __pc;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v707, v695 | v696, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
      ++v705;
    }

    while (v705 != v706);
    v703 = *v466;
  }

  v708 = *(*&v703 + 336);
  v709 = *(v708 + 8);
  v710 = *(v708 + 16);
  if (v709 != v710)
  {
    objb = *(v708 + 16);
    do
    {
      v711 = *v709;
      buf[0].i64[0] = &unk_1F29F1B18;
      buf[0].i64[1] = __pc;
      buf[1].i64[1] = buf;
      if (*(v711 + 272) == 1)
      {
        v1309 = 0uLL;
        *v1310 = 0;
        std::vector<unsigned int>::reserve(&v1309, 5uLL);
        v1195 = v709;
        if (*(v711 + 136))
        {
          *v1276 = 0;
          std::vector<unsigned int>::push_back[abi:nn200100](&v1309, v1276);
          v713 = *(*(v711 + 8) + 56);
          *(v711 + 40) = v713;
          _ZF = *(v713 + 58) == 1;
          v714 = 16;
          if (_ZF)
          {
            v714 = 32;
          }
        }

        else
        {
          v714 = 16;
        }

        v1208 = v714;
        v715 = v1309.i64[0];
        if (v1309.i64[0] != v1309.i64[1])
        {
          v717 = *(v711 + 248);
          v716 = *(v711 + 256);
          if (v717 == v716)
          {
            v718 = 0;
          }

          else
          {
            v718 = 0;
            v1202 = *(v711 + 256);
            do
            {
              v719 = *v717;
              if (*(*v717 + 48) == 1)
              {
                if (*(v719 + 88) != v718)
                {
                  v1222 = v718;
                  if (v718)
                  {
                    v720 = ggl::Batcher::commit((v711 + 144), 0xC8u, v712);
                    if (v720[1] != *v720)
                    {
                      v721 = v1309.i64[1];
                      v722 = v1309.i64[0];
                      if (v1309.i64[0] != v1309.i64[1])
                      {
                        v723 = v720;
                        do
                        {
                          v724 = *v722;
                          *v1276 = &off_1F2A5D8B8;
                          v725 = v711 + 16 + (v724 << 7);
                          v726 = *(v725 + 8);
                          v727 = *(v725 + 24);
                          *&v1276[40] = *(v725 + 40);
                          *&v1276[24] = v727;
                          *&v1276[8] = v726;
                          v728 = *(v725 + 56);
                          v729 = *(v725 + 72);
                          v730 = *(v725 + 88);
                          v1278 = *(v725 + 104);
                          v1277 = v730;
                          *&v1276[72] = v729;
                          *&v1276[56] = v728;
                          v731 = *(v711 + 232);
                          v732 = v731[1];
                          if (v732 == *(v711 + 240))
                          {
                            v731 = *v731;
                            if (!v731)
                            {
                              v731 = malloc_type_malloc(120 * v732 + 16, 0x1020040EDED9539uLL);
                              *v731 = 0;
                              v731[1] = 0;
                              **(v711 + 232) = v731;
                            }

                            *(v711 + 232) = v731;
                            v732 = v731[1];
                          }

                          v733 = &v731[15 * v732];
                          v731[1] = v732 + 1;
                          v733[2] = &off_1F2A5D8B8;
                          v734 = *&v1276[8];
                          v735 = *&v1276[24];
                          *(v733 + 7) = *&v1276[40];
                          *(v733 + 5) = v735;
                          *(v733 + 3) = v734;
                          v736 = *&v1276[56];
                          v737 = *&v1276[72];
                          v738 = v1277;
                          *(v733 + 15) = v1278;
                          *(v733 + 13) = v738;
                          *(v733 + 11) = v737;
                          *(v733 + 9) = v736;
                          ggl::RenderItem::~RenderItem(v1276);
                          v733[10] = v1222;
                          v739 = *v723;
                          v733[13] = *v723;
                          v733[14] = (v723[1] - v739) >> 4;
                          std::function<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v724, (v733 + 2));
                          ++v722;
                          v466 = v1237;
                        }

                        while (v722 != v721);
                      }
                    }
                  }

                  v719 = *v717;
                  v718 = *(*v717 + 88);
                  v716 = v1202;
                }

                ggl::Batcher::addRange(v711 + 144, (v719 + v1208));
              }

              ++v717;
            }

            while (v717 != v716);
            v715 = v1309.i64[0];
          }

          v740 = ggl::Batcher::commit((v711 + 144), 0xC8u, v712);
          if (v740[1] != *v740)
          {
            v741 = v1309.i64[1];
            if (v715 != v1309.i64[1])
            {
              v742 = v740;
              do
              {
                v743 = *v715;
                *v1276 = &off_1F2A5D8B8;
                v744 = v711 + 16 + (v743 << 7);
                v745 = *(v744 + 8);
                v746 = *(v744 + 24);
                *&v1276[40] = *(v744 + 40);
                *&v1276[24] = v746;
                *&v1276[8] = v745;
                v747 = *(v744 + 56);
                v748 = *(v744 + 72);
                v749 = *(v744 + 88);
                v1278 = *(v744 + 104);
                v1277 = v749;
                *&v1276[72] = v748;
                *&v1276[56] = v747;
                v750 = *(v711 + 232);
                v751 = v750[1];
                if (v751 == *(v711 + 240))
                {
                  v750 = *v750;
                  if (!v750)
                  {
                    v750 = malloc_type_malloc(120 * v751 + 16, 0x1020040EDED9539uLL);
                    *v750 = 0;
                    v750[1] = 0;
                    **(v711 + 232) = v750;
                  }

                  *(v711 + 232) = v750;
                  v751 = v750[1];
                }

                v752 = &v750[15 * v751];
                v750[1] = v751 + 1;
                v752[2] = &off_1F2A5D8B8;
                v753 = *&v1276[8];
                v754 = *&v1276[24];
                *(v752 + 7) = *&v1276[40];
                *(v752 + 5) = v754;
                *(v752 + 3) = v753;
                v755 = *&v1276[56];
                v756 = *&v1276[72];
                v757 = v1277;
                *(v752 + 15) = v1278;
                *(v752 + 13) = v757;
                *(v752 + 11) = v756;
                *(v752 + 9) = v755;
                ggl::RenderItem::~RenderItem(v1276);
                v752[10] = v718;
                v758 = *v742;
                v752[13] = *v742;
                v752[14] = (v742[1] - v758) >> 4;
                std::function<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v743, (v752 + 2));
                ++v715;
              }

              while (v715 != v741);
              v715 = v1309.i64[0];
              v466 = v1237;
            }
          }
        }

        if (v715)
        {
          v1309.i64[1] = v715;
          operator delete(v715);
        }

        v710 = objb;
        v709 = v1195;
      }

      std::__function::__value_func<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
      ++v709;
    }

    while (v709 != v710);
  }

  if (v1172)
  {
    v759 = md::FrameGraph::renderQueueForPass(*(v1180 + 8), *(a1 + 110));
    if (v759)
    {
      v760 = *(*(v759 + 16) + 8 * *(a1 + 111));
    }

    else
    {
      v760 = 0;
    }

    *(v760 + 32) = *(*(a1 + 56) + 8);
    v761 = *(*v466 + 320);
    v762 = *(v761 + 8);
    for (i2 = *(v761 + 16); v762 != i2; ++v762)
    {
      v764 = *v762;
      *v1276 = &unk_1F29F1AD0;
      *&v1276[8] = v760;
      *&v1276[24] = v1276;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v764, 0x2000u, v1276);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1276);
    }

    ggl::CommandBuffer::clearMPSItems(v760);
    v765 = +[VKDebugSettings sharedSettings];
    [v765 daVinciRouteLineMaskBlurSigma];

    operator new();
  }

  if (v1173 & v1176)
  {
    v766 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v1320, *v766, (*v466 + 536));
    v767 = v1320[0];
    v768 = v1320[1];
    if (v1320[1])
    {
      atomic_fetch_add_explicit(v1320[1] + 1, 1uLL, memory_order_relaxed);
    }

    md::TrafficMeshStyle::TrafficMeshStyle(&v1302, v767, v768, 0);
    if (v768)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v768);
    }

    v769 = *v466;
    if (!*(*v466 + 272) || !v769[33] || (v769[75] == v1302 ? (v770 = v769[76] == *(&v1302 + 1)) : (v770 = 0), !v770))
    {
      *v1276 = 0;
      *&v1276[8] = v1276;
      *&v1276[16] = 0x5812000000;
      *&v1276[24] = __Block_byref_object_copy__17;
      *&v1276[32] = __Block_byref_object_dispose__18;
      *&v1276[40] = "";
      memset(&v1276[48], 0, 32);
      *&v1276[80] = 1065353216;
      buf[0].i64[0] = 0;
      buf[0].i64[1] = buf;
      buf[1].i64[0] = 0x5812000000;
      buf[1].i64[1] = __Block_byref_object_copy__20;
      buf[2].i64[0] = __Block_byref_object_dispose__21;
      buf[2].i64[1] = "";
      memset(&buf[3], 0, 32);
      LODWORD(v1315) = 1065353216;
      v771 = v769[20];
      v1309.i64[0] = MEMORY[0x1E69E9820];
      v1309.i64[1] = 3321888768;
      *v1310 = ___ZN2md16RouteRenderLayer19layoutLegacyTrafficERKNS_13LayoutContextERKNS_18RouteLayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEEPN3ggl13CommandBufferE_block_invoke;
      *&v1310[8] = &unk_1F29F1858;
      *&v1310[16] = v1276;
      *&v1310[24] = buf;
      *&v1310[32] = v1320[0];
      *&v1310[40] = v1320[1];
      if (v1320[1])
      {
        atomic_fetch_add_explicit(v1320[1] + 1, 1uLL, memory_order_relaxed);
      }

      v1311 = v1302;
      [v771 forEachSection:&v1309];
      v772 = *(a2 + 744);
      __src.i64[0] = MEMORY[0x1E69E9820];
      __src.i64[1] = 3221225472;
      v1331 = ___ZN2md16RouteRenderLayer19layoutLegacyTrafficERKNS_13LayoutContextERKNS_18RouteLayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEEPN3ggl13CommandBufferE_block_invoke_23;
      p_src = &unk_1E7B33030;
      v1335 = v466;
      v1333 = v1276;
      v1334 = buf;
      v1325 = 0;
      *&v1323 = &unk_1F2A59B50;
      *(&v1323 + 1) = MEMORY[0x1B8C62DA0](&__src);
      v1325 = &v1323;
      v1307 = 0;
      v1306 = 0;
      ggl::Loader::performWithAccessor(*(v772 + 32));
      if (v1307)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1307);
      }

      std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v1323);
      v466 = v1237;
      *(*v1237 + 600) = v1302;
      if (*&v1310[40])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v1310[40]);
      }

      _Block_object_dispose(buf, 8);
      std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&buf[3]);
      _Block_object_dispose(v1276, 8);
      std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&v1276[48]);
    }

    md::RibbonLayoutContext::RibbonLayoutContext(v1276, a2);
    v1279 = 0;
    *(&v1278 + 1) = 0;
    memset_pattern16(&v1280, &unk_1B33B2570, 0x10uLL);
    v1283 = 0;
    *&v1282[7] = 0;
    v1276[56] = 1;
    *v1282 = 0;
    v1281 = v1258 | 0x40000000;
    v1276[57] = *(*v466 + 512);
    v1282[8] = v1259;
    v773 = v1320[0];
    v774 = v1320[1];
    if (v1320[1])
    {
      atomic_fetch_add_explicit(v1320[1] + 1, 1uLL, memory_order_relaxed);
      v775 = v1279;
      *(&v1278 + 1) = v773;
      v1279 = v774;
      if (v775)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v775);
      }
    }

    else
    {
      *(&v1278 + 1) = v1320[0];
      v1279 = 0;
    }

    v1280 = v1302;
    v1282[9] = 0;
    *v1282 = 0;
    v776 = *v466;
    v777 = *(*v466 + 504);
    if (v777)
    {
      v778 = *(v777 + 256);
      v779 = *(v777 + 264);
      v780 = a1;
      if (v779)
      {
        atomic_fetch_add_explicit(&v779->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v778, v779);
      if (v779)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v779);
      }

      md::RouteLineSection::halfWidthAtZoom(buf, *&v1276[8]);
      v782 = *(*v466 + 168) * v781;
      *v1282 = v782;
      if (buf[2].u8[0] == 1)
      {
        (*(*buf[0].i64[0] + 56))(buf[0].i64[0]);
      }

      if (buf[1].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[1].i64[1]);
      }

      if (buf[0].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[0].i64[1]);
      }

      v776 = *v466;
    }

    else
    {
      v780 = a1;
    }

    v783 = v776[34];
    v784 = v783[20];
    v785 = *(v780 + 80);
    if (!v784 || v784 != v785)
    {
      md::PilledTrafficLayer::setSharedResources(v783, v785);
      v776 = *v466;
      v785 = *(v780 + 80);
    }

    v786 = v776[33];
    v787 = v786[21];
    if (!v787 || v787 != v785)
    {
      md::SolidTrafficLayer::setSharedResources(v786, v785);
      v776 = *v466;
    }

    md::PilledTrafficLayer::layout(v776[34], v1276);
    v788 = *(*v466 + 272);
    buf[0].i64[0] = &unk_1F2A04EC8;
    buf[0].i64[1] = __pc;
    buf[1].i64[1] = buf;
    md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v788 + 8), *(v788 + 16), buf);
    std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
    md::SolidTrafficLayer::layout(*(*v466 + 264), v1276);
    v789 = *(*v466 + 264);
    buf[0].i64[0] = &unk_1F2A04F10;
    buf[0].i64[1] = __pc;
    buf[1].i64[1] = buf;
    md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v789 + 8), *(v789 + 16), buf);
    std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
    if (v1279)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1279);
    }

    if (v1320[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1320[1]);
    }
  }

  if (v1185)
  {
    v790 = *v466;
    if (*(*v466 + 832) < 1.0)
    {
      v791 = v1258;
      v792 = v790[87];
      if (v792)
      {
        if ([v792 state] == 3 || objc_msgSend(v790[87], "state") == 4)
        {
          goto LABEL_1001;
        }

        v790 = *v466;
      }

      v793 = v790[80];
      if (v793 && v790[81])
      {
        if (*(v790[40] + 16) != *(v790[40] + 8))
        {
          v794 = 0;
          v795 = (v790 + 1);
          v796 = v1161;
          do
          {
            v797 = 0;
            v798 = v790 + 88;
            do
            {
              v799 = 0;
              v800 = 0.0;
              v801 = v795;
              do
              {
                v802 = *v801;
                v801 += 4;
                v800 = v800 + *&v798[v799++] * v802;
              }

              while (v799 != 4);
              *&v1276[32 * v797++ + 8 * v794] = v800;
              v798 += 4;
            }

            while (v797 != 4);
            ++v794;
            ++v795;
          }

          while (v794 != 4);
          for (i3 = 0; i3 != 4; ++i3)
          {
            v804 = 0;
            v805 = v1276;
            do
            {
              v806 = 0;
              v807 = 0.0;
              v808 = v796;
              do
              {
                v809 = *v808;
                v808 += 4;
                v807 = v807 + *&v805[v806] * v809;
                v806 += 8;
              }

              while (v806 != 32);
              *&buf[2 * v804++].i64[i3] = v807;
              v805 += 32;
            }

            while (v804 != 4);
            ++v796;
          }

          v810 = 0;
          v811 = buf;
          do
          {
            v813 = *v811;
            v812 = v811[1];
            v811 += 2;
            *(&v1309 + v810) = vcvt_hight_f32_f64(vcvt_f32_f64(v813), v812);
            v810 += 16;
          }

          while (v810 != 64);
          ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, **(v793 + 136), 1);
          v814 = buf[2].i64[1];
          *buf[2].i64[1] = v1309;
          v814[1] = *v1310;
          v814[2] = *&v1310[16];
          v814[3] = *&v1310[32];
          ggl::BufferMemory::~BufferMemory(buf);
          ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, **(*(*v466 + 640) + 136), 1);
          *(buf[2].i64[1] + 64) = v1177;
          ggl::BufferMemory::~BufferMemory(buf);
          v790 = *v466;
          v793 = *(*v466 + 640);
        }

        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v793 + 136), *(v793 + 232), v790[29], v790[30]);
        md::RouteLineDrawAnimation::updateStyle((*v466 + 632), *(*v466 + 320));
        v816 = v791 + 1;
        v817 = *(*v466 + 648);
        *(v817 + 48) = v816;
        v819 = a5[10];
        v818 = a5[11];
        if (v819 >= v818)
        {
          v822 = a5[9];
          v823 = (v819 - v822) >> 3;
          if ((v823 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v824 = v818 - v822;
          v825 = v824 >> 2;
          if (v824 >> 2 <= (v823 + 1))
          {
            v825 = v823 + 1;
          }

          if (v824 >= 0x7FFFFFFFFFFFFFF8)
          {
            v826 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v826 = v825;
          }

          *&v1276[32] = a5 + 12;
          if (v826)
          {
            v827 = ggl::zone_mallocator::instance(v815);
            v828 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v827, v826);
          }

          else
          {
            v828 = 0;
          }

          v830 = &v828[8 * v826];
          v829 = &v828[8 * v823];
          *v829 = v817;
          v820 = v829 + 8;
          v821 = a5;
          v831 = a5[9];
          v832 = a5[10] - v831;
          v833 = &v829[-v832];
          memcpy(&v829[-v832], v831, v832);
          v834 = a5[9];
          a5[9] = v833;
          a5[10] = v820;
          v835 = a5[11];
          a5[11] = v830;
          *&v1276[16] = v834;
          *&v1276[24] = v835;
          *&v1276[8] = v834;
          *v1276 = v834;
          std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v1276);
        }

        else
        {
          *v819 = v817;
          v820 = v819 + 1;
          v821 = a5;
        }

        v821[10] = v820;
      }
    }
  }

LABEL_1001:
  v836 = v466[1];
  v1238[0] = *v466;
  v1238[1] = v836;
  if (v836)
  {
    atomic_fetch_add_explicit(&v836->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::RouteRenderLayer::layoutArrowsAndManeuverPoints(a1, a2, v1238, v1170, __pc, v1177);
  if (v836)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v836);
  }

  v837 = *(*v466 + 328);
  *(v837 + 56) = **(v837 + 160);
  md::LayoutContext::frameState(v1250[0]);
  if ((*(v838 + 632) & 1) == 0)
  {
    v857 = *(v837 + 8);
    v858 = *(v837 + 16);
    goto LABEL_1039;
  }

  v839 = *(v1250[0] + 1);
  v1223 = md::LayoutContext::get<md::CameraContext>(v839);
  if (*(v1223 + 3784))
  {
    v840 = *(v837 + 72);
    if (v840)
    {
      v841 = 0;
      v842 = 0;
      v843 = *(gdc::Camera::cameraFrame(v1223) + 16);
      do
      {
        for (i4 = 0; i4 != 4; ++i4)
        {
          v845 = v841 | (4 * i4);
          geo::Frustum<double>::transformed(v1276, v1223 + 984, v840 + 1696 + 56 * v845);
          v846 = v840 + 32 + 104 * v845;
          v847 = *(v846 + 56);
          v848 = *(v846 + 88);
          buf[1] = *(v846 + 72);
          buf[2] = v848;
          buf[0] = v847;
          v1309 = 0uLL;
          *v1310 = v843;
          gm::Box<double,3>::operator+=(buf[0].i64, &v1309);
          for (i5 = 0; i5 != 192; i5 += 32)
          {
            v850 = 0;
            v851 = *&v1276[i5 + 16];
            __src = *&v1276[i5];
            v1331 = v851;
            do
            {
              v852 = (buf + v850 * 8);
              if (*&__src.i64[v850] >= 0.0)
              {
                v852 = &buf[1].i64[v850 + 1];
              }

              v1309.i64[v850++] = *v852;
            }

            while (v850 != 3);
            v853 = 0;
            v854 = 0.0;
            do
            {
              v854 = v854 + *&v1276[i5 + v853 * 8] * *&v1309.i64[v853];
              ++v853;
            }

            while (v853 != 3);
            v855 = *&v1276[i5 + 24] + v854;
            if (v855 < 0.0)
            {
              break;
            }
          }

          v856 = 1 << (4 * i4 + v841);
          if (v855 < 0.0)
          {
            v856 = 0;
          }

          v842 |= v856;
        }

        ++v841;
      }

      while (v841 != 4);
      goto LABEL_1031;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1276, *(v837 + 120), 0);
    v860 = *&v1276[40];
    v861 = 0.0;
  }

  else
  {
    v859 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v839) == 1 && *(v837 + 112) == 1)
    {
      v859 = *(gdc::Camera::cameraFrame(v1223) + 16) * 0.0000000249532021 * (1 << *(v837 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1276, *(v837 + 120), 0);
    v860 = *&v1276[40];
    v861 = v859;
  }

  v842 = ggl::CullingGrid::intersectedCellsForView(v860, v861);
  ggl::BufferMemory::~BufferMemory(v1276);
LABEL_1031:
  v857 = *(v837 + 8);
  v858 = *(v837 + 16);
  if (v857 != v858)
  {
    v862 = *(v837 + 8);
    do
    {
      v863 = *v862;
      v864 = *(*v862 + 248);
      v865 = *(*v862 + 256);
      if (v864 == v865)
      {
        v866 = 0;
      }

      else
      {
        v866 = 0;
        do
        {
          v867 = *v864++;
          v868 = (*(v867 + 96) & v842) != 0;
          v866 |= v868;
          *(v867 + 48) = v868;
        }

        while (v864 != v865);
      }

      *(v863 + 136) = v866 & 1;
      *(v863 + 272) = v866 & 1;
      ++v862;
    }

    while (v862 != v858);
  }

LABEL_1039:
  if (v857 != v858)
  {
    while (1)
    {
      v869 = *v857;
      if (*(*v857 + 272) == 1)
      {
        break;
      }

LABEL_1122:
      if (++v857 == v858)
      {
        goto LABEL_1123;
      }
    }

    v870 = *(v869 + 280);
    v871 = *(v870 + 248);
    v872 = *(v870 + 256);
    if (v872)
    {
      atomic_fetch_add_explicit(&v872->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v1320, v871, v872);
    if (v872)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v872);
    }

    if ((v1321 & 1) == 0)
    {
      if (GEOGetVectorKitRouteLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
      }

      v887 = GEOGetVectorKitRouteLog_log;
      if (os_log_type_enabled(v887, OS_LOG_TYPE_INFO))
      {
        *v1276 = 0;
        _os_log_impl(&dword_1B2754000, v887, OS_LOG_TYPE_INFO, "***RouteStyledOverlayBatch failed to layout", v1276, 2u);
      }

      *(v869 + 136) = 0;
      *(v869 + 272) = 0;
      goto LABEL_1116;
    }

    v873 = *(v869 + 280);
    v874 = *(v873 + 56);
    v875 = *&v1250[1];
    v876 = *(v873 + 64);
    v877 = *(v869 + 320);
    v878 = *(v869 + 324);
    md::RouteStyledOverlayBatch::StyleProperties::StyleProperties(v1276, (v869 + 288), *&v1250[1]);
    md::RouteStyledOverlayBatch::StyleProperties::StyleProperties(buf, (v869 + 304), v875);
    v1309 = 0uLL;
    *v1310 = 1092616192;
    memset(&v1310[4], 0, 32);
    std::string::basic_string[abi:nn200100]<0>(&v1310[40], "");
    std::string::basic_string[abi:nn200100]<0>(&v1312, "");
    v879 = fminf(fminf(fmaxf((v878 - (v876 + (v874 * 20.0))) / (v874 * 20.0), 0.0), 1.0), fminf(fmaxf(((v876 + (v874 * 20.0)) - v877) / (v874 * 20.0), 0.0), 1.0));
    v1309 = vmlaq_n_f32(*v1276, vsubq_f32(buf[0], *v1276), v879);
    *v1310 = vmlaq_n_f32(*&v1276[16], vsubq_f32(buf[1], *&v1276[16]), v879);
    *&v1310[16] = vmlaq_n_f32(*&v1276[32], vsubq_f32(buf[2], *&v1276[32]), v879);
    *&v1310[32] = *&v1276[48] + ((buf[3].f32[0] - *&v1276[48]) * v879);
    v1313 = *&v1278 + ((*&v1318 - *&v1278) * v879);
    if (v1276[79] >= 0)
    {
      v880 = v1276[79];
    }

    else
    {
      v880 = *&v1276[64];
    }

    v881 = buf[4].u8[15];
    if (buf[4].i8[15] < 0)
    {
      v881 = buf[4].i64[0];
    }

    if (v880)
    {
      v882 = &v1276[56];
      if (v881)
      {
        goto LABEL_1053;
      }
    }

    else
    {
      v882 = &buf[3].u32[2];
      if (!v881)
      {
LABEL_1053:
        if (v879 > 0.5)
        {
          v882 = &buf[3].u32[2];
        }

        else
        {
          v882 = &v1276[56];
        }
      }
    }

    v1224 = v879;
    std::string::operator=(&v1310[40], v882);
    if (v1277.i8[15] >= 0)
    {
      v883 = v1277.u8[15];
    }

    else
    {
      v883 = v1277.i64[0];
    }

    v884 = HIBYTE(v1317);
    if (v1317 < 0.0)
    {
      v884 = v1316;
    }

    if (v883)
    {
      v885 = &v1276[80];
      v886 = v1224;
      if (v884)
      {
        goto LABEL_1063;
      }
    }

    else
    {
      v885 = &v1315;
      v886 = v1224;
      if (!v884)
      {
LABEL_1063:
        if (v886 > 0.5)
        {
          v885 = &v1315;
        }

        else
        {
          v885 = &v1276[80];
        }
      }
    }

    std::string::operator=(&v1312, v885);
    if (v1309.f32[3] == 0.0)
    {
      *(v869 + 136) = 0;
      *(v869 + 272) = 0;
    }

    else
    {
      md::RouteLineSection::halfWidthAtZoom(v1320, v875);
      v889 = v888;
      v890 = v1257;
      v891 = v1309.f32[0];
      v1225 = 0.0;
      v892 = 0.0;
      if (v1309.f32[1] > 0.0)
      {
        v893 = v1309.f32[1];
        v892 = fmod(__x, v1309.f32[1]) / v893;
      }

      v1209 = v892;
      if (v1309.f32[2] > 0.0)
      {
        v894 = v1309.f32[2];
        v895 = fmod(__x, v1309.f32[2]) / v894;
        v1225 = v895;
      }

      v896 = *md::LayoutContext::get<md::SharedResourcesContext>(*(v1250[0] + 1));
      v897 = v896;
      if (v896)
      {
        [v896 textureManager];
      }

      else
      {
        v1302 = 0uLL;
      }

      v898 = v1302;
      v899 = *(&v1251 + 1);
      v900 = *(v869 + 344);
      v1300[0] = *(v869 + 336);
      v1300[1] = &v900->__vftable;
      if (v900)
      {
        atomic_fetch_add_explicit(&v900->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::TextureManager::texture(&v1306, v898, &v1310[40], v1300, 1, v899);
      if (v900)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v900);
      }

      v901 = v1306;
      if (v1306)
      {
        md::SharedResource::addFrameRef(v1306, v1275);
        v902 = (v901 + 32);
        v903 = v1302;
      }

      else
      {
        v903 = v1302;
        v902 = v1302;
      }

      v904 = *v902;
      v905 = *(&v1251 + 1);
      v906 = *(v869 + 344);
      v1344 = *(v869 + 336);
      v1345 = v906;
      if (v906)
      {
        atomic_fetch_add_explicit(&v906->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::TextureManager::texture(&v1347, v903, &v1312, &v1344, 1, v905);
      if (v906)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v906);
      }

      v907 = v1347;
      if (v1347)
      {
        md::SharedResource::addFrameRef(v1347, v1275);
        v908 = (v907 + 32);
      }

      else
      {
        v908 = v1302;
      }

      v909 = *v908;
      **(*(v869 + 328) + 168) = v904;
      *(*(*(v869 + 328) + 168) + 8) = v909;
      v910 = *(*(*(v869 + 328) + 136) + 32);
      ggl::BufferMemory::BufferMemory(&v1323);
      ggl::ResourceAccessor::accessConstantData(&__src, 0, v910, 1);
      ggl::BufferMemory::operator=(&v1323, &__src);
      ggl::BufferMemory::~BufferMemory(&__src);
      v911 = v1327;
      v1327->i32[0] = v1309.i32[3];
      v911->f32[1] = (v891 + v889) * v890;
      v912 = *(v869 + 280);
      v911[1].f32[0] = *(v912 + 56) * *v1310;
      v911[2] = vmla_n_f32(*&v1310[4], *&v1310[12], v1209);
      v911[3] = vmla_n_f32(*&v1310[20], *&v1310[28], v1225);
      v911[4].f32[0] = v1313;
      v911[4].i32[1] = 1065353216;
      *(v869 + 48) = *(v869 + 328);
      *(v869 + 136) = 1;
      *(v869 + 64) = (*(v912 + 216) + v1258) | 0x20000;
      ggl::BufferMemory::~BufferMemory(&v1323);
      if (v1348)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1348);
      }

      if (v1307)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1307);
      }

      if (*(&v1302 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v1302 + 1));
      }
    }

    if (SHIBYTE(v1312.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v1312.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v1311) < 0)
    {
      operator delete(*&v1310[40]);
    }

    if (SHIBYTE(v1317) < 0)
    {
      operator delete(v1315);
    }

    if (buf[4].i8[15] < 0)
    {
      operator delete(buf[3].i64[1]);
    }

    if (v1277.i8[15] < 0)
    {
      operator delete(*&v1276[80]);
    }

    if ((v1276[79] & 0x80000000) != 0)
    {
      operator delete(*&v1276[56]);
    }

LABEL_1116:
    if (v1321 == 1)
    {
      (*v1320[0])[7](v1320[0]);
    }

    if (v1320[3])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1320[3]);
    }

    if (v1320[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1320[1]);
    }

    goto LABEL_1122;
  }

LABEL_1123:
  v913 = v1237;
  v914 = *(*v1237 + 328);
  v915 = *(v914 + 8);
  v916 = *(v914 + 16);
  if (v915 != v916)
  {
    objc = *(v914 + 16);
    do
    {
      v917 = *v915;
      buf[0].i64[0] = &unk_1F29F1B60;
      buf[0].i64[1] = __pc;
      buf[1].i64[1] = buf;
      if (*(v917 + 272) == 1)
      {
        v1309 = 0uLL;
        *v1310 = 0;
        std::vector<unsigned int>::reserve(&v1309, 5uLL);
        v1196 = v915;
        if (*(v917 + 136))
        {
          *v1276 = 0;
          std::vector<unsigned int>::push_back[abi:nn200100](&v1309, v1276);
          v919 = *(*(v917 + 8) + 56);
          *(v917 + 40) = v919;
          _ZF = *(v919 + 58) == 1;
          v920 = 16;
          if (_ZF)
          {
            v920 = 32;
          }
        }

        else
        {
          v920 = 16;
        }

        v1210 = v920;
        v921 = v1309.i64[0];
        if (v1309.i64[0] != v1309.i64[1])
        {
          v923 = *(v917 + 248);
          v922 = *(v917 + 256);
          if (v923 == v922)
          {
            v924 = 0;
          }

          else
          {
            v924 = 0;
            v1203 = *(v917 + 256);
            do
            {
              v925 = *v923;
              if (*(*v923 + 48) == 1)
              {
                if (*(v925 + 88) != v924)
                {
                  v1226 = v924;
                  if (v924)
                  {
                    v926 = ggl::Batcher::commit((v917 + 144), 0xC8u, v918);
                    if (v926[1] != *v926)
                    {
                      v927 = v1309.i64[1];
                      v928 = v1309.i64[0];
                      if (v1309.i64[0] != v1309.i64[1])
                      {
                        v929 = v926;
                        do
                        {
                          v930 = *v928;
                          *v1276 = &off_1F2A5D8B8;
                          v931 = v917 + 16 + (v930 << 7);
                          v932 = *(v931 + 8);
                          v933 = *(v931 + 24);
                          *&v1276[40] = *(v931 + 40);
                          *&v1276[24] = v933;
                          *&v1276[8] = v932;
                          v934 = *(v931 + 56);
                          v935 = *(v931 + 72);
                          v936 = *(v931 + 88);
                          v1278 = *(v931 + 104);
                          v1277 = v936;
                          *&v1276[72] = v935;
                          *&v1276[56] = v934;
                          v937 = *(v917 + 232);
                          v938 = v937[1];
                          if (v938 == *(v917 + 240))
                          {
                            v937 = *v937;
                            if (!v937)
                            {
                              v937 = malloc_type_malloc(120 * v938 + 16, 0x1020040EDED9539uLL);
                              *v937 = 0;
                              v937[1] = 0;
                              **(v917 + 232) = v937;
                            }

                            *(v917 + 232) = v937;
                            v938 = v937[1];
                          }

                          v939 = &v937[15 * v938];
                          v937[1] = v938 + 1;
                          v939[2] = &off_1F2A5D8B8;
                          v940 = *&v1276[8];
                          v941 = *&v1276[24];
                          *(v939 + 7) = *&v1276[40];
                          *(v939 + 5) = v941;
                          *(v939 + 3) = v940;
                          v942 = *&v1276[56];
                          v943 = *&v1276[72];
                          v944 = v1277;
                          *(v939 + 15) = v1278;
                          *(v939 + 13) = v944;
                          *(v939 + 11) = v943;
                          *(v939 + 9) = v942;
                          ggl::RenderItem::~RenderItem(v1276);
                          v939[10] = v1226;
                          v945 = *v929;
                          v939[13] = *v929;
                          v939[14] = (v929[1] - v945) >> 4;
                          std::function<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v930, (v939 + 2));
                          ++v928;
                        }

                        while (v928 != v927);
                      }
                    }
                  }

                  v925 = *v923;
                  v924 = *(*v923 + 88);
                  v922 = v1203;
                }

                ggl::Batcher::addRange(v917 + 144, (v925 + v1210));
              }

              ++v923;
            }

            while (v923 != v922);
            v921 = v1309.i64[0];
          }

          v946 = ggl::Batcher::commit((v917 + 144), 0xC8u, v918);
          v913 = v1237;
          if (v946[1] != *v946)
          {
            v947 = v1309.i64[1];
            if (v921 != v1309.i64[1])
            {
              v948 = v946;
              do
              {
                v949 = *v921;
                *v1276 = &off_1F2A5D8B8;
                v950 = v917 + 16 + (v949 << 7);
                v951 = *(v950 + 8);
                v952 = *(v950 + 24);
                *&v1276[40] = *(v950 + 40);
                *&v1276[24] = v952;
                *&v1276[8] = v951;
                v953 = *(v950 + 56);
                v954 = *(v950 + 72);
                v955 = *(v950 + 88);
                v1278 = *(v950 + 104);
                v1277 = v955;
                *&v1276[72] = v954;
                *&v1276[56] = v953;
                v956 = *(v917 + 232);
                v957 = v956[1];
                if (v957 == *(v917 + 240))
                {
                  v956 = *v956;
                  if (!v956)
                  {
                    v956 = malloc_type_malloc(120 * v957 + 16, 0x1020040EDED9539uLL);
                    *v956 = 0;
                    v956[1] = 0;
                    **(v917 + 232) = v956;
                  }

                  *(v917 + 232) = v956;
                  v957 = v956[1];
                }

                v958 = &v956[15 * v957];
                v956[1] = v957 + 1;
                v958[2] = &off_1F2A5D8B8;
                v959 = *&v1276[8];
                v960 = *&v1276[24];
                *(v958 + 7) = *&v1276[40];
                *(v958 + 5) = v960;
                *(v958 + 3) = v959;
                v961 = *&v1276[56];
                v962 = *&v1276[72];
                v963 = v1277;
                *(v958 + 15) = v1278;
                *(v958 + 13) = v963;
                *(v958 + 11) = v962;
                *(v958 + 9) = v961;
                ggl::RenderItem::~RenderItem(v1276);
                v958[10] = v924;
                v964 = *v948;
                v958[13] = *v948;
                v958[14] = (v948[1] - v964) >> 4;
                std::function<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v949, (v958 + 2));
                ++v921;
                v913 = v1237;
              }

              while (v921 != v947);
              v921 = v1309.i64[0];
            }
          }
        }

        if (v921)
        {
          v1309.i64[1] = v921;
          operator delete(v921);
        }

        v916 = objc;
        v915 = v1196;
      }

      std::__function::__value_func<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
      ++v915;
    }

    while (v915 != v916);
  }

  v1181 = +[VKDebugSettings sharedSettings];
  if ([v1181 highlightRouteLineSnappingStatus])
  {
    v965 = [*md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 8)) shaderLibrary];
    v966 = *(*v913 + 368);
    if (!v966)
    {
      v969 = *(v965 + 80);
      v970 = *(v969 + 400);
      v1309.i64[0] = *(v969 + 392);
      v1309.i64[1] = v970;
      if (v970)
      {
        atomic_fetch_add_explicit((v970 + 8), 1uLL, memory_order_relaxed);
      }

      memset(&v1276[24], 0, 20);
      v1276[0] = 1;
      *&v1276[4] = xmmword_1B33B0790;
      *&v1276[20] = 7;
      v1276[44] = 15;
      [*(*(a1 + 40) + 104) format];
      operator new();
    }

    v967 = *(v966 + 4);
    v968 = *(v966 + 5);
    if (v967 != v968)
    {
      do
      {
        *v1276 = *v967;
        std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v966, v1276);
        ++v967;
      }

      while (v967 != v968);
      v967 = *(v966 + 4);
      v968 = *(v966 + 5);
    }

    if (v967 != v968)
    {
      *(v966 + 5) = v967;
    }

    ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(*v913 + 376));
    ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pushAll(*(*v913 + 384));
    v971 = md::LayoutContext::get<md::CameraContext>(*(a2 + 8));
    __src.i64[0] = 0;
    __src.i64[1] = &__src;
    v1331 = 0x4812000000;
    p_src = __Block_byref_object_copy__35151;
    v1333 = __Block_byref_object_dispose__35152;
    v1334 = "";
    v1336[1] = 0;
    v1336[0] = 0;
    v1335 = v1336;
    v1249[0] = 0;
    v1249[1] = 0;
    v1248[1] = v1249;
    v972 = [*(*v913 + 160) overlay];
    v973 = [v972 composedRoute];
    *&v1323 = MEMORY[0x1E69E9820];
    *(&v1323 + 1) = 3221225472;
    v1324 = ___ZN2md16RouteRenderLayer34layoutDebugRouteLineSnappingStatusERKNSt3__110shared_ptrINS_16RouteLineOverlayEEERKNS_13LayoutContextEPN3ggl13CommandBufferE_block_invoke;
    v1325 = &unk_1E7B3B538;
    v1326 = &__src;
    v1327 = v913;
    v1328 = v971;
    v1329 = __pc;
    [v973 forEachSnappedPath:&v1323];

    memset(v1320, 0, sizeof(v1320));
    v1321 = 0u;
    v1322 = 0u;
    v974 = [*(*v1237 + 160) overlay];
    v975 = [v974 composedRoute];
    objd = [v975 sections];

    v976 = [objd countByEnumeratingWithState:v1320 objects:v1276 count:16];
    v977 = v976;
    if (v976)
    {
      v978 = 0;
      v1200 = *v1320[2];
      v1204 = 0;
      v1227 = v971 + 808;
      do
      {
        v979 = 0;
        v1197 = v977;
        do
        {
          if (*v1320[2] != v1200)
          {
            objc_enumerationMutation(objd);
          }

          v1248[0] = v1320[1][v979];
          if ([v1248[0] pointCount])
          {
            v980 = *(__src.i64[1] + 56);
            v1211 = v979;
            if (!v980)
            {
              goto LABEL_1188;
            }

            v981 = __src.i64[1] + 56;
            do
            {
              v982 = *(v980 + 32);
              _CF = v982 >= v1248[0];
              v983 = v982 < v1248[0];
              if (_CF)
              {
                v981 = v980;
              }

              v980 = *(v980 + 8 * v983);
            }

            while (v980);
            if (v981 == __src.i64[1] + 56 || v1248[0] < *(v981 + 32))
            {
LABEL_1188:
              [v1248[0] pointCount];
              v984 = (v1204 - v978) >> 2;
              if (v984 <= 1)
              {
                v984 = 1;
              }

              if (v1204 - v978 >= 0x7FFFFFFFFFFFFFF8)
              {
                v985 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v985 = v984;
              }

              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v985);
            }

            buf[0].i64[0] = v1248;
            v986 = std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>(__src.i64[1] + 48, v1248[0])[5];
            buf[0].i64[0] = v1248;
            __na = v978;
            v987 = std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>(__src.i64[1] + 48, v1248[0])[6];
            v988 = 126 - 2 * __clz((v987 - v986) >> 3);
            if (v987 == v986)
            {
              v989 = 0;
            }

            else
            {
              v989 = v988;
            }

            std::__introsort<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,false>(v986, v987, v989, 1);
            buf[0].i64[0] = v1248;
            v990 = std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>(__src.i64[1] + 48, v1248[0]);
            v992 = v990[5];
            v991 = v990[6];
            if (v992 == v991)
            {
              LODWORD(v997) = 0;
              v994 = __na;
              v995 = v1204;
            }

            else
            {
              v993 = 0;
              v994 = v978;
              v995 = v1204;
              v1186 = v990[6];
              do
              {
                v996 = *v992;
                if (*v992 >= v993)
                {
                  v997 = v992[1];
                  if (v996 > v993)
                  {
                    v998 = v996 - 1;
                    if (__na >= v995)
                    {
                      v999 = v995;
                      v1000 = __na - v994;
                      v1001 = (__na - v994) >> 3;
                      v1002 = v1001 + 1;
                      if ((v1001 + 1) >> 61)
                      {
                        goto LABEL_1377;
                      }

                      v1205 = v994;
                      v1003 = v999 - v994;
                      v1004 = (v999 - v994) >> 2;
                      if (v1004 > v1002)
                      {
                        v1002 = v1004;
                      }

                      if (v1003 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v1005 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v1005 = v1002;
                      }

                      if (v1005)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v1005);
                      }

                      v994 = 0;
                      v1006 = (8 * v1001);
                      v995 = 0;
                      *v1006 = v993;
                      v1006[1] = v998;
                      __na = v1006 + 2;
                      memcpy(0, v1205, v1000);
                      v991 = v1186;
                    }

                    else
                    {
                      *__na = v993;
                      __na[1] = v998;
                      __na += 2;
                    }
                  }
                }

                else
                {
                  v997 = v993;
                }

                v992 += 2;
                v993 = v997;
              }

              while (v992 != v991);
            }

            v1204 = v995;
            v1007 = __na;
            v977 = v1197;
            v979 = v1211;
            if (v997 >= [v1248[0] pointCount])
            {
LABEL_1219:
              v978 = v994;
            }

            else
            {
              v1008 = [v1248[0] pointCount];
              v1009 = v1008;
              if (__na < v1204)
              {
                *__na = v997;
                __na[1] = v1008;
                v1007 = (__na + 2);
                goto LABEL_1219;
              }

              __nb = __na - v994;
              v1010 = (v1007 - v994) >> 3;
              v1011 = v1010 + 1;
              if ((v1010 + 1) >> 61)
              {
LABEL_1377:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              if ((v1204 - v994) >> 2 > v1011)
              {
                v1011 = (v1204 - v994) >> 2;
              }

              if (v1204 - v994 >= 0x7FFFFFFFFFFFFFF8)
              {
                v1012 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v1012 = v1011;
              }

              if (v1012)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v1012);
              }

              v1013 = (8 * v1010);
              v1204 = 0;
              *v1013 = v997;
              v1013[1] = v1009;
              v1007 = 8 * v1010 + 8;
              memcpy(0, v994, __nb);
              v978 = 0;
            }

            if (v978 != v1007)
            {
              __nc = v978;
              v1014 = v978;
              do
              {
                v1016 = *v1014;
                v1015 = v1014[1];
                v1017 = v1015 - v1016;
                if ((v1015 - v1016) >= 2)
                {
                  v1018 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(*(*v1237 + 384));
                  ggl::BufferData::resize(**(v1018 + 8), 0);
                  [v1248[0] vkBounds];
                  v1019 = 0;
                  v1316 = 0;
                  buf[4].i64[1] = 0;
                  *(&buf[3] + 8) = 0u;
                  *(&buf[2] + 8) = 0u;
                  *(&buf[1] + 8) = 0u;
                  *(buf + 8) = 0u;
                  *buf[0].i64 = v1021 - v1020;
                  *&buf[2].i64[1] = v1023 - v1022;
                  *&v1315 = v1021 - v1020;
                  v1317 = v1020;
                  v1318 = v1022;
                  v1319 = xmmword_1B33B0740;
                  v1024 = v1227;
                  do
                  {
                    v1025 = 0;
                    v1026 = buf;
                    do
                    {
                      v1027 = 0;
                      v1028 = 0.0;
                      v1029 = v1024;
                      do
                      {
                        v1030 = *v1029;
                        v1029 += 4;
                        v1028 = v1028 + *&v1026->i64[v1027++] * v1030;
                      }

                      while (v1027 != 4);
                      *&v1309.i64[4 * v1025++ + v1019] = v1028;
                      v1026 += 2;
                    }

                    while (v1025 != 4);
                    ++v1019;
                    ++v1024;
                  }

                  while (v1019 != 4);
                  v1031 = [v1248[0] points];
                  ggl::BufferData::resize(**(v1018 + 8), v1017);
                  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v1306, **(v1018 + 8), 0, v1017);
                  v1032 = (v1031 + 12 * v1016);
                  v1033 = v1017;
                  v1034 = (v1308 + 8);
                  do
                  {
                    v1035 = *v1032;
                    v1032 = (v1032 + 12);
                    *(v1034 - 1) = v1035;
                    *v1034 = 0x3F80000000000000;
                    v1034 += 2;
                    --v1033;
                  }

                  while (v1033);
                  v1036 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*v1237 + 368));
                  v1037 = v1036;
                  v1038 = 0;
                  v1039 = &v1309;
                  do
                  {
                    v1041 = *v1039;
                    v1040 = v1039[1];
                    v1039 += 2;
                    *(&v1302 + v1038) = vcvt_hight_f32_f64(vcvt_f32_f64(v1041), v1040);
                    v1038 += 16;
                  }

                  while (v1038 != 64);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v1300, *(*(v1036 + 136) + 16));
                  v1042 = v1301;
                  *v1301 = v1302;
                  v1042[1] = v1303;
                  v1042[2] = v1304;
                  v1042[3] = v1305;
                  ggl::BufferMemory::~BufferMemory(v1300);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v1302, **(v1037 + 136));
                  **(&v1304 + 1) = mm;
                  ggl::BufferMemory::~BufferMemory(&v1302);
                  v1043 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*v1237 + 376));
                  v1043[8] = v1018;
                  v1043[4] = v1037;
                  v1043[3] = *(*v1237 + 360);
                  *&v1302 = v1043;
                  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((__pc + 72), &v1302);
                  ggl::BufferMemory::~BufferMemory(&v1306);
                }

                v1014 += 2;
              }

              while (v1014 != v1007);
              v978 = __nc;
              v977 = v1197;
              v979 = v1211;
            }
          }

          ++v979;
        }

        while (v979 != v977);
        v977 = [objd countByEnumeratingWithState:v1320 objects:v1276 count:16];
      }

      while (v977);
    }

    std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v1249[0]);
    _Block_object_dispose(&__src, 8);
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(v1336[0]);
    v913 = v1237;
  }

  if ([v1181 routeDebugPoints])
  {
    v1044 = [*md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 8)) shaderLibrary];
    v1045 = *(*v913 + 400);
    if (!v1045)
    {
      v1051 = *(v1044 + 80);
      v1052 = *(v1051 + 424);
      v1309.i64[0] = *(v1051 + 416);
      v1309.i64[1] = v1052;
      if (v1052)
      {
        atomic_fetch_add_explicit((v1052 + 8), 1uLL, memory_order_relaxed);
      }

      memset(&v1276[24], 0, 20);
      v1276[0] = 1;
      *&v1276[4] = xmmword_1B33B0790;
      *&v1276[20] = 7;
      v1276[44] = 15;
      [*(*(a1 + 40) + 104) format];
      operator new();
    }

    v1046 = *(v1045 + 4);
    v1047 = *(v1045 + 5);
    if (v1046 != v1047)
    {
      do
      {
        *v1276 = *v1046;
        std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1045, v1276);
        ++v1046;
      }

      while (v1046 != v1047);
      v1046 = *(v1045 + 4);
      v1047 = *(v1045 + 5);
    }

    if (v1046 != v1047)
    {
      *(v1045 + 5) = v1046;
    }

    ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(*v913 + 408));
    v1048 = *(*v913 + 416);
    v1049 = *(v1048 + 4);
    v1050 = *(v1048 + 5);
    if (v1049 != v1050)
    {
      do
      {
        *v1276 = *v1049;
        std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1048, v1276);
        ++v1049;
      }

      while (v1049 != v1050);
      v1049 = *(v1048 + 4);
      v1050 = *(v1048 + 5);
    }

    if (v1049 != v1050)
    {
      *(v1048 + 5) = v1049;
    }

    v1206 = md::LayoutContext::get<md::CameraContext>(*(a2 + 8));
    v1053 = *(*v913 + 160);
    if (v1053)
    {
      [v1053 sections];
    }

    else
    {
      v1338 = 0;
      v1337 = 0;
      v1339 = 0;
    }

    v1344 = 0;
    v1345 = 0;
    v1346 = 0;
    v1341 = 0;
    v1340 = 0;
    v1342 = 0;
    v1054 = +[VKDebugSettings sharedSettings];
    v1055 = [v1054 routeDebugPoints];

    v1056 = v1337;
    v1057 = v1237;
    if (v1338 == v1337)
    {
      goto LABEL_1364;
    }

    v1058 = 0;
    do
    {
      v1212 = v1058;
      v1059 = *(v1056 + 8 * v1058);
      if (v1059)
      {
        v1060 = v1059 + 8;
      }

      else
      {
        v1060 = 0;
      }

      v1061 = *v1057;
      WeakRetained = objc_loadWeakRetained((v1060 + 200));
      v1063 = *&v1061 + 440;
      v1064 = *(*&v1061 + 440);
      if (!v1064)
      {
        goto LABEL_1279;
      }

      v1065 = *&v1061 + 440;
      do
      {
        v1066 = *(v1064 + 32);
        _CF = v1066 >= WeakRetained;
        v1067 = v1066 < WeakRetained;
        if (_CF)
        {
          v1065 = v1064;
        }

        v1064 = *(v1064 + 8 * v1067);
      }

      while (v1064);
      if (v1065 == v1063 || WeakRetained < *(v1065 + 32))
      {
LABEL_1279:
        v1065 = v1063;
      }

      if (v1065 != *v1237 + 440)
      {
        v1068 = 0;
        if ((v1212 & 1) != 0 && v1055 == 1)
        {
          v1070 = 0.0;
        }

        else
        {
          v1070 = 1.0;
        }

        v1071 = *(v1065 + 40);
        v1072 = mm;
        *v1072.i32 = v1070;
        v1073 = vzip1q_s32(v1072, v1072);
        *&v1073.i32[2] = v1070;
        *v1228 = v1073;
        while ((*(*v1071 + 32))(v1071) > v1068)
        {
          v1074 = (*(*v1071 + 16))(v1071, v1068);
          v1075 = (*(*v1071 + 24))(v1071, v1068);
          v1076 = v1075;
          buf[0].i64[0] = *v1074;
          buf[0].i32[2] = *(v1074 + 8);
          v1077 = v1344;
          v1078 = v1345;
          if (v1055 == 1 && (v1079 = v1345 - v1344, v1345 != v1344) && ((+[VKDebugSettings sharedSettings](), v1080 = objc_claimAutoreleasedReturnValue(), v1081 = [v1080 continuousMultiSectionRouteAdditionalOverlap], v1080, LODWORD(v1082) = v1081 + 2, v1083 = (v1079 >> 5) - 1, v1083 >= v1081 + 2) ? (v1082 = v1082) : (v1082 = v1083), v1082))
          {
            v1084 = 0;
            v1085 = v1340;
            v1086 = v1078 - 28;
            while (1)
            {
              v1087 = (v1079 >> 5) + ~v1084;
              v1088 = &v1077[32 * v1087];
              if (vabds_f32(buf[0].f32[0], *v1088) < 0.000001)
              {
                v1089 = 0;
                do
                {
                  if (v1089 == 2)
                  {
                    goto LABEL_1314;
                  }

                  v1090 = v1089++;
                }

                while (vabds_f32(buf[0].f32[v1090 + 1], *&v1086[4 * v1090]) < 0.000001);
                if (v1090 >= 2)
                {
                  break;
                }
              }

              ++v1084;
              v1086 -= 32;
              if (v1084 == v1082)
              {
                goto LABEL_1302;
              }
            }

LABEL_1314:
            *&v1078[-32 * v1084 - 16] = xmmword_1B33AFEE0;
            if (v1085[v1087] != v1076)
            {
              *(v1088 + 5) = 1065353216;
            }
          }

          else
          {
LABEL_1302:
            if (v1078 >= v1346)
            {
              v1092 = (v1078 - v1077) >> 5;
              v1093 = v1092 + 1;
              if ((v1092 + 1) >> 59)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v1094 = v1346 - v1077;
              if ((v1346 - v1077) >> 4 > v1093)
              {
                v1093 = v1094 >> 4;
              }

              if (v1094 >= 0x7FFFFFFFFFFFFFE0)
              {
                v1095 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v1095 = v1093;
              }

              if (v1095)
              {
                v1096 = mdm::zone_mallocator::instance(v1075);
                v1097 = pthread_rwlock_rdlock((v1096 + 32));
                if (v1097)
                {
                  geo::read_write_lock::logFailure(v1097, "read lock", v1098);
                }

                v1099 = malloc_type_zone_malloc(*v1096, 32 * v1095, 0x100004017768742uLL);
                atomic_fetch_add((v1096 + 24), 1u);
                geo::read_write_lock::unlock((v1096 + 32));
                v1077 = v1344;
                v1078 = v1345;
                v1100 = (v1345 - v1344) >> 5;
              }

              else
              {
                v1099 = 0;
                v1100 = (v1078 - v1077) >> 5;
              }

              v1101 = &v1099[32 * v1092];
              *v1101 = 0u;
              *(v1101 + 1) = 0u;
              v1102 = &v1101[-32 * v1100];
              if (v1077 != v1078)
              {
                v1103 = v1102;
                do
                {
                  v1104 = *v1077;
                  *(v1103 + 8) = *(v1077 + 2);
                  *v1103 = v1104;
                  *(v1103 + 16) = *(v1077 + 1);
                  v1077 += 32;
                  v1103 += 32;
                }

                while (v1077 != v1078);
                v1077 = v1344;
              }

              v1091 = (v1101 + 32);
              v1344 = v1102;
              v1345 = (v1101 + 32);
              v1346 = &v1099[32 * v1095];
              if (v1077)
              {
                v1105 = mdm::zone_mallocator::instance(v1075);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedVbo>(v1105, v1077);
              }
            }

            else
            {
              *v1078 = 0u;
              *(v1078 + 1) = 0u;
              v1091 = (v1078 + 32);
            }

            v1345 = v1091;
            v1106 = buf[0].i64[0];
            LODWORD(v1091[-1].__vftable) = buf[0].i32[2];
            v1091[-2].__shared_weak_owners_ = v1106;
            *&v1091[-1].__shared_owners_ = *v1228;
            v1107 = v1341;
            if (v1341 >= v1342)
            {
              v1109 = v1341 - v1340;
              v1110 = v1341 - v1340 + 1;
              if (v1110 < 0)
              {
                goto LABEL_1376;
              }

              v1111 = v1342 - v1340;
              if (2 * (v1342 - v1340) > v1110)
              {
                v1110 = 2 * v1111;
              }

              if (v1111 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v1112 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v1112 = v1110;
              }

              *&v1276[32] = &v1343;
              if (v1112)
              {
                v1113 = mdm::zone_mallocator::instance(v1075);
                v1114 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v1113, v1112);
              }

              else
              {
                v1114 = 0;
              }

              v1115 = &v1114[v1109];
              *v1115 = v1076;
              v1108 = &v1114[v1109 + 1];
              v1116 = &v1114[v1112];
              v1117 = &v1115[v1340 - v1341];
              memcpy(v1117, v1340, v1341 - v1340);
              v1118 = v1340;
              v1119 = v1342;
              v1340 = v1117;
              v1341 = v1108;
              v1342 = v1116;
              *&v1276[16] = v1118;
              *&v1276[24] = v1119;
              *&v1276[8] = v1118;
              *v1276 = v1118;
              std::__split_buffer<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator> &>::~__split_buffer(v1276);
            }

            else
            {
              *v1341 = v1076;
              v1108 = (v1107 + 1);
            }

            v1341 = v1108;
          }

          ++v1068;
        }
      }

      v1058 = v1212 + 1;
      v1056 = v1337;
      v1057 = v1237;
    }

    while (v1212 + 1 < ((v1338 - v1337) >> 3));
    v1120 = v1344;
    if (v1345 == v1344)
    {
      goto LABEL_1364;
    }

    v1121 = *(*v1237 + 416);
    v1122 = v1121[1];
    if (v1122 == *v1121)
    {
      v1124 = v1121[11];
      if (!v1124)
      {
        goto LABEL_1387;
      }

      v1123 = (*(*v1124 + 48))(v1124);
      buf[0].i64[0] = v1123;
    }

    else
    {
      v1123 = *(v1122 - 8);
      buf[0].i64[0] = v1123;
      v1121[1] = v1122 - 8;
    }

    std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v1121 + 4), buf);
    *v1276 = v1123;
    v1125 = v1121[15];
    if (v1125)
    {
      (*(*v1125 + 48))(v1125, v1276);
      v1126 = v1345;
      v1127 = (v1345 - v1120) >> 5;
      ggl::BufferData::resize(**(v1123 + 64), v1127);
      ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v1309, **(v1123 + 64), 0, (v1126 - v1120) >> 5);
      if (v1126 != v1120)
      {
        v1128 = 0;
        v1129 = *&v1310[24];
        if (v1127 <= 1)
        {
          v1130 = 1;
        }

        else
        {
          v1130 = (v1126 - v1120) >> 5;
        }

        do
        {
          for (i6 = 0; i6 != 12; i6 += 4)
          {
            *(v1129 + i6) = *(v1120 + i6);
          }

          for (i7 = 16; i7 != 32; i7 += 4)
          {
            *(v1129 + i7) = *(v1120 + i7);
          }

          ++v1128;
          v1129 += 32;
          v1120 += 32;
        }

        while (v1128 != v1130);
      }

      v1133 = 0;
      v1134 = (v1206 + 808);
      v1135 = *v1237;
      v1136 = *v1237 + 8;
      do
      {
        v1137 = 0;
        v1138 = v1136;
        do
        {
          v1139 = 0;
          v1140 = 0.0;
          v1141 = v1134;
          do
          {
            v1142 = *v1141;
            v1141 += 4;
            v1140 = v1140 + *(v1138 + v1139) * v1142;
            v1139 += 8;
          }

          while (v1139 != 32);
          *&v1276[32 * v1137++ + 8 * v1133] = v1140;
          v1138 += 32;
        }

        while (v1137 != 4);
        ++v1133;
        ++v1134;
      }

      while (v1133 != 4);
      v1143 = ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::pop(*(*&v1135 + 400));
      v1144 = v1143;
      v1145 = 0;
      v1146 = v1276;
      do
      {
        v1148 = *v1146;
        v1147 = v1146[1];
        v1146 += 2;
        buf[v1145++] = vcvt_hight_f32_f64(vcvt_f32_f64(v1148), v1147);
      }

      while (v1145 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__src, *(*(v1143 + 136) + 16));
      v1149 = v1334;
      *v1334 = buf[0];
      v1149[1] = buf[1];
      v1149[2] = buf[2];
      v1149[3] = buf[3];
      ggl::BufferMemory::~BufferMemory(&__src);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, **(v1144 + 136));
      *buf[2].i64[1] = mm;
      ggl::BufferMemory::~BufferMemory(buf);
      v1150 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*v1237 + 408));
      v1150[8] = v1123;
      v1150[4] = v1144;
      v1150[3] = *(*v1237 + 392);
      v1150[6] = -1;
      buf[0].i64[0] = v1150;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((__pc + 72), buf);
      v1151 = ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::pop(*(*v1237 + 400));
      v1152 = v1151;
      v1153 = 0;
      v1154 = v1276;
      do
      {
        v1156 = *v1154;
        v1155 = v1154[1];
        v1154 += 2;
        buf[v1153++] = vcvt_hight_f32_f64(vcvt_f32_f64(v1156), v1155);
      }

      while (v1153 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__src, *(*(v1151 + 136) + 16));
      v1157 = v1334;
      *v1334 = buf[0];
      v1157[1] = buf[1];
      v1157[2] = buf[2];
      v1157[3] = buf[3];
      ggl::BufferMemory::~BufferMemory(&__src);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, **(v1152 + 136));
      *buf[2].i64[1] = xmmword_1B33B0C60;
      ggl::BufferMemory::~BufferMemory(buf);
      v1158 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*v1237 + 408));
      v1158[8] = v1123;
      v1158[4] = v1152;
      v1158[3] = *(*v1237 + 424);
      v1158[6] = -1;
      buf[0].i64[0] = v1158;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((__pc + 72), buf);
      ggl::BufferMemory::~BufferMemory(&v1309);
LABEL_1364:
      std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1340);
      std::vector<ggl::Debug::ExtendedVbo,geo::allocator_adapter<ggl::Debug::ExtendedVbo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1344);
      *v1276 = &v1337;
      std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v1276);
      goto LABEL_1365;
    }

LABEL_1387:
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_1365:

  if (v1265)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1265);
  }

  if (v1242)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1242);
  }
}

void sub_1B2B357E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t __p, uint64_t __p_8, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a65);
  }

  _Unwind_Resume(a1);
}

void md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 2960) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v48 = a1 + 16;
    v7 = (a1 + 136);
    for (i = 7; i != 29; ++i)
    {
      if (((a2 >> (i - 7)) & 1) != 0 && *v7 == 1)
      {
        LODWORD(v51) = i - 7;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * i);
        *(v7 - 12) = v9;
        v6 |= *(v9 + 58) == 1;
      }

      v7 += 128;
    }

    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 2936);
      v12 = *(a1 + 2944);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v6)
        {
          v14 = 32;
        }

        v45 = *(a1 + 2944);
        v46 = v14;
        do
        {
          v15 = *v11;
          if (*(*v11 + 48) == 1)
          {
            if (*(v15 + 88) != v13)
            {
              v47 = v13;
              if (v13)
              {
                v16 = ggl::Batcher::commit((a1 + 2832), 0xC8u, v5);
                if (v16[1] != *v16)
                {
                  v17 = v50.__begin_;
                  end = v50.__end_;
                  if (v50.__begin_ != v50.__end_)
                  {
                    v19 = v16;
                    do
                    {
                      v20 = *v17;
                      v51 = &off_1F2A5D8B8;
                      v21 = v48 + (v20 << 7);
                      v52 = *(v21 + 8);
                      v53 = *(v21 + 24);
                      v54 = *(v21 + 40);
                      v58 = *(v21 + 104);
                      v57 = *(v21 + 88);
                      v56 = *(v21 + 72);
                      v55 = *(v21 + 56);
                      v22 = *(a1 + 2920);
                      v23 = v22[1];
                      if (v23 == *(a1 + 2928))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 2920) = v22;
                        }

                        *(a1 + 2920) = v22;
                        v23 = v22[1];
                      }

                      v24 = &v22[15 * v23];
                      v22[1] = v23 + 1;
                      v24[2] = &off_1F2A5D8B8;
                      v25 = v52;
                      v26 = v53;
                      *(v24 + 7) = v54;
                      *(v24 + 5) = v26;
                      *(v24 + 3) = v25;
                      v27 = v55;
                      v28 = v56;
                      v29 = v57;
                      *(v24 + 15) = v58;
                      *(v24 + 13) = v29;
                      *(v24 + 11) = v28;
                      *(v24 + 9) = v27;
                      ggl::RenderItem::~RenderItem(&v51);
                      v24[10] = v47;
                      v30 = *v19;
                      v24[13] = *v19;
                      v24[14] = (v19[1] - v30) >> 4;
                      std::function<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
                      ++v17;
                    }

                    while (v17 != end);
                  }
                }
              }

              v15 = *v11;
              v13 = *(*v11 + 88);
              v12 = v45;
            }

            ggl::Batcher::addRange(a1 + 2832, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 2832), 0xC8u, v5);
      if (v31[1] != *v31)
      {
        v32 = v50.__end_;
        if (begin != v50.__end_)
        {
          v33 = v31;
          do
          {
            v34 = *begin;
            v51 = &off_1F2A5D8B8;
            v35 = v48 + (v34 << 7);
            v52 = *(v35 + 8);
            v53 = *(v35 + 24);
            v54 = *(v35 + 40);
            v58 = *(v35 + 104);
            v57 = *(v35 + 88);
            v56 = *(v35 + 72);
            v55 = *(v35 + 56);
            v36 = *(a1 + 2920);
            v37 = v36[1];
            if (v37 == *(a1 + 2928))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 2920) = v36;
              }

              *(a1 + 2920) = v36;
              v37 = v36[1];
            }

            v38 = &v36[15 * v37];
            v36[1] = v37 + 1;
            v38[2] = &off_1F2A5D8B8;
            v39 = v56;
            v40 = v57;
            v41 = v58;
            *(v38 + 9) = v55;
            v42 = v52;
            v43 = v53;
            *(v38 + 7) = v54;
            *(v38 + 5) = v43;
            *(v38 + 3) = v42;
            *(v38 + 15) = v41;
            *(v38 + 13) = v40;
            *(v38 + 11) = v39;
            v38[10] = v13;
            v44 = *v33;
            v38[13] = *v33;
            v38[14] = (v33[1] - v44) >> 4;
            std::function<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
            ++begin;
          }

          while (begin != v32);
          begin = v50.__begin_;
        }
      }
    }

    if (begin)
    {
      v50.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_1B2B36A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::TrafficSegmentsAlongRoute::addSegmentAt(md::TrafficSegmentsAlongRoute *this, unsigned int a2, uint64_t a3)
{
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v6 >= v5)
  {
    v8 = *this;
    v9 = v6 - *this;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v5 - v8;
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

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = (8 * (v9 >> 3));
    *v13 = a2 | (a3 << 32);
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    *this = 0;
    *(this + 1) = v7;
    *(this + 2) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = a2 | (a3 << 32);
    v7 = v6 + 1;
  }

  *(this + 1) = v7;
}

void md::NavigationLogic::setRouteContext(md::NavigationLogic *this, VKRouteContext *a2)
{
  v3 = a2;
  if (*(this + 23) != v3)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 176, v3);
    std::__hash_table<md::NavigationLogicEvent,std::hash<md::NavigationLogicEvent>,std::equal_to<md::NavigationLogicEvent>,std::allocator<md::NavigationLogicEvent>>::__emplace_unique_key_args<md::NavigationLogicEvent,md::NavigationLogicEvent const&>(this + 31, 1);
  }

  md::NavigationLogic::_updatePolygonSelection(this);
}

void *std::__hash_table<md::NavigationLogicEvent,std::hash<md::NavigationLogicEvent>,std::equal_to<md::NavigationLogicEvent>,std::allocator<md::NavigationLogicEvent>>::__emplace_unique_key_args<md::NavigationLogicEvent,md::NavigationLogicEvent const&>(void *result, int a2)
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

uint64_t md::NavigationLogic::_updatePolygonSelection(uint64_t this)
{
  v1 = *(this + 216);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2 == v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  while (*v4 != 41)
  {
    v4 += 16;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  if (v4 == v3)
  {
LABEL_8:
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 8);
  }

  if (v2 == v3)
  {
    goto LABEL_16;
  }

  v6 = v2;
  while (*v6 != 58)
  {
    v6 += 16;
    if (v6 == v3)
    {
      goto LABEL_16;
    }
  }

  if (v6 == v3)
  {
LABEL_16:
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v2 != v3)
  {
    v8 = v2;
    while (*v8 != 42)
    {
      v8 += 16;
      if (v8 == v3)
      {
        goto LABEL_24;
      }
    }

    if (v8 != v3)
    {
      v9 = *(v8 + 8);
      goto LABEL_25;
    }
  }

LABEL_24:
  v9 = 0;
LABEL_25:
  while (v2 != v3)
  {
    if (*v2 == 49)
    {
      if (v2 != v3)
      {
        v10 = *(v2 + 8);
        if (v5)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      break;
    }

    v2 += 16;
  }

  v10 = 0;
  if (v5)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (!v7 && !v9 && !v10)
  {
    return this;
  }

LABEL_35:
  v14 = 0;
  v15 = &v14;
  v16 = 0x5812000000;
  v17 = __Block_byref_object_copy__35414;
  v18 = __Block_byref_object_dispose__35415;
  v19 = "";
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v11 = *(this + 184);
  if (v11)
  {
    v12 = *(this + 225);
    if (v12 == 1 || v12 == 2 && !*(this + 224))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN2md15NavigationLogic23_updatePolygonSelectionEv_block_invoke;
      v13[3] = &unk_1E7B3B5F8;
      v13[4] = &v14;
      [v11 forEachRouteInfo:v13];
    }
  }

  if (v5)
  {
    md::SelectedPolygonLayerDataSource::setSelectedPolygons(v5, (v15 + 6));
  }

  if (v7)
  {
    md::SelectedDaVinciPolygonLayerDataSource::setSelectedPolygons(v7, (v15 + 6));
  }

  if (v9)
  {
    md::SelectedPolygonLayerDataSource::setSelectedPolygons(v9, (v15 + 6));
  }

  if (v10)
  {
    md::SelectedDaVinciRoadsLayerDataSource::setSelectedRoads(v10, (v15 + 6));
  }

  _Block_object_dispose(&v14, 8);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v20);
}

void sub_1B2B372FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v6 + 48);
  _Unwind_Resume(a1);
}

void md::SelectedPolygonLayerDataSource::setSelectedPolygons(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 816;
  if ((std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(a1 + 816, a2) & 1) == 0)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    if (v4 != a2)
    {
      *(a1 + 848) = *(a2 + 32);
      v5 = *(a2 + 16);

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v4, v5);
    }
  }
}

unint64_t std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = v3[2];
    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2, v5);
    if (!result)
    {
      break;
    }

    if (v5 != *(result + 16))
    {
      return 0;
    }
  }

  return result;
}

void md::TransitLogic::setRouteContext(md::TransitLogic *this, VKRouteContext *a2)
{
  v3 = a2;
  if (*(this + 25) != v3)
  {
    *(this + 216) = 1;
  }

  v4 = v3;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 192, v3);
}

void md::SelectedDaVinciPolygonLayerDataSource::setSelectedPolygons(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 800;
  if ((std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(a1 + 800, a2) & 1) == 0)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    if (GEOGetVectorKitDrapingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitDrapingLog_onceToken, &__block_literal_global_61);
    }

    v5 = GEOGetVectorKitDrapingLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_DEBUG, "clearing SelectedDVPoly datastore", v6, 2u);
    }

    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    if (v4 != a2)
    {
      *(a1 + 832) = *(a2 + 32);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v4, *(a2 + 16));
    }
  }
}

void md::SelectedDaVinciRoadsLayerDataSource::setSelectedRoads(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 840;
  if ((std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(a1 + 840, a2) & 1) == 0)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    if (v4 != a2)
    {
      *(a1 + 872) = *(a2 + 32);
      v5 = *(a2 + 16);

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v4, v5);
    }
  }
}

void md::StyleLogic::setRouteSource(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 182);
  v4 = a2[1];
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a1 + 181);
    v4 = *a2;
  }

  if (v3 != v4)
  {
    v6 = *a2;
    *(a1 + 181) = *a2;
    v7 = *(a1 + 208);
    if ((v6 & 0x100) != 0)
    {
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v7, 0x10085u, v6);
      if ((*(a1 + 182) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();
        [(VKRouteContext *)v9 .cxx_destruct];
        return;
      }

      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10085u, *(a1 + 181));
    }

    else
    {
      gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(v7, 0x10085u);
      gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(*(a1 + 224), 0x10085u);
    }

    v11 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v11);
    v8 = **(a1 + 1240);
    if (v8)
    {
      v12 = 12;
      md::MapEngine::setNeedsTick(v8, &v12);
    }
  }
}

void md::StyleLogic::setRouteTransportType(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 170);
  v4 = a2[1];
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a1 + 169);
    v4 = *a2;
  }

  if (v3 != v4)
  {
    v6 = *a2;
    *(a1 + 169) = *a2;
    v7 = *(a1 + 208);
    if ((v6 & 0x100) != 0)
    {
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v7, 0x10053u, v6);
      if ((*(a1 + 170) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();
        [(VKIconModifiers *)v9 zoom];
        return;
      }

      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10053u, *(a1 + 169));
    }

    else
    {
      gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(v7, 0x10053u);
      gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(*(a1 + 224), 0x10053u);
    }

    v11 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v11);
    v8 = **(a1 + 1240);
    if (v8)
    {
      v12 = 12;
      md::MapEngine::setNeedsTick(v8, &v12);
    }
  }
}

void grl::IconManager::retrieveResourcePack(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  std::__shared_mutex_base::lock_shared((a2 + 104));
  v8 = *(a2 + 96);
  if (!v8)
  {
    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v13 = GEOGetGeoResourceLibIconManagerLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "No packinfo available", v20, 2u);
    }

    goto LABEL_24;
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v9 = (v8 + 304);
      std::mutex::lock((v8 + 304));
      v10 = geo::LRUPolicy<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>,grl::codec::PackKeyHash>::get(*(a2 + 96) + 152, (*(a2 + 96) + 112), a3);
      v11 = *(a2 + 96);
      v12 = v11 + 152;
    }

    else
    {
      v9 = (v8 + 240);
      std::mutex::lock((v8 + 240));
      v10 = geo::LRUPolicy<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>,grl::codec::PackKeyHash>::get(*(a2 + 96) + 80, (*(a2 + 96) + 40), a3);
      v11 = *(a2 + 96);
      v12 = v11 + 80;
    }

    if (v12 != v10)
    {
      ++*(v11 + 368);
      v19 = *(v10 + 48);
      v18 = *(v10 + 56);
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v9 = (v8 + 176);
  std::mutex::lock((v8 + 176));
  v14 = *(a2 + 96);
  v15 = *(v14 + 8);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v14 + 8;
  do
  {
    v17 = std::operator<=>[abi:nn200100]<std::string,float,std::string,float>(v15 + 32, a3);
    if (v17 != 255)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * (v17 == 255));
  }

  while (v15);
  if (v16 == v14 + 8 || std::operator<=>[abi:nn200100]<std::string,float,std::string,float>(a3, v16 + 32) == 0xFF)
  {
LABEL_23:
    std::mutex::unlock(v9);
    ++*(*(a2 + 96) + 372);
LABEL_24:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_25;
  }

  ++*(v14 + 368);
  v19 = *(v16 + 64);
  v18 = *(v16 + 72);
LABEL_20:
  *a1 = v19;
  a1[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v9);
LABEL_25:
  std::__shared_mutex_base::unlock_shared((a2 + 104));
}

uint64_t std::__tree<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::__map_value_compare<grl::ResourceProvider::ResourceCacheKey,std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::less<grl::ResourceProvider::ResourceCacheKey>,true>,std::allocator<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>>>::find<grl::ResourceProvider::ResourceCacheKey>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100]((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t grl::zone_mallocator::instance(grl::zone_mallocator *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return grl::zone_mallocator::instance(void)::zone;
}

grl::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,grl::zone_mallocator>>::reserve(grl::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 2)
  {
    if (a2 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = grl::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[4 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,grl::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

unint64_t grl::codec::PackKeyHash::operator()(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = 0x9E3779B97F4A7C15;
  v6 = *(v1 + 24);
  if (v6 != 0.0)
  {
    v5 = LODWORD(v6) - 0x61C8864680B583EBLL;
  }

  return (((v4 - 0x61C8864680B583EBLL) >> 2) + ((v4 - 0x61C8864680B583EBLL) << 6) + v5) ^ (v4 - 0x61C8864680B583EBLL);
}

void grl::codec::IconConfigPack::iconRenderItemForKey(grl::codec::IconConfigPack *this, const grl::IconKey *a2, grl::IconKey *a3, uint64_t a4)
{
  v32 = *(a3 + 8);
  LOBYTE(v42) = *(a3 + 24);
  *(&v42 + 2) = HIDWORD(v32);
  grl::codec::IconConfigPack::decodeIconRenderItemIfNeeded(&v33, a2, &v42);
  v8 = v33;
  if (!v33 || (v9 = std::__tree<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::__map_value_compare<grl::IconKey,std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::less<grl::IconKey>,true>,geo::allocator_adapter<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>::find<grl::IconKey>(v33, a3), v8 + 8 == v9))
  {
    v42 = &unk_1F2A5F7A0;
    v43 = *(a3 + 8);
    v44 = *(a3 + 24);
    v12 = v44;
    if (v44)
    {
      while (1)
      {
        v44 = v12 - 1;
        v13 = (((DWORD2(v43) - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((DWORD2(v43) - 0x61C8864680B583EBLL) >> 2) + WORD6(v43)) ^ (DWORD2(v43) - 0x61C8864680B583EBLL);
        v14 = (HIWORD(v43) - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
        *&v43 = ((v12 - 1) - 0x61C8864680B583EBLL + (v14 << 6) + (v14 >> 2)) ^ v14;
        v35 = &unk_1F2A5F7A0;
        v37 = v12 - 1;
        v36 = v43;
        v38[0] = v12 - 1;
        v39 = HIDWORD(v43);
        grl::codec::IconConfigPack::decodeIconRenderItemIfNeeded(&v40, a2, v38);
        v15 = v40;
        if (v40)
        {
          v16 = std::__tree<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::__map_value_compare<grl::IconKey,std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::less<grl::IconKey>,true>,geo::allocator_adapter<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>::find<grl::IconKey>(v40, &v42);
          if (v15 + 8 != v16)
          {
            break;
          }
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v41);
        }

        v12 = v44;
        if (!v44)
        {
          goto LABEL_13;
        }
      }

      if (a4)
      {
        v30 = *(a3 + 8);
        *(a4 + 24) = *(a3 + 24);
        *(a4 + 8) = v30;
      }

      v31 = *(v16 + 64);
      v17 = *(v16 + 72);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }

      if (v31)
      {
        *this = v31;
        *(this + 1) = v17;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

    if (*(a3 + 11))
    {
      v18 = *(a3 + 10);
      v19 = *(a3 + 24);
      DWORD2(v43) = *(a3 + 4);
      HIDWORD(v43) = v18;
      v44 = v19;
      v20 = DWORD2(v43) - 0x61C8864680B583EBLL;
      v21 = (((((v20 << 6) - 0x61C8864680B583EBLL + (v20 >> 2) + v18) ^ v20) << 6) - 0x61C8864680B583EBLL + ((((v20 << 6) - 0x61C8864680B583EBLL + (v20 >> 2) + v18) ^ v20) >> 2)) ^ ((v20 << 6) - 0x61C8864680B583EBLL + (v20 >> 2) + v18) ^ v20;
      v42 = &unk_1F2A5F7A0;
      *&v43 = (v19 - 0x61C8864680B583EBLL + (v21 << 6) + (v21 >> 2)) ^ v21;
      grl::codec::IconConfigPack::iconRenderItemForKey(&v35, a2, &v42);
      v23 = v35;
      v22 = v36;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      if (v23)
      {
        *this = v23;
        *(this + 1) = v22;
        goto LABEL_36;
      }
    }

    else
    {
      v22 = v17;
    }

    if (*(a3 + 10))
    {
      v24 = *(a3 + 11);
      v25 = *(a3 + 24);
      DWORD2(v43) = *(a3 + 4);
      WORD6(v43) = 0;
      HIWORD(v43) = v24;
      v44 = v25;
      v26 = DWORD2(v43) - 0x61C8864680B583EBLL;
      v27 = (v24 - 0x61C8864680B583EBLL + ((((v26 << 6) - 0x61C8864680B583EBLL + (v26 >> 2)) ^ v26) << 6) + ((((v26 << 6) - 0x61C8864680B583EBLL + (v26 >> 2)) ^ v26) >> 2)) ^ ((v26 << 6) - 0x61C8864680B583EBLL + (v26 >> 2)) ^ v26;
      v42 = &unk_1F2A5F7A0;
      *&v43 = (v25 - 0x61C8864680B583EBLL + (v27 << 6) + (v27 >> 2)) ^ v27;
      grl::codec::IconConfigPack::iconRenderItemForKey(&v35, a2, &v42);
      v29 = v35;
      v28 = v36;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }

      if (v29)
      {
        *this = v29;
        *(this + 1) = v28;
        goto LABEL_36;
      }
    }

    else
    {
      v28 = v22;
    }

    *this = 0;
    *(this + 1) = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }
  }

  else
  {
    if (a4)
    {
      v10 = *(a3 + 8);
      *(a4 + 24) = *(a3 + 24);
      *(a4 + 8) = v10;
    }

    v11 = *(v9 + 72);
    *this = *(v9 + 64);
    *(this + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

LABEL_36:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }
}

void grl::codec::IconConfigPack::decodeIconRenderItemIfNeeded(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a2 + 232));
  v6 = geo::LRUPolicy<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>,grl::codec::IconConfigPack::IconVariationHash>::get(a2 + 120, (a2 + 80), a3);
  if (a2 + 120 != v6)
  {
    atomic_fetch_add((a2 + 144), 1u);
    v7 = *(v6 + 32);
    *a1 = *(v6 + 24);
    a1[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_55;
  }

  atomic_fetch_add((a2 + 148), 1u);
  *a1 = 0;
  a1[1] = 0;
  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v11 = a2 + 48;
    v12 = *(a3 + 1);
    do
    {
      v13 = *(v8 + 28);
      v14 = v13 >= v9;
      if (v13 == v9)
      {
        v15 = *(v8 + 32);
        v14 = v15 >= v10;
        if (v15 == v10)
        {
          v14 = *(v8 + 30) >= v12;
        }
      }

      v16 = !v14;
      v17 = v16 == 0;
      if (v16)
      {
        v18 = 8;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v11 = v8;
      }

      v8 = *(v8 + v18);
    }

    while (v8);
    if (a2 + 48 != v11)
    {
      v19 = *(v11 + 28);
      v20 = v9 >= v19;
      if (v9 == v19)
      {
        v21 = *(v11 + 32);
        v20 = v10 >= v21;
        if (v10 == v21)
        {
          v20 = v12 >= *(v11 + 30);
        }
      }

      if (v20)
      {
        v38 = 0;
        v39 = 0;
        __p = 0;
        v37 = 0uLL;
        v22 = *(a2 + 176);
        v35[0] = *(a2 + 168);
        v35[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = grl::codec::ResourcePack::decodeChapterSize(v35, *(a2 + 184) + *(v11 + 36) + 16, &v39, &v38);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        if (v23)
        {
          v24 = *(a2 + 168);
          v25 = *(a2 + 176);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v24)
          {
            v26 = v38;
            v27 = *(a2 + 184) + *(v11 + 36) + 32;
            memset(v40, 0, sizeof(v40));
            v41 = v27;
            std::istream::seekg();
            if (v26)
            {
              std::vector<unsigned char>::__append(&__p, v26);
              v28 = __p;
            }

            else
            {
              v28 = 0;
            }

            std::istream::read();
          }

          else
          {
            printf("\n%s : Parse Error Here: - %s : Failed in file - %s line - %i\n", "Pack Stream Is Invalid", "packStream", "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Codec/ResourcePack.cpp", 332);
            v28 = 0;
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          if (!v24)
          {
            printf("\n%s : Parse Error Here: - %s : Failed in file - %s line - %i\n", "Failed to read compressed Icon Data Chapter", "decodePackChunk(_packStream, _packStreamIconDataStart + locationIter->second + (sizeSkip * 2), compressedSize, chapterData)", "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Codec/IconConfigPack.cpp", 338);
            goto LABEL_49;
          }

          grl::codec::ResourcePack::decompressData(v40, v28, v37, v39);
          if (v28)
          {
            *&v37 = v28;
            operator delete(v28);
          }

          __p = *&v40[0];
          v37 = *(v40 + 8);
          if (*(&v40[0] + 1) - *&v40[0] >= 4uLL)
          {
            operator new();
          }

          v29 = 344;
          v30 = "numberOfIcons.has_value()";
          v31 = "Number of Icons could not be read";
        }

        else
        {
          v29 = 337;
          v30 = "decodeChapterSize(_packStream, _packStreamIconDataStart + locationIter->second + sizeSkip, rawSize, compressedSize)";
          v31 = "Failed to read Icon Data Chapter Size";
        }

        printf("\n%s : Parse Error Here: - %s : Failed in file - %s line - %i\n", v31, v30, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Codec/IconConfigPack.cpp", v29);
LABEL_49:
        if (__p)
        {
          operator delete(__p);
        }

        v32 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v32);
        }
      }
    }
  }

  v33 = geo::Cache<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>,grl::codec::IconConfigPack::IconVariationHash,geo::LRUPolicy>::operator[](a2 + 72, a3);
  v34 = v33[1];
  *v33 = 0;
  v33[1] = 0;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

LABEL_55:

  std::mutex::unlock((a2 + 232));
}

uint64_t gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a1 + 12);
  if (v6 == 2)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(v7 + 72);
      if (v8)
      {
        v9 = *v8 + 120 * *(v8 + v5 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9, a2) != *(v9 + 12))
        {
          return 1;
        }
      }

      if (*(a1 + 56))
      {
        v10 = *(a1 + 48);
        v11 = 8 * *(a1 + 56);
        while (1)
        {
          v12 = *(*v10 + 72);
          if (v12)
          {
            v13 = *v12 + 120 * *(v12 + v5 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, a2) != *(v13 + 12))
            {
              return 1;
            }
          }

          v10 += 8;
          v6 = 1;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v6 = 1;
  }

LABEL_15:
  v14 = *(a1 + 16 * v6 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 72);
  if (!v15 || (v16 = *v15 + 120 * *(v15 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) == *(v16 + 12)))
  {
    v18 = a1 + 16 * v6;
    if (*(v18 + 56))
    {
      v19 = *(v18 + 48);
      v20 = 8 * *(v18 + 56);
      while (1)
      {
        v21 = *(*v19 + 72);
        if (v21)
        {
          v22 = *v21 + 120 * *(v21 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, a2) != *(v22 + 12))
          {
            break;
          }
        }

        result = 0;
        v19 += 8;
        v20 -= 8;
        if (!v20)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t grl::IconManager::identifierForMapKeyValue(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = ceilf(a4);
  std::string::basic_string[abi:nn200100]<0>(__p, "Default");
  v29 = v7;
  grl::IconManager::retrieveResourcePack(buf, a1, __p, 2);
  v9 = *buf;
  v8 = v31;
  if (*buf)
  {
    v10 = v31;
  }

  else
  {
    grl::IconManager::loadGlobalResourcePack(buf, a1, __p);
    v9 = *buf;
    v10 = v31;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (!v9)
    {
      if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
      }

      v25 = GEOGetGeoResourceLibIconManagerLog::log;
      if (!os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 67109376;
      *&buf[4] = a2;
      LOWORD(v31) = 1024;
      *(&v31 + 2) = a3;
      v22 = "Failed to find map pack key: %i - value: %i";
      v23 = v25;
      v24 = 14;
      goto LABEL_36;
    }
  }

  v11 = v9[6];
  if (!*&v11)
  {
    goto LABEL_26;
  }

  v12 = (((a2 - 0x61C8864680B583EBLL) << 6) + a3 + ((a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = (((a2 - 0x61C8864680B583EBLL) << 6) + a3 + ((a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
    if (v12 >= *&v11)
    {
      v14 = v12 % *&v11;
    }
  }

  else
  {
    v14 = v12 & (*&v11 - 1);
  }

  v15 = *(v9[5] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_26:
    v19 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v9 + 49, a2);
    if (v19)
    {
      v20 = *(v19 + 5);
      if (v20)
      {
        goto LABEL_38;
      }
    }

    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v21 = GEOGetGeoResourceLibIconManagerLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      v20 = 0;
      goto LABEL_38;
    }

    *buf = 67109632;
    *&buf[4] = a2;
    LOWORD(v31) = 1024;
    *(&v31 + 2) = a3;
    HIWORD(v31) = 2048;
    v32 = v7;
    v22 = "Failed to find ID for Map Value\nKey: %i - Value: %i - Content Scale: %f";
    v23 = v21;
    v24 = 24;
LABEL_36:
    _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_37;
  }

  while (1)
  {
    v17 = v16[1];
    if (v12 == v17)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_26;
    }

LABEL_25:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  if (*(v16 + 4) != a2 || *(v16 + 5) != a3)
  {
    goto LABEL_25;
  }

  v20 = *(v16 + 6);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_38:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  return v20;
}

uint64_t std::operator<=>[abi:nn200100]<std::string,float,std::string,float>(uint64_t a1, uint64_t a2)
{
  v4 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2);
  if (v4)
  {
    return (v4 >> 31) | 1u;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -127;
  }

  if (v6 > v7)
  {
    v8 = 1;
  }

  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

void grl::IconManager::imageForIconID(void *a1, uint64_t a2, unsigned int a3, grl::IconModifiers *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v13 = *(a5 + 6);
  v14 = *(a5 + 8);
  v15 = *(a5 + 4);
  v44 = a3;
  v45 = v13;
  v16 = a3 - 0x61C8864680B583EBLL;
  v46 = v14;
  v47 = v15;
  v17 = (v14 + ((((v16 << 6) + (v16 >> 2) + v13 - 0x61C8864680B583EBLL) ^ v16) << 6) + ((((v16 << 6) + (v16 >> 2) + v13 - 0x61C8864680B583EBLL) ^ v16) >> 2) - 0x61C8864680B583EBLL) ^ ((v16 << 6) + (v16 >> 2) + v13 - 0x61C8864680B583EBLL) ^ v16;
  v43[0] = &unk_1F2A5F7A0;
  v43[1] = (v15 + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583EBLL) ^ v17;
  v41 = 0;
  v42 = 0;
  if (*(a5 + 12))
  {
    (*(**(a2 + 8) + 32))(&v40);
    v18 = *(a5 + 16);
    v19 = *(a5 + 24);
    memset(&v52, 0, sizeof(v52));
    v20 = std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__init_with_size[abi:nn200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v52, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
    v22 = *v40;
    v21 = v40[1];
    v23 = v21 - *v40;
    if (v23 >= 1)
    {
      size = v52.__r_.__value_.__l.__size_;
      if ((v52.__r_.__value_.__r.__words[2] - v52.__r_.__value_.__l.__size_) >= v23)
      {
        v52.__r_.__value_.__l.__size_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(*v40, v21, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v52.__r_.__value_.__l.__size_ - v52.__r_.__value_.__r.__words[0]) >> 3);
        v26 = v25 - 0x5555555555555555 * (v23 >> 3);
        if (v26 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = 0x5555555555555556 * ((v52.__r_.__value_.__r.__words[2] - v52.__r_.__value_.__r.__words[0]) >> 3);
        if (v27 <= v26)
        {
          v27 = v25 - 0x5555555555555555 * (v23 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v52.__r_.__value_.__r.__words[2] - v52.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v28 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v28 = v27;
        }

        v51 = &v53;
        if (v28)
        {
          v29 = grl::zone_mallocator::instance(v20);
          v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v29, v28);
        }

        else
        {
          v30 = 0;
        }

        v33 = &v30[3 * v25];
        v48 = v30;
        v49 = v33;
        *&v50 = v33;
        *(&v50 + 1) = &v30[3 * v28];
        v34 = v33 + v23;
        do
        {
          if (*(v22 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v33, *v22, *(v22 + 1));
          }

          else
          {
            v35 = *v22;
            v33->__shared_weak_owners_ = *(v22 + 2);
            v33->std::__shared_count = v35;
          }

          ++v33;
          v22 = (v22 + 24);
          v23 -= 24;
        }

        while (v23);
        memcpy(v34, size, v52.__r_.__value_.__l.__size_ - size);
        *&v50 = &v34[v52.__r_.__value_.__l.__size_ - size];
        v52.__r_.__value_.__l.__size_ = size;
        v36 = &size[-v52.__r_.__value_.__r.__words[0]];
        v37 = (v49 - &size[-v52.__r_.__value_.__r.__words[0]]);
        memcpy(v37, v52.__r_.__value_.__l.__data_, v36);
        v38 = v52.__r_.__value_.__r.__words[0];
        v39 = v52.__r_.__value_.__r.__words[2];
        v52.__r_.__value_.__r.__words[0] = v37;
        *&v52.__r_.__value_.__r.__words[1] = v50;
        *&v50 = v38;
        *(&v50 + 1) = v39;
        v48 = v38;
        v49 = v38;
        std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(&v48);
      }
    }

    operator new();
  }

  (*(**(a2 + 8) + 32))(&v48);
  v31 = v48;
  v32 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    v41 = v31;
    v42 = v32;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v49);
    }
  }

  else
  {
    v41 = v48;
    v42 = 0;
  }

  grl::IconManager::image(a1, a2, v43, a4, *(a5 + 10), &v41, a6, a7, ceilf(*a5));
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }
}

void grl::ResourceProvider::resourceNamesOfResourceType(uint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v35[0] = a2;
  v35[1] = 0;
  v36 = a3;
  std::mutex::lock((a1 + 176));
  v8 = std::__tree<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::__map_value_compare<grl::ResourceProvider::ResourceCacheKey,std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::less<grl::ResourceProvider::ResourceCacheKey>,true>,std::allocator<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>>>::find<grl::ResourceProvider::ResourceCacheKey>(a1 + 240, v35);
  if (a1 + 248 == v8)
  {
    std::mutex::unlock((a1 + 176));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    (*(*a1 + 24))(&v34, a1, a3);
    if (!v34)
    {
      operator new();
    }

    std::mutex::lock((a1 + 112));
    v10 = *v34;
    v11 = v34[1];
    v32[0] = &v41;
    while (1)
    {
      if (v10 == v11)
      {
        if (v41 == v42 && *v34 != v34[1])
        {
          if (GEOGetGeoResourceLibResourceProviderLog(void)::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibResourceProviderLog(void)::onceToken, &__block_literal_global_54332);
          }

          v18 = GEOGetGeoResourceLibResourceProviderLog(void)::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibResourceProviderLog(void)::log, OS_LOG_TYPE_ERROR))
          {
            v19 = v32;
            grl::buildStringFromResourceNames(v32, *v34, 0xAAAAAAAAAAAAAAABLL * ((v34[1] - *v34) >> 3));
            if (v33 < 0)
            {
              v19 = v32[0];
            }

            if (a2 > 3)
            {
              v20 = "";
            }

            else
            {
              v20 = off_1E7B584C8[a2];
            }

            v21 = 0;
            v22 = 0;
            v31 = 2;
            strcpy(v30, "00");
            do
            {
              v23 = v21;
              if ((a3 >> v22))
              {
                v24 = v22 ^ 1;
                if (v31 >= 0)
                {
                  v25 = v30;
                }

                else
                {
                  v25 = v30[0];
                }

                *(v25 + v24) = 49;
              }

              v21 = 1;
              v22 = 1;
            }

            while ((v23 & 1) == 0);
            if (v31 >= 0)
            {
              v26 = v30;
            }

            else
            {
              v26 = v30[0];
            }

            grl::buildStringFromResourceNames(__p, v41, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
            if (v29 >= 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            LODWORD(v37.__r_.__value_.__l.__data_) = 136315906;
            *(v37.__r_.__value_.__r.__words + 4) = v19;
            WORD2(v37.__r_.__value_.__r.__words[1]) = 2080;
            *(&v37.__r_.__value_.__r.__words[1] + 6) = v20;
            HIWORD(v37.__r_.__value_.__r.__words[2]) = 2080;
            v38 = v26;
            v39 = 2080;
            v40 = v27;
            _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "Resources names got filtered to empty set for resourceType:%s location:%s input:%s output:%s", &v37, 0x2Au);
            if (v29 < 0)
            {
              operator delete(__p[0]);
            }

            if (v31 < 0)
            {
              operator delete(v30[0]);
            }

            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }
        }

        std::mutex::unlock((a1 + 112));
        std::mutex::lock((a1 + 176));
        operator new();
      }

      v12 = *(v10 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = *v10;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v10 + 8);
      }

      if (v12)
      {
        v14 = v13 + v12;
        do
        {
          if (!v12)
          {
            goto LABEL_26;
          }

          v15 = *--v14;
          --v12;
        }

        while (v15 != 46);
        v16 = v14 - v13;
        if (v16 != -1)
        {
          std::string::basic_string(&v37, v10, v16 + 1, 0xFFFFFFFFFFFFFFFFLL, v30);
          grl::ResourceTypeFromPackExtension(v30, &v37);
          if (a2 == BYTE1(v30[0]))
          {
            v17 = LOBYTE(v30[0]);
          }

          else
          {
            v17 = 0;
          }

          if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (!v17)
            {
              goto LABEL_26;
            }

LABEL_25:
            std::back_insert_iterator<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>::operator=[abi:nn200100](v32, v10);
            goto LABEL_26;
          }

          operator delete(v37.__r_.__value_.__l.__data_);
          if (v17)
          {
            goto LABEL_25;
          }
        }
      }

LABEL_26:
      v10 += 24;
    }
  }

  v9 = *(v8 + 56);
  *a4 = *(v8 + 48);
  a4[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 176));
}

BOOL std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] + ((*a1 - 0x61C8864680B583ABLL) >> 2) + (((*a1 - 0x61C8864680B583ABLL) ^ 1) << 6) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583ABLL) ^ 1;
  v3 = (a2[1] + ((*a2 - 0x61C8864680B583ABLL) >> 2) + (((*a2 - 0x61C8864680B583ABLL) ^ 1) << 6) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583ABLL) ^ 1;
  return ((*(a1 + 1) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2) < ((*(a2 + 1) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3);
}

uint64_t std::vector<unsigned int,geo::allocator_adapter<unsigned int,grl::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v5 >> 2) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = grl::zone_mallocator::instance(a1);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v6, v5 >> 2);
    *a1 = v7;
    *(a1 + 8) = v7;
    v8 = &v7[v5];
    *(a1 + 16) = &v7[v5];
    memmove(v7, v4, v5);
    *(a1 + 8) = v8;
  }

  return a1;
}

void grl::codec::IconMapPack::regionNameForID(std::string *this, const unsigned int *a2, unsigned int a3)
{
  v3 = *(a2 + 38);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a2 + 76;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != a2 + 76 && v4[8] <= a3)
  {
    if (*(v4 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(this, *(v4 + 5), *(v4 + 6));
    }

    else
    {
      v8 = *(v4 + 10);
      this->__r_.__value_.__r.__words[2] = *(v4 + 7);
      *&this->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_9:
    std::string::basic_string[abi:nn200100]<0>(this, "Default");
  }
}

grl::zone_mallocator *std::__split_buffer<std::pair<std::string,float>,geo::allocator_adapter<std::pair<std::string,float>,grl::zone_mallocator> &>::~__split_buffer(grl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 2) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 2);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = grl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v6, v5);
  }

  return a1;
}

float *std::__hash_table<std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,std::__unordered_map_hasher<std::pair<std::string,float>,std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,grl::codec::PackKeyHash,std::equal_to<std::pair<std::string,float>>,true>,std::__unordered_map_equal<std::pair<std::string,float>,std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,std::equal_to<std::pair<std::string,float>>,grl::codec::PackKeyHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>>>::find<std::pair<std::string,float>>(void *a1, uint64_t a2)
{
  v4 = grl::codec::PackKeyHash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = *(a2 + 24);
    do
    {
      v16 = *(v11 + 1);
      if (v16 == v6)
      {
        v17 = *(v11 + 39);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v11 + 3);
        }

        if (v17 == v13)
        {
          v19 = v18 >= 0 ? (v11 + 4) : *(v11 + 2);
          if (!memcmp(v19, v14, v13) && v11[10] == v15)
          {
            return v11;
          }
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v16 >= *&v5)
          {
            v16 %= *&v5;
          }
        }

        else
        {
          v16 &= *&v5 - 1;
        }

        if (v16 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}