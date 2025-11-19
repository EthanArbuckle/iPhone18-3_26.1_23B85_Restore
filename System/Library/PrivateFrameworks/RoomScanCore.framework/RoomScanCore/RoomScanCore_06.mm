void sub_2622295AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::locale::~locale(&a27);
  sub_2621C57C8(&a33);
  _Unwind_Resume(a1);
}

float sub_2622295E0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &v11;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(a2 + 8 * *(a1 + 64 + 8 * v3));
    *v4 = v7;
    v2 += *(a1 + 80 + 8 * v3) * v7;
    v4 = &v10;
    v3 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  if (*(a1 + 264) == 1)
  {
    v8 = *(a1 + 272);
  }

  else
  {
    v2 = *(a1 + 184) * v11;
    v8 = *(a1 + 272) + 4 * *(a1 + 192) * v10;
  }

  return *(v8 + 4 * v2);
}

void sub_262229664(void *a1, uint64_t a2)
{
  v3 = 0;
  v39 = 0;
  v40 = 0;
  v4 = 1;
  v41 = 0;
  v5 = MEMORY[0x277D82670];
  v6 = MEMORY[0x277D82680];
  do
  {
    v7 = v4;
    v8 = *(a2 + 4 * v3);
    v38 = v8;
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    if (v9 >= 2)
    {
      sub_2621D552C(v5, "runtime_err in ", 15);
      sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v5, " ", 1);
      v10 = MEMORY[0x266727260](v5, 57);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "init", 4);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v42, v6);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      sub_262229DB0("err", "the absolute value of axis should be less than dim");
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v12 = std::locale::use_facet(&v42, v6);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v8 < 0)
    {
      v8 += 2;
      v38 = v8;
    }

    if (v8 >= 2)
    {
      sub_2621D552C(v5, "runtime_err in ", 15);
      sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v5, " ", 1);
      v13 = MEMORY[0x266727260](v5, 61);
      sub_2621D552C(v13, " ", 1);
      sub_2621D552C(v13, "init", 4);
      std::ios_base::getloc((v13 + *(*v13 - 24)));
      v14 = std::locale::use_facet(&v42, v6);
      (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v38);
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v15 = std::locale::use_facet(&v42, v6);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      if (v8 < 0)
      {
        sub_2621D552C(v5, "runtime_err in ", 15);
        sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
        sub_2621D552C(v5, " ", 1);
        v16 = MEMORY[0x266727260](v5, 62);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "init", 4);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(&v42, v6);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
        sub_262201E08("err", &v38);
        std::ios_base::getloc((v5 + *(*v5 - 24)));
        v18 = std::locale::use_facet(&v42, v6);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
      }
    }

    v42.__locale_ = v8;
    sub_2621C9004(&v39, &v42);
    v4 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  v19 = v39;
  if (v40 != v39)
  {
    v20 = 0;
    v21 = 0;
    v22 = v40 - v39;
    v23 = v22 - 1;
    if (v22 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v40 - v39;
    }

    v25 = v39 + 1;
    do
    {
      v26 = v20 + 1;
      if (v20 + 1 < v22)
      {
        v27 = v39[v20];
        v28 = v25;
        v29 = v23;
        do
        {
          v30 = *v28++;
          v21 |= v27 == v30;
          --v29;
        }

        while (v29);
      }

      --v23;
      ++v25;
      v20 = v26;
    }

    while (v26 != v24);
    if (v21)
    {
      v31 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v32 = sub_2621D552C(v31, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v32, " ", 1);
      v33 = MEMORY[0x277D82670];
      v34 = MEMORY[0x266727260](MEMORY[0x277D82670], 73);
      sub_2621D552C(v34, " ", 1);
      sub_2621D552C(v34, "init", 4);
      std::ios_base::getloc((v34 + *(*v34 - 24)));
      v35 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
      (v35->__vftable[2].~facet_0)(v35, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6A8C("err", "duplicate dim idx");
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v36 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
      (v36->__vftable[2].~facet_0)(v36, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  *a1 = *v19;
  a1[1] = v19[1];
  operator delete(v19);
}

void sub_262229D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262229DB0(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_262229EBC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 152;
      v7 = v4 - 152;
      v8 = v4 - 152;
      do
      {
        v9 = *v8;
        v8 -= 152;
        (*v9)(v7);
        v6 -= 152;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_262229F7C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EF6A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_26222A054(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x1AF286BCA1AF286)
    {
      sub_2621CBEB0();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v10 = 8 * ((v3 - *a1) >> 3);
    sub_262221A98(v10, a2);
    v5 = v10 + 152;
    v21 = (v10 + 152);
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = sub_262221A98(v15, v14);
        v14 += 152;
        v15 = v16 + 152;
      }

      while (v14 != v12);
      v17 = v11;
      v18 = v11;
      do
      {
        v19 = *v18;
        v18 += 19;
        (*v19)(v11);
        v17 += 19;
        v11 = v18;
      }

      while (v18 != v12);
    }

    v20 = *a1;
    *a1 = v13;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v5 = sub_262221A98(v3, a2) + 152;
  }

  a1[1] = v5;
}

void sub_26222A214(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v163 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 344);
  if (v7 == v8)
  {
    if (*(a2 + 344))
    {
      v146 = 0uLL;
      v147 = 0uLL;
      *&v145[0].__locale_ = 0uLL;
      v10 = *(a1 + 104);
      v135 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v11 = 0;
          v12 = *(a2 + 352);
          v13 = a1 + 16;
          do
          {
            v149 = 0u;
            v150 = 0u;
            v148 = 0u;
            v14 = &v148;
            sub_26222AE2C(a2 + 48, v145, &v148);
            v15 = 0;
            v16 = 0;
            v17 = 1;
            do
            {
              v18 = v17;
              v16 += *(a2 + 160 + 8 * v15) * *v14;
              v14 = (&v148 + 8);
              v15 = 1;
              v17 = 0;
            }

            while ((v18 & 1) != 0);
            v19 = 0;
            *(v135 + 4 * v11) = *(v12 + 4 * v16);
            do
            {
              v20 = (v145[v19 + 1].__locale_ + 1);
              v145[v19 + 1].__locale_ = v20;
              if (v20 != *(v13 + v19 * 8))
              {
                break;
              }

              v145[v19-- + 1].__locale_ = 0;
            }

            while (v19 != -2);
            ++v11;
          }

          while (v11 != v10);
        }
      }

      else if (v10)
      {
        v75 = 0;
        v129 = *(a1 + 64);
        v133 = *(a1 + 56);
        v125 = *(a2 + 352);
        v76 = a1 + 16;
        do
        {
          locale = v145[0].__locale_;
          v78 = v129 * v145[1].__locale_;
          v149 = 0u;
          v150 = 0u;
          v148 = 0u;
          v79 = &v148;
          sub_26222AE2C(a2 + 48, v145, &v148);
          v80 = 0;
          v81 = 0;
          v82 = 1;
          do
          {
            v83 = v82;
            v81 += *(a2 + 160 + 8 * v80) * *v79;
            v79 = (&v148 + 8);
            v80 = 1;
            v82 = 0;
          }

          while ((v83 & 1) != 0);
          v84 = 0;
          *(v135 + 4 * v78 + 4 * v133 * locale) = *(v125 + 4 * v81);
          do
          {
            v85 = (v145[v84 + 1].__locale_ + 1);
            v145[v84 + 1].__locale_ = v85;
            if (v85 != *(v76 + v84 * 8))
            {
              break;
            }

            v145[v84-- + 1].__locale_ = 0;
          }

          while (v84 != -2);
          ++v75;
        }

        while (v75 != v10);
      }
    }

    else
    {
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v47 = *(a1 + 104);
      v48 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v47)
        {
          for (i = 0; i != v47; ++i)
          {
            v50 = sub_26222AD54(a2, &v148);
            v51 = 0;
            *(v48 + 4 * i) = v50;
            do
            {
              v52 = *(&v148 + v51 + 8) + 1;
              *(&v148 + v51 + 8) = v52;
              if (v52 != *(a1 + 16 + v51))
              {
                break;
              }

              *(&v148 + v51 + 8) = 0;
              v51 -= 8;
            }

            while (v51 != -16);
          }
        }
      }

      else if (v47)
      {
        v86 = 0;
        v87 = *(a1 + 56);
        v88 = *(a1 + 64);
        v89 = a1 + 16;
        do
        {
          v90 = v87 * v148;
          v91 = v48 + 4 * v88 * *(&v148 + 1);
          v92 = sub_26222AD54(a2, &v148);
          v93 = 0;
          *(v91 + 4 * v90) = v92;
          do
          {
            v94 = *(&v148 + v93 + 8) + 1;
            *(&v148 + v93 + 8) = v94;
            if (v94 != *(v89 + v93))
            {
              break;
            }

            *(&v148 + v93 + 8) = 0;
            v93 -= 8;
          }

          while (v93 != -16);
          ++v86;
        }

        while (v86 != v47);
      }
    }
  }

  else
  {
    if (*(a2 + 344))
    {
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v143 = 0uLL;
      v144 = 0uLL;
      *&v142[0].__locale_ = 0uLL;
      sub_2621D96E4(&v148, v5, a2, v142);
      v21 = 0;
      v22 = v142;
      v23 = 1;
      do
      {
        v24 = v22->__locale_;
        v25 = *(v5 + v21);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v23 = 0;
        v22 = &v142[1];
        v21 = 1;
      }

      while (v24 == v25);
      if (v24 != v25)
      {
        v26 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v27 = sub_2621D552C(v26, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v27, " ", 1);
        v28 = MEMORY[0x277D82670];
        v29 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v29, " ", 1);
        sub_2621D552C(v29, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v31 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v31->__vftable[2].~facet_0)(v31, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
      }

      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      memset(v138, 0, sizeof(v138));
      v32 = *(a1 + 104);
      v132 = *(a1 + 144);
      v136 = v32;
      if (*(a1 + 136))
      {
        if (v32)
        {
          v33 = 0;
          v34 = *(&v149 + 1);
          v128 = v150;
          v35 = (v150 - *(&v149 + 1)) >> 3;
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v124 = v35;
          v36 = *(a2 + 352);
          do
          {
            v138[0] = v139;
            v37 = v34;
            v38 = v124;
            if (v128 != v34)
            {
              do
              {
                v39 = *v37++;
                *(v138 + v39) = 0;
                --v38;
              }

              while (v38);
            }

            v146 = 0u;
            v147 = 0u;
            *&v145[0].__locale_ = 0u;
            v40 = v145;
            sub_26222AE2C(a2 + 48, v138, v145);
            v41 = 0;
            v42 = 0;
            v43 = 1;
            do
            {
              v44 = v43;
              v42 += *(a2 + 160 + 8 * v41) * v40->__locale_;
              v40 = &v145[1];
              v41 = 1;
              v43 = 0;
            }

            while ((v44 & 1) != 0);
            *(v132 + 4 * v33) = *(v36 + 4 * v42);
            for (j = 1; j != -1; --j)
            {
              v46 = (*(&v139 + j * 8) + 1);
              *(&v139 + j * 8) = v46;
              if (v46 != v142[j].__locale_)
              {
                break;
              }

              *(&v139 + j * 8) = 0;
            }

            ++v33;
          }

          while (v33 != v136);
        }
      }

      else if (v32)
      {
        v95 = 0;
        v126 = *(&v149 + 1);
        v130 = v150;
        if (((v150 - *(&v149 + 1)) >> 3) <= 1)
        {
          v96 = 1;
        }

        else
        {
          v96 = (v150 - *(&v149 + 1)) >> 3;
        }

        v122 = *(a1 + 56);
        v123 = v96;
        v97 = *(a2 + 352);
        v120 = v97;
        v121 = *(a1 + 64);
        do
        {
          v98 = v139;
          v138[0] = v139;
          v99 = v123;
          v100 = v126;
          if (v130 != v126)
          {
            do
            {
              v101 = *v100++;
              *(v138 + v101) = 0;
              --v99;
            }

            while (v99);
          }

          v146 = 0u;
          v147 = 0u;
          *&v145[0].__locale_ = 0u;
          v102 = v145;
          sub_26222AE2C(a2 + 48, v138, v145);
          v103 = 0;
          v104 = 0;
          v105 = 1;
          do
          {
            v106 = v105;
            v104 += *(a2 + 160 + 8 * v103) * v102->__locale_;
            v102 = &v145[1];
            v103 = 1;
            v105 = 0;
          }

          while ((v106 & 1) != 0);
          *(v132 + 4 * v121 * *(&v98 + 1) + 4 * v122 * v98) = *(v120 + 4 * v98);
          for (k = 1; k != -1; --k)
          {
            v108 = (*(&v139 + k * 8) + 1);
            *(&v139 + k * 8) = v108;
            if (v108 != v142[k].__locale_)
            {
              break;
            }

            *(&v139 + k * 8) = 0;
          }

          ++v95;
        }

        while (v95 != v136);
      }
    }

    else
    {
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v147 = 0uLL;
      v148 = 0uLL;
      *&v145[0].__locale_ = 0uLL;
      v146 = 0uLL;
      sub_2621D96E4(&v148, v5, a2, v145);
      v53 = 0;
      v54 = v145;
      v55 = 1;
      do
      {
        v56 = v54->__locale_;
        v57 = *(v5 + v53);
        if ((v55 & 1) == 0)
        {
          break;
        }

        v55 = 0;
        v54 = &v145[1];
        v53 = 1;
      }

      while (v56 == v57);
      if (v56 != v57)
      {
        v58 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v59 = sub_2621D552C(v58, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v59, " ", 1);
        v60 = MEMORY[0x277D82670];
        v61 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v61, " ", 1);
        sub_2621D552C(v61, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v62 = std::locale::use_facet(v142, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v142);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v63 = std::locale::use_facet(v142, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v142);
        std::ostream::put();
        std::ostream::flush();
      }

      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      *&v142[0].__locale_ = 0u;
      v139 = 0u;
      v140 = 0u;
      v64 = *(a1 + 104);
      v65 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v64)
        {
          v66 = 0;
          v68 = *(&v149 + 1);
          v67 = v150;
          if (((v150 - *(&v149 + 1)) >> 3) <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = (v150 - *(&v149 + 1)) >> 3;
          }

          do
          {
            v139 = *&v142[0].__locale_;
            if (v67 != v68)
            {
              v70 = v68;
              v71 = v69;
              do
              {
                v72 = *v70++;
                *(&v139 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            *(v65 + 4 * v66) = sub_26222AD54(a2, &v139);
            for (m = 1; m != -1; --m)
            {
              v74 = (v142[m].__locale_ + 1);
              v142[m].__locale_ = v74;
              if (v74 != v145[m].__locale_)
              {
                break;
              }

              v142[m].__locale_ = 0;
            }

            ++v66;
          }

          while (v66 != v64);
        }
      }

      else if (v64)
      {
        v109 = 0;
        v110 = *(&v149 + 1);
        v137 = v150;
        if (((v150 - *(&v149 + 1)) >> 3) <= 1)
        {
          v111 = 1;
        }

        else
        {
          v111 = (v150 - *(&v149 + 1)) >> 3;
        }

        v134 = *(a1 + 56);
        v127 = v111;
        v131 = *(a1 + 64);
        do
        {
          v112 = v142[0].__locale_;
          v113 = v142[1].__locale_;
          v139 = *&v142[0].__locale_;
          if (v137 != v110)
          {
            v114 = v110;
            v115 = v127;
            do
            {
              v116 = *v114++;
              *(&v139 + v116) = 0;
              --v115;
            }

            while (v115);
          }

          *(v65 + 4 * v131 * v113 + 4 * v134 * v112) = sub_26222AD54(a2, &v139);
          for (n = 1; n != -1; --n)
          {
            v118 = (v142[n].__locale_ + 1);
            v142[n].__locale_ = v118;
            if (v118 != v145[n].__locale_)
            {
              break;
            }

            v142[n].__locale_ = 0;
          }

          ++v109;
        }

        while (v109 != v64);
      }
    }

    sub_2621C57C8(&v148);
  }

  v119 = *MEMORY[0x277D85DE8];
}

void sub_26222AD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::locale a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::locale::~locale(&a29);
  sub_2621C57C8(&a41);
  _Unwind_Resume(a1);
}

float sub_26222AD54(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v3 = v11;
  sub_26222AE2C(a1 + 48, a2, v11);
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v5 += *(a1 + 160 + 8 * v4) * *v3;
    v3 = v11 + 1;
    v4 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  if (*(a1 + 344) == 1)
  {
    v8 = *(a1 + 352);
  }

  else
  {
    v5 = *(a1 + 264) * *&v11[0];
    v8 = *(a1 + 352) + 4 * *(a1 + 272) * *(&v11[0] + 1);
  }

  result = *(v8 + 4 * v5);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26222AE2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  *(a3 + 8 * *(result + 48)) = *(*(*result + 144) + 8 * **(result + 24) * *(a2 + 8 * *(result + 48)));
  v4 = *(result + 64) - v3;
  if (v4)
  {
    v5 = v4 >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v6 = *v3++;
      *(a3 + 8 * v6) = *(a2 + 8 * v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_26222AE80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EF0D8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

_OWORD *sub_26222AF58(_OWORD *a1, unint64_t *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v3 = *a2;
  v17[0] = v3;
  v15 = 0;
  if (v3 >= 0xBEBC200)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 71);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "Shape", 5);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v16, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v16);
    std::ostream::put();
    std::ostream::flush();
    sub_262223C90("err", "shape[", &v15, "]", " is ", v17, " ,it should <= 6");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v16, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v16);
    std::ostream::put();
    std::ostream::flush();
  }

  *a1 = v3;
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_26222B1A0()
{
  sub_2622EBC98();
  if (v2)
  {
    kdebug_trace();
    sub_26221A1CC();
  }

  if (qword_27FF0C070 != -1)
  {
    dispatch_once(&qword_27FF0C070, &unk_2874EE120);
  }

  v0 = qword_27FF0C068;
  if (os_log_type_enabled(qword_27FF0C068, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_2621C3000, v0, OS_LOG_TYPE_ERROR, "Empty backbone infer result", v1, 2u);
  }

  v11 = &unk_2874EF6A8;
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v9 = &unk_2874EF0B8;
  if (v10)
  {
    sub_2621D1B78(v10);
  }

  v7 = &unk_2874EF0B8;
  if (v8)
  {
    sub_2621D1B78(v8);
  }

  v5 = &unk_2874EF0D8;
  if (v6)
  {
    sub_2621D1B78(v6);
  }

  v3 = &unk_2874EF0D8;
  if (v4)
  {
    sub_2621D1B78(v4);
  }
}

