uint64_t *sub_2712575FC()
{
  if ((atomic_load_explicit(&qword_280878230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878230))
  {
    sub_271257698();
  }

  if (byte_28087822F >= 0)
  {
    return &qword_280878218;
  }

  else
  {
    return qword_280878218;
  }
}

void sub_271257764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271257794(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two32f]", 30, &v10);
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

void sub_271257878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712578C4(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812EFA0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_271257924(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_271257954(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125796C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288111F98;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t sub_2712579B8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 44) >> 2;
  v9 = (*(a2 + 36) >> 2) & 0x3FFFFFFF3FFFFFFFLL;
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
  sub_271257BC8(a1, &v18);
  return a1;
}

void sub_271257BA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void sub_271257BC8(uint64_t a1, _DWORD *a2)
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
    v4 = *(a1 + 44) >> 2;
    v5 = (*(a1 + 36) >> 2) & 0x3FFFFFFF3FFFFFFFLL;
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

    v16 = *(a1 + 8);
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
        sub_271257D78(v19);
        return;
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
}

void sub_271257D78(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20);
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
      sub_27125819C(&v36, &v43, &v35, v11, v12);
    }

    return;
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
      sub_271257F54(&v36, v1, v2);
    }

    return;
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
      return;
    }

    v32 = *v2;
    v33 = *v1;
    v31 = 4 * v34;
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
        return;
      }

      v29 = 4 * v18;
      v30 = 4 * v19;
      do
      {
        memmove(v27, v26, 4 * v21);
        v26 += v29;
        v27 += v30;
        --v28;
      }

      while (v28);
    }

    if (v21)
    {
      v31 = 4 * v21;
      v32 = v27;
      v33 = v26;
LABEL_44:

      memmove(v32, v33, v31);
    }
  }
}

uint64_t *sub_271257F54(uint64_t *result, char **a2, char **a3)
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
        result = memmove(v12, v11, 4 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 4 * v14;
          v12 += 4 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 4 * v14;
        v12 += 4 * v13;
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
        v17 = 4 * v9;
        v18 = &v11[4 * v9];
        v19 = 4 * v14;
        v20 = 4 * v10;
        v21 = &v12[4 * v10];
        v33 = 4 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 4 * v15);
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
          result = memmove(&v21[v22], &v36[v23], 4 * *v7);
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
      result = memmove(v12, v11, 4 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 4 * v9;
        v12 += 4 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 4 * v9;
      v12 += 4 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 4 * v26);
    }
  }

  return result;
}

