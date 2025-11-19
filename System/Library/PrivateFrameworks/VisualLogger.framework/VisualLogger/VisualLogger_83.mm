void sub_2717B0C64(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 27)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B0F64(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 27)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B1264(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B12A0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B12F8(uint64_t a1, uint64_t a2, __int32 *a3, int32x2_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112918;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v22[4] = v7;
  *v22 = 4;
  v8 = *v22;
  v9 = HIDWORD(v7);
  *v22 = 1;
  *&v22[4] = v6;
  v10 = *v22;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v22 = v10;
  *&v22[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v21 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v20, v22, 1, a3, 1, v17, a4);
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B1504(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123718, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 28);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271245B78(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A8BDC(a1 + 8, (v6 + 8));
}

void sub_2717B17EC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 28)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B1AEC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 28)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B1DEC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B1E28(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B1E80(uint64_t a1, uint64_t a2, char *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112898;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B2088(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123700, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 29);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_2712A6008(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A6454(a1 + 8, (v6 + 8));
}

void sub_2717B2370(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 29)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B2670(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 29)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B2970(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B29AC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B2A04(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112798;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B2C14(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881236D0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 30);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271244900(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A6AE0(a1 + 8, (v6 + 8));
}

void sub_2717B2EFC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 30)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B31FC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 30)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B34FC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717B3664(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717B37EC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112718;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B39FC(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881236B8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 31);
    v9 = *(v24 + 16);
    v8 = *(v24 + 32);
    v22[0] = *v24;
    v22[1] = v9;
    v22[2] = v8;
    *&v24 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v24) = 4;
    *(&v24 + 4) = v12;
    v14 = v12;
    v15 = v24;
    v16 = HIDWORD(v12);
    LODWORD(v24) = 1;
    *(&v24 + 4) = v13;
    v17 = v24;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v24 = v10;
        *(&v24 + 1) = v15;
        v25 = v16;
        v26 = v17;
        v27 = HIDWORD(v13);
        v28 = v14;
        v29 = v13;
        v23[0] = v22;
        v23[1] = &v24;
        sub_2712A6EAC(v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A7ABC(a1 + 8, (v6 + 8));
}

void sub_2717B3CEC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 31)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B3FEC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 31)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B42EC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B4328(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B4380(uint64_t a1, uint64_t a2, __int32 *a3, int32x2_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112698;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v22[4] = v7;
  *v22 = 4;
  v8 = *v22;
  v9 = HIDWORD(v7);
  *v22 = 1;
  *&v22[4] = v6;
  v10 = *v22;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v22 = v10;
  *&v22[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v21 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v20, v22, 1, a3, 1, v17, a4);
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B458C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881236A0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 32);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271245B78(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A8BDC(a1 + 8, (v6 + 8));
}

void sub_2717B4874(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 32)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B4B74(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 32)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B4E74(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B4EB0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B4F08(uint64_t a1, uint64_t a2, char *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112618;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B5110(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123688, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 33);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_2712A6008(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A6454(a1 + 8, (v6 + 8));
}

void sub_2717B53F8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 33)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B56F8(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 33)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B59F8(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B5A34(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B5A8C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112598;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B5C9C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123670, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 34);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271244900(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A6AE0(a1 + 8, (v6 + 8));
}

void sub_2717B5F84(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 34)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B6284(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 34)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B6584(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717B66EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717B6874(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112518;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B6A84(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123658, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 35);
    v9 = *(v24 + 16);
    v8 = *(v24 + 32);
    v22[0] = *v24;
    v22[1] = v9;
    v22[2] = v8;
    *&v24 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v24) = 4;
    *(&v24 + 4) = v12;
    v14 = v12;
    v15 = v24;
    v16 = HIDWORD(v12);
    LODWORD(v24) = 1;
    *(&v24 + 4) = v13;
    v17 = v24;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v24 = v10;
        *(&v24 + 1) = v15;
        v25 = v16;
        v26 = v17;
        v27 = HIDWORD(v13);
        v28 = v14;
        v29 = v13;
        v23[0] = v22;
        v23[1] = &v24;
        sub_2712A6EAC(v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A7ABC(a1 + 8, (v6 + 8));
}

void sub_2717B6D74(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 35)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B7074(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 35)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B7374(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B73B0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B7408(uint64_t a1, uint64_t a2, __int32 *a3, int32x2_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112498;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v22[4] = v7;
  *v22 = 4;
  v8 = *v22;
  v9 = HIDWORD(v7);
  *v22 = 1;
  *&v22[4] = v6;
  v10 = *v22;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v22 = v10;
  *&v22[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v21 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v20, v22, 1, a3, 1, v17, a4);
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B7614(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123640, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 36);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271245B78(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A8BDC(a1 + 8, (v6 + 8));
}

void sub_2717B78FC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 36)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B7BFC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 36)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B7EFC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B7F38(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B7F90(uint64_t a1, uint64_t a2, char *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112418;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B8198(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123628, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 37);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_2712A6008(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A6454(a1 + 8, (v6 + 8));
}

void sub_2717B8480(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 37)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B8780(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 37)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B8A80(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B8ABC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B8B14(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112398;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B8D24(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123610, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 38);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271244900(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A6AE0(a1 + 8, (v6 + 8));
}

void sub_2717B900C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 38)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B930C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 38)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B960C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717B9774(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717B98FC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112318;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v21[4] = v6;
  *v21 = 4;
  v7 = *v21;
  v8 = HIDWORD(v6);
  *v21 = 1;
  *&v21[4] = v5;
  v9 = *v21;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v9;
  *&v21[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v19 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v19, v21, 1, a3, 1, v16);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717B9B0C(uint64_t a1, char **lpsrc)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881235F8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v24, lpsrc, 39);
    v9 = *(v24 + 16);
    v8 = *(v24 + 32);
    v22[0] = *v24;
    v22[1] = v9;
    v22[2] = v8;
    *&v24 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v24) = 4;
    *(&v24 + 4) = v12;
    v14 = v12;
    v15 = v24;
    v16 = HIDWORD(v12);
    LODWORD(v24) = 1;
    *(&v24 + 4) = v13;
    v17 = v24;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v24 = v10;
        *(&v24 + 1) = v15;
        v25 = v16;
        v26 = v17;
        v27 = HIDWORD(v13);
        v28 = v14;
        v29 = v13;
        v23[0] = v22;
        v23[1] = &v24;
        sub_2712A6EAC(v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A7ABC(a1 + 8, (v6 + 8));
}

void sub_2717B9DFC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 39)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717BA0FC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 39)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717BA3FC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717BA438(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717BA490(uint64_t a1, uint64_t a2, __int32 *a3, int32x2_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112218;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v22[4] = v7;
  *v22 = 4;
  v8 = *v22;
  v9 = HIDWORD(v7);
  *v22 = 1;
  *&v22[4] = v6;
  v10 = *v22;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v22 = v10;
  *&v22[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v20 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v21 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v20, v22, 1, a3, 1, v17, a4);
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2717BA69C(uint64_t a1, char **lpsrc)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881235C8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 40);
    v9 = *(v23 + 16);
    v8 = *(v23 + 32);
    v22[0] = *v23;
    v22[1] = v9;
    v22[2] = v8;
    *&v23 = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 32) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
    }

    LODWORD(v23) = 4;
    *(&v23 + 4) = v12;
    v14 = v12;
    v15 = v23;
    v16 = HIDWORD(v12);
    LODWORD(v23) = 1;
    *(&v23 + 4) = v13;
    v17 = v23;
    if (HIDWORD(v13) * HIDWORD(v12) != -1)
    {
      goto LABEL_19;
    }

    v21 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 = v21;
LABEL_19:
        *&v23 = v10;
        *(&v23 + 1) = v15;
        v24 = v16;
        v25 = v17;
        v26 = HIDWORD(v13);
        v27 = v14;
        v28 = v13;
        sub_271245B78(v22, &v23);
        v20 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v18);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_2712A8BDC(a1 + 8, (v6 + 8));
}

