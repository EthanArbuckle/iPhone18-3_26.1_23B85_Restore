void *sub_1A933F704(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1A933C7E8(v6, v10);
    }

    sub_1A9335A94();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_1A933F830(uint64_t a1, const float **a2, void *a3)
{
  v14 = -1073741824;
  vvpowf(*(a1 + 936), *(a1 + 544), *(a1 + 232), (a1 + 24));
  vvpowf(*(a1 + 960), *(a1 + 544), *a2, (a1 + 24));
  MEMORY[0x1AC588080](*(a1 + 544), 1, &v14, *(a1 + 352), 1, *(a1 + 24));
  MEMORY[0x1AC587FA0](*(a1 + 2216), 1, *(a1 + 352), 1, *(a1 + 352), 1, *(a1 + 24));
  MEMORY[0x1AC588000](*a3, 1, *(a1 + 352), 1, *(a1 + 352), 1, *(a1 + 24));
  v14 = -1073741824;
  MEMORY[0x1AC588080](*(a1 + 256), 1, &v14, *(a1 + 888), 1, *(a1 + 24));
  v14 = 0x40000000;
  MEMORY[0x1AC588030](*(a1 + 888), 1, &v14, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC588000](*(a1 + 232), 1, *(a1 + 888), 1, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC588000](*(a1 + 544), 1, *(a1 + 888), 1, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC5880A0](*(a1 + 352), 1, *(a1 + 888), 1, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC588000](*(a1 + 544), 1, *(a1 + 936), 1, *(a1 + 936), 1, *(a1 + 24));
  MEMORY[0x1AC588080](*(a1 + 936), 1, &v14, *(a1 + 936), 1, *(a1 + 24));
  vDSP_vdiv(*(a1 + 936), 1, *(a1 + 888), 1, *(a1 + 888), 1, *(a1 + 24));
  vDSP_vdiv(*(a1 + 544), 1, *(a1 + 352), 1, *(a1 + 352), 1, *(a1 + 24));
  v14 = 1056964608;
  MEMORY[0x1AC588080](*(a1 + 352), 1, &v14, *(a1 + 352), 1, *(a1 + 24));
  MEMORY[0x1AC588000](*(a1 + 256), 1, *a2, 1, *(a1 + 912), 1, *(a1 + 24));
  MEMORY[0x1AC588000](*(a1 + 888), 1, *(a1 + 960), 1, *(a1 + 960), 1, *(a1 + 24));
  MEMORY[0x1AC587FA0](*(a1 + 912), 1, *(a1 + 352), 1, *(a1 + 352), 1, *(a1 + 24));
  MEMORY[0x1AC587FA0](*(a1 + 960), 1, *(a1 + 352), 1, *(a1 + 352), 1, *(a1 + 24));
  result = MEMORY[0x1AC588080](*(a1 + 232), 1, a1 + 200, *(a1 + 912), 1, *(a1 + 24));
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = 0;
    v9 = *a2;
    v10 = a2[1] - *a2;
    do
    {
      if (v10 == v8 || (v11 = *(a1 + 912), v8 >= (*(a1 + 920) - v11) >> 2))
      {
LABEL_10:
        sub_1A933D390();
      }

      v12 = v9[v8];
      if (v12 < *(v11 + 4 * v8))
      {
        v13 = *(a1 + 352);
        if (v8 >= (*(a1 + 360) - v13) >> 2)
        {
          goto LABEL_10;
        }

        *(v13 + 4 * v8) = v12;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t sub_1A933FB3C(uint64_t a1, const float **a2)
{
  __C = 0;
  v4 = (a1 + 24);
  vDSP_sve(*a2, 1, &__C + 1, *(a1 + 24));
  *(&__C + 1) = 1.0 / *(&__C + 1);
  MEMORY[0x1AC588080](*a2, 1, &__C + 4, *(a1 + 888), 1, *v4);
  vDSP_sve(*(a1 + 352), 1, &__C, *v4);
  *(&__C + 1) = 1.0 / *&__C;
  MEMORY[0x1AC588080](*(a1 + 352), 1, &__C + 4, *(a1 + 912), 1, *v4);
  if (*(a1 + 8) - *a1 <= 0x190uLL)
  {
    sub_1A9577EAC();
  }

  v5 = *(a1 + 1664);
  v6 = (*(a1 + 1672) - v5) >> 2;
  if (*(a1 + 1672) != v5)
  {
    v7 = 0;
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (*(a1 + 1672) - v5) >> 2;
    }

    while (*(v5 + 4 * v7) <= *(*a1 + 412))
    {
      if (v8 == ++v7)
      {
        goto LABEL_10;
      }
    }

    v6 = v7;
  }

LABEL_10:
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = 0;
    v11 = (*(a1 + 204) * v6) * *(a1 + 208);
    v12 = *(a1 + 936);
    v13 = (*(a1 + 944) - v12) >> 2;
    do
    {
      if (v6 >= v10)
      {
        if (v13 <= v10)
        {
          goto LABEL_23;
        }

        v14 = *(a1 + 184);
        v15 = v11 / ((v6 * *(a1 + 208)) - ((*(a1 + 208) - *(a1 + 204)) * v10));
      }

      else
      {
        if (v13 <= v10)
        {
          goto LABEL_23;
        }

        v14 = *(a1 + 184);
        v15 = *(a1 + 208);
      }

      v16 = v14 * v15;
      v12[v10] = v16;
      v17 = *(a1 + 960);
      if (v10 >= (*(a1 + 968) - v17) >> 2)
      {
LABEL_23:
        sub_1A933D390();
      }

      *(v17 + 4 * v10++) = 1.0 - v16;
    }

    while (v9 != v10);
  }

  else
  {
    v12 = *(a1 + 936);
  }

  vvpowf(*(a1 + 888), v12, *(a1 + 888), (a1 + 24));
  vvpowf(*(a1 + 912), *(a1 + 960), *(a1 + 912), (a1 + 24));
  MEMORY[0x1AC588000](*(a1 + 888), 1, *(a1 + 912), 1, *(a1 + 912), 1, *(a1 + 24));
  vDSP_sve(*(a1 + 912), 1, &__C + 1, *(a1 + 24));
  *(&__C + 1) = 1.0 / *(&__C + 1);
  MEMORY[0x1AC588080](*(a1 + 912), 1, &__C + 4, *(a1 + 912), 1, *(a1 + 24));
  return MEMORY[0x1AC588080](*(a1 + 912), 1, &__C, *(a1 + 352), 1, *(a1 + 24));
}

uint64_t sub_1A933FDA0(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  *&v75[12] = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v8 = a4 * 0.5;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = (a4 * 0.5) + -200.0;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  *(a1 + 116) = a4;
  *(a1 + 120) = xmmword_1A95865A0;
  *(a1 + 136) = 0x3F80000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 1065351538;
  *(a1 + 192) = 0;
  *(a1 + 196) = xmmword_1A95865A0;
  *(a1 + 220) = 0;
  *(a1 + 212) = 0;
  *(a1 + 232) = 0u;
  v9 = a1 + 232;
  *(a1 + 228) = 0x40000000;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = xmmword_1A95865B0;
  *(a1 + 584) = xmmword_1A95865C0;
  *(a1 + 600) = 0x430C000041F00000;
  *(a1 + 608) = 1056964608;
  *(a1 + 616) = 150;
  *(a1 + 624) = 10;
  *(a1 + 632) = xmmword_1A9586710;
  *(a1 + 648) = unk_1A9586720;
  *(a1 + 664) = xmmword_1A9586730;
  *(a1 + 680) = unk_1A9586740;
  v70 = xmmword_1A9586770;
  v71 = unk_1A9586780;
  v72 = xmmword_1A9586790;
  v73 = unk_1A95867A0;
  __A = xmmword_1A9586750;
  v69 = unk_1A9586760;
  v74 = 1182400512;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  sub_1A933D404(a1 + 696, &__A, v75, 0x19uLL);
  v70 = xmmword_1A95867D4;
  v71 = unk_1A95867E4;
  v72 = xmmword_1A95867F4;
  v73 = unk_1A9586804;
  __A = xmmword_1A95867B4;
  v69 = unk_1A95867C4;
  v74 = 1109576909;
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  sub_1A933D404(a1 + 720, &__A, v75, 0x19uLL);
  *(v9 + 512) = xmmword_1A95865D0;
  *(a1 + 760) = a3;
  *(a1 + 768) = 2 * a3;
  *(a1 + 776) = a3 + 1;
  *(a1 + 784) = 0;
  *(a1 + 792) = a2;
  *(a1 + 800) = 0;
  *(a1 + 808) = 16843009;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  sub_1A933C770((a1 + 1080), a3 + 1);
  v10 = *(a1 + 1080);
  LODWORD(__A) = 0;
  __B = v8 / a3;
  vDSP_vramp(&__A, &__B, v10, 1, a3 + 1);
  bzero((a1 + 1104), 0x220uLL);
  sub_1A9340BF0(a1 + 1648, (a1 + 1080), *(a1 + 568), *(a1 + 96));
  *(a1 + 1840) = 1101004800;
  *(a1 + 1888) = 0;
  *(a1 + 1844) = 0u;
  *(a1 + 1860) = 0u;
  *(a1 + 1870) = 0u;
  v11 = *(a1 + 776);
  *(a1 + 1896) = 0;
  sub_1A934174C(v11, (a1 + 1904), a4);
  sub_1A93418E8(a1 + 1928, *(a1 + 1648));
  *(a1 + 2368) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2336) = 0u;
  v12 = *(a1 + 792);
  sub_1A9341D78((a1 + 2336), v12);
  sub_1A9341D78((a1 + 2360), v12);
  sub_1A9342010((a1 + 1536), v12);
  sub_1A9342010((a1 + 1560), v12);
  v13 = *(a1 + 768);
  __B = 0.0;
  sub_1A933C954((a1 + 816), v13, &__B, v14);
  v15 = *(a1 + 776);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1104), v15, &__B, v16);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1440), v15, &__B, v17);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1488), v15, &__B, v18);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1512), v15, &__B, v19);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1128), v15, &__B, v20);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1416), v15, &__B, v21);
  __B = 2.2204e-16;
  sub_1A933C954((a1 + 1464), v15, &__B, v22);
  v23 = *(a1 + 776);
  __B = 1.0;
  sub_1A933C954((a1 + 1344), v23, &__B, v24);
  __B = 1.0;
  sub_1A933C954((a1 + 1032), v23, &__B, v25);
  __B = 1.0;
  sub_1A933C954((a1 + 1056), v23, &__B, v26);
  __B = 1.0;
  sub_1A933C954((a1 + 1368), v23, &__B, v27);
  v28 = *(a1 + 776);
  __B = 0.1;
  sub_1A933C954((a1 + 1392), v28, &__B, v29);
  sub_1A9340A7C(a1);
  if (*(a1 + 792))
  {
    operator new();
  }

  v30 = *(a1 + 1648);
  *(a1 + 24) = v30;
  v31 = (*(a1 + 2224) - *(a1 + 2216)) >> 2;
  if (v31 >= v30)
  {
    v31 = v30;
  }

  *(a1 + 1936) = v31;
  sub_1A93387C4((a1 + 840), v30);
  sub_1A93387C4((a1 + 864), v30);
  sub_1A93387C4((a1 + 888), v30);
  sub_1A93387C4((a1 + 912), v30);
  sub_1A93387C4((a1 + 936), v30);
  sub_1A93387C4((a1 + 960), v30);
  sub_1A93387C4((a1 + 984), v30);
  sub_1A93387C4((a1 + 1008), v30);
  v32 = *(a1 + 24);
  sub_1A93387C4((a1 + 1152), v32);
  sub_1A93387C4((a1 + 1176), v32);
  sub_1A93387C4((a1 + 1200), v32);
  sub_1A93387C4((a1 + 1224), v32);
  sub_1A93387C4((a1 + 1248), v32);
  sub_1A93387C4((a1 + 1272), v32);
  sub_1A93387C4((a1 + 1296), v32);
  sub_1A93387C4((a1 + 1320), v32);
  *v33.i32 = *(a1 + 776);
  v66 = v33;
  __x = vmulq_f64(vcvtq_f64_f32(*(a1 + 600)), vdupq_n_s64(0x3FCD791C5F888824uLL));
  v65 = exp(__x.f64[1]);
  v34.f64[0] = exp(__x.f64[0]);
  v34.f64[1] = v65;
  *&v34.f64[0] = vdiv_f32(vcvt_f32_f64(v34), vdup_lane_s32(v66, 0));
  *(a1 + 164) = v34.f64[0];
  v35 = *(a1 + 24);
  __B = 1.0;
  sub_1A933C954(v9, v35, &__B, *&v34.f64[0]);
  v36 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 24), v36, &__B, v37);
  v38 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 48), v38, &__B, v39);
  v40 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 72), v40, &__B, v41);
  v42 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 96), v42, &__B, v43);
  v44 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 120), v44, &__B, v45);
  v46 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 144), v46, &__B, v47);
  v48 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 168), v48, &__B, v49);
  v50 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 216), v50, &__B, v51);
  v52 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 240), v52, &__B, v53);
  v54 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 264), v54, &__B, v55);
  v56 = *(a1 + 24);
  __B = 0.0;
  sub_1A933C954((v9 + 288), v56, &__B, v57);
  v58 = *(a1 + 24);
  __B = 0.1;
  sub_1A933C954((v9 + 312), v58, &__B, v59);
  v60 = *(a1 + 776);
  __B = 0.0;
  sub_1A933C954((v9 + 192), v60, &__B, v61);
  v62 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1A9340624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, void **a28, void **a29, void **a30, void **a31, void **a32, void **a33, void **a34, void **a35, void **a36, void **a37, void **a38, void **a39, void **a40, void **a41, void **a42, uint64_t a43, void **a44, void **a45, void **a46)
{
  v51 = *a9;
  if (*a9)
  {
    *(v46 + 1912) = v51;
    operator delete(v51);
  }

  sub_1A933C6EC((v46 + 1648));
  *(v49 - 224) = *(v49 - 256);
  sub_1A933BEC8((v49 - 224));
  *(v49 - 224) = *(v49 - 248);
  sub_1A933BEC8((v49 - 224));
  v52 = *a42;
  if (*a42)
  {
    *(v46 + 1520) = v52;
    operator delete(v52);
  }

  v53 = *a44;
  if (*a44)
  {
    *(v46 + 1496) = v53;
    operator delete(v53);
  }

  v54 = *a37;
  if (*a37)
  {
    *(v46 + 1472) = v54;
    operator delete(v54);
  }

  v55 = *a45;
  if (*a45)
  {
    *(v46 + 1448) = v55;
    operator delete(v55);
  }

  v56 = *a38;
  if (*a38)
  {
    *(v46 + 1424) = v56;
    operator delete(v56);
  }

  v57 = *a34;
  if (*a34)
  {
    *(v46 + 1400) = v57;
    operator delete(v57);
  }

  v58 = *a35;
  if (*a35)
  {
    *(v46 + 1376) = v58;
    operator delete(v58);
  }

  v59 = *a36;
  if (*a36)
  {
    *(v46 + 1352) = v59;
    operator delete(v59);
  }

  v60 = *a18;
  if (*a18)
  {
    *(v46 + 1328) = v60;
    operator delete(v60);
  }

  v61 = *a19;
  if (*a19)
  {
    *(v46 + 1304) = v61;
    operator delete(v61);
  }

  v62 = *a20;
  if (*a20)
  {
    *(v46 + 1280) = v62;
    operator delete(v62);
  }

  v63 = *a21;
  if (*a21)
  {
    *(v46 + 1256) = v63;
    operator delete(v63);
  }

  v64 = *a22;
  if (*a22)
  {
    *(v46 + 1232) = v64;
    operator delete(v64);
  }

  v65 = *a23;
  if (*a23)
  {
    *(v46 + 1208) = v65;
    operator delete(v65);
  }

  v66 = *a24;
  if (*a24)
  {
    *(v46 + 1184) = v66;
    operator delete(v66);
  }

  v67 = *a25;
  if (*a25)
  {
    *(v46 + 1160) = v67;
    operator delete(v67);
  }

  v68 = *a40;
  if (*a40)
  {
    *(v46 + 1136) = v68;
    operator delete(v68);
  }

  v69 = *a46;
  if (*a46)
  {
    *(v46 + 1112) = v69;
    operator delete(v69);
  }

  v70 = *v48;
  if (*v48)
  {
    *(v46 + 1088) = v70;
    operator delete(v70);
  }

  v71 = *a39;
  if (*a39)
  {
    *(v46 + 1064) = v71;
    operator delete(v71);
  }

  v72 = *a41;
  if (*a41)
  {
    *(v46 + 1040) = v72;
    operator delete(v72);
  }

  v73 = *a26;
  if (*a26)
  {
    *(v46 + 1016) = v73;
    operator delete(v73);
  }

  v74 = *a27;
  if (*a27)
  {
    *(v46 + 992) = v74;
    operator delete(v74);
  }

  v75 = *a28;
  if (*a28)
  {
    *(v46 + 968) = v75;
    operator delete(v75);
  }

  v76 = *a29;
  if (*a29)
  {
    *(v46 + 944) = v76;
    operator delete(v76);
  }

  v77 = *a30;
  if (*a30)
  {
    *(v46 + 920) = v77;
    operator delete(v77);
  }

  v78 = *a31;
  if (*a31)
  {
    *(v46 + 896) = v78;
    operator delete(v78);
  }

  v79 = *a32;
  if (*a32)
  {
    *(v46 + 872) = v79;
    operator delete(v79);
  }

  v80 = *a33;
  if (*a33)
  {
    *(v46 + 848) = v80;
    operator delete(v80);
  }

  v81 = **(v49 - 240);
  if (v81)
  {
    *(v46 + 824) = v81;
    operator delete(v81);
  }

  v82 = *a10;
  if (*a10)
  {
    *(v46 + 728) = v82;
    operator delete(v82);
  }

  v83 = *(v47 + 464);
  if (v83)
  {
    *(v46 + 704) = v83;
    operator delete(v83);
  }

  v84 = *(v47 + 312);
  if (v84)
  {
    *(v46 + 552) = v84;
    operator delete(v84);
  }

  v85 = *(v47 + 288);
  if (v85)
  {
    *(v46 + 528) = v85;
    operator delete(v85);
  }

  v86 = *(v47 + 264);
  if (v86)
  {
    *(v46 + 504) = v86;
    operator delete(v86);
  }

  v87 = *(v47 + 240);
  if (v87)
  {
    *(v46 + 480) = v87;
    operator delete(v87);
  }

  v88 = *(v47 + 216);
  if (v88)
  {
    *(v46 + 456) = v88;
    operator delete(v88);
  }

  v89 = *(v47 + 192);
  if (v89)
  {
    *(v46 + 432) = v89;
    operator delete(v89);
  }

  v90 = *(v47 + 168);
  if (v90)
  {
    *(v46 + 408) = v90;
    operator delete(v90);
  }

  v91 = *(v47 + 144);
  if (v91)
  {
    *(v46 + 384) = v91;
    operator delete(v91);
  }

  v92 = *(v47 + 120);
  if (v92)
  {
    *(v46 + 360) = v92;
    operator delete(v92);
  }

  v93 = *(v47 + 96);
  if (v93)
  {
    *(v46 + 336) = v93;
    operator delete(v93);
  }

  v94 = *(v47 + 72);
  if (v94)
  {
    *(v46 + 312) = v94;
    operator delete(v94);
  }

  v95 = *(v47 + 48);
  if (v95)
  {
    *(v46 + 288) = v95;
    operator delete(v95);
  }

  v96 = *(v47 + 24);
  if (v96)
  {
    *(v46 + 264) = v96;
    operator delete(v96);
  }

  v97 = *v47;
  if (*v47)
  {
    *(v46 + 240) = v97;
    operator delete(v97);
  }

  v98 = *v46;
  if (*v46)
  {
    *(v46 + 8) = v98;
    operator delete(v98);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A9340A7C(uint64_t a1)
{
  v2 = *(a1 + 776);
  v3 = *(a1 + 816);
  if (v2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = xmmword_1A9586570;
    v7 = xmmword_1A9586580;
    v8 = (v3 + 8);
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 2) = v4;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 1) = (v4 + 1);
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = (v4 + 2);
        v8[1] = (v4 + 3);
      }

      v4 += 4;
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
    }

    while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  }

  v13 = 100.0 / (10 * v2 - 10);
  MEMORY[0x1AC588080](v3, 1, &v13, v3, 1);
  vvpowf(*(a1 + 1392), *(a1 + 816), *(a1 + 1392), (a1 + 776));
  __C = 0.0;
  vDSP_sve(*(a1 + 1392), 1, &__C, *(a1 + 776));
  __C = 1.0 / __C;
  return MEMORY[0x1AC588080](*(a1 + 1392), 1, &__C, *(a1 + 1392), 1, *(a1 + 776));
}

uint64_t sub_1A9340BF0(uint64_t a1, char **a2, float a3, float a4)
{
  *(a1 + 16) = 0u;
  v7 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  v39 = (a1 + 112);
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 164) = 0x3DDD2F1B43020000;
  *(a1 + 180) = 0x3F0000003F826131;
  *(a1 + 172) = 0x43F800000;
  if ((a1 + 64) == a2)
  {
    v11 = 0.5;
    v8 = 0.108;
    v9 = 130.0;
    v10 = 1.0;
  }

  else
  {
    sub_1A933F704((a1 + 64), *a2, a2[1], (a2[1] - *a2) >> 2);
    v9 = *(a1 + 164);
    v8 = *(a1 + 168);
    v10 = *(a1 + 172);
    v11 = *(a1 + 184);
  }

  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  v12 = 1.0 / (v8 * 0.43429);
  v13 = v8 / v9;
  v14 = v12 * log10f(((v8 / v9) * a3) + 1.0);
  v15 = (v12 * log10f((v13 * a4) + 1.0)) - v14;
  v16 = vcvtas_u32_f32(v11 * (v10 * v15));
  *a1 = v16;
  sub_1A933C770(&__C, v16);
  v17 = *a1;
  __B = v15 / (*a1 - 1);
  __A = v14;
  vDSP_vramp(&__A, &__B, __C, 1, v17);
  sub_1A9340FAC(v7, *a1);
  v19 = __C;
  v20 = v41;
  if (__C != v41)
  {
    v21 = *(a1 + 24);
    do
    {
      v18 = (__exp10((*v19 / v12)) + -1.0) / (*(a1 + 168) / *(a1 + 164));
      v22 = v18;
      v23 = *(a1 + 32);
      if (v21 >= v23)
      {
        v24 = *v7;
        v25 = v21 - *v7;
        v26 = v25 >> 2;
        v27 = (v25 >> 2) + 1;
        if (v27 >> 62)
        {
          sub_1A9335A94();
        }

        v28 = v23 - v24;
        if (v28 >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v29 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          sub_1A9338A90(v7, v29);
        }

        *(4 * v26) = v22;
        v21 = (4 * v26 + 4);
        memcpy(0, v24, v25);
        v30 = *(a1 + 16);
        *(a1 + 16) = 0;
        *(a1 + 24) = v21;
        *(a1 + 32) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v21++ = v22;
      }

      *(a1 + 24) = v21;
      ++v19;
    }

    while (v19 != v20);
  }

  v31 = ((*(a1 + 72) - *(a1 + 64)) >> 2) * *a1;
  __A = 0.0;
  sub_1A934104C((a1 + 136), v31, &__A, *&v18);
  v32 = *a1;
  __A = 0.0;
  sub_1A934104C((a1 + 40), v32, &__A, v33);
  v34 = *a1;
  __A = 0.0;
  sub_1A934104C((a1 + 88), v34, &__A, v35);
  v36 = (*(a1 + 72) - *(a1 + 64)) >> 2;
  __A = 0.0;
  sub_1A934104C(v39, v36, &__A, v37);
  sub_1A934107C(a1);
  sub_1A9341288(a1);
  if (__C)
  {
    v41 = __C;
    operator delete(__C);
  }

  return a1;
}

