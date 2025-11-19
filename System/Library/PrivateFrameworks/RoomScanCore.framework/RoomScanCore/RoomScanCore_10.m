void sub_2622675CC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF6A8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262267600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[21] = *MEMORY[0x277D85DE8];
  sub_26222AF58(v5, (a3 + 8));
  sub_262268318(a1, v5);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_262229F7C(&v15, a3);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  *&v5[0].__locale_ = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  sub_262229F7C(v11, &v15);
  *&v5[0].__locale_ = v8;
  v6 = v9;
  v7 = v10;
  sub_262268410(v19, v5);
}

void sub_262268030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, std::locale a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a51)
  {
    sub_2621D1B78(a51);
  }

  STACK[0x270] = &unk_2874EE910;
  if (STACK[0x2F0])
  {
    sub_2621D1B78(STACK[0x2F0]);
  }

  if (a32)
  {
    sub_2621D1B78(a32);
  }

  if (STACK[0x258])
  {
    sub_2621D1B78(STACK[0x258]);
  }

  STACK[0x340] = &unk_2874EE910;
  if (STACK[0x3C0])
  {
    sub_2621D1B78(STACK[0x3C0]);
  }

  *v51 = &unk_2874EE788;
  v53 = v51[16];
  if (v53)
  {
    sub_2621D1B78(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26226829C(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 136) == 1)
  {
    v2 = *(result + 144);
    v3 = *v2;
    if (v1 >= 2)
    {
      v4 = v1 - 1;
      v5 = v2 + 1;
      do
      {
        v6 = *v5++;
        v3 = v3 + v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v7 = *(result + 144);
    v8 = *v7;
    if (v1 >= 2)
    {
      v9 = v1 - 1;
      v10 = 1;
      do
      {
        v8 = v8 + v7[*(result + 56) * v10];
        if (v10 + 1 == v1)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_262268318(uint64_t result, _OWORD *a2)
{
  *result = &unk_2874EE788;
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
    sub_262204144();
  }

  *(result + 137) = 1;
  return result;
}

void sub_2622683F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262268410(uint64_t a1, _OWORD *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE910;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_2621D7174();
}

void sub_262268E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

void sub_262268EA8(uint64_t a1, _OWORD *a2)
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
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_2621D7174();
}

void sub_262269214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
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

uint64_t sub_262269274(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v16, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v16);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v16, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v16);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 137) == 1)
  {
    v13 = *(a2 + 168);
    v14 = *(a2 + 184);
    *(a1 + 8) = *(a2 + 152);
    *(a1 + 104) = *(a1 + 8);
    *(a1 + 24) = v13;
    *(a1 + 40) = v14;
    *(a1 + 56) = 1;
    *(a1 + 112) = 0;
    sub_2621D7174();
  }

  if (sub_26226A160(a2, a1) == 2)
  {
    sub_26220571C(v16, (a2 + 152));
    sub_26226A1C8(v16, a2);
    sub_262205814(a1, v16);
    *&v16[0] = &unk_2874EE910;
    if (v17)
    {
      sub_2621D1B78(v17);
    }
  }

  else
  {
    sub_26226A1C8(a1, a2);
  }

  return a1;
}

void sub_262269524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26226956C(uint64_t a1, unint64_t *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1159);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v24[0] = v13;
  v22 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1167);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v22, "=", v24, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = *MEMORY[0x277D85DE8];
  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

uint64_t sub_262269944(uint64_t a1, unint64_t *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v24[0] = v13;
  v22 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v22, "=", v24, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = *MEMORY[0x277D85DE8];
  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

uint64_t sub_262269D1C(uint64_t a1, int *a2, int *a3)
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
  return v27[18] + 2 * v27[8] * v30[1].__locale_ + 2 * v27[7] * v30[0].__locale_;
}

uint64_t sub_26226A160(void *a1, void *a2)
{
  if (a1[15] != a2[15])
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[7] != a2[7] || a1[14] != a2[14])
  {
    return 2;
  }

  if (a1[13] == a2[13])
  {
    return 1;
  }

  return 2;
}

uint64_t sub_26226A1C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v135 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  v6 = (a2 + 152);
  if (v4 == *(a2 + 152))
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
          v11 = *(a2 + 200);
          v12 = *(a2 + 208);
          do
          {
            v14 = *v10++;
            v13 = v14;
            if (v14 >= v12)
            {
              v13 = v12;
            }

            if (v13 <= v11)
            {
              v13 = v11;
            }

            *v8++ = v13;
            --v7;
          }

          while (v7);
        }
      }

      else if (v7)
      {
        v68 = 0;
        v69 = *(result + 56);
        v70 = *(a2 + 144);
        v71 = *(a2 + 200);
        v72 = *(a2 + 208);
        do
        {
          v74 = *v70++;
          v73 = v74;
          if (v74 >= v72)
          {
            v73 = v72;
          }

          if (v73 <= v71)
          {
            v73 = v71;
          }

          v8[v69 * v68] = v73;
          if (v68 + 1 == v4)
          {
            v68 = 0;
          }

          else
          {
            ++v68;
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
        v38 = 0;
        v39 = *(a2 + 144);
        v40 = *(a2 + 200);
        v41 = *(a2 + 208);
        do
        {
          v42 = *(v39 + 4 * *(a2 + 56) * v38);
          if (v42 >= v41)
          {
            v42 = v41;
          }

          if (v42 <= v40)
          {
            v42 = v40;
          }

          *v8++ = v42;
          if (v38 + 1 == v4)
          {
            v38 = 0;
          }

          else
          {
            ++v38;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (v7)
    {
      v75 = 0;
      v76 = *(result + 56);
      v77 = *(a2 + 144);
      v78 = *(a2 + 200);
      v79 = *(a2 + 208);
      do
      {
        v80 = *(v77 + 4 * *(a2 + 56) * v75);
        if (v80 >= v79)
        {
          v80 = v79;
        }

        if (v80 <= v78)
        {
          v80 = v78;
        }

        v8[v76 * v75] = v80;
        if (v75 + 1 == v4)
        {
          v75 = 0;
        }

        else
        {
          ++v75;
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
      v130 = 0uLL;
      v131 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      sub_262205FA8(&v117, v5, v6, &v114);
      v15 = v114;
      if (v114 != *v5)
      {
        v16 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v17 = sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v17, " ", 1);
        v18 = MEMORY[0x277D82670];
        v19 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v19, " ", 1);
        sub_2621D552C(v19, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v20 = std::locale::use_facet(v132, MEMORY[0x277D82680]);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(v132);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v21 = std::locale::use_facet(v132, MEMORY[0x277D82680]);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v132);
        std::ostream::put();
        std::ostream::flush();
      }

      v133 = 0u;
      v134 = 0u;
      *&v132[0].__locale_ = 0u;
      v22 = *(v3 + 104);
      v23 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v22)
        {
          v24 = 0;
          v25 = 0;
          v27 = *(a2 + 200);
          v29 = *(&v118 + 1);
          v28 = v119;
          v30 = (v119 - *(&v118 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = v129;
          v32 = *(a2 + 144);
          v26 = *(a2 + 208);
          do
          {
            v132[0].__locale_ = v24;
            locale = v24;
            if (v28 != v29)
            {
              v34 = v29;
              v35 = v30;
              do
              {
                v36 = *v34++;
                v132[v36].__locale_ = 0;
                --v35;
              }

              while (v35);
              locale = v132[0].__locale_;
            }

            v37 = *(v32 + 4 * locale * v31);
            if (v37 >= v26)
            {
              v37 = v26;
            }

            if (v37 <= v27)
            {
              v37 = v27;
            }

            *(v23 + 4 * v25) = v37;
            if ((v24 + 1) == v15)
            {
              v24 = 0;
            }

            else
            {
              v24 = (v24 + 1);
            }

            ++v25;
          }

          while (v25 != v22);
        }
      }

      else if (v22)
      {
        v81 = 0;
        v82 = 0;
        v84 = *(a2 + 200);
        v86 = *(&v118 + 1);
        v85 = v119;
        v87 = (v119 - *(&v118 + 1)) >> 3;
        if (v87 <= 1)
        {
          v87 = 1;
        }

        v88 = v129;
        v89 = *(v3 + 56);
        v90 = *(a2 + 144);
        v83 = *(a2 + 208);
        do
        {
          v132[0].__locale_ = v81;
          v91 = v81;
          if (v85 != v86)
          {
            v92 = v86;
            v93 = v87;
            do
            {
              v94 = *v92++;
              v132[v94].__locale_ = 0;
              --v93;
            }

            while (v93);
            v91 = v132[0].__locale_;
          }

          v95 = *(v90 + 4 * v91 * v88);
          if (v95 >= v83)
          {
            v95 = v83;
          }

          if (v95 <= v84)
          {
            v95 = v84;
          }

          *(v23 + 4 * v81 * v89) = v95;
          if ((v81 + 1) == v15)
          {
            v81 = 0;
          }

          else
          {
            v81 = (v81 + 1);
          }

          ++v82;
        }

        while (v82 != v22);
      }
    }

    else
    {
      v130 = 0uLL;
      v131 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      sub_262205FA8(&v117, v5, v6, &v114);
      v43 = v114;
      if (v114 != *v5)
      {
        v44 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v45 = sub_2621D552C(v44, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v45, " ", 1);
        v46 = MEMORY[0x277D82670];
        v47 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v47, " ", 1);
        sub_2621D552C(v47, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v47 + *(*v47 - 24)));
        v48 = std::locale::use_facet(v132, MEMORY[0x277D82680]);
        (v48->__vftable[2].~facet_0)(v48, 10);
        std::locale::~locale(v132);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v46 + *(*v46 - 24)));
        v49 = std::locale::use_facet(v132, MEMORY[0x277D82680]);
        (v49->__vftable[2].~facet_0)(v49, 10);
        std::locale::~locale(v132);
        std::ostream::put();
        std::ostream::flush();
      }

      v133 = 0u;
      v134 = 0u;
      *&v132[0].__locale_ = 0u;
      v50 = *(v3 + 104);
      v51 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v50)
        {
          v52 = 0;
          v53 = 0;
          v55 = *(a2 + 200);
          v57 = *(&v118 + 1);
          v56 = v119;
          v58 = (v119 - *(&v118 + 1)) >> 3;
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v129;
          v60 = *(a2 + 136);
          v61 = *(a2 + 144);
          v54 = *(a2 + 208);
          do
          {
            v132[0].__locale_ = v52;
            v62 = v52;
            if (v56 != v57)
            {
              v63 = v57;
              v64 = v58;
              do
              {
                v65 = *v63++;
                v132[v65].__locale_ = 0;
                --v64;
              }

              while (v64);
              v62 = v132[0].__locale_;
            }

            v66 = *(a2 + 56);
            if (v60)
            {
              v66 = v59;
            }

            v67 = *(v61 + 4 * v66 * v62);
            if (v67 >= v54)
            {
              v67 = v54;
            }

            if (v67 <= v55)
            {
              v67 = v55;
            }

            *(v51 + 4 * v53) = v67;
            if ((v52 + 1) == v43)
            {
              v52 = 0;
            }

            else
            {
              v52 = (v52 + 1);
            }

            ++v53;
          }

          while (v53 != v50);
        }
      }

      else if (v50)
      {
        v96 = 0;
        v97 = 0;
        v99 = *(a2 + 200);
        v101 = *(&v118 + 1);
        v100 = v119;
        v102 = (v119 - *(&v118 + 1)) >> 3;
        if (v102 <= 1)
        {
          v102 = 1;
        }

        v103 = v129;
        v104 = *(v3 + 56);
        v105 = *(a2 + 136);
        v106 = *(a2 + 144);
        v98 = *(a2 + 208);
        do
        {
          v132[0].__locale_ = v96;
          v107 = v96;
          if (v100 != v101)
          {
            v108 = v101;
            v109 = v102;
            do
            {
              v110 = *v108++;
              v132[v110].__locale_ = 0;
              --v109;
            }

            while (v109);
            v107 = v132[0].__locale_;
          }

          v111 = *(a2 + 56);
          if (v105)
          {
            v111 = v103;
          }

          v112 = *(v106 + 4 * v111 * v107);
          if (v112 >= v98)
          {
            v112 = v98;
          }

          if (v112 <= v99)
          {
            v112 = v99;
          }

          *(v51 + 4 * v96 * v104) = v112;
          if ((v96 + 1) == v43)
          {
            v96 = 0;
          }

          else
          {
            v96 = (v96 + 1);
          }

          ++v97;
        }

        while (v97 != v50);
      }
    }

    result = sub_2621C57C8(&v117);
  }

  v113 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26226AA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::locale::~locale((v7 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26226AA3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v110 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  if (v4 == *a2)
  {
    v6 = *(result + 104);
    v7 = *(result + 144);
    v8 = *(result + 136);
    if (*(a2 + 184))
    {
      if (*(result + 136))
      {
        if (v6)
        {
          v9 = *(a2 + 192);
          do
          {
            v10 = *v9++;
            *v7++ = *(a2 + 248) + v10;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v55 = 0;
        v56 = *(result + 56);
        v57 = *(a2 + 192);
        do
        {
          v58 = *v57++;
          v7[v56 * v55] = *(a2 + 248) + v58;
          if (v55 + 1 == v4)
          {
            v55 = 0;
          }

          else
          {
            ++v55;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (*(result + 136))
    {
      if (v6)
      {
        v31 = 0;
        v32 = *(a2 + 192);
        do
        {
          *v7++ = *(a2 + 248) + *(v32 + 4 * *(a2 + 104) * v31);
          if (v31 + 1 == v4)
          {
            v31 = 0;
          }

          else
          {
            ++v31;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (v6)
    {
      v59 = 0;
      v60 = *(result + 56);
      v61 = *(a2 + 192);
      do
      {
        v7[v60 * v59] = *(a2 + 248) + *(v61 + 4 * *(a2 + 104) * v59);
        if (v59 + 1 == v4)
        {
          v59 = 0;
        }

        else
        {
          ++v59;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      sub_262205FA8(&v92, v5, a2, &v89);
      v11 = v89;
      if (v89 != *v5)
      {
        v12 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v13 = sub_2621D552C(v12, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v13, " ", 1);
        v14 = MEMORY[0x277D82670];
        v15 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v15, " ", 1);
        sub_2621D552C(v15, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v17 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
      }

      v108 = 0u;
      v109 = 0u;
      *&v107[0].__locale_ = 0u;
      v18 = *(v3 + 104);
      v19 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v18)
        {
          v20 = 0;
          v21 = 0;
          v23 = *(&v93 + 1);
          v22 = v94;
          v24 = (v94 - *(&v93 + 1)) >> 3;
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = v104;
          v26 = *(a2 + 192);
          do
          {
            v107[0].__locale_ = v20;
            locale = v20;
            if (v22 != v23)
            {
              v28 = v23;
              v29 = v24;
              do
              {
                v30 = *v28++;
                v107[v30].__locale_ = 0;
                --v29;
              }

              while (v29);
              locale = v107[0].__locale_;
            }

            *(v19 + 4 * v21) = *(a2 + 248) + *(v26 + 4 * locale * v25);
            if ((v20 + 1) == v11)
            {
              v20 = 0;
            }

            else
            {
              v20 = (v20 + 1);
            }

            ++v21;
          }

          while (v21 != v18);
        }
      }

      else if (v18)
      {
        v62 = 0;
        v63 = 0;
        v65 = *(&v93 + 1);
        v64 = v94;
        v66 = (v94 - *(&v93 + 1)) >> 3;
        if (v66 <= 1)
        {
          v66 = 1;
        }

        v67 = v104;
        v68 = *(v3 + 56);
        v69 = *(a2 + 192);
        do
        {
          v107[0].__locale_ = v62;
          v70 = v62;
          if (v64 != v65)
          {
            v71 = v65;
            v72 = v66;
            do
            {
              v73 = *v71++;
              v107[v73].__locale_ = 0;
              --v72;
            }

            while (v72);
            v70 = v107[0].__locale_;
          }

          *(v19 + 4 * v62 * v68) = *(a2 + 248) + *(v69 + 4 * v70 * v67);
          if ((v62 + 1) == v11)
          {
            v62 = 0;
          }

          else
          {
            v62 = (v62 + 1);
          }

          ++v63;
        }

        while (v63 != v18);
      }
    }

    else
    {
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      sub_262205FA8(&v92, v5, a2, &v89);
      v33 = v89;
      if (v89 != *v5)
      {
        v34 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v35 = sub_2621D552C(v34, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v35, " ", 1);
        v36 = MEMORY[0x277D82670];
        v37 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v37, " ", 1);
        sub_2621D552C(v37, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v37 + *(*v37 - 24)));
        v38 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v38->__vftable[2].~facet_0)(v38, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v36 + *(*v36 - 24)));
        v39 = std::locale::use_facet(v107, MEMORY[0x277D82680]);
        (v39->__vftable[2].~facet_0)(v39, 10);
        std::locale::~locale(v107);
        std::ostream::put();
        std::ostream::flush();
      }

      v108 = 0u;
      v109 = 0u;
      *&v107[0].__locale_ = 0u;
      v40 = *(v3 + 104);
      v41 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v40)
        {
          v42 = 0;
          v43 = 0;
          v45 = *(&v93 + 1);
          v44 = v94;
          v46 = (v94 - *(&v93 + 1)) >> 3;
          if (v46 <= 1)
          {
            v46 = 1;
          }

          v47 = v104;
          v48 = *(a2 + 184);
          v49 = *(a2 + 192);
          do
          {
            v107[0].__locale_ = v42;
            v50 = v42;
            if (v44 != v45)
            {
              v51 = v45;
              v52 = v46;
              do
              {
                v53 = *v51++;
                v107[v53].__locale_ = 0;
                --v52;
              }

              while (v52);
              v50 = v107[0].__locale_;
            }

            v54 = *(a2 + 104);
            if (v48)
            {
              v54 = v47;
            }

            *(v41 + 4 * v43) = *(a2 + 248) + *(v49 + 4 * v54 * v50);
            if ((v42 + 1) == v33)
            {
              v42 = 0;
            }

            else
            {
              v42 = (v42 + 1);
            }

            ++v43;
          }

          while (v43 != v40);
        }
      }

      else if (v40)
      {
        v74 = 0;
        v75 = 0;
        v77 = *(&v93 + 1);
        v76 = v94;
        v78 = (v94 - *(&v93 + 1)) >> 3;
        if (v78 <= 1)
        {
          v78 = 1;
        }

        v79 = v104;
        v80 = *(v3 + 56);
        v81 = *(a2 + 184);
        v82 = *(a2 + 192);
        do
        {
          v107[0].__locale_ = v74;
          v83 = v74;
          if (v76 != v77)
          {
            v84 = v77;
            v85 = v78;
            do
            {
              v86 = *v84++;
              v107[v86].__locale_ = 0;
              --v85;
            }

            while (v85);
            v83 = v107[0].__locale_;
          }

          v87 = *(a2 + 104);
          if (v81)
          {
            v87 = v79;
          }

          *(v41 + 4 * v74 * v80) = *(a2 + 248) + *(v82 + 4 * v87 * v83);
          if ((v74 + 1) == v33)
          {
            v74 = 0;
          }

          else
          {
            v74 = (v74 + 1);
          }

          ++v75;
        }

        while (v75 != v40);
      }
    }

    result = sub_2621C57C8(&v92);
  }

  v88 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26226B1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::locale::~locale((v7 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26226B214(uint64_t a1, __int32 *a2, int16x4_t a3)
{
  if (*(a1 + 137) == 1)
  {
    v5 = MEMORY[0x277D82670];
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v8 = sub_2621D552C(v7, " ", 1);
    v9 = MEMORY[0x266727260](v8, 664);
    v10 = sub_2621D552C(v9, " ", 1);
    v11 = sub_2621D552C(v10, "operator=", 9);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v13 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
  }

  a3.i32[0] = *a2;
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7630;
      v19 = xmmword_2623A7620;
      v20 = (v15 + 8);
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s16(v22, a3).u8[0])
        {
          *(v20 - 2) = a3.i32[0];
        }

        if (vuzp1_s16(v22, a3).i8[2])
        {
          *(v20 - 1) = a3.i32[0];
        }

        if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
        {
          *v20 = a3.i32[0];
          v20[1] = a3.i32[0];
        }

        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v20 += 4;
        v16 -= 4;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    v23 = 0;
    v24 = *(a1 + 56);
    v25 = *(a1 + 8);
    do
    {
      *(v15 + 4 * v24 * v23) = a3.i32[0];
      if (v23 + 1 == v25)
      {
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      --v14;
    }

    while (v14);
  }

  return a1;
}

void sub_26226B4C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v10 = a6;
  v11 = (a3 + qword_2623A85E0[a5]);
  if (v11[1] != *v11)
  {
    v12 = a2 + qword_2623A85E0[a4];
    sub_2621C7F54(1uLL);
  }
}

void sub_26226C308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p)
{
  sub_262258C88(&STACK[0x280]);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26226C538(void *a1, void *a2, uint64_t *a3)
{
  v14 = a1;
  v7 = a2;
  v8 = *a3;
  v9 = a3[1];
  while (v8 != v9)
  {
    v10 = objc_msgSend_parentIdentifier(*(v8 + 8), v5, v6);

    if (v10)
    {
      v11 = objc_msgSend_parentIdentifier(*(v8 + 8), v5, v6);
      isEqual = objc_msgSend_isEqual_(v11, v12, v14);

      if (isEqual)
      {
        sub_26225A86C(v8, v7);
      }
    }

    v8 += 176;
  }
}

size_t *sub_26226C61C(size_t *result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v23 = v2;
    if (v9)
    {
      sub_26226C934(v9);
    }

    v11 = 24 * v6;
    v19 = 0;
    v20 = v11;
    v12 = 0;
    v21 = v11;
    v22 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_2621CC810(v11, *a2, *(a2 + 1));
      v11 = v20;
      v14 = v21;
      v12 = v22;
    }

    else
    {
      v13 = *a2;
      *(v11 + 16) = *(a2 + 2);
      *v11 = v13;
      v14 = v11;
    }

    v10 = v14 + 24;
    v15 = v2[1] - *v2;
    v16 = v11 - v15;
    memcpy((v11 - v15), *v2, v15);
    v17 = *v2;
    *v2 = v16;
    v2[1] = v10;
    v18 = v2[2];
    v2[2] = v12;
    v21 = v17;
    v22 = v18;
    v19 = v17;
    v20 = v17;
    result = sub_26226C98C(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_2621CC810(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = v4 + 24;
    v2[1] = v4 + 24;
  }

  v2[1] = v10;
  return result;
}

void sub_26226C784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26226C98C(va);
  _Unwind_Resume(a1);
}

void *sub_26226C7A4(uint64_t a1, void *a2)
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
      v4 = v2;
      if ((sub_26225E3EC(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_26225E3EC(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_26226C8D8(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_26226C934(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_26226C98C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26226CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 137) == 1)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1342);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "reshape", 7);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  sub_2621DD5D0(&v64, a3, a3 + 12, 3uLL);
  memset(v63, 0, sizeof(v63));
  v16 = v64;
  v15 = v65;
  sub_262270440(v63, v64, v65, v65 - v64);
  v56 = a1;
  v57 = a2;
  v58 = v16;
  if (v16 >= v15)
  {
    v19 = -1;
  }

  else
  {
    v17 = 0;
    v18 = MEMORY[0x277D82670];
    v19 = -1;
    v20 = MEMORY[0x277D82680];
    v21 = v16;
    do
    {
      v22 = *v21;
      if (*v21)
      {
        v23 = v22 <= -2;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        sub_2621D552C(v18, "runtime_err in ", 15);
        sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v24 = MEMORY[0x266727260](v18, 1348);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "reshape", 7);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(&v59, v20);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(&v59);
        v16 = v58;
        std::ostream::put();
        std::ostream::flush();
        LODWORD(v59.__locale_) = 200000000;
        sub_2621D59F8("err", "shape can only be -1 or integer between 1 and ", &v59);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v26 = std::locale::use_facet(&v59, v20);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v59);
        std::ostream::put();
        std::ostream::flush();
        v22 = *v21;
      }

      if (v22 != -1 || v19 == -1)
      {
        if (v22 == -1 && v19 == -1)
        {
          v19 = v17;
        }
      }

      else
      {
        sub_2621D552C(v18, "runtime_err in ", 15);
        sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v29 = MEMORY[0x266727260](v18, 1349);
        sub_2621D552C(v29, " ", 1);
        sub_2621D552C(v29, "reshape", 7);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v59, v20);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v59);
        v16 = v58;
        std::ostream::put();
        std::ostream::flush();
        sub_262270668("err", "shape cannot be deduced");
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v31 = std::locale::use_facet(&v59, v20);
        (v31->__vftable[2].~facet_0)(v31, 10);
        std::locale::~locale(&v59);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v21;
      ++v17;
    }

    while (v21 < v15);
  }

  v32 = 1;
  if (v16 == v15)
  {
    v34 = v57;
  }

  else
  {
    v33 = v16;
    v34 = v57;
    do
    {
      v35 = *v33++;
      v32 *= v35;
    }

    while (v33 != v15);
  }

  if (v32 >= 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = -v32;
  }

  v37 = *(v34 + 104);
  if (v37 < v36 || v37 % v36)
  {
    v38 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v39 = sub_2621D552C(v38, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v39, " ", 1);
    v40 = MEMORY[0x277D82670];
    v41 = MEMORY[0x266727260](MEMORY[0x277D82670], 1356);
    sub_2621D552C(v41, " ", 1);
    sub_2621D552C(v41, "reshape", 7);
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v42 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
    sub_262270774("err", "length not match, cannot reshape");
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v43 = std::locale::use_facet(&v59, MEMORY[0x277D82680]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v59);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v19 != -1)
  {
    *&v63[0][8 * v19] = *(v34 + 104) / v36;
  }

  sub_2622042C8(__b, v63);
  *(v56 + 8) = 0u;
  *v56 = &unk_2874EE7A8;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 0u;
  *(v56 + 56) = 0u;
  *(v56 + 72) = 0u;
  *(v56 + 88) = 0u;
  *(v56 + 120) = 0;
  *(v56 + 128) = 0;
  *(v56 + 136) = 257;
  if (*(v34 + 136) == 1)
  {
    v44 = *(v34 + 120);
    v45 = *(v34 + 128);
    if (!v45)
    {
      *(v56 + 120) = v44;
      *(v56 + 128) = 0;
      goto LABEL_49;
    }

    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    v46 = *(v56 + 128);
    *(v56 + 120) = v44;
    *(v56 + 128) = v45;
    if (!v46)
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_2621D7078(&v59, (v34 + 8));
    sub_2621D8C64(&v59, v34);
    v48 = v60;
    v47 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = *(v56 + 128);
    *(v56 + 120) = v48;
    *(v56 + 128) = v47;
    if (v49)
    {
      sub_2621D1B78(v49);
    }

    v59.__locale_ = &unk_2874EEB10;
    v46 = v61;
    if (!v61)
    {
      goto LABEL_49;
    }
  }

  sub_2621D1B78(v46);
LABEL_49:
  sub_262204784(v56 + 8, __b);
  *(v56 + 137) = 0;
  v50 = (v56 + 72);
  v51 = -3;
  v52 = 1;
  while (1)
  {
    v53 = *(v50 - 6);
    if (v53 != 1)
    {
      break;
    }

LABEL_53:
    --v50;
    if (__CFADD__(v51++, 1))
    {
      v55 = 1;
      goto LABEL_57;
    }
  }

  if (*v50 == v52)
  {
    v52 *= v53;
    goto LABEL_53;
  }

  v55 = 0;
LABEL_57:
  *(v56 + 136) = v55;
  *(v56 + 144) = **(v56 + 120) + 4 * *(v56 + 112);
  if (v63[0])
  {
    operator delete(v63[0]);
  }

  if (v16)
  {
    operator delete(v16);
  }
}

void sub_26226D448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_2621D1B78(a29);
  }

  *a10 = v29;
  v32 = a10[16];
  if (v32)
  {
    sub_2621D1B78(v32);
  }

  v33 = *(v30 - 136);
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26226D5AC(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (!v3)
  {
    v55 = MEMORY[0x277D82670];
    v56 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v57 = sub_2621D552C(v56, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_concatenate.hpp", 113);
    v58 = sub_2621D552C(v57, " ", 1);
    v59 = MEMORY[0x266727260](v58, 38);
    v60 = sub_2621D552C(v59, " ", 1);
    v61 = sub_2621D552C(v60, "concatenate", 11);
    std::ios_base::getloc((v61 + *(*v61 - 24)));
    v62 = std::locale::use_facet(v87, MEMORY[0x277D82680]);
    (v62->__vftable[2].~facet_0)(v62, 10);
    std::locale::~locale(v87);
    std::ostream::put();
    std::ostream::flush();
    sub_262270228("err", "at least 1 to concat");
    std::ios_base::getloc((v55 + *(*v55 - 24)));
    v63 = std::locale::use_facet(v87, MEMORY[0x277D82680]);
    (v63->__vftable[2].~facet_0)(v63, 10);
    std::locale::~locale(v87);
    std::ostream::put();
    std::ostream::flush();
    v64 = *a2;
    v65 = *(*a2 + 24);
    v84 = *(*a2 + 8);
    v85 = v65;
    v86 = *(v64 + 40);
    *&v84 = 0;
    sub_26226EC48(a1, &v84);
    goto LABEL_41;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0x86BCA1AF286BCA1BLL * (v3 >> 3);
  v7 = *(v2 + 24);
  v84 = *(v2 + 8);
  v85 = v7;
  v86 = *(v2 + 40);
  *&v84 = 0;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v73 = v8;
  v9 = 16;
  v10 = MEMORY[0x277D82670];
  v11 = MEMORY[0x277D82680];
  do
  {
    v70 = v5;
    v71 = v4;
    v12 = 0;
    v68 = *a2 + 152 * v5;
    v69 = v9;
    v13 = *a2 + v9;
    do
    {
      if (*(v13 + v12) != *(&v84 + v12 + 8))
      {
        v14 = sub_2621D552C(v10, "runtime_err in ", 15);
        v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_concatenate.hpp", 113);
        v16 = sub_2621D552C(v15, " ", 1);
        v17 = MEMORY[0x266727260](v16, 52);
        v18 = sub_2621D552C(v17, " ", 1);
        v19 = sub_2621D552C(v18, "concatenate", 11);
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v20 = std::locale::use_facet(v87, v11);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(v87);
        std::ostream::put();
        std::ostream::flush();
        sub_262270334("err", "can not concat");
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v21 = std::locale::use_facet(v87, v11);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v87);
        std::ostream::put();
        std::ostream::flush();
      }

      v12 += 8;
    }

    while (v12 != 16);
    v4 = *(v68 + 8) + v71;
    v5 = v70 + 1;
    v9 = v69 + 152;
  }

  while (v70 + 1 != v73);
  *&v84 = *(v68 + 8) + v71;
  sub_26226EC48(a1, &v84);
  v22 = 0;
  v72 = 0;
  v23 = (a1 + 8);
  do
  {
    v24 = *a2;
    if (*(*a2 + 152 * v22 + 137) == 1)
    {
      sub_2621D552C(v10, "runtime_err in ", 15);
      sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_concatenate.hpp", 113);
      sub_2621D552C(v10, " ", 1);
      v25 = MEMORY[0x266727260](v10, 59);
      sub_2621D552C(v25, " ", 1);
      sub_2621D552C(v25, "concatenate", 11);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(v87, MEMORY[0x277D82680]);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(v87);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6874("err", "empty tensor");
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v27 = std::locale::use_facet(v87, MEMORY[0x277D82680]);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(v87);
      std::ostream::put();
      std::ostream::flush();
      v24 = *a2;
    }

    v28 = 0;
    v29 = *(v24 + 152 * v22 + 8);
    v30 = (a1 + 8);
    do
    {
      v31 = *v30++;
      v32 = &v87[v28];
      v32->__locale_ = 0;
      v32[1].__locale_ = v31;
      v32[2].__locale_ = 1;
      v28 += 3;
    }

    while (v28 != 9);
    v33 = v72 + v29;
    sub_262202A58(v23, v87, 0, v72, v72 + v29, 1);
    v34 = *(a1 + 40);
    v77[2] = *(a1 + 56);
    v35 = *(a1 + 88);
    v78[0] = *(a1 + 72);
    v78[1] = v35;
    v79 = *(a1 + 104);
    v36 = *(a1 + 24);
    v76 = *v23;
    v77[0] = v36;
    v72 = v33;
    v75 = &unk_2874EE7A8;
    v80 = 0;
    v81 = 0;
    v82 = 257;
    v37 = v88;
    v38 = 56;
    v77[1] = v34;
    do
    {
      v39 = *(v37 - 1);
      v40 = v37[1];
      v41 = (&v75 + v38);
      v42 = vcvtps_u32_f32((*v37 - v39) / v40);
      *v41 = *(&v75 + v38) * v40;
      v43 = *(a1 + v38);
      *(v41 - 6) = v42;
      *(&v79 + 1) += v43 * v39;
      v38 += 8;
      v37 += 3;
    }

    while (v38 != 80);
    *&v79 = *(&v76 + 1) * v76 * *&v77[0];
    v44 = *(a1 + 120);
    v45 = *(a1 + 128);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = v81;
      v80 = v44;
      v81 = v45;
      if (v46)
      {
        sub_2621D1B78(v46);
        v44 = v80;
      }
    }

    else
    {
      v80 = *(a1 + 120);
    }

    v47 = 0;
    v83 = *v44 + 4 * *(&v79 + 1);
    HIBYTE(v82) = 0;
    v48 = 1;
    while (1)
    {
      v49 = *(v77 + v47);
      if (v49 != 1)
      {
        break;
      }

LABEL_26:
      v47 -= 8;
      if (v47 == -24)
      {
        v50 = 1;
        goto LABEL_29;
      }
    }

    if (*(v78 + v47) == v48)
    {
      v48 *= v49;
      goto LABEL_26;
    }

    v50 = 0;
LABEL_29:
    LOBYTE(v82) = v50;
    v51 = *a2 + 152 * v22;
    if (*(v51 + 137) == 1)
    {
      sub_2621D552C(v10, "runtime_err in ", 15);
      sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v10, " ", 1);
      v52 = MEMORY[0x266727260](v10, 858);
      sub_2621D552C(v52, " ", 1);
      sub_2621D552C(v52, "assign_from", 11);
      std::ios_base::getloc((v52 + *(*v52 - 24)));
      v53 = std::locale::use_facet(v87, MEMORY[0x277D82680]);
      (v53->__vftable[2].~facet_0)(v53, 10);
      std::locale::~locale(v87);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D8074("err", "empty tensor in");
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v54 = std::locale::use_facet(v87, MEMORY[0x277D82680]);
      (v54->__vftable[2].~facet_0)(v54, 10);
      std::locale::~locale(v87);
      std::ostream::put();
      std::ostream::flush();
      v44 = v80;
    }

    if (v44 == *(v51 + 120) && !sub_2622261B8(&v76, (v51 + 8)))
    {
      sub_26226EC48(v87, (v51 + 8));
      sub_26226F700(v87, v51);
      sub_26226F700(&v75, v87);
      v87[0].__locale_ = &unk_2874EE7A8;
      if (v89)
      {
        sub_2621D1B78(v89);
      }
    }

    else
    {
      sub_26226F700(&v75, v51);
    }

    v75 = &unk_2874EE7A8;
    if (v81)
    {
      sub_2621D1B78(v81);
    }

    ++v22;
  }

  while (v22 != v73);
LABEL_41:
  v66 = *MEMORY[0x277D85DE8];
}

_OWORD *sub_26226E070(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  a1[6] = 0u;
  v6 = a1 + 6;
  a1[7] = 0u;
  a1[8] = 0u;
  sub_262270150((a1 + 9), a2);
  v7 = 0;
  v46 = a2 + 8;
  v47 = a2;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v8 = MEMORY[0x277D82670];
  v9 = MEMORY[0x277D82680];
  do
  {
    v10 = *(a3 + v7);
    v48 = v10;
    if (v10 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (v11 >= 3)
    {
      sub_2621D552C(v8, "runtime_err in ", 15);
      sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v8, " ", 1);
      v12 = MEMORY[0x266727260](v8, 57);
      sub_2621D552C(v12, " ", 1);
      sub_2621D552C(v12, "init", 4);
      std::ios_base::getloc((v12 + *(*v12 - 24)));
      v13 = std::locale::use_facet(&v52, v9);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
      sub_262229DB0("err", "the absolute value of axis should be less than dim");
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v14 = std::locale::use_facet(&v52, v9);
      (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v10 < 0)
    {
      v10 += 3;
      v48 = v10;
    }

    if (v10 >= 3)
    {
      sub_2621D552C(v8, "runtime_err in ", 15);
      sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v8, " ", 1);
      v15 = MEMORY[0x266727260](v8, 61);
      sub_2621D552C(v15, " ", 1);
      sub_2621D552C(v15, "init", 4);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v52, v9);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v48);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v17 = std::locale::use_facet(&v52, v9);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
      if (v10 < 0)
      {
        sub_2621D552C(v8, "runtime_err in ", 15);
        sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
        sub_2621D552C(v8, " ", 1);
        v18 = MEMORY[0x266727260](v8, 62);
        sub_2621D552C(v18, " ", 1);
        sub_2621D552C(v18, "init", 4);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v19 = std::locale::use_facet(&v52, v9);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(&v52);
        std::ostream::put();
        std::ostream::flush();
        sub_262201E08("err", &v48);
        std::ios_base::getloc((v8 + *(*v8 - 24)));
        v20 = std::locale::use_facet(&v52, v9);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(&v52);
        std::ostream::put();
        std::ostream::flush();
      }
    }

    v52.__locale_ = v10;
    sub_2621C9004(&v49, &v52);
    v7 += 4;
  }

  while (v7 != 12);
  v21 = v49;
  if (v50 != v49)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v50 - v49) >> 3;
    v25 = v24 - 1;
    if (v24 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = (v50 - v49) >> 3;
    }

    v27 = v49 + 1;
    do
    {
      v28 = v22 + 1;
      if (v22 + 1 < v24)
      {
        v29 = v49[v22];
        v30 = v27;
        v31 = v25;
        do
        {
          v32 = *v30++;
          v23 |= v29 == v32;
          --v31;
        }

        while (v31);
      }

      --v25;
      ++v27;
      v22 = v28;
    }

    while (v28 != v26);
    if (v23)
    {
      v33 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v34 = sub_2621D552C(v33, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v34, " ", 1);
      v35 = MEMORY[0x277D82670];
      v36 = MEMORY[0x266727260](MEMORY[0x277D82670], 73);
      sub_2621D552C(v36, " ", 1);
      sub_2621D552C(v36, "init", 4);
      std::ios_base::getloc((v36 + *(*v36 - 24)));
      v37 = std::locale::use_facet(&v52, MEMORY[0x277D82680]);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6A8C("err", "duplicate dim idx");
      std::ios_base::getloc((v35 + *(*v35 - 24)));
      v38 = std::locale::use_facet(&v52, MEMORY[0x277D82680]);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  for (i = 0; i != 24; i += 8)
  {
    *(a1 + i + 48) = *&v21[i];
  }

  operator delete(v21);
  for (j = 0; j != 24; j += 8)
  {
    *(a1 + j) = *(v46 + 8 * *(a1 + j + 48));
  }

  for (k = 0; k != 3; ++k)
  {
    *(a1 + *(a1 + k + 6) + 9) = k;
  }

  for (m = 0; m != 3; ++m)
  {
    *(v6 + m) = 1;
    if (m <= 1)
    {
      v43 = m;
      v44 = 1;
      do
      {
        v44 *= *(v47 + 16 + 8 * v43);
        *(v6 + m) = v44;
        ++v43;
      }

      while (v43 != 2);
    }
  }

  return a1;
}