void sub_26222B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26222B3BC(va);
  _Unwind_Resume(a1);
}

void *sub_26222B3BC(void *a1)
{
  a1[77] = &unk_2874EF6A8;
  v2 = a1[93];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[58] = &unk_2874EF0B8;
  v3 = a1[74];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[39] = &unk_2874EF0B8;
  v4 = a1[55];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  a1[20] = &unk_2874EF0D8;
  v5 = a1[36];
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  a1[1] = &unk_2874EF0D8;
  v6 = a1[17];
  if (v6)
  {
    sub_2621D1B78(v6);
  }

  return a1;
}

void *sub_26222B4BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_commandBuffer(*(a1 + 16), a2, a3);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 56), v5, v4, *(a1 + 32), *(a1 + 40));
  objc_msgSend_commit(v4, v6, v7);
  objc_msgSend_waitUntilCompleted(v4, v8, v9);
  v10 = *(a1 + 40);
  v11 = v10;

  return v10;
}

void sub_26222B530(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 64) == *(a1 + 72) && *(a1 + 68) == *(a1 + 76))
  {
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    *(a1 + 32) = v11;
  }

  else
  {
    v12 = objc_msgSend_commandBuffer(*(a1 + 16), a2, a3);
    objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 48), v5, v12, *(a1 + 24), *(a1 + 32));
    objc_msgSend_commit(v12, v6, v7);
    objc_msgSend_waitUntilCompleted(v12, v8, v9);
    v10 = v12;
  }
}

id sub_26222B5E4(uint64_t a1, int *a2, uint64_t a3)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277CD2B88];
  v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *a2);
  v22[0] = v6;
  v21[1] = *MEMORY[0x277CD2A28];
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, a2[1]);
  v9 = *MEMORY[0x277CD2960];
  v22[1] = v8;
  v22[2] = &unk_2874FAC08;
  v10 = *MEMORY[0x277CD2A70];
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = *MEMORY[0x277CD2A60];
  v22[3] = &unk_2874FAC20;
  v22[4] = &unk_2874FAC38;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v22, v21, 5);

  v13 = IOSurfaceCreate(v12);
  v15 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v14, a3, *a2, a2[1], 0);
  objc_msgSend_setUsage_(v15, v16, 3);
  v18 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(*(a1 + 8), v17, v15, v13, 0);
  CFRelease(v13);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_26222B7D4(uint64_t a1, float *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v152 = (a2 - 10);
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:
                v78 = *(v8 + 64);
                v79 = *(a2 - 4);
                if (v78 <= *(v8 + 24))
                {
                  if (v79 <= v78)
                  {
                    return;
                  }

                  v76 = (v8 + 40);
                  v77 = (a2 - 10);
                  goto LABEL_209;
                }

                if (v79 > v78)
                {
                  goto LABEL_124;
                }

                sub_26222C8C8(v8, (v8 + 40));
                if (*(a2 - 4) <= *(v8 + 64))
                {
                  return;
                }

                v80 = (v8 + 40);
LABEL_125:
                v81 = (a2 - 10);
LABEL_126:

                sub_26222C8C8(v80, v81);
                return;
              case 4uLL:

                sub_26222C970(v8, v8 + 40, v8 + 80, v152);
                return;
              case 5uLL:
                sub_26222C970(v8, v8 + 40, v8 + 80, v8 + 120);
                if (*(a2 - 4) <= *(v8 + 144))
                {
                  return;
                }

                sub_26222C8C8((v8 + 120), v152);
                if (*(v8 + 144) <= *(v8 + 104))
                {
                  return;
                }

                sub_26222C8C8((v8 + 80), (v8 + 120));
                if (*(v8 + 104) <= *(v8 + 64))
                {
                  return;
                }

                v76 = (v8 + 40);
                v77 = (v8 + 80);
LABEL_209:
                sub_26222C8C8(v76, v77);
                if (*(v8 + 64) <= *(v8 + 24))
                {
                  return;
                }

                v81 = (v8 + 40);
                v80 = v8;
                goto LABEL_126;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (*(a2 - 4) <= *(v8 + 24))
              {
                return;
              }

LABEL_124:
              v80 = v8;
              goto LABEL_125;
            }
          }

          if (v9 <= 959)
          {
            v82 = (v8 + 40);
            v84 = v8 == a2 || v82 == a2;
            if (a4)
            {
              if (!v84)
              {
                v85 = 0;
                v86 = v8;
                do
                {
                  v87 = v82;
                  v88 = *(v86 + 64);
                  if (v88 > *(v86 + 24))
                  {
                    v89 = 0;
                    v158 = *v82;
                    v90 = *(v86 + 56);
                    *v82 = 0;
                    *(v82 + 1) = 0;
                    *(v82 + 2) = 0;
                    v91 = v85;
                    v92 = *(v86 + 68);
                    while (1)
                    {
                      v93 = a1 + v91;
                      if (v89)
                      {
                        *(v93 + 48) = v89;
                        operator delete(v89);
                        *(v93 + 56) = 0;
                      }

                      *(v93 + 40) = *v93;
                      v94 = *(v93 + 16);
                      v95 = *(v93 + 24);
                      *(v93 + 8) = 0;
                      *(v93 + 16) = 0;
                      *v93 = 0;
                      *(v93 + 56) = v94;
                      *(v93 + 64) = v95;
                      *(v93 + 72) = *(v93 + 32);
                      if (!v91)
                      {
                        v97 = (a1 + 24);
                        v96 = a1;
                        goto LABEL_150;
                      }

                      v96 = a1 + v91;
                      if (v88 <= *(a1 + v91 - 16))
                      {
                        break;
                      }

                      v89 = *v93;
                      v91 -= 40;
                    }

                    v97 = (v96 + 24);
LABEL_150:
                    v98 = *v96;
                    if (*v96)
                    {
                      *(v96 + 8) = v98;
                      operator delete(v98);
                    }

                    *v96 = v158;
                    *(v96 + 16) = v90;
                    *v97 = v88;
                    *(v96 + 28) = v92;
                  }

                  v82 = v87 + 10;
                  v85 += 40;
                  v86 = v87;
                }

                while (v87 + 10 != a2);
              }
            }

            else if (!v84)
            {
              do
              {
                v141 = v82;
                v142 = *(a1 + 64);
                if (v142 > *(a1 + 24))
                {
                  v162 = *v82;
                  v143 = *(a1 + 56);
                  *v82 = 0;
                  *(v82 + 1) = 0;
                  *(v82 + 2) = 0;
                  v144 = *(a1 + 68);
                  while (1)
                  {
                    *(a1 + 40) = *a1;
                    v145 = *(a1 + 16);
                    v146 = *(a1 + 24);
                    *(a1 + 8) = 0;
                    *(a1 + 16) = 0;
                    *a1 = 0;
                    *(a1 + 56) = v145;
                    *(a1 + 64) = v146;
                    v147 = *(a1 - 16);
                    *(a1 + 72) = *(a1 + 32);
                    if (v142 <= v147)
                    {
                      break;
                    }

                    v149 = *a1;
                    a1 -= 40;
                    v148 = v149;
                    if (v149)
                    {
                      *(a1 + 48) = v148;
                      operator delete(v148);
                      *(a1 + 56) = 0;
                    }
                  }

                  v150 = *a1;
                  if (*a1)
                  {
                    *(a1 + 8) = v150;
                    operator delete(v150);
                  }

                  *a1 = v162;
                  *(a1 + 16) = v143;
                  *(a1 + 24) = v142;
                  *(a1 + 28) = v144;
                }

                v82 = (v141 + 40);
                a1 = v141;
              }

              while ((v141 + 40) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v99 = v11 >> 1;
              v100 = v11 >> 1;
              do
              {
                v101 = v100;
                if (v99 >= v100)
                {
                  v102 = (2 * v100) | 1;
                  v103 = a1 + 40 * v102;
                  if (2 * v101 + 2 < v10 && *(v103 + 24) > *(v103 + 64))
                  {
                    v103 += 40;
                    v102 = 2 * v101 + 2;
                  }

                  v104 = a1 + 40 * v101;
                  v105 = *(v104 + 24);
                  if (*(v103 + 24) <= v105)
                  {
                    v106 = 0;
                    v159 = *v104;
                    v107 = *(v104 + 16);
                    *(v104 + 8) = 0;
                    *(v104 + 16) = 0;
                    *v104 = 0;
                    v151 = *(v104 + 28);
                    v153 = v107;
                    while (1)
                    {
                      v108 = v103;
                      if (v106)
                      {
                        *(v104 + 8) = v106;
                        operator delete(v106);
                        *v104 = 0;
                        *(v104 + 8) = 0;
                        *(v104 + 16) = 0;
                      }

                      *v104 = *v108;
                      *(v104 + 16) = *(v108 + 16);
                      *v108 = 0;
                      *(v108 + 8) = 0;
                      *(v108 + 16) = 0;
                      v109 = *(v108 + 24);
                      *(v104 + 32) = *(v108 + 32);
                      *(v104 + 24) = v109;
                      if (v99 < v102)
                      {
                        break;
                      }

                      v110 = 2 * v102;
                      v102 = (2 * v102) | 1;
                      v103 = a1 + 40 * v102;
                      v111 = v110 + 2;
                      if (v111 < v10 && *(v103 + 24) > *(v103 + 64))
                      {
                        v103 += 40;
                        v102 = v111;
                      }

                      if (*(v103 + 24) > v105)
                      {
                        break;
                      }

                      v106 = *v108;
                      v104 = v108;
                    }

                    v112 = *v108;
                    if (*v108)
                    {
                      *(v108 + 8) = v112;
                      operator delete(v112);
                    }

                    *v108 = v159;
                    *(v108 + 16) = v153;
                    *(v108 + 24) = v105;
                    *(v108 + 28) = v151;
                  }
                }

                v100 = v101 - 1;
              }

              while (v101);
              v113 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
              do
              {
                v114 = 0;
                v115 = a2;
                v154 = *(a1 + 8);
                v160 = *a1;
                v117 = *(a1 + 16);
                v116 = *(a1 + 24);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v164 = v116;
                v166 = *(a1 + 32);
                v118 = a1;
                do
                {
                  v119 = v118 + 40 * v114;
                  v120 = v119 + 40;
                  if (2 * v114 + 2 >= v113)
                  {
                    v114 = (2 * v114) | 1;
                  }

                  else
                  {
                    v121 = *(v119 + 64);
                    v122 = *(v119 + 104);
                    v123 = v119 + 80;
                    if (v121 <= v122)
                    {
                      v114 = (2 * v114) | 1;
                    }

                    else
                    {
                      v120 = v123;
                      v114 = 2 * v114 + 2;
                    }
                  }

                  v124 = *v118;
                  if (*v118)
                  {
                    *(v118 + 8) = v124;
                    operator delete(v124);
                    *v118 = 0;
                    *(v118 + 8) = 0;
                    *(v118 + 16) = 0;
                  }

                  *v118 = *v120;
                  *(v118 + 16) = *(v120 + 16);
                  *v120 = 0;
                  *(v120 + 8) = 0;
                  v126 = (v120 + 24);
                  v125 = *(v120 + 24);
                  *(v120 + 16) = 0;
                  *(v118 + 32) = *(v120 + 32);
                  *(v118 + 24) = v125;
                  v118 = v120;
                }

                while (v114 <= ((v113 - 2) >> 1));
                a2 -= 10;
                v127 = *v120;
                if (v120 == v115 - 10)
                {
                  if (v127)
                  {
                    *(v120 + 8) = v127;
                    operator delete(v127);
                  }

                  *v120 = v160;
                  *(v120 + 8) = v154;
                  *(v120 + 16) = v117;
                  *v126 = v164;
                  *(v120 + 32) = v166;
                }

                else
                {
                  if (v127)
                  {
                    *(v120 + 8) = v127;
                    operator delete(v127);
                    *v120 = 0;
                    *(v120 + 8) = 0;
                    *(v120 + 16) = 0;
                  }

                  *v120 = *(v115 - 10);
                  *(v120 + 16) = *(v115 - 3);
                  *a2 = 0;
                  *(v115 - 4) = 0;
                  *(v115 - 3) = 0;
                  v128 = *(v115 - 2);
                  *(v120 + 32) = *(v115 - 2);
                  *v126 = v128;
                  v129 = *(v115 - 5);
                  if (v129)
                  {
                    *(v115 - 4) = v129;
                    operator delete(v129);
                  }

                  *(v115 - 5) = v160;
                  *(v115 - 4) = v154;
                  *(v115 - 3) = v117;
                  *(v115 - 2) = v166;
                  *(v115 - 2) = v164;
                  v130 = v120 + 40 - a1;
                  if (v130 >= 41)
                  {
                    v131 = (-2 - 0x3333333333333333 * (v130 >> 3)) >> 1;
                    v132 = a1 + 40 * v131;
                    v133 = *v126;
                    if (*(v132 + 24) > *v126)
                    {
                      v134 = 0;
                      v161 = *v120;
                      v135 = *(v120 + 16);
                      *(v120 + 8) = 0;
                      *(v120 + 16) = 0;
                      *v120 = 0;
                      v136 = *(v120 + 28);
                      while (1)
                      {
                        v137 = v132;
                        if (v134)
                        {
                          *(v120 + 8) = v134;
                          operator delete(v134);
                          *v120 = 0;
                          *(v120 + 8) = 0;
                          *(v120 + 16) = 0;
                        }

                        *v120 = *v137;
                        *(v120 + 16) = *(v137 + 16);
                        *v137 = 0;
                        *(v137 + 8) = 0;
                        *(v137 + 16) = 0;
                        v138 = *(v137 + 24);
                        *(v120 + 32) = *(v137 + 32);
                        *(v120 + 24) = v138;
                        if (!v131)
                        {
                          break;
                        }

                        v131 = (v131 - 1) >> 1;
                        v132 = a1 + 40 * v131;
                        if (*(v132 + 24) <= v133)
                        {
                          break;
                        }

                        v134 = *v137;
                        v120 = v137;
                      }

                      v139 = *v137;
                      if (*v137)
                      {
                        *(v137 + 8) = v139;
                        operator delete(v139);
                      }

                      *v137 = v161;
                      *(v137 + 16) = v135;
                      *(v137 + 24) = v133;
                      *(v137 + 28) = v136;
                    }
                  }
                }
              }

              while (v113-- > 2);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = v8 + 40 * (v10 >> 1);
          v14 = *(a2 - 4);
          if (v9 >= 0x1401)
          {
            v15 = (v13 + 24);
            v16 = *(v13 + 24);
            v17 = (a1 + 24);
            if (v16 <= *(a1 + 24))
            {
              if (v14 <= v16 || (sub_26222C8C8(v13, v152), *(v13 + 24) <= *v17))
              {
LABEL_26:
                v23 = a1 + 40 * v12;
                v24 = v23 - 40;
                v25 = *(v23 - 16);
                v26 = *(a2 - 14);
                if (v25 <= *(a1 + 64))
                {
                  if (v26 <= v25 || (sub_26222C8C8((v23 - 40), a2 - 5), *(v24 + 24) <= *(a1 + 64)))
                  {
LABEL_39:
                    v29 = a1 + 40 * v12;
                    v30 = v29 + 40;
                    v31 = *(v29 + 64);
                    v32 = *(a2 - 24);
                    if (v31 <= *(a1 + 104))
                    {
                      if (v32 <= v31 || (sub_26222C8C8((v29 + 40), (a2 - 30)), *(v30 + 24) <= *(a1 + 104)))
                      {
LABEL_48:
                        v35 = *v15;
                        v36 = *(v30 + 24);
                        if (*v15 <= *(v24 + 24))
                        {
                          if (v36 <= v35)
                          {
                            goto LABEL_57;
                          }

                          sub_26222C8C8(v13, v30);
                          if (*(v13 + 24) <= *(v24 + 24))
                          {
                            goto LABEL_57;
                          }

                          v37 = v24;
                          v38 = v13;
                        }

                        else
                        {
                          v37 = v24;
                          if (v36 <= v35)
                          {
                            sub_26222C8C8(v24, v13);
                            if (*(v30 + 24) <= *(v13 + 24))
                            {
LABEL_57:
                              v39 = *a1;
                              v40 = *(a1 + 16);
                              *(a1 + 8) = 0;
                              *(a1 + 16) = 0;
                              *a1 = 0;
                              v163 = *v17;
                              v165 = *(a1 + 32);
                              v41 = *a1;
                              if (*a1)
                              {
                                *(a1 + 8) = v41;
                                v155 = v39;
                                operator delete(v41);
                                v39 = v155;
                                *a1 = 0;
                                *(a1 + 8) = 0;
                                *(a1 + 16) = 0;
                              }

                              *a1 = *v13;
                              *(a1 + 16) = *(v13 + 16);
                              v42 = *(v13 + 32);
                              *v17 = *v15;
                              *(a1 + 32) = v42;
                              *v13 = v39;
                              *(v13 + 16) = v40;
                              *(v13 + 32) = v165;
                              *v15 = v163;
                              goto LABEL_60;
                            }

                            v37 = v13;
                          }

                          v38 = v30;
                        }

                        sub_26222C8C8(v37, v38);
                        goto LABEL_57;
                      }

                      v33 = (a1 + 80);
                      v34 = v30;
                    }

                    else
                    {
                      v33 = (a1 + 80);
                      if (v32 <= v31)
                      {
                        sub_26222C8C8(v33, (v29 + 40));
                        if (*(a2 - 24) <= *(v30 + 24))
                        {
                          goto LABEL_48;
                        }

                        v33 = v30;
                      }

                      v34 = (a2 - 30);
                    }

                    sub_26222C8C8(v33, v34);
                    goto LABEL_48;
                  }

                  v27 = (a1 + 40);
                  v28 = v24;
                }

                else
                {
                  v27 = (a1 + 40);
                  if (v26 <= v25)
                  {
                    sub_26222C8C8(v27, (v23 - 40));
                    if (*(a2 - 14) <= *(v24 + 24))
                    {
                      goto LABEL_39;
                    }

                    v27 = v24;
                  }

                  v28 = (a2 - 20);
                }

                sub_26222C8C8(v27, v28);
                goto LABEL_39;
              }

              v18 = a1;
              v19 = v13;
            }

            else
            {
              v18 = a1;
              if (v14 <= v16)
              {
                sub_26222C8C8(a1, v13);
                if (*(a2 - 4) <= *(v13 + 24))
                {
                  goto LABEL_26;
                }

                v18 = v13;
              }

              v19 = (a2 - 10);
            }

            sub_26222C8C8(v18, v19);
            goto LABEL_26;
          }

          v20 = *(a1 + 24);
          if (v20 > *(v13 + 24))
          {
            v21 = (a1 + 40 * (v10 >> 1));
            if (v14 <= v20)
            {
              sub_26222C8C8(v21, a1);
              if (*(a2 - 4) <= *(a1 + 24))
              {
                goto LABEL_60;
              }

              v21 = a1;
            }

            v22 = (a2 - 10);
            goto LABEL_34;
          }

          if (v14 > v20)
          {
            sub_26222C8C8(a1, v152);
            if (*(a1 + 24) > *(v13 + 24))
            {
              v21 = (a1 + 40 * (v10 >> 1));
              v22 = a1;
LABEL_34:
              sub_26222C8C8(v21, v22);
            }
          }

LABEL_60:
          --a3;
          if (a4)
          {
            break;
          }

          v43 = *(a1 + 24);
          if (*(a1 - 16) > v43)
          {
            goto LABEL_63;
          }

          v157 = *a1;
          v61 = *(a1 + 16);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          if (v43 <= *(a2 - 4))
          {
            v64 = a1 + 40;
            do
            {
              v8 = v64;
              if (v64 >= a2)
              {
                break;
              }

              v65 = *(v64 + 24);
              v64 += 40;
            }

            while (v43 <= v65);
          }

          else
          {
            v62 = a1;
            do
            {
              v8 = v62 + 40;
              v63 = *(v62 + 64);
              v62 += 40;
            }

            while (v43 <= v63);
          }

          v66 = a2;
          if (v8 < a2)
          {
            v67 = a2;
            do
            {
              v66 = (v67 - 10);
              v68 = *(v67 - 4);
              v67 -= 10;
            }

            while (v43 > v68);
          }

          v69 = *(a1 + 28);
          while (v8 < v66)
          {
            sub_26222C8C8(v8, v66);
            do
            {
              v70 = *(v8 + 64);
              v8 += 40;
            }

            while (v43 <= v70);
            do
            {
              v71 = *(v66 - 4);
              v66 = (v66 - 40);
            }

            while (v43 > v71);
          }

          v72 = (v8 - 40);
          if (v8 - 40 != a1)
          {
            v73 = *a1;
            if (*a1)
            {
              *(a1 + 8) = v73;
              operator delete(v73);
              *a1 = 0;
              *(a1 + 8) = 0;
              *(a1 + 16) = 0;
            }

            *a1 = *(v8 - 40);
            *(a1 + 16) = *(v8 - 24);
            *v72 = 0;
            *(v8 - 32) = 0;
            *(v8 - 24) = 0;
            v74 = *(v8 - 16);
            *(a1 + 32) = *(v8 - 8);
            *(a1 + 24) = v74;
          }

          v75 = *v72;
          if (*v72)
          {
            *(v8 - 32) = v75;
            operator delete(v75);
          }

          a4 = 0;
          *(v8 - 40) = v157;
          *(v8 - 24) = v61;
          *(v8 - 16) = v43;
          *(v8 - 12) = v69;
        }

        v43 = *(a1 + 24);
LABEL_63:
        v156 = *a1;
        v44 = *(a1 + 16);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v45 = a1;
        v46 = *(a1 + 28);
        do
        {
          v47 = v45;
          v45 += 40;
        }

        while (*(v47 + 64) > v43);
        v48 = a2;
        if (v47 == a1)
        {
          v51 = a2;
          while (v45 < v51)
          {
            v49 = (v51 - 10);
            v52 = *(v51 - 4);
            v51 -= 10;
            if (v52 > v43)
            {
              goto LABEL_73;
            }
          }

          v49 = v51;
        }

        else
        {
          do
          {
            v49 = (v48 - 10);
            v50 = *(v48 - 4);
            v48 -= 10;
          }

          while (v50 <= v43);
        }

LABEL_73:
        if (v45 >= v49)
        {
          v8 = v45;
        }

        else
        {
          v53 = v49;
          v8 = v45;
          do
          {
            sub_26222C8C8(v8, v53);
            do
            {
              v54 = *(v8 + 64);
              v8 += 40;
            }

            while (v54 > v43);
            do
            {
              v55 = *(v53 - 4);
              v53 = (v53 - 40);
            }

            while (v55 <= v43);
          }

          while (v8 < v53);
        }

        v56 = (v8 - 40);
        if (v8 - 40 != a1)
        {
          v57 = *a1;
          if (*a1)
          {
            *(a1 + 8) = v57;
            operator delete(v57);
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
          }

          *a1 = *(v8 - 40);
          *(a1 + 16) = *(v8 - 24);
          *v56 = 0;
          *(v8 - 32) = 0;
          *(v8 - 24) = 0;
          v58 = *(v8 - 16);
          *(a1 + 32) = *(v8 - 8);
          *(a1 + 24) = v58;
        }

        v59 = *v56;
        if (*v56)
        {
          *(v8 - 32) = v59;
          operator delete(v59);
        }

        *(v8 - 40) = v156;
        *(v8 - 24) = v44;
        *(v8 - 16) = v43;
        *(v8 - 12) = v46;
        if (v45 >= v49)
        {
          break;
        }

LABEL_90:
        sub_26222B7D4(a1, v8 - 40, a3, a4 & 1);
        a4 = 0;
      }

      v60 = sub_26222CA88(a1, v8 - 40);
      if (sub_26222CA88(v8, a2))
      {
        break;
      }

      if (!v60)
      {
        goto LABEL_90;
      }
    }

    a2 = (v8 - 40);
    if (!v60)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_26222C550(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v23 = a1;
    if (v12)
    {
      sub_26222C77C(v12);
    }

    v13 = 40 * v9;
    v20 = 0;
    v21 = v13;
    v22 = v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    sub_2621CC8B4(v13, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v14 = *(a2 + 24);
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 24) = v14;
    *&v22 = v22 + 40;
    v15 = a1[1];
    v16 = v21 + *a1 - v15;
    sub_26222C7D4(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = a1[2];
    v19 = v22;
    *(a1 + 1) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    result = sub_26222C864(&v20);
    v8 = v19;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    result = sub_2621CC8B4(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v7 = *(a2 + 24);
    *(v5 + 32) = *(a2 + 32);
    *(v5 + 24) = v7;
    v8 = v5 + 40;
    a1[1] = v5 + 40;
  }

  a1[1] = v8;
  return result;
}

void sub_26222C6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_26222C864(va);
  _Unwind_Resume(a1);
}