void sub_1A9340F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *__p, uint64_t a12)
{
  v16 = v12[17];
  if (v16)
  {
    v12[18] = v16;
    operator delete(v16);
  }

  v17 = *a10;
  if (*a10)
  {
    v12[15] = v17;
    operator delete(v17);
  }

  v18 = v12[11];
  if (v18)
  {
    v12[12] = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    v12[9] = v19;
    operator delete(v19);
  }

  v20 = v12[5];
  if (v20)
  {
    v12[6] = v20;
    operator delete(v20);
  }

  v21 = *v13;
  if (*v13)
  {
    v12[3] = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A9340FAC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_1A9338A90(result, a2);
    }

    sub_1A9335A94();
  }

  return result;
}

void sub_1A934104C(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
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
    sub_1A93412EC(a1, a2 - v4, a3, a4);
  }
}

void sub_1A934107C(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = xmmword_1A9586838;
  v22 = unk_1A9586848;
  v23 = xmmword_1A9586858;
  v24 = 0x460660004604D000;
  v19 = xmmword_1A9586818;
  v20 = unk_1A9586828;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_1A933D404(&v16, &v19, &v25, 0x16uLL);
  v21 = xmmword_1A9586890;
  v22 = unk_1A95868A0;
  v23 = xmmword_1A95868B0;
  v24 = 0x44E1000044E10000;
  v19 = xmmword_1A9586870;
  v20 = unk_1A9586880;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_1A933D404(&v13, &v19, &v25, 0x16uLL);
  v21 = xmmword_1A95868E8;
  v22 = unk_1A95868F8;
  v23 = xmmword_1A9586908;
  v24 = 0x3BA3D70A3C343958;
  v19 = xmmword_1A95868C8;
  v20 = unk_1A95868D8;
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_1A933D404(&__p, &v19, &v25, 0x16uLL);
  v2 = __p;
  v3 = v11;
  if (v11 == __p)
  {
    v5 = a1[8];
  }

  else
  {
    v4 = (v11 - __p) >> 2;
    v5 = a1[8];
    v6 = v13;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v7 = __p;
    do
    {
      v8 = *v6++;
      *v7 = ((v5[1] - *v5) * *v7) / v8;
      ++v7;
      --v4;
    }

    while (v4);
  }

  sub_1A933CBF8(v16, (v17 - v16) >> 2, v2, v5, (a1[9] - v5) >> 2, a1[14], *v2, *(v3 - 1));
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
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

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A934124C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9341288(uint64_t a1)
{
  *a1 = (*(a1 + 24) - *(a1 + 16)) >> 2;
  v2 = *(a1 + 136);
  v3 = *(a1 + 144) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  sub_1A9341534(a1);

  sub_1A93416C0(a1);
}

void sub_1A93412EC(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
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
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1A9586580)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1A9586570)))).i32[1])
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
      sub_1A9335A94();
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
      sub_1A9338A90(a1, v12);
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
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1A9586580)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1A9586570)))).i32[1])
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

void sub_1A9341534(float *a1)
{
  v19 = *a1;
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a1 + 2);
    v5 = *(a1 + 5);
    v6 = *(a1 + 8);
    v18 = *(a1 + 9);
    if ((v18 - v6) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v18 - v6;
    }

    do
    {
      v8 = 1.0 / a1[46] * (a1[45] * (a1[41] + (a1[42] * *(v4 + 4 * v3))));
      *&v8 = v8;
      *(v5 + 4 * v3) = LODWORD(v8);
      a1[40] = 0.0;
      if (v18 != v6)
      {
        *&v8 = a1[44];
        v9 = *&v8;
        v10 = (*(a1 + 17) + v2);
        v11 = v7;
        v12 = v6;
        do
        {
          v13 = (*v12 - *(v4 + 4 * v3));
          v14 = 1.0 / pow(v13 * v13 / (*(v5 + 4 * v3) * *(v5 + 4 * v3)) + 1.0, v9);
          *v10 = v14;
          if (a1[40] < v14)
          {
            a1[40] = v14;
          }

          ++v10;
          ++v12;
          --v11;
        }

        while (v11);
        v15 = v7;
        v16 = v2;
        do
        {
          v17 = a1[40];
          if (v17 != 0.0)
          {
            *(*(a1 + 17) + v16) = *(*(a1 + 17) + v16) / (v17 * a1[43]);
          }

          v16 += 4;
          --v15;
        }

        while (v15);
      }

      ++v3;
      v2 += v18 - v6;
    }

    while (v3 != v19);
  }
}

void sub_1A93416C0(uint64_t a1)
{
  vDSP_mmul(*(a1 + 136), 1, *(a1 + 112), 1, *(a1 + 88), 1, *a1, 1uLL, (*(a1 + 120) - *(a1 + 112)) >> 2);
  __C = 0.0;
  vDSP_sve(*(a1 + 88), 1, &__C, *a1);
  vDSP_vsdiv(*(a1 + 88), 1, &__C, *(a1 + 88), 1, *a1);
}

void *sub_1A934174C@<X0>(unint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  result = sub_1A933C770(a2, a1);
  if (a1)
  {
    *v6.i32 = a3 / (2 * a1 - 2);
    v7 = vdupq_n_s64(a1 - 1);
    v8 = (a1 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v9 = xmmword_1A9586570;
    v10 = xmmword_1A9586580;
    v11 = (*result + 8);
    v12 = vdupq_n_s32(0x43D428CAu);
    v13 = vdupq_n_s32(0x4D0DCF73u);
    v14 = vdupq_n_s32(0x4D328586u);
    v15 = vdupq_n_s32(0x4635145Fu);
    v16 = vdupq_n_s32(0x4904EB8Bu);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18.i64[0] = v9.i64[0] * v9.i64[0];
      v18.i64[1] = v9.i64[1] * v9.i64[1];
      v19 = vmovn_s64(vcgeq_u64(v7, v10));
      v20.i64[0] = v10.i64[0] * v10.i64[0];
      v20.i64[1] = v10.i64[1] * v10.i64[1];
      v21 = vmulq_n_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v20)), vcvtq_f64_u64(v18)), *v6.i32), *v6.i32);
      v22 = vmulq_f32(vdivq_f32(v21, vaddq_f32(v21, v12)), vdivq_f32(v14, vaddq_f32(v21, v13)));
      v23 = vmulq_f32(vdivq_f32(v21, vaddq_f32(v21, v16)), vmulq_f32(vdivq_f32(v21, vaddq_f32(v21, v15)), vmulq_f32(v22, v22)));
      if (vuzp1_s16(v19, v6).u8[0])
      {
        *(v11 - 2) = v23.i32[0];
      }

      if (vuzp1_s16(v19, v6).i8[2])
      {
        *(v11 - 1) = v23.i32[1];
      }

      if (vuzp1_s16(v6, vmovn_s64(vcgeq_u64(v7, *&v9))).i32[1])
      {
        *v11 = v23.i64[1];
      }

      v9 = vaddq_s64(v9, v17);
      v10 = vaddq_s64(v10, v17);
      v11 += 2;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1A93418E8(uint64_t a1, float a2)
{
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0u;
  v3 = (a1 + 192);
  *a1 = 1;
  *(a1 + 240) = 0u;
  v4 = (a1 + 240);
  v5 = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 8) = a2;
  v10 = 0;
  sub_1A9341B30((a1 + 144), a2, &v10);
  v10 = 0;
  sub_1A9341B30((a1 + 168), v5, &v10);
  v10 = 0;
  sub_1A9341B30(v3, v5, &v10);
  v10 = 0;
  sub_1A9341B30((a1 + 216), v5, &v10);
  v10 = 0;
  sub_1A9341B30(v4, v5, &v10);
  v10 = 0;
  sub_1A9341B30((a1 + 264), v5, &v10);
  LODWORD(v10) = 0;
  sub_1A934104C((a1 + 312), v5, &v10, v6);
  LODWORD(v10) = 0;
  sub_1A934104C((a1 + 336), v5, &v10, v7);
  LODWORD(v10) = 0;
  sub_1A934104C((a1 + 288), v5, &v10, v8);
  return a1;
}

void sub_1A9341A34(_Unwind_Exception *exception_object)
{
  v6 = v1[42];
  if (v6)
  {
    v1[43] = v6;
    operator delete(v6);
  }

  v7 = v1[39];
  if (v7)
  {
    v1[40] = v7;
    operator delete(v7);
  }

  v8 = v1[36];
  if (v8)
  {
    v1[37] = v8;
    operator delete(v8);
  }

  v9 = v1[33];
  if (v9)
  {
    v1[34] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[31] = v10;
    operator delete(v10);
  }

  v11 = v1[27];
  if (v11)
  {
    v1[28] = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    v1[25] = v12;
    operator delete(v12);
  }

  v13 = v1[21];
  if (v13)
  {
    v1[22] = v13;
    operator delete(v13);
  }

  v14 = *v2;
  if (*v2)
  {
    v1[19] = v14;
    operator delete(v14);
  }

  v15 = v1[15];
  if (v15)
  {
    v1[16] = v15;
    operator delete(v15);
  }

  v16 = v1[12];
  if (v16)
  {
    v1[13] = v16;
    operator delete(v16);
  }

  v17 = v1[9];
  if (v17)
  {
    v1[10] = v17;
    operator delete(v17);
  }

  v18 = v1[6];
  if (v18)
  {
    v1[7] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9341B30(void *a1, unint64_t a2, uint64_t *a3)
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
    sub_1A9341B60(a1, a2 - v3, a3);
  }
}

void sub_1A9341B60(uint64_t a1, unint64_t a2, uint64_t *a3)
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
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1A9586580)));
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
      sub_1A9335A94();
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
      sub_1A9341D30(a1, v11);
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
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1A9586580)));
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

void sub_1A9341D30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1A9335858();
}

void sub_1A9341D78(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        sub_1A933C5AC(--v3, 0);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1A9341E08(a1, v5);
  }
}

void sub_1A9341E08(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1A9335A94();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_1A9341F2C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_1A9341F74(v14);
  }
}

void sub_1A9341F2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1A9335858();
}