void sub_2717BA984(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 40)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717BAC84(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 40)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v7 = *(a1 + 32) == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(a1 + 32);
    if (v7)
    {
      HIDWORD(v8) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v8) != -1)
    {
LABEL_24:
      operator new();
    }

    v13 = *(a1 + 72);
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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
      goto LABEL_25;
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
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717BAF84(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 1))
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1[1];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  if (v5)
  {
    v6 = HIDWORD(v5) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = (HIDWORD(v7) * HIDWORD(v4));
  if ((HIDWORD(v4) & (HIDWORD(v4) - 1)) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = HIDWORD(v4) - 1;
  }

  v10 = v9 | (v9 >> 1) | ((v9 | (v9 >> 1)) >> 2);
  v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
  v12 = v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32);
  if (v12 + 1 > 8)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 8;
  }

  if (v8)
  {
    memptr = 0;
    v14 = malloc_type_posix_memalign(&memptr, v13, (HIDWORD(v7) * HIDWORD(v4)), 0x63222AC6uLL);
    if (v14)
    {
      sub_2718084E8(v14, v13, (HIDWORD(v7) * HIDWORD(v4)));
    }

    v15 = memptr;
  }

  else
  {
    v15 = 0;
  }

  *a2 = &unk_288112D98;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v7;
  *(a2 + 72) = v4;
}

