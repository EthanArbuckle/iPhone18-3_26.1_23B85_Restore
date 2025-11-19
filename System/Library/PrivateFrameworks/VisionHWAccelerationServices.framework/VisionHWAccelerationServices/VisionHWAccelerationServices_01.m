void sub_271014F60(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3 && a4 >= 1 && a5)
  {
    goto LABEL_6;
  }

  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }
  }

  v8 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 67109632;
    v11[1] = a3;
    v12 = 1024;
    v13 = a4;
    v14 = 2048;
    v15 = a5;
    _os_log_error_impl(&dword_271001000, v8, OS_LOG_TYPE_ERROR, "VisionHWAServer: Error in ISP completion callback: status=%d, outputCount=%d, outputDescriptor=%p", v11, 0x18u);
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_6:
    v9 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_271015098(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  kdebug_trace();
  std::mutex::lock((a1 + 216));
  if (*(a1 + 16))
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v2 = qword_280874BC0;
    if (!os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (!v3)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    LOWORD(v13[0]) = 0;
    _os_log_error_impl(&dword_271001000, v2, OS_LOG_TYPE_ERROR, "VisionHWAServer: createDeviceAndSession called while active_session exists", v13, 2u);
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
LABEL_5:
      sub_271006850(*v3);
      MEMORY[0x2743BADE0](v3, 0x20C4093837F09);
    }
  }

LABEL_6:
  if (*a1)
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v4 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_error_impl(&dword_271001000, v4, OS_LOG_TYPE_ERROR, "VisionHWAServer: createDeviceAndSession called while ISP device exists", v13, 2u);
      v5 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = 0;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = 0;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_12:
  sub_27100605C(1, v13);
  v6 = *v13;
  *v13 = 0uLL;
  v7 = *(a1 + 8);
  *a1 = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v13[1];
  if (v13[1] && !atomic_fetch_add((v13[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *a1;
    if (*a1)
    {
LABEL_18:
      v14[0] = &unk_2880F91A8;
      v14[1] = a1;
      v15 = v14;
      sub_2710064AC(v9, v14);
      if (v15 == v14)
      {
        (*(*v15 + 32))(v15);
      }

      else if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      sub_271006370(*a1);
      operator new();
    }
  }

  else
  {
    v9 = *a1;
    if (*a1)
    {
      goto LABEL_18;
    }
  }

  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v10 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13[0]) = 0;
    _os_log_error_impl(&dword_271001000, v10, OS_LOG_TYPE_ERROR, "VisionHWAServer: unable to create and prepare an ISP Processing Session", v13, 2u);
  }

  std::mutex::unlock((a1 + 216));
  kdebug_trace();
  v11 = *MEMORY[0x277D85DE8];
  return 6;
}

void sub_2710156A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_271005B4C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2710156F4(uint64_t a1, void *a2, int a3)
{
  kdebug_trace();
  kdebug_trace();
  uint64 = xpc_dictionary_get_uint64(a2, "ClientId");
  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = uint64;
    if (v7 <= uint64)
    {
      v9 = uint64 % v7;
    }
  }

  else
  {
    v9 = (v7 - 1) & uint64;
  }

  v10 = *(*(a1 + 40) + 8 * v9);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      if (v8.u32[0] < 2uLL)
      {
        v12 = v7 - 1;
        while (1)
        {
          v14 = v11[1];
          if (v14 == uint64)
          {
            if (*(v11 + 4) == uint64)
            {
              goto LABEL_22;
            }
          }

          else if ((v14 & v12) != v9)
          {
            goto LABEL_21;
          }

          v11 = *v11;
          if (!v11)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v13 = v11[1];
        if (v13 == uint64)
        {
          if (*(v11 + 4) == uint64)
          {
            break;
          }
        }

        else
        {
          if (v13 >= v7)
          {
            v13 %= v7;
          }

          if (v13 != v9)
          {
            goto LABEL_21;
          }
        }

        v11 = *v11;
      }

      while (v11);
    }
  }

  else
  {
LABEL_21:
    v11 = 0;
  }

LABEL_22:
  v15 = *(v11 + 32);
  v16 = xpc_dictionary_get_uint64(a2, "IOBufListSize");
  v17 = v16;
  if (!a3)
  {
    sub_271014B54(v16, (v11 + 3), v15 ^ 1);
    if (v17)
    {
      if (v17 > 0xA)
      {
        return 10;
      }
    }

    else if ((v15 & 1) == 0)
    {
      return 10;
    }

    if (sub_271014C5C(a2, v11 + 6, "ActionBuf") && sub_271014C5C(a2, v11 + 5, "OperationBuf") && sub_271014C5C(a2, v11 + 7, "StatsBuf"))
    {
      v20 = v11[10];
      v21 = (v11[11] - v20) >> 3;
      if (v17 <= v21)
      {
        if (v17 < v21)
        {
          v11[11] = v20 + 8 * v17;
        }

        if (!v17)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_271019598((v11 + 10), v17 - v21);
      }

      v22 = 0;
      v23 = 0;
      while (1)
      {
        std::to_string(&__p, v23);
        v24 = std::string::insert(&__p, 0, "IOBufList", 9uLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v58 = v24->__r_.__value_.__r.__words[2];
        *buf = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v58 >= 0)
        {
          v26 = buf;
        }

        else
        {
          v26 = *buf;
        }

        v27 = sub_271014C5C(a2, (v11[10] + v22), v26);
        if (SHIBYTE(v58) < 0)
        {
          v28 = v27;
          operator delete(*buf);
          v27 = v28;
        }

        if (!v27)
        {
          break;
        }

        ++v23;
        v22 += 8;
        if (v17 == v23)
        {
          goto LABEL_49;
        }
      }
    }

    return 11;
  }

  if (v16)
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v18 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_271001000, v18, OS_LOG_TYPE_ERROR, "VisionHWAServer: For cached requests I/O buffers should not be provided", buf, 2u);
    }

    return 10;
  }

LABEL_49:
  memset(buf, 0, sizeof(buf));
  v58 = 0;
  if (*(v11 + 33) == 1 && *(v11 + 32) == 1)
  {
    sub_271019598(buf, ((v11[11] - v11[10]) >> 3) + 2);
    v29 = *buf;
    **buf = v11[8];
    *(v29 + 8) = v11[9];
    v30 = 2;
  }

  else
  {
    v31 = v11[11] - v11[10];
    if (v31)
    {
      sub_271019598(buf, v31 >> 3);
    }

    v30 = 0;
  }

  v33 = v11[10];
  v32 = v11[11];
  if (v33 != v32)
  {
    v34 = *buf;
    v35 = v32 - v33 - 8;
    if (v35 <= 0x37 || (v36 = 8 * v30 + *buf, (v36 - v33) < 0x20))
    {
      v37 = v11[10];
LABEL_60:
      v38 = (v34 + 8 * v30);
      do
      {
        v39 = *v37++;
        *v38++ = v39;
      }

      while (v37 != v32);
      goto LABEL_62;
    }

    v49 = (v35 >> 3) + 1;
    v30 |= v49 & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL));
    v50 = (v33 + 16);
    v51 = (v36 + 16);
    v52 = v49 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v53 = *v50;
      *(v51 - 1) = *(v50 - 1);
      *v51 = v53;
      v50 += 2;
      v51 += 2;
      v52 -= 4;
    }

    while (v52);
    if (v49 != (v49 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_60;
    }
  }

LABEL_62:
  if ((*(v11 + 33) & 1) != 0 && *(v11 + 144) != 1)
  {
    v19 = 12;
    goto LABEL_97;
  }

  kdebug_trace();
  v40 = v11[5];
  v41 = v11[6];
  v42 = v11[7];
  kdebug_trace();
  if (v40)
  {
    goto LABEL_67;
  }

  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v43 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_271001000, v43, OS_LOG_TYPE_ERROR, "VisionHWAServer: Invalid CVPixelBuffer", &__p, 2u);
    if (v41)
    {
      goto LABEL_71;
    }
  }

  else
  {
LABEL_67:
    if (v41)
    {
      goto LABEL_71;
    }
  }

  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v44 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_271001000, v44, OS_LOG_TYPE_ERROR, "VisionHWAServer: Invalid CVPixelBuffer", &__p, 2u);
  }

  if (v42)
  {
    goto LABEL_74;
  }

LABEL_71:
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v45 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_271001000, v45, OS_LOG_TYPE_ERROR, "VisionHWAServer: Invalid CVPixelBuffer", &__p, 2u);
    v46 = *buf;
    for (i = *&buf[8]; v46 != i; ++v46)
    {
LABEL_77:
      if (!*v46)
      {
        if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
        {
          qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
          __cxa_guard_release(&qword_280874BC8);
        }

        v48 = qword_280874BC0;
        if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&dword_271001000, v48, OS_LOG_TYPE_ERROR, "VisionHWAServer: Invalid CVPixelBuffer", &__p, 2u);
        }
      }
    }
  }

  else
  {
LABEL_74:
    v46 = *buf;
    i = *&buf[8];
    if (*buf != *&buf[8])
    {
      goto LABEL_77;
    }
  }

  std::mutex::lock((a1 + 216));
  v54 = *(a1 + 16);
  if (v54)
  {
    if (sub_271006D18(*a1, *v54, v40, v41, v42, buf, 1u))
    {
      v19 = 0;
    }

    else
    {
      v19 = 14;
    }
  }

  else
  {
    v19 = 2;
  }

  std::mutex::unlock((a1 + 216));
  kdebug_trace();
  kdebug_trace();
LABEL_97:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v19;
}

void sub_271015ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::mutex::unlock((v21 + 216));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271015F3C(uint64_t a1)
{
  std::mutex::lock((a1 + 216));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    sub_271006850(*v2);
    MEMORY[0x2743BADE0](v2, 0x20C4093837F09);
  }

  if (!*a1 || (v3 = *(a1 + 8), *a1 = 0, *(a1 + 8) = 0, !v3) || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  v4 = *(a1 + 24);
  if (v4)
  {
LABEL_7:
    os_release(v4);
    *(a1 + 24) = 0;
  }

LABEL_8:

  std::mutex::unlock((a1 + 216));
}

