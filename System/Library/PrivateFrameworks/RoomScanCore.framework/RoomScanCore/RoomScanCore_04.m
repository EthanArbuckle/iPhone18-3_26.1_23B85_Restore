void sub_2622049D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = *(a2 + 8);
  v21[0] = 0;
  v21[1] = v6;
  v22 = xmmword_2623A7680;
  v23 = *(a2 + 16);
  v24 = 1;
  sub_2622061F8(a2 + 8, v21, &v17, a3, a4);
  sub_262201C88(v15, a2, v21);
  v7 = v17;
  if (v18 - v17 != 8)
  {
    v8 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v9 = sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v9, " ", 1);
    v10 = MEMORY[0x277D82670];
    v11 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v11, " ", 1);
    sub_2621D552C(v11, "slice", 5);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v20, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v20.__locale_) = 0;
    sub_262201E08("err", &v20);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v13 = std::locale::use_facet(&v20, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_262201E68(a1, v15, *v7);
  v15[0] = &unk_2874EE7C8;
  if (v16)
  {
    sub_2621D1B78(v16);
  }

  operator delete(v7);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_262204C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262204CCC(uint64_t a1, uint64_t a2)
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
    v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a2 + 136) == 1)
  {

    return sub_262205644(a1, a2);
  }

  else
  {
    v14 = sub_26220571C(a1, (a2 + 8));
    return sub_262205814(v14, a2);
  }
}

void sub_262204ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  *v10 = &unk_2874EE910;
  v12 = v10[16];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_262204F20(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_2622055B0((a2 + 8), v19, &v15, a3);
  sub_2621D7EF4(v13, a2, v19);
  v5 = v15;
  if (v16 - v15 != 8)
  {
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v7, " ", 1);
    v8 = MEMORY[0x277D82670];
    v9 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v9, " ", 1);
    sub_2621D552C(v9, "slice", 5);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v18.__locale_) = 0;
    sub_262201E08("err", &v18);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_2621D5FF4(a1, v13, *v5);
  v13[0] = &unk_2874EEB10;
  if (v14)
  {
    sub_2621D1B78(v14);
  }

  operator delete(v5);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_262205188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void (****sub_2622051F4(void (****result)(void), uint64_t a2))(void)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v13[4] = v2;
    if (v10)
    {
      sub_2622053EC(v10);
    }

    v11 = 16 * v7;
    v13[0] = 0;
    v13[1] = v11;
    v13[3] = 0;
    *v11 = &unk_2874EF020;
    v12 = *(a2 + 8);
    *(v11 + 11) = *(a2 + 11);
    *(v11 + 8) = v12;
    v13[2] = 16 * v7 + 16;
    sub_262205434(v2, v13);
    v6 = v2[1];
    result = sub_262205544(v13);
  }

  else
  {
    *v3 = &unk_2874EF020;
    v5 = *(a2 + 8);
    *(v3 + 11) = *(a2 + 11);
    *(v3 + 8) = v5;
    v6 = (v3 + 16);
  }

  v2[1] = v6;
  return result;
}

void sub_262205318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_262205544(va);
  _Unwind_Resume(a1);
}

void sub_26220532C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
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

void sub_2622053EC(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_2621C6A34();
}

void (***sub_262205434(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 16 * ((v6 - result) >> 4);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_2874EF020;
      v12 = *(v10 + 2);
      *(v11 + 11) = *(v10 + 11);
      *(v11 + 2) = v12;
      v10 += 2;
      v11 += 2;
      v9 += 16;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 2;
      (*v15)();
      v13 += 2;
    }

    while (v14 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t sub_262205544(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2622055B0(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *a2 = 0;
  *(a2 + 8) = *a1;
  *(a2 + 16) = xmmword_2623A7680;
  *(a2 + 32) = a1[1];
  *(a2 + 40) = 1;
  v10 = 1;
  sub_2621C9004(a3, &v10);
  v7 = *a4;
  v8 = *a4 + 1;

  return sub_2621D7514(a1, a2, 1u, v7, v8, 1);
}

uint64_t sub_262205644(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE910;
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

uint64_t sub_26220571C(uint64_t result, _OWORD *a2)
{
  *result = &unk_2874EE910;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(result + 8) = *a2;
  *(result + 40) = v2;
  *(result + 24) = v3;
  *(result + 56) = 1;
  v4 = *(result + 8);
  *(result + 104) = v4;
  *(result + 112) = 0;
  if (v4)
  {
    sub_2621D7174();
  }

  *(result + 137) = 1;
  return result;
}

void sub_2622057FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262205814(uint64_t result, uint64_t a2)
{
  v3 = result;
  v111 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  v6 = (a2 + 8);
  if (v4 == *(a2 + 8))
  {
    v7 = *(result + 104);
    v8 = *(result + 144);
    v9 = *(result + 136);
    if (*(a2 + 136))
    {
      if (*(result + 136))
      {
        if (v7)
        {
          v10 = *(a2 + 144);
          do
          {
            v11 = *v10++;
            *v8++ = v11;
            --v7;
          }

          while (v7);
        }
      }

      else if (v7)
      {
        v56 = 0;
        v57 = *(result + 56);
        v58 = *(a2 + 144);
        do
        {
          v59 = *v58++;
          v8[v57 * v56] = v59;
          if (v56 + 1 == v4)
          {
            v56 = 0;
          }

          else
          {
            ++v56;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (*(result + 136))
    {
      if (v7)
      {
        v32 = 0;
        v33 = *(a2 + 144);
        do
        {
          *v8++ = *(v33 + 4 * *(a2 + 56) * v32);
          if (v32 + 1 == v4)
          {
            v32 = 0;
          }

          else
          {
            ++v32;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (v7)
    {
      v60 = 0;
      v61 = *(result + 56);
      v62 = *(a2 + 144);
      do
      {
        v8[v61 * v60] = *(v62 + 4 * *(a2 + 56) * v60);
        if (v60 + 1 == v4)
        {
          v60 = 0;
        }

        else
        {
          ++v60;
        }

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v106 = 0uLL;
      v107 = 0uLL;
      v104 = 0uLL;
      v105 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      sub_262205FA8(&v93, v5, v6, &v90);
      v12 = v90;
      if (v90 != *v5)
      {
        v13 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v14 = sub_2621D552C(v13, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v14, " ", 1);
        v15 = MEMORY[0x277D82670];
        v16 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(v108, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(v108);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v18 = std::locale::use_facet(v108, MEMORY[0x277D82680]);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(v108);
        std::ostream::put();
        std::ostream::flush();
      }

      v109 = 0u;
      v110 = 0u;
      *&v108[0].__locale_ = 0u;
      v19 = *(v3 + 104);
      v20 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v19)
        {
          v21 = 0;
          v22 = 0;
          v24 = *(&v94 + 1);
          v23 = v95;
          v25 = (v95 - *(&v94 + 1)) >> 3;
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = v105;
          v27 = *(a2 + 144);
          do
          {
            v108[0].__locale_ = v21;
            locale = v21;
            if (v23 != v24)
            {
              v29 = v24;
              v30 = v25;
              do
              {
                v31 = *v29++;
                v108[v31].__locale_ = 0;
                --v30;
              }

              while (v30);
              locale = v108[0].__locale_;
            }

            *(v20 + 4 * v22) = *(v27 + 4 * locale * v26);
            if ((v21 + 1) == v12)
            {
              v21 = 0;
            }

            else
            {
              v21 = (v21 + 1);
            }

            ++v22;
          }

          while (v22 != v19);
        }
      }

      else if (v19)
      {
        v63 = 0;
        v64 = 0;
        v66 = *(&v94 + 1);
        v65 = v95;
        v67 = (v95 - *(&v94 + 1)) >> 3;
        if (v67 <= 1)
        {
          v67 = 1;
        }

        v68 = v105;
        v69 = *(v3 + 56);
        v70 = *(a2 + 144);
        do
        {
          v108[0].__locale_ = v63;
          v71 = v63;
          if (v65 != v66)
          {
            v72 = v66;
            v73 = v67;
            do
            {
              v74 = *v72++;
              v108[v74].__locale_ = 0;
              --v73;
            }

            while (v73);
            v71 = v108[0].__locale_;
          }

          *(v20 + 4 * v63 * v69) = *(v70 + 4 * v71 * v68);
          if ((v63 + 1) == v12)
          {
            v63 = 0;
          }

          else
          {
            v63 = (v63 + 1);
          }

          ++v64;
        }

        while (v64 != v19);
      }
    }

    else
    {
      v106 = 0uLL;
      v107 = 0uLL;
      v104 = 0uLL;
      v105 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      sub_262205FA8(&v93, v5, v6, &v90);
      v34 = v90;
      if (v90 != *v5)
      {
        v35 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v36 = sub_2621D552C(v35, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v36, " ", 1);
        v37 = MEMORY[0x277D82670];
        v38 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v38, " ", 1);
        sub_2621D552C(v38, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v38 + *(*v38 - 24)));
        v39 = std::locale::use_facet(v108, MEMORY[0x277D82680]);
        (v39->__vftable[2].~facet_0)(v39, 10);
        std::locale::~locale(v108);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v37 + *(*v37 - 24)));
        v40 = std::locale::use_facet(v108, MEMORY[0x277D82680]);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(v108);
        std::ostream::put();
        std::ostream::flush();
      }

      v109 = 0u;
      v110 = 0u;
      *&v108[0].__locale_ = 0u;
      v41 = *(v3 + 104);
      v42 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v41)
        {
          v43 = 0;
          v44 = 0;
          v46 = *(&v94 + 1);
          v45 = v95;
          v47 = (v95 - *(&v94 + 1)) >> 3;
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = v105;
          v49 = *(a2 + 136);
          v50 = *(a2 + 144);
          do
          {
            v108[0].__locale_ = v43;
            v51 = v43;
            if (v45 != v46)
            {
              v52 = v46;
              v53 = v47;
              do
              {
                v54 = *v52++;
                v108[v54].__locale_ = 0;
                --v53;
              }

              while (v53);
              v51 = v108[0].__locale_;
            }

            v55 = *(a2 + 56);
            if (v49)
            {
              v55 = v48;
            }

            *(v42 + 4 * v44) = *(v50 + 4 * v55 * v51);
            if ((v43 + 1) == v34)
            {
              v43 = 0;
            }

            else
            {
              v43 = (v43 + 1);
            }

            ++v44;
          }

          while (v44 != v41);
        }
      }

      else if (v41)
      {
        v75 = 0;
        v76 = 0;
        v78 = *(&v94 + 1);
        v77 = v95;
        v79 = (v95 - *(&v94 + 1)) >> 3;
        if (v79 <= 1)
        {
          v79 = 1;
        }

        v80 = v105;
        v81 = *(v3 + 56);
        v82 = *(a2 + 136);
        v83 = *(a2 + 144);
        do
        {
          v108[0].__locale_ = v75;
          v84 = v75;
          if (v77 != v78)
          {
            v85 = v78;
            v86 = v79;
            do
            {
              v87 = *v85++;
              v108[v87].__locale_ = 0;
              --v86;
            }

            while (v86);
            v84 = v108[0].__locale_;
          }

          v88 = *(a2 + 56);
          if (v82)
          {
            v88 = v80;
          }

          *(v42 + 4 * v75 * v81) = *(v83 + 4 * v88 * v84);
          if ((v75 + 1) == v34)
          {
            v75 = 0;
          }

          else
          {
            v75 = (v75 + 1);
          }

          ++v76;
        }

        while (v76 != v41);
      }
    }

    result = sub_2621C57C8(&v93);
  }

  v89 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262205F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::locale::~locale((v7 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_262205FA8(uint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  v6 = *a2;
  v7 = a2[2];
  *(a1 + 64) = a2[1];
  *(a1 + 80) = v7;
  *(a1 + 48) = v6;
  v8 = *a3;
  v9 = a3[2];
  *(a1 + 112) = a3[1];
  *(a1 + 128) = v9;
  *(a1 + 96) = v8;
  v10 = *a2;
  if (*a2 == *a3)
  {
    *a4 = v10;
  }

  else
  {
    if (v10 == 1)
    {
      v23.__locale_ = 0;
      sub_2621C9004(a1, &v23);
      v12 = *a3;
    }

    else
    {
      if (*a3 != 1)
      {
        v14 = MEMORY[0x277D82670];
        v15 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v16 = sub_2621D552C(v15, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/broadcast_helper.hpp", 119);
        v17 = sub_2621D552C(v16, " ", 1);
        v18 = MEMORY[0x266727260](v17, 135);
        v19 = sub_2621D552C(v18, " ", 1);
        v20 = sub_2621D552C(v19, "init_internal", 13);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(&v23);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D995C("err", "cannot broadcast");
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v22 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v23);
        std::ostream::put();
        std::ostream::flush();
        goto LABEL_9;
      }

      v23.__locale_ = 0;
      sub_2621C9004(a1 + 24, &v23);
      v12 = *a2;
    }

    *a4 = v12;
  }

LABEL_9:
  *(a1 + 144) = 1;
  *(a1 + 192) = 1;
}

uint64_t sub_2622061F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  sub_2621D7514(a1, a2, 0, *a4, *(a4 + 4), *(a4 + 8));
  v12 = 1;
  sub_2621C9004(a3, &v12);
  v9 = *a5;
  v10 = *a5 + 1;

  return sub_2621D7514(a1, a2, 1u, v9, v10, 1);
}

uint64_t sub_262206284(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *a2 = 0;
  *(a2 + 8) = *a1;
  *(a2 + 16) = xmmword_2623A7680;
  *(a2 + 32) = a1[1];
  *(a2 + 40) = 1;
  v10 = 0;
  sub_2621C9004(a3, &v10);
  v7 = *a4;
  v8 = *a4 + 1;

  return sub_2621D7514(a1, a2, 0, v7, v8, 1);
}

uint64_t sub_262206318(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEDA0;
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

void sub_2622063F0(_OWORD *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[2];
  a1[4] = a2[1];
  a1[5] = v9;
  a1[3] = v8;
  v10 = *a3;
  v11 = a3[2];
  a1[7] = a3[1];
  a1[8] = v11;
  a1[6] = v10;
  v12 = 2;
  v13 = MEMORY[0x277D82670];
  v14 = MEMORY[0x277D82680];
  do
  {
    v15 = *(a2 + v12);
    v16 = *(a3 + v12);
    if (v15 == v16)
    {
      *(a4 + 8 * v12) = v15;
      goto LABEL_10;
    }

    if (v15 == 1)
    {
      v34.__locale_ = v12;
      sub_2621C9004(a1, &v34);
      v17 = *(a3 + v12);
LABEL_8:
      *(a4 + 8 * v12) = v17;
      goto LABEL_10;
    }

    if (v16 == 1)
    {
      v34.__locale_ = v12;
      sub_2621C9004(a1 + 24, &v34);
      v17 = *(a2 + v12);
      goto LABEL_8;
    }

    v18 = sub_2621D552C(v13, "runtime_err in ", 15);
    v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/broadcast_helper.hpp", 119);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = MEMORY[0x266727260](v20, 135);
    v22 = sub_2621D552C(v21, " ", 1);
    v23 = sub_2621D552C(v22, "init_internal", 13);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v34, v14);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D995C("err", "cannot broadcast");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v25 = std::locale::use_facet(&v34, v14);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
LABEL_10:
    --v12;
  }

  while (v12 != -1);
  v26 = 0;
  v27 = a1 + 9;
  do
  {
    *(v27 + v26) = 1;
    if (v26 <= 1)
    {
      v28 = v26;
      v29 = 1;
      do
      {
        v29 *= *(a1 + v28 + 7);
        *(v27 + v26) = v29;
        ++v28;
      }

      while (v28 != 2);
    }

    ++v26;
  }

  while (v26 != 3);
  v30 = 0;
  v31 = a1 + 12;
  do
  {
    *(v31 + v30) = 1;
    if (v30 <= 1)
    {
      v32 = v30;
      v33 = 1;
      do
      {
        v33 *= *(a1 + v32 + 13);
        *(v31 + v30) = v33;
        ++v32;
      }

      while (v32 != 2);
    }

    ++v30;
  }

  while (v30 != 3);
}

uint64_t sub_2622066E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0;
  *a3 = 0;
  v5 = *(result + 24);
  v6 = *(result + 32);
  do
  {
    *(a4 + v4) = *(a2 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  if (v6 != v5)
  {
    v7 = v6 - v5;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v8 = *v5++;
      *(a4 + 8 * v8) = 0;
      --v7;
    }

    while (v7);
  }

  v9 = 0;
  v10 = *a3;
  do
  {
    v10 += *(result + 192 + v9) * *(a4 + v9);
    *a3 = v10;
    v9 += 8;
  }

  while (v9 != 24);
  return result;
}

void **sub_26220676C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      v9 = result[1];
      v10 = *result;
      if (v9 != v8)
      {
        v11 = v9 - 32;
        v12 = v9 - 32;
        v13 = v9 - 32;
        do
        {
          v14 = *v13;
          v13 -= 32;
          (*v14)(v12);
          v11 -= 32;
          v15 = v12 == v8;
          v12 = v13;
        }

        while (!v15);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v16 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v16 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v17 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      sub_262206E98(v6, v17);
    }

    sub_2621CBEB0();
  }

  v18 = result[1];
  v19 = v18 - v8;
  if (a4 <= (v18 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        v27 = *(v5 + 8);
        *(v8 + 6) = *(v5 + 24);
        *(v8 + 8) = v27;
        v5 += 32;
        v8 += 32;
      }

      while (v5 != a3);
      v18 = result[1];
    }

    if (v18 != v8)
    {
      v28 = v18 - 32;
      v29 = v18 - 32;
      v30 = v18 - 32;
      do
      {
        v31 = *v30;
        v30 -= 32;
        result = (*v31)(v29);
        v28 -= 32;
        v15 = v29 == v8;
        v29 = v30;
      }

      while (!v15);
    }

    v6[1] = v8;
  }

  else
  {
    if (v18 != v8)
    {
      v20 = a2 + v19;
      v21 = v8 + 8;
      v22 = (a2 + 8);
      do
      {
        v23 = *v22;
        *(v21 + 4) = *(v22 + 4);
        *v21 = v23;
        v21 += 32;
        v22 += 2;
        v19 -= 32;
      }

      while (v19);
      v18 = result[1];
      v5 = v20;
    }

    v24 = v18;
    if (v5 != a3)
    {
      v25 = v18;
      v24 = v18;
      do
      {
        *v24 = &off_2874EEA00;
        v26 = *(v5 + 8);
        *(v24 + 6) = *(v5 + 24);
        *(v24 + 8) = v26;
        v5 += 32;
        v24 += 32;
        v25 += 32;
      }

      while (v5 != a3);
    }

    result[1] = v24;
  }

  return result;
}

void **sub_2622069E0(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      v9 = result[1];
      v10 = *result;
      if (v9 != v8)
      {
        v11 = v9 - 16;
        v12 = v9 - 16;
        v13 = v9 - 16;
        do
        {
          v14 = *v13;
          v13 -= 16;
          (*v14)(v12);
          v11 -= 16;
          v15 = v12 == v8;
          v12 = v13;
        }

        while (!v15);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v16 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v16 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      sub_262206E58(v6, v17);
    }

    sub_2621CBEB0();
  }

  v18 = result[1];
  v19 = v18 - v8;
  if (a4 <= (v18 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v27 = *(v5 + 8);
        *(v8 + 11) = *(v5 + 11);
        *(v8 + 2) = v27;
        v5 += 16;
        v8 += 16;
      }

      while (v5 != a3);
      v18 = result[1];
    }

    if (v18 != v8)
    {
      v28 = v18 - 16;
      v29 = v18 - 16;
      v30 = v18 - 16;
      do
      {
        v31 = *v30;
        v30 -= 16;
        result = (*v31)(v29);
        v28 -= 16;
        v15 = v29 == v8;
        v29 = v30;
      }

      while (!v15);
    }

    v6[1] = v8;
  }

  else
  {
    if (v18 != v8)
    {
      v20 = a2 + v19;
      v21 = v8 + 8;
      v22 = (a2 + 8);
      do
      {
        v23 = *v22;
        *(v21 + 3) = *(v22 + 3);
        *v21 = v23;
        v21 += 4;
        v22 += 4;
        v19 -= 16;
      }

      while (v19);
      v18 = result[1];
      v5 = v20;
    }

    v24 = v18;
    if (v5 != a3)
    {
      v25 = v18;
      v24 = v18;
      do
      {
        *v24 = &unk_2874EF020;
        v26 = *(v5 + 8);
        *(v24 + 11) = *(v5 + 11);
        v24[2] = v26;
        v5 += 16;
        v24 += 4;
        v25 += 16;
      }

      while (v5 != a3);
    }

    result[1] = v24;
  }

  return result;
}

uint64_t sub_262206C54(uint64_t a1)
{
  *a1 = &unk_2874EEA20;
  v4 = (a1 + 88);
  sub_26220532C(&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  sub_262206D98(&v4);
  return a1;
}

uint64_t sub_262206CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = *(a1 + v6 + 8);
      *(v7 + 21) = *(a1 + v6 + 21);
      *(v7 + 8) = v9;
      if (a1 == a3)
      {
        *(v7 + 56) = *(v8 + 56);
      }

      else
      {
        sub_26220676C((v7 + 32), *(v8 + 32), *(v8 + 40), (*(v8 + 40) - *(v8 + 32)) >> 5);
        *(v7 + 56) = *(v8 + 56);
        sub_2621CA9DC((v7 + 64), *(v8 + 64), *(v8 + 72), (*(v8 + 72) - *(v8 + 64)) >> 2);
        sub_2622069E0((v7 + 88), *(v8 + 88), *(v8 + 96), (*(v8 + 96) - *(v8 + 88)) >> 4);
      }

      v6 += 112;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_262206D98(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
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

void sub_262206E58(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2622053EC(a2);
  }

  sub_2621CBEB0();
}

void sub_262206E98(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_262206ED8(a2);
  }

  sub_2621CBEB0();
}

void sub_262206ED8(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_262206F38(uint64_t a1)
{
  sub_262206C54(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262206F74(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if ((v7 + 1) > 0x249249249249249)
    {
      sub_2621CBEB0();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x124924924924924)
    {
      v10 = 0x249249249249249;
    }

    else
    {
      v10 = v9;
    }

    v27 = a1;
    if (v10)
    {
      sub_2622073F8(v10);
    }

    v24 = 0;
    v25 = 112 * v7;
    v26 = (112 * v7);
    sub_2622072FC(112 * v7, a2);
    v11 = *a1;
    v12 = a1[1];
    v13 = 112 * v7 - &v12[-*a1];
    *&v26 = 112 * v7 + 112;
    if (v12 != v11)
    {
      v14 = 0;
      v15 = v25 - 16 * ((v12 - v11) >> 4) - 112;
      v16 = v11;
      v17 = v13;
      do
      {
        sub_2622072FC(v17, v16);
        v16 += 112;
        v17 += 112;
        v14 -= 112;
        v15 += 112;
      }

      while (v16 != v12);
      v18 = v11;
      v19 = v11;
      do
      {
        v20 = *v19;
        v19 += 112;
        (*v20)(v11);
        v18 += 112;
        v11 = v19;
      }

      while (v19 != v12);
    }

    v21 = *a1;
    *a1 = v13;
    v22 = a1[2];
    v23 = v26;
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    result = sub_262207454(&v24);
    v6 = v23;
  }

  else
  {
    result = sub_2622072FC(a1[1], a2);
    v6 = v4 + 112;
    a1[1] = v4 + 112;
  }

  a1[1] = v6;
  return result;
}

void sub_262207168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_262207454(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622071D4(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int *a5)
{
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v6 = 0;
    v7 = v5 >> 4;
    v8 = 0x6DB6DB6DB6DB6DB7 * v7;
    if ((0x6DB6DB6DB6DB6DB7 * v7) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * v7;
    }

    LOBYTE(v5) = 1;
    while (1)
    {
      v10 = *(a1 + 112 * v6 + 32);
      v11 = v10[1].i32[1];
      v12 = v10[5].i32[1];
      if (v11 <= v12)
      {
        break;
      }

LABEL_10:
      LOBYTE(v5) = v8 > ++v6;
      if (v6 == v9)
      {
        return v5 & 1;
      }
    }

    v13 = v12 - v11 + 1;
    v14 = a3 - v11;
    while (v14)
    {
      --v14;
      if (!--v13)
      {
        goto LABEL_10;
      }
    }

    v15 = v10[1];
    v16 = v15.i32[0];
    v17 = v10[5];
    v18 = vcvt_f32_s32(vzip2_s32(v17, v15));
    *v17.i32 = v17.i32[0];
    v19 = vabds_f32(v18.f32[0], v18.f32[1]) < 0.000001;
    v20 = (((a3 - v18.f32[1]) * (*v17.i32 - v16)) / (v18.f32[0] - v18.f32[1])) + v16;
    v21 = (v16 + *v17.i32) * 0.5;
    if (v19)
    {
      v20 = v21;
    }

    v22 = -v20;
    if (v20 >= 0.0)
    {
      v22 = v20;
    }

    v23 = v22;
    v24 = v22 - v22;
    if (v24 < 0.5)
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 + 1;
    }

    v26 = (v23 & 1) + v23;
    if (v24 != 0.5)
    {
      v26 = v25;
    }

    if (v20 < 0.0)
    {
      v26 = -v26;
    }

    *a5 = v26;
    *a4 = v6;
  }

  return v5 & 1;
}

uint64_t sub_2622072FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEA20;
  v4 = *(a2 + 8);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_2622074C0(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  v5 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2621C8E70(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_262207574(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 4);
  return a1;
}

void sub_2622073C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 72) = v5;
    operator delete(v5);
  }

  sub_262206D98(va);
  _Unwind_Resume(a1);
}

void sub_2622073F8(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262207454(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 112);
    *(a1 + 16) = i - 112;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2622074C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_262206E98(result, a4);
  }

  return result;
}

uint64_t sub_262207574(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_262206E58(result, a4);
  }

  return result;
}