void sub_26222C6EC(void ***a1)
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
        v8 = *(v6 - 5);
        v6 -= 40;
        v7 = v8;
        if (v8)
        {
          *(v4 - 4) = v7;
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

void sub_26222C77C(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_26222C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 24) = v7;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    do
    {
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      v5 += 40;
    }

    while (v5 != a3);
  }
}

uint64_t sub_26222C864(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 40);
    *(a1 + 16) = v2 - 40;
    if (v4)
    {
      *(v2 - 32) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26222C8C8(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v10 = v4;
  v11 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v6 = a2 + 24;
  v7 = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = v7;
  v8 = *a2;
  if (*a2)
  {
    *(a2 + 1) = v8;
    v9 = v3;
    operator delete(v8);
    v3 = v9;
  }

  *a2 = v3;
  *(a2 + 2) = v5;
  *v6 = v10;
  *(v6 + 8) = v11;
}

void sub_26222C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  if (v8 <= *(a1 + 24))
  {
    if (v9 > v8)
    {
      sub_26222C8C8(a2, a3);
      if (*(a2 + 24) > *(v7 + 24))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_26222C8C8(a1, v10);
      goto LABEL_10;
    }

    sub_26222C8C8(a1, a2);
    if (*(a3 + 24) > *(a2 + 24))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 24) > *(a3 + 24))
  {
    sub_26222C8C8(a3, a4);
    if (*(a3 + 24) > *(a2 + 24))
    {
      sub_26222C8C8(a2, a3);
      if (*(a2 + 24) > *(v7 + 24))
      {

        sub_26222C8C8(v7, a2);
      }
    }
  }
}

BOOL sub_26222CA88(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 64);
        v9 = *(a2 - 16);
        if (v8 > *(a1 + 24))
        {
          if (v9 <= v8)
          {
            sub_26222C8C8(a1, (a1 + 40));
            if (*(a2 - 16) <= *(v3 + 64))
            {
              return 1;
            }

            a1 = v3 + 40;
          }

          v5 = (a2 - 40);
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 40);
        v7 = (a2 - 40);
        break;
      case 4:
        sub_26222C970(a1, a1 + 40, a1 + 80, a2 - 40);
        return 1;
      case 5:
        sub_26222C970(a1, a1 + 40, a1 + 80, a1 + 120);
        if (*(a2 - 16) <= *(v3 + 144))
        {
          return 1;
        }

        sub_26222C8C8((v3 + 120), (a2 - 40));
        if (*(v3 + 144) <= *(v3 + 104))
        {
          return 1;
        }

        sub_26222C8C8((v3 + 80), (v3 + 120));
        if (*(v3 + 104) <= *(v3 + 64))
        {
          return 1;
        }

        v6 = (v3 + 40);
        v7 = (v3 + 80);
        break;
      default:
        goto LABEL_16;
    }

    sub_26222C8C8(v6, v7);
    if (*(v3 + 64) > *(v3 + 24))
    {
      v5 = (v3 + 40);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 16) > *(a1 + 24))
    {
      v5 = (a2 - 40);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_26222C8C8(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 80;
  v11 = *(a1 + 64);
  v12 = *(a1 + 104);
  if (v11 > *(a1 + 24))
  {
    if (v12 <= v11)
    {
      sub_26222C8C8(a1, (a1 + 40));
      if (*(v3 + 104) <= *(v3 + 64))
      {
        goto LABEL_36;
      }

      a1 = v3 + 40;
    }

    v13 = (v3 + 80);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_26222C8C8((a1 + 40), (a1 + 80));
    if (*(v3 + 64) > *(v3 + 24))
    {
      v13 = (v3 + 40);
      a1 = v3;
LABEL_35:
      sub_26222C8C8(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 120;
  if (v3 + 120 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 24);
    if (v17 > *(v10 + 24))
    {
      v18 = 0;
      v30 = *v14;
      v19 = *(v14 + 16);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v20 = v15;
      v21 = *(v14 + 28);
      while (1)
      {
        v22 = v3 + v20;
        if (v18)
        {
          *(v22 + 128) = v18;
          operator delete(v18);
          *(v22 + 136) = 0;
        }

        *(v22 + 120) = *(v22 + 80);
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        v23 = *(v22 + 96);
        v24 = *(v22 + 104);
        *(v22 + 96) = 0;
        *(v22 + 136) = v23;
        *(v22 + 144) = v24;
        *(v22 + 152) = *(v22 + 112);
        if (v20 == -80)
        {
          v26 = (v3 + 24);
          v27 = v3;
          goto LABEL_47;
        }

        v25 = v3 + v20;
        if (v17 <= *(v3 + v20 + 64))
        {
          break;
        }

        v18 = *(v22 + 80);
        v20 -= 40;
      }

      v26 = (v25 + 104);
      v27 = v25 + 80;
LABEL_47:
      v28 = *v27;
      if (*v27)
      {
        *(v27 + 8) = v28;
        operator delete(v28);
      }

      *v27 = v30;
      *(v27 + 16) = v19;
      *v26 = v17;
      *(v27 + 28) = v21;
      if (++v16 == 8)
      {
        return v14 + 40 == a2;
      }
    }

    v10 = v14;
    v15 += 40;
    v14 += 40;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_26222CDC8(void *a1, unsigned int a2)
{
  v2 = a1[1];
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

  v5 = *(*a1 + 8 * v4);
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

  return v6;
}

uint64_t sub_26222D214(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v10 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v9;
  if (v11)
  {
    sub_2621D1B78(v11);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_26222D2A8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_26222D380(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EEC90;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262223B08();
}

void sub_26222E078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  v29 = *(v27 + 128);
  if (v29)
  {
    sub_2621D1B78(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26222E0D8(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 16);
  v2 = *(a1 + 16) * *(a1 + 8);
  memset(v19, 0, sizeof(v19));
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 144);
    result = *v3;
    if (v2 >= 2)
    {
      v5 = v2 - 1;
      v6 = v3 + 1;
      do
      {
        v7 = *v6++;
        result += v7;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 144);
    result = *v10;
    v11 = 1;
    v12 = v1;
    do
    {
      v13 = *(v19 + v11) + 1;
      *(v19 + v11) = v13;
      v14 = *v12--;
      if (v13 != v14)
      {
        break;
      }

      *(v19 + v11--) = 0;
    }

    while (v11 != -1);
    if (v2 >= 2)
    {
      for (i = 1; i != v2; ++i)
      {
        v16 = 0;
        result += v10[v9 * *(&v19[0] + 1) + v8 * *&v19[0]];
        do
        {
          v17 = *(v19 + v16 * 8 + 8) + 1;
          *(v19 + v16 * 8 + 8) = v17;
          if (v17 != v1[v16])
          {
            break;
          }

          *(v19 + v16 * 8 + 8) = 0;
          --v16;
        }

        while (v16 != -2);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_OWORD *sub_26222E218(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_262223F30((a1 + 3), a2);
  sub_26222320C(a1 + 200, a3);
  v5 = 0;
  v6 = (a1 + 56);
  v7 = 1;
  do
  {
    v8 = *(v6 + v5);
    v9 = *(a1 + v5 + 26);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v5 = 1;
  }

  while (v8 == v9);
  if (v8 != v9)
  {
    v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v11, " ", 1);
    v12 = MEMORY[0x277D82670];
    v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v13, " ", 1);
    sub_2621D552C(v13, "TensorBinaryExp", 15);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v15 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  v16 = *(a1 + 72);
  *a1 = *v6;
  a1[1] = v16;
  a1[2] = *(a1 + 88);
  return a1;
}

void sub_26222E44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10[25] = &unk_2874EEC90;
  v12 = v10[41];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v10[6] = &unk_2874EF0B8;
  v13 = v10[22];
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  _Unwind_Resume(a1);
}

void sub_26222E4BC(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84();
}

void sub_26222E848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26222E8A8(void *a1)
{
  a1[25] = &unk_2874EEC90;
  v2 = a1[41];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[6] = &unk_2874EF0B8;
  v3 = a1[22];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

uint64_t *sub_26222E924(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26222E9D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_2621CBEB0();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    sub_26222C77C(v5);
  }

  v6 = 40 * v2;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 24) = v7;
  *&v15 = 40 * v2 + 40;
  v8 = a1[1];
  v9 = 40 * v2 + *a1 - v8;
  sub_26222C7D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v15;
  *(a1 + 1) = v15;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v14[0] = v10;
  v14[1] = v10;
  sub_26222C864(v14);
  return v13;
}

uint64_t sub_26222EB0C(uint64_t a1)
{
  v4 = (a1 + 56);
  sub_2621E1CB0(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_26222EB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v2[3] = &unk_2874EF0B8;
      v4 = v2[19];
      if (v4)
      {
        sub_2621D1B78(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_26222EBDC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v161 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 184);
  if (v7 == v8)
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v147 = 0u;
      v148 = 0u;
      v146 = 0u;
      v10 = *(a1 + 104);
      v11 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 192);
          v13 = *(a2 + 344);
          do
          {
            v14 = *v12++;
            v15 = v14;
            v16 = *v13++;
            *v11++ = v15 * v16;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v102 = 0;
        v103 = *(a1 + 56);
        v104 = *(a1 + 64);
        v105 = *(a2 + 192);
        v106 = *(a2 + 344);
        do
        {
          v107 = 0;
          v11[v104 * *(&v146 + 1) + v103 * v146] = *(v105 + 4 * v102) * *(v106 + 8 * v102);
          do
          {
            v108 = *(&v146 + v107 + 8) + 1;
            *(&v146 + v107 + 8) = v108;
            if (v108 != *(a1 + 16 + v107))
            {
              break;
            }

            *(&v146 + v107 + 8) = 0;
            v107 -= 8;
          }

          while (v107 != -16);
          ++v102;
        }

        while (v102 != v10);
      }
    }

    else
    {
      v147 = 0u;
      v148 = 0u;
      v146 = 0u;
      v46 = *(a1 + 104);
      v47 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v46)
        {
          for (i = 0; i != v46; ++i)
          {
            v49 = sub_26222F698(a2, i, v146, *(&v146 + 1));
            v50 = 0;
            *(v47 + 4 * i) = v49;
            do
            {
              v51 = *(&v146 + v50 + 8) + 1;
              *(&v146 + v50 + 8) = v51;
              if (v51 != *(a1 + 16 + v50))
              {
                break;
              }

              *(&v146 + v50 + 8) = 0;
              v50 -= 8;
            }

            while (v50 != -16);
          }
        }
      }

      else if (v46)
      {
        v78 = 0;
        v79 = *(a1 + 56);
        v80 = *(a1 + 64);
        v81 = a1 + 16;
        do
        {
          v82 = v79 * v146;
          v83 = v47 + 4 * v80 * *(&v146 + 1);
          v84 = sub_26222F698(a2, v78, v146, *(&v146 + 1));
          v85 = 0;
          *(v83 + 4 * v82) = v84;
          do
          {
            v86 = *(&v146 + v85 + 8) + 1;
            *(&v146 + v85 + 8) = v86;
            if (v86 != *(v81 + v85))
            {
              break;
            }

            *(&v146 + v85 + 8) = 0;
            v85 -= 8;
          }

          while (v85 != -16);
          ++v78;
        }

        while (v78 != v46);
      }
    }
  }

  else
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v146 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
      sub_2621D96E4(&v146, v5, a2, &v137);
      v17 = 0;
      v18 = &v137;
      v19 = 1;
      do
      {
        v20 = *v18;
        v21 = *(v5 + v17);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v18 = &v137 + 1;
        v17 = 1;
      }

      while (v20 == v21);
      if (v20 != v21)
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v143, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v143);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v143, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v143);
        std::ostream::put();
        std::ostream::flush();
      }

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      *&v143[0].__locale_ = 0u;
      v140 = 0u;
      v141 = 0u;
      v28 = *(a1 + 104);
      v29 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v147 + 1);
          v31 = v148;
          v33 = (v148 - *(&v147 + 1)) >> 3;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = *(a2 + 192);
          v35 = *(a2 + 344);
          do
          {
            v140 = *&v143[0].__locale_;
            if (v31 != v32)
            {
              v36 = v32;
              v37 = v33;
              do
              {
                v38 = *v36++;
                *(&v140 + v38) = 0;
                --v37;
              }

              while (v37);
            }

            v39 = 0;
            v40 = 0;
            v41 = &v140;
            v42 = 1;
            do
            {
              v43 = v42;
              v40 += *(&v158 + v39) * *v41;
              v41 = (&v140 + 8);
              v39 = 1;
              v42 = 0;
            }

            while ((v43 & 1) != 0);
            *(v29 + 4 * v30) = *(v34 + 4 * v40) * *(v35 + 8 * v40);
            for (j = 1; j != -1; --j)
            {
              v45 = (v143[j].__locale_ + 1);
              v143[j].__locale_ = v45;
              if (v45 != *(&v137 + j * 8))
              {
                break;
              }

              v143[j].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v109 = 0;
        v111 = *(&v147 + 1);
        v110 = v148;
        v112 = (v148 - *(&v147 + 1)) >> 3;
        if (v112 <= 1)
        {
          v112 = 1;
        }

        v113 = *(a1 + 56);
        v114 = *(a1 + 64);
        v115 = *(a2 + 192);
        v116 = *(a2 + 344);
        do
        {
          locale = v143[0].__locale_;
          v117 = v143[1].__locale_;
          v140 = *&v143[0].__locale_;
          if (v110 != v111)
          {
            v119 = v111;
            v120 = v112;
            do
            {
              v121 = *v119++;
              *(&v140 + v121) = 0;
              --v120;
            }

            while (v120);
          }

          v122 = 0;
          v123 = 0;
          v124 = &v140;
          v125 = 1;
          do
          {
            v126 = v125;
            v123 += *(&v158 + v122) * *v124;
            v124 = (&v140 + 8);
            v122 = 1;
            v125 = 0;
          }

          while ((v126 & 1) != 0);
          *(v29 + 4 * v117 * v114 + 4 * locale * v113) = *(v115 + 4 * v123) * *(v116 + 8 * v123);
          for (k = 1; k != -1; --k)
          {
            v128 = (v143[k].__locale_ + 1);
            v143[k].__locale_ = v128;
            if (v128 != *(&v137 + k * 8))
            {
              break;
            }

            v143[k].__locale_ = 0;
          }

          ++v109;
        }

        while (v109 != v28);
      }
    }

    else
    {
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v146 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
      sub_2621D96E4(&v146, v5, a2, &v137);
      v52 = 0;
      v53 = &v137;
      v54 = 1;
      do
      {
        v55 = *v53;
        v56 = *(v5 + v52);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v54 = 0;
        v53 = &v137 + 1;
        v52 = 1;
      }

      while (v55 == v56);
      if (v55 != v56)
      {
        v57 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v58 = sub_2621D552C(v57, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v58, " ", 1);
        v59 = MEMORY[0x277D82670];
        v60 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v60, " ", 1);
        sub_2621D552C(v60, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v61 = std::locale::use_facet(v143, MEMORY[0x277D82680]);
        (v61->__vftable[2].~facet_0)(v61, 10);
        std::locale::~locale(v143);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v59 + *(*v59 - 24)));
        v62 = std::locale::use_facet(v143, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v143);
        std::ostream::put();
        std::ostream::flush();
      }

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      *&v143[0].__locale_ = 0u;
      v140 = 0u;
      v141 = 0u;
      v63 = *(a1 + 104);
      v136 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v63)
        {
          v64 = 0;
          v66 = *(&v147 + 1);
          v65 = v148;
          v67 = (v148 - *(&v147 + 1)) >> 3;
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v134 = v67;
          do
          {
            v140 = *&v143[0].__locale_;
            if (v65 != v66)
            {
              v68 = v66;
              v69 = v134;
              do
              {
                v70 = *v68++;
                *(&v140 + v70) = 0;
                --v69;
              }

              while (v69);
            }

            v71 = 0;
            v72 = 0;
            v73 = &v140;
            v74 = 1;
            do
            {
              v75 = v74;
              v72 += *(&v158 + v71) * *v73;
              v73 = (&v140 + 8);
              v71 = 1;
              v74 = 0;
            }

            while ((v75 & 1) != 0);
            *(v136 + 4 * v64) = sub_26222F698(a2, v72, v140, *(&v140 + 1));
            for (m = 1; m != -1; --m)
            {
              v77 = (v143[m].__locale_ + 1);
              v143[m].__locale_ = v77;
              if (v77 != *(&v137 + m * 8))
              {
                break;
              }

              v143[m].__locale_ = 0;
            }

            ++v64;
          }

          while (v64 != v63);
        }
      }

      else if (v63)
      {
        v87 = 0;
        v133 = v148;
        v135 = *(&v147 + 1);
        if (((v148 - *(&v147 + 1)) >> 3) <= 1)
        {
          v88 = 1;
        }

        else
        {
          v88 = (v148 - *(&v147 + 1)) >> 3;
        }

        v132 = *(a1 + 64);
        v130 = v88;
        v131 = *(a1 + 56);
        do
        {
          v89 = v63;
          v91 = v143[0].__locale_;
          v90 = v143[1].__locale_;
          v140 = *&v143[0].__locale_;
          if (v133 != v135)
          {
            v92 = v135;
            v93 = v130;
            do
            {
              v94 = *v92++;
              *(&v140 + v94) = 0;
              --v93;
            }

            while (v93);
          }

          v95 = 0;
          v96 = 0;
          v97 = &v140;
          v98 = 1;
          do
          {
            v99 = v98;
            v96 += *(&v158 + v95) * *v97;
            v97 = (&v140 + 8);
            v95 = 1;
            v98 = 0;
          }

          while ((v99 & 1) != 0);
          *(v136 + 4 * v132 * v90 + 4 * v131 * v91) = sub_26222F698(a2, v96, v140, *(&v140 + 1));
          for (n = 1; n != -1; --n)
          {
            v101 = (v143[n].__locale_ + 1);
            v143[n].__locale_ = v101;
            if (v101 != *(&v137 + n * 8))
            {
              break;
            }

            v143[n].__locale_ = 0;
          }

          ++v87;
          v63 = v89;
        }

        while (v87 != v89);
      }
    }

    sub_2621C57C8(&v146);
  }

  v129 = *MEMORY[0x277D85DE8];
}

