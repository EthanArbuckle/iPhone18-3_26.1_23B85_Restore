int AEAStreamSign(AAByteStream encrypted_stream, AEAContext context)
{
  v62 = 0;
  memset(__s, 0, sizeof(__s));
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  if (*context <= 5u && ((1 << *context) & 0x2A) != 0)
  {
    v4 = 0;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v29 = 0uLL;
    v28 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
LABEL_15:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v44, 0x104uLL, 0, 0x104uLL);
    memset_s(v42, 0x104uLL, 0, 0x104uLL);
    memset_s(&v22, 0x68uLL, 0, 0x68uLL);
    memset_s(&v29, 0xD0uLL, 0, 0xD0uLL);
    return v4;
  }

  v5 = *(context + 340);
  v6 = *(context + 341);
  v40 = 0uLL;
  v41 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v29 = 0uLL;
  v28 = 0;
  v26 = 0uLL;
  v27 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  if ((sub_1000DB560(&v29, context) & 0x80000000) != 0)
  {
    v14 = "initializing crypto params";
    v15 = 467;
    goto LABEL_14;
  }

  v9 = *(context + 5);
  v22 = xmmword_10037C1C0;
  *&v23 = *(context + 1) + 12;
  *(&v23 + 1) = v23 + HIDWORD(v31);
  *&v24 = *(&v23 + 1) + v32;
  *(&v24 + 1) = v24 + DWORD2(v29);
  *&v25 = *(&v24 + 1) + HIDWORD(v29);
  *(&v25 + 1) = v25 + 48;
  v26 = v25 + 48 + HIDWORD(v29);
  v10 = (*(context + 12) + 8) * v9 + HIDWORD(v29);
  *&v27 = (*(context + 12) + 8) * v9;
  *(&v27 + 1) = v10;
  v28 = v10 + HIDWORD(v29) * v9;
  memset_s(&v5[v23], HIDWORD(v31), 0, HIDWORD(v31));
  if (!*(&v36 + 1) || (v11 = (*(&v36 + 1))(v42, v5, v6), LODWORD(v42[0]) != DWORD1(v31)) || v11 < 0)
  {
    v14 = "digesting prologue";
    v15 = 474;
    goto LABEL_14;
  }

  v12 = *(context + 302);
  if (v12)
  {
    *&v84[0] = 0;
    result = v12(*(context + 303), 256, __s + 4, v84, v42 + 4);
    if (result < 0)
    {
      v14 = "signing prologue digest";
      v15 = 484;
      goto LABEL_14;
    }

    if (*&v84[0] > DWORD2(v31))
    {
      v14 = "invalid signature size";
      v15 = 485;
LABEL_14:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", v15, 79, 0, v14, v7, v8, v22);
      v4 = -1;
      goto LABEL_15;
    }

    if (DWORD2(v31) >= 0x101)
    {
      goto LABEL_46;
    }

    LODWORD(__s[0]) = DWORD2(v31);
    result = memset_s(__s + DWORD2(v31) + 4, 256 - DWORD2(v31), 0, 256 - DWORD2(v31));
  }

  else if (!v37 || (result = (v37)(__s, context + 592, v42), LODWORD(__s[0]) != DWORD2(v31)) || result < 0)
  {
    v14 = "signing prologue";
    v15 = 490;
    goto LABEL_14;
  }

  if (*context)
  {
    if (!v38)
    {
      goto LABEL_36;
    }

    v83 = 0;
    memset(v82, 0, sizeof(v82));
    v81 = 0;
    memset(v80, 0, sizeof(v80));
    v79 = 0;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    *__n = 0u;
    if (LODWORD(__s[0]) != DWORD2(v31))
    {
      goto LABEL_35;
    }

    if (*(context + 408) != v29)
    {
      goto LABEL_35;
    }

    *(v80 + 4) = 0x324B45535F414541;
    LODWORD(v80[0]) = 8;
    memset_s((v80 | 0xC), 0xF8uLL, 0, 0xF8uLL);
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    if (!*(&v33 + 1))
    {
      goto LABEL_35;
    }

    if (!*(context + 408))
    {
      goto LABEL_35;
    }

    result = (*(&v33 + 1))(v82, DWORD1(v29), context + 1632, v80, v84);
    if (result < 0)
    {
      goto LABEL_35;
    }

    v16 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0x101)
    {
      goto LABEL_46;
    }

    __memcpy_chk();
    LODWORD(v44[0]) = v16;
    memset_s(v44 + v16 + 4, 256 - v16, 0, 256 - v16);
    result = (v38)(v44 + 4, LODWORD(__s[0]), __n, v82, 0, 0);
    if (result < 0)
    {
LABEL_35:
      memset_s(v82, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v80, 0x104uLL, 0, 0x104uLL);
      goto LABEL_36;
    }

    v17 = LODWORD(v44[0]) + LODWORD(__n[0]);
    if (v17 < 0x101)
    {
      memcpy(v44 + LODWORD(v44[0]) + 4, __n + 4, LODWORD(__n[0]));
      LODWORD(v44[0]) = v17;
      memset_s(v44 + v17 + 4, 256 - v17, 0, 256 - v17);
      v18 = v44[0];
      v19 = HIDWORD(v31);
      memset_s(v82, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v80, 0x104uLL, 0, 0x104uLL);
      if (v18 == v19)
      {
LABEL_39:
        memcpy(&v5[v23], v44 + 4, LODWORD(v44[0]));
        if (AAByteStreamPWrite(encrypted_stream, v5, v6, 0) == v6)
        {
          if (*(&v41 + 1))
          {
            v21 = (*(&v41 + 1))(context + 1892, v5, v6);
            if (*(context + 473) == DWORD1(v32) && (v21 & 0x80000000) == 0)
            {
              v4 = 0;
              goto LABEL_15;
            }
          }

          v14 = "digesting prologue";
          v15 = 505;
        }

        else
        {
          v14 = "writing updated prologue";
          v15 = 502;
        }

        goto LABEL_14;
      }

LABEL_36:
      v14 = "encrypt signature";
      v15 = 497;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) < 0x101)
    {
      __memcpy_chk();
      LODWORD(v44[0]) = v20;
      memset_s(v44 + v20 + 4, 256 - v20, 0, 256 - v20);
      goto LABEL_39;
    }
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_1000FD964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x80uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    j__CC_SHA1_Init(v6);
    v7[13] = a1;
    v7[14] = a2;
    v7[15] = a3;
  }

  else
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OSHA1StreamCreate", 76, 29, *v8, "malloc", v9, v10, v12);
  }

  return v7;
}

void sub_1000FD9FC(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    j__CC_SHA1_Final(md, c);

    free(c);
  }
}

uint64_t sub_1000FDA44(CC_SHA1_CTX *c, const void *a2, uint64_t a3)
{
  if (!c || c[1].h0)
  {
    return -1;
  }

  v4 = a3;
  j__CC_SHA1_Update(c, a2, a3);
  v7 = *&c[1].h2;
  if (!v7)
  {
    return v4;
  }

  v8 = *&c[1].Nh;

  return v7(v8, a2, v4);
}

uint64_t sub_1000FDAC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    if (v2)
    {
      result = v2(*(result + 120));
    }

    *(v1 + 96) = 1;
  }

  return result;
}

uint64_t *sub_1000FDB04(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 48);
  v9 = v8;
  if (v8)
  {
    bzero(v8, a4 + 48);
    v10 = a1(a3, v9 + 6, a4);
    if (v10 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 138, 29, 0, "reading magic", v11, v12, v17);
      free(v9);
      return 0;
    }

    else
    {
      *v9 = v10;
      v9[1] = v10;
      v9[3] = a1;
      v9[4] = a2;
      v9[5] = a3;
    }
  }

  else
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 133, 29, *v13, "malloc", v14, v15, v17);
  }

  return v9;
}

size_t sub_1000FDBFC(uint64_t a1, char *__dst, size_t a3)
{
  if (!a1 || *(a1 + 16))
  {
    return -1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memcpy(__dst, (a1 + *a1 - v8 + 48), v4);
    *(a1 + 8) -= v4;
    if (v8 < a3)
    {
      v9 = (*(a1 + 24))(*(a1 + 40), &__dst[v4], a3 - v4);
      if (v9 < 0)
      {
        return -1;
      }

      else
      {
        v4 += v9;
      }
    }

    return v4;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 40);

  return v10(v11);
}

uint64_t sub_1000FDCE0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      result = v2(*(result + 40));
    }

    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000FDD20(const char *a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = 0x1FFFFFFFFLL;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v12 = "pthread_mutex_init";
      v13 = 293;
    }

    else
    {
      v16 = open(a1, 0);
      *v7 = v16;
      if (v16 < 0)
      {
        v14 = *__error();
        v17 = a1;
        v12 = "%s";
        v13 = 297;
        goto LABEL_9;
      }

      sub_1000FDE8C(v7);
      if ((sub_1000FDF10(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v12 = "seek error";
      v13 = 303;
    }

    v14 = 0;
  }

  else
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 282;
  }

LABEL_9:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFilename", v13, 29, v14, v12, v10, v11, v17);
  sub_1000FE0A0(v7);
  return 0;
}

uint64_t sub_1000FDE8C(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  result = fstat(*a1, &v4);
  if (!result && (v4.st_mode & 0xF000) == 0x8000)
  {
    st_size = v4.st_size;
    if (*(a1 + 16) > v4.st_size)
    {
      *(a1 + 16) = v4.st_size;
    }

    if (*(a1 + 24) > st_size)
    {
      *(a1 + 24) = st_size;
    }
  }

  return result;
}

uint64_t sub_1000FDF10(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  v6 = lseek(*a1, a2, 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    *(a1 + 32) = v6;
LABEL_5:
    if (v9 == a2)
    {
      return 0;
    }

    v10 = "pos not reached";
    v11 = 261;
    goto LABEL_11;
  }

  if (*__error() != 32)
  {
    v12 = *__error();
    v10 = "lseek failed";
    v11 = 258;
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (v9 <= a2)
  {
    v13 = valloc(0x4000uLL);
    if (!v13)
    {
      v12 = *__error();
      v10 = "malloc";
      v11 = 244;
      goto LABEL_13;
    }

    for (i = v13; v9 < a2; *(a1 + 32) = v9)
    {
      if (v9 + 0x4000 <= a2)
      {
        v15 = 0x4000;
      }

      else
      {
        v15 = a2 - v9;
      }

      v16 = read(*a1, i, v15);
      v9 = *(a1 + 32);
      if (v16 < 1)
      {
        break;
      }

      v9 += v16;
    }

    free(i);
    goto LABEL_5;
  }

  v10 = "lseek failed and pos < s->pos";
  v11 = 240;
LABEL_11:
  v12 = 0;
LABEL_13:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "seekTo", v11, 29, v12, v10, v7, v8, v2);
  return 0xFFFFFFFFLL;
}

void sub_1000FE0A0(char *a1)
{
  if (a1)
  {
    if (*(a1 + 1))
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    pthread_mutex_destroy((a1 + 40));

    free(a1);
  }
}

uint64_t sub_1000FE0F8(int a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = a1;
    *(v7 + 4) = 0;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v12 = "pthread_mutex_init";
      v13 = 325;
    }

    else
    {
      sub_1000FDE8C(v7);
      if ((sub_1000FDF10(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v12 = "seek error";
      v13 = 331;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", v13, 29, 0, v12, v10, v11, v18);
    sub_1000FE0A0(v7);
    return 0;
  }

  else
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 314, 29, *v14, "malloc", v15, v16, v18);
  }

  return v7;
}

unint64_t sub_1000FE21C(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  if (v11 < *(a1 + 16))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 358, 29, 0, "pos out of range", a7, a8, v21);
    return -1;
  }

  if (~v11 < a3)
  {
    v12 = ~v11;
  }

  else
  {
    v12 = a3;
  }

  v13 = a3 + v11;
  if (__CFADD__(a3, v11))
  {
    v13 = -1;
  }

  v14 = *(a1 + 24);
  if (v13 <= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14 - v11;
  }

  if (v15)
  {
    v8 = 0;
    while (1)
    {
      v17 = read(*a1, a2, v15);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        a2 += v17;
        v8 += v17;
        v15 -= v17;
        if (v15)
        {
          continue;
        }
      }

      v11 = *(a1 + 32);
      goto LABEL_24;
    }

    v18 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 374, 29, *v18, "read", v19, v20, v21);
    *(a1 + 32) += v8;
    atomic_fetch_add((a1 + 104), v8);
    return -1;
  }

  v8 = 0;
LABEL_24:
  *(a1 + 32) = v11 + v8;
  atomic_fetch_add((a1 + 104), v8);
  return v8;
}

uint64_t sub_1000FE358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v9 = *(a1 + 16);
  v10 = v9 + a4;
  if (__CFADD__(v9, a4) || (v11 = *(a1 + 24), v10 > v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamPRead", 397, 29, 0, "invalid offset", a7, a8, v25);
    return -1;
  }

  v15 = v10 + a3;
  if (v10 + a3 >= v11)
  {
    v15 = *(a1 + 24);
  }

  if (!__CFADD__(v10, a3))
  {
    v11 = v15;
  }

  v12 = v11 - v10;
  if (pread(*a1, a2, v11 - v10, v10) == v11 - v10)
  {
    atomic_fetch_add((a1 + 104), v12);
    return v12;
  }

  if (pthread_mutex_lock((a1 + 40)))
  {
    return -1;
  }

  v16 = *(a1 + 32);
  v17 = sub_1000FDF10(a1, v10);
  v23 = sub_1000FE21C(a1, a2, v12, v18, v19, v20, v21, v22);
  v24 = sub_1000FDF10(a1, v16);
  v12 = -1;
  if (!pthread_mutex_unlock((a1 + 40)) && (v24 & 0x80000000) == 0 && (v23 & 0x8000000000000000) == 0 && (v17 & 0x80000000) == 0)
  {
    atomic_fetch_add((a1 + 104), v23);
    return v23;
  }

  return v12;
}

uint64_t sub_1000FE488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v11 = *(a1 + 16);
  v12 = __CFADD__(v11, a2);
  v13 = v11 + a2;
  if (v12 || v13 > *(a1 + 24))
  {
    v14 = "invalid pos";
    v15 = 435;
LABEL_6:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", v15, 29, 0, v14, a7, a8, v8);
    return -1;
  }

  if ((sub_1000FDF10(a1, v13) & 0x80000000) != 0)
  {
    v14 = "changing pos";
    v15 = 436;
    goto LABEL_6;
  }

  return *(a1 + 32) - *(a1 + 16);
}

uint64_t sub_1000FE53C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 32) - *(a1 + 16);
  }
}

uint64_t sub_1000FE568(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 24) - *(a1 + 16);
  }
}

uint64_t sub_1000FE584(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_1000FE594(const char *a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a2;
    *(v4 + 3) = 0;
    v4[1] = 1;
    *(v4 + 1) = 0;
    v6 = open(a1, 1537, 420);
    *v5 = v6;
    if (v6 < 0)
    {
      v7 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 490, 29, *v7, "%s", v8, v9, a1);
      free(v5);
      return 0;
    }
  }

  else
  {
    v10 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 484, 29, *v10, "malloc", v11, v12, v14);
  }

  return v5;
}

void *sub_1000FE674(int a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a2;
    v4[3] = 0;
    *v4 = a1;
    *(v4 + 1) = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFD", 497, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

void sub_1000FE6F0(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }
}

uint64_t sub_1000FE740(uint64_t a1, char *__buf, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v3 = 0;
    while (1)
    {
      v7 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      v8 = write(*a1, __buf, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v9 = *(a1 + 16);
        if (v9 != -1)
        {
          *(a1 + 16) = v9 - v8;
        }

        __buf += v8;
        v3 += v8;
        v5 -= v8;
        if (v5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamWrite", 538, 29, *v11, "write", v12, v13, v14);
    return -1;
  }

  v3 = 0;
LABEL_18:
  *(a1 + 24) += v3;
  return v3;
}

off_t sub_1000FE824(int *a1, off_t a2)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, a2, 0);
  if (result < 0)
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamSetPos", 558, 29, *v4, "lseek", v5, v6, v2);
    return -1;
  }

  return result;
}

off_t sub_1000FE88C(int *a1)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, 0, 1);
  if (result < 0)
  {
    v3 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamGetPos", 568, 29, *v3, "lseek", v4, v5, v1);
    return -1;
  }

  return result;
}

uint64_t sub_1000FE900(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_1000FE910(const char *a1, unint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = malloc(0x60uLL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    if ((a3 & 0x100) == 0)
    {
      unlink(a1);
    }

    v11[1] = (a3 >> 4) & 1;
    *(v11 + 2) = a2;
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 < 1)
    {
      v13 = open(a1, 1537, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 648;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = open_dprotected_np(a1, 1537, v12, 0, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 640;
LABEL_31:
        v38 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", v14, 29, *v38, "%s", v39, v40, a1);
        ParallelCompressionAFSCStreamClose(0, v41, v42, v43, v44, v45, v46, v47);
        goto LABEL_32;
      }
    }

    v18 = v13;
    if ((a3 & 8) != 0 && fcntl(v13, 48, 1))
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 656, 29, "Warning: F_NOCACHE failed: %s\n", v19, v20, v21, a1);
    }

    if ((a3 & 2) != 0 && fcntl(v18, 68, 1) == -1)
    {
      v22 = __error();
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 665, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v23, v24, v25, *v22);
    }

    if (a2 && (a3 & 4) != 0 && a5 != -1)
    {
      if ((a3 & 0x80) != 0)
      {
        v26 = 6;
      }

      else
      {
        v26 = 4;
      }

      v27 = ParallelCompressionAFSCStreamOpen(v18, a2, a5, v26);
      *(v11 + 3) = v27;
      if (!v27)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 677, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", v28, v29, a1);
        ParallelCompressionAFSCStreamClose(0, v30, v31, v32, v33, v34, v35, v36);
        close(v18);
LABEL_32:
        free(v11);
        return 0;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v37 = fpathconf(v18, 27);
      if (v37 >= 1)
      {
        v11[10] = 1;
        if (v37 == 4096)
        {
          v11[18] = 4096;
        }

        else
        {
          v49 = 0x10000;
          if (v37 < 0x10000)
          {
            v49 = v37;
          }

          v50 = 1024;
          do
          {
            v51 = v50;
            v50 *= 2;
          }

          while (v51 < v49);
          v11[18] = v51;
        }
      }
    }
  }

  else
  {
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 617, 29, *v15, "malloc", v16, v17, v52);
  }

  return v11;
}

int *sub_1000FEBCC(int a1, const char *a2, unint64_t a3, unsigned int a4, int a5, int a6)
{
  v12 = malloc(0x60uLL);
  v15 = v12;
  if (!v12)
  {
    v36 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 740, 29, *v36, "malloc", v37, v38, v54);
    return v15;
  }

  *(v12 + 8) = 0u;
  *(v12 + 11) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *v12 = -1;
  *(v12 + 1) = (a4 >> 4) & 1;
  *(v12 + 2) = a3;
  if ((a4 & 0x100) == 0)
  {
    unlinkat(a1, a2, 0);
  }

  if ((a4 & 1) != 0 || a5 >= 1)
  {
    v39 = "non default protection class is not supported";
    v40 = 759;
    v41 = 0;
LABEL_24:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", v40, 29, v41, v39, v13, v14, v54);
    ParallelCompressionAFSCStreamClose(0, v42, v43, v44, v45, v46, v47, v48);
    goto LABEL_25;
  }

  v16 = openat(a1, a2, 1537, 420);
  *v15 = v16;
  if (v16 < 0)
  {
    v41 = *__error();
    v54 = a2;
    v39 = "%s";
    v40 = 766;
    goto LABEL_24;
  }

  v17 = v16;
  if ((a4 & 8) != 0 && fcntl(v16, 48, 1))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 774, 29, "Warning: F_NOCACHE failed: %s\n", v18, v19, v20, a2);
  }

  if ((a4 & 2) != 0 && fcntl(v17, 68, 1) == -1)
  {
    v21 = __error();
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 783, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v22, v23, v24, *v21);
  }

  if (a3 && (a4 & 4) != 0 && a6 != -1)
  {
    if ((a4 & 0x80) != 0)
    {
      v25 = 6;
    }

    else
    {
      v25 = 4;
    }

    v26 = ParallelCompressionAFSCStreamOpen(v17, a3, a6, v25);
    *(v15 + 3) = v26;
    if (!v26)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 795, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", v27, v28, a2);
      ParallelCompressionAFSCStreamClose(0, v29, v30, v31, v32, v33, v34, v35);
      close(v17);
LABEL_25:
      free(v15);
      return 0;
    }
  }

  else if ((a4 & 0x40) != 0)
  {
    v50 = fpathconf(v17, 27);
    if (v50 >= 1)
    {
      v15[10] = 1;
      if (v50 == 4096)
      {
        v15[18] = 4096;
      }

      else
      {
        v51 = 0x10000;
        if (v50 < 0x10000)
        {
          v51 = v50;
        }

        v52 = 1024;
        do
        {
          v53 = v52;
          v52 *= 2;
        }

        while (v53 < v51);
        v15[18] = v53;
      }
    }
  }

  return v15;
}

uint64_t sub_1000FEEB8(unsigned int *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a2;
  if (*(a1 + 2))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 863, 29, "OArchiveFileStream didn't receive enough data before being destroyed\n", a6, a7, a8, v27);
  }

  ParallelCompressionAFSCStreamClose(*(a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  if ((*a1 & 0x80000000) != 0)
  {
    v13 = 0;
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(a1 + 7))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 8);
      while (fcntl(*a1, 99, v15 + v12) != -1)
      {
        v15 = *(a1 + 8);
        v13 += *(v15 + v12 + 16);
        ++v14;
        v12 += 24;
        if (v14 >= *(a1 + 7))
        {
          goto LABEL_14;
        }
      }

      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 875, 29, "F_PUNCHHOLE failed", v16, v17, v18, v27);
    }

    else
    {
      v13 = 0;
    }

LABEL_14:
    if (a1[1])
    {
      v27 = 0;
      if (fcntl(*a1, 51) == -1)
      {
        v20 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 883, 29, *v20, "Final FULLSYNC", v21, v22, 0);
      }
    }

    v19 = *a1;
    if (!v10)
    {
      if (close(*a1))
      {
        v23 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 890, 29, *v23, "close", v24, v25, v27);
      }

      v19 = 0xFFFFFFFFLL;
      *a1 = -1;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 4) - v13;
  }

  if (a4)
  {
    *a4 = v13;
  }

  free(*(a1 + 8));
  free(a1);
  return v19;
}