void sub_262207628(void *a1)
{
  *a1 = &unk_2874EF0B8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_262207694(void *a1)
{
  *a1 = &unk_2874EF0B8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_2622076E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      if (*(a2 - 20) < *(a1 + 12))
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 8);
        v10 = *(a2 - 8);
        *(a1 + 8) = *(a2 - 24);
        *(a1 + 24) = v10;
        *(a2 - 24) = v9;
        *(a2 - 8) = v8;
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v17 = a1 + 32;
        if (a1 + 32 != a2)
        {
          v18 = 0;
          v19 = a1 + 40;
          do
          {
            v20 = v17;
            if (*(v7 + 44) < *(v7 + 12))
            {
              v44 = &off_2874EEA00;
              v45 = *(v7 + 40);
              v46 = *(v7 + 56);
              v21 = v18;
              v22 = v19;
              while (1)
              {
                *v22 = *(v22 - 32);
                *(v22 + 16) = *(v22 - 16);
                if (!v21)
                {
                  break;
                }

                v23 = *(v22 - 60);
                v22 -= 32;
                v21 += 32;
                if (SDWORD1(v45) >= v23)
                {
                  goto LABEL_20;
                }
              }

              v22 -= 32;
LABEL_20:
              v24 = v45;
              *(v22 + 16) = v46;
              *v22 = v24;
            }

            v17 = v20 + 32;
            v19 += 32;
            v18 -= 32;
            v7 = v20;
          }

          while (v20 + 32 != a2);
        }
      }
    }

    else
    {
      v13 = a4;
      v14 = a3 >> 1;
      v15 = a1 + 32 * (a3 >> 1);
      if (a3 <= a5)
      {
        v43 = 0;
        v44 = a4;
        *&v45 = &v43;
        v25 = sub_262207C50(a1, a1 + 32 * (a3 >> 1), a3 >> 1, a4, a6);
        v43 = a3 >> 1;
        v26 = a3 - v14;
        v27 = &v13[32 * v14];
        sub_262207C50(v7 + 32 * (a3 >> 1), a2, v26, v27, v25);
        v43 = a3;
        v28 = &v13[32 * a3];
        v29 = v27;
        v30 = v13;
        while (v29 != v28)
        {
          if (*(v29 + 12) >= *(v30 + 3))
          {
            v32 = *(v30 + 8);
            *(v7 + 24) = *(v30 + 6);
            *(v7 + 8) = v32;
            v30 += 32;
          }

          else
          {
            v31 = *(v29 + 8);
            *(v7 + 24) = *(v29 + 24);
            *(v7 + 8) = v31;
            v29 += 32;
          }

          v7 += 32;
          if (v30 == v27)
          {
            if (v29 != v28)
            {
              v33 = 8;
              do
              {
                v34 = v7 + v33;
                v35 = *(v29 + 8);
                *(v34 + 16) = *(v29 + 24);
                *v34 = v35;
                v29 += 32;
                v33 += 32;
              }

              while (v29 != v28);
            }

            goto LABEL_36;
          }
        }

        if (v30 != v27)
        {
          v36 = 8;
          do
          {
            v37 = v7 + v36;
            v38 = *(v30 + 8);
            *(v37 + 16) = *(v30 + 6);
            *v37 = v38;
            v30 += 32;
            v36 += 32;
          }

          while (v30 != v27);
        }

LABEL_36:
        if (v13)
        {
          v39 = 0;
          v40 = v13;
          v41 = v13;
          do
          {
            v42 = *v41;
            v41 += 32;
            (*v42)(v13);
            ++v39;
            v40 += 32;
            v13 = v41;
          }

          while (v39 < v43);
        }
      }

      else
      {
        sub_2622076E0(a1, a1 + 32 * (a3 >> 1), a3 >> 1, a4, a5);
        v16 = a3 - v14;
        sub_2622076E0(v15, a2, v16, v13, a5);

        sub_26220804C(v7, v15, a2, v14, v16, v13, a5);
      }
    }
  }
}

void sub_262207A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_262207FB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262207A34(uint64_t a1)
{
  *a1 = &unk_2874EE2D0;
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v3 -= 3;
        v9 = v3;
        sub_262207B54(&v9);
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    do
    {
      v6 = *v5;
      sub_262207B04((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v9 = (a1 + 8);
  sub_262206D98(&v9);
  return a1;
}

void sub_262207B04(uint64_t a1)
{
  sub_262206C54(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_262207B54(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*v9)(v7);
        v6 -= 40;
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

void sub_262207C14(uint64_t a1)
{
  sub_262207A34(a1);

  JUMPOUT(0x266727420);
}

__n128 sub_262207C50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = *(a2 - 20);
      v10 = *(a1 + 12);
      *a4 = &off_2874EEA00;
      v11 = (a4 + 32);
      if (v9 >= v10)
      {
        v24 = *(a1 + 8);
        *(a4 + 24) = *(a1 + 24);
        *(a4 + 8) = v24;
        *v11 = &off_2874EEA00;
        result = *(a2 - 24);
        v13 = *(a2 - 8);
      }

      else
      {
        v12 = *(a2 - 24);
        *(a4 + 24) = *(a2 - 8);
        *(a4 + 8) = v12;
        *v11 = &off_2874EEA00;
        result = *(a1 + 8);
        v13 = *(a1 + 24);
      }

      *(a4 + 56) = v13;
      *(a4 + 40) = result;
    }

    else if (a3 == 1)
    {
      *a4 = &off_2874EEA00;
      result = *(a1 + 8);
      *(a4 + 24) = *(a1 + 24);
      *(a4 + 8) = result;
    }

    else if (a3 > 8)
    {
      v25 = a1 + 32 * (a3 >> 1);
      sub_2622076E0(a1, v25, a3 >> 1, a4, a3 >> 1);
      sub_2622076E0(v8 + 32 * (a3 >> 1), a2, a3 - (a3 >> 1), v5 + 32 * (a3 >> 1), a3 - (a3 >> 1));
      v26 = v5;
      v27 = v8 + 32 * (a3 >> 1);
      do
      {
        if (v27 == a2)
        {
          while (v8 != v25)
          {
            *v5 = &off_2874EEA00;
            result = *(v8 + 8);
            *(v5 + 24) = *(v8 + 24);
            *(v5 + 8) = result;
            v8 += 32;
            v5 += 32;
            v26 += 32;
          }

          return result;
        }

        v28 = *(v27 + 12);
        v29 = *(v8 + 12);
        *v5 = &off_2874EEA00;
        v30 = (v5 + 8);
        if (v28 >= v29)
        {
          result = *(v8 + 8);
          *(v5 + 24) = *(v8 + 24);
          *v30 = result;
          v8 += 32;
        }

        else
        {
          result = *(v27 + 8);
          *(v5 + 24) = *(v27 + 24);
          *v30 = result;
          v27 += 32;
        }

        v5 += 32;
        v26 += 32;
      }

      while (v8 != v25);
      if (v27 != a2)
      {
        v31 = 0;
        do
        {
          v32 = v5 + v31;
          *v32 = &off_2874EEA00;
          result = *(v27 + v31 + 8);
          *(v32 + 24) = *(v27 + v31 + 24);
          *(v32 + 8) = result;
          v31 += 32;
        }

        while (v27 + v31 != a2);
      }
    }

    else if (a1 != a2)
    {
      *a4 = &off_2874EEA00;
      result = *(a1 + 8);
      *(a4 + 24) = *(a1 + 24);
      *(a4 + 8) = result;
      v14 = a1 + 32;
      if (a1 + 32 != a2)
      {
        v15 = 0;
        v16 = a4;
        do
        {
          v17 = v14;
          v18 = v16 + 32;
          v19 = *(v8 + 44);
          v20 = *(v16 + 12);
          *(v16 + 32) = &off_2874EEA00;
          v21 = v16 + 40;
          if (v19 < v20)
          {
            *v21 = *(v16 + 8);
            *(v16 + 56) = *(v16 + 24);
            v22 = a4;
            if (v16 != a4)
            {
              v23 = v15;
              while (1)
              {
                v22 = a4 + v23;
                if (*(v8 + 44) >= *(a4 + v23 - 20))
                {
                  break;
                }

                *(v22 + 8) = *(v22 - 24);
                *(v22 + 24) = *(v22 - 8);
                v23 -= 32;
                if (!v23)
                {
                  v22 = a4;
                  break;
                }
              }
            }

            v21 = v22 + 8;
          }

          result = *(v8 + 40);
          v14 = v17 + 32;
          *(v21 + 16) = *(v8 + 56);
          *v21 = result;
          v15 += 32;
          v16 = v18;
          v8 = v17;
        }

        while (v17 + 32 != a2);
      }
    }
  }

  return result;
}

void *sub_262207FB8(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = v2;
      v6 = v2;
      do
      {
        v7 = *v6;
        v6 += 4;
        (*v7)(v5);
        ++v4;
        v2 += 4;
        v5 = v6;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t sub_26220804C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v9 = result;
    while (v7 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (*(a2 + 12) >= *(v9 + 12))
      {
        v9 += 32;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v7)
      {
        if (a4 == 1)
        {
          v78 = *(v9 + 24);
          v76 = *(v9 + 8);
          v62 = *(a2 + 8);
          *(v9 + 24) = *(a2 + 24);
          *(v9 + 8) = v62;
          *(a2 + 8) = v76;
          *(a2 + 24) = v78;
          return result;
        }

        v18 = a4 / 2;
        v12 = v9 + 32 * (a4 / 2);
        v11 = a2;
        if (a2 != a3)
        {
          v19 = (a3 - a2) >> 5;
          v11 = a2;
          do
          {
            v20 = v19 >> 1;
            v21 = v11 + 32 * (v19 >> 1);
            v22 = *(v21 + 12);
            v23 = v21 + 32;
            v19 += ~(v19 >> 1);
            if (v22 < *(v12 + 12))
            {
              v11 = v23;
            }

            else
            {
              v19 = v20;
            }
          }

          while (v19);
        }

        v10 = (v11 - a2) >> 5;
      }

      else
      {
        v10 = v7 / 2;
        v11 = a2 + 32 * (v7 / 2);
        v12 = a2;
        if (a2 != v9)
        {
          v13 = (a2 - v9) >> 5;
          v12 = v9;
          do
          {
            v14 = v13 >> 1;
            v15 = v12 + 32 * (v13 >> 1);
            v16 = *(v15 + 12);
            v17 = v15 + 32;
            v13 += ~(v13 >> 1);
            if (*(v11 + 12) < v16)
            {
              v13 = v14;
            }

            else
            {
              v12 = v17;
            }
          }

          while (v13);
        }

        v18 = (v12 - v9) >> 5;
      }

      v24 = v11;
      if (v12 != a2)
      {
        v24 = v12;
        if (a2 != v11)
        {
          v25 = *(v12 + 8);
          v26 = *(v12 + 24);
          v27 = *(a2 + 24);
          *(v12 + 8) = *(a2 + 8);
          *(v12 + 24) = v27;
          *(a2 + 8) = v25;
          *(a2 + 24) = v26;
          v24 = v12 + 32;
          for (i = a2 + 32; i != v11; i += 32)
          {
            if (v24 == a2)
            {
              a2 = i;
            }

            v29 = *(v24 + 8);
            v30 = *(v24 + 24);
            v31 = *(i + 24);
            *(v24 + 8) = *(i + 8);
            *(v24 + 24) = v31;
            *(i + 8) = v29;
            *(i + 24) = v30;
            v24 += 32;
          }

          if (v24 != a2)
          {
            v32 = v24;
            v33 = a2;
            do
            {
              while (1)
              {
                v77 = *(v32 + 24);
                v75 = *(v32 + 8);
                v34 = *(v33 + 8);
                *(v32 + 24) = *(v33 + 24);
                *(v32 + 8) = v34;
                *(v33 + 24) = v77;
                *(v33 + 8) = v75;
                v32 += 32;
                v33 += 32;
                if (v33 == v11)
                {
                  break;
                }

                if (v32 == a2)
                {
                  a2 = v33;
                }
              }

              v33 = a2;
            }

            while (v32 != a2);
          }
        }
      }

      a4 -= v18;
      v7 -= v10;
      if (v18 + v10 >= a4 + v7)
      {
        v39 = v18;
        v40 = a4;
        v41 = v10;
        v37 = a6;
        v38 = a7;
        result = sub_26220804C(v24, v11, a3, v40, v7);
        v11 = v12;
        v7 = v41;
        a4 = v39;
        a3 = v24;
      }

      else
      {
        v35 = v12;
        v36 = a3;
        v37 = a6;
        v38 = a7;
        result = sub_26220804C(v9, v35, v24, v18, v10);
        a3 = v36;
        v9 = v24;
      }

      a2 = v11;
      a6 = v37;
      a7 = v38;
      if (!v7)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (a2 == v9)
      {
        return result;
      }

      v42 = 0;
      v54 = a6;
      v55 = a6;
      v56 = v9;
      do
      {
        v57 = v55;
        *v55 = &off_2874EEA00;
        v58 = *(v56 + 8);
        *(v55 + 6) = *(v56 + 24);
        *(v55 + 1) = v58;
        ++v42;
        v56 += 32;
        v55 += 4;
        v54 += 4;
      }

      while (v56 != a2);
      v59 = a6;
      while (a2 != a3)
      {
        if (*(a2 + 12) >= *(v59 + 3))
        {
          v61 = *(v59 + 1);
          *(v9 + 24) = *(v59 + 6);
          *(v9 + 8) = v61;
          v59 += 4;
        }

        else
        {
          v60 = *(a2 + 8);
          *(v9 + 24) = *(a2 + 24);
          *(v9 + 8) = v60;
          a2 += 32;
        }

        v9 += 32;
        if (v59 == v55)
        {
          goto LABEL_78;
        }
      }

      v68 = v59 - 4;
      v69 = 8;
      do
      {
        v70 = v9 + v69;
        v71 = *(v68 + 5);
        *(v70 + 16) = *(v68 + 14);
        *v70 = v71;
        v69 += 32;
        v68 += 4;
      }

      while (v68 != v57);
    }

    else
    {
      if (a2 == a3)
      {
        return result;
      }

      v42 = 0;
      v43 = a6;
      v44 = a6;
      v45 = a2;
      do
      {
        *v44 = &off_2874EEA00;
        v46 = *(v45 + 8);
        *(v44 + 6) = *(v45 + 24);
        *(v44 + 8) = v46;
        ++v42;
        v45 += 32;
        v44 += 32;
        v43 += 4;
      }

      while (v45 != a3);
      while (a2 != v9)
      {
        v47 = *(v44 - 5);
        v48 = *(a2 - 20);
        v49 = v47 < v48;
        if (v47 >= v48)
        {
          v50 = v44;
        }

        else
        {
          v50 = a2;
        }

        if (v49)
        {
          v51 = -32;
        }

        else
        {
          v51 = 0;
        }

        a2 += v51;
        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = -32;
        }

        v44 += v52;
        v53 = *(v50 - 24);
        *(a3 - 8) = *(v50 - 2);
        *(a3 - 24) = v53;
        a3 -= 32;
        if (v44 == a6)
        {
          goto LABEL_78;
        }
      }

      if (v44 != a6)
      {
        v63 = -24;
        do
        {
          v64 = *(v44 - 24);
          v65 = *(v44 - 2);
          v66 = v44 - 32;
          v67 = a3 + v63;
          *(v67 + 16) = v65;
          *v67 = v64;
          v63 -= 32;
          v44 = v66;
        }

        while (v66 != a6);
      }
    }

LABEL_78:
    if (a6)
    {
      v72 = a6;
      v73 = a6;
      do
      {
        v74 = *v73;
        v73 += 4;
        result = (*v74)(a6, a2, a3);
        v72 += 4;
        a6 = v73;
        --v42;
      }

      while (v42);
    }
  }

  return result;
}

void sub_262208568(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_262206284((a2 + 8), v19, &v15, a3);
  sub_262208B38(v13, a2, v19);
  v5 = v15;
  if (v16 - v15 != 8)
  {
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v7, " ", 1);
    v8 = MEMORY[0x277D82670];
    v9 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v9, " ", 1);
    sub_2621D552C(v9, "slice", 5);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v18.__locale_) = 0;
    sub_262201E08("err", &v18);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_262208CB8(a1, v13, *v5);
  v13[0] = &unk_2874EF0B8;
  if (v14)
  {
    sub_2621D1B78(v14);
  }

  operator delete(v5);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2622087D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_26220883C(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_2621CBEB0();
    }

    v9 = v4 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v24[4] = v2;
    if (v10)
    {
      sub_262206ED8(v10);
    }

    v11 = 32 * v7;
    *v11 = &off_2874EEA00;
    v12 = *(a2 + 8);
    *(v11 + 24) = *(a2 + 24);
    *(v11 + 8) = v12;
    v13 = *v2;
    v14 = v2[1];
    v15 = 32 * v7 - (v14 - *v2);
    v6 = 32 * v7 + 32;
    if (v14 != *v2)
    {
      v16 = v11 - 32 * ((v14 - *v2) >> 5);
      v17 = *v2;
      v18 = 32 * v7 - (v14 - *v2);
      do
      {
        *v18 = &off_2874EEA00;
        v19 = *(v17 + 8);
        *(v18 + 24) = *(v17 + 24);
        *(v18 + 8) = v19;
        v17 += 32;
        v18 += 32;
        v16 += 32;
      }

      while (v17 != v14);
      v20 = v13;
      v21 = v13;
      do
      {
        v22 = *v21;
        v21 += 4;
        (*v22)();
        v20 += 4;
      }

      while (v21 != v14);
      v13 = *v2;
    }

    *v2 = v15;
    v2[1] = v6;
    v23 = v2[2];
    v2[2] = 0;
    v24[2] = v13;
    v24[3] = v23;
    v24[0] = v13;
    v24[1] = v13;
    result = sub_262208ACC(v24);
  }

  else
  {
    *v3 = &off_2874EEA00;
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v5;
    v6 = v3 + 32;
  }

  v2[1] = v6;
  return result;
}