void sub_27101602C(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a2;
  xpc_connection_get_audit_token();
  v6 = *(a1 + 168);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v19;
    if (v6 <= v19)
    {
      v8 = v19 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & v19;
  }

  v9 = *(*(a1 + 160) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_21:
    if (!a3)
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v14 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_271001000, v14, OS_LOG_TYPE_ERROR, "VisionHWAServer: pid not exist!!", buf, 2u);
    }

    return;
  }

  if (v7.u32[0] < 2uLL)
  {
    v11 = v6 - 1;
    while (1)
    {
      v12 = v10[1];
      if (v12 == v19)
      {
        if (*(v10 + 4) == v19)
        {
          goto LABEL_27;
        }
      }

      else if ((v12 & v11) != v8)
      {
        goto LABEL_21;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v13 = v10[1];
    if (v13 == v19)
    {
      break;
    }

    if (v13 >= v6)
    {
      v13 %= v6;
    }

    if (v13 != v8)
    {
      goto LABEL_21;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (*(v10 + 4) != v19)
  {
    goto LABEL_16;
  }

LABEL_27:
  v16 = v10[3];
  v15 = v10[4];
  if (v16 != v15)
  {
    v17 = v10[3];
    while (*v17 != a2)
    {
      v17 += 8;
      v16 += 8;
      if (v17 == v15)
      {
        v16 = v10[4];
        break;
      }
    }
  }

  if (v15 == v16)
  {
    if ((a3 & 1) == 0)
    {
      sub_27101673C((v10 + 3), v16, &v20);
    }
  }

  else if (a3)
  {
    v18 = v15 - (v16 + 8);
    if (v15 != v16 + 8)
    {
      memmove(v16, v16 + 8, v15 - (v16 + 8));
    }

    v10[4] = &v16[v18];
  }
}

void sub_27101670C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271019E84(va);
  operator delete(v7);
  _Unwind_Resume(a1);
}

void sub_27101673C(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 8;
      return;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v6 == v8)
      {
LABEL_22:
        v17 = v9 <= a3 || __src > a3;
        v18 = 8;
        if (v17)
        {
          v18 = 0;
        }

        *__src = *&a3[v18];
        return;
      }
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
      *(a1 + 8) = v6 + 8;
      if (v6 == v8)
      {
        goto LABEL_22;
      }
    }

    memmove(__src + 8, __src, v6 - v8);
    v9 = *(a1 + 8);
    goto LABEL_22;
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    sub_271014AC4();
  }

  v12 = v7 - v10;
  if (v12 >> 2 > v11)
  {
    v11 = v12 >> 2;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    v13 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 61))
    {
      operator new();
    }

    sub_27100BA50();
  }

  v14 = __src - v10;
  v15 = (__src - v10) >> 3;
  v16 = (8 * v15);
  if (!v15)
  {
    if (v14 < 1)
    {
      v19 = v14 >> 2;
      if (v10 == __src)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (!(v20 >> 61))
      {
        operator new();
      }

      sub_27100BA50();
    }

    v16 -= ((v14 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
  }

  *v16 = *a3;
  v21 = *(a1 + 8) - __src;
  memcpy(v16 + 8, __src, v21);
  *(a1 + 8) = __src;
  v22 = &__src[-*a1];
  v23 = v16 - v22;
  memcpy((v16 - v22), *a1, v22);
  v24 = *a1;
  *a1 = v23;
  *(a1 + 8) = &v16[v21 + 8];
  *(a1 + 16) = 0;
  if (v24)
  {

    operator delete(v24);
  }
}

void sub_271016998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2710169B0(uint64_t a1, xpc_object_t xdict)
{
  v122 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(xdict, "Command");
  reply = xpc_dictionary_create_reply(xdict);
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  if ((uint64 & 0xFFFFFFFFFFFFFFFBLL) == 0x7D0)
  {
    v7 = 0;
    goto LABEL_3;
  }

  v19 = xpc_dictionary_get_uint64(xdict, "ClientId");
  v20 = *(a1 + 48);
  if (!v20)
  {
    goto LABEL_55;
  }

  v7 = v19;
  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = v19;
    if (v20 <= v19)
    {
      v22 = v19 % v20;
    }
  }

  else
  {
    v22 = (v20 - 1) & v19;
  }

  v29 = *(*(a1 + 40) + 8 * v22);
  if (!v29 || (v30 = *v29) == 0)
  {
LABEL_55:
    v8 = 3;
    goto LABEL_56;
  }

  if (v21.u32[0] < 2uLL)
  {
    v31 = v20 - 1;
    while (1)
    {
      v33 = v30[1];
      if (v33 == v19)
      {
        if (*(v30 + 4) == v19)
        {
          goto LABEL_119;
        }
      }

      else if ((v33 & v31) != v22)
      {
        goto LABEL_55;
      }

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v32 = v30[1];
    if (v32 == v19)
    {
      break;
    }

    if (v32 >= v20)
    {
      v32 %= v20;
    }

    if (v32 != v22)
    {
      goto LABEL_55;
    }

LABEL_45:
    v30 = *v30;
    if (!v30)
    {
      goto LABEL_55;
    }
  }

  if (*(v30 + 4) != v19)
  {
    goto LABEL_45;
  }

LABEL_119:
  if (remote_connection != v30[3])
  {
    v8 = 4;
    goto LABEL_56;
  }

LABEL_3:
  if (uint64 != 2002 && uint64 <= 0x7D6 && !*(a1 + 16))
  {
    if (*(a1 + 88) == 1)
    {
      if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
      {
        qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
        __cxa_guard_release(&qword_280874BC8);
      }

      v43 = qword_280874BC0;
      if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_271001000, v43, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: ISP is unrecoverable, try to restore device and session", buf, 2u);
      }

      v8 = sub_271015098(a1);
      if (!v8)
      {
        goto LABEL_6;
      }

      *(a1 + 88) = 0;
    }

    else if (atomic_load((a1 + 200)))
    {
      v8 = sub_271015098(a1);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
      {
        qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
        __cxa_guard_release(&qword_280874BC8);
      }

      v65 = qword_280874BC0;
      if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_271001000, v65, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: App is not foregrounded", buf, 2u);
      }

      v8 = 6;
    }

    goto LABEL_56;
  }

LABEL_6:
  v8 = 5;
  if (uint64 <= 2002)
  {
    if (uint64 != 2000)
    {
      if (uint64 == 2001)
      {
        v8 = sub_2710156F4(a1, xdict, 0);
        kdebug_trace();
        goto LABEL_114;
      }

      if (uint64 == 2002)
      {
        if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
        {
          qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
          __cxa_guard_release(&qword_280874BC8);
        }

        v23 = qword_280874BC0;
        v24 = os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&dword_271001000, v23, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Handle Release CMD", buf, 2u);
        }

        v25 = *(a1 + 48);
        if (!v25)
        {
          goto LABEL_259;
        }

        v26 = vcnt_s8(v25);
        v26.i16[0] = vaddlv_u8(v26);
        v27 = v26.u32[0];
        if (v26.u32[0] > 1uLL)
        {
          v28 = v7;
          if (v25 <= v7)
          {
            v28 = v7 % v25;
          }
        }

        else
        {
          v28 = (v25 - 1) & v7;
        }

        v66 = *(*(a1 + 40) + 8 * v28);
        if (!v66)
        {
          goto LABEL_235;
        }

        v67 = *v66;
        if (!v67)
        {
          goto LABEL_235;
        }

        if (v26.u32[0] < 2uLL)
        {
          while (1)
          {
            v69 = v67[1];
            if (v69 == v7)
            {
              if (*(v67 + 4) == v7)
              {
                goto LABEL_232;
              }
            }

            else if ((v69 & (v25 - 1)) != v28)
            {
              goto LABEL_233;
            }

            v67 = *v67;
            if (!v67)
            {
              goto LABEL_233;
            }
          }
        }

        while (1)
        {
          v68 = v67[1];
          if (v68 == v7)
          {
            if (*(v67 + 4) == v7)
            {
LABEL_232:
              sub_271014B54(v24, (v67 + 3), 1);
              v25 = *(a1 + 48);
LABEL_233:
              if (!v25)
              {
                goto LABEL_259;
              }

              v97 = vcnt_s8(v25);
              v97.i16[0] = vaddlv_u8(v97);
              v27 = v97.u32[0];
LABEL_235:
              if (v27 > 1)
              {
                v98 = v7;
                if (v25 <= v7)
                {
                  v98 = v7 % v25;
                }
              }

              else
              {
                v98 = (v25 - 1) & v7;
              }

              v99 = *(*(a1 + 40) + 8 * v98);
              if (v99)
              {
                v100 = *v99;
                if (*v99)
                {
                  if (v27 < 2)
                  {
                    v101 = v25 - 1;
                    while (1)
                    {
                      v103 = *(v100 + 8);
                      if (v103 == v7)
                      {
                        if (*(v100 + 16) == v7)
                        {
                          goto LABEL_258;
                        }
                      }

                      else if ((v103 & v101) != v98)
                      {
                        goto LABEL_259;
                      }

                      v100 = *v100;
                      if (!v100)
                      {
                        goto LABEL_259;
                      }
                    }
                  }

                  do
                  {
                    v102 = *(v100 + 8);
                    if (v102 == v7)
                    {
                      if (*(v100 + 16) == v7)
                      {
LABEL_258:
                        sub_27101A4C8((a1 + 40), v100, buf);
                        sub_27101A3D8(buf);
                        break;
                      }
                    }

                    else
                    {
                      if (v102 >= v25)
                      {
                        v102 %= v25;
                      }

                      if (v102 != v98)
                      {
                        break;
                      }
                    }

                    v100 = *v100;
                  }

                  while (v100);
                }
              }

LABEL_259:
              sub_27101602C(a1, remote_connection, 1);
              v104 = *(a1 + 32);
              if (v104)
              {
                v8 = 0;
                *(a1 + 32) = v104 - 1;
                v35 = 1;
                goto LABEL_60;
              }

              if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
              {
                qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
                __cxa_guard_release(&qword_280874BC8);
              }

              v105 = qword_280874BC0;
              if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_271001000, v105, OS_LOG_TYPE_ERROR, "VisionHWAServer: received release command but numClients is already zero!!", buf, 2u);
              }

LABEL_264:
              v8 = 0;
              v35 = 1;
              goto LABEL_60;
            }
          }

          else
          {
            if (v68 >= v25)
            {
              v68 %= v25;
            }

            if (v68 != v28)
            {
              goto LABEL_233;
            }
          }

          v67 = *v67;
          if (!v67)
          {
            goto LABEL_233;
          }
        }
      }

      goto LABEL_56;
    }

    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v44 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_271001000, v44, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Handle Create Request", buf, 2u);
    }

    v45 = *(a1 + 80);
    ++*(a1 + 32);
    xpc_dictionary_set_uint64(reply, "ClientId", v45);
    *&buf[8] = 0;
    v120 = 0;
    v121 = 0;
    *&buf[16] = 0u;
    v117 = 0u;
    memset(v118, 0, sizeof(v118));
    memset(__p, 0, 25);
    v46 = *(a1 + 80);
    *(a1 + 80) = v46 + 1;
    LODWORD(v112[0]) = v46;
    *buf = remote_connection;
    v115.__r_.__value_.__r.__words[0] = v112;
    v47 = sub_271019EEC((a1 + 40), v46);
    v48 = v118[0];
    v49 = v117;
    v51 = v47 + 10;
    v50 = v47[10];
    v52 = *buf;
    *(v47 + 5) = *&buf[16];
    *(v47 + 3) = v52;
    *(v47 + 7) = v49;
    v47[9] = v48;
    if (v50)
    {
      v47[11] = v50;
      operator delete(v50);
      *v51 = 0;
      v47[11] = 0;
      v47[12] = 0;
    }

    *v51 = 0;
    v47[11] = 0;
    v47[12] = 0;
    memset(&v118[1], 0, 24);
    if (*(v47 + 127) < 0)
    {
      operator delete(v47[13]);
    }

    v47[15] = *&__p[16];
    *(v47 + 13) = *__p;
    __p[23] = 0;
    __p[0] = 0;
    if (*(v47 + 144))
    {
      v53 = v47[17];
      if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v53->__on_zero_shared)(v53);
        std::__shared_weak_count::__release_weak(v53);
      }

      *(v47 + 144) = 0;
      v54 = v121;
      v121 = 0;
      v55 = v47[19];
      v47[19] = v54;
      if (!v55)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v121 = 0;
      v55 = v47[19];
      v47[19] = 0;
      if (!v55)
      {
LABEL_88:
        sub_27101602C(a1, remote_connection, 0);
        v121 = 0;
        if (v120 == 1)
        {
          v56 = *&__p[32];
          if (*&__p[32])
          {
            if (!atomic_fetch_add((*&__p[32] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v56->__on_zero_shared)(v56);
              std::__shared_weak_count::__release_weak(v56);
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v118[1])
        {
          operator delete(v118[1]);
        }

        goto LABEL_264;
      }
    }

    (*(*v55 + 72))(v55);
    goto LABEL_88;
  }

  if (uint64 <= 2004)
  {
    if (uint64 == 2003)
    {
      v8 = sub_2710156F4(a1, xdict, 1);
      kdebug_trace();
      goto LABEL_114;
    }

    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v9 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_271001000, v9, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Handle Create with Bufs CMD", buf, 2u);
    }

    xpc_dictionary_set_uint64(reply, "ClientId", *(a1 + 80));
    *&buf[8] = 0;
    v120 = 0;
    v121 = 0;
    *&buf[16] = 0u;
    v117 = 0u;
    memset(v118, 0, sizeof(v118));
    memset(__p, 0, 25);
    v10 = *(a1 + 80);
    *(a1 + 80) = v10 + 1;
    LODWORD(v112[0]) = v10;
    *buf = remote_connection;
    v11 = sub_271014C5C(xdict, &buf[24], "ActionBuf");
    if (v11 && (v11 = sub_271014C5C(xdict, &buf[16], "OperationBuf")) && (v11 = sub_271014C5C(xdict, &v117, "StatsBuf")) && (!xpc_dictionary_get_value(xdict, "DtcmMetaBuf") || (v11 = sub_271014C5C(xdict, v118, "DtcmMetaBuf"))))
    {
      buf[8] = 1;
      v115.__r_.__value_.__r.__words[0] = v112;
      v12 = sub_271019EEC((a1 + 40), v112[0]);
      v13 = v118[0];
      v14 = v117;
      v15 = v12[10];
      v16 = *buf;
      *(v12 + 5) = *&buf[16];
      *(v12 + 3) = v16;
      *(v12 + 7) = v14;
      v12[9] = v13;
      if (v15)
      {
        v12[11] = v15;
        operator delete(v15);
        v12[10] = 0;
        v12[11] = 0;
        v12[12] = 0;
      }

      *(v12 + 5) = *&v118[1];
      v12[12] = v118[3];
      memset(&v118[1], 0, 24);
      if (*(v12 + 127) < 0)
      {
        operator delete(v12[13]);
      }

      v12[15] = *&__p[16];
      *(v12 + 13) = *__p;
      __p[23] = 0;
      __p[0] = 0;
      if (*(v12 + 144) == v120)
      {
        if (*(v12 + 144))
        {
          v17 = *&__p[24];
          *&__p[24] = 0;
          *&__p[32] = 0;
          v18 = v12[17];
          *(v12 + 8) = v17;
          if (v18)
          {
            if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }
          }
        }
      }

      else if (*(v12 + 144))
      {
        v106 = v12[17];
        if (v106 && !atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        *(v12 + 144) = 0;
      }

      else
      {
        *(v12 + 8) = *&__p[24];
        *&__p[24] = 0;
        *&__p[32] = 0;
        *(v12 + 144) = 1;
      }

      v107 = v121;
      v121 = 0;
      v108 = v12[19];
      v12[19] = v107;
      if (v108)
      {
        (*(*v108 + 72))(v108);
      }

      sub_27101602C(a1, remote_connection, 0);
      v8 = 0;
      ++*(a1 + 32);
      v62 = v121;
      v121 = 0;
      if (!v62)
      {
LABEL_106:
        if (v120 == 1)
        {
          v63 = *&__p[32];
          if (*&__p[32])
          {
            if (!atomic_fetch_add((*&__p[32] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v63->__on_zero_shared)(v63);
              std::__shared_weak_count::__release_weak(v63);
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v118[1])
        {
          v118[2] = v118[1];
          operator delete(v118[1]);
        }

        goto LABEL_114;
      }
    }

    else
    {
      sub_271014B54(v11, buf, 1);
      v8 = 11;
      v62 = v121;
      v121 = 0;
      if (!v62)
      {
        goto LABEL_106;
      }
    }

    (*(*v62 + 72))(v62);
    goto LABEL_106;
  }

  if (uint64 == 2005)
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v57 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_271001000, v57, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Handle Load Program CMD", buf, 2u);
    }

    v58 = xpc_dictionary_get_uint64(xdict, "ClientId");
    v59 = *(a1 + 48);
    if (!v59)
    {
      goto LABEL_162;
    }

    v60 = vcnt_s8(v59);
    v60.i16[0] = vaddlv_u8(v60);
    if (v60.u32[0] > 1uLL)
    {
      v61 = v58;
      if (v59 <= v58)
      {
        v61 = v58 % v59;
      }
    }

    else
    {
      v61 = (v59 - 1) & v58;
    }

    v70 = *(*(a1 + 40) + 8 * v61);
    if (v70)
    {
      v71 = *v70;
      if (*v70)
      {
        if (v60.u32[0] < 2uLL)
        {
          v72 = v59 - 1;
          while (1)
          {
            v74 = v71[1];
            if (v74 == v58)
            {
              if (*(v71 + 4) == v58)
              {
                goto LABEL_163;
              }
            }

            else if ((v74 & v72) != v61)
            {
              goto LABEL_162;
            }

            v71 = *v71;
            if (!v71)
            {
              goto LABEL_163;
            }
          }
        }

        do
        {
          v73 = v71[1];
          if (v73 == v58)
          {
            if (*(v71 + 4) == v58)
            {
              break;
            }
          }

          else
          {
            if (v73 >= v59)
            {
              v73 %= v59;
            }

            if (v73 != v61)
            {
              goto LABEL_162;
            }
          }

          v71 = *v71;
        }

        while (v71);
      }
    }

    else
    {
LABEL_162:
      v71 = 0;
    }

LABEL_163:
    string = xpc_dictionary_get_string(xdict, "BinaryPath");
    if (!string)
    {
      v8 = 15;
      goto LABEL_56;
    }

    *(v71 + 33) = 1;
    memset(&v115, 0, sizeof(v115));
    v76 = -1;
      ;
    }

    if (!v76)
    {
      goto LABEL_224;
    }

    if (&v115 > string || &v115.__r_.__value_.__l.__data_ + 1 <= string)
    {
      if (v76 < 0x17)
      {
        memmove(&v115, string, v76);
        v115.__r_.__value_.__s.__data_[v76] = 0;
        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          v115.__r_.__value_.__l.__size_ = v76;
        }

        else
        {
          *(&v115.__r_.__value_.__s + 23) = v76 & 0x7F;
        }

LABEL_224:
        if (std::__fs::filesystem::path::__root_directory(&v115).__size_)
        {
          __ec.__val_ = 0;
          __ec.__cat_ = std::system_category();
          std::__fs::filesystem::__canonical(buf, &v115, &__ec);
          if (!__ec.__val_)
          {
            if ((buf[23] & 0x80000000) != 0)
            {
              sub_27100BCBC(v112, *buf, *&buf[8]);
            }

            else
            {
              *v112 = *buf;
              v113 = *&buf[16];
            }

            if (*(a1 + 408) == 1)
            {
              operator new();
            }

            v109 = (v71 + 13);
            if (v71 + 13 != v112)
            {
              if (*(v71 + 127) < 0)
              {
                if (v113 >= 0)
                {
                  v110 = v112;
                }

                else
                {
                  v110 = v112[0];
                }

                if (v113 >= 0)
                {
                  v111 = HIBYTE(v113);
                }

                else
                {
                  v111 = v112[1];
                }

                sub_27101984C(v109, v110, v111);
              }

              else if (v113 < 0)
              {
                sub_27101977C(v109, v112[0], v112[1]);
              }

              else
              {
                *v109 = *v112;
                v71[15] = v113;
              }
            }

            sub_27101E29C();
          }

          if (__ec.__val_ == 2)
          {
            v8 = 17;
          }

          else
          {
            v8 = 18;
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v8 = 16;
        }

        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }

        goto LABEL_56;
      }

      if (v76 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
      {
        operator new();
      }
    }

    else if (v76 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v76 > 0x16)
      {
        operator new();
      }

      buf[23] = v76;
      memcpy(buf, string, v76);
      buf[v76] = 0;
      if (buf[23] >= 0)
      {
        v95 = buf;
      }

      else
      {
        v95 = *buf;
      }

      if (buf[23] >= 0)
      {
        v96 = buf[23];
      }

      else
      {
        v96 = *&buf[8];
      }

      std::string::append(&v115, v95, v96);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_224;
    }

    sub_27100BD78();
  }

  if (uint64 == 2006)
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v38 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_271001000, v38, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Handle Lookup Symbol CMD", buf, 2u);
    }

    v39 = xpc_dictionary_get_uint64(xdict, "ClientId");
    v40 = *(a1 + 48);
    if (!v40)
    {
      goto LABEL_190;
    }

    v41 = vcnt_s8(v40);
    v41.i16[0] = vaddlv_u8(v41);
    if (v41.u32[0] > 1uLL)
    {
      v42 = v39;
      if (v40 <= v39)
      {
        v42 = v39 % v40;
      }
    }

    else
    {
      v42 = (v40 - 1) & v39;
    }

    v78 = *(*(a1 + 40) + 8 * v42);
    if (v78)
    {
      v79 = *v78;
      if (*v78)
      {
        if (v41.u32[0] < 2uLL)
        {
          v80 = v40 - 1;
          while (1)
          {
            v82 = v79[1];
            if (v82 == v39)
            {
              if (*(v79 + 4) == v39)
              {
                goto LABEL_191;
              }
            }

            else if ((v82 & v80) != v42)
            {
              goto LABEL_190;
            }

            v79 = *v79;
            if (!v79)
            {
              goto LABEL_191;
            }
          }
        }

        do
        {
          v81 = v79[1];
          if (v81 == v39)
          {
            if (*(v79 + 4) == v39)
            {
              break;
            }
          }

          else
          {
            if (v81 >= v40)
            {
              v81 %= v40;
            }

            if (v81 != v42)
            {
              goto LABEL_190;
            }
          }

          v79 = *v79;
        }

        while (v79);
      }
    }

    else
    {
LABEL_190:
      v79 = 0;
    }