void sub_26226E824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16)
{
  std::locale::~locale(&a16);
  if (v16)
  {
    operator delete(v16);
  }

  *(v17 + 144) = &unk_2874EE7A8;
  v19 = *(v17 + 272);
  if (v19)
  {
    sub_2621D1B78(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26226E8B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 281) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v14, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v14);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v14, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v14);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 137) == 1)
  {
    sub_262204784(a1 + 8, a2);
    sub_2621D7174();
  }

  if (*(a2 + 264) == *(a1 + 120))
  {
    sub_26226EC48(v14, a2);
    sub_26226ED30(v14, a2);
    sub_26226F700(a1, v14);
    *&v14[0] = &unk_2874EE7A8;
    if (v15)
    {
      sub_2621D1B78(v15);
    }
  }

  else
  {
    sub_26226ED30(a1, a2);
  }

  return a1;
}

void sub_26226EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_26226EB88(void ***a1)
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

uint64_t sub_26226EC48(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EE7A8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  sub_262204784(a1 + 8, a2);
  if (*(a1 + 104))
  {
    sub_2621D7174();
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_26226ED18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26226ED30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v113 = *MEMORY[0x277D85DE8];
  v4 = (result + 8);
  if (*(result + 8) == *a2 && *(result + 16) == *(a2 + 8) && *(result + 24) == *(a2 + 16))
  {
    if (*(a2 + 280) == 1)
    {
      v99 = 0uLL;
      v100 = 0uLL;
      v98 = 0uLL;
      v5 = *(result + 104);
      v6 = *(result + 144);
      if (*(result + 136))
      {
        if (v5)
        {
          v7 = 0;
          v8 = *(a2 + 288);
          do
          {
            v9 = 0;
            v10 = (a2 + 96);
            v11 = 3;
            do
            {
              v12 = *(&v98 + *(v10 - 3));
              v13 = *v10++;
              v9 += v13 * v12;
              --v11;
            }

            while (v11);
            v14 = 0;
            *(v6 + 4 * v7) = *(v8 + 4 * v9);
            do
            {
              v15 = *(&v99 + v14) + 1;
              *(&v99 + v14) = v15;
              result = *(v3 + 24 + v14);
              if (v15 != result)
              {
                break;
              }

              *(&v99 + v14) = 0;
              v14 -= 8;
            }

            while (v14 != -24);
            ++v7;
          }

          while (v7 != v5);
        }
      }

      else if (v5)
      {
        v71 = 0;
        v72 = *(a2 + 288);
        do
        {
          v73 = 0;
          v74 = 0;
          do
          {
            v74 += *(v3 + 56 + v73) * *(&v98 + v73);
            v73 += 8;
          }

          while (v73 != 24);
          v75 = 0;
          v76 = (a2 + 96);
          v77 = 3;
          do
          {
            v78 = *(&v98 + *(v76 - 3));
            v79 = *v76++;
            v75 += v79 * v78;
            --v77;
          }

          while (v77);
          v80 = 0;
          *(v6 + 4 * v74) = *(v72 + 4 * v75);
          do
          {
            v81 = *(&v99 + v80) + 1;
            *(&v99 + v80) = v81;
            result = *(v3 + 24 + v80);
            if (v81 != result)
            {
              break;
            }

            *(&v99 + v80) = 0;
            v80 -= 8;
          }

          while (v80 != -24);
          ++v71;
        }

        while (v71 != v5);
      }
    }

    else
    {
      v99 = 0uLL;
      v100 = 0uLL;
      v98 = 0uLL;
      v65 = *(result + 104);
      v66 = *(result + 144);
      if (*(result + 136))
      {
        if (v65)
        {
          v67 = 0;
          v68 = result + 24;
          do
          {
            result = sub_262270094(a2, &v98);
            v69 = 0;
            *(v66 + 4 * v67) = result;
            do
            {
              v70 = *(&v99 + v69) + 1;
              *(&v99 + v69) = v70;
              if (v70 != *(v68 + v69))
              {
                break;
              }

              *(&v99 + v69) = 0;
              v69 -= 8;
            }

            while (v69 != -24);
            ++v67;
          }

          while (v67 != v65);
        }
      }

      else if (v65)
      {
        v82 = 0;
        v83 = result + 56;
        v84 = result + 24;
        do
        {
          v85 = 0;
          v86 = 0;
          do
          {
            v86 += *(v83 + v85) * *(&v98 + v85);
            v85 += 8;
          }

          while (v85 != 24);
          result = sub_262270094(a2, &v98);
          v87 = 0;
          *(v66 + 4 * v86) = result;
          do
          {
            v88 = *(&v99 + v87) + 1;
            *(&v99 + v87) = v88;
            if (v88 != *(v84 + v87))
            {
              break;
            }

            *(&v99 + v87) = 0;
            v87 -= 8;
          }

          while (v87 != -24);
          ++v82;
        }

        while (v82 != v65);
      }
    }
  }

  else
  {
    if (*(a2 + 280) == 1)
    {
      v111 = 0uLL;
      v112 = 0uLL;
      v109 = 0uLL;
      v110 = 0uLL;
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v98 = 0uLL;
      v91 = 0uLL;
      memset(v90, 0, sizeof(v90));
      sub_2622063F0(&v98, v4, a2, v90);
      if (*&v90[0] != *v4 || *(v90 + 8) != *(v3 + 16))
      {
        v16 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v17 = sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v17, " ", 1);
        v18 = MEMORY[0x277D82670];
        v19 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v19, " ", 1);
        sub_2621D552C(v19, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v20 = std::locale::use_facet(v95, MEMORY[0x277D82680]);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(v95);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v21 = std::locale::use_facet(v95, MEMORY[0x277D82680]);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v95);
        std::ostream::put();
        std::ostream::flush();
      }

      v97 = 0u;
      *&v95[0].__locale_ = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v22 = *(v3 + 104);
      v23 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v22)
        {
          v24 = 0;
          v25 = (a2 + 96);
          v26 = *(a2 + 288);
          do
          {
            v89 = 0;
            sub_2622066E4(&v98, v95, &v89, &v92);
            v27 = 0;
            v28 = v25;
            v29 = 3;
            do
            {
              v30 = *(&v92 + *(v28 - 3));
              v31 = *v28++;
              v27 += v31 * v30;
              --v29;
            }

            while (v29);
            *(v23 + 4 * v24) = *(v26 + 4 * v27);
            for (i = 2; i != -1; --i)
            {
              v33 = (v95[i].__locale_ + 1);
              v95[i].__locale_ = v33;
              if (v33 != *(v90 + i * 8))
              {
                break;
              }

              v95[i].__locale_ = 0;
            }

            ++v24;
          }

          while (v24 != v22);
        }
      }

      else if (v22)
      {
        v45 = 0;
        v46 = v3 + 56;
        v47 = (a2 + 96);
        v48 = *(a2 + 288);
        do
        {
          v89 = 0;
          sub_2622066E4(&v98, v95, &v89, &v92);
          v49 = 0;
          v50 = 0;
          do
          {
            v50 += *(v46 + v49 * 8) * v95[v49].__locale_;
            ++v49;
          }

          while (v49 != 3);
          v51 = 0;
          v52 = v47;
          v53 = 3;
          do
          {
            v54 = *(&v92 + *(v52 - 3));
            v55 = *v52++;
            v51 += v55 * v54;
            --v53;
          }

          while (v53);
          *(v23 + 4 * v50) = *(v48 + 4 * v51);
          for (j = 2; j != -1; --j)
          {
            v57 = (v95[j].__locale_ + 1);
            v95[j].__locale_ = v57;
            if (v57 != *(v90 + j * 8))
            {
              break;
            }

            v95[j].__locale_ = 0;
          }

          ++v45;
        }

        while (v45 != v22);
      }
    }

    else
    {
      v111 = 0uLL;
      v112 = 0uLL;
      v109 = 0uLL;
      v110 = 0uLL;
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v98 = 0uLL;
      v91 = 0uLL;
      memset(v90, 0, sizeof(v90));
      sub_2622063F0(&v98, v4, a2, v90);
      if (*&v90[0] != *v4 || *(v90 + 8) != *(v3 + 16))
      {
        v34 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v35 = sub_2621D552C(v34, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v35, " ", 1);
        v36 = MEMORY[0x277D82670];
        v37 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v37, " ", 1);
        sub_2621D552C(v37, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v37 + *(*v37 - 24)));
        v38 = std::locale::use_facet(v95, MEMORY[0x277D82680]);
        (v38->__vftable[2].~facet_0)(v38, 10);
        std::locale::~locale(v95);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v36 + *(*v36 - 24)));
        v39 = std::locale::use_facet(v95, MEMORY[0x277D82680]);
        (v39->__vftable[2].~facet_0)(v39, 10);
        std::locale::~locale(v95);
        std::ostream::put();
        std::ostream::flush();
      }

      v97 = 0u;
      *&v95[0].__locale_ = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v40 = *(v3 + 104);
      v41 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v40)
        {
          for (k = 0; k != v40; ++k)
          {
            v89 = 0;
            sub_2622066E4(&v98, v95, &v89, &v92);
            *(v41 + 4 * k) = sub_262270094(a2, &v92);
            for (m = 2; m != -1; --m)
            {
              v44 = (v95[m].__locale_ + 1);
              v95[m].__locale_ = v44;
              if (v44 != *(v90 + m * 8))
              {
                break;
              }

              v95[m].__locale_ = 0;
            }
          }
        }
      }

      else if (v40)
      {
        v58 = 0;
        v59 = v3 + 56;
        do
        {
          v89 = 0;
          sub_2622066E4(&v98, v95, &v89, &v92);
          v60 = 0;
          v61 = 0;
          do
          {
            v61 += *(v59 + v60 * 8) * v95[v60].__locale_;
            ++v60;
          }

          while (v60 != 3);
          *(v41 + 4 * v61) = sub_262270094(a2, &v92);
          for (n = 2; n != -1; --n)
          {
            v63 = (v95[n].__locale_ + 1);
            v95[n].__locale_ = v63;
            if (v63 != *(v90 + n * 8))
            {
              break;
            }

            v95[n].__locale_ = 0;
          }

          ++v58;
        }

        while (v58 != v40);
      }
    }

    result = sub_2621C57C8(&v98);
  }

  v64 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26226F6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::locale::~locale(&a23);
  sub_2621C57C8(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_26226F700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v102 = *MEMORY[0x277D85DE8];
  v4 = (result + 8);
  v5 = (a2 + 8);
  if (*(result + 8) == *(a2 + 8) && *(result + 16) == *(a2 + 16) && *(result + 24) == *(a2 + 24))
  {
    if (*(a2 + 136) == 1)
    {
      v88 = 0uLL;
      v89 = 0uLL;
      v87 = 0uLL;
      v6 = *(result + 104);
      v7 = *(result + 144);
      if (*(result + 136))
      {
        if (v6)
        {
          v8 = *(a2 + 144);
          do
          {
            v9 = *v8++;
            *v7++ = v9;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v65 = 0;
        v66 = *(a2 + 144);
        do
        {
          v67 = 0;
          v68 = 0;
          do
          {
            v68 += *(v3 + 56 + v67) * *(&v87 + v67);
            v67 += 8;
          }

          while (v67 != 24);
          v69 = 0;
          v7[v68] = *(v66 + 4 * v65);
          do
          {
            v70 = *(&v88 + v69) + 1;
            *(&v88 + v69) = v70;
            result = *(v3 + 24 + v69);
            if (v70 != result)
            {
              break;
            }

            *(&v88 + v69) = 0;
            v69 -= 8;
          }

          while (v69 != -24);
          ++v65;
        }

        while (v65 != v6);
      }
    }

    else
    {
      v88 = 0uLL;
      v89 = 0uLL;
      v87 = 0uLL;
      v57 = *(result + 104);
      v58 = *(result + 144);
      if (*(result + 136))
      {
        if (v57)
        {
          v59 = 0;
          v60 = *(a2 + 144);
          do
          {
            v61 = 0;
            v62 = 0;
            do
            {
              v62 += *(a2 + 56 + v61) * *(&v87 + v61);
              v61 += 8;
            }

            while (v61 != 24);
            v63 = 0;
            *(v58 + 4 * v59) = *(v60 + 4 * v62);
            do
            {
              v64 = *(&v88 + v63) + 1;
              *(&v88 + v63) = v64;
              result = *(v3 + 24 + v63);
              if (v64 != result)
              {
                break;
              }

              *(&v88 + v63) = 0;
              v63 -= 8;
            }

            while (v63 != -24);
            ++v59;
          }

          while (v59 != v57);
        }
      }

      else if (v57)
      {
        v71 = 0;
        v72 = *(a2 + 144);
        do
        {
          v73 = 0;
          v74 = 0;
          do
          {
            v74 += *(v3 + 56 + v73) * *(&v87 + v73);
            v73 += 8;
          }

          while (v73 != 24);
          v75 = 0;
          v76 = 0;
          do
          {
            v76 += *(a2 + 56 + v75) * *(&v87 + v75);
            v75 += 8;
          }

          while (v75 != 24);
          result = 0;
          *(v58 + 4 * v74) = *(v72 + 4 * v76);
          do
          {
            v77 = *(&v88 + result) + 1;
            *(&v88 + result) = v77;
            if (v77 != *(v3 + 24 + result))
            {
              break;
            }

            *(&v88 + result) = 0;
            result -= 8;
          }

          while (result != -24);
          ++v71;
        }

        while (v71 != v57);
      }
    }
  }

  else
  {
    if (*(a2 + 136) == 1)
    {
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
      v88 = 0uLL;
      v89 = 0uLL;
      v87 = 0uLL;
      v80 = 0uLL;
      memset(v79, 0, sizeof(v79));
      sub_2622063F0(&v87, v4, v5, v79);
      if (*&v79[0] != *v4 || *(v79 + 8) != *(v3 + 16))
      {
        v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v11, " ", 1);
        v12 = MEMORY[0x277D82670];
        v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v13, " ", 1);
        sub_2621D552C(v13, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(v84, MEMORY[0x277D82680]);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(v84);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v12 + *(*v12 - 24)));
        v15 = std::locale::use_facet(v84, MEMORY[0x277D82680]);
        (v15->__vftable[2].~facet_0)(v15, 10);
        std::locale::~locale(v84);
        std::ostream::put();
        std::ostream::flush();
      }

      v86 = 0u;
      *&v84[0].__locale_ = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      v16 = *(v3 + 104);
      v17 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v16)
        {
          v18 = 0;
          v19 = *(a2 + 144);
          do
          {
            v78 = 0;
            sub_2622066E4(&v87, v84, &v78, &v81);
            *(v17 + 4 * v18) = *(v19 + 4 * v78);
            for (i = 2; i != -1; --i)
            {
              v21 = (v84[i].__locale_ + 1);
              v84[i].__locale_ = v21;
              if (v21 != *(v79 + i * 8))
              {
                break;
              }

              v84[i].__locale_ = 0;
            }

            ++v18;
          }

          while (v18 != v16);
        }
      }

      else if (v16)
      {
        v38 = 0;
        v39 = v3 + 56;
        v40 = *(a2 + 144);
        do
        {
          v78 = 0;
          sub_2622066E4(&v87, v84, &v78, &v81);
          v41 = 0;
          v42 = 0;
          do
          {
            v42 += *(v39 + v41 * 8) * v84[v41].__locale_;
            ++v41;
          }

          while (v41 != 3);
          *(v17 + 4 * v42) = *(v40 + 4 * v78);
          for (j = 2; j != -1; --j)
          {
            v44 = (v84[j].__locale_ + 1);
            v84[j].__locale_ = v44;
            if (v44 != *(v79 + j * 8))
            {
              break;
            }

            v84[j].__locale_ = 0;
          }

          ++v38;
        }

        while (v38 != v16);
      }
    }

    else
    {
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
      v88 = 0uLL;
      v89 = 0uLL;
      v87 = 0uLL;
      v80 = 0uLL;
      memset(v79, 0, sizeof(v79));
      sub_2622063F0(&v87, v4, v5, v79);
      if (*&v79[0] != *v4 || *(v79 + 8) != *(v3 + 16))
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v84, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v84);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v84, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v84);
        std::ostream::put();
        std::ostream::flush();
      }

      v86 = 0u;
      *&v84[0].__locale_ = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      v28 = *(v3 + 104);
      v29 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v31 = a2 + 56;
          v32 = *(a2 + 136);
          v33 = *(a2 + 144);
          do
          {
            v78 = 0;
            sub_2622066E4(&v87, v84, &v78, &v81);
            if (v32)
            {
              v34 = v78;
            }

            else
            {
              v35 = 0;
              v34 = 0;
              do
              {
                v34 += *(v31 + v35) * *(&v81 + v35);
                v35 += 8;
              }

              while (v35 != 24);
            }

            *(v29 + 4 * v30) = *(v33 + 4 * v34);
            for (k = 2; k != -1; --k)
            {
              v37 = (v84[k].__locale_ + 1);
              v84[k].__locale_ = v37;
              if (v37 != *(v79 + k * 8))
              {
                break;
              }

              v84[k].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v45 = 0;
        v46 = v3 + 56;
        v47 = a2 + 56;
        v48 = *(a2 + 136);
        v49 = *(a2 + 144);
        do
        {
          v78 = 0;
          sub_2622066E4(&v87, v84, &v78, &v81);
          v50 = 0;
          v51 = 0;
          do
          {
            v51 += *(v46 + v50 * 8) * v84[v50].__locale_;
            ++v50;
          }

          while (v50 != 3);
          if (v48)
          {
            v52 = v78;
          }

          else
          {
            v53 = 0;
            v52 = 0;
            do
            {
              v52 += *(v47 + v53) * *(&v81 + v53);
              v53 += 8;
            }

            while (v53 != 24);
          }

          *(v29 + 4 * v51) = *(v49 + 4 * v52);
          for (m = 2; m != -1; --m)
          {
            v55 = (v84[m].__locale_ + 1);
            v84[m].__locale_ = v55;
            if (v55 != *(v79 + m * 8))
            {
              break;
            }

            v84[m].__locale_ = 0;
          }

          ++v45;
        }

        while (v45 != v28);
      }
    }

    result = sub_2621C57C8(&v87);
  }

  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262270060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::locale::~locale(&a23);
  sub_2621C57C8(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_262270094(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  do
  {
    v4 = *(a2 + 8 * *(a1 + v2 + 72));
    *(v8 + v2) = v4;
    v3 += *(a1 + v2 + 96) * v4;
    v2 += 8;
  }

  while (v2 != 24);
  if ((*(a1 + 280) & 1) == 0)
  {
    v5 = 0;
    v3 = 0;
    do
    {
      v3 += *(a1 + 200 + v5) * *(v8 + v5);
      v5 += 8;
    }

    while (v5 != 24);
  }

  result = *(*(a1 + 288) + 4 * v3);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_262270150(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE7A8;
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

uint64_t sub_262270228(const char *a1, const char *a2)
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

uint64_t sub_262270334(const char *a1, const char *a2)
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

void sub_262270440(uint64_t *a1, int *a2, int *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v5 = a2;
    v7 = a1[1];
    v8 = a1[2];
    if (a4 <= (v8 - v7) >> 3)
    {
      if (v7 >> 3 >= a4)
      {
        v16 = v7 - 8 * a4;
        if (v16 >= v7)
        {
          v18 = a1[1];
        }

        else
        {
          v17 = (v7 - 8 * a4);
          v18 = a1[1];
          do
          {
            v19 = *v17++;
            *v18++ = v19;
          }

          while (v17 < v7);
        }

        a1[1] = v18;
        if (v7 != 8 * a4)
        {
          memmove((8 * a4), 0, v16);
        }

        v35 = 0;
        v36 = &v5[a4];
        do
        {
          v37 = *v5++;
          *v35++ = v37;
        }

        while (v5 != v36);
      }

      else
      {
        v14 = (a2 + (v7 >> 1));
        if (v14 == a3)
        {
          v15 = a1[1];
        }

        else
        {
          v29 = (a2 + (v7 >> 1));
          v15 = a1[1];
          do
          {
            v30 = *v29++;
            *v15++ = v30;
          }

          while (v29 != a3);
        }

        a1[1] = v15;
        if (v7 >> 3 >= 1)
        {
          v31 = &v15[-a4];
          if (v31 >= v7)
          {
            v33 = v15;
          }

          else
          {
            v32 = &v15[-a4];
            v33 = v15;
            do
            {
              v34 = *v32++;
              *v33++ = v34;
            }

            while (v32 < v7);
          }

          a1[1] = v33;
          if (v15 != (8 * a4))
          {
            memmove((8 * a4), 0, v31);
          }

          v38 = 0;
          do
          {
            v39 = *v5++;
            *v38++ = v39;
          }

          while (v5 != v14);
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a4 + ((v7 - *a1) >> 3);
      if (v10 >> 61)
      {
        sub_2621CBEB0();
      }

      v11 = v8 - v9;
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

      v13 = -v9 >> 3;
      if (v12)
      {
        sub_2621CBEC8(v12);
      }

      v20 = 8 * v13;
      v21 = (8 * v13 + 8 * a4);
      v22 = 8 * a4;
      v23 = v20;
      do
      {
        v24 = *v5++;
        *v23++ = v24;
        v22 -= 8;
      }

      while (v22);
      memcpy(v21, 0, a1[1]);
      v25 = *a1;
      v26 = &v21[a1[1]];
      a1[1] = 0;
      v27 = (v20 + v25);
      memcpy((v20 + v25), v25, -v25);
      v28 = *a1;
      *a1 = v27;
      a1[1] = v26;
      a1[2] = 0;
      if (v28)
      {

        operator delete(v28);
      }
    }
  }
}

uint64_t sub_262270668(const char *a1, const char *a2)
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

uint64_t sub_262270774(const char *a1, const char *a2)
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

void sub_262270880(void *a1)
{
  *a1 = &unk_2874EE7A8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2622708EC(void *a1)
{
  *a1 = &unk_2874EE7A8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_262270938(uint64_t a1)
{
  sub_262270970(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262270970(uint64_t a1)
{
  *a1 = &unk_2874EE5A0;
  if (*(a1 + 496) == 1)
  {
    sub_2621C50C4(a1 + 320);
  }

  *(a1 + 160) = &unk_2874EE7A8;
  v2 = *(a1 + 288);
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  *(a1 + 8) = &unk_2874EE7A8;
  v3 = *(a1 + 136);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void sub_262270A20(float32x2_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v183 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a8;
  __p[0] = 0x700000001;
  LODWORD(__p[1]) = 1;
  v154 = a6;
  sub_262273D90(&v173, a6, __p);
  if (v12)
  {
    v13 = v12[1];
    v14 = (v12[2] - v13) >> 4;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v170 = 0;
  v171 = 0;
  v172 = 0;
  sub_26225172C(&v170, v13, v13 + 16 * v14, v14);
  v164 = a1;
  if (v11)
  {
    *v167 = *(v11 + 5);
    v15 = vcvt_f32_f64(*(v11 + 7));
  }

  else
  {
    *v167 = 0u;
    v15 = 0;
  }

  v16 = *v12[7];
  v175 = 0;
  v174 = 0;
  v176 = 0;
  v179[0] = 0;
  v17 = *(a2 + 8);
  v159 = v11;
  if (*(a2 + 16) != v17)
  {
    v18 = 0;
    v19 = v170;
    v20 = (v171 - v170) >> 4;
    do
    {
      v21 = v17 + 176 * v18 + 16;
      if (sub_262247B68(v19, v20, v21))
      {
        __p[1] = 0;
        __p[0] = 0;
        *&v181 = 0;
        sub_2621C9004(__p, v179);
        v22 = 0;
        v177[0].__locale_ = 0;
        do
        {
          v23 = *(a2 + 8);
          v24 = *(a2 + 16) - v23;
          if (!v24)
          {
            goto LABEL_16;
          }

          v25 = 0;
          v26 = 0x2E8BA2E8BA2E8BA3 * (v24 >> 4);
          v27 = v23 + 3;
          v28 = 1.0;
          do
          {
            if (v18 != v25)
            {
              v29 = sub_2621DC76C(*(v21 + 8 * v22), v27[-1], *v27, 0.00001);
              if (v28 > v29)
              {
                v28 = v29;
              }
            }

            ++v25;
            v27 += 22;
          }

          while (v25 < v26);
          v11 = v159;
          if (v28 > 0.1)
          {
LABEL_16:
            sub_2621C9004(__p, v177);
          }

          v177[0].__locale_ = ++v22;
        }

        while (v22 != 2);
        sub_2622F88B0(&v174, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      v179[0] = ++v18;
      v17 = *(a2 + 8);
    }

    while (v18 < 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - v17) >> 4));
  }

  v30 = vcvt_f32_f64(*v167);
  for (i = v174; i != v175; i += 3)
  {
    if (i[1] - *i >= 9uLL)
    {
      v32 = (*(a2 + 8) + 176 * **i);
      v33 = vmul_f32(vadd_f32(v32[2], v15), v30);
      v34 = vmul_f32(vadd_f32(v32[3], v15), v30).u32[0];
      operator new();
    }
  }

  __p[0] = &v174;
  sub_2621E1D40(__p);
  v35 = v11;
  v36 = *(a2 + 8);
  v37 = *(a2 + 16);
  v38 = *(a2 + 8);
  if (v37 != v38 && *(a3 + 16) != *(a3 + 8))
  {
    v39 = v170;
    v40 = (v171 - v170) >> 4;
    do
    {
      if (sub_262247B68(v39, v40, v38 + 16))
      {
        goto LABEL_37;
      }

      v38 += 176;
    }

    while (v38 != v37);
    v41 = *(a3 + 8);
    v42 = *(a3 + 16);
    if (v41 == v42)
    {
LABEL_36:
      sub_262274EA0(v164[64].f32[1], &v178, a5, v154, v164[65].f32[0]);
    }

    v43 = v41 + 2;
    while (!sub_262247B68(v39, v40, v43) || v164[62].i8[0] != 1 || sub_2622FF66C(*v43, v43[1], v164[42], v164[43], 0.1, 0.9))
    {
      v44 = v43 + 20;
      v43 += 22;
      if (v44 == v42)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:

  v45 = v35;
  v47 = v45;
  v49 = *(a2 + 8);
  v48 = *(a2 + 16);
  v50 = 0x2E8BA2E8BA2E8BA3 * ((v48 - v49) >> 4);
  v51 = a3;
  v166 = v45;
  if (v50 >= 2)
  {
    v52 = 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 16) - *(a3 + 8)) >> 4);
    if (v52 >= 2)
    {
      v53 = v11 ? *(&v45->f64[1] + 1) : 0.0;
      if (v49 != v48)
      {
        v160 = 0;
        v54 = 0.3 / v53;
        v163 = v54;
        v168 = v52 - 1171354717 * ((v48 - v49) >> 4);
        v55 = (v52 + v50) & 0x7FFFFFFF;
        v56 = 0.5;
        v57 = 20.0;
        v58 = &qword_2623A8000;
        v158 = *(a2 + 16);
        do
        {
          *__p = *(v49 + 16);
          v59 = vsub_f32(__p[0], __p[1]);
          if (sqrtf(vaddv_f32(vmul_f32(v59, v59))) >= v56 && v168 >= 1)
          {
            v61 = 0;
            v62 = 16;
            do
            {
              v63 = *(a2 + 8);
              v64 = *(a2 + 16) - v63;
              v65 = 0x2E8BA2E8BA2E8BA3 * (v64 >> 4);
              v66 = (*(v51 + 8) - v64 + v62);
              v67 = (v63 + v62);
              if (v65 > v61)
              {
                v66 = v67;
              }

              *v179 = *v66;
              v68 = v179[0];
              v69 = v179[1];
              v70 = vsub_f32(v179[0], v179[1]);
              v71 = sqrtf(vaddv_f32(vmul_f32(v70, v70)));
              if (v71 >= v56)
              {
                v72 = sub_2621C92AC(__p, v179, 0);
                if (v72 <= v57 || v72 >= 160.0)
                {
                  v73 = __p[0];
                  v74 = __p[1];
                  sub_2621DC2A8();
                  v77 = vsub_f32(v75, v76);
                  v78 = vsub_f32(v73, v74);
                  v79 = sqrtf(vaddv_f32(vmul_f32(v77, v77))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v78, v78))), 0.000001);
                  sub_2621DC2A8();
                  v82 = vsub_f32(v80, v81);
                  v83 = sqrtf(vaddv_f32(vmul_f32(v82, v82)));
                  v84 = fmaxf(v71, 0.000001);
                  v85 = v83 / v84;
                  v86 = v79 <= (v83 / v84);
                  if (v79 >= (v83 / v84))
                  {
                    v87 = v79;
                  }

                  else
                  {
                    v87 = v83 / v84;
                  }

                  if (v86)
                  {
                    v94 = vsub_f32(v74, v73);
                    v95 = vaddv_f32(vmul_f32(vsub_f32(v68, v73), v94));
                    v96 = vaddv_f32(vmul_f32(v94, v94));
                    if (v96 < 0.000001)
                    {
                      v96 = 0.000001;
                    }

                    v97 = vsub_f32(vmla_n_f32(v73, v94, v95 / v96), v68);
                    v92 = sqrtf(vaddv_f32(vmul_f32(v97, v97)));
                    v93 = vsub_f32(vmla_n_f32(v73, v94, vaddv_f32(vmul_f32(vsub_f32(v69, v73), v94)) / v96), v69);
                  }

                  else
                  {
                    v88 = vsub_f32(v69, v68);
                    v89 = vaddv_f32(vmul_f32(vsub_f32(v73, v68), v88));
                    v90 = vaddv_f32(vmul_f32(v88, v88));
                    if (v90 < 0.000001)
                    {
                      v90 = 0.000001;
                    }

                    v91 = vsub_f32(vmla_n_f32(v68, v88, v89 / v90), v73);
                    v92 = sqrtf(vaddv_f32(vmul_f32(v91, v91)));
                    v93 = vsub_f32(vmla_n_f32(v68, v88, vaddv_f32(vmul_f32(vsub_f32(v74, v68), v88)) / v90), v74);
                  }

                  v98 = vmul_f32(v93, v93);
                  if (v87 <= 0.8)
                  {
                    goto LABEL_81;
                  }

                  v99 = sqrtf(vaddv_f32(v98));
                  v100 = v92 >= v99 ? v92 : v99;
                  if (v100 >= 0.9)
                  {
                    goto LABEL_81;
                  }

                  if (v99 >= v92)
                  {
                    v99 = v92;
                  }

                  if (v99 <= *(v58 + 210))
                  {
                    goto LABEL_81;
                  }

                  v101 = vsub_f32(v69, v68);
                  v102 = vaddv_f32(vmul_f32(v101, v101));
                  if (v102 >= 0.000001)
                  {
                    v103 = v102;
                  }

                  else
                  {
                    v103 = 0.000001;
                  }

                  if (v159)
                  {
                    v104 = v166[7];
                    v105 = v166[8];
                    v107 = v166[5];
                    v106 = v166[6];
                    v106.f64[1] = v165;
                    v108 = v106;
                  }

                  else
                  {
                    v104 = 0uLL;
                    v105.f64[0] = 0.0;
                    v107 = 0uLL;
                    v108 = 0uLL;
                  }

                  v109 = vmla_n_f32(v68, v101, vaddv_f32(vmul_f32(vsub_f32(v73, v68), v101)) / v103);
                  v110 = vmul_f32(vsub_f32(v74, v68), v101);
                  v111 = vmla_n_f32(v68, v101, vaddv_f32(v110) / v103);
                  v165 = v108.f64[1];
                  v110.f32[0] = v163;
                  if (sub_262274D14(a5, v109, v111, v104, v105.f64[0], v107, v108.f64[0], *&v110) < 10.0 && v79 > 0.8)
                  {
                    *(v49 + 112) = 1;
                    v56 = 0.5;
                    v57 = 20.0;
                    break;
                  }

                  if (0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - *(a2 + 8)) >> 4) > v61)
                  {
                    goto LABEL_81;
                  }

                  v112 = vsub_f32(v74, v73);
                  v113 = vaddv_f32(vmul_f32(v112, v112));
                  v114 = v113 >= 0.000001 ? v113 : 0.000001;
                  if (v159)
                  {
                    v115 = v166[7];
                    v116 = v166[8];
                    v118 = v166[5];
                    v117 = v166[6];
                    v117.f64[1] = v161;
                    v119 = v117;
                  }

                  else
                  {
                    v115 = 0uLL;
                    v116.f64[0] = 0.0;
                    v118 = 0uLL;
                    v119 = 0uLL;
                  }

                  v120 = vmla_n_f32(v73, v112, vaddv_f32(vmul_f32(vsub_f32(v68, v73), v112)) / v114);
                  v121 = vmul_f32(vsub_f32(v69, v73), v112);
                  v122 = vmla_n_f32(v73, v112, vaddv_f32(v121) / v114);
                  v161 = v119.f64[1];
                  v121.f32[0] = v163;
                  if (sub_262274D14(a5, v120, v122, v115, v116.f64[0], v118, v119.f64[0], *&v121) >= 10.0 || v85 <= 0.8)
                  {
LABEL_81:
                    v56 = 0.5;
                    v57 = 20.0;
                  }

                  else
                  {
                    v56 = 0.5;
                    v57 = 20.0;
                    v123 = v160;
                    v124 = v160 >> 2;
                    if (((v160 >> 2) + 1) >> 62)
                    {
                      sub_2621CBEB0();
                    }

                    if (v160 >> 2 != -1)
                    {
                      sub_2621C7F54((v160 >> 2) + 1);
                    }

                    *(4 * v124) = v61 - -1171354717 * ((*(a2 + 16) - *(a2 + 8)) >> 4);
                    v160 = 4 * v124 + 4;
                    memcpy(0, 0, v123);
                    v51 = a3;
                    v48 = v158;
                    v58 = &qword_2623A8000;
                  }
                }
              }

              ++v61;
              v62 += 176;
            }

            while (v55 != v61);
          }

          v49 += 176;
        }

        while (v49 != v48);
        v47 = v166;
        if (v160)
        {
          v125 = 0;
          if ((v160 >> 2) <= 1)
          {
            v126 = 1;
          }

          else
          {
            v126 = v160 >> 2;
          }

          v169 = *(v58 + 210);
          do
          {
            sub_262246794(__p, *(v51 + 8) + 176 * *(4 * v125), v46);
            v128 = *(a2 + 8);
            v129 = *(a2 + 16) - v128;
            if (v129)
            {
              v130 = 0;
              v131 = v181;
              v132 = vsub_f32(*&v181, *(&v181 + 8));
              v133 = fmaxf(sqrtf(vaddv_f32(vmul_f32(v132, v132))), 0.000001);
              v134 = 0x2E8BA2E8BA2E8BA3 * (v129 >> 4);
              v135 = (v128 + 112);
              while (1)
              {
                if (*v135 == 1)
                {
                  v136 = *(v135 - 24);
                  v137 = *(v135 - 22);
                  sub_2621DC2A8();
                  v140 = vsub_f32(v138, v139);
                  v141 = sqrtf(vaddv_f32(vmul_f32(v140, v140))) / v133;
                  sub_2621DC2A8();
                  v144 = vsub_f32(v142, v143);
                  v145 = vsub_f32(v136, v137);
                  v146 = sqrtf(vaddv_f32(vmul_f32(v144, v144))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v145, v145))), 0.000001);
                  if (v141 >= v146)
                  {
                    v146 = v141;
                  }

                  if (v146 > 0.8)
                  {
                    v147 = vsub_f32(v137, v136);
                    v148 = vaddv_f32(vmul_f32(vsub_f32(*(&v131 + 8), v136), v147));
                    v149 = vaddv_f32(vmul_f32(v147, v147));
                    if (v149 < 0.000001)
                    {
                      v149 = 0.000001;
                    }

                    v150 = vsub_f32(vmla_n_f32(v136, v147, v148 / v149), *(&v131 + 8));
                    v151 = sqrtf(vaddv_f32(vmul_f32(v150, v150)));
                    v152 = vsub_f32(vmla_n_f32(v136, v147, vaddv_f32(vmul_f32(vsub_f32(*&v131, v136), v147)) / v149), *&v131);
                    v153 = sqrtf(vaddv_f32(vmul_f32(v152, v152)));
                    if (v153 >= v151)
                    {
                      v151 = v153;
                    }

                    if (v151 < v169)
                    {
                      break;
                    }
                  }
                }

                ++v130;
                v135 += 44;
                if (v134 <= v130)
                {
                  goto LABEL_115;
                }
              }
            }

            else
            {
LABEL_115:
              v182 = 1;
              sub_26224663C((a2 + 8), __p, v127);
            }

            sub_2621C50C4(__p);
            ++v125;
          }

          while (v125 != v126);
        }
      }
    }
  }

  sub_2622FF758(v179, a7, v47);
}

void sub_262273770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  sub_2621C50C4(&STACK[0x4F0]);
  if (LOBYTE(STACK[0x8E0]) == 1)
  {
    sub_2621C50C4(&STACK[0x830]);
  }

  if (v58)
  {
    operator delete(v58);
  }

  STACK[0x698] = &unk_2874EE7C8;
  if (STACK[0x718])
  {
    sub_2621D1B78(STACK[0x718]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a56)
  {
    sub_2621D1B78(a56);
  }

  _Unwind_Resume(a1);
}

void sub_262273D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[7] = *MEMORY[0x277D85DE8];
  v5 = v10;
  for (i = 8; i != 32; i += 8)
  {
    v7 = *(a2 + i);
    *(v5 - 2) = 0;
    *(v5 - 1) = v7;
    *v5 = 1;
    v5 += 3;
  }

  sub_262202A58(a2 + 8, v9, 0, *a3, *(a3 + 4), *(a3 + 8));
  sub_26220202C(a1, a2, v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_262273E3C(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
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
        if (*(**a3 + 4 * v86) > *(**a3 + 4 * v87))
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
      if (v101 <= v102)
      {
        if (v104 > v101)
        {
          v105 = v96;
          *v95 = v98;
          *v97 = v96;
          v106 = v11;
          v107 = v11 + 1;
          v103 = v96;
          if (v104 > v102)
          {
            goto LABEL_172;
          }

LABEL_174:
          v160 = *v10;
          if (*(v100 + 4 * v160) > *(v100 + 4 * v103))
          {
            *v97 = v160;
            *v10 = v96;
            v161 = *v97;
            v162 = *v95;
            v163 = *(v100 + 4 * v161);
            if (v163 > *(v100 + 4 * v162))
            {
              v11[1] = v161;
              v11[2] = v162;
              v164 = *v11;
              if (v163 > *(v100 + 4 * v164))
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
        if (v104 > v101)
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
        if (v104 > v102)
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

      return sub_262274878(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v85);
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
              if (v114 > *(v109 + 4 * v113))
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
                  if (v114 <= *(v109 + 4 * v113))
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
            if (v158 > *(v155 + 4 * v157))
            {
              do
              {
                *v154 = v157;
                v157 = *(v154 - 2);
                --v154;
              }

              while (v158 > *(v155 + 4 * v157));
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
            if (v124 < v12 && *(v125 + 4 * *v123) > *(v125 + 4 * v123[1]))
            {
              ++v123;
              v122 = 2 * v121 + 2;
            }

            v126 = &v11[v121];
            result = *v123;
            v127 = *v126;
            v128 = *(v125 + 4 * v127);
            if (*(v125 + 4 * result) <= v128)
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
                if (v131 < v12 && *(v125 + 4 * *v123) > *(v125 + 4 * v123[1]))
                {
                  ++v123;
                  v122 = v131;
                }

                result = *v123;
                v126 = v129;
              }

              while (*(v125 + 4 * result) <= v128);
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
              if (*(*v134 + 4 * result) > *(*v134 + 4 * v141))
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
              if (*(v149 + 4 * v147) > v150)
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

                while (*(v149 + 4 * v147) > v150);
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
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + 4 * v26) > *(v15 + 4 * v27))
          {
            *v11 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        v30 = *v10;
        if (*(v15 + 4 * v30) > v21)
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
      if (v34 <= v35)
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + 4 * v38) > *(v15 + 4 * v39))
          {
            v11[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 > v34)
        {
          v11[1] = v36;
          goto LABEL_39;
        }

        v11[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) > v35)
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
      if (v46 <= v47)
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + 4 * v50) > *(v15 + 4 * v51))
          {
            v11[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 > v46)
        {
          v11[2] = v48;
          goto LABEL_48;
        }

        v11[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) > v47)
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
      if (v55 <= v56)
      {
        if (v58 <= v55)
        {
          goto LABEL_56;
        }

        *v14 = v57;
        *v42 = v53;
        v42 = v14;
        LODWORD(v53) = v54;
        if (v58 <= v56)
        {
          LODWORD(v53) = v57;
          goto LABEL_56;
        }
      }

      else if (v58 <= v55)
      {
        *v31 = v53;
        *v14 = v54;
        v31 = v14;
        LODWORD(v53) = v57;
        if (v58 <= v56)
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
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + 4 * v28) > *(v15 + 4 * v29))
        {
          *v14 = v28;
          *v11 = v29;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    v40 = *v10;
    if (*(v15 + 4 * v40) > v25)
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

      while (*(v15 + 4 * v65) > v61);
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

        while (*(v15 + 4 * v68) <= v61);
      }

      else
      {
        do
        {
          v67 = *--v66;
        }

        while (*(v15 + 4 * v67) <= v61);
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

          while (*(v15 + 4 * v73) > v61);
          do
          {
            v74 = *--v72;
            v69 = v74;
          }

          while (*(v15 + 4 * v74) <= v61);
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

      v75 = sub_262274A04(v11, v63, *a3);
      v11 = v63 + 1;
      result = sub_262274A04(v63 + 1, a2, *a3);
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
        result = sub_262273E3C(v9, v63, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v63 + 1;
      }
    }

    else
    {
      v61 = *(v15 + 4 * v60);
      if (*(v15 + 4 * *(v11 - 1)) > v61)
      {
        goto LABEL_60;
      }

      if (v61 <= *(v15 + 4 * *v10))
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

        while (v61 <= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v76 = v11[1];
          ++v11;
        }

        while (v61 <= *(v15 + 4 * v76));
      }

      v78 = a2;
      if (v11 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *--v78;
        }

        while (v61 > *(v15 + 4 * v79));
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

          while (v61 <= *(v15 + 4 * v82));
          do
          {
            v83 = *--v78;
            v81 = v83;
          }

          while (v61 > *(v15 + 4 * v83));
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
  if (v91 <= v92)
  {
    if (v94 > v91)
    {
      v11[1] = v93;
      *v10 = v89;
      v153 = *v11;
      v152 = v11[1];
      if (*(v90 + 4 * v152) > *(v90 + 4 * v153))
      {
        *v11 = v152;
        v11[1] = v153;
      }
    }
  }

  else
  {
    if (v94 <= v91)
    {
      *v11 = v89;
      v11[1] = v88;
      v159 = *v10;
      if (*(v90 + 4 * v159) <= v92)
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

int *sub_262274878(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 <= v9)
  {
    if (v11 <= v8)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 4 * v13) <= *(a6 + 4 * v14))
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
  if (v11 <= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 4 * *a3) > v9)
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
  if (*(a6 + 4 * v15) > *(a6 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 4 * v16) > *(a6 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 4 * v18) > *(a6 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 4 * v20) > *(a6 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 4 * v22) > *(a6 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 4 * v24) > *(a6 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 4 * v26) > *(a6 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_262274A04(int *a1, int *a2, uint64_t *a3)
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
      if (v8 <= v9)
      {
        if (v11 > v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 4 * v35) > *(v7 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 > v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 4 * v46) > v9)
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
        sub_262274878(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
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
    if (v28 <= v29)
    {
      if (v31 > v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 <= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 > v28)
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
        if (*(v27 + 4 * v47) > *(v27 + 4 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 4 * v48);
          if (v50 > *(v27 + 4 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 > *(v27 + 4 * v51))
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
      if (v31 > v29)
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
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * v5))
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
  if (v16 > v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 <= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 > v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 > v18)
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
    if (v42 > *(v15 + 4 * v41))
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
        if (v42 <= *(v15 + 4 * v41))
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

float sub_262274D14(uint64_t a1, float32x2_t a2, float32x2_t a3, float64x2_t a4, double a5, float64x2_t a6, double a7, double a8)
{
  v8 = vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(a3), a4), a6)))));
  v9 = vsub_f32(vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(a2), a4), a6))))), v8);
  *a4.f64 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  v10 = *a4.f64 + -5.0;
  v11 = 0.0;
  v12 = 5.0;
  if ((*a4.f64 + -5.0) > 5.0)
  {
    v35 = vdiv_f32(v9, vdup_lane_s32(*&a4.f64[0], 0));
    v14.i32[0] = vdup_lane_s32(v35, 1).u32[0];
    v14.f32[1] = -v35.f32[0];
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = vneg_f32(vdup_lane_s32(*&a8, 0));
    v18 = -*&a8;
    v19 = -*&a8 + 1;
    v20 = 5;
    v36 = v14;
    v37 = LODWORD(a8);
    do
    {
      if (v18 < *&a8)
      {
        *&a4.f64[0] = vmla_f32(vmla_n_f32(v8, v35, v12), v14, v17);
        v21 = v19;
        do
        {
          *&a4.f64[0] = vadd_f32(v14, *&a4.f64[0]);
          v22 = *a4.f64;
          v39 = *(a4.f64 + 1);
          v40 = *a4.f64;
          if (*(a4.f64 + 1) >= 1 && v15 > *(a4.f64 + 1) && v22 >= 1 && v16 > v22)
          {
            v38 = a4;
            v26 = sub_262269D1C(a1, &v40, &v39);
            LODWORD(a8) = v37;
            a4 = v38;
            v14 = v36;
            _H0 = *v26;
            __asm { FCVT            D0, H0 }

            v11 = v11 + _D0;
          }

          v33 = v21++;
        }

        while (v33 < *&a8);
      }

      v12 = ++v20;
    }

    while (v10 > v20);
  }

  return v11 / *&a8;
}

