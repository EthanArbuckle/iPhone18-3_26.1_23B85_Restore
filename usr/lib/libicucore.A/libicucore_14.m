uint64_t sub_195272188(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  if (v2 > a2)
  {
    return 1;
  }

  v5 = (a2 & 0xFFFFFE00) + 512;
  v6 = v2 >> 4;
  v7 = v5 >> 4;
  if (v7 > *(a1 + 8))
  {
    result = malloc_type_malloc(0x44000uLL, 0x100004052888210uLL);
    if (!result)
    {
      return result;
    }

    v8 = result;
    memcpy(result, *a1, 4 * v6);
    free(*a1);
    *a1 = v8;
    *(a1 + 8) = 69632;
  }

  v9 = v6;
  do
  {
    *(a1 + v9 + 64) = 0;
    *(*a1 + 4 * v9++) = *(a1 + 40);
  }

  while (v9 < v7);
  *(a1 + 48) = v5;
  return 1;
}

float32x4_t sub_195272264(void *a1, int a2)
{
  v4 = a1 + 8;
  v5 = a2;
  if (*(a1 + a2 + 64) == 1)
  {
    v6 = *(*a1 + 4 * a2);
  }

  else if (a2 > 4095)
  {
    v16 = sub_195272360(a1, 16);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = (*a1 + 4 * v5);
      result = vld1q_dup_f32(v17);
      v18 = (a1[2] + 4 * v16);
      *v18 = result;
      v18[1] = result;
      v18[2] = result;
      v18[3] = result;
      *(v4 + v5) = 1;
      *(*a1 + 4 * v5) = v16;
    }
  }

  else
  {
    v7 = sub_195272360(a1, 64);
    if ((v7 & 0x80000000) == 0)
    {
      v9 = (a2 & 0xFFFFFFFC);
      v10 = *a1;
      v11 = 4 * v7;
      do
      {
        v12 = (v10 + 4 * v9);
        result = vld1q_dup_f32(v12);
        v13 = (a1[2] + v11);
        *v13 = result;
        v13[1] = result;
        v13[2] = result;
        v13[3] = result;
        *(v4 + v9) = 1;
        v10 = *a1;
        *(*a1 + 4 * v9) = v7;
        v11 += 64;
        v7 += 16;
      }

      while (v9++ < (a2 | 3));
      v15 = *(v10 + 4 * v5);
    }
  }

  return result;
}

uint64_t sub_195272360(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = v4 + a2;
  if (v4 + a2 <= v3)
  {
    goto LABEL_8;
  }

  if (v3 >= 0x20000)
  {
    if (HIWORD(v3) > 0x10u)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 1114112;
  }

  else
  {
    v6 = 0x20000;
  }

  v7 = malloc_type_malloc((4 * v6), 0x100004052888210uLL);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  memcpy(v7, *(a1 + 16), 4 * *(a1 + 28));
  free(*(a1 + 16));
  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
LABEL_8:
  *(a1 + 28) = v5;
  return v4;
}

uint64_t sub_195272410(uint64_t a1, int a2, int a3)
{
  v5 = a2 - a3;
  if (a2 - a3 > 4094)
  {
    if (v5 > 0x7FFE)
    {
      if (v5 > 0x1FFFE)
      {
        *(a1 + 16) = 0x1FFFFF00000015;
        v6 = 1500007;
      }

      else
      {
        *(a1 + 16) = 0x1FFFF00000011;
        v6 = 200003;
      }
    }

    else
    {
      *(a1 + 16) = 0x7FFF0000000FLL;
      v6 = 50021;
    }
  }

  else
  {
    *(a1 + 16) = 0xFFF0000000CLL;
    v6 = 6007;
  }

  v7 = *(a1 + 8);
  result = *a1;
  if (v6 <= v7)
  {
    v9 = (4 * v6);
  }

  else
  {
    free(result);
    v9 = (4 * v6);
    result = malloc_type_malloc(v9, 0x100004052888210uLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = v6;
  }

  *(a1 + 12) = v6;
  bzero(result, v9);
  *(a1 + 24) = a3;
  return 1;
}

uint64_t sub_19527250C(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 24);
  if (a3 >= v4)
  {
    v5 = a3 - v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = a4 - v4;
  if (v5 <= a4 - v4)
  {
    v8 = result;
    do
    {
      v9 = v5;
      v10 = *(v8 + 24) + v5++;
      v11 = *(a2 + 4 * v9);
      v12 = v5;
      do
      {
        v11 = *(a2 + 4 * v12++) + 37 * v11;
      }

      while (v12 < v10);
      result = sub_1952725D0(v8, a2, a2, v9, v11);
      if ((result & 0x80000000) != 0)
      {
        *(*v8 + 4 * ~result) = (v11 << *(v8 + 16)) | v5;
      }
    }

    while (v5 <= v6);
  }

  return result;
}

uint64_t sub_1952725D0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 12);
  v6 = a5 % (v5 - 1) + 1;
  v7 = *(*a1 + 4 * v6);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = (a3 + 4 * a4);
    v10 = a5 % (v5 - 1) + 1;
    do
    {
      if ((v7 & ~v8) == a5 << *(a1 + 16))
      {
        v11 = *(a1 + 24);
        if (v11 < 1)
        {
          if (!v11)
          {
            return v10;
          }
        }

        else
        {
          v12 = (a2 + 4 * ((v8 & v7) - 1));
          v13 = v11 + 1;
          for (i = v9; *v12 == *i; ++i)
          {
            ++v12;
            if (--v13 <= 1)
            {
              return v10;
            }
          }
        }
      }

      v10 = ((v10 + v6) % v5);
      v7 = *(*a1 + 4 * v10);
    }

    while (v7);
  }

  else
  {
    LODWORD(v10) = a5 % (v5 - 1) + 1;
  }

  return ~v10;
}

uint64_t sub_195272684(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(result + 24);
  if (a4 - v5 >= a3)
  {
    v6 = a4 - v5 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = a5 - v5;
  if (v6 <= a5 - v5)
  {
    v9 = result;
    do
    {
      v10 = v6;
      v11 = *(v9 + 24) + v6++;
      v12 = *(a2 + 2 * v10);
      v13 = v6;
      do
      {
        v12 = *(a2 + 2 * v13++) + 37 * v12;
      }

      while (v13 < v11);
      result = sub_1952728C4(v9, a2, a2, v10, v12);
      if ((result & 0x80000000) != 0)
      {
        *(*v9 + 4 * ~result) = (v12 << *(v9 + 16)) | v6;
      }
    }

    while (v6 <= v7);
  }

  return result;
}

uint64_t sub_19527274C(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 6);
  v5 = (a3 + 4 * a4);
  v6 = *v5;
  v7 = a4 + 1;
  do
  {
    v6 = *(a3 + 4 * v7++) + 37 * v6;
  }

  while (v7 < v4 + a4);
  v8 = *(a1 + 3);
  v9 = v6 % (v8 - 1) + 1;
  v10 = *a1;
  v11 = *(*a1 + 4 * v9);
  if (v11)
  {
    v12 = *(a1 + 5);
    v13 = v6 << *(a1 + 4);
    v14 = v6 % (v8 - 1) + 1;
    do
    {
      if ((v11 & ~v12) == v13)
      {
        if (v4 < 1)
        {
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v15 = (a2 + 2 * ((v11 & v12) - 1));
          v16 = v4 + 1;
          v17 = v5;
          while (*v17 == *v15)
          {
            ++v15;
            ++v17;
            if (--v16 <= 1)
            {
              goto LABEL_16;
            }
          }
        }
      }

      v14 = (v14 + v9) % v8;
      v11 = *(v10 + 4 * v14);
    }

    while (v11);
  }

  else
  {
    v14 = v6 % (v8 - 1) + 1;
  }

  v14 = ~v14;
LABEL_16:
  if (v14 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ((*(a1 + 5) & *(v10 + 4 * v14)) - 1);
  }
}

uint64_t sub_19527284C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a3 + 2 * a4);
  v6 = a4 + 1;
  do
  {
    v5 = *(a3 + 2 * v6++) + 37 * v5;
  }

  while (v6 < *(a1 + 24) + a4);
  v7 = sub_1952728C4(a1, a2, a3, a4, v5);
  if ((v7 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ((*(a1 + 20) & *(*a1 + 4 * v7)) - 1);
  }
}

uint64_t sub_1952728C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v5 = *(a1 + 12);
  v6 = a5 % (v5 - 1) + 1;
  v7 = *(*a1 + 4 * v6);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = (a3 + 2 * a4);
    v10 = a5 % (v5 - 1) + 1;
    do
    {
      if ((v7 & ~v8) == a5 << *(a1 + 16))
      {
        v11 = *(a1 + 24);
        if (v11 < 1)
        {
          if (!v11)
          {
            return v10;
          }
        }

        else
        {
          v12 = (a2 + 2 * ((v8 & v7) - 1));
          v13 = v11 + 1;
          for (i = v9; *v12 == *i; ++i)
          {
            ++v12;
            if (--v13 <= 1)
            {
              return v10;
            }
          }
        }
      }

      v10 = ((v10 + v6) % v5);
      v7 = *(*a1 + 4 * v10);
    }

    while (v7);
  }

  else
  {
    LODWORD(v10) = a5 % (v5 - 1) + 1;
  }

  return ~v10;
}

unint64_t icu::UMutex::getMutex(icu::UMutex *this)
{
  explicit = atomic_load_explicit(this + 8, memory_order_acquire);
  if (!explicit)
  {
    if (atomic_load_explicit(&qword_1ED4429C0, memory_order_acquire) != -1)
    {
      v6 = &v7;
      v7 = sub_195272A5C;
      std::__call_once(&qword_1ED4429C0, &v6, sub_195272D44);
    }

    v3 = qword_1ED4429B0;
    std::mutex::lock(qword_1ED4429B0);
    v4 = (this + 64);
    explicit = atomic_load_explicit(this + 8, memory_order_acquire);
    if (!explicit)
    {
      *this = 850045863;
      *(this + 8) = 0u;
      *(this + 24) = 0u;
      *(this + 40) = 0u;
      *(this + 7) = 0;
      atomic_store(this, v4);
      explicit = atomic_load(v4);
      *(this + 9) = icu::UMutex::gListHead;
      icu::UMutex::gListHead = this;
    }

    std::mutex::unlock(v3);
  }

  return explicit;
}

void sub_195272A5C()
{
  qword_1ED4429C8 = 850045863;
  *algn_1ED4429D0 = 0u;
  *&algn_1ED4429D0[16] = 0u;
  *&algn_1ED4429D0[32] = 0u;
  qword_1ED4429B0 = &qword_1ED4429C8;
  qword_1ED442A00 = 0;
  qword_1ED442A08 = 1018212795;
  unk_1ED442A10 = 0u;
  unk_1ED442A20 = 0u;
  qword_1ED442A30 = 0;
  qword_1ED4429B8 = &qword_1ED442A08;
  sub_1952376A4(0x1Du, sub_195272D08);
}

void icu::UMutex::cleanup(icu::UMutex *this)
{
  v1 = icu::UMutex::gListHead;
  if (icu::UMutex::gListHead)
  {
    do
    {
      v2 = atomic_load((v1 + 64));
      std::mutex::~mutex(v2);
      atomic_store(0, (v1 + 64));
      v3 = *(v1 + 72);
      *(v1 + 72) = 0;
      v1 = v3;
    }

    while (v3);
  }

  icu::UMutex::gListHead = 0;
}

void umtx_lock(atomic_ullong *a1)
{
  if (!a1)
  {
    a1 = &unk_1ED442A38;
  }

  sub_195272B34(a1);
}

void sub_195272B34(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 8, memory_order_acquire);
  if (explicit)
  {
  }

  else
  {
    explicit = icu::UMutex::getMutex(this);
  }

  std::mutex::lock(explicit);
}

void umtx_unlock(std::mutex **a1)
{
  v1 = &unk_1ED442A38;
  if (a1)
  {
    v1 = a1;
  }

  std::mutex::unlock(v1[8]);
}

uint64_t icu::umtx_initImplPreInit(atomic_uint *a1)
{
  if (atomic_load_explicit(&qword_1ED4429C0, memory_order_acquire) != -1)
  {
    __lk.__m_ = sub_195272A5C;
    p_lk = &__lk;
    std::__call_once(&qword_1ED4429C0, &p_lk, sub_195272D44);
  }

  __lk.__m_ = qword_1ED4429B0;
  v2 = 1;
  *&__lk.__owns_ = 1;
  std::mutex::lock(qword_1ED4429B0);
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    while (atomic_load_explicit(a1, memory_order_acquire) == 1)
    {
      std::condition_variable::wait(qword_1ED4429B8, &__lk);
    }

    v2 = 0;
  }

  else
  {
    atomic_store(1u, a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v2;
}

void icu::umtx_initImplPostInit(unsigned int *a1)
{
  v2 = qword_1ED4429B0;
  std::mutex::lock(qword_1ED4429B0);
  atomic_store(2u, a1);
  std::mutex::unlock(v2);
  v3 = qword_1ED4429B8;

  std::condition_variable::notify_all(v3);
}

void u_setMutexFunctions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    *a6 = 16;
  }
}

void u_setAtomicIncDecFunctions(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    *a4 = 16;
  }
}

uint64_t sub_195272D08()
{
  std::mutex::~mutex(qword_1ED4429B0);
  std::condition_variable::~condition_variable(qword_1ED4429B8);
  icu::UMutex::cleanup(v0);
  qword_1ED4429C0 = 0;
  return 1;
}

int32_t u_charName(UChar32 code, UCharNameChoice nameChoice, char *buffer, int32_t bufferLength, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0;
  }

  if (nameChoice > U_CHAR_NAME_ALIAS || bufferLength < 0 || !buffer && bufferLength)
  {
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  if (HIWORD(code) > 0x10u)
  {
    goto LABEL_16;
  }

  if (atomic_load_explicit(&dword_1EAEC9A64, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9A64))
  {
    sub_195275248(pErrorCode);
    dword_1EAEC9A68 = *pErrorCode;
    icu::umtx_initImplPostInit(&dword_1EAEC9A64);
    goto LABEL_15;
  }

  if (dword_1EAEC9A68 < 1)
  {
LABEL_15:
    if (*pErrorCode >= 1)
    {
      goto LABEL_16;
    }

    v14 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 12));
    v15 = *v14;
    if (*v14)
    {
      v16 = (v14 + 1);
      while (*v16 > code || *(v16 + 4) < code)
      {
        v16 += *(v16 + 10);
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      v17 = sub_195272F20(v16, code, nameChoice, buffer, bufferLength);
    }

    else
    {
LABEL_25:
      if (nameChoice == U_EXTENDED_CHAR_NAME)
      {
        v13 = sub_1952730AC(qword_1EAEC9A38, code, 2, buffer, bufferLength);
        if (v13)
        {
LABEL_31:
          v11 = buffer;
          v12 = bufferLength;
          goto LABEL_17;
        }

        v17 = sub_1952731FC(code, buffer, bufferLength);
      }

      else
      {
        v17 = sub_1952730AC(qword_1EAEC9A38, code, nameChoice, buffer, bufferLength);
      }
    }

    v13 = v17;
    goto LABEL_31;
  }

  *pErrorCode = dword_1EAEC9A68;
LABEL_16:
  v11 = buffer;
  v12 = bufferLength;
  v13 = 0;
LABEL_17:

  return u_terminateChars(v11, v12, v13, pErrorCode);
}

uint64_t sub_195272F20(uint64_t a1, unsigned int a2, int a3, _BYTE *a4, int a5)
{
  v5 = a4;
  v23[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFD) != 0)
  {
LABEL_2:
    v6 = 0;
    if (a5)
    {
      *a4 = 0;
    }

    goto LABEL_35;
  }

  if (*(a1 + 8) == 1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v11 = *(a1 + 9);
    v12 = (a1 + 12 + 2 * v11);
    v15 = *v12;
    v13 = v12 + 1;
    v14 = v15;
    if (v15)
    {
      v16 = 0;
      do
      {
        if (a5)
        {
          *v5++ = v14;
          LOWORD(a5) = a5 - 1;
        }

        else
        {
          LOWORD(a5) = 0;
        }

        ++v16;
        v17 = *v13++;
        v14 = v17;
      }

      while (v17);
    }

    else
    {
      v16 = 0;
    }

    v6 = sub_1952753A0(a1 + 12, v11, v13, a2 - *a1, v23, 0, 0, v5, a5) + v16;
  }

  else
  {
    if (*(a1 + 8))
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 12);
    if (v7)
    {
      v8 = 0;
      v9 = (a1 + 13);
      do
      {
        if (a5)
        {
          *v5++ = v7;
          LOWORD(a5) = a5 - 1;
        }

        else
        {
          LOWORD(a5) = 0;
        }

        ++v8;
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }

    v18 = *(a1 + 9);
    if (v18 < a5)
    {
      v5[v18] = 0;
    }

    if (v18)
    {
      v19 = v18 - 1;
      do
      {
        if (v19 < a5)
        {
          if ((a2 & 0xF) >= 0xA)
          {
            v20 = (a2 & 0xF) + 55;
          }

          else
          {
            v20 = a2 & 0xF | 0x30;
          }

          v5[v19] = v20;
        }

        a2 >>= 4;
        --v19;
      }

      while (v19 != -1);
    }

    v6 = v8 + v18;
  }

LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1952730AC(unsigned int *a1, unsigned int a2, int a3, char *a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = sub_195275494(a1, a2);
  if (*v10 == (a2 >> 5))
  {
    v11 = a2 & 0x1F;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v12 = sub_19527519C(a1 + a1[2] + ((v10[1] << 16) | v10[2]), v20, v18);
    v13 = *(v18 + v11);
    v14 = *MEMORY[0x1E69E9840];
    v15 = &v12[*(v20 + v11)];

    return sub_195275500(a1, v15, v13, a3, a4, a5);
  }

  else
  {
    if (a5)
    {
      *a4 = 0;
    }

    v17 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t sub_1952731FC(unsigned int a1, char *a2, int a3)
{
  v5 = a1;
  v6 = sub_195273954(a1);
  if (v6 <= 0x20)
  {
    v7 = off_1E740B708[v6];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = "unknown";
    if (a3)
    {
LABEL_3:
      *a2++ = 60;
      v8 = a3 - 1;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v11 = *v7;
  v9 = v7 - 1;
  v10 = v11;
  if (v11)
  {
    v12 = 1;
    do
    {
      v13 = v12;
      if (v8)
      {
        *a2++ = v10;
        --v8;
      }

      else
      {
        v8 = 0;
      }

      ++v12;
      v10 = v9[(v13 + 1)];
    }

    while (v10);
    v14 = v13 + 3;
  }

  else
  {
    v14 = 3;
  }

  if (v8)
  {
    *a2++ = 45;
    v15 = v8 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  if (v5)
  {
    v17 = v5;
    do
    {
      ++v16;
      v18 = v17 > 0xF;
      v17 >>= 4;
    }

    while (v18);
  }

  if (v16 <= 4)
  {
    v16 = 4;
  }

  if ((v16 > 0 || v5 != 0) && v15 != 0)
  {
    v21 = v16;
    do
    {
      if ((v5 & 0xFu) >= 0xA)
      {
        v22 = (v5 & 0xF) + 55;
      }

      else
      {
        v22 = v5 & 0xF | 0x30;
      }

      a2[v21 - 1] = v22;
      --v15;
      if (v21 < 2 && v5 < 0x10)
      {
        break;
      }

      --v21;
      v5 >>= 4;
    }

    while (v15);
  }

  if (v15)
  {
    a2[v16] = 62;
  }

  return (v14 + v16);
}

int32_t u_getISOComment(UChar32 c, char *dest, int32_t destCapacity, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0;
  }

  if (destCapacity < 0 || !dest && destCapacity)
  {
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  return u_terminateChars(dest, destCapacity, 0, pErrorCode);
}

uint64_t sub_195273954(unsigned int c)
{
  if (c >= 64976 && (c >> 4 < 0xFDF || HIWORD(c) <= 0x10u && (c & 0xFFFE) == 0xFFFE))
  {
    return 30;
  }

  else
  {
    v3 = u_charType(c);
    if (c >> 10 == 54)
    {
      v2 = 31;
    }

    else
    {
      v2 = 32;
    }

    if (v3 != 18)
    {
      return v3;
    }
  }

  return v2;
}

uint64_t sub_1952739D4(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = sub_195275494(a1, a2);
  v13 = v12;
  v14 = (a2 >> 5);
  v15 = a2;
  if (a6 == 2)
  {
    v16 = *v12;
    v15 = a2;
    if (v14 < v16)
    {
      v17 = 32 * v16;
      v15 = v17 >= a3 ? a3 : v17;
      result = sub_19527567C(a2, v15 - 1, a4, a5);
      if (!result)
      {
        return result;
      }
    }
  }

  v19 = a3 - 1;
  v20 = (a3 - 1) >> 5;
  if (v14 == v20)
  {
    if (*v13 == (a2 >> 5))
    {
      v21 = a1;
      v22 = v13;
      v23 = v15;
LABEL_37:

      return sub_195275760(v21, v22, v23, a3 - 1, a4, a5, a6);
    }

    if (a6 != 2)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v24 = a1 + *(a1 + 4) + 6 * *(a1 + *(a1 + 4)) + 2;
  v25 = *v13;
  if (v14 == v25)
  {
    if ((v15 & 0x1F) != 0)
    {
      result = sub_195275760(a1, v13, v15, (32 * v14) | 0x1F, a4, a5, a6);
      if (!result)
      {
        return result;
      }

      v13 += 3;
      v20 = (a3 - 1) >> 5;
    }
  }

  else if (v14 > v25)
  {
    v13 += 3;
    if (v13 < v24 && a6 == 2)
    {
      v26 = *v13;
      if (v14 < v26)
      {
        v27 = 32 * v26;
        if (v27 >= a3)
        {
          v27 = a3;
        }

        result = sub_19527567C(v15, v27 - 1, a4, a5);
        v20 = v19 >> 5;
        if (!result)
        {
          return result;
        }
      }
    }
  }

  if (v13 >= v24)
  {
LABEL_40:
    result = 1;
    if (a6 != 2 || v13 != v24)
    {
      return result;
    }

    v34 = 32 * *(v13 - 3) + 32;
    if (v34 <= v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = v34;
    }

LABEL_45:
    if (a3 >= 1114112)
    {
      v35 = 1114112;
    }

    else
    {
      v35 = a3;
    }

    return sub_19527567C(v15, v35 - 1, a4, a5);
  }

  v28 = (v19 >> 5);
  v29 = *v13;
  if (v28 <= v29)
  {
LABEL_35:
    if (v29 == v20)
    {
      v23 = v19 & 0xFFFFFFE0;
      v21 = a1;
      v22 = v13;
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  v36 = v20;
  v13 += 3;
  while (1)
  {
    LODWORD(v15) = 32 * v29;
    result = sub_195275760(a1, (v13 - 3), 32 * v29, (32 * (v29 & 0x3FFFFFF)) | 0x1F, a4, a5, a6);
    if (!result)
    {
      return result;
    }

    if (v13 >= v24)
    {
      goto LABEL_40;
    }

    if (a6 == 2)
    {
      v30 = *v13;
      v31 = *(v13 - 3);
      if (v31 + 1 < v30)
      {
        v32 = 32 * v30;
        if (v32 >= a3)
        {
          v32 = a3;
        }

        result = sub_19527567C((32 * v31 + 32), v32 - 1, a4, a5);
        if (!result)
        {
          return result;
        }
      }
    }

    v33 = *v13;
    v13 += 3;
    v29 = v33;
    if (v28 <= v33)
    {
      v13 -= 3;
      LOWORD(v20) = v36;
      goto LABEL_35;
    }
  }
}

uint64_t sub_195273EE0(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t), uint64_t a5, uint64_t a6)
{
  v58 = *MEMORY[0x1E69E9840];
  if ((a6 & 0xFFFFFFFD) == 0)
  {
    v12 = a2;
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    if (*(a1 + 8) == 1)
    {
      v54 = 0;
      v55 = 0;
      memset(v53, 0, sizeof(v53));
      memset(v52, 0, sizeof(v52));
      v26 = a1 + 12;
      v27 = *(a1 + 9);
      v28 = (a1 + 12 + 2 * v27);
      v31 = *v28;
      v29 = v28 + 1;
      v30 = v31;
      if (v31)
      {
        v32 = 0;
        v33 = v56;
        do
        {
          *v33++ = v30;
          ++v32;
          v34 = *v29++;
          v30 = v34;
        }

        while (v34);
      }

      else
      {
        v32 = 0;
        v33 = v56;
      }

      v35 = sub_1952753A0(a1 + 12, v27, v29, a2 - *a1, &v54, v53, v52, v33, 200 - v32);
      if (!a4(a5, v12, a6, v56, (v35 + v32)))
      {
LABEL_47:
        result = 0;
        goto LABEL_3;
      }

      v36 = (v27 - 1);
      while (1)
      {
        v12 = (v12 + 1);
        if (v12 >= a3)
        {
          break;
        }

        v37 = *(&v54 + v36) + 1;
        v38 = (v27 - 1);
        v39 = v27 - 1;
        if (*(v26 + 2 * v36) <= v37)
        {
          do
          {
            *(&v54 + v38) = 0;
            *(v52 + v38) = *(v53 + v38);
            v38 = --v39;
            v37 = *(&v54 + v39) + 1;
          }

          while (*(v26 + 2 * v39) <= v37);
        }

        *(&v54 + v38) = v37;
        v40 = *(v52 + v38);
          ;
        }

        *(v52 + v38) = v40;
        v42 = v32;
        v43 = v33;
        if (v27)
        {
          v44 = 0;
          v43 = v33;
          v42 = v32;
          do
          {
            v45 = *(v52 + v44);
            v46 = *v45;
            if (*v45)
            {
              v47 = v45 + 1;
              do
              {
                *v43++ = v46;
                ++v42;
                v48 = *v47++;
                v46 = v48;
              }

              while (v48);
            }

            ++v44;
          }

          while (v44 != v27);
        }

        *v43 = 0;
        if (!a4(a5, v12, a6, v56, v42))
        {
          goto LABEL_47;
        }
      }
    }

    else if (!*(a1 + 8))
    {
      v13 = sub_195272F20(a1, a2, a6, v56, 200);
      if (v13)
      {
        v14 = v13;
        result = a4(a5, v12, a6, v56, v13);
        if (!result)
        {
          goto LABEL_3;
        }

        v15 = &v55 + 5;
        do
        {
          v16 = v15[3];
          ++v15;
        }

        while (v16);
        while (1)
        {
          v12 = (v12 + 1);
          if (v12 >= a3)
          {
            break;
          }

          v17 = v15[1];
          v18 = (v17 - 48) >= 9 && (v17 - 65) >= 5;
          v19 = v15 + 1;
          v20 = v15;
          if (v18)
          {
            do
            {
              if (v17 == 70)
              {
                v20[1] = 48;
              }

              else if (v17 == 57)
              {
                v19 = (v20 + 1);
                v25 = 65;
                goto LABEL_26;
              }

              v21 = *v20--;
              v17 = v21;
              v22 = v21 - 65;
            }

            while ((v21 - 48) >= 9 && v22 >= 5);
            v19 = (v20 + 1);
          }

          v25 = v17 + 1;
LABEL_26:
          *v19 = v25;
          v24 = a4(a5, v12, a6, v56, v14);
          result = 0;
          if (!v24)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  result = 1;
LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t uprv_getMaxCharNameLength()
{
  v1 = 0;
  if (sub_195274258(&v1))
  {
    return dword_1EAEC9A40;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195274258(UErrorCode *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!dword_1EAEC9A40)
  {
    if (*a1 > 0)
    {
      goto LABEL_4;
    }

    if (atomic_load_explicit(&dword_1EAEC9A64, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9A64))
    {
      if (dword_1EAEC9A68 >= 1)
      {
        result = 0;
        *a1 = dword_1EAEC9A68;
        goto LABEL_5;
      }
    }

    else
    {
      sub_195275248(a1);
      dword_1EAEC9A68 = *a1;
      icu::umtx_initImplPostInit(&dword_1EAEC9A64);
    }

    if (*a1 > 0)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }

    for (i = 0; i != 19; ++i)
    {
      *(dword_1EAEC9A44 + ((a0123456789abcd[i] >> 3) & 0x1C)) |= 1 << a0123456789abcd[i];
    }

    v5 = qword_1EAEC9A38;
    v6 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 12));
    v7 = *v6;
    if (!*v6)
    {
      v8 = 0;
LABEL_52:
      for (j = 0; j != 33; ++j)
      {
        v26 = off_1E740B708[j];
        v27 = *v26;
        if (*v26)
        {
          v28 = (v26 + 1);
          v29 = 9;
          do
          {
            dword_1EAEC9A44[v27 >> 5] |= 1 << v27;
            v30 = *v28++;
            v27 = v30;
            ++v29;
          }

          while (v30);
        }

        else
        {
          v29 = 9;
        }

        if (v29 > v8)
        {
          v8 = v29;
        }
      }

      v31 = *(v5 + 8);
      v32 = *v5;
      v33 = malloc_type_malloc(v31, 0x100004077774924uLL);
      v34 = v33;
      if (v33)
      {
        bzero(v33, v31);
      }

      v45 = qword_1EAEC9A38;
      v35 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 4));
      v36 = *v35;
      if (*v35)
      {
        v52 = 0;
        memset(v51, 0, sizeof(v51));
        memset(v49, 0, sizeof(v49));
        v37 = v35 + 1;
        v50 = 0;
        do
        {
          v47 = v36;
          v46 = v37;
          v38 = sub_19527519C((v45 + *(v45 + 8) + ((v37[1] << 16) | v37[2])), v51, v49);
          for (k = 0; k != 64; k += 2)
          {
            v40 = &v38[*(v51 + k)];
            v48 = v40;
            v41 = *(v49 + k);
            if (*(v49 + k))
            {
              v42 = &v40[v41];
              v43 = sub_195275A70(v5 + 18, v31, v5 + v32, v34, &v48, &v40[v41]);
              if (v43 > v8)
              {
                v8 = v43;
              }

              if (v48 != v42)
              {
                v44 = sub_195275A70(v5 + 18, v31, v5 + v32, v34, &v48, v42);
                if (v44 > v8)
                {
                  v8 = v44;
                }
              }
            }
          }

          v37 = v46 + 3;
          v36 = v47 - 1;
        }

        while (v47 > 1);
      }

      if (v34)
      {
        free(v34);
      }

      dword_1EAEC9A40 = v8;
      goto LABEL_2;
    }

    v8 = 0;
    v9 = v6 + 1;
    while (*(v9 + 8) != 1)
    {
      if (!*(v9 + 8))
      {
        v10 = *(v9 + 12);
        if (*(v9 + 12))
        {
          v11 = 0;
          do
          {
            dword_1EAEC9A44[v10 >> 5] |= 1 << v10;
            v10 = *(v9 + v11++ + 13);
          }

          while (v10);
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v17 = v11 + *(v9 + 9);
        if (v17 > v8)
        {
          v8 = v17;
        }
      }

LABEL_49:
      v9 = (v9 + *(v9 + 5));
      if (!--v7)
      {
        goto LABEL_52;
      }
    }

    v12 = v9 + 3;
    v13 = *(v9 + 9);
    v14 = v9 + 2 * v13 + 12;
    v15 = *v14;
    if (*v14)
    {
      v16 = 0;
      do
      {
        dword_1EAEC9A44[v15 >> 5] |= 1 << v15;
        v15 = *(v9 + 2 * v13 + v16++ + 13);
      }

      while (v15);
      if (!v13)
      {
LABEL_47:
        if (v16 > v8)
        {
          v8 = v16;
        }

        goto LABEL_49;
      }
    }

    else
    {
      LODWORD(v16) = 0;
      if (!*(v9 + 9))
      {
        goto LABEL_47;
      }
    }

    v18 = 0;
    v19 = &v14[v16 + 1];
    do
    {
      v20 = *(v12 + v18);
      if (*(v12 + v18))
      {
        v21 = 0;
        do
        {
          v22 = *v19;
          if (*v19)
          {
            v23 = 0;
            do
            {
              dword_1EAEC9A44[v22 >> 5] |= 1 << v22;
              v22 = v19[++v23];
            }

            while (v22);
          }

          else
          {
            LODWORD(v23) = 0;
          }

          v19 += v23 + 1;
          if (v23 > v21)
          {
            v21 = v23;
          }

          v24 = __OFSUB__(v20--, 1);
        }

        while (!((v20 < 0) ^ v24 | (v20 == 0)));
      }

      else
      {
        v21 = 0;
      }

      LODWORD(v16) = v21 + v16;
      ++v18;
    }

    while (v18 != v13);
    goto LABEL_47;
  }

LABEL_2:
  result = 1;
LABEL_5:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void uprv_getCharNameCharacters(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(us, 0, sizeof(us));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v8 = 0;
  if (sub_195274258(&v8))
  {
    LODWORD(v2) = 0;
    for (i = 0; i != 256; ++i)
    {
      if ((dword_1EAEC9A44[i >> 5] >> i))
      {
        v9[v2] = i;
        LODWORD(v2) = v2 + 1;
      }
    }

    u_charsToUChars(v9, us, v2);
    if (v2 >= 1)
    {
      v2 = v2;
      v4 = v9;
      v5 = us;
      do
      {
        v6 = *v5++;
        if (v6 || !*v4)
        {
          (*(a1 + 8))(*a1);
        }

        ++v4;
        --v2;
      }

      while (v2);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t uchar_swapNames(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v127[64] = *MEMORY[0x1E69E9840];
  v13 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a5 || *a5 > 0)
  {
    goto LABEL_3;
  }

  v21 = *(a2 + 12);
  if (__PAIR64__(*(a2 + 13), v21) != 0x6E00000075 || *(a2 + 14) != 97 || *(a2 + 15) != 109 || *(a2 + 16) != 1)
  {
    v106 = *(a2 + 15);
    v107 = *(a2 + 16);
    v105 = *(a2 + 14);
    udata_printError(a1, "uchar_swapNames(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized as unames.icu\n", v14, v15, v16, v17, v18, v19, v21);
    result = 0;
    v27 = 16;
    goto LABEL_16;
  }

  v22 = v13;
  v23 = (a2 + v13);
  if (a4)
  {
    v24 = (a4 + v13);
  }

  else
  {
    v24 = 0;
  }

  if (v10 < 0)
  {
    v29 = (*(a1 + 16))(v23[3]);
    v30 = (*(a1 + 16))(*(v23 + v29));
    v31 = v29 + 4;
    if (v30)
    {
      v32 = v30;
      do
      {
        v31 += (*(a1 + 8))(*(v23 + v31 + 10));
        --v32;
      }

      while (v32);
    }

    goto LABEL_21;
  }

  v25 = v10 - v13;
  if (v10 - v13 < 20 || (v26 = (*(a1 + 16))(v23[3]), v25 < v26))
  {
    udata_printError(a1, "uchar_swapNames(): too few bytes (%d after header) for unames.icu\n", v14, v15, v16, v17, v18, v19, (v10 - v22));
    result = 0;
    v27 = 8;
LABEL_16:
    *a5 = v27;
    goto LABEL_17;
  }

  v109 = v26;
  bzero(v126, 0x400uLL);
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  if (v23 != v24)
  {
    memcpy(v24, v23, (v10 - v22));
  }

  v114 = (v10 - v22);
  v110 = (*(a1 + 16))(*v23);
  v112 = (*(a1 + 16))(v23[1]);
  v108 = (*(a1 + 16))(v23[2]);
  (*(a1 + 56))(a1, v23, 16, v24, a5);
  v115 = v23;
  v34 = *(v23 + 8);
  v33 = v23 + 4;
  v35 = (*(a1 + 8))(v34);
  (*(a1 + 48))(a1, v33, 2, v24 + 16, a5);
  v36 = v33 + 1;
  if (v35 >= 0x201)
  {
    v37 = 512;
  }

  else
  {
    v37 = v35;
  }

  if (!v37)
  {
    goto LABEL_31;
  }

  v116 = v24;
  v38 = v126;
  v39 = v37;
  v40 = v36;
  do
  {
    v41 = *v40++;
    *v38++ = udata_readInt16(a1, v41);
    --v39;
  }

  while (v39);
  v24 = v116;
  if (v37 <= 0x1FF)
  {
LABEL_31:
    bzero(v126 + (2 * v37), (1024 - 2 * v37));
  }

  sub_195274FC4(a1, v126, v35, v125, a5);
  if (v35 >= 0x100)
  {
    v42 = v35 - 256;
  }

  else
  {
    v42 = 0;
  }

  sub_195274FC4(a1, v127, v42, v124, a5);
  if (*a5 > 0)
  {
    goto LABEL_3;
  }

  v43 = malloc_type_malloc((2 * v35), 0x1000040BDFB0063uLL);
  if (!v43)
  {
    udata_printError(a1, "out of memory swapping %u unames.icu tokens\n", v44, v45, v46, v47, v48, v49, v35);
    v55 = 7;
    goto LABEL_45;
  }

  v50 = v43;
  v117 = v24;
  if (v35 >= 0x100)
  {
    v51 = 256;
  }

  else
  {
    v51 = v35;
  }

  if (v35)
  {
    v52 = v125;
    v53 = v51;
    do
    {
      v54 = *v52++;
      (*(a1 + 48))(a1, v36++, 2, v50 + 2 * v54, a5);
      --v53;
    }

    while (v53);
  }

  else
  {
    LODWORD(v51) = 0;
  }

  v56 = v115;
  if (v51 < v35)
  {
    v57 = v51;
    v58 = v22 + 2 * v51 + a2 + 18;
    do
    {
      (*(a1 + 48))(a1, v58, 2, v50 + 2 * (v57 & 0x7FFFFF00) + 2 * *(v124 + v57), a5);
      ++v57;
      v58 += 2;
    }

    while (v35 != v57);
  }

  v59 = v117;
  memcpy(v117 + 18, v50, (2 * v35));
  free(v50);
  udata_swapInvStringBlock(a1, v115 + v110, v112 - v110, &v117[v110], a5);
  if (*a5 >= 1)
  {
    udata_printError(a1, "uchar_swapNames(token strings) failed\n", v60, v61, v62, v63, v64, v65, v104);
    goto LABEL_3;
  }

  v66 = (*(a1 + 8))(*(v115 + v112));
  (*(a1 + 48))(a1, v115 + v112, (6 * v66 + 2), &v117[v112], a5);
  if (*(a1 + 1) != *(a1 + 3))
  {
    v123 = 0;
    v122 = 0u;
    memset(v121, 0, sizeof(v121));
    v120 = 0;
    v119 = 0u;
    memset(v118, 0, sizeof(v118));
    if (v109 - v108 >= 0x21)
    {
      v67 = v109 - v108;
      v68 = &v117[v108];
      v69 = v115 + v108;
      do
      {
        v70 = v69;
        v69 = sub_19527519C(v69, v121, v118);
        v71 = v69 - v70;
        v68 += v69 - v70;
        v72 = HIWORD(v119) + HIWORD(v122);
        if (v72)
        {
          v73 = HIWORD(v119) + HIWORD(v122);
          do
          {
            v74 = *v69;
            *v68 = *(v125 + v74);
            v75 = v126[v74];
            if (v75 == -2)
            {
              v76 = *(v124 + v69[1]);
              v69 += 2;
              v68[1] = v76;
              v68 += 2;
            }

            else
            {
              v75 = -1;
              ++v69;
              ++v68;
            }

            v73 += v75;
          }

          while (v73);
        }

        v67 = v67 - v71 - v72;
      }

      while (v67 >= 0x21);
    }

    v56 = v115;
    v59 = v117;
  }

  v77 = (v56 + v109);
  v78 = (*(a1 + 16))(*v77);
  (*(a1 + 56))(a1, v77, 4, &v59[v109], a5);
  v31 = v109 + 4;
  v113 = v78;
  if (!v78)
  {
LABEL_21:
    result = v31 + v22;
    goto LABEL_17;
  }

  v85 = 0;
  v111 = v22 + a2 + 11;
  while (1)
  {
    if (v31 > v114)
    {
      udata_printError(a1, "uchar_swapNames(): too few bytes (%d after header) for unames.icu algorithmic range %u\n", v79, v80, v81, v82, v83, v84, v114);
      v55 = 8;
      goto LABEL_45;
    }

    v86 = v56 + v31;
    v87 = &v117[v31];
    v88 = (*(a1 + 8))(*(v86 + 10));
    (*(a1 + 56))(a1, v86, 8, v87, a5);
    (*(a1 + 48))(a1, v86 + 10, 2, v87 + 10, a5);
    if (*(v86 + 8) == 1)
    {
      v96 = *(v86 + 9);
      v97 = v86 + 12;
      v98 = v87 + 12;
      (*(a1 + 48))(a1, v97, (2 * v96), v98, a5);
      v99 = v88 - 2 * v96;
      v100 = (v99 - 12);
      LODWORD(v101) = v99 - 11;
      v102 = (v111 + v31 + 2 * v96 + v100);
      while (v100)
      {
        --v100;
        v103 = *v102--;
        v101 = (v101 - 1);
        if (!v103)
        {
          goto LABEL_75;
        }
      }

      v101 = 0;
LABEL_75:
      (*(a1 + 72))(a1, v97 + 2 * v96, v101, &v98[2 * v96], a5);
      goto LABEL_76;
    }

    if (*(v86 + 8))
    {
      break;
    }

    v95 = strlen((v86 + 12));
    (*(a1 + 72))(a1, v86 + 12, v95, v87 + 12, a5);
    if (*a5 >= 1)
    {
      udata_printError(a1, "uchar_swapNames(prefix string of algorithmic range %u) failed\n", v79, v80, v81, v82, v83, v84, v85);
      goto LABEL_3;
    }

LABEL_76:
    v31 += v88;
    v85 = (v85 + 1);
    v56 = v115;
    if (v85 == v113)
    {
      goto LABEL_21;
    }
  }

  udata_printError(a1, "uchar_swapNames(): unknown type %u of algorithmic range %u\n", v89, v90, v91, v92, v93, v94, *(v86 + 8));
  v55 = 16;
LABEL_45:
  *a5 = v55;
LABEL_3:
  result = 0;
LABEL_17:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195274FC4(uint64_t result, uint64_t a2, unsigned int a3, _OWORD *a4, int *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v6 = result;
    if (*(result + 1) == *(result + 3))
    {
      v7 = 0;
      v8 = xmmword_19547BE60;
      v9.i64[0] = 0x1010101010101010;
      v9.i64[1] = 0x1010101010101010;
      do
      {
        a4[v7++] = v8;
        v8 = vaddq_s8(v8, v9);
      }

      while (v7 != 16);
    }

    else
    {
      a4[14] = 0u;
      a4[15] = 0u;
      a4[12] = 0u;
      a4[13] = 0u;
      a4[10] = 0u;
      a4[11] = 0u;
      a4[8] = 0u;
      a4[9] = 0u;
      a4[6] = 0u;
      a4[7] = 0u;
      a4[4] = 0u;
      a4[5] = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      *a4 = 0u;
      a4[1] = 0u;
      memset(v29, 0, sizeof(v29));
      if (a3 >= 2)
      {
        if (a3 >= 0x100)
        {
          v12 = 256;
        }

        else
        {
          v12 = a3;
        }

        v27 = 0;
        for (i = 1; i != v12; ++i)
        {
          if (*(a2 + 2 * i) == -1)
          {
            v28 = i;
            result = (*(v6 + 72))(v6, &v28, 1, &v27, a5);
            if (*a5 >= 1)
            {
              v26 = *(v6 + 1);
              result = udata_printError(v6, "unames/makeTokenMap() finds variant character 0x%02x used (input charset family %d)\n", v14, v15, v16, v17, v18, v19, i);
              goto LABEL_22;
            }

            v20 = v27;
            *(a4 + v28) = v27;
            *(v29 + v20) = 1;
          }
        }

        v21 = 1;
        v22 = 1;
        do
        {
          if (!*(a4 + v21))
          {
            do
            {
              v23 = v22;
            }

            while (*(v29 + v22++));
            *(a4 + v21) = v23;
          }

          ++v21;
        }

        while (v21 != v12);
      }
    }
  }

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *sub_19527519C(unsigned __int8 *result, _WORD *a2, _WORD *a3)
{
  LOWORD(v3) = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v7 = *result++;
    v6 = v7;
    if (v3 < 0xCu)
    {
      if (v6 > 0xBF)
      {
        LOWORD(v3) = 0;
        v9 = (v6 & 0x3F) + 12;
        *a2++ = v4;
        *a3++ = v9;
        v4 += v9;
        ++v5;
        continue;
      }

      v8 = v6 >> 4;
    }

    else
    {
      v8 = ((v6 >> 4) & 0xFFFFFFCF | (16 * (v3 & 3))) + 12;
    }

    *a2 = v4;
    v3 = v6 & 0xF;
    *a3 = v8;
    v4 += v8;
    if (v3 > 0xB)
    {
      ++v5;
      ++a2;
      ++a3;
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      a3[1] = v3;
      a3 += 2;
      v4 += v3;
      v5 += 2;
    }
  }

  while (v5 < 0x20);
  return result;
}

void sub_195275248(UErrorCode *a1)
{
  v2 = udata_openChoice(0, "icu", "unames", sub_1952752E4, 0, a1);
  qword_1EAEC9A70 = v2;
  if (*a1 < 1)
  {
    qword_1EAEC9A38 = udata_getMemory(v2);
  }

  else
  {
    qword_1EAEC9A70 = 0;
  }

  sub_1952376A4(0x13u, sub_195275348);
}

uint64_t sub_195275348()
{
  if (qword_1EAEC9A70)
  {
    udata_close(qword_1EAEC9A70);
    qword_1EAEC9A70 = 0;
  }

  if (qword_1EAEC9A38)
  {
    qword_1EAEC9A38 = 0;
  }

  atomic_store(0, &dword_1EAEC9A64);
  dword_1EAEC9A40 = 0;
  return 1;
}

uint64_t sub_1952753A0(uint64_t a1, __int16 a2, unsigned __int8 *a3, unsigned int a4, _WORD *a5, void *a6, void *a7, _BYTE *a8, __int16 a9)
{
  if (a2 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (a2 - 1);
    v11 = v10;
    do
    {
      v12 = a4;
      a4 /= *(a1 + 2 * v11);
      a5[v11] = v12 - a4 * *(a1 + 2 * v11);
      --v11;
    }

    while (v11);
  }

  v13 = 0;
  v14 = 0;
  *a5 = a4;
  if (a6)
  {
LABEL_7:
    *a6++ = a3;
    goto LABEL_8;
  }

  while (1)
  {
LABEL_8:
    v15 = a5[v13];
    if (a5[v13])
    {
      do
      {
          ;
        }

        --v15;
      }

      while (v15);
    }

    if (a7)
    {
      *a7++ = a3;
    }

    while (1)
    {
      v18 = *a3++;
      v17 = v18;
      if (!v18)
      {
        break;
      }

      if (a9)
      {
        *a8++ = v17;
        --a9;
      }

      else
      {
        a9 = 0;
      }

      ++v14;
    }

    if (v13 == v10)
    {
      break;
    }

    for (i = *(a1 + 2 * v13) + ~a5[v13]; i; --i)
    {
        ;
      }
    }

    ++v13;
    if (a6)
    {
      goto LABEL_7;
    }
  }

  if (a9)
  {
    *a8 = 0;
  }

  return v14;
}

unsigned __int16 *sub_195275494(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + *(a1 + 4));
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  if (v5 < 2)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v4;
    do
    {
      v9 = (v4 + v6) >> 1;
      if ((a2 >> 5) < v3[3 * v9])
      {
        v8 = v9;
      }

      else
      {
        v7 = v9;
      }

      v6 = v7;
      v4 = v8;
    }

    while (v8 - 1 > v7);
    v10 = 3 * v7;
  }

  return &v3[v10];
}

uint64_t sub_195275500(unsigned int *a1, unsigned __int8 *a2, int a3, int a4, char *a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *a1;
  if ((a4 & 0xFFFFFFFD) != 0)
  {
    if (v6 >= 0x3C && *(a1 + 68) != -1)
    {
      goto LABEL_42;
    }

    v8 = a4;
    do
    {
      if (a3)
      {
        do
        {
          --a3;
          v9 = *a2++;
        }

        while (v9 != 59 && a3 != 0);
      }

      else
      {
        a3 = 0;
      }

      v11 = __OFSUB__(v8--, 1);
    }

    while (!((v8 < 0) ^ v11 | (v8 == 0)));
  }

  if (!a3)
  {
LABEL_42:
    LOWORD(v12) = 0;
    goto LABEL_43;
  }

  v12 = 0;
  v13 = a1 + 18;
  v14 = a1 + v7;
  v15 = a1 + v7 + 1;
  do
  {
    v16 = a2;
    v17 = a3;
    while (1)
    {
      a3 = v17 - 1;
      v19 = *a2++;
      v18 = v19;
      if (v6 <= v19)
      {
        if (v18 == 59)
        {
          goto LABEL_43;
        }

LABEL_29:
        if (a6)
        {
          *a5++ = v18;
          --a6;
        }

        else
        {
          a6 = 0;
        }

        ++v12;
        goto LABEL_40;
      }

      v20 = *&v13[2 * v18];
      if (v20 == 65534)
      {
        a2 = v16 + 2;
        v20 = *&v13[(2 * v16[1]) | (v18 << 9)];
        a3 = v17 - 2;
      }

      if (v20 != 0xFFFF)
      {
        break;
      }

      if (v18 != 59)
      {
        goto LABEL_29;
      }

      if (a4 == 2 && !v12)
      {
        v12 = 0;
        if (*(a1 + 68) == -1)
        {
          v16 = a2;
          v17 = a3;
          if (a3)
          {
            continue;
          }
        }
      }

      goto LABEL_43;
    }

    v21 = v14[v20];
    if (v21)
    {
      v22 = (v15 + v20);
      do
      {
        if (a6)
        {
          *a5++ = v21;
          --a6;
        }

        else
        {
          a6 = 0;
        }

        ++v12;
        v23 = *v22++;
        v21 = v23;
      }

      while (v23);
    }

LABEL_40:
    ;
  }

  while (a3);
LABEL_43:
  if (a6)
  {
    *a5 = 0;
  }

  return v12;
}

uint64_t sub_19527567C(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t), uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 && (v4 = a1, v12 = 0, memset(v11, 0, sizeof(v11)), a1 <= a2))
  {
    v7 = a2 + 1;
    while (1)
    {
      v8 = sub_1952731FC(v4, v11, 200);
      *(v11 + v8) = 0;
      if (v8)
      {
        result = a3(a4, v4, 2, v11, v8);
        if (!result)
        {
          break;
        }
      }

      v4 = (v4 + 1);
      if (v7 == v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195275760(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, _OWORD *), uint64_t a6, uint64_t a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v13 = sub_19527519C(&a1[*(a1 + 2) + ((*(a2 + 2) << 16) | *(a2 + 4))], v43, v41);
  if (!a5)
  {
    if (a3 > a4)
    {
      goto LABEL_57;
    }

    v18 = (a1 + 18);
    v19 = *(a1 + 8);
    while (1)
    {
      v20 = &v13[*(v43 + (a3 & 0x1F))];
      v21 = *(v41 + (a3 & 0x1F));
      if ((a7 & 0xFFFFFFFD) != 0)
      {
        if (v19 >= 0x3C)
        {
          v22 = *a6;
          if (*(a1 + 68) != -1)
          {
            goto LABEL_54;
          }
        }

        v23 = a7;
        do
        {
          if (v21)
          {
            do
            {
              --v21;
              v24 = *v20++;
              v25 = v24 == 59 || v21 == 0;
            }

            while (!v25);
          }

          else
          {
            v21 = 0;
          }

          v26 = __OFSUB__(v23--, 1);
        }

        while (!((v23 < 0) ^ v26 | (v23 == 0)));
      }

      v22 = *a6;
      if (v21)
      {
        v22 = *a6;
        while (2)
        {
          v28 = a7 == 2 && v22 == *a6;
          v29 = v20;
          v30 = v21;
          while (1)
          {
            v21 = v30 - 1;
            v32 = *v20++;
            v31 = v32;
            if (v19 <= v32)
            {
              break;
            }

            v33 = *&v18[2 * v31];
            if (v33 == 65534)
            {
              v20 = v29 + 2;
              v33 = *&v18[(2 * v29[1]) | (v31 << 9)];
              v21 = v30 - 2;
            }

            if (v33 != 0xFFFF)
            {
              v35 = &a1[*a1 + v33];
              while (1)
              {
                v36 = *v35;
                if (!*v35)
                {
                  goto LABEL_47;
                }

                ++v35;
                v37 = *v22++;
                if (v36 != v37)
                {
                  goto LABEL_55;
                }
              }
            }

            if (v31 != 59)
            {
              goto LABEL_46;
            }

            if (!v28)
            {
              goto LABEL_54;
            }

            if (*(a1 + 68) == -1)
            {
              v29 = v20;
              v30 = v21;
              if (v21)
              {
                continue;
              }
            }

            v22 = *a6;
            goto LABEL_54;
          }

          if (v31 == 59)
          {
            break;
          }

LABEL_46:
          v34 = *v22++;
          if (v31 != v34)
          {
            goto LABEL_55;
          }

LABEL_47:
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_54:
      if (!*v22)
      {
        result = 0;
        *(a6 + 8) = a3;
        goto LABEL_58;
      }

LABEL_55:
      v25 = a3 == a4;
      LODWORD(a3) = a3 + 1;
      if (v25)
      {
        goto LABEL_57;
      }
    }
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  if (a3 > a4)
  {
LABEL_57:
    result = 1;
    goto LABEL_58;
  }

  v14 = a4 + 1;
  while (1)
  {
    v15 = sub_195275500(a1, &v13[*(v43 + (a3 & 0x1F))], *(v41 + (a3 & 0x1F)), a7, v39, 200);
    v16 = v15;
    if (a7 == 2 && !v15)
    {
      v16 = sub_1952731FC(a3, v39, 200);
      *(v39 + v16) = 0;
    }

    if (v16)
    {
      result = a5(a6, a3, a7, v39);
      if (!result)
      {
        break;
      }
    }

    a3 = (a3 + 1);
    if (v14 == a3)
    {
      goto LABEL_57;
    }
  }

LABEL_58:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195275A70(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, unsigned __int8 *a6)
{
  v6 = *a5;
  if (*a5 != a6)
  {
    result = 0;
    v9 = a3 + 1;
    v10 = *a5;
    while (1)
    {
      v12 = *v6++;
      v11 = v12;
      if (v12 == 59)
      {
        goto LABEL_28;
      }

      if (v11 >= a2)
      {
        *(dword_1EAEC9A44 + ((v11 >> 3) & 0x1C)) |= 1 << v11;
      }

      else
      {
        v13 = *(a1 + 2 * v11);
        if (v13 == 65534)
        {
          v6 = v10 + 2;
          LODWORD(v11) = v10[1] | (v11 << 8);
          v13 = *(a1 + 2 * v11);
        }

        if (v13 != 0xFFFF)
        {
          if (a4)
          {
            LODWORD(v14) = *(a4 + v11);
            if (!*(a4 + v11))
            {
              v15 = *(a3 + v13);
              if (*(a3 + v13))
              {
                v14 = 0;
                v16 = v9 + v13;
                do
                {
                  dword_1EAEC9A44[v15 >> 5] |= 1 << v15;
                  v15 = *(v16 + v14++);
                }

                while (v15);
              }

              else
              {
                LODWORD(v14) = 0;
              }

              *(a4 + v11) = v14;
            }
          }

          else
          {
            v17 = *(a3 + v13);
            if (*(a3 + v13))
            {
              v14 = 0;
              v18 = v9 + v13;
              do
              {
                dword_1EAEC9A44[v17 >> 5] |= 1 << v17;
                v17 = *(v18 + v14++);
              }

              while (v17);
            }

            else
            {
              LODWORD(v14) = 0;
            }
          }

          result = (v14 + result);
          goto LABEL_25;
        }

        dword_1EAEC9A44[v11 >> 5] |= 1 << v11;
      }

      result = (result + 1);
LABEL_25:
      v10 = v6;
      if (v6 == a6)
      {
        goto LABEL_28;
      }
    }
  }

  result = 0;
LABEL_28:
  *a5 = v6;
  return result;
}

uint64_t sub_195275C20(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t icu::UnifiedCache::getInstance(icu::UnifiedCache *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    if (atomic_load_explicit(&dword_1ED442AA0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED442AA0))
    {
      sub_195275CF0();
    }

    if (dword_1ED442AA4 >= 1)
    {
      *this = dword_1ED442AA4;
    }
  }

  if (*this >= 1)
  {
    return 0;
  }

  else
  {
    return qword_1ED442A88;
  }
}

void sub_195275CF0()
{
  sub_1952376A4(0x1Bu, sub_195276AC8);
  qword_1ED442AA8 = 850045863;
  unk_1ED442AB0 = 0u;
  unk_1ED442AC0 = 0u;
  unk_1ED442AD0 = 0u;
  qword_1ED442AE0 = 0;
  qword_1ED442A90 = &qword_1ED442AA8;
  qword_1ED442AE8 = 1018212795;
  unk_1ED442AF0 = 0u;
  unk_1ED442B00 = 0u;
  qword_1ED442B10 = 0;
  qword_1ED442A98 = &qword_1ED442AE8;
  operator new();
}

uint64_t icu::UnifiedCache::UnifiedCache(uint64_t this, UErrorCode *a2)
{
  *this = &unk_1F0935918;
  *(this + 8) = 0;
  *(this + 16) = xmmword_19547BE80;
  *(this + 32) = 100;
  *(this + 40) = 0;
  *(this + 48) = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return this;
}

void icu::UnifiedCache::setEvictionPolicy(icu::UnifiedCache *this, int a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if ((a3 | a2) < 0)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v7 = qword_1ED442A90;
      std::mutex::lock(qword_1ED442A90);
      *(this + 7) = a2;
      *(this + 8) = a3;

      std::mutex::unlock(v7);
    }
  }
}

uint64_t icu::UnifiedCache::unusedCount(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v3 = uhash_count(*(this + 1)) - *(this + 6);
  std::mutex::unlock(v2);
  return v3;
}

uint64_t icu::UnifiedCache::autoEvictedCount(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v3 = *(this + 5);
  std::mutex::unlock(v2);
  return v3;
}

uint64_t icu::UnifiedCache::keyCount(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v3 = uhash_count(*(this + 1));
  std::mutex::unlock(v2);
  return v3;
}

void icu::UnifiedCache::flush(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
    ;
  }

  std::mutex::unlock(v2);
}

uint64_t icu::UnifiedCache::_flush(icu::UnifiedCache *this, int a2)
{
  v4 = uhash_count(*(this + 1));
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    do
    {
      Element = icu::UnifiedCache::_nextElement(this);
      if (!Element)
      {
        break;
      }

      v8 = Element;
      if (a2 || icu::UnifiedCache::_isEvictable(this, Element))
      {
        v9 = *(v8 + 8);
        uhash_removeElement(*(this + 1), v8);
        icu::UnifiedCache::removeSoftRef(this, v9);
        v6 = 1;
      }

      --v5;
    }

    while (v5);
  }

  return v6;
}

void icu::UnifiedCache::handleUnreferencedObject(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  --*(this + 6);
  icu::UnifiedCache::_runEvictionSlice(this);

  std::mutex::unlock(v2);
}

uint64_t icu::UnifiedCache::_runEvictionSlice(icu::UnifiedCache *this)
{
  result = uhash_count(*(this + 1));
  v3 = *(this + 6);
  v4 = 1374389535 * *(this + 8) * v3;
  v5 = (v4 >> 63) + (SHIDWORD(v4) >> 5);
  if (v5 <= *(this + 7))
  {
    v5 = *(this + 7);
  }

  v6 = result - v3 - v5;
  if (v6 >= 1)
  {
    v7 = 10;
    do
    {
      result = icu::UnifiedCache::_nextElement(this);
      if (!result)
      {
        break;
      }

      v8 = result;
      result = icu::UnifiedCache::_isEvictable(this, result);
      if (result)
      {
        v9 = *(v8 + 8);
        uhash_removeElement(*(this + 1), v8);
        result = icu::UnifiedCache::removeSoftRef(this, v9);
        ++*(this + 5);
        if (!--v6)
        {
          break;
        }
      }

      --v7;
    }

    while (v7);
  }

  return result;
}

void icu::UnifiedCache::~UnifiedCache(void ***this)
{
  *this = &unk_1F0935918;
  icu::UnifiedCache::flush(this);
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  icu::UnifiedCache::_flush(this, 1);
  std::mutex::unlock(v2);
  uhash_close(this[1]);
  this[1] = 0;
  v3 = this[6];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  this[6] = 0;

  icu::UnifiedCacheBase::~UnifiedCacheBase(this);
}

{
  icu::UnifiedCache::~UnifiedCache(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UnifiedCache::_nextElement(icu::UnifiedCache *this)
{
  result = uhash_nextElement(*(this + 1), this + 4);
  if (!result)
  {
    *(this + 4) = -1;
    v3 = *(this + 1);

    return uhash_nextElement(v3, this + 4);
  }

  return result;
}

BOOL icu::UnifiedCache::_isEvictable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a1 + 48);
  if (*(v4 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == v3;
  }

  if (v6)
  {
    return 0;
  }

  if (*(v4 + 12))
  {
    if (v3[2] == 1)
    {
      return icu::SharedObject::getRefCount(v3) == 0;
    }

    return 0;
  }

  return 1;
}

uint64_t icu::UnifiedCache::removeSoftRef(uint64_t this, const icu::SharedObject *a2)
{
  v2 = *(a2 + 2) - 1;
  *(a2 + 2) = v2;
  if (!v2)
  {
    --*(this + 20);
    this = icu::SharedObject::getRefCount(a2);
    if (this)
    {
      *(a2 + 2) = 0;
    }

    else
    {
      v4 = *(*a2 + 8);

      return v4(a2);
    }
  }

  return this;
}

uint64_t icu::UnifiedCache::_computeCountOfItemsToEvict(icu::UnifiedCache *this)
{
  v2 = uhash_count(*(this + 1));
  v3 = *(this + 6);
  v4 = 1374389535 * *(this + 8) * v3;
  v5 = (v4 >> 63) + (SHIDWORD(v4) >> 5);
  if (v5 <= *(this + 7))
  {
    v5 = *(this + 7);
  }

  return (v2 - v3 - v5) & ~((v2 - v3 - v5) >> 31);
}

uint64_t icu::UnifiedCache::_putNew(uint64_t this, const icu::CacheKeyBase *a2, const icu::SharedObject *a3, UErrorCode a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v8 = this;
    this = (*(*a2 + 32))(a2);
    if (this)
    {
      *(this + 8) = a4;
      if (!*(a3 + 2))
      {
        *(this + 12) = 1;
        *(a3 + 2) = v8;
        *(v8 + 20) = vadd_s32(*(v8 + 20), 0x100000001);
      }

      this = uhash_put(*(v8 + 8), this, a3, a5);
      if (*a5 <= 0)
      {
        ++*(a3 + 2);
      }
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

int32x2_t icu::UnifiedCache::_registerPrimary(icu::UnifiedCache *this, const icu::CacheKeyBase *a2, const icu::SharedObject *a3)
{
  *(a2 + 12) = 1;
  *(a3 + 2) = this;
  result = vadd_s32(*(this + 20), 0x100000001);
  *(this + 20) = result;
  return result;
}

void icu::UnifiedCache::_putIfAbsentAndGet(icu::UnifiedCache *this, const icu::CacheKeyBase *a2, const icu::SharedObject **a3, UErrorCode *a4)
{
  v8 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v9 = uhash_find(*(this + 1), a2);
  if (v9)
  {
    v10 = v9;
    if (!icu::UnifiedCache::_inProgress(this, v9))
    {
      icu::UnifiedCache::_fetch(this, v10, a3, a4);
      goto LABEL_7;
    }

    icu::UnifiedCache::_put(this, v10, *a3, *a4);
  }

  else
  {
    v11 = U_ZERO_ERROR;
    icu::UnifiedCache::_putNew(this, a2, *a3, *a4, &v11);
  }

  icu::UnifiedCache::_runEvictionSlice(this);
LABEL_7:
  std::mutex::unlock(v8);
}

BOOL icu::UnifiedCache::_inProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a2 + 16) + 8);
  if (v2)
  {
    if (!atomic_fetch_add((v2 + 12), 1u))
    {
      ++*(a1 + 24);
    }

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 48) == v2;
    }

    v5 = v4;
    if (atomic_fetch_add((v2 + 12), 0xFFFFFFFF) == 1)
    {
      --*(a1 + 24);
    }
  }

  else
  {
    return !v3 && *(a1 + 48) == 0;
  }

  return v5;
}

uint64_t icu::UnifiedCache::_fetch(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = *(*(a2 + 16) + 8);
  if (*a3 && atomic_fetch_add((*a3 + 12), 0xFFFFFFFF) == 1)
  {
    --*(result + 24);
  }

  v4 = *(a2 + 8);
  *a3 = v4;
  if (v4)
  {
    if (!atomic_fetch_add((v4 + 12), 1u))
    {
      ++*(result + 24);
    }
  }

  return result;
}

void icu::UnifiedCache::_put(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a2 + 8;
  v5 = *(a2 + 8);
  v6 = *(v7 + 8);
  *(v6 + 8) = a4;
  v8 = *(a3 + 8);
  if (!v8)
  {
    *(v6 + 12) = 1;
    *(a3 + 16) = a1;
    *(a1 + 20) = vadd_s32(*(a1 + 20), 0x100000001);
  }

  *(a3 + 8) = v8 + 1;
  *(a2 + 8) = a3;
  icu::UnifiedCache::removeSoftRef(a1, v5);
  v9 = qword_1ED442A98;

  std::condition_variable::notify_all(v9);
}

uint64_t icu::UnifiedCache::_poll(icu::UnifiedCache *this, const icu::CacheKeyBase *a2, const icu::SharedObject **a3, UErrorCode *a4)
{
  v12.__m_ = qword_1ED442A90;
  *&v12.__owns_ = 1;
  std::mutex::lock(qword_1ED442A90);
  v8 = uhash_find(*(this + 1), a2);
  if (v8)
  {
    v9 = v8;
    while (icu::UnifiedCache::_inProgress(this, v9))
    {
      std::condition_variable::wait(qword_1ED442A98, &v12);
      v9 = uhash_find(*(this + 1), a2);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    icu::UnifiedCache::_fetch(this, v9, a3, a4);
    v10 = 1;
  }

  else
  {
LABEL_5:
    icu::UnifiedCache::_putNew(this, a2, *(this + 6), U_ZERO_ERROR, a4);
    v10 = 0;
  }

  if (v12.__owns_)
  {
    std::mutex::unlock(v12.__m_);
  }

  return v10;
}

const icu::SharedObject *icu::UnifiedCache::_get(icu::SharedObject **this, const icu::CacheKeyBase *a2, const icu::SharedObject **a3, const void *a4, UErrorCode *a5)
{
  result = icu::UnifiedCache::_poll(this, a2, a3, a5);
  if (result)
  {
    result = *a3;
    if (*a3)
    {
      v11 = result == this[6];
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      return result;
    }

LABEL_7:
    result = icu::SharedObject::removeRef(result);
    *a3 = 0;
    return result;
  }

  if (*a5 <= 0)
  {
    v12 = (*(*a2 + 40))(a2, a4, a5);
    *a3 = v12;
    if (!v12)
    {
      sub_1952769E4(this[6], a3);
    }

    icu::UnifiedCache::_putIfAbsentAndGet(this, a2, a3, a5);
    result = *a3;
    if (*a3)
    {
      if (result == this[6])
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

icu::SharedObject *sub_1952769E4(icu::SharedObject *this, icu::SharedObject **a2)
{
  result = *a2;
  if (*a2 != this)
  {
    if (result)
    {
      result = icu::SharedObject::removeRef(result);
    }

    *a2 = this;
    if (this)
    {

      return icu::SharedObject::addRef(this);
    }
  }

  return result;
}

uint64_t icu::UnifiedCache::removeHardRef(icu::UnifiedCache *this, atomic_uint *a2)
{
  if (!a2)
  {
    return 0;
  }

  add = atomic_fetch_add(a2 + 3, 0xFFFFFFFF);
  result = add - 1;
  if (add == 1)
  {
    --*(this + 6);
  }

  return result;
}

uint64_t icu::UnifiedCache::addHardRef(icu::UnifiedCache *this, atomic_uint *a2)
{
  if (!a2)
  {
    return 0;
  }

  add = atomic_fetch_add(a2 + 3, 1u);
  if (add)
  {
    return add + 1;
  }

  ++*(this + 6);
  return 1;
}

uint64_t sub_195276AC8()
{
  atomic_store(0, &dword_1ED442AA0);
  if (qword_1ED442A88)
  {
    (*(*qword_1ED442A88 + 8))(qword_1ED442A88);
  }

  qword_1ED442A88 = 0;
  std::mutex::~mutex(qword_1ED442A90);
  qword_1ED442A90 = 0;
  std::condition_variable::~condition_variable(qword_1ED442A98);
  qword_1ED442A98 = 0;
  return 1;
}

uint64_t icu::UnicodeFilter::toMatcher(icu::UnicodeFilter *this)
{
  if (this)
  {
    return this + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::UnicodeFilter::matches(uint64_t a1, uint64_t a2, int *a3, int a4, int a5)
{
  v10 = *a3;
  if (*a3 < a4)
  {
    v11 = (*(*a2 + 80))(a2);
    v12 = (*(*a1 + 56))(a1, v11);
    v10 = *a3;
    if (v12)
    {
      if (v11 < 0x10000)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v10 + v13;
      goto LABEL_11;
    }
  }

  if (v10 > a4)
  {
    v15 = (*(*a2 + 80))(a2);
    v16 = (*(*a1 + 56))(a1, v15);
    v10 = *a3;
    if (v16)
    {
      v17 = __OFSUB__(v10, 1);
      v18 = v10 - 1;
      *a3 = v18;
      if (v18 < 0 != v17)
      {
        return 2;
      }

      v14 = *a3 - (((*(*a2 + 80))(a2) & 0xFFFF0000) != 0);
LABEL_11:
      *a3 = v14;
      return 2;
    }
  }

  return a5 && v10 == a4;
}

uint64_t icu::UnicodeSet::stringsSize(icu::UnicodeSet *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

icu::UVector *icu::UnicodeSet::stringsContains(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  result = *(this + 10);
  if (result)
  {
    return (icu::UVector::indexOf(result, a2, 0) >= 0);
  }

  return result;
}

double icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this)
{
  *this = &unk_1F0935B48;
  *(this + 24) = 1114112;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *&result = 0x100000019;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F0935B48;
  *(this + 24) = 1114112;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *&result = 0x100000019;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return result;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  *this = &unk_1F0935B48;
  *(this + 24) = 1114112;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::add(this, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::add(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1114111;
    if (a2 <= 0x10FFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  a2 = v5;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a3 > 0x10FFFF)
  {
LABEL_9:
    a3 = v4;
  }

  if (a2 < a3)
  {
    v6 = a3 + 1;
    v7 = *(this + 7);
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = -2;
      }

      else
      {
        v8 = *(*(this + 2) + 4 * v7 - 8);
        if (v8 > a2)
        {
          goto LABEL_23;
        }
      }

      if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
      {
        v9 = *(this + 2) + 4 * v7;
        if (v8 == a2)
        {
          *(v9 - 8) = v6;
          if (a3 == 1114111)
          {
            --*(this + 7);
          }

          goto LABEL_31;
        }

        *(v9 - 4) = a2;
        v12 = *(this + 7);
        if (a3 >= 0x10FFFF)
        {
          if (!icu::UnicodeSet::ensureCapacity(this, v12 + 1))
          {
            goto LABEL_31;
          }

          v13 = *(this + 2);
        }

        else
        {
          if (!icu::UnicodeSet::ensureCapacity(this, v12 + 2))
          {
            goto LABEL_31;
          }

          v13 = *(this + 2);
          v14 = *(this + 7);
          *(this + 7) = v14 + 1;
          *(v13 + 4 * v14) = v6;
        }

        v15 = *(this + 7);
        *(this + 7) = v15 + 1;
        *(v13 + 4 * v15) = 1114112;
LABEL_31:
        v16 = *(this + 8);
        if (v16)
        {
          free(v16);
          *(this + 8) = 0;
          *(this + 18) = 0;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    v17[0] = a2;
    v17[1] = a3 + 1;
    v17[2] = 1114112;
    icu::UnicodeSet::add(this, v17, 2, 0);
    goto LABEL_24;
  }

  if (a2 == a3)
  {
    icu::UnicodeSet::add(this, a2);
  }

LABEL_24:
  v10 = *MEMORY[0x1E69E9840];
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeSet *a2)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::copyFrom(this, a2, 0);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  v4 = (this + 80);
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  if (icu::UnicodeSet::ensureCapacity(this, *(a2 + 7)))
  {
    v5 = *(a2 + 7);
    *(this + 7) = v5;
    memcpy(*(this + 2), *(a2 + 2), 4 * v5);
    v6 = *(a2 + 10);
    if (v6 && *(v6 + 8) && ((v9 = U_ZERO_ERROR, !icu::UnicodeSet::allocateStrings(this, &v9)) || (icu::UVector::assign(*v4, *(a2 + 10), sub_19527742C, &v9), v9 > U_ZERO_ERROR)))
    {
      icu::UnicodeSet::clear(this);
      *(this + 32) = 1;
    }

    else
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        icu::UnicodeSet::setPattern(this, v7, *(a2 + 18));
      }
    }
  }

  return this;
}

{
  return icu::UnicodeSet::UnicodeSet(this, a2);
}

uint64_t icu::UnicodeSet::ensureCapacity(icu::UnicodeSet *this, int a2)
{
  if (a2 > 1114112)
  {
    v2 = 1114113;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= *(this + 6))
  {
    return 1;
  }

  if ((2 * v2) > 0x110000)
  {
    v4 = 1114113;
  }

  else
  {
    v4 = 2 * v2;
  }

  if (a2 <= 0x9C4)
  {
    v4 = 5 * v2;
  }

  v5 = v2 + 25;
  if (a2 <= 24)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  if (v7)
  {
    v8 = v7;
    memcpy(v7, *(this + 2), 4 * *(this + 7));
    v9 = *(this + 2);
    if (v9 != this + 96)
    {
      free(v9);
    }

    *(this + 2) = v8;
    *(this + 6) = v6;
    return 1;
  }

  else
  {
    icu::UnicodeSet::clear(this);
    result = 0;
    *(this + 32) = 1;
  }

  return result;
}

uint64_t icu::UnicodeSet::allocateStrings(icu::UnicodeSet *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

icu::UnicodeSet *icu::UnicodeSet::setToBogus(icu::UnicodeSet *this)
{
  result = icu::UnicodeSet::clear(this);
  *(result + 32) = 1;
  return result;
}

UChar *icu::UnicodeSet::setPattern(uint64_t a1, const UChar *a2, int32_t a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    free(v6);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  result = malloc_type_malloc(2 * a3 + 2, 0x1000040BDFB0063uLL);
  *(a1 + 64) = result;
  if (result)
  {
    *(a1 + 72) = a3;
    result = u_memcpy(result, a2, a3);
    *(*(a1 + 64) + 2 * *(a1 + 72)) = 0;
  }

  return result;
}

void icu::UnicodeSet::~UnicodeSet(icu::UnicodeSet *this)
{
  v2 = *(this + 2);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4 != this + 96)
  {
    free(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    v7 = sub_19527EA78(v6);
    MEMORY[0x19A8B2600](v7, 0x10F0C40C1590A34);
  }

  v8 = *(this + 8);
  if (v8)
  {
    free(v8);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  icu::UnicodeFilter::~UnicodeFilter(this);
}

{
  icu::UnicodeSet::~UnicodeSet(this);

  JUMPOUT(0x19A8B2600);
}

void icu::UnicodeSet::releasePattern(icu::UnicodeSet *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }
}

void non-virtual thunk toicu::UnicodeSet::~UnicodeSet(icu::UnicodeSet *this)
{
  icu::UnicodeSet::~UnicodeSet((this - 8));
}

{
  icu::UnicodeSet::~UnicodeSet((this - 8));

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeSet *icu::UnicodeSet::copyFrom(icu::UnicodeSet *this, const icu::UnicodeSet *a2, int a3)
{
  if (this == a2 || *(this + 5) || *(this + 11))
  {
    return this;
  }

  if (*(a2 + 32))
  {
    goto LABEL_15;
  }

  if (!icu::UnicodeSet::ensureCapacity(this, *(a2 + 7)))
  {
    return this;
  }

  v6 = *(a2 + 7);
  *(this + 7) = v6;
  memcpy(*(this + 2), *(a2 + 2), 4 * v6);
  if (!a3 && *(a2 + 5))
  {
    operator new();
  }

  v7 = *(a2 + 10);
  if (v7 && *(v7 + 8))
  {
    v13 = U_ZERO_ERROR;
    v8 = *(this + 10);
    if (v8)
    {
      goto LABEL_14;
    }

    if (icu::UnicodeSet::allocateStrings(this, &v13))
    {
      v8 = *(this + 10);
      v7 = *(a2 + 10);
LABEL_14:
      icu::UVector::assign(v8, v7, sub_19527742C, &v13);
      if (v13 > U_ZERO_ERROR)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_15:
    icu::UnicodeSet::clear(this);
    *(this + 32) = 1;
    return this;
  }

  v10 = *(this + 10);
  if (v10 && *(v10 + 8))
  {
    icu::UVector::removeAllElements(v10);
  }

LABEL_20:
  if (!a3 && *(a2 + 11))
  {
    operator new();
  }

  v11 = *(this + 8);
  if (v11)
  {
    free(v11);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    icu::UnicodeSet::setPattern(this, v12, *(a2 + 18));
  }

  return this;
}

BOOL icu::UnicodeSet::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  if (v2 != *(a2 + 28))
  {
    return 0;
  }

  if (v2 >= 1)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      if (v5 != v7)
      {
        return 0;
      }
    }

    while (--v2);
  }

  v8 = *(a1 + 80);
  if (!v8)
  {
    v12 = *(a2 + 80);
    return !v12 || !*(v12 + 8);
  }

  v9 = *(v8 + 8);
  v10 = *(a2 + 80);
  if (v10)
  {
    if ((v9 != 0) == (*(v10 + 8) != 0))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  v10 = 0;
LABEL_17:
  if (!*(v8 + 8))
  {
    return 1;
  }

  result = icu::UVector::operator==(v8, v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t icu::UnicodeSet::hashCode(icu::UnicodeSet *this)
{
  result = *(this + 7);
  if (result >= 1)
  {
    v3 = *(this + 2);
    v4 = result;
    do
    {
      v5 = *v3++;
      result = (v5 + 1000003 * result);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t icu::UnicodeSet::size(icu::UnicodeSet *this)
{
  v1 = *(this + 7);
  if (v1 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = v1 >> 1;
    v4 = (*(this + 2) + 4);
    do
    {
      v2 = *v4 + v2 - *(v4 - 1);
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v5 = *(this + 10);
  if (v5)
  {
    LODWORD(v5) = *(v5 + 8);
  }

  return (v5 + v2);
}

BOOL icu::UnicodeSet::isEmpty(icu::UnicodeSet *this)
{
  if (*(this + 7) != 1)
  {
    return 0;
  }

  v1 = *(this + 10);
  return !v1 || *(v1 + 8) == 0;
}

uint64_t icu::UnicodeSet::contains(icu::UnicodeSet *this, int a2)
{
  v2 = *(this + 5);
  if (v2)
  {
LABEL_2:
    v3 = *(*v2 + 16);

    return v3(v2);
  }

  else
  {
    while (1)
    {
      v5 = *(this + 11);
      if (!v5)
      {
        break;
      }

      this = (v5 + 8);
      v2 = *(v5 + 48);
      if (v2)
      {
        goto LABEL_2;
      }
    }

    if (a2 < 1114112)
    {
      return icu::UnicodeSet::findCodePoint(this, a2) & 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t icu::UnicodeSet::findCodePoint(icu::UnicodeSet *this, int a2)
{
  v2 = *(this + 2);
  if (*v2 > a2)
  {
    return 0;
  }

  v4 = *(this + 7);
  result = (v4 - 1);
  if (v4 >= 2 && v2[v4 - 2] > a2 && v4 != 2)
  {
    v6 = 0;
    v7 = result >> 1;
    do
    {
      if (v2[v7] > a2)
      {
        result = v7;
      }

      else
      {
        v6 = v7;
        result = result;
      }

      v7 = (result + v6) >> 1;
    }

    while (v7 != v6);
  }

  return result;
}

icu::UVector *icu::UnicodeSet::contains(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
  if (SingleCP < 0)
  {
    result = *(this + 10);
    if (result)
    {
      return (icu::UVector::indexOf(result, a2, 0) >= 0);
    }
  }

  else
  {

    return icu::UnicodeSet::contains(this, SingleCP);
  }

  return result;
}

uint64_t icu::UnicodeSet::getSingleCP(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 4);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(this + 3);
  }

  if (v3 == 2)
  {
    result = icu::UnicodeString::char32At(this, 0);
    if (result >= 0x10000)
    {
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v4 = (this + 10);
  }

  else
  {
    v4 = *(this + 3);
  }

  return *v4;
}

uint64_t icu::UnicodeSet::containsAll(icu::UnicodeSet *this, const icu::UnicodeSet *a2)
{
  v4 = *(a2 + 7);
  if (v4 < 2)
  {
LABEL_6:
    v8 = *(a2 + 10);
    if (v8 && *(v8 + 2))
    {
      result = *(this + 10);
      if (result)
      {
        return icu::UVector::containsAll(result, v8);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = v4 >> 1;
    v6 = (*(a2 + 2) + 4);
    while (1)
    {
      CodePoint = icu::UnicodeSet::findCodePoint(this, *(v6 - 1));
      if ((CodePoint & 1) == 0 || *(*(this + 2) + 4 * CodePoint) < *v6)
      {
        return 0;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

BOOL icu::UnicodeSet::containsAll(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = (a2 + 10);
  }

  else
  {
    v4 = *(a2 + 3);
  }

  v5 = v3;
  v6 = v3 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = icu::UnicodeSet::span(this, v4, v7, 1);
  v9 = *(a2 + 4);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 < 0)
  {
    v11 = *(a2 + 3);
  }

  return v8 == v11;
}

unint64_t icu::UnicodeSet::span(icu::UnicodeSet *this, UChar *s, uint64_t a3, int a4)
{
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0 || (v5 = u_strlen(s), !v5))
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(this + 5);
    if (v8)
    {
      v9 = (sub_1951CA260(v8, s, &s[a3], a4) - s) >> 1;
LABEL_6:
      v10 = *MEMORY[0x1E69E9840];
      return v9;
    }
  }

  v12 = *(this + 11);
  if (!v12)
  {
    v14 = *(this + 10);
    if (v14 && *(v14 + 8))
    {
      v33 = 0;
      if (a4)
      {
        v15 = 42;
      }

      else
      {
        v15 = 41;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      memset(v23, 0, sizeof(v23));
      sub_19527E900(v23, this, v14, v15);
      if (HIDWORD(v24))
      {
        v9 = sub_19527EA7C(v23, s, v5, a4);
        sub_19527EA78(v23);
        goto LABEL_6;
      }

      sub_19527EA78(v23);
    }

    v9 = 0;
    v16 = a4 != 0;
    do
    {
      v17 = v9 + 1;
      v18 = s[v9];
      if ((v18 & 0xFC00) == 0xD800 && v17 != v5)
      {
        v20 = s[v17];
        v21 = (v20 & 0xFC00) == 56320;
        v22 = v20 + (v18 << 10) - 56613888;
        if (v21)
        {
          v18 = v22;
        }

        if (v21)
        {
          v17 = (v9 + 2);
        }

        else
        {
          v17 = v17;
        }
      }

      if (v16 != icu::UnicodeSet::contains(this, v18))
      {
        break;
      }

      v9 = v17;
    }

    while (v17 < v5);
    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E69E9840];

  return sub_19527EA7C(v12, s, v5, a4);
}

BOOL icu::UnicodeSet::containsNone(icu::UnicodeSet *this, const icu::UnicodeSet *a2)
{
  v4 = *(a2 + 7);
  if (v4 < 2)
  {
LABEL_6:
    v8 = *(this + 10);
    return !v8 || (v9 = *(a2 + 10)) == 0 || !*(v9 + 2) || icu::UVector::containsNone(v8, v9) != 0;
  }

  else
  {
    v5 = v4 >> 1;
    v6 = (*(a2 + 2) + 4);
    while (1)
    {
      CodePoint = icu::UnicodeSet::findCodePoint(this, *(v6 - 1));
      if ((CodePoint & 1) != 0 || *(*(this + 2) + 4 * CodePoint) < *v6)
      {
        return 0;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }
}

BOOL icu::UnicodeSet::containsNone(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = (a2 + 10);
  }

  else
  {
    v4 = *(a2 + 3);
  }

  v5 = v3;
  v6 = v3 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = icu::UnicodeSet::span(this, v4, v7, 0);
  v9 = *(a2 + 4);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 < 0)
  {
    v11 = *(a2 + 3);
  }

  return v8 == v11;
}

uint64_t icu::UnicodeSet::matchesIndexValue(icu::UnicodeSet *this, unsigned int a2)
{
  v4 = *(this + 7);
  if (v4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (*(this + 2) + 4);
    do
    {
      v7 = *(v6 - 1);
      v8 = (*v6 - 1);
      if (((*v6 - 1) ^ *(v6 - 1)) > 0xFF)
      {
        if (v7 <= a2 || v8 >= a2)
        {
          return 1;
        }
      }

      else if (v7 <= a2 && v8 >= a2)
      {
        return 1;
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  result = *(this + 10);
  if (result)
  {
    if (*(result + 8) < 1)
    {
      return 0;
    }

    else
    {
      v12 = 0;
      while (1)
      {
        v13 = icu::UVector::elementAt(result, v12);
        v14 = v13[4];
        if (v14 >= 0x20 && a2 == icu::UnicodeString::char32At(v14, v13, 0))
        {
          break;
        }

        ++v12;
        result = *(this + 10);
        if (v12 >= *(result + 8))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t icu::UnicodeSet::matches(int **this, const icu::Replaceable *a2, int *a3, int a4, int a5)
{
  v7 = *a3;
  if (*a3 == a4)
  {
    v8 = icu::UnicodeSet::contains(this, 0xFFFF);
    if (a5)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  v14 = this[10];
  if (!v14 || !v14[2] || (v15 = (*(*a2 + 72))(a2, *a3), v16 = this[10], v16[2] < 1))
  {
LABEL_51:

    return icu::UnicodeFilter::matches(this, a2, a3, a4, a5);
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = icu::UVector::elementAt(v16, v17);
    v20 = *(v19 + 8);
    if (v20 < 0x20)
    {
LABEL_44:
      v30 = v18;
      goto LABEL_45;
    }

    v21 = v19;
    if (v7 >= a4)
    {
      if ((v20 & 0x8000) != 0)
      {
        v24 = *(v19 + 12);
      }

      else
      {
        v24 = v20 >> 5;
      }

      v22 = v24 - 1;
      if ((v20 & 0x8000) == 0)
      {
LABEL_15:
        v23 = v20 >> 5;
        goto LABEL_21;
      }
    }

    else
    {
      v22 = 0;
      if ((v20 & 0x8000) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = *(v19 + 12);
LABEL_21:
    if (v23 <= v22)
    {
      v26 = 0xFFFF;
    }

    else
    {
      v25 = (v20 & 2) != 0 ? v19 + 10 : *(v19 + 24);
      v26 = *(v25 + 2 * v22);
    }

    if (v7 < a4 && v26 > v15)
    {
      break;
    }

    if (v26 != v15)
    {
      goto LABEL_44;
    }

    matched = icu::UnicodeSet::matchRest(a2, *a3, a4, v19);
    if (a5)
    {
      v28 = *a3 - a4;
      if (v7 < a4)
      {
        v28 = a4 - *a3;
      }

      if (matched == v28)
      {
        return 1;
      }
    }

    v29 = *(v21 + 8) < 0 ? *(v21 + 12) : *(v21 + 8) >> 5;
    if (matched != v29)
    {
      goto LABEL_44;
    }

    if (matched <= v18)
    {
      v30 = v18;
    }

    else
    {
      v30 = matched;
    }

    if (v7 < a4 && v18 > matched)
    {
LABEL_46:
      if (!v30)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

LABEL_45:
    ++v17;
    v16 = this[10];
    v18 = v30;
    if (v17 >= v16[2])
    {
      goto LABEL_46;
    }
  }

  LODWORD(v30) = v18;
  if (!v18)
  {
    goto LABEL_51;
  }

LABEL_47:
  if (v7 >= a4)
  {
    LODWORD(v30) = -v30;
  }

  *a3 += v30;
  return 2;
}

uint64_t icu::UnicodeSet::matchRest(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(a4 + 12);
  }

  v9 = a2 - a3;
  if (a2 >= a3)
  {
    if (v9 >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = v9;
    }

    if (v18 >= 2)
    {
      v19 = v8 - 2;
      v20 = (a2 - 1);
      v21 = v18 - 1;
      while (1)
      {
        v22 = (*(*a1 + 72))(a1, v20);
        v23 = *(a4 + 8);
        v24 = (v23 & 0x8000u) == 0 ? v23 >> 5 : *(a4 + 12);
        if (v24 <= v19)
        {
          v26 = 0xFFFF;
        }

        else
        {
          v25 = (v23 & 2) != 0 ? a4 + 10 : *(a4 + 24);
          v26 = *(v25 + 2 * v19);
        }

        if (v22 != v26)
        {
          break;
        }

        --v19;
        v20 = (v20 - 1);
        if (!--v21)
        {
          return v18;
        }
      }

      return 0;
    }
  }

  else
  {
    if (a3 - a2 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = (a3 - a2);
    }

    if (v10 >= 2)
    {
      v11 = (a2 + 1);
      v12 = 1;
      while (1)
      {
        v13 = (*(*a1 + 72))(a1, v11);
        v14 = *(a4 + 8);
        v15 = (v14 & 0x8000u) == 0 ? v14 >> 5 : *(a4 + 12);
        if (v12 >= v15)
        {
          v17 = 0xFFFF;
        }

        else
        {
          v16 = (v14 & 2) != 0 ? a4 + 10 : *(a4 + 24);
          v17 = *(v16 + 2 * v12);
        }

        if (v13 != v17)
        {
          break;
        }

        ++v12;
        v11 = (v11 + 1);
        if (v10 == v12)
        {
          return v10;
        }
      }

      return 0;
    }

    return v10;
  }

  return v18;
}

icu::UnicodeSet *icu::UnicodeSet::addAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  v4 = *(a2 + 7);
  if (v4 >= 1)
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      icu::UnicodeSet::add(this, v5, v4, 0);
    }
  }

  v6 = *(a2 + 10);
  if (v6 && *(v6 + 2) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = icu::UVector::elementAt(v6, v7);
      v9 = this[10];
      if (!v9 || (icu::UVector::indexOf(v9, v8, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::_add(this, v8);
      }

      ++v7;
      v6 = *(a2 + 10);
    }

    while (v7 < *(v6 + 2));
  }

  return this;
}

uint64_t icu::UnicodeSet::indexOf(icu::UnicodeSet *this, unsigned int a2)
{
  if (HIWORD(a2) <= 0x10u)
  {
    v3 = 0;
    for (i = (*(this + 2) + 4); ; i += 2)
    {
      v5 = *(i - 1);
      if (v5 > a2)
      {
        break;
      }

      v6 = v3;
      v7 = *i;
      v3 = v3 - v5 + v7;
      if (v7 > a2)
      {
        return v6 + a2 - v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::UnicodeSet::charAt(icu::UnicodeSet *this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = 0;
    while (v2 < (*(this + 7) & 0xFFFFFFFFFFFFFFFELL))
    {
      v3 = a2;
      v4 = *(this + 2) + 4 * v2;
      v2 += 2;
      v5 = *v4;
      LODWORD(v4) = *(v4 + 4) - *v4;
      v6 = __OFSUB__(a2, v4);
      a2 -= v4;
      if (a2 < 0 != v6)
      {
        return (v5 + v3);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

icu::UnicodeSet *icu::UnicodeSet::set(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v5 = icu::UnicodeSet::clear(this);

  return icu::UnicodeSet::complement(v5, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::clear(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11))
  {
    **(this + 2) = 1114112;
    *(this + 7) = 1;
    v2 = *(this + 8);
    if (v2)
    {
      free(v2);
      *(this + 8) = 0;
      *(this + 18) = 0;
    }

    v3 = *(this + 10);
    if (v3)
    {
      icu::UVector::removeAllElements(v3);
    }

    *(this + 32) = 0;
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::complement(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 5) || *(this + 11) || (*(this + 32) & 1) != 0)
  {
    goto LABEL_18;
  }

  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = 1114111;
  if (a2 > 0x10FFFF)
  {
LABEL_8:
    a2 = v5;
  }

  if ((a3 & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else if (a3 <= 0x10FFFF)
  {
    goto LABEL_14;
  }

  a3 = v4;
LABEL_14:
  if (a2 <= a3)
  {
    v9[0] = a2;
    v9[1] = a3 + 1;
    v9[2] = 1114112;
    icu::UnicodeSet::exclusiveOr(this, v9, 2, 0);
  }

  v6 = *(this + 8);
  if (v6)
  {
    free(v6);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

LABEL_18:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::UnicodeSet::add(icu::UnicodeSet *this, int *a2, int a3, unsigned __int8 a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(this + 5) || *(this + 11) || !a2 || (*(this + 32) & 1) != 0 || !icu::UnicodeSet::ensureBufferCapacity(this, *(this + 7) + a3))
  {
    goto LABEL_3;
  }

  v9 = 0;
  v10 = *(this + 2);
  v11 = *v10;
  v12 = *a2;
  v13 = 1;
  v14 = 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (a4 <= 1u)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              if (v11 >= v12)
              {
                if (v12 >= v11)
                {
                  if (v11 == 1114112)
                  {
                    goto LABEL_59;
                  }

                  v11 = v10[v14++];
                  v12 = a2[v13++];
                  a4 = 2;
                }

                else
                {
                  v12 = a2[v13++];
                  a4 = 3;
                }
              }

              else
              {
                v15 = *(this + 14);
                if ((v9 >= v15 || v14 >= *(this + 6)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v16 = *(this + 6);
                  *buf = 67110912;
                  v29 = v9;
                  v30 = 1024;
                  v31 = v15;
                  v32 = 1024;
                  v33 = v14;
                  v34 = 1024;
                  v35 = v16;
                  v36 = 1024;
                  v37 = v13;
                  v38 = 1024;
                  v39 = a3;
                  v40 = 1024;
                  v41 = v11;
                  v42 = 1024;
                  v43 = v12;
                  _os_log_impl(&dword_1951C9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "# UnicodeSet::add case 1, k %d bufCap %d i %d cap %d j %d otherLen %d a %04X b %04X", buf, 0x32u);
                  v10 = *(this + 2);
                }

                a4 = 0;
                *(*(this + 6) + 4 * v9++) = v11;
                v11 = v10[v14++];
              }
            }
          }

          else if (v11 >= v12)
          {
            if (v12 >= v11)
            {
              if (v11 == 1114112)
              {
                goto LABEL_59;
              }

              v21 = *(this + 6);
              v22 = v9 - 1;
              if (v9 >= 1 && v11 <= *(v21 + 4 * v9 - 4))
              {
                v25 = *(v21 + 4 * v22);
                if (v10[v14] <= v25)
                {
                  v11 = v25;
                }

                else
                {
                  v11 = v10[v14];
                }
              }

              else
              {
                v22 = v9 + 1;
                *(v21 + 4 * v9) = v11;
                v11 = v10[v14];
              }

              ++v14;
              v12 = a2[v13++];
              a4 = 3;
              v9 = v22;
            }

            else
            {
              v19 = *(this + 6);
              v20 = v9 - 1;
              if (v9 >= 1 && v12 <= *(v19 + 4 * v9 - 4))
              {
                v24 = *(v19 + 4 * v20);
                if (a2[v13] <= v24)
                {
                  v12 = v24;
                }

                else
                {
                  v12 = a2[v13];
                }
              }

              else
              {
                v20 = v9 + 1;
                *(v19 + 4 * v9) = v12;
                v12 = a2[v13];
              }

              ++v13;
              a4 = 2;
              v9 = v20;
            }
          }

          else
          {
            v17 = *(this + 6);
            v18 = v9 - 1;
            if (v9 >= 1 && v11 <= *(v17 + 4 * v9 - 4))
            {
              v23 = *(v17 + 4 * v18);
              if (v10[v14] <= v23)
              {
                v11 = v23;
              }

              else
              {
                v11 = v10[v14];
              }
            }

            else
            {
              v18 = v9 + 1;
              *(v17 + 4 * v9) = v11;
              v11 = v10[v14];
            }

            ++v14;
            a4 = 1;
            v9 = v18;
          }
        }

        if (a4 == 2)
        {
          break;
        }

        if (a4 == 3)
        {
          if (v12 <= v11)
          {
            if (v11 == 1114112)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v11 = v12;
            if (v12 == 1114112)
            {
              goto LABEL_59;
            }
          }

          a4 = 0;
          *(*(this + 6) + 4 * v9++) = v11;
          v11 = v10[v14++];
LABEL_32:
          v12 = a2[v13++];
        }
      }

      if (v12 < v11)
      {
        a4 = 0;
        *(*(this + 6) + 4 * v9++) = v12;
        goto LABEL_32;
      }

      if (v11 >= v12)
      {
        break;
      }

      v11 = v10[v14++];
      a4 = 3;
    }

    if (v11 == 1114112)
    {
      break;
    }

    v11 = v10[v14++];
    v12 = a2[v13++];
    a4 = 1;
  }

LABEL_59:
  v26 = *(this + 6);
  *(v26 + 4 * v9) = 1114112;
  *(this + 2) = v26;
  *(this + 6) = v10;
  LODWORD(v26) = *(this + 6);
  *(this + 6) = *(this + 14);
  *(this + 7) = v9 + 1;
  *(this + 14) = v26;
  v27 = *(this + 8);
  if (v27)
  {
    free(v27);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
}

icu::UnicodeSet *icu::UnicodeSet::add(icu::UnicodeSet *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    if (a2 >= 0x110000)
    {
      v3 = 1114111;
    }
  }

  CodePoint = icu::UnicodeSet::findCodePoint(this, v3);
  if ((CodePoint & 1) == 0 && !*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    v5 = CodePoint;
    v6 = *(this + 2);
    v7 = CodePoint;
    if (v3 == *(v6 + 4 * CodePoint) - 1)
    {
      *(v6 + 4 * CodePoint) = v3;
      if (v3 == 1114111)
      {
        if (!icu::UnicodeSet::ensureCapacity(this, *(this + 7) + 1))
        {
          return this;
        }

        v6 = *(this + 2);
        v8 = *(this + 7);
        *(this + 7) = v8 + 1;
        *(v6 + 4 * v8) = 1114112;
      }

      if (v5 < 1 || v3 != *(v6 + 4 * v5 - 4))
      {
        goto LABEL_26;
      }

      v9 = v6 + 4 * v7;
      v10 = *(this + 7);
      if (v9 + 4 < (v6 + 4 * v10))
      {
        v11 = v6 + 4 * v10;
        if (v9 + 8 > v11)
        {
          v11 = v9 + 8;
        }

        memmove((v9 - 4), (v9 + 4), ((v11 - v9 - 5) & 0xFFFFFFFFFFFFFFFCLL) + 4);
        v10 = *(this + 7);
      }

      v12 = v10 - 2;
    }

    else
    {
      if (CodePoint >= 1)
      {
        v13 = v6 + 4 * CodePoint;
        if (v3 == *(v13 - 4))
        {
          *(v13 - 4) = v3 + 1;
          goto LABEL_26;
        }
      }

      if (!icu::UnicodeSet::ensureCapacity(this, *(this + 7) + 2))
      {
        return this;
      }

      memmove((*(this + 2) + 4 * v7 + 8), (*(this + 2) + 4 * v7), 4 * (*(this + 7) - v5));
      v14 = (*(this + 2) + 4 * v7);
      *v14 = v3;
      v14[1] = v3 + 1;
      v12 = *(this + 7) + 2;
    }

    *(this + 7) = v12;
LABEL_26:
    v15 = *(this + 8);
    if (v15)
    {
      free(v15);
      *(this + 8) = 0;
      *(this + 18) = 0;
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::add(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v6 = *(this + 10);
      if (!v6 || (icu::UVector::indexOf(v6, a2, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::_add(this, a2);
        v7 = *(this + 8);
        if (v7)
        {
          free(v7);
          *(this + 8) = 0;
          *(this + 18) = 0;
        }
      }
    }

    else
    {
      icu::UnicodeSet::add(this, SingleCP);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::_add(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5))
  {
    v6 = v2;
    v7 = v3;
    v4 = this;
    if (!*(this + 11) && (*(this + 32) & 1) == 0)
    {
      v5 = U_ZERO_ERROR;
      if (*(this + 10) || icu::UnicodeSet::allocateStrings(this, &v5))
      {
        operator new();
      }

      this = icu::UnicodeSet::clear(v4);
      *(v4 + 32) = 1;
    }
  }

  return this;
}

uint64_t sub_195279054(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    return (v2 & 1) == 0;
  }

  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(a2 + 12);
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 24);
  }

  return icu::UnicodeString::doCompare(a1, 0, v3, v6, v5 & (v5 >> 31), v5 & ~(v5 >> 31));
}

icu::UnicodeSet *icu::UnicodeSet::addAll(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v3 = *(a2 + 4);
  v4 = v3;
  LODWORD(v5) = v3 >> 5;
  if (v4 >= 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = *(a2 + 3);
  }

  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = icu::UnicodeString::char32At(v5, a2, v7);
      icu::UnicodeSet::add(this, v8);
      if (v8 < 0x10000)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
      v10 = *(a2 + 4);
      v11 = v10;
      LODWORD(v5) = v10 >> 5;
      if (v11 >= 0)
      {
        v5 = v5;
      }

      else
      {
        v5 = *(a2 + 3);
      }
    }

    while (v7 < v5);
  }

  return this;
}

icu::UVector **icu::UnicodeSet::retainAll(icu::UVector **this, const icu::UnicodeString *a2)
{
  v5 = 0uLL;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4[0] = &unk_1F0935B48;
  v4[1] = &unk_1F0935C60;
  v4[2] = v9;
  v4[3] = 0x100000019;
  v6 = 0uLL;
  v8 = 0uLL;
  v7 = 0uLL;
  LODWORD(v9[0]) = 1114112;
  icu::UnicodeSet::addAll(v4, a2);
  icu::UnicodeSet::retainAll(this, v4);
  icu::UnicodeSet::~UnicodeSet(v4);
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::retainAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    icu::UnicodeSet::retain(this, *(a2 + 2), *(a2 + 7), 0);
    v4 = this[10];
    if (v4)
    {
      if (*(v4 + 2))
      {
        v5 = *(a2 + 10);
        if (v5 && *(v5 + 2))
        {
          icu::UVector::retainAll(v4, v5);
        }

        else
        {
          icu::UVector::removeAllElements(v4);
        }
      }
    }
  }

  return this;
}

icu::UVector **icu::UnicodeSet::complementAll(icu::UVector **this, const icu::UnicodeString *a2)
{
  v5 = 0uLL;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4[0] = &unk_1F0935B48;
  v4[1] = &unk_1F0935C60;
  v4[2] = v9;
  v4[3] = 0x100000019;
  v6 = 0uLL;
  v8 = 0uLL;
  v7 = 0uLL;
  LODWORD(v9[0]) = 1114112;
  icu::UnicodeSet::addAll(v4, a2);
  icu::UnicodeSet::complementAll(this, v4);
  icu::UnicodeSet::~UnicodeSet(v4);
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::complementAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    icu::UnicodeSet::exclusiveOr(this, *(a2 + 2), *(a2 + 7), 0);
    v4 = *(a2 + 10);
    if (v4)
    {
      if (*(v4 + 2) >= 1)
      {
        v5 = 0;
        do
        {
          v6 = icu::UVector::elementAt(v4, v5);
          v7 = this[10];
          if (!v7 || !icu::UVector::removeElement(v7, v6))
          {
            icu::UnicodeSet::_add(this, v6);
          }

          ++v5;
          v4 = *(a2 + 10);
        }

        while (v5 < *(v4 + 2));
      }
    }
  }

  return this;
}

icu::UVector **icu::UnicodeSet::removeAll(icu::UVector **this, const icu::UnicodeString *a2)
{
  v5 = 0uLL;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4[0] = &unk_1F0935B48;
  v4[1] = &unk_1F0935C60;
  v4[2] = v9;
  v4[3] = 0x100000019;
  v6 = 0uLL;
  v8 = 0uLL;
  v7 = 0uLL;
  LODWORD(v9[0]) = 1114112;
  icu::UnicodeSet::addAll(v4, a2);
  icu::UnicodeSet::removeAll(this, v4);
  icu::UnicodeSet::~UnicodeSet(v4);
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::removeAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    icu::UnicodeSet::retain(this, *(a2 + 2), *(a2 + 7), 2u);
    v4 = this[10];
    if (v4)
    {
      if (*(v4 + 2))
      {
        v5 = *(a2 + 10);
        if (v5)
        {
          if (*(v5 + 2))
          {
            icu::UVector::removeAll(v4, v5);
          }
        }
      }
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::removeAllStrings(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11))
  {
    v3 = *(this + 10);
    if (v3)
    {
      if (*(v3 + 8))
      {
        icu::UVector::removeAllElements(v3);
        v4 = *(this + 8);
        if (v4)
        {
          free(v4);
          *(this + 8) = 0;
          *(this + 18) = 0;
        }
      }
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::retain(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1114111;
    if (a2 <= 0x10FFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  a2 = v5;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a3 > 0x10FFFF)
  {
LABEL_9:
    a3 = v4;
  }

  if (a2 <= a3)
  {
    v8[0] = a2;
    v8[1] = a3 + 1;
    v8[2] = 1114112;
    icu::UnicodeSet::retain(this, v8, 2, 0);
  }

  else
  {
    icu::UnicodeSet::clear(this);
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::UnicodeSet::retain(icu::UnicodeSet *this, int *a2, int a3, unsigned __int8 a4)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0 && icu::UnicodeSet::ensureBufferCapacity(this, *(this + 7) + a3))
  {
    v7 = 0;
    v8 = *(this + 2);
    v9 = *v8;
    v10 = *a2;
    v11 = 1;
    v12 = 1;
    while (1)
    {
      while (1)
      {
        while (a4 <= 1u)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              if (v9 >= v10)
              {
                if (v10 < v9)
                {
                  *(*(this + 6) + 4 * v7++) = v10;
                  v10 = a2[v12];
                  goto LABEL_26;
                }

                if (v9 == 1114112)
                {
                  goto LABEL_38;
                }

                v9 = v8[v11++];
LABEL_31:
                v10 = a2[v12++];
                a4 = 2;
              }

              else
              {
                a4 = 0;
                v9 = v8[v11++];
              }
            }
          }

          else if (v9 >= v10)
          {
            if (v10 < v9)
            {
              goto LABEL_31;
            }

            if (v9 == 1114112)
            {
              goto LABEL_38;
            }

            *(*(this + 6) + 4 * v7++) = v9;
            v9 = v8[v11];
            v10 = a2[v12];
            ++v11;
LABEL_26:
            ++v12;
            a4 = 3;
          }

          else
          {
            v9 = v8[v11++];
            a4 = 1;
          }
        }

        if (a4 == 2)
        {
          break;
        }

        if (a4 == 3)
        {
          if (v9 >= v10)
          {
            if (v10 < v9)
            {
              *(*(this + 6) + 4 * v7++) = v10;
              goto LABEL_37;
            }

            if (v9 == 1114112)
            {
              goto LABEL_38;
            }

            a4 = 0;
            *(*(this + 6) + 4 * v7++) = v9;
            v9 = v8[v11++];
LABEL_34:
            v10 = a2[v12++];
          }

          else
          {
            *(*(this + 6) + 4 * v7++) = v9;
            v9 = v8[v11++];
            a4 = 2;
          }
        }
      }

      if (v10 < v9)
      {
        a4 = 0;
        goto LABEL_34;
      }

      if (v9 >= v10)
      {
        if (v9 == 1114112)
        {
LABEL_38:
          v13 = *(this + 6);
          *(v13 + 4 * v7) = 1114112;
          *(this + 2) = v13;
          *(this + 6) = v8;
          v14 = *(this + 6);
          *(this + 6) = *(this + 14);
          *(this + 7) = v7 + 1;
          *(this + 14) = v14;
          v15 = *(this + 8);
          if (v15)
          {
            free(v15);
            *(this + 8) = 0;
            *(this + 18) = 0;
          }

          return;
        }

        v9 = v8[v11++];
LABEL_37:
        v10 = a2[v12++];
        a4 = 1;
      }

      else
      {
        *(*(this + 6) + 4 * v7++) = v9;
        v9 = v8[v11++];
        a4 = 3;
      }
    }
  }
}

icu::UnicodeSet *icu::UnicodeSet::retain(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v5 = *(this + 10);
      if (!v5 || (icu::UVector::indexOf(v5, a2, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::clear(this);
      }

      else if ((*(this + 7) + 1) > 2 || icu::UnicodeSet::size(this) != 1)
      {
        v6 = icu::UnicodeSet::clear(this);
        icu::UnicodeSet::_add(v6, a2);
      }
    }

    else
    {
      icu::UnicodeSet::retain(this, SingleCP, SingleCP);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::remove(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1114111;
    if (a2 <= 0x10FFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  a2 = v5;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a3 > 0x10FFFF)
  {
LABEL_9:
    a3 = v4;
  }

  if (a2 <= a3)
  {
    v8[0] = a2;
    v8[1] = a3 + 1;
    v8[2] = 1114112;
    icu::UnicodeSet::retain(this, v8, 2, 2u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::remove(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v6 = *(this + 10);
      if (v6)
      {
        if (icu::UVector::removeElement(v6, a2))
        {
          v7 = *(this + 8);
          if (v7)
          {
            free(v7);
            *(this + 8) = 0;
            *(this + 18) = 0;
          }
        }
      }
    }

    else
    {
      icu::UnicodeSet::remove(this, SingleCP, SingleCP);
    }
  }

  return this;
}

void icu::UnicodeSet::exclusiveOr(icu::UnicodeSet *this, int *a2, int a3, unsigned __int8 a4)
{
  if (*(this + 5) || *(this + 11) || (*(this + 32) & 1) != 0 || !icu::UnicodeSet::ensureBufferCapacity(this, *(this + 7) + a3))
  {
    return;
  }

  v7 = *(this + 2);
  v8 = *v7;
  v9 = *a2;
  if (a4 - 1 > 1)
  {
    goto LABEL_9;
  }

  if (!v9)
  {
    v9 = a2[1];
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v10 = 0;
  v9 = 0;
LABEL_10:
  v11 = 0;
  v12 = 1;
LABEL_11:
  v13 = 0;
  for (i = &a2[v10]; ; v9 = i[v13++])
  {
    if (v8 < v9)
    {
      *(*(this + 6) + 4 * v11 + 4 * v13) = v8;
      v10 += v13;
      v11 += v13 + 1;
LABEL_18:
      v8 = v7[v12++];
      goto LABEL_11;
    }

    if (v9 >= v8)
    {
      break;
    }

    *(*(this + 6) + 4 * v11 + 4 * v13) = v9;
  }

  if (v8 != 1114112)
  {
    v11 += v13;
    v10 += v13 + 1;
    v9 = i[v13];
    goto LABEL_18;
  }

  v15 = *(this + 6);
  *(v15 + 4 * v11 + 4 * v13) = 1114112;
  *(this + 2) = v15;
  *(this + 6) = v7;
  v16 = *(this + 6);
  *(this + 6) = *(this + 14);
  *(this + 7) = v11 + v13 + 1;
  *(this + 14) = v16;
  v17 = *(this + 8);
  if (v17)
  {
    free(v17);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }
}

icu::UnicodeSet *icu::UnicodeSet::complement(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    v2 = *(this + 2);
    if (*v2)
    {
      if (!icu::UnicodeSet::ensureCapacity(this, *(this + 7) + 1))
      {
        return this;
      }

      memmove((*(this + 2) + 4), *(this + 2), 4 * *(this + 7));
      **(this + 2) = 0;
      v3 = 1;
    }

    else
    {
      memmove(v2, v2 + 1, 4 * *(this + 7) - 4);
      v3 = -1;
    }

    *(this + 7) += v3;
    v4 = *(this + 8);
    if (v4)
    {
      free(v4);
      *(this + 8) = 0;
      *(this + 18) = 0;
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::complement(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v5 = *(this + 10);
      if (!v5 || (icu::UVector::indexOf(v5, a2, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::_add(this, a2);
      }

      else
      {
        icu::UVector::removeElement(*(this + 10), a2);
      }

      v6 = *(this + 8);
      if (v6)
      {
        free(v6);
        *(this + 8) = 0;
        *(this + 18) = 0;
      }
    }

    else
    {
      icu::UnicodeSet::complement(this, SingleCP, SingleCP);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::compact(icu::UnicodeSet *this)
{
  if (*(this + 5) || *(this + 11) || (*(this + 32) & 1) != 0)
  {
    return this;
  }

  v2 = *(this + 6);
  v3 = this + 96;
  if (v2 != this + 96)
  {
    free(v2);
    *(this + 6) = 0;
    *(this + 14) = 0;
  }

  v4 = *(this + 2);
  if (v4 != v3)
  {
    v5 = *(this + 7);
    if (v5 <= 25)
    {
      memcpy(this + 96, *(this + 2), 4 * v5);
      free(v4);
      *(this + 2) = v3;
      v6 = 25;
LABEL_12:
      *(this + 6) = v6;
      goto LABEL_13;
    }

    if (v5 + 7 < *(this + 6))
    {
      v7 = malloc_type_realloc(*(this + 2), 4 * v5, 0x100004052888210uLL);
      if (v7)
      {
        *(this + 2) = v7;
        v6 = *(this + 7);
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  v8 = *(this + 10);
  if (v8 && !v8[2])
  {
    (*(*v8 + 8))(v8);
    *(this + 10) = 0;
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, unsigned __int16 *a2, int a3, int a4, int *a5)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (*a5 >= 1)
  {
    icu::UnicodeSet::clear(this);
    *(this + 32) = 1;
    return this;
  }

  if (a3 < 1 || !a2 || a4)
  {
    *a5 = 1;
    icu::UnicodeSet::clear(this);
    *(this + 32) = 1;
    return this;
  }

  v7 = *a2;
  if (v7 >= 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  LODWORD(v9) = *a2;
  if (v7 < 0)
  {
    LODWORD(v9) = a2[1];
  }

  v10 = (*a2 & 0x7FFF) - v9;
  v11 = (v9 + v10 / 2);
  if (icu::UnicodeSet::ensureCapacity(this, v11 + 1))
  {
    v12 = *(this + 2);
    if (v9)
    {
      v13 = v9;
      v14 = *(this + 2);
      v15 = &a2[v8];
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v13;
      }

      while (v13);
    }

    if (v10 < 2)
    {
      if (!v9)
      {
        v20 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v9 = v9;
      v17 = &a2[v8 + 1 + v9];
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v17 += 2;
        *(v12 + 4 * v9++) = v19 | (v18 << 16);
      }

      while (v9 < v11);
    }

    if (*(v12 + 4 * v9 - 4) == 1114112)
    {
LABEL_25:
      *(this + 7) = v9;
      return this;
    }

    v20 = v9;
LABEL_24:
    LODWORD(v9) = v9 + 1;
    *(v12 + 4 * v20) = 1114112;
    goto LABEL_25;
  }

  return this;
}

uint64_t icu::UnicodeSet::serialize(icu::UnicodeSet *this, unsigned __int16 *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 0 || !a2 && a3)
  {
    result = 0;
    v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_7:
    *a4 = v5;
    return result;
  }

  v6 = *(this + 7);
  v7 = (v6 - 1);
  if (v6 == 1)
  {
    if (a3)
    {
      *a2 = 0;
    }

    else
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    return 1;
  }

  else
  {
    v8 = *(this + 2);
    if (v8[v6 - 2] >= 0x10000)
    {
      if (*v8 < 0x10000)
      {
        if (v6 < 2)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          v10 = 0;
          while (v8[v10] < 0x10000)
          {
            if (v7 == ++v10)
            {
              LODWORD(v10) = v6 - 1;
              break;
            }
          }
        }

        v9 = v10 + 2 * (v7 - v10);
        LODWORD(v7) = v10;
      }

      else
      {
        v9 = 2 * v7;
        LODWORD(v7) = 0;
      }
    }

    else
    {
      v9 = v6 - 1;
    }

    if (v9 >= 0x8000)
    {
      result = 0;
      v5 = U_INDEX_OUTOFBOUNDS_ERROR;
      goto LABEL_7;
    }

    if (v9 <= v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    result = (v11 + v9);
    if (result > a3)
    {
      v5 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_7;
    }

    *a2 = v9;
    if (v9 > v7)
    {
      *a2 = v9 | 0x8000;
      a2[1] = v7;
      ++a2;
    }

    v12 = a2 + 1;
    if (v7 < 1)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v13 = v7;
      do
      {
        v14 = *v8++;
        *v12++ = v14;
        --v13;
      }

      while (v13);
    }

    while (v7 < v9)
    {
      v15 = *v8++;
      HIDWORD(v16) = v15;
      LODWORD(v16) = v15;
      *v12 = v16 >> 16;
      v12 += 2;
      LODWORD(v7) = v7 + 2;
    }
  }

  return result;
}

uint64_t icu::UnicodeSet::nextCapacity(icu::UnicodeSet *this)
{
  if (this <= 24)
  {
    return (this + 25);
  }

  if (this <= 0x9C4)
  {
    return (5 * this);
  }

  if ((2 * this) > 0x110000)
  {
    return 1114113;
  }

  return (2 * this);
}

uint64_t icu::UnicodeSet::ensureBufferCapacity(icu::UnicodeSet *this, int a2)
{
  if (a2 > 1114112)
  {
    v2 = 1114113;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= *(this + 14))
  {
    return 1;
  }

  if ((2 * v2) > 0x110000)
  {
    v4 = 1114113;
  }

  else
  {
    v4 = 2 * v2;
  }

  if (a2 <= 0x9C4)
  {
    v4 = 5 * v2;
  }

  v5 = v2 + 25;
  if (a2 <= 24)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  if (v7)
  {
    v8 = v7;
    v9 = *(this + 6);
    if (v9 != this + 96)
    {
      free(v9);
    }

    *(this + 6) = v8;
    *(this + 14) = v6;
    return 1;
  }

  else
  {
    icu::UnicodeSet::clear(this);
    result = 0;
    *(this + 32) = 1;
  }

  return result;
}

uint64_t icu::UnicodeSet::swapBuffers(uint64_t this)
{
  v1 = *(this + 16);
  *(this + 16) = *(this + 48);
  *(this + 48) = v1;
  LODWORD(v1) = *(this + 24);
  *(this + 24) = *(this + 56);
  *(this + 56) = v1;
  return this;
}

icu::ICU_Utility *icu::UnicodeSet::_appendToPat(icu::ICU_Utility *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v3 = *(a2 + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 3);
  }

  if (v5 >= 1)
  {
    v6 = a3;
    v8 = this;
    v9 = 0;
    do
    {
      v10 = icu::UnicodeString::char32At(a2, v9);
      v11 = v10;
      this = icu::UnicodeSet::_appendToPat(v8, v10, v6);
      if (v11 < 0x10000)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v9 += v12;
      v13 = *(a2 + 4);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 < 0)
      {
        v15 = *(a2 + 3);
      }
    }

    while (v9 < v15);
  }

  return this;
}

icu::ICU_Utility *icu::UnicodeSet::_appendToPat(icu::UnicodeSet *this, icu::UnicodeString *a2, int a3)
{
  if (!a3)
  {
    if (icu::ICU_Utility::shouldAlwaysBeEscaped(a2))
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((a2 - 36) <= 0x3A && ((1 << (a2 - 36)) & 0x780000000400205) != 0 || a2 == 125 || a2 == 123)
    {
      v7 = 92;
      v6 = &v7;
    }

    else
    {
      if (!icu::PatternProps::isWhiteSpace(a2))
      {
        return icu::UnicodeString::append(this, a2);
      }

      v8 = 92;
      v6 = &v8;
    }

    icu::UnicodeString::doAppend(this, v6, 0, 1);
    return icu::UnicodeString::append(this, a2);
  }

  if (!icu::ICU_Utility::isUnprintable(a2))
  {
    goto LABEL_7;
  }

LABEL_3:

  return icu::ICU_Utility::escape(this, a2);
}

icu::ICU_Utility *icu::UnicodeSet::_appendToPat(icu::UnicodeSet *this, icu::UnicodeString *a2, icu::UnicodeString *a3, int a4)
{
  v6 = a2;
  result = icu::UnicodeSet::_appendToPat(this, a2, a4);
  if (v6 != a3)
  {
    if (v6 == 56319 || v6 + 1 != a3)
    {
      v9 = 45;
      icu::UnicodeString::doAppend(this, &v9, 0, 1);
    }

    return icu::UnicodeSet::_appendToPat(this, a3, a4);
  }

  return result;
}

icu::UnicodeString *icu::UnicodeSet::_toPattern(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v3 = a3;
  if (*(this + 8))
  {
    v6 = *(this + 18);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(this + 8);
        v10 = v8 + 1;
        v11 = *(v9 + 2 * v8);
        if ((v11 & 0xFC00) != 0xD800 || v10 == v6)
        {
          ++v8;
        }

        else
        {
          v13 = *(v9 + 2 * v10);
          v14 = (v13 & 0xFC00) == 56320;
          v15 = v13 + (v11 << 10) - 56613888;
          if (v14)
          {
            v8 += 2;
          }

          else
          {
            ++v8;
          }

          if (v14)
          {
            v11 = v15;
          }

          else
          {
            v11 = v11;
          }
        }

        if (v3)
        {
          if (icu::ICU_Utility::isUnprintable(v11))
          {
            goto LABEL_18;
          }
        }

        else if (icu::ICU_Utility::shouldAlwaysBeEscaped(v11))
        {
LABEL_18:
          if ((v7 & 0x80000001) == 1)
          {
            v16 = *(a2 + 4);
            if (*(a2 + 4) < 0)
            {
              v17 = *(a2 + 3);
            }

            else
            {
              v17 = v16 >> 5;
            }

            v18 = v17 - 1;
            if ((v16 & 1) != 0 && v17 == 1)
            {
              icu::UnicodeString::unBogus(a2);
            }

            else if (v17 > v18)
            {
              if (v18 > 1023)
              {
                *(a2 + 4) = v16 | 0xFFE0;
                *(a2 + 3) = v18;
              }

              else
              {
                *(a2 + 4) = *(a2 + 4) & 0x1F | (32 * v18);
              }
            }
          }

          icu::ICU_Utility::escape(a2, v11);
          v7 = 0;
          goto LABEL_34;
        }

        icu::UnicodeString::append(a2, v11);
        if (v11 == 92)
        {
          ++v7;
        }

        else
        {
          v7 = 0;
        }

LABEL_34:
        v6 = *(this + 18);
      }

      while (v8 < v6);
    }

    return a2;
  }

  else
  {

    return icu::UnicodeSet::_generatePattern(this, a2, a3);
  }
}

uint64_t icu::UnicodeSet::_generatePattern(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v31 = 91;
  icu::UnicodeString::doAppend(a2, &v31, 0, 1);
  v6 = *(this + 7);
  v7 = v6 & 0xFFFFFFFE;
  if (v6 >= 4 && (v7 == v6 ? (v8 = **(this + 2) == 0) : (v8 = 0), v8))
  {
    v29 = *(this + 10);
    if (v29 && *(v29 + 8))
    {
      LODWORD(v9) = 0;
      v7 = *(this + 7);
    }

    else
    {
      v32 = 94;
      LODWORD(v9) = 1;
      icu::UnicodeString::doAppend(a2, &v32, 0, 1);
      v7 = v6 - 1;
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < v7)
  {
    v10 = v7;
    v30 = v7;
    do
    {
      v11 = *(this + 2);
      v12 = v9;
      v13 = (v11 + 4 * v9);
      v14 = v13[1];
      if (v14 - 55297 > 0x3FF)
      {
        icu::UnicodeSet::_appendToPat(a2, *v13, (v14 - 1), a3);
        v7 = v30;
        LODWORD(v9) = v9 + 2;
      }

      else
      {
        v15 = v9 + 2;
        v16 = v9 << 32;
        v17 = v9 + 2;
        do
        {
          v18 = v15;
          v19 = v16;
          if (v17 >= v10)
          {
            break;
          }

          v20 = *(v11 + 4 * v17);
          v15 += 2;
          v16 += 0x200000000;
          v17 += 2;
        }

        while (v20 < 56320);
        LODWORD(v9) = v18;
        if (v7 > v18)
        {
          v9 = v18;
          do
          {
            v21 = *(this + 2);
            v22 = *(v21 + 4 * v9);
            if (v22 >= 57344)
            {
              break;
            }

            icu::UnicodeSet::_appendToPat(a2, v22, (*(v21 + 4 * v9 + 4) - 1), a3);
            v9 += 2;
          }

          while (v9 < v10);
          v7 = v30;
        }

        if (v12 < v18)
        {
          v23 = v19 >> 32;
          do
          {
            icu::UnicodeSet::_appendToPat(a2, *(*(this + 2) + 4 * v12), (*(*(this + 2) + 4 * v12 + 4) - 1), a3);
            v24 = v12 < v23;
            v12 += 2;
          }

          while (v24);
          v7 = v30;
        }
      }
    }

    while (v9 < v7);
  }

  v25 = *(this + 10);
  if (v25 && *(v25 + 8) >= 1)
  {
    v26 = 0;
    do
    {
      v33 = 123;
      icu::UnicodeString::doAppend(a2, &v33, 0, 1);
      v27 = icu::UVector::elementAt(*(this + 10), v26);
      icu::UnicodeSet::_appendToPat(a2, v27, a3);
      v34 = 125;
      icu::UnicodeString::doAppend(a2, &v34, 0, 1);
      ++v26;
    }

    while (v26 < *(*(this + 10) + 8));
  }

  v35 = 93;
  return icu::UnicodeString::doAppend(a2, &v35, 0, 1);
}

icu::UnicodeString *icu::UnicodeSet::toPattern(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v6 = *(a2 + 4);
  if (v6)
  {
    icu::UnicodeString::unBogus(a2);
  }

  else
  {
    if ((v6 & 0x8000u) == 0)
    {
      v7 = v6 >> 5;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (v7)
    {
      *(a2 + 4) &= 0x1Eu;
    }
  }

  return icu::UnicodeSet::_toPattern(this, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::freeze(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    icu::UnicodeSet::compact(this);
    v2 = *(this + 10);
    if (v2 && *(v2 + 8))
    {
      operator new();
    }

    if (!*(this + 11))
    {
      operator new();
    }
  }

  return this;
}

unint64_t icu::UnicodeSet::spanBack(icu::UnicodeSet *this, UChar *s, unint64_t a3, int a4)
{
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v5 = u_strlen(s);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(this + 5);
    if (v8)
    {
      v5 = (sub_1951CA4A8(v8, s, &s[a3], a4) - s) >> 1;
LABEL_6:
      v9 = *MEMORY[0x1E69E9840];
      return v5;
    }
  }

  v11 = *(this + 11);
  if (!v11)
  {
    v13 = *(this + 10);
    if (v13 && *(v13 + 8))
    {
      v31 = 0;
      if (a4)
      {
        v14 = 26;
      }

      else
      {
        v14 = 25;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(v21, 0, sizeof(v21));
      sub_19527E900(v21, this, v13, v14);
      if (HIDWORD(v22))
      {
        v5 = sub_19527F37C(v21, s, v5, a4);
        sub_19527EA78(v21);
        goto LABEL_6;
      }

      sub_19527EA78(v21);
    }

    v15 = a4 != 0;
    do
    {
      v16 = (v5 - 1);
      v17 = s[v16];
      if (v5 > 1 && (v17 & 0xFC00) == 0xDC00)
      {
        v18 = s[v5 - 2];
        v19 = v18 & 0xFC00;
        v20 = v17 + (v18 << 10) - 56613888;
        v16 = v19 == 55296 ? (v5 - 2) : v16;
        if (v19 == 55296)
        {
          v17 = v20;
        }
      }

      if (v15 != icu::UnicodeSet::contains(this, v17))
      {
        break;
      }

      v5 = v16;
    }

    while (v16 >= 1);
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E69E9840];

  return sub_19527F37C(v11, s, v5, a4);
}

uint64_t icu::UnicodeSet::spanUTF8(icu::UnicodeSet *this, char *__s, size_t a3, int a4)
{
  v5 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0 || (v5 = strlen(__s), !v5))
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(this + 5);
    if (v8)
    {
      v9 = sub_1951CA700(v8, __s, a3, a4) - __s;
LABEL_6:
      v10 = *MEMORY[0x1E69E9840];
      return v9;
    }
  }

  v12 = *(this + 11);
  if (!v12)
  {
    v14 = *(this + 10);
    if (v14 && *(v14 + 8))
    {
      v35 = 0;
      if (a4)
      {
        v15 = 38;
      }

      else
      {
        v15 = 37;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      memset(v26, 0, sizeof(v26));
      sub_19527E900(v26, this, v14, v15);
      if (v27)
      {
        v9 = sub_19527FC18(v26, __s, v5, a4);
        sub_19527EA78(v26);
        goto LABEL_6;
      }

      sub_19527EA78(v26);
    }

    v9 = 0;
    v16 = a4 != 0;
    while (1)
    {
      v17 = v9 + 1;
      v18 = __s[v9];
      v19 = __s[v9];
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      if (v17 == v5)
      {
        goto LABEL_23;
      }

      if (v19 < 0xE0)
      {
        break;
      }

      if (v19 <= 0xEF)
      {
        v20 = v18 & 0xF;
        if ((a00000000000000[v20] >> (__s[v17] >> 5)))
        {
          v21 = __s[v17] & 0x3F;
          goto LABEL_28;
        }

        goto LABEL_43;
      }

      if (v19 > 0xF4)
      {
        goto LABEL_43;
      }

      v25 = __s[v17];
      if (((byte_19547BF10[v25 >> 4] >> (v19 + 16)) & 1) == 0)
      {
        goto LABEL_43;
      }

      v17 = v9 + 2;
      if (v9 + 2 == v5)
      {
        goto LABEL_23;
      }

      v21 = __s[v17] ^ 0x80;
      if (v21 <= 0x3F)
      {
        LODWORD(v20) = v25 & 0x3F | ((v19 - 240) << 6);
LABEL_28:
        LODWORD(v17) = v17 + 1;
        if (v17 != v5)
        {
          v22 = v21 | (v20 << 6);
LABEL_32:
          v23 = __s[v17] ^ 0x80;
          v24 = v23 | (v22 << 6);
          if (v23 <= 0x3F)
          {
            v19 = v24;
          }

          else
          {
            v19 = 65533;
          }

          if (v23 > 0x3F)
          {
            v17 = v17;
          }

          else
          {
            v17 = (v17 + 1);
          }

          goto LABEL_44;
        }

LABEL_23:
        v19 = 65533;
        v17 = v5;
        goto LABEL_44;
      }

      v19 = 65533;
LABEL_44:
      if (v16 == icu::UnicodeSet::contains(this, v19))
      {
        v9 = v17;
        if (v17 < v5)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    if (v19 >= 0xC2)
    {
      v22 = v19 & 0x1F;
      goto LABEL_32;
    }

LABEL_43:
    v19 = 65533;
    goto LABEL_44;
  }

  v13 = *MEMORY[0x1E69E9840];

  return sub_19527FC18(v12, __s, v5, a4);
}

size_t icu::UnicodeSet::spanBackUTF8(icu::UnicodeSet *this, uint8_t *s, uint64_t a3, int a4)
{
  v5 = a3;
  v29 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) != 0)
    {
      v5 = strlen(s);
      if (v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_8:
    v11 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *MEMORY[0x1E69E9840];

    return sub_1951CAA2C(v8, s, a3, a4);
  }

LABEL_10:
  v12 = *(this + 11);
  if (!v12)
  {
    v14 = *(this + 10);
    if (v14 && *(v14 + 8))
    {
      v28 = 0;
      if (a4)
      {
        v15 = 22;
      }

      else
      {
        v15 = 21;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      memset(v19, 0, sizeof(v19));
      sub_19527E900(v19, this, v14, v15);
      if (v20)
      {
        v5 = sub_195280370(v19, s, v5, a4);
        sub_19527EA78(v19);
        goto LABEL_8;
      }

      sub_19527EA78(v19);
    }

    v16 = a4 != 0;
    do
    {
      pi = v5 - 1;
      v17 = s[v5 - 1];
      if ((v17 & 0x80) != 0)
      {
        v17 = utf8_prevCharSafeBody(s, 0, &pi, v17, -3);
      }

      if (v16 != icu::UnicodeSet::contains(this, v17))
      {
        break;
      }

      v5 = pi;
    }

    while (pi > 0);
    goto LABEL_8;
  }

  v13 = *MEMORY[0x1E69E9840];

  return sub_195280370(v12, s, v5, a4);
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeString *a2, unsigned int a3, const icu::SymbolTable *a4, UErrorCode *a5)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5);
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, unsigned int a3, const icu::SymbolTable *a4, UErrorCode *a5)
{
  v6 = a3;
  v15 = &unk_1F0932C70;
  v16 = 0xFFFFFFFF00000000;
  icu::UnicodeSet::applyPattern(this, a2, &v15, a3, a4, a5);
  if (*a5 <= 0)
  {
    v9 = v16;
    v14 = v16;
    if (v6)
    {
      icu::ICU_Utility::skipWhitespace(a2, &v14, 1);
      v9 = v14;
    }

    v10 = *(a2 + 4);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 < 0)
    {
      v12 = *(a2 + 3);
    }

    if (v9 != v12)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  icu::ParsePosition::~ParsePosition(&v15);
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, unsigned int a4, const icu::SymbolTable *a5, UErrorCode *a6)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5, a6);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5, a6);
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, unsigned int a4, const icu::SymbolTable *a5, UErrorCode *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (*(this + 5) || *(this + 11))
    {
      *a6 = U_NO_WRITE_PERMISSION;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v20 = 0;
      v19 = 0u;
      v15 = 0;
      v16 = &unk_1F0935D00;
      LOWORD(v17) = 2;
      v13 = 0u;
      v14 = 0u;
      sub_19521D664(&v13, a2, a5, a3);
      icu::UnicodeSet::applyPattern(this, &v13, a5, &v16, a4, icu::UnicodeSet::closeOver, 0, 0, a6);
      v12 = *a6;
      if (v12 <= 0)
      {
        if (*(&v14 + 1))
        {
          v12 = 65538;
          *a6 = U_MALFORMED_SET;
        }

        else
        {
          sub_19527B7E0(this, &v16);
        }
      }

      icu::UnicodeString::~UnicodeString(v12, &v16);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return this;
}

icu::UVector **icu::UnicodeSet::closeOver(icu::UVector **this, char a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    if ((a2 & 6u) > 3)
    {
      if ((a2 & 6) != 4)
      {
        v3 = 1;
        goto LABEL_10;
      }

      icu::UnicodeSet::closeOverAddCaseMappings(this);
    }

    else if ((a2 & 6) != 0)
    {
      v3 = 0;
LABEL_10:
      icu::UnicodeSet::closeOverCaseInsensitive(this, v3);
    }
  }

  return this;
}

UChar *sub_19527B7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x11) != 0)
  {
    v3 = 0;
  }

  else if ((v2 & 2) != 0)
  {
    v3 = (a2 + 10);
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = v2;
  v5 = v2 >> 5;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a2 + 12);
  }

  return icu::UnicodeSet::setPattern(a1, v3, v6);
}

void icu::UnicodeSet::closeOverCaseInsensitive(icu::UnicodeSet *this, int a2)
{
  v3 = this;
  v66 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *v53 = 0u;
  memset(v52, 0, sizeof(v52));
  icu::UnicodeSet::UnicodeSet(v52, this);
  if ((a2 & 1) == 0 && icu::UnicodeSet::hasStrings(v52))
  {
    icu::UVector::removeAllElements(v53[0]);
  }

  v51[0] = v52;
  v51[1] = icu::UnicodeSet::add;
  v51[2] = icu::UnicodeSet::add;
  v51[4] = 0;
  v51[5] = 0;
  v51[3] = sub_19527C110;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  icu::UnicodeSet::UnicodeSet(v49, 0, 1114111);
  v4 = sub_19527C1A0(v3, v49);
  RangeCount = icu::UnicodeSet::getRangeCount(v4);
  if (RangeCount >= 1)
  {
    v6 = RangeCount;
    for (i = 0; i != v6; ++i)
    {
      RangeStart = icu::UnicodeSet::getRangeStart(v4, i);
      RangeEnd = icu::UnicodeSet::getRangeEnd(v4, i);
      if (a2)
      {
        if (RangeStart <= RangeEnd)
        {
          v10 = RangeEnd + 1;
          do
          {
            sub_19522E504(RangeStart, v51);
            RangeStart = (RangeStart + 1);
          }

          while (v10 != RangeStart);
        }
      }

      else if (RangeStart <= RangeEnd)
      {
        v11 = RangeEnd + 1;
        do
        {
          sub_19522E1E8(RangeStart, v51);
          RangeStart = (RangeStart + 1);
        }

        while (v11 != RangeStart);
      }
    }
  }

  if (icu::UnicodeSet::hasStrings(v3))
  {
    v48 = a2;
    v12 = &v61;
    v62 = 0u;
    v65 = 0;
    v64 = 0u;
    v63 = 0u;
    v61 = &unk_1F0935D00;
    LOWORD(v62) = 2;
    v13 = *(v3 + 10);
    if (v13[2] >= 1)
    {
      v14 = 0;
      v47 = v3;
      do
      {
        v15 = icu::UVector::elementAt(v13, v14);
        v16 = v15;
        if (v48)
        {
          v17 = *(v15 + 8);
          if ((v17 & 0x11) != 0)
          {
            v18 = 0;
          }

          else if ((v17 & 2) != 0)
          {
            v18 = v15 + 10;
          }

          else
          {
            v18 = *(v15 + 24);
          }

          v23 = v17;
          v24 = v17 >> 5;
          if (v23 >= 0)
          {
            v25 = v24;
          }

          else
          {
            v25 = *(v15 + 12);
          }

          if (v25 < 1)
          {
            goto LABEL_75;
          }

          v26 = 0;
          while (1)
          {
            v27 = v26 + 1;
            v28 = *(v18 + 2 * v26);
            if ((v28 & 0xFC00) != 0xD800 || v27 == v25)
            {
              ++v26;
            }

            else
            {
              v30 = *(v18 + 2 * v27);
              v31 = (v30 & 0xFC00) == 56320;
              v32 = (v28 << 10) - 56613888 + v30;
              if (v31)
              {
                v26 += 2;
              }

              else
              {
                ++v26;
              }

              if (v31)
              {
                v28 = v32;
              }
            }

            v33 = u_foldCase(v28, 0);
            if (v33 != v28)
            {
              break;
            }

            if (v26 >= v25)
            {
              goto LABEL_75;
            }
          }

          v34 = v33;
          if (v28 >= 0x10000)
          {
            v35 = -2;
          }

          else
          {
            v35 = -1;
          }

          icu::UnicodeString::unBogus(&v61);
          if ((v62 & 0x8000u) == 0)
          {
            v36 = v62 >> 5;
          }

          else
          {
            v36 = DWORD1(v62);
          }

          icu::UnicodeString::doReplace(&v61, 0, v36, v18, 0, (v35 + v26));
          icu::UnicodeString::append(&v61, v34);
          if (v26 != v25)
          {
            v37 = v26;
            do
            {
              v38 = v37 + 1;
              v39 = *(v18 + 2 * v37);
              if ((v39 & 0xFC00) == 0xD800 && v38 != v25)
              {
                v41 = *(v18 + 2 * v38);
                v42 = (v41 & 0xFC00) == 56320;
                v43 = v37 + 2;
                v44 = (v39 << 10) - 56613888 + v41;
                if (v42)
                {
                  LODWORD(v38) = v43;
                }

                if (v42)
                {
                  v39 = v44;
                }
              }

              v45 = u_foldCase(v39, 0);
              icu::UnicodeString::append(&v61, v45);
              v37 = v38;
            }

            while (v38 != v25);
          }

          v22 = icu::UnicodeSet::remove(v52, v16);
        }

        else
        {
          icu::UnicodeString::operator=(&v61, v15);
          icu::UnicodeString::foldCase(&v61, 0);
          v19 = v63;
          if ((v62 & 2) != 0)
          {
            v19 = &v62 + 1;
          }

          if ((v62 & 0x11) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19;
          }

          if ((v62 & 0x8000u) == 0)
          {
            v21 = v62 >> 5;
          }

          else
          {
            v21 = DWORD1(v62);
          }

          if (sub_19522E7D4(v20, v21, v51))
          {
            goto LABEL_75;
          }

          v22 = v52;
        }

        icu::UnicodeSet::add(v22, &v61);
LABEL_75:
        ++v14;
        v3 = v47;
        v13 = v47[10];
        v12 = v13[2];
      }

      while (v14 < v12);
    }

    icu::UnicodeString::~UnicodeString(v12, &v61);
  }

  icu::UnicodeSet::operator=(v3, v52);
  icu::UnicodeSet::~UnicodeSet(v49);
  icu::UnicodeSet::~UnicodeSet(v52);
  v46 = *MEMORY[0x1E69E9840];
}

void icu::UnicodeSet::closeOverAddCaseMappings(icu::UVector **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  icu::UnicodeSet::UnicodeSet(v29, this);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  icu::UnicodeSet::UnicodeSet(v27, 0, 1114111);
  v2 = sub_19527C1A0(this, v27);
  RangeCount = icu::UnicodeSet::getRangeCount(v2);
  v26 = 0;
  v33 = 0u;
  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  v32 = &unk_1F0935D00;
  LOWORD(v33) = 2;
  if (RangeCount >= 1)
  {
    v4 = RangeCount;
    for (i = 0; i != v4; ++i)
    {
      RangeStart = icu::UnicodeSet::getRangeStart(v2, i);
      RangeEnd = icu::UnicodeSet::getRangeEnd(v2, i);
      if (RangeStart <= RangeEnd)
      {
        v8 = RangeEnd + 1;
        do
        {
          v9 = ucase_toFullLower(RangeStart, 0, 0, &v26, 1);
          if ((v9 & 0x80000000) == 0)
          {
            if (v9 < 0x20)
            {
              *&v31[0] = v26;
              icu::UnicodeString::setTo(&v32, 0, v31, v9);
              icu::UnicodeSet::add(v29, &v32);
            }

            else
            {
              icu::UnicodeSet::add(v29, v9);
            }
          }

          v10 = ucase_toFullTitle(RangeStart, 0, 0, &v26, 1);
          if ((v10 & 0x80000000) == 0)
          {
            if (v10 < 0x20)
            {
              *&v31[0] = v26;
              icu::UnicodeString::setTo(&v32, 0, v31, v10);
              icu::UnicodeSet::add(v29, &v32);
            }

            else
            {
              icu::UnicodeSet::add(v29, v10);
            }
          }

          v11 = ucase_toFullUpper(RangeStart, 0, 0, &v26, 1);
          if ((v11 & 0x80000000) == 0)
          {
            if (v11 < 0x20)
            {
              *&v31[0] = v26;
              icu::UnicodeString::setTo(&v32, 0, v31, v11);
              icu::UnicodeSet::add(v29, &v32);
            }

            else
            {
              icu::UnicodeSet::add(v29, v11);
            }
          }

          v12 = ucase_toFullFolding(RangeStart, &v26, 0);
          if ((v12 & 0x80000000) == 0)
          {
            if (v12 < 0x20)
            {
              *&v31[0] = v26;
              icu::UnicodeString::setTo(&v32, 0, v31, v12);
              icu::UnicodeSet::add(v29, &v32);
            }

            else
            {
              icu::UnicodeSet::add(v29, v12);
            }
          }

          ++RangeStart;
        }

        while (v8 != RangeStart);
      }
    }
  }

  if (icu::UnicodeSet::hasStrings(this))
  {
    memset(v31, 0, sizeof(v31));
    icu::Locale::Locale(v31, "", 0, 0, 0);
    v25 = 0;
    WordInstance = icu::BreakIterator::createWordInstance(v31, &v25, v13, v14);
    if (v25 <= 0)
    {
      v16 = this[10];
      if (*(v16 + 2) >= 1)
      {
        v17 = 0;
        do
        {
          v18 = icu::UVector::elementAt(v16, v17);
          v19 = icu::UnicodeString::operator=(&v32, v18);
          icu::UnicodeString::toLower(v19, v31);
          icu::UnicodeSet::add(v29, &v32);
          v20 = icu::UnicodeString::operator=(&v32, v18);
          icu::UnicodeString::toTitle(v20, WordInstance, v31);
          icu::UnicodeSet::add(v29, &v32);
          v21 = icu::UnicodeString::operator=(&v32, v18);
          icu::UnicodeString::toUpper(v21, v31);
          icu::UnicodeSet::add(v29, &v32);
          v22 = icu::UnicodeString::operator=(&v32, v18);
          icu::UnicodeString::foldCase(v22, 0);
          icu::UnicodeSet::add(v29, &v32);
          ++v17;
          v16 = this[10];
        }

        while (v17 < *(v16 + 2));
      }
    }

    if (WordInstance)
    {
      (*(*WordInstance + 8))(WordInstance);
    }

    icu::Locale::~Locale(v31);
  }

  icu::UnicodeSet::operator=(this, v29);
  icu::UnicodeString::~UnicodeString(v23, &v32);
  icu::UnicodeSet::~UnicodeSet(v27);
  icu::UnicodeSet::~UnicodeSet(v29);
  v24 = *MEMORY[0x1E69E9840];
}

void *sub_19527C110(icu::UnicodeSet *a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 >> 31, &v7);
  icu::UnicodeSet::add(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UVector **sub_19527C1A0(icu::UnicodeSet *a1, icu::UVector **a2)
{
  v3 = a1;
  if (icu::UnicodeSet::size(a1) >= 30)
  {
    v10 = 0;
    v4 = sub_1951D1334(0x22u, &v10);
    if (v10 <= 0)
    {
      v5 = v4;
      RangeCount = icu::UnicodeSet::getRangeCount(v3);
      v7 = icu::UnicodeSet::getRangeCount(v5);
      if (RangeCount <= v7)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      if (RangeCount <= v7)
      {
        v3 = v5;
      }

      icu::UnicodeSet::retainAll(a2, v8);
      icu::UnicodeSet::retainAll(a2, v3);
      return a2;
    }
  }

  return v3;
}

uint64_t sub_19527C23C(int *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9A88, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9A88))
    {
      sub_19527C2CC();
    }

    if (dword_1EAEC9A8C >= 1)
    {
      *a1 = dword_1EAEC9A8C;
    }
  }

  return qword_1EAEC9A80;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v11 = &unk_1F0932C70;
  v12 = 0xFFFFFFFF00000000;
  icu::UnicodeSet::applyPatternIgnoreSpace(this, a2, &v11, 0, a3);
  if (*a3 <= 0)
  {
    v10 = v12;
    icu::ICU_Utility::skipWhitespace(a2, &v10, 1);
    v6 = *(a2 + 4);
    v7 = v6;
    v8 = v6 >> 5;
    if (v7 < 0)
    {
      v8 = *(a2 + 3);
    }

    if (v10 != v8)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  icu::ParsePosition::~ParsePosition(&v11);
  return this;
}

void icu::UnicodeSet::applyPatternIgnoreSpace(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, const icu::SymbolTable *a4, UErrorCode *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (*(this + 5) || *(this + 11))
    {
      *a5 = U_NO_WRITE_PERMISSION;
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v16 = 0;
      v15 = 0u;
      v11 = 0;
      v12 = &unk_1F0935D00;
      LOWORD(v13) = 2;
      v9 = 0u;
      v10 = 0u;
      sub_19521D664(&v9, a2, a4, a3);
      icu::UnicodeSet::applyPattern(this, &v9, a4, &v12, 1u, 0, 0, 0, a5);
      if (*a5 <= 0)
      {
        if (*(&v10 + 1))
        {
          *a5 = U_MALFORMED_SET;
        }

        else
        {
          sub_19527B7E0(this, &v12);
        }
      }

      icu::UnicodeString::~UnicodeString(&v12);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void icu::UnicodeSet::applyPattern(icu::UnicodeSet *a1, uint64_t *a2, uint64_t a3, icu::UnicodeString *a4, unsigned int a5, void (*a6)(void *), uint64_t a7, int a8, int *a9)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*a9 > 0)
  {
    goto LABEL_135;
  }

  if (a8 >= 101)
  {
    *a9 = 1;
    goto LABEL_135;
  }

  v52 = 0u;
  v55 = 0;
  v54 = 0u;
  v53 = 0u;
  v51 = &unk_1F0935D00;
  if (a5)
  {
    v11 = 7;
  }

  else
  {
    v11 = 3;
  }

  LOWORD(v52) = 2;
  v47 = 0uLL;
  v50 = 0;
  v49 = 0uLL;
  v48 = 0uLL;
  v46 = &unk_1F0935D00;
  LOWORD(v47) = 2;
  v44[0] = 0;
  v44[1] = 0;
  icu::UnicodeSet::clear(a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v37 = 0;
  for (i = 0; ; i = 45)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (sub_19521D674(a2))
          {
            goto LABEL_132;
          }

          v43 = 0;
          if (icu::UnicodeSet::resemblesPropertyPattern(a2, v11))
          {
            v17 = 0;
            v18 = 2;
            goto LABEL_11;
          }

          sub_19521DA64(a2, v44);
          v19 = sub_19521D6B0(a2, v11, &v43, a9);
          if (*a9 > 0)
          {
            goto LABEL_134;
          }

          v20 = v19;
          if (v19 != 91 || v43)
          {
            break;
          }

          if (v14 == 1)
          {
            sub_19521DA80(a2, v44);
            v17 = 0;
            v18 = 1;
            goto LABEL_11;
          }

          v45 = 91;
          icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
          sub_19521DA64(a2, v44);
          v24 = sub_19521D6B0(a2, v11, &v43, a9);
          if (*a9 > 0)
          {
            goto LABEL_134;
          }

          if (v24 == 94 && !v43)
          {
            v45 = 94;
            v37 = 1;
            icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
            sub_19521DA64(a2, v44);
            v24 = sub_19521D6B0(a2, v11, &v43, a9);
            if (*a9 > 0)
            {
              goto LABEL_134;
            }
          }

          if (v24 == 45)
          {
            v14 = 1;
            v43 = 1;
            v20 = 45;
LABEL_56:
            if (v13 == 2)
            {
              if (i)
              {
                goto LABEL_132;
              }

LABEL_72:
              v13 = 1;
              v15 = v20;
            }

            else
            {
              if (v13 != 1)
              {
                goto LABEL_72;
              }

              if (i != 45)
              {
                icu::UnicodeSet::add(a1, v15, v15);
                icu::UnicodeSet::_appendToPat(&v51, v15, 0);
                goto LABEL_72;
              }

              if (v15 >= v20)
              {
                goto LABEL_132;
              }

              icu::UnicodeSet::add(a1, v15, v20);
              icu::UnicodeSet::_appendToPat(&v51, v15, 0);
              v45 = 45;
              icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
              icu::UnicodeSet::_appendToPat(&v51, v20, 0);
LABEL_63:
              i = 0;
              v13 = 0;
            }
          }

          else
          {
            sub_19521DA80(a2, v44);
            v14 = 1;
          }
        }

        if (!a3)
        {
          break;
        }

        v21 = (*(*a3 + 24))(a3, v19);
        if (!v21)
        {
          break;
        }

        v22 = **v21;
        if (!v23)
        {
          goto LABEL_132;
        }

        v17 = v23;
        v18 = 3;
LABEL_11:
        if (v13 == 1)
        {
          if (i)
          {
            goto LABEL_132;
          }

          icu::UnicodeSet::add(a1, v15, v15);
          icu::UnicodeSet::_appendToPat(&v51, v15, 0);
        }

        else if (i == 45 || i == 38)
        {
          v45 = i;
          icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
        }

        if (!v17)
        {
          operator new();
        }

        if (v18 == 3)
        {
          icu::UnicodeSet::_toPattern(v17, &v51, 0);
        }

        else if (v18 == 2)
        {
          sub_19521DA9C(a2, v11);
          icu::UnicodeSet::applyPropertyPattern(v17, a2, &v51, a9);
          if (*a9 >= 1)
          {
            goto LABEL_134;
          }
        }

        else
        {
          icu::UnicodeSet::applyPattern(v17, a2, a3, &v51, a5, a6, a7, (a8 + 1), a9);
        }

        if (!v14)
        {
          icu::UnicodeSet::operator=(a1, v17);
          v29 = 0;
          goto LABEL_113;
        }

        if (i)
        {
          if (i == 38)
          {
            icu::UnicodeSet::retainAll(a1, v17);
          }

          else
          {
            icu::UnicodeSet::removeAll(a1, v17);
          }

          i = 0;
        }

        else
        {
          icu::UnicodeSet::addAll(a1, v17);
        }

        v12 = 1;
        v13 = 2;
      }

      if (!v14)
      {
        goto LABEL_132;
      }

      if (v43)
      {
        goto LABEL_56;
      }

      if (v20 > 44)
      {
        break;
      }

      if (v20 == 36)
      {
        sub_19521DA64(a2, v44);
        v26 = sub_19521D6B0(a2, v11, &v43, a9);
        if (*a9 > 0)
        {
          goto LABEL_134;
        }

        if (v43)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26 == 93;
        }

        v28 = v27;
        if (!a3 && !v28)
        {
          sub_19521DA80(a2, v44);
          v20 = 36;
          goto LABEL_56;
        }

        if (i)
        {
          v28 = 0;
        }

        if (v28 == 1)
        {
          if (v13 == 1)
          {
            icu::UnicodeSet::add(a1, v15, v15);
            icu::UnicodeSet::_appendToPat(&v51, v15, 0);
          }

          icu::UnicodeSet::add(a1, 0xFFFFu);
          v45 = 36;
          v12 = 1;
          goto LABEL_110;
        }

LABEL_132:
        v33 = 65538;
        goto LABEL_133;
      }

      if (v20 != 38)
      {
        goto LABEL_56;
      }

      if (v13 != 2 || i)
      {
        goto LABEL_132;
      }

      v13 = 2;
      i = 38;
    }

    if (v20 > 93)
    {
      if (v20 != 123)
      {
        if (v20 == 94)
        {
          goto LABEL_132;
        }

        goto LABEL_56;
      }

      if (!i)
      {
        if (v13 == 1)
        {
          icu::UnicodeSet::add(a1, v15, v15);
          icu::UnicodeSet::_appendToPat(&v51, v15, 0);
        }

        sub_19527D3AC(&v46, 0);
        while (!sub_19521D674(a2))
        {
          v25 = sub_19521D6B0(a2, v11, &v43, a9);
          if (*a9 > 0)
          {
            goto LABEL_134;
          }

          if (v25 == 125 && !v43)
          {
            icu::UnicodeSet::add(a1, &v46);
            v45 = 123;
            icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
            icu::UnicodeSet::_appendToPat(&v51, &v46, 0);
            v45 = 125;
            icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
            goto LABEL_63;
          }

          icu::UnicodeString::append(&v46, v25);
        }
      }

      goto LABEL_132;
    }

    if (v20 != 45)
    {
      if (v20 != 93)
      {
        goto LABEL_56;
      }

      if (v13 == 1)
      {
        icu::UnicodeSet::add(a1, v15, v15);
        icu::UnicodeSet::_appendToPat(&v51, v15, 0);
      }

      if (i != 38)
      {
        if (i != 45)
        {
LABEL_111:
          v45 = 93;
          icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
          goto LABEL_112;
        }

        icu::UnicodeSet::add(a1, 0x2Du, 0x2Du);
        v45 = 45;
LABEL_110:
        icu::UnicodeString::doAppend(&v51, &v45, 0, 1);
        goto LABEL_111;
      }

      goto LABEL_132;
    }

    if (i)
    {
      goto LABEL_132;
    }

    if (!v13)
    {
      break;
    }
  }

  icu::UnicodeSet::add(a1, 0x2Du, 0x2Du);
  v34 = sub_19521D6B0(a2, v11, &v43, a9);
  if (*a9 > 0)
  {
    goto LABEL_134;
  }

  if (v34 != 93 || v43)
  {
    goto LABEL_132;
  }

  icu::UnicodeString::doAppend(&v51, L"-]", 0, 2);
LABEL_112:
  v29 = v12 == 0;
LABEL_113:
  sub_19521DA9C(a2, v11);
  if ((a5 & 6) != 0)
  {
    v30 = (a1 + (a7 >> 1));
    if (a7)
    {
      (*(*v30 + a6))(v30);
    }

    else
    {
      a6(v30);
    }
  }

  if (v37)
  {
    v31 = icu::UnicodeSet::complement(a1);
    icu::UnicodeSet::removeAllStrings(v31);
  }

  if (v29)
  {
    icu::UnicodeSet::_generatePattern(a1, a4, 0);
  }

  else
  {
    if ((v52 & 0x8000u) == 0)
    {
      v32 = v52 >> 5;
    }

    else
    {
      v32 = DWORD1(v52);
    }

    icu::UnicodeString::doAppend(a4, &v51, 0, v32);
  }

  if ((*(a1 + 32) & 1) != 0 && *a9 <= 0)
  {
    v33 = 7;
LABEL_133:
    *a9 = v33;
  }

LABEL_134:
  icu::UnicodeString::~UnicodeString(&v46);
  icu::UnicodeString::~UnicodeString(&v51);
LABEL_135:
  v35 = *MEMORY[0x1E69E9840];
}

BOOL icu::UnicodeSet::resemblesPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v2 = a2 + 1;
  v3 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v4 = *(this + 3);
    if (v2 >= v4)
    {
      return icu::UnicodeSet::resemblesPropertyPattern(this, a2) != 0;
    }
  }

  else
  {
    if (v2 >= (v3 >> 5))
    {
      return icu::UnicodeSet::resemblesPropertyPattern(this, a2) != 0;
    }

    v4 = v3 >> 5;
  }

  if (v4 > a2)
  {
    v5 = (v3 & 2) != 0 ? (this + 10) : *(this + 3);
    if (*(v5 + a2) == 91)
    {
      return 1;
    }
  }

  return icu::UnicodeSet::resemblesPropertyPattern(this, a2) != 0;
}

uint64_t icu::UnicodeSet::resemblesPropertyPattern(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a1 + 12);
  }

  if (a2 + 5 > v3 || v3 <= a2)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = a1 + 10;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = *(v4 + 2 * a2);
  if (v5 != 92)
  {
    if (v5 == 91)
    {
      v6 = a2 + 1;
      if (v3 > v6 && *(v4 + 2 * v6) == 58)
      {
        return 1;
      }
    }

    return 0;
  }

  v8 = a2 + 1;
  if (v3 <= v8)
  {
    return 0;
  }

  v9 = *(v4 + 2 * v8) & 0xFFDF;
  result = v9 == 80;
  if (v9 != 80 && v3 > v8)
  {
    return *(v4 + 2 * v8) == 78;
  }

  return result;
}

BOOL icu::UnicodeSet::resemblesPropertyPattern(uint64_t a1, char a2)
{
  v11 = 0;
  v10 = 0;
  v9[0] = 0;
  v9[1] = 0;
  sub_19521DA64(a1, v9);
  v4 = sub_19521D6B0(a1, a2 & 0xFD, &v11, &v10);
  if ((v4 - 91) <= 1)
  {
    v5 = v4;
    v6 = sub_19521D6B0(a1, a2 & 0xF9, &v11, &v10);
    v7 = v6;
    if (v5 == 91)
    {
      sub_19521DA80(a1, v9);
      if (v7 != 58)
      {
        return 0;
      }

      return v10 < 1;
    }

    if ((v6 - 78) <= 0x22 && ((1 << (v6 - 78)) & 0x400000005) != 0)
    {
      sub_19521DA80(a1, v9);
      return v10 < 1;
    }
  }

  sub_19521DA80(a1, v9);
  return 0;
}

void icu::UnicodeSet::applyPropertyPattern(icu::UnicodeSet *a1, uint64_t *a2, uint64_t a3, UErrorCode *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v12 = 0u;
    v13 = 0u;
    v15 = 0;
    v14 = 0u;
    v11 = &unk_1F0935D00;
    LOWORD(v12) = 2;
    sub_19521D9F0(a2, &v11, 0xFFFFFFFF);
    v9 = &unk_1F0932C70;
    *v10 = 0xFFFFFFFF00000000;
    icu::UnicodeSet::applyPropertyPattern(a1, &v11, &v9, a4);
    if (*a4 <= 0)
    {
      if (v10[0])
      {
        sub_19521DA60(a2, v10[0]);
        icu::UnicodeString::doAppend(a3, &v11, 0, v10[0]);
      }

      else
      {
        *a4 = U_MALFORMED_SET;
      }
    }

    icu::ParsePosition::~ParsePosition(&v9);
    icu::UnicodeString::~UnicodeString(&v11);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19527D3AC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (a2 || (v2 & 1) == 0)
  {
    if ((v2 & 0x8000) != 0)
    {
      v4 = *(a1 + 12);
    }

    else
    {
      v4 = v2 >> 5;
    }

    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      if (a2 > 1023)
      {
        *(a1 + 8) = v2 | 0xFFE0;
        *(a1 + 12) = a2;
      }

      else
      {
        *(a1 + 8) = *(a1 + 8) & 0x1F | (32 * a2);
      }

      return 1;
    }
  }

  else
  {
    icu::UnicodeString::unBogus(a1);
    return 0;
  }
}

icu::UnicodeSet *icu::UnicodeSet::applyFilter(icu::UnicodeSet *this, signed __int8 (*a2)(int, void *), void *a3, const icu::UnicodeSet *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v5 = a5;
    v9 = this;
    icu::UnicodeSet::clear(this);
    this = icu::UnicodeSet::getRangeCount(a4);
    if (this >= 1)
    {
      v10 = this;
      v16 = v5;
      v11 = 0;
      v12 = -1;
      do
      {
        RangeStart = icu::UnicodeSet::getRangeStart(a4, v11);
        this = icu::UnicodeSet::getRangeEnd(a4, v11);
        if (RangeStart <= this)
        {
          v14 = this;
          v15 = RangeStart - 1;
          do
          {
            this = (a2)(v15 + 1, a3);
            if (this)
            {
              if (v12 < 0)
              {
                v12 = v15 + 1;
              }
            }

            else if ((v12 & 0x80000000) == 0)
            {
              this = icu::UnicodeSet::add(v9, v12, v15);
              v12 = -1;
            }

            ++v15;
          }

          while (v14 != v15);
        }

        ++v11;
      }

      while (v11 != v10);
      v5 = v16;
      if ((v12 & 0x80000000) == 0)
      {
        this = icu::UnicodeSet::add(v9, v12, 0x10FFFFu);
      }
    }

    if ((*(v9 + 32) & 1) != 0 && *v5 <= 0)
    {
      *v5 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::applyIntPropertyValue(icu::UnicodeSet *this, uint64_t property, unsigned int a3, UErrorCode *pErrorCode)
{
  v16 = a3;
  if (*pErrorCode > 0 || *(this + 5) || *(this + 11))
  {
    return this;
  }

  v7 = property;
  switch(property)
  {
    case 0x7001:
      v8 = sub_1951D1008(28673, pErrorCode);
      v15[0] = a3;
      v11 = sub_19527D724;
      goto LABEL_10;
    case 0x7000:
      v8 = sub_1951D1008(28672, pErrorCode);
      v15[0] = a3;
      v11 = sub_19527D71C;
LABEL_10:
      v9 = v11;
      v10 = v15;
      goto LABEL_11;
    case 0x2000:
      v8 = sub_1951D1008(0x2000, pErrorCode);
      v9 = sub_19527D6F0;
      v10 = &v16;
LABEL_11:
      icu::UnicodeSet::applyFilter(this, v9, v10, v8, pErrorCode);
      return this;
  }

  if (property > 0x4B)
  {
    if ((property - 4096) > 0x1A)
    {
      *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
      return this;
    }

    v8 = sub_1951D1008(property, pErrorCode);
    v15[0] = v7;
    v15[1] = a3;
    v11 = sub_19527D740;
    goto LABEL_10;
  }

  if (a3 > 1)
  {
    icu::UnicodeSet::clear(this);
  }

  else
  {
    BinaryPropertySet = u_getBinaryPropertySet(property, pErrorCode);
    if (*pErrorCode <= 0)
    {
      icu::UnicodeSet::copyFrom(this, BinaryPropertySet, 1);
      if (!a3)
      {
        v14 = icu::UnicodeSet::complement(this);
        icu::UnicodeSet::removeAllStrings(v14);
      }
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::applyPropertyAlias(icu::UnicodeSet *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  v50[8] = *MEMORY[0x1E69E9840];
  if (*a4 > 0 || *(this + 5) || *(this + 11))
  {
    goto LABEL_79;
  }

  v8 = *(a2 + 4);
  if ((v8 & 0x11) != 0)
  {
    v9 = 0;
  }

  else if ((v8 & 2) != 0)
  {
    v9 = (a2 + 10);
  }

  else
  {
    v9 = *(a2 + 3);
  }

  v10 = v8;
  v11 = v8 >> 5;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a2 + 3);
  }

  if (!uprv_isInvariantUString(v9, v12) || ((v13 = *(a3 + 4), (v13 & 0x11) == 0) ? ((v13 & 2) != 0 ? (v14 = (a3 + 10)) : (v14 = *(a3 + 3))) : (v14 = 0), (v15 = v13, v16 = v13 >> 5, v15 >= 0) ? (v17 = v16) : (v17 = *(a3 + 3)), !uprv_isInvariantUString(v14, v17)))
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_79;
  }

  memset(&v50[1], 0, 56);
  v50[0] = &v50[1] + 5;
  LODWORD(v50[1]) = 40;
  memset(&alias[1], 0, 56);
  alias[0] = &alias[1] + 5;
  LODWORD(alias[1]) = 40;
  icu::CharString::appendInvariantChars(v50, a2, a4);
  icu::CharString::appendInvariantChars(alias, a3, a4);
  if (*a4 <= 0)
  {
    v18 = *(a3 + 4);
    v19 = v18;
    v20 = v18 >> 5;
    if (v19 < 0)
    {
      v20 = *(a3 + 3);
    }

    if (v20 < 1)
    {
      v23 = 0x2000;
      PropertyValueEnum = u_getPropertyValueEnum(UCHAR_GENERAL_CATEGORY_MASK, v50[0]);
      if (PropertyValueEnum == -1)
      {
        v23 = 4106;
        PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, v50[0]);
        if (PropertyValueEnum == -1)
        {
          PropertyEnum = u_getPropertyEnum(v50[0]);
          if (PropertyEnum >= 0x4C)
          {
            if (uprv_compareASCIIPropertyNames(byte_19547BF50, v50[0]))
            {
              if (uprv_compareASCIIPropertyNames("ASCII", v50[0]))
              {
                if (uprv_compareASCIIPropertyNames("Assigned", v50[0]))
                {
                  goto LABEL_73;
                }

                v38 = icu::UnicodeSet::applyIntPropertyValue(this, 0x2000, 1u, a4);
                v39 = icu::UnicodeSet::complement(v38);
                icu::UnicodeSet::removeAllStrings(v39);
LABEL_46:
                if ((*(this + 32) & 1) == 0 || *a4 > 0)
                {
                  goto LABEL_75;
                }

                v28 = U_MEMORY_ALLOCATION_ERROR;
                goto LABEL_74;
              }

              v36 = this;
              v37 = 127;
            }

            else
            {
              v36 = this;
              v37 = 1114111;
            }

            icu::UnicodeSet::set(v36, 0, v37);
            goto LABEL_75;
          }

          v23 = PropertyEnum;
          v27 = 1;
LABEL_45:
          icu::UnicodeSet::applyIntPropertyValue(this, v23, v27, a4);
          goto LABEL_46;
        }
      }
    }

    else
    {
      v21 = u_getPropertyEnum(v50[0]);
      if (v21 == -1)
      {
        goto LABEL_73;
      }

      v22 = v21;
      if (v21 == 4101)
      {
        v23 = 0x2000;
      }

      else
      {
        v23 = v21;
      }

      if (v23 == 0x2000 || v23 < 0x4C || (v23 - 4096) <= 0x1A)
      {
        v27 = u_getPropertyValueEnum(v23, alias[0]);
        if (v27 == -1)
        {
          if ((v22 - 4098) > 0xF)
          {
            goto LABEL_73;
          }

          if (((1 << (v22 - 2)) & 0xC001) == 0)
          {
            goto LABEL_73;
          }

          *name = 0;
          v29 = strtod(alias[0], name);
          if (**name)
          {
            goto LABEL_73;
          }

          if (v29 < 0.0)
          {
            goto LABEL_73;
          }

          if (v29 > 255.0)
          {
            goto LABEL_73;
          }

          v27 = v29;
          if (v29 != v29)
          {
            goto LABEL_73;
          }

          v23 = v22;
        }

        goto LABEL_45;
      }

      if (v21 <= 16394)
      {
        if (v21 == 12288)
        {
          *name = 0;
          versionArray = strtod(alias[0], name);
          if (!**name)
          {
            v31 = sub_1951D1008(12288, a4);
            v32 = sub_19527DCB0;
LABEL_67:
            icu::UnicodeSet::applyFilter(this, v32, &versionArray, v31, a4);
            goto LABEL_75;
          }
        }

        else
        {
          if (v21 != 0x4000)
          {
            if (v21 == 16389)
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              *name = 0u;
              v42 = 0u;
              if (sub_19527DCE0(name, alias[0]))
              {
                v24 = u_charFromName(U_EXTENDED_CHAR_NAME, name, a4);
                if (*a4 <= 0)
                {
                  v25 = v24;
                  icu::UnicodeSet::clear(this);
                  icu::UnicodeSet::add(this, v25);
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_73;
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          *name = 0u;
          v42 = 0u;
          if (sub_19527DCE0(name, alias[0]))
          {
            LODWORD(versionArray) = 0;
            u_versionFromString(&versionArray, name);
            v31 = sub_1951D1008(0x4000, a4);
            v32 = sub_19527DD5C;
            goto LABEL_67;
          }
        }

LABEL_73:
        v28 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_74:
        *a4 = v28;
        goto LABEL_75;
      }

      if (v21 == 16395)
      {
        goto LABEL_73;
      }

      if (v21 == 28672)
      {
        v33 = u_getPropertyValueEnum(UCHAR_SCRIPT, alias[0]);
        if (v33 == -1)
        {
          goto LABEL_73;
        }

        v27 = v33;
        v23 = 28672;
        goto LABEL_45;
      }

      if (v21 != 28673)
      {
        goto LABEL_73;
      }

      v23 = 28673;
      PropertyValueEnum = u_getPropertyValueEnum(UCHAR_OTHER_PROPERTY_LIMIT, alias[0]);
      if (PropertyValueEnum == -1)
      {
        goto LABEL_73;
      }
    }

    v27 = PropertyValueEnum;
    goto LABEL_45;
  }

LABEL_75:
  if (BYTE4(alias[1]))
  {
    free(alias[0]);
  }

  if (BYTE4(v50[1]))
  {
    free(v50[0]);
  }

LABEL_79:
  v34 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t sub_19527DCE0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (2)
  {
    v3 = a2 + 1;
    while (1)
    {
      a2 = v3;
      v4 = *(v3 - 1);
      if (v4 != 32)
      {
        break;
      }

      ++v3;
      if (v2 && *(a1 - 1 + v2) != 32)
      {
        goto LABEL_8;
      }
    }

    if (!*(v3 - 1))
    {
      if (v2)
      {
        v2 = (v2 - (*(a1 + v2 - 1) == 32));
      }

      *(a1 + v2) = 0;
      return 1;
    }

LABEL_8:
    if (v2 != 127)
    {
      *(a1 + v2++) = v4;
      continue;
    }

    return 0;
  }
}

BOOL sub_19527DD5C(UChar32 a1, unsigned int *a2)
{
  *versionArray = 0;
  u_charAge(a1, versionArray);
  result = 0;
  if (bswap32(*versionArray))
  {
    v4 = bswap32(*versionArray);
    v5 = bswap32(*a2);
    v6 = v4 >= v5;
    v7 = v4 > v5;
    v8 = !v6;
    return v7 - v8 < 1;
  }

  return result;
}

icu::UnicodeSet *icu::UnicodeSet::applyPropertyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, UErrorCode *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_92;
  }

  v8 = *(a3 + 2);
  v9 = *(a2 + 4);
  if ((v9 & 0x8000u) == 0)
  {
    v10 = v9 >> 5;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  if (v8 + 5 > v10 || v10 <= v8)
  {
    goto LABEL_91;
  }

  if ((v9 & 2) != 0)
  {
    v11 = a2 + 10;
  }

  else
  {
    v11 = *(a2 + 3);
  }

  v12 = *&v11[2 * v8];
  if (v12 == 92)
  {
    v21 = v8 + 1;
    if (v10 > v8 + 1)
    {
      v22 = *&v11[2 * v21];
      if ((v22 & 0xFFFFFFDF) != 0x50)
      {
        if (v10 <= v21 || *&v11[2 * v21] != 78)
        {
          goto LABEL_91;
        }

        v22 = 78;
      }

      v20 = v22 == 80;
      v23 = v22 == 78;
      v46 = v8 + 2;
      v24 = icu::ICU_Utility::skipWhitespace(a2, &v46, 0);
      v25 = *(a2 + 4);
      if ((v25 & 0x8000) != 0)
      {
        v26 = *(a2 + 3);
        if (v24 == v26)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v24 == v25 >> 5)
        {
          goto LABEL_91;
        }

        v26 = v25 >> 5;
      }

      v27 = v24 + 1;
      v46 = v24 + 1;
      if (v26 > v24)
      {
        v28 = *(a2 + 3);
        if ((v25 & 2) != 0)
        {
          v28 = a2 + 10;
        }

        if (*&v28[2 * v24] == 123)
        {
          if (v24 >= -1)
          {
            if ((v25 & 0x8000) != 0)
            {
              v30 = *(a2 + 3);
              v29 = v30 >= v27 ? v24 + 1 : *(a2 + 3);
            }

            else
            {
              v30 = v25 >> 5;
              v29 = v30 >= v27 ? v24 + 1 : v30;
            }
          }

          else
          {
            v29 = 0;
            v30 = (v25 & 0x8000) != 0 ? *(a2 + 3) : v25 >> 5;
          }

          v34 = icu::UnicodeString::doIndexOf(a2, 0x7Du, v29, v30 - v29);
          v33 = 1;
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }
        }
      }
    }

LABEL_91:
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_92;
  }

  v13 = v12 == 91;
  v14 = v8 + 1;
  v15 = v13 && v10 > v14;
  if (!v15 || *&v11[2 * v14] != 58)
  {
    goto LABEL_91;
  }

  v46 = v8 + 2;
  v16 = icu::ICU_Utility::skipWhitespace(a2, &v46, 0);
  v46 = v16;
  v17 = *(a2 + 4);
  v18 = v17 >> 5;
  if ((v17 & 0x8000) != 0)
  {
    v19 = *(a2 + 3);
    if (v16 >= v19)
    {
      v20 = 0;
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

LABEL_54:
      v32 = 0;
      v18 = *(a2 + 3);
      goto LABEL_55;
    }
  }

  else
  {
    v19 = v17 >> 5;
    if (v16 >= (v17 >> 5))
    {
      v20 = 0;
      goto LABEL_45;
    }
  }

  if (v19 <= v16)
  {
    goto LABEL_42;
  }

  v31 = *(a2 + 3);
  if ((v17 & 2) != 0)
  {
    v31 = a2 + 10;
  }

  if (*&v31[2 * v16] == 94)
  {
    v46 = ++v16;
    v20 = 1;
  }

  else
  {
LABEL_42:
    v20 = 0;
  }

  if (v16 < 0)
  {
    if ((v17 & 0x8000) == 0)
    {
      v32 = 0;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v17 & 0x8000) == 0)
  {
LABEL_45:
    if (v18 >= v16)
    {
      v32 = v16;
    }

    else
    {
      v32 = v17 >> 5;
    }

    goto LABEL_55;
  }

LABEL_49:
  v18 = *(a2 + 3);
  if (v18 >= v16)
  {
    v32 = v16;
  }

  else
  {
    v32 = *(a2 + 3);
  }

LABEL_55:
  v33 = 2;
  v34 = icu::UnicodeString::indexOf(a2, ":", 0, 2, v32, v18 - v32);
  v23 = 0;
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

LABEL_56:
  v35 = *(a2 + 4);
  if ((v46 & 0x80000000) != 0)
  {
    v37 = 0;
    if ((v35 & 0x8000) != 0)
    {
      v36 = *(a2 + 3);
    }

    else
    {
      v36 = v35 >> 5;
    }
  }

  else if ((v35 & 0x8000) != 0)
  {
    v36 = *(a2 + 3);
    if (v36 >= v46)
    {
      v37 = v46;
    }

    else
    {
      v37 = *(a2 + 3);
    }
  }

  else
  {
    v36 = v35 >> 5;
    if (v36 >= v46)
    {
      v37 = v46;
    }

    else
    {
      v37 = v36;
    }
  }

  v38 = icu::UnicodeString::doIndexOf(a2, 0x3Du, v37, v36 - v37);
  v53 = 0u;
  v54 = 0u;
  v56 = 0;
  v55 = 0u;
  v51 = 0;
  v52 = &unk_1F0935D00;
  LOWORD(v53) = 2;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = &unk_1F0935D00;
  LOWORD(v48) = 2;
  v39 = v38 >= v34 || v23;
  v40 = *(*a2 + 24);
  if (v39)
  {
    v40(a2, v46, v34, &v52);
    if (v23)
    {
      icu::UnicodeString::operator=(&v47, &v52);
      icu::UnicodeString::unBogus(&v52);
      if ((v53 & 0x8000u) == 0)
      {
        v41 = v53 >> 5;
      }

      else
      {
        v41 = DWORD1(v53);
      }

      icu::UnicodeString::doReplace(&v52, 0, v41, L"na", 2uLL);
    }
  }

  else
  {
    v42 = v38;
    v40(a2, v46, v38, &v52);
    (*(*a2 + 24))(a2, (v42 + 1), v34, &v47);
  }

  icu::UnicodeSet::applyPropertyAlias(this, &v52, &v47, a4);
  if (*a4 <= 0)
  {
    if (v20)
    {
      v43 = icu::UnicodeSet::complement(this);
      icu::UnicodeSet::removeAllStrings(v43);
    }

    *(a3 + 2) = v34 + v33;
  }

  icu::UnicodeString::~UnicodeString(&v47);
  icu::UnicodeString::~UnicodeString(&v52);
LABEL_92:
  v44 = *MEMORY[0x1E69E9840];
  return this;
}