void sub_26222F664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::locale::~locale(&a27);
  sub_2621C57C8(&a33);
  _Unwind_Resume(a1);
}

float sub_26222F698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (*(a1 + 192) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 192) + 4 * *(a1 + 112) * a4 + 4 * *(a1 + 104) * a3);
  }

  v5 = *v4;
  if (*(a1 + 336) == 1)
  {
    v6 = (*(a1 + 344) + 8 * a2);
  }

  else
  {
    v6 = (*(a1 + 344) + 8 * *(a1 + 264) * a4 + 8 * *(a1 + 256) * a3);
  }

  return v5 * *v6;
}

void sub_26222F70C(void *a1)
{
  *a1 = &unk_2874EEC38;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26222F778(void *a1)
{
  *a1 = &unk_2874EEC38;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_26222F7C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 963);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "ascontiguous", 12);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a2 + 136) == 1)
  {

    return sub_262223F30(a1, a2);
  }

  else
  {

    return sub_262222C40(a1, a2);
  }
}

float32x2_t *sub_26222F9E4(void *a1, double a2)
{
  v2 = 2654435769;
  if (*&a2 == 0.0)
  {
    v3 = 2654435769;
  }

  else
  {
    v3 = LODWORD(a2) + 2654435769;
  }

  if (*(&a2 + 1) != 0.0)
  {
    v2 = HIDWORD(a2) + 2654435769;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = (v2 + (v3 << 6) + (v3 >> 2)) ^ v3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = v5 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (*&v11 == v5)
    {
      v12 = vceq_f32(result[2], *&a2);
      if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (*&v11 >= *&v4)
        {
          *&v11 %= *&v4;
        }
      }

      else
      {
        *&v11 &= *&v4 - 1;
      }

      if (*&v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26222FAD4(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
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

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

double sub_26222FC00(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_262231E24(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++*(a1 + 40);
  return result;
}

const void **sub_26222FC8C(const void **result, char *a2, uint64_t a3, void *a4, char *a5, void *a6, char *a7)
{
  i = a7;
  v8 = a6;
  v9 = a4;
  v10 = result;
  v11 = a5;
  if (a7 == a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = (&a7[-*a6] >> 3) + ((a6 - a4) << 6) - (&a5[-*a4] >> 3);
  }

  v13 = result[4];
  v14 = v13 >> 9;
  v15 = result[1];
  v16 = result[2];
  v17 = &v15[8 * (v13 >> 9)];
  v18 = v16 - v15;
  if (v16 == v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v17 + 8 * (result[4] & 0x1FF);
  }

  if (a3 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = ((a3 - *a2) >> 3) + ((a2 - v17) << 6) - ((v19 - *v17) >> 3);
  }

  v21 = result[5];
  if (v20 >= &v21[-v20])
  {
    v32 = (v18 << 6) - 1;
    if (v16 == v15)
    {
      v32 = 0;
    }

    v33 = &v21[v13];
    v34 = v32 - v33;
    if (v12 > v34)
    {
      result = sub_262231890(result, v12 - v34);
      v11 = a5;
      v21 = v10[5];
      v15 = v10[1];
      v16 = v10[2];
      v33 = &v21[v10[4]];
    }

    v36 = &v15[8 * (v33 >> 9)];
    if (v16 == v15)
    {
      v37 = 0;
    }

    else
    {
      v37 = (*v36 + 8 * (v33 & 0x1FF));
    }

    v38 = &v21[-v20];
    if (&v21[-v20] >= v12)
    {
      v40 = v37;
      v41 = v36;
      if (!v12)
      {
        return result;
      }

      goto LABEL_68;
    }

    if (v38 >= v12 >> 1)
    {
      v39 = &v21[-v20 - v12 + (&i[-*v8] >> 3)];
      if (v39 >= 1)
      {
        v8 += v39 >> 9;
        goto LABEL_50;
      }

      v44 = 511 - v39;
      v45 = ~v44;
      v8 -= v44 >> 9;
    }

    else
    {
      if (!v38)
      {
        v8 = v9;
        v43 = v11;
        goto LABEL_58;
      }

      v39 = v38 + ((v11 - *v9) >> 3);
      if (v39 >= 1)
      {
        v8 = &v9[v39 >> 9];
LABEL_50:
        v43 = *v8 + 8 * (v39 & 0x1FF);
        goto LABEL_58;
      }

      v46 = 511 - v39;
      v45 = ~v46;
      v8 = &v9[-(v46 >> 9)];
    }

    v43 = *v8 + 8 * (v45 & 0x1FF);
LABEL_58:
    if (v43 == i)
    {
      v40 = v37;
      v41 = v36;
    }

    else
    {
      v47 = v8;
      v48 = v43;
      v41 = v36;
      v40 = v37;
      do
      {
        *v40++ = *v48;
        if ((v40 - *v41) == 4096)
        {
          v49 = v41[1];
          ++v41;
          v40 = v49;
        }

        v48 += 8;
        if (&v48[-*v47] == 4096)
        {
          v50 = v47[1];
          ++v47;
          v48 = v50;
        }

        v10[5] = v10[5] + 1;
      }

      while (v48 != i);
    }

    i = v43;
    v12 = v38;
    if (!v38)
    {
      return result;
    }

LABEL_68:
    v51 = (&v37[-*v36] >> 3) - v12;
    if (v51 < 1)
    {
      v54 = 511 - v51;
      v52 = &v36[-(v54 >> 9)];
      v53 = (*v52 + 8 * (~v54 & 0x1FF));
    }

    else
    {
      v52 = &v36[v51 >> 9];
      v53 = (*v52 + 8 * (v51 & 0x1FF));
    }

    if (v53 != v37)
    {
      v55 = v52;
      v56 = v53;
      do
      {
        *v40++ = *v56;
        if ((v40 - *v41) == 4096)
        {
          v57 = v41[1];
          ++v41;
          v40 = v57;
        }

        v56 += 8;
        if (&v56[-*v55] == 4096)
        {
          v58 = v55[1];
          ++v55;
          v56 = v58;
        }

        v10[5] = v10[5] + 1;
      }

      while (v56 != v37);
    }

    if (v12 < v38)
    {
      v59 = (&v37[-*v36] >> 3) - v38;
      if (v59 < 1)
      {
        v62 = 511 - v59;
        v60 = &v36[-(v62 >> 9)];
        v61 = *v60 + 8 * (~v62 & 0x1FF);
      }

      else
      {
        v60 = &v36[v59 >> 9];
        v61 = *v60 + 8 * (v59 & 0x1FF);
      }

      __srca = v11;
      if (v60 == v52)
      {
        v74 = v61;
      }

      else
      {
        v64 = *v52;
        v63 = v52 - 1;
        sub_262231CA8(v154, v64, v53, v36, v37);
        v65 = *&v154[8];
        v66 = *&v154[16];
        if (v63 != v60)
        {
          v67 = **&v154[8];
          do
          {
            v68 = *v63;
            v69 = (*v63 + 4096);
            while (1)
            {
              v70 = v66 - v67;
              if ((v69 - v68) >> 3 >= v70 >> 3)
              {
                v71 = v70 >> 3;
              }

              else
              {
                v71 = (v69 - v68) >> 3;
              }

              v69 -= 8 * v71;
              v66 -= 8 * v71;
              if (v71)
              {
                memmove(v66, v69, 8 * v71);
              }

              if (v69 == v68)
              {
                break;
              }

              v72 = *--v65;
              v67 = v72;
              v66 = v72 + 4096;
            }

            v67 = *v65;
            if ((*v65 + 4096) == v66)
            {
              v73 = v65[1];
              ++v65;
              v67 = v73;
              v66 = v73;
            }

            --v63;
          }

          while (v63 != v60);
        }

        v53 = (*v63 + 4096);
        v74 = v61;
        v36 = v65;
        v37 = v66;
      }

      sub_262231CA8(v154, v74, v53, v36, v37);
      v37 = *&v154[16];
      v36 = *&v154[8];
      v11 = __srca;
    }

    v75 = v11;
    if (v9 == v8)
    {
      v76 = v11;
      v77 = i;
    }

    else
    {
      v79 = *v8;
      v78 = v8 - 1;
      sub_262231CA8(v154, v79, i, v36, v37);
      v80 = *&v154[8];
      v81 = *&v154[16];
      if (v78 != v9)
      {
        v82 = **&v154[8];
        do
        {
          v83 = *v78;
          v84 = (*v78 + 4096);
          while (1)
          {
            v85 = v81 - v82;
            if ((v84 - v83) >> 3 >= v85 >> 3)
            {
              v86 = v85 >> 3;
            }

            else
            {
              v86 = (v84 - v83) >> 3;
            }

            v84 -= 8 * v86;
            v81 -= 8 * v86;
            if (v86)
            {
              memmove(v81, v84, 8 * v86);
            }

            if (v84 == v83)
            {
              break;
            }

            v87 = *--v80;
            v82 = v87;
            v81 = v87 + 4096;
          }

          v82 = *v80;
          if ((*v80 + 4096) == v81)
          {
            v88 = v80[1];
            ++v80;
            v82 = v88;
            v81 = v88;
          }

          --v78;
        }

        while (v78 != v9);
      }

      v77 = (*v78 + 4096);
      v76 = v75;
      v36 = v80;
      v37 = v81;
    }

    return sub_262231CA8(v154, v76, v77, v36, v37);
  }

  if (v12 > v13)
  {
    v22 = (v18 << 6) - 1;
    v23 = v16 - v15;
    if (v16 == v15)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    if (v16 == v15)
    {
      v25 = v12 - v13 + 1;
    }

    else
    {
      v25 = v12 - v13;
    }

    if ((v25 & 0x1FF) != 0)
    {
      v26 = (v25 >> 9) + 1;
    }

    else
    {
      v26 = v25 >> 9;
    }

    v27 = v24 - &v21[v13];
    if (v26 >= v27 >> 9)
    {
      v28 = v27 >> 9;
    }

    else
    {
      v28 = v26;
    }

    if (v26 <= v27 >> 9)
    {
      result[4] = (v13 + (v28 << 9));
      for (i = a7; v28; --v28)
      {
        v42 = v10[2];
        *v154 = *(v42 - 1);
        v10[2] = v42 - 1;
        sub_2622316F0(v10, v154);
      }
    }

    else
    {
      v29 = v26 - v28;
      v30 = result[3] - *result;
      if (v26 - v28 > (v30 >> 3) - (v23 >> 3))
      {
        if (v30 >> 2 <= v29 + (v23 >> 3))
        {
          v31 = v29 + (v23 >> 3);
        }

        else
        {
          v31 = v30 >> 2;
        }

        v156 = v10;
        if (v31)
        {
          sub_2622317F8(v31);
        }

        memset(v154, 0, sizeof(v154));
        v155 = 0;
        operator new();
      }

      if (v29)
      {
        if (v15 != *result)
        {
          operator new();
        }

        operator new();
      }

      i = a7;
      for (result[4] = (v13 + (v28 << 9)); v28; --v28)
      {
        v89 = v10[2];
        *v154 = *(v89 - 1);
        v10[2] = v89 - 1;
        sub_2622316F0(v10, v154);
      }
    }

    v13 = v10[4];
    v15 = v10[1];
    v16 = v10[2];
    v14 = v13 >> 9;
    v11 = a5;
  }

  result = &v15[8 * v14];
  if (v16 == v15)
  {
    v90 = 0;
  }

  else
  {
    v90 = *result + 8 * (v13 & 0x1FF);
  }

  if (v12 <= v20)
  {
    v92 = v90;
    v93 = &v15[8 * v14];
    if (!v12)
    {
      return result;
    }

    goto LABEL_149;
  }

  if (v20 >= v12 >> 1)
  {
    v91 = v12 - v20 + ((v11 - *v9) >> 3);
    if (v91 >= 1)
    {
      v9 += v91 >> 9;
      goto LABEL_134;
    }

    v95 = 511 - v91;
    v96 = ~v95;
    v9 -= v95 >> 9;
  }

  else
  {
    if (!v20)
    {
      v9 = v8;
      v94 = i;
      goto LABEL_139;
    }

    v91 = (&i[-*v8] >> 3) - v20;
    if (v91 >= 1)
    {
      v9 = &v8[v91 >> 9];
LABEL_134:
      v94 = *v9 + 8 * (v91 & 0x1FF);
      goto LABEL_139;
    }

    v97 = 511 - v91;
    v96 = ~v97;
    v9 = &v8[-(v97 >> 9)];
  }

  v94 = *v9 + 8 * (v96 & 0x1FF);
LABEL_139:
  if (v94 == v11)
  {
    v92 = v90;
    v93 = result;
  }

  else
  {
    v98 = v9;
    v99 = v94;
    v93 = result;
    v92 = v90;
    do
    {
      if (v92 == *v93)
      {
        v100 = *--v93;
        v92 = (v100 + 4096);
      }

      if (v99 == *v98)
      {
        v101 = *--v98;
        v99 = v101 + 4096;
      }

      v102 = *(v99 - 8);
      v99 -= 8;
      *(v92 - 1) = v102;
      v92 -= 8;
      *(v10 + 2) = vaddq_s64(*(v10 + 2), xmmword_2623A7860);
    }

    while (v99 != v11);
  }

  v11 = v94;
  v12 = v20;
  if (v20)
  {
LABEL_149:
    __srcb = v11;
    v149 = result;
    v103 = sub_262231B50(result, v90, v12);
    v105 = v103;
    v106 = v104;
    if (v90 != v104)
    {
      v107 = v103;
      v108 = v104;
      do
      {
        if (v92 == *v93)
        {
          v109 = *--v93;
          v92 = (v109 + 4096);
        }

        if (v108 == *v107)
        {
          v110 = *--v107;
          v108 = (v110 + 4096);
        }

        v111 = *(v108 - 1);
        v108 -= 8;
        *(v92 - 1) = v111;
        v92 -= 8;
        *(v10 + 2) = vaddq_s64(*(v10 + 2), xmmword_2623A7860);
      }

      while (v108 != v90);
    }

    if (v12 >= v20)
    {
      v116 = v149;
      v115 = a7;
    }

    else
    {
      v112 = sub_262231B50(v149, v90, v20);
      if (v105 == v112)
      {
        sub_262231D64(v154, v106, v113, v149, v90);
        v114 = *&v154[8];
        v115 = a7;
      }

      else
      {
        v117 = v112;
        v147 = v8;
        v148 = v113;
        v119 = *v105;
        v118 = v105 + 1;
        sub_262231D64(v154, v106, (v119 + 4096), v149, v90);
        v120 = *&v154[8];
        if (v118 != v117)
        {
          do
          {
            v121 = v117;
            v122 = 0;
            v123 = *v118;
            v124 = *(&v120 + 1);
            v125 = v120;
            v126 = *v120;
            while (1)
            {
              v127 = v126 - v124 + 4096;
              if ((4096 - v122) >> 3 >= v127 >> 3)
              {
                v128 = v127 >> 3;
              }

              else
              {
                v128 = (4096 - v122) >> 3;
              }

              v129 = 8 * v128;
              if (v128)
              {
                memmove(v124, (v123 + v122), 8 * v128);
              }

              v122 += 8 * v128;
              if (v122 == 4096)
              {
                break;
              }

              v130 = v125[1];
              ++v125;
              v126 = v130;
              v124 = v130;
            }

            v131 = &v124[v129];
            if ((*v125 + 4096) == &v124[v129])
            {
              v132 = v125[1];
              ++v125;
              v131 = v132;
            }

            v117 = v121;
            *&v120 = v125;
            *(&v120 + 1) = v131;
            ++v118;
          }

          while (v118 != v121);
        }

        sub_262231D64(v154, *v118, v148, v120, *(&v120 + 1));
        v114 = *&v154[8];
        v115 = a7;
        v8 = v147;
      }

      v90 = *(&v114 + 1);
      v116 = v114;
    }

    if (v9 == v8)
    {
      v133 = __srcb;
      v134 = v115;
      v135 = v90;
    }

    else
    {
      v137 = *v9;
      v136 = v9 + 1;
      sub_262231D64(v154, __srcb, (v137 + 4096), v116, v90);
      v138 = *&v154[8];
      v139 = *&v154[16];
      if (v136 != v8)
      {
        v140 = **&v154[8];
        do
        {
          v141 = 0;
          v142 = *v136;
          while (1)
          {
            v143 = v140 - v139 + 4096;
            if ((4096 - v141) >> 3 >= v143 >> 3)
            {
              v144 = v143 >> 3;
            }

            else
            {
              v144 = (4096 - v141) >> 3;
            }

            if (v144)
            {
              memmove(v139, &v142[v141], 8 * v144);
            }

            v141 += 8 * v144;
            if (v141 == 4096)
            {
              break;
            }

            v145 = v138[1];
            ++v138;
            v140 = v145;
            v139 = v145;
          }

          v139 += 8 * v144;
          v140 = *v138;
          if ((*v138 + 4096) == v139)
          {
            v146 = v138[1];
            ++v138;
            v140 = v146;
            v139 = v146;
          }

          ++v136;
        }

        while (v136 != v8);
      }

      v133 = *v136;
      v134 = v115;
      v116 = v138;
      v135 = v139;
    }

    return sub_262231D64(v154, v133, v134, v116, v135);
  }

  return result;
}

void sub_262230820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262230870(void *a1, double a2)
{
  v3 = sub_26222F9E4(a1, a2);
  if (v3)
  {

    sub_26222FAD4(a1, v3);
  }
}

void sub_2622308BC(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_2621C608C(v3, v5);

      operator delete(v5);
    }
  }
}

float32x2_t *sub_262230990(void *a1, double a2)
{
  v2 = 2654435769;
  v3 = LODWORD(a2) + 2654435769;
  if (*&a2 == 0.0)
  {
    v3 = 2654435769;
  }

  if (*(&a2 + 1) != 0.0)
  {
    v2 = HIDWORD(a2) + 2654435769;
  }

  v4 = (v2 + (v3 << 6) + (v3 >> 2)) ^ v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = v4 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (*&v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (*&v11 >= *&v5)
      {
        *&v11 %= *&v5;
      }
    }

    else
    {
      *&v11 &= *&v5 - 1;
    }

    if (*&v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  v12 = vceq_f32(v10[2], *&a2);
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  return v10;
}

uint64_t sub_262230DD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = (8 * a3) >> 3;
  *a1 = 0u;
  if (!(8 * a3))
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_262231890(a1, (8 * a3) >> 3);
  v7 = *(a1 + 40);
  v8 = *(a1 + 8);
  v9 = *(a1 + 32) + v7;
  v6 = (v8 + 8 * (v9 >> 9));
  if (*(a1 + 16) == v8)
  {
    goto LABEL_5;
  }

  v10 = *v6 + 8 * (v9 & 0x1FF);
LABEL_6:
  v11 = sub_262231B50(v6, v10, v5);
  while (v10 != v12)
  {
    v13 = (v6 == v11 ? v12 : *v6 + 4096);
    if (v10 == v13)
    {
      v13 = v10;
    }

    else
    {
      v14 = v10;
      do
      {
        v15 = *a2++;
        *v14++ = v15;
      }

      while (v14 != v13);
      v7 = *(a1 + 40);
    }

    v7 += (v13 - v10) >> 3;
    *(a1 + 40) = v7;
    if (v6 == v11)
    {
      break;
    }

    v16 = v6[1];
    ++v6;
    v10 = v16;
  }

  return a1;
}

void sub_262230EF8(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262230F50(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_262230FA0((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_262230FA0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_262231840(a1);
}

void *sub_26223104C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

int64x2_t sub_26223112C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = ((v6 - v5) << 6) - 1;
    v8 = v6 - v5;
    if (v6 == v5)
    {
      v7 = 0;
    }

    if ((v7 - *(a1 + 40)) < 0x200)
    {
      v9 = *(a1 + 24);
      v10 = *a1;
      v11 = &v9[-*a1];
      if (v8 < v11)
      {
        if (v5 != v10)
        {
          operator new();
        }

        operator new();
      }

      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      sub_2622317F8(v12);
    }

    *(a1 + 32) = 512;
    v17[0] = *(v6 - 1);
    *(a1 + 16) = v6 - 8;
    sub_2622316F0(a1, v17);
    v4 = *(a1 + 32);
  }

  v13 = *(a1 + 8);
  v14 = (v13 + 8 * (v4 >> 9));
  v15 = *v14 + 8 * (v4 & 0x1FF);
  if (*(a1 + 16) == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  *(v15 - 8) = *a2;
  result = vaddq_s64(*(a1 + 32), xmmword_2623A7860);
  *(a1 + 32) = result;
  return result;
}

void sub_262231354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262231380(void ***a1)
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
        v4 = sub_262230FA0((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_262231404(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  if (v3 != v4)
  {
    v5 = *(a3 + 16);
    v6 = ((v3 - **(a2 + 16)) >> 3) + ((*(a2 + 16) - v5) << 6);
    v7 = v4 - *v5;
    if (v6 != v7 >> 3)
    {
      sub_2621CC71C(result, v6 - (v7 >> 3));
    }
  }

  return result;
}

void sub_2622314D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

size_t *sub_2622314EC(size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v15[4] = v2;
    if (v9)
    {
      sub_2621E1EE4(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_26220AA90(v15);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  v2[1] = v5;
  return result;
}

void *sub_262231628(void *result, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a5 != a3)
  {
    v5 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6);
    v6 = a3 - *a2;
    if (v5 != v6 >> 3)
    {
      sub_2621CC71C(result, v5 - (v6 >> 3));
    }
  }

  return result;
}

void sub_2622316D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_2622316F0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_2622317F8(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_2622317F8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262231840(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_262231890(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_262231BA4(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v8 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = v2;
      if (v12)
      {
        sub_2622317F8(v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_262231BA4(v2, v16);
    }
  }

  return result;
}

void sub_262231B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_262231B50(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 3);
    if (v3 < 1)
    {
      result -= (511 - v3) >> 9;
      v5 = *result;
    }

    else
    {
      result += v3 >> 9;
      v4 = *result;
    }
  }

  return result;
}

void *sub_262231BA4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_2622317F8(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_262231CA8(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      v11 -= 8 * v13;
      a5 -= 8 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 8 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = v6[1];
      ++v6;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *sub_262231D64(void *result, _BYTE *__src, _BYTE *a3, void *a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      if ((a3 - v9) >> 3 >= v11 >> 3)
      {
        v12 = v11 >> 3;
      }

      else
      {
        v12 = (a3 - v9) >> 3;
      }

      if (v12)
      {
        result = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = v6[1];
      ++v6;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if ((*v6 + 4096) == __dst)
    {
      v14 = v6[1];
      ++v6;
      __dst = v14;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

void *sub_262231E24(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (!v3)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = v8 - *a1;
    if (v7 - a1[1] < v9)
    {
      if (v8 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v12 = a1;
    sub_2622317F8(v10);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v11 = *v5;
  a1[1] = v5 + 1;
  return sub_262231BA4(a1, &v11);
}

void sub_262231F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262231F94(char a1, void *__p)
{
  if (a1)
  {
    __p[3] = &unk_2874EF0B8;
    v3 = __p[19];
    if (v3)
    {
      sub_2621D1B78(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_26223200C(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621CC71C(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_262232140(void ***a1)
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
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
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

void *sub_2622321D0(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
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

  if (!sub_2621D19D0(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_262232448(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621CBF10(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void sub_262232548(void *a1)
{
  *a1 = &unk_2874EE350;
  v2 = (a1 + 2);
  v3 = a1[2];
  for (i = a1[3]; i != v3; sub_262232668(i))
  {
    i -= 144;
  }

  a1[3] = v3;
  v5 = v2;
  sub_2622325EC(&v5);

  JUMPOUT(0x266727420);
}

void sub_2622325EC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_262232668(i))
    {
      i -= 144;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_262232668(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

void *sub_2622326B4(void *a1)
{
  *a1 = &unk_2874EE350;
  v2 = (a1 + 2);
  v3 = a1[2];
  for (i = a1[3]; i != v3; sub_262232668(i))
  {
    i -= 144;
  }

  a1[3] = v3;
  v6 = v2;
  sub_2622325EC(&v6);
  return a1;
}

void sub_262232738(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v197 = *MEMORY[0x277D85DE8];
  v193 = 0uLL;
  v194 = 0;
  v4 = *a3;
  if ((v4 & 0x80000000) != 0)
  {
    __b[0].__locale_ = (v4 + 2);
  }

  else
  {
    __b[0].__locale_ = *a3;
  }

  sub_2621C9004(&v193, __b);
  v5 = v193;
  v6 = MEMORY[0x277D82670];
  if (*(&v193 + 1) != v193)
  {
    v7 = 0;
    v8 = (*(&v193 + 1) - v193) >> 3;
    v9 = MEMORY[0x277D82680];
    do
    {
      if (*(v5 + 8 * v7) >= 2uLL)
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v10 = MEMORY[0x266727260](v6, 28);
        sub_2621D552C(v10, " ", 1);
        sub_2621D552C(v10, "format_reduce_axes", 18);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(__b, v9);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v12 = std::locale::use_facet(__b, v9);
        (v12->__vftable[2].~facet_0)(v12, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v7;
    }

    while (v7 < v8);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v13 = v193;
  v174 = (*(&v193 + 1) - v193) >> 3;
  v169 = *(&v193 + 1) - v193;
  if (*(&v193 + 1) - v193 != 8)
  {
    v14 = 0;
    v15 = MEMORY[0x277D82680];
    do
    {
      if (*(v13 + 8 * v14) == *(v13 + 8 * v14 + 8))
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v16 = MEMORY[0x266727260](v6, 33);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "format_reduce_axes", 18);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(__b, v15);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v18 = std::locale::use_facet(__b, v15);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v14;
    }

    while (v14 < v174 - 1);
  }

  v19 = 0;
  v20 = v174;
  if (v174 <= 1)
  {
    v20 = 1;
  }

  memset(v192, 0, sizeof(v192));
  v21 = v20 - 1;
  v22 = 1;
  do
  {
    v23 = v22;
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v19)
      {
LABEL_19:
        __b[0].__locale_ = 1;
        sub_2621C9004(v192, __b);
        goto LABEL_25;
      }

      v24 = 0;
      while (v21 != v24)
      {
        v25 = *(v13 + 8 + 8 * v24++);
        if (v25 == v19)
        {
          if (v24 < v174)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    sub_2621C9004(v192, (a2 + 8 * v19));
LABEL_25:
    v22 = 0;
    v19 = 1;
  }

  while ((v23 & 1) != 0);
  sub_2621D6CA4(__b, v192);
  v189 = 0u;
  v190 = 0u;
  v188[0] = __b[1];
  v188[1] = 1;
  sub_262224008(v175, __b);
  v26 = *(v13 + v169 - 8);
  v173 = v26;
  if (v26 == 1)
  {
    if (v174 != 1)
    {
      v27 = *(v13 - 16 + v169);
      if (*(v13 + 8 * (v174 - 1)) - v27 == 1)
      {
        v28 = (v13 + 8 * v174 - 24);
        v29 = v174 - 2;
        do
        {
          v26 = v27;
          if (!v29)
          {
            break;
          }

          v27 = *v28;
          v30 = v28[1];
          --v28;
          --v29;
        }

        while (v30 - v27 == 1);
        goto LABEL_32;
      }
    }

    v185 = 0;
    v186 = 0;
    v187 = 0;
    v182 = 0;
    v183 = 0;
    v26 = 1;
    v184 = 0;
  }

  else
  {
LABEL_32:
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    if (!v26)
    {
      v31 = 1;
      v32 = 1;
      v33 = 1;
LABEL_47:
      v39 = 8 * v31;
      v40 = 1;
      do
      {
        v40 *= *(a2 + v39);
        v39 += 8;
      }

      while (v39 != 16);
      goto LABEL_51;
    }
  }

  v34 = 0;
  v32 = 1;
  while (2)
  {
    v35 = (a2 + 8 * v34);
    v36 = *v35;
    sub_2621C9004(&v185, v35);
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v34)
      {
LABEL_38:
        *&v196[0] = 0;
        sub_2621C9004(&v182, v196);
        goto LABEL_44;
      }

      v37 = 0;
      while (v21 != v37)
      {
        v38 = *(v13 + 8 + 8 * v37++);
        if (v38 == v34)
        {
          if (v37 < v174)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v182, &v188[v34]);
LABEL_44:
    v32 *= v36;
    if (++v34 != v26)
    {
      continue;
    }

    break;
  }

  v33 = 0;
  if (v26 + 1 <= 1)
  {
    v31 = 0;
    v26 = -1;
    goto LABEL_47;
  }

  v40 = 1;
LABEL_51:
  v41 = *(a2 + 8 * v26);
  if (v173 == 1)
  {
    v42 = *(a2 + 8 * v26);
  }

  else
  {
    v42 = 1;
  }

  v170 = v42;
  v43 = v177;
  if (v173 == 1)
  {
    v44 = v32;
  }

  else
  {
    v44 = *(a2 + 8 * v26);
  }

  memset(&v196[1], 0, 32);
  if (v173 == 1)
  {
    v32 = 1;
  }

  v196[0] = 0uLL;
  memset(v195, 0, sizeof(v195));
  if (v33)
  {
    __p = 0;
    sub_2621C9004(&v185, &__p);
    v45 = 0;
    __p = 0;
    v180 = 0;
    v181 = 0;
    goto LABEL_73;
  }

  v167 = v32;
  v168 = v177;
  v46 = 0;
  __p = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  if (v26 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v26;
  }

  while (2)
  {
    if (*(&v13 + 1) == v13)
    {
LABEL_70:
      sub_2621C9004(&__p, &v178);
    }

    else if (*v13 != v46)
    {
      v48 = 0;
      while (v21 != v48)
      {
        v49 = *(v13 + 8 + 8 * v48++);
        if (v49 == v46)
        {
          if (v48 < v174)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }
      }

      goto LABEL_70;
    }

LABEL_71:
    v178 = ++v46;
    if (v46 != v47)
    {
      continue;
    }

    break;
  }

  v45 = v26 - 1;
  v32 = v167;
  v43 = v168;
LABEL_73:
  v50 = v40 * v170;
  v51 = *(a2 + 184);
  if (v173 == 1)
  {
    if (*(a2 + 184))
    {
      if (v44)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = *(a2 + 192);
        v56 = v185;
        v57 = (v55 + 4);
        if (v50 <= 1)
        {
          v58 = 1;
        }

        else
        {
          v58 = v40 * v170;
        }

        v59 = v182;
        v60 = 4 * v58;
        v61 = 1;
        v62 = v43;
        while (1)
        {
          v63 = *(v55 + 4 * v53) * *(v55 + 4 * v53);
          if (v50 < 2)
          {
            break;
          }

          v64 = v50 - 1;
          v65 = v57;
          do
          {
            v66 = *v65++;
            v63 = v63 + (v66 * v66);
            --v64;
          }

          while (v64);
          v53 += v50;
          if (!v61)
          {
            goto LABEL_86;
          }

LABEL_87:
          *v62 = v63;
          v67 = v45;
          do
          {
            v68 = *(v196 + v67) + 1;
            *(v196 + v67) = v68;
            if (v68 != v56[v67])
            {
              break;
            }

            *(v196 + v67) = 0;
            v69 = v67-- <= 0;
          }

          while (!v69);
          if (v33)
          {
            v61 = 0;
            v70 = 0;
          }

          else
          {
            v70 = 0;
            v71 = v196;
            v72 = v59;
            v73 = v26;
            do
            {
              v75 = *v71++;
              v74 = v75;
              v76 = *v72++;
              v70 += v76 * v74;
              --v73;
            }

            while (v73);
            v61 = v70 > v54;
            if (v70 > v54)
            {
              v54 = v70;
            }
          }

          v62 = &v43[v70];
          ++v52;
          v57 = (v57 + v60);
          if (v52 == v44)
          {
            goto LABEL_189;
          }
        }

        ++v53;
        if (v61)
        {
          goto LABEL_87;
        }

LABEL_86:
        v63 = v63 + *v62;
        goto LABEL_87;
      }
    }

    else if (v44)
    {
      v103 = 0;
      v104 = 0;
      v105 = v185;
      v106 = v182;
      v107 = *(a2 + 192);
      v108 = 1;
      v109 = v43;
      v110 = *(a2 + 104);
      v111 = *(a2 + 112);
      do
      {
        v112 = *(v107 + 4 * v111 * *(&v195[0] + 1) + 4 * v110 * *&v195[0]);
        v113 = v112 * v112;
        for (i = 8; i != -8; i -= 8)
        {
          v115 = *(v195 + i) + 1;
          *(v195 + i) = v115;
          if (v115 != *(a2 + i))
          {
            break;
          }

          *(v195 + i) = 0;
        }

        if (v50 >= 2)
        {
          for (j = 1; j != v50; ++j)
          {
            v117 = *(v107 + 4 * v111 * *(&v195[0] + 1) + 4 * v110 * *&v195[0]);
            v113 = v113 + (v117 * v117);
            for (k = 8; k != -8; k -= 8)
            {
              v119 = *(v195 + k) + 1;
              *(v195 + k) = v119;
              if (v119 != *(a2 + k))
              {
                break;
              }

              *(v195 + k) = 0;
            }
          }
        }

        if (!v108)
        {
          v113 = v113 + *v109;
        }

        *v109 = v113;
        v120 = v45;
        do
        {
          v121 = *(v196 + v120) + 1;
          *(v196 + v120) = v121;
          if (v121 != v105[v120])
          {
            break;
          }

          *(v196 + v120) = 0;
          v69 = v120-- <= 0;
        }

        while (!v69);
        if (v33)
        {
          v108 = 0;
          v122 = 0;
        }

        else
        {
          v122 = 0;
          v123 = v196;
          v124 = v106;
          v125 = v26;
          do
          {
            v127 = *v123++;
            v126 = v127;
            v128 = *v124++;
            v122 += v128 * v126;
            --v125;
          }

          while (v125);
          v108 = v122 > v104;
          if (v122 > v104)
          {
            v104 = v122;
          }
        }

        v109 = &v43[v122];
        ++v103;
      }

      while (v103 != v44);
    }
  }

  else if (*(a2 + 184))
  {
    if (v32)
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = v185;
      v81 = 1;
      v82 = v182;
      v83 = v43;
      do
      {
        if (v81)
        {
          if (v50)
          {
            v84 = *(a2 + 192);
            v85 = v83;
            v86 = v40 * v170;
            do
            {
              *v85++ = *(v84 + 4 * v78) * *(v84 + 4 * v78);
              ++v78;
              --v86;
            }

            while (v86);
          }
        }

        else if (v50)
        {
          v87 = *(a2 + 192);
          v88 = v83;
          v89 = v40 * v170;
          do
          {
            *v88 = *v88 + (*(v87 + 4 * v78) * *(v87 + 4 * v78));
            ++v88;
            ++v78;
            --v89;
          }

          while (v89);
        }

        if (v44 >= 2)
        {
          for (m = 1; m != v44; ++m)
          {
            if (v50)
            {
              v91 = *(a2 + 192);
              v92 = v83;
              v93 = v40 * v170;
              do
              {
                *v92 = *v92 + (*(v91 + 4 * v78) * *(v91 + 4 * v78));
                ++v92;
                ++v78;
                --v93;
              }

              while (v93);
            }
          }
        }

        v94 = v45;
        do
        {
          v95 = *(v196 + v94) + 1;
          *(v196 + v94) = v95;
          if (v95 != v80[v94])
          {
            break;
          }

          *(v196 + v94) = 0;
          v69 = v94-- <= 0;
        }

        while (!v69);
        if (v33)
        {
          v81 = 0;
          v96 = 0;
        }

        else
        {
          v96 = 0;
          v97 = v196;
          v98 = v82;
          v99 = v26;
          do
          {
            v101 = *v97++;
            v100 = v101;
            v102 = *v98++;
            v96 += v102 * v100;
            --v99;
          }

          while (v99);
          v81 = v96 > v79;
          if (v96 > v79)
          {
            v79 = v96;
          }
        }

        v83 = &v43[v96];
        ++v77;
      }

      while (v77 != v32);
    }
  }

  else if (v32)
  {
    v129 = 0;
    v130 = 0;
    v131 = v185;
    v132 = 1;
    v133 = v182;
    v134 = v43;
    do
    {
      if (v132)
      {
        if (v50)
        {
          v135 = 0;
          v136 = *(a2 + 192);
          v138 = *(a2 + 104);
          v137 = *(a2 + 112);
          do
          {
            v139 = *(v136 + 4 * v137 * *(&v195[0] + 1) + 4 * v138 * *&v195[0]);
            v134[v135] = v139 * v139;
            for (n = 8; n != -8; n -= 8)
            {
              v141 = *(v195 + n) + 1;
              *(v195 + n) = v141;
              if (v141 != *(a2 + n))
              {
                break;
              }

              *(v195 + n) = 0;
            }

            ++v135;
          }

          while (v135 != v50);
        }
      }

      else if (v50)
      {
        v142 = 0;
        v143 = *(a2 + 192);
        v145 = *(a2 + 104);
        v144 = *(a2 + 112);
        do
        {
          v146 = *(v143 + 4 * v144 * *(&v195[0] + 1) + 4 * v145 * *&v195[0]);
          v134[v142] = v134[v142] + (v146 * v146);
          for (ii = 8; ii != -8; ii -= 8)
          {
            v148 = *(v195 + ii) + 1;
            *(v195 + ii) = v148;
            if (v148 != *(a2 + ii))
            {
              break;
            }

            *(v195 + ii) = 0;
          }

          ++v142;
        }

        while (v142 != v50);
      }

      v149 = v45;
      if (v44 >= 2)
      {
        for (jj = 1; jj != v44; ++jj)
        {
          if (v50)
          {
            v151 = 0;
            v152 = *(a2 + 192);
            v154 = *(a2 + 104);
            v153 = *(a2 + 112);
            do
            {
              v155 = *(v152 + 4 * v153 * *(&v195[0] + 1) + 4 * v154 * *&v195[0]);
              v134[v151] = v134[v151] + (v155 * v155);
              for (kk = 8; kk != -8; kk -= 8)
              {
                v157 = *(v195 + kk) + 1;
                *(v195 + kk) = v157;
                if (v157 != *(a2 + kk))
                {
                  break;
                }

                *(v195 + kk) = 0;
              }

              ++v151;
            }

            while (v151 != v50);
          }
        }

        v149 = v45;
      }

      do
      {
        v158 = *(v196 + v149) + 1;
        *(v196 + v149) = v158;
        if (v158 != v131[v149])
        {
          break;
        }

        *(v196 + v149) = 0;
        v69 = v149-- <= 0;
      }

      while (!v69);
      if (v33)
      {
        v132 = 0;
        v159 = 0;
      }

      else
      {
        v159 = 0;
        v160 = v196;
        v161 = v133;
        v162 = v26;
        do
        {
          v164 = *v160++;
          v163 = v164;
          v165 = *v161++;
          v159 += v165 * v163;
          --v162;
        }

        while (v162);
        v132 = v159 > v130;
        if (v159 > v130)
        {
          v130 = v159;
        }
      }

      v134 = &v43[v159];
      ++v129;
    }

    while (v129 != v32);
  }

LABEL_189:
  if (__p)
  {
    operator delete(__p);
  }

  if (v182)
  {
    operator delete(v182);
  }

  if (v185)
  {
    operator delete(v185);
  }

  if (v192[0])
  {
    operator delete(v192[0]);
  }

  if (v13)
  {
    operator delete(v13);
  }

  sub_262208CB8(a1, v175, *a3);
  v175[0] = &unk_2874EF0B8;
  if (v176)
  {
    sub_2621D1B78(v176);
  }

  v166 = *MEMORY[0x277D85DE8];
}

void sub_2622334D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::locale a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a33)
  {
    sub_2621D1B78(a33);
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (v58)
  {
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622335D4(uint64_t a1, __n128 a2)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(&v25[1], 0, 32);
  v25[0] = a2;
  result = sub_262224008(a1, v25);
  if (*(a1 + 137) == 1)
  {
    v4 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v5 = sub_2621D552C(v4, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v5, " ", 1);
    v6 = MEMORY[0x277D82670];
    v7 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v7, " ", 1);
    sub_2621D552C(v7, "operator=", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v26, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v26);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v9 = std::locale::use_facet(v26, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(v26);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v27 = 0u;
  v28 = 0u;
  *&v26[0].__locale_ = 0u;
  v10 = *(a1 + 104);
  v11 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v12 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_2623A7630;
      v15 = xmmword_2623A7620;
      v16 = (v11 + 8);
      v17 = vdupq_n_s64(4uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s16(v18, *v13.i8).u8[0])
        {
          *(v16 - 2) = 0;
        }

        if (vuzp1_s16(v18, *&v13).i8[2])
        {
          *(v16 - 1) = 0;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
        {
          *v16 = 0;
          v16[1] = 0;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 += 4;
        v12 -= 4;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    v19 = 0;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    do
    {
      v22 = 0;
      *(v11 + 4 * v21 * v26[1].__locale_ + 4 * v20 * v26[0].__locale_) = 0;
      do
      {
        v23 = (v26[v22 + 1].__locale_ + 1);
        v26[v22 + 1].__locale_ = v23;
        if (v23 != *(a1 + 16 + v22 * 8))
        {
          break;
        }

        v26[v22-- + 1].__locale_ = 0;
      }

      while (v22 != -2);
      ++v19;
    }

    while (v19 != v10);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622338E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale(&a15);
  *v15 = &unk_2874EF0B8;
  v17 = v15[16];
  if (v17)
  {
    sub_2621D1B78(v17);
  }

  _Unwind_Resume(a1);
}

void sub_262233938(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_262234D10(&v24, a3);
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *a1 = &unk_2874EF0B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  v6 = *(a2 + 120);
  v7 = *(a2 + 128);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 128);
    *(a1 + 120) = v6;
    *(a1 + 128) = v7;
    if (v8)
    {
      sub_2621D1B78(v8);
    }
  }

  else
  {
    *(a1 + 120) = v6;
    *(a1 + 128) = 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v24;
  v13 = (v25 - v24) >> 3;
  v14 = *(a2 + 104);
  *(a1 + 104) = v14;
  v15 = a1 + 56;
  v16 = 1;
  do
  {
    v17 = v16;
    if (v10 < v13 && v11 == v12[v10])
    {
      *(v5 + 8 * v11) = 1;
      *(v15 + 8 * v11) = 0;
      ++v10;
    }

    else
    {
      *(v5 + 8 * v11) = *(a2 + 8 + 8 * v9);
      *(v15 + 8 * v11) = *(a2 + 56 + 8 * v9++);
    }

    v16 = 0;
    v11 = 1;
  }

  while ((v17 & 1) != 0);
  *(a1 + 137) = 0;
  v18 = (a1 + 64);
  v19 = -2;
  v20 = 1;
  while (1)
  {
    v21 = *(v18 - 6);
    if (v21 != 1)
    {
      break;
    }

LABEL_15:
    --v18;
    if (__CFADD__(v19++, 1))
    {
      v23 = 1;
      goto LABEL_19;
    }
  }

  if (*v18 == v20)
  {
    v20 *= v21;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_19:
  *(a1 + 136) = v23;
  *(a1 + 144) = **(a1 + 120) + 4 * *(&v14 + 1);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_262233AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262233B0C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80(a1 + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_262234BFC(a1 + 288, a2 + 18);
  sub_262229F7C(a1 + 984, a2 + 984);
  return a1;
}

void *sub_262233C00(void *a1)
{
  a1[123] = &unk_2874EF6A8;
  v2 = a1[139];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_262233C60(a1 + 36);
  sub_2621C57C8((a1 + 6));
  return a1;
}

void *sub_262233C60(void *a1)
{
  a1[68] = &unk_2874EF0B8;
  v2 = a1[84];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0B8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void sub_262233CE4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v139 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 856);
  if (v7 == v8)
  {
    if (*(a2 + 856) && *(a2 + 1112) == 1 && *(a2 + 1264) == 1)
    {
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v10 = *(a1 + 104);
      v11 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v12 = 0;
          v13 = a1 + 16;
          do
          {
            v14 = sub_262234A2C(a2 + 144, &v124);
            v15 = 0;
            *(v11 + 4 * v12) = sqrtf(fabsf(v14 + *(a2 + 1328)));
            do
            {
              v16 = *(&v124 + v15 + 8) + 1;
              *(&v124 + v15 + 8) = v16;
              if (v16 != *(v13 + v15))
              {
                break;
              }

              *(&v124 + v15 + 8) = 0;
              v15 -= 8;
            }

            while (v15 != -16);
            ++v12;
          }

          while (v12 != v10);
        }
      }

      else if (v10)
      {
        v88 = 0;
        v89 = *(a1 + 56);
        v90 = *(a1 + 64);
        v91 = a1 + 16;
        do
        {
          v92 = v89 * v124;
          v93 = v11 + 4 * v90 * *(&v124 + 1);
          v94 = sub_262234A2C(a2 + 144, &v124);
          v95 = 0;
          *(v93 + 4 * v92) = sqrtf(fabsf(v94 + *(a2 + 1328)));
          do
          {
            v96 = *(&v124 + v95 + 8) + 1;
            *(&v124 + v95 + 8) = v96;
            if (v96 != *(v91 + v95))
            {
              break;
            }

            *(&v124 + v95 + 8) = 0;
            v95 -= 8;
          }

          while (v95 != -16);
          ++v88;
        }

        while (v88 != v10);
      }
    }

    else
    {
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v39 = *(a1 + 104);
      v40 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v39)
        {
          v41 = 0;
          v42 = a1 + 16;
          do
          {
            v43 = sub_262234750(a2 + 144, &v124);
            v44 = 0;
            *(v40 + 4 * v41) = sqrtf(fabsf(v43 + *(a2 + 1328)));
            do
            {
              v45 = *(&v124 + v44 + 8) + 1;
              *(&v124 + v44 + 8) = v45;
              if (v45 != *(v42 + v44))
              {
                break;
              }

              *(&v124 + v44 + 8) = 0;
              v44 -= 8;
            }

            while (v44 != -16);
            ++v41;
          }

          while (v41 != v39);
        }
      }

      else if (v39)
      {
        v68 = 0;
        v69 = *(a1 + 56);
        v70 = *(a1 + 64);
        v71 = a1 + 16;
        do
        {
          v72 = v69 * v124;
          v73 = v40 + 4 * v70 * *(&v124 + 1);
          v74 = sub_262234750(a2 + 144, &v124);
          v75 = 0;
          *(v73 + 4 * v72) = sqrtf(fabsf(v74 + *(a2 + 1328)));
          do
          {
            v76 = *(&v124 + v75 + 8) + 1;
            *(&v124 + v75 + 8) = v76;
            if (v76 != *(v71 + v75))
            {
              break;
            }

            *(&v124 + v75 + 8) = 0;
            v75 -= 8;
          }

          while (v75 != -16);
          ++v68;
        }

        while (v68 != v39);
      }
    }
  }

  else
  {
    if (*(a2 + 856) && *(a2 + 1112) == 1 && *(a2 + 1264) == 1)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      sub_2621D96E4(&v124, v5, a2, &v115);
      v17 = 0;
      v18 = &v115;
      v19 = 1;
      do
      {
        v20 = *v18;
        v21 = *(v5 + v17);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v18 = &v115 + 1;
        v17 = 1;
      }

      while (v20 == v21);
      if (v20 != v21)
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      *&v121[0].__locale_ = 0u;
      v118 = 0u;
      v119 = 0u;
      v28 = *(a1 + 104);
      v29 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v125 + 1);
          v31 = v126;
          if (((v126 - *(&v125 + 1)) >> 3) <= 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = (v126 - *(&v125 + 1)) >> 3;
          }

          do
          {
            v118 = *&v121[0].__locale_;
            if (v31 != v32)
            {
              v34 = v32;
              v35 = v33;
              do
              {
                v36 = *v34++;
                *(&v118 + v36) = 0;
                --v35;
              }

              while (v35);
            }

            *(v29 + 4 * v30) = sqrtf(fabsf(sub_262234A2C(a2 + 144, &v118) + *(a2 + 1328)));
            for (i = 1; i != -1; --i)
            {
              v38 = (v121[i].__locale_ + 1);
              v121[i].__locale_ = v38;
              if (v38 != *(&v115 + i * 8))
              {
                break;
              }

              v121[i].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v97 = 0;
        v98 = *(&v125 + 1);
        v114 = v126;
        if (((v126 - *(&v125 + 1)) >> 3) <= 1)
        {
          v99 = 1;
        }

        else
        {
          v99 = (v126 - *(&v125 + 1)) >> 3;
        }

        v112 = *(a1 + 56);
        v108 = v99;
        v110 = *(a1 + 64);
        do
        {
          locale = v121[0].__locale_;
          v100 = v121[1].__locale_;
          v118 = *&v121[0].__locale_;
          if (v114 != v98)
          {
            v102 = v98;
            v103 = v108;
            do
            {
              v104 = *v102++;
              *(&v118 + v104) = 0;
              --v103;
            }

            while (v103);
          }

          *(v29 + 4 * v110 * v100 + 4 * v112 * locale) = sqrtf(fabsf(sub_262234A2C(a2 + 144, &v118) + *(a2 + 1328)));
          for (j = 1; j != -1; --j)
          {
            v106 = (v121[j].__locale_ + 1);
            v121[j].__locale_ = v106;
            if (v106 != *(&v115 + j * 8))
            {
              break;
            }

            v121[j].__locale_ = 0;
          }

          ++v97;
        }

        while (v97 != v28);
      }
    }

    else
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      sub_2621D96E4(&v124, v5, a2, &v115);
      v46 = 0;
      v47 = &v115;
      v48 = 1;
      do
      {
        v49 = *v47;
        v50 = *(v5 + v46);
        if ((v48 & 1) == 0)
        {
          break;
        }

        v48 = 0;
        v47 = &v115 + 1;
        v46 = 1;
      }

      while (v49 == v50);
      if (v49 != v50)
      {
        v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v52, " ", 1);
        v53 = MEMORY[0x277D82670];
        v54 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v54, " ", 1);
        sub_2621D552C(v54, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v54 + *(*v54 - 24)));
        v55 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v55->__vftable[2].~facet_0)(v55, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v56 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v56->__vftable[2].~facet_0)(v56, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      *&v121[0].__locale_ = 0u;
      v118 = 0u;
      v119 = 0u;
      v57 = *(a1 + 104);
      v58 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v57)
        {
          v59 = 0;
          v61 = *(&v125 + 1);
          v60 = v126;
          if (((v126 - *(&v125 + 1)) >> 3) <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = (v126 - *(&v125 + 1)) >> 3;
          }

          do
          {
            v118 = *&v121[0].__locale_;
            if (v60 != v61)
            {
              v63 = v61;
              v64 = v62;
              do
              {
                v65 = *v63++;
                *(&v118 + v65) = 0;
                --v64;
              }

              while (v64);
            }

            *(v58 + 4 * v59) = sqrtf(fabsf(sub_262234750(a2 + 144, &v118) + *(a2 + 1328)));
            for (k = 1; k != -1; --k)
            {
              v67 = (v121[k].__locale_ + 1);
              v121[k].__locale_ = v67;
              if (v67 != *(&v115 + k * 8))
              {
                break;
              }

              v121[k].__locale_ = 0;
            }

            ++v59;
          }

          while (v59 != v57);
        }
      }

      else if (v57)
      {
        v77 = 0;
        v78 = *(&v125 + 1);
        v113 = v126;
        if (((v126 - *(&v125 + 1)) >> 3) <= 1)
        {
          v79 = 1;
        }

        else
        {
          v79 = (v126 - *(&v125 + 1)) >> 3;
        }

        v111 = *(a1 + 56);
        v107 = v79;
        v109 = *(a1 + 64);
        do
        {
          v81 = v121[0].__locale_;
          v80 = v121[1].__locale_;
          v118 = *&v121[0].__locale_;
          if (v113 != v78)
          {
            v82 = v78;
            v83 = v107;
            do
            {
              v84 = *v82++;
              *(&v118 + v84) = 0;
              --v83;
            }

            while (v83);
          }

          *(v58 + 4 * v109 * v80 + 4 * v111 * v81) = sqrtf(fabsf(sub_262234750(a2 + 144, &v118) + *(a2 + 1328)));
          for (m = 1; m != -1; --m)
          {
            v86 = (v121[m].__locale_ + 1);
            v121[m].__locale_ = v86;
            if (v86 != *(&v115 + m * 8))
            {
              break;
            }

            v121[m].__locale_ = 0;
          }

          ++v77;
        }

        while (v77 != v57);
      }
    }

    sub_2621C57C8(&v124);
  }

  v87 = *MEMORY[0x277D85DE8];
}

void sub_26223471C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::locale::~locale(&a25);
  sub_2621C57C8(&a31);
  _Unwind_Resume(a1);
}

float sub_262234750(uint64_t a1, void *a2)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  sub_262234890(a1 + 48, a2, &v14, v18, &v13, v17);
  v15 = 0;
  v16 = 0;
  sub_26223494C(a1 + 336, v18, &v16, v20, &v15, v19);
  if (*(a1 + 712) == 1)
  {
    v3 = v16;
    v4 = *(a1 + 720);
  }

  else
  {
    v3 = *(a1 + 632) * v20[0];
    v4 = *(a1 + 720) + 4 * *(a1 + 640) * v20[1];
  }

  v5 = (v4 + 4 * v3);
  if (*(a1 + 968) == 1)
  {
    v6 = v15;
    v7 = *(a1 + 976);
  }

  else
  {
    v6 = *(a1 + 888) * v19[0];
    v7 = *(a1 + 976) + 4 * *(a1 + 896) * v19[1];
  }

  v8 = (v7 + 4 * v6);
  if (*(a1 + 1120))
  {
    v9 = v13;
  }

  else
  {
    v9 = *(a1 + 1040) * v17[0];
  }

  v10 = *(*(a1 + 1128) + 4 * v9);
  v11 = *MEMORY[0x277D85DE8];
  return (*v5 - (*v8 * *(a1 + 824))) + v10;
}

uint64_t sub_262234890(uint64_t result, void *a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  *a5 = 0;
  *a3 = 0;
  v6 = *(result + 24);
  v7 = *(result + 32);
  v8 = *result;
  v9 = *(result + 8);
  *a6 = a2[1];
  *a4 = *a2;
  a4[1] = a2[1];
  v10 = v7 - v6;
  if (v10)
  {
    v11 = v10 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v6++;
      a6[v12] = 0;
      --v11;
    }

    while (v11);
  }

  if (v9 != v8)
  {
    v13 = v9 - v8;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v14 = *v8++;
      a4[v14] = 0;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
  *a5 += *(result + 192) * *a6;
  v16 = *a3;
  v17 = 1;
  do
  {
    v18 = v17;
    v16 += *(result + 144 + 8 * v15) * a4[v15];
    *a3 = v16;
    v15 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  return result;
}

uint64_t sub_26223494C(uint64_t result, void *a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  *a5 = 0;
  *a3 = 0;
  v6 = *(result + 24);
  v7 = *(result + 32);
  v8 = *result;
  v9 = *(result + 8);
  *a6 = *a2;
  a6[1] = a2[1];
  *a4 = *a2;
  a4[1] = a2[1];
  v10 = v7 - v6;
  if (v10)
  {
    v11 = v10 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v6++;
      a6[v12] = 0;
      --v11;
    }

    while (v11);
  }

  if (v9 != v8)
  {
    v13 = v9 - v8;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v14 = *v8++;
      a4[v14] = 0;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
  v16 = *a5;
  v17 = 1;
  do
  {
    v18 = v17;
    v16 += *(result + 192 + 8 * v15) * a6[v15];
    *a5 = v16;
    v15 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  v19 = 0;
  v20 = *a3;
  v21 = 1;
  do
  {
    v22 = v21;
    v20 += *(result + 144 + 8 * v19) * a4[v19];
    *a3 = v20;
    v19 = 1;
    v21 = 0;
  }

  while ((v22 & 1) != 0);
  return result;
}

float sub_262234A2C(uint64_t a1, void *a2)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  sub_262234890(a1 + 48, a2, &v6, v10, &v5, v9);
  v7 = 0;
  v8 = 0;
  sub_26223494C(a1 + 336, v10, &v8, v12, &v7, v11);
  v3 = *MEMORY[0x277D85DE8];
  return (*(*(a1 + 720) + 4 * v8) - (*(*(a1 + 976) + 4 * v7) * *(a1 + 824))) + *(*(a1 + 1128) + 4 * v5);
}

uint64_t sub_262234AF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 120);
  if (*(a1 + 408) == v4)
  {
    if (sub_2621D9A90(a1 + 296, a2 + 8))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 664) == v4)
  {
    if (sub_2621D9A90(a1 + 552, a2 + 8))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v5 <= v6)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_262234B80(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_262234BE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262234BFC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80(a1 + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_262223F30(a1 + 288, (a2 + 18));
  v15 = *(a2 + 440);
  v16 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v16;
  *(a1 + 440) = v15;
  v17 = *(a2 + 488);
  v18 = *(a2 + 504);
  v19 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 134);
  *(a1 + 504) = v18;
  *(a1 + 520) = v19;
  *(a1 + 488) = v17;
  sub_262223F30(a1 + 544, (a2 + 34));
  return a1;
}

void sub_262234CF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262234D10(unint64_t **a1, unsigned int *a2)
{
  LODWORD(v3) = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = -v3;
  }

  if (v4 >= 2)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/expand_dims_helper.hpp", 121);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 50);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "init", 4);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
    sub_262229DB0("err", "the absolute value of axis should be less than dim");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v3) = *a2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v3 = v3;
  }

  else
  {
    v3 = v3 + 2;
  }

  v29.__locale_ = v3;
  sub_2621C9004(a1, &v29);
  sub_2622350C4(&v29, *a1, a1[1]);
  v15 = v30;
  v16 = a1[1] - *a1;
  sub_2621C74C4(&v29);
  if (v15 != v16 >> 3)
  {
    v17 = MEMORY[0x277D82670];
    v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/expand_dims_helper.hpp", 121);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = MEMORY[0x266727260](v20, 54);
    v22 = sub_2621D552C(v21, " ", 1);
    v23 = sub_2621D552C(v22, "init", 4);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5B9C("err", "repeated axis");
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v25 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
  }

  v26 = *a1;
  v27 = a1[1];
  return std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
}

uint64_t sub_2622350C4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2621CBF58(a1, *v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void sub_262235140(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v5 = v1;
  __p[161] = *MEMORY[0x277D85DE8];
  v4 = v2;
  sub_262223F30(&v9, v2);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  LODWORD(__p[0]) = 1;
  sub_262232738(v17, &v6, __p);
  v9 = &unk_2874EF0B8;
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  sub_262223F30(&v9, v5);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  LODWORD(__p[0]) = 1;
  sub_262232738(v16, &v6, __p);
  v9 = &unk_2874EF0B8;
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  v3 = *(v4 + 8);
  v3.n128_u64[1] = *(v5 + 8);
  sub_2622335D4(v15, v3);
  __p[0] = 1;
  sub_2622281E8(&v6, v5, __p);
  sub_2622282B4(v14, &v6);
}

void sub_26223600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0x1640]);
  STACK[0x928] = &unk_2874EF6A8;
  if (STACK[0x9A8])
  {
    sub_2621D1B78(STACK[0x9A8]);
  }

  sub_262233C60((v68 + 288));
  sub_2621C57C8(v68 + 48);
  sub_262233C60(&STACK[0x290]);
  if (a68)
  {
    sub_2621D1B78(a68);
  }

  if (STACK[0x278])
  {
    sub_2621D1B78(STACK[0x278]);
  }

  STACK[0x13E0] = &unk_2874EF0B8;
  if (STACK[0x1460])
  {
    sub_2621D1B78(STACK[0x1460]);
  }

  STACK[0x1478] = &unk_2874EF0B8;
  if (STACK[0x14F8])
  {
    sub_2621D1B78(STACK[0x14F8]);
  }

  STACK[0x1510] = &unk_2874EF6A8;
  if (STACK[0x1590])
  {
    sub_2621D1B78(STACK[0x1590]);
  }

  STACK[0x15A8] = &unk_2874EF6A8;
  if (STACK[0x1628])
  {
    sub_2621D1B78(STACK[0x1628]);
  }

  _Unwind_Resume(a1);
}

void sub_2622363A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = objc_msgSend_count(v3, v4, v5);
  v17 = 3;
  sub_2622364C0(v19, &v18, &v17);
  sub_262224008(a1, v19);
  v8 = 0;
  v9 = 0;
  v10 = (*(a1 + 144) + 8);
  while (v9 < objc_msgSend_count(v3, v6, v7))
  {
    *(v10 - 2) = *(objc_msgSend_points(v3, v11, v12) + v8);
    *(v10 - 1) = *(objc_msgSend_points(v3, v13, v14) + v8 + 4);
    *v10 = *(objc_msgSend_points(v3, v15, v16) + v8 + 8);
    v10 += 3;
    ++v9;
    v8 += 16;
  }
}

_OWORD *sub_2622364C0(_OWORD *a1, void *a2, int *a3)
{
  v4 = 0;
  v17[2] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  v5 = 1;
  *a1 = 0u;
  v6 = MEMORY[0x277D82670];
  v7 = MEMORY[0x277D82680];
  v8 = *a3;
  v17[0] = *a2;
  v17[1] = v8;
  v15 = 0;
  do
  {
    v9 = v17[v4];
    if (v9 >= 0xBEBC200)
    {
      sub_2621D552C(v6, "runtime_err in ", 15);
      sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v6, " ", 1);
      v10 = MEMORY[0x266727260](v6, 71);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "Shape", 5);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v16, v7);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v15, "]", " is ", &v17[v4], " ,it should <= 6");
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v12 = std::locale::use_facet(&v16, v7);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
    }

    v15 = v5;
    *(a1 + v4 * 8) = v9;
    ++v4;
    ++v5;
  }

  while (v4 != 2);
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

__n128 sub_262236750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8) - *(a2 + 8);
  *&v5 = v5;
  *&v5 = fabsf(*&v5) + 0.00000011921;
  v28 = vdivq_f32(vabdq_f32(*(a1 + 64), *(a2 + 64)), vdupq_lane_s32(*&v5, 0));
  objc_msgSend_intrinsics(*(a1 + 16), a2, a3);
  v30 = v6;
  v32 = v7;
  v29 = v8;
  v31 = v9;
  v34 = v10;
  v33 = v11;
  sub_262240264((a1 + 80), &v29, 100, 100, v8, v9, v11, v12, v13, v14);
  v27 = *(a2 + 64);
  objc_msgSend_intrinsics(*(a2 + 16), v15, v16);
  v30 = v17;
  v32 = v18;
  v29 = v19;
  v31 = v20;
  v34 = v21;
  v33 = v22;
  sub_262240264((a2 + 80), &v29, 100, 100, v19, v20, v22, v23, v24, v25);
  return v28;
}

uint64_t sub_262236864(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  *a1 = pixelBuffer;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  *(a1 + 8) = CVPixelBufferGetWidth(*a1);
  *(a1 + 12) = CVPixelBufferGetHeight(*a1);
  *(a1 + 16) = CVPixelBufferGetBaseAddress(*a1);
  *(a1 + 24) = CVPixelBufferGetBytesPerRow(*a1);
  return a1;
}

uint64_t sub_2622368FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_262236940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_262236A0C(result, a4);
  }

  return result;
}

void sub_2622369A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622369BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 144;
    sub_262232668(v3 - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_262236A0C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2621CBEB0();
}

id sub_262236B50(uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 6);
    if (v15 + 1 > 0x155555555555555)
    {
      sub_2621CBEB0();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 6);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0xAAAAAAAAAAAAAALL)
    {
      v18 = 0x155555555555555;
    }

    else
    {
      v18 = v17;
    }

    v34 = a1;
    if (v18)
    {
      sub_2621EAE84(v18);
    }

    v19 = 192 * v15;
    v31 = 0;
    v32 = v19;
    v33 = v19;
    v20 = *a2;
    v21 = a2[1];
    v22 = a2[3];
    *(v19 + 32) = a2[2];
    *(v19 + 48) = v22;
    v23 = a2[7];
    v25 = a2[4];
    v24 = a2[5];
    *(v19 + 96) = a2[6];
    *(v19 + 112) = v23;
    *(v19 + 64) = v25;
    *(v19 + 80) = v24;
    *v19 = v20;
    *(v19 + 16) = v21;
    *(v19 + 128) = *(a2 + 16);
    *(v19 + 136) = *(a2 + 34);
    *(v19 + 144) = *(a2 + 18);
    *(v19 + 160) = 0;
    *(v19 + 168) = 0;
    *(v19 + 152) = 0;
    sub_2621C8E70(v19 + 152, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    *(v19 + 176) = *(a2 + 22);
    *(v19 + 184) = *(a2 + 92);
    *&v33 = v33 + 192;
    v26 = a1[1];
    v27 = v32 + *a1 - v26;
    sub_2622117DC(a1, *a1, v26, v27);
    v28 = *a1;
    *a1 = v27;
    v29 = a1[2];
    v30 = v33;
    *(a1 + 1) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    result = sub_2622118D8(&v31);
    v14 = v30;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    *(v5 + 32) = a2[2];
    *(v5 + 48) = v8;
    *v5 = v6;
    *(v5 + 16) = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    *(v5 + 96) = a2[6];
    *(v5 + 112) = v11;
    *(v5 + 64) = v9;
    *(v5 + 80) = v10;
    *(v5 + 128) = *(a2 + 16);
    *(v5 + 136) = *(a2 + 34);
    v12 = *(a2 + 18);
    *(v5 + 152) = 0;
    *(v5 + 144) = v12;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    sub_2621C8E70(v5 + 152, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    result = *(a2 + 22);
    *(v5 + 176) = result;
    *(v5 + 184) = *(a2 + 92);
    v14 = v5 + 192;
    a1[1] = v5 + 192;
  }

  a1[1] = v14;
  return result;
}

void sub_262236D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_2622118D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262236D98(uint64_t result, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = a2;
  v5.i32[2] = 1.0;
  v6 = a3;
  v6.i32[2] = 1.0;
  v7 = a4;
  v7.i32[2] = 1.0;
  v8 = a5;
  v8.i32[2] = 1.0;
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v10)), v12, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  if (fabsf(v13.f32[1]) < 1.0e-10)
  {
    goto LABEL_33;
  }

  v14 = v13.f32[2] / v13.f32[1];
  v15 = (vmovn_s32(vcgtq_f32(a2, a3)).u8[0] & 1) != 0 ? a3.f32[0] : a2.f32[0];
  if (v14 < v15)
  {
    goto LABEL_33;
  }

  v16 = (vmovn_s32(vcgtq_f32(a4, a5)).u8[0] & 1) != 0 ? a5.f32[0] : a4.f32[0];
  if (v14 < v16)
  {
    goto LABEL_33;
  }

  v17 = (vmovn_s32(vcgtq_f32(a3, a2)).u8[0] & 1) != 0 ? a3.f32[0] : a2.f32[0];
  if (v14 > v17)
  {
    goto LABEL_33;
  }

  v18 = (vmovn_s32(vcgtq_f32(a5, a4)).u8[0] & 1) != 0 ? a5.f32[0] : a4.f32[0];
  if (v14 > v18)
  {
    goto LABEL_33;
  }

  v13.f32[0] = v13.f32[0] / v13.f32[1];
  a2.i32[0] = a2.i32[1];
  v19 = a3.f32[1] >= a2.f32[1] ? a2.f32[1] : a3.f32[1];
  if (v13.f32[0] < v19)
  {
    goto LABEL_33;
  }

  v20 = a5.f32[1] >= a4.f32[1] ? a4.f32[1] : a5.f32[1];
  if (v13.f32[0] < v20)
  {
    goto LABEL_33;
  }

  if (a2.f32[1] < a3.f32[1])
  {
    a2.f32[0] = a3.f32[1];
  }

  if (v13.f32[0] <= a2.f32[0] && (a4.f32[1] >= a5.f32[1] ? (v21 = a4.f32[1]) : (v21 = a5.f32[1]), v13.f32[0] <= v21))
  {
    __asm { FMOV            V0.4S, #1.0 }

    *&_Q0 = v13.f32[2] / v13.f32[1];
    DWORD1(_Q0) = v13.i32[0];
    *result = _Q0;
    v22 = 1;
  }

  else
  {
LABEL_33:
    v22 = 0;
    *result = 0;
  }

  *(result + 16) = v22;
  return result;
}

void sub_262236F30(_OWORD *a1, uint64_t a2, uint64_t a3, float32x4_t a4)
{
  v7 = *(a2 + 16);
  v8 = vsubq_f32(*a2, a4);
  v9 = vsubq_f32(v7, *a2);
  v10 = vcvtq_f64_f32(*v9.f32);
  v11 = vmulq_f64(v10, v10);
  v8.f32[0] = -(COERCE_FLOAT(vmulq_f32(v8, v9).i32[1]) + (v8.f32[0] * v9.f32[0])) / vaddvq_f64(v11);
  *&v11.f64[0] = vmla_n_f32(*a2, *v9.f32, v8.f32[0]);
  v42 = v11.f64[0];
  LODWORD(v11.f64[1]) = 0;
  v48 = v11;
  v12 = vsubq_f32(v7, a4);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = vsubq_f32(v13, v7);
  v16 = vcvtq_f64_f32(*v15.f32);
  v12.f32[0] = -(COERCE_FLOAT(vmulq_f32(v12, v15).i32[1]) + (v12.f32[0] * v15.f32[0])) / vaddvq_f64(vmulq_f64(v16, v16));
  *v7.f32 = vmla_n_f32(*v7.f32, *v15.f32, v12.f32[0]);
  v43 = v7.i64[0];
  v44 = a4.i64[0];
  v7.i32[2] = 0;
  v17 = vsubq_f32(*a2, v14);
  v18 = vsubq_f32(v13, a4);
  v19 = vsubq_f32(v14, v13);
  v20 = vcvtq_f64_f32(*v19.f32);
  v18.f32[0] = -(COERCE_FLOAT(vmulq_f32(v18, v19).i32[1]) + (v18.f32[0] * v19.f32[0])) / vaddvq_f64(vmulq_f64(v20, v20));
  *v13.f32 = vmla_n_f32(*v13.f32, *v19.f32, v18.f32[0]);
  v41 = v13.i64[0];
  v13.i32[2] = 0;
  v46 = v13;
  v47 = v7;
  v21 = vsubq_f32(v14, a4);
  v22 = vcvtq_f64_f32(*v17.f32);
  v21.f32[0] = -(COERCE_FLOAT(vmulq_f32(v21, v17).i32[1]) + (v21.f32[0] * v17.f32[0])) / vaddvq_f64(vmulq_f64(v22, v22));
  *v14.f32 = vmla_n_f32(*v14.f32, *v17.f32, v21.f32[0]);
  v40 = v14.i64[0];
  v14.i32[2] = 0;
  v45 = v14;
  sub_26220F644(v52, a2);
  v23 = v52[0];
  v24.i64[0] = *v52[0];
  v24.i32[2] = *(v52[0] + 8);
  v50 = *a3;
  v51 = v24;
  v49 = *(a3 + 16);
  v25 = sub_262237250(v24, v48, *a3, v49);
  v26 = sub_262237250(v51, v47, v50, v49);
  v27 = sub_262237250(v51, v46, v50, v49);
  v28 = sub_262237250(v51, v45, v50, v49);
  v29 = *(a2 + 80);
  a1[4] = *(a2 + 64);
  a1[5] = v29;
  v30 = *(a2 + 112);
  a1[6] = *(a2 + 96);
  a1[7] = v30;
  v31 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v31;
  v32 = *(a2 + 48);
  a1[2] = *(a2 + 32);
  a1[3] = v32;
  if (!v25 && !v26)
  {
    v34 = *&v42;
    v33 = v43;
    *a1 = v42;
    *(a1 + 4) = v43;
    v35 = 7;
    v36 = 6;
    v37 = 4;
    v38 = v44;
LABEL_4:
    v39 = v38;
    *(a1 + 6) = v38;
LABEL_11:
    *&a1[v37] = v34;
    *&a1[v36] = v33;
    *&a1[v35] = v39;
    goto LABEL_12;
  }

  if (!v26 && !v27)
  {
    v33 = v43;
    *a1 = v44;
    *(a1 + 2) = v43;
    v35 = 7;
    v36 = 5;
    v37 = 4;
    v34 = v44;
    v39 = v41;
    *(a1 + 6) = v41;
    goto LABEL_11;
  }

  v39 = v41;
  if (!v27 && !v28)
  {
    v34 = v40;
    *a1 = v40;
    v35 = 6;
    *(a1 + 2) = v44;
    v36 = 5;
    v37 = 4;
    v33 = v44;
    *(a1 + 4) = v41;
    goto LABEL_11;
  }

  if (!v25 && !v28)
  {
    v34 = *&v42;
    *(a1 + 2) = v42;
    v35 = 7;
    *(a1 + 4) = v44;
    v36 = 6;
    v37 = 5;
    v33 = v44;
    v38 = v40;
    goto LABEL_4;
  }

LABEL_12:
  v52[1] = v23;
  operator delete(v23);
}

uint64_t sub_2622371D0(uint64_t a1)
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

BOOL sub_262237250(float32x4_t a1, float32x4_t a2, float32x4_t a3, int32x4_t a4)
{
  v4 = a1;
  v4.i32[2] = 1.0;
  v5 = a2;
  v5.i32[2] = 1.0;
  a3.i32[2] = 1.0;
  a4.i32[2] = 1.0;
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v4)), v5, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(a3)), a4, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v7)), v9, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  if (fabsf(v10.f32[1]) < 1.0e-10)
  {
    return 0;
  }

  v11 = v10.f32[2] / v10.f32[1];
  if (vmovn_s32(vcgtq_f32(a1, a2)).u8[0])
  {
    v12 = a2.f32[0];
  }

  else
  {
    v12 = a1.f32[0];
  }

  if (v11 >= v12)
  {
    v13 = (vmovn_s32(vcgtq_f32(a2, a1)).u8[0] & 1) != 0 ? a2.f32[0] : a1.f32[0];
    if (v11 <= v13)
    {
      return 1;
    }
  }

  v14 = v10.f32[0] / v10.f32[1];
  a1.i32[0] = a1.i32[1];
  if (a2.f32[1] >= a1.f32[1])
  {
    v15 = a1.f32[1];
  }

  else
  {
    v15 = a2.f32[1];
  }

  if (v14 < v15)
  {
    return 0;
  }

  if (a1.f32[1] < a2.f32[1])
  {
    a1.f32[0] = a2.f32[1];
  }

  return v14 <= a1.f32[0];
}