void sub_262274EA0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v280 = *MEMORY[0x277D85DE8];
  v237 = 0xFFFFFFFF00000001;
  v238 = 1;
  sub_262273D90(&v239, a4, &v237);
  v211 = a5;
  sub_262206318(&v214, &v239);
  v221 = 0u;
  v220 = 0u;
  v219 = 0u;
  *&v222 = a1;
  v223 = 0u;
  v224 = 0u;
  v227 = v216;
  v228 = v217;
  v225 = 0u;
  v226 = v215;
  sub_262206318(v229, &v214);
  v234 = v220;
  v235 = v221;
  v233 = v219;
  v236 = v222;
  v223 = v226;
  v224 = v227;
  v225 = v228;
  v268[1] = 0;
  v268[0] = 0;
  v269 = 0;
  __b[0].__locale_ = 0;
  sub_2621C9004(v268, __b);
  v7 = v268[0];
  v8 = MEMORY[0x277D82670];
  if (v268[1] != v268[0])
  {
    v9 = 0;
    v10 = (v268[1] - v268[0]) >> 3;
    v11 = MEMORY[0x277D82680];
    do
    {
      if (v7[v9] >= 3uLL)
      {
        sub_2621D552C(v8, "runtime_err in ", 15);
        sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v8, " ", 1);
        v12 = MEMORY[0x266727260](v8, 28);
        sub_2621D552C(v12, " ", 1);
        sub_2621D552C(v12, "format_reduce_axes", 18);
        std::ios_base::getloc((v12 + *(*v12 - 24)));
        v13 = std::locale::use_facet(__b, v11);
        (v13->__vftable[2].~facet_0)(v13, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v8 + *(*v8 - 24)));
        v14 = std::locale::use_facet(__b, v11);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v9;
    }

    while (v9 < v10);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v15 = v268[1];
  v16 = v268[0];
  v17 = v268[1] - v268[0];
  v213 = (v268[1] - v268[0]) >> 3;
  if ((v268[1] - v268[0]) != 8)
  {
    v18 = 0;
    v19 = MEMORY[0x277D82680];
    do
    {
      if (v16[v18] == v16[v18 + 1])
      {
        sub_2621D552C(v8, "runtime_err in ", 15);
        sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v8, " ", 1);
        v20 = MEMORY[0x266727260](v8, 33);
        sub_2621D552C(v20, " ", 1);
        sub_2621D552C(v20, "format_reduce_axes", 18);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(__b, v19);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v8 + *(*v8 - 24)));
        v22 = std::locale::use_facet(__b, v19);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v18;
    }

    while (v18 < v213 - 1);
  }

  v23 = 0;
  v267[1] = 0;
  v267[0] = 0;
  v24 = v213;
  if (v213 <= 1)
  {
    v24 = 1;
  }

  v267[2] = 0;
  v25 = v24 - 1;
  do
  {
    if (v15 == v16)
    {
      goto LABEL_21;
    }

    if (*v16 == v23)
    {
      goto LABEL_16;
    }

    v26 = 0;
    do
    {
      if (v25 == v26)
      {
        goto LABEL_21;
      }

      v27 = v16[++v26];
    }

    while (v27 != v23);
    if (v26 < v213)
    {
LABEL_16:
      __b[0].__locale_ = 1;
      sub_2621C9004(v267, __b);
    }

    else
    {
LABEL_21:
      sub_2621C9004(v267, &v223 + v23);
    }

    ++v23;
  }

  while (v23 != 3);
  sub_2622042C8(__b, v267);
  v28 = 0;
  v275 = 0u;
  v274 = 0u;
  *&v273[0].__locale_ = 0u;
  do
  {
    v273[v28].__locale_ = 1;
    if (v28 <= 1)
    {
      v29 = v28;
      v30 = 1;
      do
      {
        v30 *= __b[++v29].__locale_;
      }

      while (v29 != 2);
      v273[v28].__locale_ = v30;
    }

    ++v28;
  }

  while (v28 != 3);
  sub_26226EC48(v276, __b);
  v31 = *(v16 + v17 - 8);
  v212 = v31;
  if (v31 == 2)
  {
    if (v213 == 1 || (v32 = *(v16 + v17 - 16), v16[v213 - 1] - v32 != 1))
    {
      v265 = 0;
      v264 = 0;
      v266 = 0;
      v262 = 0;
      v261 = 0;
      v31 = 2;
      v263 = 0;
      goto LABEL_38;
    }

    v33 = &v16[v213 - 3];
    v34 = v213 - 2;
    do
    {
      v31 = v32;
      if (!v34)
      {
        break;
      }

      v32 = *v33;
      v35 = v33[1];
      --v33;
      --v34;
    }

    while (v35 - v32 == 1);
  }

  v265 = 0;
  v264 = 0;
  v266 = 0;
  v262 = 0;
  v261 = 0;
  v263 = 0;
  if (!v31)
  {
    v36 = 1;
    v37 = 1;
    v38 = 1;
    goto LABEL_49;
  }