LABEL_191:
    v83 = xpc_dictionary_get_string(xdict, "SymbolString");
    v84 = v83;
    if (!v83 || *(v79 + 144) != 1)
    {
      v8 = 25;
      goto LABEL_56;
    }

    v85 = strlen(v83);
    v86 = sub_27101F6E4(v79 + 16, v84, v85);
    if (v87)
    {
      v88 = v86;
    }

    else
    {
      v88 = 0;
    }

    if (v87)
    {
      v8 = 0;
    }

    else
    {
      v8 = 23;
    }

    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v89 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = v84;
      *&buf[12] = 1024;
      *&buf[14] = v88;
      _os_log_impl(&dword_271001000, v89, OS_LOG_TYPE_INFO, "Symbol look-up for %s: 0x%08x", buf, 0x12u);
    }

    if ((v79[18] & 1) == 0)
    {
      sub_271019974();
    }

    v90 = strlen(v84);
    v91 = sub_27101F59C(v79 + 16, v84, v90);
    v93 = v92;
    if (v92)
    {
      v94 = v91;
    }

    else
    {
      v94 = 0;
    }

    xpc_dictionary_set_uint64(reply, "SymbolAddr", v88);
    xpc_dictionary_set_uint64(reply, "SymbolSize", v94);
    if ((v93 & 1) == 0)
    {
      v8 = 24;
      goto LABEL_56;
    }

LABEL_114:
    if (!v8)
    {
      v35 = 1;
      goto LABEL_60;
    }
  }

LABEL_56:
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v34 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_error_impl(&dword_271001000, v34, OS_LOG_TYPE_ERROR, "VisionHWAServer: error code %d", buf, 8u);
  }

  v35 = 0;
LABEL_60:
  kdebug_trace();
  xpc_dictionary_set_BOOL(reply, "Status", v35);
  xpc_dictionary_set_uint64(reply, "Error", v8);
  xpc_connection_send_message(remote_connection, reply);
  xpc_release(reply);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

void sub_271018780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271018870(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  if (*(a1 + 120) != 1 || (v3 = *(a1 + 112)) == 0 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(a1 + 103) < 0)
  {
LABEL_7:
    operator delete(*(a1 + 80));
  }

LABEL_8:
  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_271018944()
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v0 = sysctlbyname("kern.bootargs", 0, &v4, 0, 0);
  if (!v0)
  {
    v6 = 0u;
    v7 = 0u;
    *buf = 0u;
    sub_27101A670(buf, 0);
    operator new();
  }

  v1 = v0;
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v2 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v1;
    _os_log_error_impl(&dword_271001000, v2, OS_LOG_TYPE_ERROR, "VisionHWAServer: error while retrieving boot-args: %d", buf, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2710194CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_27101AC5C(&a11);
  MEMORY[0x2743BADC0](v31, 0x1000C8077774924);
  _Unwind_Resume(a1);
}

void sub_271019598(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_271014AC4();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_27100BA50();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2710196EC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271019748(exception, a1);
  __cxa_throw(exception, off_279E2C0D0, MEMORY[0x277D825F8]);
}

std::logic_error *sub_271019748(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

_BYTE *sub_27101977C(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_27100BD78();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_27101984C(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_27100BD78();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void sub_271019974()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t sub_2710199C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2710087E0();
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t sub_271019A84(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_271019B50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2880F91A8;
  a2[1] = v2;
  return result;
}

void sub_271019B7C(uint64_t a1, int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v4 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v2;
    _os_log_impl(&dword_271001000, v4, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: ***************************** Device Status Callback: received status change notification = %d", v7, 8u);
  }

  if ((v2 - 1) <= 1)
  {
    *(v3 + 88) = 1;
    std::mutex::lock((v3 + 280));
    if (atomic_exchange((v3 + 204), 0))
    {
      dispatch_suspend(*(v3 + 208));
    }

    v5 = dispatch_time(0, 5000000);
    dispatch_source_set_timer(*(v3 + 208), v5, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    if ((atomic_exchange((v3 + 204), 1u) & 1) == 0)
    {
      dispatch_resume(*(v3 + 208));
    }

    std::mutex::unlock((v3 + 280));
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_271019CE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN23VisionHWAClientServices22createDeviceAndSessionEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN23VisionHWAClientServices22createDeviceAndSessionEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN23VisionHWAClientServices22createDeviceAndSessionEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN23VisionHWAClientServices22createDeviceAndSessionEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_271019DD4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2880F9238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_271019E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPKvEJRP11__IOSurfaceEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPKvEJRP11__IOSurfaceEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPKvEJRP11__IOSurfaceEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFvPKvEJRP11__IOSurfaceEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void **sub_271019E84(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *sub_271019EEC(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
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
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_27101A3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27101A3D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27101A3D8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 152);
      *(v2 + 152) = 0;
      if (v3)
      {
        (*(*v3 + 72))(v3);
      }

      if (*(v2 + 144) == 1)
      {
        v4 = *(v2 + 136);
        if (v4)
        {
          if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v4->__on_zero_shared)(v4);
            std::__shared_weak_count::__release_weak(v4);
          }
        }
      }

      if (*(v2 + 127) < 0)
      {
        operator delete(*(v2 + 104));
      }

      v5 = *(v2 + 80);
      if (v5)
      {
        *(v2 + 88) = v5;
        operator delete(v5);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_27101A4C8@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *sub_27101A600(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

unint64_t sub_27101A670(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 > 0x40)
    {
      v21 = *(a1 + a2 - 48);
      v22 = *(a1 + a2 - 40);
      v23 = *(a1 + a2 - 24);
      v24 = *(a1 + a2 - 56);
      v25 = *(a1 + a2 - 16);
      v26 = *(a1 + a2 - 8);
      v27 = v24 + v25;
      v28 = 0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v21 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ (v21 + a2))));
      v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
      v30 = *(a1 + a2 - 64) + a2;
      v31 = v21 + v24 + v30;
      v32 = __ROR8__(v31, 44) + v30;
      v33 = __ROR8__(v30 + v22 + v29, 21);
      v34 = v31 + v22;
      v35 = v32 + v33;
      v36 = v27 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
      v37 = v23 + v25 + v36;
      v38 = v37 + v26;
      v39 = __ROR8__(v37, 44) + v36 + __ROR8__(v36 + v22 + v26, 21);
      v41 = *a1;
      v40 = a1 + 4;
      v42 = v41 - 0x4B6D499041670D8DLL * v22;
      v43 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v44 = *(v40 - 3);
        v45 = v42 + v34 + v27 + v44;
        v46 = v40[2];
        v47 = v40[3];
        v48 = v40[1];
        v27 = v48 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v27 + v35 + v46, 42);
        v49 = v29 + v38;
        v50 = *(v40 - 2);
        v51 = *(v40 - 1);
        v52 = *(v40 - 4) - 0x4B6D499041670D8DLL * v35;
        v53 = v52 + v38 + v51;
        v54 = v52 + v44 + v50;
        v34 = v54 + v51;
        v55 = __ROR8__(v54, 44) + v52;
        v56 = (0xB492B66FBE98F273 * __ROR8__(v45, 37)) ^ v39;
        v42 = 0xB492B66FBE98F273 * __ROR8__(v49, 33);
        v35 = v55 + __ROR8__(v53 + v56, 21);
        v57 = v42 + v39 + *v40;
        v38 = v48 + v46 + v57 + v47;
        v39 = __ROR8__(v48 + v46 + v57, 44) + v57 + __ROR8__(v27 + v50 + v57 + v47, 21);
        v40 += 8;
        v29 = v56;
        v43 += 64;
      }

      while (v43);
      v58 = v56 - 0x4B6D499041670D8DLL * (v27 ^ (v27 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v38 ^ ((0x9DDFEA08EB382D69 * (v38 ^ v34)) >> 47) ^ (0x9DDFEA08EB382D69 * (v38 ^ v34)))) ^ ((0x9DDFEA08EB382D69 * (v38 ^ ((0x9DDFEA08EB382D69 * (v38 ^ v34)) >> 47) ^ (0x9DDFEA08EB382D69 * (v38 ^ v34)))) >> 47));
      v59 = v42 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v35)))) ^ ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v35)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v58)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v58)))) ^ ((0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v58)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v58)))) >> 47));
    }

    else
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9 + __ROR8__(v12, 31);
      v15 = 0xC3A5C85C97CB3127 * (*(a1 + a2 - 24) + v13 + v5 + *(a1 + a2 - 8) + v7 + v14) - 0x651E95C4D06FBFB1 * (v12 + v7 + __ROR8__(v13, 37) + __ROR8__(*(a1 + a2 - 24) + v13, 7) + __ROR8__(*(a1 + a2 - 8) + v7 + v13, 52) + __ROR8__(*(a1 + a2 - 24) + v13 + v5, 31));
      return 0x9AE16A3B2F90404FLL * ((v14 - 0x3C5A37A36834CED9 * (v15 ^ (v15 >> 47))) ^ ((v14 - 0x3C5A37A36834CED9 * (v15 ^ (v15 >> 47))) >> 47));
    }
  }

  else if (a2 > 0x10)
  {
    v16 = a1[1];
    v17 = 0xB492B66FBE98F273 * *a1;
    v18 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v17 - v16, 43);
    v19 = v17 + a2 + __ROR8__(v16 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v20 = 0x9DDFEA08EB382D69 * ((v18 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v19);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 47));
  }

  else if (a2 < 9)
  {
    if (a2 < 4)
    {
      if (a2)
      {
        v62 = 0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8));
        v63 = 0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)));
        return 0x9AE16A3B2F90404FLL * (v63 ^ v62 ^ ((v63 ^ v62) >> 47));
      }

      else
      {
        return 0x9AE16A3B2F90404FLL;
      }
    }

    else
    {
      v60 = *(a1 + a2 - 4);
      v61 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v60);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) ^ ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 47));
    }
  }

  else
  {
    v2 = *(a1 + a2 - 8);
    v3 = __ROR8__(v2 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
  }
}