void sub_262208A14(void *a1)
{
  *a1 = &unk_2874EF6A8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_262208A80(void *a1)
{
  *a1 = &unk_2874EF6A8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_262208ACC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_262208B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = &unk_2874EF0B8;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = 1;
  v7 = *(a1 + 112);
  do
  {
    v8 = (a3 + 24 * v4);
    v9 = *v8;
    v10 = (v8[1] - *v8);
    v11 = v8[2];
    *(a1 + 8 + 8 * v4) = vcvtps_u32_f32(v10 / v11);
    *(a1 + 56 + 8 * v4) *= v11;
    LOBYTE(v11) = v6;
    v7 += *(a2 + 56 + 8 * v4) * v9;
    v4 = 1;
    v6 = 0;
  }

  while ((v11 & 1) != 0);
  *(a1 + 104) = *(a1 + 16) * *(a1 + 8);
  *(a1 + 112) = v7;
  v12 = *(a2 + 120);
  v13 = *(a2 + 128);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v14 = *(a1 + 128);
    *(a1 + 120) = v12;
    *(a1 + 128) = v13;
    if (v14)
    {
      sub_2621D1B78(v14);
      v12 = *v5;
    }
  }

  else
  {
    *(a1 + 120) = v12;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *v12 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v15 = (a1 + 64);
  v16 = -2;
  v17 = 1;
  while (1)
  {
    v18 = *(v15 - 6);
    if (v18 != 1)
    {
      break;
    }

LABEL_11:
    --v15;
    if (__CFADD__(v16++, 1))
    {
      v20 = 1;
      goto LABEL_15;
    }
  }

  if (*v15 == v17)
  {
    v17 *= v18;
    goto LABEL_11;
  }

  v20 = 0;
LABEL_15:
  *(a1 + 136) = v20;
}

void sub_262208CB8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_2874EF6A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 136) = 257;
  v6 = a2 + 8;
  *(a1 + 128) = 0;
  sub_2621D6120(&v13, a2 + 8, a3);
  v7 = v13;
  *(a1 + 8) = *(v6 + 8 * v13);
  *(a1 + 56) = *(a2 + 8 * v7 + 56);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 128);
  *(a1 + 120) = v8;
  *(a1 + 128) = v9;
  if (v10)
  {
    sub_2621D1B78(v10);
    v8 = *v5;
  }

  *(a1 + 144) = *v8 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v12 = *(a1 + 8) == 1 || *(a1 + 56) == 1;
  *(a1 + 136) = v12;
}

void sub_262208DC8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_262208FEC(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_262209080(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_262209080(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_2621E1D40(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2622091C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RSOrthographicDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26220A210(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  if (v5 > 5)
  {
    if (v4 != 144)
    {
      v11 = v2 + 144;
      if (v3 != v2 + 144)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v3 - 16) = v13;
            operator delete(v13);
          }

          v3 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = 6 - v5;
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3) < v6)
    {
      v16 = a1;
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v2) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= 6)
      {
        v9 = 6;
      }

      if (v8 >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2621E1EE4(v10);
    }

    v15 = 24 * ((120 - v4) / 0x18uLL) + 24;
    bzero(a1[1], v15);
    a1[1] = v3 + v15;
  }
}

uint64_t *sub_26220A3AC(uint64_t *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_2621C7F54(v11);
      }

      sub_2621CBEB0();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_2623A7620)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_2623A7630)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  result[1] = v12;
  return result;
}

void sub_26220A5F0(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621C7F54(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void *sub_26220A704(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
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

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_2621C8EEC(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void sub_26220A828(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621CBEB0();
}

uint64_t sub_26220A888(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621E1E94(result, a4);
  }

  return result;
}

void sub_26220A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621E1D40(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_26220A910(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      sub_2621E1D40(&v5);
    }
  }

  return a1;
}

void *sub_26220A974(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      sub_2621C8E70(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_26220AA28(v8);
  return v4;
}

uint64_t sub_26220AA28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t sub_26220AA90(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id sub_26220AAF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v238 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v187 = v14;
  v188 = v13;
  if (a1)
  {
    v15 = v14;
    *(a1 + 1432) = a6;
    v193 = v11;
    v195 = v12;
    v196 = v13;
    v194 = v15;
    objc_msgSend_removeAllObjects(*(a1 + 1376), v16, v17);
    objc_msgSend_removeAllObjects(*(a1 + 1384), v18, v19);
    objc_msgSend_removeAllObjects(*(a1 + 1392), v20, v21);
    objc_msgSend_removeAllObjects(*(a1 + 1400), v22, v23);
    *&src = 0x200000001;
    DWORD2(src) = 4;
    sub_26220A704((a1 + 1320), &src, &src + 12, 3uLL);
    v26 = 0;
    *(a1 + 1424) = &unk_2623A8564;
    v198 = a1;
    while (objc_msgSend_count(v195, v24, v25) > v26)
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(v195, v27, v26);
      sub_26220B69C(a1, v28, v193, v194);

      ++v26;
      a1 = v198;
    }

    *&src = 0x400000001;
    sub_26220A704((a1 + 1320), &src, &src + 8, 2uLL);
    v31 = 0;
    *(a1 + 1424) = &unk_2623A8574;
    while (objc_msgSend_count(v196, v29, v30) > v31)
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v196, v32, v31);
      objc_msgSend_quad(v33, v34, v35);
      v217 = v36;
      objc_msgSend_quad(v33, v37, v38);
      v40 = vsubq_f32(v217, v39);
      v41 = vmulq_f32(v40, v40);
      v42 = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
      v44 = v42 <= 1.2 && v42 >= 0.6;

      if (v44)
      {
        v45 = objc_msgSend_objectAtIndexedSubscript_(v196, v29, v31);
        objc_msgSend_quad(v45, v46, v47);
        v218 = v48;
        objc_msgSend_quad(v45, v49, v50);
        v215 = v51;
        objc_msgSend_quad(v45, v52, v53);
        v213 = v54;
        objc_msgSend_quad(v45, v55, v56);
        v211 = v57;
        objc_msgSend_quad(v45, v58, v59);
        v210 = v60;
        objc_msgSend_quad(v45, v61, v62);
        v208 = v63;
        v66 = objc_msgSend_copy(v45, v64, v65);
        v67 = v66;
        v68 = vsub_f32(*&v215, *&v218);
        v69 = vmul_f32(v68, v68);
        v69.i32[0] = vadd_f32(v69, vdup_lane_s32(v69, 1)).u32[0];
        v70 = vrsqrte_f32(v69.u32[0]);
        v71 = vmul_f32(v70, vrsqrts_f32(v69.u32[0], vmul_f32(v70, v70)));
        v72 = vmul_n_f32(v68, vmul_f32(v71, vrsqrts_f32(v69.u32[0], vmul_f32(v71, v71))).f32[0]);
        *&v73 = vmla_f32(*&v215, 0x3F0000003F000000, v72);
        *&v74 = vmla_f32(*&v218, 0xBF000000BF000000, v72);
        *&v75 = v74;
        *(&v75 + 1) = vextq_s8(v213, v213, 8uLL).u64[0];
        *&v76 = v73;
        *(&v76 + 1) = vextq_s8(v211, v211, 8uLL).u64[0];
        *(&v73 + 1) = __PAIR64__(HIDWORD(v215), v210);
        *(&v74 + 1) = __PAIR64__(HIDWORD(v218), v208);
        src = v75;
        v227 = v76;
        v228 = v73;
        v229 = v74;
        if (v66)
        {
          objc_copyStruct((v66 + 272), &src, 64, 1, 0);
        }

        sub_26220B69C(v198, v67, v193, v194);
      }

      ++v31;
      a1 = v198;
    }

    if (*(a1 + 1433))
    {
      *__p = xmmword_2623A7830;
      *&v227 = 0;
      src = 0uLL;
      sub_2621DC430(&src, __p, v225, 4uLL);
      v77 = src;
      v78 = ((((*(&src + 1) - src) << 30) - 0x100000000) >> 32) & ~((((*(&src + 1) - src) << 30) - 0x100000000) >> 63);
      v79 = (src + 4);
      for (i = v78; i; --i)
      {
        v81 = *(v79 - 1);
        v82 = *v79++;
        sub_26220CA40(*(a1 + 1384), v81, v82);
      }

      *&v230 = 0x3F19999A00000000;
      DWORD2(v230) = 1066192077;
      __p[1] = 0;
      v225[0] = 0;
      __p[0] = 0;
      sub_2621DC430(__p, &v230, &v230 + 12, 3uLL);
      v83 = __p[0];
      v84 = (__p[0] + 4);
      while (v78)
      {
        v85 = *(v84 - 1);
        v86 = *v84;
        --v78;
        ++v84;
        sub_26220CA40(*(a1 + 1400), v85, v86);
      }

      if (v83)
      {
        operator delete(v83);
      }

      if (v77)
      {
        operator delete(v77);
      }
    }

    v189 = objc_opt_new();
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    obj = *(a1 + 1384);
    v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, &v220, __p, 16);
    if (v192)
    {
      v191 = *v221;
      v200 = v12;
      do
      {
        for (j = 0; j != v192; ++j)
        {
          if (*v221 != v191)
          {
            objc_enumerationMutation(obj);
          }

          v88 = *(a1 + 1400);
          v203 = *(*(&v220 + 1) + 8 * j);
          v89 = v88;
          v230 = 0u;
          v231 = 0u;
          v232 = 0u;
          v233 = 0u;
          v199 = v89;
          v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v90, &v230, &src, 16);
          if (v91)
          {
            v202 = *v231;
            while (2)
            {
              v92 = 0;
              v201 = v91;
              do
              {
                if (*v231 != v202)
                {
                  objc_enumerationMutation(v199);
                }

                v93 = *(*(&v230 + 1) + 8 * v92);
                v94 = v203;
                v95 = v93;
                objc_msgSend_quad(v94, v96, v97);
                v216 = v98;
                objc_msgSend_quad(v94, v99, v100);
                v214 = v101;
                objc_msgSend_quad(v94, v102, v103);
                v212 = v104;
                objc_msgSend_quad(v94, v105, v106);
                v209 = v107;
                objc_msgSend_quad(v95, v108, v109);
                v207 = v110;
                objc_msgSend_quad(v95, v111, v112);
                v206 = v113;
                objc_msgSend_quad(v95, v114, v115);
                v205 = v116;
                objc_msgSend_quad(v95, v117, v118);
                v204 = v121;
                v122 = v11;
                v123 = &v236;
                v124 = 1;
                v125 = 3.4028e38;
                do
                {
                  v126 = v124;
                  objc_msgSend_quad(v94, v119, v120);
                  v237 = v127;
                  v236 = v128;
                  v235 = v129;
                  v234 = v130;
                  v131 = &v236;
                  v132 = 1;
                  v219 = *v123;
                  do
                  {
                    v133 = v132;
                    objc_msgSend_quad(v95, v119, v120);
                    v132 = 0;
                    v237 = v134;
                    v235 = v135;
                    v236 = v136;
                    v234 = v137;
                    v138 = vsubq_f32(v219, *v131);
                    v139 = sqrtf(vaddv_f32(*&vmulq_f32(v138, v138)));
                    if (v125 > v139)
                    {
                      v125 = v139;
                    }

                    v131 = &v234;
                  }

                  while ((v133 & 1) != 0);
                  v124 = 0;
                  v123 = &v234;
                }

                while ((v126 & 1) != 0);
                v140 = vsubq_f32(v216, v214);
                v141 = vmulq_f32(v140, v140);
                *&v142 = v141.f32[2] + vaddv_f32(*v141.f32);
                *v141.f32 = vrsqrte_f32(v142);
                *v141.f32 = vmul_f32(*v141.f32, vrsqrts_f32(v142, vmul_f32(*v141.f32, *v141.f32)));
                v143 = vmulq_n_f32(v140, vmul_f32(*v141.f32, vrsqrts_f32(v142, vmul_f32(*v141.f32, *v141.f32))).f32[0]);
                v144 = vsubq_f32(v212, v209);
                v145 = vmulq_f32(v144, v144);
                *&v146 = v145.f32[2] + vaddv_f32(*v145.f32);
                *v145.f32 = vrsqrte_f32(v146);
                *v145.f32 = vmul_f32(*v145.f32, vrsqrts_f32(v146, vmul_f32(*v145.f32, *v145.f32)));
                v147 = vmulq_n_f32(v144, vmul_f32(*v145.f32, vrsqrts_f32(v146, vmul_f32(*v145.f32, *v145.f32))).f32[0]);
                v148 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v147, v147), v147, 0xCuLL), vnegq_f32(v143)), v147, vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL));
                v149 = vsubq_f32(v207, v206);
                v150 = vmulq_f32(v149, v149);
                v145.f32[0] = v150.f32[2] + vaddv_f32(*v150.f32);
                *v150.f32 = vrsqrte_f32(v145.u32[0]);
                *v150.f32 = vmul_f32(*v150.f32, vrsqrts_f32(v145.u32[0], vmul_f32(*v150.f32, *v150.f32)));
                v151 = vmulq_n_f32(v149, vmul_f32(*v150.f32, vrsqrts_f32(v145.u32[0], vmul_f32(*v150.f32, *v150.f32))).f32[0]);
                v152 = vsubq_f32(v205, v204);
                v153 = vmulq_f32(v152, v152);
                *&v154 = v153.f32[2] + vaddv_f32(*v153.f32);
                *v153.f32 = vrsqrte_f32(v154);
                *v153.f32 = vmul_f32(*v153.f32, vrsqrts_f32(v154, vmul_f32(*v153.f32, *v153.f32)));
                v155 = vmulq_n_f32(v152, vmul_f32(*v153.f32, vrsqrts_f32(v154, vmul_f32(*v153.f32, *v153.f32))).f32[0]);
                v156 = vmulq_f32(v148, vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v155, v155), v155, 0xCuLL), vnegq_f32(v151)), v155, vextq_s8(vuzp1q_s32(v151, v151), v151, 0xCuLL)));
                v157 = acosf(v156.f32[1] + (v156.f32[2] + v156.f32[0]));

                v12 = v200;
                v11 = v122;

                v159 = v157 / 3.14159265 * 180.0;
                v160 = fminf(v159, 180.0 - v159);
                v161 = v160 > 75.0 && v160 < 105.0;
                if (v161 && v125 < 0.2)
                {

                  a1 = v198;
                  goto LABEL_55;
                }

                ++v92;
              }

              while (v92 != v201);
              v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v158, &v230, &src, 16);
              if (v91)
              {
                continue;
              }

              break;
            }
          }

          objc_msgSend_addObject_(v189, v162, v203);
          a1 = v198;
LABEL_55:
          ;
        }

        v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v163, &v220, __p, 16);
      }

      while (v192);
    }

    v164 = v198[173];
    v198[173] = v189;

    v165 = objc_opt_new();
    v168 = objc_msgSend_copy(v198[172], v166, v167);
    objc_msgSend_setObject_forKeyedSubscript_(v165, v169, v168, @"windows");

    v172 = objc_msgSend_copy(v198[173], v170, v171);
    objc_msgSend_setObject_forKeyedSubscript_(v165, v173, v172, @"doors");

    v176 = objc_msgSend_copy(v198[174], v174, v175);
    objc_msgSend_setObject_forKeyedSubscript_(v165, v177, v176, @"openings");

    v180 = objc_msgSend_copy(v198[175], v178, v179);
    objc_msgSend_setObject_forKeyedSubscript_(v165, v181, v180, @"opendoors");

    v184 = objc_msgSend_copy(v165, v182, v183);
  }

  else
  {
    v184 = 0;
  }

  v185 = *MEMORY[0x277D85DE8];

  return v184;
}

void sub_26220B69C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v48 = a3;
  v49 = a4;
  v47 = v7;
  objc_msgSend_quad(v47, v8, v9);
  v56 = v10;
  objc_msgSend_quad(v47, v11, v12);
  v54 = v13;

  v16 = vsubq_f32(v56, v54);
  v17 = vmulq_f32(v16, v16);
  if (sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) >= 0.5)
  {
    objc_msgSend_count(*(a1 + 1376), v14, v15);
    kdebug_trace();
    v18 = v47;
    v19 = v48;
    v20 = v49;
    DataSize = CVPixelBufferGetDataSize(*(a1 + 8));
    CVPixelBufferLockBaseAddress(*(a1 + 8), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 8));
    *(a1 + 16) = BaseAddress;
    bzero(BaseAddress, DataSize);
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    memset(src, 0, sizeof(src));
    if (v20)
    {
      v23 = v20[4] + 0.1;
    }

    else
    {
      v23 = 0.1;
    }

    sub_2622CAC48(src, v18, v23);
    v51 = v72;
    obj = src[0];
    v50 = v73;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    memset(v67, 0, sizeof(v67));
    memset(v66, 0, sizeof(v66));
    memset(v65, 0, sizeof(v65));
    sub_2622CAD9C(src, v19, &v68, v67, v66, v65);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v25 = v68;
    v24 = v69;
    if (v68 != v69)
    {
      v26 = vsubq_f32(v51, obj);
      v27 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v26, v26)));
      v28.i64[0] = 0x3F0000003F000000;
      v28.i64[1] = 0x3F0000003F000000;
      v29 = vrsqrte_f32(v27);
      v30 = vmul_f32(v29, vrsqrts_f32(v27, vmul_f32(v29, v29)));
      *v26.f32 = vmul_n_f32(*v26.f32, vmul_f32(v30, vrsqrts_f32(v27, vmul_f32(v30, v30))).f32[0]);
      v31 = v26.u32[1];
      v53 = vmulq_f32(vaddq_f32(obj, v75), v28);
      v26.i32[1] = 0;
      v55 = *v26.f32;
      v57 = v31;
      v32 = v68;
      do
      {
        v33 = vsubq_f32(*v32, v53);
        v59 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(v55, v33.f32[0]), v57, *v33.f32, 1), 0x3F80000000000000, v33, 2);
        sub_2621CBA84(&v62, &v59);
        ++v32;
      }

      while (v32 != v24);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_26237952C(v25, v24, src, &v59);
    v35 = v59;
    v34 = v60;
    sub_26220EDA4(&__p, (v60 - v59) >> 4);
    v36 = vsubq_f32(obj, v51);
    v37 = vmulq_f32(v36, v36);
    v38 = sqrtf(v37.f32[2] + vaddv_f32(*v37.f32));
    v39 = vsubq_f32(obj, v50);
    v40 = vmulq_f32(v39, v39);
    v40.f32[0] = sqrtf(v40.f32[2] + vaddv_f32(*v40.f32));
    if (v35 != v34)
    {
      v41 = __p;
      v42 = v35;
      do
      {
        *v41++ = (fabsf(v42[2]) / -0.8) + 1.0;
        v42 += 4;
      }

      while (v42 != v34);
    }

    if (v38 < v40.f32[0])
    {
      v38 = v40.f32[0];
    }

    v43 = v38 / 448.0;
    v44 = 1.0 / (v38 / 448.0);
    *(a1 + 304) = v44;
    v40.f32[0] = (v43 * 448.0) * 0.5;
    *(a1 + 308) = v40.i32[0];
    v45 = *(a1 + 16);
    sub_26237964C(v62, v63, v67, v66, v65, v44, *v40.f32);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_26220CA40(void *a1, float a2, float a3)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  memset(v84, 0, sizeof(v84));
  memset(v83, 0, sizeof(v83));
  v10 = 0.0;
  memset(v82, 0, sizeof(v82));
  v11 = 0.0;
  v12 = 0.0;
  while (v9 < objc_msgSend_count(v7, v5, v6))
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v13, v9);
    objc_msgSend_quad(v14, v15, v16);
    v75 = v18;
    v78 = v17;
    v66 = v19;
    v72 = v20;

    v70 = vsubq_f32(v72, v78);
    v73 = vsubq_f32(v75, v78);
    v21 = vmulq_f32(v73, v73);
    v76 = v21.f32[2] + vaddv_f32(*v21.f32);
    v22 = sqrtf(v76);
    v23 = vmulq_f32(v70, v70);
    v68 = v23.f32[2] + vaddv_f32(*v23.f32);
    v24 = sqrtf(v68);
    v80 = v24;
    v81 = v22;
    if (v22 > a2 && v22 <= a3)
    {
      v26 = v8;
      v27 = v8 >> 3;
      if (((v8 >> 3) + 1) >> 61)
      {
        sub_2621CBEB0();
      }

      if (v8 >> 3 != -1)
      {
        sub_2621CBEC8((v8 >> 3) + 1);
      }

      *(8 * v27) = v9;
      v8 = 8 * v27 + 8;
      memcpy(0, 0, v26);
      v28 = vrsqrte_f32(LODWORD(v76));
      v29 = vmul_f32(v28, vrsqrts_f32(LODWORD(v76), vmul_f32(v28, v28)));
      src[0] = vmulq_n_f32(v73, vmul_f32(v29, vrsqrts_f32(LODWORD(v76), vmul_f32(v29, v29))).f32[0]);
      sub_2621D9F60(v86, src);
      v30 = vrsqrte_f32(LODWORD(v68));
      v31 = vmul_f32(v30, vrsqrts_f32(LODWORD(v68), vmul_f32(v30, v30)));
      src[0] = vmulq_n_f32(v70, vmul_f32(v31, vrsqrts_f32(LODWORD(v68), vmul_f32(v31, v31))).f32[0]);
      sub_2621D9F60(v85, src);
      sub_2621C8F2C(v84, &v81);
      sub_2621C8F2C(v83, &v80);
      v32 = vmuls_lane_f32(0.5, vaddq_f32(v78, v66), 2);
      *src = v32;
      sub_2621C8F2C(v82, src);
      v12 = v12 + v22;
      v11 = v11 + v24;
      v10 = v10 + v32;
    }

    ++v9;
  }

  v33 = v82[0];
  __p = v82[0];
  if (v8)
  {
    v34 = 0;
    v35 = v8 >> 3;
    v36 = v12 / (v8 >> 3);
    v37 = v11 / (v8 >> 3);
    if ((v8 >> 3) <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v8 >> 3;
    }

    v39 = v84[0];
    v40 = v83[0];
    v41 = v86[0];
    v42 = v85[0];
    v43 = v10 / v35;
    do
    {
      v44 = *v34++;
      v45 = *v39;
      v46 = *v40;
      v47 = *v33;
      v48 = objc_msgSend_objectAtIndexedSubscript_(v7, v13, v44, __p);
      objc_msgSend_quad(v48, v49, v50);
      v74 = v52;
      v77 = v51;
      v79 = v53;
      v71 = v54;

      v55 = *v42;
      v67 = *v42;
      v69 = *v41;
      v57 = objc_msgSend_objectAtIndexedSubscript_(v7, v56, v44);
      v58 = v57;
      v59.f32[0] = (v36 - v45) * 0.5;
      v60.i64[0] = 0;
      v60.i32[3] = 0;
      v60.f32[2] = v43 - v47;
      *v61.i32 = (v37 - v46) * 0.5;
      v62 = vdupq_lane_s32(v61, 0);
      v63 = vmulq_n_f32(v67, *v61.i32);
      v64 = vmulq_f32(v67, vnegq_f32(v62));
      src[0] = vaddq_f32(v77, vaddq_f32(v60, vmlsq_lane_f32(v64, v69, v59, 0)));
      src[1] = vaddq_f32(v74, vaddq_f32(v60, vmlaq_n_f32(v64, v69, v59.f32[0])));
      src[2] = vaddq_f32(v79, vaddq_f32(v60, vmlaq_n_f32(v63, v69, v59.f32[0])));
      src[3] = vaddq_f32(v71, vaddq_f32(v60, vmlsq_lane_f32(v63, v69, v59, 0)));
      if (v57)
      {
        objc_copyStruct((v57 + 272), src, 64, 1, 0);
      }

      ++v42;
      ++v41;
      ++v33;
      ++v40;
      ++v39;
      --v38;
    }

    while (v38);
  }

  else if (!v82[0])
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  if (v83[0])
  {
    operator delete(v83[0]);
  }

  if (v84[0])
  {
    operator delete(v84[0]);
  }

  if (v85[0])
  {
    operator delete(v85[0]);
  }

  if (v86[0])
  {
    operator delete(v86[0]);
  }
}