LABEL_38:
  v39 = 0;
  v37 = 1;
  do
  {
    v40 = &v223 + v39;
    v41 = *v40;
    sub_2621C9004(&v264, v40);
    if (v15 == v16)
    {
      goto LABEL_46;
    }

    if (*v16 == v39)
    {
      goto LABEL_41;
    }

    v42 = 0;
    do
    {
      if (v25 == v42)
      {
        goto LABEL_46;
      }

      v43 = v16[++v42];
    }

    while (v43 != v39);
    if (v42 < v213)
    {
LABEL_41:
      *&v272[0] = 0;
      sub_2621C9004(&v261, v272);
    }

    else
    {
LABEL_46:
      sub_2621C9004(&v261, &v273[v39].__locale_);
    }

    v37 *= v41;
    ++v39;
  }

  while (v39 != v31);
  v38 = 0;
  v36 = v31 + 1;
  if (v31 + 1 > 2)
  {
    v45 = 1;
LABEL_53:
    v46 = *(&v223 + v31);
    v47 = v279;
    if (v212 == 2)
    {
      v48 = *(&v223 + v31);
    }

    else
    {
      v48 = 1;
    }

    v272[2] = 0u;
    if (v212 == 2)
    {
      v49 = v37;
    }

    else
    {
      v49 = v46;
    }

    if (v212 == 2)
    {
      v37 = 1;
    }

    memset(v272, 0, 32);
    memset(v271, 0, sizeof(v271));
    if (v38)
    {
      __p = 0;
      sub_2621C9004(&v264, &__p);
      v50 = 0;
      v259 = 0;
      __p = 0;
      v260 = 0;
    }

    else
    {
      v209 = v48;
      v210 = v37;
      v51 = 0;
      v259 = 0;
      __p = 0;
      v260 = 0;
      v257 = 0;
      if (v31 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v31;
      }

      do
      {
        if (v15 == v16)
        {
          goto LABEL_72;
        }

        if (*v16 != v51)
        {
          v53 = 0;
          do
          {
            if (v25 == v53)
            {
              goto LABEL_72;
            }

            v54 = v16[++v53];
          }

          while (v54 != v51);
          if (v53 >= v213)
          {
LABEL_72:
            sub_2621C9004(&__p, &v257);
          }
        }

        v257 = ++v51;
      }

      while (v51 != v52);
      v50 = v31 - 1;
      v48 = v209;
      v37 = v210;
    }

    v55 = v45 * v48;
    if (v212 == 2)
    {
      if (v231)
      {
        if (v49)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = v232;
          v60 = *&v236;
          v61 = v264;
          v62 = (v232 + 2);
          if (v55 <= 1)
          {
            v63 = 1;
          }

          else
          {
            v63 = v45 * v48;
          }

          v64 = v261;
          v65 = 2 * v63;
          v66 = 1;
          v67 = v47;
          do
          {
            _H1 = *(v59 + 2 * v57);
            __asm { FCVT            S1, H1 }

            v74 = v60 < _S1;
            if (v55 < 2)
            {
              ++v57;
              if (v66)
              {
                goto LABEL_91;
              }
            }

            else
            {
              v75 = v55 - 1;
              v76 = v62;
              do
              {
                v77 = *v76++;
                _H1 = v77;
                __asm { FCVT            S1, H1 }

                if (v60 < _S1)
                {
                  ++v74;
                }

                --v75;
              }

              while (v75);
              v57 += v55;
              if (v66)
              {
                goto LABEL_91;
              }
            }

            v74 += *v67;
LABEL_91:
            *v67 = v74;
            v80 = v50;
            do
            {
              v81 = *(v272 + v80) + 1;
              *(v272 + v80) = v81;
              if (v81 != v61[v80])
              {
                break;
              }

              *(v272 + v80) = 0;
              v82 = v80-- <= 0;
            }

            while (!v82);
            if (v38)
            {
              v66 = 0;
              v83 = 0;
            }

            else
            {
              v83 = 0;
              v84 = v272;
              v85 = v64;
              v86 = v31;
              do
              {
                v88 = *v84++;
                v87 = v88;
                v89 = *v85++;
                v83 += v89 * v87;
                --v86;
              }

              while (v86);
              v66 = v83 > v58;
              if (v83 > v58)
              {
                v58 = v83;
              }
            }

            v67 = &v47[v83];
            ++v56;
            v62 = (v62 + v65);
          }

          while (v56 != v49);
        }
      }

      else if (v49)
      {
        v125 = 0;
        v126 = 0;
        v127 = v232;
        v128 = *&v236;
        v129 = v264;
        v130 = 1;
        v131 = v261;
        v132 = v47;
        do
        {
          v133 = 0;
          v134 = 0;
          do
          {
            v134 += v229[v133 + 7] * *(v271 + v133 * 8);
            ++v133;
          }

          while (v133 != 3);
          _H1 = *(v127 + 2 * v134);
          __asm { FCVT            S1, H1 }

          v137 = v128 < _S1;
          for (i = 16; i != -8; i -= 8)
          {
            v139 = *(v271 + i) + 1;
            *(v271 + i) = v139;
            if (v139 != *(&v223 + i))
            {
              break;
            }

            *(v271 + i) = 0;
          }

          if (v55 >= 2)
          {
            for (j = 1; j != v55; ++j)
            {
              v141 = 0;
              v142 = 0;
              do
              {
                v142 += v229[v141 + 7] * *(v271 + v141 * 8);
                ++v141;
              }

              while (v141 != 3);
              _H1 = *(v127 + 2 * v142);
              __asm { FCVT            S1, H1 }

              if (v128 < _S1)
              {
                ++v137;
              }

              for (k = 16; k != -8; k -= 8)
              {
                v146 = *(v271 + k) + 1;
                *(v271 + k) = v146;
                if (v146 != *(&v223 + k))
                {
                  break;
                }

                *(v271 + k) = 0;
              }
            }
          }

          if (!v130)
          {
            v137 += *v132;
          }

          *v132 = v137;
          v147 = v50;
          do
          {
            v148 = *(v272 + v147) + 1;
            *(v272 + v147) = v148;
            if (v148 != v129[v147])
            {
              break;
            }

            *(v272 + v147) = 0;
            v82 = v147-- <= 0;
          }

          while (!v82);
          if (v38)
          {
            v130 = 0;
            v149 = 0;
          }

          else
          {
            v149 = 0;
            v150 = v272;
            v151 = v131;
            v152 = v31;
            do
            {
              v154 = *v150++;
              v153 = v154;
              v155 = *v151++;
              v149 += v155 * v153;
              --v152;
            }

            while (v152);
            v130 = v149 > v126;
            if (v149 > v126)
            {
              v126 = v149;
            }
          }

          v132 = &v47[v149];
          ++v125;
        }

        while (v125 != v49);
      }
    }

    else if (v231)
    {
      if (v37)
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = v264;
        v94 = v261;
        v95 = v232;
        v96 = 1;
        v97 = v47;
        v98 = *&v236;
        do
        {
          if (v96)
          {
            if (v55)
            {
              v99 = v97;
              v100 = v45 * v48;
              do
              {
                _H1 = *(v95 + 2 * v91);
                __asm { FCVT            S1, H1 }

                *v99++ = v98 < _S1;
                ++v91;
                --v100;
              }

              while (v100);
            }
          }

          else
          {
            v103 = v97;
            v104 = v45 * v48;
            if (v55)
            {
              do
              {
                _H1 = *(v95 + 2 * v91);
                __asm { FCVT            S1, H1 }

                v107 = *v103;
                if (v98 < _S1)
                {
                  ++v107;
                }

                *v103++ = v107;
                ++v91;
                --v104;
              }

              while (v104);
            }
          }

          if (v49 >= 2)
          {
            v108 = v232;
            v109 = *&v236;
            for (m = 1; m != v49; ++m)
            {
              v111 = v97;
              v112 = v45 * v48;
              if (v55)
              {
                do
                {
                  _H2 = *(v108 + 2 * v91);
                  __asm { FCVT            S2, H2 }

                  v115 = *v111;
                  if (v109 < _S2)
                  {
                    ++v115;
                  }

                  *v111++ = v115;
                  ++v91;
                  --v112;
                }

                while (v112);
              }
            }
          }

          v116 = v50;
          do
          {
            v117 = *(v272 + v116) + 1;
            *(v272 + v116) = v117;
            if (v117 != v93[v116])
            {
              break;
            }

            *(v272 + v116) = 0;
            v82 = v116-- <= 0;
          }

          while (!v82);
          if (v38)
          {
            v96 = 0;
            v118 = 0;
          }

          else
          {
            v118 = 0;
            v119 = v272;
            v120 = v94;
            v121 = v31;
            do
            {
              v123 = *v119++;
              v122 = v123;
              v124 = *v120++;
              v118 += v124 * v122;
              --v121;
            }

            while (v121);
            v96 = v118 > v92;
            if (v118 > v92)
            {
              v92 = v118;
            }
          }

          v97 = &v47[v118];
          ++v90;
        }

        while (v90 != v37);
      }
    }

    else if (v37)
    {
      v156 = 0;
      v157 = 0;
      v158 = v264;
      v159 = v261;
      v160 = v232;
      v161 = 1;
      v162 = *&v236;
      v163 = v47;
      do
      {
        if (v161)
        {
          if (v55)
          {
            for (n = 0; n != v55; ++n)
            {
              v165 = 0;
              v166 = 0;
              do
              {
                v166 += v229[v165 + 7] * *(v271 + v165 * 8);
                ++v165;
              }

              while (v165 != 3);
              _H1 = *(v160 + 2 * v166);
              __asm { FCVT            S1, H1 }

              v163[n] = v162 < _S1;
              for (ii = 16; ii != -8; ii -= 8)
              {
                v170 = *(v271 + ii) + 1;
                *(v271 + ii) = v170;
                if (v170 != *(&v223 + ii))
                {
                  break;
                }

                *(v271 + ii) = 0;
              }
            }
          }
        }

        else if (v55)
        {
          for (jj = 0; jj != v55; ++jj)
          {
            v172 = 0;
            v173 = 0;
            do
            {
              v173 += v229[v172 + 7] * *(v271 + v172 * 8);
              ++v172;
            }

            while (v172 != 3);
            _H1 = *(v160 + 2 * v173);
            __asm { FCVT            S1, H1 }

            v176 = v163[jj];
            if (v162 < _S1)
            {
              ++v176;
            }

            v163[jj] = v176;
            for (kk = 16; kk != -8; kk -= 8)
            {
              v178 = *(v271 + kk) + 1;
              *(v271 + kk) = v178;
              if (v178 != *(&v223 + kk))
              {
                break;
              }

              *(v271 + kk) = 0;
            }
          }
        }

        v179 = v50;
        if (v49 > 1)
        {
          v180 = v232;
          v181 = *&v236;
          for (mm = 1; mm != v49; ++mm)
          {
            if (v55)
            {
              for (nn = 0; nn != v55; ++nn)
              {
                v184 = 0;
                v185 = 0;
                do
                {
                  v185 += v229[v184 + 7] * *(v271 + v184 * 8);
                  ++v184;
                }

                while (v184 != 3);
                _H2 = *(v180 + 2 * v185);
                __asm { FCVT            S2, H2 }

                v188 = v163[nn];
                if (v181 < _S2)
                {
                  ++v188;
                }

                v163[nn] = v188;
                for (i1 = 16; i1 != -8; i1 -= 8)
                {
                  v190 = *(v271 + i1) + 1;
                  *(v271 + i1) = v190;
                  if (v190 != *(&v223 + i1))
                  {
                    break;
                  }

                  *(v271 + i1) = 0;
                }
              }
            }
          }

          v179 = v50;
        }

        do
        {
          v191 = *(v272 + v179) + 1;
          *(v272 + v179) = v191;
          if (v191 != v158[v179])
          {
            break;
          }

          *(v272 + v179) = 0;
          v82 = v179-- <= 0;
        }

        while (!v82);
        if (v38)
        {
          v161 = 0;
          v192 = 0;
        }

        else
        {
          v192 = 0;
          v193 = v272;
          v194 = v159;
          v195 = v31;
          do
          {
            v197 = *v193++;
            v196 = v197;
            v198 = *v194++;
            v192 += v198 * v196;
            --v195;
          }

          while (v195);
          v161 = v192 > v157;
          if (v192 > v157)
          {
            v157 = v192;
          }
        }

        v163 = &v47[v192];
        ++v156;
      }

      while (v156 != v37);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v261)
    {
      operator delete(v261);
    }

    if (v264)
    {
      operator delete(v264);
    }

    if (v267[0])
    {
      operator delete(v267[0]);
    }

    if (v268[0])
    {
      operator delete(v268[0]);
    }

    memset(&v251[1], 0, 96);
    v254 = 0;
    v255 = 257;
    v251[0] = &unk_2874EEB10;
    v253 = 0;
    sub_262202308(__b, &v276[1], 0);
    v199 = v277[__b[0].__locale_ + 1];
    locale = v276[__b[1].__locale_ + 1].__locale_;
    v251[1] = v276[__b[0].__locale_ + 1];
    v251[2] = locale;
    v201 = v277[__b[1].__locale_ + 1];
    v251[7] = v199;
    v251[8] = v201;
    v252 = *&v277[7];
    v202 = v277[9];
    v203 = v278;
    if (v278)
    {
      atomic_fetch_add_explicit((v278 + 8), 1uLL, memory_order_relaxed);
    }

    v204 = v254;
    v253 = v202;
    v254 = v203;
    if (v204)
    {
      sub_2621D1B78(v204);
      v202 = v253;
    }

    v205 = 0;
    v256 = *v202 + 4 * *(&v252 + 1);
    HIBYTE(v255) = 0;
    v206 = 1;
    while (1)
    {
      v207 = v251[v205 + 2];
      if (v207 != 1)
      {
        if (v251[v205 + 8] != v206)
        {
          v208 = 0;
LABEL_232:
          LOBYTE(v255) = v208;
          v276[0].__locale_ = &unk_2874EE7A8;
          if (v278)
          {
            sub_2621D1B78(v278);
          }

          v229[0] = &unk_2874EEDA0;
          if (v230)
          {
            sub_2621D1B78(v230);
          }

          v214 = &unk_2874EEDA0;
          if (v218)
          {
            sub_2621D1B78(v218);
          }

          v239 = &unk_2874EEDA0;
          if (v250)
          {
            sub_2621D1B78(v250);
          }

          sub_2621D1AA0(&v214, v251);
          v221 = 0u;
          v220 = 0u;
          v219 = 0u;
          LODWORD(v222) = v211;
          v223 = 0u;
          v224 = 0u;
          v227 = v216;
          v228 = v217;
          v225 = 0u;
          v226 = v215;
          sub_2621D1AA0(v229, &v214);
          v234 = v220;
          v235 = v221;
          v233 = v219;
          v236 = v222;
          v223 = v226;
          v224 = v227;
          v225 = v228;
          v250 = 0;
          v245 = 0u;
          v246 = 0u;
          v240 = v226;
          v242 = v228;
          v241 = v227;
          v239 = &unk_2874EE7C8;
          v243 = *(&v226 + 1);
          v244 = 1;
          v247 = v226 * *(&v226 + 1);
          v249 = 0;
          v248 = 0;
          sub_262204144();
        }

        v206 *= v207;
      }

      if (--v205 == -2)
      {
        v208 = 1;
        goto LABEL_232;
      }
    }
  }

LABEL_49:
  v44 = 8 * v36;
  v45 = 1;
  do
  {
    v45 *= *(&v223 + v44);
    v44 += 8;
  }

  while (v44 != 24);
  goto LABEL_53;
}

void sub_2622774D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43)
{
  std::locale::~locale(&STACK[0x5B0]);
  sub_2621C57C8(&STACK[0x5E0]);
  if (STACK[0x3E8])
  {
    sub_2621D1B78(STACK[0x3E8]);
  }

  STACK[0x220] = &unk_2874EEB10;
  if (STACK[0x2A0])
  {
    sub_2621D1B78(STACK[0x2A0]);
  }

  if (a43)
  {
    sub_2621D1B78(a43);
  }

  STACK[0x400] = a20;
  if (STACK[0x480])
  {
    sub_2621D1B78(STACK[0x480]);
  }

  _Unwind_Resume(a1);
}

std::string *sub_262277818(std::string *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result[7].__r_.__value_.__s.__data_[8] == *(a2 + 176))
  {
    if (result[7].__r_.__value_.__s.__data_[8])
    {
      objc_storeStrong(&result->__r_.__value_.__l.__size_, *(a2 + 8));
      v5 = *(a2 + 16);
      v6 = *(a2 + 48);
      *&v4[1].__r_.__value_.__r.__words[1] = *(a2 + 32);
      *&v4[2].__r_.__value_.__l.__data_ = v6;
      *&v4->__r_.__value_.__r.__words[2] = v5;
      v7 = *(a2 + 64);
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      *(&v4[4].__r_.__value_.__r.__words[1] + 1) = *(a2 + 105);
      *&v4[3].__r_.__value_.__r.__words[1] = v8;
      *&v4[4].__r_.__value_.__l.__data_ = v9;
      *&v4[2].__r_.__value_.__r.__words[2] = v7;
      std::string::operator=((v4 + 128), (a2 + 128));

      return std::string::operator=((v4 + 152), (a2 + 152));
    }
  }

  else if (result[7].__r_.__value_.__s.__data_[8])
  {
    result = sub_2621C50C4(result);
    v4[7].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {
    result = sub_262246794(result, a2, a3);
    v4[7].__r_.__value_.__s.__data_[8] = 1;
  }

  return result;
}

void *sub_2622778D8(void *a1)
{
  a1[31] = &unk_2874EE7C8;
  v2 = a1[47];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[12] = &unk_2874EE7C8;
  v3 = a1[28];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void *sub_262277954(void *a1)
{
  a1[25] = &unk_2874EE7C8;
  v2 = a1[41];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[6] = &unk_2874EE7C8;
  v3 = a1[22];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

uint64_t sub_2622779D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 120);
  if (*(a1 + 168) == v4)
  {
    if (sub_2621D9A90(a1 + 56, a2 + 8))
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

  if (*(a1 + 320) == v4)
  {
    if (sub_2621D9A90(a1 + 208, a2 + 8))
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

void sub_262277A60(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v167 = *MEMORY[0x277D85DE8];
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
  v9 = *(a2 + 232);
  if (v7 == v8)
  {
    if (*(a2 + 232) && *(a2 + 384) == 1)
    {
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v10 = *(a1 + 104);
      v11 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 240);
          v13 = *(a2 + 392);
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
        v108 = 0;
        v109 = *(a1 + 56);
        v110 = *(a1 + 64);
        v111 = *(a2 + 240);
        v112 = *(a2 + 392);
        do
        {
          v113 = 0;
          v11[v110 * *(&v152 + 1) + v109 * v152] = *(v111 + 2 * v108) * *(v112 + 2 * v108);
          do
          {
            v114 = *(&v152 + v113 + 8) + 1;
            *(&v152 + v113 + 8) = v114;
            if (v114 != *(a1 + 16 + v113))
            {
              break;
            }

            *(&v152 + v113 + 8) = 0;
            v113 -= 8;
          }

          while (v113 != -16);
          ++v108;
        }

        while (v108 != v10);
      }
    }

    else
    {
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v46 = *(a1 + 104);
      v47 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v46)
        {
          for (i = 0; i != v46; ++i)
          {
            _S0 = sub_26227851C(a2 + 48, i, v152, *(&v152 + 1));
            v50 = 0;
            __asm { FCVT            H0, S0 }

            *(v47 + 2 * i) = LOWORD(_S0);
            do
            {
              v55 = *(&v152 + v50 + 8) + 1;
              *(&v152 + v50 + 8) = v55;
              if (v55 != *(a1 + 16 + v50))
              {
                break;
              }

              *(&v152 + v50 + 8) = 0;
              v50 -= 8;
            }

            while (v50 != -16);
          }
        }
      }

      else if (v46)
      {
        v83 = 0;
        v84 = *(a1 + 56);
        v85 = *(a1 + 64);
        v86 = a1 + 16;
        do
        {
          v87 = v84 * v152;
          v88 = v47 + 2 * v85 * *(&v152 + 1);
          _S0 = sub_26227851C(a2 + 48, v83, v152, *(&v152 + 1));
          v90 = 0;
          __asm { FCVT            H0, S0 }

          *(v88 + 2 * v87) = LOWORD(_S0);
          do
          {
            v91 = *(&v152 + v90 + 8) + 1;
            *(&v152 + v90 + 8) = v91;
            if (v91 != *(v86 + v90))
            {
              break;
            }

            *(&v152 + v90 + 8) = 0;
            v90 -= 8;
          }

          while (v90 != -16);
          ++v83;
        }

        while (v83 != v46);
      }
    }
  }

  else
  {
    if (*(a2 + 232) && *(a2 + 384) == 1)
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v17 = 0;
      v18 = &v143;
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
        v18 = &v143 + 1;
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
        v26 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v28 = *(a1 + 104);
      v29 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v153 + 1);
          v31 = v154;
          v33 = (v154 - *(&v153 + 1)) >> 3;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = *(a2 + 240);
          v35 = *(a2 + 392);
          do
          {
            v146 = *&v149[0].__locale_;
            if (v31 != v32)
            {
              v36 = v32;
              v37 = v33;
              do
              {
                v38 = *v36++;
                *(&v146 + v38) = 0;
                --v37;
              }

              while (v37);
            }

            v39 = 0;
            v40 = 0;
            v41 = &v146;
            v42 = 1;
            do
            {
              v43 = v42;
              v40 += *(&v164 + v39) * *v41;
              v41 = (&v146 + 8);
              v39 = 1;
              v42 = 0;
            }

            while ((v43 & 1) != 0);
            *(v29 + 2 * v30) = *(v34 + 2 * v40) * *(v35 + 2 * v40);
            for (j = 1; j != -1; --j)
            {
              v45 = (v149[j].__locale_ + 1);
              v149[j].__locale_ = v45;
              if (v45 != *(&v143 + j * 8))
              {
                break;
              }

              v149[j].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v115 = 0;
        v117 = *(&v153 + 1);
        v116 = v154;
        v118 = (v154 - *(&v153 + 1)) >> 3;
        if (v118 <= 1)
        {
          v118 = 1;
        }

        v119 = *(a1 + 56);
        v120 = *(a1 + 64);
        v121 = *(a2 + 240);
        v122 = *(a2 + 392);
        do
        {
          locale = v149[0].__locale_;
          v123 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v116 != v117)
          {
            v125 = v117;
            v126 = v118;
            do
            {
              v127 = *v125++;
              *(&v146 + v127) = 0;
              --v126;
            }

            while (v126);
          }

          v128 = 0;
          v129 = 0;
          v130 = &v146;
          v131 = 1;
          do
          {
            v132 = v131;
            v129 += *(&v164 + v128) * *v130;
            v130 = (&v146 + 8);
            v128 = 1;
            v131 = 0;
          }

          while ((v132 & 1) != 0);
          *(v29 + 2 * v123 * v120 + 2 * locale * v119) = *(v121 + 2 * v129) * *(v122 + 2 * v129);
          for (k = 1; k != -1; --k)
          {
            v134 = (v149[k].__locale_ + 1);
            v149[k].__locale_ = v134;
            if (v134 != *(&v143 + k * 8))
            {
              break;
            }

            v149[k].__locale_ = 0;
          }

          ++v115;
        }

        while (v115 != v28);
      }
    }

    else
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v56 = 0;
      v57 = &v143;
      v58 = 1;
      do
      {
        v59 = *v57;
        v60 = *(v5 + v56);
        if ((v58 & 1) == 0)
        {
          break;
        }

        v58 = 0;
        v57 = &v143 + 1;
        v56 = 1;
      }

      while (v59 == v60);
      if (v59 != v60)
      {
        v61 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v62 = sub_2621D552C(v61, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v62, " ", 1);
        v63 = MEMORY[0x277D82670];
        v64 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v64, " ", 1);
        sub_2621D552C(v64, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v64 + *(*v64 - 24)));
        v65 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v65->__vftable[2].~facet_0)(v65, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v63 + *(*v63 - 24)));
        v66 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v66->__vftable[2].~facet_0)(v66, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v67 = *(a1 + 104);
      v142 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v67)
        {
          v68 = 0;
          v70 = *(&v153 + 1);
          v69 = v154;
          v71 = (v154 - *(&v153 + 1)) >> 3;
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v140 = v71;
          do
          {
            v146 = *&v149[0].__locale_;
            if (v69 != v70)
            {
              v72 = v70;
              v73 = v140;
              do
              {
                v74 = *v72++;
                *(&v146 + v74) = 0;
                --v73;
              }

              while (v73);
            }

            v75 = 0;
            v76 = 0;
            v77 = &v146;
            v78 = 1;
            do
            {
              v79 = v78;
              v76 += *(&v164 + v75) * *v77;
              v77 = (&v146 + 8);
              v75 = 1;
              v78 = 0;
            }

            while ((v79 & 1) != 0);
            _S0 = sub_26227851C(a2 + 48, v76, v146, *(&v146 + 1));
            __asm { FCVT            H0, S0 }

            *(v142 + 2 * v68) = LOWORD(_S0);
            for (m = 1; m != -1; --m)
            {
              v82 = (v149[m].__locale_ + 1);
              v149[m].__locale_ = v82;
              if (v82 != *(&v143 + m * 8))
              {
                break;
              }

              v149[m].__locale_ = 0;
            }

            ++v68;
          }

          while (v68 != v67);
        }
      }

      else if (v67)
      {
        v92 = 0;
        v139 = v154;
        v141 = *(&v153 + 1);
        if (((v154 - *(&v153 + 1)) >> 3) <= 1)
        {
          v93 = 1;
        }

        else
        {
          v93 = (v154 - *(&v153 + 1)) >> 3;
        }

        v138 = *(a1 + 64);
        v136 = v93;
        v137 = *(a1 + 56);
        do
        {
          v94 = v67;
          v96 = v149[0].__locale_;
          v95 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v139 != v141)
          {
            v97 = v141;
            v98 = v136;
            do
            {
              v99 = *v97++;
              *(&v146 + v99) = 0;
              --v98;
            }

            while (v98);
          }

          v100 = 0;
          v101 = 0;
          v102 = &v146;
          v103 = 1;
          do
          {
            v104 = v103;
            v101 += *(&v164 + v100) * *v102;
            v102 = (&v146 + 8);
            v100 = 1;
            v103 = 0;
          }

          while ((v104 & 1) != 0);
          _S0 = sub_26227851C(a2 + 48, v101, v146, *(&v146 + 1));
          __asm { FCVT            H0, S0 }

          *(v142 + 2 * v138 * v95 + 2 * v137 * v96) = LOWORD(_S0);
          for (n = 1; n != -1; --n)
          {
            v107 = (v149[n].__locale_ + 1);
            v149[n].__locale_ = v107;
            if (v107 != *(&v143 + n * 8))
            {
              break;
            }

            v149[n].__locale_ = 0;
          }

          ++v92;
          v67 = v94;
        }

        while (v92 != v94);
      }
    }

    sub_2621C57C8(&v152);
  }

  v135 = *MEMORY[0x277D85DE8];
}