uint64_t sub_1000FF09C(uint64_t a1, char *__buf, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  v11 = a3;
  if (a3)
  {
    v9 = 0;
    v13 = *(a1 + 16);
    while (v13)
    {
      if (v13 >= v11)
      {
        v13 = v11;
      }

      if (v13 >= 0x40000000)
      {
        v14 = 0x40000000;
      }

      else
      {
        v14 = v13;
      }

      v15 = *(a1 + 24);
      if (v15)
      {
        v16 = ParallelCompressionAFSCStreamWrite(v15, __buf, v14, a4, a5, a6, a7, a8);
        v17 = v16;
        if (v16 < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 955, 29, 0, "ParallelCompressionAFSCStreamWrite failed with status %d", a7, a8, v16);
          return -1;
        }
      }

      else
      {
        if ((*a1 & 0x80000000) != 0)
        {
          return -1;
        }

        v17 = write(*a1, __buf, v14);
        if (v17 < 0)
        {
          v42 = *__error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 960, 29, v42, "write", v43, v44, v45);
          return -1;
        }
      }

      if (*(a1 + 40))
      {
        v18 = 0;
        LODWORD(v19) = *(a1 + 72);
        v20 = *(a1 + 76);
        do
        {
          v21 = (v19 - v20);
          if (v18 + v21 <= v14)
          {
            v22 = v21;
          }

          else
          {
            v22 = (v14 - v18);
          }

          v23 = &__buf[v18];
          v24 = &__buf[v18 + v22];
          if ((&__buf[v18] & 7) != 0 && v22)
          {
            v25 = &__buf[v18 + 1];
            while (!*v23)
            {
              if (++v23 < v24)
              {
                if ((v25++ & 7))
                {
                  continue;
                }
              }

              goto LABEL_29;
            }

LABEL_35:
            v28 = 1;
          }

          else
          {
LABEL_29:
            while (v23 + 8 <= v24)
            {
              v27 = *v23;
              v23 += 8;
              if (v27)
              {
                goto LABEL_35;
              }
            }

            while (v23 < v24)
            {
              if (*v23)
              {
                goto LABEL_35;
              }

              ++v23;
            }

            v28 = 0;
          }

          v29 = *(a1 + 88) | v28;
          *(a1 + 88) = v29;
          v20 += v22;
          *(a1 + 76) = v20;
          if (v20 == v19)
          {
            if (!v29)
            {
              v30 = *(a1 + 80);
              v31 = *(a1 + 56);
              if (v31 && (v32 = *(a1 + 64) + 24 * v31, v33 = *(v32 - 8), v33 + *(v32 - 16) == v30))
              {
                *(v32 - 8) = v33 + v19;
              }

              else
              {
                v34 = *(a1 + 48);
                if (v31 >= v34)
                {
                  v35 = v34 + (v34 >> 1);
                  v36 = v34 == 0;
                  v37 = 32;
                  if (!v36)
                  {
                    v37 = v35;
                  }

                  *(a1 + 48) = v37;
                  v38 = reallocf(*(a1 + 64), 24 * v37);
                  *(a1 + 64) = v38;
                  if (!v38)
                  {
                    *(a1 + 48) = 0;
                    *(a1 + 56) = 0;
                    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 994, 29, "malloc holes failed", a6, a7, a8, v45);
                  }
                }

                v39 = *(a1 + 56);
                if (v39 >= *(a1 + 48))
                {
                  LODWORD(v19) = *(a1 + 72);
                }

                else
                {
                  v40 = *(a1 + 64);
                  *(a1 + 56) = v39 + 1;
                  v41 = (v40 + 24 * v39);
                  *v41 = 0;
                  v41[1] = 0;
                  v41[1] = v30;
                  v41[2] = 0;
                  v19 = *(a1 + 72);
                  v41[2] = v19;
                }
              }
            }

            v20 = 0;
            *(a1 + 80) += v19;
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
          }

          v18 += v22;
        }

        while (v18 < v14);
      }

      __buf += v17;
      v9 += v17;
      v13 = *(a1 + 16) - v17;
      *(a1 + 16) = v13;
      v11 -= v17;
      if (!v11)
      {
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 32) += v9;
  return v9;
}

uint64_t sub_1000FF3A4(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void *sub_1000FF3B4(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = 0;
    v4[2] = a2;
    v4[3] = 0;
  }

  else
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OMemStreamCreate", 1050, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

uint64_t sub_1000FF42C(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  memcpy(*a1, a2, v4);
  *a1 += v4;
  v5 = *(a1 + 24) + v4;
  *(a1 + 16) -= v4;
  *(a1 + 24) = v5;
  return v4;
}

void *sub_1000FF498(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = 0;
    v4[2] = a2;
    v4[3] = 0;
  }

  else
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMemStreamCreate", 1112, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

size_t sub_1000FF510(uint64_t a1, void *__dst, size_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  memcpy(__dst, *a1, v4);
  *a1 += v4;
  v5 = *(a1 + 24) + v4;
  *(a1 + 16) -= v4;
  *(a1 + 24) = v5;
  return v4;
}

uint64_t sub_1000FF584(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

char *sub_1000FF594(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    v10 = sub_100120834(a4);
    *v9 = v10;
    if (v10)
    {
      *(v9 + 1) = a1;
      *(v9 + 2) = a2;
      *(v9 + 3) = a3;
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1182, 29, 0, "creating internal buffer", v11, v12, v24);
      sub_1000FF670(v9, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }
  }

  else
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1176, 29, *v13, "malloc", v14, v15, v24);
  }

  return v9;
}

void sub_1000FF670(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100120EF4(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3], a5, a6, a7, a8);
    sub_100120944(*a1);

    free(a1);
  }
}

uint64_t sub_1000FF6C8(unint64_t **a1, char *a2, unint64_t a3)
{
  if (a1 && !*(a1 + 8))
  {
    v6 = a3;
    if (!a3)
    {
      return 0;
    }

    v4 = 0;
    while (1)
    {
      v8 = sub_1001209E4(*a1);
      if (!v8)
      {
        if (sub_100120EF4(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3], v9, v10, v11, v12) < 0)
        {
          return -1;
        }

        v8 = sub_1001209E4(*a1);
      }

      v13 = v6 >= v8 ? v8 : v6;
      if (sub_100120B6C(*a1, v13, a2) < 0)
      {
        break;
      }

      a2 += v13;
      v4 += v13;
      v6 -= v13;
      if (!v6)
      {
        return v4;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamWrite", 1221, 29, 0, "MemBufferFillFromBuffer failed", v14, v15, v16);
  }

  return -1;
}

uint64_t sub_1000FF7A8(uint64_t result)
{
  if (result)
  {
    *(result + 32) = 1;
  }

  return result;
}

_OWORD *sub_1000FF7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 64);
  v9 = v8;
  if (v8)
  {
    *v8 = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = a1;
    *(v8 + 1) = a2;
    *(v8 + 2) = a3;
    *(v8 + 4) = a4;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0;
  }

  else
  {
    v10 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamCreate", 1270, 29, *v10, "malloc", v11, v12, v14);
  }

  return v9;
}

uint64_t sub_1000FF854(uint64_t a1, char *__dst, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 24))
  {
    return -1;
  }

  v10 = a4;
  v12 = a4 + a3;
  v13 = __dst;
  if (a4 + a3 <= a4)
  {
    return v13 - __dst;
  }

  v14 = a1 + 64;
  v13 = __dst;
  while (1)
  {
    v15 = *(a1 + 56);
    if (v10 < v15)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1301, 29, 0, "history stream access out of range, requested %llu, available %llu", a7, a8, v10);
      return -1;
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = v17 + v15;
    if (v10 >= v17 + v15)
    {
      break;
    }

    if (v18 >= v12)
    {
      v18 = v12;
    }

    v19 = v10 - v15 + v16;
    v20 = *(a1 + 32);
    if (v19 >= v20)
    {
      v21 = *(a1 + 32);
    }

    else
    {
      v21 = 0;
    }

    v22 = v19 - v21;
    v23 = v18 + v16 - (v15 + v21);
    if (v23 <= v20)
    {
      v26 = v23 - v22;
      memcpy(v13, (v14 + v22), v23 - v22);
      v13 += v26;
    }

    else
    {
      v24 = v20 - v22;
      memcpy(v13, (v14 + v22), v20 - v22);
      v25 = &v13[v24];
      v26 = v24 + v10;
      v10 = v23 - *(a1 + 32);
      memcpy(v25, (a1 + 64), v10);
      v13 = &v25[v10];
    }

    v10 += v26;
LABEL_32:
    if (v10 >= v12)
    {
      return v13 - __dst;
    }
  }

  v27 = v16 + v17;
  v28 = *(a1 + 32);
  if (v27 >= v28)
  {
    v29 = *(a1 + 32);
  }

  else
  {
    v29 = 0;
  }

  v30 = v27 - v29;
  v31 = v28 - (v27 - v29);
  if (v12 - v18 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v12 - v18;
  }

  v33 = (*a1)(*(a1 + 16), v14 + v30, v32);
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (!v33)
    {
      return v13 - __dst;
    }

    v34 = *(a1 + 48) + v33;
    *(a1 + 48) = v34;
    v35 = *(a1 + 32);
    v36 = v34 > v35;
    v37 = v34 - v35;
    if (v36)
    {
      if (v30 + v33 >= v35)
      {
        v38 = *(a1 + 32);
      }

      else
      {
        v38 = 0;
      }

      v39 = *(a1 + 56);
      *(a1 + 48) = v35;
      *(a1 + 56) = v37 + v39;
      *(a1 + 40) = v30 + v33 - v38;
    }

    goto LABEL_32;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1347, 29, 0, "read failed", a7, a8, v40);
  return -1;
}

uint64_t sub_1000FFA4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      result = v2(*(result + 16));
    }

    *(v1 + 24) = 1;
  }

  return result;
}

_DWORD *ParallelCompressionAFSCStreamOpen(int a1, unint64_t a2, int a3, int a4)
{
  v10 = calloc(1uLL, 0x78uLL);
  if (!v10)
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", 163, 86, *v13, "malloc", v14, v15, v33);
LABEL_46:
    free(v10);
    return 0;
  }

  if (!a2)
  {
    v11 = "File too small for AFSC";
    v12 = 167;
    goto LABEL_7;
  }

  if (a2 >= 0xFA000001)
  {
    v11 = "File too large for AFSC";
    v12 = 168;
LABEL_7:
    v16 = 0;
LABEL_45:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", v12, 86, v16, v11, v8, v9, v33);
    free(*(v10 + 5));
    free(*(v10 + 8));
    free(*(v10 + 10));
    free(*(v10 + 11));
    goto LABEL_46;
  }

  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = 4;
  }

  v18 = a3 - 3;
  if (a3 - 3) <= 0xA && ((0x551u >> v18))
  {
    v17 = dword_10037C22C[v18];
  }

  if (v17 <= 9)
  {
    if (v17 == 4)
    {
      v19 = 1285;
      goto LABEL_25;
    }

    if (v17 == 8)
    {
      v19 = 2304;
      v20 = 6;
      goto LABEL_26;
    }

    goto LABEL_41;
  }

  if (v17 == 10)
  {
    v19 = 0;
    v21 = 0;
    v20 = -52;
    goto LABEL_28;
  }

  if (v17 == 12)
  {
    v19 = COMPRESSION_LZFSE;
    goto LABEL_25;
  }

  if (v17 != 14)
  {
LABEL_41:
    v33 = v17;
    v11 = "invalid compression type %d";
    v12 = 192;
    goto LABEL_7;
  }

  v19 = COMPRESSION_LZBITMAP;
LABEL_25:
  v20 = -1;
LABEL_26:
  v21 = compression_encode_scratch_buffer_size(v19);
  v22 = compression_decode_scratch_buffer_size(v19);
  if (v21 <= v22)
  {
    v21 = v22;
  }

LABEL_28:
  *v10 = a1;
  v23 = (a2 + 0xFFFF) >> 16;
  *(v10 + 1) = a2;
  v10[4] = v17;
  v10[5] = v19;
  *(v10 + 24) = v20;
  v10[7] = a4;
  v10[8] = v23;
  v24 = calloc(v23 + 1, 4uLL);
  *(v10 + 5) = v24;
  if (!v24)
  {
    v16 = *__error();
    v11 = "malloc";
    v12 = 210;
    goto LABEL_45;
  }

  v25 = v24;
  *(v10 + 3) = xmmword_10037C1E0;
  v26 = malloc(0x100000uLL);
  *(v10 + 8) = v26;
  if (!v26)
  {
    v16 = *__error();
    v11 = "malloc";
    v12 = 214;
    goto LABEL_45;
  }

  *(v10 + 9) = 0;
  v27 = malloc(0x10000uLL);
  *(v10 + 10) = v27;
  if (!v27)
  {
    v16 = *__error();
    v11 = "malloc";
    v12 = 217;
    goto LABEL_45;
  }

  if (v21)
  {
    v28 = malloc(v21);
    *(v10 + 11) = v28;
    if (!v28)
    {
      v16 = *__error();
      v11 = "malloc";
      v12 = 221;
      goto LABEL_45;
    }
  }

  v29 = 2;
  if (v10[4] == 4)
  {
    v29 = 3;
  }

  v30 = 4;
  if (v10[4] == 4)
  {
    v30 = 264;
  }

  v31 = (v10[8] << v29) + v30;
  if (HIDWORD(v31))
  {
    v11 = "File too large for AFSC";
    v12 = 235;
    goto LABEL_7;
  }

  v10[27] = v31;
  *v25 = v31;
  v10[26] = 0;
  *(v10 + 12) = 0;
  v10[28] = 0;
  return v10;
}

uint64_t ParallelCompressionAFSCStreamWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 96) + a3 <= *(a1 + 8))
  {
    if (!a3)
    {
      return 0;
    }

    v10 = 0;
    v14 = *(a1 + 56);
    while (v14 + 65537 <= *(a1 + 48) || (sub_100100000(a1) & 0x80000000) == 0)
    {
      v15 = *(a1 + 72);
      if (0x10000 - v15 + v10 <= a3)
      {
        v16 = 0x10000 - v15;
      }

      else
      {
        v16 = a3 - v10;
      }

      if (v16 == 0x10000)
      {
        v17 = (a2 + v10);
      }

      else
      {
        v17 = *(a1 + 80);
        memcpy(&v17[v15], (a2 + v10), v16);
        v15 = *(a1 + 72);
      }

      v18 = *(a1 + 96) + v16;
      *(a1 + 96) = v18;
      v10 += v16;
      v19 = v15 + v16;
      *(a1 + 72) = v15 + v16;
      if ((v15 + v16) >> 16 || v18 >= *(a1 + 8))
      {
        v21 = *(a1 + 56);
        v20 = *(a1 + 64);
        v22 = (v20 + v21);
        v23 = *(a1 + 20);
        v24 = v19 < 0x78 || v23 == 0;
        if (v24 || (v25 = compression_encode_buffer((v20 + v21), 0x10000uLL, v17, v19, *(a1 + 88), v23)) == 0 || (*(a1 + 28) & 1) != 0 && (v26 = v25 + (v25 >> 6), v25 = v26 + 32, v26 == -32) || v25 > *(a1 + 72) + 1)
        {
          *v22 = *(a1 + 24);
          memcpy(v22 + 1, v17, *(a1 + 72));
          v25 = *(a1 + 72) + 1;
        }

        *(a1 + 72) = 0;
        v14 = *(a1 + 56) + v25;
        *(a1 + 56) = v14;
        *(*(a1 + 40) + 4 * ++*(a1 + 104)) = *(*(a1 + 40) + 4 * *(a1 + 104)) + v25;
        if (v10 < a3)
        {
          continue;
        }
      }

      return v10;
    }

    v8 = "update resource fork";
    v9 = 270;
  }

  else
  {
    v8 = "too many bytes received";
    v9 = 262;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", v9, 86, 0, v8, a7, a8, v28);
  return -1;
}

uint64_t sub_100100000(uint64_t a1)
{
  v2 = fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), *(a1 + 56), *(a1 + 108), 0);
  if (v2 < 0)
  {
    v3 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "flushToResourceFork", 142, 86, *v3, "fsetxattr resource fork", v4, v5, v8);
  }

  v6 = *(a1 + 108) + *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 108) = v6;
  *(a1 + 112) = 1;
  return (v2 >> 31);
}

uint64_t ParallelCompressionAFSCStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  memset(&v42, 0, sizeof(v42));
  if (*(a1 + 96) >= *(a1 + 8) && !*(a1 + 72))
  {
    v14 = *(a1 + 112);
    v15 = *(a1 + 20);
    if (v15)
    {
      v15 = (*(a1 + 28) >> 1) & 1;
    }

    if (*(a1 + 32) > 1u)
    {
      v15 = 1;
    }

    if ((*(a1 + 56) - 3569) < 0xFFFFFFFFFFFFF1FFLL)
    {
      v15 = 1;
    }

    if (v15 | v14)
    {
      if ((sub_100100000(a1) & 0x80000000) != 0)
      {
        v9 = "update resource fork";
        v10 = 341;
        goto LABEL_5;
      }

      v14 = *(a1 + 112);
    }

    v16 = (__PAIR64__(*(a1 + 16), v14) - 1) >> 32;
    v17 = *(a1 + 8);
    v18 = *(a1 + 80);
    *v18 = 1668116582;
    *(v18 + 4) = v16;
    *(v18 + 8) = v17;
    v19 = 16;
    *(a1 + 72) = 16;
    if (!*(a1 + 112))
    {
      memcpy((*(a1 + 80) + 16), *(a1 + 64), *(a1 + 56));
      v19 = *(a1 + 72) + *(a1 + 56);
      *(a1 + 72) = v19;
      *(a1 + 56) = 0;
    }

    if (fsetxattr(*a1, "com.apple.decmpfs", *(a1 + 80), v19, 0, 0) < 0)
    {
      v11 = *__error();
      v9 = "fsetxattr decmpfs";
      v10 = 363;
      goto LABEL_6;
    }

    if (!*(a1 + 112))
    {
      v21 = 0;
      goto LABEL_36;
    }

    if (*(a1 + 16) == 4)
    {
      v20 = *(a1 + 64);
      *v20 = xmmword_10037C1F8;
      *(v20 + 16) = unk_10037C208;
      *(v20 + 32) = xmmword_10037C218;
      *(v20 + 48) = 0;
      *(a1 + 56) = 50;
      if ((sub_100100000(a1) & 0x80000000) != 0)
      {
        v9 = "update resource fork";
        v10 = 373;
        goto LABEL_5;
      }

      v21 = *(a1 + 108);
      if (*(a1 + 16) == 4)
      {
        v22 = *(a1 + 32);
        if ((8 * v22) + 264 > *(a1 + 48))
        {
          LOBYTE(v41) = 8 * v22 + 8;
          v9 = "File a radar to increase obuf_capacity, sz=%zu";
          v10 = 382;
          goto LABEL_5;
        }

        v43 = 0u;
        v44 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v57 = 0u;
        v32 = *(a1 + 64);
        *v32 = 0x10000;
        *(v32 + 4) = vrev32_s8(vadd_s32(vdup_n_s32(v21), 0xFFFFFECEFFFFFFCELL));
        *(v32 + 12) = 838860800;
        v33 = v44;
        *(v32 + 16) = v43;
        *(v32 + 32) = v33;
        v34 = v48;
        *(v32 + 80) = v47;
        *(v32 + 96) = v34;
        v35 = v46;
        *(v32 + 48) = v45;
        *(v32 + 64) = v35;
        v36 = v52;
        *(v32 + 144) = v51;
        *(v32 + 160) = v36;
        v37 = v50;
        *(v32 + 112) = v49;
        *(v32 + 128) = v37;
        v38 = v56;
        *(v32 + 208) = v55;
        *(v32 + 224) = v38;
        v39 = v54;
        *(v32 + 176) = v53;
        *(v32 + 192) = v39;
        *(v32 + 240) = v57;
        *(v32 + 256) = bswap32(v21 - 310);
        *(v32 + 260) = v22;
        v23 = 264;
        *(a1 + 56) = 264;
        if (*(a1 + 32))
        {
          v40 = 0;
          v23 = 264;
          do
          {
            *(*(a1 + 64) + v23) = (*(*(a1 + 40) + 4 * v40) - 260) | ((*(*(a1 + 40) + 4 * v40 + 4) - *(*(a1 + 40) + 4 * v40)) << 32);
            ++v40;
            v23 = *(a1 + 56) + 8;
            *(a1 + 56) = v23;
          }

          while (v40 < *(a1 + 32));
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = *(a1 + 108);
    }

    v23 = (4 * *(a1 + 32) + 4);
    if (*(a1 + 48) < v23)
    {
      v41 = 4 * *(a1 + 32) + 4;
      v9 = "File a radar to increase obuf_capacity, sz=%zu";
      v10 = 408;
      goto LABEL_5;
    }

    memcpy(*(a1 + 64), *(a1 + 40), (4 * *(a1 + 32) + 4));
    *(a1 + 56) = v23;
LABEL_35:
    if (fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v23, 0, 0) < 0)
    {
      v11 = *__error();
      v9 = "fsetxattr resource fork header";
      v10 = 418;
      goto LABEL_6;
    }

LABEL_36:
    if (ftruncate(*a1, 0))
    {
      v11 = *__error();
      v9 = "ftruncate";
      v10 = 422;
      goto LABEL_6;
    }

    if ((*(a1 + 28) & 4) != 0 || !*(a1 + 112) || 93 * *(a1 + 8) / 0x64uLL >= v21)
    {
      if (fstat(*a1, &v42))
      {
        v11 = *__error();
        v9 = "fstat";
        v10 = 465;
        goto LABEL_6;
      }

      if (fchflags(*a1, v42.st_flags | 0x20) < 0)
      {
        v11 = *__error();
        v9 = "fchflags UF_COMPRESSED";
        v10 = 466;
        goto LABEL_6;
      }
    }

    else
    {
      if (*(a1 + 32))
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = (*(a1 + 40) + 4 * v24);
          v27 = v26[1];
          v28 = v27 - *v26;
          if (v27 == *v26 || v28 >= 0x10002)
          {
            v9 = "Invalid chunk size";
            v10 = 437;
            goto LABEL_5;
          }

          if (fgetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v27 - *v26, *v26, 32) != v28)
          {
            v9 = "reading chunk";
            v10 = 440;
            goto LABEL_5;
          }

          v30 = *(a1 + 64);
          if (*v30 == *(a1 + 24))
          {
            v31 = (v28 - 1);
            memcpy(*(a1 + 80), v30 + 1, v31);
          }

          else
          {
            v31 = compression_decode_buffer(*(a1 + 80), 0x10000uLL, v30, v28, *(a1 + 88), *(a1 + 20));
          }

          if (v31 != 0x10000)
          {
            if (!v31)
            {
              v9 = "Decompression";
              v10 = 451;
              goto LABEL_5;
            }

            if (v31 + v25 != *(a1 + 8))
            {
              break;
            }
          }

          if (pwrite(*a1, *(a1 + 80), v31, v25) != v31)
          {
            v9 = "writing chunk";
            v10 = 454;
            goto LABEL_5;
          }

          ++v24;
          v25 += v31;
          if (v24 >= *(a1 + 32))
          {
            goto LABEL_56;
          }
        }

        v9 = "Invalid uncompressed chunk size";
        v10 = 452;
        goto LABEL_5;
      }

LABEL_56:
      if (fremovexattr(*a1, "com.apple.ResourceFork", 32) < 0)
      {
        v11 = *__error();
        v9 = "Removing xattr";
        v10 = 459;
        goto LABEL_6;
      }

      if (fremovexattr(*a1, "com.apple.decmpfs", 32) < 0)
      {
        v11 = *__error();
        v9 = "Removing xattr";
        v10 = 460;
        goto LABEL_6;
      }
    }

    v12 = 0;
    goto LABEL_7;
  }

  v9 = "not enough bytes received";
  v10 = 325;
LABEL_5:
  v11 = 0;
LABEL_6:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamClose", v10, 86, v11, v9, a7, a8, v41);
  v12 = 0xFFFFFFFFLL;