void sub_26220CE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26220CF30(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a1[36];
  v3 = a1[37];
  v4 = a1[1];
  v5 = espresso_network_bind_cvpixelbuffer();
  if (v5)
  {
    v6 = v5;
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v7 = qword_27FF0C058;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *__str = 67109120;
      v28 = v6;
      _os_log_debug_impl(&dword_2621C3000, v7, OS_LOG_TYPE_DEBUG, "espresso_network_bind_cvpixelbuffer input failure (%d)", __str, 8u);
    }
  }

  for (i = 0; i != 6; ++i)
  {
    snprintf(__str, 0x64uLL, "%s%u", "logits_", i);
    v9 = a1[36];
    v10 = a1[37];
    v11 = a1[i + 4];
    v12 = espresso_network_bind_cvpixelbuffer();
    if (v12)
    {
      v13 = v12;
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v14 = qword_27FF0C058;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v26 = v13;
        _os_log_debug_impl(&dword_2621C3000, v14, OS_LOG_TYPE_DEBUG, "espresso_network_bind_cvpixelbuffer output logits failure (%d)", buf, 8u);
      }
    }
  }

  for (j = 0; j != 6; ++j)
  {
    snprintf(__str, 0x64uLL, "%s%u", "offsets_box_", j);
    v16 = a1[36];
    v17 = a1[37];
    v18 = a1[j + 10];
    v19 = espresso_network_bind_cvpixelbuffer();
    if (v19)
    {
      v20 = v19;
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v21 = qword_27FF0C058;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v26 = v20;
        _os_log_debug_impl(&dword_2621C3000, v21, OS_LOG_TYPE_DEBUG, "espresso_network_bind_cvpixelbuffer output offsets failure (%d)", buf, 8u);
      }
    }
  }

  v22 = a1[35];
  result = espresso_plan_execute_sync();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26220D1F8(uint64_t a1)
{
  v240 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = 0;
  v4 = a1 + 32;
  v228 = a1;
  v5 = a1 + 80;
  __asm { FMOV            V0.2D, #-0.5 }

  v204 = _Q0;
  v206 = v2;
  v196 = v5;
  v197 = v4;
  do
  {
    CVPixelBufferLockBaseAddress(*(v4 + 8 * v3), 1uLL);
    CVPixelBufferLockBaseAddress(*(v5 + 8 * v3), 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(*(v4 + 8 * v3));
    v11 = CVPixelBufferGetBaseAddress(*(v5 + 8 * v3));
    v12 = dword_2623A851C[v3];
    v13 = 10;
    if (v3 == 5)
    {
      v13 = 5;
    }

    v198 = v13;
    LODWORD(v13) = dword_2623A8534[v3];
    v208 = 3 * v13 * v12;
    v209 = 0;
    v201 = dword_2623A851C[v3];
    v202 = &BaseAddress[v13 * v12];
    v14 = 2 * v13 * v12;
    v205 = v13 * v12;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v13;
    }

    v200 = v13;
    if (v12 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    v199 = v15;
    do
    {
      for (i = 0; i != v199; ++i)
      {
        for (j = 0; j != v200; ++j)
        {
          if (j < v201)
          {
            v17 = 0;
            v18 = v202;
            _H0 = *BaseAddress;
            __asm { FCVT            S10, H0 }

            v21 = *(v228 + 1296);
            *v21 = _S10;
            do
            {
              _H0 = *v18;
              __asm { FCVT            S0, H0 }

              _S10 = fmaxf(_S10, _S0);
              v21[++v17] = _S0;
              v18 = (v18 + v14);
            }

            while (v17 != 4);
            v24 = 0;
            v25 = 0.0;
            do
            {
              v26 = expf(v21[v24] - _S10);
              v21[v24] = v26;
              v25 = v25 + v26;
              ++v24;
            }

            while (v24 != 5);
            v27 = *(v228 + 1320);
            for (k = *(v228 + 1328); v27 != k; ++v27)
            {
              v29 = *v27;
              v30 = *(*(v228 + 1296) + 4 * v29) / v25;
              if (v30 > 0.4)
              {
                v31 = (*(*(*(*(v228 + 1272) + 24 * v3) + 24 * v209) + 24 * i) + 24 * j);
                v235 = 0;
                v236 = 0;
                __p = 0;
                sub_2621C8E70(&__p, *v31, v31[1], (v31[1] - *v31) >> 2);
                v32 = v3;
                v33 = __p;
                v34.i16[0] = *v11;
                v216 = v34;
                v213 = v11[v205];
                v35 = *__p;
                v36 = *(__p + 8);
                v34.i16[0] = v11[2 * v205];
                v223 = v34;
                v219 = v11[v208];
                v37 = [_RSOrthographicDetector_DetectBox alloc];
                v38 = v223;
                v38.i16[1] = v219;
                v224 = vcvtq_f32_f16(v38).u64[0];
                v39.f32[0] = expf(*&v224);
                v220 = v39;
                v41 = expf(*(&v224 + 1));
                if (v37 && (v225 = v41, v229.receiver = v37, v229.super_class = _RSOrthographicDetector_DetectBox, (v42 = objc_msgSendSuper2(&v229, sel_init)) != 0))
                {
                  v43 = v216;
                  v43.i16[1] = v213;
                  v44 = v220;
                  v44.f32[1] = v225;
                  *v44.f32 = vmul_f32(v36, *&vcvtq_f32_f16(vcvt_f16_f32(v44)));
                  v45 = vcvtq_f64_f32(*v44.f32);
                  *(v42 + 24) = vmlaq_f64(vcvtq_f64_f32(vmla_f32(v35, v36, *&vcvtq_f32_f16(v43))), v204, v45);
                  *(v42 + 40) = v45;
                  *(v42 + 4) = v32;
                  *(v42 + 5) = v29;
                  *(v42 + 2) = vmul_lane_f32(*v44.f32, *v44.f32, 1).u32[0];
                  *(v42 + 3) = v30;
                  v46 = v42;
                  objc_msgSend_addObject_(v206, v40, v42);
                }

                else
                {
                  v46 = 0;
                  objc_msgSend_addObject_(v206, v40, 0);
                }

                operator delete(v33);
                v3 = v32;
              }
            }
          }

          ++v202;
          ++BaseAddress;
          ++v11;
        }
      }

      v202 += 4 * v205;
      BaseAddress += 4 * v205;
      v11 += v208;
      ++v209;
    }

    while (v209 != v198);
    v4 = v197;
    CVPixelBufferUnlockBaseAddress(*(v197 + 8 * v3), 1uLL);
    v5 = v196;
    CVPixelBufferUnlockBaseAddress(*(v196 + 8 * v3++), 1uLL);
  }

  while (v3 != 6);
  v49 = objc_msgSend_copy(v206, v47, v48);

  v50 = *(v228 + 1368);
  *(v228 + 1368) = v49;

  v51 = *(v228 + 1368);
  v221 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0;
  v211 = MEMORY[0x277D85DD0];
  v207 = v51;
  do
  {
    __p = v211;
    v235 = 3221225472;
    v236 = sub_26220F57C;
    v237 = &unk_279B305D8;
    v238 = v53;
    v214 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v52, &__p);
    v217 = objc_msgSend_filteredArrayUsingPredicate_(v51, v54, v214);
    v56 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v55, @"confidence", 0);
    v212 = v53;
    v233 = v56;
    v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, &v233, 1);
    v226 = objc_msgSend_sortedArrayUsingDescriptors_(v217, v59, v58);

    v62 = objc_msgSend_count(v226, v60, v61);
    sub_26220F1D4(&v229, v62);
    if (v62)
    {
      v64 = 0;
      do
      {
        v65 = v64 >> 6;
        v66 = 1 << v64;
        if ((*(v229.receiver + (v64 >> 6)) & (1 << v64)) != 0)
        {
          ++v64;
        }

        else
        {
          v68 = objc_msgSend_objectAtIndexedSubscript_(v226, v63, v64);
          v69 = ++v64;
          if (v64 < v62)
          {
            do
            {
              if ((*(v229.receiver + (v69 >> 6)) & (1 << v69)) == 0)
              {
                v70 = objc_msgSend_objectAtIndexedSubscript_(v226, v67, v69);
                v71 = v70;
                if (v68)
                {
                  if (v70)
                  {
                    v72.f64[0] = v70[1].f64[1];
                    v72.f64[1] = v70[3].f64[0];
                    v73 = vcvt_f32_f64(v72);
                    v74 = vcvt_f32_f64(v70[2]);
                  }

                  else
                  {
                    v74 = 0;
                    v73 = 0;
                  }

                  v75 = vrev64_s32(v74);
                  v76 = vadd_f32(v75, v73);
                  v77 = *(v68 + 24);
                  v78 = vcvt_f32_f64(vaddq_f64(v77, *(v68 + 40)));
                  *&v77.f64[0] = vcvt_f32_f64(v77);
                  v79 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v78, v76), v76, v78), vbsl_s8(vcgt_f32(*&v77.f64[0], __PAIR64__(v75.u32[1], v73.u32[0])), *&v77.f64[0], __PAIR64__(v75.u32[1], v73.u32[0]))), 0);
                  v80 = vmul_f32(vzip1_s32(v75, v79), vzip2_s32(v73, v79));
                  v81 = (v80.f32[1] / ((v80.f32[0] + *(v68 + 8)) - v80.f32[1])) > 0.1;

                  if (v81)
                  {
                    *(v229.receiver + (v69 >> 6)) |= 1 << v69;
                  }
                }

                else
                {
                }
              }

              ++v69;
            }

            while (v62 != v69);
          }

          *(v229.receiver + v65) |= v66;
          objc_msgSend_addObject_(v221, v67, v68);
        }
      }

      while (v64 != v62);
    }

    if (v229.receiver)
    {
      operator delete(v229.receiver);
    }

    v53 = v212 + 1;
    v51 = v207;
  }

  while (v212 != 3);

  v82 = *(v228 + 1368);
  *(v228 + 1368) = v221;

  v83 = *(v228 + 1368);
  v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = 0;
  v87 = MEMORY[0x277D85DD0];
  do
  {
    v88 = *(*(v228 + 1424) + 4 * v86);
    __p = v87;
    v235 = 3221225472;
    v236 = sub_26220F50C;
    v237 = &unk_279B305F8;
    v239 = v88;
    v238 = v86;
    v89 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v84, &__p);
    v91 = objc_msgSend_filteredArrayUsingPredicate_(v83, v90, v89);

    for (m = 0; m < objc_msgSend_count(v91, v92, v93); ++m)
    {
      v96 = objc_msgSend_objectAtIndexedSubscript_(v91, v95, m);
      objc_msgSend_addObject_(v85, v97, v96);
    }

    ++v86;
  }

  while (v86 != 4);

  v98 = *(v228 + 1368);
  *(v228 + 1368) = v85;

  v99 = *(v228 + 1368);
  v229 = 0;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v100 = v99;
  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v229, &__p, 16);
  if (v103)
  {
    v104 = *v230;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      for (n = 0; n != v103; ++n)
      {
        if (*v230 != v104)
        {
          objc_enumerationMutation(v100);
        }

        v107 = *(v229.super_class + n);
        if (v107)
        {
          v108 = *(v107 + 24);
          v109 = vcvt_f32_f64(vbicq_s8(v108, vcltzq_f64(v108)));
          *(v107 + 24) = vcvtq_f64_f32(v109);
          *&v108.f64[0] = vcvt_f32_f64(vaddq_f64(*(v107 + 40), v108));
          *(v107 + 40) = vcvtq_f64_f32(vsub_f32(vbsl_s8(vcgt_f32(*&v108.f64[0], _D8), _D8, *&v108.f64[0]), v109));
        }
      }

      v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v102, &v229, &__p, 16);
    }

    while (v103);
  }

  v110 = *(v228 + 1368);
  *(v228 + 1368) = v100;

  v111 = *(v228 + 1432);
  v112 = *(v228 + 1368);
  if (v111 == 1)
  {
    v114 = v112;
    v115 = objc_msgSend_sortedArrayUsingComparator_(v112, v113, &unk_2874EE2E0);
    v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v119 = objc_msgSend_count(v115, v117, v118);
    LOBYTE(v229.receiver) = 1;
    sub_26220F1D4(&__p, v119);
    v122 = 0;
    v123 = 1;
    while (v122 < objc_msgSend_count(v115, v120, v121))
    {
      if ((*(__p + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v122))
      {
        v124 = objc_msgSend_objectAtIndexedSubscript_(v115, v120, v122);
        if (v124)
        {
          v126 = v124[3];
          v125 = v124[4];
          v127 = v124[5];
          v128 = v124[6];
        }

        else
        {
          v125 = 0.0;
          v127 = 0.0;
          v128 = 0.0;
          v126 = 0.0;
        }

        for (ii = v123; ii < objc_msgSend_count(v115, v120, v121); ++ii)
        {
          if ((*(__p + (ii >> 6)) & (1 << ii)) != 0)
          {
            v130 = objc_msgSend_objectAtIndexedSubscript_(v115, v120, ii);
            if (v130)
            {
              v132 = v130[3];
              v131 = v130[4];
              v133 = v130[5];
              v134 = v130[6];
            }

            else
            {
              v131 = 0.0;
              v133 = 0.0;
              v134 = 0.0;
              v132 = 0.0;
            }

            v242.origin.x = v126;
            v242.origin.y = v125;
            v242.size.width = v127;
            v242.size.height = v128;
            v248.origin.x = v132;
            v248.origin.y = v131;
            v248.size.width = v133;
            v248.size.height = v134;
            v243 = CGRectIntersection(v242, v248);
            v243.origin.y = v125;
            v243.origin.x = v126;
            v249.origin.y = v131;
            width = v243.size.width;
            v243.size.width = v127;
            v249.size.width = v133;
            height = v243.size.height;
            v243.size.height = v128;
            v249.origin.x = v132;
            v249.size.height = v134;
            v244 = CGRectUnion(v243, v249);
            *&v244.origin.x = height * width / (v244.size.height * v244.size.width);
            if (*&v244.origin.x >= 0.5)
            {
              *(__p + (ii >> 6)) &= ~(1 << ii);
            }
          }
        }
      }

      ++v122;
      ++v123;
    }

    for (jj = 0; ; ++jj)
    {
      v185 = objc_msgSend_count(v115, v120, v121);
      v186 = __p;
      if (jj >= v185)
      {
        break;
      }

      if ((*(__p + ((jj >> 3) & 0x1FFFFFFFFFFFFFF8)) >> jj))
      {
        v187 = objc_msgSend_objectAtIndexedSubscript_(v115, v120, jj);
        objc_msgSend_addObject_(v116, v188, v187);
      }
    }
  }

  else
  {
    v114 = v112;
    v115 = objc_msgSend_sortedArrayUsingComparator_(v112, v113, &unk_2874EE300);
    v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v139 = objc_msgSend_count(v115, v137, v138);
    LOBYTE(v229.receiver) = 1;
    sub_26220F1D4(&__p, v139);
    for (kk = 0; kk < objc_msgSend_count(v115, v140, v141); ++kk)
    {
      if ((*(__p + ((kk >> 3) & 0x1FFFFFFFFFFFFFF8)) >> kk))
      {
        v143 = objc_msgSend_objectAtIndexedSubscript_(v115, v140, kk);
        if (v143)
        {
          v144 = *(v143 + 24);
          v145 = *(v143 + 32);
          v146 = *(v143 + 40);
          v227 = *(v143 + 48);
        }

        else
        {
          v146 = 0.0;
          v227 = 0.0;
          v145 = 0.0;
          v144 = 0.0;
        }

        v218 = v146;
        v147 = kk;
        while (2)
        {

          v222 = v144;
          do
          {
            while (1)
            {
              do
              {
                if (++v147 >= objc_msgSend_count(v115, v140, v141))
                {
                  goto LABEL_122;
                }
              }

              while ((*(__p + (v147 >> 6)) & (1 << v147)) == 0);
              v148 = objc_msgSend_objectAtIndexedSubscript_(v115, v140, v147);
              if (v148)
              {
                v149 = *(v148 + 24);
                v150 = *(v148 + 32);
                v151 = *(v148 + 40);
                v152 = *(v148 + 48);
              }

              else
              {
                v150 = 0.0;
                v151 = 0.0;
                v152 = 0.0;
                v149 = 0.0;
              }

              v245.origin.x = v222;
              v245.origin.y = v145;
              v245.size.width = v218;
              v245.size.height = v227;
              v250.origin.x = v149;
              v250.origin.y = v150;
              v250.size.width = v151;
              v250.size.height = v152;
              v246 = CGRectIntersection(v245, v250);
              v246.origin.x = v222;
              v251.size.width = v151;
              v153 = v246.size.width;
              v154 = v246.size.height;
              v251.origin.x = v149;
              v155 = v145;
              v246.origin.y = v145;
              v246.size.width = v218;
              v246.size.height = v227;
              x = v251.origin.x;
              v251.origin.y = v150;
              v157 = v251.size.width;
              v251.size.height = v152;
              v247 = CGRectUnion(v246, v251);
              v158 = v154 * v153 / (v247.size.height * v247.size.width);
              if (v158 < 0.5)
              {
                break;
              }

              *(__p + (v147 >> 6)) &= ~(1 << v147);
            }
          }

          while (v158 <= 0.0);
          v159 = v145;
          v160 = v159;
          v161 = v155 + v227;
          v162 = v150;
          v163 = v150 + v152;
          v164 = v222;
          v165 = v222 + v218;
          v166 = x;
          v167 = x + v157;
          v168 = v165;
          v169 = v162;
          v170 = v167;
          v171 = vabds_f32(v162, v161);
          v172 = v163;
          v173 = vabds_f32(v163, v160);
          if (v160 >= v169)
          {
            v171 = v173;
          }

          v174 = vabds_f32(v166, v165);
          v175 = vabds_f32(v170, v164);
          if (v164 >= v166)
          {
            v174 = v175;
          }

          v215 = v172;
          if (v171 <= 0.04464 || v174 <= 0.04464)
          {
            v176 = v153 / v247.size.width;
            v177 = v154 / v247.size.height;
            if ((v176 - v177) > 0.3 && v171 <= 0.04464)
            {
              goto LABEL_112;
            }

            if ((v177 - v176) > 0.3 && v174 <= 0.04464)
            {
              if (v164 >= v166)
              {
                if (v166 < v164)
                {
                  v170 = (v164 + v170) * 0.5;
                  v164 = v170;
                }
              }

              else
              {
                v166 = (v166 + v165) * 0.5;
                v168 = v166;
              }

              goto LABEL_118;
            }

            if (v171 <= 0.04464)
            {
LABEL_112:
              if (v160 >= v169)
              {
                if (v169 < v160)
                {
                  v160 = (v160 + v172) * 0.5;
                  v215 = v160;
                }
              }

              else
              {
                v169 = (v169 + v161) * 0.5;
                v161 = v169;
              }
            }
          }

LABEL_118:
          v178 = v161;
          v179 = objc_msgSend_objectAtIndexedSubscript_(v115, v140, kk);
          v144 = v164;
          v180 = v160;
          v145 = v160;
          v227 = (v178 - v180);
          if (v179)
          {
            v179[3] = v144;
            v179[4] = v145;
            v179[5] = (v168 - v164);
            v179[6] = v227;
          }

          v218 = (v168 - v164);

          v143 = objc_msgSend_objectAtIndexedSubscript_(v115, v181, v147);
          if (v143)
          {
            *&v182 = v166;
            *&v183 = (v170 - v166);
            *(&v182 + 1) = v169;
            *(&v183 + 1) = (v215 - v169);
            *(v143 + 24) = v182;
            *(v143 + 40) = v183;
          }

          continue;
        }
      }

LABEL_122:
      ;
    }

    for (mm = 0; ; ++mm)
    {
      v190 = objc_msgSend_count(v115, v140, v141);
      v186 = __p;
      if (mm >= v190)
      {
        break;
      }

      if ((*(__p + ((mm >> 3) & 0x1FFFFFFFFFFFFFF8)) >> mm))
      {
        v191 = objc_msgSend_objectAtIndexedSubscript_(v115, v140, mm);
        objc_msgSend_addObject_(v116, v192, v191);
      }
    }
  }

  if (v186)
  {
    operator delete(v186);
  }

  v193 = *(v228 + 1368);
  *(v228 + 1368) = v116;

  v194 = *MEMORY[0x277D85DE8];

  objc_autoreleasePoolPop(context);
}