void sub_2622784E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::locale::~locale(&a27);
  sub_2621C57C8(&a33);
  _Unwind_Resume(a1);
}

float sub_26227851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (*(a1 + 192) + 2 * a2);
  }

  else
  {
    v4 = (*(a1 + 192) + 2 * *(a1 + 112) * a4 + 2 * *(a1 + 104) * a3);
  }

  _H0 = *v4;
  if (*(a1 + 336) == 1)
  {
    v6 = (*(a1 + 344) + 2 * a2);
  }

  else
  {
    v6 = (*(a1 + 344) + 2 * *(a1 + 264) * a4 + 2 * *(a1 + 256) * a3);
  }

  _H1 = *v6;
  __asm
  {
    FCVT            S0, H0
    FCVT            S1, H1
  }

  return _S0 * _S1;
}

uint64_t sub_262278694(float32x2_t *a1, float32x2_t *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = (a3 + 40);
  if (v3 == (a3 + 40))
  {
LABEL_21:
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v6 = a1 + 40;
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v3 + 7);
        v9 = v6;
        do
        {
          if (v7[4].i32[0] >= v8)
          {
            v9 = v7;
          }

          v7 = v7[v7[4].i32[0] < v8];
        }

        while (v7);
        if (v9 != v6 && v8 >= v9[4].i32[0] && !v9[7].i32[1])
        {
          v10 = vsub_f32(v9[5], v9[6]);
          if (sqrtf(vaddv_f32(vmul_f32(v10, v10))) > 1.0)
          {
            v11 = sub_2621C92AC(a2, v9 + 5, 0);
            if ((180.0 - v11) < v11)
            {
              v11 = 180.0 - v11;
            }

            if (v11 <= 10.0)
            {
              break;
            }
          }
        }
      }

      v12 = v3[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
      if (v13 == v4)
      {
        goto LABEL_21;
      }
    }

    v16 = *(v3 + 7);
    v15 = 0x100000000;
  }

  return v16 | v15;
}

uint64_t sub_2622787C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(a3 + 168);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a2;
  a4 = (a3 + 168);
  do
  {
    if (*(v4 + 32) >= a2)
    {
      a4 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (a4 == (a3 + 168) || *(a4 + 8) > a2)
  {
LABEL_8:
    v7 = 0;
LABEL_9:
    LOBYTE(v5) = 0;
    return v5 | ((a4 & 0xFFFFFF) << 8) | v7;
  }

  v9 = a4[5];
  if (sub_262278CD8(a3, v9))
  {
    LODWORD(a4) = v5 >> 8;
    v7 = 0x100000000;
    return v5 | ((a4 & 0xFFFFFF) << 8) | v7;
  }

  v7 = *(a1 + 88);
  if (!v7)
  {
    goto LABEL_9;
  }

  LOBYTE(v5) = 0;
  v10 = 0;
  v11 = 0.0;
  a4 = &qword_2623A8000;
  do
  {
    v12 = vsub_f32(v9, *(v7 + 24));
    v13 = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
    if (v13 <= 0.3 && (v10 & (v13 >= v11)) == 0)
    {
      v5 = *(v7 + 16);
      LODWORD(a4) = v5 >> 8;
      v10 = 1;
      v11 = v13;
    }

    v7 = *v7;
  }

  while (v7);
  v7 = v10 << 32;
  return v5 | ((a4 & 0xFFFFFF) << 8) | v7;
}

uint64_t *sub_2622788CC(void *a1, int a2)
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

BOOL sub_262278CD8(uint64_t a1, float32x2_t a2)
{
  v2 = *(a1 + 24);
  v3 = (a1 + 32);
  if (v2 == (a1 + 32))
  {
    return 0;
  }

  while (1)
  {
    v5 = sub_2621DC76C(a2, v2[5], v2[6], 0.00001);
    result = v5 <= 0.1;
    if (v5 <= 0.1)
    {
      break;
    }

    v7 = v2[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
    if (v8 == v3)
    {
      return 0;
    }
  }

  return result;
}

void sub_262278D80(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  sub_2621C6A34();
}

void *sub_262278DC8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_262278EDC(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

void *sub_262278E6C(void *a1, id *a2)
{
  v4 = *a2;
  v5 = *a2;
  v8 = objc_msgSend_count(*a2, v6, v7);
  v9 = v5;
  *a1 = v4;
  a1[1] = 0;
  a1[2] = v9;
  a1[3] = v8;

  return a1;
}

void sub_262278EDC(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_262278F24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, id *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v971 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v927[0] = v14;
  v927[1] = v15;
  v17 = v16;
  v18 = *(a2 + 24);
  v927[2] = v17;
  v927[3] = v18;
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v926[0] = v19;
  v926[1] = v20;
  v22 = v21;
  v23 = *(a3 + 24);
  v926[2] = v22;
  v926[3] = v23;
  sub_262280B70(v928, v927, v926, 0.05);

  sub_2622BD198((a1 + 384), v928);
  v24 = *a5;
  v25 = *(a5 + 8);
  v26 = *(a5 + 16);
  v27 = *(a5 + 24);
  v898 = *a6;
  v901 = a6[2];
  *(a1 + 416) = *(a1 + 408);
  v28 = v24;
  v911 = v26;
  if (v28 == v911 && v25 == v27)
  {

    goto LABEL_113;
  }

  v30 = 0;
  v31 = v27 - 1;
  v907.i32[1] = 0;
  do
  {
    v32 = v25;
    v33 = objc_msgSend_objectAtIndex_(v28, v29, v25);
    objc_msgSend_quad(v33, v34, v35);
    v913 = v36;
    __src = v37;

    v38 = v30;
    v39 = v30 >> 5;
    if (((v30 >> 5) + 1) >> 59)
    {
      sub_2621CBEB0();
    }

    if (v30 >> 5 != -1)
    {
      sub_2621C7E7C((v30 >> 5) + 1);
    }

    v40 = 32 * v39;
    *v40 = v913;
    *(v40 + 8) = __src;
    *(v40 + 16) = xmmword_2623A7A00;
    v30 = 32 * v39 + 32;
    memcpy(0, 0, v38);
    v25 = v32 + 1;
  }

  while (v28 != v911 || v31 != v32);

  if (v30)
  {
    v907.i64[0] = v932;
    v41 = 0.5;
    v42 = 0;
    while (1)
    {
      v43 = v42[1];
      v44 = *v42;
      v45 = vsub_f32(*v42, v43);
      if (sqrtf(vaddv_f32(vmul_f32(v45, v45))) < 0.8)
      {
        LOBYTE(v965[0]) = 0;
        LOBYTE(v965[4]) = 0;
        goto LABEL_104;
      }

      v46 = 0;
      for (i = 0; i != v30; i += 4)
      {
        v48 = *i;
        v49 = i[1];
        if (sub_2621DC76C(v44, v48, v49, 0.00001) <= 0.1)
        {
          ++v46;
        }
      }

      if (v46 < 2)
      {
        v54 = 0;
      }

      else
      {
        v50 = 0;
        for (j = 0; j != v30; j += 4)
        {
          v52 = *j;
          v53 = j[1];
          if (sub_2621DC76C(v43, v52, v53, 0.00001) <= 0.1)
          {
            ++v50;
          }
        }

        v54 = v50 > 1;
      }

      memset(v957, 0, 24);
      v55 = v937;
      if (v937 != v938)
      {
        do
        {
          if (!v55[7].i32[1] && sub_2621DD4A4(v55 + 5, v42, 20.0, 0.8))
          {
            sub_2621C7CD0(v957, &v55[4]);
          }

          v56 = v55[1];
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = v55[2];
              v85 = *v57 == v55;
              v55 = v57;
            }

            while (!v85);
          }

          v55 = v57;
        }

        while (v57 != v938);
        v55 = v937;
      }

      v59 = *v42;
      v58 = v42[1];
      if (v55 == v938)
      {
        v78 = 0;
        v77 = 0;
        v914 = 1;
        goto LABEL_57;
      }

      v60 = vsub_f32(v59, v58);
      v61 = sqrtf(vaddv_f32(vmul_f32(v60, v60)));
      while (v55[7].i32[1])
      {
LABEL_48:
        v75 = v55[1];
        if (v75)
        {
          do
          {
            v76 = v75;
            v75 = *v75;
          }

          while (v75);
        }

        else
        {
          do
          {
            v76 = v55[2];
            v85 = *v76 == v55;
            v55 = v76;
          }

          while (!v85);
        }

        v55 = v76;
        if (v76 == v938)
        {
          v78 = 0;
          v77 = 0;
          v914 = 1;
          goto LABEL_57;
        }
      }

      v62 = v55[5];
      v63 = v55[6];
      v64 = sub_2621C92AC(v42, v55 + 5, 0);
      v65 = sub_2621DCFE8(v59, v58, v62, v63);
      v59 = *v42;
      v58 = v42[1];
      v66 = vsub_f32(v58, *v42);
      v67 = vaddv_f32(vmul_f32(v66, v66));
      if (v67 < 0.000001)
      {
        v67 = 0.000001;
      }

      if (v64 > 5.0)
      {
        break;
      }

      v41 = 0.5;
      if (v65 < 0.5)
      {
        goto LABEL_48;
      }

      v68 = vsub_f32(v62, v63);
      v69 = vsub_f32(vmla_n_f32(v59, v66, vaddv_f32(vmul_f32(vsub_f32(v55[5], v59), v66)) / v67), v55[5]);
      v70 = vmul_f32(v69, v69);
      v71 = vsub_f32(vmla_n_f32(v59, v66, vaddv_f32(vmul_f32(v66, vsub_f32(v55[6], v59))) / v67), v55[6]);
      v72 = vmul_f32(v71, v71);
      v73 = v61 - sqrtf(vaddv_f32(vmul_f32(v68, v68)));
      v74 = (vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v70, v72), vzip2_s32(v70, v72)))) * 0.5) > 0.2 || v73 <= 1.0;
      if (v74)
      {
        goto LABEL_48;
      }

      v914 = 0;
      v77 = v55[4].i32[0];
      v78 = 1;
LABEL_57:
      v79 = v957[0];
      if (v957[0] != v957[1] && ((v54 & v78) != 1 || (v957[1] - v957[0]) != 4 || *v957[0] != v77))
      {
        goto LABEL_99;
      }

      v80 = sub_2622C6FF4(v928, v59);
      v81 = sub_2622C6FF4(v928, v58);
      if (v80 && v81)
      {
        v82 = sub_2621C99A4(v928, v42, 0.1);
        v83 = sub_2621C99A4(v928, v42 + 1, 0.1);
        sub_2621C9CAC(v965, v928, v82, v83, 0, *v42, v42[1]);
        if ((v914 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_100;
      }

      v84 = v80 || v81;
      v85 = !v80;
      v86 = v80 ? &v42[1] : v42;
      v87 = (v85 ? &v42[1] : v42);
      v892 = v87;
      if (v84 != 1)
      {
        goto LABEL_99;
      }

      v88 = v929;
      if (v929 == v930)
      {
LABEL_90:
        v100 = v931;
        if (v931 != v932)
        {
          v101 = *v86;
          do
          {
            v90 = v100[5];
            v89 = v100[6];
            if (sub_2621DC76C(v101, v90, v89, 0.00001) <= 0.1)
            {
              goto LABEL_107;
            }

            v102 = v100[1];
            if (v102)
            {
              do
              {
                v103 = v102;
                v102 = *v102;
              }

              while (v102);
            }

            else
            {
              do
              {
                v103 = v100[2];
                v85 = *v103 == v100;
                v100 = v103;
              }

              while (!v85);
            }

            v100 = v103;
          }

          while (v103 != v932);
        }

LABEL_99:
        LOBYTE(v965[0]) = 0;
        LOBYTE(v965[4]) = 0;
        goto LABEL_100;
      }

      while (1)
      {
        v90 = v88[5];
        v89 = v88[6];
        v91 = sub_2621DC76C(*v86, v90, v89, 0.00001);
        if (v91 <= 0.1)
        {
          goto LABEL_107;
        }

        v92 = vsub_f32(*v42, v42[1]);
        v74 = sqrtf(vaddv_f32(vmul_f32(v92, v92))) <= 3.0;
        v93 = vsub_f32(v90, v89);
        v94 = sqrtf(vaddv_f32(vmul_f32(v93, v93)));
        v95 = v74 || v94 <= 3.0;
        if (!v95 && v91 <= v41)
        {
          v97 = sub_2621C92AC(v42, v88 + 5, 0);
          if ((180.0 - v97) < v97)
          {
            v97 = 180.0 - v97;
          }

          if (v97 > 80.0)
          {
            break;
          }
        }

        v98 = v88[1];
        if (v98)
        {
          do
          {
            v99 = v98;
            v98 = *v98;
          }

          while (v98);
        }

        else
        {
          do
          {
            v99 = v88[2];
            v85 = *v99 == v88;
            v88 = v99;
          }

          while (!v85);
        }

        v88 = v99;
        if (v99 == v930)
        {
          goto LABEL_90;
        }
      }

      v90 = v88[5];
      v89 = v88[6];
LABEL_107:
      v104 = vsub_f32(v89, v90);
      v105 = vmul_f32(v104, vsub_f32(*v86, v90));
      v106 = vmul_f32(v104, v104);
      v107 = vadd_f32(vzip1_s32(v105, v106), vzip2_s32(v105, v106));
      v108 = vdiv_f32(v107, vdup_lane_s32(v107, 1)).f32[0];
      if (v108 <= 0.0)
      {
        v89 = v90;
        v109 = v892;
      }

      else
      {
        v109 = v892;
        if (v108 < 1.0)
        {
          v89 = vmla_n_f32(v90, v104, v108);
        }
      }

      *&v969[0] = v89;
      v110 = sub_2621C99A4(v928, v109, 0.1);
      v111 = sub_2621C99A4(v928, v969, 0.1);
      sub_2621C9CAC(v965, v928, v110, v111, 0, *v109, v89);
      if ((v914 & 1) == 0)
      {
LABEL_64:
        sub_2621C52A8(v928, v77);
      }

LABEL_100:
      if (v79)
      {
        operator delete(v79);
      }

      if (v965[4])
      {
        sub_2621C7DA8(a1 + 408, v965);
      }

LABEL_104:
      v42 += 4;
      if (v42 == v30)
      {
        goto LABEL_113;
      }
    }

    v41 = 0.5;
    goto LABEL_48;
  }