LABEL_7:
  free(*(a1 + 40));
  free(*(a1 + 64));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(a1);
  return v12;
}

uint64_t ParallelCompressionAFSCGetMetadataFD(int a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  memset(&v24, 0, sizeof(v24));
  if (fstat(a1, &v24))
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 488, 86, *v8, "fstat", v9, v10, v23);
    v11 = 0;
LABEL_22:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if ((v24.st_flags & 0x20) != 0)
  {
    v11 = malloc(0x1000uLL);
    if (v11)
    {
      v13 = fgetxattr(a1, "com.apple.decmpfs", v11, 0x1000uLL, 0, 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v16 = "Missing decmpfs xattr";
        v17 = 504;
      }

      else if (v13 > 0xF)
      {
        if (*v11 == 1668116582)
        {
          v19 = *(v11 + 1);
          if (v19 > 0xE)
          {
            goto LABEL_27;
          }

          v20 = v11[1];
          if (((1 << v19) & 0x2A88) != 0)
          {
            v12 = 0;
            *a2 = v20;
            *a3 = v19;
            goto LABEL_5;
          }

          if (((1 << v19) & 0x5510) != 0)
          {
            *a2 = v20;
            *a3 = v19;
            v21 = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
            if ((v21 & 0x8000000000000000) != 0)
            {
              v16 = "Missing resource fork xattr";
              v17 = 532;
            }

            else
            {
              if (!HIDWORD(v21))
              {
                v12 = 0;
                *a4 = v21;
                goto LABEL_23;
              }

              v16 = "Invalid resource fork xattr";
              v17 = 533;
            }
          }

          else
          {
LABEL_27:
            v23 = *(v11 + 1);
            v16 = "Invalid compression type %u in decmpfs xattr";
            v17 = 524;
          }
        }

        else
        {
          v16 = "Invalid decmpfs xattr";
          v17 = 507;
        }
      }

      else
      {
        v16 = "Truncated decmpfs xattr";
        v17 = 505;
      }

      v18 = 0;
    }

    else
    {
      v18 = *__error();
      v16 = "malloc";
      v17 = 501;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", v17, 86, v18, v16, v14, v15, v23);
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 0;
  *a2 = v24.st_size;
  *a3 = -1;
LABEL_5:
  *a4 = 0;
LABEL_23:
  free(v11);
  return v12;
}

uint64_t ParallelCompressionAFSCGetMetadata(const char *a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 550, 86, *v13, "open %s", v14, v15, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    if ((ParallelCompressionAFSCGetMetadataFD(v8, a2, a3, a4) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 553, 86, 0, "retrieving AFSC metadata: %s", v10, v11, v7);
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 0;
    }

    close(v9);
  }

  return v12;
}

uint64_t ParallelCompressionAFSCFixupMetadata(const std::__fs::filesystem::path *a1, unsigned int a2, unsigned int a3)
{
  v178 = -1;
  v177 = 0;
  v176 = 0;
  memset(&v175, 0, sizeof(v175));
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  value[0] = 0;
  value[1] = 0;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 581, 86, 0, "Path too long: %s", v6, v7, a1);
LABEL_5:
    v17 = 0;
    v18 = 0;
LABEL_138:
    v44 = 0;
    v72 = 0;
    v74 = 0;
    v34 = -1;
    goto LABEL_139;
  }

  if (__strlcat_chk() >= 0x400)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 582, 86, 0, "Path too long: %s", v15, v16, a1);
    goto LABEL_5;
  }

  v18 = malloc(0x100000uLL);
  if (!v18)
  {
    v23 = *__error();
    v21 = "malloc";
    v22 = 586;
LABEL_137:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v22, 86, v23, v21, v13, v14, v155);
    v17 = 0;
    goto LABEL_138;
  }

  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 4;
  }

  if ((v19 + 1) > 0xF)
  {
    goto LABEL_135;
  }

  v20 = 1 << (v19 + 1);
  if ((v20 & 0x5511) != 0)
  {
    if (a3)
    {
      v155 = a3;
      v21 = "Invalid resource fork size request: %u";
      v22 = 605;
LABEL_136:
      v23 = 0;
      goto LABEL_137;
    }

    goto LABEL_16;
  }

  if ((v20 & 0xAA20) == 0)
  {
LABEL_135:
    v155 = v19;
    v21 = "Invalid compression type request %d";
    v22 = 608;
    goto LABEL_136;
  }

LABEL_16:
  if ((ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177) & 0x80000000) != 0)
  {
LABEL_134:
    v155 = a1;
    v21 = "obtain AFSC data: %s";
    v22 = 615;
    goto LABEL_136;
  }

  v24 = 0;
  v165 = 0;
  v25 = 0;
  v164 = (v18 + 66);
  v26 = vadd_s32(vdup_n_s32(a3), 0xFFFFFECEFFFFFFCELL);
  v27 = vrev32_s8(v26);
  position = v26.i32[0];
  v161 = bswap32(a3 - 310);
  v28 = (v19 - 4);
  v168 = 0x551u >> (v19 - 4);
  while (1)
  {
    v171 = v176;
    if (v176 >= 0xFA000001)
    {
      v21 = "Invalid AFSC data";
      v22 = 616;
      goto LABEL_136;
    }

    v170 = v24;
    if (v178 == v19)
    {
      if (!a3 || v177 == a3)
      {
        goto LABEL_155;
      }

      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      v158 = v28;
      v29 = 4;
      if (v19 > 0xE)
      {
        v32 = v19;
      }

      else
      {
        v30 = 1 << v19;
        if (((1 << v19) & 0x5510) != 0)
        {
          v31 = 6;
        }

        else
        {
          v31 = 4;
        }

        if ((v30 & 0x2A88) != 0)
        {
          v29 = 4;
        }

        else
        {
          v29 = v31;
        }

        if ((v30 & 0x2A88) != 0)
        {
          v32 = v19 + 1;
        }

        else
        {
          v32 = v19;
        }
      }

      v33 = open(a1, 0);
      v34 = v33;
      if (v33 < 0)
      {
        v138 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 660, 86, v138, "open: %s", v139, v140, a1);
      }

      else
      {
        if (!fstat(v33, &v175))
        {
          v35 = mkstemp(&__from);
          v36 = v35;
          if (v35 < 0)
          {
            v147 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 664, 86, *v147, "mkstemp", v148, v149, v155);
            v17 = 0;
            v44 = 0;
          }

          else
          {
            v162 = v25;
            v44 = ParallelCompressionAFSCStreamOpen(v35, v171, v32, v29);
            if (v44)
            {
              v166 = v19;
              v172 = v18;
              v45 = 0;
              v46 = 0;
              v47 = 0x100000;
              v48 = 0x100000;
              v49 = v171;
              while (1)
              {
                v50 = v49 >= v48 ? v48 : v49;
                if (v48 - 0x100000 >= v49)
                {
                  break;
                }

                v51 = v50 + v45;
                v52 = read(v34, v172, v50 + v45);
                if (v52 < 0)
                {
                  v123 = *__error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 675, 86, v123, "read: %s", v124, v125, a1);
                  goto LABEL_153;
                }

                if (v52 < v51)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 676, 86, 0, "truncated read: %s", v56, v57, a1);
LABEL_153:
                  v17 = 0;
LABEL_154:
                  v72 = 0;
                  v74 = 0;
                  v18 = v172;
                  goto LABEL_140;
                }

                v46 += 0x100000;
                v58 = ParallelCompressionAFSCStreamWrite(v44, v172, v51, v53, v54, v55, v56, v57);
                v48 += 0x100000;
                v45 -= 0x100000;
                v49 = v171;
                if (v171 >= v46)
                {
                  v59 = v46;
                }

                else
                {
                  v59 = v171;
                }

                v47 -= 0x100000;
                if (v58 < (v59 + v47))
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 678, 86, 0, "write to stream failed: %s", v42, v43, a1);
                  goto LABEL_153;
                }
              }

              if ((ParallelCompressionAFSCStreamClose(v44, v37, v38, v39, v40, v41, v42, v43) & 0x80000000) != 0)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 683, 86, 0, "Stream close error", v89, v90, v155);
                v17 = 0;
                v44 = 0;
                goto LABEL_154;
              }

              fchown(v36, v175.st_uid, v175.st_gid);
              fchmod(v36, v175.st_mode & 0xFFF);
              close(v34);
              close(v36);
              rename(&__from, a1, v91);
              v93 = v92;
              unlink(&__from);
              v18 = v172;
              v19 = v166;
              v28 = v158;
              v25 = v162;
              if ((v93 & 0x80000000) == 0)
              {
                goto LABEL_55;
              }

              v23 = *__error();
              v155 = a1;
              v21 = "rename: %s";
              v22 = 694;
              goto LABEL_137;
            }

            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 667, 86, 0, "creating compression stream %s", v42, v43, a1);
            v17 = 0;
          }

          v72 = 0;
          v74 = 0;
          goto LABEL_140;
        }

        v144 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 661, 86, v144, "stat: %s", v145, v146, a1);
      }

LABEL_150:
      v17 = 0;
      v44 = 0;
      v72 = 0;
      v74 = 0;
      goto LABEL_139;
    }

    v60 = open(a1, 9);
    v34 = v60;
    if (v60 < 0)
    {
      v132 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 629, 86, v132, "open %s", v133, v134, a1);
      goto LABEL_150;
    }

    if (write(v60, 0, 0) < 0)
    {
      v118 = *__error();
      v121 = "write";
      v122 = 630;
      goto LABEL_149;
    }

    if (close(v34) < 0)
    {
      v23 = *__error();
      v21 = "close";
      v22 = 631;
      goto LABEL_137;
    }

    v178 = -1;
    v177 = 0;
LABEL_55:
    if ((ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177) & 0x80000000) != 0)
    {
      v155 = a1;
      v21 = "obtain AFSC data: %s";
      v22 = 699;
      goto LABEL_136;
    }

    if (v178 != v19)
    {
      v21 = "Couldn't convert to requested compression type";
      v22 = 700;
      goto LABEL_136;
    }

    if (!a3)
    {
      goto LABEL_155;
    }

    v61 = v177;
    v62 = a3 - v177;
    if (a3 == v177)
    {
      goto LABEL_155;
    }

    if (a3 >= v177)
    {
      break;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 711, 86, "Can't shrink resource fork: %s (current %u, target %u)", v12, v13, v14, a1);
LABEL_61:
    if (v170)
    {
      v21 = "Second pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)";
      v155 = a1;
      v22 = 852;
      goto LABEL_136;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 859, 86, "First pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)", v12, v13, v14, a1);
    v63 = open(a1, 9);
    v34 = v63;
    if (v63 < 0)
    {
      v135 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 864, 86, v135, "open %s", v136, v137, a1);
      goto LABEL_150;
    }

    if (write(v63, 0, 0) < 0)
    {
      v118 = *__error();
      v121 = "write";
      v122 = 865;
      goto LABEL_149;
    }

    if (close(v34) < 0)
    {
      v23 = *__error();
      v21 = "close";
      v22 = 866;
      goto LABEL_137;
    }

    v178 = -1;
    v177 = 0;
    v64 = ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177);
    v24 = 1;
    if (v64 < 0)
    {
      goto LABEL_134;
    }
  }

  if (v28 > 0xA || (v168 & 1) == 0)
  {
    v155 = v19;
    v21 = "Invalid compression type %u";
    v22 = 722;
    goto LABEL_136;
  }

  v169 = dword_10037C258[v28];
  v65 = open(a1, 0);
  v34 = v65;
  if (v65 < 0)
  {
    v141 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 727, 86, v141, "open: %s", v142, v143, a1);
    goto LABEL_150;
  }

  if (fstat(v65, &v175))
  {
    v118 = *__error();
    v121 = "fstat";
    v122 = 728;
LABEL_149:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v122, 86, v118, v121, v119, v120, v155);
    goto LABEL_150;
  }

  if (fgetxattr(v34, "com.apple.decmpfs", value, 0x10uLL, 0, 32) != 16)
  {
    v118 = *__error();
    v121 = "Reading decmpfs";
    v122 = 729;
    goto LABEL_149;
  }

  if (fchflags(v34, v175.st_flags & 0xFFFFFFDF) < 0)
  {
    v118 = *__error();
    v121 = "fchflags UF_COMPRESSED";
    v122 = 730;
    goto LABEL_149;
  }

  v163 = v25;
  v167 = v19;
  v157 = (v171 + 0xFFFF) >> 16;
  v159 = v28;
  v66 = v61 + 0x100000;
  v67 = -v61;
  v68 = v61;
  while (1)
  {
    v69 = a3 >= v66 ? v66 : a3;
    if (v68 >= a3)
    {
      break;
    }

    v70 = v69 + v67;
    if (v68 == v61)
    {
      __memset_chk();
    }

    v71 = fsetxattr(v34, "com.apple.ResourceFork", v18, v70, v68, 0);
    v66 += 0x100000;
    v67 -= 0x100000;
    v68 += 0x100000;
    if (v71)
    {
      v118 = *__error();
      v121 = "Expanding resource fork";
      v122 = 738;
      goto LABEL_149;
    }
  }

  v72 = malloc(4 * v157 + 4);
  size = 4 * v157 + 4;
  v73 = malloc(size);
  v74 = v73;
  if (!v72 || !v73)
  {
    v150 = *__error();
    v153 = "malloc";
    v154 = 744;
    goto LABEL_187;
  }

  if (v167 != 4)
  {
    v83 = 4 * v157 + 4;
    if (fgetxattr(v34, "com.apple.ResourceFork", v72, size, 0, 32) != size)
    {
      v150 = *__error();
      v153 = "Reading chunk sizes";
      v154 = 763;
      goto LABEL_187;
    }

LABEL_99:
    v173 = v18;
    memcpy(v74, v72, v83);
    v74[v157] = v72[v157] + v62;
    v94 = (v171 + 0xFFFF) >> 16;
    while (v62 && v94)
    {
      v95 = v72[v94 - 1];
      v96 = v72[v94] - v95;
      if (fgetxattr(v34, "com.apple.ResourceFork", v173, v96, v95, 32) != v96)
      {
        v126 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 777, 86, *v126, "Reading chunk", v127, v128, v155);
        v17 = 0;
        v44 = 0;
        v36 = -1;
        v18 = v173;
        goto LABEL_140;
      }

      v97 = 0x10000 - v96;
      if (v169 == *v173 || v96 > 0x10000)
      {
        v97 = 0;
      }

      if (v62 >= v97)
      {
        v99 = v97;
      }

      else
      {
        v99 = v62;
      }

      if (v97)
      {
        bzero(v173 + v96, v99);
      }

      v100 = (v99 + v96);
      v101 = v74[v94] - v100;
      v74[v94 - 1] = v101;
      v62 -= v99;
      --v94;
      if (fsetxattr(v34, "com.apple.ResourceFork", v173, v100, v101, 0))
      {
        v129 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 791, 86, *v129, "Writing chunk", v130, v131, v155);
        v17 = 0;
        v44 = 0;
        v36 = -1;
        v18 = v173;
        goto LABEL_140;
      }
    }

    if (v167 == 4)
    {
      v102 = v192;
      v18 = v173;
      *(v173 + 51) = v191;
      *(v173 + 55) = v102;
      *(v173 + 59) = v193;
      v103 = v188;
      *(v173 + 35) = v187;
      *(v173 + 39) = v103;
      v104 = v190;
      *(v173 + 43) = v189;
      *(v173 + 47) = v104;
      v105 = v184;
      *(v173 + 19) = v183;
      *(v173 + 23) = v105;
      v106 = v186;
      *(v173 + 27) = v185;
      *(v173 + 31) = v106;
      v107 = v180;
      *(v173 + 3) = v179;
      *(v173 + 7) = v107;
      v108 = v182;
      *(v173 + 11) = v181;
      v25 = v163;
      *v173 = v163;
      *(v173 + 1) = v27;
      v109 = v194;
      *(v173 + 15) = v108;
      v173[63] = v109;
      v173[64] = v161;
      v173[65] = v165;
      if (v171)
      {
        if (v157 <= 1)
        {
          v110 = 1;
        }

        else
        {
          v110 = v157;
        }

        v111 = v74 + 1;
        v112 = *v74;
        v113 = v164;
        do
        {
          v114 = *v111++;
          *v113++ = (v112 - 260) | ((v114 - v112) << 32);
          v112 = v114;
          --v110;
        }

        while (v110);
      }

      if (fsetxattr(v34, "com.apple.ResourceFork", v173, 8 * v157 + 264, 0, 0))
      {
        v150 = *__error();
        v153 = "Writing resource fork header";
        v154 = 817;
        goto LABEL_187;
      }

      if (fsetxattr(v34, "com.apple.ResourceFork", &xmmword_10037C1F8, 0x32uLL, position, 0))
      {
        v150 = *__error();
        v153 = "Writing resource map";
        v154 = 820;
        goto LABEL_187;
      }
    }

    else
    {
      v18 = v173;
      v25 = v163;
      if (fsetxattr(v34, "com.apple.ResourceFork", v74, size, 0, 0))
      {
        v150 = *__error();
        v153 = "Writing chunk sizes";
        v154 = 827;
        goto LABEL_187;
      }
    }

    if (fsetxattr(v34, "com.apple.decmpfs", value, 0x10uLL, 0, 0))
    {
      v150 = *__error();
      v153 = "Writing decmpfs";
      v154 = 831;
      goto LABEL_187;
    }

    if (fchflags(v34, v175.st_flags | 0x20) < 0)
    {
      v150 = *__error();
      v153 = "fchflags UF_COMPRESSED";
      v154 = 832;
      goto LABEL_187;
    }

    close(v34);
    free(v72);
    free(v74);
    if ((ParallelCompressionAFSCGetMetadata(a1, &v176, &v178, &v177) & 0x80000000) == 0)
    {
      v19 = v167;
      if (v178 != v167)
      {
        v28 = v159;
        goto LABEL_61;
      }

      v28 = v159;
      if (v177 != a3)
      {
        goto LABEL_61;
      }

LABEL_155:
      if (v170)
      {
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 876, 86, "Second pass fixup succeeded: %s", v12, v13, v14, a1);
      }

      v44 = 0;
      v72 = 0;
      v74 = 0;
      v34 = -1;
      v17 = 1;
      goto LABEL_139;
    }

    v155 = a1;
    v21 = "obtain AFSC data: %s";
    v22 = 840;
    goto LABEL_136;
  }

  if (fgetxattr(v34, "com.apple.ResourceFork", v18, 8 * v157 + 264, 0, 32) == 8 * v157 + 264)
  {
    v75 = *v18;
    v76 = *(v18 + 55);
    v191 = *(v18 + 51);
    v192 = v76;
    v193 = *(v18 + 59);
    v194 = v18[63];
    v77 = *(v18 + 39);
    v187 = *(v18 + 35);
    v188 = v77;
    v78 = *(v18 + 47);
    v189 = *(v18 + 43);
    v190 = v78;
    v79 = *(v18 + 23);
    v183 = *(v18 + 19);
    v184 = v79;
    v80 = *(v18 + 31);
    v185 = *(v18 + 27);
    v186 = v80;
    v81 = *(v18 + 7);
    v179 = *(v18 + 3);
    v180 = v81;
    v82 = *(v18 + 15);
    v181 = *(v18 + 11);
    v182 = v82;
    v165 = v18[65];
    v163 = v75;
    if (v171)
    {
      v83 = 4 * v157 + 4;
      if (v157 <= 1)
      {
        v84 = 1;
      }

      else
      {
        v84 = v157;
      }

      v85 = v72 + 1;
      v86 = v164;
      do
      {
        v87 = *v86;
        v88 = *(v86++ + 1);
        v87 += 260;
        *(v85 - 1) = v87;
        *v85++ = v87 + v88;
        --v84;
      }

      while (v84);
    }

    else
    {
      v83 = 4 * v157 + 4;
    }

    goto LABEL_99;
  }

  v150 = *__error();
  v153 = "Reading chunk sizes";
  v154 = 749;
LABEL_187:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v154, 86, v150, v153, v151, v152, v155);
  v17 = 0;
  v44 = 0;
LABEL_139:
  v36 = -1;
LABEL_140:
  if ((ParallelCompressionAFSCStreamClose(v44, v8, v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 877, 86, 0, "Stream close error", v115, v116, v155);
    v17 = 0;
  }

  if ((v34 & 0x80000000) == 0)
  {
    close(v34);
  }

  if ((v36 & 0x80000000) == 0)
  {
    close(v36);
    unlink(&__from);
  }

  free(v18);
  free(v72);
  free(v74);
  if (v17)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ParallelCompressionAFSCCompress(const char *a1, int a2)
{
  v62 = 0;
  v61 = -1;
  if ((ParallelCompressionAFSCGetMetadata(a1, &v62, &v61, &v60) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 907, 86, 0, "looking up AFSC data: %s", v4, v5, a1);
    return 0xFFFFFFFFLL;
  }

  v6 = v62;
  if (!v62)
  {
    return 0;
  }

  if (v61 == -1)
  {
    if (!a2)
    {
      return 0;
    }

    v17 = malloc(0x10000uLL);
    if (v17)
    {
      v18 = open(a1, 2);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = v18;
        v20 = ParallelCompressionAFSCStreamOpen(v18, v6, 0, 0);
        if (v20)
        {
          v28 = v20;
          v29 = 0;
          v30 = 0;
          v31 = 0x10000;
          v32 = 0x10000;
          while (1)
          {
            if (v6 >= v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = v6;
            }

            if (v32 - 0x10000 >= v6)
            {
              v52 = 1;
              goto LABEL_43;
            }

            v34 = v33 + v29;
            v35 = read(v19, v17, v33 + v29);
            if (v35 < 0)
            {
              v53 = *__error();
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 950, 86, v53, "read: %s", v54, v55, a1);
              goto LABEL_42;
            }

            if (v34 != v35)
            {
              v59 = a1;
              v41 = "truncated read: %s";
              v42 = 951;
              goto LABEL_41;
            }

            v39 = ParallelCompressionAFSCStreamWrite(v28, v17, v34, v36, v37, v38, v26, v27);
            if (v39 < 0)
            {
              break;
            }

            v30 += 0x10000;
            v32 += 0x10000;
            v29 -= 0x10000;
            if (v6 >= v30)
            {
              v40 = v30;
            }

            else
            {
              v40 = v6;
            }

            v31 -= 0x10000;
            if (v40 + v31 != v39)
            {
              v59 = a1;
              v41 = "truncated write: %s";
              v42 = 954;
              goto LABEL_41;
            }
          }

          v59 = a1;
          v41 = "Stream write failed: %s";
          v42 = 953;
LABEL_41:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v42, 86, 0, v41, v26, v27, v59);
LABEL_42:
          v52 = 0;
LABEL_43:
          if ((ParallelCompressionAFSCStreamClose(v28, v21, v22, v23, v24, v25, v26, v27) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 956, 86, 0, "AFSC compression failed: %s", v56, v57, a1);
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 942, 86, 0, "creating AFSC stream: %s", v26, v27, a1);
        }

        v52 = 0;
LABEL_46:
        close(v19);
        if (v52)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0xFFFFFFFFLL;
        }

        goto LABEL_49;
      }

      v47 = *__error();
      v58 = a1;
      v50 = "open: %s";
      v51 = 940;
    }

    else
    {
      v47 = *__error();
      v50 = "malloc";
      v51 = 938;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v51, 86, v47, v50, v48, v49, v58);
    v16 = 0xFFFFFFFFLL;