void sub_27101AAC8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_27100BA50();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_27101AC5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t **sub_27101ACE4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = sub_27101A670(v4, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_41;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 39);
        v15 = v14;
        if (v14 < 0)
        {
          v14 = v12[3];
        }

        if (v14 == v5)
        {
          v16 = v15 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v16, v4, v5))
          {
            return v12;
          }
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_41;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v17 = v12[1];
    if (v17 == v7)
    {
      break;
    }

    if (v17 >= *&v8)
    {
      v17 %= *&v8;
    }

    if (v17 != v10)
    {
      goto LABEL_41;
    }

LABEL_29:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v18 = *(v12 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v12[3];
  }

  if (v18 != v5)
  {
    goto LABEL_29;
  }

  v20 = v19 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v20, v4, v5))
  {
    goto LABEL_29;
  }

  return v12;
}

void sub_27101B0BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27101A600(va);
  _Unwind_Resume(a1);
}

void sub_27101B0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27101A600(va);
  _Unwind_Resume(a1);
}

void sub_27101B0E4()
{
  v20 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v0 = qword_280874BC0;
  v1 = dispatch_queue_create("com.apple.cvhwa.xpc.listener", 0);
  v2 = _os_feature_enabled_impl();
  v3 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    *buf = 0;
    v4 = "VisionHWAccelerationServices framework launched via visionhwserverd";
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    *buf = 0;
    v4 = "VisionHWAccelerationServices framework launched via mediaserverd";
  }

  _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
LABEL_8:
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = dword_2808749A8;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: At Start: num client: %d ", buf, 8u);
  }

  v5 = qword_280874998;
  v6 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    *buf = 0;
    v7 = "VisionHWAServer: An active Session exists";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    *buf = 0;
    v7 = "VisionHWAServer: No active Session created Yet";
  }

  _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
LABEL_16:
  v8 = dispatch_semaphore_create(1);
  mach_service = xpc_connection_create_mach_service("com.apple.cvhwa.xpc", v1, 1uLL);
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v1);
  v11 = v10;
  if (v10)
  {
    qword_280874A58 = v10;
    v12 = dispatch_time(0, 5000000000);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = sub_27101B4B8;
    handler[3] = &unk_279E2C240;
    handler[4] = &xmmword_280874988;
    handler[5] = v11;
    handler[6] = v0;
    handler[7] = v12;
    v17 = xmmword_271024460;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    dispatch_activate(v11);
    atomic_exchange(&byte_280874A54, 1u);
  }

  else if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_271001000, v0, OS_LOG_TYPE_ERROR, "VisionHWAServer: Timer thread not created", buf, 2u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = sub_27101B680;
  v15[3] = &unk_279E2C280;
  v15[4] = v0;
  v15[5] = &xmmword_280874988;
  v15[6] = v11;
  v15[7] = v8;
  xpc_connection_set_event_handler(mach_service, v15);
  v13 = dispatch_queue_create("com.apple.cvhwa.xpc.msg", 0);
  xpc_connection_set_target_queue(mach_service, v13);
  xpc_connection_resume(mach_service);
  xpc_release(v1);
  xpc_release(v13);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_27101B4AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271005B4C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27101B4B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock((v2 + 280));
  if (atomic_exchange((*(a1 + 32) + 204), 0))
  {
    dispatch_suspend(*(a1 + 40));
    v3 = *(a1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_271001000, v3, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: count down 5s finish!", buf, 2u);
    }

    dispatch_source_set_timer(*(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 72));
    sub_271015F3C(*(a1 + 32));
    v4 = *(a1 + 32);
    if (*(v4 + 32))
    {
      v5 = *(a1 + 48);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_271001000, v5, OS_LOG_TYPE_ERROR, "VisionHWAServer: outstanding client exists!", v11, 2u);
        v4 = *(a1 + 32);
      }

      *(v4 + 32) = 0;
    }

    if (*(v4 + 64))
    {
      v6 = *(a1 + 48);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_271001000, v6, OS_LOG_TYPE_ERROR, "VisionHWAServer: client map not empty!", v10, 2u);
        v4 = *(a1 + 32);
      }

      for (i = (v4 + 56); ; sub_271014B54(*(a1 + 32), (i + 3), 1))
      {
        i = *i;
        if (!i)
        {
          break;
        }
      }

      v8 = *(a1 + 32);
      if (*(v8 + 64))
      {
        sub_27101D424(*(v8 + 56));
        *(v8 + 56) = 0;
        v9 = *(v8 + 48);
        if (v9)
        {
          bzero(*(v8 + 40), 8 * v9);
        }

        *(v8 + 64) = 0;
      }
    }
  }

  std::mutex::unlock((v2 + 280));
}

void sub_27101B680(uint64_t a1, _xpc_connection_s *a2)
{
  if (MEMORY[0x2743BB530](a2) != MEMORY[0x277D86480])
  {
    if (MEMORY[0x2743BB530](a2) != MEMORY[0x277D86450])
    {
      v4 = *(a1 + 32);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      v6 = "VisionHWAServer (mach service handler) Error: XPC object is not of type XPC_TYPE_CONNECTION";
LABEL_18:
      _os_log_error_impl(&dword_271001000, v4, OS_LOG_TYPE_ERROR, v6, buf, 2u);
      return;
    }

LABEL_9:
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = sub_27101B8B8;
    handler[3] = &unk_279E2C260;
    handler[4] = *(a1 + 32);
    handler[5] = a2;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
    return;
  }

  v5 = *(a1 + 32);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (a2 != MEMORY[0x277D863F0])
    {
      goto LABEL_7;
    }

LABEL_16:
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Error: XPC_ERROR_CONNECTION_INTERRUPTED";
      goto LABEL_18;
    }

    return;
  }

  *buf = 0;
  _os_log_error_impl(&dword_271001000, v5, OS_LOG_TYPE_ERROR, "VisionHWAServer (mach service handler): Error: XPC_TYPE_ERROR", buf, 2u);
  if (a2 == MEMORY[0x277D863F0])
  {
    goto LABEL_16;
  }

LABEL_7:
  if (a2 == MEMORY[0x277D86420])
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Error: XPC_ERROR_TERMINATION_IMMINENT";
      goto LABEL_18;
    }
  }

  else
  {
    if (a2 != MEMORY[0x277D863F8])
    {
      goto LABEL_9;
    }

    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Error: XPC_ERROR_CONNECTION_INVALID";
      goto LABEL_18;
    }
  }
}

void sub_27101B8B8(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x2743BB530](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F8])
    {
      v12 = *(a1 + 32);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      LOWORD(buf) = 0;
      v14 = "VisionHWAServer (connection event handler): XPC_ERROR_CONNECTION_INVALID";
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      v12 = *(a1 + 32);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      LOWORD(buf) = 0;
      v14 = "VisionHWAServer (connection event handler): XPC_ERROR_CONNECTION_INTERRUPTED";
    }

    else
    {
      v11 = MEMORY[0x277D86420];
      v12 = *(a1 + 32);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (a2 == v11)
      {
        if (!v13)
        {
          goto LABEL_69;
        }

        LOWORD(buf) = 0;
        v14 = "VisionHWAServer (connection event handler): XPC_ERROR_TERMINENT_IMMINENT";
      }

      else
      {
        if (!v13)
        {
          goto LABEL_69;
        }

        LOWORD(buf) = 0;
        v14 = "VisionHWAServer (connection event handler): Unknown XPC error";
      }
    }

    _os_log_impl(&dword_271001000, v12, OS_LOG_TYPE_DEFAULT, v14, &buf, 2u);
    goto LABEL_69;
  }

  pid = xpc_connection_get_pid(*(a1 + 40));
  if (pid)
  {
    v5 = pid;
    v6 = atomic_load((*(a1 + 48) + 200));
    if (v6 != pid)
    {
      v7 = *(a1 + 48);
      std::mutex::lock((v7 + 344));
      v8 = *(v7 + 104);
      if (!v8)
      {
        goto LABEL_35;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = v5;
        if (v8 <= v5)
        {
          v10 = v5 % v8;
        }
      }

      else
      {
        v10 = (v8 - 1) & v5;
      }

      v16 = *(*(v7 + 96) + 8 * v10);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_35:
        operator new();
      }

      if (v9.u32[0] < 2uLL)
      {
        v18 = v8 - 1;
        while (1)
        {
          v20 = v17[1];
          if (v20 == v5)
          {
            if (*(v17 + 4) == v5)
            {
              goto LABEL_39;
            }
          }

          else if ((v20 & v18) != v10)
          {
            goto LABEL_35;
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_35;
          }
        }
      }

      while (1)
      {
        v19 = v17[1];
        if (v19 == v5)
        {
          if (*(v17 + 4) == v5)
          {
LABEL_39:
            std::mutex::unlock((v7 + 344));
            atomic_exchange((v7 + 200), v5);
            break;
          }
        }

        else
        {
          if (v19 >= v8)
          {
            v19 %= v8;
          }

          if (v19 != v10)
          {
            goto LABEL_35;
          }
        }

        v17 = *v17;
        if (!v17)
        {
          goto LABEL_35;
        }
      }
    }

    v21 = atomic_load((*(a1 + 48) + 200));
    if (v21 && (atomic_exchange((*(a1 + 48) + 204), 0) & 1) != 0)
    {
      v22 = *(a1 + 32);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_271001000, v22, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: count down 5s stop!", &buf, 2u);
      }

      dispatch_suspend(*(a1 + 56));
    }

    if (a2 == MEMORY[0x277D863F8])
    {
      v23 = *(a1 + 32);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 40);
        buf = 134217984;
        *buf_4 = v24;
        _os_log_impl(&dword_271001000, v23, OS_LOG_TYPE_DEFAULT, "XPC_ERROR_CONNECTION_INVALID w/ client_connection = %p", &buf, 0xCu);
      }
    }

    else if (MEMORY[0x2743BB530](a2) == MEMORY[0x277D86468] && !dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL))
    {
      sub_2710169B0(*(a1 + 48), a2);
      dispatch_semaphore_signal(*(a1 + 64));
    }

    v25 = (*(a1 + 48) + 344);
    std::mutex::lock(v25);
    for (i = *(*(a1 + 48) + 136); i != *(*(a1 + 48) + 144); *(v27 + 144) = v29)
    {
      while (!sub_2710084B8(*i))
      {
        i += 2;
        if (i == *(*(a1 + 48) + 144))
        {
          goto LABEL_68;
        }
      }

      v27 = *(a1 + 48);
      v28 = *(v27 + 144);
      v29 = i;
      if (i + 2 != v28)
      {
        do
        {
          v30 = v29;
          v31 = *(v29 + 1);
          v29[2] = 0;
          v29[3] = 0;
          v32 = v29[1];
          *v29 = v31;
          if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
          }

          v29 += 2;
        }

        while (v30 + 4 != v28);
        v28 = *(v27 + 144);
      }

      while (v28 != v29)
      {
        v33 = *(v28 - 1);
        if (v33)
        {
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }
        }

        v28 -= 2;
      }
    }