uint64_t sub_1A9341F74(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1A933C5AC((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A9341FC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1A9335858();
}

void sub_1A9342010(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1A93420B8(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_1A93420B8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1A9335A94();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1A9342224(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1A934227C(v18);
  }
}

void sub_1A9342224(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1A9335858();
}

uint64_t sub_1A934227C(uint64_t a1)
{
  sub_1A93422B4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A93422B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_1A9342314(void *a1, float *a2)
{
  v3 = a1[208];
  v4 = (a1[209] - v3) >> 2;
  if (a1[209] == v3)
  {
LABEL_7:
    v5 = (a1[209] - v3) >> 2;
  }

  else
  {
    v5 = 0;
    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a1[209] - v3) >> 2;
    }

    while (*(v3 + 4 * v5) <= *a2)
    {
      if (v6 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  a1[206] = v4;
  sub_1A93416C0((a1 + 206));
  a1[3] = a1[206];
}

uint64_t sub_1A9342390(uint64_t a1)
{
  __C = 0.0;
  vDSP_maxv(*(a1 + 1736), 1, &__C, *(a1 + 24));
  v2 = logf(1.0 - *(a1 + 584));
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 1736);
    v6 = *(a1 + 1152);
    v7 = v2 / __C;
    do
    {
      *(v6 + 4 * v4) = 1.0 - expf(v7 * *(v5 + 4 * v4));
      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    v6 = *(a1 + 1152);
  }

  MEMORY[0x1AC588010](v6, 1, *(a1 + 1176), 1, v3);
  v9 = 1065353216;
  MEMORY[0x1AC588030](*(a1 + 1176), 1, &v9, *(a1 + 1200), 1, *(a1 + 24));
  MEMORY[0x1AC588030](*(a1 + 1176), 1, a1 + 752, *(a1 + 1176), 1, *(a1 + 24));
  MEMORY[0x1AC588080](*(a1 + 1152), 1, a1 + 756, *(a1 + 1224), 1, *(a1 + 24));
  return MEMORY[0x1AC588000](*(a1 + 1224), 1, *(a1 + 1320), 1, *(a1 + 1224), 1, *(a1 + 24));
}

uint64_t ausdk::AUMIDIBase::HandleMIDIEvent(ausdk::AUMIDIBase *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(*(this + 1) + 17) != 1)
  {
    return 4294956429;
  }

  if (a2 >> 4 == 8)
  {
    return (*(*this + 88))(this, a3, a4, a5, a6);
  }

  if (a2 >> 4 != 9)
  {
    return (*(*this + 72))();
  }

  v6 = *this;
  if (a5)
  {
    return (*(v6 + 80))();
  }

  else
  {
    return (*(v6 + 88))();
  }
}

uint64_t ausdk::AUMIDIBase::HandleNonNoteEvent(ausdk::AUMIDIBase *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 >> 4;
  if (a2 >> 4 > 0xB)
  {
    switch(v6)
    {
      case 0xCu:
        return (*(*this + 120))(this, a3, a4);
      case 0xDu:
        return (*(*this + 112))(this, a3, a4, a6);
      case 0xEu:
        return (*(*this + 104))(this, a3, a4, a5, a6);
    }

    return 0;
  }

  if (v6 == 10)
  {
    return (*(*this + 128))(this, a3, a4, a5, a6);
  }

  if (v6 != 11)
  {
    return 0;
  }

  v8 = *this;
  switch(a4)
  {
    case 'x':
      return v8[19]();
    case 'y':
      return v8[17]();
    case '{':
      return v8[18]();
  }

  return v8[12]();
}

uint64_t ausdk::AUMIDIBase::SysEx(ausdk::AUMIDIBase *this, const unsigned __int8 *a2)
{
  if (*(*(this + 1) + 17) == 1)
  {
    return (*(*this + 160))(this, a2);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t TTSPreferencesSetValueForKey(const __CFString *a1, const void *a2)
{
  CFPreferencesSetAppValue(a1, a2, @"com.apple.SpeakSelection");

  return CFPreferencesAppSynchronize(@"com.apple.SpeakSelection");
}

id TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences()
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A93429B4;
  v19 = sub_1A93429C4;
  v20 = 0;
  v0 = dispatch_semaphore_create(0);
  v5 = objc_msgSend_shared(_TtC12TextToSpeech13VoiceResolver, v1, v2, v3, v4);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A93429CC;
  v12[3] = &unk_1E7880228;
  v14 = &v15;
  v6 = v0;
  v13 = v6;
  objc_msgSend_currentSystemLocaleIdentifierWithCompletionHandler_(v5, v7, v12, v8, v9);

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);
  return v10;
}

void sub_1A934299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A93429B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A93429CC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id TTSLanguageCanonicalFormToGeneralLanguage(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lowercaseString(a1, a2, a3, a4, a5);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F1D0F870, v6, &v23, v27, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(&unk_1F1D0F870);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if (objc_msgSend_rangeOfString_(v5, v8, v14, v9, v10) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = objc_msgSend_rangeOfString_(v5, v8, v14, v9, v10);
          v15 = objc_msgSend_substringToIndex_(v5, v17, v16, v18, v19);
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F1D0F870, v8, &v23, v27, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = v5;
LABEL_11:
  v20 = v15;

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

id VOTBundle(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1ED970288;
  if (!qword_1ED970288)
  {
    v6 = objc_msgSend_stringByAppendingString_(&stru_1F1CFF8D8, a2, @"/System/Library/CoreServices/VoiceOverTouch.app", a4, a5);
    v10 = objc_msgSend_bundleWithPath_(MEMORY[0x1E696AAE8], v7, v6, v8, v9);
    v11 = qword_1ED970288;
    qword_1ED970288 = v10;

    if (!qword_1ED970288)
    {
      sub_1A957816C(v6, v12, v13, v14, v15);
    }

    v5 = qword_1ED970288;
  }

  return v5;
}

BOOL TTSisSpeakableEmojiString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (objc_msgSend_UTF8String(v2, v3, v4, v5, v6))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3010000000;
    v22 = 0;
    v23 = 0;
    v21 = &unk_1A95FC00D;
    objc_msgSend_length(v1, v7, v8, v9, v10);
    CEMEnumerateEmojiTokensInStringWithBlock();
    v11 = v19[5];
    v16 = v11 == objc_msgSend_length(v1, v12, v13, v14, v15);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1A9342D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A9342D1C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(*(result + 32) + 8);
  if (a3 <= *(v5 + 40) + *(v5 + 32))
  {
    *(v5 + 40) = a3 + a4;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void sub_1A9342E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A9342E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(*(result + 32) + 8);
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *a5 = 1;
  return result;
}

uint64_t sub_1A9342F70()
{
  qword_1ED9702A0 = dispatch_queue_create("internal-emoji-locale-cache", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9342FB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_isEqualToString_(qword_1ED970298, a2, *(a1 + 32), a4, a5);
  if ((result & 1) == 0)
  {
    v11 = objc_msgSend_copy(*(a1 + 32), v7, v8, v9, v10);
    v12 = qword_1ED970298;
    qword_1ED970298 = v11;

    if (qword_1ED970290)
    {
      CFRelease(qword_1ED970290);
      qword_1ED970290 = 0;
    }

    result = CEMCreateEmojiLocaleData();
    qword_1ED970290 = result;
  }

  return result;
}

void sub_1A93431CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1A93431F0(uint64_t a1)
{
  result = qword_1ED970290;
  if (qword_1ED970290)
  {
    result = CFRetain(qword_1ED970290);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1A934322C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 24) + a3, a4, &stru_1F1CFF8D8);
  *(*(*(a1 + 40) + 8) + 24) -= a4;
  return result;
}

void sub_1A934340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1A9343424(uint64_t a1)
{
  result = qword_1ED970290;
  if (qword_1ED970290)
  {
    result = CFRetain(qword_1ED970290);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_1A9343460(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CEMEmojiTokenCopyName();
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @" %@ ", v5, v6, v3);

  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1A93436C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A93436D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12 = v7;
  if (*(a1 + 80) == 1)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = VOTBundle(v7, v8, v9, v10, v11);
    v15 = *(a1 + 32);
    v16 = AXNSLocalizedStringForLocale();
    v20 = objc_msgSend_stringWithFormat_(v13, v17, v16, v18, v19, v12);

    v12 = v20;
  }

  if (*(a1 + 40) && a2 + a3 < objc_msgSend_length(*(a1 + 48), v8, v9, v10, v11))
  {
    v23 = objc_msgSend_stringByAppendingString_(v12, v8, *(a1 + 40), v21, v22);

    v12 = v23;
  }

  objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 56), v8, *(*(*(a1 + 72) + 8) + 24) + a2, a3, v12);
  v24 = *(a1 + 64);
  v48[0] = @"originalRange";
  v27 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v25, a2, a3, v26);
  v48[1] = @"processedRange";
  v49[0] = v27;
  v28 = MEMORY[0x1E696B098];
  v29 = *(*(*(a1 + 72) + 8) + 24);
  v34 = objc_msgSend_length(v12, v30, v31, v32, v33);
  v37 = objc_msgSend_valueWithRange_(v28, v35, v29 + a2, v34, v36);
  v49[1] = v37;
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v38, v49, v48, 2);
  objc_msgSend_addObject_(v24, v40, v39, v41, v42);

  *(*(*(a1 + 72) + 8) + 24) += objc_msgSend_length(v12, v43, v44, v45, v46) - a3;
  v47 = *MEMORY[0x1E69E9840];
}

char *CAStringForOSType(unsigned int a1, char *__dst, size_t a3, int8x8_t a4)
{
  a4.i32[0] = bswap32(a1);
  v5 = vzip1_s8(a4, a4);
  v6.i64[0] = 0x1F0000001FLL;
  v6.i64[1] = 0x1F0000001FLL;
  v7.i64[0] = 0x5F0000005FLL;
  v7.i64[1] = 0x5F0000005FLL;
  v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
  v11 = 4;
  *__source = vuzp1_s8(v8, v8).u32[0];
  __source[4] = 0;
  strlcpy(__dst, __source, a3);
  if (v11 < 0)
  {
    operator delete(*__source);
  }

  return __dst;
}

void sub_1A9343970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *CAStreamBasicDescription::VirtualizeLinearPCMFormat(_DWORD *this, AudioStreamBasicDescription *a2)
{
  if (this[2] == 1819304813 && (this[3] & 0x40) == 0)
  {
    v2 = 4 * this[7];
    this[3] = 9;
    this[4] = v2;
    this[5] = 1;
    this[6] = v2;
    this[8] = 32;
  }

  return this;
}

uint64_t CAStreamBasicDescription::VirtualizeLinearPCMFormat(uint64_t this, _DWORD *a2, AudioStreamBasicDescription *a3)
{
  if (a2[2] == 1819304813 && (a2[3] & 0x40) == 0)
  {
    if (this)
    {
      v3 = 9;
    }

    else
    {
      v3 = 11;
    }

    v4 = 4 * a2[7];
    a2[3] = v3;
    a2[4] = v4;
    a2[5] = 1;
    a2[6] = v4;
    a2[8] = 32;
  }

  return this;
}

double CAStreamBasicDescription::ResetFormat(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t CAStreamBasicDescription::FillOutFormat(uint64_t this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  if (*this == 0.0)
  {
    *this = a2->mSampleRate;
  }

  if (!*(this + 8))
  {
    *(this + 8) = a2->mFormatID;
  }

  if (!*(this + 12))
  {
    *(this + 12) = a2->mFormatFlags;
  }

  if (!*(this + 16))
  {
    *(this + 16) = a2->mBytesPerPacket;
  }

  if (!*(this + 20))
  {
    *(this + 20) = a2->mFramesPerPacket;
  }

  if (!*(this + 24))
  {
    *(this + 24) = a2->mBytesPerFrame;
  }

  if (!*(this + 28))
  {
    *(this + 28) = a2->mChannelsPerFrame;
  }

  if (!*(this + 32))
  {
    *(this + 32) = a2->mBitsPerChannel;
  }

  return this;
}

BOOL CAStreamBasicDescription::IsEqual(CAStreamBasicDescription *this, const AudioStreamBasicDescription *a2, int a3)
{
  if (a3)
  {
    return sub_1A9344164(this, &a2->mSampleRate, 3u);
  }

  if (*this == a2->mSampleRate && *(this + 2) == a2->mFormatID && *(this + 3) == a2->mFormatFlags && *(this + 4) == a2->mBytesPerPacket && *(this + 5) == a2->mFramesPerPacket && *(this + 6) == a2->mBytesPerFrame && *(this + 7) == a2->mChannelsPerFrame)
  {
    return *(this + 8) == a2->mBitsPerChannel;
  }

  return 0;
}

BOOL MinimalSafetyCheck(const AudioStreamBasicDescription *a1)
{
  result = 0;
  if (a1->mSampleRate >= 0.0 && a1->mSampleRate < 3000000.0)
  {
    mBytesPerPacket = a1->mBytesPerPacket;
    if (mBytesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mFramesPerPacket = a1->mFramesPerPacket;
    if (mFramesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mBytesPerFrame = a1->mBytesPerFrame;
    if (mBytesPerFrame >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if (a1->mChannelsPerFrame - 1 > 0x3FF || a1->mBitsPerChannel > 0x400)
    {
      return result;
    }

    mFormatID = a1->mFormatID;
    if (!mFormatID)
    {
      return 0;
    }

    v8 = mFramesPerPacket == 1 && mBytesPerPacket == mBytesPerFrame;
    return mFormatID != 1819304813 || v8;
  }

  return result;
}

uint64_t CAStreamBasicDescription::FromText(CAStreamBasicDescription *this, char *a2, AudioStreamBasicDescription *a3)
{
  if (*this == 45)
  {
    v5 = (this + 1);
  }

  else
  {
    v5 = this;
  }

  v6 = *v5;
  if (v6 == 76)
  {
    v7 = 2 * (*(v5 + 1) == 69);
    i = 12;
  }

  else
  {
    if (v6 != 66)
    {
      i = 12;
      goto LABEL_12;
    }

    v7 = 2 * (*(v5 + 1) == 69);
    if (*(v5 + 1) == 69)
    {
      i = 14;
    }

    else
    {
      i = 12;
    }
  }

  v5 = (v5 + v7);
  v6 = *v5;
LABEL_12:
  v9 = MEMORY[0x1E69E9848];
  switch(v6)
  {
    case 'U':
      i &= 0xAu;
      v10 = *(v5 + 1);
      v5 = (v5 + 1);
      v6 = v10;
      break;
    case 'F':
      i = i & 0xFFFFFFFA | 1;
      goto LABEL_17;
    case 'I':
LABEL_17:
      v11 = (v5 + 1);
      if (*(v5 + 1) < 0)
      {
        v13 = 0;
      }

      else
      {
        v12 = *(v5 + 1);
        if ((*(MEMORY[0x1E69E9830] + 4 * *(v5 + 1) + 60) & 0x400) != 0)
        {
          v13 = 0;
          v11 = (v5 + 2);
          while (1)
          {
            v13 = v12 + 10 * v13 - 48;
            if (*v11 < 0)
            {
              break;
            }

            v18 = *v11;
            v12 = *v11;
            v11 = (v11 + 1);
            if ((*(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x400) == 0)
            {
              v5 = (v11 - 2);
              v11 = (v11 - 1);
              goto LABEL_33;
            }
          }
        }

        else
        {
          v13 = 0;
LABEL_33:
          if (v12 == 46)
          {
            v21 = *(v5 + 2);
            v19 = (v5 + 2);
            v20 = v21;
            if (v21 < 0 || (v22 = v20, (*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x400) == 0))
            {
              v23 = *MEMORY[0x1E69E9848];
              v24 = "Expected fractional bits following '.'\n";
              v25 = 39;
LABEL_37:
              fwrite(v24, v25, 1uLL, v23);
              goto LABEL_101;
            }

            v29 = 0;
            v11 = v19;
            do
            {
              if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x400) == 0)
              {
                break;
              }

              v30 = *(v11 + 1);
              v11 = (v11 + 1);
              v29 = 10 * v29 + v22 - 48;
              v22 = v30;
            }

            while ((v30 & 0x80000000) == 0);
            v13 += v29;
            i |= v29 << 7;
          }
        }
      }

      v28 = 1819304813;
      v26 = (v13 + 7) >> 3;
      if ((v13 & 7) != 0)
      {
        i = i & 0xFFFFFFE7 | 0x10;
      }

      v27 = 1;
      goto LABEL_50;
  }

  v14 = 0;
  __c = 538976288;
  v15 = this;
  v11 = this;
  while (1)
  {
    v17 = *v11;
    v11 = (v11 + 1);
    v16 = v17;
    if (v17 == 92)
    {
      if (*v11 != 120)
      {
        return 0;
      }

      v51 = 0;
      if (sscanf(v15 + 2, "%02X", &v51) != 1)
      {
        return 0;
      }

      *(&__c + v14) = v51;
      v11 = (v15 + 4);
      goto LABEL_26;
    }

    *(&__c + v14) = v16;
    if (!v16)
    {
      break;
    }

LABEL_26:
    ++v14;
    v15 = v11;
    if (v14 == 4)
    {
      goto LABEL_40;
    }
  }

  if (v14 != 3)
  {
    return 0;
  }

  HIBYTE(__c) = 32;
  v11 = v15;
LABEL_40:
  if (memchr("-@/#", SHIBYTE(__c), 5uLL))
  {
    HIBYTE(__c) = 32;
    v11 = (v11 - 1);
  }

  i = 0;
  v26 = 0;
  v27 = 0;
  v13 = 0;
  v28 = bswap32(__c);
LABEL_50:
  v31 = *v11;
  if (v31 != 64)
  {
    v33 = 0.0;
    goto LABEL_57;
  }

  v32 = *(v11 + 1);
  v11 = (v11 + 1);
  LOBYTE(v31) = v32;
  if (v32 < 0)
  {
    goto LABEL_100;
  }

  v33 = 0.0;
  while ((*(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x400) != 0)
  {
    v33 = (v31 - 48) + v33 * 10.0;
    v34 = *(v11 + 1);
    v11 = (v11 + 1);
    LOBYTE(v31) = v34;
    if (v34 < 0)
    {
      goto LABEL_100;
    }
  }

LABEL_57:
  if (v31 == 47)
  {
    for (i = 0; ; i = (v36 + v35) | (16 * i))
    {
      v11 = (v11 + 1);
      v35 = *v11;
      if ((v35 - 48) >= 0xA)
      {
        v31 = *v11;
        if ((v31 - 65) >= 6)
        {
          if ((v31 - 97) > 5)
          {
            break;
          }

          v36 = -87;
        }

        else
        {
          v36 = -55;
        }
      }

      else
      {
        v36 = -48;
      }
    }
  }

  if (v31 != 35)
  {
    v37 = v31;
    v39 = v27;
    goto LABEL_73;
  }

  v38 = *(v11 + 1);
  v11 = (v11 + 1);
  v37 = v38;
  if (v38 < 0)
  {
    goto LABEL_100;
  }

  v39 = v27;
  while ((*(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x400) != 0)
  {
    v39 = 10 * v39 + v37 - 48;
    v40 = *(v11 + 1);
    v11 = (v11 + 1);
    v37 = v40;
    if (v40 < 0)
    {
      goto LABEL_100;
    }
  }

LABEL_73:
  if (v37 != 58)
  {
LABEL_82:
    if (v37 != 44)
    {
      goto LABEL_99;
    }

    v44 = v11 + 1;
    v45 = *(v11 + 1);
    if ((*(v11 + 1) & 0x80000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * *(v11 + 1) + 60) & 0x400) != 0)
    {
      v27 = 0;
      v46 = v11 + 2;
      do
      {
        v44 = v46;
        v27 = v45 + 10 * v27 - 48;
        v47 = *v46;
        v45 = v47;
        if (v47 < 0)
        {
          break;
        }

        v48 = *(MEMORY[0x1E69E9830] + 4 * v47 + 60);
        v46 = v44 + 1;
      }

      while ((v48 & 0x400) != 0);
      v11 = (v44 - 1);
    }

    else
    {
      v27 = 0;
    }

    if (v45 == 73)
    {
      v44 = v11 + 2;
    }

    else if (v45 == 68)
    {
      if (v28 != 1819304813)
      {
        v23 = *v9;
        v24 = "non-interleaved flag invalid for non-PCM formats\n";
        v25 = 49;
        goto LABEL_37;
      }

      v11 = (v11 + 2);
      i |= 0x20u;
LABEL_99:
      if (*v11)
      {
        goto LABEL_100;
      }

      *a2 = v33;
      *(a2 + 2) = v28;
      *(a2 + 3) = i;
      *(a2 + 4) = v26;
      *(a2 + 5) = v39;
      *(a2 + 6) = v26;
      *(a2 + 7) = v27;
      result = 1;
      *(a2 + 8) = v13;
      *(a2 + 9) = 0;
      return result;
    }

    if (v28 == 1819304813)
    {
      v49 = v27;
    }

    else
    {
      v49 = 1;
    }

    v26 *= v49;
    v11 = v44;
    goto LABEL_99;
  }

  i &= 0xFFFFFFE7;
  v41 = *(v11 + 1);
  if (v41 == 76)
  {
    goto LABEL_77;
  }

  if (v41 == 72)
  {
    i |= 0x10u;
LABEL_77:
    v42 = *(v11 + 2);
    v11 = (v11 + 2);
    v37 = v42;
    if ((v42 & 0x80000000) == 0)
    {
      v26 = 0;
      while ((*(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x400) != 0)
      {
        v43 = *(v11 + 1);
        v11 = (v11 + 1);
        v26 = 10 * v26 + v37 - 48;
        v37 = v43;
        if (v43 < 0)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_82;
    }

LABEL_100:
    fprintf(*v9, "extra characters at end of format string: %s\n", v11);
  }

LABEL_101:
  fprintf(*v9, "Invalid format string: %s\n", this);
  fwrite("Syntax of format strings is: \n", 0x1EuLL, 1uLL, *v9);
  return 0;
}

BOOL sub_1A9344164(double *a1, double *a2, unsigned int a3)
{
  v4 = *a1;
  if (a3)
  {
    if (v4 == 0.0 || (*a2 != 0.0 ? (v7 = v4 == *a2) : (v7 = 1), v7))
    {
      v8 = *(a1 + 2);
      if (!v8 || (v9 = *(a2 + 2)) == 0 || v8 == v9)
      {
        v10 = *(a1 + 4);
        if (!v10 || (v11 = *(a2 + 4)) == 0 || v10 == v11)
        {
          v12 = *(a1 + 5);
          if (!v12 || (v13 = *(a2 + 5)) == 0 || v12 == v13)
          {
            v14 = *(a1 + 6);
            if (!v14 || (v15 = *(a2 + 6)) == 0 || v14 == v15)
            {
              v16 = *(a1 + 7);
              if (!v16 || (v17 = *(a2 + 7)) == 0 || v16 == v17)
              {
                v18 = *(a1 + 8);
                if (!v18 || (v19 = *(a2 + 8)) == 0 || v18 == v19)
                {
                  v20 = 1;
                  if (v8)
                  {
                    if (*(a2 + 2))
                    {
                      v21 = *(a1 + 3);
                      if (v21)
                      {
                        v22 = *(a2 + 3);
                        if (v22)
                        {
                          if (v8 == 1819304813)
                          {
                            v23 = (a3 >> 1) & 1;
                            v24 = sub_1A93443D0(a1, v23);
                            return v24 == sub_1A93443D0(a2, v23);
                          }

                          else
                          {
                            return v21 == v22;
                          }
                        }
                      }
                    }
                  }

                  return v20;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v4 != *a2 || *(a1 + 2) != *(a2 + 2) || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = (a3 >> 1) & 1;

  return sub_1A934432C(a1, a2, v5, 0);
}

BOOL sub_1A934432C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    v6.i64[0] = *(a1 + 8);
    v6.i64[1] = *(a2 + 8);
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(v6))))
    {
      return 1;
    }
  }

  if (*(a1 + 8) == 1819304813)
  {
    v8 = sub_1A93443D0(a1, a3);
    return v8 == sub_1A93443D0(a2, a3);
  }

  else
  {
    return *(a1 + 12) == *(a2 + 12);
  }
}

uint64_t sub_1A93443D0(_DWORD *a1, int a2)
{
  v2 = a1[3];
  if (a1[2] != 1819304813)
  {
    return v2;
  }

  v3 = v2 & 0x7FFFFFFF;
  if ((v2 & 0x7FFFFFFF) == 0)
  {
    v3 = a1[3];
  }

  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 0xFFFFFFBF;
  }

  v5 = a1[6];
  if (!v5)
  {
    v9 = v4 | 8;
    v6 = a1[7];
    v8 = a1[8];
LABEL_15:
    v10 = v8 == 0;
    goto LABEL_16;
  }

  v6 = a1[7];
  if ((v2 & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[7];
  }

  if (!v7)
  {
    v5 = 0;
    v8 = a1[8];
    v9 = v4 | 8;
    goto LABEL_15;
  }

  v5 = 8 * (v5 / v7);
  v8 = a1[8];
  v9 = v4 | 8;
  v10 = v5 == v8;
LABEL_16:
  if (v10)
  {
    v4 = v9;
  }

  v11 = (v8 & 7) == 0 && v5 == v8;
  v12 = v4 & 0xFFFFFFEF;
  if (!v11)
  {
    v12 = v4;
  }

  if (v12)
  {
    v12 &= ~4u;
  }

  v13 = (v12 & 8) == 0 || v8 > 8;
  LODWORD(v2) = v12 & 2;
  if (v13)
  {
    LODWORD(v2) = v12;
  }

  if (v6 == 1)
  {
    LODWORD(v2) = v2 & 0xFFFFFFDF;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t sub_1A9344494(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isNoveltyVoice = objc_msgSend_isNoveltyVoice(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_synthesisProviderVoice(a1, v7, v8, v9, v10);
  v16 = v11;
  if (v11 && objc_msgSend_isPersonalVoice(v11, v12, v13, v14, v15))
  {
    isNoveltyVoice |= 2uLL;
  }

  return isNoveltyVoice;
}

id sub_1A93444EC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_identifier(a1, a2, a3, a4, a5);
  v9 = objc_msgSend_audioFileSettingsForVoice_(TTSSpeechManager, v6, v5, v7, v8);

  return v9;
}

id sub_1A9344548(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v8 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, v4, v5, v6, v7);
  v12 = objc_msgSend_internalVoiceWithIdentifier_(v8, v9, v3, v10, v11);

  return v12;
}

uint64_t sub_1A93445F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v17.receiver = a1;
  v17.super_class = &off_1F1D1F7D8;
  v5 = objc_msgSendSuper2(&v17, sel_init);
  if (v5)
  {
    v10 = v5;
    v11 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, v6, v7, v8, v9);
    v15 = objc_msgSend_voiceWithLanguageCode_(v11, v12, v4, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1A9344694(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, a2, a3, a4, a5);
  v9 = objc_msgSend_internalVoicesIncludingSiri_(v5, v6, 1, v7, v8);

  return v9;
}

id sub_1A93446EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, a2, a3, a4, a5);
  v9 = objc_msgSend_internalVoicesIncludingSiri_(v5, v6, 1, v7, v8);

  return v9;
}

id sub_1A9344744(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, a2, a3, a4, a5);
  v9 = objc_msgSend_internalVoicesIncludingSiri_(v5, v6, 0, v7, v8);

  return v9;
}

id sub_1A934479C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, a2, a3, a4, a5);
  v9 = objc_msgSend_internalVoicesIncludingSiri_(v5, v6, 1, v7, v8);

  return v9;
}

id sub_1A93447F4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v6 = off_1EB390FB0;
  v63 = off_1EB390FB0;
  if (!off_1EB390FB0)
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = sub_1A93457C4;
    v59[3] = &unk_1E787FF60;
    v59[4] = &v60;
    sub_1A93457C4(v59, a2, a3, a4, a5);
    v6 = v61[3];
  }

  _Block_object_dispose(&v60, 8);
  if (!v6)
  {
    sub_1A9578214(v7, v8, v9, v10, v11);
  }

  if (v6())
  {
    v16 = MEMORY[0x1E696AEC0];
    isInstalled = objc_msgSend_isInstalled(a1, v12, v13, v14, v15);
    v22 = objc_msgSend_assetSize(a1, v18, v19, v20, v21);
    canBeDownloaded = objc_msgSend_canBeDownloaded(a1, v23, v24, v25, v26);
    v31 = objc_msgSend_stringWithFormat_(v16, v28, @" (Installed: %d, Size: %d, Can be downloaded: %d)", v29, v30, isInstalled, v22, canBeDownloaded);
  }

  else
  {
    v31 = &stru_1F1CFF8D8;
  }

  v32 = MEMORY[0x1E696AEC0];
  v33 = objc_opt_class();
  v38 = objc_msgSend_language(a1, v34, v35, v36, v37);
  v43 = objc_msgSend_name(a1, v39, v40, v41, v42);
  if (objc_msgSend_quality(a1, v44, v45, v46, v47) == 1)
  {
    v52 = @"Default";
  }

  else if (objc_msgSend_quality(a1, v48, v49, v50, v51) == 2)
  {
    v52 = @"Enhanced";
  }

  else
  {
    v52 = @"Premium";
  }

  v53 = objc_msgSend_identifier(a1, v48, v49, v50, v51);
  v57 = objc_msgSend_stringWithFormat_(v32, v54, @"[%@ %p] Language: %@, Name: %@, Quality: %@ [%@]%@", v55, v56, v33, a1, v38, v43, v52, v53, v31);

  return v57;
}

void sub_1A93449E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9344A00(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FA2, v6, 1);
}

uint64_t sub_1A9344A68(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FA2);
  v6 = objc_msgSend_integerValue(v1, v2, v3, v4, v5);

  return v6;
}

id sub_1A9344AE4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_identifier(a1, a2, a3, a4, a5);
  isSiriVoiceIdentifier = objc_msgSend_isSiriVoiceIdentifier_(TTSAlternativeVoices, v7, v6, v8, v9);

  if (isSiriVoiceIdentifier)
  {
    v15 = objc_msgSend_identifier(a1, v11, v12, v13, v14);
    v19 = objc_msgSend_nameForVoiceIdentifier_(TTSAlternativeVoices, v16, v15, v17, v18);
  }

  else
  {
    v20 = objc_msgSend_nonLocalizedNameWithoutQuality(a1, v11, v12, v13, v14);
    if (v20 || (objc_msgSend_backupName(a1, v21, v22, v23, v24), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v20;
      objc_msgSend_localizedName_forLanguage_(TTSSpeechVoice, v21, v20, 0, v24);
    }

    else
    {
      v40 = AXLogSpeechAssetDownload();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1A957828C(a1, v40, v41, v42, v43);
      }

      v25 = 0;
      objc_msgSend_localizedName_forLanguage_(TTSSpeechVoice, v44, 0, 0, v45);
    }
    v19 = ;
    if (!v19)
    {
      v30 = objc_msgSend_identifier(a1, v26, v27, v28, v29);
      v34 = objc_msgSend_voiceForIdentifier_(TTSSpeechSynthesizer, v31, v30, v32, v33);
      v19 = objc_msgSend_name(v34, v35, v36, v37, v38);
    }
  }

  return v19;
}

void sub_1A9344C38(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FA5, v6, 1);
}

uint64_t sub_1A9344CA0(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FA5);
  v6 = objc_msgSend_unsignedIntegerValue(v1, v2, v3, v4, v5);

  return v6;
}

id sub_1A9344CE0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_nonLocalizedNameWithoutQuality(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_identifier(a1, v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x1E6958360], v13, v14);

  if (isEqualToString)
  {
    goto LABEL_2;
  }

  v21 = objc_msgSend_identifier(a1, v16, v17, v18, v19);
  isSiriVoiceIdentifier = objc_msgSend_isSiriVoiceIdentifier_(TTSAlternativeVoices, v22, v21, v23, v24);

  if (!isSiriVoiceIdentifier)
  {
    if (objc_msgSend_quality(a1, v26, v27, v28, v29) == 2)
    {
      if (objc_msgSend_containsString_(v6, v35, @"Enhanced", v37, v38))
      {
LABEL_2:
        v20 = v6;
        v6 = v20;
        goto LABEL_5;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v39, @"%@ (Enhanced)", v40, v41, v6);
    }

    else
    {
      if (objc_msgSend_quality(a1, v35, v36, v37, v38) != 3 || (objc_msgSend_containsString_(v6, v42, @"Premium", v43, v44) & 1) != 0)
      {
        goto LABEL_2;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45, @"%@ (Premium)", v46, v47, v6);
    }
    v48 = ;

    v6 = v48;
    goto LABEL_2;
  }

  v30 = objc_msgSend_identifier(a1, v26, v27, v28, v29);
  v20 = objc_msgSend_nameForVoiceIdentifier_(TTSAlternativeVoices, v31, v30, v32, v33);

LABEL_5:

  return v20;
}

void sub_1A9344E54(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FA6, v6, 1);
}

uint64_t sub_1A9344EBC(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FA6);
  v6 = objc_msgSend_unsignedIntegerValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9344EFC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FA7, v6, 1);
}

uint64_t sub_1A9344F64(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FA7);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9344FA4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FA8, v6, 1);
}

uint64_t sub_1A934500C(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FA8);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A934504C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FA9, v6, 1);
}

uint64_t sub_1A93450B4(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FA9);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A93450F4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FAA, v6, 1);
}

uint64_t sub_1A934515C(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FAA);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

BOOL sub_1A93451B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10 = objc_msgSend_identifier(a1, v6, v7, v8, v9);
    v15 = objc_msgSend_identifier(v5, v11, v12, v13, v14);
    if (objc_msgSend_isEqualToString_(v10, v16, v15, v17, v18))
    {
      v23 = objc_msgSend_quality(a1, v19, v20, v21, v22);
      v28 = v23 == objc_msgSend_quality(v5, v24, v25, v26, v27);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

id sub_1A93452A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v8 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, v4, v5, v6, v7);
  v12 = objc_msgSend_voiceWithIdentifier_(v8, v9, v3, v10, v11);

  return v12;
}

id sub_1A9345310(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E69584F8];
  v4 = a3;
  v5 = [v3 alloc];
  v9 = objc_msgSend_initWithLanguage_(v5, v6, v4, v7, v8);

  return v9;
}

id sub_1A9345368(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, a2, a3, a4, a5);
  v10 = objc_msgSend_publicVoices(v5, v6, v7, v8, v9);

  return v10;
}

id sub_1A93453C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v92.receiver = a1;
  v92.super_class = &off_1F1D1F7D8;
  v5 = objc_msgSendSuper2(&v92, sel_init);
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"language", v8);
    objc_msgSend_setLanguage_(v5, v10, v9, v11, v12);

    v13 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"identifier", v15);
    objc_msgSend_setIdentifier_(v5, v17, v16, v18, v19);

    v20 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"nonLocalizedNameWithoutQuality", v22);
    objc_msgSend_setNonLocalizedNameWithoutQuality_(v5, v24, v23, v25, v26);

    v27 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v28, v27, @"nameWithoutQuality", v29);
    objc_msgSend_setBackupName_(v5, v31, v30, v32, v33);

    v37 = objc_msgSend_decodeIntegerForKey_(v4, v34, @"quality", v35, v36);
    objc_msgSend_setQuality_(v5, v38, v37, v39, v40);
    v44 = objc_msgSend_decodeInt64ForKey_(v4, v41, @"assetSize", v42, v43);
    objc_msgSend_setAssetSize_(v5, v45, v44, v46, v47);
    v51 = objc_msgSend_decodeBoolForKey_(v4, v48, @"default", v49, v50);
    objc_msgSend_setIsDefault_(v5, v52, v51, v53, v54);
    v58 = objc_msgSend_decodeBoolForKey_(v4, v55, @"canBeDownloaded", v56, v57);
    objc_msgSend_setCanBeDownloaded_(v5, v59, v58, v60, v61);
    v65 = objc_msgSend_decodeBoolForKey_(v4, v62, @"installed", v63, v64);
    objc_msgSend_setIsInstalled_(v5, v66, v65, v67, v68);
    v72 = objc_msgSend_decodeIntegerForKey_(v4, v69, @"gender", v70, v71);
    objc_msgSend_setGender_(v5, v73, v72, v74, v75);
    v76 = objc_opt_class();
    v79 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v77, v76, @"synthesisProviderVoice", v78);
    objc_msgSend_setSynthesisProviderVoice_(v5, v80, v79, v81, v82);

    v86 = objc_msgSend_decodeBoolForKey_(v4, v83, @"isNoveltyVoice", v84, v85);
    objc_msgSend_setIsNoveltyVoice_(v5, v87, v86, v88, v89);
    v90 = v5;
  }

  return v5;
}