LABEL_49:
    free(v17);
    return v16;
  }

  if (a2)
  {
    return 0;
  }

  v7 = open(a1, 9);
  if (v7 < 0)
  {
    v44 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 921, 86, v44, "open: %s", v45, v46, a1);
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = write(v7, 0, 0);
  if (v9 < 0)
  {
    v10 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 922, 86, *v10, "write: %s", v11, v12, a1);
  }

  if (close(v8) < 0)
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 923, 86, *v13, "close: %s", v14, v15, a1);
  }

  return v9 >> 63;
}

unsigned int *sub_1001021B4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xA8uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v8 = calloc(a1, 0xA8uLL);
    *(v7 + 1) = v8;
    if (v8)
    {
      v9 = *v7;
      v7[8] = 0;
      v7[9] = v9;
      v10 = calloc(v9, 4uLL);
      *(v7 + 5) = v10;
      if (v10)
      {
        if (pthread_mutex_init((v7 + 12), 0))
        {
          v14 = "SharedArrayInit: pthread_mutex_init failed\n";
          v15 = 56;
        }

        else
        {
          if (!pthread_cond_init((v7 + 28), 0))
          {
            v7[4] = -1;
            if (!*v7)
            {
              return v7;
            }

            v22 = 0;
            v23 = 0;
            while (1)
            {
              v24 = *(v7 + 1) + v22;
              *(v24 + 16) = v7;
              *(v24 + 8) = v23;
              *(v24 + 24) = *(a2 + 8 * v23);
              *(v24 + 32) = a3;
              *(v24 + 40) = 0;
              if (pthread_mutex_init((v24 + 48), 0) || pthread_cond_init((v24 + 112), 0))
              {
                v19 = "SemInit";
                v20 = 115;
                goto LABEL_12;
              }

              if ((sub_1000E766C(v24, sub_100102410, v24, 0) & 0x80000000) != 0)
              {
                break;
              }

              ++v23;
              v22 += 168;
              if (v23 >= *v7)
              {
                return v7;
              }
            }

            v19 = "Thread creation";
            v20 = 116;
            goto LABEL_12;
          }

          v14 = "SharedArrayInit: pthread_cond_init failed\n";
          v15 = 57;
        }
      }

      else
      {
        v14 = "SharedArrayInit: malloc failed\n";
        v15 = 55;
      }

      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v15, 0, v14, v11, v12, v13, v25);
      v19 = "SharedArrayInit";
      v20 = 104;
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }

    v16 = *__error();
    v19 = "malloc";
    v20 = 103;
  }

  else
  {
    v16 = *__error();
    v19 = "malloc";
    v20 = 98;
  }

LABEL_13:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolCreate", v20, 90, v16, v19, v17, v18, v25);
  sub_100102638(v7);
  return 0;
}

uint64_t sub_100102410(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 48)))
  {
LABEL_2:
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    while (1)
    {
      v13 = *(v2 + 32);
      v14 = *(v2 + 36);
      v15 = v13;
      if (v13 < v14)
      {
        *(*(v2 + 40) + 4 * v13) = v3;
        v15 = *(v2 + 32);
      }

      *(v2 + 32) = v15 + 1;
      if (!v15)
      {
        if (pthread_cond_broadcast((v2 + 112)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 48)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
        goto LABEL_3;
      }

      if (v13 >= v14)
      {
        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
        goto LABEL_3;
      }

      if (pthread_mutex_lock((a1 + 48)))
      {
        goto LABEL_21;
      }

      while (1)
      {
        v16 = *(a1 + 40);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 48)))
        {
          goto LABEL_21;
        }
      }

      *(a1 + 40) = v16 - 1;
      if (pthread_mutex_unlock((a1 + 48)))
      {
LABEL_21:
        v11 = "SemAcquire";
        v12 = 59;
        goto LABEL_22;
      }

      v17 = *(a1 + 160);
      if (v17 != -2)
      {
        if (v17 < 0)
        {
          return a1;
        }

        if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 72, 90, 0, "worker proc reported an error", v18, v19, v21);
          atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
        }
      }

      v3 = *(a1 + 8);
      if (pthread_mutex_lock((v2 + 48)))
      {
        goto LABEL_2;
      }
    }

    v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
    v8 = 122;
  }

LABEL_3:
  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v21);
  v11 = "SharedArrayPush";
  v12 = 56;
LABEL_22:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", v12, 90, 0, v11, v9, v10, v21);
  atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_100102638(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v7 = 1;
        goto LABEL_37;
      }

      v4 = 0;
      do
      {
        v5 = *v2;
        v2 += 21;
        if (v5)
        {
          ++v4;
        }

        --v3;
      }

      while (v3);
      if (v4)
      {
        v6 = 0;
        v7 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 12)))
          {
            v11 = 91;
            v12 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v11, 0, v12, v8, v9, v10, v33);
            v16 = -1;
          }

          else
          {
            while (1)
            {
              v13 = v1[8];
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 28), (v1 + 12)))
              {
                v11 = 94;
                v12 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v21 = v13 - 1;
            v1[8] = v21;
            v16 = *(*(v1 + 5) + 4 * v21);
            if (!pthread_mutex_unlock((v1 + 12)))
            {
              goto LABEL_17;
            }

            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v22, v23, v24, v33);
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 147, 90, 0, "SharedArrayPop", v14, v15, v34);
          v7 = 0;
LABEL_17:
          v17 = *(v1 + 1) + 168 * v16;
          *(v17 + 160) = -1;
          if (pthread_mutex_lock((v17 + 48)) || (v20 = *(v17 + 40), *(v17 + 40) = v20 + 1, !v20) && pthread_cond_broadcast((v17 + 112)) || pthread_mutex_unlock((v17 + 48)))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 155, 90, 0, "SemRelease", v18, v19, v33);
            v7 = 0;
          }

          if ((sub_1000E79CC(*v17) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 156, 90, 0, "joinThread", v25, v26, v33);
            v7 = 0;
          }

          *v17 = 0;
          if (++v6 == v4)
          {
            if (!*v1)
            {
              goto LABEL_37;
            }

            goto LABEL_33;
          }
        }
      }

      v7 = 1;
LABEL_33:
      v27 = 0;
      v28 = 112;
      do
      {
        v29 = (*(v1 + 1) + v28);
        if (!pthread_mutex_destroy(&v29[-2].__opaque[24]))
        {
          pthread_cond_destroy(v29);
        }

        ++v27;
        v28 += 168;
      }

      while (v27 < *v1);
LABEL_37:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v7 = 1;
    }

    if (!pthread_mutex_destroy((v1 + 12)) && !pthread_cond_destroy((v1 + 28)))
    {
      free(*(v1 + 5));
    }

    v32 = atomic_load(v1 + 40);
    if (v32 >= 1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 171, 90, 0, "Threads reported errors", v30, v31, v33);
      v7 = 0;
    }

    free(v1);
    if (v7)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100102924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) != -1)
  {
    v8 = "Missing call to RunWorker before GetWorker";
    v9 = 182;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", v9, 90, 0, v8, a7, a8, v20);
    return 0;
  }

  if (pthread_mutex_lock((a1 + 48)))
  {
    v14 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v15 = 91;
LABEL_10:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v15, 0, v14, v11, v12, v13, v20);
    v8 = "SharedArrayPop failed";
    v9 = 186;
    goto LABEL_11;
  }

  while (1)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 112), (a1 + 48)))
    {
      v14 = "SharedArrayPop: pthread_cond_wait failed\n";
      v15 = 94;
      goto LABEL_10;
    }
  }

  v17 = v16 - 1;
  *(a1 + 32) = v17;
  v18 = *(*(a1 + 40) + 4 * v17);
  if (pthread_mutex_unlock((a1 + 48)))
  {
    v14 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v15 = 98;
    goto LABEL_10;
  }

  *(a1 + 16) = v18;
  return *(*(a1 + 8) + 168 * v18 + 24);
}

uint64_t sub_100102A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8 == -1)
  {
    v13 = "Missing call to GetWorker before RunWorker";
    v14 = 199;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", v14, 90, 0, v13, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = -1;
  v9 = *(a1 + 8) + 168 * v8;
  v10 = *(a1 + 24);
  *(a1 + 24) = v10 + 1;
  *(v9 + 160) = v10;
  if (pthread_mutex_lock((v9 + 48)) || (v11 = *(v9 + 40), *(v9 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v9 + 112)) || (result = pthread_mutex_unlock((v9 + 48)), result))
  {
    v13 = "SemRelease failed";
    v14 = 211;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100102B28(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    v7 = 1;
    goto LABEL_30;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4;
    v4 += 21;
    if (v5)
    {
      ++v3;
    }

    --v1;
  }

  while (v1);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (pthread_mutex_lock((a1 + 12)))
      {
        v11 = 91;
        v12 = "SharedArrayPop: pthread_mutex_lock failed\n";
      }

      else
      {
        while (1)
        {
          v13 = a1[8];
          if (v13)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 28), (a1 + 12)))
          {
            v11 = 94;
            v12 = "SharedArrayPop: pthread_cond_wait failed\n";
            goto LABEL_15;
          }
        }

        a1[8] = v13 - 1;
        if (!pthread_mutex_unlock((a1 + 12)))
        {
          goto LABEL_16;
        }

        v11 = 98;
        v12 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      }

LABEL_15:
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v11, 0, v12, v8, v9, v10, v24);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 231, 90, 0, "SharedArrayPop", v14, v15, v25);
      v7 = 0;
LABEL_16:
      if (++v6 == v3)
      {
        if (!*a1)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }
  }

  v7 = 1;
LABEL_21:
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(a1 + 1);
    if (*(v18 + v16))
    {
      if ((v19 = v18 + v16, *(v18 + v16 + 160) = -2, pthread_mutex_lock((v18 + v16 + 48))) || (v22 = *(v19 + 40), *(v19 + 40) = v22 + 1, !v22) && pthread_cond_broadcast((v18 + v16 + 112)) || pthread_mutex_unlock((v19 + 48)))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 240, 90, 0, "SemRelease", v20, v21, v24);
        v7 = 0;
      }
    }

    ++v17;
    v16 += 168;
  }

  while (v17 < *a1);
LABEL_30:
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100102D50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*a2 < 0)
  {
    return 0;
  }

  v9 = a3;
  v12 = *(a1 + 8);
  v13 = (v12 + 56 * v8);
  if (*v13 > a3)
  {
    if ((sub_100102D50(a1, v13 + 3, a3) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 456, 107, 0, "treeDelete: %zd", v18, v19, v9);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  if (v13[1] <= a3)
  {
    if ((sub_100102D50(a1, v13 + 4, a3) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 463, 107, 0, "treeDelete: %zd", v18, v19, v9);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  v20 = v13[3];
  v21 = v13[4];
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (v21 < 0)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v12 + 56 * v21 + 48);
    }

    v23 = *(v12 + 56 * v20 + 48);
LABEL_15:
    if (v22 >= v23)
    {
      v24 = v12 + 56 * v8 + 32;
      if ((v21 & 0x8000000000000000) == 0)
      {
        do
        {
          v25 = v21;
          v21 = *(v12 + 56 * v21 + 24);
        }

        while ((v21 & 0x8000000000000000) == 0);
LABEL_29:
        v29 = *(v12 + 56 * v25);
        *v13 = v29;
        if ((sub_100102D50(a1, v24, v29) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 493, 107, 0, "treeDelete: %zd", v18, v19, v9);
          return 0xFFFFFFFFLL;
        }

LABEL_30:
        v30 = *(a1 + 8);
        v31 = v30 + 56 * v8;
        v32 = *(v31 + 24);
        if (v32 < 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = *(v30 + 56 * v32 + 48);
        }

        v34 = *(v31 + 32);
        if (v34 < 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(v30 + 56 * v34 + 48);
        }

        if (v35 > v33)
        {
          v33 = v35;
        }

        *(v31 + 48) = v33 + 1;
        if (v32 < 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = *(v30 + 56 * v32 + 40);
        }

        v37 = *(v31 + 8) - *v31 + v36;
        if (v34 < 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = *(v30 + 56 * v34 + 40);
        }

        *(v31 + 40) = v37 + v38;
        if ((sub_10010307C(a1, a2, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 499, 107, 0, "treeRebalance: %zd", v39, v40, v8);
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      v28 = v8;
      while (1)
      {
        v25 = *(v12 + 56 * v28 + 16);
        if (v25 < 0)
        {
          break;
        }

        v27 = *(v12 + 56 * v25 + 32) == v28;
        v28 = *(v12 + 56 * v28 + 16);
        if (!v27)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v24 = v12 + 56 * v8 + 24;
      if ((v20 & 0x8000000000000000) == 0)
      {
        do
        {
          v25 = v20;
          v20 = *(v12 + 56 * v20 + 32);
        }

        while ((v20 & 0x8000000000000000) == 0);
        goto LABEL_29;
      }

      v26 = v8;
      while (1)
      {
        v25 = *(v12 + 56 * v26 + 16);
        if (v25 < 0)
        {
          break;
        }

        v27 = *(v12 + 56 * v25 + 24) == v26;
        v26 = *(v12 + 56 * v26 + 16);
        if (!v27)
        {
          goto LABEL_29;
        }
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 490, 107, 0, "no nodePrev/Next: %zd", a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v22 = *(v12 + 56 * v21 + 48);
    goto LABEL_15;
  }

  result = 0;
  *(v12 + 56 * v8 + 16) = *(a1 + 24);
  *(a1 + 24) = v8;
  *a2 = -1;
  return result;
}

uint64_t sub_10010307C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v38 = v8;
  if (v8 < 0)
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = v11 + 56 * v8;
  v13 = *(v12 + 32);
  v14 = v13 < 0 ? 0 : *(v11 + 56 * v13 + 48);
  v15 = *(v12 + 24);
  v16 = v15 < 0 ? 0 : *(v11 + 56 * v15 + 48);
  v17 = v14 - v16;
  if ((v17 + 1) < 3)
  {
    return 0;
  }

  if (v17 == -2)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      v22 = v11 + 56 * v15;
      v23 = *(v22 + 32);
      v24 = v23 < 0 ? 0 : *(v11 + 56 * v23 + 48);
      v31 = *(v22 + 24);
      v32 = v31 < 0 ? 0 : *(v11 + 56 * v31 + 48);
      if (v24 > v32)
      {
        v37 = v15;
        if ((sub_100103F00(a1, &v37) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 360, 107, 0, "treeRotateLeft %zd", v33, v34, v37);
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v8 + 24) = v37;
      }
    }

    if ((sub_100103DD0(a1, &v38) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 364, 107, 0, "treeRotateRight %zd", v35, v36, v38);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_36;
  }

  if (v17 == 2)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v19 = v11 + 56 * v13;
      v20 = *(v19 + 32);
      v21 = v20 < 0 ? 0 : *(v11 + 56 * v20 + 48);
      v25 = *(v19 + 24);
      v26 = v25 < 0 ? 0 : *(v11 + 56 * v25 + 48);
      if (v21 < v26)
      {
        v37 = v13;
        if ((sub_100103DD0(a1, &v37) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 347, 107, 0, "treeRotateRight %zd", v27, v28, v37);
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v8 + 32) = v37;
      }
    }

    if ((sub_100103F00(a1, &v38) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 351, 107, 0, "treeRotateRight %zd", v29, v30, v38);
      return 0xFFFFFFFFLL;
    }

LABEL_36:
    result = 0;
    *a2 = v38;
    return result;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 366, 107, 0, "invalid imbalance: %d", a7, a8, v17);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100103308(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 2);
  v8 = a1[2];
  if (v8 < 0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v13 = (a1[1] + 56 * v8);
      v14 = *v13;
      if (*v13 >= a3)
      {
        v16 = 3;
        goto LABEL_6;
      }

      v15 = v13[1];
      if (v15 > a2)
      {
        break;
      }

      v16 = 4;
LABEL_6:
      v8 = v13[v16];
      if (v8 < 0)
      {
        return 0;
      }
    }

    if (v14 >= a2 && v15 <= a3)
    {
      break;
    }

    if (v14 >= a2)
    {
      *v13 = a3;
    }

    else
    {
      v13[1] = a2;
      if (v15 > a3 && (sub_100103440(a1, -1, v9, a3, v15, a6, a7, a8) & 0x80000000) != 0)
      {
        v19 = "treeAdd";
        v20 = 538;
        goto LABEL_22;
      }
    }

LABEL_19:
    result = 0;
    v8 = *v9;
    if (*v9 < 0)
    {
      return result;
    }
  }

  if ((sub_100102D50(a1, v9, v14, a4, v15, a6, a7, a8) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  v19 = "treeDeleteRangeWithPoint";
  v20 = 525;
LABEL_22:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeSub", v20, 107, 0, v19, a7, a8, v21);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100103440(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5 - a4;
  if (a5 <= a4)
  {
    return 0;
  }

  v13 = *a3;
  v51 = v13;
  if (v13 < 0)
  {
    v13 = a1[3];
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = a1[1];
      goto LABEL_5;
    }

    if (*a1)
    {
      v41 = 2 * *a1;
    }

    else
    {
      v41 = 32;
    }

    if (56 * v41 < 0x2000000001)
    {
      v42 = a1[1];
      v15 = realloc(v42, 56 * v41);
      if (v15)
      {
        a1[1] = v15;
        v43 = *a1;
        if (*a1 >= v41)
        {
          v13 = -1;
        }

        else
        {
          v44 = &v15[56 * v43 + 16];
          v45 = -1;
          do
          {
            *v44 = v45;
            v44 += 7;
            v45 = v43++;
          }

          while (v41 != v43);
          v13 = v43 - 1;
        }

        *a1 = v41;
LABEL_5:
        v16 = &v15[56 * v13];
        a1[3] = *(v16 + 2);
        *(v16 + 2) = a2;
        *(v16 + 3) = -1;
        *v16 = a4;
        *(v16 + 1) = a5;
        *(v16 + 12) = 1;
        *(v16 + 4) = -1;
        *(v16 + 5) = v8;
        v51 = v13;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_73:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 391, 107, 0, "nodeAlloc", a7, a8, v49);
        return 0xFFFFFFFFLL;
      }

      free(v42);
    }

    else
    {
      *__error() = 12;
    }

    a1[1] = 0;
    v46 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "nodeAlloc", 43, 107, *v46, "malloc", v47, v48, v49);
    goto LABEL_73;
  }

LABEL_6:
  v17 = a1[1];
  v18 = (v17 + 56 * v13);
  v19 = *v18;
  v20 = v18[3];
  if (v20 < 0)
  {
    v23 = 0x8000000000000000;
  }

  else
  {
    v21 = v18[3];
    do
    {
      v22 = v17 + 56 * v21;
      v21 = *(v22 + 32);
    }

    while ((v21 & 0x8000000000000000) == 0);
    v23 = *(v22 + 8);
  }

  if (v19 > a4 && v19 <= a5 && v23 < v19)
  {
    if (a4 <= v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = a4;
    }

    *v18 = v19;
  }

  v25 = v18[1];
  v26 = *(v17 + 56 * v13 + 32);
  if (v26 < 0)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    do
    {
      v27 = (v17 + 56 * v26);
      v26 = v27[3];
    }

    while ((v26 & 0x8000000000000000) == 0);
    v28 = *v27;
  }

  if (v25 < a5 && v25 >= a4 && v28 > v25)
  {
    if (v28 >= a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = v28;
    }

    *(v17 + 56 * v13 + 8) = v25;
  }

  if (v19 > a4)
  {
    if (v19 >= a5)
    {
      v29 = a5;
    }

    else
    {
      v29 = v19;
    }

    v50 = v20;
    if ((sub_100103440(a1, v13, &v50, a4, v29) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 418, 107, 0, "treeAdd: %zd", a7, a8, v50);
      return 0xFFFFFFFFLL;
    }

    v17 = a1[1];
    *(v17 + 56 * v13 + 24) = v50;
  }

  if (v25 < a5)
  {
    if (v25 <= a4)
    {
      v30 = a4;
    }

    else
    {
      v30 = v25;
    }

    v50 = *(v17 + 56 * v13 + 32);
    if ((sub_100103440(a1, v13, &v50, v30, a5) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 428, 107, 0, "treeAdd: %zd", a7, a8, v50);
      return 0xFFFFFFFFLL;
    }

    v17 = a1[1];
    *(v17 + 56 * v13 + 32) = v50;
  }

  v31 = v17 + 56 * v13;
  v32 = *(v31 + 24);
  if (v32 < 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v17 + 56 * v32 + 48);
  }

  v34 = *(v31 + 32);
  if (v34 < 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v17 + 56 * v34 + 48);
  }

  if (v35 > v33)
  {
    v33 = v35;
  }

  *(v31 + 48) = v33 + 1;
  if (v32 < 0)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(v17 + 56 * v32 + 40);
  }

  v37 = *(v31 + 8) - *v31 + v36;
  if (v34 < 0)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v17 + 56 * v34 + 40);
  }

  *(v31 + 40) = v37 + v38;
  if ((sub_10010307C(a1, &v51, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
  {
    result = 0;
    *a3 = v51;
    return result;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 434, 107, 0, "treeRebalance: %zd", v39, v40, v51);
  return 0xFFFFFFFFLL;
}

void *AAByteRangeCreate()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x20uLL, 0, 0x20uLL);
    v1[2] = -1;
    v1[3] = -1;
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeCreate", 551, 107, *v2, "malloc", v3, v4, v6);
    AAByteRangeDestroy(0);
  }

  return v1;
}

void AAByteRangeDestroy(void **a1)
{
  if (a1)
  {
    free(a1[1]);

    free(a1);
  }
}

void *AAByteRangeClone(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  if (!v2)
  {
    v6 = 563;
    goto LABEL_10;
  }

  memset_s(v2, 0x20uLL, 0, 0x20uLL);
  v3[2] = -1;
  v3[3] = -1;
  if ((*(a1 + 16) & 0x8000000000000000) == 0)
  {
    v4 = *a1;
    if (is_mul_ok(*a1, 0x38uLL) && 56 * v4 < 0x2000000001)
    {
      v5 = calloc(v4, 0x38uLL);
      v3[1] = v5;
      if (v5)
      {
        memcpy(v5, *(a1 + 8), 56 * *a1);
        *v3 = *a1;
        *(v3 + 1) = *(a1 + 16);
        return v3;
      }
    }

    else
    {
      *__error() = 12;
      v3[1] = 0;
    }

    v6 = 570;
LABEL_10:
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeClone", v6, 107, *v7, "malloc", v8, v9, v11);
    AAByteRangeDestroy(v3);
    return 0;
  }

  return v3;
}

uint64_t AAByteRangeAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    if ((sub_100103440(a1, -1, (a1 + 16), a2, a3, a6, a7, a8) & 0x80000000) != 0)
    {
      v8 = "addSegment";
      v9 = 595;
      goto LABEL_7;
    }

    return 0;
  }

  v8 = "Invalid segment bounds";
  v9 = 593;
