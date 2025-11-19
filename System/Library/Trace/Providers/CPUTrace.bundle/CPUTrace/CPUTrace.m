id sub_1408(void *a1)
{
  v5 = NSLocalizedFailureReasonErrorKey;
  v6 = a1;
  v1 = a1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"CPUTraceProviderConfiguration" code:1 userInfo:v2];

  return v3;
}

id sub_14DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    [*(a1 + 40) removeObjectForKey:v3];
  }

  return v4;
}

id sub_1548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 40) + 16))();
  if (v7)
  {
    v8 = [*(a1 + 32) numberFromString:v7];
    if (!v8)
    {
      v9 = [NSString stringWithFormat:@"invalid %@ value: %@, not a number", v5, v7];
      **(a1 + 48) = sub_1408(v9);
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

id sub_1630(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [NSNumber numberWithBool:a3];
  v7 = (*(v4 + 16))(v4, v5, v6);

  v8 = [v7 BOOLValue];
  return v8;
}

void sub_1B44(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::thread::~thread(a1);
  }
}

void polling_callback(hwtrace_live_recording *a1, unint64_t a2)
{
  v2 = atomic_load(&unk_C950);
  if (v2)
  {
    v4 = 30;
    v5 = a2;
    while (1)
    {
      v6 = atomic_load(&unk_C951);
      if (v6)
      {
        return;
      }

      v7 = hwtrace_live_recording_traced_bytes();
      if (v7 >= a2)
      {
        atomic_store(1u, &unk_C951);
        v11 = qword_C930;
        v12 = [NSString stringWithFormat:@"Reached the size limit %llu", a2];
        [v11 warnWithMessage:v12];

        if (hwtrace_live_recording_pause())
        {
          [qword_C930 failWithReason:@"Unable to pause recording after reached the size limit."];
        }

        else
        {
          atomic_store(1u, &unk_C952);
        }
      }

      else
      {
        v8 = v7 / v5 * 100.0;
        if (v4 <= v8)
        {
          v9 = qword_C930;
          v10 = [NSString stringWithFormat:@"Used %llu bytes of %llu limit (%llu%%)", v7, a2, v8];
          [v9 warnWithMessage:v10];
          v4 += 30;
        }
      }

      __lk.__m_ = &stru_C860;
      __lk.__owns_ = 1;
      std::mutex::lock(&stru_C860);
      v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 100000000;
      if (v13.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
      {
        break;
      }

LABEL_25:
      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
      }

      v18 = atomic_load(&unk_C950);
      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    v14.__d_.__rep_ = v13.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v14.__d_.__rep_ < 1)
    {
LABEL_24:
      std::chrono::steady_clock::now();
      goto LABEL_25;
    }

    std::chrono::steady_clock::now();
    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v15.__d_.__rep_)
    {
      v16 = 0;
      goto LABEL_22;
    }

    if (v15.__d_.__rep_ < 1)
    {
      if (v15.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v16 = 0x8000000000000000;
        goto LABEL_22;
      }
    }

    else if (v15.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_20;
    }

    v16 = 1000 * v15.__d_.__rep_;
LABEL_20:
    if (v16 > (v14.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v17.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
      std::condition_variable::__do_timed_wait(&stru_C8A0, &__lk, v17);
      std::chrono::steady_clock::now();
      goto LABEL_24;
    }

LABEL_22:
    v17.__d_.__rep_ = v16 + v14.__d_.__rep_;
    goto LABEL_23;
  }
}

void sub_1E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CPUTraceProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1F9C(uint64_t a1, uint64_t a2)
{
  v2 = qword_C930;
  if (!qword_C930)
  {
    sub_4CBC();
  }

  v3 = [NSString stringWithUTF8String:a2];
  [v2 warnWithMessage:?];
}

void sub_2F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_3DC8(va);
  sub_38FC(va1);
  _Block_object_dispose((v7 - 160), 8);
  sub_3130(va1);
  _Unwind_Resume(a1);
}