uint64_t sub_26220E350(uint64_t result, float32x4_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].f32[0] < v8->f32[0])
        {
          v67 = *v8;
          goto LABEL_108;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v70 = *v8;
      v71 = v8[1];
      v72 = v8[2];
      v73 = vmovn_s32(vcgtq_f32(v71, v72)).u8[0];
      if (vmovn_s32(vcgtq_f32(*v8, v71)).u8[0])
      {
        v74 = *v8;
        if (v73)
        {
          *v8 = v8[2];
          goto LABEL_184;
        }

        *v8 = v8[1];
        v8[1] = v74;
        if (v72.f32[0] < v74.f32[0])
        {
          v8[1] = v8[2];
LABEL_184:
          v8[2] = v74;
          v72.i32[0] = v74.i32[0];
        }
      }

      else if (v73)
      {
        v72 = v8[1];
        v114 = v8[2];
        v8[1] = v114;
        v8[2] = v72;
        if (v114.f32[0] < v70.f32[0])
        {
          v115 = *v8;
          *v8 = v114;
          v8[1] = v115;
        }
      }

      if (a2[-1].f32[0] >= v72.f32[0])
      {
        return result;
      }

      v122 = v8[2];
      v8[2] = a2[-1];
      a2[-1] = v122;
      if (v8[2].f32[0] >= v8[1].f32[0])
      {
        return result;
      }

      v124 = v8[1];
      v123 = v8[2];
      goto LABEL_198;
    }

    if (v9 == 5)
    {
      v62 = *v8;
      v63 = v8[1];
      v64 = v8[2];
      v65 = vmovn_s32(vcgtq_f32(v63, v64)).u8[0];
      if (vmovn_s32(vcgtq_f32(*v8, v63)).u8[0])
      {
        v66 = *v8;
        if (v65)
        {
          v62 = v8[2];
          *v8 = v62;
          goto LABEL_179;
        }

        v62 = v8[1];
        *v8 = v62;
        v8[1] = v66;
        if (v64.f32[0] < v66.f32[0])
        {
          v63 = v8[2];
          v8[1] = v63;
LABEL_179:
          v8[2] = v66;
LABEL_190:
          v125 = v8[3];
          if (vmovn_s32(vcgtq_f32(v66, v125)).u8[0])
          {
            v125 = v8[2];
            v126 = v8[3];
            v8[2] = v126;
            v8[3] = v125;
            if (v126.f32[0] < v63.f32[0])
            {
              v127 = v8[1];
              v8[1] = v126;
              v8[2] = v127;
              if (v126.f32[0] < v62.f32[0])
              {
                v128 = *v8;
                *v8 = v126;
                v8[1] = v128;
              }
            }
          }

          if (a2[-1].f32[0] >= v125.f32[0])
          {
            return result;
          }

          v129 = v8[3];
          v8[3] = a2[-1];
          a2[-1] = v129;
          if (v8[3].f32[0] >= v8[2].f32[0])
          {
            return result;
          }

          v130 = v8[2];
          v123 = v8[3];
          v8[2] = v123;
          v8[3] = v130;
          if (v123.f32[0] >= v8[1].f32[0])
          {
            return result;
          }

          v124 = v8[1];
LABEL_198:
          v8[1] = v123;
          v8[2] = v124;
          if (v123.f32[0] < v8->f32[0])
          {
            v131 = *v8;
            *v8 = v123;
            v8[1] = v131;
          }

          return result;
        }

        v63.i32[0] = v66.i32[0];
      }

      else if (v65)
      {
        v66 = v8[1];
        v63 = v8[2];
        v8[1] = v63;
        v8[2] = v66;
        if (v63.f32[0] < v62.f32[0])
        {
          v111 = *v8;
          *v8 = v63;
          v8[1] = v111;
          v62.i32[0] = v63.i32[0];
          v63.i32[0] = v111.i32[0];
        }

        goto LABEL_190;
      }

      v66 = v64;
      goto LABEL_190;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v75 = v8 + 1;
      v77 = v8 == a2 || v75 == a2;
      if (a4)
      {
        if (!v77)
        {
          v78 = 0;
          v79 = v8;
          do
          {
            v80 = v79[4];
            v81 = *v79;
            v79 = v75;
            if (v80 < v81)
            {
              v82 = *v75;
              v83 = v78;
              while (1)
              {
                *(v8 + v83 + 16) = *(v8 + v83);
                if (!v83)
                {
                  break;
                }

                v84 = *(v8[-1].f32 + v83);
                v83 -= 16;
                if (v82.f32[0] >= v84)
                {
                  v85 = (v8 + v83 + 16);
                  goto LABEL_128;
                }
              }

              v85 = v8;
LABEL_128:
              *v85 = v82;
            }

            v75 = (v79 + 4);
            v78 += 16;
          }

          while (v79 + 4 != a2);
        }
      }

      else if (!v77)
      {
        do
        {
          v116 = v7[4];
          v117 = *v7;
          v7 = v75;
          if (v116 < v117)
          {
            v118 = *v75;
            v119 = v75;
            do
            {
              v120 = v119;
              v121 = v119[-1];
              --v119;
              *v120 = v121;
            }

            while (v118.f32[0] < *(v120 - 8));
            *v119 = v118;
          }

          v75 = (v7 + 4);
        }

        while (v7 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v86 = (v9 - 2) >> 1;
      v87 = v86;
      do
      {
        v88 = v87;
        if (v86 >= v87)
        {
          v89 = (2 * v87) | 1;
          f32 = v8[v89].f32;
          if (2 * v88 + 2 < v9 && *f32 < COERCE_FLOAT(f32[1]))
          {
            ++f32;
            v89 = 2 * v88 + 2;
          }

          v91 = v8[v88].f32;
          if (*f32 >= *v91)
          {
            v92 = *v91;
            do
            {
              v93 = v91;
              v91 = f32;
              *v93 = *f32;
              if (v86 < v89)
              {
                break;
              }

              v94 = 2 * v89;
              v89 = (2 * v89) | 1;
              f32 = v8[v89].f32;
              v95 = v94 + 2;
              if (v95 < v9 && *f32 < COERCE_FLOAT(f32[1]))
              {
                ++f32;
                v89 = v95;
              }
            }

            while (*f32 >= *&v92);
            *v91 = v92;
          }
        }

        v87 = v88 - 1;
      }

      while (v88);
      while (2)
      {
        v96 = 0;
        v97 = *v8;
        v98 = v8;
        do
        {
          v99 = v98;
          v100 = &v98[v96];
          v98 = v100 + 1;
          v101 = 2 * v96;
          v96 = (2 * v96) | 1;
          v102 = v101 + 2;
          if (v102 < v9)
          {
            v104 = v100[2];
            v103 = v100 + 2;
            if (v103[-1].f32[0] < v104.f32[0])
            {
              v98 = v103;
              v96 = v102;
            }
          }

          *v99 = *v98;
        }

        while (v96 <= ((v9 - 2) >> 1));
        if (v98 == --a2)
        {
LABEL_157:
          *v98 = v97;
        }

        else
        {
          *v98 = *a2;
          *a2 = v97;
          v105 = (v98 - v8 + 16) >> 4;
          v106 = v105 < 2;
          v107 = v105 - 2;
          if (!v106)
          {
            v108 = v107 >> 1;
            v109 = &v8[v108];
            if (v109->f32[0] < v98->f32[0])
            {
              v97 = *v98;
              do
              {
                v110 = v98;
                v98 = v109;
                *v110 = *v109;
                if (!v108)
                {
                  break;
                }

                v108 = (v108 - 1) >> 1;
                v109 = &v8[v108];
              }

              while (v109->f32[0] < v97.f32[0]);
              goto LABEL_157;
            }
          }
        }

        v106 = v9-- <= 2;
        if (v106)
        {
          return result;
        }

        continue;
      }
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = a2[-1];
    if (v9 >= 0x81)
    {
      v13 = vmovn_s32(vcgtq_f32(*v10, v12)).u8[0];
      if (COERCE_FLOAT(*v10) >= v8->f32[0])
      {
        if (v13)
        {
          v17 = *v10;
          *v10 = a2[-1];
          a2[-1] = v17;
          if (v10->f32[0] < v8->f32[0])
          {
            v18 = *v8;
            *v8 = *v10;
            *v10 = v18;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v13)
        {
          *v8 = a2[-1];
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        if (a2[-1].f32[0] < v14.f32[0])
        {
          *v10 = a2[-1];
LABEL_27:
          a2[-1] = v14;
        }
      }

      v21 = v10 - 1;
      v22 = v10[-1];
      v23 = a2[-2].f32[0];
      if (v22.f32[0] >= v8[1].f32[0])
      {
        if (v23 < v22.f32[0])
        {
          v25 = *v21;
          *v21 = a2[-2];
          a2[-2] = v25;
          if (v21->f32[0] < v8[1].f32[0])
          {
            v26 = v8[1];
            v8[1] = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = v8[1];
        if (v23 < v22.f32[0])
        {
          v8[1] = a2[-2];
          goto LABEL_39;
        }

        v8[1] = *v21;
        *v21 = v24;
        if (a2[-2].f32[0] < v24.f32[0])
        {
          *v21 = a2[-2];
LABEL_39:
          a2[-2] = v24;
        }
      }

      v28 = v10[1];
      v27 = v10 + 1;
      v29 = v28.f32[0];
      v30 = a2[-3].f32[0];
      if (v28.f32[0] >= v8[2].f32[0])
      {
        if (v30 < v29)
        {
          v32 = *v27;
          *v27 = a2[-3];
          a2[-3] = v32;
          if (v27->f32[0] < v8[2].f32[0])
          {
            v33 = v8[2];
            v8[2] = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        v31 = v8[2];
        if (v30 < v29)
        {
          v8[2] = a2[-3];
          goto LABEL_48;
        }

        v8[2] = *v27;
        *v27 = v31;
        if (a2[-3].f32[0] < v31.f32[0])
        {
          *v27 = a2[-3];
LABEL_48:
          a2[-3] = v31;
        }
      }

      v34 = *v21;
      v35 = *v27;
      v36 = vmovn_s32(vcgtq_f32(*v11, *v27)).u8[0];
      if (vmovn_s32(vcgtq_f32(*v21, *v11)).u8[0])
      {
        v37 = *v21;
        if (v36)
        {
          *v21 = *v27;
          *v27 = v37;
          v37 = *v11;
        }

        else
        {
          *v21 = *v11;
          *v11 = v37;
          if (v35.f32[0] < v37.f32[0])
          {
            v39 = *v27;
            *v11 = *v27;
            *v27 = v37;
            v37 = v39;
          }
        }
      }

      else
      {
        v37 = *v11;
        if (v36)
        {
          v38 = *v27;
          *v11 = *v27;
          *v27 = v37;
          if (v38.f32[0] >= v34.f32[0])
          {
            v37 = v38;
          }

          else
          {
            v37 = *v21;
            *v21 = v38;
            *v11 = v37;
          }
        }
      }

      v40 = *v8;
      *v8 = v37;
      *v11 = v40;
      goto LABEL_59;
    }

    v15 = vmovn_s32(vcgtq_f32(*v8, v12)).u8[0];
    if (COERCE_FLOAT(*v8) >= v10->f32[0])
    {
      if (v15)
      {
        v19 = *v8;
        *v8 = a2[-1];
        a2[-1] = v19;
        if (v8->f32[0] < v10->f32[0])
        {
          v20 = *v10;
          *v10 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_59;
    }

    v16 = *v10;
    if (v15)
    {
      *v10 = a2[-1];
LABEL_36:
      a2[-1] = v16;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v16;
    if (a2[-1].f32[0] < v16.f32[0])
    {
      *v8 = a2[-1];
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v41 = *v8;
LABEL_62:
      v42 = v8;
      do
      {
        v43 = v42;
        v44 = v42[1];
        ++v42;
      }

      while (v44.f32[0] < v41.f32[0]);
      v45 = a2;
      if (v43 == v8)
      {
        v45 = a2;
        do
        {
          if (v42 >= v45)
          {
            break;
          }

          v47 = v45[-1];
          --v45;
        }

        while (v47.f32[0] >= v41.f32[0]);
      }

      else
      {
        do
        {
          v46 = v45[-1];
          --v45;
        }

        while (v46.f32[0] >= v41.f32[0]);
      }

      if (v42 < v45)
      {
        v48 = v42;
        v49 = v45;
        do
        {
          v50 = *v48;
          *v48 = *v49;
          *v49 = v50;
          do
          {
            v43 = v48;
            v51 = v48[1];
            ++v48;
          }

          while (v51.f32[0] < v41.f32[0]);
          do
          {
            v52 = v49[-1];
            --v49;
          }

          while (v52.f32[0] >= v41.f32[0]);
        }

        while (v48 < v49);
      }

      if (v43 != v8)
      {
        *v8 = *v43;
      }

      *v43 = v41;
      if (v42 < v45)
      {
        goto LABEL_81;
      }

      v53 = sub_26220EE1C(v8, v43);
      v8 = v43 + 1;
      result = sub_26220EE1C(v43 + 1, a2);
      if (result)
      {
        a2 = v43;
        if (v53)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v53)
      {
LABEL_81:
        result = sub_26220E350(v7, v43, a3, a4 & 1);
        a4 = 0;
        v8 = v43 + 1;
      }
    }

    else
    {
      v41 = *v8;
      if (v8[-1].f32[0] < COERCE_FLOAT(*v8))
      {
        goto LABEL_62;
      }

      if (v41.f32[0] >= a2[-1].f32[0])
      {
        v55 = v8 + 1;
        do
        {
          v8 = v55;
          if (v55 >= a2)
          {
            break;
          }

          ++v55;
        }

        while (v41.f32[0] >= COERCE_FLOAT(*v8));
      }

      else
      {
        do
        {
          v54 = v8[1];
          ++v8;
        }

        while (v41.f32[0] >= v54.f32[0]);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v56 = a2;
        do
        {
          v57 = v56[-1];
          --v56;
        }

        while (v41.f32[0] < v57.f32[0]);
      }

      while (v8 < v56)
      {
        v58 = *v8;
        *v8 = *v56;
        *v56 = v58;
        do
        {
          v59 = v8[1];
          ++v8;
        }

        while (v41.f32[0] >= v59.f32[0]);
        do
        {
          v60 = v56[-1];
          --v56;
        }

        while (v41.f32[0] < v60.f32[0]);
      }

      v61 = v8 - 1;
      if (&v8[-1] != v7)
      {
        *v7 = *v61;
      }

      a4 = 0;
      *v61 = v41;
    }
  }

  v68 = v8[1].f32[0];
  v69 = a2[-1].f32[0];
  if (v68 < v8->f32[0])
  {
    v67 = *v8;
    if (v69 >= v68)
    {
      *v8 = v8[1];
      v8[1] = v67;
      if (a2[-1].f32[0] >= v67.f32[0])
      {
        return result;
      }

      v8[1] = a2[-1];
    }

    else
    {
LABEL_108:
      *v8 = a2[-1];
    }

    a2[-1] = v67;
    return result;
  }

  if (v69 < v68)
  {
    v112 = v8[1];
    v8[1] = a2[-1];
    a2[-1] = v112;
    if (v8[1].f32[0] < v8->f32[0])
    {
      v113 = *v8;
      *v8 = v8[1];
      v8[1] = v113;
    }
  }

  return result;
}

void *sub_26220EDA4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621C8EEC(result, a2);
  }

  return result;
}

void sub_26220EE00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_26220EE1C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v9 = a1[1].f32[0];
      v10 = a2[-1].f32[0];
      if (v9 >= a1->f32[0])
      {
        if (v10 < v9)
        {
          v22 = a1[1];
          a1[1] = a2[-1];
          a2[-1] = v22;
          if (a1[1].f32[0] < a1->f32[0])
          {
            v23 = *a1;
            *a1 = a1[1];
            a1[1] = v23;
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v10 >= v9)
      {
        *a1 = a1[1];
        a1[1] = v3;
        if (a2[-1].f32[0] >= v3.f32[0])
        {
          return 1;
        }

        a1[1] = a2[-1];
        goto LABEL_15;
      }

LABEL_14:
      *a1 = a2[-1];
LABEL_15:
      a2[-1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      v7 = vmovn_s32(vcgtq_f32(v5, v6)).u8[0];
      if (vmovn_s32(vcgtq_f32(*a1, v5)).u8[0])
      {
        v8 = *a1;
        if (v7)
        {
          v4 = a1[2];
          *a1 = v4;
LABEL_52:
          a1[2] = v8;
          goto LABEL_62;
        }

        v4 = a1[1];
        *a1 = v4;
        a1[1] = v8;
        if (v6.f32[0] < v8.f32[0])
        {
          v5 = a1[2];
          a1[1] = v5;
          goto LABEL_52;
        }

        v5.i32[0] = v8.i32[0];
      }

      else if (v7)
      {
        v8 = a1[1];
        v5 = a1[2];
        a1[1] = v5;
        a1[2] = v8;
        if (v5.f32[0] < v4.f32[0])
        {
          v27 = *a1;
          *a1 = v5;
          a1[1] = v27;
          v4.i32[0] = v5.i32[0];
          v5.i32[0] = v27.i32[0];
        }

        goto LABEL_62;
      }

      v8 = v6;
LABEL_62:
      v41 = a1[3];
      if (vmovn_s32(vcgtq_f32(v8, v41)).u8[0])
      {
        v41 = a1[2];
        v42 = a1[3];
        a1[2] = v42;
        a1[3] = v41;
        if (v42.f32[0] < v5.f32[0])
        {
          v43 = a1[1];
          a1[1] = v42;
          a1[2] = v43;
          if (v42.f32[0] < v4.f32[0])
          {
            v44 = *a1;
            *a1 = v42;
            a1[1] = v44;
          }
        }
      }

      if (a2[-1].f32[0] >= v41.f32[0])
      {
        return 1;
      }

      v45 = a1[3];
      a1[3] = a2[-1];
      a2[-1] = v45;
      if (a1[3].f32[0] >= a1[2].f32[0])
      {
        return 1;
      }

      v46 = a1[2];
      v38 = a1[3];
      a1[2] = v38;
      a1[3] = v46;
      if (v38.f32[0] >= a1[1].f32[0])
      {
        return 1;
      }

      v39 = a1[1];
      goto LABEL_70;
    }

    v17 = *a1;
    v18 = a1[1];
    v19 = a1[2];
    v20 = vmovn_s32(vcgtq_f32(v18, v19)).u8[0];
    if ((vmovn_s32(vcgtq_f32(*a1, v18)).u8[0] & 1) == 0)
    {
      if (v20)
      {
        v19 = a1[1];
        v28 = a1[2];
        a1[1] = v28;
        a1[2] = v19;
        if (v28.f32[0] < v17.f32[0])
        {
          v29 = *a1;
          *a1 = v28;
          a1[1] = v29;
        }
      }

      goto LABEL_56;
    }

    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v21;
      if (v19.f32[0] >= v21.f32[0])
      {
        goto LABEL_56;
      }

      a1[1] = a1[2];
    }

    a1[2] = v21;
    v19.i32[0] = v21.i32[0];
LABEL_56:
    if (a2[-1].f32[0] >= v19.f32[0])
    {
      return 1;
    }

    v37 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v37;
    if (a1[2].f32[0] >= a1[1].f32[0])
    {
      return 1;
    }

    v39 = a1[1];
    v38 = a1[2];
LABEL_70:
    a1[1] = v38;
    a1[2] = v39;
    if (v38.f32[0] < a1->f32[0])
    {
      v47 = *a1;
      *a1 = v38;
      a1[1] = v47;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].f32[0] < a1->f32[0])
    {
      v3 = *a1;
      goto LABEL_14;
    }

    return 1;
  }

LABEL_16:
  f32 = a1[2].f32;
  v12 = a1[2];
  v13 = *a1;
  v14 = a1[1];
  v15 = vmovn_s32(vcgtq_f32(v14, v12)).u8[0];
  if (vmovn_s32(vcgtq_f32(*a1, v14)).u8[0])
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if (v12.f32[0] >= v16.f32[0])
      {
        goto LABEL_39;
      }

      a1[1] = a1[2];
    }

    a1[2] = v16;
  }

  else if (v15)
  {
    v25 = a1[1];
    v24 = a1[2];
    a1[1] = v24;
    a1[2] = v25;
    if (v24.f32[0] < v13.f32[0])
    {
      v26 = *a1;
      *a1 = v24;
      a1[1] = v26;
    }
  }

LABEL_39:
  v30 = a1[3].f32;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    if (*v30 < *f32)
    {
      v33 = *v30;
      v34 = v31;
      while (1)
      {
        *(a1 + v34 + 48) = *(a1 + v34 + 32);
        if (v34 == -32)
        {
          break;
        }

        v35 = *(a1[1].f32 + v34);
        v34 -= 16;
        if (v33.f32[0] >= v35)
        {
          v36 = (a1 + v34 + 48);
          goto LABEL_47;
        }
      }

      v36 = a1;
LABEL_47:
      *v36 = v33;
      if (++v32 == 8)
      {
        return v30 + 4 == a2;
      }
    }

    f32 = v30;
    v31 += 16;
    v30 += 4;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

void *sub_26220F1D4(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621DC9F8(result, a2);
  }

  return result;
}

void *sub_26220F2A8(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_26220F35C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_26220F40C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v7 = v4[3];
  }

  if (v5)
  {
    v6 = v5[3];
  }

  if (v7 <= v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    if (v4)
    {
      v10 = v4[3];
    }

    if (v5)
    {
      v9 = v5[3];
    }

    v8 = v10 < v9;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

uint64_t sub_26220F48C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v7 = v4[3];
  }

  if (v5)
  {
    v6 = v5[3];
  }

  if (v7 <= v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    if (v4)
    {
      v10 = v4[3];
    }

    if (v5)
    {
      v9 = v5[3];
    }

    v8 = v10 < v9;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

BOOL sub_26220F50C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if (*(a1 + 40) > 0.0)
    {
      goto LABEL_3;
    }

    v5 = 0;
LABEL_5:
    v4 = *(a1 + 32) + 1 == v5;
    goto LABEL_6;
  }

  if (v3[3] >= *(a1 + 40))
  {
    v5 = *(v3 + 5);
    goto LABEL_5;
  }

LABEL_3:
  v4 = 0;
LABEL_6:

  return v4;
}

BOOL sub_26220F57C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 20);
  }

  else
  {
    v2 = 0;
  }

  return *(a1 + 32) + 1 == v2;
}