LABEL_7:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeAdd", v9, 107, 0, v8, a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AAByteRangeSub(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    if ((a1[2] & 0x8000000000000000) != 0 || (sub_100103308(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = "subSegment";
    v10 = 612;
  }

  else
  {
    v9 = "Invalid segment bounds";
    v10 = 609;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeSub", v10, 107, 0, v9, a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AAByteRangeSizeAtOffset(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 < 0)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 8);
  while (1)
  {
    v6 = (v5 + 56 * v2);
    v7 = v6 + 3;
    if (a2 > *v6)
    {
      break;
    }

LABEL_9:
    v2 = *v7;
    if (*v7 < 0)
    {
      return result;
    }
  }

  v8 = *v7;
  if (v8 < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v5 + 56 * v8 + 40);
  }

  v10 = v9 + result;
  v11 = v6[1];
  if (v11 < a2)
  {
    result = v11 - *v6 + v10;
    v7 = v6 + 4;
    goto LABEL_9;
  }

  return a2 - *v6 + v10;
}

uint64_t AAByteRangeOffsetAtSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = *(a1 + 8);
    do
    {
      v4 = (v3 + 56 * v2);
      if (a2 > v4[5])
      {
        break;
      }

      v2 = v4[3];
      if (v2 < 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v3 + 56 * v2 + 40);
      }

      v6 = __OFSUB__(a2, v5);
      v7 = a2 - v5;
      if (!((v7 < 0) ^ v6 | (v7 == 0)))
      {
        v8 = v4[1] - *v4;
        a2 = v7 - v8;
        if (v7 <= v8)
        {
          return *v4 + v7;
        }

        v2 = v4[4];
      }
    }

    while ((v2 & 0x8000000000000000) == 0);
  }

  return -1;
}

uint64_t AAByteRangeFirst(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_100103CCC(a1, *(a1 + 16), a2);
  if (v7 < 0)
  {
    return -1;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  v10 = *(v9 + 56 * v7);
  while (1)
  {
    result = v8;
    v12 = v9 + 56 * v8;
    v13 = *(v12 + 8);
    v14 = *(v12 + 32);
    v15 = result;
    if (v14 < 0)
    {
      break;
    }

    do
    {
      v8 = v14;
      v14 = *(v9 + 56 * v14 + 24);
    }

    while ((v14 & 0x8000000000000000) == 0);
LABEL_8:
    if (*(v9 + 56 * v8) != v13)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v8 = *(v9 + 56 * v15 + 16);
    if (v8 < 0)
    {
      break;
    }

    v16 = *(v9 + 56 * v8 + 32) == v15;
    v15 = *(v9 + 56 * v15 + 16);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  *a3 = v10;
  *a4 = v13;
  return result;
}

uint64_t sub_100103CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = a2;
  v6 = *(a1 + 8);
  while (1)
  {
    v7 = (v6 + 56 * v4);
    if (*v7 > a3)
    {
      v8 = sub_100103CCC(a1, v7[3], a3);
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }
    }

    if (v7[1] > a3)
    {
      return v4;
    }

    v4 = v7[4];
    if (v4 < 0)
    {
      return -1;
    }
  }

  return v8;
}

uint64_t AAByteRangeNext(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 56 * a2 + 32);
  if (v5 < 0)
  {
    while (1)
    {
      result = *(v4 + 56 * a2 + 16);
      if (result < 0)
      {
        break;
      }

      v7 = *(v4 + 56 * result + 32) == a2;
      a2 = *(v4 + 56 * a2 + 16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    do
    {
      result = v5;
      v5 = *(v4 + 56 * v5 + 24);
    }

    while ((v5 & 0x8000000000000000) == 0);
LABEL_9:
    v8 = (v4 + 56 * result);
    *a3 = *v8;
    *a4 = v8[1];
  }

  return result;
}

uint64_t sub_100103DD0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = v3 + 56 * v2;
  v5 = *(v4 + 24);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3 + 56 * v5;
  v7 = *(v6 + 32);
  *(v6 + 32) = v2;
  *(v6 + 16) = *(v4 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  if (v7 < 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = v3 + 56 * v7;
    *(v8 + 16) = v2;
    v9 = *(v8 + 48);
  }

  v11 = *(v4 + 32);
  if (v11 < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 56 * v11 + 48);
  }

  if (v12 > v9)
  {
    v9 = v12;
  }

  v13 = v9 + 1;
  *(v4 + 48) = v13;
  if (v7 < 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v3 + 56 * v7 + 40);
  }

  v15 = *(v4 + 8) - *v4 + v14;
  if (v11 < 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 56 * v11 + 40);
  }

  v17 = v15 + v16;
  *(v4 + 40) = v17;
  v18 = *(v6 + 24);
  if (v18 < 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v3 + 56 * v18 + 48);
  }

  if (v13 <= v19)
  {
    v13 = v19;
  }

  *(v6 + 48) = v13 + 1;
  if (v18 < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v3 + 56 * v18 + 40);
  }

  result = 0;
  *(v6 + 40) = *(v6 + 8) - *v6 + v20 + v17;
  *a2 = v5;
  return result;
}

uint64_t sub_100103F00(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = v3 + 56 * v2;
  v5 = *(v4 + 32);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3 + 56 * v5;
  v7 = *(v6 + 24);
  *(v6 + 16) = *(v4 + 16);
  *(v6 + 24) = v2;
  *(v4 + 16) = v5;
  *(v4 + 32) = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    *(v3 + 56 * v7 + 16) = v2;
  }

  v8 = *(v4 + 24);
  if (v8 < 0)
  {
    v9 = 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = *(v3 + 56 * v8 + 48);
  if (v7 < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = *(v3 + 56 * v7 + 48);
LABEL_11:
  if (v10 > v9)
  {
    v9 = v10;
  }

  v12 = v9 + 1;
  *(v4 + 48) = v12;
  if (v8 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v3 + 56 * v8 + 40);
  }

  v14 = *(v4 + 8) - *v4 + v13;
  if (v7 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v3 + 56 * v7 + 40);
  }

  v16 = v14 + v15;
  *(v4 + 40) = v16;
  v17 = *(v6 + 32);
  if (v17 < 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v3 + 56 * v17 + 48);
  }

  if (v18 > v12)
  {
    v12 = v18;
  }

  *(v6 + 48) = v12 + 1;
  v19 = *(v6 + 8) - *v6 + v16;
  if (v17 < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v3 + 56 * v17 + 40);
  }

  result = 0;
  *(v6 + 40) = v19 + v20;
  *a2 = v5;
  return result;
}

uint64_t sub_10010403C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t sub_10010404C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = dword_10037C284[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  *(a1 + 8) += v4;
  return 1;
}

uint64_t sub_10010409C(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = dword_10037C284[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

AAArchiveStream AAExtractArchiveOutputStreamOpen(const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v5 = n_threads;
  if (!n_threads)
  {
    v5 = sub_1000F4290();
  }

  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v42, 0, sizeof(v42));
  v12 = malloc(0x690uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x690uLL, 0, 0x690uLL);
    if (v11)
    {
      if (!realpath_DARWIN_EXTSN(dir, v13))
      {
        v22 = *__error();
        v41 = dir;
        v23 = "%s";
        v24 = 1611;
        goto LABEL_16;
      }

      if (stat(v13, &v42) || (v42.st_mode & 0xF000) != 0x4000)
      {
        v41 = dir;
        v23 = "Invalid directory: %s";
        v24 = 1612;
      }

      else
      {
        *(v13 + 1024) = flags;
        *(v13 + 1032) = msg_data;
        *(v13 + 1040) = msg_proc;
        *(v13 + 1656) = sub_1000F4248();
        *(v13 + 1640) = 0;
        *(v13 + 1056) = 1;
        *(v13 + 1072) = 0;
        *(v13 + 1076) = v5;
        v16 = calloc(v5, 4uLL);
        *(v13 + 1080) = v16;
        if (!v16)
        {
          v20 = "SharedArrayInit: malloc failed\n";
          v21 = 55;
          goto LABEL_22;
        }

        if (pthread_mutex_init((v13 + 1088), 0))
        {
          v20 = "SharedArrayInit: pthread_mutex_init failed\n";
          v21 = 56;
LABEL_22:
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v21, 0, v20, v17, v18, v19, v41);
          v23 = "SharedArrayInit";
          v24 = 1619;
          goto LABEL_15;
        }

        if (pthread_cond_init((v13 + 1152), 0))
        {
          v20 = "SharedArrayInit: pthread_cond_init failed\n";
          v21 = 57;
          goto LABEL_22;
        }

        v26 = sub_1000F6F90(v13);
        v27 = -1;
        if (v26 < 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = v26;
        }

        v28 = 268;
        if ((v27 & 8) == 0)
        {
          v28 = 264;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v27 & 1));
        if ((flags & 0x20) == 0 && (v27 & 2) != 0)
        {
          v30 = v29 | 0x40;
        }

        else
        {
          v30 = v29;
        }

        *(v13 + 1048) = v30;
        if (sub_1000F4CD8(v13) >= 1)
        {
          *(v13 + 1056) = 0;
        }

        for (i = 0; i != 240; i += 80)
        {
          *(v13 + i + 1376) = 0u;
          if (pthread_mutex_init((v13 + i + 1312), 0) < 0)
          {
            v32 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInit", 472, 72, *v32, "pthread_mutex_init", v33, v34, v41);
            v23 = "cluster init";
            v24 = 1638;
            goto LABEL_15;
          }
        }

        *(v13 + 1200) = v13;
        if (pthread_mutex_init((v13 + 1216), 0))
        {
          v22 = *__error();
          v23 = "pthread_mutex_init";
          v24 = 1643;
          goto LABEL_16;
        }

        if ((sub_1000E766C((v13 + 1208), sub_10010464C, v13 + 1200, 0) & 0x80000000) == 0)
        {
          *(v13 + 1060) = v5;
          if (v5 < 0x2E8BA2E9)
          {
            v35 = calloc(v5, 0xB0uLL);
            *(v13 + 1064) = v35;
            if (v35)
            {
              if (!v5)
              {
LABEL_50:
                v11[3] = sub_100106550;
                v11[4] = sub_100107044;
                v11[2] = sub_100107730;
                *v11 = v13;
                v11[1] = sub_100105924;
                return v11;
              }

              v36 = 0;
              v37 = 176 * v5;
              while (1)
              {
                v38 = *(v13 + 1064);
                v39 = v38 + v36;
                *(v38 + v36) = v13;
                if (AASharedBufferPipeOpen((v38 + v36 + 32), (v38 + v36 + 40), 0x40000uLL) < 0)
                {
                  v23 = "creating shared data buffer";
                  v24 = 1654;
                  goto LABEL_15;
                }

                if (AASharedBufferPipeOpen((v39 + 16), (v39 + 24), 0x4000uLL) < 0)
                {
                  v23 = "creating shared command buffer";
                  v24 = 1655;
                  goto LABEL_15;
                }

                v40 = v38 + v36;
                if ((sub_1000F913C(v40 + 48) & 0x80000000) != 0)
                {
                  v23 = "SemInit failed";
                  v24 = 1656;
                  goto LABEL_15;
                }

                if ((sub_1000E766C((v40 + 8), sub_100104B2C, v39, 0) & 0x80000000) != 0)
                {
                  break;
                }

                v36 += 176;
                if (v37 == v36)
                {
                  goto LABEL_50;
                }
              }

              v23 = "creating worker thread";
              v24 = 1657;
              goto LABEL_15;
            }
          }

          else
          {
            *__error() = 12;
            *(v13 + 1064) = 0;
          }

          v22 = *__error();
          v23 = "malloc";
          v24 = 1649;
          goto LABEL_16;
        }

        v23 = "creating retire thread";
        v24 = 1644;
      }

LABEL_15:
      v22 = 0;
      goto LABEL_16;
    }
  }

  v22 = *__error();
  v23 = "malloc";
  v24 = 1610;
LABEL_16:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "AAExtractArchiveOutputStreamOpen", v24, 72, v22, v23, v14, v15, v41);
  free(v11);
  sub_100105924(v13);
  return 0;
}

pthread_mutex_t *sub_10010464C(pthread_mutex_t *a1)
{
  v2 = &a1->__opaque[8];
  sig = a1->__sig;
  if (pthread_mutex_lock(&a1->__opaque[8]))
  {
    goto LABEL_64;
  }

  while (1)
  {
    v4 = *&a1[1].__opaque[16];
    if (v4 >= *&a1[1].__opaque[24])
    {
      if (!pthread_mutex_unlock(v2))
      {
        goto LABEL_63;
      }

      v6 = 0;
    }

    else
    {
      v5 = *&a1[1].__opaque[32];
      *&a1[1].__opaque[16] = v4 + 1;
      v6 = *(v5 + 8 * v4);
      if (!pthread_mutex_unlock(v2))
      {
        if (!v6)
        {
          return a1;
        }

        goto LABEL_9;
      }
    }

    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 643, 72, *v14, "pthread_mutex_unlock", v15, v16, v61);
    if (!v6)
    {
      return a1;
    }

LABEL_9:
    v17 = *(v6 + 2300);
    if (v17 == -1)
    {
      goto LABEL_62;
    }

    if (v17 == 2)
    {
      *(v6 + 2300) = 3;
      v18 = sig[130];
      if (v18)
      {
        v18(sig[129], 21, v6, v6 + 2272);
      }
    }

    v19 = *(v6 + 2048);
    if (v19 != 70)
    {
LABEL_30:
      if (v19 == 72)
      {
        v28 = sig[195];
        if (v28 == sig[194])
        {
          v29 = 2 * v28;
          v30 = v28 == 0;
          v31 = 32;
          if (!v30)
          {
            v31 = v29;
          }

          sig[194] = v31;
          if ((8 * v31) >= 0x2000000001)
          {
            *__error() = 12;
LABEL_52:
            sig[196] = 0;
            v44 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "hlinkInsertEntry", 455, 72, *v44, "malloc", v45, v46, v61);
            sig[194] = 0;
            sig[195] = 0;
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 681, 72, 0, "hlinkInsertEntry failed: %s", v47, v48, v6);
            goto LABEL_59;
          }

          v38 = sig[196];
          v32 = realloc(v38, 8 * v31);
          if (!v32)
          {
            free(v38);
            goto LABEL_52;
          }

          sig[196] = v32;
          v28 = sig[195];
        }

        else
        {
          v32 = sig[196];
        }

        sig[195] = v28 + 1;
        v32[v28] = v6;
        atomic_fetch_add((v6 + 2304), 1u);
        v19 = *(v6 + 2048);
      }

      if (v19 != 68)
      {
        goto LABEL_62;
      }

      v39 = sig[198];
      if (v39 == sig[197])
      {
        v40 = 2 * v39;
        v30 = v39 == 0;
        v41 = 32;
        if (!v30)
        {
          v41 = v40;
        }

        sig[197] = v41;
        if ((8 * v41) >= 0x2000000001)
        {
          *__error() = 12;
LABEL_58:
          sig[199] = 0;
          v51 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "dirInsertEntry", 433, 72, *v51, "malloc", v52, v53, v61);
          sig[197] = 0;
          sig[198] = 0;
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 687, 72, 0, "dirInsertEntry failed: %s", v54, v55, v6);
          goto LABEL_59;
        }

        v43 = sig[199];
        v42 = realloc(v43, 8 * v41);
        if (!v42)
        {
          free(v43);
          goto LABEL_58;
        }

        sig[199] = v42;
        v39 = sig[198];
      }

      else
      {
        v42 = sig[199];
      }

      sig[198] = v39 + 1;
      v42[v39] = v6;
      atomic_fetch_add((v6 + 2304), 1u);
      goto LABEL_62;
    }

    v20 = 0;
    v21 = (sig + 164);
    while (1)
    {
      v22 = *(v6 + v20 + 2312);
      if (v22 == -1)
      {
        goto LABEL_28;
      }

      if (pthread_mutex_lock(v21) < 0)
      {
        v33 = *__error();
        v36 = 561;
        v37 = "pthread_mutex_lock";
        goto LABEL_55;
      }

      v25 = (*v21[1].__opaque + 32 * v22);
      if (!v20)
      {
        break;
      }

      v26 = *(v6 + 2312);
      if (v26 == -1)
      {
        break;
      }

      v25[2] = v26;
      if (v20 == 16)
      {
        v27 = *(v6 + 2320);
        if (v27 != -1)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      if (pthread_mutex_unlock(v21) < 0)
      {
        goto LABEL_54;
      }

LABEL_28:
      v20 += 8;
      v21 = (v21 + 80);
      if (v20 == 24)
      {
        v19 = *(v6 + 2048);
        goto LABEL_30;
      }
    }

    if (v20 == 16)
    {
      v27 = *(v6 + 2320);
      if (v27 != -1)
      {
LABEL_24:
        v25[3] = v27;
        goto LABEL_27;
      }
    }

    if (!*(v6 + v20 + 2336))
    {
      *(v6 + v20 + 2336) = v25[1];
      v25[1] = v6;
      atomic_fetch_add((v6 + 2304), 1u);
      goto LABEL_27;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 574, 72, 0, "entry already linked", v23, v24, v61);
    if ((pthread_mutex_unlock(v21) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_54:
    v33 = *__error();
    v36 = 585;
    v37 = "pthread_mutex_unlock";
LABEL_55:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", v36, 72, v33, v37, v34, v35, v61);
LABEL_56:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 674, 72, 0, "clusterInsertEntry failed: %s", v49, v50, v6);
LABEL_59:
    if (*(v6 + 2300) != -1)
    {
      *(v6 + 2300) = -1;
      v56 = sig[130];
      if (v56)
      {
        v56(sig[129], 22, v6, v6 + 2272);
      }
    }

LABEL_62:
    sub_100107750(v6, v7, v8, v9, v10, v11, v12, v13);
LABEL_63:
    if (pthread_mutex_lock(v2))
    {
LABEL_64:
      v57 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 637, 72, *v57, "pthread_mutex_lock", v58, v59, v61);
      return a1;
    }
  }
}

uint64_t sub_100104B2C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *v1;
  v3 = *(*v1 + 1064);
  bzero(v105, 0x800uLL);
  bzero(__s, 0x800uLL);
  bzero(__s2, 0x800uLL);
  v6 = malloc(0x40000uLL);
  if (!v6)
  {
    v94 = *__error();
    v95 = "malloc";
    v96 = 756;
LABEL_200:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v96, 72, v94, v95, v4, v5, v98);
    free(v6);
    return v1;
  }

  if (*(v2 + 1060) <= -1171354717 * ((v1 - v3) >> 4))
  {
    LOBYTE(v98) = -93 * ((v1 - v3) >> 4);
    v95 = "invalid thread ID %d";
    v96 = 757;
    v94 = 0;
    goto LABEL_200;
  }

  v100 = -1171354717 * ((v1 - v3) >> 4);
  v7 = 0;
  v99 = -1;
  while (1)
  {
LABEL_4:
    if (v7)
    {
      goto LABEL_22;
    }

    if (pthread_mutex_lock((v2 + 1088)))
    {
      v11 = 117;
      v12 = "SharedArrayPush: pthread_mutex_lock failed\n";
    }

    else
    {
      v13 = *(v2 + 1072);
      v14 = *(v2 + 1076);
      v15 = v13;
      if (v13 < v14)
      {
        *(*(v2 + 1080) + 4 * v13) = v100;
        v15 = *(v2 + 1072);
      }

      *(v2 + 1072) = v15 + 1;
      if (v15 || !pthread_cond_broadcast((v2 + 1152)))
      {
        if (pthread_mutex_unlock((v2 + 1088)))
        {
          v11 = 124;
          v12 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        }

        else
        {
          if (v13 < v14)
          {
            goto LABEL_17;
          }

          v11 = 125;
          v12 = "SharedArrayPush: stack is full\n";
        }
      }

      else
      {
        v11 = 122;
        v12 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      }
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v11, 0, v12, v8, v9, v10, v98);
LABEL_17:
    if (!pthread_mutex_lock((v1 + 56)))
    {
      while (1)
      {
        v16 = *(v1 + 48);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v1 + 120), (v1 + 56)))
        {
          goto LABEL_22;
        }
      }

      *(v1 + 48) = v16 - 1;
      pthread_mutex_unlock((v1 + 56));
    }