void sub_26223736C()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_2874FAC60, @"Cabinet", &unk_2874FAC90, @"Refrigerator", &unk_2874FAC90, @"Shelf", &unk_2874FAC90, @"Stove", &unk_2874FACA0, @"Bed", &unk_2874FAC60, @"Sink", &unk_2874FAC90, @"Washer", &unk_2874FACB0, @"Toilet", &unk_2874FACC0, @"Bathtub", &unk_2874FAC90, @"Oven", &unk_2874FAC90, @"Dishwasher", &unk_2874FACD0, @"Fireplace", &unk_2874FACE0, @"Chair", &unk_2874FAC60, @"Table", &unk_2874FAC60, @"Screen", &unk_2874FAC60, @"Sofa", &unk_2874FAC60, @"Stairs", &unk_2874FAC60, @"Window", &unk_2874FAC60, @"Door", &unk_2874FAC60, @"BuildInCabinet", &unk_2874FAC60, @"Storage", 0);
  v3 = qword_27FF0C108;
  qword_27FF0C108 = v2;
}

uint64_t *sub_2622374F0(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
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
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 4) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *sub_262237850(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_262237938()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_2874FAC70, @"Cabinet", &unk_2874FAC70, @"Refrigerator", &unk_2874FAC70, @"Shelf", &unk_2874FAC70, @"Stove", &unk_2874FAC70, @"Bed", &unk_2874FAC70, @"Sink", &unk_2874FAC70, @"Washer", &unk_2874FAC70, @"Toilet", &unk_2874FAC80, @"Bathtub", &unk_2874FAC70, @"Oven", &unk_2874FAC70, @"Dishwasher", &unk_2874FAC70, @"Fireplace", &unk_2874FAC60, @"Chair", &unk_2874FAC70, @"Table", &unk_2874FAC70, @"Screen", &unk_2874FAC70, @"Sofa", &unk_2874FAC60, @"Stairs", &unk_2874FAC60, @"Window", &unk_2874FAC60, @"Door", &unk_2874FAC60, @"BuildInCabinet", &unk_2874FAC70, @"Storage", 0);
  v3 = qword_27FF0C0F8;
  qword_27FF0C0F8 = v2;
}

