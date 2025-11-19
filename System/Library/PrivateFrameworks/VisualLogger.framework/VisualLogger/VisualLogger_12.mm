void sub_27120FF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  _Unwind_Resume(a1);
}

void sub_27120FFC4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B308))
  {
    sub_27120F4B0();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B488, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_2712100D0(void *result)
{
  *result = &unk_2881135D8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_271210164(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

BOOL sub_2712101E0(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_2881249C8, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_271210340(void *result)
{
  *result = &unk_288113658;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2712103D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_2881249C8, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121078C(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_2712105E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271210628(void *a1)
{
  *a1 = &unk_288113658;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712106FC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121078C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B310))
  {
    sub_271210B58();
  }

  if ((atomic_load_explicit(&qword_28087B318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B318))
  {
    sub_271210F88();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B4B7;
  if (byte_28087B4B7 >= 0)
  {
    v5 = &qword_28087B4A0;
  }

  else
  {
    v4 = unk_28087B4A8;
    v5 = qword_28087B4A0;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B4CF;
  v7 = &qword_28087B4B8;
  if (byte_28087B4CF < 0)
  {
    v6 = qword_28087B4C0;
    v7 = qword_28087B4B8;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_271210B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271210B58()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Two8u]", 29, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271210E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271210FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271211014()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two8u]", 29, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2712112B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271211400(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271211478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271211530(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_2712115D4(void *a1)
{
  *a1 = &unk_2881135D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712116A8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271211738(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271211B2C(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 32) << 32;
  }

  v12 = v11 | (2 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 2;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_271211ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271211B2C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B318))
  {
    sub_271210F88();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B4B8, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_271211C38(void *result)
{
  *result = &unk_288113498;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_271211CCC(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_2881249B0, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_271211E2C(void *result)
{
  *result = &unk_288113518;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271211EC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_2881249B0, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271212278(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_2712120CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271212114(void *a1)
{
  *a1 = &unk_288113518;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712121E8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271212278(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B320))
  {
    sub_271212644();
  }

  if ((atomic_load_explicit(&qword_28087B328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B328))
  {
    sub_271212A74();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B4E7;
  if (byte_28087B4E7 >= 0)
  {
    v5 = &qword_28087B4D0;
  }

  else
  {
    v4 = unk_28087B4D8;
    v5 = qword_28087B4D0;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B4FF;
  v7 = &qword_28087B4E8;
  if (byte_28087B4FF < 0)
  {
    v6 = qword_28087B4F0;
    v7 = qword_28087B4E8;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_271212620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271212644()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Two16f]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271212918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271212AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271212B00()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two16f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271212DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271212EEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271212F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121301C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_2712130C0(void *a1)
{
  *a1 = &unk_288113498;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271213194(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271213224(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 7)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121361C(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (2 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 2;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_2712135CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27121361C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B328))
  {
    sub_271212A74();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B4E8, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_271213728(void *result)
{
  *result = &unk_288113398;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_2712137BC(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124998, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27121391C(void *result)
{
  *result = &unk_288113418;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2712139B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124998, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271213D68(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_271213BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271213C04(void *a1)
{
  *a1 = &unk_288113418;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271213CD8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271213D68(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B330))
  {
    sub_271214134();
  }

  if ((atomic_load_explicit(&qword_28087B338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B338))
  {
    sub_271214564();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B517;
  if (byte_28087B517 >= 0)
  {
    v5 = &qword_28087B500;
  }

  else
  {
    v4 = unk_28087B508;
    v5 = qword_28087B500;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B52F;
  v7 = &qword_28087B518;
  if (byte_28087B52F < 0)
  {
    v6 = qword_28087B520;
    v7 = qword_28087B518;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_271214110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271214134()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Two32f]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271214408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712145D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712145F0()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two32f]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271214894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_2712149DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271214A54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271214B0C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_271214BB0(void *a1)
{
  *a1 = &unk_288113398;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271214C84(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271214D14(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 8)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121510C(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a2 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (2 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 2;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_2712150BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27121510C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B338))
  {
    sub_271214564();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B518, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_271215218(void *result)
{
  *result = &unk_288114318;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_2712152AC(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124AB8, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27121540C(void *result)
{
  *result = &unk_288114398;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2712154A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124AB8, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271215858(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_2712156AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_2712156F4(void *a1)
{
  *a1 = &unk_288114398;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712157C8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271215858(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B340))
  {
    sub_271215C24();
  }

  if ((atomic_load_explicit(&qword_28087B348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B348))
  {
    sub_271216054();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B547;
  if (byte_28087B547 >= 0)
  {
    v5 = &qword_28087B530;
  }

  else
  {
    v4 = unk_28087B538;
    v5 = qword_28087B530;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B55F;
  v7 = &qword_28087B548;
  if (byte_28087B55F < 0)
  {
    v6 = qword_28087B550;
    v7 = qword_28087B548;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_271215C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271215C24()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgb8u]", 29, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271215EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712160C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712160E0()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb8u]", 29, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271216384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_2712164CC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271216544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712165FC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_2712166A0(void *a1)
{
  *a1 = &unk_288114318;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271216774(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271216804(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271216BF8(&v24, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v4;
      v24.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24) == 0;
  if (*(a2 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + 32) << 32;
  }

  v11 = v10 | v8;
  v12 = *(a2 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *&v25[4] = v12;
  v13 = v12;
  *v25 = 3;
  v14 = *v25;
  v15 = HIDWORD(v12);
  *v25 = 1;
  *&v25[4] = v11;
  v16 = *v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = *v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v19 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 36) = v16;
  *(a1 + 44) = v17;
  *(a1 + 48) = v13;
  *(a1 + 56) = v11;
  *(a1 + 64) = v20;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271216BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271216BF8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B348))
  {
    sub_271216054();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B548, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_271216D04(void *result)
{
  *result = &unk_288114218;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_271216D98(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124AA0, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_271216EF8(void *result)
{
  *result = &unk_288114298;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271216F8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124AA0, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271217344(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_271217198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_2712171E0(void *a1)
{
  *a1 = &unk_288114298;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712172B4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271217344(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B350))
  {
    sub_271217710();
  }

  if ((atomic_load_explicit(&qword_28087B358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B358))
  {
    sub_271217B40();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B577;
  if (byte_28087B577 >= 0)
  {
    v5 = &qword_28087B560;
  }

  else
  {
    v4 = unk_28087B568;
    v5 = qword_28087B560;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B58F;
  v7 = &qword_28087B578;
  if (byte_28087B58F < 0)
  {
    v6 = qword_28087B580;
    v7 = qword_28087B578;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2712176EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271217710()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgb16u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2712179E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271217BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271217BCC()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb16u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271217E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271217FB8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271218030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712180E8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27121818C(void *a1)
{
  *a1 = &unk_288114218;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271218260(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712182F0(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2712186E8(&v24, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v4;
      v24.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24) == 0;
  if (*(a2 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a2 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *&v25[4] = v12;
  v13 = v12;
  *v25 = 3;
  v14 = *v25;
  v15 = HIDWORD(v12);
  *v25 = 1;
  *&v25[4] = v10 | v8;
  v16 = *v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = *v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v19 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 36) = v16;
  *(a1 + 44) = v17;
  *(a1 + 48) = v13;
  *(a1 + 56) = v11;
  *(a1 + 64) = v20;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271218698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2712186E8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B358))
  {
    sub_271217B40();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B578, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_2712187F4(void *result)
{
  *result = &unk_288114098;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_271218888(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124A88, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_2712189E8(void *result)
{
  *result = &unk_288114118;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271218A7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124A88, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271218E34(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_271218C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271218CD0(void *a1)
{
  *a1 = &unk_288114118;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271218DA4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271218E34(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B360))
  {
    sub_271219200();
  }

  if ((atomic_load_explicit(&qword_28087B368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B368))
  {
    sub_271219630();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B5A7;
  if (byte_28087B5A7 >= 0)
  {
    v5 = &qword_28087B590;
  }

  else
  {
    v4 = unk_28087B598;
    v5 = qword_28087B590;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B5BF;
  v7 = &qword_28087B5A8;
  if (byte_28087B5BF < 0)
  {
    v6 = qword_28087B5B0;
    v7 = qword_28087B5A8;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2712191DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271219200()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Bgra8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2712194D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712196A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712196BC()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgra8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271219960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271219AA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271219B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271219BD8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_271219C7C(void *a1)
{
  *a1 = &unk_288114098;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271219D50(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271219DE0(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121A1D4(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 4;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_27121A184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27121A1D4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B368))
  {
    sub_271219630();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B5A8, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_27121A2E0(void *result)
{
  *result = &unk_288113D58;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_27121A374(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124A58, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27121A4D4(void *result)
{
  *result = &unk_288113DD8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121A568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124A58, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121A920(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121A774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121A7BC(void *a1)
{
  *a1 = &unk_288113DD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121A890(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121A920(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B370))
  {
    sub_27121ACEC();
  }

  if ((atomic_load_explicit(&qword_28087B378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B378))
  {
    sub_27121B11C();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B5D7;
  if (byte_28087B5D7 >= 0)
  {
    v5 = &qword_28087B5C0;
  }

  else
  {
    v4 = unk_28087B5C8;
    v5 = qword_28087B5C0;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B5EF;
  v7 = &qword_28087B5D8;
  if (byte_28087B5EF < 0)
  {
    v6 = qword_28087B5E0;
    v7 = qword_28087B5D8;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27121ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121ACEC()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgba16f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121AFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27121B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121B1A8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121B44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27121B594(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121B60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121B6C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27121B768(void *a1)
{
  *a1 = &unk_288113D58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121B83C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121B8CC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121BCC4(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 4;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_27121BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27121BCC4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B378))
  {
    sub_27121B11C();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B5D8, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_27121BDD0(void *result)
{
  *result = &unk_288113C58;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_27121BE64(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124A40, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27121BFC4(void *result)
{
  *result = &unk_288113CD8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121C058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124A40, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121C410(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121C264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121C2AC(void *a1)
{
  *a1 = &unk_288113CD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121C380(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121C410(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B380))
  {
    sub_27121C7DC();
  }

  if ((atomic_load_explicit(&qword_28087B388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B388))
  {
    sub_27121CC0C();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B607;
  if (byte_28087B607 >= 0)
  {
    v5 = &qword_28087B5F0;
  }

  else
  {
    v4 = unk_28087B5F8;
    v5 = qword_28087B5F0;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B61F;
  v7 = &qword_28087B608;
  if (byte_28087B61F < 0)
  {
    v6 = qword_28087B610;
    v7 = qword_28087B608;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27121C7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121C7DC()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgba32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121CAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27121CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121CC98()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121CF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27121D084(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121D0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121D1B4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27121D258(void *a1)
{
  *a1 = &unk_288113C58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121D32C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121D3BC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121D7B4(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a2 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 4;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_27121D764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27121D7B4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B388))
  {
    sub_27121CC0C();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B608, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_27121D8C0(void *result)
{
  *result = &unk_288113A58;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_27121D954(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124A28, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27121DAB4(void *result)
{
  *result = &unk_288113AD8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121DB48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124A28, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121DF00(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121DD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121DD9C(void *a1)
{
  *a1 = &unk_288113AD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121DE70(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121DF00(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B390))
  {
    sub_27121E2CC();
  }

  if ((atomic_load_explicit(&qword_28087B398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B398))
  {
    sub_27121E6FC();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B637;
  if (byte_28087B637 >= 0)
  {
    v5 = &qword_28087B620;
  }

  else
  {
    v4 = unk_28087B628;
    v5 = qword_28087B620;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B64F;
  v7 = &qword_28087B638;
  if (byte_28087B64F < 0)
  {
    v6 = qword_28087B640;
    v7 = qword_28087B638;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27121E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121E2CC()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Argb8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121E5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27121E76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121E788()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27121EB74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121EBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121ECA4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27121ED48(void *a1)
{
  *a1 = &unk_288113A58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121EE1C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121EEAC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121F2A0(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 4;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_27121F250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27121F2A0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B398))
  {
    sub_27121E6FC();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B638, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_27121F3AC(void *result)
{
  *result = &unk_288113958;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_27121F440(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124A10, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27121F5A0(void *result)
{
  *result = &unk_2881139D8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27121F634(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = **v4, (v7 = __dynamic_cast(v4, &unk_288123908, &unk_288124A10, 0)) == 0))
  {
    v14 = 0;
    v15 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121F9EC(v12, a2);
    std::logic_error::logic_error(exception, v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v14 = v7;
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a2 + 40);
    *v12 = *(a2 + 24);
    *&v12[16] = v8;
    v13 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    v9 = *&v12[16];
    *(a1 + 16) = *v12;
    *(a1 + 32) = v9;
    *(a1 + 48) = v13;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    v10 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121F840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121F888(void *a1)
{
  *a1 = &unk_2881139D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121F95C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27121F9EC(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B3A0))
  {
    sub_27121FDB8();
  }

  if ((atomic_load_explicit(&qword_28087B3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B3A8))
  {
    sub_2712201E8();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B667;
  if (byte_28087B667 >= 0)
  {
    v5 = &qword_28087B650;
  }

  else
  {
    v4 = unk_28087B658;
    v5 = qword_28087B650;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B67F;
  v7 = &qword_28087B668;
  if (byte_28087B67F < 0)
  {
    v6 = qword_28087B670;
    v7 = qword_28087B668;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27121FD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121FDB8()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Argb16u]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27122008C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271220258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271220274()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271220518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271220660(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2712206D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271220790(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_271220834(void *a1)
{
  *a1 = &unk_288113958;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271220908(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271220998(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271220D90(&v25, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v25.__r_.__value_.__r.__words[0] = v4;
      v25.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v25.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a2 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *v26 = 4;
  *&v26[4] = v13;
  v14 = v13;
  v15 = *v26;
  v16 = HIDWORD(v13);
  *v26 = 1;
  *&v26[4] = v12;
  v17 = *v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = *v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a2 + 52);
  size = v25.__r_.__value_.__l.__size_;
  if (v25.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v25.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v25.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    v24 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v23 = *MEMORY[0x277D85DE8];
  }
}

void sub_271220D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271220D90(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B3A8))
  {
    sub_2712201E8();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B668, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void sub_271220E9C()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "image of pixel format '";
  v2[2] = v0;
  v2[3] = "image of pixel format '";
  v2[4] = "image of pixel format '";
  v3 = v2;
  sub_2711D0C58(&v3);
  sub_27120AACC();
}

void sub_271220FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271220FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271220FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271220FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_27122101C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_27122141C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_27122111C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EBB8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_271221210(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812EBB8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2712213D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_27122141C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2712215B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2712215CC(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v205 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v5 = &unk_288114458;
      v179.__r_.__value_.__r.__words[0] = &unk_288114458;
      sub_27120A3E8(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_271208E98(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_177;
      }

      v200 = &unk_2881144D8;
      sub_27120908C(&v201, &v179);
      v7 = *(&v201 + 1);
      v6 = v201;
      v187 = &unk_2881144D8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810E238;
      if (!v7)
      {
        v194 = v6;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
LABEL_334:
        v187 = &unk_2881144D8;
        v161 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v161->__on_zero_shared)(v161);
          std::__shared_weak_count::__release_weak(v161);
        }

        if (v198)
        {
          goto LABEL_338;
        }

LABEL_177:
        v102 = v180;
        if (v183 == 1 && v180)
        {
          v104 = v179.__r_.__value_.__r.__words[2];
          size = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v105 = size;
              (v104->__on_zero_shared)(v104);
              std::__shared_weak_count::__release_weak(v104);
              size = v105;
            }
          }

          (*(*size + 88))(size, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v102 = v180;
        }

        v106 = v182;
        v107 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107F18;
        v188 = v107;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x4C303038u, v102, v106 | 0x100000000, &v187);
      }

      p_shared_owners = &v7->__shared_owners_;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v6;
      v195 = v7;
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_6;
        }
      }

      else
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_6:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_338;
          }

          goto LABEL_334;
        }
      }

      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      LOBYTE(v198) = 1;
      if ((v191 & 1) == 0)
      {
LABEL_338:
        v149 = v194;
        v162 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v163 = v149;
            (v162->__on_zero_shared)(v162);
            std::__shared_weak_count::__release_weak(v162);
            v149 = v163;
          }
        }

        goto LABEL_351;
      }

      goto LABEL_334;
    case 2:
      v5 = &unk_288113E98;
      v179.__r_.__value_.__r.__words[0] = &unk_288113E98;
      sub_27120C7B8(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27120B268(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_187;
      }

      v200 = &unk_288113F18;
      sub_27120B45C(&v201, &v179);
      v37 = *(&v201 + 1);
      v36 = v201;
      v187 = &unk_288113F18;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810DBB8;
      if (!v37)
      {
        v194 = v36;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
LABEL_344:
        v187 = &unk_288113F18;
        v164 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v164->__on_zero_shared)(v164);
          std::__shared_weak_count::__release_weak(v164);
        }

        if (v198)
        {
          goto LABEL_348;
        }

LABEL_187:
        v108 = v180;
        if (v183 == 1 && v180)
        {
          v110 = v179.__r_.__value_.__r.__words[2];
          v109 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v111 = v109;
              (v110->__on_zero_shared)(v110);
              std::__shared_weak_count::__release_weak(v110);
              v109 = v111;
            }
          }

          (*(*v109 + 88))(v109, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v108 = v180;
        }

        v112 = 2 * v182;
        v113 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107DB8;
        v188 = v113;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x62313667u, v108, v112 | 0x100000000, &v187);
      }

      v38 = &v37->__shared_owners_;
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v36;
      v195 = v37;
      if (atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v38, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_66;
        }
      }

      else
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v37);
        if (atomic_fetch_add(v38, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_66:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_348;
          }

          goto LABEL_344;
        }
      }

      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
      LOBYTE(v198) = 1;
      if ((v191 & 1) == 0)
      {
LABEL_348:
        v149 = v194;
        v165 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v166 = v149;
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
            v149 = v166;
          }
        }

        goto LABEL_351;
      }

      goto LABEL_344;
    case 3:
      v5 = &unk_288113818;
      v179.__r_.__value_.__r.__words[0] = &unk_288113818;
      sub_27120E20C(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27120CCBC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_137;
      }

      v200 = &unk_288113898;
      sub_27120CEB0(&v201, &v179);
      v25 = *(&v201 + 1);
      v24 = v201;
      v187 = &unk_288113898;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810D4F8;
      if (!v25)
      {
        v194 = v24;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
LABEL_294:
        v187 = &unk_288113898;
        v148 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v148->__on_zero_shared)(v148);
          std::__shared_weak_count::__release_weak(v148);
        }

        if (v198)
        {
          goto LABEL_298;
        }

LABEL_137:
        v78 = v180;
        if (v183 == 1 && v180)
        {
          v80 = v179.__r_.__value_.__r.__words[2];
          v79 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v81 = v79;
              (v80->__on_zero_shared)(v80);
              std::__shared_weak_count::__release_weak(v80);
              v79 = v81;
            }
          }

          (*(*v79 + 88))(v79, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v78 = v180;
        }

        v82 = 2 * v182;
        v83 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107C00;
        v188 = v83;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x4C303068u, v78, v82 | 0x100000000, &v187);
      }

      v26 = &v25->__shared_owners_;
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v24;
      v195 = v25;
      if (atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v26, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_42;
        }
      }

      else
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
        if (atomic_fetch_add(v26, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_42:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_298;
          }

          goto LABEL_294;
        }
      }

      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      LOBYTE(v198) = 1;
      if ((v191 & 1) == 0)
      {
LABEL_298:
        v149 = v194;
        v150 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v151 = v149;
            (v150->__on_zero_shared)(v150);
            std::__shared_weak_count::__release_weak(v150);
            v149 = v151;
          }
        }

        goto LABEL_351;
      }

      goto LABEL_294;
    case 4:
      v5 = &unk_2881136D8;
      v179.__r_.__value_.__r.__words[0] = &unk_2881136D8;
      sub_27120FC60(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27120E710(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_167;
      }

      v200 = &unk_288113758;
      sub_27120E904(&v201, &v179);
      v34 = *(&v201 + 1);
      v33 = v201;
      v187 = &unk_288113758;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810D3B8;
      if (!v34)
      {
        v194 = v33;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
        goto LABEL_324;
      }

      v35 = &v34->__shared_owners_;
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v33;
      v195 = v34;
      if (atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v35, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_60;
        }
      }

      else
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
        if (atomic_fetch_add(v35, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_60:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_328;
          }

          goto LABEL_324;
        }
      }

      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
      LOBYTE(v198) = 1;
      if (v191)
      {
LABEL_324:
        v187 = &unk_288113758;
        v158 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v158->__on_zero_shared)(v158);
          std::__shared_weak_count::__release_weak(v158);
        }

        if (v198)
        {
          goto LABEL_328;
        }

LABEL_167:
        v96 = v180;
        if (v183 == 1 && v180)
        {
          v98 = v179.__r_.__value_.__r.__words[2];
          v97 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v99 = v97;
              (v98->__on_zero_shared)(v98);
              std::__shared_weak_count::__release_weak(v98);
              v97 = v99;
            }
          }

          (*(*v97 + 88))(v97, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v96 = v180;
        }

        v100 = 4 * v182;
        v101 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107BA8;
        v188 = v101;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x4C303066u, v96, v100 | 0x100000000, &v187);
      }

LABEL_328:
      v149 = v194;
      v159 = v195;
      if (v195)
      {
        atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v160 = v149;
          (v159->__on_zero_shared)(v159);
          std::__shared_weak_count::__release_weak(v159);
          v149 = v160;
        }
      }

LABEL_351:
      sub_271545F0C(v149, a1);
      if (v198 != 1)
      {
        goto LABEL_355;
      }

LABEL_352:
      v167 = v195;
      if (v195 && !atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v167->__on_zero_shared)(v167);
        std::__shared_weak_count::__release_weak(v167);
      }

LABEL_355:
      v179.__r_.__value_.__r.__words[0] = v5;
      v168 = v179.__r_.__value_.__r.__words[2];
      if (v179.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v179.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v168->__on_zero_shared)(v168);
        std::__shared_weak_count::__release_weak(v168);
      }

      v169 = *MEMORY[0x277D85DE8];
      return;
    case 5:
      v5 = &unk_2881135D8;
      v179.__r_.__value_.__r.__words[0] = &unk_2881135D8;
      sub_271211738(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_2712101E0(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_107;
      }

      v200 = &unk_288113658;
      sub_2712103D4(&v201, &v179);
      v16 = *(&v201 + 1);
      v15 = v201;
      v187 = &unk_288113658;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D2F8;
      if (!v16)
      {
        v194 = v15;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_264:
        v187 = &unk_288113658;
        v139 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        if (v199)
        {
          goto LABEL_268;
        }

LABEL_107:
        v60 = v180;
        if (v186 == 1 && v180)
        {
          v62 = v179.__r_.__value_.__r.__words[2];
          v61 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v63 = v61;
              (v62->__on_zero_shared)(v62);
              std::__shared_weak_count::__release_weak(v62);
              v61 = v63;
            }
          }

          (*(*v61 + 88))(v61, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v60 = v180;
        }

        v64 = v184;
        v65 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107B50;
        v188 = v65;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x32433038u, v60, v64 | 0x100000000, &v187);
      }

      v17 = &v16->__shared_owners_;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v15;
      v195 = v16;
      if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v17, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_24;
        }
      }

      else
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (atomic_fetch_add(v17, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_24:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_268;
          }

          goto LABEL_264;
        }
      }

      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_268:
        v133 = v194;
        v140 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v133;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v133 = v141;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_264;
    case 7:
      v5 = &unk_288113498;
      v179.__r_.__value_.__r.__words[0] = &unk_288113498;
      sub_271213224(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_271211CCC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_197;
      }

      v200 = &unk_288113518;
      sub_271211EC0(&v201, &v179);
      v40 = *(&v201 + 1);
      v39 = v201;
      v187 = &unk_288113518;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D1B8;
      if (!v40)
      {
        v194 = v39;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_361:
        v187 = &unk_288113518;
        v170 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        if (v199)
        {
          goto LABEL_365;
        }

LABEL_197:
        v114 = v180;
        if (v186 == 1 && v180)
        {
          v116 = v179.__r_.__value_.__r.__words[2];
          v115 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v117 = v115;
              (v116->__on_zero_shared)(v116);
              std::__shared_weak_count::__release_weak(v116);
              v115 = v117;
            }
          }

          (*(*v115 + 88))(v115, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v114 = v180;
        }

        v118 = 2 * v184;
        v119 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107AF8;
        v188 = v119;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x32433068u, v114, v118 | 0x100000000, &v187);
      }

      v41 = &v40->__shared_owners_;
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v39;
      v195 = v40;
      if (atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v41, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_72;
        }
      }

      else
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v40);
        if (atomic_fetch_add(v41, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_72:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_365;
          }

          goto LABEL_361;
        }
      }

      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_365:
        v133 = v194;
        v171 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v172 = v133;
            (v171->__on_zero_shared)(v171);
            std::__shared_weak_count::__release_weak(v171);
            v133 = v172;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_361;
    case 8:
      v5 = &unk_288113398;
      v179.__r_.__value_.__r.__words[0] = &unk_288113398;
      sub_271214D14(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_2712137BC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_147;
      }

      v200 = &unk_288113418;
      sub_2712139B0(&v201, &v179);
      v28 = *(&v201 + 1);
      v27 = v201;
      v187 = &unk_288113418;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D0F8;
      if (!v28)
      {
        v194 = v27;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_304:
        v187 = &unk_288113418;
        v152 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v152->__on_zero_shared)(v152);
          std::__shared_weak_count::__release_weak(v152);
        }

        if (v199)
        {
          goto LABEL_308;
        }

LABEL_147:
        v84 = v180;
        if (v186 == 1 && v180)
        {
          v86 = v179.__r_.__value_.__r.__words[2];
          v85 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v87 = v85;
              (v86->__on_zero_shared)(v86);
              std::__shared_weak_count::__release_weak(v86);
              v85 = v87;
            }
          }

          (*(*v85 + 88))(v85, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v84 = v180;
        }

        v88 = 4 * v184;
        v89 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107AA0;
        v188 = v89;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x32433066u, v84, v88 | 0x100000000, &v187);
      }

      v29 = &v28->__shared_owners_;
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v27;
      v195 = v28;
      if (atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v29, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_48;
        }
      }

      else
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
        if (atomic_fetch_add(v29, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_48:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_308;
          }

          goto LABEL_304;
        }
      }

      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_308:
        v133 = v194;
        v153 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v154 = v133;
            (v153->__on_zero_shared)(v153);
            std::__shared_weak_count::__release_weak(v153);
            v133 = v154;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_304;
    case 21:
      v5 = &unk_288114318;
      v179.__r_.__value_.__r.__words[0] = &unk_288114318;
      sub_271216804(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_2712152AC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_97;
      }

      v200 = &unk_288114398;
      sub_2712154A0(&v201, &v179);
      v13 = *(&v201 + 1);
      v12 = v201;
      v187 = &unk_288114398;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810E0F8;
      if (!v13)
      {
        v194 = v12;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_254:
        v187 = &unk_288114398;
        v136 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v136->__on_zero_shared)(v136);
          std::__shared_weak_count::__release_weak(v136);
        }

        if (v199)
        {
          goto LABEL_258;
        }

LABEL_97:
        v54 = v180;
        if (v186 == 1 && v180)
        {
          v56 = v179.__r_.__value_.__r.__words[2];
          v55 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v57 = v55;
              (v56->__on_zero_shared)(v56);
              std::__shared_weak_count::__release_weak(v56);
              v55 = v57;
            }
          }

          (*(*v55 + 88))(v55, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v54 = v180;
        }

        v58 = v184;
        v59 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107EC0;
        v188 = v59;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x18u, v54, v58 | 0x100000000, &v187);
      }

      v14 = &v13->__shared_owners_;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v12;
      v195 = v13;
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v14, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }
      }

      else
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        if (atomic_fetch_add(v14, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_18:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_258;
          }

          goto LABEL_254;
        }
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_258:
        v133 = v194;
        v137 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v138 = v133;
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
            v133 = v138;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_254;
    case 22:
      v5 = &unk_288114218;
      v179.__r_.__value_.__r.__words[0] = &unk_288114218;
      sub_2712182F0(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_271216D98(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_117;
      }

      v200 = &unk_288114298;
      sub_271216F8C(&v201, &v179);
      v19 = *(&v201 + 1);
      v18 = v201;
      v187 = &unk_288114298;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810E038;
      if (!v19)
      {
        v194 = v18;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_274:
        v187 = &unk_288114298;
        v142 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v142->__on_zero_shared)(v142);
          std::__shared_weak_count::__release_weak(v142);
        }

        if (v199)
        {
          goto LABEL_278;
        }

LABEL_117:
        v66 = v180;
        if (v186 == 1 && v180)
        {
          v68 = v179.__r_.__value_.__r.__words[2];
          v67 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v69 = v67;
              (v68->__on_zero_shared)(v68);
              std::__shared_weak_count::__release_weak(v68);
              v67 = v69;
            }
          }

          (*(*v67 + 88))(v67, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v66 = v180;
        }

        v70 = 2 * v184;
        v71 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107E68;
        v188 = v71;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x62343872u, v66, v70 | 0x100000000, &v187);
      }

      v20 = &v19->__shared_owners_;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v18;
      v195 = v19;
      if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v20, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_30;
        }
      }

      else
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
        if (atomic_fetch_add(v20, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_30:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_278;
          }

          goto LABEL_274;
        }
      }

      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_278:
        v133 = v194;
        v143 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v144 = v133;
            (v143->__on_zero_shared)(v143);
            std::__shared_weak_count::__release_weak(v143);
            v133 = v144;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_274;
    case 25:
      v5 = &unk_288114098;
      v179.__r_.__value_.__r.__words[0] = &unk_288114098;
      sub_271219DE0(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_271218888(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_127;
      }

      v200 = &unk_288114118;
      sub_271218A7C(&v201, &v179);
      v22 = *(&v201 + 1);
      v21 = v201;
      v187 = &unk_288114118;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810DE78;
      if (!v22)
      {
        v194 = v21;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_284:
        v187 = &unk_288114118;
        v145 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        if (v199)
        {
          goto LABEL_288;
        }

LABEL_127:
        v72 = v180;
        if (v186 == 1 && v180)
        {
          v74 = v179.__r_.__value_.__r.__words[2];
          v73 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v75 = v73;
              (v74->__on_zero_shared)(v74);
              std::__shared_weak_count::__release_weak(v74);
              v73 = v75;
            }
          }

          (*(*v73 + 88))(v73, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v72 = v180;
        }

        v76 = v184;
        v77 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107E10;
        v188 = v77;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x42475241u, v72, v76 | 0x100000000, &v187);
      }

      v23 = &v22->__shared_owners_;
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v21;
      v195 = v22;
      if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v23, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_36;
        }
      }

      else
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
        if (atomic_fetch_add(v23, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_36:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_288;
          }

          goto LABEL_284;
        }
      }

      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_288:
        v133 = v194;
        v146 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v133;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v133 = v147;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_284;
    case 31:
      v5 = &unk_288113D58;
      v179.__r_.__value_.__r.__words[0] = &unk_288113D58;
      sub_27121B8CC(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27121A374(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_157;
      }

      v200 = &unk_288113DD8;
      sub_27121A568(&v201, &v179);
      v31 = *(&v201 + 1);
      v30 = v201;
      v187 = &unk_288113DD8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810DA78;
      if (!v31)
      {
        v194 = v30;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_314:
        v187 = &unk_288113DD8;
        v155 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v155->__on_zero_shared)(v155);
          std::__shared_weak_count::__release_weak(v155);
        }

        if (v199)
        {
          goto LABEL_318;
        }

LABEL_157:
        v90 = v180;
        if (v186 == 1 && v180)
        {
          v92 = v179.__r_.__value_.__r.__words[2];
          v91 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v93 = v91;
              (v92->__on_zero_shared)(v92);
              std::__shared_weak_count::__release_weak(v92);
              v91 = v93;
            }
          }

          (*(*v91 + 88))(v91, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v90 = v180;
        }

        v94 = 2 * v184;
        v95 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107D60;
        v188 = v95;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x52476841u, v90, v94 | 0x100000000, &v187);
      }

      v32 = &v31->__shared_owners_;
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v30;
      v195 = v31;
      if (atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v32, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_54;
        }
      }

      else
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        if (atomic_fetch_add(v32, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_54:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_318;
          }

          goto LABEL_314;
        }
      }

      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_318:
        v133 = v194;
        v156 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v156->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v157 = v133;
            (v156->__on_zero_shared)(v156);
            std::__shared_weak_count::__release_weak(v156);
            v133 = v157;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_314;
    case 32:
      v5 = &unk_288113C58;
      v179.__r_.__value_.__r.__words[0] = &unk_288113C58;
      sub_27121D3BC(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27121BE64(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_217;
      }

      v200 = &unk_288113CD8;
      sub_27121C058(&v201, &v179);
      v46 = *(&v201 + 1);
      v45 = v201;
      v187 = &unk_288113CD8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D9B8;
      if (!v46)
      {
        v194 = v45;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_381:
        v187 = &unk_288113CD8;
        v176 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v176->__on_zero_shared)(v176);
          std::__shared_weak_count::__release_weak(v176);
        }

        if (v199)
        {
          goto LABEL_385;
        }

LABEL_217:
        v126 = v180;
        if (v186 == 1 && v180)
        {
          v128 = v179.__r_.__value_.__r.__words[2];
          v127 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v129 = v127;
              (v128->__on_zero_shared)(v128);
              std::__shared_weak_count::__release_weak(v128);
              v127 = v129;
            }
          }

          (*(*v127 + 88))(v127, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v126 = v180;
        }

        v130 = 4 * v184;
        v131 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107D08;
        v188 = v131;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x52476641u, v126, v130 | 0x100000000, &v187);
      }

      v47 = &v46->__shared_owners_;
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v45;
      v195 = v46;
      if (atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v47, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_84;
        }
      }

      else
      {
        (v46->__on_zero_shared)(v46);
        std::__shared_weak_count::__release_weak(v46);
        if (atomic_fetch_add(v47, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_84:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_385;
          }

          goto LABEL_381;
        }
      }

      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_385:
        v133 = v194;
        v177 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v133;
            (v177->__on_zero_shared)(v177);
            std::__shared_weak_count::__release_weak(v177);
            v133 = v178;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_381;
    case 37:
      v5 = &unk_288113A58;
      v179.__r_.__value_.__r.__words[0] = &unk_288113A58;
      sub_27121EEAC(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27121D954(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_207;
      }

      v200 = &unk_288113AD8;
      sub_27121DB48(&v201, &v179);
      v43 = *(&v201 + 1);
      v42 = v201;
      v187 = &unk_288113AD8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D6F8;
      if (!v43)
      {
        v194 = v42;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_371:
        v187 = &unk_288113AD8;
        v173 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v173->__on_zero_shared)(v173);
          std::__shared_weak_count::__release_weak(v173);
        }

        if (v199)
        {
          goto LABEL_375;
        }

LABEL_207:
        v120 = v180;
        if (v186 == 1 && v180)
        {
          v122 = v179.__r_.__value_.__r.__words[2];
          v121 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v123 = v121;
              (v122->__on_zero_shared)(v122);
              std::__shared_weak_count::__release_weak(v122);
              v121 = v123;
            }
          }

          (*(*v121 + 88))(v121, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v120 = v180;
        }

        v124 = v184;
        v125 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107CB0;
        v188 = v125;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x20u, v120, v124 | 0x100000000, &v187);
      }

      v44 = &v43->__shared_owners_;
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v42;
      v195 = v43;
      if (atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v44, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_78;
        }
      }

      else
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
        if (atomic_fetch_add(v44, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_78:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_375;
          }

          goto LABEL_371;
        }
      }

      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_375:
        v133 = v194;
        v174 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v175 = v133;
            (v174->__on_zero_shared)(v174);
            std::__shared_weak_count::__release_weak(v174);
            v133 = v175;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_371;
    case 38:
      v5 = &unk_288113958;
      v179.__r_.__value_.__r.__words[0] = &unk_288113958;
      sub_271220998(&v179.__r_.__value_.__l.__size_, a4);
      if (!sub_27121F440(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_87;
      }

      v200 = &unk_2881139D8;
      sub_27121F634(&v201, &v179);
      v10 = *(&v201 + 1);
      v9 = v201;
      v187 = &unk_2881139D8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D638;
      if (!v10)
      {
        v194 = v9;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_244:
        v187 = &unk_2881139D8;
        v132 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v132->__on_zero_shared)(v132);
          std::__shared_weak_count::__release_weak(v132);
        }

        if (v199)
        {
          goto LABEL_248;
        }

LABEL_87:
        v48 = v180;
        if (v186 == 1 && v180)
        {
          v50 = v179.__r_.__value_.__r.__words[2];
          v49 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v51 = v49;
              (v50->__on_zero_shared)(v50);
              std::__shared_weak_count::__release_weak(v50);
              v49 = v51;
            }
          }

          (*(*v49 + 88))(v49, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v48 = v180;
        }

        v52 = 2 * v184;
        v53 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107C58;
        v188 = v53;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x62363461u, v48, v52 | 0x100000000, &v187);
      }

      v11 = &v10->__shared_owners_;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v9;
      v195 = v10;
      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_12;
        }
      }

      else
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_12:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_244;
        }
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_248:
        v133 = v194;
        v134 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v133;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v133 = v135;
          }
        }

LABEL_388:
        sub_271545F0C(v133, a1);
        if (v199 != 1)
        {
          goto LABEL_355;
        }

        goto LABEL_352;
      }

      goto LABEL_244;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}