LABEL_22:
    memset(buf, 0, 12);
    v17 = AAByteStreamRead(*(v1 + 24), buf, 0xCuLL);
    if (v17 != 12)
    {
      break;
    }

    if (SLODWORD(buf[0]) <= 68)
    {
      if (SLODWORD(buf[0]) <= 65)
      {
        if (LODWORD(buf[0]) != 65)
        {
          if (LODWORD(buf[0]) == 42)
          {
            goto LABEL_202;
          }

LABEL_84:
          v43 = 942;
          v44 = "Invalid thread command";
          goto LABEL_111;
        }

LABEL_51:
        v38 = *(v1 + 168);
        if (v38)
        {
          v39 = v38 + 281;
          v40 = v38 + 275;
          v41 = v38 + 278;
          if (LODWORD(buf[0]) != 65)
          {
            v41 = 0;
          }

          if (LODWORD(buf[0]) == 88)
          {
            v41 = v40;
          }

          if (LODWORD(buf[0]) == 89)
          {
            v42 = v39;
          }

          else
          {
            v42 = v41;
          }

          if (*v42 + *(buf + 4) > v42[1])
          {
            v43 = 931;
            v44 = "too many blob bytes received";
            goto LABEL_111;
          }

          v50 = AAByteStreamRead(*(v1 + 40), (v42[2] + *v42), *(buf + 4));
          if (v50 < 0)
          {
            v43 = 933;
            goto LABEL_110;
          }

          v51 = *(buf + 4);
          *(buf + 4) -= v50;
          if (v50)
          {
            v52 = *v42 + v50;
            if (!__CFADD__(*v42, v50) && v52 <= v42[1])
            {
              *v42 = v52;
            }
          }

          if (v51 != v50)
          {
            v43 = 936;
            v44 = "truncated read";
            goto LABEL_111;
          }
        }

LABEL_77:
        v27 = 0;
        goto LABEL_113;
      }

      if (LODWORD(buf[0]) == 66)
      {
        if (!*(v1 + 168))
        {
          v43 = 786;
          v44 = "no entry in thread";
          goto LABEL_111;
        }

        goto LABEL_77;
      }

      if (LODWORD(buf[0]) != 68)
      {
        goto LABEL_84;
      }

      v28 = *(v1 + 168);
      if (v28)
      {
        v29 = *(v28 + 2192);
        if (v29 == -1)
        {
          v43 = 847;
          v44 = "DAT size not received yet";
          goto LABEL_111;
        }

        if (*(v28 + 2288))
        {
          goto LABEL_35;
        }

        if ((*(v28 + 2056) & 4) != 0)
        {
          v55 = 0;
          v56 = -1;
          if (v29 && (*(v28 + 2068) & 0x20) != 0)
          {
            if (*(v28 + 2128))
            {
              v56 = *(v28 + 2136);
            }

            else
            {
              v56 = 0;
            }

            if ((*(v28 + 2128) & 0x10) != 0)
            {
              v55 = *(v28 + 2156);
              v80 = *(v28 + 2152);
              if (v80)
              {
                if (v29 <= v80)
                {
                  v55 = v55 & 0xFFFFFFFC;
                  v56 = 10;
                }

                else
                {
                  v55 |= 3uLL;
                }
              }
            }

            else
            {
              v55 = 0;
            }
          }
        }

        else
        {
          v55 = 0;
          v56 = -1;
        }

        if ((*(v28 + 2128) & 8) != 0 && (*(v2 + 1030) & 2) != 0)
        {
          v57 = *(v28 + 2132);
        }

        else
        {
          v57 = -1;
        }

        if ((sub_1000F4744(v105, 0x800uLL, v2, *(v1 + 168)) & 0x80000000) != 0)
        {
          LOBYTE(v98) = v28;
          v43 = 885;
        }

        else
        {
          if (*(v2 + 1056))
          {
            sub_1000F6A60(v105);
          }

          __strlcpy_chk();
          v76 = strrchr(__s, 47);
          if (v76)
          {
            *v76 = 0;
            v77 = v76 + 1;
            if (v99 < 0)
            {
              goto LABEL_154;
            }

            if (!strcmp(__s, __s2))
            {
              v78 = v99;
            }

            else
            {
              close(v99);
LABEL_154:
              __strlcpy_chk();
              v78 = open(__s2, 0);
              if (v78 < 0)
              {
                v99 = v78;
                v79 = *(v28 + 2288);
LABEL_175:
                if (!v79)
                {
                  v88 = sub_100122190(-1, v105, *(v28 + 2192), v56, v55, v57, *(v2 + 1048));
                  *(v28 + 2288) = v88;
                  if (!v88)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 904, 72, 0, "opening output file: %s", v89, v90, v105);
LABEL_112:
                    v27 = 1;
LABEL_113:
                    v7 = 1;
                    goto LABEL_114;
                  }
                }

                while (1)
                {
LABEL_35:
                  if (!*(buf + 4))
                  {
                    v7 = 1;
                    goto LABEL_4;
                  }

                  v30 = *(buf + 4) >= 0x40000 ? 0x40000 : *(buf + 4);
                  v31 = AAByteStreamRead(*(v1 + 40), v6, v30);
                  if (v31 < 0)
                  {
                    break;
                  }

                  v32 = v31;
                  *(buf + 4) -= v31;
                  v33 = *(v28 + 2288);
                  if (*(v33 + 24))
                  {
                    v34 = 0;
                    if (v31)
                    {
                      v35 = v6;
                      v36 = v31;
                      while (1)
                      {
                        v37 = (*(v33 + 24))(*v33, v35, v36);
                        if (v37 < 1)
                        {
                          break;
                        }

                        v35 += v37;
                        v34 += v37;
                        v36 -= v37;
                        if (!v36)
                        {
                          goto LABEL_48;
                        }
                      }

                      v34 = v37;
                    }
                  }

                  else
                  {
                    v34 = -1;
                  }

LABEL_48:
                  if (v34 != v32)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 915, 72, 0, "write failed %zd", v23, v24, v34);
                    goto LABEL_112;
                  }
                }

                v43 = 912;
LABEL_110:
                v44 = "reading payload";
LABEL_111:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v43, 72, 0, v44, v23, v24, v98);
                goto LABEL_112;
              }
            }

            v99 = v78;
            v79 = sub_100122190(v78, v77, *(v28 + 2192), v56, v55, v57, *(v2 + 1048));
            *(v28 + 2288) = v79;
            goto LABEL_175;
          }

          v98 = v105;
          v43 = 890;
        }

        v44 = "invalid path: %s";
        goto LABEL_111;
      }

      v27 = 0;
      v7 = 1;
    }

    else
    {
      if ((LODWORD(buf[0]) - 88) < 2)
      {
        goto LABEL_51;
      }

      if (LODWORD(buf[0]) == 69)
      {
        v45 = *(v1 + 168);
        if (!v45)
        {
          v27 = 0;
          v7 = 0;
          goto LABEL_114;
        }

        v46 = *(v45 + 2048);
        if (v46 == 70)
        {
          v47 = *(v45 + 2288);
          if (v47)
          {
            goto LABEL_66;
          }

          if (*(v45 + 2192))
          {
LABEL_92:
            v46 = *(v45 + 2048);
          }

          else
          {
            if ((*(v45 + 2128) & 8) != 0 && (*(v2 + 1030) & 2) != 0)
            {
              v75 = *(v45 + 2132);
            }

            else
            {
              v75 = -1;
            }

            if ((sub_1000F4744(v105, 0x800uLL, v2, *(v1 + 168)) & 0x80000000) != 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 808, 72, 0, "invalid path: %s", v91, v92, v45);
              goto LABEL_135;
            }

            if (*(v2 + 1056))
            {
              sub_1000F6A60(v105);
            }

            v47 = sub_100122190(-1, v105, *(v45 + 2192), 0xFFFFFFFF, 0, v75, *(v2 + 1048));
            *(v45 + 2288) = v47;
            if (!v47)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 811, 72, 0, "opening output file: %s", v23, v24, v105);
              goto LABEL_135;
            }

            v46 = *(v45 + 2048);
            if (v46 == 70)
            {
LABEL_66:
              *(v45 + 2296) = sub_1001231D8(v47, v18, v19, v20, v21, v22, v23, v24);
              *(v45 + 2288) = 0;
              v48 = sub_100107984(v2, v45);
              v49 = *(v45 + 2296);
              if ((v49 & 0x80000000) == 0)
              {
                close(v49);
                *(v45 + 2296) = -1;
              }

              if (v48 < 0)
              {
                LOBYTE(v98) = v45;
                v53 = 822;
                goto LABEL_126;
              }

              if (*(v45 + 2300) != 2)
              {
                *(v45 + 2300) = 2;
              }

              goto LABEL_92;
            }
          }
        }

        if (v46 == 70 || v46 == 72)
        {
LABEL_95:
          if ((sub_100107D24(v2 + 1200, *(v1 + 168)) & 0x80000000) != 0)
          {
            v53 = 837;
            v54 = "sending entry to retire thread";
            goto LABEL_134;
          }

          v27 = 0;
          v7 = 0;
          *(v1 + 168) = 0;
          goto LABEL_114;
        }

        if ((sub_1000F4744(v106, 0x800uLL, v2, v45) & 0x80000000) != 0)
        {
          LOBYTE(v98) = v45;
          v70 = 274;
          v71 = "invalid path: %s";
LABEL_132:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", v70, 72, 0, v71, v58, v59, v98);
          goto LABEL_133;
        }

        v60 = *(v45 + 2048);
        if (v60 == 68)
        {
          memset(&v102, 0, sizeof(v102));
          if (!*(v2 + 1056) || lstat(v106, &v102))
          {
            goto LABEL_103;
          }

          if ((v102.st_mode & 0xF000) != 0x4000)
          {
            sub_1000F6A60(v106);
LABEL_103:
            if (mkdir(v106, 0x1EDu))
            {
              if (lstat(v106, &v102) || (v102.st_mode & 0xF000) != 0x4000)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 305, 72, 0, "mkdir failed: %s", v61, v62, v45);
LABEL_133:
                LOBYTE(v98) = v45;
                v53 = 829;
                v54 = "creating fs object: %s";
                goto LABEL_134;
              }
            }

            else if ((*(v45 + 2056) & 3) != 0)
            {
              if (*(v45 + 2056))
              {
                v81 = *(v45 + 2060);
              }

              else
              {
                v81 = -1;
              }

              if ((*(v45 + 2056) & 2) != 0)
              {
                v93 = *(v45 + 2064);
              }

              else
              {
                v93 = -1;
              }

              chown(v106, v81, v93);
            }
          }
        }

        else
        {
          if (*(v2 + 1056))
          {
            sub_1000F6A60(v106);
            v60 = *(v45 + 2048);
          }

          switch(v60)
          {
            case 'H':
              if (link((v45 + 1024), v106))
              {
                v85 = *__error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 320, 72, v85, "link %s", v86, v87, v45);
                goto LABEL_133;
              }

              break;
            case 'P':
              if (mkfifo(v106, 0x1A4u))
              {
                v82 = *__error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 325, 72, v82, "mkfifo %s", v83, v84, v45);
                goto LABEL_133;
              }

              break;
            case 'L':
              if (symlink((v45 + 1024), v106))
              {
                v72 = *__error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 315, 72, v72, "symlink %s", v73, v74, v45);
                goto LABEL_133;
              }

              break;
            default:
              v70 = 330;
              v71 = "not implemented yet";
              goto LABEL_132;
          }
        }

        if (*(v45 + 2300) != 2)
        {
          *(v45 + 2300) = 2;
        }

        if (*(v45 + 2048) != 68 && (sub_100107984(v2, v45) & 0x80000000) != 0)
        {
          LOBYTE(v98) = v45;
          v53 = 833;
LABEL_126:
          v54 = "applyEntryAttributes failed: %s";
LABEL_134:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v53, 72, 0, v54, v25, v26, v98);
LABEL_135:
          v7 = 0;
          v27 = 1;
          goto LABEL_114;
        }

        goto LABEL_95;
      }

      if (LODWORD(buf[0]) != 70)
      {
        goto LABEL_84;
      }

      if ((sub_1001078C0(v1) & 0x80000000) != 0)
      {
        v53 = 792;
        v54 = "retire failed entry";
        goto LABEL_134;
      }

      v27 = 0;
      v7 = 0;
    }

LABEL_114:
    v63 = *(buf + 4);
    if (*(buf + 4))
    {
      while (1)
      {
        v64 = v63 >= 0x40000 ? 0x40000 : v63;
        v65 = AAByteStreamRead(*(v1 + 40), v6, v64);
        if (v65 < 0)
        {
          break;
        }

        v63 = *(buf + 4) - v65;
        *(buf + 4) -= v65;
        if (!*(buf + 4))
        {
          goto LABEL_120;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 953, 72, 0, "reading payload", v66, v67, v98);
LABEL_123:
      if ((sub_1001078C0(v1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 959, 72, 0, "retire failed entry", v68, v69, v98);
      }
    }

    else
    {
LABEL_120:
      if (v27)
      {
        goto LABEL_123;
      }
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 775, 72, 0, "reading thread command, %zd", v23, v24, v17);
LABEL_202:
  free(v6);
  if ((v99 & 0x80000000) == 0)
  {
    close(v99);
  }

  return v1;
}

uint64_t sub_100105924(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v119 = *(result + 1024);
  if (atomic_load((result + 1600)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1486, 72, 0, "stream cancelled", v2, v3, v118);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (*(v4 + 1632) || *(v4 + 1640))
  {
    sub_100107EA8(v4);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1492, 72, 0, "invalid state on destroy", v7, v8, v118);
    v6 = 0;
  }

  if (*(v4 + 1064))
  {
    v9 = *(v4 + 1060);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(v4 + 1064);
        if (v13)
        {
          v14 = v13 + v10;
          if (*(v14 + 8))
          {
            ++v12;
          }

          if (!v6)
          {
            v15 = *(v14 + 32);
            if (v15)
            {
              AAByteStreamCancel(v15);
              v9 = *(v4 + 1060);
            }
          }
        }

        ++v11;
        v10 += 176;
      }

      while (v11 < v9);
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          if (pthread_mutex_lock((v4 + 1088)))
          {
            v20 = 91;
            v21 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_25:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v20, 0, v21, v17, v18, v19, v118);
          }

          else
          {
            while (1)
            {
              v22 = *(v4 + 1072);
              if (v22)
              {
                break;
              }

              if (pthread_cond_wait((v4 + 1152), (v4 + 1088)))
              {
                v20 = 94;
                v21 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_25;
              }
            }

            v23 = v22 - 1;
            *(v4 + 1072) = v23;
            v24 = *(*(v4 + 1080) + 4 * v23);
            if (pthread_mutex_unlock((v4 + 1088)))
            {
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v25, v26, v27, v118);
            }

            if (v24 != -1)
            {
              v28 = *(v4 + 1064) + 176 * v24;
              if (!pthread_mutex_lock((v28 + 56)))
              {
                v29 = *(v28 + 48);
                *(v28 + 48) = v29 + 1;
                if (v29 || !pthread_cond_broadcast((v28 + 120)))
                {
                  pthread_mutex_unlock((v28 + 56));
                }
              }

              v127 = 0;
              buf = 42;
              AAByteStreamWrite(*(v28 + 16), &buf, 0xCuLL);
              sub_1000E79CC(*(v28 + 8));
              AAByteStreamClose(*(v28 + 16));
              AAByteStreamClose(*(v28 + 24));
              AAByteStreamClose(*(v28 + 32));
              AAByteStreamClose(*(v28 + 40));
              if (!pthread_mutex_destroy((v28 + 56)))
              {
                pthread_cond_destroy((v28 + 120));
              }
            }
          }
        }
      }
    }

    free(*(v4 + 1064));
  }

  if (!pthread_mutex_destroy((v4 + 1088)) && !pthread_cond_destroy((v4 + 1152)))
  {
    free(*(v4 + 1080));
  }

  if (*(v4 + 1208))
  {
    sub_100107D24(v4 + 1200, 0);
    sub_1000E79CC(*(v4 + 1208));
    pthread_mutex_destroy((v4 + 1216));
  }

  if (*(v4 + 1632))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1541, 72, 0, "entry found in extract stream", v35, v36, v118);
    sub_100107750(*(v4 + 1632), v37, v38, v39, v40, v41, v42, v43);
    v6 = 0;
  }

  v44 = 0;
  v45 = (v4 + 1384);
  v123 = *(v4 + 1024);
  v120 = v6;
  v121 = v4 + 1312;
  do
  {
    v46 = v121 + 80 * v44;
    if (*(v46 + 64))
    {
      v47 = 0;
      v48 = (v123 & 0x10) == 0 && v44 == 2;
      v49 = v48;
      if (v48)
      {
        v50 = (v123 >> 7) & 1;
      }

      else
      {
        v50 = 0;
      }

      v124 = v50;
      v122 = v49 ^ 1 | ((v123 & 0x80) != 0);
      while (1)
      {
        v51 = (*(v46 + 72) + 32 * v47);
        if (!v51[1])
        {
          goto LABEL_100;
        }

        v52 = v51[2];
        v53 = v45;
        if (v52 != -1 || (v52 = v51[3], v53 = (v4 + 1464), v54 = (*(v46 + 72) + 32 * v47), v52 != -1))
        {
          v54 = (*v53 + 32 * v52);
        }

        v55 = *v54;
        if (*v54)
        {
          if (*(v55 + 575) == 3)
          {
            break;
          }
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1049, 72, 0, "no valid DAT entry for cluster %d/%llu", v35, v36, v44);
        while (1)
        {
          v68 = v51[1];
          if (!v68)
          {
            break;
          }

          v51[1] = *(v68 + 8 * v44 + 2336);
          if (*(v68 + 2300) != -1)
          {
            *(v68 + 2300) = -1;
            v69 = *(v4 + 1040);
            if (v69)
            {
              v69(*(v4 + 1032), 22, v68, v68 + 2272);
            }
          }

          sub_100107750(v68, v30, v31, v32, v33, v34, v35, v36);
        }

LABEL_100:
        if (++v47 >= *(v46 + 64))
        {
          goto LABEL_108;
        }
      }

      if ((sub_1000F4744(&buf, 0x800uLL, v4, *v54) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1071, 72, 0, "invalid DAT path", v35, v36, v118);
      }

      while (1)
      {
        v67 = v51[1];
        if (!v67)
        {
          v45 = (v4 + 1384);
          goto LABEL_100;
        }

        v51[1] = *(v67 + 8 * v44 + 2336);
        if (v67 != v55)
        {
          break;
        }

LABEL_97:
        sub_100107750(v67, v30, v31, v32, v33, v34, v35, v36);
      }

      v58 = sub_1000F4744(v125, 0x800uLL, v4, v67);
      if (v58 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1082, 72, 0, "invalid path: %s", v56, v57, v67);
      }

      unlink(v125);
      if (v44)
      {
        if (v44 == 1)
        {
LABEL_70:
          if ((clonefile(&buf, v125, 0) & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1116, 72, "failed to create clone: %s", v34, v35, v36, v67);
LABEL_79:
          if ((sub_1000F56CC(&buf, v125, 0, v123 & 1, 0) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1123, 72, 0, "create copy: %s", v35, v36, v67);
            v60 = 0;
            goto LABEL_86;
          }

LABEL_80:
          v59 = 0;
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_75;
        }

        if (!v124)
        {
          if (v122)
          {
            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      if (link(&buf, v125) < 0)
      {
        v61 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1108, 72, v61, "failed to create hard link: %s", v62, v63, v67);
        goto LABEL_90;
      }

      v59 = 1;
      if ((v58 & 0x80000000) == 0)
      {
LABEL_81:
        if (*(v67 + 2300) != 2)
        {
          *(v67 + 2300) = 2;
        }

        v60 = 1;
        if (v59)
        {
LABEL_87:
          if (v60)
          {
            v64 = 3;
LABEL_91:
            if (*(v67 + 2300) != v64)
            {
              *(v67 + 2300) = v64;
              v65 = *(v4 + 1040);
              if (v65)
              {
                if (v64 == -1)
                {
                  v66 = 22;
                }

                else
                {
                  v66 = 21;
                }

                v65(*(v4 + 1032), v66, v67, v67 + 2272);
              }
            }

            goto LABEL_97;
          }

LABEL_90:
          v64 = -1;
          goto LABEL_91;
        }

LABEL_86:
        if ((sub_100107984(v4, v67) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1129, 72, 0, "setting entry attributes: %s", v35, v36, v67);
          goto LABEL_90;
        }

        goto LABEL_87;
      }

LABEL_75:
      v60 = 0;
      if (v59)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

LABEL_108:
    ++v44;
  }

  while (v44 != 3);
  if (!*(v4 + 1560))
  {
    goto LABEL_131;
  }

  v70 = 0;
  v71 = 1;
  while (2)
  {
    v72 = *(*(v4 + 1568) + 8 * v70);
    if ((sub_1000F4744(&buf, 0x800uLL, v4, v72) & 0x80000000) != 0)
    {
      v85 = 1007;
      v86 = "invalid 'H' PAT";
      goto LABEL_119;
    }

    if ((sub_1000F4744(v125, 0x800uLL, v4, (v72 + 1024)) & 0x80000000) != 0)
    {
      v85 = 1008;
      v86 = "invalid 'H' LNK";
LABEL_119:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", v85, 72, 0, v86, v73, v74, v118);
LABEL_120:
      v87 = 0;
      v88 = -1;
      goto LABEL_121;
    }

    if (*(v4 + 1056))
    {
      sub_1000F6A60(&buf);
    }

    if (link(v125, &buf))
    {
      v82 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1010, 72, v82, "link %s ->%s", v83, v84, &buf);
      goto LABEL_120;
    }

    v87 = 1;
    v88 = 3;
LABEL_121:
    if (*(v72 + 2300) != v88)
    {
      *(v72 + 2300) = v88;
      v89 = *(v4 + 1040);
      if (v89)
      {
        if (v88 == -1)
        {
          v90 = 22;
        }

        else
        {
          v90 = 21;
        }

        v89(*(v4 + 1032), v90, v72, v72 + 2272);
      }
    }

    sub_100107750(v72, v75, v76, v77, v78, v79, v80, v81);
    *(*(v4 + 1568) + 8 * v70) = 0;
    v71 &= v87;
    if (++v70 < *(v4 + 1560))
    {
      continue;
    }

    break;
  }

  *(v4 + 1560) = 0;
  if (!v71)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1550, 72, 0, "process hlinks", v35, v36, v118);
    v120 = 0;
  }

LABEL_131:
  v91 = *(v4 + 1584);
  if (v91)
  {
    v92 = v91 - 1;
    v93 = 1;
    while (1)
    {
      v94 = *(*(v4 + 1592) + 8 * v92);
      if ((sub_1000F4744(&buf, 0x800uLL, v4, v94) & 0x80000000) != 0)
      {
        break;
      }

      if ((sub_100107984(v4, v94) & 0x80000000) != 0)
      {
        v103 = 984;
        v104 = "applyEntryAttributes failed";
        goto LABEL_138;
      }

      v102 = 1;
LABEL_139:
      sub_100107750(v94, v97, v98, v99, v100, v101, v95, v96);
      *(*(v4 + 1592) + 8 * v92) = 0;
      v93 &= v102;
      if (--v92 == -1)
      {
        *(v4 + 1584) = 0;
        v105 = v120;
        if (!v93)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1553, 72, 0, "process dirs", v35, v36, v118);
          v105 = 0;
        }

        goto LABEL_143;
      }
    }

    v103 = 983;
    v104 = "invalid 'D' PAT";
LABEL_138:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessDirs", v103, 72, 0, v104, v95, v96, v118);
    v102 = 0;
    goto LABEL_139;
  }

  v105 = v120;
LABEL_143:
  if (atomic_load((v4 + 1604)))
  {
    v107 = atomic_load((v4 + 1604));
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1556, 72, 0, "%u entries failed to extract", v35, v36, v107);
    v105 = 0;
  }

  else if (v105 && v119 >> 62)
  {
    v108 = sub_1000F4248() - *(v4 + 1656);
    v105 = 1;
    fwrite("Extract archive\n", 0x10uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "%12u worker threads\n", *(v4 + 1060));
    fprintf(__stderrp, "%12u directories\n", *(v4 + 1672));
    fprintf(__stderrp, "%12u regular files\n", *(v4 + 1668));
    fprintf(__stderrp, "%12u symbolic links\n", *(v4 + 1676));
    fprintf(__stderrp, "%12u entries\n", *(v4 + 1664));
    fprintf(__stderrp, "%12.2f time (s)\n", v108);
  }

  for (j = 0; j != 3; ++j)
  {
    v110 = v121 + 80 * j;
    if (*(v110 + 64))
    {
      v111 = 0;
      do
      {
        v112 = *(v110 + 72);
        v113 = *(v112 + 32 * v111 + 8);
        if (v113)
        {
          do
          {
            fprintf(__stderrp, "pending %s\n", v113);
            v113 = *&v113[8 * j + 2336];
          }

          while (v113);
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterFree", 485, 72, 0, "cluster has pending entries %d/%llu", v114, v115, j);
          goto LABEL_156;
        }

        while (1)
        {
          v116 = (v112 + 32 * v111);
          v117 = v116[1];
          if (!v117)
          {
            break;
          }

          v116[1] = *(v117 + 8 * v111 + 2336);
          sub_100107750(v117, v30, v31, v32, v33, v34, v35, v36);
LABEL_156:
          v112 = *(v110 + 72);
        }

        sub_100107750(*v116, v30, v31, v32, v33, v34, v35, v36);
        ++v111;
      }

      while (v111 < *(v110 + 64));
    }

    pthread_mutex_destroy(v110);
    free(*(v110 + 72));
  }

  free(*(v4 + 1568));
  free(*(v4 + 1624));
  memset_s((v4 + 1616), 0x10uLL, 0, 0x10uLL);
  free(*(v4 + 1304));
  free(*(v4 + 1592));
  free(v4);
  return (v105 - 1);
}

uint64_t sub_100106550(uint64_t a1, AAHeader header, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  size = 0;
  value = -1;
  offset = 0;
  v9 = *(a1 + 1024);
  *(a1 + 1608) = 0;
  if (*(a1 + 1632) || *(a1 + 1640))
  {
    v10 = "invalid extract state";
    v11 = 1245;
LABEL_4:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", v11, 72, 0, v10, a7, a8, v98);
LABEL_5:
    sub_100107EA8(a1);
    return 0xFFFFFFFFLL;
  }

  v15.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v15);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    v32 = "AA entry missing TYP field";
    v33 = 1249;