void sub_262237A9C()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = objc_msgSend_initWithObjectsAndKeys_(v0, v1, &unk_2874FAC50, @"Cabinet", &unk_2874FAC50, @"Refrigerator", &unk_2874FAC50, @"Shelf", &unk_2874FAC50, @"Stove", &unk_2874FAC50, @"Bed", &unk_2874FAC50, @"Sink", &unk_2874FAC50, @"Washer", &unk_2874FAC50, @"Toilet", &unk_2874FAC50, @"Bathtub", &unk_2874FAC50, @"Oven", &unk_2874FAC50, @"Dishwasher", &unk_2874FAC50, @"Fireplace", &unk_2874FAC60, @"Chair", &unk_2874FAC50, @"Table", &unk_2874FAC50, @"Screen", &unk_2874FAC50, @"Sofa", &unk_2874FAC60, @"Stairs", &unk_2874FAC60, @"Window", &unk_2874FAC60, @"Door", &unk_2874FAC60, @"BuildInCabinet", &unk_2874FAC50, @"Storage", 0);
  v3 = qword_27FF0C0E8;
  qword_27FF0C0E8 = v2;
}

uint64_t sub_262237C28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2874EE3D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_262237CBC(float32x4_t *a1, void **a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v71 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isEqualToString_(*a2, a2, @"Fireplace"))
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_11:
    result = 0xFFFFFFFFLL;
    goto LABEL_44;
  }

  v10 = a1[11];
  v11 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v10, v10)));
  v12 = vrsqrte_f32(v11);
  v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
  *v10.f32 = vmul_n_f32(*v10.f32, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
  v14 = vsubq_f32(*(a6 + 16), *a6);
  v15 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v14, v14)));
  v16 = vrsqrte_f32(v15);
  v17 = vmul_f32(v16, vrsqrts_f32(v15, vmul_f32(v16, v16)));
  v18 = vmul_n_f32(*v14.f32, vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).f32[0]);
  if (vaddv_f32(vmul_f32(*v10.f32, v18)) < 0.99)
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v19 = qword_27FF0C058;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2621C3000, v19, OS_LOG_TYPE_INFO, "Fireplace and its nearest wall should be aligned, skipping the optimization.", buf, 2u);
    }

    goto LABEL_11;
  }

  sub_26220F644(__p, a6);
  v21 = __p[0];
  v22 = *(__p[0] + 3);
  v23 = *(a6 + 48);
  v24 = vsubq_f32(*a6, v23);
  v25 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v24, v24)));
  v26 = vrsqrte_f32(v25);
  v27 = vmul_f32(v26, vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)));
  v28 = vmul_n_f32(*v24.f32, vmul_f32(v27, vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
  v29 = a1[4];
  v30 = a1[5];
  v31 = vaddv_f32(vmul_f32(vsub_f32(*v29.f32, *v23.f32), v28)) / v22;
  v32 = 0.0;
  if (v31 >= 0.0)
  {
    v32 = v31;
  }

  v33 = vaddv_f32(vmul_f32(v28, vsub_f32(*v30.f32, *v23.f32))) / v22;
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v32 < v33 && (v32 > 0.0 || v33 < 1.0))
  {
    *__p[0] = vadd_f32(vmul_n_f32(vmul_n_f32(v28, v22), ((v32 + v33) * 0.5) + -0.5), *__p[0]);
    v21[1].f32[1] = v22 * (v33 - v32);
    v29 = a1[4];
    v30 = a1[5];
  }

  v30.i32[2] = 1.0;
  v29.i32[2] = 1.0;
  v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v30)), v29, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
  v36 = vmulq_f32(v35, v35);
  v36.f32[0] = sqrtf(v36.f32[2] + v36.f32[0]);
  v37 = *(a6 + 16);
  v37.i32[2] = 1.0;
  v55 = vdivq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vdupq_lane_s32(*v36.f32, 0));
  v38 = vmulq_f32(v37, v55);
  v39 = v38.f32[2] + vaddv_f32(*v38.f32);
  if (v39 < 0.01)
  {
    v40 = vabds_f32(0.01, v39);
    if (v40 <= 0.2)
    {
      v21[2].f32[0] = v40 + v21[2].f32[0];
      *v21 = vadd_f32(vmul_f32(vmul_n_f32(v18, 0.01 - v39), 0x3F0000003F000000), *v21);
    }

    else
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v41 = qword_27FF0C058;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v41, OS_LOG_TYPE_DEBUG, "Shifting value is too large, skipping.", buf, 2u);
      }
    }
  }

  v42 = *a6;
  v42.i32[2] = 1.0;
  v43 = vmulq_f32(v55, v42);
  v44 = v43.f32[2] + vaddv_f32(*v43.f32);
  v45 = -0.16;
  if (v44 > 0.0)
  {
    v45 = 0.0;
  }

  if (v44 > v45)
  {
    v46 = vabds_f32(v45, v44);
    if (v46 <= 0.2)
    {
      v48 = __p[0];
      *(__p[0] + 4) = v46 + *(__p[0] + 4);
      *v48 = vadd_f32(vmul_f32(vmul_n_f32(v18, v45 - v44), 0x3F0000003F000000), *v48);
    }

    else
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v47 = qword_27FF0C058;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2621C3000, v47, OS_LOG_TYPE_DEBUG, "Shifting value is too large, skipping.", buf, 2u);
      }
    }
  }

  sub_26220FF88(buf, __p);
  v49 = buf[0];
  v68 = v60;
  v69 = v61;
  v70[0] = v62[0];
  *(v70 + 15) = *(v62 + 15);
  v64 = *&buf[1];
  v65 = v57;
  v66 = v58;
  v67 = v59;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  result = 0;
  v50 = v69;
  *(a6 + 65) = v68;
  v51 = *(v70 + 15);
  *(a6 + 81) = v50;
  *(a6 + 97) = v70[0];
  *(a6 + 112) = v51;
  v52 = v65;
  *(a6 + 1) = v64;
  *(a6 + 17) = v52;
  v53 = v67;
  *(a6 + 33) = v66;
  *a6 = v49;
  *(a6 + 49) = v53;