void sub_1A9345604(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_language(a1, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v4, v10, v9, @"language", v11);

  v16 = objc_msgSend_identifier(a1, v12, v13, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"identifier", v18);

  v23 = objc_msgSend_nonLocalizedNameWithoutQuality(a1, v19, v20, v21, v22);
  objc_msgSend_encodeObject_forKey_(v4, v24, v23, @"nonLocalizedNameWithoutQuality", v25);

  v30 = objc_msgSend_quality(a1, v26, v27, v28, v29);
  objc_msgSend_encodeInteger_forKey_(v4, v31, v30, @"quality", v32);
  isInstalled = objc_msgSend_isInstalled(a1, v33, v34, v35, v36);
  objc_msgSend_encodeBool_forKey_(v4, v38, isInstalled, @"installed", v39);
  canBeDownloaded = objc_msgSend_canBeDownloaded(a1, v40, v41, v42, v43);
  objc_msgSend_encodeBool_forKey_(v4, v45, canBeDownloaded, @"canBeDownloaded", v46);
  isDefault = objc_msgSend_isDefault(a1, v47, v48, v49, v50);
  objc_msgSend_encodeBool_forKey_(v4, v52, isDefault, @"default", v53);
  isNoveltyVoice = objc_msgSend_isNoveltyVoice(a1, v54, v55, v56, v57);
  objc_msgSend_encodeBool_forKey_(v4, v59, isNoveltyVoice, @"isNoveltyVoice", v60);
  v65 = objc_msgSend_assetSize(a1, v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(v4, v66, v65, @"assetSize", v67);
  v72 = objc_msgSend_gender(a1, v68, v69, v70, v71);
  objc_msgSend_encodeInteger_forKey_(v4, v73, v72, @"gender", v74);
  v81 = objc_msgSend_synthesisProviderVoice(a1, v75, v76, v77, v78);
  objc_msgSend_encodeObject_forKey_(v4, v79, v81, @"synthesisProviderVoice", v80);
}

void *sub_1A93457C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  if (!qword_1ED970358)
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = sub_1A93458EC;
    v9[4] = &unk_1E7880300;
    v9[5] = v9;
    v10 = xmmword_1E78802E8;
    v11 = 0;
    qword_1ED970358 = _sl_dlopen();
  }

  v6 = qword_1ED970358;
  if (!qword_1ED970358)
  {
    sub_1A9578324(v9, a2, a3, a4, a5);
  }

  if (v9[0])
  {
    free(v9[0]);
  }

  result = dlsym(v6, "AXIsInternalInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB390FB0 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A93458EC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED970358 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

ausdk::AUOutputElement *ausdk::AUOutputElement::AUOutputElement(ausdk::AUOutputElement *this, ausdk::AUBase *a2)
{
  v3 = ausdk::AUIOElement::AUIOElement(this, a2);
  *v3 = &unk_1F1CEF918;
  ausdk::AUIOElement::AllocateBuffer(v3, 0);
  return this;
}

uint64_t sub_1A93459C0(void *a1)
{
  *a1 = &unk_1F1CF0988;
  ausdk::AUBufferList::Deallocate(a1 + 18);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  return sub_1A9345C2C(a1);
}

ausdk::AUOutputElement *ausdk::AUOutputElement::AUOutputElement(ausdk::AUOutputElement *this, ausdk::AUBase *a2, const AudioStreamBasicDescription *a3)
{
  v5 = ausdk::AUIOElement::AUIOElement(this, a2);
  v6 = *&a3->mSampleRate;
  v7 = *&a3->mBytesPerPacket;
  *(v5 + 14) = *&a3->mBitsPerChannel;
  *(v5 + 5) = v6;
  *(v5 + 6) = v7;
  *v5 = &unk_1F1CEF918;
  ausdk::AUIOElement::AllocateBuffer(v5, 0);
  return this;
}

uint64_t ausdk::AUOutputElement::SetStreamFormat(ausdk::AUOutputElement *this, const AudioStreamBasicDescription *a2)
{
  v3 = ausdk::AUIOElement::SetStreamFormat(this, a2);
  if (!v3)
  {
    (*(*this + 64))(this, 0);
  }

  return v3;
}

uint64_t sub_1A9345B00(void *a1)
{
  *a1 = &unk_1F1CF0988;
  ausdk::AUBufferList::Deallocate(a1 + 18);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  return sub_1A9345C2C(a1);
}

void sub_1A9345B68(void *a1)
{
  *a1 = &unk_1F1CF0988;
  ausdk::AUBufferList::Deallocate(a1 + 18);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  sub_1A9345C2C(a1);

  JUMPOUT(0x1AC586D00);
}

uint64_t sub_1A9345BE4(uint64_t a1)
{
  v1 = 16;
  if (*(a1 + 40))
  {
    v1 = 48;
  }

  v2 = 24;
  if (*(a1 + 40))
  {
    v2 = 56;
  }

  v3 = 2;
  v4 = *(a1 + v2);
  if (!*(a1 + 40))
  {
    v3 = 3;
  }

  return (v4 - *(a1 + v1)) >> v3;
}

uint64_t sub_1A9345C2C(uint64_t a1)
{
  *a1 = &unk_1F1CF0A08;
  sub_1A9345C90((a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1A9345C90(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

id sub_1A9346978(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = objc_msgSend_data(MEMORY[0x1E695DF88], a2, a3, a4, a5);
  {
    v7 = *(a1 + 32);
    data_block = archive_read_data_block();
    if (data_block)
    {
      break;
    }
  }

  if (data_block != 1)
  {
    v11 = AXTTSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A95786E8((a1 + 32));
    }
  }

  return i;
}

uint64_t sub_1A9346D90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_1EB390FB8 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F1D0F888, a4, a5);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9347128(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v11 = objc_msgSend_indexOfObject_(v6, v8, a2, v9, v10);
  v15 = objc_msgSend_numberWithUnsignedInteger_(v5, v12, v11, v13, v14);
  v16 = MEMORY[0x1E696AD98];
  v20 = objc_msgSend_indexOfObject_(*(a1 + 32), v17, v7, v18, v19);

  v24 = objc_msgSend_numberWithUnsignedInteger_(v16, v21, v20, v22, v23);
  v28 = objc_msgSend_compare_(v15, v25, v24, v26, v27);

  return v28;
}

uint64_t sub_1A9347320()
{
  result = MGGetBoolAnswer();
  byte_1EB390FC8 = result;
  return result;
}

void ausdk::AUMIDIEffectBase::AUMIDIEffectBase(ausdk::AUMIDIEffectBase *this, OpaqueAudioComponentInstance *a2, char a3)
{
  ausdk::AUEffectBase::AUEffectBase(this, a2, a3);
  v3[75] = v3;
  *v3 = &unk_1F1CEF9B0;
  v3[74] = &unk_1F1CEFC18;
}

{
  ausdk::AUEffectBase::AUEffectBase(this, a2, a3);
  v3[75] = v3;
  *v3 = &unk_1F1CEF9B0;
  v3[74] = &unk_1F1CEFC18;
}

uint64_t ausdk::AUMIDIEffectBase::GetPropertyInfo(ausdk::AUMIDIEffectBase *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = ausdk::AUEffectBase::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  if (result == -10879)
  {

    return ausdk::AUMIDIBase::DelegateGetPropertyInfo((this + 592), a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t ausdk::AUMIDIEffectBase::GetProperty(ausdk::AUMIDIEffectBase *this, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  result = ausdk::AUEffectBase::GetProperty(this, a2, a3, a4, a5);
  if (result == -10879)
  {

    return ausdk::AUMIDIBase::DelegateGetProperty((this + 592), a2, a3, a4, a5);
  }

  return result;
}

uint64_t ausdk::AUMIDIEffectBase::SetProperty(ausdk::AUMIDIEffectBase *this, unsigned int a2, unsigned int a3, unsigned int a4, int *a5, unsigned int a6)
{
  result = ausdk::AUEffectBase::SetProperty(this, a2, a3, a4, a5, a6);
  if (result == -10879)
  {

    return ausdk::AUMIDIBase::DelegateSetProperty((this + 592), a2, a3, a4, a5);
  }

  return result;
}

void sub_1A9347B30(void **a1)
{
  *a1 = &unk_1F1CEFEE8;
  v2 = a1 + 66;
  sub_1A9347D84(&v2);
  ausdk::AUBase::~AUBase(a1);
}

uint64_t sub_1A9347B8C(void **a1)
{
  *a1 = &unk_1F1CEFEE8;
  v3 = a1 + 66;
  sub_1A9347D84(&v3);
  ausdk::AUBase::~AUBase(a1);
  return MEMORY[0x1AC586D00]();
}

void sub_1A9347C70(uint64_t a1)
{
  v1 = (a1 - 592);
  *(a1 - 592) = &unk_1F1CEFEE8;
  v2 = (a1 - 64);
  sub_1A9347D84(&v2);
  ausdk::AUBase::~AUBase(v1);
}

uint64_t sub_1A9347CCC(uint64_t a1)
{
  v1 = (a1 - 592);
  *(a1 - 592) = &unk_1F1CEFEE8;
  v3 = (a1 - 64);
  sub_1A9347D84(&v3);
  ausdk::AUBase::~AUBase(v1);
  return MEMORY[0x1AC586D00]();
}

void sub_1A9347D84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1A9347DD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1A9347DD8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

const __CFData *TTSCreateDecryptedDataFromEncryptedData(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v1);
    v4 = *(BytePtr + 76);
    v5 = Length - 154;
    v13 = objc_msgSend_data(MEMORY[0x1E695DF88], v6, v7, v8, v9);
    if (v5 >= 1 && v4)
    {
      v14 = 0;
      v15 = (BytePtr + 154);
      do
      {
        v18 = *v15;
        v16 = v15 + 1;
        v17 = v18;
        v19 = v18;
        v20 = v16;
        if (v18)
        {
          do
          {
            v21 = *v20;
            v20 = (v20 + 1);
            v31 = v21 ^ 0xA9;
            objc_msgSend_appendBytes_length_(v13, v10, &v31, 1, v12);
            --v19;
          }

          while (v19);
        }

        v15 = (v16 + v17);
        v5 = v5 - 2 - v17;
        v22 = objc_msgSend_dataUsingEncoding_(@"\n", v10, 4, v11, v12);
        objc_msgSend_appendData_(v13, v23, v22, v24, v25);
        ++v14;
      }

      while (v5 >= 1 && v14 < v4);
    }

    v27 = objc_alloc(MEMORY[0x1E695DEF0]);
    return objc_msgSend_initWithData_(v27, v28, v13, v29, v30);
  }

  return result;
}

id sub_1A9347F58(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v6 = objc_msgSend_length(a1, a2, a3, a4, a5);
  objc_msgSend_getBytes_range_(a1, v7, &v17, v6 - 1, 1);
  if (v17)
  {
    v12 = objc_msgSend_mutableCopy(a1, v8, v9, v10, v11);
    v16 = 0;
    objc_msgSend_appendBytes_length_(v12, v13, &v16, 1, v14);
  }

  else
  {
    v12 = a1;
  }

  return v12;
}

id sub_1A9348328(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v6 = objc_msgSend_initWithContentsOfURL_(v2, v3, *(a1 + 32), v4, v5);

  return v6;
}

BOOL sub_1A93487D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_priority(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_priority(v4, v10, v11, v12, v13);

  return v9 > v14;
}

uint64_t sub_1A9348B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v7 = objc_msgSend_range(a2, a2, a3, a4, a5);

  return objc_msgSend_transformRange_to_(v5, v6, v7, v6, &stru_1F1CFF8D8);
}

void sub_1A93498E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696B098];
  v7 = objc_msgSend_utf8Range(a2, a2, a3, a4, a5);
  v13 = objc_msgSend_valueWithRange_(v6, v8, v7, v8, v9);
  objc_msgSend_addObject_(v5, v10, v13, v11, v12);
}

void sub_1A9349958(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51[1] = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_shouldAbort(*(a1 + 32), a2, a3, a4, a5) & 1) == 0)
  {
    v11 = *(a1 + 64);
    v12 = objc_msgSend_ruleReplacements(*(a1 + 32), v7, v8, v9, v10);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, &a2[v11], v14, v15);

    v17 = MEMORY[0x1E696B098];
    v22 = objc_msgSend_ruleset(v16, v18, v19, v20, v21);
    v26 = objc_msgSend_valueWithPointer_(v17, v23, v22, v24, v25);

    v30 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v27, v26, v28, v29);
    v33 = v30;
    if (v30)
    {
      v34 = v30;
    }

    else
    {
      v35 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v31, 0, *(a1 + 72), v32);
      v51[0] = v35;
      v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, v51, 1, v37);
    }

    v42 = objc_msgSend_regex(v16, v38, v39, v40, v41);
    v43 = *(a1 + 80);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1A9349B40;
    v47[3] = &unk_1E7880480;
    v48 = v16;
    v49 = *(a1 + 48);
    v50 = *(a1 + 56);
    v44 = v16;
    objc_msgSend_enumerateMatchesInCString_ranges_usingBlock_(v42, v45, v43, v34, v47);
  }

  v46 = *MEMORY[0x1E69E9840];
}

void sub_1A9349B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_postMatch(*(a1 + 32), v4, v5, v6, v7);

  if (!v8 || (objc_msgSend_postMatch(*(a1 + 32), v9, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = (v13)[2](v13, *(a1 + 40), v3), v13, v14))
  {
    v15 = [TTSMatchedRuleReplacement alloc];
    v20 = objc_msgSend_init(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_replacement(*(a1 + 32), v21, v22, v23, v24);
    objc_msgSend_setReplacement_(v20, v26, v25, v27, v28);

    objc_msgSend_setMatch_(v20, v29, v3, v30, v31);
    objc_msgSend_setRuleReplacement_(v20, v32, *(a1 + 32), v33, v34);
    v36 = *(a1 + 48);
    v35 = v20;
    AX_PERFORM_WITH_LOCK();
  }
}

uint64_t sub_1A9349C98(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_ruleReplacement(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_effectiveIndex(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_ruleReplacement(v4, v15, v16, v17, v18);

  if (v14 < objc_msgSend_effectiveIndex(v19, v20, v21, v22, v23))
  {
    v24 = -1;
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

uint64_t sub_1A9349D14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_ruleReplacement(a2, a2, a3, a4, a5);
  isTerminalRule = objc_msgSend_isTerminalRule(v5, v6, v7, v8, v9);

  return isTerminalRule ^ 1u;
}

BOOL sub_1A9349D50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_ruleReplacement(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_effectiveIndex(v6, v7, v8, v9, v10) == *(a1 + 32);

  return v11;
}

void sub_1A934A118(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v34 = v3;
    v7 = objc_msgSend_rangeWithName_(v3, v4, @"num", v5, v6);
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = objc_msgSend_rangeWithName_(v34, v8, @"numbrack", v9, v10);
      v3 = v34;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = v7;
    }

    v12 = objc_msgSend_substringWithRange_(*(a1 + 32), v8, v11, v8, v10);
    v17 = objc_msgSend_intValue(v12, v13, v14, v15, v16);

    v3 = v34;
    if (v17)
    {
      v21 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v18, v17, v19, v20);
      v22 = *(a1 + 40);
      v23 = MEMORY[0x1E696B098];
      v28 = objc_msgSend_range(v34, v24, v25, v26, v27);
      v31 = objc_msgSend_valueWithRange_(v23, v29, v28, v29, v30);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v32, v21, v31, v33);

      v3 = v34;
    }
  }

LABEL_8:
}

uint64_t sub_1A934A22C(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v10 = objc_msgSend_rangeValue(a3, v6, v7, v8, v9);
  v14 = objc_msgSend_numberWithUnsignedInteger_(v4, v11, v10, v12, v13);
  v15 = MEMORY[0x1E696AD98];
  v20 = objc_msgSend_rangeValue(v5, v16, v17, v18, v19);

  v24 = objc_msgSend_numberWithUnsignedInteger_(v15, v21, v20, v22, v23);
  v28 = objc_msgSend_compare_(v14, v25, v24, v26, v27);

  return v28;
}

uint64_t sub_1A934A570()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1EB390FE0;
  qword_1EB390FE0 = v0;

  v2 = objc_alloc(MEMORY[0x1E696AD10]);
  qword_1EB390FE8 = objc_msgSend_init(v2, v3, v4, v5, v6);

  return MEMORY[0x1EEE66BB8]();
}

id _TTSLoadIPAToNativePhonemeMapForLanguage(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@-%@", a4, a5, a2, a1);
  v6 = MEMORY[0x1E696AAE8];
  v7 = objc_opt_class();
  v11 = objc_msgSend_bundleForClass_(v6, v8, v7, v9, v10);
  v13 = objc_msgSend_pathForResource_ofType_inDirectory_(v11, v12, v5, @"json", @"PhonemeMaps");

  if (v13)
  {
    v46 = v5;
    v45 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v14, v13, v15, v16);
    v18 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v17, v45, 0, 0);
    v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v19, v20, v21, v22);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = v18;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v47, v51, 16);
    if (v26)
    {
      v30 = v26;
      v31 = *v48;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v47 + 1) + 8 * i);
          v34 = objc_msgSend_objectForKeyedSubscript_(v33, v27, @"ipa", v28, v29);
          v38 = objc_msgSend_objectForKeyedSubscript_(v33, v35, @"synthNative", v36, v37);
          v41 = v38;
          if (v34)
          {
            v42 = v38 == 0;
          }

          else
          {
            v42 = 1;
          }

          if (!v42)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v23, v39, v38, v34, v40);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v47, v51, 16);
      }

      while (v30);
    }

    v5 = v46;
  }

  else
  {
    v23 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v23;
}

id sub_1A934ADAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v119 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v117 = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *buffer = 0u;
  v103 = 0u;
  v14 = objc_msgSend_length(v9, v10, v11, v12, v13);
  v15 = objc_alloc_init(MEMORY[0x1E696AD40]);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v117 = &a9;
  theString = v9;
  v113 = 0;
  v114 = v14;
  CharactersPtr = CFStringGetCharactersPtr(v9);
  CStringPtr = 0;
  v111 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
  }

  v115 = 0;
  v116 = 0;
  v112 = CStringPtr;
  v22 = v14 - 1;
  v97 = v9;
  if (v14 < 1)
  {
    v95 = 0;
    v25 = 0;
    goto LABEL_64;
  }

  v23 = 0;
  v89 = 0;
  v24 = 0;
  v95 = 0;
  v96 = v14 - 1;
  v25 = 0;
  theDict = Mutable;
  v92 = v14;
  v93 = v17;
  do
  {
    v26 = v23 + 1;
    if (v23 < 0)
    {
      goto LABEL_54;
    }

    v27 = v114;
    if (v114 <= v23)
    {
      goto LABEL_54;
    }

    if (v111)
    {
      v28 = v111[v113 + v23];
    }

    else if (v112)
    {
      v28 = v112[v113 + v23];
    }

    else
    {
      if (v116 <= v23 || (v29 = v115, v115 > v23))
      {
        v30 = v23 - 4;
        if (v23 < 4)
        {
          v30 = 0;
        }

        if (v30 + 64 < v114)
        {
          v27 = v30 + 64;
        }

        v115 = v30;
        v116 = v27;
        v121.length = v27 - v30;
        v121.location = v113 + v30;
        CFStringGetCharacters(theString, v121, buffer);
        v22 = v96;
        v29 = v115;
      }

      v28 = buffer[v23 - v29];
    }

    if (v28 != 37)
    {
      goto LABEL_54;
    }

    v31 = v23 - v24;
    if (v23 > v24)
    {
      v32 = objc_msgSend_substringWithRange_(v9, v18, v24, v31, v19);
      objc_msgSend_addObject_(v17, v33, v32, v34, v35);

      v22 = v96;
    }

    if (v26 >= v14)
    {
      goto LABEL_54;
    }

    v91 = v24;
    v36 = 0;
    v37 = 0;
    v38 = ~v23;
    v39 = v23 + 65;
    v40 = v23 + 1;
    while (1)
    {
      v41 = v23 + 1;
      if (v26 >= 4)
      {
        v42 = 4;
      }

      else
      {
        v42 = v26;
      }

      v43 = v114;
      if (v114 <= v41)
      {
        goto LABEL_50;
      }

      if (v111)
      {
        v44 = v111[v113 + 1 + v23];
      }

      else if (v112)
      {
        v44 = v112[v113 + 1 + v23];
      }

      else
      {
        if (v116 <= v41 || (v45 = v115, v115 > v41))
        {
          v46 = -v42;
          v47 = v42 + v38;
          v48 = v39 - v42;
          v49 = v23 + v46;
          v50 = v49 + 65;
          if (v49 + 65 >= v114)
          {
            v50 = v114;
          }

          v115 = v49 + 1;
          v116 = v50;
          v51 = v49 + v113;
          if (v114 >= v48)
          {
            v43 = v48;
          }

          v122.location = v51 + 1;
          v122.length = v43 + v47;
          v90 = v36;
          CFStringGetCharacters(theString, v122, buffer);
          v36 = v90;
          v22 = v96;
          v45 = v115;
        }

        v44 = buffer[v23 + 1 - v45];
      }

      if (v44 == 37 && v41 == v40)
      {
        v17 = v93;
        objc_msgSend_addObject_(v93, v18, @"%", v31, v19);
        v22 = v96;
        v9 = v97;
        v24 = v23 + 2;
        v26 = v23 + 2;
        goto LABEL_53;
      }

      if ((v44 - 48) <= 9u)
      {
        v37 = 10 * v37 + v44 - 48;
        goto LABEL_50;
      }

      if (v44 == 36)
      {
        v40 = v23 + 2;
        v36 = v37;
        goto LABEL_50;
      }

      if (v44 == 64)
      {
        break;
      }

LABEL_50:
      --v38;
      ++v39;
      ++v26;
      ++v23;
      if (v22 == v41)
      {
        v26 = v92;
        v17 = v93;
        v9 = v97;
        v24 = v91;
        goto LABEL_60;
      }
    }

    if (v36)
    {
      v53 = v36;
    }

    else
    {
      v53 = (v89 + 1);
    }

    v54 = objc_alloc_init(TTSFormatArgument);

    v55 = v23 + 2;
    v9 = v97;
    v58 = objc_msgSend_substringWithRange_(v97, v56, v40, v55 - v40, v57);

    objc_storeStrong(&v54->formatSpecifier, v58);
    CFDictionarySetValue(theDict, v53, v54);
    objc_msgSend_addObject_(v93, v59, v54, v60, v61);
    v22 = v96;
    v25 = v54;
    v95 = v58;
    ++v89;
    v17 = v93;
    v24 = v55;
    v26 = v55;
LABEL_53:
    v14 = v92;
LABEL_54:
    v23 = v26;
  }

  while (v26 < v14);
LABEL_60:
  if (v26 > v24)
  {
    v62 = objc_msgSend_substringWithRange_(v9, v18, v24, v26 - v24, v19);
    objc_msgSend_addObject_(v17, v63, v62, v64, v65);
  }

  Mutable = theDict;
LABEL_64:
  Count = CFDictionaryGetCount(Mutable);
  if (Count < 1)
  {
    p_isa = &v25->super.isa;
  }

  else
  {
    v67 = Count;
    v68 = 1;
    do
    {
      p_isa = CFDictionaryGetValue(Mutable, v68);

      if (p_isa)
      {
        v70 = v117++;
        objc_storeStrong(p_isa + 3, *v70);
        v71 = v117++;
        objc_storeStrong(p_isa + 2, *v71);
      }

      ++v68;
      v25 = p_isa;
      --v67;
    }

    while (v67);
  }

  v72 = Mutable;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v73 = v17;
  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v98, v118, 16);
  if (v75)
  {
    v76 = v75;
    v77 = *v99;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v99 != v77)
        {
          objc_enumerationMutation(v73);
        }

        v79 = *(*(&v98 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_appendString_withAttributes_(v15, v80, v79, 0, v81);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v83 = v79;

            objc_msgSend_appendString_withAttributes_(v15, v84, v83[3], v83[2], v85);
            p_isa = v83;
          }
        }
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v82, &v98, v118, 16);
    }

    while (v76);
  }

  CFRelease(v72);
  v86 = v15;

  v87 = *MEMORY[0x1E69E9840];

  return v86;
}

void sub_1A934B464(void *a1, uint64_t a2, void *a3, void *a4)
{
  v19 = a4;
  v6 = a3;
  v11 = objc_msgSend_length(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_length(a1, v12, v13, v14, v15);
  objc_msgSend_replaceCharactersInRange_withString_(a1, v17, v16, 0, v6);

  objc_msgSend_setAttributes_range_(a1, v18, v19, v16, v11);
}

void *sub_1A934B500(void *a1, uint64_t a2, void *a3, size_t a4, uint64_t a5)
{
  v14 = 0;
  v8 = a1;
  v11 = objc_msgSend_decodeBytesForKey_returnedLength_(v8, v9, a5, &v14, v10);
  if (v14 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v14;
  }

  return memcpy(a3, v11, v12);
}

uint64_t sub_1A934B564(void *a1, const char *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v8[0] = a4;
  v8[1] = a5;
  v8[2] = a6;
  v8[3] = a7;
  return objc_msgSend_tts_encodeBytes_size_forKey_(a1, a2, v8, 64, a3);
}

double sub_1A934B598(void *a1, const char *a2, uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  objc_msgSend_tts_decodeBytesIntoObject_size_forKey_(a1, a2, v4, 64, a3);
  return *v4;
}

void sub_1A934B6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A934B6E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A934B6F8(uint64_t a1)
{
  v2 = qword_1ED970EB8;
  if (!qword_1ED970EB8)
  {
    v3 = objc_alloc_init(TTSAXResourceManager);
    v4 = qword_1ED970EB8;
    qword_1ED970EB8 = v3;

    v2 = qword_1ED970EB8;
  }

  v5 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v5, v2);
}

BOOL sub_1A934B98C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v9 = (*(a1 + 32) == 1 || objc_msgSend_type(v3, v4, v5, v6, v7) == *(a1 + 32)) && (*(a1 + 40) == 1 || objc_msgSend_subtype(v8, v4, v5, v6, v7) == *(a1 + 40));

  return v9;
}