LABEL_24:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", v33, 72, v32, v17, v18, v19, v98);
    goto LABEL_25;
  }

  if (value - 66 > 0x11 || ((1 << (value - 66)) & 0x24457) == 0)
  {
    result = 0;
    *(a1 + 1608) = 1;
    return result;
  }

  length[0] = 0;
  v21.ikey = 5521744;
  v22 = AAHeaderGetKeyIndex(header, v21);
  if ((v22 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v22, 0x400uLL, __s, length) >= 2)
  {
    v32 = "YAA entry missing/invalid PAT field";
    v33 = 1274;
    goto LABEL_24;
  }

  v23 = *(a1 + 1040);
  if (v23)
  {
    v24 = v23(*(a1 + 1032), 20, __s, header);
    if (v24 < 0)
    {
      v10 = "user cancelled";
      v11 = 1284;
      goto LABEL_4;
    }

    if (!v24)
    {
      v25 = (*(a1 + 1040))(*(a1 + 1032), 27, __s, length);
      if (v25 < 0)
      {
        v10 = "user cancelled";
        v11 = 1289;
        goto LABEL_4;
      }

      if (v25)
      {
        __strlcpy_chk();
      }

      goto LABEL_20;
    }

LABEL_25:
    result = 0;
    *(a1 + 1608) = 1;
    return result;
  }

LABEL_20:
  v26 = value;
  if (strlen(__s) >= 0x400)
  {
    v29 = "path too long";
    v30 = 198;
    v31 = 0;
LABEL_34:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryCreate", v30, 72, v31, v29, v27, v28, v98);
    *(a1 + 1632) = 0;
    v10 = "entry creation";
    v11 = 1295;
    goto LABEL_4;
  }

  v34 = malloc(0x938uLL);
  if (!v34)
  {
    v31 = *__error();
    v29 = "malloc";
    v30 = 200;
    goto LABEL_34;
  }

  v35 = v34;
  memset_s(v34, 0x938uLL, 0, 0x938uLL);
  __memcpy_chk();
  *(v35 + 256) = v26;
  *(v35 + 574) = -1;
  *(v35 + 289) = -1;
  *(v35 + 290) = -1;
  *(v35 + 291) = -1;
  *(v35 + 273) = -1;
  *(v35 + 274) = -1;
  atomic_store(1u, v35 + 576);
  *(a1 + 1632) = v35;
  ++*(a1 + 1664);
  switch(value)
  {
    case 'L':
      ++*(a1 + 1676);
      break;
    case 'F':
      ++*(a1 + 1668);
      break;
    case 'D':
      ++*(a1 + 1672);
      break;
  }

  if ((sub_1000ED290(a1 + 1616, header) & 0x80000000) != 0)
  {
    v10 = "Eerror getting blobs from header";
    v11 = 1307;
    goto LABEL_4;
  }

  if ((sub_10010ABC0(v35 + 2056, v35 + 2128, 0, header) & 0x80000000) != 0)
  {
    v10 = "getting attributes from header";
    v11 = 1310;
    goto LABEL_4;
  }

  v36 = *(a1 + 1040);
  if (v36)
  {
    if ((v36(*(a1 + 1032), 23, v35, v35 + 2056) & 0x80000000) != 0)
    {
      v10 = "message callback cancelled operations";
      v11 = 1314;
      goto LABEL_4;
    }

    v37 = *(a1 + 1040);
    if (v37 && (*(a1 + 1030) & 0x10) != 0 && (v37(*(a1 + 1032), 26, v35, v35 + 2128) & 0x80000000) != 0)
    {
      v10 = "message callback cancelled operations";
      v11 = 1320;
      goto LABEL_4;
    }
  }

  if ((v35[2056] & 4) != 0 && (v35[2068] & 0x20) != 0 && (v35[2128] & 1) != 0 && *(v35 + 534) == -1)
  {
    v10 = "disable AFSC by clearing UF_COMPRESSED";
    v11 = 1325;
    goto LABEL_4;
  }

  v38.ikey = 4997953;
  v39 = AAHeaderGetKeyIndex(header, v38);
  if ((v39 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v39, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_169:
      v10 = "ACL blob allocation";
      v11 = 1331;
      goto LABEL_4;
    }

    v40 = *(v35 + 279);
    if (v40 < size)
    {
      v41 = v9;
      do
      {
        while (!v40)
        {
          v40 = 0x4000;
          if (size <= 0x4000)
          {
            v43 = (v35 + 2240);
            v40 = 0x4000;
            goto LABEL_67;
          }
        }

        v42 = v40 >> 1;
        if ((v40 & (v40 >> 1)) != 0)
        {
          v42 = v40 & (v40 >> 1);
        }

        v40 += v42;
      }

      while (v40 < size);
      v43 = (v35 + 2240);
      if (v40 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_168;
      }

LABEL_67:
      v44 = *v43;
      v45 = realloc(*v43, v40);
      if (v45)
      {
        *(v35 + 280) = v45;
        *(v35 + 279) = v40;
        LOBYTE(v9) = v41;
        goto LABEL_69;
      }

      free(v44);
LABEL_168:
      *v43 = 0;
      *(v35 + 278) = 0;
      *(v35 + 279) = 0;
      goto LABEL_169;
    }
  }

LABEL_69:
  v46.ikey = 5521752;
  v47 = AAHeaderGetKeyIndex(header, v46);
  if ((v47 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v47, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_172:
      v10 = "XAT blob allocation";
      v11 = 1335;
      goto LABEL_4;
    }

    v48 = *(v35 + 276);
    if (v48 < size)
    {
      v49 = v9;
      do
      {
        while (!v48)
        {
          v48 = 0x4000;
          if (size <= 0x4000)
          {
            v51 = (v35 + 2216);
            v48 = 0x4000;
            goto LABEL_83;
          }
        }

        v50 = v48 >> 1;
        if ((v48 & (v48 >> 1)) != 0)
        {
          v50 = v48 & (v48 >> 1);
        }

        v48 += v50;
      }

      while (v48 < size);
      v51 = (v35 + 2216);
      if (v48 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_171;
      }

LABEL_83:
      v52 = *v51;
      v53 = realloc(*v51, v48);
      if (v53)
      {
        *(v35 + 277) = v53;
        *(v35 + 276) = v48;
        LOBYTE(v9) = v49;
        goto LABEL_85;
      }

      free(v52);
LABEL_171:
      *v51 = 0;
      *(v35 + 275) = 0;
      *(v35 + 276) = 0;
      goto LABEL_172;
    }
  }

LABEL_85:
  v54.ikey = 4408665;
  v55 = AAHeaderGetKeyIndex(header, v54);
  if ((v55 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v55, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_175:
      v10 = "YEC blob allocation";
      v11 = 1339;
      goto LABEL_4;
    }

    v56 = *(v35 + 282);
    if (v56 < size)
    {
      v57 = v9;
      do
      {
        while (!v56)
        {
          v56 = 0x4000;
          if (size <= 0x4000)
          {
            v59 = (v35 + 2264);
            v56 = 0x4000;
            goto LABEL_100;
          }
        }

        v58 = v56 >> 1;
        if ((v56 & (v56 >> 1)) != 0)
        {
          v58 = v56 & (v56 >> 1);
        }

        v56 += v58;
      }

      while (v56 < size);
      v59 = (v35 + 2264);
      if (v56 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_174;
      }

LABEL_100:
      v60 = *v59;
      v61 = realloc(*v59, v56);
      if (v61)
      {
        *(v35 + 283) = v61;
        *(v35 + 282) = v56;
        LOBYTE(v9) = v57;
        goto LABEL_102;
      }

      free(v60);
LABEL_174:
      *v59 = 0;
      *(v35 + 281) = 0;
      *(v35 + 282) = 0;
      goto LABEL_175;
    }
  }