void *sub_26220F5A0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_2621CBEC8(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

float32x2_t sub_26220F644(void *a1, float32x4_t *a2)
{
  v3 = vsubq_f32(*a2, a2[3]);
  v4 = vsubq_f32(*a2, a2[1]);
  v12 = vmulq_f32(v4, v4);
  v13 = vmulq_f32(v3, v3);
  v5 = vsubq_f32(*a2, a2[4]);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(vaddq_f32(*a2, a2[6]), v6);
  v8 = atan2f(v4.f32[0], v4.f32[1]);
  sub_2621CD1D8(a1, 7uLL);
  v9 = *a1;
  *(*a1 + 8) = v11.i32[2];
  *v9 = v11.i64[0];
  result = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v12.i8), vzip2_s32(*v13.i8, *v12.i8))));
  *(v9 + 12) = result;
  *(v9 + 20) = v7;
  *(v9 + 24) = v8;
  return result;
}

void sub_26220F71C(_OWORD *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v9 = a1[4];
  v10 = v1;
  v2 = a1[7];
  v11 = a1[6];
  v12 = v2;
  v3 = a1[1];
  *__A = *a1;
  v6 = v3;
  v4 = a1[3];
  v7 = a1[2];
  v8 = v4;
  operator new();
}

void sub_26220F97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26220F9CC(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_26220FA14(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *a3;
  v8 = vsubq_f32(*a2, *a3);
  v9 = vmulq_f32(v8, v8);
  if (sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)) <= 0.00001)
  {
    v62 = 1;
    do
    {
      if (v62 == 8)
      {
        goto LABEL_45;
      }

      v63 = v62;
      v64 = vsubq_f32(a2[v62], *(a3 + 16 * v62));
      v65 = vmulq_f32(v64, v64);
      ++v62;
    }

    while (sqrtf(v65.f32[2] + vaddv_f32(*v65.f32)) <= 0.00001);
    if ((v63 - 1) >= 7)
    {
LABEL_45:
      __asm { FMOV            V8.2S, #1.0 }

      *a1 = _D8;
      sub_26220F71C(a2);
    }
  }

  v10 = a2[2];
  v6.i64[1] = a2[1].i64[0];
  v10.i64[1] = a2[3].i64[0];
  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  v7.i64[1] = *(a3 + 16);
  v95[0] = v6;
  v95[1] = v10;
  v13 = *(a3 + 48);
  v12.i64[1] = *(a3 + 48);
  v94[0] = v7;
  v94[1] = v12;
  sub_2622FF200(&v79, v95, 4uLL);
  sub_2622FF200(&v77, v94, 4uLL);
  v85 = 0;
  v86 = &v85;
  v87 = 0x4812000000;
  v88 = sub_2622FF294;
  v89 = sub_2622FF2B8;
  v90 = &unk_2623CEF47;
  v92 = 0;
  v93 = 0;
  __p = 0;
  sub_2621CC8B4(&__p, v79, v80, (v80 - v79) >> 3);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v82 = sub_2622FF2D0;
  v83 = &unk_279B308A0;
  v84 = &v85;
  v14 = v78 - v77;
  if (v78 != v77)
  {
    v15 = 0;
    v16 = v14 >> 3;
    if ((v14 >> 3) <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 >> 3;
    }

    v18 = 1;
    do
    {
      v82(v81, *(v77 + v15++), *(v77 + v18));
      v18 = (v18 + 1) % v16;
    }

    while (v17 != v15);
  }

  sub_2622FF200(&v75, v86[6], (v86[7] - v86[6]) >> 3);
  _Block_object_dispose(&v85, 8);
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  v19 = 0.0;
  v20 = 0.0;
  v21 = (v80 - v79) >> 3;
  if (v80 != v79)
  {
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v80 - v79) >> 3;
    }

    v23 = 1;
    v24 = v79;
    do
    {
      v25 = *v24++;
      v20 = (v20 + (*&v25 * COERCE_FLOAT(HIDWORD(*(v79 + v23))))) - (COERCE_FLOAT(*(v79 + v23)) * *(&v25 + 1));
      v23 = (v23 + 1) % v21;
      --v22;
    }

    while (v22);
  }

  v26 = fabsf(v20);
  v27 = v77;
  v28 = (v78 - v77) >> 3;
  if (v78 != v77)
  {
    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = (v78 - v77) >> 3;
    }

    v19 = 0.0;
    v30 = 1;
    v31 = v77;
    do
    {
      v32 = *v31++;
      v19 = (v19 + (*&v32 * COERCE_FLOAT(HIDWORD(*(v77 + v30))))) - (COERCE_FLOAT(*(v77 + v30)) * *(&v32 + 1));
      v30 = (v30 + 1) % v28;
      --v29;
    }

    while (v29);
  }

  v33 = v26 * 0.5;
  v34 = fabsf(v19) * 0.5;
  v35 = v75;
  v36 = 0.0;
  v37 = 0.0;
  if (v76 != v75)
  {
    v38 = (v76 - v75) >> 3;
    if (v38 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = (v76 - v75) >> 3;
    }

    v40 = 1;
    v41 = v75;
    do
    {
      v42 = *v41++;
      v37 = (v37 + (*&v42 * COERCE_FLOAT(HIDWORD(*&v75[8 * v40])))) - (COERCE_FLOAT(*&v75[8 * v40]) * *(&v42 + 1));
      v40 = (v40 + 1) % v38;
      --v39;
    }

    while (v39);
  }

  v43 = fabsf(v37) * 0.5;
  v44 = (v33 + v34) - v43;
  v45 = fminf(v33, v34);
  v46 = *(a3 + 8);
  v47 = *(a3 + 72);
  v48 = fmax((fminf(a2[4].f32[2], v47) - fmaxf(a2->f32[2], v46)), 0.0);
  if (v80 != v79)
  {
    if (v21 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = (v80 - v79) >> 3;
    }

    v36 = 0.0;
    v50 = 1;
    v51 = v79;
    do
    {
      v52 = *v51++;
      v36 = (v36 + (*&v52 * COERCE_FLOAT(HIDWORD(*(v79 + v50))))) - (COERCE_FLOAT(*(v79 + v50)) * *(&v52 + 1));
      v50 = (v50 + 1) % v21;
      --v49;
    }

    while (v49);
  }

  v53 = v43 / v44;
  v54 = v43 * v48;
  v55 = fabsf(v36) * 0.5;
  v56 = v43 / v45;
  if (v78 == v77)
  {
    v58 = 0.0;
  }

  else
  {
    if (v28 <= 1)
    {
      v57 = 1;
    }

    else
    {
      v57 = (v78 - v77) >> 3;
    }

    v58 = 0.0;
    v59 = 1;
    v60 = v77;
    do
    {
      v61 = *v60++;
      v58 = (v58 + (*&v61 * COERCE_FLOAT(HIDWORD(*(v77 + v59))))) - (COERCE_FLOAT(*(v77 + v59)) * *(&v61 + 1));
      v59 = (v59 + 1) % v28;
      --v57;
    }

    while (v57);
  }

  v71 = v55 * vabds_f32(a2[4].f32[2], a2->f32[2]);
  v72 = (fabsf(v58) * 0.5) * vabds_f32(v47, v46);
  v73 = (v71 + v72) - v54;
  *a1 = v54 / v73;
  *(a1 + 4) = v54;
  *(a1 + 8) = v73;
  *(a1 + 12) = v54 / fminf(v71, v72);
  *(a1 + 16) = v53;
  *(a1 + 20) = v56;
  if (v35)
  {
    v76 = v35;
    operator delete(v35);
    v27 = v77;
  }

  if (v27)
  {
    v78 = v27;
    operator delete(v27);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  v74 = *MEMORY[0x277D85DE8];
}

void sub_26220FF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_26220FF88(uint64_t a1, float32x2_t **a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = vmul_f32((*a2)[2], 0x3F0000003F000000);
  v16 = (*a2)[1].f32[1] * 0.5;
  v5 = vneg_f32(v4);
  v17 = __PAIR64__(v5.u32[1], v4.u32[0]);
  v18 = v16;
  v19 = v5;
  v20 = -v16;
  v21 = v5;
  v22 = -v16;
  v23 = __PAIR64__(v5.u32[1], v4.u32[0]);
  v24 = v16;
  v25 = v4;
  v26 = v16;
  v5.i32[1] = v4.i32[1];
  v27 = v5;
  v28 = -v16;
  v29 = v5;
  v30 = -v16;
  v31 = v4;
  memset(v15, 0, sizeof(v15));
  sub_2621DC430(v15, &v16, &v32, 0x18uLL);
  v6 = v15[0];
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *a1 = *v6;
  *(a1 + 8) = *(v6 + 2);
  *(a1 + 16) = *(v6 + 12);
  *(a1 + 24) = *(v6 + 5);
  v7 = *(v6 + 3);
  *(a1 + 40) = *(v6 + 8);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(v6 + 36);
  *(a1 + 56) = *(v6 + 11);
  *(a1 + 64) = *(v6 + 6);
  *(a1 + 72) = *(v6 + 14);
  *(a1 + 80) = *(v6 + 60);
  *(a1 + 88) = *(v6 + 17);
  *(a1 + 104) = *(v6 + 20);
  *(a1 + 96) = *(v6 + 9);
  *(a1 + 120) = *(v6 + 23);
  *(a1 + 124) = 0;
  *(a1 + 112) = *(v6 + 84);
  v8 = *a2;
  v9 = __sincosf_stret(v8[3].f32[0]);
  v10 = 0;
  v11.i64[1] = 0;
  v11.i32[0] = HIDWORD(v9);
  v12.i32[3] = 0;
  do
  {
    v11.f32[1] = -*&v9;
    *(a1 + v10) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(*(a1 + v10))), v9, *(a1 + v10), 1), xmmword_2623A7700, *(a1 + v10), 2);
    v10 += 16;
  }

  while (v10 != 128);
  v13 = 0;
  *v12.f32 = *v8;
  v12.i32[2] = v8[1].i32[0];
  do
  {
    *(a1 + v13) = vaddq_f32(v12, *(a1 + v13));
    v13 += 16;
  }

  while (v13 != 128);
  if (v6)
  {
    operator delete(v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *sub_2622101A8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621C8EEC(result, a2);
  }

  return result;
}