float sub_27125819C(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = a1[8];
  v6 = a1[5];
  if (!v5)
  {
    v7 = a1[2];
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_34;
      }

      v34 = a1[3];
      v35 = a1[4];
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v7 = a1[2];
  v8 = a1[9];
  v9 = a1[10];
  if (v6)
  {
    v10 = a1[6];
    v11 = a1[7];
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
        *v45 = *v46;
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
    v13 = 4 * v8;
    v14 = v10;
    v15 = 4 * a1[3];
    v16 = 4 * v9;
    v17 = v11;
    v18 = 4 * a1[4];
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
        v25 = (v25 + v14 * 4);
        v24 = (v24 + v17 * 4);
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
    v10 = a1[6];
    v11 = a1[7];
    if (v7)
    {
      v32 = 0;
      v33 = 4 * v10;
      v34 = a1[3];
      v35 = a1[4];
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
        *v36 = *v37;
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
    v40 = 4 * v8;
    v34 = a1[3];
    v35 = a1[4];
    v41 = 4 * v9;
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
      *v42 = *v43;
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
  result = *a4;
  *a5 = *a4;
  return result;
}

uint64_t *sub_271258444()
{
  if ((atomic_load_explicit(&qword_280878250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878250))
  {
    sub_2712584E0();
  }

  if (byte_28087824F >= 0)
  {
    return &qword_280878238;
  }

  else
  {
    return qword_280878238;
  }
}

void sub_2712585AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712585DC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Three8u]", 31, &v10);
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

void sub_2712586C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125870C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812EFC0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125876C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125879C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_2712587B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288111F18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_271258808()
{
  if ((atomic_load_explicit(&qword_280878270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878270))
  {
    sub_2712588A4();
  }

  if (byte_28087826F >= 0)
  {
    return &qword_280878258;
  }

  else
  {
    return qword_280878258;
  }
}

void sub_271258970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712589A0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Three16u]", 32, &v10);
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

void sub_271258A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271258AD0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812EFE0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_271258B30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_271258B60(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271258B78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288113298;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_271258BCC()
{
  if ((atomic_load_explicit(&qword_280878290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878290))
  {
    sub_271258C68();
  }

  if (byte_28087828F >= 0)
  {
    return &qword_280878278;
  }

  else
  {
    return qword_280878278;
  }
}

void sub_271258D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271258D64(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Three16f]", 32, &v10);
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

void sub_271258E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271258E94(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F000[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_271258EFC(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271258F14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288113218;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_271258F68()
{
  if ((atomic_load_explicit(&qword_2808782B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808782B0))
  {
    sub_271259004();
  }

  if (byte_2808782AF >= 0)
  {
    return &qword_280878298;
  }

  else
  {
    return qword_280878298;
  }
}

void sub_2712590D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271259100(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Three32f]", 32, &v10);
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

void sub_2712591E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271259230(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F020[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_271259290(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_2712592C0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_2712592D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288113198;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125932C()
{
  if ((atomic_load_explicit(&qword_2808782D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808782D0))
  {
    sub_2712593C8();
  }

  if (byte_2808782CF >= 0)
  {
    return &qword_2808782B8;
  }

  else
  {
    return qword_2808782B8;
  }
}

void sub_271259494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712594C4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Four8u]", 30, &v10);
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

void sub_2712595A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712595F4(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F040[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_271259654(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_271259684(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125969C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288113118;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_2712596F0()
{
  if ((atomic_load_explicit(&qword_2808782F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808782F0))
  {
    sub_27125978C();
  }

  if (byte_2808782EF >= 0)
  {
    return &qword_2808782D8;
  }

  else
  {
    return qword_2808782D8;
  }
}

void sub_271259858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271259888(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Four16u]", 31, &v10);
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

void sub_27125996C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2712599B8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F060[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_271259A18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_271259A48(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271259A60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288113098;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_271259AB4()
{
  if ((atomic_load_explicit(&qword_280878310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878310))
  {
    sub_271259B50();
  }

  if (byte_28087830F >= 0)
  {
    return &qword_2808782F8;
  }

  else
  {
    return qword_2808782F8;
  }
}

void sub_271259C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271259C4C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Four16f]", 31, &v10);
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

void sub_271259D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271259D7C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F080[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_271259DE4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_271259DFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288113018;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_271259E50()
{
  if ((atomic_load_explicit(&qword_280878330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878330))
  {
    sub_271259EEC();
  }

  if (byte_28087832F >= 0)
  {
    return &qword_280878318;
  }

  else
  {
    return qword_280878318;
  }
}

void sub_271259FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271259FE8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Four32f]", 31, &v10);
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

void sub_27125A0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125A118(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F0A0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125A178(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125A1A8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125A1C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112F98;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125A214()
{
  if ((atomic_load_explicit(&qword_280878350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878350))
  {
    sub_27125A2B0();
  }

  if (byte_28087834F >= 0)
  {
    return &qword_280878338;
  }

  else
  {
    return qword_280878338;
  }
}

void sub_27125A37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125A3AC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgr8u]", 29, &v10);
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

void sub_27125A490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125A4DC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F0C0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125A53C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125A56C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125A584(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112F18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_27125A5D8()
{
  if ((atomic_load_explicit(&qword_280878370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878370))
  {
    sub_27125A674();
  }

  if (byte_28087836F >= 0)
  {
    return &qword_280878358;
  }

  else
  {
    return qword_280878358;
  }
}

void sub_27125A740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125A770(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgr16u]", 30, &v10);
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

void sub_27125A854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125A8A0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F0E0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125A900(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125A930(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125A948(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112E98;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_27125A99C()
{
  if ((atomic_load_explicit(&qword_280878390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878390))
  {
    sub_27125AA38();
  }

  if (byte_28087838F >= 0)
  {
    return &qword_280878378;
  }

  else
  {
    return qword_280878378;
  }
}

void sub_27125AB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125AB34(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgr16f]", 30, &v10);
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

void sub_27125AC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125AC64(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F100[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_27125ACCC(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125ACE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112E18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_27125AD38()
{
  if ((atomic_load_explicit(&qword_2808783B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808783B0))
  {
    sub_27125ADD4();
  }

  if (byte_2808783AF >= 0)
  {
    return &qword_280878398;
  }

  else
  {
    return qword_280878398;
  }
}

void sub_27125AEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125AED0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgr32f]", 30, &v10);
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

void sub_27125AFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125B000(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F120[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125B060(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125B090(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125B0A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112D18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125B0FC()
{
  if ((atomic_load_explicit(&qword_2808783D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808783D0))
  {
    sub_27125B198();
  }

  if (byte_2808783CF >= 0)
  {
    return &qword_2808783B8;
  }

  else
  {
    return qword_2808783B8;
  }
}

void sub_27125B264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125B294(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb8u]", 29, &v10);
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

void sub_27125B378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125B3C4(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F140[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125B424(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125B454(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125B46C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112C98;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_27125B4C0()
{
  if ((atomic_load_explicit(&qword_2808783F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808783F0))
  {
    sub_27125B55C();
  }

  if (byte_2808783EF >= 0)
  {
    return &qword_2808783D8;
  }

  else
  {
    return qword_2808783D8;
  }
}

void sub_27125B628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125B658(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb16u]", 30, &v10);
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

void sub_27125B73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125B788(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F160[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125B7E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125B818(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125B830(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112C18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_27125B884()
{
  if ((atomic_load_explicit(&qword_280878410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878410))
  {
    sub_27125B920();
  }

  if (byte_28087840F >= 0)
  {
    return &qword_2808783F8;
  }

  else
  {
    return qword_2808783F8;
  }
}

void sub_27125B9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125BA1C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb16f]", 30, &v10);
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

void sub_27125BB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125BB4C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F180[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_27125BBB4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125BBCC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112B98;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_27125BC20()
{
  if ((atomic_load_explicit(&qword_280878430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878430))
  {
    sub_27125BCBC();
  }

  if (byte_28087842F >= 0)
  {
    return &qword_280878418;
  }

  else
  {
    return qword_280878418;
  }
}

void sub_27125BD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125BDB8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb32f]", 30, &v10);
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

void sub_27125BE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125BEE8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F1A0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125BF48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125BF78(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125BF90(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112B18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125BFE4()
{
  if ((atomic_load_explicit(&qword_280878450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878450))
  {
    sub_27125C080();
  }

  if (byte_28087844F >= 0)
  {
    return &qword_280878438;
  }

  else
  {
    return qword_280878438;
  }
}

void sub_27125C14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125C17C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgra8u]", 30, &v10);
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

void sub_27125C260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125C2AC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F1C0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125C30C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125C33C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125C354(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112A98;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_27125C3A8()
{
  if ((atomic_load_explicit(&qword_280878470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878470))
  {
    sub_27125C444();
  }

  if (byte_28087846F >= 0)
  {
    return &qword_280878458;
  }

  else
  {
    return qword_280878458;
  }
}

void sub_27125C510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125C540(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgra16u]", 31, &v10);
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

void sub_27125C624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125C670(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F1E0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125C6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125C700(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125C718(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112A18;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_27125C76C()
{
  if ((atomic_load_explicit(&qword_280878490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878490))
  {
    sub_27125C808();
  }

  if (byte_28087848F >= 0)
  {
    return &qword_280878478;
  }

  else
  {
    return qword_280878478;
  }
}

void sub_27125C8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125C904(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgra16f]", 31, &v10);
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

void sub_27125C9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125CA34(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F200[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_27125CA9C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125CAB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112998;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_27125CB08()
{
  if ((atomic_load_explicit(&qword_2808784B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808784B0))
  {
    sub_27125CBA4();
  }

  if (byte_2808784AF >= 0)
  {
    return &qword_280878498;
  }

  else
  {
    return qword_280878498;
  }
}

void sub_27125CC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125CCA0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgra32f]", 31, &v10);
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

void sub_27125CD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125CDD0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F220[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125CE30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125CE60(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125CE78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112918;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125CECC()
{
  if ((atomic_load_explicit(&qword_2808784D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808784D0))
  {
    sub_27125CF68();
  }

  if (byte_2808784CF >= 0)
  {
    return &qword_2808784B8;
  }

  else
  {
    return qword_2808784B8;
  }
}

void sub_27125D034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125D064(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba8u]", 30, &v10);
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

void sub_27125D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125D194(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F240[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125D1F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125D224(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125D23C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112898;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_27125D290()
{
  if ((atomic_load_explicit(&qword_2808784F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808784F0))
  {
    sub_27125D32C();
  }

  if (byte_2808784EF >= 0)
  {
    return &qword_2808784D8;
  }

  else
  {
    return qword_2808784D8;
  }
}

void sub_27125D3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125D428(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba16u]", 31, &v10);
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

void sub_27125D50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125D558(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F260[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125D5B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125D5E8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125D600(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112798;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_27125D654()
{
  if ((atomic_load_explicit(&qword_280878510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878510))
  {
    sub_27125D6F0();
  }

  if (byte_28087850F >= 0)
  {
    return &qword_2808784F8;
  }

  else
  {
    return qword_2808784F8;
  }
}

void sub_27125D7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125D7EC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba16f]", 31, &v10);
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

void sub_27125D8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125D91C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F280[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_27125D984(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125D99C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112718;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_27125D9F0()
{
  if ((atomic_load_explicit(&qword_280878530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878530))
  {
    sub_27125DA8C();
  }

  if (byte_28087852F >= 0)
  {
    return &qword_280878518;
  }

  else
  {
    return qword_280878518;
  }
}

void sub_27125DB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125DB88(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba32f]", 31, &v10);
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

void sub_27125DC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125DCB8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F2A0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125DD18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125DD48(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125DD60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112698;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125DDB4()
{
  if ((atomic_load_explicit(&qword_280878550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878550))
  {
    sub_27125DE50();
  }

  if (byte_28087854F >= 0)
  {
    return &qword_280878538;
  }

  else
  {
    return qword_280878538;
  }
}

void sub_27125DF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125DF4C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Abgr8u]", 30, &v10);
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

void sub_27125E030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125E07C(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F2C0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125E0DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125E10C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125E124(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112618;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_27125E178()
{
  if ((atomic_load_explicit(&qword_280878570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878570))
  {
    sub_27125E214();
  }

  if (byte_28087856F >= 0)
  {
    return &qword_280878558;
  }

  else
  {
    return qword_280878558;
  }
}

void sub_27125E2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125E310(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Abgr16u]", 31, &v10);
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

void sub_27125E3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125E440(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F2E0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125E4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125E4D0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125E4E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112598;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_27125E53C()
{
  if ((atomic_load_explicit(&qword_280878590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878590))
  {
    sub_27125E5D8();
  }

  if (byte_28087858F >= 0)
  {
    return &qword_280878578;
  }

  else
  {
    return qword_280878578;
  }
}

void sub_27125E6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125E6D4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Abgr16f]", 31, &v10);
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

void sub_27125E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125E804(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F300[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_27125E86C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125E884(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112518;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_27125E8D8()
{
  if ((atomic_load_explicit(&qword_2808785B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808785B0))
  {
    sub_27125E974();
  }

  if (byte_2808785AF >= 0)
  {
    return &qword_280878598;
  }

  else
  {
    return qword_280878598;
  }
}

void sub_27125EA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125EA70(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Abgr32f]", 31, &v10);
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

void sub_27125EB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125EBA0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F320[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125EC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125EC30(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125EC48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112498;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

uint64_t *sub_27125EC9C()
{
  if ((atomic_load_explicit(&qword_2808785D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808785D0))
  {
    sub_27125ED38();
  }

  if (byte_2808785CF >= 0)
  {
    return &qword_2808785B8;
  }

  else
  {
    return qword_2808785B8;
  }
}

void sub_27125EE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125EE34(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb8u]", 30, &v10);
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

void sub_27125EF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125EF64(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F340[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125EFC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125EFF4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125F00C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112418;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271255604(v2 + 64, a2 + 64);
}

uint64_t *sub_27125F060()
{
  if ((atomic_load_explicit(&qword_2808785F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808785F0))
  {
    sub_27125F0FC();
  }

  if (byte_2808785EF >= 0)
  {
    return &qword_2808785D8;
  }

  else
  {
    return qword_2808785D8;
  }
}

void sub_27125F1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125F1F8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb16u]", 31, &v10);
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

void sub_27125F2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125F328(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F360[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125F388(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125F3B8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125F3D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112398;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256160(v2 + 64, a2 + 64);
}

uint64_t *sub_27125F424()
{
  if ((atomic_load_explicit(&qword_280878610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878610))
  {
    sub_27125F4C0();
  }

  if (byte_28087860F >= 0)
  {
    return &qword_2808785F8;
  }

  else
  {
    return qword_2808785F8;
  }
}

void sub_27125F58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125F5BC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb16f]", 31, &v10);
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

void sub_27125F6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125F6EC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F380[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

__n128 sub_27125F754(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125F76C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112318;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_271256F80(v2 + 64, a2 + 64);
}

uint64_t *sub_27125F7C0()
{
  if ((atomic_load_explicit(&qword_280878630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878630))
  {
    sub_27125F85C();
  }

  if (byte_28087862F >= 0)
  {
    return &qword_280878618;
  }

  else
  {
    return qword_280878618;
  }
}

void sub_27125F928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27125F958(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb32f]", 31, &v10);
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

void sub_27125FA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27125FA88(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_28812F3A0[v2])(&v4, a1);
  }

  *(a1 + 112) = -1;
  return a1;
}

void sub_27125FAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 72) = 0;
}

__n128 sub_27125FB18(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t sub_27125FB30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112218;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;
  return sub_2712579B8(v2 + 64, a2 + 64);
}

void sub_27125FBEC(uint64_t a1, int a2, _DWORD *a3)
{
  v177 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v155 = &unk_288111728;
      LODWORD(v3) = *a3;
      if (a3[1])
      {
        v3 = v3;
      }

      else
      {
        v3 = 0;
      }

      v4 = (*a3 != 0) | (v3 << 32);
      v5 = *a3;
      LOBYTE(v156) = 0;
      v157 = &unk_2881186E0;
      *&v158 = v5;
      *(&v158 + 1) = v4;
      if (HIDWORD(v5))
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      v7 = v6;
      if (v6)
      {
        v5 = 0;
      }

      *v171 = &unk_288112D98;
      *&v171[8] = v5;
      *&v171[16] = v4;
      v171[24] = 0;
      v171[32] = 0;
      *v169 = v4;
      if (v5)
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
        v9 = v5;
      }

      v168 = v9;
      if ((v3 & (v3 - 1)) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v3;
      }

      sub_2717CD2D0(v172, &v168, v169, 1, &v156, 1, v10);
      *v159 = &unk_288112D98;
      *&v159[8] = *&v171[8];
      *&v159[20] = *&v171[20];
      *&v159[40] = *v172;
      v160 = *&v172[8];
      v161 = v173;
      LODWORD(v162) = 1;
      operator new();
    case 2:
      v155 = &unk_288110E78;
      LODWORD(v113) = *a3;
      if (a3[1])
      {
        v113 = v113;
      }

      else
      {
        v113 = 0;
      }

      v114 = (*a3 != 0) | (v113 << 32);
      v115 = *a3;
      LOWORD(v156) = 0;
      v157 = &unk_288118160;
      *&v158 = v115;
      *(&v158 + 1) = v114;
      if (HIDWORD(v115))
      {
        v116 = v115 == 0;
      }

      else
      {
        v116 = 1;
      }

      v117 = v116;
      if (v116)
      {
        v115 = 0;
      }

      *v171 = &unk_288112818;
      *&v171[8] = v115;
      *&v171[16] = v114;
      v171[24] = 0;
      v171[32] = 0;
      *v169 = v114;
      if (v115)
      {
        v118 = v117;
      }

      else
      {
        v118 = 1;
      }

      if (v118)
      {
        v119 = 0;
      }

      else
      {
        v119 = v115;
      }

      v168 = v119;
      v120 = 2 * v113;
      if ((v120 & (v120 - 1)) != 0)
      {
        v121 = 2;
      }

      else
      {
        v121 = v120;
      }

      sub_2717D4198(v172, &v168, v169, 1, &v156, 1, v121);
      *v159 = &unk_288112818;
      *&v159[8] = *&v171[8];
      *&v159[20] = *&v171[20];
      *&v159[40] = *v172;
      v160 = *&v172[8];
      v161 = v173;
      LODWORD(v162) = 1;
      operator new();
    case 3:
      v155 = &unk_288110588;
      LODWORD(v104) = *a3;
      if (a3[1])
      {
        v104 = v104;
      }

      else
      {
        v104 = 0;
      }

      v105 = (*a3 != 0) | (v104 << 32);
      v106 = *a3;
      LOWORD(v156) = 0;
      v157 = &unk_288117BE0;
      *&v158 = v106;
      *(&v158 + 1) = v105;
      if (HIDWORD(v106))
      {
        v107 = v106 == 0;
      }

      else
      {
        v107 = 1;
      }

      v108 = v107;
      if (v107)
      {
        v106 = 0;
      }

      *v171 = &unk_288112298;
      *&v171[8] = v106;
      *&v171[16] = v105;
      v171[24] = 0;
      v171[32] = 0;
      *v169 = v105;
      if (v106)
      {
        v109 = v108;
      }

      else
      {
        v109 = 1;
      }

      if (v109)
      {
        v110 = 0;
      }

      else
      {
        v110 = v106;
      }

      v168 = v110;
      v111 = 2 * v104;
      if ((v111 & (v111 - 1)) != 0)
      {
        v112 = 2;
      }

      else
      {
        v112 = v111;
      }

      sub_2717D43FC(v172, &v168, v169, 1, &v156, 1, v112);
      *v159 = &unk_288112298;
      *&v159[8] = *&v171[8];
      *&v159[20] = *&v171[20];
      *&v159[40] = *v172;
      v160 = *&v172[8];
      *v172 = 0;
      *&v172[8] = 0;
      v161 = v173;
      LODWORD(v162) = 1;
      sub_27179E364(v171);
      operator new();
    case 4:
      v155 = &unk_2881103E8;
      LODWORD(v64) = *a3;
      if (a3[1])
      {
        v64 = v64;
      }

      else
      {
        v64 = 0;
      }

      v65 = (*a3 != 0) | (v64 << 32);
      v66 = *a3;
      v156 = 0;
      v157 = &unk_288117AE0;
      *&v158 = v66;
      *(&v158 + 1) = v65;
      if (HIDWORD(v66))
      {
        v67 = v66 == 0;
      }

      else
      {
        v67 = 1;
      }

      v68 = v67;
      if (v67)
      {
        v66 = 0;
      }

      *v171 = &unk_288112198;
      *&v171[8] = v66;
      *&v171[16] = v65;
      v171[24] = 0;
      v171[32] = 0;
      *v169 = v65;
      if (v66)
      {
        v69 = v68;
      }

      else
      {
        v69 = 1;
      }

      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = v66;
      }

      v168 = v70;
      v71 = 4 * v64;
      if ((v71 & (v71 - 1)) != 0)
      {
        v72 = 4;
      }

      else
      {
        v72 = v71;
      }

      sub_2717D48BC(v172, &v168, v169, 1, &v156, 1, v72);
      *v159 = &unk_288112198;
      *&v159[8] = *&v171[8];
      *&v159[20] = *&v171[20];
      *&v159[40] = *v172;
      v160 = *&v172[8];
      v161 = v173;
      LODWORD(v162) = 1;
      operator new();
    case 5:
      v95 = 2 * (*a3 != 0);
      LODWORD(v96) = v95 * *a3;
      if (a3[1])
      {
        v96 = v96;
      }

      else
      {
        v96 = 0;
      }

      *v171 = 2;
      *&v171[4] = *a3;
      v97 = *&v171[4];
      v168 = &unk_2881102F8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v95 & 0x1FFFFFFFFLL | ((v96 >> 1) << 33);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v97);
      *&v169[20] = v96;
      *&v169[24] = v97;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_288117A60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_27179FB48(v171, v169, &v155);
      *&v159[24] = &unk_288112118;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 6:
      v61 = 2 * (*a3 != 0);
      LODWORD(v62) = v61 * *a3;
      if (a3[1])
      {
        v62 = v62;
      }

      else
      {
        v62 = 0;
      }

      *v171 = 2;
      *&v171[4] = *a3;
      v63 = *&v171[4];
      v168 = &unk_288110248;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v61 & 0x1FFFFFFFFLL | ((v62 >> 1) << 33);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v63);
      *&v169[20] = v62;
      *&v169[24] = v63;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_2881179E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A06CC(v171, v169, &v155);
      *&v159[24] = &unk_288112098;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 7:
      v43 = 2 * (*a3 != 0);
      LODWORD(v44) = v43 * *a3;
      if (a3[1])
      {
        v44 = v44;
      }

      else
      {
        v44 = 0;
      }

      *v171 = 2;
      *&v171[4] = *a3;
      v45 = *&v171[4];
      v168 = &unk_288110158;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v43 & 0x1FFFFFFFFLL | ((v44 >> 1) << 33);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v45);
      *&v169[20] = v44;
      *&v169[24] = v45;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288117960;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v46 = sub_2717A14B0(v171, v169, &v155);
      *&v159[24] = &unk_288112018;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717A11C0(v46);
      operator new();
    case 8:
      v101 = 2 * (*a3 != 0);
      LODWORD(v102) = v101 * *a3;
      if (a3[1])
      {
        v102 = v102;
      }

      else
      {
        v102 = 0;
      }

      *v171 = 2;
      *&v171[4] = *a3;
      v103 = *&v171[4];
      v168 = &unk_288110068;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v101 & 0x1FFFFFFFFLL | ((v102 >> 1) << 33);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v103);
      *&v169[20] = v102;
      *&v169[24] = v103;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_2881178E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A2040(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288111F98;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 9:
      if (*a3)
      {
        v92 = 3;
      }

      else
      {
        v92 = 0;
      }

      LODWORD(v93) = v92 * *a3;
      if (a3[1])
      {
        v93 = v93;
      }

      else
      {
        v93 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v94 = *&v171[4];
      v168 = &unk_28810FFB8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v92 | (v93 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v94);
      *&v169[20] = v93;
      *&v169[24] = v94;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_288117860;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A2BCC(v171, v169, &v155);
      *&v159[24] = &unk_288111F18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 10:
      if (*a3)
      {
        v129 = 3;
      }

      else
      {
        v129 = 0;
      }

      LODWORD(v130) = v129 * *a3;
      if (a3[1])
      {
        v130 = v130;
      }

      else
      {
        v130 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v131 = *&v171[4];
      v168 = &unk_288111E68;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v129 | (v130 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v131);
      *&v169[20] = v130;
      *&v169[24] = v131;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118BE0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A3750(v171, v169, &v155);
      *&v159[24] = &unk_288113298;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 11:
      if (*a3)
      {
        v125 = 3;
      }

      else
      {
        v125 = 0;
      }

      LODWORD(v126) = v125 * *a3;
      if (a3[1])
      {
        v126 = v126;
      }

      else
      {
        v126 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v127 = *&v171[4];
      v168 = &unk_288111DB8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v125 | (v126 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v127);
      *&v169[20] = v126;
      *&v169[24] = v127;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118B60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v128 = sub_2717A4538(v171, v169, &v155);
      *&v159[24] = &unk_288113218;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717A4248(v128);
      operator new();
    case 12:
      if (*a3)
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      LODWORD(v23) = v22 * *a3;
      if (a3[1])
      {
        v23 = v23;
      }

      else
      {
        v23 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v24 = *&v171[4];
      v168 = &unk_288111D08;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v22 | (v23 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v24);
      *&v169[20] = v23;
      *&v169[24] = v24;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288118AE0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A50CC(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288113198;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 13:
      v34 = 4 * (*a3 != 0);
      LODWORD(v35) = v34 * *a3;
      if (a3[1])
      {
        v35 = v35;
      }

      else
      {
        v35 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v36 = *&v171[4];
      v168 = &unk_288111C58;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v34 & 0x3FFFFFFFFLL | ((v35 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v36);
      *&v169[20] = v35;
      *&v169[24] = v36;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_288118A60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A5C58(v171, v169, &v155);
      *&v159[24] = &unk_288113118;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 14:
      v31 = 4 * (*a3 != 0);
      LODWORD(v32) = v31 * *a3;
      if (a3[1])
      {
        v32 = v32;
      }

      else
      {
        v32 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v33 = *&v171[4];
      v168 = &unk_288111BA8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v31 & 0x3FFFFFFFFLL | ((v32 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v33);
      *&v169[20] = v32;
      *&v169[24] = v33;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_2881189E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A67DC(v171, v169, &v155);
      *&v159[24] = &unk_288113098;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 15:
      v141 = 4 * (*a3 != 0);
      LODWORD(v142) = v141 * *a3;
      if (a3[1])
      {
        v142 = v142;
      }

      else
      {
        v142 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v143 = *&v171[4];
      v168 = &unk_288111AF8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v141 & 0x3FFFFFFFFLL | ((v142 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v143);
      *&v169[20] = v142;
      *&v169[24] = v143;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118960;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v144 = sub_2717A75C4(v171, v169, &v155);
      *&v159[24] = &unk_288113018;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717A72D4(v144);
      operator new();
    case 16:
      v98 = 4 * (*a3 != 0);
      LODWORD(v99) = v98 * *a3;
      if (a3[1])
      {
        v99 = v99;
      }

      else
      {
        v99 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v100 = *&v171[4];
      v168 = &unk_288111A48;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v98 & 0x3FFFFFFFFLL | ((v99 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v100);
      *&v169[20] = v99;
      *&v169[24] = v100;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_2881188E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A8158(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112F98;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 17:
      if (*a3)
      {
        v145 = 3;
      }

      else
      {
        v145 = 0;
      }

      LODWORD(v146) = v145 * *a3;
      if (a3[1])
      {
        v146 = v146;
      }

      else
      {
        v146 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v147 = *&v171[4];
      v168 = &unk_288111978;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v145 | (v146 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v147);
      *&v169[20] = v146;
      *&v169[24] = v147;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_288118860;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A8CE0(v171, v169, &v155);
      *&v159[24] = &unk_288112F18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 18:
      if (*a3)
      {
        v40 = 3;
      }

      else
      {
        v40 = 0;
      }

      LODWORD(v41) = v40 * *a3;
      if (a3[1])
      {
        v41 = v41;
      }

      else
      {
        v41 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v42 = *&v171[4];
      v168 = &unk_2881118C8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v40 | (v41 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v42);
      *&v169[20] = v41;
      *&v169[24] = v42;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_2881187E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717A9864(v171, v169, &v155);
      *&v159[24] = &unk_288112E98;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 19:
      if (*a3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 0;
      }

      LODWORD(v16) = v15 * *a3;
      if (a3[1])
      {
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v17 = *&v171[4];
      v168 = &unk_288111818;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v15 | (v16 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v17);
      *&v169[20] = v16;
      *&v169[24] = v17;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118760;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v18 = sub_2717AA64C(v171, v169, &v155);
      *&v159[24] = &unk_288112E18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717AA35C(v18);
      operator new();
    case 20:
      if (*a3)
      {
        v135 = 3;
      }

      else
      {
        v135 = 0;
      }

      LODWORD(v136) = v135 * *a3;
      if (a3[1])
      {
        v136 = v136;
      }

      else
      {
        v136 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v137 = *&v171[4];
      v168 = &unk_288111678;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v135 | (v136 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v137);
      *&v169[20] = v136;
      *&v169[24] = v137;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288118660;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717AB1E0(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112D18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 21:
      if (*a3)
      {
        v152 = 3;
      }

      else
      {
        v152 = 0;
      }

      LODWORD(v153) = v152 * *a3;
      if (a3[1])
      {
        v153 = v153;
      }

      else
      {
        v153 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v154 = *&v171[4];
      v168 = &unk_288111588;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v152 | (v153 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v154);
      *&v169[20] = v153;
      *&v169[24] = v154;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_2881185E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717ABD6C(v171, v169, &v155);
      *&v159[24] = &unk_288112C98;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 22:
      if (*a3)
      {
        v51 = 3;
      }

      else
      {
        v51 = 0;
      }

      LODWORD(v52) = v51 * *a3;
      if (a3[1])
      {
        v52 = v52;
      }

      else
      {
        v52 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v53 = *&v171[4];
      v168 = &unk_288111498;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v51 | (v52 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v53);
      *&v169[20] = v52;
      *&v169[24] = v53;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118560;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717AC8F0(v171, v169, &v155);
      *&v159[24] = &unk_288112C18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 23:
      if (*a3)
      {
        v148 = 3;
      }

      else
      {
        v148 = 0;
      }

      LODWORD(v149) = v148 * *a3;
      if (a3[1])
      {
        v149 = v149;
      }

      else
      {
        v149 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v150 = *&v171[4];
      v168 = &unk_2881113E8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v148 | (v149 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v150);
      *&v169[20] = v149;
      *&v169[24] = v150;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_2881184E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v151 = sub_2717AD6D8(v171, v169, &v155);
      *&v159[24] = &unk_288112B98;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717AD3E8(v151);
      operator new();
    case 24:
      if (*a3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 0;
      }

      LODWORD(v29) = v28 * *a3;
      if (a3[1])
      {
        v29 = v29;
      }

      else
      {
        v29 = 0;
      }

      *v171 = 3;
      *&v171[4] = *a3;
      v30 = *&v171[4];
      v168 = &unk_288111338;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v28 | (v29 << 32);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v30);
      *&v169[20] = v29;
      *&v169[24] = v30;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288118460;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717AE26C(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112B18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 25:
      v19 = 4 * (*a3 != 0);
      LODWORD(v20) = v19 * *a3;
      if (a3[1])
      {
        v20 = v20;
      }

      else
      {
        v20 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v21 = *&v171[4];
      v168 = &unk_288111248;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v19 & 0x3FFFFFFFFLL | ((v20 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v21);
      *&v169[20] = v20;
      *&v169[24] = v21;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_2881183E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717AEDF8(v171, v169, &v155);
      *&v159[24] = &unk_288112A98;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 26:
      v54 = 4 * (*a3 != 0);
      LODWORD(v55) = v54 * *a3;
      if (a3[1])
      {
        v55 = v55;
      }

      else
      {
        v55 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v56 = *&v171[4];
      v168 = &unk_288111198;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v54 & 0x3FFFFFFFFLL | ((v55 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v56);
      *&v169[20] = v55;
      *&v169[24] = v56;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118360;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717AF97C(v171, v169, &v155);
      *&v159[24] = &unk_288112A18;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 27:
      v11 = 4 * (*a3 != 0);
      LODWORD(v12) = v11 * *a3;
      if (a3[1])
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v13 = *&v171[4];
      v168 = &unk_2881110E8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v13);
      *&v169[20] = v12;
      *&v169[24] = v13;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_2881182E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v14 = sub_2717B0764(v171, v169, &v155);
      *&v159[24] = &unk_288112998;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717B0474(v14);
      operator new();
    case 28:
      v73 = 4 * (*a3 != 0);
      LODWORD(v74) = v73 * *a3;
      if (a3[1])
      {
        v74 = v74;
      }

      else
      {
        v74 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v75 = *&v171[4];
      v168 = &unk_288111038;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v73 & 0x3FFFFFFFFLL | ((v74 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v75);
      *&v169[20] = v74;
      *&v169[24] = v75;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288118260;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B12F8(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112918;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 29:
      v25 = 4 * (*a3 != 0);
      LODWORD(v26) = v25 * *a3;
      if (a3[1])
      {
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v27 = *&v171[4];
      v168 = &unk_288110F68;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v25 & 0x3FFFFFFFFLL | ((v26 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v27);
      *&v169[20] = v26;
      *&v169[24] = v27;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_2881181E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B1E80(v171, v169, &v155);
      *&v159[24] = &unk_288112898;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 30:
      v83 = 4 * (*a3 != 0);
      LODWORD(v84) = v83 * *a3;
      if (a3[1])
      {
        v84 = v84;
      }

      else
      {
        v84 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v85 = *&v171[4];
      v168 = &unk_288110DC8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v83 & 0x3FFFFFFFFLL | ((v84 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v85);
      *&v169[20] = v84;
      *&v169[24] = v85;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_2881180E0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B2A04(v171, v169, &v155);
      *&v159[24] = &unk_288112798;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 31:
      v57 = 4 * (*a3 != 0);
      LODWORD(v58) = v57 * *a3;
      if (a3[1])
      {
        v58 = v58;
      }

      else
      {
        v58 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v59 = *&v171[4];
      v168 = &unk_288110CD8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v57 & 0x3FFFFFFFFLL | ((v58 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v59);
      *&v169[20] = v58;
      *&v169[24] = v59;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288118060;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v60 = sub_2717B37EC(v171, v169, &v155);
      *&v159[24] = &unk_288112718;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717B34FC(v60);
      operator new();
    case 32:
      v89 = 4 * (*a3 != 0);
      LODWORD(v90) = v89 * *a3;
      if (a3[1])
      {
        v90 = v90;
      }

      else
      {
        v90 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v91 = *&v171[4];
      v168 = &unk_288110BE8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v89 & 0x3FFFFFFFFLL | ((v90 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v91);
      *&v169[20] = v90;
      *&v169[24] = v91;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288117FE0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B4380(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112698;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 33:
      v132 = 4 * (*a3 != 0);
      LODWORD(v133) = v132 * *a3;
      if (a3[1])
      {
        v133 = v133;
      }

      else
      {
        v133 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v134 = *&v171[4];
      v168 = &unk_288110B18;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v132 & 0x3FFFFFFFFLL | ((v133 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v134);
      *&v169[20] = v133;
      *&v169[24] = v134;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_288117F60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B4F08(v171, v169, &v155);
      *&v159[24] = &unk_288112618;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 34:
      v86 = 4 * (*a3 != 0);
      LODWORD(v87) = v86 * *a3;
      if (a3[1])
      {
        v87 = v87;
      }

      else
      {
        v87 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v88 = *&v171[4];
      v168 = &unk_288110A68;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v86 & 0x3FFFFFFFFLL | ((v87 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v88);
      *&v169[20] = v87;
      *&v169[24] = v88;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288117EE0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B5A8C(v171, v169, &v155);
      *&v159[24] = &unk_288112598;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 35:
      v79 = 4 * (*a3 != 0);
      LODWORD(v80) = v79 * *a3;
      if (a3[1])
      {
        v80 = v80;
      }

      else
      {
        v80 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v81 = *&v171[4];
      v168 = &unk_2881109B8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v79 & 0x3FFFFFFFFLL | ((v80 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v81);
      *&v169[20] = v80;
      *&v169[24] = v81;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288117E60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v82 = sub_2717B6874(v171, v169, &v155);
      *&v159[24] = &unk_288112518;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717B6584(v82);
      operator new();
    case 36:
      v76 = 4 * (*a3 != 0);
      LODWORD(v77) = v76 * *a3;
      if (a3[1])
      {
        v77 = v77;
      }

      else
      {
        v77 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v78 = *&v171[4];
      v168 = &unk_288110908;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v76 & 0x3FFFFFFFFLL | ((v77 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v78);
      *&v169[20] = v77;
      *&v169[24] = v78;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288117DE0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B7408(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112498;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 37:
      v122 = 4 * (*a3 != 0);
      LODWORD(v123) = v122 * *a3;
      if (a3[1])
      {
        v123 = v123;
      }

      else
      {
        v123 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v124 = *&v171[4];
      v168 = &unk_288110818;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v122 & 0x3FFFFFFFFLL | ((v123 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v124);
      *&v169[20] = v123;
      *&v169[24] = v124;
      v170 = *&v171[4];
      LOBYTE(v155) = 0;
      v157 = &unk_288117D60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B7F90(v171, v169, &v155);
      *&v159[24] = &unk_288112418;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 38:
      v138 = 4 * (*a3 != 0);
      LODWORD(v139) = v138 * *a3;
      if (a3[1])
      {
        v139 = v139;
      }

      else
      {
        v139 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v140 = *&v171[4];
      v168 = &unk_288110728;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v138 & 0x3FFFFFFFFLL | ((v139 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v140);
      *&v169[20] = v139;
      *&v169[24] = v140;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288117CE0;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717B8B14(v171, v169, &v155);
      *&v159[24] = &unk_288112398;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    case 39:
      v47 = 4 * (*a3 != 0);
      LODWORD(v48) = v47 * *a3;
      if (a3[1])
      {
        v48 = v48;
      }

      else
      {
        v48 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v49 = *&v171[4];
      v168 = &unk_288110678;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v47 & 0x3FFFFFFFFLL | ((v48 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v49);
      *&v169[20] = v48;
      *&v169[24] = v49;
      v170 = *&v171[4];
      LOWORD(v155) = 0;
      v157 = &unk_288117C60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      v50 = sub_2717B98FC(v171, v169, &v155);
      *&v159[24] = &unk_288112318;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v173 = 0uLL;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      sub_2717B960C(v50);
      operator new();
    case 40:
      v37 = 4 * (*a3 != 0);
      LODWORD(v38) = v37 * *a3;
      if (a3[1])
      {
        v38 = v38;
      }

      else
      {
        v38 = 0;
      }

      *v171 = 4;
      *&v171[4] = *a3;
      v39 = *&v171[4];
      v168 = &unk_2881104D8;
      *v169 = *v171;
      *v171 = 1;
      *&v171[4] = v37 & 0x3FFFFFFFFLL | ((v38 >> 2) << 34);
      *&v169[12] = *v171;
      *&v169[8] = HIDWORD(v39);
      *&v169[20] = v38;
      *&v169[24] = v39;
      v170 = *&v171[4];
      LODWORD(v155) = 0;
      v157 = &unk_288117B60;
      *&v159[16] = *&v171[4];
      *v159 = *&v169[16];
      v158 = *v169;
      sub_2717BA490(v171, v169, &v155, *v169);
      *&v159[24] = &unk_288112218;
      *&v159[32] = *&v171[8];
      v160 = *&v171[24];
      v161 = *v172;
      v162 = *&v172[16];
      v163 = v173;
      v164 = v174;
      v166 = v176;
      v165 = v175;
      v167 = 1;
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_271264A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2712656F4@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a3;
  LODWORD(a3) = *a1;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 0;
  }

  v4 = ((*a1 != 0) | (a3 << 32));
  v5 = *a1;
  v16 = *a2;
  *v3 = &unk_2881186E0;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  if (HIDWORD(v5))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v5 = 0;
  }

  *v12 = v5;
  *&v12[8] = v4;
  v12[16] = 0;
  v12[24] = 0;
  v18 = v4;
  if (v5)
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
    v9 = v5;
  }

  v17 = v9;
  if ((a3 & (a3 - 1)) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  sub_2717CD2D0(&v13, &v17, &v18, 1, &v16, 1, v10);
  *(v3 + 24) = &unk_288112D98;
  *(v3 + 32) = *v12;
  *(v3 + 44) = *&v12[12];
  *(v3 + 64) = v13;
  *(v3 + 80) = v14;
  result = *&v15;
  *(v3 + 88) = v15;
  *(v3 + 104) = 1;
  return result;
}

double sub_271265848@<D0>(uint64_t a1@<X8>)
{
  v7 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2881186E0;
  v3[24] = 0;
  memset(v3, 0, 17);
  v8 = 0;
  v9 = 0;
  sub_2717CD2D0(&v4, &v8, &v9, 1, &v7, 1, 0);
  *(a1 + 24) = &unk_288112D98;
  *(a1 + 32) = 0uLL;
  *(a1 + 44) = *&v3[12];
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  result = v6[0];
  *(a1 + 88) = *v6;
  *(a1 + 104) = 1;
  return result;
}

double sub_271265934@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *a1;
  v3 = *a1 != 0;
  if (a1[1])
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  *&v5 = *a1;
  *(&v5 + 1) = v3 | (a2 << 32);
  *v2 = &unk_2881186E0;
  *(v2 + 8) = v5;
  v6 = &unk_28810FD98;
  sub_2717BAF84(&v5, v7);
  *(v2 + 24) = &unk_288112D98;
  *(v2 + 32) = v8[0];
  *(v2 + 44) = *(v8 + 12);
  *(v2 + 64) = v8[2];
  *(v2 + 80) = v9;
  result = *&v10;
  *(v2 + 88) = v10;
  *(v2 + 104) = 1;
  return result;
}

double sub_271265A20@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = (a1[2] << 32) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  v15 = *a2;
  *a3 = &unk_2881186E0;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  if (HIDWORD(v5))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v5 = 0;
  }

  *v11 = v5;
  *&v11[8] = v4;
  v11[16] = 0;
  v11[24] = 0;
  if (!v5)
  {
    v7 = 1;
  }

  if (v7)
  {
    v5 = 0;
  }

  v16 = v5;
  v17 = v4;
  v8 = HIDWORD(v4);
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  sub_2717CD2D0(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a3 + 24) = &unk_288112D98;
  *(a3 + 32) = *v11;
  *(a3 + 44) = *&v11[12];
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  result = v14[0];
  *(a3 + 88) = *v14;
  *(a3 + 104) = 1;
  return result;
}

double sub_271265B5C@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = (a1[2] << 32) + 1;
  }

  else
  {
    v3 = 0;
  }

  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  *&v6 = v4;
  *(&v6 + 1) = v3;
  *a2 = &unk_2881186E0;
  *(a2 + 8) = v6;
  v7 = &unk_28810FD98;
  sub_2717BAF84(&v6, v8);
  *(a2 + 24) = &unk_288112D98;
  *(a2 + 32) = v9[0];
  *(a2 + 44) = *(v9 + 12);
  *(a2 + 64) = v9[2];
  *(a2 + 80) = v10;
  result = *&v11;
  *(a2 + 88) = v11;
  *(a2 + 104) = 1;
  return result;
}

double sub_271265C48@<D0>(uint64_t *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v15 = *a2;
  *a3 = &unk_2881186E0;
  *(a3 + 8) = *a1;
  if (*(a1 + 1))
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *a1;
  v5 = a1[1];
  if (v4)
  {
    v6 = 0;
  }

  *v11 = v6;
  *&v11[8] = a1[1];
  v11[16] = 0;
  v11[24] = 0;
  if (v6)
  {
    v7 = HIDWORD(v6) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = 0;
  }

  v16 = v6;
  v17 = v5;
  v8 = HIDWORD(v5);
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  sub_2717CD2D0(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a3 + 24) = &unk_288112D98;
  *(a3 + 32) = *v11;
  *(a3 + 44) = *&v11[12];
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  result = *&v14;
  *(a3 + 88) = v14;
  *(a3 + 104) = 1;
  return result;
}

double sub_271265D6C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_2881186E0;
  *(a2 + 8) = *a1;
  sub_2717BAF84(a1, v4);
  *(a2 + 24) = &unk_288112D98;
  *(a2 + 32) = v5[0];
  *(a2 + 44) = *(v5 + 12);
  *(a2 + 64) = v5[2];
  *(a2 + 80) = v6;
  result = *&v7;
  *(a2 + 88) = v7;
  *(a2 + 104) = 1;
  return result;
}

double sub_271265E34@<D0>(uint64_t *a1@<X1>, unsigned int *a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = HIDWORD(*a1) == 0;
  if (!*a1)
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = v7;
  }

  v15 = *a3;
  *a4 = &unk_2881186E0;
  *(a4 + 8) = v5;
  *(a4 + 16) = v8;
  if (v6)
  {
    v5 = 0;
  }

  *v11 = v5;
  *&v11[8] = v8;
  v11[16] = 0;
  v11[24] = 0;
  if (!v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  v16 = v5;
  v17 = v8;
  if ((HIDWORD(v7) & (HIDWORD(v7) - 1)) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = HIDWORD(v7);
  }

  sub_2717CD2D0(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a4 + 24) = &unk_288112D98;
  *(a4 + 32) = *v11;
  *(a4 + 44) = *&v11[12];
  *(a4 + 64) = v12;
  *(a4 + 80) = v13;
  result = v14[0];
  *(a4 + 88) = *v14;
  *(a4 + 104) = 1;
  return result;
}

double sub_271265F78@<D0>(void *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = HIDWORD(*a1) == 0;
    *a1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a2 << 32;
  if (v4)
  {
    v5 = 0;
  }

  if (*a1)
  {
    ++v5;
  }

  *&v7 = *a1;
  *(&v7 + 1) = v5;
  *a3 = &unk_2881186E0;
  *(a3 + 8) = v7;
  v8 = &unk_28810FD98;
  sub_2717BAF84(&v7, v9);
  *(a3 + 24) = &unk_288112D98;
  *(a3 + 32) = v10[0];
  *(a3 + 44) = *(v10 + 12);
  *(a3 + 64) = v10[2];
  *(a3 + 80) = v11;
  result = *&v12;
  *(a3 + 88) = v12;
  *(a3 + 104) = 1;
  return result;
}

double sub_27126606C@<D0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v6 = v5 % *a2;
      v7 = *a2 - v6;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = ((v7 + v5) << 32) | 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v19 = *a3;
  *a4 = &unk_2881186E0;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  if (HIDWORD(v9))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v9 = 0;
  }

  *v15 = v9;
  *&v15[8] = v8;
  v15[16] = 0;
  v15[24] = 0;
  if (!v9)
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  v20 = v9;
  v21 = v8;
  v12 = HIDWORD(v8);
  if ((v12 & (v12 - 1)) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  sub_2717CD2D0(&v16, &v20, &v21, 1, &v19, 1, v13);
  *(a4 + 24) = &unk_288112D98;
  *(a4 + 32) = *v15;
  *(a4 + 44) = *&v15[12];
  *(a4 + 64) = v16;
  *(a4 + 80) = v17;
  result = v18[0];
  *(a4 + 88) = *v18;
  *(a4 + 104) = 1;
  return result;
}

double sub_2712661D4@<D0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v5 = v4 % *a2;
      v6 = *a2 - v5;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = ((v6 + v4) << 32) | 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *&v9 = *a1;
  *(&v9 + 1) = v7;
  *a3 = &unk_2881186E0;
  *(a3 + 8) = v9;
  v10 = &unk_28810FD98;
  sub_2717BAF84(&v9, v11);
  *(a3 + 24) = &unk_288112D98;
  *(a3 + 32) = v12[0];
  *(a3 + 44) = *(v12 + 12);
  *(a3 + 64) = v12[2];
  *(a3 + 80) = v13;
  result = *&v14;
  *(a3 + 88) = v14;
  *(a3 + 104) = 1;
  return result;
}

uint64_t sub_2712662EC@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *(a1 + 2);
  v3 = a2 != 0;
  if (*(a1 + 3))
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  v7[0] = *(a1 + 1);
  v7[1] = v3 | (a2 << 32);
  v5 = *a1;
  v6 = *(a1 + 2);
  return sub_27123C114(v2, v7, &v5);
}

uint64_t sub_271266348@<X0>(__int128 *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (v4)
  {
    ++v7;
  }

  v11[0] = *(a1 + 1);
  v11[1] = v7;
  v9 = *a1;
  v10 = v5;
  return sub_27123C114(a3, v11, &v9);
}

uint64_t sub_2712663A8@<X0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6)
  {
    if (*(a1 + 3))
    {
      v7 = v6 % *a2;
      v8 = *a2 - v7;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = ((v8 + v6) << 32) | 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v14[2] = v3;
  v14[3] = v4;
  v10 = *(a1 + 2);
  v14[0] = *(a1 + 1);
  v14[1] = v9;
  v12 = *a1;
  v13 = v10;
  return sub_27123C114(a3, v14, &v12);
}

__n128 sub_27126642C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 sub_271266444(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112D98;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = *(a2 + 64);
  *(v2 + 64) = result;
  return result;
}

double sub_271266494@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a3;
  LODWORD(a3) = *a1;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 0;
  }

  v4 = (*a1 != 0) | (a3 << 32);
  v5 = *a1;
  v17 = *a2;
  *v3 = &unk_288118160;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  if (HIDWORD(v5))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v5 = 0;
  }

  *v13 = v5;
  *&v13[8] = v4;
  v13[16] = 0;
  v13[24] = 0;
  v19 = v4;
  if (v5)
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
    v9 = v5;
  }

  v18 = v9;
  v10 = 2 * a3;
  if ((v10 & (v10 - 1)) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  sub_2717D4198(&v14, &v18, &v19, 1, &v17, 1, v11);
  *(v3 + 24) = &unk_288112818;
  *(v3 + 32) = *v13;
  *(v3 + 44) = *&v13[12];
  *(v3 + 64) = v14;
  *(v3 + 80) = v15;
  result = v16[0];
  *(v3 + 88) = *v16;
  *(v3 + 104) = 1;
  return result;
}

double sub_2712665F0@<D0>(uint64_t a1@<X8>)
{
  v7 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_288118160;
  v3[24] = 0;
  memset(v3, 0, 17);
  v8 = 0;
  v9 = 0;
  sub_2717D4198(&v4, &v8, &v9, 1, &v7, 1, 0);
  *(a1 + 24) = &unk_288112818;
  *(a1 + 32) = 0uLL;
  *(a1 + 44) = *&v3[12];
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  result = v6[0];
  *(a1 + 88) = *v6;
  *(a1 + 104) = 1;
  return result;
}

double sub_2712666DC@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *a1;
  v3 = *a1 != 0;
  if (a1[1])
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  *&v5 = *a1;
  *(&v5 + 1) = v3 | (a2 << 32);
  *v2 = &unk_288118160;
  *(v2 + 8) = v5;
  v6 = &unk_28810FC38;
  sub_2717BB1BC(&v5, v7);
  *(v2 + 24) = &unk_288112818;
  *(v2 + 32) = v8[0];
  *(v2 + 44) = *(v8 + 12);
  *(v2 + 64) = v8[2];
  *(v2 + 80) = v9;
  result = *&v10;
  *(v2 + 88) = v10;
  *(v2 + 104) = 1;
  return result;
}

double sub_2712667C8@<D0>(unint64_t *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = (((*(a1 + 2) >> 1) & 0x7FFFFFFF) << 32) | 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v15 = *a2;
  *a3 = &unk_288118160;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  if (HIDWORD(v4))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v4 = 0;
  }

  *v11 = v4;
  *&v11[8] = v5;
  v11[16] = 0;
  v11[24] = 0;
  if (!v4)
  {
    v7 = 1;
  }

  if (v7)
  {
    v4 = 0;
  }

  v16 = v4;
  v17 = v5;
  v8 = (v5 >> 31) & 0xFFFFFFFE;
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  sub_2717D4198(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a3 + 24) = &unk_288112818;
  *(a3 + 32) = *v11;
  *(a3 + 44) = *&v11[12];
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  result = v14[0];
  *(a3 + 88) = *v14;
  *(a3 + 104) = 1;
  return result;
}

double sub_271266918@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = (((*(a1 + 2) >> 1) & 0x7FFFFFFF) << 32) | 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *&v6 = v3;
  *(&v6 + 1) = v4;
  *a2 = &unk_288118160;
  *(a2 + 8) = v6;
  v7 = &unk_28810FC38;
  sub_2717BB1BC(&v6, v8);
  *(a2 + 24) = &unk_288112818;
  *(a2 + 32) = v9[0];
  *(a2 + 44) = *(v9 + 12);
  *(a2 + 64) = v9[2];
  *(a2 + 80) = v10;
  result = *&v11;
  *(a2 + 88) = v11;
  *(a2 + 104) = 1;
  return result;
}

double sub_271266A10@<D0>(uint64_t *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v15 = *a2;
  *a3 = &unk_288118160;
  *(a3 + 8) = *a1;
  if (*(a1 + 1))
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *a1;
  v5 = a1[1];
  if (v4)
  {
    v6 = 0;
  }

  *v11 = v6;
  *&v11[8] = a1[1];
  v11[16] = 0;
  v11[24] = 0;
  if (v6)
  {
    v7 = HIDWORD(v6) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = 0;
  }

  v16 = v6;
  v17 = v5;
  v8 = (v5 >> 31) & 0x1FFFFFFFELL;
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  sub_2717D4198(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a3 + 24) = &unk_288112818;
  *(a3 + 32) = *v11;
  *(a3 + 44) = *&v11[12];
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  result = v14[0];
  *(a3 + 88) = *v14;
  *(a3 + 104) = 1;
  return result;
}

double sub_271266B3C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_288118160;
  *(a2 + 8) = *a1;
  sub_2717BB1BC(a1, v4);
  *(a2 + 24) = &unk_288112818;
  *(a2 + 32) = v5[0];
  *(a2 + 44) = *(v5 + 12);
  *(a2 + 64) = v5[2];
  *(a2 + 80) = v6;
  result = *&v7;
  *(a2 + 88) = v7;
  *(a2 + 104) = 1;
  return result;
}

double sub_271266C04@<D0>(uint64_t *a1@<X1>, unsigned int *a2@<X2>, __int16 *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = HIDWORD(*a1) == 0;
  if (!*a1)
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  v15 = *a3;
  *a4 = &unk_288118160;
  *(a4 + 8) = v5;
  *(a4 + 16) = v8;
  if (v6)
  {
    v5 = 0;
  }

  *v11 = v5;
  *&v11[8] = v8;
  v11[16] = 0;
  v11[24] = 0;
  if (!v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  v16 = v5;
  v17 = v8;
  if (((v7 >> 31) & ((v7 >> 31) - 1)) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 >> 31;
  }

  sub_2717D4198(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a4 + 24) = &unk_288112818;
  *(a4 + 32) = *v11;
  *(a4 + 44) = *&v11[12];
  *(a4 + 64) = v12;
  *(a4 + 80) = v13;
  result = v14[0];
  *(a4 + 88) = *v14;
  *(a4 + 104) = 1;
  return result;
}

double sub_271266D4C@<D0>(void *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = HIDWORD(*a1) == 0;
    *a1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a2 << 32;
  if (v4)
  {
    v5 = 0;
  }

  if (*a1)
  {
    ++v5;
  }

  *&v7 = *a1;
  *(&v7 + 1) = v5;
  *a3 = &unk_288118160;
  *(a3 + 8) = v7;
  v8 = &unk_28810FC38;
  sub_2717BB1BC(&v7, v9);
  *(a3 + 24) = &unk_288112818;
  *(a3 + 32) = v10[0];
  *(a3 + 44) = *(v10 + 12);
  *(a3 + 64) = v10[2];
  *(a3 + 80) = v11;
  result = *&v12;
  *(a3 + 88) = v12;
  *(a3 + 104) = 1;
  return result;
}

double sub_271266E40@<D0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, __int16 *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v6 = v5 % *a2;
      v7 = *a2 - v6;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = ((v7 + v5) << 32) | 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v19 = *a3;
  *a4 = &unk_288118160;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  if (HIDWORD(v9))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v9 = 0;
  }

  *v15 = v9;
  *&v15[8] = v8;
  v15[16] = 0;
  v15[24] = 0;
  if (!v9)
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  v20 = v9;
  v21 = v8;
  v12 = (v8 >> 31) & 0x1FFFFFFFELL;
  if ((v12 & (v12 - 1)) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  sub_2717D4198(&v16, &v20, &v21, 1, &v19, 1, v13);
  *(a4 + 24) = &unk_288112818;
  *(a4 + 32) = *v15;
  *(a4 + 44) = *&v15[12];
  *(a4 + 64) = v16;
  *(a4 + 80) = v17;
  result = v18[0];
  *(a4 + 88) = *v18;
  *(a4 + 104) = 1;
  return result;
}

double sub_271266FB0@<D0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v5 = v4 % *a2;
      v6 = *a2 - v5;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = ((v6 + v4) << 32) | 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *&v9 = *a1;
  *(&v9 + 1) = v7;
  *a3 = &unk_288118160;
  *(a3 + 8) = v9;
  v10 = &unk_28810FC38;
  sub_2717BB1BC(&v9, v11);
  *(a3 + 24) = &unk_288112818;
  *(a3 + 32) = v12[0];
  *(a3 + 44) = *(v12 + 12);
  *(a3 + 64) = v12[2];
  *(a3 + 80) = v13;
  result = *&v14;
  *(a3 + 88) = v14;
  *(a3 + 104) = 1;
  return result;
}

uint64_t sub_2712670C8@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *(a1 + 2);
  v3 = a2 != 0;
  if (*(a1 + 3))
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  v7[0] = *(a1 + 1);
  v7[1] = v3 | (a2 << 32);
  v5 = *a1;
  v6 = *(a1 + 2);
  return sub_27123CD58(v2, v7, &v5);
}

uint64_t sub_271267124@<X0>(__int128 *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (v4)
  {
    ++v7;
  }

  v11[0] = *(a1 + 1);
  v11[1] = v7;
  v9 = *a1;
  v10 = v5;
  return sub_27123CD58(a3, v11, &v9);
}

uint64_t sub_271267184@<X0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6)
  {
    if (*(a1 + 3))
    {
      v7 = v6 % *a2;
      v8 = *a2 - v7;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = ((v8 + v6) << 32) | 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v14[2] = v3;
  v14[3] = v4;
  v10 = *(a1 + 2);
  v14[0] = *(a1 + 1);
  v14[1] = v9;
  v12 = *a1;
  v13 = v10;
  return sub_27123CD58(a3, v14, &v12);
}

__n128 sub_271267208(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 sub_271267220(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112818;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = *(a2 + 64);
  *(v2 + 64) = result;
  return result;
}

uint64_t sub_271267270@<X0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a3;
  LODWORD(a3) = *a1;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 0;
  }

  v4 = (*a1 != 0) | (a3 << 32);
  v5 = *a1;
  v18 = *a2;
  *v3 = &unk_288117BE0;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  if (HIDWORD(v5))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v5 = 0;
  }

  v13 = &unk_288112298;
  *v14 = v5;
  *&v14[8] = v4;
  v14[16] = 0;
  v14[24] = 0;
  v20 = v4;
  if (v5)
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
    v9 = v5;
  }

  v19 = v9;
  v10 = 2 * a3;
  if ((v10 & (v10 - 1)) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  sub_2717D43FC(&v15, &v19, &v20, 1, &v18, 1, v11);
  *(v3 + 24) = &unk_288112298;
  *(v3 + 32) = *v14;
  *(v3 + 44) = *&v14[12];
  *(v3 + 64) = v15;
  *(v3 + 80) = v16;
  v15 = 0uLL;
  *(v3 + 88) = v17;
  *(v3 + 104) = 1;
  return sub_27179E364(&v13);
}

uint64_t sub_2712673D8@<X0>(uint64_t a1@<X8>)
{
  v7 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_288117BE0;
  LOBYTE(v3[4]) = 0;
  memset(&v3[1], 0, 17);
  v3[0] = &unk_288112298;
  v8 = 0;
  v9 = 0;
  sub_2717D43FC(&v4, &v8, &v9, 1, &v7, 1, 0);
  *(a1 + 24) = &unk_288112298;
  *(a1 + 32) = *&v3[1];
  *(a1 + 44) = *(&v3[2] + 4);
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  v4 = 0uLL;
  *(a1 + 88) = v6;
  *(a1 + 104) = 1;
  return sub_27179E364(v3);
}

uint64_t sub_2712674D0@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *a1;
  v3 = *a1 != 0;
  if (a1[1])
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  *&v5 = *a1;
  *(&v5 + 1) = v3 | (a2 << 32);
  *v2 = &unk_288117BE0;
  *(v2 + 8) = v5;
  v6 = &unk_28810FAD8;
  sub_2717BB40C(&v5, v7);
  *(v2 + 24) = &unk_288112298;
  *(v2 + 32) = v8[0];
  *(v2 + 44) = *(v8 + 12);
  *(v2 + 64) = v9;
  *(v2 + 80) = v10;
  v9 = 0uLL;
  *(v2 + 88) = v11;
  *(v2 + 104) = 1;
  return sub_27179E364(v7);
}

uint64_t sub_2712675C8@<X0>(unint64_t *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = (((*(a1 + 2) >> 1) & 0x7FFFFFFF) << 32) | 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v16 = *a2;
  *a3 = &unk_288117BE0;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  if (HIDWORD(v4))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v4 = 0;
  }

  v11 = &unk_288112298;
  *v12 = v4;
  *&v12[8] = v5;
  v12[16] = 0;
  v12[24] = 0;
  if (!v4)
  {
    v7 = 1;
  }

  if (v7)
  {
    v4 = 0;
  }

  v17 = v4;
  v18 = v5;
  v8 = (v5 >> 31) & 0xFFFFFFFE;
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  sub_2717D43FC(&v13, &v17, &v18, 1, &v16, 1, v9);
  *(a3 + 24) = &unk_288112298;
  *(a3 + 32) = *v12;
  *(a3 + 44) = *&v12[12];
  *(a3 + 64) = v13;
  *(a3 + 80) = v14;
  v13 = 0uLL;
  *(a3 + 88) = v15;
  *(a3 + 104) = 1;
  return sub_27179E364(&v11);
}

uint64_t sub_271267724@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = (((*(a1 + 2) >> 1) & 0x7FFFFFFF) << 32) | 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *&v6 = v3;
  *(&v6 + 1) = v4;
  *a2 = &unk_288117BE0;
  *(a2 + 8) = v6;
  v7 = &unk_28810FAD8;
  sub_2717BB40C(&v6, v8);
  *(a2 + 24) = &unk_288112298;
  *(a2 + 32) = v9[0];
  *(a2 + 44) = *(v9 + 12);
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  v10 = 0uLL;
  *(a2 + 88) = v12;
  *(a2 + 104) = 1;
  return sub_27179E364(v8);
}

uint64_t sub_271267828@<X0>(uint64_t *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v16 = *a2;
  *a3 = &unk_288117BE0;
  *(a3 + 8) = *a1;
  if (*(a1 + 1))
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *a1;
  v5 = a1[1];
  if (v4)
  {
    v6 = 0;
  }

  v11 = &unk_288112298;
  *v12 = v6;
  *&v12[8] = v5;
  v12[16] = 0;
  v12[24] = 0;
  if (v6)
  {
    v7 = HIDWORD(v6) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = 0;
  }

  v17 = v6;
  v18 = v5;
  v8 = (v5 >> 31) & 0x1FFFFFFFELL;
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  sub_2717D43FC(&v13, &v17, &v18, 1, &v16, 1, v9);
  *(a3 + 24) = &unk_288112298;
  *(a3 + 32) = *v12;
  *(a3 + 44) = *&v12[12];
  *(a3 + 64) = v13;
  *(a3 + 80) = v14;
  v13 = 0uLL;
  *(a3 + 88) = v15;
  *(a3 + 104) = 1;
  return sub_27179E364(&v11);
}

uint64_t sub_271267960@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_288117BE0;
  *(a2 + 8) = *a1;
  sub_2717BB40C(a1, v4);
  *(a2 + 24) = &unk_288112298;
  *(a2 + 32) = v5[0];
  *(a2 + 44) = *(v5 + 12);
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  v6 = 0uLL;
  *(a2 + 88) = v8;
  *(a2 + 104) = 1;
  return sub_27179E364(v4);
}

uint64_t sub_271267A34@<X0>(uint64_t *a1@<X1>, unsigned int *a2@<X2>, __int16 *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = HIDWORD(*a1) == 0;
  if (!*a1)
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  v16 = *a3;
  *a4 = &unk_288117BE0;
  *(a4 + 8) = v5;
  *(a4 + 16) = v8;
  if (v6)
  {
    v5 = 0;
  }

  v11 = &unk_288112298;
  *v12 = v5;
  *&v12[8] = v8;
  v12[16] = 0;
  v12[24] = 0;
  if (!v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  v17 = v5;
  v18 = v8;
  if (((v7 >> 31) & ((v7 >> 31) - 1)) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 >> 31;
  }

  sub_2717D43FC(&v13, &v17, &v18, 1, &v16, 1, v9);
  *(a4 + 24) = &unk_288112298;
  *(a4 + 32) = *v12;
  *(a4 + 44) = *&v12[12];
  *(a4 + 64) = v13;
  *(a4 + 80) = v14;
  v13 = 0uLL;
  *(a4 + 88) = v15;
  *(a4 + 104) = 1;
  return sub_27179E364(&v11);
}

uint64_t sub_271267B88@<X0>(void *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = HIDWORD(*a1) == 0;
    *a1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a2 << 32;
  if (v4)
  {
    v5 = 0;
  }

  if (*a1)
  {
    ++v5;
  }

  *&v7 = *a1;
  *(&v7 + 1) = v5;
  *a3 = &unk_288117BE0;
  *(a3 + 8) = v7;
  v8 = &unk_28810FAD8;
  sub_2717BB40C(&v7, v9);
  *(a3 + 24) = &unk_288112298;
  *(a3 + 32) = v10[0];
  *(a3 + 44) = *(v10 + 12);
  *(a3 + 64) = v11;
  *(a3 + 80) = v12;
  v11 = 0uLL;
  *(a3 + 88) = v13;
  *(a3 + 104) = 1;
  return sub_27179E364(v9);
}

uint64_t sub_271267C88@<X0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, __int16 *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v6 = v5 % *a2;
      v7 = *a2 - v6;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = ((v7 + v5) << 32) | 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v20 = *a3;
  *a4 = &unk_288117BE0;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  if (HIDWORD(v9))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v9 = 0;
  }

  v15 = &unk_288112298;
  *v16 = v9;
  *&v16[8] = v8;
  v16[16] = 0;
  v16[24] = 0;
  if (!v9)
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  v21 = v9;
  v22 = v8;
  v12 = (v8 >> 31) & 0x1FFFFFFFELL;
  if ((v12 & (v12 - 1)) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  sub_2717D43FC(&v17, &v21, &v22, 1, &v20, 1, v13);
  *(a4 + 24) = &unk_288112298;
  *(a4 + 32) = *v16;
  *(a4 + 44) = *&v16[12];
  *(a4 + 64) = v17;
  *(a4 + 80) = v18;
  v17 = 0uLL;
  *(a4 + 88) = v19;
  *(a4 + 104) = 1;
  return sub_27179E364(&v15);
}

uint64_t sub_271267E04@<X0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v5 = v4 % *a2;
      v6 = *a2 - v5;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = ((v6 + v4) << 32) | 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *&v9 = *a1;
  *(&v9 + 1) = v7;
  *a3 = &unk_288117BE0;
  *(a3 + 8) = v9;
  v10 = &unk_28810FAD8;
  sub_2717BB40C(&v9, v11);
  *(a3 + 24) = &unk_288112298;
  *(a3 + 32) = v12[0];
  *(a3 + 44) = *(v12 + 12);
  *(a3 + 64) = v13;
  *(a3 + 80) = v14;
  v13 = 0uLL;
  *(a3 + 88) = v15;
  *(a3 + 104) = 1;
  return sub_27179E364(v11);
}

uint64_t sub_271267F28@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *(a1 + 2);
  v3 = a2 != 0;
  if (*(a1 + 3))
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  v7[0] = *(a1 + 1);
  v7[1] = v3 | (a2 << 32);
  v5 = *a1;
  v6 = *(a1 + 2);
  return sub_27123DD9C(v2, v7, &v5);
}

uint64_t sub_271267F84@<X0>(__int128 *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (v4)
  {
    ++v7;
  }

  v11[0] = *(a1 + 1);
  v11[1] = v7;
  v9 = *a1;
  v10 = v5;
  return sub_27123DD9C(a3, v11, &v9);
}

uint64_t sub_271267FE4@<X0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6)
  {
    if (*(a1 + 3))
    {
      v7 = v6 % *a2;
      v8 = *a2 - v7;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = ((v8 + v6) << 32) | 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v14[2] = v3;
  v14[3] = v4;
  v10 = *(a1 + 2);
  v14[0] = *(a1 + 1);
  v14[1] = v9;
  v12 = *a1;
  v13 = v10;
  return sub_27123DD9C(a3, v14, &v12);
}

__n128 sub_271268068(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 sub_271268080(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112298;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = *(a2 + 64);
  *(v2 + 64) = result;
  return result;
}

double sub_2712680D0@<D0>(_DWORD *a1@<X1>, int *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a3;
  LODWORD(a3) = *a1;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 0;
  }

  v4 = (*a1 != 0) | (a3 << 32);
  v5 = *a1;
  v17 = *a2;
  *v3 = &unk_288117AE0;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  if (HIDWORD(v5))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v5 = 0;
  }

  *v13 = v5;
  *&v13[8] = v4;
  v13[16] = 0;
  v13[24] = 0;
  v19 = v4;
  if (v5)
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
    v9 = v5;
  }

  v18 = v9;
  v10 = 4 * a3;
  if ((v10 & (v10 - 1)) != 0)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  sub_2717D48BC(&v14, &v18, &v19, 1, &v17, 1, v11);
  *(v3 + 24) = &unk_288112198;
  *(v3 + 32) = *v13;
  *(v3 + 44) = *&v13[12];
  *(v3 + 64) = v14;
  *(v3 + 80) = v15;
  result = v16[0];
  *(v3 + 88) = *v16;
  *(v3 + 104) = 1;
  return result;
}

double sub_27126822C@<D0>(uint64_t a1@<X8>)
{
  v7 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_288117AE0;
  v3[24] = 0;
  memset(v3, 0, 17);
  v8 = 0;
  v9 = 0;
  sub_2717D48BC(&v4, &v8, &v9, 1, &v7, 1, 0);
  *(a1 + 24) = &unk_288112198;
  *(a1 + 32) = 0uLL;
  *(a1 + 44) = *&v3[12];
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  result = v6[0];
  *(a1 + 88) = *v6;
  *(a1 + 104) = 1;
  return result;
}

double sub_271268318@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *a1;
  v3 = *a1 != 0;
  if (a1[1])
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  *&v5 = *a1;
  *(&v5 + 1) = v3 | (a2 << 32);
  *v2 = &unk_288117AE0;
  *(v2 + 8) = v5;
  v6 = &unk_28810FA98;
  sub_2717BB6BC(&v5, v7);
  *(v2 + 24) = &unk_288112198;
  *(v2 + 32) = v8[0];
  *(v2 + 44) = *(v8 + 12);
  *(v2 + 64) = v8[2];
  *(v2 + 80) = v9;
  result = *&v10;
  *(v2 + 88) = v10;
  *(v2 + 104) = 1;
  return result;
}

double sub_271268404@<D0>(unint64_t *a1@<X1>, int *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = (((*(a1 + 2) >> 2) & 0x3FFFFFFF) << 32) | 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v15 = *a2;
  *a3 = &unk_288117AE0;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  if (HIDWORD(v4))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v6)
  {
    v4 = 0;
  }

  *v11 = v4;
  *&v11[8] = v5;
  v11[16] = 0;
  v11[24] = 0;
  if (!v4)
  {
    v7 = 1;
  }

  if (v7)
  {
    v4 = 0;
  }

  v16 = v4;
  v17 = v5;
  v8 = (v5 >> 30) & 0xFFFFFFFC;
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  sub_2717D48BC(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a3 + 24) = &unk_288112198;
  *(a3 + 32) = *v11;
  *(a3 + 44) = *&v11[12];
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  result = v14[0];
  *(a3 + 88) = *v14;
  *(a3 + 104) = 1;
  return result;
}

double sub_271268554@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = (((*(a1 + 2) >> 2) & 0x3FFFFFFF) << 32) | 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *&v6 = v3;
  *(&v6 + 1) = v4;
  *a2 = &unk_288117AE0;
  *(a2 + 8) = v6;
  v7 = &unk_28810FA98;
  sub_2717BB6BC(&v6, v8);
  *(a2 + 24) = &unk_288112198;
  *(a2 + 32) = v9[0];
  *(a2 + 44) = *(v9 + 12);
  *(a2 + 64) = v9[2];
  *(a2 + 80) = v10;
  result = *&v11;
  *(a2 + 88) = v11;
  *(a2 + 104) = 1;
  return result;
}

double sub_27126864C@<D0>(uint64_t *a1@<X1>, int *a2@<X2>, uint64_t a3@<X8>)
{
  v15 = *a2;
  *a3 = &unk_288117AE0;
  *(a3 + 8) = *a1;
  if (*(a1 + 1))
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *a1;
  v5 = a1[1];
  if (v4)
  {
    v6 = 0;
  }

  *v11 = v6;
  *&v11[8] = a1[1];
  v11[16] = 0;
  v11[24] = 0;
  if (v6)
  {
    v7 = HIDWORD(v6) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = 0;
  }

  v16 = v6;
  v17 = v5;
  v8 = (v5 >> 30) & 0x3FFFFFFFCLL;
  if ((v8 & (v8 - 1)) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  sub_2717D48BC(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a3 + 24) = &unk_288112198;
  *(a3 + 32) = *v11;
  *(a3 + 44) = *&v11[12];
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  result = v14[0];
  *(a3 + 88) = *v14;
  *(a3 + 104) = 1;
  return result;
}

double sub_271268778@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_288117AE0;
  *(a2 + 8) = *a1;
  sub_2717BB6BC(a1, v4);
  *(a2 + 24) = &unk_288112198;
  *(a2 + 32) = v5[0];
  *(a2 + 44) = *(v5 + 12);
  *(a2 + 64) = v5[2];
  *(a2 + 80) = v6;
  result = *&v7;
  *(a2 + 88) = v7;
  *(a2 + 104) = 1;
  return result;
}

double sub_271268840@<D0>(uint64_t *a1@<X1>, unsigned int *a2@<X2>, int *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = HIDWORD(*a1) == 0;
  if (!*a1)
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  v15 = *a3;
  *a4 = &unk_288117AE0;
  *(a4 + 8) = v5;
  *(a4 + 16) = v8;
  if (v6)
  {
    v5 = 0;
  }

  *v11 = v5;
  *&v11[8] = v8;
  v11[16] = 0;
  v11[24] = 0;
  if (!v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  v16 = v5;
  v17 = v8;
  if (((v7 >> 30) & ((v7 >> 30) - 1)) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7 >> 30;
  }

  sub_2717D48BC(&v12, &v16, &v17, 1, &v15, 1, v9);
  *(a4 + 24) = &unk_288112198;
  *(a4 + 32) = *v11;
  *(a4 + 44) = *&v11[12];
  *(a4 + 64) = v12;
  *(a4 + 80) = v13;
  result = v14[0];
  *(a4 + 88) = *v14;
  *(a4 + 104) = 1;
  return result;
}

double sub_271268988@<D0>(void *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = HIDWORD(*a1) == 0;
    *a1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a2 << 32;
  if (v4)
  {
    v5 = 0;
  }

  if (*a1)
  {
    ++v5;
  }

  *&v7 = *a1;
  *(&v7 + 1) = v5;
  *a3 = &unk_288117AE0;
  *(a3 + 8) = v7;
  v8 = &unk_28810FA98;
  sub_2717BB6BC(&v7, v9);
  *(a3 + 24) = &unk_288112198;
  *(a3 + 32) = v10[0];
  *(a3 + 44) = *(v10 + 12);
  *(a3 + 64) = v10[2];
  *(a3 + 80) = v11;
  result = *&v12;
  *(a3 + 88) = v12;
  *(a3 + 104) = 1;
  return result;
}

double sub_271268A7C@<D0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, int *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v6 = v5 % *a2;
      v7 = *a2 - v6;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = ((v7 + v5) << 32) | 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v19 = *a3;
  *a4 = &unk_288117AE0;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  if (HIDWORD(v9))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v9 = 0;
  }

  *v15 = v9;
  *&v15[8] = v8;
  v15[16] = 0;
  v15[24] = 0;
  if (!v9)
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  v20 = v9;
  v21 = v8;
  v12 = (v8 >> 30) & 0x3FFFFFFFCLL;
  if ((v12 & (v12 - 1)) != 0)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  sub_2717D48BC(&v16, &v20, &v21, 1, &v19, 1, v13);
  *(a4 + 24) = &unk_288112198;
  *(a4 + 32) = *v15;
  *(a4 + 44) = *&v15[12];
  *(a4 + 64) = v16;
  *(a4 + 80) = v17;
  result = v18[0];
  *(a4 + 88) = *v18;
  *(a4 + 104) = 1;
  return result;
}

double sub_271268BEC@<D0>(unsigned int *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if (a1[1])
    {
      v5 = v4 % *a2;
      v6 = *a2 - v5;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = ((v6 + v4) << 32) | 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *&v9 = *a1;
  *(&v9 + 1) = v7;
  *a3 = &unk_288117AE0;
  *(a3 + 8) = v9;
  v10 = &unk_28810FA98;
  sub_2717BB6BC(&v9, v11);
  *(a3 + 24) = &unk_288112198;
  *(a3 + 32) = v12[0];
  *(a3 + 44) = *(v12 + 12);
  *(a3 + 64) = v12[2];
  *(a3 + 80) = v13;
  result = *&v14;
  *(a3 + 88) = v14;
  *(a3 + 104) = 1;
  return result;
}

uint64_t sub_271268D04@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  LODWORD(a2) = *(a1 + 2);
  v3 = a2 != 0;
  if (*(a1 + 3))
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  v7[0] = *(a1 + 1);
  v7[1] = v3 | (a2 << 32);
  v5 = *a1;
  v6 = *(a1 + 2);
  return sub_27123EA14(v2, v7, &v5);
}

uint64_t sub_271268D60@<X0>(__int128 *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4)
  {
    v6 = HIDWORD(v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  if (v4)
  {
    ++v7;
  }

  v11[0] = *(a1 + 1);
  v11[1] = v7;
  v9 = *a1;
  v10 = v5;
  return sub_27123EA14(a3, v11, &v9);
}

uint64_t sub_271268DC0@<X0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6)
  {
    if (*(a1 + 3))
    {
      v7 = v6 % *a2;
      v8 = *a2 - v7;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = ((v8 + v6) << 32) | 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v14[2] = v3;
  v14[3] = v4;
  v10 = *(a1 + 2);
  v14[0] = *(a1 + 1);
  v14[1] = v9;
  v12 = *a1;
  v13 = v10;
  return sub_27123EA14(a3, v14, &v12);
}

__n128 sub_271268E44(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 sub_271268E5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288112198;
  v3 = *(a2 + 8);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 8) = v3;
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = *(a2 + 64);
  *(v2 + 64) = result;
  return result;
}

double sub_271268EAC@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v4 = 2 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 0;
  }

  v5 = v4 & 0x1FFFFFFFFLL | ((a3 >> 1) << 33);
  *v14 = 2;
  v6 = *a1;
  *&v14[4] = *a1;
  *v11 = *v14;
  *&v11[8] = HIDWORD(v6);
  *v14 = 1;
  *&v14[4] = v5;
  *&v11[12] = *v14;
  *&v11[20] = a3;
  *&v11[24] = v6;
  v12 = v5;
  v13 = *a2;
  v7 = *&v11[16];
  *(v3 + 8) = *v11;
  *v3 = &unk_288117A60;
  *(v3 + 24) = v7;
  *(v3 + 40) = v5;
  sub_27179FB48(v14, v11, &v13);
  *(v3 + 48) = &unk_288112118;
  v8 = v15;
  *(v3 + 56) = *&v14[8];
  *(v3 + 72) = v8;
  *(v3 + 88) = v16;
  *(v3 + 104) = v17;
  *(v3 + 112) = v18;
  *(v3 + 128) = v19;
  *(v3 + 152) = v21;
  result = *&v20;
  *(v3 + 136) = v20;
  *(v3 + 160) = 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_271269024@<D0>(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = 1;
  *v5 = 2;
  *&v5[8] = 0;
  *v10 = 0;
  *&v5[12] = 1;
  memset(v7, 0, 12);
  v6 = 0;
  v8 = 0;
  *(a1 + 8) = *v5;
  *a1 = &unk_288117A60;
  *(a1 + 24) = 0u;
  *(a1 + 40) = *(v7 + 4);
  sub_27179FB48(&v9, v5, &v8);
  *(a1 + 48) = &unk_288112118;
  v2 = v11;
  *(a1 + 56) = *&v10[4];
  *(a1 + 72) = v2;
  *(a1 + 88) = v12;
  *(a1 + 104) = v13;
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  *(a1 + 152) = v17;
  result = *&v16;
  *(a1 + 136) = v16;
  *(a1 + 160) = 1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_27126915C@<D0>(_DWORD *a1@<X1>, unint64_t a2@<X8>)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v3 = 2 * (*a1 != 0);
  LODWORD(a2) = v3 * *a1;
  if (a1[1])
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  v4 = v3 & 0x1FFFFFFFFLL | ((a2 >> 1) << 33);
  *v13 = 2;
  v5 = *a1;
  *&v13[4] = *a1;
  *v10 = *v13;
  *&v10[8] = HIDWORD(v5);
  *v13 = 1;
  *&v13[4] = v4;
  *&v10[12] = *v13;
  *&v10[20] = a2;
  *&v10[24] = v5;
  v11 = v4;
  v6 = *&v10[16];
  *(v2 + 8) = *v10;
  *v2 = &unk_288117A60;
  *(v2 + 40) = v4;
  *(v2 + 24) = v6;
  v12 = &unk_28810FA78;
  sub_2717BB914(v10, v13);
  *(v2 + 48) = &unk_288112118;
  v7 = v14;
  *(v2 + 56) = *&v13[8];
  *(v2 + 72) = v7;
  *(v2 + 88) = v15;
  *(v2 + 104) = v16;
  *(v2 + 112) = v17;
  *(v2 + 128) = v18;
  *(v2 + 152) = v20;
  result = *&v19;
  *(v2 + 136) = v19;
  *(v2 + 160) = 1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2712692D4@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  LODWORD(a3) = *a1;
  if (*a1)
  {
    v4 = a1[2];
    *v14 = 2;
    v5 = *a1;
    *&v14[4] = *a1;
    v6 = *v14;
    a3 = HIDWORD(v5);
    *v14 = 1;
    *&v14[4] = (v4 << 32) | 2;
    v7 = *v14;
    *&v12[20] = v4;
    *&v12[24] = v5;
    *&v12[32] = *&v14[4];
  }

  else
  {
    *v14 = 1;
    v6 = 2;
    *&v14[4] = 0;
    v7 = 1;
    memset(&v12[20], 0, 20);
  }

  *v12 = v6;
  *&v12[8] = a3;
  *&v12[12] = v7;
  v13 = *a2;
  *v3 = &unk_288117A60;
  v8 = *&v12[16];
  *(v3 + 8) = *v12;
  *(v3 + 24) = v8;
  *(v3 + 40) = *&v12[32];
  sub_27179FB48(v14, v12, &v13);
  *(v3 + 48) = &unk_288112118;
  v9 = v15;
  *(v3 + 56) = *&v14[8];
  *(v3 + 72) = v9;
  *(v3 + 88) = v16;
  *(v3 + 104) = v17;
  *(v3 + 112) = v18;
  *(v3 + 128) = v19;
  *(v3 + 152) = v21;
  result = *&v20;
  *(v3 + 136) = v20;
  *(v3 + 160) = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_271269458@<D0>(_DWORD *a1@<X1>, unint64_t a2@<X8>)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  LODWORD(a2) = *a1;
  if (*a1)
  {
    v3 = a1[2];
    *v13 = 2;
    v4 = *a1;
    *&v13[4] = *a1;
    v5 = *v13;
    a2 = HIDWORD(v4);
    *v13 = 1;
    *&v13[4] = (v3 << 32) | 2;
    v6 = *v13;
    *&v11[20] = v3;
    *&v11[24] = v4;
    *&v11[32] = *&v13[4];
  }

  else
  {
    *v13 = 1;
    v5 = 2;
    *&v13[4] = 0;
    v6 = 1;
    memset(&v11[20], 0, 20);
  }

  *v11 = v5;
  *&v11[8] = a2;
  *&v11[12] = v6;
  v7 = *&v11[16];
  *(v2 + 8) = *v11;
  *v2 = &unk_288117A60;
  *(v2 + 40) = *&v11[32];
  *(v2 + 24) = v7;
  v12 = &unk_28810FA78;
  sub_2717BB914(v11, v13);
  *(v2 + 48) = &unk_288112118;
  v8 = v14;
  *(v2 + 56) = *&v13[8];
  *(v2 + 72) = v8;
  *(v2 + 88) = v15;
  *(v2 + 104) = v16;
  *(v2 + 112) = v17;
  *(v2 + 128) = v18;
  *(v2 + 152) = v20;
  result = *&v19;
  *(v2 + 136) = v19;
  *(v2 + 160) = 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2712695F4@<D0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v16 = *a2;
  *a3 = &unk_288117A60;
  v4 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a1 + 32);
  sub_27179FB48(v7, a1, &v16);
  *(a3 + 48) = &unk_288112118;
  v5 = v9;
  *(a3 + 56) = v8;
  *(a3 + 72) = v5;
  *(a3 + 88) = v10;
  *(a3 + 104) = v11;
  *(a3 + 112) = v12;
  *(a3 + 128) = v13;
  *(a3 + 152) = v15;
  result = *&v14;
  *(a3 + 136) = v14;
  *(a3 + 160) = 1;
  return result;
}

double sub_2712696C4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *a2 = &unk_288117A60;
  *(a2 + 24) = v3;
  *(a2 + 40) = *(a1 + 32);
  sub_2717BB914(a1, v5);
  *(a2 + 48) = &unk_288112118;
  *(a2 + 56) = v6;
  *(a2 + 72) = v7;
  *(a2 + 88) = v8;
  *(a2 + 104) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v11;
  *(a2 + 152) = v13;
  result = *&v12;
  *(a2 + 136) = v12;
  *(a2 + 160) = 1;
  return result;
}

double sub_2712697B0@<D0>(uint64_t *a1@<X1>, unsigned int *a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (*a1)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *a2 << 32;
  if (v7)
  {
    v8 = 0;
  }

  v9 = v8 | (2 * (*a1 != 0));
  *v17 = 2;
  *&v17[4] = v5;
  *v14 = *v17;
  *&v14[8] = v6;
  *v17 = 1;
  *&v17[4] = v9;
  *&v14[12] = *v17;
  *&v14[20] = HIDWORD(v8);
  *&v14[24] = v5;
  v15 = v9;
  v16 = *a3;
  v10 = *&v14[16];
  *(a4 + 8) = *v14;
  *a4 = &unk_288117A60;
  *(a4 + 24) = v10;
  *(a4 + 40) = v9;
  sub_27179FB48(v17, v14, &v16);
  *(a4 + 48) = &unk_288112118;
  v11 = v18;
  *(a4 + 56) = *&v17[8];
  *(a4 + 72) = v11;
  *(a4 + 88) = v19;
  *(a4 + 104) = v20;
  *(a4 + 112) = v21;
  *(a4 + 128) = v22;
  *(a4 + 152) = v24;
  result = *&v23;
  *(a4 + 136) = v23;
  *(a4 + 160) = 1;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_27126990C@<D0>(uint64_t *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = HIDWORD(*a1);
  if (*a1)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a2 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v8 = v7 | (2 * (*a1 != 0));
  *v16 = 2;
  *&v16[4] = v4;
  *v13 = *v16;
  *&v13[8] = v5;
  *v16 = 1;
  *&v16[4] = v8;
  *&v13[12] = *v16;
  *&v13[20] = HIDWORD(v7);
  *&v13[24] = v4;
  v14 = v8;
  v9 = *&v13[16];
  *(a3 + 8) = *v13;
  *a3 = &unk_288117A60;
  *(a3 + 40) = v8;
  *(a3 + 24) = v9;
  v15 = &unk_28810FA78;
  sub_2717BB914(v13, v16);
  *(a3 + 48) = &unk_288112118;
  v10 = v17;
  *(a3 + 56) = *&v16[8];
  *(a3 + 72) = v10;
  *(a3 + 88) = v18;
  *(a3 + 104) = v19;
  *(a3 + 112) = v20;
  *(a3 + 128) = v21;
  *(a3 + 152) = v23;
  result = *&v22;
  *(a3 + 136) = v22;
  *(a3 + 160) = 1;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}