BOOL sub_1A934BBE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_name(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_lowercaseString(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_lowercaseString(*(a1 + 32), v14, v15, v16, v17);
  if (objc_msgSend_containsString_(v13, v19, v18, v20, v21))
  {
    v26 = objc_msgSend_type(v3, v22, v23, v24, v25) == *(a1 + 40);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t sub_1A934BDE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_identifier(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_lowercaseString(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_lowercaseString(*(a1 + 32), v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v17, v16, v18, v19);

  return isEqualToString;
}

void sub_1A934C108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend__observers(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_addObject_(v9, v6, *(a1 + 40), v7, v8);
}

void sub_1A934C1F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend__observers(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_removeObject_(v9, v6, *(a1 + 40), v7, v8);
}

void sub_1A934C404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A934C430(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_msgSend__observers(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_allObjects(v13, v6, v7, v8, v9);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

uint64_t (*ausdk::AUBaseLookup::Lookup(ausdk::AUBaseLookup *this))()
{
  if ((this - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return off_1F1CEFD98[(this - 1)];
  }
}

uint64_t sub_1A934C524(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    (*(*v2 + 16))(*(a1 + 536));
  }

  v3 = ausdk::AUBase::DoInitialize((a1 + 64));
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return v3;
}

void sub_1A934C5B8(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934C5A4);
}

uint64_t sub_1A934C63C(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    (*(*v2 + 16))(*(a1 + 536));
  }

  v3 = ausdk::AUBase::DoCleanup((a1 + 64));
  if (v2)
  {
    (*(*v2 + 24))(v2, v3);
    return 0;
  }

  return v2;
}

void sub_1A934C6C8(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934C6B8);
}

uint64_t sub_1A934C750(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  v16 = 0;
  v15 = 0;
  v12 = *(a1 + 536);
  if (v12)
  {
    (*(*v12 + 16))(*(a1 + 536));
  }

  PropertyInfo = ausdk::AUBase::DispatchGetPropertyInfo((a1 + 64), a2, a3, a4, &v16, &v15);
  if (a5)
  {
    *a5 = v16;
  }

  if (a6)
  {
    *a6 = v15;
  }

  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  return PropertyInfo;
}

void sub_1A934C844(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934C824);
}

uint64_t sub_1A934C8C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _OWORD *a5, _DWORD *a6)
{
  v39 = 0;
  v12 = *(a1 + 536);
  if (v12)
  {
    (*(*v12 + 16))(*(a1 + 536));
  }

  if (!a6)
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      sub_1A9578964(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_13;
  }

  if (!a5)
  {
    LODWORD(__p) = 0;
    PropertyInfo = ausdk::AUBase::DispatchGetPropertyInfo((a1 + 64), a2, a3, a4, &__p, &v39);
    v15 = 0;
    *a6 = __p;
    v14 = PropertyInfo;
    goto LABEL_14;
  }

  v13 = *a6;
  if (!v13)
  {
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      sub_1A9578928(v25, v26, v27, v28, v29, v30, v31, v32);
    }

LABEL_13:
    v15 = 0;
    PropertyInfo = 0;
    v14 = 4294967246;
    goto LABEL_14;
  }

  v38 = 0;
  v14 = ausdk::AUBase::DispatchGetPropertyInfo((a1 + 64), a2, a3, a4, &v38, &v39);
  v15 = v14 == 0;
  if (v14)
  {
    PropertyInfo = 0;
  }

  else
  {
    __p = 0;
    v36 = 0;
    v37 = 0;
    v34 = a5;
    if (v13 < v38)
    {
      sub_1A934E048(&__p, v38);
      v34 = __p;
    }

    PropertyInfo = ausdk::AUBase::DispatchGetProperty((a1 + 64), a2, a3, a4, v34);
    if (PropertyInfo)
    {
      *a6 = 0;
    }

    else if (v13 >= v38 || __p == v36)
    {
      *a6 = v38;
    }

    else
    {
      memcpy(a5, __p, v13);
    }

    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }
  }

LABEL_14:
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  if (v15)
  {
    return PropertyInfo;
  }

  return v14;
}

void sub_1A934CADC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  switch(a2)
  {
    case 5:
      v13 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_14;
    case 3:
      v15 = *__cxa_begin_catch(a1);
      goto LABEL_13;
    default:
      v13 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_13;
      }

      break;
  }

  v14 = v13[4];
LABEL_13:
  __cxa_end_catch();
LABEL_14:
  JUMPOUT(0x1A934CA24);
}

uint64_t sub_1A934CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *__s2, uint64_t a6)
{
  v12 = *(a1 + 536);
  if (v12)
  {
    (*(*v12 + 16))(*(a1 + 536));
  }

  if (__s2 && a6)
  {
    v13 = ausdk::AUBase::DispatchSetProperty((a1 + 64), a2, a3, a4, __s2, a6);
LABEL_9:
    v14 = v13;
    goto LABEL_10;
  }

  if (!__s2 && !a6)
  {
    v13 = ausdk::AUBase::DispatchRemovePropertyValue((a1 + 64), a2, a3, a4);
    goto LABEL_9;
  }

  if (__s2)
  {
    if (a6)
    {
      v14 = 0;
LABEL_10:
      v15 = 1;
      if (!v12)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      sub_1A95789A0(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      sub_1A95789DC(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v15 = 0;
  v14 = 0;
  if (v12)
  {
LABEL_11:
    (*(*v12 + 24))(v12);
  }

LABEL_12:
  if ((v15 & 1) == 0)
  {
    return 4294967246;
  }

  return v14;
}

void sub_1A934CCF4(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934CC80);
}

uint64_t sub_1A934CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 536);
  if (v8)
  {
    (*(*v8 + 16))(*(a1 + 536));
  }

  v9 = (*(*(a1 + 64) + 112))(a1 + 64, a2, a3, a4);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  return v9;
}

void sub_1A934CE4C(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934CE34);
}

uint64_t sub_1A934CED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 536);
  if (v6)
  {
    (*(*v6 + 16))(*(a1 + 536));
  }

  v7 = (*(*(a1 + 64) + 120))(a1 + 64, a2, a3, 0, 0);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return v7;
}

void sub_1A934CF9C(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934CF88);
}

uint64_t sub_1A934D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 536);
  if (v8)
  {
    (*(*v8 + 16))(*(a1 + 536));
  }

  v9 = (*(*(a1 + 64) + 120))(a1 + 64, a2, a3, a4, 1);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  return v9;
}

void sub_1A934D0F8(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934D0E0);
}

uint64_t sub_1A934D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 536);
  if (v6)
  {
    (*(*v6 + 16))(*(a1 + 536));
  }

  v7 = (*(*(a1 + 64) + 128))(a1 + 64, a2, a3);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return v7;
}

void sub_1A934D240(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934D22CLL);
}

uint64_t sub_1A934D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 536);
  if (v6)
  {
    (*(*v6 + 16))(*(a1 + 536));
  }

  v7 = (*(*(a1 + 64) + 136))(a1 + 64, a2, a3);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return v7;
}

void sub_1A934D388(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934D374);
}

uint64_t sub_1A934D40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 536);
  if (v10)
  {
    (*(*v10 + 16))(*(a1 + 536));
  }

  if (a5)
  {
    v11 = (*(*(a1 + 64) + 144))(a1 + 64, a2, a3, a4, a5);
    if (!v10)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v11 = 4294967246;
  if (v10)
  {
LABEL_7:
    (*(*v10 + 24))(v10);
  }

  return v11;
}

void sub_1A934D4F8(void *a1, int a2)
{
  if (v2)
  {
    sub_1A95788CC(v2);
  }

  switch(a2)
  {
    case 5:
      v5 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_12;
    case 3:
      v7 = *__cxa_begin_catch(a1);
      goto LABEL_11;
    default:
      v5 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_11;
      }

      break;
  }

  v6 = v5[4];
LABEL_11:
  __cxa_end_catch();
LABEL_12:
  JUMPOUT(0x1A934D4E0);
}

uint64_t sub_1A934D578(uint64_t a1, float a2)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return (*(*(a1 + 64) + 152))();
  }

  else
  {
    return 4294900553;
  }
}

uint64_t sub_1A934D640(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a2 || !a3)
  {
    return (*(*(a1 + 64) + 168))();
  }

  v3 = a3;
  for (i = (a2 + 28); ; i += 8)
  {
    v5 = *(i - 4);
    if (v5 == 2)
    {
      break;
    }

    if (v5 == 1)
    {
      v6 = *(i - 2);
      goto LABEL_9;
    }

LABEL_10:
    if (!--v3)
    {
      return (*(*(a1 + 64) + 168))();
    }
  }

  if ((*(i - 1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 4294900553;
  }

  v6 = *i;
LABEL_9:
  if ((v6 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    goto LABEL_10;
  }

  return 4294900553;
}

uint64_t sub_1A934D74C(uint64_t a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  v8 = 0;
  v6 = 4294967246;
  if (a3 && a6)
  {
    if (!a2)
    {
      a2 = &v8;
    }

    return ausdk::AUBase::DoRender((a1 + 64), a2, a3, a4, a5, a6);
  }

  return v6;
}

uint64_t sub_1A934D794(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    (*(*v2 + 16))(*(a1 + 536));
  }

  v3 = ausdk::AUBase::DoReset((a1 + 64));
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return v3;
}

void sub_1A934D838(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934D824);
}

uint64_t (*ausdk::AUOutputLookup::Lookup(ausdk::AUOutputLookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (v1 == 514)
  {
    v3 = sub_1A934DA50;
  }

  else
  {
    v3 = 0;
  }

  if (v1 == 513)
  {
    v3 = sub_1A934D910;
  }

  if (!result)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1A934D910(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    (*(*v2 + 16))(*(a1 + 536));
  }

  v3 = (*(*(a1 + 64) + 440))(a1 + 64);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return v3;
}

void sub_1A934D9CC(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934D9B8);
}

uint64_t sub_1A934DA50(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    (*(*v2 + 16))(*(a1 + 536));
  }

  v3 = (*(*(a1 + 64) + 448))(a1 + 64);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return v3;
}

void sub_1A934DB0C(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1A934DAF8);
}

uint64_t (*ausdk::AUComplexOutputLookup::Lookup(ausdk::AUComplexOutputLookup *this))(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (!result)
  {
    if (v1 == 514)
    {
      v3 = sub_1A934DA50;
    }

    else
    {
      v3 = 0;
    }

    if (v1 == 513)
    {
      result = sub_1A934D910;
    }

    else
    {
      result = v3;
    }

    if (!result)
    {
      if (v1 == 19)
      {
        return sub_1A934DBF8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A934DBF8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v8 = 4294967246;
  if (a3 && a8)
  {
    if (!a2)
    {
      a2 = &v10;
    }

    return (*(*(a1 + 64) + 192))(a1 + 64, a2);
  }

  return v8;
}

uint64_t (*ausdk::AUBaseProcessLookup::Lookup(ausdk::AUBaseProcessLookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (v1 == 20)
  {
    v3 = sub_1A934DCA4;
  }

  else
  {
    v3 = 0;
  }

  if (!result)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1A934DCA4(uint64_t a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, AudioBufferList *a5)
{
  v7 = 0;
  if (a2)
  {
    if ((*(a2 + 1) & 2) != 0)
    {
      return ausdk::AUBase::DoProcess((a1 + 64), a2, a3, a4, a5);
    }
  }

  else
  {
    a2 = &v7;
  }

  v5 = 4294967246;
  if (a3 && a5)
  {
    return ausdk::AUBase::DoProcess((a1 + 64), a2, a3, a4, a5);
  }

  return v5;
}

uint64_t (*ausdk::AUBaseProcessMultipleLookup::Lookup(ausdk::AUBaseProcessMultipleLookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (v1 == 21)
  {
    v3 = sub_1A934DD34;
  }

  else
  {
    v3 = 0;
  }

  if (!result)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1A934DD34(uint64_t a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, const AudioBufferList **a6, uint64_t a7, AudioBufferList **a8)
{
  v10 = 0;
  if (a2)
  {
    if ((*(a2 + 1) & 2) != 0)
    {
      return ausdk::AUBase::DoProcessMultiple((a1 + 64), a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    a2 = &v10;
  }

  v8 = 4294967246;
  if (a3 && a6 && a8)
  {
    return ausdk::AUBase::DoProcessMultiple((a1 + 64), a2, a3, a4, a5, a6, a7, a8);
  }

  return v8;
}

uint64_t (*ausdk::AUBaseProcessAndMultipleLookup::Lookup(ausdk::AUBaseProcessAndMultipleLookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (!result)
  {
    if (v1 == 21)
    {
      return sub_1A934DD34;
    }

    else if (v1 == 20)
    {
      return sub_1A934DCA4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*ausdk::AUMIDILookup::Lookup(ausdk::AUMIDILookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (!result)
  {
    if ((v1 - 257) > 6)
    {
      return 0;
    }

    else
    {
      return off_1F1CEFE28[(v1 - 257)];
    }
  }

  return result;
}

uint64_t (*ausdk::AUMIDIProcessLookup::Lookup(ausdk::AUMIDIProcessLookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (v1 == 20)
  {
    v3 = sub_1A934DCA4;
  }

  else
  {
    v3 = 0;
  }

  if (!result)
  {
    result = v3;
  }

  if (!result)
  {
    if ((v1 - 257) > 6)
    {
      return 0;
    }

    else
    {
      return off_1F1CEFE28[(v1 - 257)];
    }
  }

  return result;
}

uint64_t (*ausdk::AUMusicLookup::Lookup(ausdk::AUMusicLookup *this))()
{
  v1 = this;
  result = ausdk::AUBaseLookup::Lookup(this);
  if (!result)
  {
    if ((v1 - 257) > 6)
    {
      return 0;
    }

    else
    {
      return off_1F1CEFE60[(v1 - 257)];
    }
  }

  return result;
}

uint64_t sub_1A934DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    return (*(*(a1 + 64) + 480))();
  }

  else
  {
    return 4294967246;
  }
}

void sub_1A934E048(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1A9335A94();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1A934E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 64) + 472))();
  }

  else
  {
    return 4294967246;
  }
}

void sub_1A934E394(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t CAIsDebuggerAttached(void)
{
  v8 = *MEMORY[0x1E69E9840];
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  v2 = 648;
  v4 = 0;
  sysctl(v5, 4u, v3, &v2, 0, 0);
  v0 = *MEMORY[0x1E69E9840];
  return (v4 >> 11) & 1;
}

uint64_t sub_1A934EE48()
{
  qword_1ED970EB0 = objc_alloc_init(TTSLocaleUtilities);

  return MEMORY[0x1EEE66BB8]();
}

id _AXNSStringFromOSType(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v12 = a1;
  v7 = BYTE3(a1);
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = *(&v12 + v6);
    if (v9 < 0)
    {
      break;
    }

    if ((*(v8 + 4 * v9 + 60) & 0x40000) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (++v6 == 4)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%c%c%c%c", a4, a5, v7, BYTE2(a1), BYTE1(a1), a1);
      goto LABEL_9;
    }
  }

  if (__maskrune(*(&v12 + v6), 0x40000uLL))
  {
    goto LABEL_6;
  }

LABEL_8:
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%u", a4, a5, a1);
  v10 = LABEL_9:;

  return v10;
}

id AXAudioComponentDescUniqueTriple(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = _AXNSStringFromOSType(*a1, a2, a3, a4, a5);
  v12 = _AXNSStringFromOSType(a1[1], v8, v9, v10, v11);
  v17 = _AXNSStringFromOSType(a1[2], v13, v14, v15, v16);
  v21 = objc_msgSend_stringWithFormat_(v6, v18, @"%@_%@_%@", v19, v20, v7, v12, v17);

  return v21;
}

id AXAudioComponentDescUniqueSpeechSynthTuple(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = _AXNSStringFromOSType(*(a1 + 4), a2, a3, a4, a5);
  v12 = _AXNSStringFromOSType(*(a1 + 8), v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@_%@", v14, v15, v7, v12);

  return v16;
}

id AXNSStringFromAudioUnitComponentDescription(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = _AXNSStringFromOSType(a1[2], a2, a3, a4, a5);
  v12 = _AXNSStringFromOSType(*a1, v8, v9, v10, v11);
  v17 = _AXNSStringFromOSType(a1[1], v13, v14, v15, v16);
  v21 = objc_msgSend_stringWithFormat_(v6, v18, @"AU Desc: (Manufacturer: %@) (Type: %@) (SubType: %@) (Flags: %u) (Flag Mask: %u)", v19, v20, v7, v12, v17, a1[3], a1[4]);

  return v21;
}

void *sub_1A9350558(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38.receiver = a1;
  v38.super_class = &off_1F1D203B8;
  v14 = objc_msgSendSuper2(&v38, sel_init);
  v18 = v14;
  if (v14)
  {
    objc_msgSend_setName_(v14, v15, v10, v16, v17);
    objc_msgSend_setIdentifier_(v18, v19, v11, v20, v21);
    objc_msgSend_setSupportedLanguages_(v18, v22, v13, v23, v24);
    objc_msgSend_setPrimaryLanguages_(v18, v25, v12, v26, v27);
    objc_msgSend_setAge_(v18, v28, 0, v29, v30);
    objc_msgSend_setGender_(v18, v31, 0, v32, v33);
    objc_msgSend_setVoiceSize_(v18, v34, 0, v35, v36);
  }

  return v18;
}

void sub_1A9350648(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AXLogSpeechSynthesis();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    token = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1A9324000, v4, OS_LOG_TYPE_INFO, "%@ requested speech voices be updated", &token, 0xCu);
  }

  token = 0;
  notify_register_check(sseNotificationName, &token);
  v5 = token;
  v10 = objc_msgSend_hash(v3, v6, v7, v8, v9);
  notify_set_state(v5, v10);
  notify_post(sseNotificationName);
  notify_cancel(token);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A9350738(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5);
  v14 = objc_msgSend_bundleIdentifier(v6, v7, v8, v9, v10);

  objc_msgSend_updateSpeechVoicesForClient_(a1, v11, v14, v12, v13);
}

id sub_1A93507A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_isFirstParty(a1, a2, a3, a4, a5))
  {
    v10 = objc_msgSend_extraAttributes(a1, v6, v7, v8, v9);
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"kTTSSynthesisProviderVoiceAttributeGroupName", v12, v13);

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v20 = objc_msgSend_name(a1, v15, v16, v17, v18);
      v23 = objc_msgSend_localizedName_forLanguage_(TTSAXResource, v21, v20, 0, v22);

      if (objc_msgSend_length(v23, v24, v25, v26, v27))
      {
        v32 = v23;
      }

      else
      {
        v32 = objc_msgSend_name(a1, v28, v29, v30, v31);
      }

      v19 = v32;
    }
  }

  else
  {
    v19 = objc_msgSend_manufacturerName(a1, v6, v7, v8, v9);
  }

  return v19;
}

id sub_1A9350894(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v8 = objc_msgSend_name(a1, v4, v5, v6, v7);
  v13 = objc_msgSend_identifier(a1, v9, v10, v11, v12);
  v18 = objc_msgSend_supportedLanguages(a1, v14, v15, v16, v17);
  v23 = objc_msgSend_age(a1, v19, v20, v21, v22);
  v28 = objc_msgSend_gender(a1, v24, v25, v26, v27);
  v33 = objc_msgSend_voiceSize(a1, v29, v30, v31, v32);
  v38 = objc_msgSend_version(a1, v34, v35, v36, v37);
  v42 = objc_msgSend_stringWithFormat_(v2, v39, @"[%@ %p] Name: %@, Identifier: %@, Supported Languages %@, Age: %li, Gender: %li, Size: %lli, Version: %@", v40, v41, v3, a1, v8, v13, v18, v23, v28, v33, v38);

  if (TTSIsInternalBuild())
  {
    v47 = MEMORY[0x1E696AEC0];
    objc_msgSend_auComponentDesc(a1, v43, v44, v45, v46);
    v52 = AXNSStringFromAudioUnitComponentDescription(v58, v48, v49, v50, v51);
    v56 = objc_msgSend_stringWithFormat_(v47, v53, @"%@, AUComponent %@", v54, v55, v42, v52);

    v42 = v56;
  }

  return v42;
}

uint64_t sub_1A93509F4(id a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 == a1)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v10 = objc_msgSend_age(a1, v6, v7, v8, v9);
      if (v10 == objc_msgSend_age(v5, v11, v12, v13, v14) && (v19 = objc_msgSend_gender(a1, v15, v16, v17, v18), v19 == objc_msgSend_gender(v5, v20, v21, v22, v23)))
      {
        v28 = objc_msgSend_name(a1, v24, v25, v26, v27);
        v33 = objc_msgSend_name(v5, v29, v30, v31, v32);
        if (objc_msgSend_isEqual_(v28, v34, v33, v35, v36))
        {
          v41 = objc_msgSend_primaryLanguages(a1, v37, v38, v39, v40);
          v46 = objc_msgSend_primaryLanguages(v5, v42, v43, v44, v45);
          if (objc_msgSend_isEqual_(v41, v47, v46, v48, v49))
          {
            v54 = objc_msgSend_supportedLanguages(a1, v50, v51, v52, v53);
            v59 = objc_msgSend_supportedLanguages(v5, v55, v56, v57, v58);
            isEqual = objc_msgSend_isEqual_(v54, v60, v59, v61, v62);
          }

          else
          {
            isEqual = 0;
          }
        }

        else
        {
          isEqual = 0;
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

uint64_t sub_1A9350B78(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_hash(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_supportedLanguages(a1, v12, v13, v14, v15);
  v21 = objc_msgSend_hash(v16, v17, v18, v19, v20) ^ v11;
  v26 = objc_msgSend_primaryLanguages(a1, v22, v23, v24, v25);
  v31 = objc_msgSend_hash(v26, v27, v28, v29, v30);
  v36 = v21 ^ v31 ^ objc_msgSend_age(a1, v32, v33, v34, v35);
  v41 = objc_msgSend_gender(a1, v37, v38, v39, v40);
  v46 = objc_msgSend_identifier(a1, v42, v43, v44, v45);
  v51 = v41 ^ objc_msgSend_hash(v46, v47, v48, v49, v50);

  return v36 ^ v51;
}

id sub_1A9350C34(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = objc_msgSend_supportedLanguages(a1, v3, v4, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v28;
    v15 = *MEMORY[0x1E695D998];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v10, *(*(&v27 + 1) + 8 * i), v11, v12);
        v21 = objc_msgSend_objectForKey_(v17, v18, v15, v19, v20);
        objc_msgSend_formUnionWithCharacterSet_(v2, v22, v21, v23, v24);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v31, 16);
    }

    while (v13);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v2;
}

id sub_1A9350D9C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_auComponentDesc(a1, a2, a3, a4, a5);
  v9 = AXAudioComponentDescUniqueTriple(v11, v5, v6, v7, v8);

  return v9;
}

id sub_1A9350DDC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_auComponentDesc(a1, a2, a3, a4, a5);
  v9 = AXAudioComponentDescUniqueSpeechSynthTuple(v11, v5, v6, v7, v8);

  return v9;
}

id sub_1A9350E1C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_synthesizerBundleIdentifier(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_identifier(a1, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@.%@", v14, v15, v7, v12);

  return v16;
}

void sub_1A9350EA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_name(a1, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v4, v10, v9, @"name", v11);

  v16 = objc_msgSend_identifier(a1, v12, v13, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"identifier", v18);

  v23 = objc_msgSend_supportedLanguages(a1, v19, v20, v21, v22);
  objc_msgSend_encodeObject_forKey_(v4, v24, v23, @"supportedLanguages", v25);

  v30 = objc_msgSend_primaryLanguages(a1, v26, v27, v28, v29);
  objc_msgSend_encodeObject_forKey_(v4, v31, v30, @"primaryLanguages", v32);

  v37 = objc_msgSend_version(a1, v33, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(v4, v38, v37, @"version", v39);

  v40 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_voiceSize(a1, v41, v42, v43, v44);
  v49 = objc_msgSend_numberWithLongLong_(v40, v46, v45, v47, v48);
  objc_msgSend_encodeObject_forKey_(v4, v50, v49, @"voiceSize", v51);

  v52 = MEMORY[0x1E696AD98];
  v57 = objc_msgSend_gender(a1, v53, v54, v55, v56);
  v61 = objc_msgSend_numberWithInteger_(v52, v58, v57, v59, v60);
  objc_msgSend_encodeObject_forKey_(v4, v62, v61, @"gender", v63);

  v64 = MEMORY[0x1E696AD98];
  v69 = objc_msgSend_age(a1, v65, v66, v67, v68);
  v73 = objc_msgSend_numberWithInteger_(v64, v70, v69, v71, v72);
  objc_msgSend_encodeObject_forKey_(v4, v74, v73, @"age", v75);

  v155 = 0;
  v156 = 0;
  v157 = 0;
  objc_msgSend_auComponentDesc(a1, v76, v77, v78, v79);
  v83 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v80, v155, v81, v82);
  objc_msgSend_encodeObject_forKey_(v4, v84, v83, @"auDescType", v85);

  v89 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v86, HIDWORD(v155), v87, v88);
  objc_msgSend_encodeObject_forKey_(v4, v90, v89, @"auDescSubType", v91);

  v95 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v92, v156, v93, v94);
  objc_msgSend_encodeObject_forKey_(v4, v96, v95, @"auDescManufacturer", v97);

  v101 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v98, HIDWORD(v156), v99, v100);
  objc_msgSend_encodeObject_forKey_(v4, v102, v101, @"auDescFlags", v103);

  v107 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v104, v157, v105, v106);
  objc_msgSend_encodeObject_forKey_(v4, v108, v107, @"auDescFlagsMask", v109);

  v114 = objc_msgSend_manufacturerName(a1, v110, v111, v112, v113);
  objc_msgSend_encodeObject_forKey_(v4, v115, v114, @"manufacturerName", v116);

  v121 = objc_msgSend_synthesizerBundleIdentifier(a1, v117, v118, v119, v120);
  objc_msgSend_encodeObject_forKey_(v4, v122, v121, @"synthesizerBundleIdentifier", v123);

  v124 = MEMORY[0x1E696AD98];
  isFirstParty = objc_msgSend_isFirstParty(a1, v125, v126, v127, v128);
  v133 = objc_msgSend_numberWithBool_(v124, v130, isFirstParty, v131, v132);
  objc_msgSend_encodeObject_forKey_(v4, v134, v133, @"isFirstParty", v135);

  v136 = MEMORY[0x1E696AD98];
  isPersonalVoice = objc_msgSend_isPersonalVoice(a1, v137, v138, v139, v140);
  v145 = objc_msgSend_numberWithBool_(v136, v142, isPersonalVoice, v143, v144);
  objc_msgSend_encodeObject_forKey_(v4, v146, v145, @"isPersonalVoice", v147);

  v152 = objc_msgSend_extraAttributes(a1, v148, v149, v150, v151);
  objc_msgSend_encodeObject_forKey_(v4, v153, v152, @"extraAttributes", v154);
}