void sub_262210204(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262210220(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *v10;
        v87 = *v11;
        if (*(**a3 + 4 * v86) < *(**a3 + 4 * v87))
        {
          *v11 = v86;
          *v10 = v87;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v95 = v11 + 1;
      v96 = v11[1];
      v97 = v11 + 2;
      v98 = v11[2];
      v99 = *v11;
      v100 = **a3;
      v101 = *(v100 + 4 * v96);
      v102 = *(v100 + 4 * *v11);
      v103 = v98;
      v104 = *(v100 + 4 * v98);
      if (v101 >= v102)
      {
        if (v104 < v101)
        {
          v105 = v96;
          *v95 = v98;
          *v97 = v96;
          v106 = v11;
          v107 = v11 + 1;
          v103 = v96;
          if (v104 < v102)
          {
            goto LABEL_172;
          }

LABEL_174:
          v160 = *v10;
          if (*(v100 + 4 * v160) < *(v100 + 4 * v103))
          {
            *v97 = v160;
            *v10 = v96;
            v161 = *v97;
            v162 = *v95;
            v163 = *(v100 + 4 * v161);
            if (v163 < *(v100 + 4 * v162))
            {
              v11[1] = v161;
              v11[2] = v162;
              v164 = *v11;
              if (v163 < *(v100 + 4 * v164))
              {
                *v11 = v161;
                v11[1] = v164;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v105 = v99;
        if (v104 < v101)
        {
          v106 = v11;
          v107 = v11 + 2;
          v96 = *v11;
          goto LABEL_172;
        }

        *v11 = v96;
        v11[1] = v99;
        v106 = v11 + 1;
        v107 = v11 + 2;
        v96 = v99;
        if (v104 < v102)
        {
LABEL_172:
          *v106 = v98;
          *v107 = v99;
          v103 = v105;
          goto LABEL_174;
        }
      }

      v96 = v98;
      goto LABEL_174;
    }

    if (v12 == 5)
    {
      v85 = **a3;

      return sub_262210C5C(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v85);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v108 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v109 = **a3;
            v110 = 4;
            v111 = v11;
            do
            {
              v113 = *v111;
              v112 = v111[1];
              v111 = v108;
              v114 = *(v109 + 4 * v112);
              if (v114 < *(v109 + 4 * v113))
              {
                v115 = v110;
                while (1)
                {
                  *(v11 + v115) = v113;
                  v116 = v115 - 4;
                  if (v115 == 4)
                  {
                    break;
                  }

                  v113 = *(v11 + v115 - 8);
                  v115 -= 4;
                  if (v114 >= *(v109 + 4 * v113))
                  {
                    v117 = (v11 + v116);
                    goto LABEL_122;
                  }
                }

                v117 = v11;
LABEL_122:
                *v117 = v112;
              }

              v108 = v111 + 1;
              v110 += 4;
            }

            while (v111 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v154 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v155 = **a3;
          do
          {
            v157 = *v9;
            v156 = v9[1];
            v9 = v154;
            v158 = *(v155 + 4 * v156);
            if (v158 < *(v155 + 4 * v157))
            {
              do
              {
                *v154 = v157;
                v157 = *(v154 - 2);
                --v154;
              }

              while (v158 < *(v155 + 4 * v157));
              *v154 = v156;
            }

            v154 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v118 = (v12 - 2) >> 1;
        v119 = *a3;
        v120 = v118;
        do
        {
          v121 = v120;
          if (v118 >= v120)
          {
            v122 = (2 * v120) | 1;
            v123 = &v11[v122];
            v124 = 2 * v120 + 2;
            v125 = *v119;
            if (v124 < v12 && *(v125 + 4 * *v123) < *(v125 + 4 * v123[1]))
            {
              ++v123;
              v122 = 2 * v121 + 2;
            }

            v126 = &v11[v121];
            result = *v123;
            v127 = *v126;
            v128 = *(v125 + 4 * v127);
            if (*(v125 + 4 * result) >= v128)
            {
              do
              {
                v129 = v123;
                *v126 = result;
                if (v118 < v122)
                {
                  break;
                }

                v130 = 2 * v122;
                v122 = (2 * v122) | 1;
                v123 = &v11[v122];
                v131 = v130 + 2;
                if (v131 < v12 && *(v125 + 4 * *v123) < *(v125 + 4 * v123[1]))
                {
                  ++v123;
                  v122 = v131;
                }

                result = *v123;
                v126 = v129;
              }

              while (*(v125 + 4 * result) >= v128);
              *v129 = v127;
            }
          }

          v120 = v121 - 1;
        }

        while (v121);
        do
        {
          v132 = 0;
          v133 = *v11;
          v134 = *a3;
          v135 = v11;
          do
          {
            v136 = v135;
            v137 = &v135[v132];
            v135 = v137 + 1;
            v138 = 2 * v132;
            v132 = (2 * v132) | 1;
            v139 = v138 + 2;
            if (v139 < v12)
            {
              v141 = v137[2];
              v140 = v137 + 2;
              result = *(v140 - 1);
              if (*(*v134 + 4 * result) < *(*v134 + 4 * v141))
              {
                v135 = v140;
                v132 = v139;
              }
            }

            *v136 = *v135;
          }

          while (v132 <= ((v12 - 2) >> 1));
          if (v135 == --a2)
          {
            *v135 = v133;
          }

          else
          {
            *v135 = *a2;
            *a2 = v133;
            v142 = (v135 - v11 + 4) >> 2;
            v143 = v142 < 2;
            v144 = v142 - 2;
            if (!v143)
            {
              v145 = v144 >> 1;
              v146 = &v11[v145];
              v147 = *v146;
              v148 = *v135;
              v149 = *v134;
              v150 = *(v149 + 4 * v148);
              if (*(v149 + 4 * v147) < v150)
              {
                do
                {
                  v151 = v146;
                  *v135 = v147;
                  if (!v145)
                  {
                    break;
                  }

                  v145 = (v145 - 1) >> 1;
                  v146 = &v11[v145];
                  v147 = *v146;
                  v135 = v151;
                }

                while (*(v149 + 4 * v147) < v150);
                *v151 = v148;
              }
            }
          }

          v143 = v12-- <= 2;
        }

        while (!v143);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * v18);
      v21 = *(v15 + 4 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + 4 * v26) < *(v15 + 4 * v27))
          {
            *v11 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        v30 = *v10;
        if (*(v15 + 4 * v30) < v21)
        {
          *v13 = v30;
LABEL_27:
          *v10 = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v11[1];
      v34 = *(v15 + 4 * v32);
      v35 = *(v15 + 4 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + 4 * v38) < *(v15 + 4 * v39))
          {
            v11[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v11[1] = v36;
          goto LABEL_39;
        }

        v11[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) < v35)
        {
          *v31 = v41;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v11[2];
      v46 = *(v15 + 4 * v44);
      v47 = *(v15 + 4 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + 4 * v50) < *(v15 + 4 * v51))
          {
            v11[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v11[2] = v48;
          goto LABEL_48;
        }

        v11[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) < v47)
        {
          *v42 = v52;
LABEL_48:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 4 * v53);
      v56 = *(v15 + 4 * v54);
      v57 = *v42;
      v58 = *(v15 + 4 * v57);
      if (v55 >= v56)
      {
        if (v58 >= v55)
        {
          goto LABEL_56;
        }

        *v14 = v57;
        *v42 = v53;
        v42 = v14;
        LODWORD(v53) = v54;
        if (v58 >= v56)
        {
          LODWORD(v53) = v57;
          goto LABEL_56;
        }
      }

      else if (v58 >= v55)
      {
        *v31 = v53;
        *v14 = v54;
        v31 = v14;
        LODWORD(v53) = v57;
        if (v58 >= v56)
        {
          LODWORD(v53) = v54;
LABEL_56:
          v59 = *v11;
          *v11 = v53;
          *v14 = v59;
          goto LABEL_57;
        }
      }

      *v31 = v57;
      *v42 = v54;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * v22);
    v25 = *(v15 + 4 * v23);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + 4 * v28) < *(v15 + 4 * v29))
        {
          *v14 = v28;
          *v11 = v29;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    v40 = *v10;
    if (*(v15 + 4 * v40) < v25)
    {
      *v11 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v60 = *v11;
    if (a5)
    {
      v61 = *(v15 + 4 * v60);
LABEL_60:
      v62 = v11;
      do
      {
        v63 = v62;
        v65 = v62[1];
        ++v62;
        v64 = v65;
      }

      while (*(v15 + 4 * v65) < v61);
      v66 = a2;
      if (v63 == v11)
      {
        v66 = a2;
        do
        {
          if (v62 >= v66)
          {
            break;
          }

          v68 = *--v66;
        }

        while (*(v15 + 4 * v68) >= v61);
      }

      else
      {
        do
        {
          v67 = *--v66;
        }

        while (*(v15 + 4 * v67) >= v61);
      }

      if (v62 < v66)
      {
        v69 = *v66;
        v70 = v64;
        v71 = v62;
        v72 = v66;
        do
        {
          *v71 = v69;
          *v72 = v70;
          do
          {
            v63 = v71;
            v73 = v71[1];
            ++v71;
            v70 = v73;
          }

          while (*(v15 + 4 * v73) < v61);
          do
          {
            v74 = *--v72;
            v69 = v74;
          }

          while (*(v15 + 4 * v74) >= v61);
        }

        while (v71 < v72);
      }

      if (v63 != v11)
      {
        *v11 = *v63;
      }

      *v63 = v60;
      if (v62 < v66)
      {
        goto LABEL_79;
      }

      v75 = sub_262210DE8(v11, v63, *a3);
      v11 = v63 + 1;
      result = sub_262210DE8(v63 + 1, a2, *a3);
      if (result)
      {
        a2 = v63;
        if (!v75)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v75)
      {
LABEL_79:
        result = sub_262210220(v9, v63, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v63 + 1;
      }
    }

    else
    {
      v61 = *(v15 + 4 * v60);
      if (*(v15 + 4 * *(v11 - 1)) < v61)
      {
        goto LABEL_60;
      }

      if (v61 >= *(v15 + 4 * *v10))
      {
        v77 = v11 + 1;
        do
        {
          v11 = v77;
          if (v77 >= a2)
          {
            break;
          }

          ++v77;
        }

        while (v61 >= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v76 = v11[1];
          ++v11;
        }

        while (v61 >= *(v15 + 4 * v76));
      }

      v78 = a2;
      if (v11 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *--v78;
        }

        while (v61 < *(v15 + 4 * v79));
      }

      if (v11 < v78)
      {
        v80 = *v11;
        v81 = *v78;
        do
        {
          *v11 = v81;
          *v78 = v80;
          do
          {
            v82 = v11[1];
            ++v11;
            v80 = v82;
          }

          while (v61 >= *(v15 + 4 * v82));
          do
          {
            v83 = *--v78;
            v81 = v83;
          }

          while (v61 < *(v15 + 4 * v83));
        }

        while (v11 < v78);
      }

      v84 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v84;
      }

      a5 = 0;
      *v84 = v60;
    }
  }

  v88 = *v11;
  v89 = v11[1];
  v90 = **a3;
  v91 = *(v90 + 4 * v89);
  v92 = *(v90 + 4 * v88);
  v93 = *v10;
  v94 = *(v90 + 4 * v93);
  if (v91 >= v92)
  {
    if (v94 < v91)
    {
      v11[1] = v93;
      *v10 = v89;
      v153 = *v11;
      v152 = v11[1];
      if (*(v90 + 4 * v152) < *(v90 + 4 * v153))
      {
        *v11 = v152;
        v11[1] = v153;
      }
    }
  }

  else
  {
    if (v94 >= v91)
    {
      *v11 = v89;
      v11[1] = v88;
      v159 = *v10;
      if (*(v90 + 4 * v159) >= v92)
      {
        return result;
      }

      v11[1] = v159;
    }

    else
    {
      *v11 = v93;
    }

    *v10 = v88;
  }

  return result;
}

int *sub_262210C5C(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 4 * v13) >= *(a6 + 4 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 4 * *a3) < v9)
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(a6 + 4 * v15) < *(a6 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 4 * v16) < *(a6 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 4 * v18) < *(a6 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 4 * v20) < *(a6 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 4 * v22) < *(a6 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 4 * v24) < *(a6 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 4 * v26) < *(a6 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_262210DE8(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 4 * v6);
      v9 = *(*a3 + 4 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 4 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 4 * v35) < *(v7 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 4 * v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_262210C5C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 4 * v23);
    v29 = *(*a3 + 4 * *a1);
    v30 = v25;
    v31 = *(*a3 + 4 * v25);
    if (v28 >= v29)
    {
      if (v31 < v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 < v28)
      {
        v33 = a1;
        v34 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v33 = v25;
        *v34 = v26;
        v30 = v32;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 4 * v47) < *(v27 + 4 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 4 * v48);
          if (v50 < *(v27 + 4 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v27 + 4 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v23 = v26;
      if (v31 < v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 4 * v14);
  v17 = *a1;
  v18 = *(*a3 + 4 * v17);
  v19 = *(*a3 + 4 * v12);
  if (v16 < v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 >= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 < v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + 4 * v40);
    if (v42 < *(v15 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 >= *(v15 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void sub_2622110F8(_OWORD *a1, float32x4_t *a2, float a3)
{
  v16 = *a2;
  v5 = vsubq_f32(*a2, a2[3]);
  v6 = vmulq_f32(v5, v5);
  v7 = vsubq_f32(*a2, a2[1]);
  v8 = vmulq_f32(v7, v7);
  v19 = vmaxnm_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v6.i8, *v8.i8), vzip2_s32(*v6.i8, *v8.i8)))), vdup_n_s32(0x3DCCCCCDu));
  v9 = vsubq_f32(*a2, a2[4]);
  v10 = vmulq_f32(v9, v9);
  v18 = fmaxf(sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) + a3, 0.1);
  v11 = atan2f(v7.f32[0], v7.f32[1]);
  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  v17 = vmulq_f32(vaddq_f32(v16, a2[6]), v12);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  sub_26220EDA4(__p, 7uLL);
  v13 = __p[0];
  v14 = v17;
  v14.i32[3] = v19.i32[0];
  *__p[0] = v14;
  LODWORD(v15) = vdup_lane_s32(v19, 1).u32[0];
  *(&v15 + 1) = v18;
  *(v13 + 2) = v15;
  v13[6] = v11;
  sub_26220FF88(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_262211234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262211250(uint64_t a1, void *a2)
{
  v28 = a2;
  for (i = 0; i != 8; ++i)
  {
    v5 = objc_msgSend_objectAtIndexedSubscript_(v28, v3, i);
    v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0);
    objc_msgSend_floatValue(v7, v8, v9);
    v27 = v10;
    v12 = objc_msgSend_objectAtIndexedSubscript_(v28, v11, i);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 1);
    objc_msgSend_floatValue(v14, v15, v16);
    v26 = v17;
    v19 = objc_msgSend_objectAtIndexedSubscript_(v28, v18, i);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 2);
    objc_msgSend_floatValue(v21, v22, v23);
    v24 = v27;
    DWORD1(v24) = v26;
    DWORD2(v24) = v25;
    *(a1 + 16 * i) = v24;
  }
}

id sub_2622113C0(__n128 *a1, const char *a2, uint64_t a3)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v4 = sub_262211590(*a1, a1, a2, a3);
  v30[0] = v4;
  v7 = sub_262211590(a1[1], v4, v5, v6);
  v30[1] = v7;
  v10 = sub_262211590(a1[2], v7, v8, v9);
  v30[2] = v10;
  v13 = sub_262211590(a1[3], v10, v11, v12);
  v30[3] = v13;
  v16 = sub_262211590(a1[4], v13, v14, v15);
  v30[4] = v16;
  v19 = sub_262211590(a1[5], v16, v17, v18);
  v30[5] = v19;
  v22 = sub_262211590(a1[6], v19, v20, v21);
  v30[6] = v22;
  v25 = sub_262211590(a1[7], v22, v23, v24);
  v30[7] = v25;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v30, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id sub_262211590(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v17[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v17[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v17[2] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v17, 3);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t sub_2622116A8(uint64_t a1, __int128 *a2, id *a3, void *a4, uint64_t *a5, float a6)
{
  v11 = a4;
  v12 = a2[3];
  v14 = *a2;
  v13 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v12;
  *a1 = v14;
  *(a1 + 16) = v13;
  v15 = a2[7];
  v17 = a2[4];
  v16 = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v15;
  *(a1 + 64) = v17;
  *(a1 + 80) = v16;
  *(a1 + 128) = *a3;
  *(a1 + 136) = a6;
  v20 = objc_msgSend_copy(v11, v18, v19);
  *(a1 + 152) = 0;
  *(a1 + 144) = v20;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_2621C8E70(a1 + 152, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;

  return a1;
}

uint64_t sub_262211790(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622117DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v19 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  if (a2 == a3)
  {
    v18 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 48);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = v9;
      *a4 = v7;
      *(a4 + 16) = v8;
      v10 = *(v6 + 64);
      v11 = *(v6 + 80);
      v12 = *(v6 + 112);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = v12;
      *(a4 + 64) = v10;
      *(a4 + 80) = v11;
      v13 = *(v6 + 128);
      *(v6 + 128) = 0;
      *(a4 + 128) = v13;
      LODWORD(v10) = *(v6 + 136);
      v14 = *(v6 + 144);
      *(v6 + 144) = 0;
      *(a4 + 144) = v14;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 152) = *(v6 + 152);
      v15 = *(v6 + 176);
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 136) = v10;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(a4 + 176) = v15;
      *(a4 + 184) = *(v6 + 184);
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    v20 = a4;
    v18 = 1;
    do
    {
      sub_262211928(v5);
      v5 += 192;
    }

    while (v5 != a3);
  }

  return sub_2621EAEDC(v17);
}

uint64_t sub_2622118D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 192;
    sub_262211928(v3 - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_262211928(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 128);
}

void sub_26221197C(uint64_t a1)
{
  v3 = 13679;
  v4 = 0;
  kdebug_trace();
  sub_2623099DC(v2, a1, 1, 0);
}

void sub_2622124A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::__shared_weak_count *a57)
{
  v60 = *(v58 - 176);
  if (v60)
  {
    *(v58 - 168) = v60;
    operator delete(v60);
  }

  if (v57)
  {
    operator delete(v57);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    sub_2621D1B78(a38);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a57)
  {
    sub_2621D1B78(a57);
  }

  if (STACK[0x218])
  {
    sub_2621D1B78(STACK[0x218]);
  }

  STACK[0x230] = &unk_2874EEB10;
  if (STACK[0x2B0])
  {
    sub_2621D1B78(STACK[0x2B0]);
  }

  sub_2621CD534((v58 - 216));
  _Unwind_Resume(a1);
}

uint64_t sub_2622125F8(uint64_t a1, _OWORD *a2)
{
  v4 = 0;
  v2 = sub_2621D7078(a1, a2);
  return sub_2621D9C38(v2, &v4);
}

void sub_262212630(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEB10;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262212664(uint64_t a1, int *a2, int *a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v5 = a1;
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1159);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "at", 2);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    a1 = v5;
  }

  v15 = 0;
  v16 = MEMORY[0x277D82670];
  v27 = a1;
  v28 = 0;
  v17 = a1 + 8;
  v18 = *a3;
  v33[0] = *a2;
  v33[1] = v18;
  v19 = 1;
  v20 = MEMORY[0x277D82680];
  v31 = 0u;
  v32 = 0u;
  *&v30[0].__locale_ = 0u;
  do
  {
    v21 = v33[v15];
    if (v21 >= *(v17 + v15 * 8))
    {
      sub_2621D552C(v16, "runtime_err in ", 15);
      sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v16, " ", 1);
      v22 = MEMORY[0x266727260](v16, 1167);
      sub_2621D552C(v22, " ", 1);
      sub_2621D552C(v22, "at", 2);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v29, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v28, "=", &v33[v15], "should smaller then", (v17 + v15 * 8));
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v29, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
    }

    v28 = v19;
    v30[v15++].__locale_ = v21;
    ++v19;
  }

  while (v15 != 2);
  v25 = *MEMORY[0x277D85DE8];
  return v27[18] + 4 * v27[8] * v30[1].__locale_ + 4 * v27[7] * v30[0].__locale_;
}

uint64_t sub_262212AA8(uint64_t a1, int *a2, int *a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v5 = a1;
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1125);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "at", 2);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    a1 = v5;
  }

  v15 = 0;
  v16 = MEMORY[0x277D82670];
  v27 = a1;
  v28 = 0;
  v17 = a1 + 8;
  v18 = *a3;
  v33[0] = *a2;
  v33[1] = v18;
  v19 = 1;
  v20 = MEMORY[0x277D82680];
  v31 = 0u;
  v32 = 0u;
  *&v30[0].__locale_ = 0u;
  do
  {
    v21 = v33[v15];
    if (v21 >= *(v17 + v15 * 8))
    {
      sub_2621D552C(v16, "runtime_err in ", 15);
      sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v16, " ", 1);
      v22 = MEMORY[0x266727260](v16, 1133);
      sub_2621D552C(v22, " ", 1);
      sub_2621D552C(v22, "at", 2);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v29, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v28, "=", &v33[v15], "should smaller then", (v17 + v15 * 8));
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v29, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
    }

    v28 = v19;
    v30[v15++].__locale_ = v21;
    ++v19;
  }

  while (v15 != 2);
  v25 = *MEMORY[0x277D85DE8];
  return v27[18] + 4 * v27[8] * v30[1].__locale_ + 4 * v27[7] * v30[0].__locale_;
}