LABEL_113:

  sub_262316FC8((a1 + 432), v928, a8, a9, a10);
  if (*(a1 + 568) == 1)
  {
    sub_2621C74C4(a1 + 528);
    *(a1 + 568) = 0;
  }

  v891 = a1 + 456;
  *(a1 + 464) = *(a1 + 456);
  *(a1 + 488) = *(a1 + 480);
  *(a1 + 512) = *(a1 + 504);
  v952 = 0;
  v951 = 0;
  v953 = 0;
  v112 = v937;
  if (v937 == v938)
  {
    v115 = 0;
  }

  else
  {
    do
    {
      if (v112[7].i32[1] == 1)
      {
        sub_2621C7DA8(&v951, &v112[5]);
      }

      v113 = v112[1];
      if (v113)
      {
        do
        {
          v114 = v113;
          v113 = *v113;
        }

        while (v113);
      }

      else
      {
        do
        {
          v114 = v112[2];
          v85 = *v114 == v112;
          v112 = v114;
        }

        while (!v85);
      }

      v112 = v114;
    }

    while (v114 != v938);
    v115 = v951;
    v116 = v952;
    if (v951 != v952)
    {
      v117 = (a1 + 528);
      __srca = (a1 + 544);
      for (k = v951; k != v116; k += 4)
      {
        v120 = k[3].i32[0];
        v119 = k[3].i32[1];
        v121 = *(a1 + 568);
        if ((v121 & 1) == 0)
        {
          memset(v957, 0, 32);
          LODWORD(v957[4]) = 1065353216;
          v122 = v934;
          if (v934 == v935)
          {
            goto LABEL_149;
          }

          do
          {
            v123 = v122[5];
            if (sub_262278CD8(v928, v123))
            {
              v124 = v122[4].i32[0];
              *&v969[0] = v122 + 4;
              sub_2622788CC(v957, v124)[3] = v123;
            }

            v125 = v122[1];
            if (v125)
            {
              do
              {
                v126 = v125;
                v125 = *v125;
              }

              while (v125);
            }

            else
            {
              do
              {
                v126 = v122[2];
                v85 = *v126 == v122;
                v122 = v126;
              }

              while (!v85);
            }

            v122 = v126;
          }

          while (v126 != v935);
          if ((*(a1 + 568) & 1) == 0)
          {
LABEL_149:
            v137 = v957[0];
            v138 = v957[1];
            v957[1] = 0;
            v957[0] = 0;
            *(a1 + 528) = v137;
            *(a1 + 536) = v138;
            v139 = v957[2];
            v140 = v957[3];
            *(a1 + 544) = v957[2];
            *(a1 + 552) = v140;
            *(a1 + 560) = v957[4];
            if (v140)
            {
              v141 = v139[1];
              if ((v138 & (v138 - 1)) != 0)
              {
                if (v141 >= v138)
                {
                  v141 %= v138;
                }
              }

              else
              {
                v141 &= v138 - 1;
              }

              v137[v141] = __srca;
              v957[2] = 0;
              v957[3] = 0;
            }

            *(a1 + 568) = 1;
          }

          else
          {
            if (*(a1 + 552))
            {
              v127 = *__srca;
              if (*__srca)
              {
                do
                {
                  v128 = *v127;
                  operator delete(v127);
                  v127 = v128;
                }

                while (v128);
              }

              *(a1 + 544) = 0;
              v129 = *(a1 + 536);
              if (v129)
              {
                for (m = 0; m != v129; ++m)
                {
                  *(*v117 + m) = 0;
                }
              }

              *(a1 + 552) = 0;
            }

            v131 = v957[0];
            v957[0] = 0;
            v132 = *v117;
            *v117 = v131;
            if (v132)
            {
              operator delete(v132);
            }

            v133 = v957[1];
            v134 = v957[2];
            *(a1 + 536) = v957[1];
            v957[1] = 0;
            v135 = v957[3];
            *(a1 + 552) = v957[3];
            *(a1 + 560) = v957[4];
            *(a1 + 544) = v134;
            if (v135)
            {
              v136 = v134[1];
              if ((v133 & (v133 - 1)) != 0)
              {
                if (v136 >= v133)
                {
                  v136 %= v133;
                }
              }

              else
              {
                v136 &= v133 - 1;
              }

              *(*v117 + v136) = __srca;
              v957[2] = 0;
              v957[3] = 0;
            }
          }

          sub_2621C74C4(v957);
        }

        v142 = sub_2622787C4(v891, v120, v928, v121);
        v143 = v142;
        LODWORD(v969[0]) = v142;
        BYTE4(v969[0]) = BYTE4(v142);
        if (HIDWORD(v142) && (v144 = sub_2622787C4(v891, v119, v928, HIDWORD(v142)), LODWORD(__p) = v144, BYTE4(__p) = BYTE4(v144), HIDWORD(v144)))
        {
          if (v143 == v144 || v120 == v143 && v119 == v144)
          {
            LOBYTE(v965[0]) = 0;
            LOBYTE(v965[4]) = 0;
            LOBYTE(v965[5]) = 0;
            LOBYTE(v965[9]) = 0;
            continue;
          }

          sub_2621C52A8(v928, k[2].i32[0]);
          v957[0] = v969;
          v147 = sub_2622788CC(v117, v969[0]);
          v957[0] = &__p;
          v148 = sub_2622788CC(v117, __p);
          sub_2621C9CAC(v957, v928, v969[0], __p, 1u, v147[3], v148[3]);
          LOBYTE(v965[0]) = 0;
          LOBYTE(v965[4]) = 0;
          v145 = &v965[5];
          *&v965[5] = *k->f32;
          *&v965[7] = *k[2].f32;
          LOBYTE(v965[9]) = 1;
          v146 = a1 + 456;
        }

        else
        {
          sub_2621C52A8(v928, k[2].i32[0]);
          *v965 = *k->f32;
          *&v965[2] = *k[2].f32;
          LOBYTE(v965[4]) = 1;
          LOBYTE(v965[5]) = 0;
          LOBYTE(v965[9]) = 0;
          v145 = v965;
          v146 = a1 + 504;
        }

        sub_2621C7DA8(v146, v145);
      }
    }
  }

  v952 = v115;
  v149 = v937;
  if (v937 != v938)
  {
    do
    {
      if (v149[7].i32[1] == 1)
      {
        sub_2621C7DA8(&v951, &v149[5]);
      }

      v150 = v149[1];
      if (v150)
      {
        do
        {
          v151 = v150;
          v150 = *v150;
        }

        while (v150);
      }

      else
      {
        do
        {
          v151 = v149[2];
          v85 = *v151 == v149;
          v149 = v151;
        }

        while (!v85);
      }

      v149 = v151;
    }

    while (v151 != v938);
    v115 = v951;
    v152 = v952;
    if (v951 != v952)
    {
      while (1)
      {
        v153 = v935[0];
        if (!v935[0])
        {
          goto LABEL_199;
        }

        v155 = v115[3].i32[0];
        v154 = v115[3].i32[1];
        v156 = v935;
        v157 = v935[0];
        do
        {
          v158 = v157;
          v159 = v156;
          v160 = *(v157 + 32);
          if (v160 >= v155)
          {
            v156 = v157;
          }

          v157 = *(v157 + 8 * (v160 < v155));
        }

        while (v157);
        if (v156 == v935)
        {
          goto LABEL_199;
        }

        if (v160 < v155)
        {
          v158 = v159;
        }

        if (*(v158 + 8) > v155)
        {
          goto LABEL_199;
        }

        v161 = v935;
        v162 = v935[0];
        do
        {
          v163 = v162;
          v164 = v161;
          v165 = *(v162 + 32);
          if (v165 >= v154)
          {
            v161 = v162;
          }

          v162 = *(v162 + 8 * (v165 < v154));
        }

        while (v162);
        if (v161 == v935)
        {
          goto LABEL_199;
        }

        if (v165 < v154)
        {
          v163 = v164;
        }

        v166 = *(v163 + 8);
        v167 = v935;
        v168 = v935[0];
        if (v166 > v154)
        {
          goto LABEL_199;
        }

        do
        {
          v169 = v168;
          v170 = v167;
          v171 = *(v168 + 32);
          if (v171 >= v155)
          {
            v167 = v168;
          }

          v168 = *(v168 + 8 * (v171 < v155));
        }

        while (v168);
        if (v167 == v935)
        {
          goto LABEL_209;
        }

        if (v171 < v155)
        {
          v169 = v170;
        }

        if (v155 < *(v169 + 8))
        {
LABEL_209:
          v167 = v935;
        }

        v172 = v935;
        do
        {
          v173 = v153;
          v174 = v172;
          v175 = *(v153 + 8);
          if (v175 >= v154)
          {
            v172 = v153;
          }

          v153 = v153[v175 < v154];
        }

        while (v153);
        if (v172 == v935 || (v175 >= v154 ? (v176 = v173) : (v176 = v174), v154 < *(v176 + 8)))
        {
          v172 = v935;
        }

        v177 = sub_262278694(v928, v115, (v167 + 5));
        v178 = sub_262278694(v928, v115, (v172 + 5));
        if (HIDWORD(v177))
        {
          if (HIDWORD(v178))
          {
            goto LABEL_199;
          }

          v179 = v154;
        }

        else
        {
          if (!HIDWORD(v178))
          {
            goto LABEL_199;
          }

          v179 = v155;
          v155 = v154;
          LODWORD(v177) = v178;
        }

        v180 = v938[0];
        if (v938[0])
        {
          v181 = v938;
          v182 = v938[0];
          do
          {
            v183 = v182;
            v184 = v181;
            v185 = *(v182 + 32);
            if (v185 >= v177)
            {
              v181 = v182;
            }

            v182 = *(v182 + 8 * (v185 < v177));
          }

          while (v182);
          if (v181 != v938)
          {
            if (v185 < v177)
            {
              v183 = v184;
            }

            v186 = v938;
            if (*(v183 + 8) <= v177)
            {
              do
              {
                v187 = v180;
                v188 = v186;
                v189 = v180[4].i32[0];
                if (v189 >= v177)
                {
                  v186 = v180;
                }

                v180 = v180[v189 < v177];
              }

              while (v180);
              if (v186 == v938 || (v189 >= v177 ? (v190 = v187) : (v190 = v188), v190[4].i32[0] > v177))
              {
                v186 = v938;
              }

              v191 = sub_2621C92AC(v115, v186 + 5, 0);
              if ((180.0 - v191) >= v191)
              {
                v192 = v191;
              }

              else
              {
                v192 = 180.0 - v191;
              }

              v193 = v935[0];
              if (!v935[0])
              {
                goto LABEL_255;
              }

              v194 = v935;
              v195 = v935[0];
              do
              {
                v196 = v195;
                v197 = v194;
                v198 = v195[4].i32[0];
                if (v198 >= v179)
                {
                  v194 = v195;
                }

                v195 = v195[v198 < v179];
              }

              while (v195);
              if (v194 == v935)
              {
                goto LABEL_255;
              }

              if (v198 < v179)
              {
                v196 = v197;
              }

              if (v196[4].i32[0] <= v179)
              {
                __p = 0uLL;
                *&v955 = 0;
                v241 = v934;
                if (v934 != v935)
                {
                  do
                  {
                    if (v241[4].i32[0] != v179)
                    {
                      v242 = vsub_f32(v194[5], v241[5]);
                      if (sqrtf(vaddv_f32(vmul_f32(v242, v242))) < 0.2)
                      {
                        sub_2621C7CD0(&__p, &v241[4]);
                      }
                    }

                    v243 = v241[1];
                    if (v243)
                    {
                      do
                      {
                        v244 = v243;
                        v243 = *v243;
                      }

                      while (v243);
                    }

                    else
                    {
                      do
                      {
                        v244 = v241[2];
                        v85 = *v244 == v241;
                        v241 = v244;
                      }

                      while (!v85);
                    }

                    v241 = v244;
                  }

                  while (v244 != v935);
                  v193 = v935[0];
                }
              }

              else
              {
LABEL_255:
                __p = 0uLL;
                *&v955 = 0;
              }

              if (!v193)
              {
                goto LABEL_273;
              }

              v199 = v935;
              v200 = v193;
              do
              {
                v201 = v200;
                v202 = v199;
                v203 = v200[4].i32[0];
                if (v203 >= v155)
                {
                  v199 = v200;
                }

                v200 = v200[v203 < v155];
              }

              while (v200);
              if (v199 == v935)
              {
                goto LABEL_273;
              }

              if (v203 < v155)
              {
                v201 = v202;
              }

              if (v201[4].i32[0] > v155)
              {
                goto LABEL_273;
              }

              v204 = v935;
              v205 = v193;
              do
              {
                v206 = v205;
                v207 = v204;
                v208 = v205[4].i32[0];
                if (v208 >= v179)
                {
                  v204 = v205;
                }

                v205 = v205[v208 < v179];
              }

              while (v205);
              if (v204 == v935)
              {
                goto LABEL_273;
              }

              if (v208 < v179)
              {
                v206 = v207;
              }

              v209 = v935;
              v210 = v193;
              if (v206[4].i32[0] > v179)
              {
LABEL_273:
                LOBYTE(v965[0]) = 0;
                LOBYTE(v965[4]) = 0;
                if (__p)
                {
                  operator delete(__p);
                }

                goto LABEL_200;
              }

              do
              {
                v211 = v210;
                v212 = v209;
                v213 = v210[4].i32[0];
                if (v213 >= v155)
                {
                  v209 = v210;
                }

                v210 = v210[v213 < v155];
              }

              while (v210);
              if (v209 == v935)
              {
                goto LABEL_282;
              }

              if (v213 < v155)
              {
                v211 = v212;
              }

              if (v155 < v211[4].i32[0])
              {
LABEL_282:
                v209 = v935;
              }

              v214 = v935;
              do
              {
                v215 = v193;
                v216 = v214;
                v217 = v193[4].i32[0];
                if (v217 >= v179)
                {
                  v214 = v193;
                }

                v193 = v193[v217 < v179];
              }

              while (v193);
              if (v214 == v935 || (v217 >= v179 ? (v218 = v215) : (v218 = v216), v179 < v218[4].i32[0]))
              {
                v214 = v935;
              }

              v219 = *(&__p + 1);
              v220 = __p;
              if (__p != *(&__p + 1))
              {
                v907.i64[0] = v209;
                v221 = vsub_f32(v214[5], v209[5]);
                v915 = v179;
                v222 = __p;
                do
                {
                  v223 = v935[0];
                  if (v935[0])
                  {
                    v224 = *v220;
                    v225 = v935;
                    v226 = v935[0];
                    do
                    {
                      v227 = v226;
                      v228 = v225;
                      v229 = *(v226 + 32);
                      if (v229 >= v224)
                      {
                        v225 = v226;
                      }

                      v226 = *(v226 + 8 * (v229 < v224));
                    }

                    while (v226);
                    if (v225 != v935)
                    {
                      if (v229 < v224)
                      {
                        v227 = v228;
                      }

                      if (*(v227 + 8) <= v224)
                      {
                        v230 = v935;
                        do
                        {
                          v231 = v223;
                          v232 = v230;
                          v233 = *(v223 + 8);
                          if (v233 >= v224)
                          {
                            v230 = v223;
                          }

                          v223 = v223[v233 < v224];
                        }

                        while (v223);
                        if (v230 == v935 || (v233 >= v224 ? (v234 = v231) : (v234 = v232), v224 < *(v234 + 8)))
                        {
                          v230 = v935;
                        }

                        v235 = v214[5];
                        v236 = v230[5];
                        v957[0] = v235;
                        v957[1] = v236;
                        *&v957[2] = xmmword_2623A7610;
                        v237 = sub_2621C92AC(v957, v186 + 5, 0);
                        if ((180.0 - v237) < v237)
                        {
                          v237 = 180.0 - v237;
                        }

                        if (v237 >= 20.0 || vaddv_f32(vmul_f32(v221, vsub_f32(v236, v235))) <= 0.0)
                        {
                          v238 = v230[5];
                          *&v969[0] = *(v907.i64[0] + 40);
                          *(&v969[0] + 1) = v238;
                          v969[1] = xmmword_2623A7610;
                          v239 = sub_2621C92AC(v969, v186 + 5, 0);
                          if ((180.0 - v239) < v239)
                          {
                            v239 = 180.0 - v239;
                          }

                          v240 = v915;
                          if (v239 < v192)
                          {
                            v240 = v224;
                          }

                          v915 = v240;
                          if (v239 < v192)
                          {
                            v192 = v239;
                          }
                        }

                        v219 = *(&v222 + 1);
                      }
                    }
                  }

                  ++v220;
                }

                while (v220 != v219);
                v220 = v222;
                if (v915 != v179)
                {
                  sub_2621C52A8(v928, v115[2].i32[0]);
                  v245 = v935[0];
                  if (!v935[0])
                  {
                    goto LABEL_349;
                  }

                  v246 = v935;
                  do
                  {
                    v247 = v245;
                    v248 = v246;
                    v249 = v245[4].i32[0];
                    if (v249 >= v915)
                    {
                      v246 = v245;
                    }

                    v245 = v245[v249 < v915];
                  }

                  while (v245);
                  if (v246 == v935)
                  {
                    goto LABEL_349;
                  }

                  if (v249 < v915)
                  {
                    v247 = v248;
                  }

                  if (v915 < v247[4].i32[0])
                  {
LABEL_349:
                    v246 = v935;
                  }

                  sub_2621C9CAC(v965, v928, v915, v155, 1u, v246[5], *(v907.i64[0] + 40));
                  if (v222)
                  {
                    operator delete(v222);
                  }

                  if (v965[4])
                  {
                    v250 = *(a1 + 488);
                    v251 = *(a1 + 496);
                    if (v250 >= v251)
                    {
                      v253 = *(a1 + 480);
                      v254 = (v250 - v253) >> 5;
                      v255 = v254 + 1;
                      if ((v254 + 1) >> 59)
                      {
                        sub_2621CBEB0();
                      }

                      v256 = v251 - v253;
                      if (v256 >> 4 > v255)
                      {
                        v255 = v256 >> 4;
                      }

                      if (v256 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v257 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v257 = v255;
                      }

                      if (v257)
                      {
                        sub_2621C7E7C(v257);
                      }

                      v258 = (32 * v254);
                      *v258 = *v965;
                      v258[1] = *&v965[2];
                      v252 = 32 * v254 + 32;
                      v259 = *(a1 + 480);
                      v260 = *(a1 + 488) - v259;
                      v261 = 32 * v254 - v260;
                      memcpy(v258 - v260, v259, v260);
                      v262 = *(a1 + 480);
                      *(a1 + 480) = v261;
                      *(a1 + 488) = v252;
                      *(a1 + 496) = 0;
                      if (v262)
                      {
                        operator delete(v262);
                      }
                    }

                    else
                    {
                      *v250 = *v965;
                      v250[1] = *&v965[2];
                      v252 = (v250 + 2);
                    }

                    *(a1 + 488) = v252;
                  }

                  goto LABEL_200;
                }
              }

              if (v220)
              {
                operator delete(v220);
              }
            }
          }
        }

LABEL_199:
        LOBYTE(v965[0]) = 0;
LABEL_200:
        v115 += 4;
        if (v115 == v152)
        {
          v115 = v951;
          break;
        }
      }
    }
  }

  if (v115)
  {
    v952 = v115;
    operator delete(v115);
  }

  v263 = a1;
  *(a1 + 584) = *(a1 + 576);
  v949 = 0;
  v948 = 0;
  v950 = 0;
  sub_262285C94(&v948, v938[1]);
  v264 = v937;
  if (v937 != v938)
  {
    do
    {
      sub_2621C7DA8(&v948, &v264[5]);
      v265 = v264[1];
      if (v265)
      {
        do
        {
          v266 = v265;
          v265 = *v265;
        }

        while (v265);
      }

      else
      {
        do
        {
          v266 = v264[2];
          v85 = *v266 == v264;
          v264 = v266;
        }

        while (!v85);
      }

      v264 = v266;
    }

    while (v266 != v938);
  }

  v267 = v948;
  v268 = v949;
  if (v948 != v949)
  {
    v269 = v948;
    while (1)
    {
      if (v269[2].i32[1])
      {
        goto LABEL_450;
      }

      v270 = vsub_f32(*v269, v269[1]);
      if (sqrtf(vaddv_f32(vmul_f32(v270, v270))) > 0.3)
      {
        goto LABEL_450;
      }

      sub_262285D38(v965, v928, v269);
      memset(v969, 0, sizeof(v969));
      v970 = 1065353216;
      v271 = v965[2];
      if (v965[2])
      {
        do
        {
          v272 = v938[0];
          if (v938[0])
          {
            v273 = v271[4];
            v274 = v938;
            do
            {
              v275 = v272;
              v276 = v274;
              v277 = *(v272 + 32);
              if (v277 >= v273)
              {
                v274 = v272;
              }

              v272 = *(v272 + 8 * (v277 < v273));
            }

            while (v272);
            if (v274 != v938)
            {
              if (v277 < v273)
              {
                v275 = v276;
              }

              if (v273 >= *(v275 + 8) && *(v274 + 15) == 1)
              {
                sub_2621C729C(v969, v273);
              }
            }
          }

          v271 = *v271;
        }

        while (v271);
      }

      sub_2621C74C4(v965);
      v278 = *&v969[1];
      if (*&v969[1])
      {
        break;
      }

LABEL_406:
      __p = 0u;
      v955 = 0u;
      v956 = 1065353216;
      sub_262285EC4(v965, v928, v269);
      sub_2621C7588(&v951, v965);
      v286 = v965[2];
      if (v965[2])
      {
        do
        {
          v287 = v938[0];
          if (v938[0])
          {
            v288 = v286[4];
            v289 = v938;
            do
            {
              v290 = v287;
              v291 = v289;
              v292 = *(v287 + 32);
              if (v292 >= v288)
              {
                v289 = v287;
              }

              v287 = *(v287 + 8 * (v292 < v288));
            }

            while (v287);
            if (v289 != v938)
            {
              if (v292 < v288)
              {
                v290 = v291;
              }

              if (v288 >= *(v290 + 8) && v288 != v269[2].i32[0])
              {
                sub_262285EC4(v957, v928, (v289 + 5));
                sub_2622831C4(&v951, v957);
                sub_2621C74C4(v957);
              }
            }
          }

          v286 = *v286;
        }

        while (v286);
      }

      sub_2621C74C4(v965);
      v294 = v953;
      if (v953)
      {
        do
        {
          v295 = v938[0];
          if (v938[0])
          {
            v296 = *(v294 + 4);
            v297 = v938;
            do
            {
              v298 = v295;
              v299 = v297;
              v300 = *(v295 + 32);
              if (v300 >= v296)
              {
                v297 = v295;
              }

              v295 = *(v295 + 8 * (v300 < v296));
            }

            while (v295);
            if (v297 != v938)
            {
              if (v300 < v296)
              {
                v298 = v299;
              }

              if (v296 >= *(v298 + 8))
              {
                sub_262285D38(v965, v928, (v297 + 5));
                memset(v957, 0, 32);
                LODWORD(v957[4]) = 1065353216;
                v301 = v965[2];
                if (v965[2])
                {
                  do
                  {
                    v302 = v938[0];
                    if (v938[0])
                    {
                      v303 = v301[4];
                      v304 = v938;
                      do
                      {
                        v305 = v302;
                        v306 = v304;
                        v307 = v302[4].i32[0];
                        if (v307 >= v303)
                        {
                          v304 = v302;
                        }

                        v302 = v302[v307 < v303];
                      }

                      while (v302);
                      if (v304 != v938)
                      {
                        if (v307 < v303)
                        {
                          v305 = v306;
                        }

                        if (v303 >= v305[4].i32[0])
                        {
                          v308 = vsub_f32(v304[5], v304[6]);
                          if (sqrtf(vaddv_f32(vmul_f32(v308, v308))) > 0.3)
                          {
                            sub_2621C729C(v957, v303);
                          }
                        }
                      }
                    }

                    v301 = *v301;
                  }

                  while (v301);
                }

                sub_2621C74C4(v965);
                sub_2622831C4(&__p, v957);
                sub_2621C74C4(v957);
              }
            }
          }

          v294 = *v294;
        }

        while (v294);
        if (*(&v955 + 1) >= 2uLL)
        {
          sub_2621C74C4(&v951);
          sub_2621C74C4(&__p);
LABEL_449:
          sub_2621C74C4(v969);
          goto LABEL_450;
        }
      }

      sub_2621C52A8(v928, v269[2].i32[0]);
      sub_2621C74C4(&v951);
      sub_2621C74C4(&__p);
      sub_2621C74C4(v969);
      sub_2621C7DA8(a1 + 576, v269);
LABEL_450:
      v269 += 4;
      if (v269 == v268)
      {
        goto LABEL_451;
      }
    }

    while (1)
    {
      v279 = v938[0];
      if (v938[0])
      {
        v280 = *(v278 + 4);
        v281 = v938;
        do
        {
          v282 = v279;
          v283 = v281;
          v284 = v279[4].i32[0];
          if (v284 >= v280)
          {
            v281 = v279;
          }

          v279 = v279[v284 < v280];
        }

        while (v279);
        if (v281 != v938)
        {
          if (v284 < v280)
          {
            v282 = v283;
          }

          if (v280 >= v282[4].i32[0])
          {
            v285 = sub_2621C92AC(v281 + 5, v269, 0);
            if ((180.0 - v285) < v285)
            {
              v285 = 180.0 - v285;
            }

            if (v285 < 20.0)
            {
              goto LABEL_449;
            }
          }
        }
      }

      v278 = *v278;
      if (!v278)
      {
        goto LABEL_406;
      }
    }
  }