LABEL_44:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622381C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622381E8(float32x4_t *a1, const char *a2, int a3, int a4, float a5, uint64_t a6, float32x4_t *a7)
{
  v67[2] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CBEB98];
  v67[0] = @"Table";
  v67[1] = @"Bed";
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v67, 2);
  v16 = objc_msgSend_setWithArray_(v13, v15, v14);

  v17 = *a7;
  v53 = a7[1];
  v50 = *a7;
  v51 = a7[2];
  isEqualToString = objc_msgSend_isEqualToString_(*a2, v18, @"Fireplace");
  v20.i32[1] = v51.i32[1];
  v21 = vsubq_f32(v50, v53);
  v22 = sqrtf(vaddv_f32(*&vmulq_f32(v21, v21)));
  v23 = vsubq_f32(v53, v51);
  v24 = sqrtf(vaddv_f32(*&vmulq_f32(v23, v23)));
  if (v22 >= v24)
  {
    *&v25 = v22;
  }

  else
  {
    *&v25 = v24;
  }

  if (isEqualToString)
  {
    v26 = 0.5;
  }

  else
  {
    v26 = 0.1;
  }

  v52 = a1[5];
  v54 = a1[4];
  v20.i32[0] = v25;
  sub_262238540(v64, a7, 1u, 2u, v54, v52, v20, v26);
  v27.i32[0] = v25;
  sub_262238540(v61, a7, 2u, 3u, v54, v52, v27, v26);
  v28.i32[0] = v25;
  sub_262238540(v58, a7, 3u, 0, v54, v52, v28, v26);
  v29.i32[0] = v25;
  sub_262238540(v55, a7, 0, 1u, v54, v52, v29, v26);
  v31 = a1[6].f32[0] * -0.5;
  if (a4)
  {
    if (a3)
    {
      v33.i64[0] = v52.i64[0];
      v32.i64[0] = v54.i64[0];
      if (v65 == 1 && (v59 & 1) != 0)
      {
        v34 = 2;
        v35 = 1;
        v36 = v58;
        v37 = v64;
LABEL_20:
        v42 = *v36;
        v43 = *v37;
        v44 = a5;
        v39 = 0;
LABEL_27:
        v45 = sub_262238704(v35, v34, v39, a7, v43, v42, *v32.f32, *v33.f32, v44, v31);
        goto LABEL_30;
      }
    }

    else
    {
      v33.i64[0] = v52.i64[0];
      v32.i64[0] = v54.i64[0];
      if (v62 == 1 && (v56 & 1) != 0)
      {
        v34 = 3;
        v35 = 2;
        v36 = v55;
        v37 = v61;
        goto LABEL_20;
      }
    }

    sub_2622386B8();
  }

  if (v65)
  {
    v38 = v66 | v60;
    if ((v59 & (v66 | v60)) == 1 && (v62 & (v63 | v57) & 1) == 0)
    {
      if (v59)
      {
        v39 = 0;
        v34 = 2;
        v35 = 1;
        v40 = v58;
        v41 = v64;
        v33.i64[0] = v52.i64[0];
        v32.i64[0] = v54.i64[0];
LABEL_26:
        v42 = *v40;
        v43 = *v41;
        v44 = a5;
        goto LABEL_27;
      }

      goto LABEL_32;
    }

    if ((v62 & 1) == 0)
    {
LABEL_29:
      v45 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v38 = 0;
    if ((v62 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v45 = 0;
  v46 = v56;
  if ((v56 & (v63 | v57)) == 1 && (v38 & 1) == 0)
  {
    v47 = objc_msgSend_containsObject_(v16, v30, *a2);
    if (v46)
    {
      v39 = v47 ^ 1;
      v32 = a1[4];
      v33 = a1[5];
      v34 = 3;
      v35 = 2;
      v40 = v55;
      v41 = v61;
      goto LABEL_26;
    }

LABEL_32:
    sub_2622386B8();
  }

LABEL_30:

  v48 = *MEMORY[0x277D85DE8];
  return v45;
}