LABEL_68:
    std::mutex::unlock(v25);
  }

  else
  {
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_271001000, v15, OS_LOG_TYPE_ERROR, "Connection did not have a valid PID -- rejecting message", &buf, 2u);
    }
  }

LABEL_69:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_27101C3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21)
{
  sub_27101E1F8(&a21);
  sub_27101CA4C(&a16);
  sub_271014ADC(&a19);
  std::mutex::unlock(a12);
  _Unwind_Resume(a1);
}

void sub_27101C3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_2710084C4(&a21);
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  std::mutex::unlock(a12);
  _Unwind_Resume(a1);
}

void VisionHWAccelerationServicesStart()
{
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v0 = qword_280874BC0;
  if (!_os_feature_enabled_impl())
  {
    if ((atomic_load_explicit(&qword_280874980, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280874980))
      {
        sub_27101CFC4();
        __cxa_atexit(sub_27101CAC4, &xmmword_280874988, &dword_271001000);
        __cxa_guard_release(&qword_280874980);
      }
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", v4, 2u);
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }
    }

    else if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v3 = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: VisionHWAccelerationServicesStart is invoked.", v3, 2u);
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      dword_2808749A8 = 0;
      v1 = qword_280874998;
      qword_280874998 = 0;
      if (!v1)
      {
LABEL_12:
        sub_27101B0E4();
        return;
      }

LABEL_19:
      sub_271006850(*v1);
      MEMORY[0x2743BADE0](v1, 0x20C4093837F09);
      sub_27101B0E4();
      return;
    }

LABEL_18:
    *v2 = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", v2, 2u);
    dword_2808749A8 = 0;
    v1 = qword_280874998;
    qword_280874998 = 0;
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", buf, 2u);
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

LABEL_15:
      *v5 = 0;
      _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", v5, 2u);
      return;
    }
  }

  else if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_5;
  }

  *v6 = 0;
  _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer has been disabled in mediaserverd", v6, 2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }
}

void VisionHWServerStart()
{
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v0 = qword_280874BC0;
  if (_os_feature_enabled_impl())
  {
    if ((atomic_load_explicit(&qword_280874980, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280874980))
      {
        sub_27101CFC4();
        __cxa_atexit(sub_27101CAC4, &xmmword_280874988, &dword_271001000);
        __cxa_guard_release(&qword_280874980);
      }
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", v7, 2u);
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    else if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *v6 = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: VisionHWAccelerationServicesStart is invoked.", v6, 2u);
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      dword_2808749A8 = 0;
      v1 = qword_280874998;
      qword_280874998 = 0;
      if (!v1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    *v5 = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", v5, 2u);
    dword_2808749A8 = 0;
    v1 = qword_280874998;
    qword_280874998 = 0;
    if (!v1)
    {
LABEL_20:
      sub_27101B0E4();
      return;
    }

LABEL_19:
    sub_271006850(*v1);
    MEMORY[0x2743BADE0](v1, 0x20C4093837F09);
    goto LABEL_20;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", buf, 2u);
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

LABEL_15:
      *v2 = 0;
      _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer: **********************************.", v2, 2u);
      return;
    }
  }

  else if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  *v3 = 0;
  _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "**************** VisionHWAServer has been disabled in visionserverd", v3, 2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }
}

uint64_t sub_27101CA4C(uint64_t result)
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

uint64_t sub_27101CAC4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v2 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_271001000, v2, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Destructor invoked\n", buf, 2u);
  }

  if (*(a1 + 64))
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v3 = qword_280874BC0;
    if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_271001000, v3, OS_LOG_TYPE_ERROR, "VisionHWAServer: client map not empty!", v28, 2u);
    }

    for (i = (a1 + 56); ; sub_271014B54(a1, (i + 3), 1))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    if (*(a1 + 64))
    {
      sub_27101D424(*(a1 + 56));
      *(a1 + 56) = 0;
      v5 = *(a1 + 48);
      if (v5)
      {
        bzero(*(a1 + 40), 8 * v5);
      }

      *(a1 + 64) = 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *(a1 + 16) = 0;
    sub_271006850(*v6);
    MEMORY[0x2743BADE0](v6, 0x20C4093837F09);
  }

  if (*a1 && (v7 = *(a1 + 8), *a1 = 0, *(a1 + 8) = 0, v7) && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!*(a1 + 24))
    {
      goto LABEL_25;
    }
  }

  else if (!*(a1 + 24))
  {
    goto LABEL_25;
  }

  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v8 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
  {
    *v27 = 0;
    _os_log_error_impl(&dword_271001000, v8, OS_LOG_TYPE_ERROR, "Releasing os_transaction inside DTOR -- visionhwserverd is TERMINATING", v27, 2u);
  }

  os_release(*(a1 + 24));
LABEL_25:
  v9 = *(a1 + 440);
  if (v9 == a1 + 416)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  std::mutex::~mutex((a1 + 344));
  std::mutex::~mutex((a1 + 280));
  std::mutex::~mutex((a1 + 216));
  v10 = *(a1 + 176);
  if (v10)
  {
    do
    {
      v15 = *v10;
      v16 = v10[3];
      if (v16)
      {
        v10[4] = v16;
        operator delete(v16);
      }

      operator delete(v10);
      v10 = v15;
    }

    while (v15);
  }

  v11 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 136);
  if (v12)
  {
    v13 = *(a1 + 144);
    v14 = *(a1 + 136);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 8);
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v13 -= 16;
      }

      while (v13 != v12);
      v14 = *(a1 + 136);
    }

    *(a1 + 144) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 112);
  while (v18)
  {
    v19 = v18;
    v18 = *v18;
    v20 = v19[4];
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v21 = v19;
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v19 = v21;
    }

    operator delete(v19);
  }

  v22 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v22)
  {
    operator delete(v22);
  }

  sub_27101D424(*(a1 + 56));
  v23 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v24)
  {
    sub_271006850(*v24);
    MEMORY[0x2743BADE0](v24, 0x20C4093837F09);
  }

  v25 = *(a1 + 8);
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  return a1;
}

void sub_27101CFC4()
{
  *&qword_2808749C0 = 0u;
  *&qword_2808749B0 = 0u;
  xmmword_280874988 = 0u;
  *&qword_280874998 = 0u;
  dword_2808749A8 = 0;
  dword_2808749D0 = 1065353216;
  qword_2808749D8 = 1;
  byte_2808749E0 = 0;
  xmmword_2808749E8 = 0u;
  *&qword_2808749F8 = 0u;
  dword_280874A08 = 1065353216;
  *&qword_280874A10 = 0u;
  unk_280874A20 = 0u;
  unk_280874A30 = 0u;
  qword_280874A40 = 0;
  dword_280874A48 = 1065353216;
  dword_280874A50 = 0;
  byte_280874A54 = 1;
  qword_280874A58 = 0;
  unk_280874A60 = 850045863;
  xmmword_280874A78 = 0u;
  unk_280874A88 = 0u;
  xmmword_280874A68 = 0u;
  qword_280874A98 = 0;
  unk_280874AA0 = 850045863;
  xmmword_280874AB8 = 0u;
  unk_280874AC8 = 0u;
  xmmword_280874AA8 = 0u;
  qword_280874AD8 = 0;
  unk_280874AE0 = 850045863;
  qword_280874B18 = 0;
  xmmword_280874AF8 = 0u;
  unk_280874B08 = 0u;
  xmmword_280874AE8 = 0u;
  byte_280874B20 = 1;
  qword_280874B40 = 0;
  if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
  {
    qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
    __cxa_guard_release(&qword_280874BC8);
  }

  v0 = qword_280874BC0;
  if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_271001000, v0, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: Constructor invoked\n", v1, 2u);
  }

  sub_271018944();
}

void sub_27101D108(_Unwind_Exception *a1)
{
  sub_27101D150();
  std::mutex::~mutex(&unk_280874AE0);
  std::mutex::~mutex(&unk_280874AA0);
  std::mutex::~mutex(&unk_280874A60);
  sub_27101D1B8();
  sub_27101D234();
  sub_27101D308();
  sub_27101D3D0();
  sub_27101D528();
  sub_27101D590();
  _Unwind_Resume(a1);
}

uint64_t sub_27101D150()
{
  result = qword_280874B40;
  if (qword_280874B40 == &qword_280874B28)
  {
    return (*(qword_280874B28 + 32))(&qword_280874B28);
  }

  if (qword_280874B40)
  {
    return (*(*qword_280874B40 + 40))();
  }

  return result;
}

void sub_27101D1B8()
{
  v0 = qword_280874A38;
  if (qword_280874A38)
  {
    do
    {
      v2 = *v0;
      v3 = v0[3];
      if (v3)
      {
        v0[4] = v3;
        operator delete(v3);
      }

      operator delete(v0);
      v0 = v2;
    }

    while (v2);
  }

  v1 = qword_280874A28;
  qword_280874A28 = 0;
  if (v1)
  {

    operator delete(v1);
  }
}

void sub_27101D234()
{
  v0 = qword_280874A10;
  if (qword_280874A10)
  {
    v1 = qword_280874A18;
    v2 = qword_280874A10;
    if (qword_280874A18 != qword_280874A10)
    {
      do
      {
        v3 = *(v1 - 8);
        if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }

        v1 -= 16;
      }

      while (v1 != v0);
      v2 = qword_280874A10;
    }

    qword_280874A18 = v0;

    operator delete(v2);
  }
}

void sub_27101D308()
{
  v0 = qword_2808749F8;
  if (qword_2808749F8)
  {
    do
    {
      v1 = v0;
      v0 = *v0;
      v2 = v1[4];
      if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v1;
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
        v1 = v3;
      }

      operator delete(v1);
    }

    while (v0);
  }

  v4 = xmmword_2808749E8;
  *&xmmword_2808749E8 = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_27101D3D0()
{
  sub_27101D424(qword_2808749C0);
  v0 = qword_2808749B0;
  qword_2808749B0 = 0;
  if (v0)
  {

    operator delete(v0);
  }
}