id sub_1A9351230(void *a1, uint64_t a2, void *a3)
{
  v193[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v191.receiver = a1;
  v191.super_class = &off_1F1D203B8;
  v5 = objc_msgSendSuper2(&v191, sel_init);
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"name", v8);
    objc_msgSend_setName_(v5, v10, v9, v11, v12);

    v13 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"identifier", v15);
    objc_msgSend_setIdentifier_(v5, v17, v16, v18, v19);

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v189 = objc_msgSend_setWithObjects_(v20, v23, v21, v24, v25, v22, 0);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v26, v189, @"supportedLanguages", v27);
    objc_msgSend_setSupportedLanguages_(v5, v29, v28, v30, v31);

    v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v32, v189, @"primaryLanguages", v33);
    objc_msgSend_setPrimaryLanguages_(v5, v35, v34, v36, v37);

    v38 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v39, v38, @"voiceSize", v40);
    v46 = objc_msgSend_longLongValue(v41, v42, v43, v44, v45);
    objc_msgSend_setVoiceSize_(v5, v47, v46, v48, v49);

    v50 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v51, v50, @"version", v52);
    objc_msgSend_setVersion_(v5, v54, v53, v55, v56);

    v57 = objc_opt_class();
    v60 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v58, v57, @"gender", v59);
    v65 = objc_msgSend_integerValue(v60, v61, v62, v63, v64);
    objc_msgSend_setGender_(v5, v66, v65, v67, v68);

    v69 = objc_opt_class();
    v72 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v70, v69, @"age", v71);
    v77 = objc_msgSend_integerValue(v72, v73, v74, v75, v76);
    objc_msgSend_setAge_(v5, v78, v77, v79, v80);

    v81 = objc_opt_class();
    v84 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v82, v81, @"auDescType", v83);
    LODWORD(v72) = objc_msgSend_intValue(v84, v85, v86, v87, v88);

    v89 = objc_opt_class();
    v92 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v90, v89, @"auDescSubType", v91);
    LODWORD(v84) = objc_msgSend_intValue(v92, v93, v94, v95, v96);

    v97 = objc_opt_class();
    v100 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v98, v97, @"auDescManufacturer", v99);
    v105 = objc_msgSend_intValue(v100, v101, v102, v103, v104);

    v106 = objc_opt_class();
    v109 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v107, v106, @"auDescFlags", v108);
    v114 = objc_msgSend_unsignedIntValue(v109, v110, v111, v112, v113);

    v115 = objc_opt_class();
    v118 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v116, v115, @"auDescFlagsMask", v117);
    v123 = objc_msgSend_unsignedIntValue(v118, v119, v120, v121, v122);

    v190[0] = v72;
    v190[1] = v84;
    v190[2] = v105;
    v190[3] = v114;
    v190[4] = v123;
    objc_msgSend_setAuComponentDesc_(v5, v124, v190, v125, v126);
    v127 = objc_opt_class();
    v130 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v128, v127, @"manufacturerName", v129);
    objc_msgSend_setManufacturerName_(v5, v131, v130, v132, v133);

    v134 = objc_opt_class();
    v137 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v135, v134, @"synthesizerBundleIdentifier", v136);
    objc_msgSend_setSynthesizerBundleIdentifier_(v5, v138, v137, v139, v140);

    v141 = objc_opt_class();
    v144 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v142, v141, @"isFirstParty", v143);
    v149 = objc_msgSend_BOOLValue(v144, v145, v146, v147, v148);
    objc_msgSend_setIsFirstParty_(v5, v150, v149, v151, v152);

    v153 = objc_opt_class();
    v156 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v154, v153, @"isPersonalVoice", v155);
    v161 = objc_msgSend_BOOLValue(v156, v157, v158, v159, v160);
    objc_msgSend_setIsPersonalVoice_(v5, v162, v161, v163, v164);

    v165 = MEMORY[0x1E695DFD8];
    v193[0] = objc_opt_class();
    v168 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v166, v193, 1, v167);
    v172 = objc_msgSend_setWithArray_(v165, v169, v168, v170, v171);
    v173 = MEMORY[0x1E695DFD8];
    v192[0] = objc_opt_class();
    v192[1] = objc_opt_class();
    v176 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v174, v192, 2, v175);
    v180 = objc_msgSend_setWithArray_(v173, v177, v176, v178, v179);
    v182 = objc_msgSend_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(v4, v181, v172, v180, @"extraAttributes");
    objc_msgSend_setExtraAttributes_(v5, v183, v182, v184, v185);

    v186 = v5;
  }

  v187 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1A9351774(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_name(a1, v15, v16, v17, v18);
  v24 = objc_msgSend_copy(v19, v20, v21, v22, v23);
  objc_msgSend_setName_(v14, v25, v24, v26, v27);

  v32 = objc_msgSend_identifier(a1, v28, v29, v30, v31);
  v37 = objc_msgSend_copy(v32, v33, v34, v35, v36);
  objc_msgSend_setIdentifier_(v14, v38, v37, v39, v40);

  v45 = objc_msgSend_supportedLanguages(a1, v41, v42, v43, v44);

  if (v45)
  {
    v50 = objc_alloc(MEMORY[0x1E695DEC8]);
    v55 = objc_msgSend_supportedLanguages(a1, v51, v52, v53, v54);
    v58 = objc_msgSend_initWithArray_copyItems_(v50, v56, v55, 1, v57);
    objc_msgSend_setSupportedLanguages_(v14, v59, v58, v60, v61);
  }

  v62 = objc_msgSend_primaryLanguages(a1, v46, v47, v48, v49);
  v67 = objc_msgSend_copy(v62, v63, v64, v65, v66);
  objc_msgSend_setPrimaryLanguages_(v14, v68, v67, v69, v70);

  v75 = objc_msgSend_primaryLanguages(a1, v71, v72, v73, v74);

  if (v75)
  {
    v80 = objc_alloc(MEMORY[0x1E695DEC8]);
    v85 = objc_msgSend_primaryLanguages(a1, v81, v82, v83, v84);
    v88 = objc_msgSend_initWithArray_copyItems_(v80, v86, v85, 1, v87);
    objc_msgSend_setPrimaryLanguages_(v14, v89, v88, v90, v91);
  }

  v92 = objc_msgSend_voiceSize(a1, v76, v77, v78, v79);
  objc_msgSend_setVoiceSize_(v14, v93, v92, v94, v95);
  v100 = objc_msgSend_version(a1, v96, v97, v98, v99);
  v105 = objc_msgSend_copy(v100, v101, v102, v103, v104);
  objc_msgSend_setVersion_(v14, v106, v105, v107, v108);

  v113 = objc_msgSend_gender(a1, v109, v110, v111, v112);
  objc_msgSend_setGender_(v14, v114, v113, v115, v116);
  v121 = objc_msgSend_age(a1, v117, v118, v119, v120);
  objc_msgSend_setAge_(v14, v122, v121, v123, v124);
  objc_msgSend_auComponentDesc(a1, v125, v126, v127, v128);
  v192 = v194;
  v193 = v195;
  objc_msgSend_setAuComponentDesc_(v14, v129, &v192, v130, v131);
  v136 = objc_msgSend_manufacturerName(a1, v132, v133, v134, v135);
  v141 = objc_msgSend_copy(v136, v137, v138, v139, v140);
  objc_msgSend_setManufacturerName_(v14, v142, v141, v143, v144);

  v149 = objc_msgSend_synthesizerBundleIdentifier(a1, v145, v146, v147, v148);
  v154 = objc_msgSend_copy(v149, v150, v151, v152, v153);
  objc_msgSend_setSynthesizerBundleIdentifier_(v14, v155, v154, v156, v157);

  isFirstParty = objc_msgSend_isFirstParty(a1, v158, v159, v160, v161);
  objc_msgSend_setIsFirstParty_(v14, v163, isFirstParty, v164, v165);
  isPersonalVoice = objc_msgSend_isPersonalVoice(a1, v166, v167, v168, v169);
  objc_msgSend_setIsPersonalVoice_(v14, v171, isPersonalVoice, v172, v173);
  v178 = objc_msgSend_extraAttributes(a1, v174, v175, v176, v177);

  if (v178)
  {
    v179 = objc_alloc(MEMORY[0x1E695DF20]);
    v184 = objc_msgSend_extraAttributes(a1, v180, v181, v182, v183);
    v187 = objc_msgSend_initWithDictionary_copyItems_(v179, v185, v184, 1, v186);
    objc_msgSend_setExtraAttributes_(v14, v188, v187, v189, v190);
  }

  return v14;
}

void sub_1A9351A78(void *a1, const char *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FF8, v7, 1);

  v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v8, a3[1], v9, v10);
  objc_setAssociatedObject(a1, &unk_1EB390FF9, v11, 1);

  v15 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, a3[2], v13, v14);
  objc_setAssociatedObject(a1, &unk_1EB390FFA, v15, 1);

  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v16, a3[3], v17, v18);
  objc_setAssociatedObject(a1, &unk_1EB390FFB, v19, 1);

  v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v20, a3[4], v21, v22);
  objc_setAssociatedObject(a1, &unk_1EB390FFC, v23, 1);
}

void sub_1A9351BB0(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = objc_getAssociatedObject(a1, &unk_1EB390FF8);
  *a2 = objc_msgSend_intValue(v4, v5, v6, v7, v8);

  v9 = objc_getAssociatedObject(a1, &unk_1EB390FF9);
  a2[1] = objc_msgSend_intValue(v9, v10, v11, v12, v13);

  v14 = objc_getAssociatedObject(a1, &unk_1EB390FFA);
  a2[2] = objc_msgSend_intValue(v14, v15, v16, v17, v18);

  v19 = objc_getAssociatedObject(a1, &unk_1EB390FFB);
  a2[3] = objc_msgSend_unsignedIntValue(v19, v20, v21, v22, v23);

  v28 = objc_getAssociatedObject(a1, &unk_1EB390FFC);
  a2[4] = objc_msgSend_unsignedIntValue(v28, v24, v25, v26, v27);
}

void sub_1A9351CDC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390FFF, v6, 1);
}

uint64_t sub_1A9351D44(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390FFF);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9351D84(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB391000, v6, 1);
}

uint64_t sub_1A9351DEC(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB391000);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

id sub_1A9351E80(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_identifier(a1, a2, a3, a4, a5);
  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @"super-compact", @"compact", v7);

  return v8;
}

uint64_t sub_1A9352024(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_1EB391010 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4, a5);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A93521B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A93521CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A93521E4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A9352474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A935248C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A9352E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9352E2C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A935324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9353264(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A9353890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1A93538B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3, a4, a5);
  objc_msgSend_timeIntervalSinceDate_(v6, v7, *(a1 + 32), v8, v9);

  v10 = AXTTSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9578AB0(v10, v11, v12, v13, v14);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setLatencyCallback_(WeakRetained, v16, 0, v17, v18);
}

void sub_1A9353948(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_addObject_(*(*(a1 + 32) + 56), a2, *(a1 + 40), a4, a5);
  v11 = objc_msgSend_coreSynth(*(a1 + 32), v6, v7, v8, v9);
  objc_msgSend_speakWithRequest_language_synthesizer_completionHandler_(v11, v10, *(a1 + 40), *(a1 + 48), *(a1 + 32), &unk_1F1CEFEB8);
}

void sub_1A9353B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9353B54(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A9353D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9353D34(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1A93545AC(uint64_t a1, const char *a2)
{
  result = objc_msgSend__stopSpeakingRequest_atNextBoundary_synchronously_error_(*(a1 + 32), a2, 0, *(a1 + 48), *(a1 + 64), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1A93546AC(uint64_t a1, const char *a2)
{
  result = objc_msgSend__pauseSpeakingRequest_atNextBoundary_synchronously_error_(*(a1 + 32), a2, 0, *(a1 + 48), *(a1 + 64), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1A935479C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend__continueSpeakingRequest_withError_(*(a1 + 32), a2, 0, *(a1 + 48), a5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1A9354A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  objc_msgSend_speechSynthesizer_didStartSpeakingRequest_(WeakRetained, v2, *(a1 + 32), *(a1 + 40), v3);
}

void sub_1A9354B90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  objc_msgSend_speechSynthesizer_didPauseSpeakingRequest_(WeakRetained, v2, *(a1 + 32), *(a1 + 40), v3);
}

void sub_1A9354CA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  objc_msgSend_speechSynthesizer_didContinueSpeakingRequest_(WeakRetained, v2, *(a1 + 32), *(a1 + 40), v3);
}

void sub_1A9354DE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_containsObject_(*(*(a1 + 32) + 56), a2, *(a1 + 40), a4, a5) & 1) == 0)
  {
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 56);
      *buf = 138412546;
      v41 = v7;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_1A9324000, v6, OS_LOG_TYPE_DEFAULT, "We do not have a record of this request: %@ [%@]", buf, 0x16u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A93550A8;
  aBlock[3] = &unk_1E787FE98;
  v9 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v39 = v9;
  v14 = _Block_copy(aBlock);
  v15 = *(a1 + 32);
  if ((v15[64] & 4) != 0)
  {
    v21 = objc_msgSend_delegateTargetQueue(v15, v10, v11, v12, v13);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1A93550B4;
    v33[3] = &unk_1E7880938;
    v18 = &v34 + 1;
    v19 = &v35;
    v20 = &v35 + 1;
    v27 = *(a1 + 32);
    v22 = *(&v27 + 1);
    v37 = *(a1 + 64);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    *&v25 = v23;
    *(&v25 + 1) = v24;
    v34 = v27;
    v35 = v25;
    v36 = v14;
    dispatch_async(v21, v33);

    v16 = v36;
    goto LABEL_9;
  }

  if ((v15[64] & 2) != 0)
  {
    v16 = objc_msgSend_delegateTargetQueue(v15, v10, v11, v12, v13);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9355114;
    block[3] = &unk_1E7880960;
    v17 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v18 = &v29;
    v29 = v17;
    v32 = *(a1 + 64);
    v19 = &v30;
    v30 = *(a1 + 56);
    v20 = &v31;
    v31 = v14;
    dispatch_async(v16, block);
LABEL_9:
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A93550B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  objc_msgSend_speechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError_(WeakRetained, v3, *(a1 + 32), *(a1 + 40), *(a1 + 72), *(a1 + 48), *(a1 + 56));

  v4 = *(*(a1 + 32) + 48);
  v5 = *(a1 + 64);

  dispatch_async(v4, v5);
}

void sub_1A9355114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  objc_msgSend_speechSynthesizer_didFinishSpeakingRequest_successfully_withError_(WeakRetained, v3, *(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 48));

  v4 = *(*(a1 + 32) + 48);
  v5 = *(a1 + 56);

  dispatch_async(v4, v5);
}

void sub_1A9355324(uint64_t *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  objc_msgSend_speechSynthesizer_didEncounterMarker_forRequest_(WeakRetained, v2, a1[4], a1[5], a1[6]);
}

void sub_1A935537C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v7 = objc_msgSend_wordRange(*(a1 + 40), v3, v4, v5, v6);
  objc_msgSend_speechSynthesizer_willSpeakRangeOfSpeechString_forRequest_(WeakRetained, v8, v2, v7, v8, *(a1 + 48));
}

void *sub_1A9355EC8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v17.receiver = a1;
  v17.super_class = &off_1F1D20AB0;
  v8 = objc_msgSendSuper2(&v17, sel_init);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_setSsmlRepresentation_(v8, v9, v6, v10, v11);
    objc_msgSend_setVoice_(v12, v13, v7, v14, v15);
  }

  return v12;
}

void sub_1A9355F54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_ssmlRepresentation(a1, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v4, v10, v9, @"ssmlRepresentation", v11);

  v16 = objc_msgSend_voice(a1, v12, v13, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"voice", v18);

  v25 = objc_msgSend_jobIdentifier(a1, v19, v20, v21, v22);
  objc_msgSend_encodeObject_forKey_(v4, v23, v25, @"jobIdentifier", v24);
}

id sub_1A9356018(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v29.receiver = a1;
  v29.super_class = &off_1F1D20AB0;
  v5 = objc_msgSendSuper2(&v29, sel_init);
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"voice", v8);
    objc_msgSend_setVoice_(v5, v10, v9, v11, v12);

    v13 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"ssmlRepresentation", v15);
    objc_msgSend_setSsmlRepresentation_(v5, v17, v16, v18, v19);

    v20 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"jobIdentifier", v22);
    objc_msgSend_setJobIdentifier_(v5, v24, v23, v25, v26);

    v27 = v5;
  }

  return v5;
}

id sub_1A935617C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_ssmlRepresentation(a1, a2, a3, a4, a5);
  v13 = objc_msgSend_length(v8, v9, v10, v11, v12);
  v17 = objc_msgSend_numberWithUnsignedInteger_(v7, v14, v13, v15, v16);
  v22 = objc_msgSend_voice(a1, v18, v19, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v6, v23, @"SSML Length: %@, Voice: %@", v24, v25, v17, v22);

  return v26;
}

uint64_t sub_1A935622C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_ssmlRepresentation(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_hash(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_voice(a1, v12, v13, v14, v15);
  v21 = objc_msgSend_hash(v16, v17, v18, v19, v20);

  return v21 ^ v11;
}

uint64_t sub_1A935628C(id a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 == a1)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v10 = objc_msgSend_voice(a1, v6, v7, v8, v9);
      v15 = objc_msgSend_voice(v5, v11, v12, v13, v14);
      if (objc_msgSend_isEqual_(v10, v16, v15, v17, v18))
      {
        v23 = objc_msgSend_ssmlRepresentation(a1, v19, v20, v21, v22);
        v28 = objc_msgSend_ssmlRepresentation(v5, v24, v25, v26, v27);
        isEqual = objc_msgSend_isEqual_(v23, v29, v28, v30, v31);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

double ausdk::AUEffectBase::AUEffectBase(ausdk::AUEffectBase *this, OpaqueAudioComponentInstance *a2, char a3)
{
  v4 = ausdk::AUBase::AUBase(this, a2, 1, 1, 0);
  *v4 = &unk_1F1CEFEE8;
  *(v4 + 66) = 0;
  result = 0.0;
  *(v4 + 536) = 0u;
  *(v4 + 276) = 0;
  *(v4 + 554) = a3;
  *(v4 + 139) = 0;
  *(v4 + 560) = 0;
  *(v4 + 147) = 0;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0;
  return result;
}

{
  v4 = ausdk::AUBase::AUBase(this, a2, 1, 1, 0);
  *v4 = &unk_1F1CEFEE8;
  *(v4 + 66) = 0;
  result = 0.0;
  *(v4 + 536) = 0u;
  *(v4 + 276) = 0;
  *(v4 + 554) = a3;
  *(v4 + 139) = 0;
  *(v4 + 560) = 0;
  *(v4 + 147) = 0;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0;
  return result;
}

double ausdk::AUEffectBase::Cleanup(ausdk::AUEffectBase *this)
{
  sub_1A9347DD8(this + 66);
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

uint64_t ausdk::AUEffectBase::Initialize(ausdk::AUEffectBase *this)
{
  v2 = *(sub_1A933BF74(this + 80, 0) + 108);
  v3 = *(sub_1A933BF74(this + 128, 0) + 108);
  v23 = 0;
  v4 = (*(*this + 376))(this, &v23);
  if (v4)
  {
    v5 = v23 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3 << 16 == v2 << 16 && v3 << 16 != 0)
    {
LABEL_46:
      ausdk::AUEffectBase::MaintainKernels(this);
      *(this + 71) = sub_1A933BF74(this + 128, 0);
      *(this + 72) = sub_1A933BF74(this + 80, 0);
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      (*(*this + 392))(&v20, this, 2, 0);
      result = 0;
      *(this + 147) = DWORD2(v21);
      return result;
    }
  }

  else
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = (v23 + 4 * v7);
        v9 = *v8;
        v10 = v8[1];
        if ((v9 & 0x80000000) == 0 || (v10 & 0x80000000) == 0)
        {
          break;
        }

        if (v9 == -1 && v10 == -2)
        {
          goto LABEL_46;
        }

        v12 = (v9 & v10) == 0xFFFFFFFF && (v3 ^ v2) == 0;
        v13 = v12;
        v14 = v10 == -1 && v9 == -2;
        if (v14 || v13)
        {
          goto LABEL_46;
        }

        if (++v7 >= v4)
        {
          return 4294956428;
        }
      }

      v16 = v10 == -1 || v3 == v10;
      v18 = (v9 == -1 || v2 == v9) && v16;
      ++v7;
    }

    while (v7 < v4 && !v18);
    if (v18)
    {
      goto LABEL_46;
    }
  }

  return 4294956428;
}