void sub_2717BB090(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 0x100000000)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = (HIDWORD(v7) * v5);
  if ((v5 & (v5 - 1)) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 - 1;
  }

  v10 = v9 | (v9 >> 1) | ((v9 | (v9 >> 1)) >> 2);
  v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
  v12 = v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32);
  if (v12 + 1 > 8)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 8;
  }

  if (v8)
  {
    memptr = 0;
    v14 = malloc_type_posix_memalign(&memptr, v13, (HIDWORD(v7) * v5), 0x63222AC6uLL);
    if (v14)
    {
      sub_2718084E8(v14, v13, (HIDWORD(v7) * v5));
    }

    v15 = memptr;
  }

  else
  {
    v15 = 0;
  }

  *a2 = &unk_288112D98;
  *(a2 + 8) = v4;
  v16 = (v4 != 0) | (v5 << 32);
  *(a2 + 16) = v16;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v7;
  *(a2 + 72) = v16;
}

void sub_2717BB1BC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 1))
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1[1];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  if (v5)
  {
    v6 = HIDWORD(v5) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = (v4 >> 31) & 0x1FFFFFFFELL;
  v9 = HIDWORD(v7) * v8;
  if ((v8 & (v8 - 1)) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = v10 | (v10 >> 1) | ((v10 | (v10 >> 1)) >> 2);
  v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
  v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
  if (v13 + 1 > 8)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 8;
  }

  v15 = v9 & 0x1FFFFFFFELL;
  if ((v9 & 0x1FFFFFFFELL) != 0)
  {
    memptr = 0;
    v16 = malloc_type_posix_memalign(&memptr, v14, v9 & 0x1FFFFFFFELL, 0x63222AC6uLL);
    if (v16)
    {
      sub_2718084E8(v16, v14, v15);
    }

    v17 = memptr;
  }

  else
  {
    v17 = 0;
  }

  *a2 = &unk_288112818;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v14;
  *(a2 + 64) = v7;
  *(a2 + 72) = (2 * v4) & 0xFFFFFFFEFFFFFFFELL;
}

void sub_2717BB2D8(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 0x100000000)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 2 * v5;
  v9 = HIDWORD(v7) * v8;
  if ((v8 & (v8 - 1)) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = v10 | (v10 >> 1) | ((v10 | (v10 >> 1)) >> 2);
  v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
  v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
  if (v13 + 1 > 8)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 8;
  }

  v15 = v9 & 0x1FFFFFFFELL;
  if ((v9 & 0x1FFFFFFFELL) != 0)
  {
    memptr = 0;
    v16 = malloc_type_posix_memalign(&memptr, v14, v9 & 0x1FFFFFFFELL, 0x63222AC6uLL);
    if (v16)
    {
      sub_2718084E8(v16, v14, v15);
    }

    v17 = memptr;
  }

  else
  {
    v17 = 0;
  }

  v18 = v5 << 32;
  *a2 = &unk_288112818;
  *(a2 + 8) = v4;
  if (v4)
  {
    ++v18;
  }

  *(a2 + 16) = v18;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v14;
  *(a2 + 64) = v7;
  *(a2 + 72) = 2 * v18;
}

double sub_2717BB40C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 1))
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *a1;
  v4 = a1[1];
  if (v3)
  {
    v5 = 0;
  }

  *v10 = v5;
  *&v10[8] = a1[1];
  v10[16] = 0;
  v10[24] = 0;
  if (v5)
  {
    v6 = HIDWORD(v5) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  v14 = v5;
  v15 = v4;
  v7 = (v4 >> 31) & 0x1FFFFFFFELL;
  if ((v7 & (v7 - 1)) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  sub_2717D43FC(&v11, &v14, &v15, 1, 0, 0, v8);
  *a2 = &unk_288112298;
  *(a2 + 8) = *v10;
  *(a2 + 20) = *&v10[12];
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;
  result = *&v13;
  *(a2 + 64) = v13;
  return result;
}

double sub_2717BB4E4@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 0;
  if (v5 > 0x100000000)
  {
    v6 = v5;
  }

  *v10 = v5;
  *&v10[8] = (v5 != 0) | (v6 << 32);
  v10[16] = 0;
  v10[24] = 0;
  v15 = *&v10[8];
  if (v5)
  {
    v7 = HIDWORD(v5) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v5 = 0;
  }

  v14 = v5;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 2 * v6;
  }

  sub_2717D43FC(&v11, &v14, &v15, 1, a2, 1, v8);
  *a3 = &unk_288112298;
  *(a3 + 8) = *v10;
  *(a3 + 20) = *&v10[12];
  *(a3 + 40) = v11;
  *(a3 + 56) = v12;
  result = *&v13;
  *(a3 + 64) = v13;
  return result;
}