void sub_27101D424(char *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 19);
      *(v1 + 19) = 0;
      if (v3)
      {
        (*(*v3 + 72))(v3);
      }

      if (v1[144] == 1 && (v4 = *(v1 + 17)) != 0 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        if ((v1[127] & 0x80000000) == 0)
        {
LABEL_10:
          v5 = *(v1 + 10);
          if (!v5)
          {
            goto LABEL_3;
          }

LABEL_14:
          *(v1 + 11) = v5;
          operator delete(v5);
          goto LABEL_3;
        }
      }

      else if ((v1[127] & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(*(v1 + 13));
      v5 = *(v1 + 10);
      if (v5)
      {
        goto LABEL_14;
      }

LABEL_3:
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_27101D528()
{
  v0 = qword_280874998;
  qword_280874998 = 0;
  if (v0)
  {
    sub_271006850(*v0);

    JUMPOUT(0x2743BADE0);
  }
}

void sub_27101D590()
{
  v0 = *(&xmmword_280874988 + 1);
  if (*(&xmmword_280874988 + 1) && !atomic_fetch_add((*(&xmmword_280874988 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v0->__on_zero_shared)(v0);

    std::__shared_weak_count::__release_weak(v0);
  }
}

void sub_27101D630(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2880F92C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BADE0);
}

__n128 sub_27101D704(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2880F9318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_27101D734(uint64_t a1, int *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  atomic_exchange((*(a1 + 8) + 200), 0);
  v6 = *(a1 + 8);
  v7 = *(v6 + 168);
  if (!*&v7)
  {
    goto LABEL_45;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (*&v7 <= v4)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*(v6 + 160) + 8 * v10);
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *v11;
  if (!v12)
  {
    goto LABEL_26;
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v4)
      {
        if (*(v12 + 4) == v4)
        {
          goto LABEL_22;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v10)
      {
        goto LABEL_25;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v4)
    {
      break;
    }

    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }

    if (v13 != v10)
    {
      goto LABEL_25;
    }

LABEL_11:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  if (*(v12 + 4) != v4)
  {
    goto LABEL_11;
  }

LABEL_22:
  v16 = v12[3];
  v15 = v12[4];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271014AC4();
  }

LABEL_25:
  v17 = vcnt_s8(v7);
  v17.i16[0] = vaddlv_u8(v17);
  v9 = v17.u32[0];
LABEL_26:
  if (v9 > 1)
  {
    v18 = v4;
    if (*&v7 <= v4)
    {
      v18 = v4 % *&v7;
    }
  }

  else
  {
    v18 = (*&v7 - 1) & v4;
  }

  v19 = *(v6 + 160);
  v20 = *(v19 + 8 * v18);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_45:
    if (!v5)
    {
      goto LABEL_162;
    }

    goto LABEL_46;
  }

  if (v9 < 2)
  {
    v22 = *&v7 - 1;
    while (1)
    {
      v24 = v21[1];
      if (v24 == v4)
      {
        if (*(v21 + 4) == v4)
        {
          goto LABEL_67;
        }
      }

      else if ((v24 & v22) != v18)
      {
        goto LABEL_45;
      }

      v21 = *v21;
      if (!v21)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v23 = v21[1];
    if (v23 == v4)
    {
      break;
    }

    if (v23 >= *&v7)
    {
      v23 %= *&v7;
    }

    if (v23 != v18)
    {
      goto LABEL_45;
    }

LABEL_35:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_45;
    }
  }

  if (*(v21 + 4) != v4)
  {
    goto LABEL_35;
  }

LABEL_67:
  v34 = *(v6 + 168);
  v35 = vcnt_s8(v34);
  v35.i16[0] = vaddlv_u8(v35);
  if (v35.u32[0] > 1uLL)
  {
    v36 = v4;
    if (*&v34 <= v4)
    {
      v36 = v4 % *&v34;
    }
  }

  else
  {
    v36 = (*&v34 - 1) & v4;
  }

  v40 = *(v19 + 8 * v36);
  do
  {
    v41 = v40;
    v40 = *v40;
  }

  while (v40 != v21);
  if (v41 == (v6 + 176))
  {
    goto LABEL_95;
  }

  v42 = v41[1];
  if (v35.u32[0] > 1uLL)
  {
    if (v42 >= *&v34)
    {
      v42 %= *&v34;
    }
  }

  else
  {
    v42 &= *&v34 - 1;
  }

  if (v42 != v36)
  {
LABEL_95:
    if (!*v21)
    {
      goto LABEL_96;
    }

    v43 = *(*v21 + 8);
    if (v35.u32[0] > 1uLL)
    {
      if (v43 >= *&v34)
      {
        v43 %= *&v34;
      }
    }

    else
    {
      v43 &= *&v34 - 1;
    }

    if (v43 != v36)
    {
LABEL_96:
      *(v19 + 8 * v36) = 0;
    }
  }

  v49 = *v21;
  if (*v21)
  {
    v50 = *(v49 + 8);
    if (v35.u32[0] > 1uLL)
    {
      if (v50 >= *&v34)
      {
        v50 %= *&v34;
      }
    }

    else
    {
      v50 &= *&v34 - 1;
    }

    if (v50 != v36)
    {
      *(v19 + 8 * v50) = v41;
      v49 = *v21;
    }
  }

  *v41 = v49;
  *v21 = 0;
  --*(v6 + 184);
  v51 = v21[3];
  if (v51)
  {
    v21[4] = v51;
    operator delete(v51);
  }

  operator delete(v21);
  v6 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_162;
  }

LABEL_46:
  std::mutex::lock((v6 + 344));
  v25 = *(a1 + 8);
  v26 = v25[13];
  if (!*&v26)
  {
    goto LABEL_161;
  }

  v27 = vcnt_s8(v26);
  v27.i16[0] = vaddlv_u8(v27);
  if (v27.u32[0] > 1uLL)
  {
    v28 = v4;
    if (*&v26 <= v4)
    {
      v28 = v4 % *&v26;
    }
  }

  else
  {
    v28 = (*&v26 - 1) & v4;
  }

  v29 = *(v25[12] + 8 * v28);
  if (!v29)
  {
    goto LABEL_161;
  }

  v30 = *v29;
  if (!*v29)
  {
    goto LABEL_161;
  }

  if (v27.u32[0] < 2uLL)
  {
    v31 = *&v26 - 1;
    while (1)
    {
      v33 = v30[1];
      if (v33 == v4)
      {
        if (*(v30 + 4) == v4)
        {
          goto LABEL_69;
        }
      }

      else if ((v33 & v31) != v28)
      {
        goto LABEL_161;
      }

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_161;
      }
    }
  }

  while (2)
  {
    v32 = v30[1];
    if (v32 != v4)
    {
      if (v32 >= *&v26)
      {
        v32 %= *&v26;
      }

      if (v32 != v28)
      {
        goto LABEL_161;
      }

      goto LABEL_56;
    }

    if (*(v30 + 4) != v4)
    {
LABEL_56:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_161;
      }

      continue;
    }

    break;
  }

LABEL_69:
  v38 = v25[18];
  v37 = v25[19];
  if (v38 >= v37)
  {
    v44 = v25[17];
    v45 = (v38 - v44) >> 4;
    if ((v45 + 1) >> 60)
    {
      sub_271014AC4();
    }

    v46 = v37 - v44;
    v47 = v46 >> 3;
    if (v46 >> 3 <= (v45 + 1))
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x7FFFFFFFFFFFFFF0)
    {
      v48 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      if (!(v48 >> 60))
      {
        operator new();
      }

      sub_27100BA50();
    }

    *(16 * v45) = *(v30 + 3);
    v39 = 16 * v45 + 16;
    v30[3] = 0;
    v30[4] = 0;
    v52 = v25[17];
    v53 = v25[18] - v52;
    v54 = (16 * v45 - v53);
    memcpy(v54, v52, v53);
    v25[17] = v54;
    v25[18] = v39;
    v25[19] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v38 = *(v30 + 3);
    v39 = (v38 + 1);
    v30[3] = 0;
    v30[4] = 0;
  }

  v25[18] = v39;
  v55 = *(a1 + 8);
  v56 = v55[13];
  if (v56)
  {
    v57 = vcnt_s8(v56);
    v57.i16[0] = vaddlv_u8(v57);
    if (v57.u32[0] > 1uLL)
    {
      v58 = v4;
      if (*&v56 <= v4)
      {
        v58 = v4 % *&v56;
      }
    }

    else
    {
      v58 = (*&v56 - 1) & v4;
    }

    v59 = v55[12];
    v60 = *(v59 + 8 * v58);
    if (v60)
    {
      v61 = *v60;
      if (*v60)
      {
        v62 = *&v56 - 1;
        if (v57.u32[0] < 2uLL)
        {
          while (1)
          {
            v63 = *(v61 + 1);
            if (v63 == v4)
            {
              if (v61[4] == v4)
              {
                goto LABEL_131;
              }
            }

            else if ((v63 & v62) != v58)
            {
              goto LABEL_161;
            }

            v61 = *v61;
            if (!v61)
            {
              goto LABEL_161;
            }
          }
        }

        do
        {
          v64 = *(v61 + 1);
          if (v64 == v4)
          {
            if (v61[4] == v4)
            {
LABEL_131:
              if (v57.u32[0] > 1uLL)
              {
                if (*&v56 <= v4)
                {
                  v4 %= *&v56;
                }
              }

              else
              {
                v4 &= v62;
              }

              v65 = *(v59 + 8 * v4);
              do
              {
                v66 = v65;
                v65 = *v65;
              }

              while (v65 != v61);
              if (v66 == v55 + 14)
              {
                goto LABEL_148;
              }

              v67 = v66[1];
              if (v57.u32[0] > 1uLL)
              {
                if (v67 >= *&v56)
                {
                  v67 %= *&v56;
                }
              }

              else
              {
                v67 &= v62;
              }

              if (v67 != v4)
              {
LABEL_148:
                if (!*v61)
                {
                  goto LABEL_149;
                }

                v68 = *(*v61 + 8);
                if (v57.u32[0] > 1uLL)
                {
                  if (v68 >= *&v56)
                  {
                    v68 %= *&v56;
                  }
                }

                else
                {
                  v68 &= v62;
                }

                if (v68 != v4)
                {
LABEL_149:
                  *(v59 + 8 * v4) = 0;
                }
              }

              v69 = *v61;
              if (*v61)
              {
                v70 = *(v69 + 8);
                if (v57.u32[0] > 1uLL)
                {
                  if (v70 >= *&v56)
                  {
                    v70 %= *&v56;
                  }
                }

                else
                {
                  v70 &= v62;
                }

                if (v70 != v4)
                {
                  *(v59 + 8 * v70) = v66;
                  v69 = *v61;
                }
              }

              *v66 = v69;
              *v61 = 0;
              --v55[15];
              v71 = *(v61 + 4);
              if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v72 = v61;
                (v71->__on_zero_shared)(v71);
                std::__shared_weak_count::__release_weak(v71);
                v61 = v72;
              }

              operator delete(v61);
              break;
            }
          }

          else
          {
            if (v64 >= *&v56)
            {
              v64 %= *&v56;
            }

            if (v64 != v58)
            {
              break;
            }
          }

          v61 = *v61;
        }

        while (v61);
      }
    }
  }

LABEL_161:
  std::mutex::unlock((v6 + 344));
  v6 = *(a1 + 8);
LABEL_162:
  if (!*(v6 + 32))
  {
    std::mutex::lock((v6 + 280));
    if ((atomic_exchange((*(a1 + 8) + 204), 1u) & 1) == 0)
    {
      v73 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(*(a1 + 16), v73, 0x12A05F200uLL, 0x9502F900uLL);
      if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
      {
        qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
        __cxa_guard_release(&qword_280874BC8);
      }

      v74 = qword_280874BC0;
      if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_271001000, v74, OS_LOG_TYPE_DEFAULT, "VisionHWAServer: count down 5s start!", &__p, 2u);
      }

      dispatch_resume(*(a1 + 16));
    }

    std::mutex::unlock((v6 + 280));
  }
}