uint64_t ausdk::AUEffectBase::MaintainKernels(uint64_t this)
{
  v1 = this;
  if (*(this + 584))
  {
    v2 = 1;
  }

  else
  {
    this = sub_1A933BF74(this + 128, 0);
    v2 = *(this + 108);
  }

  v3 = v1[67];
  v4 = v1[66];
  v5 = (v3 - v4) >> 3;
  v6 = v1 + 66;
  v7 = v2;
  if (v5 >= v2)
  {
    if (v5 > v2)
    {
      v23 = (v3 - 8);
      v24 = v3 - 8;
      do
      {
        this = *v23;
        *v23 = 0;
        if (this)
        {
          this = (*(*this + 8))(this);
          v4 = *v6;
        }

        v1[67] = v23;
        v25 = v24 - v4;
        v24 -= 8;
        --v23;
      }

      while (v7 < v25 >> 3);
    }
  }

  else
  {
    this = sub_1A9356B78(v1 + 66, v2);
    v8 = (v1[67] - v1[66]) >> 3;
    if (v7 > v8)
    {
      v9 = v7 - v8;
      do
      {
        (*(*v1 + 72))(&v29, v1);
        v10 = v1[67];
        v11 = v1[68];
        if (v10 >= v11)
        {
          v14 = *v6;
          v15 = v10 - *v6;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            sub_1A9335A94();
          }

          v18 = v11 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          v30[4] = v1 + 66;
          if (v19)
          {
            sub_1A9341F2C((v1 + 66), v19);
          }

          v20 = v29;
          v29 = 0;
          *(8 * v16) = v20;
          v13 = 8 * v16 + 8;
          memcpy(0, v14, v15);
          v21 = v1[66];
          v1[66] = 0;
          v1[67] = v13;
          v22 = v1[68];
          v1[68] = 0;
          v30[2] = v21;
          v30[3] = v22;
          v30[0] = v21;
          v30[1] = v21;
          sub_1A93573F0(v30);
        }

        else
        {
          v12 = v29;
          v29 = 0;
          *v10 = v12;
          v13 = (v10 + 1);
        }

        v1[67] = v13;
        this = v29;
        v29 = 0;
        if (this)
        {
          this = (*(*this + 8))(this);
        }

        --v9;
      }

      while (v9);
    }
  }

  if (v7)
  {
    v26 = 0;
    v27 = *v6;
    do
    {
      v28 = v27[v26];
      if (v28)
      {
        *(v28 + 16) = v26;
      }

      ++v26;
    }

    while (v7 != v26);
  }

  return this;
}

void sub_1A935690C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUEffectBase::Reset(ausdk::AUEffectBase *this)
{
  v2 = *(this + 66);
  v3 = *(this + 67);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
    }

    ++v2;
  }

  return ausdk::AUBase::Reset(this);
}

uint64_t ausdk::AUEffectBase::GetPropertyInfo(ausdk::AUEffectBase *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || (a2 | 8) != 0x1D)
  {
    return ausdk::AUBase::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a6 = 1;
  *a5 = 4;
  return 0;
}

uint64_t ausdk::AUEffectBase::GetProperty(ausdk::AUEffectBase *this, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return ausdk::AUBase::GetProperty(this, a2, a3, a4, a5);
  }

  if (a2 == 29)
  {
    v6 = *(this + 554);
  }

  else
  {
    if (a2 != 21)
    {
      return ausdk::AUBase::GetProperty(this, a2, a3, a4, a5);
    }

    v6 = *(this + 552);
  }

  *a5 = v6;
  return 0;
}

uint64_t ausdk::AUEffectBase::SetProperty(ausdk::AUEffectBase *this, unsigned int a2, unsigned int a3, unsigned int a4, int *a5, unsigned int a6)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 == 29)
  {
    result = 0;
    *(this + 554) = *a5 != 0;
    return result;
  }

  if (a2 != 21)
  {
LABEL_2:

    return ausdk::AUBase::SetProperty(this, a2, a3, a4, a5);
  }

  else if (a6 < 4)
  {
    return 4294956445;
  }

  else
  {
    v8 = *a5;
    if ((*a5 != 0) != *(this + 552))
    {
      if (!v8 && *(this + 552) && *(this + 17) == 1)
      {
        (*(*this + 72))(this, 0, 0);
      }

      (*(*this + 584))(this, v8 != 0);
    }

    return 0;
  }
}

void *sub_1A9356B78(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1A9341F2C(result, a2);
    }

    sub_1A9335A94();
  }

  return result;
}

uint64_t ausdk::AUEffectBase::ChangeStreamFormat(ausdk::AUEffectBase *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v8 = ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (!v8 && *(this + 553) == 1 && a4->mSampleRate != a5->mSampleRate)
  {
    (*(*this + 432))(this, 3, 0, 0, a4->mSampleRate);
  }

  return v8;
}

uint64_t ausdk::AUEffectBase::ProcessScheduledSlice(ausdk::AUEffectBase *this, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v5 = *a2;
  v7 = a2[1];
  v6 = a2[2];
  v8 = *(this + 147) * a4;
  v9 = *v7;
  if (v9)
  {
    v10 = v7 + 3;
    do
    {
      *v10 = *(v10 - 1) * v8;
      v10 += 4;
      --v9;
    }

    while (v9);
  }

  v11 = *v6;
  if (v11)
  {
    v12 = v6 + 3;
    do
    {
      *v12 = *(v12 - 1) * v8;
      v12 += 4;
      --v11;
    }

    while (v11);
  }

  result = (*(*this + 176))(this, v5, v7, v6, a4);
  v14 = *v7;
  if (v14)
  {
    v15 = v7 + 4;
    do
    {
      *v15 += (*(v15 - 2) * v8);
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v16 = *v6;
  if (v16)
  {
    v17 = v6 + 4;
    do
    {
      *v17 += (*(v17 - 2) * v8);
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t ausdk::AUEffectBase::Render(ausdk::AUEffectBase *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = sub_1A933BE1C(this + 80, 0);
  if (!v8 || !*(v8 + 172))
  {
    return 4294956420;
  }

  v9 = ausdk::AUInputElement::PullInput(*(this + 72), a2, a3, 0, a4);
  if (!v9)
  {
    if (*(this + 554) == 1)
    {
      v10 = *(this + 71);
      if (*(v10 + 168) == 1)
      {
        v11 = sub_1A933ADF0(*(this + 72));
        v12 = *v11;
        if (*(v10 + 160) < v12)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A9578B90();
          }

          exception = __cxa_allocate_exception(0x18uLL);
          sub_1A9333D44(exception, -1);
          __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
        }

        *(v10 + 144) = 2;
        memcpy((*(v10 + 152) + 48), v11, (16 * v12) | 8);
      }
    }

    if ((*(*this + 592))(this))
    {
      if ((*(this + 554) & 1) == 0)
      {
        v13 = *(this + 72);
        v14 = sub_1A933ADF0(*(this + 71));
        sub_1A935749C((v13 + 144), v14);
      }

      v9 = 0;
    }

    else
    {
      v16 = *(this + 48);
      v17 = *(this + 49);
      v18 = sub_1A933ADF0(*(this + 72));
      v19 = sub_1A933ADF0(*(this + 71));
      v20 = v19;
      if (v16 == v17)
      {
        v9 = (*(*this + 176))(this, a2, v18, v19, a4);
      }

      else
      {
        v33[0] = a2;
        v33[1] = v18;
        v33[2] = v19;
        v9 = (*(*this + 560))(this, this + 384, a4, v33);
        v21 = *(this + 147) * a4;
        v22 = *v18;
        if (v22)
        {
          v23 = v18 + 4;
          do
          {
            v24 = (*(v23 - 2) * v21);
            *v23 -= v24;
            *(v23 - 1) = v24;
            v23 += 2;
            --v22;
          }

          while (v22);
        }

        v25 = *v20;
        if (v25)
        {
          v26 = v20 + 4;
          do
          {
            v27 = (*(v26 - 2) * v21);
            *v26 -= v27;
            *(v26 - 1) = v27;
            v26 += 2;
            --v25;
          }

          while (v25);
        }
      }
    }

    if ((*a2 & 0x10) != 0 && (*(this + 554) & 1) == 0)
    {
      v28 = sub_1A933ADF0(*(this + 71));
      if (*v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = (v28 + 4);
        do
        {
          bzero(*v31, *(v31 - 1));
          ++v30;
          v31 += 2;
        }

        while (v30 < *v29);
      }
    }
  }

  return v9;
}

uint64_t ausdk::AUEffectBase::ProcessBufferLists(ausdk::AUEffectBase *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  if (((*(*this + 592))(this) & 1) == 0)
  {
    v10 = sub_1A93571F0(this, *a2, a5);
    *a2 |= 0x10u;
    v11 = *(this + 67);
    v12 = *(this + 66);
    if (v11 != v12)
    {
      v13 = v10;
      v14 = 0;
      mBuffers = a3->mBuffers;
      v16 = a4->mBuffers;
      v17 = 1;
      do
      {
        v18 = *(v12 + 8 * v14);
        if (v18)
        {
          v20 = v13;
          (*(*v18 + 24))(v18, mBuffers[v14].mData, v16[v14].mData, a5, &v20);
          if ((v20 & 1) == 0)
          {
            *a2 &= ~0x10u;
          }

          v11 = *(this + 67);
          v12 = *(this + 66);
        }

        v14 = v17++;
      }

      while (v14 < (v11 - v12) >> 3);
    }
  }

  return 0;
}

uint64_t sub_1A93571F0(uint64_t a1, char a2, unsigned int a3)
{
  v6 = *(sub_1A933BF74(a1 + 128, 0) + 80);
  v7 = (*(*a1 + 344))(a1);
  (*(*a1 + 352))(a1);
  if ((a2 & 0x10) == 0)
  {
    result = 0;
    *(a1 + 560) = 1;
    return result;
  }

  if (*(a1 + 560) != 1)
  {
    v10 = *(a1 + 556);
    if (v10)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v10 = (v6 * (v7 + v8));
  *(a1 + 556) = v10;
  *(a1 + 560) = 0;
  if (!v10)
  {
    return 1;
  }

LABEL_5:
  result = 0;
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (!v11)
  {
    v12 = 0;
  }

  *(a1 + 556) = v12;
  return result;
}

void sub_1A9357324(void **a1)
{
  *a1 = &unk_1F1CEFEE8;
  v2 = a1 + 66;
  sub_1A9347D84(&v2);
  ausdk::AUBase::~AUBase(a1);
}

uint64_t sub_1A9357380(void **a1)
{
  *a1 = &unk_1F1CEFEE8;
  v3 = a1 + 66;
  sub_1A9347D84(&v3);
  ausdk::AUBase::~AUBase(a1);
  return MEMORY[0x1AC586D00]();
}

uint64_t sub_1A93573F0(uint64_t a1)
{
  sub_1A9357428(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1A9357428(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_1A935749C(void *result, _DWORD *a2)
{
  if (!*result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A9578B90();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -1);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  v3 = *a2;
  if (*a2)
  {
    v4 = 0;
    v5 = result[1];
    v6 = v5 + 56;
    v7 = (a2 + 4);
    do
    {
      if (v4 >= *(v5 + 48))
      {
        v8 = -16;
      }

      else
      {
        v8 = 0;
      }

      v9 = v6 + v8;
      result = *v7;
      v10 = *(v6 + v8 + 8);
      if (*v7 != v10)
      {
        result = memmove(result, v10, *(v9 + 4));
        v3 = *a2;
      }

      *(v7 - 1) = *(v9 + 4);
      ++v4;
      v6 = v9 + 16;
      v7 += 2;
    }

    while (v4 < v3);
  }

  return result;
}

void *sub_1A9357614()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F304065E71971uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = AUSpeechEnhancerV2::AUSpeechEnhancerV2;
  result[6] = 0;
  result[7] = 0;
  result[5] = sub_1A9357698;
  return result;
}

uint64_t sub_1A9357928(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = qword_1EB391038;
  v22 = qword_1EB391038;
  if (!qword_1EB391038)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A935B9A4;
    v18[3] = &unk_1E787FF60;
    v18[4] = &v19;
    sub_1A935B9A4(v18, a2, a3, a4, a5);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v11 = objc_msgSend_sharedInstance(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_allowAppUsage(v11, v12, v13, v14, v15);

  return v16;
}

void sub_1A93579FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_TtC12TextToSpeech15CoreSynthesizer *sub_1A9357A18(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v2 = objc_getAssociatedObject(a1, &unk_1EB391029);
    if (!v2)
    {
      v2 = objc_alloc_init(_TtC12TextToSpeech15CoreSynthesizer);
      objc_setAssociatedObject(a1, &unk_1EB391029, v2, 1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1A9357ABC(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_getAssociatedObject(a1, &unk_1EB39102B);
    if (!v2)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_setAssociatedObject(a1, &unk_1EB39102B, v2, 1);
    }
  }

  return v2;
}

void sub_1A9357B44(void *a1, uint64_t a2, void *a3)
{
  value = a3;
  if ((TTSUseCoreSynthesizerForAV() & 1) == 0)
  {
    objc_setAssociatedObject(a1, &unk_1EB39102C, value, 1);
  }
}

id sub_1A9357BA8(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_getAssociatedObject(a1, &unk_1EB39102C);
  }

  return v2;
}

uint64_t sub_1A9357BFC(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB39102D);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9357C3C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB39102D, v6, 1);
}

uint64_t sub_1A9357CA4(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB39102E);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9357CE4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB39102E, v6, 1);
}

TTSSpeechManager *sub_1A9357D4C(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_getAssociatedObject(a1, &unk_1EB39102F);
    if (!v2)
    {
      v2 = objc_alloc_init(TTSSpeechManager);
      v7 = objc_msgSend_speechSource(a1, v3, v4, v5, v6);
      objc_msgSend_setSpeechSource_(v2, v8, v7, v9, v10);

      objc_setAssociatedObject(a1, &unk_1EB39102F, v2, 1);
    }
  }

  return v2;
}

void sub_1A9357DFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_setAssociatedObject(a1, &unk_1EB391030, v4, 1);
  v12 = objc_msgSend_speechManager(a1, v5, v6, v7, v8);
  objc_msgSend_setSpeechSource_(v12, v9, v4, v10, v11);
}

uint64_t sub_1A9357EA0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_speechManager(a1, a2, a3, a4, a5);
  active = objc_msgSend_setActiveOptions(v5, v6, v7, v8, v9);

  return active;
}

void sub_1A9357ED8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_speechManager(a1, a2, a3, a4, a5);
  objc_msgSend_setSetActiveOptions_(v9, v6, a3, v7, v8);
}

uint64_t sub_1A9357F28(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB391031);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9357F68(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB391031, v6, 1);
}

void sub_1A9357FD0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (TTSUseCoreSynthesizerForAV())
  {
    v15 = objc_msgSend_coreSynth(a1, v5, v6, v7, v8);
    objc_msgSend_setAuxSessionCategory_(v15, v9, v4, v10, v11);
  }

  else
  {
    v15 = objc_msgSend_speechManager(a1, v5, v6, v7, v8);
    objc_msgSend_setAudioSessionCategory_(v15, v12, v4, v13, v14);
  }
}

id sub_1A9358054(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
    objc_msgSend_auxSessionCategory(v6, v7, v8, v9, v10);
  }

  else
  {
    v6 = objc_msgSend_speechManager(a1, v2, v3, v4, v5);
    objc_msgSend_audioSessionCategory(v6, v11, v12, v13, v14);
  }
  v15 = ;

  return v15;
}

void sub_1A93580CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v15 = objc_msgSend_coreSynth(a1, v5, v6, v7, v8);
    objc_msgSend_setAuxSessionCategoryOptions_(v15, v9, a3, v10, v11);
  }

  else
  {
    v15 = objc_msgSend_speechManager(a1, v5, v6, v7, v8);
    objc_msgSend_setAudioSessionCategoryOptions_(v15, v12, a3, v13, v14);
  }
}

uint64_t sub_1A9358148(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
    v11 = objc_msgSend_auxSessionCategoryOptions(v6, v7, v8, v9, v10);
  }

  else
  {
    v6 = objc_msgSend_speechManager(a1, v2, v3, v4, v5);
    v11 = objc_msgSend_audioSessionCategoryOptions(v6, v12, v13, v14, v15);
  }

  v16 = v11;

  return v16;
}

uint64_t sub_1A93581A8(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
    v11 = objc_msgSend_useAuxiliarySession(v6, v7, v8, v9, v10);
  }

  else
  {
    v6 = objc_msgSend_speechManager(a1, v2, v3, v4, v5);
    v11 = objc_msgSend_usesAuxiliarySession(v6, v12, v13, v14, v15);
  }

  v16 = v11;

  return v16 ^ 1u;
}

void sub_1A9358208(void *a1, uint64_t a2, int a3)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v15 = objc_msgSend_coreSynth(a1, v5, v6, v7, v8);
    objc_msgSend_setUseAuxiliarySession_(v15, v9, a3 ^ 1u, v10, v11);
  }

  else
  {
    v15 = objc_msgSend_speechManager(a1, v5, v6, v7, v8);
    objc_msgSend_setUsesAuxiliarySession_(v15, v12, a3 ^ 1u, v13, v14);
  }
}

id sub_1A9358284(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
  }

  else
  {
    objc_msgSend_speechManager(a1, v2, v3, v4, v5);
  }
  v6 = ;
  v11 = objc_msgSend_audioSession(v6, v7, v8, v9, v10);

  return v11;
}

uint64_t sub_1A93582F0(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
  }

  else
  {
    objc_msgSend_speechManager(a1, v2, v3, v4, v5);
  }
  v6 = ;
  v11 = objc_msgSend_audioQueueFlags(v6, v7, v8, v9, v10);

  return v11;
}

void sub_1A9358348(void *a1, uint64_t a2, uint64_t a3)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    objc_msgSend_coreSynth(a1, v5, v6, v7, v8);
  }

  else
  {
    objc_msgSend_speechManager(a1, v5, v6, v7, v8);
  }
  v12 = ;
  objc_msgSend_setAudioQueueFlags_(v12, v9, a3, v10, v11);
}

uint64_t sub_1A93583B8(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
    v11 = objc_msgSend_mixToTelephonyUplink(v6, v7, v8, v9, v10);
  }

  else
  {
    v6 = objc_msgSend_speechManager(a1, v2, v3, v4, v5);
    v11 = (objc_msgSend_audioQueueFlags(v6, v12, v13, v14, v15) >> 8) & 1;
  }

  return v11;
}

void sub_1A935841C(void *a1, uint64_t a2, uint64_t a3)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v26 = objc_msgSend_coreSynth(a1, v5, v6, v7, v8);
    objc_msgSend_setMixToTelephonyUplink_(v26, v9, a3, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_speechManager(a1, v5, v6, v7, v8);
    v17 = objc_msgSend_audioQueueFlags(v12, v13, v14, v15, v16);

    if (a3)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    v26 = objc_msgSend_speechManager(a1, v18, v19, v20, v21);
    objc_msgSend_setAudioQueueFlags_(v26, v23, v17 & 0xFFFFFEFF | v22, v24, v25);
  }
}

uint64_t sub_1A93584CC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_speechManager(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_isInAudioInterruption(v5, v6, v7, v8, v9);

  return v10;
}

id sub_1A9358504(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
    objc_msgSend_channels(v6, v7, v8, v9, v10);
  }

  else
  {
    v6 = objc_msgSend_speechManager(a1, v2, v3, v4, v5);
    objc_msgSend_outputChannels(v6, v11, v12, v13, v14);
  }
  v15 = ;

  return v15;
}

void sub_1A935857C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (TTSUseCoreSynthesizerForAV())
  {
    v15 = objc_msgSend_coreSynth(a1, v5, v6, v7, v8);
    objc_msgSend_setChannels_(v15, v9, v4, v10, v11);
  }

  else
  {
    v15 = objc_msgSend_speechManager(a1, v5, v6, v7, v8);
    objc_msgSend_setOutputChannels_(v15, v12, v4, v13, v14);
  }
}

id sub_1A9358600(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
    objc_msgSend_stopSpeakingAt_completionHandler_(v6, v7, 0, &unk_1F1CEDBC8, v8);
  }

  else
  {
    v6 = objc_msgSend_inflightUtterance(a1, v2, v3, v4, v5);
    v13 = objc_msgSend_action(v6, v9, v10, v11, v12);
    objc_msgSend_setOnSpeechStartCallback_(v13, v14, 0, v15, v16);
    objc_msgSend_setOnPauseCallback_(v13, v17, 0, v18, v19);
    objc_msgSend_setOnResumeCallback_(v13, v20, 0, v21, v22);
    objc_msgSend_setOnWillSpeakRangeCallback_(v13, v23, 0, v24, v25);
    objc_msgSend_setCompletionCallback_(v13, v26, 0, v27, v28);
    objc_msgSend_setOnMarkerCallback_(v13, v29, 0, v30, v31);
    v36 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v32, v33, v34, v35);
    objc_msgSend_removeObserver_(v36, v37, a1, v38, v39);

    v44 = objc_msgSend_speechManager(a1, v40, v41, v42, v43);
    objc_msgSend_tearDown(v44, v45, v46, v47, v48);
  }

  v50.receiver = a1;
  v50.super_class = &off_1F1D21150;
  return objc_msgSendSuper2(&v50, sel_dealloc);
}

void sub_1A935871C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = objc_msgSend_speechManager(a1, a2, a3, a4, a5);
  objc_msgSend_setAudioSessionInactiveTimeout_(v11, v7, v8, v9, v10, a6);
}

void sub_1A935876C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_speechQueue(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_speechQueue(a1, v12, v13, v14, v15);
    v23 = objc_msgSend_objectAtIndex_(v16, v17, 0, v18, v19);

    objc_msgSend__speakUtterance_(a1, v20, v23, v21, v22);
  }
}

void sub_1A9358810(void *a1, uint64_t a2, void *a3, int a4)
{
  v45 = a3;
  v6 = a1;
  objc_sync_enter(v6);
  v11 = objc_msgSend_speechQueue(v6, v7, v8, v9, v10);
  objc_msgSend_removeObjectIdenticalTo_(v11, v12, v45, v13, v14);

  objc_msgSend_setInflightUtterance_(v6, v15, 0, v16, v17);
  v22 = objc_msgSend_speechQueue(v6, v18, v19, v20, v21);
  v27 = objc_msgSend_count(v22, v23, v24, v25, v26);

  CFRetain(v6);
  if (a4)
  {
    v32 = objc_msgSend_delegate(v6, v28, v29, v30, v31);
    v33 = objc_opt_respondsToSelector();

    if ((v33 & 1) == 0)
    {
      goto LABEL_7;
    }

    v38 = objc_msgSend_delegate(v6, v34, v35, v36, v37);
    objc_msgSend_speechSynthesizer_didFinishSpeechUtterance_(v38, v39, v6, v45, v40);
  }

  else
  {
    v41 = objc_msgSend_delegate(v6, v28, v29, v30, v31);
    v42 = objc_opt_respondsToSelector();

    if ((v42 & 1) == 0)
    {
      goto LABEL_7;
    }

    v38 = objc_msgSend_delegate(v6, v34, v35, v36, v37);
    objc_msgSend_speechSynthesizer_didCancelSpeechUtterance_(v38, v43, v6, v45, v44);
  }

LABEL_7:
  if (v27)
  {
    objc_msgSend__enqueueNextJob(v6, v34, v35, v36, v37);
  }

  CFRelease(v6);
  objc_sync_exit(v6);
}

uint64_t sub_1A9358984(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_initializedWebKitUsage(a1, a2, a3, a4, a5);
  if ((result & 1) == 0)
  {
    v11 = objc_msgSend_delegate(a1, v7, v8, v9, v10);
    NSClassFromString(&cfstr_Webspeechsynth.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_1A9324000, v16, OS_LOG_TYPE_INFO, "Changing audio session and category options for WebKit usage", v23, 2u);
      }

      objc_msgSend_setUsesApplicationAudioSession_(a1, v17, 0, v18, v19);
      objc_msgSend_setDetectSSMLAndModifyUtterances_(a1, v20, 1, v21, v22);
    }

    return objc_msgSend_setInitializedWebKitUsage_(a1, v13, 1, v14, v15);
  }

  return result;
}