double sub_2717BB5D0@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 0;
  if (v4 > 0x100000000)
  {
    v5 = v4;
  }

  *v9 = v4;
  *&v9[8] = (v4 != 0) | (v5 << 32);
  v9[16] = 0;
  v9[24] = 0;
  v14 = *&v9[8];
  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v4 = 0;
  }

  v13 = v4;
  if (((2 * v5) & (2 * v5 - 1)) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 2 * v5;
  }

  sub_2717D43FC(&v10, &v13, &v14, 1, 0, 0, v7);
  *a2 = &unk_288112298;
  *(a2 + 8) = *v9;
  *(a2 + 20) = *&v9[12];
  *(a2 + 40) = v10;
  *(a2 + 56) = v11;
  result = *&v12;
  *(a2 + 64) = v12;
  return result;
}

void sub_2717BB6BC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 1))
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1[1];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  if (v5)
  {
    v6 = HIDWORD(v5) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = (v4 >> 30) & 0x3FFFFFFFCLL;
  v9 = v8 - 1;
  v10 = HIDWORD(v7) * v8;
  v3 = (v8 & (v8 - 1)) == 0;
  v11 = 3;
  if (v3)
  {
    v11 = v9;
  }

  v12 = v11 | (v11 >> 1) | ((v11 | (v11 >> 1)) >> 2);
  v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
  v14 = v13 | (v13 >> 16) | ((v13 | (v13 >> 16)) >> 32);
  if (v14 + 1 > 8)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 8;
  }

  v16 = v10 & 0x3FFFFFFFCLL;
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    memptr = 0;
    v17 = malloc_type_posix_memalign(&memptr, v15, v10 & 0x3FFFFFFFCLL, 0x63222AC6uLL);
    if (v17)
    {
      sub_2718084E8(v17, v15, v16);
    }

    v18 = memptr;
  }

  else
  {
    v18 = 0;
  }

  *a2 = &unk_288112198;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v15;
  *(a2 + 64) = v7;
  *(a2 + 72) = (4 * v4) & 0xFFFFFFFCFFFFFFFCLL;
}

void sub_2717BB7DC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 <= 0x100000000)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 4 * v5;
  v9 = v8 - 1;
  v10 = HIDWORD(v7) * v8;
  v3 = (v8 & (v8 - 1)) == 0;
  v11 = 3;
  if (v3)
  {
    v11 = v9;
  }

  v12 = v11 | (v11 >> 1) | ((v11 | (v11 >> 1)) >> 2);
  v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
  v14 = v13 | (v13 >> 16) | ((v13 | (v13 >> 16)) >> 32);
  if (v14 + 1 > 8)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 8;
  }

  v16 = v10 & 0x3FFFFFFFCLL;
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    memptr = 0;
    v17 = malloc_type_posix_memalign(&memptr, v15, v10 & 0x3FFFFFFFCLL, 0x63222AC6uLL);
    if (v17)
    {
      sub_2718084E8(v17, v15, v16);
    }

    v18 = memptr;
  }

  else
  {
    v18 = 0;
  }

  v19 = v5 << 32;
  *a2 = &unk_288112198;
  *(a2 + 8) = v4;
  if (v4)
  {
    ++v19;
  }

  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v15;
  *(a2 + 64) = v7;
  *(a2 + 72) = 4 * v19;
}

void sub_2717BB914(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112118;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BBAD0@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 2 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 2;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112118;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BBC6C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 2 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
  v10 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 2) >> 32 == 0;
  if (__PAIR64__(v5, 2) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 2) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112118;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717BBE44(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112098;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BC018@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  v6 = 2 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 2;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112098;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BC1B8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 24);
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 2;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
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
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112018;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BC340@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  v6 = 2 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 2;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112018;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BC4E0@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1;
  }

  v5 = 2 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 2;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112018;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BC680(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288111F98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BC858@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *a1;
  if (v5)
  {
    v6 = 0;
  }

  v7 = 2 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v28 = 2;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288111F98;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BC9FC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288111F18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BCBB8@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288111F18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BCD4C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288111F18;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717BCF1C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288113298;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BD0F0@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288113298;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BD28C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 3;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
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
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288113218;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BD418@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288113218;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BD5B4@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v26 = 3;
  *&v26[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v26 = 3;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288113218;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BD750(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  if (((4 * v10) & (4 * v10 - 1)) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288113198;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BD924@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *a1;
  if (v5)
  {
    v6 = 0;
  }

  *v28 = 3;
  *&v28[4] = v6;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v8) = v7 * v6;
  *v28 = 3;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 | (v8 << 32);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288113198;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BDAC0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288113118;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BDC7C@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288113118;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}