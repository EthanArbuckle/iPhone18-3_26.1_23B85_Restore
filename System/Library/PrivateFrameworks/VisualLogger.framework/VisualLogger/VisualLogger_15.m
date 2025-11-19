void sub_27124841C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 20)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124874C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F140[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712487D0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F140[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124894C(_Unwind_Exception *a1)
{
  sub_27125B3C4(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124896C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CBF0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 21);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A2E80(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F140[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F780[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271248AEC(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271248B24(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271248C90(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 21)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271248FC0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F160[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271249044(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F160[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712491C0(_Unwind_Exception *a1)
{
  sub_27125B788(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2712491E0(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CBD8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 22);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A3624(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F160[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F790[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271249360(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271249398(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271249504(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271249834(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F180[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712498B8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F180[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271249A34(_Unwind_Exception *a1)
{
  sub_27125BB4C(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271249A54(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CBC0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 23);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A3E18(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F180[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F7A0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271249BDC(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271249C14(uint64_t a1, int a2)
{
  if (a2 == 23)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271249D80(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 23)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124A0B0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F1A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124A134(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F1A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124A2B0(_Unwind_Exception *a1)
{
  sub_27125BEE8(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124A2D0(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CBA8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 24);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A5814(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F1A0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F7B0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124A450(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124A488(uint64_t a1, int a2)
{
  if (a2 == 24)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124A5F4(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 24)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124A924(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F1C0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124A9A8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F1C0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124AB24(_Unwind_Exception *a1)
{
  sub_27125C2AC(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124AB44(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB90, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 25);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_2712A6008(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F1C0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F7C0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124ACC4(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124ACFC(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124AE68(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 25)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124B198(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F1E0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124B21C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F1E0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124B398(_Unwind_Exception *a1)
{
  sub_27125C670(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124B3B8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB78, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 26);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271244900(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F1E0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F7D0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124B538(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124B570(uint64_t a1, int a2)
{
  if (a2 == 26)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124B6DC(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 26)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124BA0C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F200[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124BA90(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F200[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124BC0C(_Unwind_Exception *a1)
{
  sub_27125CA34(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124BC2C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB60, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 27);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A6EAC(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F200[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F7E0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124BDB4(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124BDEC(uint64_t a1, int a2)
{
  if (a2 == 27)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124BF58(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 27)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124C288(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F220[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124C30C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F220[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124C488(_Unwind_Exception *a1)
{
  sub_27125CDD0(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124C4A8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB48, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 28);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271245B78(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F220[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F7F0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124C628(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124C660(uint64_t a1, int a2)
{
  if (a2 == 28)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124C7CC(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 28)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124CAFC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F240[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124CB80(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F240[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124CCFC(_Unwind_Exception *a1)
{
  sub_27125D194(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124CD1C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB30, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 29);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_2712A6008(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F240[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F800[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124CE9C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124CED4(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124D040(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 29)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124D370(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F260[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124D3F4(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F260[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124D570(_Unwind_Exception *a1)
{
  sub_27125D558(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124D590(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB00, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 30);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271244900(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F260[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F810[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124D710(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124D748(uint64_t a1, int a2)
{
  if (a2 == 30)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124D8B4(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 30)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124DBE4(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F280[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124DC68(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F280[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124DDE4(_Unwind_Exception *a1)
{
  sub_27125D91C(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124DE04(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CAE8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 31);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A6EAC(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F280[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F820[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124DF8C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124DFC4(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124E130(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 31)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124E460(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F2A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124E4E4(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F2A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124E660(_Unwind_Exception *a1)
{
  sub_27125DCB8(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124E680(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CAD0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 32);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271245B78(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F2A0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F830[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124E800(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124E838(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124E9A4(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 32)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124ECD4(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F2C0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124ED58(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F2C0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124EED4(_Unwind_Exception *a1)
{
  sub_27125E07C(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124EEF4(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CAB8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 33);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_2712A6008(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F2C0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F840[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124F074(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124F0AC(uint64_t a1, int a2)
{
  if (a2 == 33)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124F218(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 33)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124F548(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F2E0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124F5CC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F2E0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124F748(_Unwind_Exception *a1)
{
  sub_27125E440(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124F768(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CAA0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 34);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271244900(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F2E0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F850[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124F8E8(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124F920(uint64_t a1, int a2)
{
  if (a2 == 34)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124FA8C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 34)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124FDBC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F300[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124FE40(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F300[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124FFBC(_Unwind_Exception *a1)
{
  sub_27125E804(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124FFDC(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CA88, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 35);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A6EAC(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F300[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F860[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271250164(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27125019C(uint64_t a1, int a2)
{
  if (a2 == 35)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271250308(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 35)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271250638(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F320[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712506BC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F320[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271250838(_Unwind_Exception *a1)
{
  sub_27125EBA0(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271250858(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CA70, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 36);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271245B78(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F320[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F870[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_2712509D8(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271250A10(uint64_t a1, int a2)
{
  if (a2 == 36)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271250B7C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 36)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271250EAC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F340[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271250F30(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F340[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712510AC(_Unwind_Exception *a1)
{
  sub_27125EF64(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2712510CC(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CA58, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 37);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_2712A6008(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F340[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F880[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27125124C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271251284(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2712513F0(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 37)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271251720(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F360[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712517A4(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F360[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271251920(_Unwind_Exception *a1)
{
  sub_27125F328(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271251940(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CA40, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 38);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271244900(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F360[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F890[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271251AC0(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271251AF8(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271251C64(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 38)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271251F94(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F380[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271252018(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F380[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271252194(_Unwind_Exception *a1)
{
  sub_27125F6EC(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2712521B4(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CA28, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 39);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A6EAC(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F380[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F8A0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27125233C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271252374(uint64_t a1, int a2)
{
  if (a2 == 39)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2712524E0(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 39)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271252810(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F3A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271252894(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F3A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271252A10(_Unwind_Exception *a1)
{
  sub_27125FA88(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271252A30(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C9F8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 40);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271245B78(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F3A0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F8B0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271252BB0(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271252BE8(uint64_t a1, int a2)
{
  if (a2 == 40)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271252D54(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 40)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t *sub_2712530AC()
{
  if ((atomic_load_explicit(&qword_280878150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878150))
  {
    sub_271253148();
  }

  if (byte_28087814F >= 0)
  {
    return &qword_280878138;
  }

  else
  {
    return qword_280878138;
  }
}

void sub_271253214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271253244(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray8u]", 30, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271253328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271253374(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
    (off_28812EEC0[v2])(&v4, a1);
  }

  *(a1 + 80) = -1;
  return a1;
}

void sub_2712533D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 48) = 0;
}

__n128 sub_271253404(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125341C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112D98;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  return sub_271253458(v2 + 40, a2 + 40);
}

uint64_t sub_271253458(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 28))
  {
    v7 = *(a2 + 24) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a2 + 32);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 24);
  }

  v19 = *(a2 + 8);
  v20 = v9;
  v21 = v8;
  if (HIDWORD(v9) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v10 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v19, v20, v21);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_39;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v10 += 16;
    }

    while (v10 != v11);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (HIDWORD(v9))
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (*(a1 + 28))
    {
      v13 = *(a1 + 24) == 0;
    }

    else
    {
      v13 = 1;
    }

    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    if (v13)
    {
      v15 = 0;
    }

    memptr = *(a1 + 8);
    v23 = v15;
    v24 = v14;
    if (HIDWORD(v15) * HIDWORD(v14) != -1)
    {
      goto LABEL_37;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_36:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v19, v20, v21, memptr, v23, v24);
LABEL_37:
        sub_271253768(&v19, &memptr);
        return a1;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_39;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_36;
    }

LABEL_39:
    abort();
  }

  return a1;
}

_DWORD *sub_271253768(_DWORD *result, char **a2)
{
  v2 = result[4];
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v17 = result[5];
    v18 = *(a2 + 5);
    v19 = result[2];
    if (v17 == v18 && v17 == v19)
    {
      v28 = (result[3] * v17);
      if (!v28)
      {
        return result;
      }

      v29 = *a2;
      v27 = *result;
      v26 = v29;
    }

    else
    {
      v21 = result[3];
      if (v19)
      {
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        return result;
      }

      v23 = *result;
      v24 = *a2;
      v25 = v21 - 1;
      if (v21 != 1)
      {
        do
        {
          memmove(v24, v23, v19);
          v23 += v17;
          v24 += v18;
          --v25;
        }

        while (v25);
      }

      v26 = v24;
      v27 = v23;
      v28 = v19;
    }

    return memmove(v26, v27, v28);
  }

  v5 = result[2];
  v6 = result[3];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *result;
    v10 = *a2;
    v11 = v6 - 1;
    if (v11)
    {
      v12 = *(a2 + 5);
      v13 = result[5];
      if (v8)
      {
        for (i = 0; i != v11; ++i)
        {
          v15 = v8;
          v16 = v9;
          result = v10;
          do
          {
            *result = *v16;
            v16 += v2;
            result = (result + v3);
            --v15;
          }

          while (v15);
          *result = *v16;
          v9 += v13;
          v10 += v12;
        }

        goto LABEL_18;
      }

      do
      {
        *v10 = *v9;
        v9 += v13;
        v10 += v12;
        --v11;
      }

      while (v11);
    }

    if (!v8)
    {
LABEL_19:
      *v10 = *v9;
      return result;
    }

    do
    {
LABEL_18:
      *v10 = *v9;
      v9 += v2;
      v10 += v3;
      --v8;
    }

    while (v8);
    goto LABEL_19;
  }

  return result;
}

uint64_t *sub_27125392C()
{
  if ((atomic_load_explicit(&qword_280878170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878170))
  {
    sub_2712539C8();
  }

  if (byte_28087816F >= 0)
  {
    return &qword_280878158;
  }

  else
  {
    return qword_280878158;
  }
}

void sub_271253A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271253AC4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray16u]", 31, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271253BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271253BF4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
    (off_28812EEE0[v2])(&v4, a1);
  }

  *(a1 + 80) = -1;
  return a1;
}

void sub_271253C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 48) = 0;
}

__n128 sub_271253C84(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271253C9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112818;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  return sub_271253CD8(v2 + 40, a2 + 40);
}

uint64_t sub_271253CD8(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 24);
  }

  v19 = *(a2 + 8);
  v20 = v9;
  v21 = (v7 >> 1) & 0x7FFFFFFF7FFFFFFFLL;
  if (HIDWORD(v9) * (v7 >> 33) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v10 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v19, v20, v21);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_39;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v10 += 16;
    }

    while (v10 != v11);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (HIDWORD(v9))
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 32);
    if (*(a1 + 28))
    {
      v14 = *(a1 + 24) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a1 + 24);
    if (v14)
    {
      v15 = 0;
    }

    memptr = *(a1 + 8);
    v23 = v15;
    v24 = (v13 >> 1) & 0x7FFFFFFF7FFFFFFFLL;
    if (HIDWORD(v15) * (v13 >> 33) != -1)
    {
      goto LABEL_37;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_36:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v19, v20, v21, memptr, v23, v24);
LABEL_37:
        sub_271254000(&v19, &memptr);
        return a1;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_39;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_36;
    }

LABEL_39:
    abort();
  }

  return a1;
}

unint64_t sub_271254000(unint64_t result, char **a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v22 = *(result + 20);
    v23 = *(a2 + 5);
    v24 = *(result + 8);
    if (v22 == v23 && v22 == v24)
    {
      v37 = *(result + 12) * v22;
      if (!v37)
      {
        return result;
      }

      v36 = 2 * v37;
      v38 = *a2;
      v35 = *result;
      v34 = v38;
    }

    else
    {
      v26 = *(result + 12);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return result;
      }

      v28 = *result;
      v29 = *a2;
      v30 = 2 * v24;
      v31 = v26 - 1;
      if (v26 != 1)
      {
        v32 = 2 * v22;
        v33 = 2 * v23;
        do
        {
          memmove(v29, v28, v30);
          v28 += v32;
          v29 += v33;
          --v31;
        }

        while (v31);
      }

      v34 = v29;
      v35 = v28;
      v36 = v30;
    }

    return memmove(v34, v35, v36);
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *result;
    v10 = *a2;
    v11 = 2 * v2;
    v12 = 2 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 5);
      v15 = *(result + 20);
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v9 += v15;
          v10 += 2 * v14;
          --v13;
        }

        while (v13);
        goto LABEL_38;
      }

      v16 = 0;
      v17 = 2 * v15;
      v18 = 2 * v14;
      do
      {
        v19 = v10;
        v20 = v9;
        v21 = v8;
        do
        {
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        result = *v20;
        *v19 = result;
        v9 = (v9 + v17);
        v10 += v18;
        ++v16;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_38:
      *v10 = *v9;
      return result;
    }

    do
    {
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 += v12;
      --v8;
    }

    while (v8);
    goto LABEL_38;
  }

  return result;
}

uint64_t *sub_2712541EC()
{
  if ((atomic_load_explicit(&qword_280878190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878190))
  {
    sub_271254288();
  }

  if (byte_28087818F >= 0)
  {
    return &qword_280878178;
  }

  else
  {
    return qword_280878178;
  }
}

void sub_271254354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271254384(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray16f]", 31, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271254468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712544B4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
    (off_28812EF00[v2])(&v4, a1);
  }

  *(a1 + 80) = -1;
  return a1;
}

__n128 sub_27125451C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271254534(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112298;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  return sub_271254570(v2 + 40, a2 + 40);
}

uint64_t sub_271254570(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr[0] = 0;
    v6 = malloc_type_posix_memalign(memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr[0];
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a2 + 24);
  if (v8)
  {
    v9 = 0;
  }

  memptr[0] = *(a2 + 8);
  memptr[1] = v9;
  memptr[2] = ((v7 >> 1) & 0x7FFFFFFF7FFFFFFFLL);
  if (HIDWORD(v9) * (v7 >> 33) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v10 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_17:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_18;
      }
    }

    else
    {
      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v10 += 16;
    }

    while (v10 != v11);
    if (byte_28087C430)
    {
      goto LABEL_17;
    }

LABEL_20:
    abort();
  }

LABEL_18:
  sub_271254754(a1, memptr);
  return a1;
}

void sub_271254734(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void sub_271254754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  if (*(a1 + 28))
  {
    v7 = *(a1 + 24) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 28);
  }

  v9 = v6 >> 33;
  if (v8 * (v6 >> 33) == -1)
  {
    v10 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a2 = v10;
        v2 = *(v10 + 8);
        v3 = *(v10 + 12);
        goto LABEL_20;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  if (v2 && v3)
  {
    v15 = v2 - 1;
    v16 = *a2;
    v17 = 2 * *(a2 + 16);
    v18 = 2 * (v6 >> 1);
    v19 = v3 - 1;
    if (v19)
    {
      v20 = *(a2 + 20);
      if (v15)
      {
        v21 = 0;
        v22 = 2 * v20;
        do
        {
          v23 = v5;
          v24 = v16;
          v25 = v15;
          do
          {
            *v23 = *v24;
            v24 = (v24 + v17);
            v23 = (v23 + v18);
            --v25;
          }

          while (v25);
          *v23 = *v24;
          v16 = (v16 + v22);
          v5 += v9;
          ++v21;
        }

        while (v21 != v19);
        goto LABEL_31;
      }

      do
      {
        *v5 = *v16;
        v16 += v20;
        v5 += v9;
        --v19;
      }

      while (v19);
    }

    if (!v15)
    {
LABEL_32:
      *v5 = *v16;
      return;
    }

    do
    {
LABEL_31:
      *v5 = *v16;
      v16 = (v16 + v17);
      v5 = (v5 + v18);
      --v15;
    }

    while (v15);
    goto LABEL_32;
  }
}

uint64_t *sub_271254988()
{
  if ((atomic_load_explicit(&qword_2808781B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808781B0))
  {
    sub_271254A24();
  }

  if (byte_2808781AF >= 0)
  {
    return &qword_280878198;
  }

  else
  {
    return qword_280878198;
  }
}

void sub_271254AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271254B20(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray32f]", 31, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271254C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271254C50(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
    (off_28812EF20[v2])(&v4, a1);
  }

  *(a1 + 80) = -1;
  return a1;
}

void sub_271254CB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 48) = 0;
}

__n128 sub_271254CE0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271254CF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112198;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  return sub_271254D34(v2 + 40, a2 + 40);
}

uint64_t sub_271254D34(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a2 + 28))
  {
    v8 = *(a2 + 24) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 24);
  }

  v19 = *(a2 + 8);
  v20 = v9;
  v21 = (v7 >> 2) & 0x3FFFFFFF3FFFFFFFLL;
  if (HIDWORD(v9) * (v7 >> 34) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v10 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v19, v20, v21);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_39;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v10 += 16;
    }

    while (v10 != v11);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (HIDWORD(v9))
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 32);
    if (*(a1 + 28))
    {
      v14 = *(a1 + 24) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a1 + 24);
    if (v14)
    {
      v15 = 0;
    }

    memptr = *(a1 + 8);
    v23 = v15;
    v24 = (v13 >> 2) & 0x3FFFFFFF3FFFFFFFLL;
    if (HIDWORD(v15) * (v13 >> 34) != -1)
    {
      goto LABEL_37;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_36:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v19, v20, v21, memptr, v23, v24);
LABEL_37:
        sub_27125505C(&v19, &memptr);
        return a1;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_39;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_36;
    }

LABEL_39:
    abort();
  }

  return a1;
}

float sub_27125505C(char **a1, char **a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v22 = *(a1 + 5);
    v23 = *(a2 + 5);
    v24 = *(a1 + 2);
    if (v22 == v23 && v22 == v24)
    {
      v38 = *(a1 + 3) * v22;
      if (!v38)
      {
        return result;
      }

      v36 = 4 * v38;
      v39 = *a2;
      v35 = *a1;
      v34 = v39;
    }

    else
    {
      v26 = *(a1 + 3);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return result;
      }

      v28 = *a1;
      v29 = *a2;
      v30 = 4 * v24;
      v31 = v26 - 1;
      if (v26 != 1)
      {
        v32 = 4 * v22;
        v33 = 4 * v23;
        do
        {
          memmove(v29, v28, v30);
          v28 += v32;
          v29 += v33;
          --v31;
        }

        while (v31);
      }

      v34 = v29;
      v35 = v28;
      v36 = v30;
    }

    memmove(v34, v35, v36);
    return result;
  }

  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *a1;
    v10 = *a2;
    v11 = 4 * v2;
    v12 = 4 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 5);
      v15 = *(a1 + 5);
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v9 += v15;
          v10 += 4 * v14;
          --v13;
        }

        while (v13);
        goto LABEL_38;
      }

      v16 = 0;
      v17 = 4 * v15;
      v18 = 4 * v14;
      do
      {
        v19 = v10;
        v20 = v9;
        v21 = v8;
        do
        {
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        *v19 = *v20;
        v9 = (v9 + v17);
        v10 += v18;
        ++v16;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_38:
      result = *v9;
      *v10 = *v9;
      return result;
    }

    do
    {
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 += v12;
      --v8;
    }

    while (v8);
    goto LABEL_38;
  }

  return result;
}

uint64_t *sub_271255248()
{
  if ((atomic_load_explicit(&qword_2808781D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808781D0))
  {
    sub_2712552E4();
  }

  if (byte_2808781CF >= 0)
  {
    return &qword_2808781B8;
  }

  else
  {
    return qword_2808781B8;
  }
}

void sub_2712553B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712553E0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two8u]", 29, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2712554C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271255510(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812EF40[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_271255570(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_2712555A0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_2712555B8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112118;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t sub_271255604(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    v18 = 0;
    v6 = malloc_type_posix_memalign(&v18, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = v18;
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 36);
  v9 = *(a2 + 44);
  if (*(a2 + 24))
  {
    v10 = *(a2 + 28) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 24);
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 32);
  }

  v18 = *(a2 + 8);
  v19 = v13;
  LODWORD(v20) = v14;
  *(&v20 + 4) = v8;
  HIDWORD(v20) = v9;
  if (v14 * v9 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v18, v19, v20);
        goto LABEL_28;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_30;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_30:
    abort();
  }

LABEL_28:
  sub_271255808(a1, &v18);
  return a1;
}

void sub_2712557E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void sub_271255808(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *(a2 + 12) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || *(a2 + 16) == 0)
  {
    return;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 36);
  v6 = *(a1 + 44);
  if (*(a1 + 24))
  {
    v7 = *(a1 + 28) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (*(a1 + 32))
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v37[0] = *(a1 + 8);
  v37[1] = v10;
  v38 = v11;
  v39 = v5;
  v40 = v6;
  if (v11 * v6 != -1)
  {
    if (v5 != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  v12 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_35;
    }

    v13 = qword_28087C408;
    v14 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v13 = qword_28087C408;
    v14 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_70;
    }
  }

  do
  {
    v16 = *v13;
    v15 = *(v13 + 8);
    v13 += 16;
    v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v13 != v14);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_70:
    abort();
  }

LABEL_35:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  a2 = v12;
  if (v5 != 1)
  {
LABEL_43:
    v41 = 0;
    if (*(a2 + 8) && *(a2 + 12))
    {
      if (*(a2 + 16))
      {
        sub_271255B88(&v41, a2, v37);
      }
    }

    return;
  }

LABEL_36:
  if (*(a2 + 20) != 1)
  {
    goto LABEL_43;
  }

  v17 = HIDWORD(v5);
  v18 = *(a2 + 24);
  v19 = *(a2 + 8);
  if (v18 != HIDWORD(v5))
  {
    v20 = *(a2 + 12);
LABEL_48:
    if (!v19)
    {
      return;
    }

    if (!v20)
    {
      return;
    }

    v23 = *(a2 + 16);
    if (!v23)
    {
      return;
    }

    v24 = v20 - 1;
    v25 = *a2;
    v26 = v23 - 1;
    if (v23 != 1)
    {
      v27 = *(a2 + 28);
      if (v20 == 1)
      {
        do
        {
          memmove(v4, v25, v19);
          v25 += v27;
          v4 += v6;
          --v26;
        }

        while (v26);
      }

      else
      {
        v28 = 0;
        v36 = v6;
        v35 = v23 - 1;
        v34 = *(a2 + 28);
        do
        {
          v29 = v24;
          v30 = v25;
          v31 = v4;
          do
          {
            memmove(v31, v30, v19);
            v30 += v18;
            v31 += v17;
            --v29;
          }

          while (v29);
          memmove(v31, v30, v19);
          v25 += v34;
          v4 += v36;
          ++v28;
        }

        while (v28 != v35);
      }
    }

    for (; v24; --v24)
    {
      memmove(v4, v25, v19);
      v25 += v18;
      v4 += v17;
    }

    goto LABEL_61;
  }

  v20 = *(a2 + 12);
  if (v19 != HIDWORD(v5))
  {
    goto LABEL_48;
  }

  v21 = *(a2 + 28);
  v19 = (v20 * v17);
  if (v21 == v6 && v21 == v19)
  {
    v22 = (*(a2 + 16) * v6);
    if (v22)
    {
      memmove(v4, *a2, v22);
    }

    return;
  }

  if (v17)
  {
    if (v20)
    {
      v32 = *(a2 + 16);
      if (v32)
      {
        v25 = *a2;
        v33 = v32 - 1;
        if (v32 != 1)
        {
          if (!v19)
          {
            return;
          }

          do
          {
            memmove(v4, v25, v19);
            v25 += v21;
            v4 += v6;
            --v33;
          }

          while (v33);
        }

        if (v19)
        {
LABEL_61:
          memmove(v4, v25, v19);
        }
      }
    }
  }
}

void sub_271255B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = *(a2 + 16);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v3 - 1;
    v9 = v4 - 1;
    v10 = *(a2 + 20);
    v11 = *(a2 + 24);
    v12 = *(a3 + 20);
    v13 = *(a3 + 24);
    v14 = *a2;
    v15 = *a3;
    v16 = v5 - 1;
    if (v16)
    {
      v17 = *(a3 + 28);
      v18 = *(a2 + 28);
      if (v9)
      {
        v19 = 0;
        if (!v8)
        {
          do
          {
            v27 = v9;
            v28 = v14;
            v29 = v15;
            do
            {
              *v29 = *v28;
              v28 += v11;
              v29 += v13;
              --v27;
            }

            while (v27);
            *v29 = *v28;
            v14 += v18;
            v15 += v17;
            ++v19;
          }

          while (v19 != v16);
LABEL_31:
          if (v8)
          {
            for (i = 0; i != v9; ++i)
            {
              v35 = v8;
              v36 = v14;
              v37 = v15;
              do
              {
                *v37 = *v36;
                v36 += v10;
                v37 += v12;
                --v35;
              }

              while (v35);
              *v37 = *v36;
              v14 += v11;
              v15 += v13;
            }

            goto LABEL_39;
          }

          do
          {
            *v15 = *v14;
            v14 += v11;
            v15 += v13;
            --v9;
          }

          while (v9);
LABEL_38:
          if (!v8)
          {
LABEL_40:
            *v15 = *v14;
            return;
          }

          do
          {
LABEL_39:
            *v15 = *v14;
            v14 += v10;
            v15 += v12;
            --v8;
          }

          while (v8);
          goto LABEL_40;
        }

        do
        {
          v20 = 0;
          v21 = v14;
          v22 = v15;
          do
          {
            v23 = v8;
            v24 = v21;
            v25 = v22;
            do
            {
              *v25 = *v24;
              v24 += v10;
              v25 += v12;
              --v23;
            }

            while (v23);
            *v25 = *v24;
            v21 += v11;
            v22 += v13;
            ++v20;
          }

          while (v20 != v9);
          v26 = v8;
          do
          {
            *v22 = *v21;
            v21 += v10;
            v22 += v12;
            --v26;
          }

          while (v26);
          *v22 = *v21;
          v14 += v18;
          v15 += v17;
          ++v19;
        }

        while (v19 != v16);
      }

      else if (v8)
      {
        for (j = 0; j != v16; ++j)
        {
          v31 = v8;
          v32 = v14;
          v33 = v15;
          do
          {
            *v33 = *v32;
            v32 += v10;
            v33 += v12;
            --v31;
          }

          while (v31);
          *v33 = *v32;
          v14 += v18;
          v15 += v17;
        }
      }

      else
      {
        do
        {
          *v15 = *v14;
          v14 += v18;
          v15 += v17;
          --v16;
        }

        while (v16);
      }
    }

    if (!v9)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }
}

uint64_t *sub_271255DA4()
{
  if ((atomic_load_explicit(&qword_2808781F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808781F0))
  {
    sub_271255E40();
  }

  if (byte_2808781EF >= 0)
  {
    return &qword_2808781D8;
  }

  else
  {
    return qword_2808781D8;
  }
}

void sub_271255F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271255F3C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two16u]", 30, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271256020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125606C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812EF60[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_2712560CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_2712560FC(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271256114(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112098;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t sub_271256160(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    v18 = 0;
    v6 = malloc_type_posix_memalign(&v18, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = v18;
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 44) >> 1;
  v9 = (*(a2 + 36) >> 1) & 0x7FFFFFFF7FFFFFFFLL;
  if (*(a2 + 24))
  {
    v10 = *(a2 + 28) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 24);
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 32);
  }

  v18 = *(a2 + 8);
  v19 = v13;
  LODWORD(v20) = v14;
  *(&v20 + 4) = v9;
  HIDWORD(v20) = v8;
  if (v14 * v8 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v18, v19, v20);
        goto LABEL_28;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_30;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_30:
    abort();
  }

LABEL_28:
  sub_271256370(a1, &v18);
  return a1;
}

void sub_271256350(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_271256370(uint64_t *result, _DWORD *a2)
{
  if (a2[2])
  {
    v2 = a2[3] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && a2[4] != 0)
  {
    v4 = *(result + 11) >> 1;
    v5 = (*(result + 36) >> 1) & 0x7FFFFFFF7FFFFFFFLL;
    if (*(result + 6))
    {
      v6 = *(result + 7) == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    if (*(result + 8))
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = result[3];
    }

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(result + 8);
    }

    v16 = result[1];
    v17 = v9;
    LODWORD(v18) = v10;
    *(&v18 + 4) = v5;
    HIDWORD(v18) = v4;
    if (v10 * v4 != -1)
    {
      goto LABEL_32;
    }

    v11 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_31:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v16, v17, v18);
        a2 = v11;
LABEL_32:
        v19[0] = a2;
        v19[1] = &v16;
        return sub_271256520(v19);
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v15 = *v12;
      v14 = *(v12 + 8);
      v12 += 16;
      v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_31;
    }

LABEL_34:
    abort();
  }

  return result;
}

uint64_t *sub_271256520(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 20);
  v4 = *(v2 + 20);
  if (v3 != 1 || v4 != 1)
  {
    v35 = 0;
    v7 = *(v1 + 8);
    v6 = *(v1 + 12);
    v8 = *(v1 + 16);
    if (v7)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v8 != 0)
    {
      v36 = 0;
      v37 = v7 - 1;
      v38 = v3 | (v4 << 32);
      v39 = v6 - 1;
      v40 = *(v1 + 24) | (*(v2 + 24) << 32);
      v41 = v8 - 1;
      v42 = *(v1 + 28) | (*(v2 + 28) << 32);
      v11 = *v1;
      v12 = *v2;
      v43 = 0;
      return sub_271256944(&v36, &v43, &v35, v11, v12);
    }

    return result;
  }

  v13 = *(v1 + 24);
  v14 = *(v1 + 8);
  if (v13 != *(v2 + 24) || v13 != v14)
  {
    v36 = *(v1 + 8);
    if (v14)
    {
      v16 = *(v1 + 12) == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && *(v1 + 16) != 0)
    {
      return sub_2712566FC(&v36, v1, v2);
    }

    return result;
  }

  v18 = *(v1 + 28);
  v19 = *(v2 + 28);
  v20 = *(v1 + 12);
  v21 = (v20 * v13);
  if (v18 == v19 && v18 == v21)
  {
    v34 = *(v1 + 16) * v18;
    if (!v34)
    {
      return result;
    }

    v32 = *v2;
    v33 = *v1;
    v31 = 2 * v34;
    goto LABEL_44;
  }

  v23 = *(v1 + 16);
  if (v13)
  {
    v24 = v20 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && v23 != 0)
  {
    v26 = *v1;
    v27 = *v2;
    v28 = v23 - 1;
    if (v23 != 1)
    {
      if (!v21)
      {
        return result;
      }

      v29 = 2 * v18;
      v30 = 2 * v19;
      do
      {
        result = memmove(v27, v26, 2 * v21);
        v26 += v29;
        v27 += v30;
        --v28;
      }

      while (v28);
    }

    if (v21)
    {
      v31 = 2 * v21;
      v32 = v27;
      v33 = v26;
LABEL_44:

      return memmove(v32, v33, v31);
    }
  }

  return result;
}

uint64_t *sub_2712566FC(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 3);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 2 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 2 * v14;
          v12 += 2 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 2 * v14;
        v12 += 2 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 3);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 6);
        v29 = *(a2 + 6);
        v17 = 2 * v9;
        v18 = &v11[2 * v9];
        v19 = 2 * v14;
        v20 = 2 * v10;
        v21 = &v12[2 * v10];
        v33 = 2 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 2 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 2 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 2 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 2 * v9;
        v12 += 2 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 2 * v9;
      v12 += 2 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 2 * v26);
    }
  }

  return result;
}

unint64_t sub_271256944(unint64_t result, uint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  v5 = *(result + 32);
  v6 = *(result + 20);
  if (!v5)
  {
    v7 = *(result + 8);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_34;
      }

      v34 = *(result + 12);
      v35 = *(result + 16);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v7 = *(result + 8);
  v8 = *(result + 36);
  v9 = *(result + 40);
  if (v6)
  {
    v10 = *(result + 24);
    v11 = *(result + 28);
    if (!v7)
    {
      do
      {
        v45 = a5;
        v46 = a4;
        v47 = v6;
        do
        {
          *v45 = *v46;
          v46 += v10;
          v45 += v11;
          --v47;
        }

        while (v47);
        result = *v46;
        *v45 = result;
        a4 += v8;
        a5 += v9;
        ++v7;
      }

      while (v7 != v5);
      do
      {
LABEL_31:
        *a5 = *a4;
        a4 += v10;
        a5 += v11;
        --v6;
      }

      while (v6);
      goto LABEL_34;
    }

    v12 = 0;
    v13 = 2 * v8;
    v14 = v10;
    v15 = 2 * *(result + 12);
    v16 = 2 * v9;
    v17 = v11;
    v18 = 2 * *(result + 16);
    v19 = &a4[v14];
    v20 = &a5[v17];
    do
    {
      v21 = 0;
      v22 = v20;
      v23 = v19;
      v24 = a5;
      v25 = a4;
      do
      {
        v26 = v23;
        v27 = v22;
        v28 = v24;
        v29 = v25;
        v30 = v7;
        do
        {
          *v28 = *v29;
          v29 = (v29 + v15);
          v28 = (v28 + v18);
          --v30;
        }

        while (v30);
        *v28 = *v29;
        v25 = (v25 + v14 * 2);
        v24 = (v24 + v17 * 2);
        ++v21;
        v23 = &v26[v14];
        v22 = &v27[v17];
      }

      while (v21 != v6);
      v31 = v7;
      do
      {
        *v27 = *v26;
        v26 = (v26 + v15);
        v27 = (v27 + v18);
        --v31;
      }

      while (v31);
      *v27 = *v26;
      a4 = (a4 + v13);
      a5 = (a5 + v16);
      ++v12;
      v19 = (v19 + v13);
      v20 = (v20 + v16);
    }

    while (v12 != v5);
LABEL_12:
    v10 = *(result + 24);
    v11 = *(result + 28);
    if (v7)
    {
      v32 = 0;
      v33 = 2 * v10;
      v34 = *(result + 12);
      v35 = *(result + 16);
      do
      {
        v36 = a5;
        v37 = a4;
        v38 = v7;
        do
        {
          *v36 = *v37;
          v37 += v34;
          v36 += v35;
          --v38;
        }

        while (v38);
        result = *v37;
        *v36 = result;
        a4 = (a4 + v33);
        a5 += v11;
        ++v32;
      }

      while (v32 != v6);
      do
      {
LABEL_26:
        *a5 = *a4;
        a4 += v34;
        a5 += v35;
        --v7;
      }

      while (v7);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    v39 = 0;
    v40 = 2 * v8;
    v34 = *(result + 12);
    v35 = *(result + 16);
    v41 = 2 * v9;
    do
    {
      v42 = a5;
      v43 = a4;
      v44 = v7;
      do
      {
        *v42 = *v43;
        v43 += v34;
        v42 += v35;
        --v44;
      }

      while (v44);
      result = *v43;
      *v42 = result;
      a4 = (a4 + v40);
      a5 = (a5 + v41);
      ++v39;
    }

    while (v39 != v5);
    goto LABEL_26;
  }

  do
  {
    *a5 = *a4;
    a4 += v8;
    a5 += v9;
    --v5;
  }

  while (v5);
LABEL_34:
  *a5 = *a4;
  return result;
}

uint64_t *sub_271256BEC()
{
  if ((atomic_load_explicit(&qword_280878210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878210))
  {
    sub_271256C88();
  }

  if (byte_28087820F >= 0)
  {
    return &qword_2808781F8;
  }

  else
  {
    return qword_2808781F8;
  }
}

void sub_271256D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271256D84(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two16f]", 30, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271256E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271256EB4(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812EF80[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_271256F1C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271256F34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112018;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t sub_271256F80(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    v18 = 0;
    v6 = malloc_type_posix_memalign(&v18, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_2718084E8(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = v18;
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 44) >> 1;
  v9 = (*(a2 + 36) >> 1) & 0x7FFFFFFF7FFFFFFFLL;
  if (*(a2 + 24))
  {
    v10 = *(a2 + 28) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 24);
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 32);
  }

  v18 = *(a2 + 8);
  v19 = v13;
  LODWORD(v20) = v14;
  *(&v20 + 4) = v9;
  HIDWORD(v20) = v8;
  if (v14 * v8 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v18, v19, v20);
        goto LABEL_28;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_30;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_30:
    abort();
  }

LABEL_28:
  sub_271257190(a1, &v18);
  return a1;
}

void sub_271257170(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void sub_271257190(uint64_t a1, _DWORD *a2)
{
  if (a2[2])
  {
    v2 = a2[3] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || a2[4] == 0)
  {
    return;
  }

  v4 = *(a1 + 44) >> 1;
  v5 = (*(a1 + 36) >> 1) & 0x7FFFFFFF7FFFFFFFLL;
  if (*(a1 + 24))
  {
    v6 = *(a1 + 28) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (*(a1 + 32))
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 24);
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 32);
  }

  v17[0] = *(a1 + 8);
  v17[1] = v9;
  v18 = v10;
  v19 = v5;
  v20 = v4;
  if (v10 * v4 != -1)
  {
    goto LABEL_34;
  }

  v11 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_31;
    }

    v12 = qword_28087C408;
    v13 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v12 = qword_28087C408;
    v13 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_36;
    }
  }

  do
  {
    v15 = *v12;
    v14 = *(v12 + 8);
    v12 += 16;
    v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v12 != v13);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_36:
    abort();
  }

LABEL_31:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  if (v11[2])
  {
    a2 = v11;
    if (v11[3])
    {
      if (v11[4])
      {
LABEL_34:
        sub_271257354(&v16, a2, v17);
      }
    }
  }
}

void sub_271257354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = *(a2 + 16);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v3 - 1;
    v9 = v4 - 1;
    v10 = *(a2 + 20);
    v11 = *(a2 + 24);
    v12 = *(a3 + 24);
    v13 = *a2;
    v14 = *a3;
    v15 = 2 * *(a3 + 20);
    v16 = v5 - 1;
    if (v16)
    {
      v17 = *(a3 + 28);
      v18 = *(a2 + 28);
      if (v9)
      {
        v19 = 0;
        v20 = 2 * v18;
        v21 = v11;
        if (!v8)
        {
          v43 = 2 * v17;
          do
          {
            v44 = v9;
            v45 = v14;
            v46 = v13;
            do
            {
              *v45 = *v46;
              v46 = (v46 + v21 * 2);
              v45 += v12;
              --v44;
            }

            while (v44);
            *v45 = *v46;
            v13 = (v13 + v20);
            v14 = (v14 + v43);
            ++v19;
          }

          while (v19 != v16);
LABEL_33:
          if (v8)
          {
            v47 = 0;
            v48 = 2 * v11;
            v49 = 2 * v12;
            do
            {
              v50 = v14;
              v51 = v13;
              v52 = v8;
              do
              {
                *v50 = *v51;
                v51 += v10;
                v50 = (v50 + v15);
                --v52;
              }

              while (v52);
              *v50 = *v51;
              v13 = (v13 + v48);
              v14 = (v14 + v49);
              ++v47;
            }

            while (v47 != v9);
            goto LABEL_42;
          }

          v53 = 2 * v11;
          v54 = 2 * v12;
          do
          {
            *v14 = *v13;
            v13 = (v13 + v53);
            v14 = (v14 + v54);
            --v9;
          }

          while (v9);
LABEL_41:
          if (!v8)
          {
LABEL_44:
            *v14 = *v13;
            return;
          }

LABEL_42:
          v55 = 2 * v10;
          do
          {
            *v14 = *v13;
            v13 = (v13 + v55);
            v14 = (v14 + v15);
            --v8;
          }

          while (v8);
          goto LABEL_44;
        }

        v22 = 2 * v10;
        v23 = v12;
        v24 = &v13[v21];
        v25 = &v14[v12];
        v26 = 2 * v17;
        do
        {
          v27 = 0;
          v28 = v25;
          v29 = v24;
          v30 = v14;
          v31 = v13;
          do
          {
            v32 = v29;
            v33 = v28;
            v34 = v30;
            v35 = v31;
            v36 = v8;
            do
            {
              *v34 = *v35;
              v35 = (v35 + v22);
              v34 = (v34 + v15);
              --v36;
            }

            while (v36);
            *v34 = *v35;
            v31 = (v31 + v21 * 2);
            v30 = (v30 + v23 * 2);
            ++v27;
            v29 = &v32[v21];
            v28 = &v33[v23];
          }

          while (v27 != v9);
          v37 = v8;
          do
          {
            *v33 = *v32;
            v32 = (v32 + v22);
            v33 = (v33 + v15);
            --v37;
          }

          while (v37);
          *v33 = *v32;
          v13 = (v13 + v20);
          v14 = (v14 + v26);
          ++v19;
          v24 = (v24 + v20);
          v25 = (v25 + v26);
        }

        while (v19 != v16);
      }

      else if (v8)
      {
        v38 = 0;
        v39 = 2 * v18;
        do
        {
          v40 = v14;
          v41 = v13;
          v42 = v8;
          do
          {
            *v40 = *v41;
            v41 += v10;
            v40 = (v40 + v15);
            --v42;
          }

          while (v42);
          *v40 = *v41;
          v13 = (v13 + v39);
          v14 += v17;
          ++v38;
        }

        while (v38 != v16);
      }

      else
      {
        do
        {
          *v14 = *v13;
          v13 += v18;
          v14 += v17;
          --v16;
        }

        while (v16);
      }
    }

    if (!v9)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }
}