void sub_1A9358A58(void *a1, uint64_t a2, void *a3)
{
  v803 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = objc_msgSend_voiceSelection(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_voiceId(v9, v10, v11, v12, v13);
  v19 = v14;
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v21 = objc_msgSend_voice(v4, v15, v16, v17, v18);
    v20 = objc_msgSend_identifier(v21, v22, v23, v24, v25);
  }

  v30 = objc_msgSend_voiceSelection(v4, v26, v27, v28, v29);
  v39 = objc_msgSend_rate(v30, v31, v32, v33, v34);
  if (v39)
  {
    v40 = objc_msgSend_voiceSelection(v4, v35, v36, v37, v38);
    v45 = objc_msgSend_rate(v40, v41, v42, v43, v44);
    objc_msgSend_floatValue(v45, v46, v47, v48, v49);
    v51 = v50;
  }

  else
  {
    objc_msgSend_rate(v4, v35, v36, v37, v38);
    v51 = v52;
  }

  objc_msgSend_pitchMultiplier(v4, v53, v54, v55, v56);
  v58 = v57;
  v63 = objc_msgSend_voiceSelection(v4, v59, v60, v61, v62);
  v68 = objc_msgSend_pitch(v63, v64, v65, v66, v67);

  if (v68)
  {
    v73 = objc_msgSend_voiceSelection(v4, v69, v70, v71, v72);
    v78 = objc_msgSend_pitch(v73, v74, v75, v76, v77);
    objc_msgSend_floatValue(v78, v79, v80, v81, v82);
    v84 = v83;
    v85 = v83;

    if (v84 >= 0.5)
    {
      v86 = (v85 + -0.5) * 2.0 + 1.0;
    }

    else
    {
      v86 = v85 + 0.5;
    }
  }

  else
  {
    v86 = v58;
  }

  v87 = objc_msgSend_voiceSelection(v4, v69, v70, v71, v72);
  v96 = objc_msgSend_volume(v87, v88, v89, v90, v91);
  if (v96)
  {
    v97 = objc_msgSend_voiceSelection(v4, v92, v93, v94, v95);
    v102 = objc_msgSend_volume(v97, v98, v99, v100, v101);
    objc_msgSend_floatValue(v102, v103, v104, v105, v106);
    v108 = v107;
  }

  else
  {
    objc_msgSend_volume(v4, v92, v93, v94, v95);
    v108 = v109;
  }

  v110 = v51;
  v111 = v108;

  if (objc_msgSend_prefersAssistiveTechnologySettings(v4, v112, v113, v114, v115))
  {
    v120 = objc_msgSend_voice(v4, v116, v117, v118, v119);
    v125 = objc_msgSend_language(v120, v121, v122, v123, v124);

    if (!v125)
    {
      v125 = objc_msgSend_currentLanguageCode(MEMORY[0x1E69584F8], v126, v127, v128, v129);
    }

    v130 = TTSLanguageCanonicalFormToGeneralLanguage(v125, v126, v127, v128, v129);
    v131 = _AXSVoiceOverTouchEnabled();
    if (v131)
    {
      LOBYTE(buf) = 0;
      v136 = sub_1A935A0D4(v131, v132, v133, v134, v135);
      v141 = objc_msgSend_sharedInstance(v136, v137, v138, v139, v140);
      v146 = sub_1A935A1B4(v141, v142, v143, v144, v145);
      v148 = objc_msgSend_speechVoiceIdentifierForLanguage_sourceKey_exists_(v141, v147, v130, v146, &buf);

      v154 = buf;
      if (buf)
      {
        v155 = v148;
      }

      else
      {
        v215 = sub_1A935A0D4(v149, v150, v151, v152, v153);
        v220 = objc_msgSend_sharedInstance(v215, v216, v217, v218, v219);
        v225 = sub_1A935A1B4(v220, v221, v222, v223, v224);
        v227 = objc_msgSend_speechVoiceIdentifierForLanguage_sourceKey_exists_(v220, v226, v125, v225, &buf);

        v155 = v227;
      }

      v185 = v155;
      v228 = objc_msgSend__voiceFromInternalVoiceListWithIdentifier_(MEMORY[0x1E69584F8], v150, v155, v152, v153);
      v233 = objc_msgSend_prefersAssistiveTechnologyExceptions(v4, v229, v230, v231, v232);
      v237 = objc_msgSend_containsObject_(v233, v234, @"rate", v235, v236);

      if ((v237 & 1) == 0)
      {
        v243 = sub_1A935A0D4(v238, v239, v240, v241, v242);
        v248 = objc_msgSend_sharedInstance(v243, v244, v245, v246, v247);
        v253 = v248;
        if (v154)
        {
          objc_msgSend_voiceOverSpeakingRateForLanguage_(v248, v249, v130, v251, v252);
          v255 = v254;
        }

        else
        {
          v298 = objc_msgSend_language(v228, v249, v250, v251, v252);
          objc_msgSend_voiceOverSpeakingRateForLanguage_(v253, v299, v298, v300, v301);
          v255 = v302;
        }

        v110 = v255;
        if (fabs(v255 + -3.40282347e38) < 0.001)
        {
          v238 = _AXSVoiceOverTouchSpeakingRate();
          v110 = v303;
        }
      }

      v304 = sub_1A935A0D4(v238, v239, v240, v241, v242);
      v309 = objc_msgSend_sharedInstance(v304, v305, v306, v307, v308);
      objc_msgSend_voiceOverPitch(v309, v310, v311, v312, v313);
      v315 = v314;

      if (v315 <= 0.5)
      {
        v86 = v315 + 0.5;
      }

      else
      {
        v86 = v315 + v315;
      }

      _AXSVoiceOverTouchVolume();
      v317 = v316;

      v111 = v317;
    }

    else
    {
      v157 = _AXSAssistiveTouchScannerEnabled();
      if (v157 && (v162 = sub_1A935A0D4(v157, v158, v159, v160, v161), objc_msgSend_sharedInstance(v162, v163, v164, v165, v166), v167 = objc_claimAutoreleasedReturnValue(), v172 = objc_msgSend_assistiveTouchScannerSpeechEnabled(v167, v168, v169, v170, v171), v167, v172))
      {
        LOBYTE(buf) = 0;
        v173 = sub_1A935A0D4(v157, v158, v159, v160, v161);
        v178 = objc_msgSend_sharedInstance(v173, v174, v175, v176, v177);
        v183 = sub_1A935A2B8(v178, v179, v180, v181, v182);
        v185 = objc_msgSend_speechVoiceIdentifierForLanguage_sourceKey_exists_(v178, v184, v130, v183, &buf);

        if ((buf & 1) == 0)
        {
          v191 = sub_1A935A0D4(v186, v187, v188, v189, v190);
          v196 = objc_msgSend_sharedInstance(v191, v192, v193, v194, v195);
          v201 = sub_1A935A2B8(v196, v197, v198, v199, v200);
          v203 = objc_msgSend_speechVoiceIdentifierForLanguage_sourceKey_exists_(v196, v202, v125, v201, &buf);

          v185 = v203;
        }

        v204 = sub_1A935A0D4(v186, v187, v188, v189, v190);
        v209 = objc_msgSend_sharedInstance(v204, v205, v206, v207, v208);
        objc_msgSend_assistiveTouchScannerSpeechRate(v209, v210, v211, v212, v213);
        v110 = v214;
      }

      else
      {
        LOBYTE(buf) = 0;
        v256 = sub_1A935A0D4(v157, v158, v159, v160, v161);
        v261 = objc_msgSend_sharedInstance(v256, v257, v258, v259, v260);
        v266 = sub_1A935A3BC(v261, v262, v263, v264, v265);
        v185 = objc_msgSend_speechVoiceIdentifierForLanguage_sourceKey_exists_(v261, v267, v130, v266, &buf);

        if ((buf & 1) == 0)
        {
          v273 = sub_1A935A0D4(v268, v269, v270, v271, v272);
          v278 = objc_msgSend_sharedInstance(v273, v274, v275, v276, v277);
          v283 = sub_1A935A3BC(v278, v279, v280, v281, v282);
          v285 = objc_msgSend_speechVoiceIdentifierForLanguage_sourceKey_exists_(v278, v284, v125, v283, &buf);

          v185 = v285;
        }

        v286 = sub_1A935A0D4(v268, v269, v270, v271, v272);
        v291 = objc_msgSend_sharedInstance(v286, v287, v288, v289, v290);
        objc_msgSend_quickSpeakSpeakingRate(v291, v292, v293, v294, v295);
        v297 = v296;

        v110 = v297;
      }
    }

    v318 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1A9324000, v318, OS_LOG_TYPE_INFO, "Using AT preferred settings for voice and rate for: %@", &buf, 0xCu);
    }

    v156 = v185;
    if (v185)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  v156 = v20;
  if (!v20)
  {
LABEL_45:
    v319 = MEMORY[0x1E69584F8];
    v320 = objc_msgSend_voice(v4, v116, v156, v118, v119);
    v325 = objc_msgSend_language(v320, v321, v322, v323, v324);
    v329 = objc_msgSend_voiceWithLanguage_(v319, v326, v325, v327, v328);

    v334 = objc_msgSend_identifier(v329, v330, v331, v332, v333);
    LODWORD(v320) = v334 == 0;

    if (v320)
    {
      v343 = objc_msgSend_speechManager(a1, v335, v336, v337, v338);
      v348 = objc_msgSend_voice(v4, v344, v345, v346, v347);
      v353 = objc_msgSend_language(v348, v349, v350, v351, v352);
      v357 = objc_msgSend_voiceIdentifierUsedForLanguage_(v343, v354, v353, v355, v356);
      v362 = objc_msgSend_voice(v4, v358, v359, v360, v361);
      objc_msgSend_setIdentifier_(v362, v363, v357, v364, v365);
    }

    else
    {
      objc_msgSend_setVoice_(v4, v335, v329, v337, v338);
    }

    v366 = objc_msgSend_voice(v4, v339, v340, v341, v342);
    v371 = objc_msgSend_identifier(v366, v367, v368, v369, v370);

    v372 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v372, OS_LOG_TYPE_INFO))
    {
      v377 = objc_msgSend_voice(v4, v373, v374, v375, v376);
      v382 = objc_msgSend_identifier(v377, v378, v379, v380, v381);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v382;
      _os_log_impl(&dword_1A9324000, v372, OS_LOG_TYPE_INFO, "utterance had bad voice, remaking it %{public}@", &buf, 0xCu);
    }

    v156 = v371;
  }

LABEL_51:
  v766 = v156;
  if (objc_msgSend_isSiriVoiceIdentifier_(TTSAlternativeVoices, v116, v156, v118, v119) && (objc_msgSend_isInternalSynth(a1, v383, v384, v385, v386) & 1) == 0)
  {
    v387 = objc_msgSend_speechManager(a1, v383, v384, v385, v386);
    v392 = objc_msgSend_voice(v4, v388, v389, v390, v391);
    v397 = objc_msgSend_language(v392, v393, v394, v395, v396);
    v401 = objc_msgSend_externalVoiceIdentifierUsedForLanguage_(v387, v398, v397, v399, v400);
    v406 = objc_msgSend_voice(v4, v402, v403, v404, v405);
    objc_msgSend_setIdentifier_(v406, v407, v401, v408, v409);

    v414 = objc_msgSend_voice(v4, v410, v411, v412, v413);
    v419 = objc_msgSend_identifier(v414, v415, v416, v417, v418);

    v766 = v419;
  }

  v420 = objc_msgSend_voice(v4, v383, v384, v385, v386);
  v425 = objc_msgSend_identifier(v420, v421, v422, v423, v424);
  isEqualToString = objc_msgSend_isEqualToString_(v766, v426, v425, v427, v428);

  if ((isEqualToString & 1) == 0)
  {
    v436 = objc_msgSend_voiceWithIdentifier_(MEMORY[0x1E69584F8], v430, v766, v431, v432);
    if (v436)
    {
      objc_msgSend_setVoice_(v4, v433, v436, v434, v435);
      v437 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v437, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A9324000, v437, OS_LOG_TYPE_INFO, "Updating voice on utterance to match preferred technology", &buf, 2u);
      }
    }
  }

  objc_initWeak(&location, a1);
  objc_msgSend_setInflightUtterance_(a1, v438, v4, v439, v440);
  objc_msgSend_preUtteranceDelay(v4, v441, v442, v443, v444);
  if (v449 > 0.0)
  {
    v450 = objc_msgSend_pauseMarkupString_(TTSSpeechManager, v445, v766, v447, v448);
    v451 = MEMORY[0x1E696AEC0];
    objc_msgSend_preUtteranceDelay(v4, v452, v453, v454, v455);
    v460 = objc_msgSend_stringWithFormat_(v451, v457, v450, v458, v459, (v456 * 1000.0));
    v463 = objc_msgSend_actionWithString_shouldQueue_(TTSSpeechAction, v461, v460, 1, v462);
    objc_msgSend_setVoiceIdentifier_(v463, v464, v766, v465, v466);
    v784[0] = MEMORY[0x1E69E9820];
    v784[1] = 3221225472;
    v784[2] = sub_1A935A4C0;
    v784[3] = &unk_1E78809D0;
    v785 = v4;
    v786 = a1;
    objc_copyWeak(&v787, &location);
    objc_msgSend_setCompletionCallback_(v463, v467, v784, v468, v469);
    v474 = objc_msgSend_speechManager(a1, v470, v471, v472, v473);
    objc_msgSend_dispatchSpeechAction_(v474, v475, v463, v476, v477);

    objc_destroyWeak(&v787);
  }

  v478 = objc_msgSend_ssmlRepresentation(v4, v445, v446, v447, v448);
  v479 = v478 == 0;

  if (v479)
  {
    v488 = objc_msgSend_attributedSpeechString(v4, v480, v481, v482, v483);
    v489 = v488 == 0;

    if (v489)
    {
      v484 = objc_msgSend_speechString(v4, v490, v491, v492, v493);
      objc_msgSend_actionWithString_shouldQueue_(TTSSpeechAction, v496, v484, 1, v497);
    }

    else
    {
      v484 = objc_msgSend_attributedSpeechString(v4, v490, v491, v492, v493);
      objc_msgSend_actionWithAttributedString_shouldQueue_(TTSSpeechAction, v494, v484, 1, v495);
    }
    v487 = ;
  }

  else
  {
    v484 = objc_msgSend_ssmlRepresentation(v4, v480, v481, v482, v483);
    v487 = objc_msgSend_actionWithSSMLRepresentation_shouldQueue_(TTSSpeechAction, v485, v484, 1, v486);
  }

  v498 = v487;

  if (v766)
  {
    objc_msgSend_setVoiceIdentifier_(v498, v499, v766, v501, v502);
  }

  v503 = objc_msgSend_voice(v4, v499, v500, v501, v502);
  v504 = v503 == 0;

  if (!v504)
  {
    v509 = objc_msgSend_voiceSelection(v4, v505, v506, v507, v508);
    v510 = v509 == 0;

    if (v510)
    {
      v515 = objc_msgSend_voice(v4, v511, v512, v513, v514);
      objc_msgSend_language(v515, v524, v525, v526, v527);
    }

    else
    {
      v515 = objc_msgSend_voiceSelection(v4, v511, v512, v513, v514);
      objc_msgSend_boundLanguage(v515, v516, v517, v518, v519);
    }
    v520 = ;
    objc_msgSend_setLanguage_(v498, v521, v520, v522, v523);
  }

  v528 = objc_msgSend_audioBufferCallback(v4, v505, v506, v507, v508);
  objc_msgSend_setAudioBufferCallback_(v498, v529, v528, v530, v531);

  v536 = objc_msgSend_markerCallback(v4, v532, v533, v534, v535);
  objc_msgSend_setMarkerCallback_(v498, v537, v536, v538, v539);

  v544 = objc_msgSend_audioBufferCallback(v4, v540, v541, v542, v543);
  objc_msgSend_setSynthesizeSilently_(v498, v545, v544 != 0, v546, v547);

  objc_msgSend_setSpeakingRate_(v498, v548, v549, v550, v551, v110);
  objc_msgSend_setPitch_(v498, v552, v553, v554, v555, v86);
  objc_msgSend_setVolume_(v498, v556, v557, v558, v559, v111);
  objc_msgSend_setShouldProcessEmoji_(v498, v560, 1, v561, v562);
  v567 = objc_msgSend_voiceSelection(v4, v563, v564, v565, v566);
  objc_msgSend_setVoiceSelection_(v498, v568, v567, v569, v570);

  if (objc_opt_respondsToSelector())
  {
    v575 = objc_msgSend_processEmoticons(v4, v571, v572, v573, v574);
    objc_msgSend_setShouldProcessEmoticons_(v498, v576, v575, v577, v578);
  }

  objc_msgSend_setUtterance_(v498, v571, v4, v573, v574);
  objc_msgSend_setAction_(v4, v579, v498, v580, v581);
  if (_AXSVoiceOverTouchEnabled())
  {
    v586 = objc_msgSend_string(v498, v582, v583, v584, v585);
    v587 = v586 == 0;

    if (v587)
    {
      v608 = objc_msgSend_attributedString(v498, v588, v589, v590, v591);
      v609 = v608 == 0;

      if (v609)
      {
        goto LABEL_93;
      }

      v610 = objc_alloc(MEMORY[0x1E696AD40]);
      v615 = objc_msgSend_attributedString(v498, v611, v612, v613, v614);
      v607 = objc_msgSend_initWithAttributedString_(v610, v616, v615, v617, v618);

      v597 = sub_1A935A56C(v619, v620, v621, v622, v623);
      v795 = v597;
      v796 = MEMORY[0x1E695E118];
      v602 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v624, &v796, &v795, 1);
      v604 = objc_msgSend_attributedString(v498, v625, v626, v627, v628);
      v633 = objc_msgSend_length(v604, v629, v630, v631, v632);
      objc_msgSend_setAttributes_range_(v607, v634, v602, 0, v633);
    }

    else
    {
      v592 = objc_alloc(MEMORY[0x1E696AD40]);
      v597 = objc_msgSend_string(v498, v593, v594, v595, v596);
      v602 = sub_1A935A56C(v597, v598, v599, v600, v601);
      v797 = v602;
      v798 = MEMORY[0x1E695E118];
      v604 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v603, &v798, &v797, 1);
      v607 = objc_msgSend_initWithString_attributes_(v592, v605, v597, v604, v606);
    }

    if (v607)
    {
      v789 = 0;
      v790 = &v789;
      v791 = 0x2020000000;
      v640 = qword_1EB391070;
      v792 = qword_1EB391070;
      if (!qword_1EB391070)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v800 = sub_1A935BFB4;
        v801 = &unk_1E787FF60;
        v802 = &v789;
        v641 = sub_1A935BE48(v635, v636, v637, v638, v639);
        v642 = dlsym(v641, "kAXPidKey");
        *(v802[1] + 24) = v642;
        qword_1EB391070 = *(v802[1] + 24);
        v640 = v790[3];
      }

      _Block_object_dispose(&v789, 8);
      if (v640)
      {
        v793[0] = *v640;
        v647 = MEMORY[0x1E696AD98];
        v648 = getpid();
        v652 = objc_msgSend_numberWithInt_(v647, v649, v648, v650, v651);
        v657 = v652;
        v794[0] = v652;
        v789 = 0;
        v790 = &v789;
        v791 = 0x2020000000;
        v658 = qword_1EB391078;
        v792 = qword_1EB391078;
        if (!qword_1EB391078)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v800 = sub_1A935C004;
          v801 = &unk_1E787FF60;
          v802 = &v789;
          v659 = sub_1A935BE48(v652, v653, v654, v655, v656);
          v660 = dlsym(v659, "kAXNotificationDataKey");
          *(v802[1] + 24) = v660;
          qword_1EB391078 = *(v802[1] + 24);
          v658 = v790[3];
        }

        _Block_object_dispose(&v789, 8);
        if (v658)
        {
          v793[1] = *v658;
          v794[1] = v607;
          v665 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v661, v794, v793, 2);

          v666 = v665;
          v671 = v666;
          v789 = 0;
          v790 = &v789;
          v791 = 0x2020000000;
          v672 = off_1EB391080;
          v792 = off_1EB391080;
          if (!off_1EB391080)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v800 = sub_1A935C054;
            v801 = &unk_1E787FF60;
            v802 = &v789;
            v673 = sub_1A935BE48(v666, v667, v668, v669, v670);
            v674 = dlsym(v673, "AXPushNotificationToSystemForBroadcast");
            *(v802[1] + 24) = v674;
            off_1EB391080 = *(v802[1] + 24);
            v672 = v790[3];
          }

          _Block_object_dispose(&v789, 8);
          if (v672)
          {
            v672(1008, 0, v671);

            goto LABEL_93;
          }

          v759 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v675, v676, v677, v678);
          v763 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v760, "AXError get_AXPushNotificationToSystemForBroadcast(AXNotification, AXUIElementRef, __strong id)", v761, v762);
          v764 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v759, v765, v763, @"AVSpeechSynthesizer.m", 42, @"%s", v764);
        }

        else
        {
          v752 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v661, v662, v663, v664);
          v756 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v753, "CFStringRef getkAXNotificationDataKey(void)", v754, v755);
          v757 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v752, v758, v756, @"AVSpeechSynthesizer.m", 44, @"%s", v757);
        }
      }

      else
      {
        v745 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v643, v644, v645, v646);
        v749 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v746, "CFStringRef getkAXPidKey(void)", v747, v748);
        v750 = dlerror();
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v745, v751, v749, @"AVSpeechSynthesizer.m", 45, @"%s", v750);
      }

      __break(1u);
    }
  }

LABEL_93:
  v679 = objc_loadWeakRetained(&location);
  v684 = objc_msgSend_delegate(v679, v680, v681, v682, v683);
  objc_initWeak(&buf, v684);

  v781[0] = MEMORY[0x1E69E9820];
  v781[1] = 3221225472;
  v781[2] = sub_1A935A670;
  v781[3] = &unk_1E78809F8;
  objc_copyWeak(&v782, &buf);
  objc_copyWeak(&v783, &location);
  objc_msgSend_setOnSpeechStartCallback_(v498, v685, v781, v686, v687);
  v778[0] = MEMORY[0x1E69E9820];
  v778[1] = 3221225472;
  v778[2] = sub_1A935A724;
  v778[3] = &unk_1E78809F8;
  objc_copyWeak(&v779, &buf);
  objc_copyWeak(&v780, &location);
  objc_msgSend_setOnPauseCallback_(v498, v688, v778, v689, v690);
  v775[0] = MEMORY[0x1E69E9820];
  v775[1] = 3221225472;
  v775[2] = sub_1A935A7D8;
  v775[3] = &unk_1E78809F8;
  objc_copyWeak(&v776, &buf);
  objc_copyWeak(&v777, &location);
  objc_msgSend_setOnResumeCallback_(v498, v691, v775, v692, v693);
  v772[0] = MEMORY[0x1E69E9820];
  v772[1] = 3221225472;
  v772[2] = sub_1A935A88C;
  v772[3] = &unk_1E7880A20;
  objc_copyWeak(&v773, &buf);
  objc_copyWeak(&v774, &location);
  objc_msgSend_setOnMarkerCallback_(v498, v694, v772, v695, v696);
  v769[0] = MEMORY[0x1E69E9820];
  v769[1] = 3221225472;
  v769[2] = sub_1A935A970;
  v769[3] = &unk_1E7880A48;
  objc_copyWeak(&v770, &buf);
  objc_copyWeak(&v771, &location);
  objc_msgSend_setOnWillSpeakRangeCallback_(v498, v697, v769, v698, v699);
  v767[0] = MEMORY[0x1E69E9820];
  v767[1] = 3221225472;
  v767[2] = sub_1A935AA9C;
  v767[3] = &unk_1E7880A70;
  objc_copyWeak(&v768, &location);
  objc_msgSend_setCompletionCallback_(v498, v700, v767, v701, v702);
  v707 = objc_msgSend_speechManager(a1, v703, v704, v705, v706);
  objc_msgSend_dispatchSpeechAction_(v707, v708, v498, v709, v710);

  objc_msgSend_postUtteranceDelay(v4, v711, v712, v713, v714);
  if (v718 > 0.0)
  {
    v719 = objc_msgSend_pauseMarkupString_(TTSSpeechManager, v715, v766, v716, v717);
    v720 = MEMORY[0x1E696AEC0];
    objc_msgSend_postUtteranceDelay(v4, v721, v722, v723, v724);
    v729 = objc_msgSend_stringWithFormat_(v720, v726, v719, v727, v728, (v725 * 1000.0));
    v732 = objc_msgSend_actionWithString_shouldQueue_(TTSSpeechAction, v730, v729, 1, v731);
    objc_msgSend_setVoiceIdentifier_(v732, v733, v766, v734, v735);
    v740 = objc_msgSend_speechManager(a1, v736, v737, v738, v739);
    objc_msgSend_dispatchSpeechAction_(v740, v741, v732, v742, v743);
  }

  objc_destroyWeak(&v768);
  objc_destroyWeak(&v771);
  objc_destroyWeak(&v770);
  objc_destroyWeak(&v774);
  objc_destroyWeak(&v773);
  objc_destroyWeak(&v777);
  objc_destroyWeak(&v776);
  objc_destroyWeak(&v780);
  objc_destroyWeak(&v779);
  objc_destroyWeak(&v783);
  objc_destroyWeak(&v782);
  objc_destroyWeak(&buf);

  objc_destroyWeak(&location);
  v744 = *MEMORY[0x1E69E9840];
}