uint64_t sub_27101E180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z43VisionHWAccelerationServicesSetupAppMonitoriR23VisionHWAClientServicesP17dispatch_source_sE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z43VisionHWAccelerationServicesSetupAppMonitoriR23VisionHWAClientServicesP17dispatch_source_sE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z43VisionHWAccelerationServicesSetupAppMonitoriR23VisionHWAClientServicesP17dispatch_source_sE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z43VisionHWAccelerationServicesSetupAppMonitoriR23VisionHWAClientServicesP17dispatch_source_sE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void **sub_27101E1F8(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_27101E710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x2743BADE0](v4, 0x10F3C401C2224D9);
  if (*(v5 - 88))
  {
    v7 = *(v5 - 104);
    *(v5 - 104) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if ((*(v5 - 64) & 1) == 0)
  {
    v8 = *(v5 - 80);
    *(v5 - 80) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  sub_271014ADC(va);
  _Unwind_Resume(a1);
}

BOOL sub_27101E860(const void ***a1, uint64_t a2)
{
  sub_27101E98C(*a1, a2, &v8);
  v2 = v8;
  if (v8)
  {
    v7 = v8;
    v8 = 0;
    v3 = sub_271012624();
    v6 = 257;
    sub_27100C738(&v7, v3, v5);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  return v2 == 0;
}

void sub_27101E918(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    v4 = *(v1 - 24);
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *(v1 - 24);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  (*(*v4 + 8))(v4);
  _Unwind_Resume(exception_object);
}

uint64_t sub_27101E98C@<X0>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  if ((a1[6] & 1) == 0)
  {
    __dst = "call .open() before trying to .load()";
    v42 = 259;
    operator new();
  }

  (**a2)(a2);
  result = sub_2710099F0(a1 + 4, &v52);
  if (v54)
  {
    v7 = 0;
    v8 = v52;
    v52 = 0;
    *a3 = v8;
    if (v54)
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!v53)
  {
LABEL_77:
    v7 = 1;
    if (v54)
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v9 = v52;
  v10 = v52 + 40 * v53;
  v35 = a3;
  while (1)
  {
    __dst = sub_27101F9C8;
    result = sub_27100AA3C(a1 + 4, v9, sub_27100C124, &__dst, &__src);
    if (v51)
    {
      v24 = __src;
      __src = 0;
LABEL_80:
      *a3 = v24;
      goto LABEL_81;
    }

    if ((*(v9 + 8) & 2) != 0)
    {
      v11 = *(v9 + 4);
      if (v11 == 8)
      {
        if (__src)
        {
          v12 = __len;
          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
            sub_27100BD78();
          }

          if (__len >= 0x17)
          {
            operator new();
          }

          HIBYTE(v40) = __len;
          if (__len)
          {
            memmove(&__dst, __src, __len);
          }

          *(&__dst + v12) = 0;
          if (SHIBYTE(v40) >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }
        }

        else
        {
          __dst = 0;
          v39 = 0;
          p_dst = &__dst;
          v40 = 0;
        }

        result = (*(*a2 + 24))(a2, p_dst, *(v9 + 12), *(v9 + 20));
        if (SHIBYTE(v40) < 0)
        {
          v14 = result;
          operator delete(__dst);
          result = v14;
        }

        if ((result & 1) == 0)
        {
          v29 = *(a1 + 23);
          if (v29 >= 0)
          {
            v30 = *(a1 + 23);
          }

          else
          {
            v30 = a1[1];
          }

          if (v30 + 24 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v30 + 24 > 0x16)
            {
              operator new();
            }

            v47 = 0;
            v48 = 0;
            __p = 0;
            HIBYTE(v48) = v30 + 24;
            if ((v29 & 0x80u) == 0)
            {
              v33 = a1;
            }

            else
            {
              v33 = *a1;
            }

            memmove(&__p, v33, v30);
            strcpy(&__p + v30, ": error loading section ");
            __dst = &__p;
            v40 = __src;
            v41 = __len;
            v42 = 1284;
            operator new();
          }

          sub_27100BD78();
        }

        v11 = *(v9 + 4);
      }

      if (v11 == 1)
      {
        break;
      }
    }

LABEL_74:
    if (v51)
    {
      result = __src;
      __src = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    v9 += 40;
    if (v9 == v10)
    {
      goto LABEL_77;
    }
  }

  result = sub_27100AE4C(a1 + 4, v9, &__p);
  if (v48)
  {
    v24 = __p;
    goto LABEL_80;
  }

  result = sub_271009F00(a1 + 4, &v43);
  if ((v45 & 1) == 0)
  {
    v15 = *(v9 + 12);
    if (v44)
    {
      v16 = 0;
      while (1)
      {
        if (*(v43 + v16) == 1 && *(v43 + v16 + 4) == *(v9 + 16))
        {
          v17 = *(v43 + v16 + 8);
          if (v15 >= v17 && *(v43 + v16 + 20) + v17 > v15)
          {
            break;
          }
        }

        v16 += 32;
        if (32 * v44 == v16)
        {
          goto LABEL_38;
        }
      }

      v15 = v15 - v17 + *(v43 + v16 + 12);
    }

LABEL_38:
    v18 = v15;
    if ((*(v9 + 8) & 4) != 0)
    {
      if (__src)
      {
        v20 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          sub_27100BD78();
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v40) = __len;
        if (__len)
        {
          memmove(&__dst, __src, __len);
        }

        *(&__dst + v20) = 0;
        if (SHIBYTE(v40) >= 0)
        {
          v22 = &__dst;
        }

        else
        {
          v22 = __dst;
        }

        a3 = v35;
      }

      else
      {
        __dst = 0;
        v39 = 0;
        v22 = &__dst;
        v40 = 0;
      }

      result = (*(*a2 + 16))(a2, v22, *(v9 + 12), v47, __p, v18);
    }

    else
    {
      if (__src)
      {
        v19 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          sub_27100BD78();
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v40) = __len;
        if (__len)
        {
          memmove(&__dst, __src, __len);
        }

        *(&__dst + v19) = 0;
        if (SHIBYTE(v40) >= 0)
        {
          v21 = &__dst;
        }

        else
        {
          v21 = __dst;
        }

        a3 = v35;
      }

      else
      {
        __dst = 0;
        v39 = 0;
        v21 = &__dst;
        v40 = 0;
      }

      result = (*(*a2 + 8))(a2, v21, *(v9 + 12), v47, __p, v18);
    }

    if (SHIBYTE(v40) < 0)
    {
      v23 = result;
      operator delete(__dst);
      result = v23;
    }

    if ((result & 1) == 0)
    {
      v31 = *(a1 + 23);
      if (v31 >= 0)
      {
        v32 = *(a1 + 23);
      }

      else
      {
        v32 = a1[1];
      }

      if (v32 + 24 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v32 + 24 > 0x16)
        {
          operator new();
        }

        v36[1] = 0;
        v37 = 0;
        v36[0] = 0;
        HIBYTE(v37) = v32 + 24;
        if ((v31 & 0x80u) == 0)
        {
          v34 = a1;
        }

        else
        {
          v34 = *a1;
        }

        memmove(v36, v34, v32);
        strcpy(v36 + v32, ": error loading section ");
        __dst = v36;
        v40 = __src;
        v41 = __len;
        v42 = 1284;
        operator new();
      }

      sub_27100BD78();
    }

    if (v45)
    {
      result = v43;
      v43 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    if (v48)
    {
      result = __p;
      __p = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    goto LABEL_74;
  }

  *a3 = v43;
  if (v48)
  {
    result = __p;
    __p = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_81:
  if (v51)
  {
    result = __src;
    __src = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v7 = 0;
  if (v54)
  {
LABEL_85:
    result = v52;
    v52 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_87:
  if (v7)
  {
    v25 = *(a1[4] + 9);
    if ((v25 - 1) >= 2)
    {
      v26 = sub_271012624();
      v27 = v26[4];
      if (v26[3] - v27 > 0x60uLL)
      {
        qmemcpy(v27, "Warning: running old, un-versioned binary on new simulator. Defaulting to simulator LACC V1 ISA.\n", 97);
        v26[4] += 97;
      }

      else
      {
        sub_2710119AC(v26, "Warning: running old, un-versioned binary on new simulator. Defaulting to simulator LACC V1 ISA.\n", 0x61uLL);
      }

      v25 = 1;
    }

    result = (*(*a2 + 56))(a2, v25);
    *a3 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27101F394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  MEMORY[0x2743BADE0](v35, 0x10F3C401C2224D9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((a27 & 1) != 0 && a25)
  {
    (*(*a25 + 8))(a25);
  }

  if ((a30 & 1) != 0 && a28)
  {
    (*(*a28 + 8))(a28);
  }

  if ((a34 & 1) != 0 && a32)
  {
    (*(*a32 + 8))(a32);
  }

  if (*(v36 - 104))
  {
    v38 = *(v36 - 120);
    *(v36 - 120) = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27101F59C(const void ***a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = a2;
  v9[1] = a3;
  sub_27101FA4C(v3, v9, &v10);
  if (v12)
  {
    v8 = v10;
    v4 = sub_271012624();
    v13 = 257;
    sub_27100C738(&v8, v4, &v10);
    result = v8;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      result = 0;
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    result = v11;
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_27101F6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27101F6E4(const void ***a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = a2;
  v9[1] = a3;
  sub_27101FA4C(v3, v9, v10);
  if (v11)
  {
    v8 = v10[0];
    v4 = sub_271012624();
    v12 = 257;
    sub_27100C738(&v8, v4, v10);
    result = v8;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      result = 0;
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    result = HIDWORD(v10[0]);
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_27101F7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_27101F82C(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_27100BD78();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void sub_27101FA4C(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  sub_2710099F0(a1 + 4, &v41);
  v6 = v41;
  if (v43)
  {
    *(a3 + 16) |= 1u;
    *a3 = v6;
    goto LABEL_64;
  }

  if (!v42)
  {
    goto LABEL_52;
  }

  v7 = &v41[10 * v42];
  v29 = *(a3 + 16);
  v27 = a3;
  v28 = a2;
  while (1)
  {
    if (v6[1] == 2)
    {
      sub_2710099F0(a1 + 4, &v44);
      if (v46)
      {
        v40 |= 1u;
        v38 = v44;
      }

      else
      {
        sub_271009BEC(a1 + 4, v6, v44, v45, &v38);
        if (v46)
        {
          v8 = v44;
          v44 = 0;
          if (v8)
          {
            (*(*v8 + 1))(v8);
          }
        }
      }

      if (v40)
      {
        v19 = 0;
        *a3 = v38;
        *(a3 + 16) = v29 | 1;
        if (v43)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }

      sub_27100A0F4(a1 + 4, v6, &v35);
      v9 = v35;
      if (v37)
      {
        v10 = 0;
        v29 |= 1u;
        *a3 = v35;
        if (v40)
        {
          goto LABEL_41;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        v10 = 1;
        if (v40)
        {
          goto LABEL_41;
        }

        goto LABEL_5;
      }

      v11 = v38;
      v12 = v39;
      v13 = *(a2 + 8);
      if (v38)
      {
        v14 = *a2;
        v15 = 16 * v36;
        while (1)
        {
          v16 = *v9;
          if (v12 <= v16)
          {
            goto LABEL_40;
          }

          if (strlen(v11 + v16) == v13 && (!v13 || !memcmp(v11 + v16, v14, v13)))
          {
            break;
          }

          v9 += 4;
          v15 -= 16;
          if (!v15)
          {
            v10 = 1;
            a3 = v27;
            a2 = v28;
            if (v40)
            {
              goto LABEL_41;
            }

            goto LABEL_5;
          }
        }

        a3 = v27;
      }

      else
      {
        if (v13)
        {
          v17 = 16 * v36;
          while (1)
          {
            v16 = *v9;
            if (v39 <= v16)
            {
              break;
            }

            v9 += 4;
            v17 -= 16;
            if (!v17)
            {
              v10 = 1;
              a2 = v28;
              if (v40)
              {
                goto LABEL_41;
              }

              goto LABEL_5;
            }
          }

LABEL_40:
          sub_27100C164();
          memset(__p, 0, sizeof(__p));
          LODWORD(v45) = 0;
          v49 = 0;
          v50 = 0;
          v51 = 1;
          v47 = 0;
          v48 = 0;
          v46 = 0;
          v44 = &unk_2880F8E80;
          v52 = __p;
          sub_271011550(&v44, 0, 0, 0);
          v31 = &unk_2880F93A8;
          v32 = "st_name (0x%x) is past the end of the string table of size 0x%zx";
          LODWORD(v33) = v16;
          v34 = v12;
          sub_27101166C(&v44, &v31);
          operator new();
        }

        v16 = *v35;
        if (v39 <= v16)
        {
          goto LABEL_40;
        }
      }

      v10 = 0;
      v29 &= ~1u;
      *a3 = *v9;
      a2 = v28;
      if ((v40 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_41:
      v18 = v38;
      v38 = 0;
      if (!v18)
      {
LABEL_5:
        if ((v10 & 1) == 0)
        {
          break;
        }

        goto LABEL_6;
      }

      (*(*v18 + 1))(v18);
      if ((v10 & 1) == 0)
      {
        break;
      }
    }

LABEL_6:
    v6 += 10;
    if (v6 == v7)
    {
      v19 = 1;
      *(a3 + 16) = v29;
      if (v43)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }
  }

  v19 = 0;
  *(a3 + 16) = v29;
  if ((v43 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v20 = v41;
  v41 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    if ((v19 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_52:
    v21 = *(a1 + 23);
    if (v21 >= 0)
    {
      v22 = *(a1 + 23);
    }

    else
    {
      v22 = a1[1];
    }

    if (v22 + 22 < 0x7FFFFFFFFFFFFFF8)
    {
      if (v22 + 22 >= 0x17)
      {
        operator new();
      }

      v32 = 0;
      v33 = 0;
      v31 = 0;
      HIBYTE(v33) = v22 + 22;
      if (v22)
      {
        if ((v21 & 0x80u) == 0)
        {
          v23 = a1;
        }

        else
        {
          v23 = *a1;
        }

        memmove(&v31, v23, v22);
      }

      strcpy(&v31 + v22, ": function not found: ");
      v24 = *a2;
      v25 = *(a2 + 8);
      v44 = &v31;
      v46 = v24;
      v47 = v25;
      LOWORD(v48) = 1284;
      operator new();
    }

    sub_27100BD78();
  }

LABEL_51:
  if (v19)
  {
    goto LABEL_52;
  }

LABEL_64:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_271020058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  MEMORY[0x2743BADE0](v39, 0x10F3C401C2224D9);
  sub_2710113AC(&a37);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  *(a10 + 16) = a13;
  if ((a30 & 1) != 0 && a28)
  {
    (*(*a28 + 8))(a28);
  }

  if ((a33 & 1) != 0 && a31)
  {
    (*(*a31 + 8))(a31);
  }

  if (a36)
  {
    if (a34)
    {
      (*(*a34 + 8))(a34);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void sub_271020294(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2880F93E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BADE0);
}

void sub_2710202E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void sub_27102037C(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_2710203E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_2710203FC(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_271020468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_27102047C(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_2710204E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_2710204FC(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_271020568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_27102057C(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_2710205E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_2710205FC(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_271020668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_27102067C(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MGGetStringAnswer();
  v11 = v2;
  if (v2 && (v3 = v2, sub_271021BF0(v2, &v9), CFRelease(v3), (v10 & 1) != 0))
  {
    v4 = v9.__r_.__value_.__r.__words[0];
    v5 = v9.__r_.__value_.__r.__words[1];
    v6 = v9.__r_.__value_.__s.__data_[10];
    v11 = *(&v9.__r_.__value_.__r.__words[1] + 3);
    v12 = *(&v9.__r_.__value_.__r.__words[2] + 3);
    v7 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = 0;
    v7 = 10;
    v5 = 28271;
    v4 = 0x69746375646F7250;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 10) = v6;
  *(a1 + 11) = v11;
  *(a1 + 19) = v12;
  *(a1 + 23) = v7;
  *(a1 + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271020768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_271005B4C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2710207B4()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

uint64_t sub_271020824()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

uint64_t sub_271020894()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

void sub_271020930(std::string *a1@<X8>)
{
  v2 = MGGetStringAnswer();
  if (v2)
  {
    v3 = v2;
    sub_271021BF0(v2, a1);
    CFRelease(v3);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_27102099C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021914(va);
  _Unwind_Resume(a1);
}

void sub_2710209B0(uint64_t a1@<X8>)
{
  v2 = MGGetStringAnswer();
  v16 = v2;
  if (!v2)
  {
    v4 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v20 = 0;
LABEL_30:
    *a1 = 0;
    *(a1 + 24) = 0;
    if ((v4 & 1) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

  v3 = v2;
  sub_271021BF0(v2, &__p);
  CFRelease(v3);
  v4 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_30;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
LABEL_31:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v21 = p_p;
  v22 = p_p;
  v7 = (p_p + size);
  v8 = 0;
  do
  {
    while (p_p == v7)
    {
      v21 = p_p;
      v22 = (&p_p->__r_.__value_.__l.__data_ + 1);
      v9 = p_p == v7;
      p_p = (p_p + 1);
      if (v9)
      {
        goto LABEL_27;
      }
    }

    v10 = p_p;
LABEL_13:
    v11 = 1;
    v12 = ":";
    while (*v12 != v10->__r_.__value_.__s.__data_[0])
    {
      ++v12;
      if (!--v11)
      {
        v10 = (v10 + 1);
        if (v10 != v7)
        {
          goto LABEL_13;
        }

        v10 = v7;
        break;
      }
    }

    v21 = v10;
    v13 = v10 - p_p;
    if (v10 != p_p)
    {
      if (v8 >= v18)
      {
        v8 = sub_27102194C(&v16, &v22, &v21);
      }

      else
      {
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_27100BD78();
        }

        if (v13 > 0x16)
        {
          operator new();
        }

        v8[23] = v13;
        memmove(v8, p_p, v13);
        v8[v13] = 0;
        v8 += 24;
        v10 = v21;
      }

      v17 = v8;
    }

    v22 = (&v10->__r_.__value_.__l.__data_ + 1);
    p_p = (&v10->__r_.__value_.__l.__data_ + 1);
  }

  while (v10 != v7);
LABEL_27:
  v14 = v18;
  v15 = v20;
  *a1 = v16;
  *(a1 + 8) = v8;
  *(a1 + 16) = v14;
  *(a1 + 24) = 1;
  if (v15)
  {
    goto LABEL_31;
  }
}

void sub_271020CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_271020D30(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***sub_271020D30(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_271020DA4()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFRelease(v0);
  return (v1 == *MEMORY[0x277CBED28]) | 0x100u;
}

uint64_t *sub_271020E14()
{
  if ((atomic_load_explicit(&qword_280874B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874B48))
  {
    operator new();
  }

  return &qword_280874B50;
}

uint64_t sub_271020F2C(uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t sub_271020FA4(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x2743BAD20](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_2710212D8(v5);
  return a1;
}

void sub_271021288(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BAD70](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2710212D8(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_271021420(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743BAC10](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_2710215CC(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2743BAC20](v14);
  return a1;
}

void sub_271021564(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2743BAC20](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x271021544);
}

uint64_t sub_2710215CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_27100BD78();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_2710217A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2710217C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

const void **sub_271021914(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *sub_27102194C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271014AC4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_27100BA50();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v9 = *a3 - *a2;
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_27100BD78();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  *(8 * ((*(a1 + 8) - *a1) >> 3) + 0x17) = v9;
  if (v8 != v7)
  {
    memmove(v6, v7, v9);
  }

  v6[v9] = 0;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v6[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v6 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 24;
}

void sub_271021AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271021B0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271021B0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_271021B94(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2880F94F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BADE0);
}

const __CFString *sub_271021BF0@<X0>(const __CFString *result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v3 = result;
  result = CFStringGetLength(result);
  if (result)
  {
    v4 = result;
    usedBufLen = 0;
    v9.location = 0;
    v9.length = result;
    result = CFStringGetBytes(v3, v9, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v7, 0, sizeof(v7));
      if (usedBufLen)
      {
        std::string::append(&v7, usedBufLen, 0);
        v5 = usedBufLen;
        if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v7;
        }

        else
        {
          v6 = v7.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v5 = 0;
        v6 = &v7;
      }

      v10.location = 0;
      v10.length = v4;
      result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, v6, v5, 0);
      *a2 = v7;
      goto LABEL_12;
    }

LABEL_8:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_271021D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271021D30(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if ((atomic_load_explicit(&qword_280874B60, memory_order_acquire) & 1) == 0)
  {
    v32 = a7;
    v33 = __cxa_guard_acquire(&qword_280874B60);
    a7 = v32;
    if (v33)
    {
      __cxa_atexit(sub_271022388, &qword_280874B78, &dword_271001000);
      __cxa_guard_release(&qword_280874B60);
      a7 = v32;
    }
  }

  if ((byte_280874BA0 & 1) == 0)
  {
    v13 = a7;
    sub_271020FA4(v36);
    if (a4)
    {
      v14 = "Assert: ";
    }

    else
    {
      v14 = "Abort: ";
    }

    if (a4)
    {
      v15 = 8;
    }

    else
    {
      v15 = 7;
    }

    sub_271021420(&v37, v14, v15);
    v16 = strlen(a1);
    v17 = sub_271021420(&v37, a1, v16);
    v18 = sub_271021420(v17, ":", 1);
    MEMORY[0x2743BAC30](v18, a2);
    if (a4)
    {
      v19 = sub_271021420(&v37, " : ", 3);
      sub_271021420(v19, a3, a4);
    }

    if (a6)
    {
      v20 = sub_271021420(&v37, " : ", 3);
      sub_271021420(v20, a5, a6);
    }

    sub_271021420(&v37, "\n", 1);
    if ((v47 & 0x10) != 0)
    {
      v22 = v46;
      if (v46 < v43)
      {
        v46 = v43;
        v22 = v43;
      }

      v23 = v42;
      v21 = v22 - v42;
      if (v22 - v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((v47 & 8) == 0)
      {
        v21 = 0;
        v35 = 0;
LABEL_24:
        *(&__dst + v21) = 0;
        v36[0] = *MEMORY[0x277D82818];
        v24 = *(MEMORY[0x277D82818] + 72);
        *(v36 + *(v36[0] - 24)) = *(MEMORY[0x277D82818] + 64);
        v37 = v24;
        v38 = MEMORY[0x277D82878] + 16;
        if (v45 < 0)
        {
          operator delete(__p);
        }

        v38 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v39);
        std::iostream::~basic_iostream();
        MEMORY[0x2743BAD70](&v48);
        if (v35 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        v13(p_dst);
        if (v35 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_31;
      }

      v23 = v40;
      v21 = v41 - v40;
      if ((v41 - v40) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_41:
        sub_27100BD78();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v35 = v21;
    if (v21)
    {
      memmove(&__dst, v23, v21);
    }

    goto LABEL_24;
  }

LABEL_31:
  if ((atomic_load_explicit(&qword_280874B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874B60))
  {
    __cxa_atexit(sub_271022388, &qword_280874B78, &dword_271001000);
    __cxa_guard_release(&qword_280874B60);
  }

  if (byte_280874BA0 != 1 || byte_280874BA8 == 1)
  {
    v26 = qword_280874B78;
    v27 = unk_280874B80;
    while (v26 != v27)
    {
      v29 = *v26;
      v28 = *(v26 + 8);
      v26 += 16;
      v29(v28, a3, a4, a5, a6);
    }
  }

  if ((atomic_load_explicit(&qword_280874B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874B60))
  {
    __cxa_atexit(sub_271022388, &qword_280874B78, &dword_271001000);
    __cxa_guard_release(&qword_280874B60);
  }

  v30 = byte_280874BA0;
  if (byte_280874BA0 == 1)
  {
    qword_280874B90(*algn_280874B98, a3, a4, a5, a6);
  }

  return v30 ^ 1u;
}

void sub_271022200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271022244(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_2710224C4();
  v3 = strlen(a1);
  sub_27101F82C(v2 + 1, a1, v3);
  if (*(v2 + 31) >= 0)
  {
    v4 = (v2 + 1);
  }

  else
  {
    v4 = v2[1];
  }

  qword_280874650 = v4;
  if ((atomic_load_explicit(&qword_280874B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874B70))
  {
    qword_280874B68 = os_log_create("cv3d", "");
    __cxa_guard_release(&qword_280874B70);
  }

  v5 = qword_280874B68;
  if (os_log_type_enabled(qword_280874B68, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315138;
    v9 = a1;
    _os_log_impl(&dword_271001000, v5, OS_LOG_TYPE_FAULT, "%s", &v8, 0xCu);
  }

  result = fputs(a1, *MEMORY[0x277D85DF8]);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_271022388(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_2710223C4(uint64_t result)
{
  *result = off_2880F9540;
  qword_280874650 = 0;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_271022428(uint64_t a1)
{
  *a1 = off_2880F9540;
  qword_280874650 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BADE0);
}

uint64_t (***sub_2710224C4())()
{
  if (atomic_load_explicit(&qword_280874BB0, memory_order_acquire))
  {
    return &off_28206F8A0;
  }

  if (__cxa_guard_acquire(&qword_280874BB0))
  {
    __cxa_atexit(sub_2710223C4, &off_28206F8A0, &dword_271001000);
    __cxa_guard_release(&qword_280874BB0);
  }

  return &off_28206F8A0;
}

void sub_271022540()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_271007504();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_271022640(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "HxISPDevice createDevice() timed out -- %d retries remaining.", buf, 8u);
}

void sub_27102268C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_271007504();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_271022704()
{
  if (__cxa_guard_acquire(&qword_280874790))
  {
    __cxa_atexit(sub_271006338, &qword_280874798, &dword_271001000);

    __cxa_guard_release(&qword_280874790);
  }
}

void sub_271022774()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_271007504();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2710227EC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_271007504();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_271022864(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ISP temporarily unavailable -- retrying. Driver reported code %d.", buf, 8u);
}

void sub_2710228B0()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_27100751C(&dword_271001000, MEMORY[0x277D86220], v0, "ISP driver reported error %d for processing buffer. Max number of retries reached.", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_271022920()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_27100751C(&dword_271001000, MEMORY[0x277D86220], v0, "ISP driver reported error %d for processing buffer.", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_271022990()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_271007510();
  sub_27100751C(&dword_271001000, MEMORY[0x277D86220], v0, "CompleteBuffers failed with error code %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_271022A00(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "VisionHWAServer: [AppStateMonitor] error creating handle for identifier. Error: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_271022B8C(uint64_t *a1)
{
  v1 = sub_27100C130(a1);
  if (v1)
  {
    v2 = sub_27100C14C(v1);
    (*(v3 + 8))(v2);
  }

  sub_27100C158();
}

uint64_t sub_271022BDC(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = sub_27100C14C(v4);
    (*(v6 + 8))(v5);
  }

  return MEMORY[0x2743BADE0](a2, 0xA1C4030951706);
}

uint64_t *sub_271022C74(uint64_t *a1)
{
  result = sub_27100C130(a1);
  if (result)
  {
    v5 = sub_27100C14C(result);
    result = (*(v6 + 8))(v5);
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

void sub_271022CC8(uint64_t a1, _BYTE *a2, uint64_t **a3)
{
  if (*a2)
  {
    v3 = *a3;
    *a3 = 0;
    if (v3)
    {
      v4 = sub_27100C14C(v3);
      (*(v5 + 8))(v4);
    }
  }
}

void sub_271022D14()
{
  if (__cxa_guard_acquire(qword_280874860))
  {
    dword_280874858 = getpagesize();

    __cxa_guard_release(qword_280874860);
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}