__n128 sub_2FC8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_3018(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(*(a1 + 32) + 8) + 48) + 88 * a2);
  v9[1] = 0;
  v3 = *v2;
  result = hwtrace_cursor_init_from_thread();
  if (!result)
  {
    while (1)
    {
      v9[0] = hwtrace_cursor_pc();
      if ((v9[0] & 0x8000000000000000) != 0)
      {
        v8[1] = 0;
        if (hwtrace_cursor_segment())
        {
          goto LABEL_8;
        }

        address = hwtrace_segment_load_address();
        v8[0] = hwtrace_segment_file_address() - address + v9[0];
        v6 = v2 + 6;
        v7 = v8;
      }

      else
      {
        v6 = v2 + 1;
        v7 = v9;
      }

      sub_3948(v6, v7);
LABEL_8:
      if (hwtrace_cursor_next_range())
      {
        return hwtrace_cursor_deinit();
      }
    }
  }

  return result;
}

void sub_3130(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_3184(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_3184(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 88)
  {
    sub_38FC(i - 40);
    result = sub_38FC(i - 80);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_31E0(uint64_t a1, void *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_333C();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_33E4(a1, v6);
  }

  v7 = 88 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1065353216;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 1065353216;
  *&v16 = 88 * v2 + 88;
  v8 = *(a1 + 8);
  v9 = (88 * v2 + *a1 - v8);
  sub_3474(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_364C(&v14);
  return v13;
}

void sub_3328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_364C(va);
  _Unwind_Resume(a1);
}

void sub_3354(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_33B0(exception, a1);
}

std::logic_error *sub_33B0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_33E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_3440();
}

void sub_3440()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_3474(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 11;
      *a4 = v8;
      v9 = (a4 + 6);
      sub_354C((a4 + 1), v6 + 1);
      sub_354C(v9, v6 + 6);
      a4 = v14 + 11;
      v14 += 11;
      v6 = v7;
    }

    while (v7 != a3);
    v12 = 1;
    while (v5 != a3)
    {
      sub_38FC((v5 + 6));
      sub_38FC((v5 + 1));
      v5 += 11;
    }
  }

  return sub_35BC(v11);
}

uint64_t sub_354C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_35BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_35F4(a1);
  }

  return a1;
}

uint64_t sub_35F4(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 88)
  {
    sub_38FC(v3 - 40);
    result = sub_38FC(v3 - 80);
  }

  return result;
}

uint64_t sub_364C(uint64_t a1)
{
  sub_3684(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3684(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 88;
      sub_38FC(v2 - 40);
      result = sub_38FC(v2 - 80);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void sub_37C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_38B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_37FC(std::__thread_struct **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2], v5[3]);
  sub_386C(&v5);
  return 0;
}

void sub_3858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_386C(va);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_386C(std::__thread_struct ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_38B4(v2);
    operator delete();
  }

  return a1;
}

std::__thread_struct **sub_38B4(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_38FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_3948(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_3B74(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_3C64(a1, prime);
    }
  }
}

void sub_3C64(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_3440();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_3DC8(uint64_t a1)
{
  sub_3E04(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_3E04(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_38FC((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_3E48(uint64_t *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = v2[2];
      result = sub_3ED0(v4, v5, v2 + 2);
      v6 = *v2;
      if (!result)
      {
        sub_3FE8(a2, v2, v7);
        v2[1] = v5;
        result = sub_4124(v4, v2);
      }

      v2 = v6;
    }

    while (v6);
  }

  return result;
}

void *sub_3ED0(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_3B74(a1, v15);
  }

  return 0;
}

void *sub_3FE8@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
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
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *sub_4124(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
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

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
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

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t *sub_41D8(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
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

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_428C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_44E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_44FC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_38FC(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_4548(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_4654(a1, v9, v8 + 2);
        sub_47B4(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_4B08();
  }
}

void sub_4620(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_4654(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_489C(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_47B4(void *result, void *a2, void *a3)
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

void sub_489C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_498C(a1, prime);
    }
  }
}

void sub_498C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_3440();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_4B90(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_3B74(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_3948(a1, i + 2);
  }

  return a1;
}

void sub_4C08()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(&std::mutex::~mutex, &stru_C860, &dword_0);
  __cxa_atexit(&std::condition_variable::~condition_variable, &stru_C8A0, &dword_0);
  __cxa_atexit(sub_1B44, &qword_C938, &dword_0);

  objc_autoreleasePoolPop(v0);
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

void operator new()
{
    ;
  }
}