LABEL_451:
  if (v267)
  {
    operator delete(v267);
  }

  *(a1 + 608) = *(a1 + 600);
  v309 = 1127481344;
  while (1)
  {
    sub_2621C6CA8(v969, &v937);
    sub_2621C8844(v957, v941);
    v310 = *&v969[0];
    if (*&v969[0] == (v969 + 8))
    {
      break;
    }

    while (1)
    {
      v311 = *&v969[0];
      if (*&v969[0] != (v969 + 8))
      {
        break;
      }

LABEL_508:
      v348 = *(v310 + 1);
      if (v348)
      {
        do
        {
          v349 = v348;
          v348 = *v348;
        }

        while (v348);
      }

      else
      {
        do
        {
          v349 = *(v310 + 2);
          v85 = *v349 == v310;
          v310 = v349;
        }

        while (!v85);
      }

      v310 = v349;
      if (v349 == (v969 + 8))
      {
        goto LABEL_543;
      }
    }

    while (1)
    {
      v312 = *(v310 + 8);
      v313 = *(v311 + 8);
      if (v312 < v313)
      {
        v314 = sub_2621C6E90(v957[0], v957[1], v312, v313);
        if (v314)
        {
          v315 = v314;
          v316 = v314[11].f32[1];
          if (v316 >= (180.0 - v316))
          {
            v316 = 180.0 - v316;
          }

          if (v316 < 10.0 && v314[18].f32[1] < 0.2)
          {
            v317 = v314[12];
            v318 = v314[13];
            v319 = v317 + 1;
            if (v317 != v318 && v319 != v318)
            {
              v321 = *v317;
              v322 = v317 + 1;
              do
              {
                v323 = *v322++;
                v324 = v323;
                if (v323 < v321)
                {
                  v321 = v324;
                  v317 = v319;
                }

                v319 = v322;
              }

              while (v322 != v318);
            }

            if (*v317 < 0.1)
            {
              v325 = v314 + 3;
              v326 = v314 + 7;
              v328 = (sub_2621DCEC8(v314 + 3, v314 + 7) & 1) != 0 ? 28 : 24;
              v329 = (v327 & 1) != 0 ? 28 : 24;
              v330 = v933[0];
              if (!v933[0])
              {
                goto LABEL_497;
              }

              v331 = *(v325->i32 + v328);
              v332 = *(v326->i32 + v329);
              v333 = v933;
              v334 = v933[0];
              do
              {
                v335 = v334;
                v336 = v333;
                v337 = *(v334 + 32);
                if (v337 >= v331)
                {
                  v333 = v334;
                }

                v334 = *(v334 + 8 * (v337 < v331));
              }

              while (v334);
              if (v333 == v933)
              {
                goto LABEL_497;
              }

              if (v337 < v331)
              {
                v335 = v336;
              }

              if (*(v335 + 8) > v331 || v333[7] < 3uLL)
              {
                goto LABEL_497;
              }

              v338 = v933;
              do
              {
                v339 = v330;
                v340 = v338;
                v341 = *(v330 + 8);
                if (v341 >= v332)
                {
                  v338 = v330;
                }

                v330 = v330[v341 < v332];
              }

              while (v330);
              if (v338 == v933 || (v341 >= v332 ? (v342 = v339) : (v342 = v340), *(v342 + 8) > v332 || v338[7] <= 2uLL))
              {
LABEL_497:
                v343 = v315[5].i32[1];
                v344 = v315[9].i32[1];
                if (!(v343 | v344))
                {
                  break;
                }

                if (v343 == 1 && v344 == 1)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v346 = *(v311 + 1);
      if (v346)
      {
        do
        {
          v347 = v346;
          v346 = *v346;
        }

        while (v346);
      }

      else
      {
        do
        {
          v347 = *(v311 + 2);
          v85 = *v347 == v311;
          v311 = v347;
        }

        while (!v85);
      }

      v311 = v347;
      if (v347 == (v969 + 8))
      {
        goto LABEL_508;
      }
    }

    if (sub_2621DCF58(v315 + 3, v315 + 7))
    {
      v351 = 7;
    }

    else
    {
      v351 = 6;
    }

    v352 = v325->i32[v351];
    if (v350)
    {
      v353 = 7;
    }

    else
    {
      v353 = 6;
    }

    v354 = v935[0];
    if (!v935[0])
    {
      goto LABEL_530;
    }

    v355 = v935;
    v356 = v935[0];
    do
    {
      v357 = v356;
      v358 = v355;
      v359 = v356[4].i32[0];
      if (v359 >= v352)
      {
        v355 = v356;
      }

      v356 = v356[v359 < v352];
    }

    while (v356);
    if (v355 == v935)
    {
      goto LABEL_530;
    }

    if (v359 < v352)
    {
      v357 = v358;
    }

    if (v352 < v357[4].i32[0])
    {
LABEL_530:
      v355 = v935;
    }

    v360 = v326->i32[v353];
    if (!v935[0])
    {
      goto LABEL_541;
    }

    v361 = v935;
    do
    {
      v362 = v354;
      v363 = v361;
      v364 = v354[4].i32[0];
      if (v364 >= v360)
      {
        v361 = v354;
      }

      v354 = v354[v364 < v360];
    }

    while (v354);
    if (v361 == v935 || (v364 >= v360 ? (v365 = v362) : (v365 = v363), v360 < v365[4].i32[0]))
    {
LABEL_541:
      v361 = v935;
    }

    sub_2621C9CAC(v965, v928, v352, v360, v315[5].u32[1], v355[5], v361[5]);
    sub_2621C52A8(v928, v315[5].i32[0]);
    sub_2621C52A8(v928, v315[9].i32[0]);
    sub_2621C7DA8(a1 + 600, v325);
    sub_2621C7DA8(a1 + 600, v326);
    sub_2621C7040(v957);
    sub_2621C6C04(*(&v969[0] + 1));
  }

LABEL_543:
  sub_2621C7040(v957);
  sub_2621C6C04(*(&v969[0] + 1));
  v890 = (a1 + 624);
  *(a1 + 632) = *(a1 + 624);
  v366 = v937;
  if (v937 != v938)
  {
    v367 = 0;
    v309 = 0x7FFFFFFFFFFFFFFLL;
    do
    {
      v368 = v367;
      v369 = v367 >> 5;
      if (((v367 >> 5) + 1) >> 59)
      {
        sub_2621CBEB0();
      }

      if (v367 >> 5 != -1)
      {
        sub_2621C7E7C((v367 >> 5) + 1);
      }

      v370 = (32 * v369);
      v371 = *v366[7].f32;
      *v370 = *v366[5].f32;
      v370[1] = v371;
      v367 = 32 * v369 + 32;
      memcpy(0, 0, v368);
      v372 = v366[1];
      if (v372)
      {
        do
        {
          v373 = v372;
          v372 = *v372;
        }

        while (v372);
      }

      else
      {
        do
        {
          v373 = v366[2];
          v85 = *v373 == v366;
          v366 = v373;
        }

        while (!v85);
      }

      v366 = v373;
    }

    while (v373 != v938);
    if (32 * v369 != -32)
    {
      v309 = 1127481344;
      v374 = 0;
      do
      {
        v375 = 0;
        do
        {
          v376 = v938[0];
          if (v938[0])
          {
            v377 = *(v374 + 4);
            v378 = v938;
            v379 = v938[0];
            do
            {
              v380 = v379;
              v381 = v378;
              v382 = *(v379 + 32);
              if (v382 >= v377)
              {
                v378 = v379;
              }

              v379 = *(v379 + 8 * (v382 < v377));
            }

            while (v379);
            if (v378 != v938)
            {
              if (v382 < v377)
              {
                v380 = v381;
              }

              if (*(v380 + 8) <= v377)
              {
                v383 = v375[2].i32[0];
                v384 = v938;
                do
                {
                  v385 = v376;
                  v386 = v384;
                  v387 = *(v376 + 32);
                  if (v387 >= v383)
                  {
                    v384 = v376;
                  }

                  v376 = *(v376 + 8 * (v387 < v383));
                }

                while (v376);
                if (v384 != v938)
                {
                  v388 = v387 >= v383 ? v385 : v386;
                  if (*(v388 + 8) <= v383 && !*(v374 + 5) && v375[2].i32[1] == 1)
                  {
                    v389 = sub_2621C92AC(v374, v375, 0);
                    if ((180.0 - v389) < v389)
                    {
                      v389 = 180.0 - v389;
                    }

                    if (v389 < 10.0)
                    {
                      v391 = *v374;
                      v390 = *(v374 + 8);
                      v392 = *v375;
                      v393 = v375[1];
                      v394 = vsub_f32(v390, *v374);
                      v395 = vaddv_f32(vmul_f32(vsub_f32(*v375, *v374), v394));
                      v396 = vaddv_f32(vmul_f32(v394, v394));
                      if (v396 < 0.000001)
                      {
                        v396 = 0.000001;
                      }

                      v397 = vmla_n_f32(v391, v394, v395 / v396);
                      v398 = vsub_f32(v397, v392);
                      v399 = vmul_f32(v398, v398);
                      v400 = vsub_f32(vmla_n_f32(v391, v394, vaddv_f32(vmul_f32(v394, vsub_f32(v393, v391))) / v396), v393);
                      v401 = vmul_f32(v400, v400);
                      v402 = vsqrt_f32(vadd_f32(vzip1_s32(v401, v399), vzip2_s32(v401, v399)));
                      if (v402.f32[0] >= v402.f32[1])
                      {
                        v402.f32[0] = v402.f32[1];
                      }

                      if (v402.f32[0] < 0.2 && sub_2621DCFE8(*v374, *(v374 + 8), v392, v393) >= 0.99)
                      {
                        *&__p = v397;
                        v403 = vsub_f32(*(v374 + 8), *v374);
                        v404 = vaddv_f32(vmul_f32(vsub_f32(v375[1], *v374), v403));
                        v405 = vaddv_f32(vmul_f32(v403, v403));
                        if (v405 < 0.000001)
                        {
                          v405 = 0.000001;
                        }

                        v406 = vmla_n_f32(*v374, v403, v404 / v405);
                        v951 = v406;
                        v407 = vsub_f32(v391, v397);
                        v408 = vmul_f32(v407, v407);
                        v409 = vsub_f32(v391, v406);
                        v410 = vmul_f32(v409, v409);
                        v411 = vsqrt_f32(vadd_f32(vzip1_s32(v408, v410), vzip2_s32(v408, v410)));
                        if (vcgt_f32(v411, vdup_lane_s32(v411, 1)).u8[0])
                        {
                          *&__p = v406;
                          v951 = v397;
                          v412 = v397;
                        }

                        else
                        {
                          v412 = v406;
                          v406 = v397;
                        }

                        v414 = *(v374 + 6);
                        v413 = *(v374 + 7);
                        v415 = sub_2621C99A4(v928, &__p, 0.1);
                        v416 = sub_2621C99A4(v928, &v951, 0.1);
                        sub_2621C9CAC(v965, v928, v414, v415, 0, v391, v406);
                        sub_2621C9CAC(v969, v928, v415, v416, 1u, v406, v412);
                        sub_2621C9CAC(v965, v928, v416, v413, 0, v412, v390);
                        sub_2621C52A8(v928, *(v374 + 4));
                        if (v970 == 1)
                        {
                          sub_2621C52A8(v928, v375[2].i32[0]);
                        }

                        v417 = *v374;
                        v418 = *(v374 + 1);
                        *(&v965[1] + 7) = *(v374 + 1);
                        *v965 = v418;
                        v419 = *v375[2].f32;
                        *(&v965[3] + 7) = *v375->f32;
                        *(&v965[5] + 7) = v419;
                        *v957 = *v965;
                        *&v957[2] = *&v965[2];
                        *&v957[4] = *&v965[4];
                        *(&v957[5] + 7) = v419;
                        v420 = *(a1 + 632);
                        v421 = *(a1 + 640);
                        if (v420 >= v421)
                        {
                          v423 = *v890;
                          v424 = v420 - *v890;
                          v425 = v424 >> 6;
                          v426 = (v424 >> 6) + 1;
                          if (v426 >> 58)
                          {
                            sub_2621CBEB0();
                          }

                          v427 = v421 - v423;
                          if (v427 >> 5 > v426)
                          {
                            v426 = v427 >> 5;
                          }

                          if (v427 >= 0x7FFFFFFFFFFFFFC0)
                          {
                            v428 = 0x3FFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v428 = v426;
                          }

                          if (v428)
                          {
                            if (!(v428 >> 58))
                            {
                              operator new();
                            }

                            sub_2621C6A34();
                          }

                          v429 = v425 << 6;
                          *v429 = v417;
                          v430 = *&v957[2];
                          *(v429 + 1) = *v957;
                          *(v429 + 17) = v430;
                          *(v429 + 33) = *&v957[4];
                          *(v429 + 48) = *(&v957[5] + 7);
                          v422 = (v425 << 6) + 64;
                          v431 = (v429 - (v424 >> 6 << 6));
                          memcpy(v431, v423, v424);
                          *(a1 + 624) = v431;
                          *(a1 + 632) = v422;
                          *(a1 + 640) = 0;
                          if (v423)
                          {
                            operator delete(v423);
                          }
                        }

                        else
                        {
                          *v420 = v417;
                          *(v420 + 1) = *v957;
                          *(v420 + 17) = *&v957[2];
                          *(v420 + 33) = *&v957[4];
                          *(v420 + 48) = *(&v957[5] + 7);
                          v422 = v420 + 64;
                        }

                        *(a1 + 632) = v422;
                      }
                    }
                  }
                }
              }
            }
          }

          v375 += 4;
        }

        while (v375 != v367);
        v374 += 32;
      }

      while (v374 != v367);
    }

    v263 = a1;
  }

  v263[82] = v263[81];
  v263[85] = v263[84];
  memset(v957, 0, 32);
  LODWORD(v957[4]) = 1065353216;
  memset(v969, 0, sizeof(v969));
  v970 = 1065353216;
  v432 = v940 - v939;
  if (v940 != v939)
  {
    if (!((v432 >> 3) >> 61))
    {
      sub_2621CBEC8(v432 >> 3);
    }

    sub_2621CBEB0();
  }

  v433 = 0;
  sub_2621C8844(&__p, v941);
  sub_2621C7040(&__p);
  v907.i32[0] = 1055286886;
  sub_2621C74C4(v969);
  sub_2621C74C4(v957);
  v434 = a1;
  *(a1 + 704) = *(a1 + 696);
  memset(v969, 0, 24);
  v435 = v942;
  if (v942)
  {
    v433 = 0;
    v309 = 0x8E38E38E38E38E39;
    do
    {
      if (*(v435 + 4) < *(v435 + 5))
      {
        if (v433 >= *&v969[1])
        {
          v441 = 0x8E38E38E38E38E39 * ((v433 - *&v969[0]) >> 4);
          v442 = v441 + 1;
          if (v441 + 1 > 0x1C71C71C71C71C7)
          {
            sub_2621CBEB0();
          }

          if (0x1C71C71C71C71C72 * ((*&v969[1] - *&v969[0]) >> 4) > v442)
          {
            v442 = 0x1C71C71C71C71C72 * ((*&v969[1] - *&v969[0]) >> 4);
          }

          if (0x8E38E38E38E38E39 * ((*&v969[1] - *&v969[0]) >> 4) >= 0xE38E38E38E38E3)
          {
            v443 = 0x1C71C71C71C71C7;
          }

          else
          {
            v443 = v442;
          }

          v965[4] = v969;
          if (v443)
          {
            if (v443 <= 0x1C71C71C71C71C7)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v444 = 144 * v441;
          v965[0] = 0;
          v965[1] = v444;
          v965[2] = v444;
          v965[3] = 0;
          *v444 = *(v435 + 3);
          v445 = *(v435 + 5);
          v446 = *(v435 + 7);
          v447 = *(v435 + 9);
          *(v444 + 64) = v435[11];
          *(v444 + 32) = v446;
          *(v444 + 48) = v447;
          *(v444 + 16) = v445;
          *(v444 + 80) = 0;
          *(v444 + 88) = 0;
          *(v444 + 72) = 0;
          sub_2621C8E70(v444 + 72, v435[12], v435[13], (v435[13] - v435[12]) >> 2);
          v448 = *(v435 + 15);
          v449 = *(v435 + 17);
          *(v444 + 124) = *(v435 + 148);
          *(v444 + 96) = v448;
          *(v444 + 112) = v449;
          v965[2] = v965[2] + 144;
          v450 = *(&v969[0] + 1);
          v451 = *&v969[0];
          v957[0] = v969;
          v957[1] = &v951;
          v957[2] = &__p;
          LOBYTE(v957[3]) = 0;
          v452 = *&v969[0];
          v453 = v965[1] + *&v969[0] - *(&v969[0] + 1);
          *&__p = v453;
          v454 = v453;
          v951 = v453;
          if (*&v969[0] == *(&v969[0] + 1))
          {
            LOBYTE(v957[3]) = 1;
          }

          else
          {
            do
            {
              *v454 = *v452;
              v455 = *(v452 + 16);
              v456 = *(v452 + 32);
              v457 = *(v452 + 48);
              *(v454 + 64) = *(v452 + 64);
              *(v454 + 32) = v456;
              *(v454 + 48) = v457;
              *(v454 + 16) = v455;
              *(v454 + 80) = 0;
              *(v454 + 88) = 0;
              *(v454 + 72) = 0;
              sub_2621C8E70(v454 + 72, *(v452 + 72), *(v452 + 80), (*(v452 + 80) - *(v452 + 72)) >> 2);
              v458 = *(v452 + 96);
              v459 = *(v452 + 112);
              *(v454 + 124) = *(v452 + 124);
              *(v454 + 96) = v458;
              *(v454 + 112) = v459;
              v452 += 144;
              v454 = __p + 144;
              *&__p = __p + 144;
            }

            while (v452 != v450);
            LOBYTE(v957[3]) = 1;
            do
            {
              v460 = *(v451 + 72);
              if (v460)
              {
                *(v451 + 80) = v460;
                operator delete(v460);
              }

              v451 += 144;
            }

            while (v451 != v450);
          }

          sub_262284808(v957);
          v461 = *&v969[0];
          v462 = *&v969[1];
          *&v969[0] = v453;
          __srcf = v965[2];
          *(v969 + 8) = *&v965[2];
          v965[2] = v461;
          v965[3] = v462;
          v965[1] = v461;
          v965[0] = v461;
          sub_2622847A4(v965);
          v433 = __srcf;
          v434 = a1;
        }

        else
        {
          *v433 = *(v435 + 3);
          v436 = *(v435 + 5);
          v437 = *(v435 + 7);
          v438 = *(v435 + 9);
          *(v433 + 64) = v435[11];
          *(v433 + 32) = v437;
          *(v433 + 48) = v438;
          *(v433 + 16) = v436;
          *(v433 + 80) = 0;
          *(v433 + 88) = 0;
          *(v433 + 72) = 0;
          sub_2621C8E70(v433 + 72, v435[12], v435[13], (v435[13] - v435[12]) >> 2);
          v439 = *(v435 + 15);
          v440 = *(v435 + 17);
          *(v433 + 124) = *(v435 + 148);
          *(v433 + 96) = v439;
          *(v433 + 112) = v440;
          v433 += 144;
        }

        *(&v969[0] + 1) = v433;
      }

      v435 = *v435;
    }

    while (v435);
    v463 = *&v969[0];
    if (*&v969[0] != v433)
    {
      v309 = 1109393408;
      do
      {
        if (!(v463[2].i32[1] | v463[6].i32[1]) && v463[12].i8[0] == 1 && (v463[8].i8[0] & 1) == 0)
        {
          v464 = vsub_f32(*v463, v463[1]);
          v465 = vmul_f32(v464, v464);
          v466 = vsub_f32(v463[4], v463[5]);
          v467 = vmul_f32(v466, v466);
          v468 = vsqrt_f32(vadd_f32(vzip1_s32(v467, v465), vzip2_s32(v467, v465)));
          v469 = v468.f32[1];
          if (v468.f32[0] >= v468.f32[1])
          {
            v470 = v468.f32[1];
          }

          else
          {
            v470 = v468.f32[0];
          }

          v471 = 40.0;
          if (v470 >= 0.55)
          {
            v471 = 30.0;
          }

          v472 = v463[8].f32[1];
          if (v472 >= (180.0 - v472))
          {
            v472 = 180.0 - v472;
          }

          if (v472 < v471 && v468.f32[1] > 0.25 && v468.f32[0] > 0.25 && v463[15].f32[0] < 0.3 && v463[17].f32[0] > 0.75)
          {
            v475 = v463 + 4;
            if (v468.f32[1] >= v468.f32[0])
            {
              v476 = v468.f32[1];
            }

            else
            {
              v476 = v468.f32[0];
            }

            if ((v476 / v470) <= 2.0)
            {
              __srcb = v468.f32[0];
              v477 = sub_262284714(v463[3].i32[0], v463[3].i32[1], v928);
              v478 = sub_262284714(v463[7].i32[0], v463[7].i32[1], v928);
              if (!v477 || v478)
              {
                if (v469 >= __srcb)
                {
                  v479 = v463 + 4;
                }

                else
                {
                  v479 = v463;
                }

                if (v477 || !v478)
                {
                  v475 = v479;
                }

                else
                {
                  v475 = v463;
                }
              }
            }

            else if (v468.f32[1] < v468.f32[0])
            {
              v475 = v463;
            }

            sub_2621C52A8(v928, v475[2].i32[0]);
            sub_2621C7DA8(a1 + 696, v475);
          }
        }

        v463 += 18;
      }

      while (v463 != v433);
    }
  }

  v965[0] = v969;
  sub_262284688(v965);
  v434[91] = v434[90];
  v480 = v939;
  v481 = v940;
  if (v939 != v940)
  {
    v309 = 48;
    v433 = 16;
    while (1)
    {
      v482 = sub_2621C5F34(v941, *v480, v480[1]);
      if (!v482 || v482[2].i32[0] >= v482[2].i32[1])
      {
        goto LABEL_777;
      }

      if (v482[5].i32[1] | v482[9].i32[1])
      {
        break;
      }

      v483 = v482 + 3;
      v484 = vsub_f32(v482[3], v482[4]);
      v485 = vmul_f32(v484, v484);
      v486 = vsub_f32(v482[7], v482[8]);
      v487 = vmul_f32(v486, v486);
      v488 = vsqrt_f32(vadd_f32(vzip1_s32(v485, v487), vzip2_s32(v485, v487)));
      if (v488.f32[0] <= v488.f32[1])
      {
        v489 = 6;
      }

      else
      {
        v489 = 2;
      }

      if (v488.f32[0] <= v488.f32[1])
      {
        v490 = v482 + 3;
      }

      else
      {
        v490 = v482 + 7;
      }

      if (v488.f32[0] <= v488.f32[1])
      {
        v491 = 2;
      }

      else
      {
        v491 = 6;
      }

      v492 = 7;
      if (v488.f32[0] > v488.f32[1])
      {
        v493 = 15;
      }

      else
      {
        v492 = 3;
        v493 = 7;
      }

      if (v488.f32[0] <= v488.f32[1])
      {
        v494 = v488.f32[1];
      }

      else
      {
        v494 = v488.f32[0];
      }

      if (v488.f32[0] > v488.f32[1])
      {
        v488.f32[0] = v488.f32[1];
      }

      v495 = v483[v489].i32[0];
      *(v957 + 4) = *v490->f32;
      if (v494 <= 0.8 || v488.f32[0] >= 0.45)
      {
        break;
      }

      v496 = v483->i32[v493];
      v497 = v483[v492].i32[0];
      v498 = v483[v491].u32[0];
      if (v488.f32[0] <= 0.25)
      {
        v507 = v935[0];
        if (!v935[0])
        {
          goto LABEL_726;
        }

        v508 = v935;
        v509 = v935[0];
        do
        {
          v510 = v509;
          v511 = v508;
          v512 = *(v509 + 32);
          if (v512 >= v497)
          {
            v508 = v509;
          }

          v509 = *(v509 + 8 * (v512 < v497));
        }

        while (v509);
        if (v508 == v935)
        {
          goto LABEL_726;
        }

        if (v512 < v497)
        {
          v510 = v511;
        }

        if (v497 < *(v510 + 8))
        {
LABEL_726:
          v508 = v935;
        }

        if (!v935[0])
        {
          goto LABEL_737;
        }

        v513 = v935;
        do
        {
          v514 = v507;
          v515 = v513;
          v516 = *(v507 + 8);
          if (v516 >= v496)
          {
            v513 = v507;
          }

          v507 = v507[v516 < v496];
        }

        while (v507);
        if (v513 == v935 || (v516 >= v496 ? (v517 = v514) : (v517 = v515), v496 < *(v517 + 8)))
        {
LABEL_737:
          v513 = v935;
        }

        v518 = v508[10];
        if (!v518)
        {
          goto LABEL_748;
        }

        v519 = v508 + 10;
        do
        {
          v520 = v518;
          v521 = v519;
          v522 = *(v518 + 7);
          if (v522 >= v495)
          {
            v519 = v518;
          }

          v518 = v518[v522 < v495];
        }

        while (v518);
        if (v519 != v508 + 10 && (v522 >= v495 ? (v523 = v520) : (v523 = v521), v495 >= *(v523 + 7)))
        {
          v508 = v513;
        }

        else
        {
LABEL_748:
          v526 = v513[10];
          v524 = v513 + 10;
          v525 = v526;
          if (!v526)
          {
            break;
          }

          v527 = v524;
          do
          {
            v528 = v525;
            v529 = v527;
            v530 = *(v525 + 7);
            if (v530 >= v495)
            {
              v527 = v525;
            }

            v525 = v525[v530 < v495];
          }

          while (v525);
          if (v527 == v524)
          {
            break;
          }

          v531 = (v530 >= v495 ? v528 : v529);
          if (v495 < *(v531 + 28))
          {
            break;
          }
        }

        if (v508[11] != 1)
        {
          break;
        }
      }

      else
      {
        if (v482[15].i8[0] != 1 || v482[11].i8[0] == 1)
        {
          break;
        }

        v499 = v482[11].f32[1];
        if (v499 >= (180.0 - v499))
        {
          v499 = 180.0 - v499;
        }

        if (v499 >= 65.0)
        {
          break;
        }

        v500 = v933[0];
        if (!v933[0])
        {
          break;
        }

        v501 = v933;
        v502 = v933[0];
        do
        {
          v503 = v502;
          v504 = v501;
          v505 = *(v502 + 32);
          if (v505 >= v497)
          {
            v501 = v502;
          }

          v502 = *(v502 + 8 * (v505 < v497));
        }

        while (v502);
        if (v501 == v933)
        {
          goto LABEL_716;
        }

        if (v505 < v497)
        {
          v503 = v504;
        }

        if (*(v503 + 8) > v497)
        {
LABEL_716:
          v506 = 0;
        }

        else
        {
          v506 = v501[7] == 1;
        }

        v532 = v933;
        do
        {
          v533 = v500;
          v534 = v532;
          v535 = *(v500 + 32);
          if (v535 >= v496)
          {
            v532 = v500;
          }

          v500 = *(v500 + 8 * (v535 < v496));
        }

        while (v500);
        if (v532 == v933)
        {
          break;
        }

        v536 = v535 >= v496 ? v533 : v534;
        if (*(v536 + 8) > v496)
        {
          break;
        }

        if (v532[7] != 1 || !v506)
        {
          break;
        }
      }

      sub_2621C52A8(v928, v498);
      *v965 = *(v957 + 4);
      v965[2] = v498;
      v965[3] = __PAIR64__(v496, v497);
      LOBYTE(v965[4]) = 1;
      sub_2621C7DA8((v434 + 90), v965);
LABEL_777:
      v480 += 2;
      if (v480 == v481)
      {
        v480 = v939;
        v481 = v940;
        v434 = a1;
        goto LABEL_779;
      }
    }

    LOBYTE(v965[0]) = 0;
    LOBYTE(v965[4]) = 0;
    goto LABEL_777;
  }

LABEL_779:
  v434[94] = v434[93];
  if (v480 != v481)
  {
    v309 = 1119092736;
    v433 = 0x7FFFFFFFFFFFFFE0;
    do
    {
      v538 = sub_2621C5F34(v941, *v480, v480[1]);
      if (v538 && v538[2].i32[0] < v538[2].i32[1] && v538[11].i8[0] == 1 && !(v538[5].i32[1] | v538[9].i32[1]) && vabds_f32(90.0, v538[11].f32[1]) < 30.0)
      {
        v539 = v538 + 3;
        v540 = vsub_f32(v538[3], v538[4]);
        v541 = vmul_f32(v540, v540);
        v542 = vsub_f32(v538[7], v538[8]);
        v543 = vmul_f32(v542, v542);
        v544 = vsqrt_f32(vadd_f32(vzip1_s32(v541, v543), vzip2_s32(v541, v543)));
        if (v544.f32[0] >= v544.f32[1])
        {
          v545 = v538 + 3;
        }

        else
        {
          v545 = v538 + 7;
        }

        if (v544.f32[0] < v544.f32[1])
        {
          v546 = v544.f32[1];
        }

        else
        {
          v539 = v538 + 7;
          v546 = v544.f32[0];
        }

        if (v544.f32[0] >= v544.f32[1])
        {
          v544.f32[0] = v544.f32[1];
        }

        v547 = *v545[2].f32;
        *v965 = *v545->f32;
        *&v965[2] = v547;
        *&v965[5] = *v539->f32;
        *&v965[7] = *v539[2].f32;
        *&v965[4] = v546;
        LODWORD(v965[9]) = v544.i32[0];
        if (v546 > 0.45 && v544.f32[0] < 0.3)
        {
          __srcc = v965[3];
          sub_2621CAF00(v957, &v965[5], *&v965[3]);
          v548 = v957[0];
          v549 = v957[1];
          if (v957[0])
          {
            v957[1] = v957[0];
            operator delete(v957[0]);
          }

          if (v548 != v549)
          {
            sub_2621CAF00(v957, &v965[5], *&__srcc);
            v550 = *v957[0];
            v957[1] = v957[0];
            operator delete(v957[0]);
            v551 = __srcc == v550 ? HIDWORD(__srcc) : __srcc;
            v552 = LODWORD(v965[8]) == v550 ? HIDWORD(v965[8]) : LODWORD(v965[8]);
            v553 = v933[0];
            if (!v933[0])
            {
              goto LABEL_814;
            }

            v554 = v933;
            v555 = v933[0];
            do
            {
              v556 = v555;
              v557 = v554;
              v558 = *(v555 + 32);
              if (v558 >= v550)
              {
                v554 = v555;
              }

              v555 = *(v555 + 8 * (v558 < v550));
            }

            while (v555);
            if (v554 == v933)
            {
              goto LABEL_814;
            }

            if (v558 < v550)
            {
              v556 = v557;
            }

            if (*(v556 + 8) <= v550)
            {
              v559 = v554[7] == 2;
            }

            else
            {
LABEL_814:
              v559 = 0;
            }

            v560 = v935[0];
            if (v935[0])
            {
              v561 = v935;
              v562 = v935[0];
              do
              {
                v563 = v562;
                v564 = v561;
                v565 = *(v562 + 32);
                if (v565 >= v552)
                {
                  v561 = v562;
                }

                v562 = *(v562 + 8 * (v565 < v552));
              }

              while (v562);
              if (v561 != v935)
              {
                if (v565 < v552)
                {
                  v563 = v564;
                }

                if (v552 >= *(v563 + 8))
                {
                  v566 = v935;
                  v567 = v935[0];
                  do
                  {
                    v568 = v567;
                    v569 = v566;
                    v570 = *(v567 + 32);
                    if (v570 >= v552)
                    {
                      v566 = v567;
                    }

                    v567 = *(v567 + 8 * (v570 < v552));
                  }

                  while (v567);
                  if (v566 == v935)
                  {
                    goto LABEL_832;
                  }

                  if (v570 < v552)
                  {
                    v568 = v569;
                  }

                  if (v552 < *(v568 + 8))
                  {
LABEL_832:
                    v566 = v935;
                  }

                  if (v566[11] == 1 && v559)
                  {
                    if (v933[0])
                    {
                      v572 = v933;
                      v573 = v933[0];
                      do
                      {
                        v574 = v573;
                        v575 = v572;
                        v576 = *(v573 + 32);
                        if (v576 >= v550)
                        {
                          v572 = v573;
                        }

                        v573 = *(v573 + 8 * (v576 < v550));
                      }

                      while (v573);
                      if (v572 == v933)
                      {
                        goto LABEL_846;
                      }

                      if (v576 < v550)
                      {
                        v574 = v575;
                      }

                      if (*(v574 + 8) > v550)
                      {
LABEL_846:
                        v577 = 0;
                      }

                      else
                      {
                        v577 = v572[7];
                      }

                      v578 = v933;
                      do
                      {
                        v579 = v553;
                        v580 = v578;
                        v581 = *(v553 + 32);
                        if (v581 >= v551)
                        {
                          v578 = v553;
                        }

                        v553 = *(v553 + 8 * (v581 < v551));
                      }

                      while (v553);
                      LOBYTE(v553) = v578 != v933 && (v581 >= v551 ? (v582 = v579) : (v582 = v580), *(v582 + 8) <= v551) && v578[7] > 1uLL;
                    }

                    else
                    {
                      v577 = 0;
                    }

                    v583 = v935;
                    v584 = v935[0];
                    do
                    {
                      v585 = v584;
                      v586 = v583;
                      v587 = *(v584 + 32);
                      if (v587 >= v551)
                      {
                        v583 = v584;
                      }

                      v584 = *(v584 + 8 * (v587 < v551));
                    }

                    while (v584);
                    if (v583 != v935)
                    {
                      if (v587 < v551)
                      {
                        v585 = v586;
                      }

                      if (v551 >= *(v585 + 8) && v577 == 2)
                      {
                        if (v553)
                        {
                          goto LABEL_1291;
                        }

                        v589 = v935;
                        v590 = v935[0];
                        do
                        {
                          v591 = v590;
                          v592 = v589;
                          v593 = *(v590 + 32);
                          if (v593 >= v551)
                          {
                            v589 = v590;
                          }

                          v590 = *(v590 + 8 * (v593 < v551));
                        }

                        while (v590);
                        if (v589 == v935)
                        {
                          goto LABEL_882;
                        }

                        if (v593 < v551)
                        {
                          v591 = v592;
                        }

                        if (v551 < *(v591 + 8))
                        {
LABEL_882:
                          v589 = v935;
                        }

                        if (v589[11] >= 2uLL)
                        {
LABEL_1291:
                          v594 = v935;
                          v595 = v935[0];
                          do
                          {
                            v596 = v595;
                            v597 = v594;
                            v598 = *(v595 + 32);
                            if (v598 >= v551)
                            {
                              v594 = v595;
                            }

                            v595 = *(v595 + 8 * (v598 < v551));
                          }

                          while (v595);
                          if (v594 != v935)
                          {
                            if (v598 < v551)
                            {
                              v596 = v597;
                            }

                            if (v551 >= *(v596 + 8))
                            {
                              v599 = v935;
                              do
                              {
                                v600 = v560;
                                v601 = v599;
                                v602 = *(v560 + 8);
                                if (v602 >= v551)
                                {
                                  v599 = v560;
                                }

                                v560 = v560[v602 < v551];
                              }

                              while (v560);
                              if (v599 == v935 || (v602 >= v551 ? (v603 = v600) : (v603 = v601), v551 < *(v603 + 8)))
                              {
                                v599 = v935;
                              }

                              v604 = v599[9];
                              if (v604 != v599 + 10)
                              {
                                while (1)
                                {
                                  v605 = *(v604 + 7);
                                  if (v605 != LODWORD(v965[2]) && v938[0] != 0)
                                  {
                                    v607 = v938;
                                    v608 = v938[0];
                                    do
                                    {
                                      v609 = v608;
                                      v610 = v607;
                                      v611 = *(v608 + 32);
                                      if (v611 >= v605)
                                      {
                                        v607 = v608;
                                      }

                                      v608 = *(v608 + 8 * (v611 < v605));
                                    }

                                    while (v608);
                                    if (v607 != v938)
                                    {
                                      if (v611 < v605)
                                      {
                                        v609 = v610;
                                      }

                                      if (v605 >= *(v609 + 8))
                                      {
                                        v612 = v938;
                                        v613 = v938[0];
                                        do
                                        {
                                          v614 = v613;
                                          v615 = v612;
                                          v616 = v613[4].i32[0];
                                          if (v616 >= v605)
                                          {
                                            v612 = v613;
                                          }

                                          v613 = v613[v616 < v605];
                                        }

                                        while (v613);
                                        if (v612 == v938)
                                        {
                                          goto LABEL_923;
                                        }

                                        if (v616 < v605)
                                        {
                                          v614 = v615;
                                        }

                                        if (v605 < v614[4].i32[0])
                                        {
LABEL_923:
                                          v612 = v938;
                                        }

                                        v617 = vsub_f32(v612[5], v612[6]);
                                        if (sqrtf(vaddv_f32(vmul_f32(v617, v617))) > 1.0)
                                        {
                                          break;
                                        }
                                      }
                                    }
                                  }

                                  v618 = v604[1];
                                  if (v618)
                                  {
                                    do
                                    {
                                      v619 = v618;
                                      v618 = *v618;
                                    }

                                    while (v618);
                                  }

                                  else
                                  {
                                    do
                                    {
                                      v619 = v604[2];
                                      v85 = *v619 == v604;
                                      v604 = v619;
                                    }

                                    while (!v85);
                                  }

                                  v604 = v619;
                                  if (v619 == v599 + 10)
                                  {
                                    goto LABEL_931;
                                  }
                                }

                                sub_2621C52A8(v928, v965[7]);
                                *v957 = *(&v965[5] + 1);
                                *(&v957[1] + 7) = *&v965[7];
                                v620 = v434[94];
                                v621 = v434[95];
                                if (v620 >= v621)
                                {
                                  v623 = *(a1 + 744);
                                  v624 = (v620 - v623) >> 5;
                                  v625 = v624 + 1;
                                  if ((v624 + 1) >> 59)
                                  {
                                    sub_2621CBEB0();
                                  }

                                  v626 = v621 - v623;
                                  if (v626 >> 4 > v625)
                                  {
                                    v625 = v626 >> 4;
                                  }

                                  if (v626 >= 0x7FFFFFFFFFFFFFE0)
                                  {
                                    v627 = 0x7FFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v627 = v625;
                                  }

                                  if (v627)
                                  {
                                    sub_2621C7E7C(v627);
                                  }

                                  v628 = 32 * v624;
                                  *v628 = v965[5];
                                  *(v628 + 1) = *v957;
                                  *(v628 + 16) = *(&v957[1] + 7);
                                  v622 = 32 * v624 + 32;
                                  v434 = a1;
                                  v629 = *(a1 + 744);
                                  v630 = *(a1 + 752) - v629;
                                  v631 = v628 - v630;
                                  memcpy((v628 - v630), v629, v630);
                                  v632 = *(a1 + 744);
                                  *(a1 + 744) = v631;
                                  *(a1 + 752) = v622;
                                  *(a1 + 760) = 0;
                                  if (v632)
                                  {
                                    operator delete(v632);
                                  }
                                }

                                else
                                {
                                  *v620 = v965[5];
                                  *(v620 + 1) = *v957;
                                  *(v620 + 16) = *(&v957[1] + 7);
                                  v622 = v620 + 32;
                                }

                                v434[94] = v622;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_931:
      v480 += 2;
    }

    while (v480 != v481);
  }

  v633 = a4;
  v634 = *a4;
  v635 = *(a4 + 8);
  v636 = *(a4 + 16);
  if (v634 == v636)
  {
    v638 = v635 == *(a4 + 24);
    v639 = v634;

    if (v638)
    {
LABEL_1041:
      v719 = a7;
      if (a7[1])
      {
        v720 = 0;
        v721 = 0;
        v633 = 0;
        v309 = 0xAAAAAAAAAAAAAAABLL;
        v722 = 0;
        v433 = 0x7FFFFFFFFFFFFFF0;
        do
        {
          if (3 * (v633 / 3) == v633)
          {
            v723 = *v719 + v720;
            __src_12a = v640;
            v910 = v722;
            v972 = __invert_f4(*v723);
            v724 = vzip1q_s32(v972.columns[0], v972.columns[2]);
            v972.columns[0] = vzip2q_s32(v972.columns[0], v972.columns[2]);
            v972.columns[2] = vzip1q_s32(v972.columns[1], v972.columns[3]);
            v972.columns[1] = vzip2q_s32(v972.columns[1], v972.columns[3]);
            v972.columns[0] = vaddq_f32(vzip2q_s32(v972.columns[0], v972.columns[1]), vaddq_f32(vzip1q_s32(v972.columns[0], v972.columns[1]), vmlaq_f32(vmulq_f32(vzip1q_s32(v724, v972.columns[2]), 0), 0, vzip2q_s32(v724, v972.columns[2]))));
            v972.columns[1] = vmulq_f32(v972.columns[0], v972.columns[0]);
            v972.columns[0] = vmulq_n_f32(v972.columns[0], 1.0 / sqrtf(v972.columns[1].f32[2] + vaddv_f32(*v972.columns[1].f32)));
            v972.columns[1].i64[0] = 0x3F0000003F000000;
            v972.columns[1].i64[1] = 0x3F0000003F000000;
            v900 = vmlaq_f32(*(v723 + 48), v972.columns[1], v972.columns[0]);
            v903 = *(v723 + 48);
            v972.columns[0] = v903;
            v972.columns[0].i32[3] = v910;
            v972.columns[1] = v900;
            v972.columns[1].i32[3] = __src_12a;
            __src_12 = v910;
            v907 = v972.columns[1];
            v972.columns[0] = vsubq_f32(v972.columns[1], v972.columns[0]);
            v972.columns[1] = vmulq_f32(v972.columns[0], v972.columns[0]);
            v725 = sqrtf(v972.columns[1].f32[2] + vaddv_f32(*v972.columns[1].f32));
            v726 = vmulq_f32(v972.columns[0], xmmword_2623A7700);
            v727 = vaddv_f32(*v726.f32);
            if (v725 < 0.000001)
            {
              v725 = 0.000001;
            }

            v728 = (v726.f32[2] + v727) / v725;
            if (v728 <= 1.0)
            {
              v729 = (v726.f32[2] + v727) / v725;
            }

            else
            {
              v729 = 1.0;
            }

            if (v728 >= -1.0)
            {
              v730 = v729;
            }

            else
            {
              v730 = -1.0;
            }

            v731 = fabsf(acosf(v730));
            if (v731 > 2.5307 || v731 < 0.61087)
            {
              v719 = a7;
            }

            else
            {
              *&v732 = v903.i64[0];
              *(&v732 + 1) = v900.i64[0];
              v733 = v721 >> 4;
              if (((v721 >> 4) + 1) >> 60)
              {
                sub_2621CBEB0();
              }

              if (v721 >> 4 != -1)
              {
                sub_2621CBF10((v721 >> 4) + 1);
              }

              *(16 * v733) = v732;
              memcpy(0, 0, v721);
              v719 = a7;
              v721 = 16 * v733 + 16;
            }

            v722 = __src_12;
            v640 = v907.i32[3];
          }

          ++v633;
          v720 += 64;
        }

        while (v633 < v719[1]);
      }

      do
      {
        v952 = 0;
        v951 = 0;
        v953 = 0;
        v949 = 0;
        v948 = 0;
        v950 = 0;
        v963 = 0;
        v962 = 0;
        v964 = 0;
        v734 = v939;
        v735 = v940;
        while (v734 != v735)
        {
          v737 = *v734;
          v736 = v734[1];
          v738 = sub_2621C5F34(v941, *v734, v736);
          LODWORD(v947) = v737;
          LODWORD(v946) = v736;
          v739 = v938[0];
          if (!v938[0])
          {
            goto LABEL_1104;
          }

          v740 = v738;
          v741 = v938;
          v742 = v938[0];
          do
          {
            v743 = v742;
            v744 = v741;
            v745 = *(v742 + 32);
            if (v745 >= v737)
            {
              v741 = v742;
            }

            v742 = *(v742 + 8 * (v745 < v737));
          }

          while (v742);
          if (v741 == v938)
          {
            goto LABEL_1104;
          }

          if (v745 < v737)
          {
            v743 = v744;
          }

          if (*(v743 + 8) > v737)
          {
            goto LABEL_1104;
          }

          v746 = v938;
          do
          {
            v747 = v739;
            v748 = v746;
            v749 = *(v739 + 32);
            if (v749 >= v736)
            {
              v746 = v739;
            }

            v739 = *(v739 + 8 * (v749 < v736));
          }

          while (v739);
          if (v746 == v938)
          {
            goto LABEL_1104;
          }

          v750 = v749 >= v736 ? v747 : v748;
          if (*(v750 + 8) > v736 || v738[15].i8[0] != 1 || (v738[11].i8[0] & 1) != 0)
          {
            goto LABEL_1104;
          }

          v751 = fabsf(sub_2621C92AC(v738 + 3, v738 + 7, 0));
          if (v751 > 110.0 || v751 < 70.0)
          {
            goto LABEL_1104;
          }

          v753 = v740[16];
          v754 = v740[4];
          v965[0] = v740[3];
          v965[1] = v753;
          *&v965[2] = xmmword_2623A7610;
          v957[0] = v753;
          v957[1] = v754;
          *&v957[2] = xmmword_2623A7610;
          v433 &= 0xFFFFFFFFFFFFFF00;
          v755 = v951;
          v756 = (v952 - v951) >> 5;
          v757 = sub_2621C96CC(v433, 0, v965, v951, v756);
          if (!v757)
          {
            sub_2621C7DA8(&v951, v965);
            sub_2621C98A4(&v948, &v740[5] + 1);
            v755 = v951;
            v756 = (v952 - v951) >> 5;
          }

          v309 &= 0xFFFFFFFFFFFFFF00;
          if (sub_2621C96CC(v309, 0, v957, v755, v756))
          {
            if (v757)
            {
              v758 = 0;
              goto LABEL_1095;
            }
          }

          else
          {
            sub_2621C7DA8(&v951, v957);
            sub_2621C98A4(&v948, &v740[5] + 1);
          }

          sub_2621C7CD0(&v962, &v947);
          v755 = v951;
          v756 = (v952 - v951) >> 5;
          v758 = 1;
LABEL_1095:
          v759 = v740[16];
          v760 = v740[8];
          *&v969[0] = v740[7];
          *(&v969[0] + 1) = v759;
          v969[1] = xmmword_2623A7610;
          *&__p = v759;
          *(&__p + 1) = v760;
          v955 = xmmword_2623A7610;
          v633 &= 0xFFFFFFFFFFFFFF00;
          v761 = sub_2621C96CC(v633, 0, v969, v755, v756);
          if (!v761)
          {
            sub_2621C7DA8(&v951, v969);
            sub_2621C98A4(&v948, &v740[9] + 1);
            v755 = v951;
            v756 = (v952 - v951) >> 5;
          }

          v907.i64[0] &= 0xFFFFFFFFFFFFFF00;
          v762 = sub_2621C96CC(v907.i64[0], 0, &__p, v755, v756);
          if (!v762)
          {
            sub_2621C7DA8(&v951, &__p);
            sub_2621C98A4(&v948, &v740[9] + 1);
LABEL_1101:
            sub_2621C7CD0(&v962, &v946);
            v763 = !v762;
            goto LABEL_1102;
          }

          if (!v761)
          {
            goto LABEL_1101;
          }

          v763 = 0;
LABEL_1102:
          if (((v758 | !v761) & 1) != 0 || v763)
          {
            break;
          }

LABEL_1104:
          v734 += 2;
        }

        memset(v965, 0, 24);
        v764 = v962;
        sub_2621C8B60(v965, v962, v963, (v963 - v962) >> 2);
        sub_2621C7F9C(v957, v965);
        if (v965[0])
        {
          operator delete(v965[0]);
        }

        v766 = v957[0];
        v767 = v957[1];
        v768 = v957[0];
        for (n = v957[0] != v957[1]; v768 != v767; ++v768)
        {
          sub_2621C52A8(v928, *v768);
        }

        if (v766)
        {
          operator delete(v766);
        }

        v770 = v951;
        if (v952 != v951)
        {
          v771 = v948;
          if (((v952 - v951) >> 5) <= 1)
          {
            v772 = 1;
          }

          else
          {
            v772 = (v952 - v951) >> 5;
          }

          v773 = (v951 + 8);
          do
          {
            v765 = *v773;
            v774 = vsub_f32(v773[-1], *v773);
            if (sqrtf(vaddv_f32(vmul_f32(v774, v774))) >= 0.03)
            {
              v775 = sub_2621C99A4(v928, v773 - 1, 0.1);
              v776 = sub_2621C99A4(v928, v773, 0.1);
              if (v775 != v776)
              {
                sub_2621C9CAC(v965, v928, v775, v776, *v771, v773[-1], *v773);
                n = 1;
              }
            }

            ++v771;
            v773 += 4;
            --v772;
          }

          while (v772);
        }

        if (v764)
        {
          operator delete(v764);
        }

        if (v948)
        {
          operator delete(v948);
        }

        if (v770)
        {
          operator delete(v770);
        }
      }

      while (n);
      v777 = v934;
      if (v934 == v935)
      {
        v789 = v936;
      }

      else
      {
        v778 = v933[0];
        v779 = v928[0];
        v780 = v934;
        do
        {
          v781 = v780[4].i32[0];
          if (!v778)
          {
            goto LABEL_1138;
          }

          v782 = v933;
          v783 = v778;
          do
          {
            v784 = v783;
            v785 = v782;
            v786 = *(v783 + 32);
            if (v786 >= v781)
            {
              v782 = v783;
            }

            v783 = *(v783 + 8 * (v786 < v781));
          }

          while (v783);
          if (v782 == v933)
          {
            goto LABEL_1138;
          }

          if (v786 < v781)
          {
            v784 = v785;
          }

          if (*(v784 + 8) <= v781)
          {
            v787 = v782[7] > 1uLL;
          }

          else
          {
LABEL_1138:
            v787 = 0;
          }

          v788 = v780[12].i8[0] | v787;
          v780[12].i8[0] = v788 & 1;
          v789 = v936;
          if ((v788 & 1) == 0 && v936)
          {
            v790 = v936;
            while (1)
            {
              if (v790[2].i32[0] != v781 && v790[2].i32[1] != v781)
              {
                v792 = *(*&v779 + 8 * v781);
                v793 = v790[3];
                v794 = v790[4];
                v795 = vsub_f32(v794, v793);
                v796 = vaddv_f32(vmul_f32(vsub_f32(v792, v793), v795));
                v797 = vaddv_f32(vmul_f32(v795, v795));
                if (v797 < 0.000001)
                {
                  v797 = 0.000001;
                }

                v798 = vmla_n_f32(v793, v795, v796 / v797);
                if (vaddv_f32(vmul_f32(vsub_f32(v798, v793), vsub_f32(v798, v794))) <= 0.0)
                {
                  v799 = vsub_f32(v792, v798);
                  if (sqrtf(vaddv_f32(vmul_f32(v799, v799))) < 0.15)
                  {
                    break;
                  }
                }
              }

              v790 = *v790;
              if (!v790)
              {
                goto LABEL_1154;
              }
            }

            v780[12].i8[0] = 1;
          }

LABEL_1154:
          v800 = v780[1];
          if (v800)
          {
            do
            {
              v801 = v800;
              v800 = *v800;
            }

            while (v800);
          }

          else
          {
            do
            {
              v801 = v780[2];
              v85 = *v801 == v780;
              v780 = v801;
            }

            while (!v85);
          }

          v780 = v801;
        }

        while (v801 != v935);
      }

      if (v789)
      {
        v802 = v789[2].i32[1];
        sub_2621C7E7C(1uLL);
      }

      v944 = 0;
      v943 = 0;
      v945 = 0;
      if (v777 != v935)
      {
        v803 = 0;
        v916 = 0;
        v804 = -1;
        do
        {
          v908 = v803;
          if ((v777[12].i8[0] & 1) == 0)
          {
            v805 = (v803 - v916) >> 3;
            v806 = v805 + 1;
            if ((v805 + 1) >> 61)
            {
              sub_2621CBEB0();
            }

            if (-v916 >> 2 > v806)
            {
              v806 = -v916 >> 2;
            }

            if (-v916 >= 0x7FFFFFFFFFFFFFF8)
            {
              v807 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v807 = v806;
            }

            if (v807)
            {
              if (!(v807 >> 61))
              {
                operator new();
              }

              sub_2621C6A34();
            }

            v808 = (v803 - v916) >> 3;
            v809 = (8 * v805);
            v810 = 8 * v805 - 8 * v808;
            *v809 = v777 + 4;
            v908 = (v809 + 1);
            memcpy(&v809[-v808], v916, v803 - v916);
            if (v916)
            {
              operator delete(v916);
            }

            v916 = v810;
          }

          v811 = v777[1];
          if (v811)
          {
            do
            {
              v812 = v811;
              v811 = *v811;
            }

            while (v811);
          }

          else
          {
            do
            {
              v812 = v777[2];
              v85 = *v812 == v777;
              v777 = v812;
            }

            while (!v85);
          }

          v777 = v812;
          v803 = v908;
        }

        while (v812 != v935);
        v813 = &qword_2623A8000;
        v814 = &qword_2623A8000;
        v815 = v916;
        if (v916 != v908)
        {
          v912 = v916;
          do
          {
            v816 = v936;
            if (v936)
            {
              do
              {
                v817 = **v912;
                v818 = v816[2].i32[0];
                v904 = v816;
                if (v817 == v818)
                {
                  v819 = v928[0];
                  v820 = (*v928 + 8 * v817);
                  v818 = v816[2].i32[1];
                }

                else
                {
                  if (v817 != v816[2].i32[1])
                  {
                    goto LABEL_1218;
                  }

                  v819 = v928[0];
                  v820 = (*v928 + 8 * v817);
                }

                if (v815 != v803)
                {
                  v821 = *v820;
                  v822 = *(*&v819 + 8 * v818);
                  v823 = v815;
                  while (1)
                  {
                    v824 = v936;
                    if (**v823 > **v912 && v936 != 0)
                    {
                      break;
                    }

LABEL_1217:
                    ++v823;
                    v803 = v908;
                    if (v823 == v908)
                    {
                      goto LABEL_1218;
                    }
                  }

                  while (2)
                  {
                    v826 = **v823;
                    v827 = v824[2].i32[0];
                    if (v826 == v827)
                    {
                      v828 = v928[0];
                      v829 = (*v928 + 8 * v826);
                      v827 = v824[2].i32[1];
                      goto LABEL_1202;
                    }

                    if (v826 == v824[2].i32[1])
                    {
                      v828 = v928[0];
                      v829 = (*v928 + 8 * v826);
LABEL_1202:
                      v830 = *v829;
                      v831 = *(*&v828 + 8 * v827);
                      v965[0] = v821;
                      v965[1] = v822;
                      v765.i32[1] = 2;
                      *&v965[2] = xmmword_2623A7610;
                      v957[0] = v821;
                      v957[1] = v830;
                      *&v957[2] = xmmword_2623A7610;
                      *&v969[0] = v830;
                      *(&v969[0] + 1) = v831;
                      v969[1] = xmmword_2623A7610;
                      v832 = vsub_f32(v821, v830);
                      v833 = sqrtf(vaddv_f32(vmul_f32(v832, v832)));
                      if (v833 >= 0.4 && v833 <= 1.2)
                      {
                        v834 = sub_2621C92AC(v965, v957, 0);
                        v835 = sub_2621C92AC(v969, v957, 0);
                        v765.f32[0] = fabsf(v834);
                        v836 = fabsf(v834 + -180.0) > 25.0;
                        if (fabsf(v834 + -90.0) <= 25.0)
                        {
                          v836 = 0;
                        }

                        if (v765.f32[0] <= 25.0)
                        {
                          v836 = 0;
                        }

                        v837 = fabsf(v835) > 25.0 && fabsf(v835 + -90.0) > 25.0 && fabsf(v835 + -180.0) > 25.0;
                        if (!v836 && !v837)
                        {
                          v838 = sub_2621C9454(v957, 0, 0);
                          v839 = sub_2621C9454(v957, v943, (v944 - v943) >> 5);
                          v804 &= 0xFFFFFF00;
                          LODWORD(v777) = v777 & 0xFFFFFF00;
                          v840.i64[0] = v821;
                          v841.i64[0] = v830;
                          if ((v839 | v838 | sub_2621C90DC(0, 0, v804, 0, v777, 0, 0, v840, v841, v842)))
                          {
                            v815 = v916;
                          }

                          else
                          {
                            __p = *v957;
                            v955 = *&v957[2];
                            v815 = v916;
                            sub_2621C7DA8(&v943, &__p);
                          }
                        }
                      }
                    }

                    v824 = *v824;
                    if (!v824)
                    {
                      goto LABEL_1217;
                    }

                    continue;
                  }
                }

LABEL_1218:
                v816 = *v904;
              }

              while (*v904);
            }

            ++v912;
          }

          while (v912 != v803);
          v813 = &qword_2623A8000;
          v814 = &qword_2623A8000;
        }

        if (v815 != v803)
        {
          v843 = *(v813 + 213);
          v844 = *(v814 + 211);
          v845 = v815;
          v909 = v803;
          v893 = v844;
          while (1)
          {
            v846 = v936;
            if (v936)
            {
              break;
            }

LABEL_1262:
            if (++v845 == v909)
            {
              goto LABEL_1263;
            }
          }

          v847 = 0;
          v897 = v845;
          while (1)
          {
            v848 = v847;
            v849 = **v845;
            v850 = v846[2].i32[0];
            if (v849 == v850)
            {
              break;
            }

            if (v849 == v846[2].i32[1])
            {
              v851 = v928[0];
              v852 = (*v928 + 8 * v849);
LABEL_1229:
              v853 = v936;
              if (v936)
              {
                v854 = 0;
                v855 = 0;
                v856 = 0;
                v857 = *v852;
                v858 = *(*&v851 + 8 * v850);
                v859 = vsub_f32(v858, *v852);
                v765.f32[0] = -*&v859.i32[1];
                v860 = vzip1_s32(v765, v859);
                do
                {
                  if (v848 != v856)
                  {
                    v861 = *(*v928 + 8 * v853[2].i32[0]);
                    v862 = *(*v928 + 8 * v853[2].i32[1]);
                    v863 = vsub_f32(v862, v861);
                    v765 = vmul_f32(v863, v860);
                    if (vaddv_f32(v765) != 0.0)
                    {
                      v864 = vmul_f32(vsub_f32(v857, v861), v860);
                      v865 = vmla_n_f32(v861, v863, vdiv_f32(vadd_f32(v864, vdup_lane_s32(v864, 1)), vadd_f32(v765, vdup_lane_s32(v765, 1))).f32[0]);
                      v866 = vaddv_f32(vmul_f32(vsub_f32(v865, v861), v863));
                      v867 = vaddv_f32(vmul_f32(v863, v863));
                      if (v867 < 0.000001)
                      {
                        v867 = 0.000001;
                      }

                      v765 = vmla_n_f32(v861, v863, v866 / v867);
                      if (vaddv_f32(vmul_f32(vsub_f32(v765, v861), vsub_f32(v765, v862))) <= 0.02)
                      {
                        v868 = vsub_f32(v865, v765);
                        if (sqrtf(vaddv_f32(vmul_f32(v868, v868))) < 0.15)
                        {
                          v869 = v854 - v855;
                          v870 = 0xAAAAAAAAAAAAAAABLL * ((v854 - v855) >> 4) + 1;
                          if (v870 > 0x555555555555555)
                          {
                            sub_2621CBEB0();
                          }

                          if (0x5555555555555556 * (-v855 >> 4) > v870)
                          {
                            v870 = 0x5555555555555556 * (-v855 >> 4);
                          }

                          if (0xAAAAAAAAAAAAAAABLL * (-v855 >> 4) >= 0x2AAAAAAAAAAAAAALL)
                          {
                            v871 = 0x555555555555555;
                          }

                          else
                          {
                            v871 = v870;
                          }

                          if (v871)
                          {
                            if (v871 <= 0x555555555555555)
                            {
                              operator new();
                            }

                            sub_2621C6A34();
                          }

                          v872 = v858;
                          v873 = 16 * ((v854 - v855) >> 4);
                          *v873 = v865;
                          *(v873 + 8) = v861;
                          *(v873 + 16) = v862;
                          *(v873 + 24) = xmmword_2623A7610;
                          *(v873 + 40) = v856;
                          v854 = (v873 + 48);
                          v874 = (v873 + 48 * (v869 / -48));
                          memcpy(v874, v855, v869);
                          if (v855)
                          {
                            operator delete(v855);
                          }

                          v855 = v874;
                          v815 = v916;
                          v858 = v872;
                          v844 = v893;
                        }
                      }
                    }
                  }

                  ++v856;
                  v853 = *v853;
                }

                while (v853);
                if (v855 != v854)
                {
                  v875 = vsub_f32(v857, v858);
                  v876 = v855;
                  do
                  {
                    v965[0] = *v876;
                    v877 = v965[0];
                    v965[1] = v857;
                    *&v965[2] = xmmword_2623A7610;
                    v878 = vsub_f32(v965[0], v857);
                    v765 = vmul_f32(v878, v875);
                    if (vaddv_f32(v765) > 0.0)
                    {
                      v879 = sqrtf(vaddv_f32(vmul_f32(v878, v878)));
                      if (v879 >= v843 && v879 <= v844 && fabsf(sub_2621C92AC(v876 + 1, v965, 0) + -90.0) <= 25.0)
                      {
                        v880 = sub_2621C9454(v965, 0, 0);
                        v881 = sub_2621C9454(v965, v943, (v944 - v943) >> 5);
                        v882.i64[0] = v877;
                        v883.i64[0] = v857;
                        v885 = v881 | v880 | sub_2621C90DC(0, 0, v848, 1u, v876[5].i32[0], 1u, 0, v882, v883, v884);
                        v815 = v916;
                        if ((v885 & 1) == 0)
                        {
                          *v957 = *v965;
                          *&v957[2] = *&v965[2];
                          sub_2621C7DA8(&v943, v957);
                        }
                      }
                    }

                    v876 += 6;
                  }

                  while (v876 != v854);
                }

                v845 = v897;
                if (v855)
                {
                  operator delete(v855);
                }
              }
            }

            v847 = v848 + 1;
            v846 = *v846;
            if (!v846)
            {
              goto LABEL_1262;
            }
          }

          v851 = v928[0];
          v852 = (*v928 + 8 * v849);
          v850 = v846[2].i32[1];
          goto LABEL_1229;
        }

LABEL_1263:
        if (v815)
        {
          operator delete(v815);
        }
      }

      memset(v965, 0, 24);
      v886 = v937;
      if (v937 != v938)
      {
        do
        {
          sub_2621C7DA8(v965, &v886[5]);
          v887 = v886[1];
          if (v887)
          {
            do
            {
              v888 = v887;
              v887 = *v887;
            }

            while (v887);
          }

          else
          {
            do
            {
              v888 = v886[2];
              v85 = *v888 == v886;
              v886 = v888;
            }

            while (!v85);
          }

          v886 = v888;
        }

        while (v888 != v938);
      }

      operator new[]();
    }
  }

  else
  {
    v637 = v634;
  }

  v641 = *a4;
  v642 = *(a4 + 8);
  v643 = *(a4 + 16);
  v644 = *(a4 + 24);
  *(a1 + 776) = *(a1 + 768);
  v645 = v641;
  v646 = v643;
  v647 = v645;
  v648 = v646;
  v649 = v647;
  v650 = v648;
  v651 = v649;
  v652 = v650;
  v653 = v651;
  v654 = v652;

  v655 = (a1 + 768);
  v907.i64[0] = v653;
  v906 = v654;
  while (v907.i64[0] != v906 || v644 != v642)
  {
    v657 = objc_msgSend_objectAtIndex_(v907.i64[0], v656, v642);
    v660 = objc_msgSend_boxesDict(v657, v658, v659);
    v662 = objc_msgSend_objectForKey_(v660, v661, @"rawdetection");

    if (v662)
    {
      v967 = 0u;
      v968 = 0u;
      v966 = 0u;
      memset(v965, 0, sizeof(v965));
      sub_262211250(v965, v662);
      v958 = *&v965[8];
      v959 = v966;
      v960 = v967;
      v961 = v968;
      *v957 = *v965;
      *&v957[2] = *&v965[2];
      *&v957[4] = *&v965[4];
      *&v957[6] = *&v965[6];
    }

    else
    {
      v960 = 0u;
      v961 = 0u;
      v958 = 0u;
      v959 = 0u;
      memset(v957, 0, sizeof(v957));
    }

    v663 = *(a1 + 776);
    v664 = *(a1 + 784);
    if (v663 >= v664)
    {
      v666 = *v655;
      v667 = v663 - *v655;
      v668 = v667 >> 7;
      v669 = (v667 >> 7) + 1;
      if (v669 >> 57)
      {
        sub_2621CBEB0();
      }

      v670 = v664 - v666;
      if (v670 >> 6 > v669)
      {
        v669 = v670 >> 6;
      }

      if (v670 >= 0x7FFFFFFFFFFFFF80)
      {
        v671 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v671 = v669;
      }

      if (v671)
      {
        if (!(v671 >> 57))
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v672 = v959;
      v673 = (v668 << 7);
      v673[4] = v958;
      v673[5] = v672;
      v674 = v961;
      v673[6] = v960;
      v673[7] = v674;
      v675 = *&v957[2];
      *v673 = *v957;
      v673[1] = v675;
      v676 = *&v957[6];
      v665 = (v668 << 7) + 128;
      v673[2] = *&v957[4];
      v673[3] = v676;
      memcpy(0, v666, v667);
      *(a1 + 768) = 0;
      *(a1 + 776) = v665;
      *(a1 + 784) = 0;
      if (v666)
      {
        operator delete(v666);
      }
    }

    else
    {
      *(v663 + 4) = v958;
      *(v663 + 5) = v959;
      *(v663 + 6) = v960;
      *(v663 + 7) = v961;
      *v663 = *v957;
      *(v663 + 1) = *&v957[2];
      *(v663 + 2) = *&v957[4];
      *(v663 + 3) = *&v957[6];
      v665 = (v663 + 128);
    }

    *(a1 + 776) = v665;
    ++v642;
  }

  v677 = v907.i64[0];

  v678 = v677;
  v679 = v678;

  v680 = v934;
  v889 = v679;
  if (v934 == v935)
  {
    memset(v969, 0, 24);
  }

  else
  {
    v681 = v933[0];
    v682 = v928[0];
    v683 = v934;
    do
    {
      v684 = v683[4].i32[0];
      if (!v681)
      {
        goto LABEL_980;
      }

      v685 = v933;
      v686 = v681;
      do
      {
        v687 = v686;
        v688 = v685;
        v689 = *(v686 + 32);
        if (v689 >= v684)
        {
          v685 = v686;
        }

        v686 = *(v686 + 8 * (v689 < v684));
      }

      while (v686);
      if (v685 == v933)
      {
        goto LABEL_980;
      }

      if (v689 < v684)
      {
        v687 = v688;
      }

      if (*(v687 + 8) <= v684)
      {
        v690 = v685[7] > 1uLL;
      }

      else
      {
LABEL_980:
        v690 = 0;
      }

      v691 = v683[12].i8[0] | v690;
      v683[12].i8[0] = v691 & 1;
      if ((v691 & 1) == 0)
      {
        v692 = v936;
        if (v936)
        {
          while (1)
          {
            v693 = v692[2].i32[1];
            v694 = v692[2].i32[0];
            if (v684 != v694 && v684 != v693)
            {
              v696 = *(*&v682 + 8 * v694);
              v697 = *(*&v682 + 8 * v693);
              v698 = *(*&v682 + 8 * v684);
              v699 = vsub_f32(v697, v696);
              v700 = vaddv_f32(vmul_f32(vsub_f32(v698, v696), v699));
              v701 = vaddv_f32(vmul_f32(v699, v699));
              if (v701 < 0.000001)
              {
                v701 = 0.000001;
              }

              v702 = vmla_n_f32(v696, v699, v700 / v701);
              if (vaddv_f32(vmul_f32(vsub_f32(v702, v696), vsub_f32(v702, v697))) <= 0.0)
              {
                v703 = vsub_f32(v698, v702);
                if (sqrtf(vaddv_f32(vmul_f32(v703, v703))) < 0.15)
                {
                  break;
                }
              }
            }

            v692 = *v692;
            if (!v692)
            {
              goto LABEL_995;
            }
          }

          v683[12].i8[0] = 1;
        }
      }

LABEL_995:
      v704 = v683[1];
      if (v704)
      {
        do
        {
          v705 = v704;
          v704 = *v704;
        }

        while (v704);
      }

      else
      {
        do
        {
          v705 = v683[2];
          v85 = *v705 == v683;
          v683 = v705;
        }

        while (!v85);
      }

      v683 = v705;
    }

    while (v705 != v935);
    memset(v969, 0, 24);
    do
    {
      if ((v680[12].i8[0] & 1) == 0)
      {
        sub_2621C7CD0(v969, &v680[4]);
      }

      v706 = v680[1];
      if (v706)
      {
        do
        {
          v707 = v706;
          v706 = *v706;
        }

        while (v706);
      }

      else
      {
        do
        {
          v707 = v680[2];
          v85 = *v707 == v680;
          v680 = v707;
        }

        while (!v85);
      }

      v680 = v707;
    }

    while (v707 != v935);
    v899 = *(&v969[0] + 1);
    v708 = *&v969[0];
    if (*&v969[0] != *(&v969[0] + 1))
    {
      do
      {
        v709 = v936;
        v902 = v708;
        if (v936)
        {
          v710 = *v708;
          do
          {
            v711 = v709[2].i32[1];
            if (v710 == v709[2].i32[0] || (v85 = v710 == v711, v711 = v709[2].i32[0], v85))
            {
              v951 = *(*v928 + 8 * v710);
              __srcd = vsub_f32(v951, *(*v928 + 8 * v711));
              v948 = __srcd;
              sub_2622812F8(v965, v655, &v951, &v948, v928, v710);
              if (LOBYTE(v965[2]) == 1 && !sub_26228165C(v710, v965[3], v928))
              {
                sub_262282D18(1uLL);
              }

              LODWORD(v712) = vdup_lane_s32(__srcd, 1).u32[0];
              *(&v712 + 1) = -*&__srcd;
              __srce = v712;
              v962 = v712;
              sub_2622812F8(v957, v655, &v951, &v962, v928, v710);
              LOBYTE(v965[2]) = v957[2];
              *v965 = *v957;
              v965[3] = v957[3];
              if ((v957[2] & 1) != 0 && !sub_26228165C(v710, v957[3], v928))
              {
                sub_262282D18(1uLL);
              }

              v962 = vneg_f32(__srce);
              sub_2622812F8(v957, v655, &v951, &v962, v928, v710);
              LOBYTE(v965[2]) = v957[2];
              *v965 = *v957;
              v965[3] = v957[3];
              if ((v957[2] & 1) != 0 && !sub_26228165C(v710, v957[3], v928))
              {
                sub_262282D18(1uLL);
              }
            }

            v709 = *v709;
          }

          while (v709);
        }

        v708 = v902 + 1;
      }

      while (v902 + 1 != v899);
    }
  }

  if (v936)
  {
    v713 = v936[2].i32[1];
    sub_2621CBF10(1uLL);
  }

  v433 = 0;
  __p = 0uLL;
  *&v955 = 0;
  LOBYTE(v957[0]) = 0;
  sub_26220F1D4(v965, 0);
  if (v965[0])
  {
    operator delete(v965[0]);
  }

  v309 = v679;
  if (*&v969[0])
  {
    *(&v969[0] + 1) = *&v969[0];
    operator delete(*&v969[0]);
  }

  v633 = *(&__p + 1);
  v714 = __p;
  if (__p != *(&__p + 1))
  {
    v715 = __p;
    do
    {
      v716 = sub_2621C99A4(v928, v715, 0.1);
      v717 = v715 + 1;
      v718 = sub_2621C99A4(v928, v717, 0.1);
      sub_2621C9CAC(v965, v928, v716, v718, 0, v717[-1], *v717);
      v715 = v717 + 1;
    }

    while (v715 != v633);
  }

  if (v714)
  {
    operator delete(v714);
  }

  goto LABEL_1041;
}