void sub_262212EEC(int32x2_t *a1, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v308 = a2 - 1;
  v302 = a2 - 3;
  v303 = a2 - 2;
  j = a1;
  v311 = a2;
  while (1)
  {
    v9 = j;
    v10 = a2 - j;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          sub_262215FC0(j, j + 1, v308, a3);
          return;
        case 4:

          sub_26221643C(j, j + 1, j + 2, v308, a3);
          return;
        case 5:

          sub_26221671C(j, j + 1, j + 2, j + 3, v308, a3);
          return;
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
        v136 = *a3;
        v322 = *v308;
        v137 = *sub_262212664(v136, &v322 + 1, &v322);
        v138 = *a3;
        v321 = *j;
        if (v137 <= *sub_262212664(v138, &v321 + 1, &v321))
        {
          v270 = *a3;
          v271 = *v308;
          HIDWORD(v322) = HIDWORD(*v308);
          LODWORD(v322) = v271.i32[0];
          v272 = *sub_262212664(v270, &v322 + 1, &v322);
          v273 = *a3;
          v274 = *j;
          HIDWORD(v321) = HIDWORD(*j);
          LODWORD(v321) = v274.i32[0];
          if (v272 != *sub_262212664(v273, &v321 + 1, &v321))
          {
            return;
          }

          v140 = *v308;
          v275 = HIDWORD(*v308);
          v139 = *j;
          v276 = HIDWORD(*j);
          if (v275 >= v276 && (v275 != v276 || (vcgt_s32(v139, v140).u8[0] & 1) == 0))
          {
            return;
          }
        }

        else
        {
          v139 = *j;
          v140 = *v308;
        }

        *j = v140;
        *v308 = v139;
        return;
      }
    }

    v314 = j;
    if (v10 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (j == a2)
      {
        return;
      }

      v168 = (v10 - 2) >> 1;
      v169 = v168;
      v305 = v168;
      v318 = a2 - j;
      while (1)
      {
        v170 = v169;
        if (v168 >= v169)
        {
          break;
        }

LABEL_193:
        v169 = v170 - 1;
        if (!v170)
        {
          v219 = v311;
          while (1)
          {
            v312 = v219;
            v220 = 0;
            v221 = *v9;
            v222 = (v10 - 2) >> 1;
            v223 = v9;
            v319 = v10;
            do
            {
              v224 = v223;
              v225 = &v223[v220];
              v223 = v225 + 1;
              v226 = 2 * v220;
              v220 = (2 * v220) | 1;
              v227 = v226 + 2;
              if (v226 + 2 >= v10)
              {
                goto LABEL_205;
              }

              v228 = *a3;
              v322 = v225[1];
              v229 = *sub_262212664(v228, &v322 + 1, &v322);
              v230 = *a3;
              v232 = v225[2];
              v231 = v225 + 2;
              v321 = v232;
              v233 = sub_262212664(v230, &v321 + 1, &v321);
              v10 = v319;
              if (v229 > *v233)
              {
LABEL_198:
                v223 = v231;
                v220 = v227;
                goto LABEL_205;
              }

              v234 = *a3;
              v235 = *v223;
              HIDWORD(v322) = HIDWORD(*v223);
              LODWORD(v322) = v235.i32[0];
              v236 = *sub_262212664(v234, &v322 + 1, &v322);
              v237 = *a3;
              v238 = *v231;
              HIDWORD(v321) = HIDWORD(*v231);
              LODWORD(v321) = v238.i32[0];
              if (v236 == *sub_262212664(v237, &v321 + 1, &v321))
              {
                v239 = HIDWORD(*v223);
                v240 = HIDWORD(*v231);
                v10 = v319;
                if (v239 < v240 || v239 == v240 && (vcgt_s32(*v231, *v223).u8[0] & 1) != 0)
                {
                  goto LABEL_198;
                }
              }

              else
              {
                v10 = v319;
              }

LABEL_205:
              *v224 = *v223;
            }

            while (v220 <= v222);
            v241 = v312 - 1;
            v142 = v223 == &v312[-1];
            v313 = v312 - 1;
            if (v142)
            {
              *v223 = v221;
              goto LABEL_228;
            }

            *v223 = *v241;
            *v241 = v221;
            v9 = v314;
            v242 = (v223 - v314 + 8) >> 3;
            v243 = v242 - 2;
            if (v242 >= 2)
            {
              v244 = v243 >> 1;
              v245 = &v314[v243 >> 1];
              v246 = *a3;
              v322 = *v245;
              v247 = *sub_262212664(v246, &v322 + 1, &v322);
              v248 = *a3;
              v249 = *v223;
              HIDWORD(v321) = HIDWORD(*v223);
              LODWORD(v321) = v249.i32[0];
              if (v247 <= *sub_262212664(v248, &v321 + 1, &v321))
              {
                v263 = *a3;
                v264 = *v245;
                HIDWORD(v322) = HIDWORD(*v245);
                LODWORD(v322) = v264;
                v265 = *sub_262212664(v263, &v322 + 1, &v322);
                v266 = *a3;
                v267 = *v223;
                HIDWORD(v321) = HIDWORD(*v223);
                LODWORD(v321) = v267.i32[0];
                v268 = sub_262212664(v266, &v321 + 1, &v321);
                v10 = v319;
                if (v265 != *v268)
                {
                  goto LABEL_229;
                }

                v250 = *v245;
                v269 = HIDWORD(*v245);
                v310 = *v223;
                if (v269 >= HIDWORD(*v223) && (v269 != HIDWORD(*v223) || (vcgt_s32(*v223, v250).u8[0] & 1) == 0))
                {
                  goto LABEL_229;
                }
              }

              else
              {
                v310 = *v223;
                v250 = *v245;
                v10 = v319;
              }

              *v223 = v250;
              if (v243 < 2)
              {
                goto LABEL_227;
              }

              while (1)
              {
                v251 = v245;
                v252 = v244 - 1;
                v244 = (v244 - 1) >> 1;
                v245 = &v314[v244];
                v253 = *a3;
                v254 = *v245;
                HIDWORD(v322) = HIDWORD(*v245);
                LODWORD(v322) = v254;
                v255 = *sub_262212664(v253, &v322 + 1, &v322);
                v256 = *a3;
                v321 = v310;
                v257 = sub_262212664(v256, &v321 + 1, &v321);
                v258 = *v245;
                if (v255 <= *v257)
                {
                  v259 = *a3;
                  v322 = *v245;
                  v260 = *sub_262212664(v259, &v322 + 1, &v322);
                  v261 = *a3;
                  v321 = v310;
                  if (v260 != *sub_262212664(v261, &v321 + 1, &v321))
                  {
                    v245 = v251;
                    v10 = v319;
                    goto LABEL_227;
                  }

                  v258 = *v245;
                  v262 = HIDWORD(*v245);
                  v10 = v319;
                  if (v262 >= v310.i32[1] && (v262 != v310.i32[1] || (vcgt_s32(v310, v258).u8[0] & 1) == 0))
                  {
                    v245 = v251;
LABEL_227:
                    *v245 = v310;
LABEL_228:
                    v9 = v314;
                    break;
                  }
                }

                else
                {
                  v10 = v319;
                }

                *v251 = v258;
                if (v252 <= 1)
                {
                  goto LABEL_227;
                }
              }
            }

LABEL_229:
            v177 = v10-- <= 2;
            v219 = v313;
            if (v177)
            {
              return;
            }
          }
        }
      }

      v171 = (2 * v169) | 1;
      v172 = &v9[v171];
      if (2 * v169 + 2 < v10)
      {
        v173 = *a3;
        v174 = *v172;
        HIDWORD(v322) = HIDWORD(*v172);
        LODWORD(v322) = v174.i32[0];
        v175 = *sub_262212664(v173, &v322 + 1, &v322);
        v176 = *a3;
        v321 = v172[1];
        v177 = v175 <= *sub_262212664(v176, &v321 + 1, &v321);
        v9 = v314;
        if (!v177)
        {
          goto LABEL_162;
        }

        v178 = *a3;
        v179 = *v172;
        HIDWORD(v322) = HIDWORD(*v172);
        LODWORD(v322) = v179.i32[0];
        v180 = *sub_262212664(v178, &v322 + 1, &v322);
        v181 = *a3;
        v321 = v172[1];
        if (v180 != *sub_262212664(v181, &v321 + 1, &v321))
        {
          v9 = v314;
          goto LABEL_169;
        }

        v182 = v172[1];
        v183 = HIDWORD(*v172);
        v9 = v314;
        if (v183 < v182.i32[1] || v183 == v182.i32[1] && (vcgt_s32(v182, *v172).u8[0] & 1) != 0)
        {
LABEL_162:
          ++v172;
          v171 = 2 * v170 + 2;
        }
      }

LABEL_169:
      v184 = *a3;
      v185 = *v172;
      HIDWORD(v322) = HIDWORD(*v172);
      LODWORD(v322) = v185.i32[0];
      v186 = *sub_262212664(v184, &v322 + 1, &v322);
      v187 = *a3;
      v321 = v9[v170];
      v188 = sub_262212664(v187, &v321 + 1, &v321);
      v10 = v318;
      if (v186 <= *v188)
      {
        v189 = *a3;
        v190 = *v172;
        HIDWORD(v322) = HIDWORD(*v172);
        LODWORD(v322) = v190.i32[0];
        v191 = *sub_262212664(v189, &v322 + 1, &v322);
        v192 = *a3;
        v321 = v9[v170];
        v193 = sub_262212664(v192, &v321 + 1, &v321);
        v10 = v318;
        v194 = v9[v170];
        v195 = *v172;
        if (v191 != *v193 || v195.i32[1] >= v194.i32[1] && (v195.i32[1] != v194.i32[1] || (vcgt_s32(v194, v195).u8[0] & 1) == 0))
        {
          v9[v170] = v195;
          if (v168 < v171)
          {
            goto LABEL_192;
          }

          v196 = v194.i32[1];
          v307 = v194.i32[0];
          v309 = v194;
          while (1)
          {
            v197 = v172;
            v198 = 2 * v171;
            v171 = (2 * v171) | 1;
            v172 = &v9[v171];
            v199 = v198 + 2;
            if (v198 + 2 < v10)
            {
              v200 = *a3;
              v201 = *v172;
              HIDWORD(v322) = HIDWORD(*v172);
              LODWORD(v322) = v201.i32[0];
              v202 = *sub_262212664(v200, &v322 + 1, &v322);
              v203 = *a3;
              v321 = v172[1];
              if (v202 > *sub_262212664(v203, &v321 + 1, &v321))
              {
                goto LABEL_178;
              }

              v204 = *a3;
              v205 = *v172;
              HIDWORD(v322) = HIDWORD(*v172);
              LODWORD(v322) = v205.i32[0];
              v206 = *sub_262212664(v204, &v322 + 1, &v322);
              v207 = *a3;
              v321 = v172[1];
              if (v206 == *sub_262212664(v207, &v321 + 1, &v321))
              {
                v208 = v172[1];
                v209 = HIDWORD(*v172);
                if (v209 < v208.i32[1] || v209 == v208.i32[1] && (vcgt_s32(v208, *v172).u8[0] & 1) != 0)
                {
LABEL_178:
                  ++v172;
                  v171 = v199;
                }
              }
            }

            v210 = *a3;
            v322 = *v172;
            v211 = *sub_262212664(v210, &v322 + 1, &v322);
            v212 = *a3;
            v321 = __PAIR64__(v196, v307);
            if (v211 > *sub_262212664(v212, &v321 + 1, &v321))
            {
              v172 = v197;
              v9 = v314;
              v10 = v318;
              v168 = v305;
              v194 = v309;
              goto LABEL_192;
            }

            v213 = *a3;
            v214 = *v172;
            HIDWORD(v322) = HIDWORD(*v172);
            LODWORD(v322) = v214.i32[0];
            v215 = *sub_262212664(v213, &v322 + 1, &v322);
            v216 = *a3;
            v321 = __PAIR64__(v196, v307);
            v217 = sub_262212664(v216, &v321 + 1, &v321);
            v218 = *v172;
            v9 = v314;
            v10 = v318;
            v168 = v305;
            v194 = v309;
            if (v215 == *v217 && (v218.i32[1] < v196 || v218.i32[1] == v196 && (vcgt_s32(v309, v218).u8[0] & 1) != 0))
            {
              break;
            }

            *v197 = v218;
            if (v305 < v171)
            {
              goto LABEL_192;
            }
          }

          v172 = v197;
LABEL_192:
          *v172 = v194;
        }
      }

      goto LABEL_193;
    }

    v11 = v10 >> 1;
    v12 = &j[v10 >> 1];
    if (v10 < 0x81)
    {
      sub_262215FC0(&v9[v10 >> 1], v9, v308, a3);
    }

    else
    {
      sub_262215FC0(v9, &v9[v10 >> 1], v308, a3);
      sub_262215FC0(v9 + 1, v12 - 1, v303, a3);
      sub_262215FC0(v9 + 2, &v9[v11 + 1], v302, a3);
      sub_262215FC0(v12 - 1, v12, &v9[v11 + 1], a3);
      v13 = *v9;
      *v9 = *v12;
      *v12 = v13;
    }

    --a4;
    if ((a5 & 1) != 0 || (v14 = *a3, v322 = v9[-1], v15 = *sub_262212664(v14, &v322 + 1, &v322), v16 = *a3, v17 = *v9, HIDWORD(v321) = HIDWORD(*v9), LODWORD(v321) = v17.i32[0], v15 > *sub_262212664(v16, &v321 + 1, &v321)))
    {
LABEL_20:
      v26 = v9 + 1;
      v27 = HIDWORD(*v9);
      v315 = *v9;
      v28 = *v9;
      while (1)
      {
        v29 = *a3;
        v30 = *v26;
        HIDWORD(v322) = HIDWORD(*v26);
        LODWORD(v322) = v30.i32[0];
        v31 = *sub_262212664(v29, &v322 + 1, &v322);
        v32 = *a3;
        v321 = __PAIR64__(v27, v28);
        if (v31 <= *sub_262212664(v32, &v321 + 1, &v321))
        {
          v33 = *a3;
          v34 = *v26;
          HIDWORD(v322) = HIDWORD(*v26);
          LODWORD(v322) = v34.i32[0];
          v35 = *sub_262212664(v33, &v322 + 1, &v322);
          v36 = *a3;
          v321 = __PAIR64__(v27, v28);
          if (v35 != *sub_262212664(v36, &v321 + 1, &v321))
          {
            break;
          }

          v37 = HIDWORD(*v26);
          if (v37 >= v27 && (v37 != v27 || (vcgt_s32(v315, *v26).u8[0] & 1) == 0))
          {
            break;
          }
        }

        ++v26;
      }

      v38 = v26 - 1;
      i = v308;
      if (&v26[-1] == v9)
      {
        i = v311;
        if (v26 < v311)
        {
          for (i = v308; ; --i)
          {
            v49 = *a3;
            v50 = *i;
            HIDWORD(v322) = HIDWORD(*i);
            LODWORD(v322) = v50.i32[0];
            v51 = *sub_262212664(v49, &v322 + 1, &v322);
            v52 = *a3;
            v321 = __PAIR64__(v27, v28);
            if (v51 > *sub_262212664(v52, &v321 + 1, &v321))
            {
              break;
            }

            v53 = *a3;
            v54 = *i;
            HIDWORD(v322) = HIDWORD(*i);
            LODWORD(v322) = v54.i32[0];
            v55 = *sub_262212664(v53, &v322 + 1, &v322);
            v56 = *a3;
            v321 = __PAIR64__(v27, v28);
            if (v55 == *sub_262212664(v56, &v321 + 1, &v321))
            {
              v57 = HIDWORD(*i);
              if (v57 < v27)
              {
                break;
              }

              v58 = v57 != v27;
              if (v26 >= i || ((v58 | vcge_s32(*i, v315).u32[0]) & 1) == 0)
              {
                break;
              }
            }

            else if (v26 >= i)
            {
              break;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v40 = *a3;
          v41 = *i;
          HIDWORD(v322) = HIDWORD(*i);
          LODWORD(v322) = v41.i32[0];
          v42 = *sub_262212664(v40, &v322 + 1, &v322);
          v43 = *a3;
          v321 = __PAIR64__(v27, v28);
          if (v42 > *sub_262212664(v43, &v321 + 1, &v321))
          {
            break;
          }

          v44 = *a3;
          v45 = *i;
          HIDWORD(v322) = HIDWORD(*i);
          LODWORD(v322) = v45.i32[0];
          v46 = *sub_262212664(v44, &v322 + 1, &v322);
          v47 = *a3;
          v321 = __PAIR64__(v27, v28);
          if (v46 == *sub_262212664(v47, &v321 + 1, &v321))
          {
            v48 = HIDWORD(*i);
            if (v48 < v27 || v48 == v27 && (vcgt_s32(v315, *i).u8[0] & 1) != 0)
            {
              break;
            }
          }

          --i;
        }
      }

      if (v26 < i)
      {
        v59 = v26;
        v60 = i;
        do
        {
          v61 = *v59;
          *v59++ = *v60;
          *v60 = v61;
          while (1)
          {
            v62 = *a3;
            v63 = *v59;
            HIDWORD(v322) = HIDWORD(*v59);
            LODWORD(v322) = v63.i32[0];
            v64 = *sub_262212664(v62, &v322 + 1, &v322);
            v65 = *a3;
            v321 = __PAIR64__(v27, v28);
            if (v64 <= *sub_262212664(v65, &v321 + 1, &v321))
            {
              v66 = *a3;
              v67 = *v59;
              HIDWORD(v322) = HIDWORD(*v59);
              LODWORD(v322) = v67.i32[0];
              v68 = *sub_262212664(v66, &v322 + 1, &v322);
              v69 = *a3;
              v321 = __PAIR64__(v27, v28);
              if (v68 != *sub_262212664(v69, &v321 + 1, &v321))
              {
                break;
              }

              v70 = HIDWORD(*v59);
              if (v70 >= v27 && (v70 != v27 || (vcgt_s32(v315, *v59).u8[0] & 1) == 0))
              {
                break;
              }
            }

            ++v59;
          }

          v38 = v59 - 1;
          while (1)
          {
            v71 = *a3;
            v72 = v60[-1];
            --v60;
            v322 = v72;
            v73 = *sub_262212664(v71, &v322 + 1, &v322);
            v74 = *a3;
            v321 = __PAIR64__(v27, v28);
            if (v73 > *sub_262212664(v74, &v321 + 1, &v321))
            {
              break;
            }

            v75 = *a3;
            v76 = *v60;
            HIDWORD(v322) = HIDWORD(*v60);
            LODWORD(v322) = v76.i32[0];
            v77 = *sub_262212664(v75, &v322 + 1, &v322);
            v78 = *a3;
            v321 = __PAIR64__(v27, v28);
            if (v77 == *sub_262212664(v78, &v321 + 1, &v321))
            {
              v79 = HIDWORD(*v60);
              if (v79 < v27 || v79 == v27 && (vcgt_s32(v315, *v60).u8[0] & 1) != 0)
              {
                break;
              }
            }
          }
        }

        while (v59 < v60);
      }

      a1 = v314;
      if (v38 != v314)
      {
        *v314 = *v38;
      }

      *v38 = v315;
      v80 = v26 >= i;
      a2 = v311;
      if (v80)
      {
        v81 = sub_262216AE0(v314, v38, a3);
        j = v38 + 1;
        if (sub_262216AE0(v38 + 1, v311, a3))
        {
          a2 = v38;
          if (v81)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v81)
        {
          goto LABEL_66;
        }
      }

      else
      {
LABEL_66:
        sub_262212EEC(v314, v38, a3, a4, a5 & 1);
        a5 = 0;
        j = v38 + 1;
      }
    }

    else
    {
      v18 = *a3;
      v322 = v9[-1];
      v19 = *sub_262212664(v18, &v322 + 1, &v322);
      v20 = *a3;
      v21 = *v9;
      HIDWORD(v321) = HIDWORD(*v9);
      LODWORD(v321) = v21.i32[0];
      v22 = sub_262212664(v20, &v321 + 1, &v321);
      v23 = *v9;
      if (v19 == *v22)
      {
        v24 = v9[-1];
        v25 = HIDWORD(*v9);
        if (v24.i32[1] < v23.i32[1] || v24.i32[1] == v23.i32[1] && (vcgt_s32(v23, v24).u8[0] & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = HIDWORD(*v9);
      }

      v82 = *v9;
      v83 = *a3;
      v316 = *v9;
      v322 = __PAIR64__(v25, v23.u32[0]);
      v84 = *sub_262212664(v83, &v322 + 1, &v322);
      v85 = *a3;
      v86 = *v308;
      HIDWORD(v321) = HIDWORD(*v308);
      LODWORD(v321) = v86.i32[0];
      if (v84 > *sub_262212664(v85, &v321 + 1, &v321))
      {
        goto LABEL_69;
      }

      v94 = *a3;
      v322 = __PAIR64__(v25, v82);
      v95 = *sub_262212664(v94, &v322 + 1, &v322);
      v96 = *a3;
      v97 = *v308;
      HIDWORD(v321) = HIDWORD(*v308);
      LODWORD(v321) = v97.i32[0];
      if (v95 != *sub_262212664(v96, &v321 + 1, &v321))
      {
        goto LABEL_80;
      }

      v98 = HIDWORD(*v308);
      if (v25 < v98 || v25 == v98 && (vcgt_s32(*v308, v316).u8[0] & 1) != 0)
      {
LABEL_69:
        for (j = v9 + 1; ; ++j)
        {
          v87 = *a3;
          v322 = __PAIR64__(v25, v82);
          v88 = *sub_262212664(v87, &v322 + 1, &v322);
          v89 = *a3;
          v321 = *j;
          if (v88 > *sub_262212664(v89, &v321 + 1, &v321))
          {
            break;
          }

          v90 = *a3;
          v322 = __PAIR64__(v25, v82);
          v91 = *sub_262212664(v90, &v322 + 1, &v322);
          v92 = *a3;
          v321 = *j;
          if (v91 == *sub_262212664(v92, &v321 + 1, &v321))
          {
            v93 = HIDWORD(*j);
            if (v25 < v93 || v25 == v93 && (vcgt_s32(*j, v316).u8[0] & 1) != 0)
            {
              break;
            }
          }
        }
      }

      else
      {
LABEL_80:
        for (j = v9 + 1; j < a2; ++j)
        {
          v99 = *a3;
          v322 = __PAIR64__(v25, v82);
          v100 = *sub_262212664(v99, &v322 + 1, &v322);
          v101 = *a3;
          v321 = *j;
          if (v100 > *sub_262212664(v101, &v321 + 1, &v321))
          {
            break;
          }

          v102 = *a3;
          v322 = __PAIR64__(v25, v82);
          v103 = *sub_262212664(v102, &v322 + 1, &v322);
          v104 = *a3;
          v321 = *j;
          if (v103 == *sub_262212664(v104, &v321 + 1, &v321))
          {
            v105 = HIDWORD(*j);
            if (v25 < v105 || v25 == v105 && (vcgt_s32(*j, v316).u8[0] & 1) != 0)
            {
              break;
            }
          }
        }
      }

      k = a2;
      if (j < a2)
      {
        for (k = v308; ; --k)
        {
          v107 = *a3;
          v322 = __PAIR64__(v25, v82);
          v108 = *sub_262212664(v107, &v322 + 1, &v322);
          v109 = *a3;
          v110 = *k;
          HIDWORD(v321) = HIDWORD(*k);
          LODWORD(v321) = v110.i32[0];
          if (v108 <= *sub_262212664(v109, &v321 + 1, &v321))
          {
            v111 = *a3;
            v322 = __PAIR64__(v25, v82);
            v112 = *sub_262212664(v111, &v322 + 1, &v322);
            v113 = *a3;
            v114 = *k;
            HIDWORD(v321) = HIDWORD(*k);
            LODWORD(v321) = v114.i32[0];
            if (v112 != *sub_262212664(v113, &v321 + 1, &v321))
            {
              break;
            }

            v115 = HIDWORD(*k);
            if (v25 >= v115 && (v25 != v115 || (vcgt_s32(*k, v316).u8[0] & 1) == 0))
            {
              break;
            }
          }
        }
      }

      while (j < k)
      {
        v116 = *j;
        *j++ = *k;
        *k = v116;
        while (1)
        {
          v117 = *a3;
          v322 = __PAIR64__(v25, v82);
          v118 = *sub_262212664(v117, &v322 + 1, &v322);
          v119 = *a3;
          v120 = *j;
          HIDWORD(v321) = HIDWORD(*j);
          LODWORD(v321) = v120.i32[0];
          if (v118 > *sub_262212664(v119, &v321 + 1, &v321))
          {
            break;
          }

          v121 = *a3;
          v322 = __PAIR64__(v25, v82);
          v122 = *sub_262212664(v121, &v322 + 1, &v322);
          v123 = *a3;
          v124 = *j;
          HIDWORD(v321) = HIDWORD(*j);
          LODWORD(v321) = v124.i32[0];
          if (v122 == *sub_262212664(v123, &v321 + 1, &v321))
          {
            v125 = HIDWORD(*j);
            if (v25 < v125 || v25 == v125 && (vcgt_s32(*j, v316).u8[0] & 1) != 0)
            {
              break;
            }
          }

          ++j;
        }

        do
        {
          do
          {
            v126 = *a3;
            v322 = __PAIR64__(v25, v82);
            v127 = *sub_262212664(v126, &v322 + 1, &v322);
            v128 = *a3;
            v129 = k[-1];
            --k;
            v321 = v129;
          }

          while (v127 > *sub_262212664(v128, &v321 + 1, &v321));
          v130 = *a3;
          v322 = __PAIR64__(v25, v82);
          v131 = *sub_262212664(v130, &v322 + 1, &v322);
          v132 = *a3;
          v133 = *k;
          HIDWORD(v321) = HIDWORD(*k);
          LODWORD(v321) = v133.i32[0];
          if (v131 != *sub_262212664(v132, &v321 + 1, &v321))
          {
            break;
          }

          v134 = HIDWORD(*k);
        }

        while (v25 < v134 || v25 == v134 && (vcgt_s32(*k, v316).u8[0] & 1) != 0);
      }

      v135 = j - 1;
      if (&j[-1] != v9)
      {
        *v9 = *v135;
      }

      a5 = 0;
      *v135 = v316;
    }
  }

  v141 = j + 1;
  v142 = j == a2 || v141 == a2;
  v143 = v142;
  if ((a5 & 1) == 0)
  {
    if (v143)
    {
      return;
    }

    while (1)
    {
      v277 = v9;
      v278 = v141;
      v279 = *a3;
      v322 = v9[1];
      v280 = *sub_262212664(v279, &v322 + 1, &v322);
      v281 = *a3;
      v282 = *v277;
      HIDWORD(v321) = HIDWORD(*v277);
      LODWORD(v321) = v282.i32[0];
      v283 = sub_262212664(v281, &v321 + 1, &v321);
      v284 = v277[1];
      if (v280 > *v283)
      {
        break;
      }

      v297 = *a3;
      v322 = v277[1];
      v298 = *sub_262212664(v297, &v322 + 1, &v322);
      v299 = *a3;
      v300 = *v277;
      HIDWORD(v321) = HIDWORD(*v277);
      LODWORD(v321) = v300.i32[0];
      if (v298 == *sub_262212664(v299, &v321 + 1, &v321))
      {
        v284 = *v278;
        v285 = HIDWORD(*v278);
        v301 = HIDWORD(*v277);
        if (v285 < v301 || v285 == v301 && (vcgt_s32(*v277, v284).u32[0] & 1) != 0)
        {
          goto LABEL_240;
        }
      }

LABEL_251:
      v9 = v278;
      v141 = v278 + 1;
      if (&v278[1] == a2)
      {
        return;
      }
    }

    v285 = HIDWORD(*&v277[1]);
LABEL_240:
    v320 = v284;
    v286 = v284.i32[0];
    do
    {
      do
      {
        v287 = v277;
        v277[1] = *v277;
        v288 = *a3;
        v322 = __PAIR64__(v285, v286);
        v289 = *sub_262212664(v288, &v322 + 1, &v322);
        v290 = *a3;
        v291 = v277[-1];
        --v277;
        v321 = v291;
      }

      while (v289 > *sub_262212664(v290, &v321 + 1, &v321));
      v292 = *a3;
      v322 = __PAIR64__(v285, v286);
      v293 = *sub_262212664(v292, &v322 + 1, &v322);
      v294 = *a3;
      v295 = *v277;
      HIDWORD(v321) = HIDWORD(*v277);
      LODWORD(v321) = v295.i32[0];
      if (v293 != *sub_262212664(v294, &v321 + 1, &v321))
      {
        break;
      }

      v296 = HIDWORD(*v277);
    }

    while (v285 < v296 || v285 == v296 && (vcgt_s32(*v277, v320).u8[0] & 1) != 0);
    *v287 = v320;
    a2 = v311;
    goto LABEL_251;
  }

  if (v143)
  {
    return;
  }

  v144 = 0;
  v145 = j;
  while (2)
  {
    v146 = v145;
    v145 = v141;
    v147 = *a3;
    v322 = v146[1];
    v148 = *sub_262212664(v147, &v322 + 1, &v322);
    v149 = *a3;
    v150 = *v146;
    HIDWORD(v321) = HIDWORD(*v146);
    LODWORD(v321) = v150.i32[0];
    if (v148 <= *sub_262212664(v149, &v321 + 1, &v321))
    {
      v162 = *a3;
      v322 = v146[1];
      v163 = *sub_262212664(v162, &v322 + 1, &v322);
      v164 = *a3;
      v165 = *v146;
      HIDWORD(v321) = HIDWORD(*v146);
      LODWORD(v321) = v165.i32[0];
      if (v163 != *sub_262212664(v164, &v321 + 1, &v321))
      {
        goto LABEL_155;
      }

      v317 = *v145;
      v166 = HIDWORD(*v145);
      v151 = *v146;
      v167 = HIDWORD(*v146);
      if (v166 >= v167 && (v166 != v167 || (vcgt_s32(v151, v317).u8[0] & 1) == 0))
      {
        goto LABEL_155;
      }
    }

    else
    {
      v317 = v146[1];
      v151 = *v146;
    }

    v146[1] = v151;
    v152 = v9;
    if (v146 == v9)
    {
      goto LABEL_154;
    }

    v153 = v144;
    while (2)
    {
      v154 = (v9 + v153);
      v155 = *a3;
      v322 = v317;
      v156 = *sub_262212664(v155, &v322 + 1, &v322);
      v157 = *a3;
      v321 = v154[-1];
      if (v156 > *sub_262212664(v157, &v321 + 1, &v321))
      {
        v158 = v154[-1];
LABEL_145:
        --v146;
        *v154 = v158;
        v153 -= 8;
        v9 = v314;
        if (!v153)
        {
          v152 = v314;
          goto LABEL_154;
        }

        continue;
      }

      break;
    }

    v159 = *a3;
    v322 = v317;
    v160 = *sub_262212664(v159, &v322 + 1, &v322);
    v161 = *a3;
    v321 = v154[-1];
    if (v160 != *sub_262212664(v161, &v321 + 1, &v321))
    {
      v9 = v314;
      v152 = (v314 + v153);
      goto LABEL_154;
    }

    v158 = v154[-1];
    if (v317.i32[1] < v158.i32[1] || v317.i32[1] == v158.i32[1] && (vcgt_s32(v158, v317).u8[0] & 1) != 0)
    {
      goto LABEL_145;
    }

    v152 = v146;
    v9 = v314;
LABEL_154:
    *v152 = v317;
LABEL_155:
    v141 = v145 + 1;
    v144 += 8;
    if (&v145[1] != v311)
    {
      continue;
    }

    break;
  }
}