LABEL_102:
  v101 = 0;
  *(v35 + 284) = -1;
  *(v35 + 285) = -1;
  v62.ikey = 5784649;
  v63 = AAHeaderGetKeyIndex(header, v62);
  if ((v63 & 0x80000000) == 0)
  {
    FieldUInt = AAHeaderGetFieldUInt(header, v63, &v101);
    v65 = FieldUInt <= 1 ? 1 : FieldUInt;
    if (v65 >= 1)
    {
      *(v35 + 284) = v101;
    }
  }

  v66.ikey = 5915721;
  v67 = AAHeaderGetKeyIndex(header, v66);
  if ((v67 & 0x80000000) == 0)
  {
    v73 = AAHeaderGetFieldUInt(header, v67, &v101);
    v74 = v73 <= 1 ? 1 : v73;
    if (v74 >= 1)
    {
      *(v35 + 285) = v101;
    }
  }

  if (value == 70)
  {
    *(v35 + 274) = -1;
    v75.ikey = 5521732;
    v76 = AAHeaderGetKeyIndex(header, v75);
    if ((v76 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v76, &size, &offset) <= 1)
    {
      *(v35 + 274) = size;
    }

    v77 = 0;
    v78 = 0;
    v79 = v9 & 0x10;
    v80 = 0;
    do
    {
      if (v77 == 2 && v79)
      {
        break;
      }

      v81.ikey = 4410451;
      if (v77 != 2)
      {
        v81.ikey = 4144959;
      }

      if (v77 == 1)
      {
        v81.ikey = 4410435;
      }

      if (v77)
      {
        v82 = v81;
      }

      else
      {
        v82.ikey = 4410440;
      }

      v100 = -1;
      v83 = AAHeaderGetKeyIndex(header, v82);
      if ((v83 & 0x80000000) == 0 && AAHeaderGetFieldUInt(header, v83, &v100) <= 1)
      {
        v84 = v100;
        *&v35[8 * v77 + 2312] = v100;
        v99 = 0;
        if (*(v35 + 274) == -1)
        {
          v85 = 0;
        }

        else
        {
          v85 = v35;
        }

        v86 = sub_100108050(a1, v77, v84, v85, &v99);
        if (v86 < 0)
        {
          v10 = "cluster entry query";
          v11 = 1371;
          goto LABEL_4;
        }

        if (v86)
        {
          v80 = 1;
        }

        if (v99)
        {
          v87 = v86 == 0;
        }

        else
        {
          v87 = 0;
        }

        if (v87)
        {
          v78 = 1;
        }
      }

      ++v77;
    }

    while (v77 != 3);
    if (!v80 && v78 && *(v35 + 274) != -1)
    {
      *(v35 + 274) = -1;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFBLL) == 0x48)
  {
    v100 = 0;
    v88.ikey = 4935244;
    v89 = AAHeaderGetKeyIndex(header, v88);
    if ((v89 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v89, 0x400uLL, v35 + 1024, &v100) > 1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1389, 72, 0, "YAA link entry has no LNK field: %s", a7, a8, __s);
      goto LABEL_5;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFELL) == 0x42)
  {
    v90.ikey = 5653828;
    v91 = AAHeaderGetKeyIndex(header, v90);
    if ((v91 & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, v91, v35 + 273) >= 2)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1394, 72, 0, "YAA device entry has no DEV field: %s", a7, a8, __s);
      goto LABEL_5;
    }
  }

  *(a1 + 1648) = 0;
  v92 = *(a1 + 1616);
  if (v92 && (v93 = *(a1 + 1624), !*(v93 + 8)))
  {
    v95 = (v93 + 32);
    v96 = 1;
    do
    {
      v94 = v96;
      if (v92 == v96)
      {
        break;
      }

      v97 = *v95;
      v95 += 3;
      ++v96;
    }

    while (!v97);
    *(a1 + 1648) = v94;
  }

  else
  {
    v94 = 0;
  }

  if (v94 >= v92 && (sub_100108228(a1, v68, v69, v70, v71, v72, a7, a8) & 0x80000000) != 0)
  {
    v10 = "end entry";
    v11 = 1404;
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_100107044(uint64_t a1, size_t a2, void *__src, rsize_t __smax, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (__smax && !*(a1 + 1608))
  {
    v12 = *(a1 + 1632);
    v13 = *(a1 + 1640);
    if (*(a1 + 1632) == 0)
    {
      v14 = "no active entry or active thread";
      v15 = 1423;
LABEL_8:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", v15, 72, 0, v14, a7, a8, v56);
      sub_100107EA8(a1);
      return 0xFFFFFFFFLL;
    }

    v16 = *(a1 + 1648);
    if (v16 >= *(a1 + 1616))
    {
      v18 = "invalid blob reference";
      v19 = 1424;
      goto LABEL_13;
    }

    v17 = *(a1 + 1624) + 24 * v16;
    if (((*v17 ^ a2) & 0xFFFFFF) != 0)
    {
      v18 = "inconsistent blob key";
      v19 = 1428;
LABEL_13:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", v19, 72, 0, v18, a7, a8, v56);
      return 0xFFFFFFFFLL;
    }

    if (*(v17 + 8) < __smax)
    {
      v18 = "too many blob bytes received";
      v19 = 1429;
      goto LABEL_13;
    }

    v21 = *v17 & 0xFFFFFF;
    if (v21 <= 0x544143)
    {
      if (v21 != 4408665)
      {
        if (v21 == 4997953)
        {
          if (v12)
          {
            v22 = v12[278];
            v23 = __CFADD__(v22, __smax);
            v24 = v22 + __smax;
            if (v23 || (v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_111;
            }

            v25 = v12 + 278;
            a2 = v12[279];
            if (a2 < v24)
            {
              do
              {
                while (!a2)
                {
                  a2 = 0x4000;
                  if (v24 <= 0x4000)
                  {
                    v27 = (v12 + 280);
                    a2 = 0x4000;
                    goto LABEL_68;
                  }
                }

                v26 = a2 >> 1;
                if ((a2 & (a2 >> 1)) != 0)
                {
                  v26 = a2 & (a2 >> 1);
                }

                a2 += v26;
              }

              while (a2 < v24);
              v27 = (v12 + 280);
              if (a2 >= 0x2000000001)
              {
                v57 = (v12 + 280);
                *__error() = 12;
                goto LABEL_110;
              }

LABEL_68:
              v56 = a2;
              v57 = v27;
              v38 = *v27;
              v39 = realloc(*v27, a2);
              if (v39)
              {
                v12[280] = v39;
                v12[279] = v56;
                goto LABEL_70;
              }

              free(v38);
LABEL_110:
              *v57 = 0;
              *v25 = 0;
              v12[279] = 0;
              goto LABEL_111;
            }

LABEL_70:
            v40 = v12[280];
            if (__src)
            {
              memcpy((v40 + *v25), __src, __smax);
            }

            else if (v40)
            {
              memset_s((v40 + *v25), __smax, 0, __smax);
            }

            *v25 += __smax;
            if ((__smax & 0x8000000000000000) != 0)
            {
LABEL_111:
              v14 = "too many blob bytes received";
              v15 = 1438;
              goto LABEL_8;
            }
          }

          if (v13 && (sub_100107F88(v13, 65, __smax, __src) & 0x80000000) != 0)
          {
            v14 = "sending blob";
            v15 = 1439;
            goto LABEL_8;
          }
        }

        goto LABEL_97;
      }

      if (!v12)
      {
        goto LABEL_96;
      }

      v33 = v12[281];
      v23 = __CFADD__(v33, __smax);
      v34 = v33 + __smax;
      if (!v23 && (v34 & 0x8000000000000000) == 0)
      {
        v35 = v12 + 281;
        a2 = v12[282];
        if (a2 < v34)
        {
          do
          {
            while (!a2)
            {
              a2 = 0x4000;
              if (v34 <= 0x4000)
              {
                v37 = (v12 + 283);
                a2 = 0x4000;
                goto LABEL_76;
              }
            }

            v36 = a2 >> 1;
            if ((a2 & (a2 >> 1)) != 0)
            {
              v36 = a2 & (a2 >> 1);
            }

            a2 += v36;
          }

          while (a2 < v34);
          v37 = (v12 + 283);
          if (a2 >= 0x2000000001)
          {
            v59 = (v12 + 283);
            *__error() = 12;
            goto LABEL_116;
          }

LABEL_76:
          v56 = a2;
          v59 = v37;
          v44 = *v37;
          v45 = realloc(*v37, a2);
          if (v45)
          {
            v12[283] = v45;
            v12[282] = v56;
            goto LABEL_78;
          }

          free(v44);
LABEL_116:
          *v59 = 0;
          *v35 = 0;
          v12[282] = 0;
          goto LABEL_117;
        }

LABEL_78:
        v46 = v12[283];
        if (__src)
        {
          memcpy((v46 + *v35), __src, __smax);
        }

        else if (v46)
        {
          memset_s((v46 + *v35), __smax, 0, __smax);
        }

        *v35 += __smax;
        if ((__smax & 0x8000000000000000) == 0)
        {
LABEL_96:
          if (v13 && (sub_100107F88(v13, 89, __smax, __src) & 0x80000000) != 0)
          {
            v14 = "sending blob";
            v15 = 1444;
            goto LABEL_8;
          }

          goto LABEL_97;
        }
      }

LABEL_117:
      v14 = "too many blob bytes received";
      v15 = 1443;
      goto LABEL_8;
    }

    if (v21 == 5521732)
    {
      if (!v12 || v12[274] != -1)
      {
        if (!v13)
        {
          if ((sub_100108304(a1) & 0x80000000) != 0)
          {
            v14 = "send entry to thread";
            v15 = 1453;
            goto LABEL_8;
          }

          v13 = *(a1 + 1640);
        }

        if ((sub_100107F88(v13, 68, __smax, __src) & 0x80000000) != 0)
        {
          v14 = "sending DAT blob";
          v15 = 1457;
          goto LABEL_8;
        }
      }

      goto LABEL_97;
    }

    if (v21 != 5521752)
    {
LABEL_97:
      v47 = *(v17 + 8) - __smax;
      *(v17 + 8) = v47;
      if (v47)
      {
        return 0;
      }

      v48 = *(a1 + 1648);
      v49 = (v48 + 1);
      *(a1 + 1648) = v49;
      v50 = *(a1 + 1616);
      if (v49 < v50)
      {
        v51 = *(a1 + 1624);
        if (!*(v51 + 24 * v49 + 8))
        {
          v52 = (v51 + 24 * v49 + 32);
          v53 = ~v49 + v50;
          v54 = v48 + 2;
          do
          {
            LODWORD(v49) = v54;
            if (!v53)
            {
              break;
            }

            v55 = *v52;
            v52 += 3;
            --v53;
            ++v54;
          }

          while (!v55);
          *(a1 + 1648) = v49;
        }
      }

      if (v49 < v50 || (sub_100108228(a1, a2, __src, __smax, a5, a6, a7, a8) & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = "end entry failed";
      v19 = 1472;
      goto LABEL_13;
    }

    if (!v12)
    {
      goto LABEL_90;
    }

    v28 = v12[275];
    v23 = __CFADD__(v28, __smax);
    v29 = v28 + __smax;
    if (!v23 && (v29 & 0x8000000000000000) == 0)
    {
      v30 = v12 + 275;
      a2 = v12[276];
      if (a2 < v29)
      {
        do
        {
          while (!a2)
          {
            a2 = 0x4000;
            if (v29 <= 0x4000)
            {
              v32 = (v12 + 277);
              a2 = 0x4000;
              goto LABEL_72;
            }
          }

          v31 = a2 >> 1;
          if ((a2 & (a2 >> 1)) != 0)
          {
            v31 = a2 & (a2 >> 1);
          }

          a2 += v31;
        }

        while (a2 < v29);
        v32 = (v12 + 277);
        if (a2 >= 0x2000000001)
        {
          v58 = (v12 + 277);
          *__error() = 12;
          goto LABEL_113;
        }

LABEL_72:
        v56 = a2;
        v58 = v32;
        v41 = *v32;
        v42 = realloc(*v32, a2);
        if (v42)
        {
          v12[277] = v42;
          v12[276] = v56;
          goto LABEL_74;
        }

        free(v41);
LABEL_113:
        *v58 = 0;
        *v30 = 0;
        v12[276] = 0;
        goto LABEL_114;
      }

LABEL_74:
      v43 = v12[277];
      if (__src)
      {
        memcpy((v43 + *v30), __src, __smax);
      }

      else if (v43)
      {
        memset_s((v43 + *v30), __smax, 0, __smax);
      }

      *v30 += __smax;
      if ((__smax & 0x8000000000000000) == 0)
      {
LABEL_90:
        if (v13 && (sub_100107F88(v13, 88, __smax, __src) & 0x80000000) != 0)
        {
          v14 = "sending blob";
          v15 = 1434;
          goto LABEL_8;
        }

        goto LABEL_97;
      }
    }

LABEL_114:
    v14 = "too many blob bytes received";
    v15 = 1433;
    goto LABEL_8;
  }

  return result;
}

void sub_100107730(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 1600), &v1, 1u);
  if (!v1)
  {
    sub_100107EA8(a1);
  }
}

void sub_100107750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && atomic_fetch_add((a1 + 2304), 0xFFFFFFFF) == 1)
  {
    v9 = *(a1 + 2300);
    if (v9 != -1 && v9 != 3)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 223, 72, 0, "invalid entry final state %d: %s", a7, a8, *(a1 + 2300));
    }

    if (atomic_load((a1 + 2304)))
    {
      v12 = atomic_load((a1 + 2304));
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 224, 72, 0, "invalid entry final ref count %u: %s", a7, a8, v12);
    }

    if ((*(a1 + 2296) & 0x80000000) == 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 226, 72, 0, "invalid entry final fd", a7, a8, v13);
      close(*(a1 + 2296));
    }

    AAByteStreamClose(*(a1 + 2288));
    free(*(a1 + 2216));
    memset_s((a1 + 2200), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2240));
    memset_s((a1 + 2224), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2264));
    memset_s((a1 + 2248), 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

uint64_t sub_1001078C0(uint64_t *a1)
{
  v1 = a1[21];
  if (!v1)
  {
    return 0;
  }

  a1[21] = 0;
  v3 = *a1;
  if (*(v1 + 2300) != -1)
  {
    *(v1 + 2300) = -1;
    v4 = *(v3 + 1040);
    if (v4)
    {
      v4(*(v3 + 1032), 22, v1, v1 + 2272);
      v3 = *a1;
    }
  }

  atomic_fetch_add_explicit((v3 + 1604), 1u, memory_order_relaxed);
  AAByteStreamClose(*(v1 + 2288));
  *(v1 + 2288) = 0;
  if ((sub_100107D24(*a1 + 1200, v1) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadFailEntry", 736, 72, 0, "sending entry to retire thread", v5, v6, v8);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100107984(uint64_t a1, uint64_t a2)
{
  v4 = AAEntryACLBlobCreate();
  v10 = AAEntryXATBlobCreate();
  v11 = *(a2 + 2224);
  if (v11 && (sub_1001117B8(v4, *(a2 + 2240), v11, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    v19 = "invalid ACL blob";
    v20 = 354;
LABEL_22:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", v20, 72, 0, v19, v8, v9, v39);
    v30 = 0;
    v16 = 0;
    goto LABEL_32;
  }

  v12 = *(a2 + 2200);
  if (v12 && (sub_10010DEF4(v10, *(a2 + 2216), v12, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    v19 = "invalid XAT blob";
    v20 = 357;
    goto LABEL_22;
  }

  v13 = *(a2 + 2248);
  if (v13)
  {
    v16 = AAEntryYECBlobCreateWithEncodedData(*(a2 + 2264), v13);
    if (!v16)
    {
      v17 = "invalid YEC blob";
      v18 = 361;
LABEL_25:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", v18, 72, 0, v17, v14, v15, v39);
LABEL_26:
      v30 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v16 = 0;
  }

  v21 = *(a1 + 1040);
  if (v21)
  {
    v21(*(a1 + 1032), 24, a2, v10);
    (*(a1 + 1040))(*(a1 + 1032), 25, a2, v4);
  }

  if (v16)
  {
    *v40 = 0;
    if ((AAEntryYECBlobApplyToPath(v16, a1, a2, v40, *(a1 + 1024), *(a1 + 1060)) & 0x80000000) != 0)
    {
      v39 = v40[0];
      v17 = "corrupted file data, ECC failed 0x%08x: %s";
      v18 = 377;
      goto LABEL_25;
    }

    if (*v40)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 378, 72, "ECC applied 0x%08x: %s", v22, v14, v15, v40[0]);
    }
  }

  if ((sub_1000F4744(v40, 0x800uLL, a1, a2) & 0x80000000) != 0)
  {
    v39 = a1;
    v17 = "invalid path: %s/%s";
    v18 = 391;
    goto LABEL_25;
  }

  v26 = *(a2 + 2296);
  v27 = v26;
  if (v26 < 0)
  {
    v27 = open(v40, 0x200000);
    if (v27 < 0)
    {
      v36 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 400, 72, v36, "open: %s", v37, v38, v40);
      goto LABEL_26;
    }
  }

  if ((sub_10010EABC(v10, v27, *(a1 + 1024), v23, v24, v25, v14, v15) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 405, 72, 0, "applying XAT: %s", v28, v29, a2);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  if ((sub_1001126B4(v4, v27, *(a1 + 1024)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 406, 72, 0, "applying ACL: %s", v31, v32, a2);
    v30 = 0;
  }

  if ((sub_10010BEB4((a2 + 2056), v27, *(a1 + 1024)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 407, 72, 0, "applying ATTR: %s", v33, v34, a2);
    v30 = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  close(v27);
LABEL_32:
  AAEntryXATBlobDestroy(v10);
  AAEntryACLBlobDestroy(v4);
  AAEntryYECBlobDestroy(v16);
  if (v30)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100107D24(uint64_t a1, uint64_t a2)
{
  if (pthread_mutex_lock((a1 + 16)))
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 597, 72, *v4, "pthread_mutex_lock", v5, v6, v20);
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v8 = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  else if (v9 >= 0x40)
  {
    memmove(*(a1 + 104), (*(a1 + 104) + 8 * v9), 8 * v10);
    *(a1 + 88) = 0;
    *(a1 + 96) = v10;
    v8 = v10;
  }

  v11 = *(a1 + 80);
  if (v8 < v11)
  {
    goto LABEL_14;
  }

  v12 = 2 * v11;
  if (!v11)
  {
    v12 = 256;
  }

  *(a1 + 80) = v12;
  if ((8 * v12) < 0x2000000001)
  {
    v13 = *(a1 + 104);
    v14 = realloc(v13, 8 * v12);
    if (!v14)
    {
      free(v13);
      goto LABEL_18;
    }

    *(a1 + 104) = v14;
    v8 = *(a1 + 96);
    v11 = *(a1 + 80);
LABEL_14:
    if (v8 < v11)
    {
      v15 = *(a1 + 104);
      *(a1 + 96) = v8 + 1;
      *(v15 + 8 * v8) = a2;
    }

    v16 = 1;
    goto LABEL_19;
  }

  *__error() = 12;
LABEL_18:
  v16 = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
LABEL_19:
  if (pthread_mutex_unlock((a1 + 16)))
  {
    v17 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 623, 72, *v17, "pthread_mutex_unlock", v18, v19, v20);
    v16 = 0;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_100107EA8(uint64_t a1)
{
  v2 = (a1 + 1632);
  v3 = *(a1 + 1632);
  if (v3)
  {
    v4 = *(a1 + 1632);
    if (*(v3 + 2300) != -1)
    {
      *(v3 + 2300) = -1;
      v5 = *(a1 + 1040);
      v4 = v3;
      if (v5)
      {
        v5(*(a1 + 1032), 22, v3, v3 + 2272);
        v4 = *(a1 + 1632);
      }
    }

    if ((sub_100107D24(a1 + 1200, v4) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToRetireThread", 1163, 72, 0, "retireThreadEnqueue failed", v6, v7, v16);
      sub_100107750(v3, v8, v9, v10, v11, v12, v13, v14);
    }

    atomic_fetch_add_explicit((a1 + 1604), 1u, memory_order_relaxed);
  }

  else
  {
    v15 = *(a1 + 1640);
    if (v15)
    {
      sub_100107F88(v15, 70, 0, 0);
    }
  }

  *(a1 + 1608) = 1;
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100107F88(uint64_t a1, int a2, size_t a3, const void *a4)
{
  buf = a2;
  v14 = a3;
  if (AAByteStreamWrite(*(a1 + 16), &buf, 0xCuLL) == 12)
  {
    if (!a3 || AAByteStreamWrite(*(a1 + 32), a4, a3) == a3)
    {
      return 0;
    }

    v10 = "sending command payload";
    v11 = 713;
  }

  else
  {
    v10 = "sending command";
    v11 = 708;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadSendCommand", v11, 72, 0, v10, v7, v8, v12);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100108050(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  if (a3 == -1)
  {
    return 0;
  }

  v8 = a1 + 80 * a2 + 1312;
  if (pthread_mutex_lock(v8) < 0)
  {
    v14 = *__error();
    v17 = "pthread_mutex_lock";
    v18 = 514;
LABEL_28:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", v18, 72, v14, v17, v15, v16, v29);
    return 0xFFFFFFFFLL;
  }

  v9 = *(v8 + 64);
  if (v9 <= a3)
  {
    v19 = *(v8 + 64);
    do
    {
      if (v19)
      {
        v19 *= 2;
      }

      else
      {
        v19 = 32;
      }
    }

    while (v19 <= a3);
    *(v8 + 64) = v19;
    if (32 * v19 < 0x2000000001)
    {
      v20 = *(v8 + 72);
      v10 = realloc(v20, 32 * v19);
      if (v10)
      {
        *(v8 + 72) = v10;
        v21 = *(v8 + 64);
        v22 = v21 > v9;
        v23 = v21 - v9;
        if (v22)
        {
          v24 = &v10[32 * v9 + 16];
          do
          {
            *(v24 - 2) = 0;
            *(v24 - 1) = 0;
            *v24 = -1;
            *(v24 + 1) = -1;
            v24 += 32;
            --v23;
          }

          while (v23);
        }

        goto LABEL_5;
      }

      free(v20);
    }

    else
    {
      *__error() = 12;
    }

    *(v8 + 72) = 0;
    v25 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 523, 72, *v25, "malloc", v26, v27, v29);
    *(v8 + 64) = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v10 = *(v8 + 72);
LABEL_5:
  v11 = 0;
  v12 = &v10[32 * a3];
  v13 = *v12;
  if (a4 && !v13)
  {
    *v12 = a4;
    v11 = 1;
    atomic_fetch_add((a4 + 2304), 1u);
    v13 = *(*(v8 + 72) + 32 * a3);
  }

  *a5 = v13;
LABEL_26:
  if (pthread_mutex_unlock(v8) < 0)
  {
    v14 = *__error();
    v17 = "pthread_mutex_unlock";
    v18 = 547;
    goto LABEL_28;
  }

  return v11;
}

uint64_t sub_100108228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1608))
  {
    return 0;
  }

  v11 = *(a1 + 1632);
  v12 = *(a1 + 1640);
  if (*(a1 + 1632) == 0)
  {
    v13 = "no active entry or active thread";
    v14 = 1202;
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamEntryEnd", v14, 72, 0, v13, a7, a8, v16);
    sub_100107EA8(a1);
    return 0xFFFFFFFFLL;
  }

  if (v11)
  {
    if ((sub_100108304(a1) & 0x80000000) != 0)
    {
      v13 = "send entry to thread";
      v14 = 1207;
      goto LABEL_7;
    }

    v12 = *(a1 + 1640);
  }

  v15 = (a1 + 1632);
  if (v12)
  {
    sub_100107F88(v12, 69, 0, 0);
  }

  result = 0;
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t sub_100108304(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 1088)))
  {
    v5 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v6 = 91;
LABEL_8:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v6, 0, v5, v2, v3, v4, v17);
    v12 = "SharedArrayPop failed";
    v13 = 1145;
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(a1 + 1072);
    if (v7)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 1152), (a1 + 1088)))
    {
      v5 = "SharedArrayPop: pthread_cond_wait failed\n";
      v6 = 94;
      goto LABEL_8;
    }
  }

  v8 = v7 - 1;
  *(a1 + 1072) = v8;
  v9 = *(*(a1 + 1080) + 4 * v8);
  if (pthread_mutex_unlock((a1 + 1088)))
  {
    v5 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v6 = 98;
    goto LABEL_8;
  }

  v15 = *(a1 + 1064) + 176 * v9;
  *(a1 + 1640) = v15;
  *(v15 + 168) = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (pthread_mutex_lock((v15 + 56)) || (v16 = *(v15 + 48), *(v15 + 48) = v16 + 1, !v16) && pthread_cond_broadcast((v15 + 120)) || pthread_mutex_unlock((v15 + 56)))
  {
    v12 = "SemRelease failed";
    v13 = 1150;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", v13, 72, 0, v12, v10, v11, v17);
    return 0xFFFFFFFFLL;
  }

  if ((sub_100107F88(v15, 66, 0, 0) & 0x80000000) != 0)
  {
    v12 = "extract thread BEGIN failed";
    v13 = 1153;
    goto LABEL_9;
  }

  return 0;
}

unsigned int *sub_1001084A4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v12 = calloc(1uLL, 0x1A8uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    v14 = calloc(a1, 0x198uLL);
    *(v13 + 1) = v14;
    if (v14)
    {
      v15 = calloc(1uLL, 0x20uLL);
      *(v13 + 2) = v15;
      if (v15)
      {
        v16 = *v13;
        v13[10] = 0;
        v13[11] = v16;
        v17 = calloc(v16, 4uLL);
        *(v13 + 6) = v17;
        if (v17)
        {
          if (pthread_mutex_init((v13 + 14), 0))
          {
            v21 = "SharedArrayInit: pthread_mutex_init failed\n";
            v22 = 56;
          }

          else
          {
            if (!pthread_cond_init((v13 + 30), 0))
            {
              v29 = *v13 + 1;
              v13[42] = 0;
              v13[43] = v29;
              v30 = calloc(v29, 4uLL);
              *(v13 + 22) = v30;
              if (v30)
              {
                if (pthread_mutex_init((v13 + 46), 0))
                {
                  v34 = "SharedArrayInit: pthread_mutex_init failed\n";
                  v35 = 56;
                }

                else
                {
                  if (!pthread_cond_init((v13 + 62), 0))
                  {
                    v13[6] = -1;
                    v13[74] = 0;
                    if (pthread_mutex_init((v13 + 76), 0) || pthread_cond_init((v13 + 92), 0))
                    {
                      v26 = "SemInit";
                      v27 = 184;
                    }

                    else if (*v13)
                    {
                      v36 = 0;
                      v37 = 352;
                      while (1)
                      {
                        v38 = *(v13 + 1);
                        v39 = v38 + v37;
                        *(v38 + v37 - 336) = v13;
                        *(v38 + v37 - 344) = v36;
                        v43 = v36;
                        *(v38 + v37 - 328) = *(a2 + 8 * v36);
                        *(v38 + v37 - 320) = a3;
                        *(v38 + v37 - 312) = 0;
                        if (pthread_mutex_init((v38 + v37 - 304), 0) || pthread_cond_init((v39 - 240), 0))
                        {
                          v26 = "SemInit";
                          v27 = 194;
                          goto LABEL_14;
                        }

                        *(v38 + v37 - 192) = 0;
                        if (pthread_mutex_init((v38 + v37 - 184), 0) || pthread_cond_init((v38 + v37 - 120), 0))
                        {
                          v26 = "SemInit";
                          v27 = 195;
                          goto LABEL_14;
                        }

                        v40 = (v38 + v37);
                        *&v40[-2].__opaque[16] = 0;
                        if (pthread_mutex_init(&v40[-2].__opaque[24], 0) || pthread_cond_init(v40, 0))
                        {
                          v26 = "SemInit";
                          v27 = 196;
                          goto LABEL_14;
                        }

                        if ((sub_1000E766C((v39 - 352), sub_10010895C, v39 - 352, a6) & 0x80000000) != 0)
                        {
                          break;
                        }

                        v36 = v43 + 1;
                        v37 += 408;
                        if (v43 + 1 >= *v13)
                        {
                          goto LABEL_37;
                        }
                      }

                      v26 = "Thread creation";
                      v27 = 197;
                    }

                    else
                    {
LABEL_37:
                      v41 = *(v13 + 2);
                      *(v41 + 8) = v13;
                      *(v41 + 16) = a4;
                      *(v41 + 24) = a5;
                      if ((sub_1000E766C(v41, sub_100108C1C, v41, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v26 = "Thread creation";
                      v27 = 206;
                    }

                    goto LABEL_14;
                  }

                  v34 = "SharedArrayInit: pthread_cond_init failed\n";
                  v35 = 57;
                }
              }

              else
              {
                v34 = "SharedArrayInit: malloc failed\n";
                v35 = 55;
              }

              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v35, 0, v34, v31, v32, v33, v42);
              v26 = "SharedArrayInit";
              v27 = 182;
LABEL_14:
              v23 = 0;
              goto LABEL_15;
            }

            v21 = "SharedArrayInit: pthread_cond_init failed\n";
            v22 = 57;
          }
        }

        else
        {
          v21 = "SharedArrayInit: malloc failed\n";
          v22 = 55;
        }

        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20, v42);
        v26 = "SharedArrayInit";
        v27 = 180;
        goto LABEL_14;
      }

      v23 = *__error();
      v26 = "malloc";
      v27 = 179;
    }

    else
    {
      v23 = *__error();
      v26 = "malloc";
      v27 = 177;
    }
  }

  else
  {
    v23 = *__error();
    v26 = "malloc";
    v27 = 172;
  }

LABEL_15:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v27, 87, v23, v26, v24, v25, v42);
  sub_100108EA0(v13);
  return 0;
}

uint64_t sub_10010895C(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      v20 = "SharedArrayPush: pthread_mutex_lock failed\n";
      v21 = 117;
      goto LABEL_35;
    }

    v7 = *(v2 + 40);
    v8 = *(v2 + 44);
    v9 = v7;
    if (v7 < v8)
    {
      *(*(v2 + 48) + 4 * v7) = v3;
      v9 = *(v2 + 40);
    }

    *(v2 + 40) = v9 + 1;
    if (!v9)
    {
      if (pthread_cond_broadcast((v2 + 120)))
      {
        break;
      }
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      v20 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      v21 = 124;
      goto LABEL_35;
    }

    if (v7 >= v8)
    {
      v20 = "SharedArrayPush: stack is full\n";
      v21 = 125;
      goto LABEL_35;
    }

    if (pthread_mutex_lock((a1 + 48)))
    {
      goto LABEL_27;
    }

    while (1)
    {
      v12 = *(a1 + 40);
      if (v12 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 48)))
      {
        goto LABEL_27;
      }
    }

    *(a1 + 40) = v12 - 1;
    if (pthread_mutex_unlock((a1 + 48)))
    {
LABEL_27:
      v17 = "SemAcquire";
      v18 = 72;
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error", v13, v14, v22);
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v15 = *(a1 + 160), *(a1 + 160) = v15 + 1, !v15) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      v17 = "SemRelease";
      v18 = 85;
      goto LABEL_28;
    }

    if (!pthread_mutex_lock((a1 + 288)))
    {
      while (1)
      {
        v16 = *(a1 + 280);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 352), (a1 + 288)))
        {
          goto LABEL_26;
        }
      }

      *(a1 + 280) = v16 - 1;
      if (!pthread_mutex_unlock((a1 + 288)))
      {
        continue;
      }
    }

LABEL_26:
    v17 = "SemAcquire";
    v18 = 88;
    goto LABEL_28;
  }

  v20 = "SharedArrayPush: pthread_cond_broadcast failed\n";
  v21 = 122;
LABEL_35:
  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v21, 0, v20, v4, v5, v6, v22);
  v17 = "SharedArrayPush";
  v18 = 69;
LABEL_28:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", v18, 87, 0, v17, v10, v11, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_100108C1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (!pthread_mutex_lock((v2 + 184)))
  {
    while (1)
    {
      v12 = *(v2 + 168);
      if (v12)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 248), (v2 + 184)))
      {
        v6 = "SharedArrayPop: pthread_cond_wait failed\n";
        v7 = 94;
        goto LABEL_3;
      }
    }

    v13 = v12 - 1;
    *(v2 + 168) = v13;
    v14 = *(*(v2 + 176) + 4 * v13);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      v6 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      v7 = 98;
      goto LABEL_3;
    }

    if (v14 == -2)
    {
      if (!pthread_mutex_lock((v2 + 304)))
      {
        v17 = *(v2 + 296);
        *(v2 + 296) = v17 + 1;
        if (v17 || !pthread_cond_broadcast((v2 + 368)))
        {
          pthread_mutex_unlock((v2 + 304));
        }
      }
    }

    else
    {
      if (v14 == -1)
      {
        return a1;
      }

      v15 = *(v2 + 8) + 408 * v14;
      if (pthread_mutex_lock((v15 + 168)))
      {
        goto LABEL_28;
      }

      while (1)
      {
        v16 = *(v15 + 160);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v15 + 232), (v15 + 168)))
        {
          goto LABEL_28;
        }
      }

      *(v15 + 160) = v16 - 1;
      if (pthread_mutex_unlock((v15 + 168)))
      {
LABEL_28:
        v10 = "SemAcquire";
        v11 = 134;
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v15 + 24)) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error", v18, v19, v22);
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v15 + 288)) || (v20 = *(v15 + 280), *(v15 + 280) = v20 + 1, !v20) && pthread_cond_broadcast((v15 + 352)) || pthread_mutex_unlock((v15 + 288)))
      {
        v10 = "SemRelease";
        v11 = 144;
        goto LABEL_29;
      }
    }
  }

  v6 = "SharedArrayPop: pthread_mutex_lock failed\n";
  v7 = 91;
LABEL_3:
  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v7, 0, v6, v3, v4, v5, v22);
  v10 = "SharedArrayDequeue";
  v11 = 114;
LABEL_29:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", v11, 87, 0, v10, v8, v9, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_100108EA0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v6 = 1;
        goto LABEL_41;
      }

      v4 = 0;
      do
      {
        if (*v2)
        {
          ++v4;
        }

        v2 += 51;
        --v3;
      }

      while (v3);
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 14)))
          {
            v10 = 91;
            v11 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v10, 0, v11, v7, v8, v9, v39);
            v15 = -1;
          }

          else
          {
            while (1)
            {
              v12 = v1[10];
              if (v12)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 30), (v1 + 14)))
              {
                v10 = 94;
                v11 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v20 = v12 - 1;
            v1[10] = v20;
            v15 = *(*(v1 + 6) + 4 * v20);
            if (!pthread_mutex_unlock((v1 + 14)))
            {
              goto LABEL_17;
            }

            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v21, v22, v23, v39);
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop", v13, v14, v40);
          v6 = 0;
LABEL_17:
          v16 = *(v1 + 1) + 408 * v15;
          *(v16 + 400) = -1;
          if (pthread_mutex_lock((v16 + 48)) || (v19 = *(v16 + 40), *(v16 + 40) = v19 + 1, !v19) && pthread_cond_broadcast((v16 + 112)) || pthread_mutex_unlock((v16 + 48)))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease", v17, v18, v39);
            v6 = 0;
          }

          if ((sub_1000E79CC(*v16) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread", v24, v25, v39);
            v6 = 0;
          }

          *v16 = 0;
          if (++v5 == v4)
          {
            if (!*v1)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }
      }

      v6 = 1;
LABEL_33:
      v26 = 0;
      v27 = 352;
      do
      {
        v28 = *(v1 + 1);
        v29 = v28 + v27;
        if (!pthread_mutex_destroy((v28 + v27 - 304)))
        {
          pthread_cond_destroy((v29 - 240));
        }

        if (!pthread_mutex_destroy((v29 - 184)))
        {
          pthread_cond_destroy((v28 + v27 - 120));
        }

        v30 = (v28 + v27);
        if (!pthread_mutex_destroy(&v30[-2].__opaque[24]))
        {
          pthread_cond_destroy(v30);
        }

        ++v26;
        v27 += 408;
      }

      while (v26 < *v1);
LABEL_41:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v6 = 1;
    }

    v31 = *(v1 + 2);
    if (v31)
    {
      if (*v31)
      {
        if ((sub_1000FAA6C(v1 + 42, -1) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue", v32, v33, v39);
          v6 = 0;
        }

        if ((sub_1000E79CC(*v31) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread", v34, v35, v39);
          v6 = 0;
        }

        *v31 = 0;
        v31 = *(v1 + 2);
      }

      free(v31);
      *(v1 + 2) = 0;
    }

    if (!pthread_mutex_destroy((v1 + 14)) && !pthread_cond_destroy((v1 + 30)))
    {
      free(*(v1 + 6));
    }

    if (!pthread_mutex_destroy((v1 + 46)) && !pthread_cond_destroy((v1 + 62)))
    {
      free(*(v1 + 22));
    }

    if (!pthread_mutex_destroy((v1 + 76)))
    {
      pthread_cond_destroy((v1 + 92));
    }

    v38 = atomic_load(v1 + 104);
    if (v38 >= 1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors", v36, v37, v39);
      v6 = 0;
    }

    free(v1);
    if (v6)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10010928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) != -1)
  {
    v8 = "Missing call to RunWorker before GetWorker";
    v9 = 294;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", v9, 87, 0, v8, a7, a8, v20);
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v15 = 91;
LABEL_10:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v15, 0, v14, v11, v12, v13, v20);
    v8 = "SharedArrayPop failed";
    v9 = 298;
    goto LABEL_11;
  }

  while (1)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      v14 = "SharedArrayPop: pthread_cond_wait failed\n";
      v15 = 94;
      goto LABEL_10;
    }
  }

  v17 = v16 - 1;
  *(a1 + 40) = v17;
  v18 = *(*(a1 + 48) + 4 * v17);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v15 = 98;
    goto LABEL_10;
  }

  *(a1 + 24) = v18;
  return *(*(a1 + 8) + 408 * v18 + 24);
}

uint64_t sub_1001093C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 == -1)
  {
    v13 = "Missing call to GetWorker before RunWorker";
    v14 = 311;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", v14, 87, 0, v13, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v9 = *(a1 + 8) + 408 * v8;
  v10 = *(a1 + 32);
  *(a1 + 32) = v10 + 1;
  *(v9 + 400) = v10;
  if ((sub_1000FAA6C((a1 + 168), v8) & 0x80000000) != 0)
  {
    v13 = "SharedArrayEnqueue failed";
    v14 = 324;
    goto LABEL_11;
  }

  if (pthread_mutex_lock((v9 + 48)) || (v11 = *(v9 + 40), *(v9 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v9 + 112)) || (result = pthread_mutex_unlock((v9 + 48)), result))
  {
    v13 = "SemRelease failed";
    v14 = 325;
    goto LABEL_11;
  }

  return result;
}