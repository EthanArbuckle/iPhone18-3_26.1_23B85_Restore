uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerIterate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v12 = (a3 + 1);
  v13 = 64 - 4 * (a3 + 1);
  do
  {
    result = *(a1 + 8 * v11);
    if (result)
    {
      v15 = v11 << v13;
      if (result)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerIterate(result & 0xFFFFFFFFFFFFFFFELL, v15 | a2, v12, a4, a5, a6);
      }

      else
      {
        result = (*(*result + 40))(result, a6, v15 | a2, a4, a5);
      }
    }

    ++v11;
  }

  while (v11 != 16);
  return result;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerEmpty(uint64_t a1, int a2)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + 8 * v4);
    if (v5)
    {
      if (v5)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerEmpty(v5 & 0xFFFFFFFFFFFFFFFELL, (a2 + 1));
      }

      else
      {
        result = (*(*v5 + 48))(v5);
      }
    }

    else
    {
      result = 1;
    }

    if (v4 > 0xE)
    {
      break;
    }

    ++v4;
  }

  while ((result & 1) != 0);
  return result;
}

void SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_clear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v2, *(a1 + 16), *(a1 + 8));
    bzero(*a1, 0x1F88uLL);
  }

  *(a1 + 8) = 0;
}

void SIValueSet<unsigned long long>::MemoryStream::align(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = (a2 + v2 - 1) & -a2;
  v4 = v3 - v2;
  if (v3 != v2)
  {
    SIValueSet<unsigned long long>::MemoryStream::growBuffer(a1, v3 - v2);
    bzero((*(a1 + 8) + *(a1 + 16)), v4);
    *(a1 + 16) += v4;
  }
}

uint64_t SIValueSet<unsigned long long>::MemoryStream::write_vint(uint64_t a1, unint64_t a2)
{
  SIValueSet<unsigned long long>::MemoryStream::growBuffer(a1, 9);
  result = v2_writeVInt64(*(a1 + 8), *(a1 + 16), a2);
  *(a1 + 16) = result;
  return result;
}

uint64_t SIValueSet<unsigned long long>::MemoryStream::write_vint32(uint64_t a1, unsigned int a2)
{
  result = SIValueSet<unsigned long long>::MemoryStream::growBuffer(a1, 5);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        v10 = v6 + v5;
        if (a2 >> 28)
        {
          *v10 = -16;
          *(v10 + 1) = a2;
          v7 = v5 + 5;
        }

        else
        {
          *v10 = HIBYTE(a2) | 0xE0;
          *(v10 + 1) = BYTE2(a2);
          *(v10 + 2) = BYTE1(a2);
          v7 = v5 + 4;
          *(v10 + 3) = a2;
        }
      }

      else
      {
        v9 = (v6 + v5);
        *v9 = BYTE2(a2) | 0xC0;
        v9[1] = BYTE1(a2);
        v7 = v5 + 3;
        v9[2] = a2;
      }
    }

    else
    {
      v8 = (v6 + v5);
      *v8 = BYTE1(a2) | 0x80;
      v7 = v5 + 2;
      v8[1] = a2;
    }
  }

  else
  {
    v7 = v5 + 1;
    *(v6 + v5) = a2;
  }

  *(a1 + 16) = v7;
  return result;
}

void *SIValueSet<unsigned long long>::MemoryStream::write_bytes(uint64_t a1, const void *a2, size_t a3)
{
  SIValueSet<unsigned long long>::MemoryStream::growBuffer(a1, a3);
  result = memcpy((*(a1 + 8) + *(a1 + 16)), a2, a3);
  *(a1 + 16) += a3;
  return result;
}

void SIValueSet<unsigned long long>::MemoryStream::~MemoryStream(void *a1)
{
  SIValueSet<unsigned long long>::MemoryStream::~MemoryStream(a1);

  JUMPOUT(0x238377640);
}

uint64_t SIValueSet<unsigned long long>::MemoryStream::growBuffer(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *(result + 16) + a2;
  if (v2 < v3)
  {
    v4 = result;
    v5 = *(result + 24);
    do
    {
      v5 *= 2;
    }

    while (v5 < v3);
    *(result + 24) = v5;
    v6 = mmap(0, v5, 3, 4098, -268435456, 0);
    memcpy(v6, *(v4 + 8), *(v4 + 16));
    result = munmap(*(v4 + 8), v2);
    *(v4 + 8) = v6;
  }

  return result;
}

void *SIValueSet<unsigned long long>::MemoryStream::~MemoryStream(void *a1)
{
  *a1 = &unk_2846CB150;
  v2 = a1[1];
  if (v2)
  {
    munmap(v2, a1[3]);
  }

  return a1;
}

uint64_t SIValueSet<unsigned long long>::ReadMemoryStream::read_vint32(void *a1)
{
  v1 = a1[3];
  if (v1 >= a1[2])
  {
    return 0;
  }

  v2 = a1[1];
  v3 = v1 + 1;
  v4 = v2 + v1;
  v5 = *(v2 + v1);
  if (*(v2 + v1) < 0)
  {
    if (v5 > 0xBF)
    {
      if (v5 > 0xDF)
      {
        if (v5 > 0xEF)
        {
          v5 = *(v2 + v3);
          v3 = v1 + 5;
        }

        else
        {
          v5 = ((v5 & 0xF) << 24) | (*(v2 + v3) << 16) | (*(v4 + 2) << 8) | *(v4 + 3);
          v3 = v1 + 4;
        }
      }

      else
      {
        v5 = ((v5 & 0x1F) << 16) | (*(v2 + v3) << 8) | *(v4 + 2);
        v3 = v1 + 3;
      }
    }

    else
    {
      v6 = *(v2 + v3) | ((v5 & 0x3F) << 8);
      v3 = v1 + 2;
      v5 = v6;
    }
  }

  a1[3] = v3;
  return v5;
}

unint64_t SIValueSet<unsigned long long>::ReadMemoryStream::read_vint(uint64_t a1)
{
  if (*(a1 + 24) >= *(a1 + 16))
  {
    return 0;
  }

  else
  {
    return v2_readVInt64(*(a1 + 8), (a1 + 24));
  }
}

size_t SIValueSet<unsigned long long>::ReadMemoryStream::read_bytes(void *a1, void *__dst, size_t a3)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v4 + a3 <= v5)
  {
    v6 = a3;
    memcpy(__dst, (a1[1] + v4), a3);
    a1[3] += v6;
  }

  else
  {
    v6 = v5 - v4;
    a1[3] = v5;
    memcpy(__dst, (a1[1] + v5), v5 - v4);
  }

  return v6;
}

uint64_t SIValueSet<unsigned long long>::SIValueSetIterator::SIValueSetIterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v3 = *(a2 + 8);
  v4 = -1 << (-4 * v3);
  if (!v3)
  {
    v4 = 0;
  }

  v5 = v4 & *a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = malloc_type_malloc(0x30uLL, 0x100004077774924uLL);
  return a1;
}

void OUTLINED_FUNCTION_0_0()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t __dst, __int16 a5, uint64_t a6)
{
  a6 = a2;
  a5 = 0;
  __dst = 0;

  return store_stream_read_bytes(a1, &__dst, 1uLL);
}

void _setError(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v7 = v5;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v7)
    {
      [v6 setObject:v7 forKey:*MEMORY[0x277CCA7E8]];
    }

    *a1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSAppEntityUpdaterErrorDomain" code:a2 userInfo:v6];

    v5 = v7;
  }
}

__CFString *_donationReasonDescription(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_27893C9D0[(a1 - 1)];
  }

  return v2;
}

__CFString *_errorDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1 - 1) > 0x10)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = off_27893C9E8[a1 - 1];
  if (v3)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v5, v3];
  }

LABEL_6:

  return v5;
}

void sub_231B3609C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B370FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak(&a39);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v52 - 240), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231B37F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_231B3B310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_231B3C4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void buildJournalStatsByBundle(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v32 objectForKey:v11];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v32 setObject:v14 forKeyedSubscript:v11];
  }

  v15 = [v32 objectForKeyedSubscript:v11];
  v16 = [v15 objectForKey:v9];

  if (!v16)
  {
    v17 = [v32 objectForKeyedSubscript:v11];
    [v17 setObject:&unk_2846E7698 forKeyedSubscript:v9];
  }

  v18 = MEMORY[0x277CCABB0];
  v19 = [v32 objectForKeyedSubscript:v11];
  v20 = [v19 objectForKeyedSubscript:v9];
  v21 = [v18 numberWithInt:{objc_msgSend(v20, "intValue") + 1}];
  v22 = [v32 objectForKeyedSubscript:v11];
  [v22 setObject:v21 forKeyedSubscript:v9];

  if (v12)
  {
    v23 = [v12 objectForKeyedSubscript:@"_kMDItemNeedsEmbeddings"];

    if (v23)
    {
      v24 = [v32 objectForKeyedSubscript:v11];
      v25 = [v24 objectForKey:v10];

      if (!v25)
      {
        v26 = [v32 objectForKeyedSubscript:v11];
        [v26 setObject:&unk_2846E7698 forKeyedSubscript:v10];
      }

      v27 = MEMORY[0x277CCABB0];
      v28 = [v32 objectForKeyedSubscript:v11];
      v29 = [v28 objectForKeyedSubscript:v10];
      v30 = [v27 numberWithInt:{objc_msgSend(v29, "intValue") + 1}];
      v31 = [v32 objectForKeyedSubscript:v11];
      [v31 setObject:v30 forKeyedSubscript:v10];
    }
  }
}

void SDTransactionDone(void *a1)
{
  v1 = a1;
  if (v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = os_transaction_copy_description();
    if (v2)
    {
      v3 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        SDTransactionDone_cold_1(v2, v3);
      }
    }

    free(v2);
  }
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t bundleIdHash(uint64_t a1, int a2)
{
  v2 = -1759636613;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = v8 * *&v4[4 * v7];
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 & 0x7FFFFFFF ^ HIWORD(v16);
}

void sub_231B47C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231B4A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(float a1)
{
  *&STACK[0x2C0] = a1;
  LODWORD(STACK[0x2C4]) = 0;
  LOWORD(STACK[0x2C8]) = 2112;
  STACK[0x2CA] = v1;
}

void OUTLINED_FUNCTION_15()
{
  *(v1 + 12) = *(v0 + 112);
  *(v1 + 32) = *(v0 + 72);
  *(v1 + 40) = *(v0 + 80);
  *(v1 + 16) = *(v0 + 116);
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id OUTLINED_FUNCTION_20()
{
  v5 = *(v0 + 120);
  v4 = *(v0 + 104);
  v2 = *(v0 + 48);

  return v2;
}

BOOL OUTLINED_FUNCTION_21(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_23(uint64_t result, float a2)
{
  *(v4 - 128) = a2;
  *(v3 + 4) = v2;
  *(v4 - 116) = 2112;
  *(v3 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 128) = a2;
  *(v3 + 4) = a1;
  *(v4 - 116) = 2112;
  *(v3 + 14) = v2;
}

void OUTLINED_FUNCTION_26(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x16u);
}

BOOL OUTLINED_FUNCTION_28(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 104);
  return result;
}

BOOL OUTLINED_FUNCTION_34(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void EmbeddingsThrottlingSwitch(int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (getEmbeddingsStatus_token != -1)
  {
    EmbeddingsThrottlingSwitch_cold_1();
  }

  v2 = qword_28158AD88;
  v3 = +[SKGActivityJournal sharedJournal];
  v4 = v3;
  if (a1)
  {
    v5 = 43;
  }

  else
  {
    v5 = 44;
  }

  [v3 addEventWithType:v5 params:MEMORY[0x277CBEC10]];

  v6 = 10;
  do
  {
    if (v6 == 8)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v10 = 2;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### changing throttle state for embeddings event %d", buf, 8u);
        }
      }

      ThrottlingChanged(2u, a1);
    }

    --v6;
  }

  while (v6);

  v8 = *MEMORY[0x277D85DE8];
}

void ThrottlingChanged(unsigned int a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a1 & 0xFFFFFFFE;
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v4 == 4)
  {
    if (CurrentLoggingLevel >= 5)
    {
      v6 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = gNames[v3];
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "### task (always allowed) %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    if (CurrentLoggingLevel >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = gNames[v3];
        v11 = 138412546;
        v12 = v9;
        v13 = 1024;
        v14 = a2;
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### task %@ permitted: %{BOOL}d", &v11, 0x12u);
      }
    }

    atomic_store(a2, &sAllowed[v3]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void KeyphrasesThrottlingSwitch(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SKGActivityJournal sharedJournal];
  v3 = v2;
  if (a1)
  {
    v4 = 47;
  }

  else
  {
    v4 = 48;
  }

  [v2 addEventWithType:v4 params:MEMORY[0x277CBEC10]];

  v5 = 10;
  do
  {
    if (v5 == 7)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v6 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v9 = 3;
          _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "### changing throttle state for keyphrases event %d", buf, 8u);
        }
      }

      ThrottlingChanged(3u, a1);
    }

    --v5;
  }

  while (v5);
  v7 = *MEMORY[0x277D85DE8];
}

void PreExtractionThrottlingSwitch(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SKGActivityJournal sharedJournal];
  v3 = v2;
  if (a1)
  {
    v4 = 49;
  }

  else
  {
    v4 = 50;
  }

  [v2 addEventWithType:v4 params:MEMORY[0x277CBEC10]];

  for (i = 0; i != 10; ++i)
  {
    if ((i & 0xE) == 6)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v6 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v9 = i;
          _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "### changing throttle state for pre-extraction event %d", buf, 8u);
        }
      }

      ThrottlingChanged(i, a1);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void PriorityThrottlingSwitch(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SKGActivityJournal sharedJournal];
  v3 = v2;
  if (a1)
  {
    v4 = 45;
  }

  else
  {
    v4 = 46;
  }

  [v2 addEventWithType:v4 params:MEMORY[0x277CBEC10]];

  v5 = 10;
  do
  {
    if (v5 == 9)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v6 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v9 = 1;
          _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "### changing throttle state for priority event %d", buf, 8u);
        }
      }

      ThrottlingChanged(1u, a1);
    }

    --v5;
  }

  while (v5);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_231B4CB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void completePriorityTask(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v4 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### deferring priority task early %@", buf, 0xCu);
      }
    }

    PriorityThrottlingSwitch(0);
    v6 = getPriorityWorkGroup();
    v7 = *(a1 + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __completePriorityTask_block_invoke;
    v9[3] = &__block_descriptor_41_e5_v8__0l;
    v9[4] = a1;
    v10 = a2;
    dispatch_group_notify(v6, v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void completeEmbeddingsTask(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### deferring embeddings task early %@", buf, 0xCu);
      }
    }

    EmbeddingsThrottlingSwitch(0);
    v4 = getEmbeddingsWorkGroup();
    v5 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __completeEmbeddingsTask_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_group_notify(v4, v5, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void completeKeyphrasesTask(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### deferring keyphrases task early %@", buf, 0xCu);
      }
    }

    KeyphrasesThrottlingSwitch(0);
    v4 = getKeyphrasesWorkGroup();
    v5 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __completeKeyphrasesTask_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_group_notify(v4, v5, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void completePreExtractionTask(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### deferring pre-extraction task early %@", buf, 0xCu);
      }
    }

    PreExtractionThrottlingSwitch(0);
    v4 = getPreExtractionWorkGroup();
    v5 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __completePreExtractionTask_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_group_notify(v4, v5, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

id getPriorityWorkGroup()
{
  if (getPriorityWorkGroup_onceBGPToken != -1)
  {
    getPriorityWorkGroup_cold_1();
  }

  v1 = getPriorityWorkGroup_sPriorityTaskGroup;

  return v1;
}

id getEmbeddingsWorkGroup()
{
  if (getEmbeddingsWorkGroup_onceBGToken != -1)
  {
    getEmbeddingsWorkGroup_cold_1();
  }

  v1 = getEmbeddingsWorkGroup_sEmbeddingsTaskGroup;

  return v1;
}

id getKeyphrasesWorkGroup()
{
  if (getKeyphrasesWorkGroup_onceBGToken != -1)
  {
    getKeyphrasesWorkGroup_cold_1();
  }

  v1 = getKeyphrasesWorkGroup_sKeyphrasesTaskGroup;

  return v1;
}

id getPreExtractionWorkGroup()
{
  if (getPreExtractionWorkGroup_onceBGToken != -1)
  {
    getPreExtractionWorkGroup_cold_1();
  }

  v1 = getPreExtractionWorkGroup_sPreExtractionTaskGroup;

  return v1;
}

void queryForCleanupWithDeviceUnlocked(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a2 - 2;
  if (a2 - 2) < 6 && ((0x33u >> v12))
  {
    v13 = dword_231C22540[v12];
    v14 = [SKGJobContext defaultJobContextWithDeviceUnlocked:a1];
    v15 = [[SKGJob alloc] initWithJobContext:v14];
    v16 = [SKGItemMonitor alloc];
    v17 = [v14 updateArchivePathWithCurrentDateAndDeviceUnlocked:a1 isCleanupPath:1];
    v18 = [(SKGItemMonitor *)v16 initWithResourceDirectoryPath:v17];
    [(SKGJob *)v15 setMonitor:v18];

    v30[0] = gNames[a2];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v20 = [v14 protectionClasses];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __queryForCleanupWithDeviceUnlocked_block_invoke;
    v27[3] = &unk_27893D248;
    v28 = v14;
    v29 = a2;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __queryForCleanupWithDeviceUnlocked_block_invoke_2;
    v25[3] = &unk_27893D270;
    v26 = v11;
    v21 = v14;
    LODWORD(v13) = [(SKGJob *)v15 requestCSCleanupForUpdater:v19 protectionClasses:v20 flags:v13 batchUpdatedBlock:v27 cancelBlock:v25];

    v22 = [(SKGJob *)v15 monitor];
    [v22 flush];

    if (v13)
    {
      v23 = v9;
    }

    else
    {
      v23 = v10;
    }

    (v23[2])();
  }

  else
  {
    v9[2](v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void queryForUpdatesWithDeviceUnlocked(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [SKGJobContext defaultJobContextWithDeviceUnlocked:a1];
  v11 = v10;
  if (a1)
  {
    v12 = @"com.apple.corespotlight.knowledge.updates";
  }

  else
  {
    v12 = @"com.apple.corespotlight.knowledge.updates.AB";
  }

  [v10 setTaskName:v12];
  v13 = [[SKGJob alloc] initWithJobContext:v11];
  v14 = [v11 protectionClasses];
  v15 = [SKGItemMonitor alloc];
  v16 = [v11 updateArchivePathWithCurrentDateAndDeviceUnlocked:a1 isCleanupPath:0];
  v17 = [(SKGItemMonitor *)v15 initWithResourceDirectoryPath:v16];
  [(SKGJob *)v13 setMonitor:v17];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  [v11 startTextQueries];
  v18 = [MEMORY[0x277D657A0] sharedContext];
  if ([v18 enableEmbeddings])
  {
    v19 = [CSEventFeedback eventAllowed:&unk_2846E7728];

    if (v19)
    {
      v20 = 16;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {

    v20 = 0;
  }

  v21 = [MEMORY[0x277D657A0] sharedContext];
  if ([v21 enableKeyphrases])
  {
    v22 = [CSEventFeedback eventAllowed:&unk_2846E7740];

    if (v22)
    {
      v20 = v20 | 0x20;
    }

    else
    {
      v20 = v20;
    }
  }

  else
  {
  }

  v23 = [MEMORY[0x277D657A0] sharedContext];
  if ([v23 enableDocumentUnderstanding])
  {
    v24 = [CSEventFeedback eventAllowed:&unk_2846E7758];

    if (v24)
    {
      v20 = v20 | 0x100;
    }

    else
    {
      v20 = v20;
    }
  }

  else
  {
  }

  v25 = [MEMORY[0x277D657A0] sharedContext];
  if ([v25 enableSuggestedEvents])
  {
    v26 = [CSEventFeedback eventAllowed:&unk_2846E7770];

    if (v26)
    {
      v20 = v20 | 0x80;
    }

    else
    {
      v20 = v20;
    }
  }

  else
  {
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __queryForUpdatesWithDeviceUnlocked_block_invoke;
  v36[3] = &unk_27893D298;
  v38 = &v39;
  v37 = v11;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __queryForUpdatesWithDeviceUnlocked_block_invoke_2;
  v34[3] = &unk_27893D2C0;
  v27 = v37;
  v35 = v27;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __queryForUpdatesWithDeviceUnlocked_block_invoke_3;
  v32[3] = &unk_27893D270;
  v28 = v9;
  v33 = v28;
  v29 = [(SKGJob *)v13 requestCSReindexWithProtectionClasses:v14 flags:v20 batchProcessedBlock:v36 batchUpdatedBlock:v34 cancelBlock:v32];
  v30 = [(SKGJob *)v13 monitor];
  [v30 flush];

  [v27 finishedTextQueries];
  [v27 logReindexCount:v40[3]];
  if (v29)
  {
    v31 = v7;
  }

  else
  {
    v31 = v8;
  }

  v31[2]();

  _Block_object_dispose(&v39, 8);
}

void setupQueryCleanupTasks(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v3;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### setting up query cleanup %@ task handler", buf, 0xCu);
    }
  }

  if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.cleanup.embeddings"])
  {
    v6 = [MEMORY[0x277D657A0] sharedContext];
    v7 = [v6 enableEmbeddings];

    if (v7)
    {
      if (getQueryCleanupEmbeddingsStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_4();
      }

      v8 = &getQueryCleanupEmbeddingsStatus_status;
LABEL_25:
      v15 = [MEMORY[0x277CF0810] sharedScheduler];
      v16 = v8[2];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __setupQueryCleanupTasks_block_invoke;
      v31[3] = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
      v31[4] = v8;
      [v15 registerForTaskWithIdentifier:v3 usingQueue:v16 launchHandler:v31];

      goto LABEL_27;
    }
  }

  else if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.cleanup.keyphrases"])
  {
    v9 = [MEMORY[0x277D657A0] sharedContext];
    v10 = [v9 enableKeyphrases];

    if (v10)
    {
      if (getQueryCleanupKeyphrasesStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_3();
      }

      v8 = &getQueryCleanupKeyphrasesStatus_status;
      goto LABEL_25;
    }
  }

  else if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.cleanup.docunderstanding"])
  {
    v11 = [MEMORY[0x277D657A0] sharedContext];
    v12 = [v11 enableDocumentUnderstanding];

    if (v12)
    {
      if (getQueryCleanupDocUnderstandingStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_2();
      }

      v8 = &getQueryCleanupDocUnderstandingStatus_status;
      goto LABEL_25;
    }
  }

  else if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.cleanup.suggestedevents"])
  {
    v13 = [MEMORY[0x277D657A0] sharedContext];
    v14 = [v13 enableSuggestedEvents];

    if (v14)
    {
      if (getQueryCleanupSuggestedEventsStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_1();
      }

      v8 = &getQueryCleanupSuggestedEventsStatus_status;
      goto LABEL_25;
    }
  }

  v8 = 0;
LABEL_27:
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v17 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_INFO, "### setting up query cleanup %@ task handler", buf, 0xCu);
    }
  }

  if ([v4 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.embeddings"])
  {
    v18 = [MEMORY[0x277D657A0] sharedContext];
    v19 = [v18 enableEmbeddings];

    if (v19)
    {
      if (getQueryCleanupEmbeddingsStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_4();
      }

      v20 = &getQueryCleanupEmbeddingsStatus_status;
LABEL_51:
      v27 = [MEMORY[0x277CF0810] sharedScheduler];
      v28 = v20[2];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __setupQueryCleanupTasks_block_invoke_332;
      v30[3] = &__block_descriptor_48_e34_v16__0__BGNonRepeatingSystemTask_8l;
      v30[4] = v20;
      v30[5] = v8;
      [v27 registerForTaskWithIdentifier:v4 usingQueue:v28 launchHandler:v30];
    }
  }

  else if ([v4 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.keyphrases"])
  {
    v21 = [MEMORY[0x277D657A0] sharedContext];
    v22 = [v21 enableKeyphrases];

    if (v22)
    {
      if (getQueryCleanupKeyphrasesStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_3();
      }

      v20 = &getQueryCleanupKeyphrasesStatus_status;
      goto LABEL_51;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.docunderstanding"])
  {
    v23 = [MEMORY[0x277D657A0] sharedContext];
    v24 = [v23 enableDocumentUnderstanding];

    if (v24)
    {
      if (getQueryCleanupDocUnderstandingStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_2();
      }

      v20 = &getQueryCleanupDocUnderstandingStatus_status;
      goto LABEL_51;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.suggestedevents"])
  {
    v25 = [MEMORY[0x277D657A0] sharedContext];
    v26 = [v25 enableSuggestedEvents];

    if (v26)
    {
      if (getQueryCleanupSuggestedEventsStatus_qtoken != -1)
      {
        setupQueryCleanupTasks_cold_1();
      }

      v20 = &getQueryCleanupSuggestedEventsStatus_status;
      goto LABEL_51;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void setupQueryUpdatesTasks()
{
  v9 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v0 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"com.apple.spotlightknowledged.task.updates";
      _os_log_impl(&dword_231B25000, v0, OS_LOG_TYPE_INFO, "### setting up query updates %@ task handler", buf, 0xCu);
    }
  }

  if (getQueryUpdatesStatus_qtoken != -1)
  {
    setupQueryUpdatesTasks_cold_1();
  }

  v1 = [MEMORY[0x277CF0810] sharedScheduler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __setupQueryUpdatesTasks_block_invoke;
  v6[3] = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
  v6[4] = &getQueryUpdatesStatus_status;
  [v1 registerForTaskWithIdentifier:@"com.apple.spotlightknowledged.task.updates" usingQueue:qword_28158AB38 launchHandler:v6];

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"com.apple.spotlightknowledged.task.ab-updates";
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### setting up query updates %@ task handler", buf, 0xCu);
    }
  }

  if (getQueryUpdatesABStatus_qabtoken != -1)
  {
    setupQueryUpdatesTasks_cold_2();
  }

  v3 = [MEMORY[0x277CF0810] sharedScheduler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __setupQueryUpdatesTasks_block_invoke_337;
  v5[3] = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
  v5[4] = &getQueryUpdatesABStatus_status;
  [v3 registerForTaskWithIdentifier:@"com.apple.spotlightknowledged.task.ab-updates" usingQueue:qword_28158AB70 launchHandler:v5];

  v4 = *MEMORY[0x277D85DE8];
}

void launchPriorityTask(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF0810] sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.spotlightknowledged.task.priority"];

  v4 = v3;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.spotlightknowledged.task.priority"];
  }

  [v4 setInvolvedProcesses:&unk_2846E7F98];
  [v4 setPriority:2];
  [v4 setRequiresUserInactivity:1];
  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = v5;
  if (v3)
  {
    v21 = 0;
    [v5 updateTaskRequest:v4 error:&v21];
    v7 = v21;

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = @"com.apple.spotlightknowledged.task.priority";
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
      }
    }

    *(a1 + 24) = 0;
  }

  else
  {
    v20 = 0;
    v9 = [v5 submitTaskRequest:v4 error:&v20];
    v7 = v20;

    if (v9)
    {
      *(a1 + 24) = 0;
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v10 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = @"com.apple.spotlightknowledged.task.priority";
          _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v11 = *(a1 + 24);
      v12 = 2 * v11;
      v13 = v11 == 0;
      v14 = 1000000000;
      if (!v13)
      {
        v14 = v12;
      }

      *(a1 + 24) = v14;
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v15 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          launchPriorityTask_cold_1(v7, (a1 + 24));
        }
      }

      v16 = dispatch_time(0, *(a1 + 24));
      v17 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __launchPriorityTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_after(v16, v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void launchEmbeddingsTask(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF0810] sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.spotlightknowledged.task"];

  v4 = v3;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.spotlightknowledged.task"];
  }

  [v4 setInvolvedProcesses:&unk_2846E7FB0];
  [v4 setResources:15];
  [v4 setPriority:2];
  [v4 setRequiresExternalPower:1];
  [v4 setResourceIntensive:1];
  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = v5;
  if (v3)
  {
    v21 = 0;
    [v5 updateTaskRequest:v4 error:&v21];
    v7 = v21;

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = @"com.apple.spotlightknowledged.task";
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
      }
    }

    *(a1 + 24) = 0;
  }

  else
  {
    v20 = 0;
    v9 = [v5 submitTaskRequest:v4 error:&v20];
    v7 = v20;

    if (v9)
    {
      *(a1 + 24) = 0;
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v10 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = @"com.apple.spotlightknowledged.task";
          _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v11 = *(a1 + 24);
      v12 = 2 * v11;
      v13 = v11 == 0;
      v14 = 1000000000;
      if (!v13)
      {
        v14 = v12;
      }

      *(a1 + 24) = v14;
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v15 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          launchEmbeddingsTask_cold_1(v7, (a1 + 24));
        }
      }

      v16 = dispatch_time(0, *(a1 + 24));
      v17 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __launchEmbeddingsTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_after(v16, v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void launchKeyphrasesTask(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF0810] sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.spotlightknowledged.task.keyphrases"];

  v4 = v3;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.spotlightknowledged.task.keyphrases"];
  }

  [v4 setInvolvedProcesses:&unk_2846E7FC8];
  [v4 setResources:5];
  [v4 setPriority:1];
  [v4 setRequiresExternalPower:1];
  [v4 setResourceIntensive:1];
  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = v5;
  if (v3)
  {
    v21 = 0;
    [v5 updateTaskRequest:v4 error:&v21];
    v7 = v21;

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = @"com.apple.spotlightknowledged.task.keyphrases";
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
      }
    }

    *(a1 + 24) = 0;
  }

  else
  {
    v20 = 0;
    v9 = [v5 submitTaskRequest:v4 error:&v20];
    v7 = v20;

    if (v9)
    {
      *(a1 + 24) = 0;
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v10 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = @"com.apple.spotlightknowledged.task.keyphrases";
          _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v11 = *(a1 + 24);
      v12 = 2 * v11;
      v13 = v11 == 0;
      v14 = 1000000000;
      if (!v13)
      {
        v14 = v12;
      }

      *(a1 + 24) = v14;
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v15 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          launchKeyphrasesTask_cold_1(v7, (a1 + 24));
        }
      }

      v16 = dispatch_time(0, *(a1 + 24));
      v17 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __launchKeyphrasesTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_after(v16, v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void launchPreExtractionTask(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF0810] sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.spotlightknowledged.task.preextraction"];

  v4 = v3;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.spotlightknowledged.task.preextraction"];
  }

  [v4 setInvolvedProcesses:&unk_2846E7FE0];
  [v4 setResources:5];
  [v4 setPriority:1];
  [v4 setRequiresExternalPower:1];
  [v4 setResourceIntensive:1];
  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = v5;
  if (v3)
  {
    v21 = 0;
    [v5 updateTaskRequest:v4 error:&v21];
    v7 = v21;

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = @"com.apple.spotlightknowledged.task.preextraction";
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
      }
    }

    *(a1 + 24) = 0;
  }

  else
  {
    v20 = 0;
    v9 = [v5 submitTaskRequest:v4 error:&v20];
    v7 = v20;

    if (v9)
    {
      *(a1 + 24) = 0;
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v10 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = @"com.apple.spotlightknowledged.task.preextraction";
          _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v11 = *(a1 + 24);
      v12 = 2 * v11;
      v13 = v11 == 0;
      v14 = 1000000000;
      if (!v13)
      {
        v14 = v12;
      }

      *(a1 + 24) = v14;
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v15 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          launchPreExtractionTask_cold_1(v7, (a1 + 24));
        }
      }

      v16 = dispatch_time(0, *(a1 + 24));
      v17 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __launchPreExtractionTask_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_after(v16, v17, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void launchQueryUpdatesTask(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### setting up query updates task handler", buf, 2u);
    }
  }

  if (sTurboMode != 1)
  {
    v3 = [MEMORY[0x277D657A8] sharedClientListener];
    v4 = [v3 hasDiskCapacity];

    v5 = [MEMORY[0x277D657A0] sharedContext];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 maxJournalSizeForPurge];
    }

    else
    {
      v7 = [v5 maxJournalSizeWhenLowDiskSpace];
    }

    v8 = v7;

    v9 = (v8 * 0.8);
    v10 = eventsPath();
    LOBYTE(v9) = isDirectoryWithinLimit([v10 UTF8String], v9);

    if (v9)
    {
      if ([v1 isEqualToString:@"com.apple.spotlightknowledged.task.ab-updates"])
      {
        if (getQueryUpdatesABStatus_qabtoken != -1)
        {
          setupQueryUpdatesTasks_cold_2();
        }

        v11 = &getQueryUpdatesABStatus_status;
        v12 = 1;
      }

      else
      {
        if (getQueryUpdatesStatus_qtoken != -1)
        {
          setupQueryUpdatesTasks_cold_1();
        }

        v11 = &getQueryUpdatesStatus_status;
        v12 = 4;
      }

      v14 = [MEMORY[0x277CF0810] sharedScheduler];
      v15 = [v14 taskRequestForIdentifier:v1];

      v13 = v15;
      if (!v15)
      {
        v13 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v1];
      }

      [v13 setInvolvedProcesses:&unk_2846E7FF8];
      [v13 setRequiresProtectionClass:v12];
      [v13 setGroupName:@"com.apple.spotlightknowledged.task.query"];
      [v13 setGroupConcurrencyLimit:1];
      v16 = atomic_load(v11);
      if (!v15)
      {
        v20 = [MEMORY[0x277CF0810] sharedScheduler];
        v32 = 0;
        v21 = [v20 submitTaskRequest:v13 error:&v32];
        v18 = v32;

        if ((v21 & 1) == 0)
        {
          v22 = *(v11 + 3);
          v23 = 2 * v22;
          v24 = v22 == 0;
          v25 = 1000000000;
          if (!v24)
          {
            v25 = v23;
          }

          *(v11 + 3) = v25;
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v26 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              launchQueryUpdatesTask_cold_3(v18, v11 + 3);
            }
          }

          v27 = dispatch_time(0, *(v11 + 3));
          v28 = *(v11 + 2);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __launchQueryUpdatesTask_block_invoke;
          block[3] = &unk_27893CE68;
          v31 = v1;
          dispatch_after(v27, v28, block);

          goto LABEL_42;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 5)
        {
          v19 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v35 = v1;
            goto LABEL_32;
          }

LABEL_33:
        }

LABEL_34:
        atomic_store(0, v11);
        *(v11 + 3) = 0;
LABEL_42:

        goto LABEL_43;
      }

      if (v16)
      {
        v17 = [MEMORY[0x277CF0810] sharedScheduler];
        v33 = 0;
        [v17 updateTaskRequest:v13 error:&v33];
        v18 = v33;

        if (SKGLogGetCurrentLoggingLevel() >= 5)
        {
          v19 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v35 = v1;
LABEL_32:
            _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
            goto LABEL_33;
          }

          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() < 5)
      {
        goto LABEL_44;
      }

      v13 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### launchQueryUpdatesTask bailing as events dir too large", buf, 2u);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  handleQueryUpdatesTask(0, 0);
  handleQueryUpdatesTask(0, 1);
LABEL_44:

  v29 = *MEMORY[0x277D85DE8];
}

void __getEmbeddingsStatus_block_invoke()
{
  atomic_store(1u, getEmbeddingsStatus_sEmbeddingsStatus);
  atomic_store(0, &getEmbeddingsStatus_sEmbeddingsStatus[1]);
  atomic_store(0, &getEmbeddingsStatus_sEmbeddingsStatus[4]);
  v0 = [@"com.apple.spotlightknowledged.task" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158AD78;
  qword_28158AD78 = v2;

  v4 = qword_28158AD88;
  qword_28158AD80 = 0;
  qword_28158AD88 = 0;
}

void __getPriorityStatus_block_invoke()
{
  atomic_store(1u, getPriorityStatus_sPriorityStatus);
  atomic_store(0, &getPriorityStatus_sPriorityStatus[1]);
  atomic_store(0, &getPriorityStatus_sPriorityStatus[4]);
  v0 = [@"com.apple.spotlightknowledged.task.priority" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158ACA0;
  qword_28158ACA0 = v2;

  v4 = qword_28158ACB0;
  qword_28158ACA8 = 0;
  qword_28158ACB0 = 0;
}

void __completePriorityTask_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(*(a1 + 32) + 32);
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "###priority batches completed; marking deferred %@", buf, 0xCu);
      }
    }

    if (*(a1 + 40))
    {
      v4 = 0;
    }

    else
    {
      v5 = *(*(a1 + 32) + 32);
      v12 = 0;
      v6 = [v5 setTaskExpiredWithRetryAfter:&v12 error:300.0];
      v4 = v12;
      if (v6)
      {
        *(*(a1 + 32) + 24) = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v7 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "###priority batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
      }
    }

    [*(*(a1 + 32) + 32) setTaskCompleted];
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;

    if ((sTurboMode & 1) == 0)
    {
      launchPriorityTask(*(a1 + 32));
    }

    goto LABEL_16;
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
}

void __completeEmbeddingsTask_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.cleanup.embeddings", 2);
  launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.ab-cleanup.embeddings", 2);
  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.updates");
  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.ab-updates");
  if (*(*(a1 + 32) + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(*(a1 + 32) + 32);
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### batches completed; marking complete %@", &v7, 0xCu);
      }
    }

    [*(*(a1 + 32) + 32) setTaskCompleted];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void launchQueryCleanupTask(void *a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### setting up query cleanup task handler", buf, 2u);
    }
  }

  if (sTurboMode != 1)
  {
    switch(a2)
    {
      case 7:
        if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.docunderstanding"])
        {
          if (getQueryCleanupABDocUnderstandingStatus_qabtoken != -1)
          {
            launchQueryCleanupTask_cold_2();
          }

          v6 = &getQueryCleanupABDocUnderstandingStatus_status;
          goto LABEL_22;
        }

        if (getQueryCleanupDocUnderstandingStatus_qtoken != -1)
        {
          setupQueryCleanupTasks_cold_2();
        }

        v6 = &getQueryCleanupDocUnderstandingStatus_status;
        break;
      case 6:
        if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.suggestedevents"])
        {
          if (getQueryCleanupABSuggestedEventsStatus_qabtoken != -1)
          {
            launchQueryCleanupTask_cold_4();
          }

          v6 = &getQueryCleanupABSuggestedEventsStatus_status;
          goto LABEL_22;
        }

        if (getQueryCleanupSuggestedEventsStatus_qtoken != -1)
        {
          setupQueryCleanupTasks_cold_1();
        }

        v6 = &getQueryCleanupSuggestedEventsStatus_status;
        break;
      case 2:
        if ([v3 isEqualToString:@"com.apple.spotlightknowledged.task.ab-cleanup.embeddings"])
        {
          if (getQueryCleanupABEmbeddingsStatus_qabtoken != -1)
          {
            launchQueryCleanupTask_cold_6();
          }

          v6 = &getQueryCleanupABEmbeddingsStatus_status;
LABEL_22:
          v7 = 1;
          goto LABEL_33;
        }

        if (getQueryCleanupEmbeddingsStatus_qtoken != -1)
        {
          setupQueryCleanupTasks_cold_4();
        }

        v6 = &getQueryCleanupEmbeddingsStatus_status;
        break;
      default:
        goto LABEL_56;
    }

    v7 = 4;
LABEL_33:
    v8 = [MEMORY[0x277CF0810] sharedScheduler];
    v9 = [v8 taskRequestForIdentifier:v3];

    v10 = v9;
    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v3];
    }

    [v10 setInvolvedProcesses:&unk_2846E7F80];
    [v10 setRequiresProtectionClass:v7];
    [v10 setGroupName:@"com.apple.spotlightknowledged.task.query"];
    [v10 setGroupConcurrencyLimit:1];
    v11 = atomic_load(v6);
    if (v9)
    {
      if ((v11 & 1) == 0)
      {
LABEL_55:

        goto LABEL_56;
      }

      v12 = [MEMORY[0x277CF0810] sharedScheduler];
      v29 = 0;
      [v12 updateTaskRequest:v10 error:&v29];
      v13 = v29;

      if (SKGLogGetCurrentLoggingLevel() < 5)
      {
        goto LABEL_46;
      }

      v14 = SKGLogUpdaterInit();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      *buf = 138412290;
      v31 = v3;
    }

    else
    {
      v15 = [MEMORY[0x277CF0810] sharedScheduler];
      v28 = 0;
      v16 = [v15 submitTaskRequest:v10 error:&v28];
      v13 = v28;

      if ((v16 & 1) == 0)
      {
        v17 = *(v6 + 3);
        v18 = 2 * v17;
        v19 = v17 == 0;
        v20 = 1000000000;
        if (!v19)
        {
          v20 = v18;
        }

        *(v6 + 3) = v20;
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v21 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            launchQueryUpdatesTask_cold_3(v13, v6 + 3);
          }
        }

        v22 = dispatch_time(0, *(v6 + 3));
        v23 = *(v6 + 2);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __launchQueryCleanupTask_block_invoke;
        v25[3] = &unk_27893D1B0;
        v26 = v3;
        v27 = a2;
        dispatch_after(v22, v23, v25);

        goto LABEL_54;
      }

      if (SKGLogGetCurrentLoggingLevel() < 5)
      {
LABEL_46:
        atomic_store(0, v6);
        *(v6 + 3) = 0;
LABEL_54:

        goto LABEL_55;
      }

      v14 = SKGLogUpdaterInit();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
LABEL_45:

        goto LABEL_46;
      }

      *buf = 138412290;
      v31 = v3;
    }

    _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_INFO, "### submitted task %@", buf, 0xCu);
    goto LABEL_45;
  }

  v5 = a2 != 0;
  handleQueryCleanupTask(0, 0, v5);
  handleQueryCleanupTask(0, 1, v5);
LABEL_56:

  v24 = *MEMORY[0x277D85DE8];
}

void handleQueryCleanupTask(id *a1, int a2, uint64_t a3)
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v6 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "### handle query cleanup task handler", buf, 2u);
    }
  }

  if (a1)
  {
    objc_initWeak(buf, a1[4]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __handleQueryCleanupTask_block_invoke;
    v12[3] = &unk_27893D200;
    objc_copyWeak(v13, buf);
    v13[1] = a1;
    [a1[4] setExpirationHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __handleQueryCleanupTask_block_invoke_271;
    v10[3] = &unk_27893D200;
    v11[1] = a1;
    objc_copyWeak(v11, buf);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __handleQueryCleanupTask_block_invoke_3;
    v8[3] = &unk_27893D200;
    objc_copyWeak(v9, buf);
    v9[1] = a1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __handleQueryCleanupTask_block_invoke_273;
    v7[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
    v7[4] = a1;
    queryForCleanupWithDeviceUnlocked(a3, a2, v10, v8, v7);
    objc_destroyWeak(v9);
    objc_destroyWeak(v11);
    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }
}

void sub_231B52348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

void __handleQueryCleanupTask_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### query cleanup task %@ expired", buf, 0xCu);
    }
  }

  atomic_store(1u, (*(a1 + 40) + 1));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = WeakRetained;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### query cleanup task %@ deferring", buf, 0xCu);
    }
  }

  v5 = dispatch_time(0, *(*(a1 + 40) + 24));
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __handleQueryCleanupTask_block_invoke_270;
  v10[3] = &unk_27893D1D8;
  v11 = WeakRetained;
  v12 = v6;
  v8 = WeakRetained;
  dispatch_after(v5, v7, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __handleQueryCleanupTask_block_invoke_270(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = [v2 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v4 = v12;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v5 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 40) + 32);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### query cleanup task; marking deferred %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(a1 + 40) + 32);
          *buf = 138412546;
          v14 = v4;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### query cleanup task batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __handleQueryCleanupTask_block_invoke_271(uint64_t a1)
{
  v2 = dispatch_time(0, *(*(a1 + 40) + 24));
  v3 = *(a1 + 40);
  v4 = v3[2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __handleQueryCleanupTask_block_invoke_2;
  v5[3] = &unk_27893D200;
  v6[1] = v3;
  objc_copyWeak(v6, (a1 + 32));
  dispatch_after(v2, v4, v5);
  objc_destroyWeak(v6);
}

void __handleQueryCleanupTask_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [*(*(a1 + 40) + 32) setTaskCompleted];
      v3 = *(a1 + 40);
      v4 = *(v3 + 32);
      *(v3 + 32) = 0;

      WeakRetained = v5;
      atomic_store(1u, *(a1 + 40));
    }
  }
}

void __handleQueryCleanupTask_block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### query cleanup task %@ deferring", buf, 0xCu);
    }
  }

  v4 = dispatch_time(0, *(*(a1 + 40) + 24));
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __handleQueryCleanupTask_block_invoke_272;
  v9[3] = &unk_27893D1D8;
  v10 = WeakRetained;
  v11 = v5;
  v7 = WeakRetained;
  dispatch_after(v4, v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __handleQueryCleanupTask_block_invoke_272(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 32);
    v12 = 0;
    v3 = [v2 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v4 = v12;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v5 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 40) + 32);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### query cleanup task; marking deferred %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(a1 + 40) + 32);
          *buf = 138412546;
          v14 = v4;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### query cleanup task batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(*(a1 + 40) + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __handleQueryCleanupTask_block_invoke_273(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = atomic_load((v1 + 1));
  return v2 & 1;
}

void __getQueryCleanupABEmbeddingsStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupABEmbeddingsStatus_status);
  atomic_store(0, &getQueryCleanupABEmbeddingsStatus_status[1]);
  atomic_store(0, &getQueryCleanupABEmbeddingsStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.ab-cleanup.embeddings" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_27DD6EC38;
  qword_27DD6EC38 = v2;

  v4 = qword_27DD6EC48;
  qword_27DD6EC40 = 0;
  qword_27DD6EC48 = 0;

  dword_27DD6EC50 = 2;
}

void __getQueryCleanupEmbeddingsStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupEmbeddingsStatus_status);
  atomic_store(0, &getQueryCleanupEmbeddingsStatus_status[1]);
  atomic_store(0, &getQueryCleanupEmbeddingsStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.cleanup.embeddings" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158ABE0;
  qword_28158ABE0 = v2;

  v4 = qword_28158ABF0;
  qword_28158ABE8 = 0;
  qword_28158ABF0 = 0;

  dword_28158ABF8 = 2;
}

void __getQueryCleanupABSuggestedEventsStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupABSuggestedEventsStatus_status);
  atomic_store(0, &getQueryCleanupABSuggestedEventsStatus_status[1]);
  atomic_store(0, &getQueryCleanupABSuggestedEventsStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.ab-cleanup.suggestedevents" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_27DD6EC70;
  qword_27DD6EC70 = v2;

  v4 = qword_27DD6EC80;
  qword_27DD6EC78 = 0;
  qword_27DD6EC80 = 0;

  dword_27DD6EC88 = 6;
}

void __getQueryCleanupSuggestedEventsStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupSuggestedEventsStatus_status);
  atomic_store(0, &getQueryCleanupSuggestedEventsStatus_status[1]);
  atomic_store(0, &getQueryCleanupSuggestedEventsStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.cleanup.suggestedevents" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_27DD6ECA8;
  qword_27DD6ECA8 = v2;

  v4 = qword_27DD6ECB8;
  qword_27DD6ECB0 = 0;
  qword_27DD6ECB8 = 0;

  dword_27DD6ECC0 = 6;
}

void __getQueryCleanupABDocUnderstandingStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupABDocUnderstandingStatus_status);
  atomic_store(0, &getQueryCleanupABDocUnderstandingStatus_status[1]);
  atomic_store(0, &getQueryCleanupABDocUnderstandingStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.ab-cleanup.docunderstanding" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158AC50;
  qword_28158AC50 = v2;

  v4 = qword_28158AC60;
  qword_28158AC58 = 0;
  qword_28158AC60 = 0;

  dword_28158AC68 = 7;
}

void __getQueryCleanupDocUnderstandingStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupDocUnderstandingStatus_status);
  atomic_store(0, &getQueryCleanupDocUnderstandingStatus_status[1]);
  atomic_store(0, &getQueryCleanupDocUnderstandingStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.cleanup.docunderstanding" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158AC18;
  qword_28158AC18 = v2;

  v4 = qword_28158AC28;
  qword_28158AC20 = 0;
  qword_28158AC28 = 0;

  dword_28158AC30 = 7;
}

void __getQueryCleanupKeyphrasesStatus_block_invoke()
{
  atomic_store(1u, getQueryCleanupKeyphrasesStatus_status);
  atomic_store(0, &getQueryCleanupKeyphrasesStatus_status[1]);
  atomic_store(0, &getQueryCleanupKeyphrasesStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.cleanup.keyphrases" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158ABA8;
  qword_28158ABA8 = v2;

  v4 = qword_28158ABB8;
  qword_28158ABB0 = 0;
  qword_28158ABB8 = 0;

  dword_28158ABC0 = 3;
}

void __getKeyphrasesStatus_block_invoke()
{
  atomic_store(1u, getKeyphrasesStatus_status);
  atomic_store(0, &getKeyphrasesStatus_status[1]);
  atomic_store(0, &getKeyphrasesStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.keyphrases" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158AD30;
  qword_28158AD30 = v2;

  v4 = qword_28158AD40;
  qword_28158AD38 = 0;
  qword_28158AD40 = 0;
}

void __completeKeyphrasesTask_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.cleanup.keyphrases", 3);
  launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.ab-cleanup.keyphrases", 3);
  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.updates");
  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.ab-updates");
  if (*(*(a1 + 32) + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(*(a1 + 32) + 32);
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### keyphrases batches completed; marking deferred %@", &v7, 0xCu);
      }
    }

    [*(*(a1 + 32) + 32) setTaskCompleted];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __getPreExtractionStatus_block_invoke()
{
  atomic_store(1u, getPreExtractionStatus_status);
  atomic_store(0, &getPreExtractionStatus_status[1]);
  atomic_store(0, &getPreExtractionStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.preextraction" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158ACE8;
  qword_28158ACE8 = v2;

  v4 = qword_28158ACF8;
  qword_28158ACF0 = 0;
  qword_28158ACF8 = 0;
}

void __completePreExtractionTask_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 enableSuggestedEvents];

  if (v3)
  {
    launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.cleanup.suggestedevents", 6);
    launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.ab-cleanup.suggestedevents", 6);
  }

  v4 = [MEMORY[0x277D657A0] sharedContext];
  v5 = [v4 enableDocumentUnderstanding];

  if (v5)
  {
    launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.cleanup.docunderstanding", 7);
    launchQueryCleanupTask(@"com.apple.spotlightknowledged.task.ab-cleanup.docunderstanding", 7);
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.updates");
  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.ab-updates");
LABEL_7:
  if (*(*(a1 + 32) + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v6 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(*(a1 + 32) + 32);
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "### pre-extraction batches completed; marking deferred %@", &v11, 0xCu);
      }
    }

    [*(*(a1 + 32) + 32) setTaskCompleted];
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __getPriorityWorkGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = getPriorityWorkGroup_sPriorityTaskGroup;
  getPriorityWorkGroup_sPriorityTaskGroup = v0;
}

void __getEmbeddingsWorkGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = getEmbeddingsWorkGroup_sEmbeddingsTaskGroup;
  getEmbeddingsWorkGroup_sEmbeddingsTaskGroup = v0;
}

void __getKeyphrasesWorkGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = getKeyphrasesWorkGroup_sKeyphrasesTaskGroup;
  getKeyphrasesWorkGroup_sKeyphrasesTaskGroup = v0;
}

void __getPreExtractionWorkGroup_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = getPreExtractionWorkGroup_sPreExtractionTaskGroup;
  getPreExtractionWorkGroup_sPreExtractionTaskGroup = v0;
}

void __queryForCleanupWithDeviceUnlocked_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v13 = a2;
  v14[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 logQueryItemsUpdated:v9];

  v10 = [*(a1 + 32) feedback];
  v11 = [v7 unsignedIntegerValue];

  [v10 logCleanupItemCounts:v11 bundleId:v8 listenerType:*(a1 + 40)];
  v12 = *MEMORY[0x277D85DE8];
}

void __queryForUpdatesWithDeviceUnlocked_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) += [v5 unsignedIntegerValue];
  v8 = [*(a1 + 32) feedback];
  v7 = [v5 unsignedIntegerValue];

  [v8 logReindexRequestItemCounts:v7 bundleId:v6];
}

void __queryForUpdatesWithDeviceUnlocked_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10 = a2;
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 logQueryItemsUpdated:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __setupEmbeddingsTaskHandler_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v5 = *(a1 + 32);
  objc_initWeak(&location, *(v5 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __handleEmbeddingsTask_block_invoke;
  v12[3] = &unk_27893D200;
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  [*(v5 + 32) setExpirationHandler:v12];
  EmbeddingsThrottlingSwitch(1);
  v6 = +[CSXPCEventListener sharedInstance];
  atomic_store([v6 embeddingsJobCount], (v5 + 4));

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v5 + 32);
      v9 = atomic_load((v5 + 4));
      *buf = 138412546;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### handle embeddings task %@, job count %d", buf, 0x12u);
    }
  }

  v10 = +[CSXPCEventListener sharedInstance];
  [v10 handleEmbeddingsTaskScheduling];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_231B53800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __handleEmbeddingsTask_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### embeddings task %@ expired", buf, 0xCu);
    }
  }

  EmbeddingsThrottlingSwitch(0);
  v4 = getEmbeddingsWorkGroup();
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __handleEmbeddingsTask_block_invoke_331;
  v9[3] = &unk_27893D1D8;
  v10 = WeakRetained;
  v11 = v5;
  v7 = WeakRetained;
  dispatch_group_notify(v4, v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __handleEmbeddingsTask_block_invoke_331(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### embeddings batches completed; marking deferred %@", buf, 0xCu);
      }
    }

    v4 = *(a1 + 32);
    v12 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v6 = v12;
    if (v5)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 32);
          *buf = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### embeddings batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;

      launchEmbeddingsTask(*(a1 + 40));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __setupQueryCleanupTasks_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  atomic_store(0, (*(a1 + 32) + 1));
  handleQueryCleanupTask(*(a1 + 32), *(*(a1 + 32) + 40), 0);
}

void __setupQueryCleanupTasks_block_invoke_332(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  atomic_store(0, (*(a1 + 32) + 1));
  handleQueryCleanupTask(*(a1 + 32), *(*(a1 + 40) + 40), 1);
}

void __setupPriorityTaskHandler_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v5 = *(a1 + 32);
  objc_initWeak(&location, *(v5 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __handlePriorityTask_block_invoke;
  v12[3] = &unk_27893D200;
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  [*(v5 + 32) setExpirationHandler:v12];
  PriorityThrottlingSwitch(1);
  v6 = +[CSXPCEventListener sharedInstance];
  atomic_store([v6 priorityJobCount], (v5 + 4));

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v5 + 32);
      v9 = atomic_load((v5 + 4));
      *buf = 138412546;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### handle priority task %@, job count %d", buf, 0x12u);
    }
  }

  v10 = +[CSXPCEventListener sharedInstance];
  [v10 handlePriorityTaskScheduling];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_231B53DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __handlePriorityTask_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### priority task %@ expired", buf, 0xCu);
    }
  }

  PriorityThrottlingSwitch(0);
  v4 = getPriorityWorkGroup();
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __handlePriorityTask_block_invoke_334;
  v9[3] = &unk_27893D1D8;
  v10 = WeakRetained;
  v11 = v5;
  v7 = WeakRetained;
  dispatch_group_notify(v4, v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __handlePriorityTask_block_invoke_334(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### priority batches completed; marking deferred %@", buf, 0xCu);
      }
    }

    v4 = *(a1 + 32);
    v12 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v6 = v12;
    if (v5)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 32);
          *buf = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### priority batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;

      launchPriorityTask(*(a1 + 40));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __setupKeyphrasesTaskHandler_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v5 = *(a1 + 32);
  objc_initWeak(&location, *(v5 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __handleKeyphrasesTask_block_invoke;
  v12[3] = &unk_27893D200;
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  [*(v5 + 32) setExpirationHandler:v12];
  KeyphrasesThrottlingSwitch(1);
  v6 = +[CSXPCEventListener sharedInstance];
  atomic_store([v6 keyphrasesJobCount], (v5 + 4));

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v5 + 32);
      v9 = atomic_load((v5 + 4));
      *buf = 138412546;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### handle keyphrases task %@, job count %d", buf, 0x12u);
    }
  }

  v10 = +[CSXPCEventListener sharedInstance];
  [v10 handleKeyphrasesTaskScheduling];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_231B54270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __handleKeyphrasesTask_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### keyphrases task %@ expired", buf, 0xCu);
    }
  }

  KeyphrasesThrottlingSwitch(0);
  v4 = getKeyphrasesWorkGroup();
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __handleKeyphrasesTask_block_invoke_335;
  v9[3] = &unk_27893D1D8;
  v10 = WeakRetained;
  v11 = v5;
  v7 = WeakRetained;
  dispatch_group_notify(v4, v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __handleKeyphrasesTask_block_invoke_335(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### keyphrases batches completed; marking deferred %@", buf, 0xCu);
      }
    }

    v4 = *(a1 + 32);
    v12 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v6 = v12;
    if (v5)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 32);
          *buf = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### keyphrases batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;

      launchKeyphrasesTask(*(a1 + 40));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __setupPreExtractionTaskHandler_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v5 = *(a1 + 32);
  objc_initWeak(&location, *(v5 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __handlePreExtractionTask_block_invoke;
  v12[3] = &unk_27893D200;
  objc_copyWeak(v13, &location);
  v13[1] = v5;
  [*(v5 + 32) setExpirationHandler:v12];
  PreExtractionThrottlingSwitch(1);
  v6 = +[CSXPCEventListener sharedInstance];
  atomic_store([v6 preExtractionJobCount], (v5 + 4));

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v5 + 32);
      v9 = atomic_load((v5 + 4));
      *buf = 138412546;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### handle pre-extraction task %@, job count %d", buf, 0x12u);
    }
  }

  v10 = +[CSXPCEventListener sharedInstance];
  [v10 handlePreExtractionTaskScheduling];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_231B54738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __handlePreExtractionTask_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### pre-extraction task %@ expired", buf, 0xCu);
    }
  }

  PreExtractionThrottlingSwitch(0);
  v4 = getPreExtractionWorkGroup();
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __handlePreExtractionTask_block_invoke_336;
  v9[3] = &unk_27893D1D8;
  v10 = WeakRetained;
  v11 = v5;
  v7 = WeakRetained;
  dispatch_group_notify(v4, v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __handlePreExtractionTask_block_invoke_336(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_INFO, "### pre-extraction batches completed; marking deferred %@", buf, 0xCu);
      }
    }

    v4 = *(a1 + 32);
    v12 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v6 = v12;
    if (v5)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 32);
          *buf = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### pre-extraction batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;

      launchPreExtractionTask(*(a1 + 40));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __setupQueryUpdatesTasks_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  atomic_store(0, (*(a1 + 32) + 1));
  handleQueryUpdatesTask(*(a1 + 32), 0);
}

void handleQueryUpdatesTask(id *a1, uint64_t a2)
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### handle query updates task handler", buf, 2u);
    }
  }

  if (a1)
  {
    objc_initWeak(buf, a1[4]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __handleQueryUpdatesTask_block_invoke;
    v10[3] = &unk_27893D200;
    objc_copyWeak(v11, buf);
    v11[1] = a1;
    [a1[4] setExpirationHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __handleQueryUpdatesTask_block_invoke_341;
    v8[3] = &unk_27893D200;
    v9[1] = a1;
    objc_copyWeak(v9, buf);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __handleQueryUpdatesTask_block_invoke_3;
    v6[3] = &unk_27893D200;
    objc_copyWeak(v7, buf);
    v7[1] = a1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __handleQueryUpdatesTask_block_invoke_343;
    v5[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
    v5[4] = a1;
    queryForUpdatesWithDeviceUnlocked(a2, v8, v6, v5);
    objc_destroyWeak(v7);
    objc_destroyWeak(v9);
    objc_destroyWeak(v11);
    objc_destroyWeak(buf);
  }
}

void sub_231B54CB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

void __setupQueryUpdatesTasks_block_invoke_337(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  atomic_store(0, (*(a1 + 32) + 1));
  handleQueryUpdatesTask(*(a1 + 32), 1);
}

void __getQueryUpdatesStatus_block_invoke()
{
  atomic_store(1u, getQueryUpdatesStatus_status);
  atomic_store(0, &getQueryUpdatesStatus_status[1]);
  atomic_store(0, &getQueryUpdatesStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.updates" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158AB38;
  qword_28158AB38 = v2;

  v4 = qword_28158AB48;
  qword_28158AB40 = 0;
  qword_28158AB48 = 0;
}

void __handleQueryUpdatesTask_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### query updates task %@ expired", buf, 0xCu);
    }
  }

  atomic_store(1u, (*(a1 + 40) + 1));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = WeakRetained;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### query updates task %@ deferring", buf, 0xCu);
    }
  }

  v5 = dispatch_time(0, *(*(a1 + 40) + 24));
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __handleQueryUpdatesTask_block_invoke_340;
  v10[3] = &unk_27893D1D8;
  v11 = WeakRetained;
  v12 = v6;
  v8 = WeakRetained;
  dispatch_after(v5, v7, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __handleQueryUpdatesTask_block_invoke_340(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = [v2 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v4 = v12;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v5 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 40) + 32);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### query updates task; marking deferred %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(a1 + 40) + 32);
          *buf = 138412546;
          v14 = v4;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### query updates task batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __handleQueryUpdatesTask_block_invoke_341(uint64_t a1)
{
  v2 = dispatch_time(0, *(*(a1 + 40) + 24));
  v3 = *(*(a1 + 40) + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __handleQueryUpdatesTask_block_invoke_2;
  v4[3] = &unk_27893D200;
  objc_copyWeak(v5, (a1 + 32));
  v5[1] = *(a1 + 40);
  dispatch_after(v2, v3, v4);
  objc_destroyWeak(v5);
}

void __handleQueryUpdatesTask_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40))
  {
    v3 = WeakRetained == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v6 = WeakRetained;
    [WeakRetained setTaskCompleted];
    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    WeakRetained = v6;
    atomic_store(1u, *(a1 + 40));
  }
}

void __handleQueryUpdatesTask_block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = WeakRetained;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### query updates task %@ deferring", buf, 0xCu);
    }
  }

  v4 = dispatch_time(0, *(*(a1 + 40) + 24));
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __handleQueryUpdatesTask_block_invoke_342;
  v9[3] = &unk_27893D1D8;
  v10 = WeakRetained;
  v11 = v5;
  v7 = WeakRetained;
  dispatch_after(v4, v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __handleQueryUpdatesTask_block_invoke_342(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = [v2 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v4 = v12;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v5 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(a1 + 40) + 32);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### query updates task; marking deferred %@", buf, 0xCu);
      }
    }

    if (v3)
    {
      *(*(a1 + 40) + 24) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v7 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(a1 + 40) + 32);
          *buf = 138412546;
          v14 = v4;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### query updates task batches completed, deferring failed with error: %@; marking complete %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setTaskCompleted];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __handleQueryUpdatesTask_block_invoke_343(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = atomic_load((v1 + 1));
  return v2 & 1;
}

void __getQueryUpdatesABStatus_block_invoke()
{
  atomic_store(1u, getQueryUpdatesABStatus_status);
  atomic_store(0, &getQueryUpdatesABStatus_status[1]);
  atomic_store(0, &getQueryUpdatesABStatus_status[4]);
  v0 = [@"com.apple.spotlightknowledged.task.ab-updates" UTF8String];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v0, v1);
  v3 = qword_28158AB70;
  qword_28158AB70 = v2;

  v4 = qword_28158AB80;
  qword_28158AB78 = 0;
  qword_28158AB80 = 0;
}

uint64_t tocForJournalPath(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  v2 = [v1 stringByReplacingOccurrencesOfString:@".journal" withString:@".toc"];
  v3 = [v2 UTF8String];

  return v3;
}

uint64_t processedForJournalPath(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  v2 = [v1 stringByReplacingOccurrencesOfString:@".journal" withString:@".processed"];
  v3 = [v2 UTF8String];

  return v3;
}

void purgeOldEventFilesAtRootPath(void *a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  +[CSEventFeedback reset];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v1 isDirectory:1];
  if (v3)
  {
    v59 = v2;
    v60 = v1;
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = *MEMORY[0x277CBE8A8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE8A8], 0}];
    v58 = v3;
    v7 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v6 options:4 errorHandler:&__block_literal_global_6];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v79 objects:v86 count:16];
    if (!v9)
    {
      v67 = 0;
      goto LABEL_58;
    }

    v10 = v9;
    v67 = 0;
    v11 = *v80;
    v68 = v8;
    v64 = *v80;
    v65 = v5;
    while (1)
    {
      v12 = 0;
      v61 = v10;
      do
      {
        if (*v80 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v79 + 1) + 8 * v12);
        v78 = 0;
        [v13 getResourceValue:&v78 forKey:v5 error:0];
        v14 = v78;
        if ([v14 BOOLValue])
        {
          v15 = [v13 lastPathComponent];
          if (v15)
          {
            v16 = v13;
            v17 = v15;
            v70 = v16;
            v71 = v14;
            v18 = [v16 lastPathComponent];
            v19 = [v18 stringByDeletingPathExtension];

            if (v19)
            {
              v20 = v19;
              v21 = [v19 componentsSeparatedByString:@"_"];
              v14 = v71;
              if ([v21 count] == 5)
              {
                v66 = v20;
                v22 = [v21 lastObject];
                v69 = [v22 integerValue];

                v23 = [v70 URLByDeletingLastPathComponent];
                v24 = [v23 path];

                v25 = v67;
                if (!v67)
                {
                  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
                }

                v26 = [v25 objectForKeyedSubscript:v24];

                if (!v26)
                {
                  v27 = [MEMORY[0x277CBEB38] dictionary];
                  [v25 setObject:v27 forKeyedSubscript:v24];

                  v28 = [v25 objectForKeyedSubscript:v24];
                  [v28 setObject:&unk_2846E7788 forKeyedSubscript:@"version"];

                  v29 = [MEMORY[0x277CBEB58] set];
                  v30 = [v25 objectForKeyedSubscript:v24];
                  [v30 setObject:v29 forKeyedSubscript:@"paths"];

                  v14 = v71;
                }

                v31 = [v25 objectForKeyedSubscript:v24];
                v32 = [v31 objectForKeyedSubscript:@"version"];

                v33 = v32;
                v67 = v25;
                if (v69 > [v32 integerValue])
                {
                  v62 = v24;
                  v63 = v21;
                  v76 = 0u;
                  v77 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  v34 = [v25 objectForKeyedSubscript:v24];
                  v35 = [v34 objectForKeyedSubscript:@"paths"];

                  v36 = [v35 countByEnumeratingWithState:&v74 objects:v85 count:16];
                  v37 = v32;
                  if (v36)
                  {
                    v38 = v36;
                    v39 = *v75;
                    do
                    {
                      for (i = 0; i != v38; ++i)
                      {
                        if (*v75 != v39)
                        {
                          objc_enumerationMutation(v35);
                        }

                        v41 = *(*(&v74 + 1) + 8 * i);
                        if (SKGLogGetCurrentLoggingLevel() >= 4)
                        {
                          v42 = SKGLogInit();
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v88 = v41;
                            _os_log_impl(&dword_231B25000, v42, OS_LOG_TYPE_DEFAULT, "### removing <%@>", buf, 0xCu);
                          }
                        }

                        v43 = [MEMORY[0x277CCAA00] defaultManager];
                        v73 = 0;
                        [v43 removeItemAtURL:v41 error:&v73];
                        v44 = v73;

                        if (v44 && SKGLogGetCurrentLoggingLevel() >= 2)
                        {
                          v45 = SKGLogInit();
                          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                          {
                            purgeOldEventFilesAtRootPath_cold_1(v84, v41);
                          }
                        }
                      }

                      v37 = v33;
                      v38 = [v35 countByEnumeratingWithState:&v74 objects:v85 count:16];
                    }

                    while (v38);
                  }

                  v46 = [v67 objectForKeyedSubscript:v62];
                  v47 = [v46 objectForKeyedSubscript:@"paths"];
                  [v47 removeAllObjects];

                  v48 = [MEMORY[0x277CCABB0] numberWithInteger:v69];
                  v49 = [v67 objectForKeyedSubscript:v62];
                  [v49 setObject:v48 forKeyedSubscript:@"version"];

                  v50 = v62;
                  v51 = [v67 objectForKeyedSubscript:v62];
                  v33 = [v51 objectForKeyedSubscript:@"version"];
                  v52 = v37;
                  v11 = v64;
                  v5 = v65;
                  v10 = v61;
                  v21 = v63;
                  goto LABEL_33;
                }

                if (v69 >= [v32 integerValue])
                {
                  v50 = v24;
                  v5 = v65;
                  v20 = v66;
                  v11 = v64;
                }

                else
                {
                  v50 = v24;
                  v11 = v64;
                  v5 = v65;
                  if (SKGLogGetCurrentLoggingLevel() >= 4)
                  {
                    v53 = SKGLogInit();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v88 = v70;
                      _os_log_impl(&dword_231B25000, v53, OS_LOG_TYPE_DEFAULT, "### removing <%@>", buf, 0xCu);
                    }
                  }

                  v54 = [MEMORY[0x277CCAA00] defaultManager];
                  v72 = 0;
                  [v54 removeItemAtURL:v70 error:&v72];
                  v51 = v72;

                  if (v51 && SKGLogGetCurrentLoggingLevel() >= 2)
                  {
                    v52 = SKGLogInit();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      purgeOldEventFilesAtRootPath_cold_1(v83, v70);
                    }

LABEL_33:
                  }

                  v20 = v66;

                  v14 = v71;
                }

                if (v69 == [v33 integerValue])
                {
                  v55 = [v67 objectForKeyedSubscript:v50];
                  v56 = [v55 objectForKeyedSubscript:@"paths"];
                  [v56 addObject:v70];

                  v14 = v71;
                  v20 = v66;
                }
              }
            }

            else
            {
              v14 = v71;
            }

            v8 = v68;
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v79 objects:v86 count:16];
      if (!v10)
      {
LABEL_58:

        v2 = v59;
        v1 = v60;
        v3 = v58;
        goto LABEL_59;
      }
    }
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v88 = [v1 UTF8String];
      _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### fileURLWithPath failed for <%s>", buf, 0xCu);
    }

LABEL_59:
  }

  objc_autoreleasePoolPop(v2);
  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __purgeOldEventFilesAtRootPath_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v6 = SKGLogInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __purgeOldEventFilesAtRootPath_block_invoke_cold_1(v5, v4, v6);
    }
  }

  return 1;
}

unint64_t extractJournalNumberFromJournal(const char *a1)
{
  v1 = strdup(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  strtok(v1, "_");
  strtok(0, "_");
  strtok(0, "_");
  strtok(0, "_");
  v3 = strtok(0, ".");
  if (v3)
  {
    v4 = strtoull(v3, 0, 10);
  }

  else
  {
    v4 = -1;
  }

  free(v2);
  return v4;
}

void purgeFilesInOrderUntilThresholdReached(const char *a1, char *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v70 = a3;
  context = objc_autoreleasePoolPush();
  v71 = a1;
  v5 = calculateDirectorySize(a1);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v6 = SKGLogInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v93 = v5;
      v94 = 2048;
      fts_name = a2;
      _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, "### purgeFilesInOrderUntilThresholdReached currentSize: %llu threshold: %llu", buf, 0x16u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91[0] = v71;
  v91[1] = 0;
  v8 = fts_open(v91, 84, 0);
  v69 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = fts_read(v8);
    if (v10)
    {
      v11 = v10;
      v12 = "skg_events_";
      do
      {
        fts_statp = v11->fts_statp;
        if (fts_statp && (fts_statp->st_mode & 0xD000 | 0x2000) == 0xA000 && v11->fts_namelen >= 0xBu && (!strncmp(v11->fts_name, "evt_", 4uLL) || !strncmp(v11->fts_name, v12, 0xBuLL)) && strstr(v11->fts_name, ".journal"))
        {
          v14 = v12;
          v15 = a2;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v16 = v70;
          v17 = [(FileEntry *)v16 countByEnumeratingWithState:&v81 objects:v90 count:16, context];
          if (v17)
          {
            v18 = v17;
            v19 = *v82;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v82 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                if (strstr(v11->fts_path, [*(*(&v81 + 1) + 8 * i) UTF8String]))
                {
                  if (SKGLogGetCurrentLoggingLevel() < 5)
                  {
                    a2 = v15;
                    v12 = v14;
                  }

                  else
                  {
                    v25 = SKGLogInit();
                    a2 = v15;
                    v12 = v14;
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      fts_path = v11->fts_path;
                      *buf = 136315394;
                      v93 = fts_path;
                      v94 = 2080;
                      fts_name = v11->fts_name;
                      _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_INFO, "### skipping receiver files %s/%s", buf, 0x16u);
                    }
                  }

                  goto LABEL_29;
                }
              }

              v18 = [(FileEntry *)v16 countByEnumeratingWithState:&v81 objects:v90 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          JournalNumberFromJournal = extractJournalNumberFromJournal(v11->fts_name);
          a2 = v15;
          v12 = v14;
          if (JournalNumberFromJournal)
          {
            v22 = JournalNumberFromJournal;
            v23 = [FileEntry alloc];
            v24 = [MEMORY[0x277CCACA8] stringWithCString:v11->fts_path encoding:4];
            v16 = [(FileEntry *)v23 initWithFilePath:v24 journalNumber:v22 fileSize:v11->fts_statp->st_size];

            [v69 addObject:v16];
LABEL_29:
          }
        }

        v11 = fts_read(v9);
      }

      while (v11);
    }

    fts_close(v9);
    v7 = v69;
  }

  [v7 sortUsingComparator:{&__block_literal_global_59, context}];
  v27 = [v7 count];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v28 = SKGLogInit();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v93 = v27;
      _os_log_impl(&dword_231B25000, v28, OS_LOG_TYPE_DEFAULT, "### purgeFilesInOrderUntilThresholdReached number of files: %zu", buf, 0xCu);
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v29 = [v7 reverseObjectEnumerator];
  v30 = [v29 countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (!v30)
  {
    v32 = 0;
    v33 = 0;
    goto LABEL_75;
  }

  v31 = v30;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = *v78;
  v74 = *v78;
  do
  {
    v36 = 0;
    v75 = v31;
    do
    {
      if (*v78 != v35)
      {
        objc_enumerationMutation(v29);
      }

      v37 = *(*(&v77 + 1) + 8 * v36);
      v34 += [v37 fileSize];
      if (v34 > a2)
      {
        +[CSEventFeedback reset];
        v38 = [v37 filePath];
        v39 = [v38 UTF8String];

        v76 = tocForJournalPath(v39);
        v40 = processedForJournalPath(v39);
        v41 = unlink(v39);
        CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
        if (v41)
        {
          if (CurrentLoggingLevel >= 2)
          {
            v43 = SKGLogInit();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v93 = v39;
              _os_log_error_impl(&dword_231B25000, v43, OS_LOG_TYPE_ERROR, "### purge(failed) journal file: %s", buf, 0xCu);
            }

            goto LABEL_51;
          }
        }

        else
        {
          if (CurrentLoggingLevel >= 4)
          {
            v44 = SKGLogInit();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v93 = v39;
              _os_log_impl(&dword_231B25000, v44, OS_LOG_TYPE_DEFAULT, "### purge journal file: %s", buf, 0xCu);
            }
          }

          v43 = +[SKGActivityJournal sharedJournal];
          v87[0] = &unk_2846E77A0;
          v45 = [v37 filePath];
          v87[1] = &unk_2846E77B8;
          v88[0] = v45;
          v72 = v32;
          v73 = v34;
          v46 = v29;
          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v37, "fileSize")}];
          v88[1] = v47;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
          v48 = v40;
          v49 = v33;
          v51 = v50 = a2;
          [v43 addEventWithType:42 params:v51];

          a2 = v50;
          v33 = v49;
          v40 = v48;

          v29 = v46;
          v32 = v72;
          v34 = v73;

LABEL_51:
        }

        v52 = unlink(v76);
        v53 = SKGLogGetCurrentLoggingLevel();
        if (v52)
        {
          if (v53 >= 2)
          {
            v54 = SKGLogInit();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v93 = v76;
              _os_log_error_impl(&dword_231B25000, v54, OS_LOG_TYPE_ERROR, "### purge(failed) toc file: %s", buf, 0xCu);
            }

            goto LABEL_59;
          }
        }

        else if (v53 >= 4)
        {
          v54 = SKGLogInit();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v93 = v76;
            _os_log_impl(&dword_231B25000, v54, OS_LOG_TYPE_DEFAULT, "### purge toc file: %s", buf, 0xCu);
          }

LABEL_59:
        }

        v55 = v40;
        v56 = unlink(v40);
        v57 = SKGLogGetCurrentLoggingLevel();
        if (v56)
        {
          v35 = v74;
          if (v57 >= 2)
          {
            v58 = SKGLogInit();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v93 = v55;
              _os_log_error_impl(&dword_231B25000, v58, OS_LOG_TYPE_ERROR, "### purge(failed) processed file: %s", buf, 0xCu);
            }
          }
        }

        else
        {
          v35 = v74;
          if (v57 >= 4)
          {
            v59 = SKGLogInit();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v93 = v55;
              _os_log_impl(&dword_231B25000, v59, OS_LOG_TYPE_DEFAULT, "### purge processed file: %s", buf, 0xCu);
            }
          }

          ++v33;
          v32 += [v37 fileSize];
        }

        v31 = v75;
      }

      ++v36;
    }

    while (v31 != v36);
    v31 = [v29 countByEnumeratingWithState:&v77 objects:v89 count:16];
  }

  while (v31);
LABEL_75:

  v60 = calculateDirectorySize(v71);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v61 = SKGLogInit();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v93 = v60;
      _os_log_impl(&dword_231B25000, v61, OS_LOG_TYPE_DEFAULT, "### purge final directory size: %llu bytes\n", buf, 0xCu);
    }
  }

  if (v33)
  {
    v85[0] = @"PurgeCount";
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v33];
    v85[1] = @"PurgedBytes";
    v86[0] = v62;
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
    v86[1] = v63;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];

    v65 = v64;
    AnalyticsSendEventLazy();
  }

  objc_autoreleasePoolPop(contexta);
  v66 = *MEMORY[0x277D85DE8];
}

uint64_t __purgeFilesInOrderUntilThresholdReached_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 journalNumber];
  if (v6 >= [v5 journalNumber])
  {
    v8 = [v4 journalNumber];
    v7 = v8 > [v5 journalNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void purgeOldJournalFilesAtRootPath(const char *a1, char *a2, void *a3)
{
  v5 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v6 = SKGLogInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, "### purgeOldJournalFilesAtRootPath begin", buf, 2u);
    }
  }

  purgeFilesInOrderUntilThresholdReached(a1, a2, v5);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### purgeOldJournalFilesAtRootPath end", v8, 2u);
    }
  }
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t indexTypeWithProtectionClass(uint64_t a1)
{
  v2 = 0;
  while (([*(&gCSIndexTypeNames + v2) isEqualToString:a1] & 1) == 0)
  {
    if (++v2 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

id indexRootPath()
{
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingFormat:@"/%s", "Library/Spotlight/CoreSpotlight"];

  return v1;
}

id indexPath()
{
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingFormat:@"/%s/%s", "Library/Spotlight/CoreSpotlight", "SpotlightKnowledgeEvents/index.V2"];

  return v1;
}

id cascadePath()
{
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingFormat:@"/%s/%s", "Library/Spotlight/CoreSpotlight", "SpotlightKnowledgeClients/cascade"];

  return v1;
}

id sdbRootPath()
{
  v0 = indexPath();
  v1 = [v0 stringByAppendingFormat:@"/%@", @"sdb"];

  return v1;
}

id activityJournalRootPath()
{
  v0 = activityJournalV0RootPath();
  v1 = [v0 stringByAppendingFormat:@"_v%@", &unk_2846E77D0];

  return v1;
}

id activityJournalV0RootPath()
{
  v0 = indexPath();
  v1 = [v0 stringByAppendingFormat:@"/%@", @"activity_journal"];

  return v1;
}

id eventsPath()
{
  v0 = eventsRootPath();
  v1 = [v0 stringByAppendingFormat:@"/%d", 12];

  return v1;
}

id eventsRootPath()
{
  v0 = indexPath();
  v1 = [v0 stringByAppendingFormat:@"/%@", @"events"];

  return v1;
}

id journalsPath()
{
  v0 = journalsRootPath();
  v1 = [v0 stringByAppendingFormat:@"/%d", 12];

  return v1;
}

id journalsRootPath()
{
  v0 = indexPath();
  v1 = [v0 stringByAppendingFormat:@"/%@", @"journals"];

  return v1;
}

id sdbPath()
{
  v0 = sdbRootPath();
  v1 = [v0 stringByAppendingFormat:@"/%d", 12];

  return v1;
}

id embeddingCachePath()
{
  v0 = indexPath();
  v1 = [v0 stringByAppendingFormat:@"/%@", @"embedding_cache"];

  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 embeddingModelVersion];
  v4 = [MEMORY[0x277D657A0] sharedContext];
  v5 = [v1 stringByAppendingFormat:@"/%d/%d", v3, objc_msgSend(v4, "embeddingVersion") + 1];

  return v5;
}

id legacyPathsWithType(unsigned int a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = @"NSFileProtectionCompleteUntilFirstUserAuthentication";
  if (a1 <= 6 && ((1 << a1) & 0x76) != 0)
  {
    v3 = *(&gCSIndexTypeNames + a1);
  }

  v4 = NSHomeDirectory();
  v5 = [v4 stringByAppendingFormat:@"/%s/%@/%s/events", "Library/Spotlight/CoreSpotlight", v3, "index.spotlightV2"];

  [v2 addObject:v5];
  v6 = [v2 allObjects];

  return v6;
}

id legacyPaths()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = activityJournalV0RootPath();
  [v0 addObject:v1];

  v2 = activityJournalV0RootPath();
  v3 = [v2 stringByAppendingFormat:@"_v%lu", 1];
  [v0 addObject:v3];

  for (i = 0; i != 12; ++i)
  {
    v5 = eventsRootPath();
    v6 = [v5 stringByAppendingFormat:@"/%lu", i];
    [v0 addObject:v6];

    v7 = journalsRootPath();
    v8 = [v7 stringByAppendingFormat:@"/%lu", i];
    [v0 addObject:v8];

    v9 = sdbRootPath();
    v10 = [v9 stringByAppendingFormat:@"/%lu", i];
    [v0 addObject:v10];
  }

  v11 = legacyPathsWithType(0);
  [v0 addObjectsFromArray:v11];

  v12 = legacyPathsWithType(1u);
  [v0 addObjectsFromArray:v12];

  v13 = legacyPathsWithType(2u);
  [v0 addObjectsFromArray:v13];

  v14 = legacyPathsWithType(3u);
  [v0 addObjectsFromArray:v14];

  v15 = legacyPathsWithType(4u);
  [v0 addObjectsFromArray:v15];

  v16 = legacyPathsWithType(5u);
  [v0 addObjectsFromArray:v16];

  v17 = legacyPathsWithType(6u);
  [v0 addObjectsFromArray:v17];

  v18 = legacyPathsWithType(7u);
  [v0 addObjectsFromArray:v18];

  v19 = [v0 allObjects];

  return v19;
}

id indexPathWithType(unsigned int a1)
{
  v1 = @"NSFileProtectionCompleteUntilFirstUserAuthentication";
  if (a1 <= 6 && ((1 << a1) & 0x76) != 0)
  {
    v1 = *(&gCSIndexTypeNames + a1);
  }

  v2 = MEMORY[0x277CCACA8];
  v3 = eventsPath();
  v4 = [v2 stringWithFormat:@"%@/%@", v3, v1];

  return v4;
}

uint64_t journalPathWithProtectionClass(const char *a1, int a2, const char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7, char *__str)
{
  if ((a2 - 1) > 5)
  {
    v8 = "cs_pc_c";
  }

  else
  {
    v8 = off_27893D448[a2 - 1];
  }

  return snprintf(__str, 0x400uLL, "%s/%s/%s_%s_%d_%llu_%s_%llu.journal", a1, v8, "skg_events", a3, a6, a7, a4, a5);
}

uint64_t journalTocPathWithProtectionClass(const char *a1, int a2, const char *a3, const char *a4, uint64_t a5, int a6, char *__str)
{
  if ((a2 - 1) > 5)
  {
    v7 = "cs_pc_c";
  }

  else
  {
    v7 = off_27893D448[a2 - 1];
  }

  return snprintf(__str, 0x400uLL, "%s/%s/%s_%s_%d_%s_%lld.toc", a1, v7, "skg_events", a3, a6, a4, a5);
}

void journalPathForSpotlightDaemonWithProtectionClass(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, char *a5)
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%@/%s", a1, *(&gCSIndexTypeNames + a2), "index.spotlightV2"];
  v8 = v9;
  snprintf(a5, 0x400uLL, "%s/%s.%llu", [v9 UTF8String], a3, a4);
}

void journalTocPathForSpotlightDaemonWithProtectionClass(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, char *a5)
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%@/%s", a1, *(&gCSIndexTypeNames + a2), "index.spotlightV2"];
  v8 = v9;
  snprintf(a5, 0x400uLL, "%s/%s.%llu_toc", [v9 UTF8String], a3, a4);
}

id sdbFolderPathWithProtectionClass(int a1)
{
  if ((a1 - 1) > 5)
  {
    v1 = "cs_pc_c";
  }

  else
  {
    v1 = off_27893D448[a1 - 1];
  }

  v2 = MEMORY[0x277CCACA8];
  v3 = sdbPath();
  v4 = [v2 stringWithFormat:@"%@/%s", v3, v1];

  return v4;
}

id sdbPathWithProtectionClass(int a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = sdbFolderPathWithProtectionClass(a1);
  v3 = [v1 stringWithFormat:@"%@/%s", v2, "skg_store.db"];

  return v3;
}

id embeddingCacheParentFolderPath(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = "unknown";
  }

  else
  {
    v1 = gCSIndexTypeCStringShortNames[a1];
  }

  v2 = MEMORY[0x277CCACA8];
  v3 = embeddingCachePath();
  v4 = [v2 stringWithFormat:@"%@/%s/", v3, v1];

  return v4;
}

void setDirstatsTrackingOnEventsPath()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = eventsPath();
  v1 = [v0 UTF8String];

  memset(v4, 0, sizeof(v4));
  LODWORD(v4[0]) = 3;
  if (fsctl(v1, 0xC1104A71uLL, v4, 0) == -1 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      setDirstatsTrackingOnEventsPath_cold_1();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t calculateDirectorySize(const char *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "### calculateDirectorySize begin", buf, 2u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *buf = 0u;
  *buf = 3;
  v3 = fsctl(a1, 0xC1104A71uLL, buf, 0);
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v3 == -1)
  {
    if (CurrentLoggingLevel >= 2)
    {
      v7 = SKGLogInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        calculateDirectorySize_cold_1();
      }
    }

    result = 0;
  }

  else
  {
    if (CurrentLoggingLevel >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v15;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### calculateDirectorySize end %llu", &v9, 0xCu);
      }
    }

    result = v15;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL isDirectoryWithinLimit(const char *a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = calculateDirectorySize(a1);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109632;
      v7[1] = v3 < a2;
      v8 = 2048;
      v9 = v3;
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "### isDirectoryWithinLimit ret=%{BOOL}d currentSize=%llu limit=%llu", v7, 0x1Cu);
    }
  }

  result = v3 < a2;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id getIndexEventsPathForBasePath(void *a1, id a2)
{
  v4 = a2;
  v5 = a1;
  v6 = [v5 stringByAppendingFormat:@"/%s/%s/%d/%s", "SpotlightKnowledgeEvents/index.V2", "events", 12, objc_msgSend(a2, "UTF8String")];

  return v6;
}

id getAllCSManagedIndexPath()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = NSHomeDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"Containers";
  v7[3] = @"com.apple.managedcorespotlightd";
  v7[4] = @"EnabledIndexes";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = getAllCSManagedIndexPathsFromConfig(v3);

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id getAllCSManagedIndexPathsFromConfig(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA60];
    v2 = a1;
    v3 = [[v1 alloc] initWithContentsOfURL:v2];

    v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
    v5 = [v3 filteredArrayUsingPredicate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __getAllCSManagedIndexPathsFromConfig_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

uint64_t getHashForBasePath(void *a1)
{
  v1 = -1759636613;
  v2 = a1;
  v3 = [v2 UTF8String];
  v4 = [v2 length];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 3;
  }

  v6 = (v3 + (v5 & 0xFFFFFFFC));
  if ((v4 + 3) >= 7)
  {
    v9 = -(v5 >> 2);
    v10 = -1789642873;
    v11 = 718793509;
    do
    {
      v10 = 5 * v10 + 2071795100;
      v11 = 5 * v11 + 1808688022;
      HIDWORD(v12) = v10 * *&v6[4 * v9];
      LODWORD(v12) = HIDWORD(v12);
      v13 = (v12 >> 21) * v11;
      HIDWORD(v12) = v1;
      LODWORD(v12) = v1;
      v1 = v13 ^ (5 * (v12 >> 19) + 1390208809);
    }

    while (!__CFADD__(v9++, 1));
    v8 = 5 * v10 + 2071795100;
    v7 = 5 * v11 + 1808688022;
  }

  else
  {
    v7 = 1107688271;
    v8 = 1713515327;
  }

  v15 = 0;
  if ((v4 & 3u) > 1)
  {
    if ((v4 & 3) != 2)
    {
      v15 = v6[2] << 16;
    }

    v15 |= v6[1] << 8;
  }

  else if ((v4 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v16) = (v15 ^ *v6) * v8;
  LODWORD(v16) = HIDWORD(v16);
  v17 = (v16 >> 21) * v7;
  HIDWORD(v16) = v1;
  LODWORD(v16) = v1;
  v1 = v17 ^ (5 * (v16 >> 19) + 1390208809);
LABEL_17:
  v18 = -1028477387 * ((-2048144789 * (v1 ^ v4)) ^ ((-2048144789 * (v1 ^ v4)) >> 13));
  v19 = v18 ^ HIWORD(v18);

  return v19;
}

id getCSBasePathForId(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  getAllCSManagedIndexPath();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (getHashForBasePath(v7) == a1)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_231B58FD4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B5C80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_231B5DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B5FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v60 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B60870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_3_0()
{

  return v0;
}

void sub_231B60C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231B61D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B62A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_4_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id throughputMetricForTask(void *a1)
{
  v1 = MEMORY[0x277CF0818];
  v2 = a1;
  v3 = [[v1 alloc] initWithIdentifier:v2 qos:0 workloadCategory:40 expectedMetricValue:0];

  return v3;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t _CFGetTypeID_MutableNetworkWrapper(void)
{
  {
    unk_281926138 = 0u;
    unk_281926128 = 0u;
    _CFGetTypeID_MutableNetworkWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_MutableNetworkWrapper(void)::typeID;
}

SI::Network **SINetworkAddVertexWithIdentifier(uint64_t a1, char *a2)
{
  result = *(a1 + 24);
  if (result)
  {
    return SI::MutableNetwork::addVertex(result, a2);
  }

  return result;
}

uint64_t SI::MutableNetwork::addVertex(SI::Network **this, char *a2)
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  std::string::basic_string[abi:ne200100]<0>(v25, a2);
  v4 = SI::MutableNetwork::indexOfIdentifier(this, v25);
  if ((v4 & 0x80000000) != 0)
  {
    SI::Network::addVertex(this[12]);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v6 = this[4];
    v5 = this[5];
    if (v6 >= v5)
    {
      v8 = this[3];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
      v10 = v9 + 1;
      if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v10;
      }

      v27.__end_cap_.__value_ = (this + 3);
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>((this + 3), v12);
      }

      v13 = 24 * v9;
      v14 = *__p;
      *(v13 + 16) = v24;
      *v13 = v14;
      __p[1] = 0;
      v24 = 0;
      __p[0] = 0;
      v15 = 24 * v9 + 24;
      v16 = this[3];
      v17 = this[4] - v16;
      v18 = (24 * v9 - v17);
      memcpy((v13 - v17), v16, v17);
      v19 = this[3];
      this[3] = v18;
      this[4] = v15;
      v20 = this[5];
      this[5] = 0;
      v27.__end_ = v19;
      v27.__end_cap_.__value_ = v20;
      v27.__first_ = v19;
      v27.__begin_ = v19;
      std::__split_buffer<std::string>::~__split_buffer(&v27);
      v21 = SHIBYTE(v24);
      this[4] = v15;
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v7 = *__p;
      *(v6 + 2) = v24;
      *v6 = v7;
      this[4] = (v6 + 24);
    }

    std::string::basic_string[abi:ne200100]<0>(&v27, a2);
    v4 = SI::MutableNetwork::indexOfIdentifier(this, &v27.__first_);
    if (SHIBYTE(v27.__end_) < 0)
    {
      operator delete(v27.__first_);
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  return v4;
}

void sub_231B6A088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void SINetworkSetEdgeBetweenIdentifiers(uint64_t a1, unsigned int a2, unsigned int a3, char *a4, double a5)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    SI::MutableNetwork::setEdge(v5, a2, a3, a4, a5);
  }
}

void SI::MutableNetwork::setEdge(SI::MutableNetwork *this, unsigned int a2, unsigned int a3, char *__s, double a5)
{
  __p = 0uLL;
  v11 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v9 = SI::MutableNetwork::indexOfEdge(this, &__p);
  if ((v9 & 0x80000000) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](this, &__p);
    v9 = SI::MutableNetwork::indexOfEdge(this, &__p);
  }

  SI::Network::setEdge(*(this + 12), a2, a3, v9, a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_231B6A194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SINetworkAddEdgeBetweenIdentifiers(uint64_t a1, unsigned int a2, unsigned int a3, char *a4, double a5)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    SI::MutableNetwork::addEdge(v5, a2, a3, a4, a5);
  }
}

void SI::MutableNetwork::addEdge(SI::MutableNetwork *this, unsigned int a2, unsigned int a3, char *__s, double a5)
{
  __p = 0uLL;
  v11 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v9 = SI::MutableNetwork::indexOfEdge(this, &__p);
  if ((v9 & 0x80000000) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](this, &__p);
    v9 = SI::MutableNetwork::indexOfEdge(this, &__p);
  }

  SI::Network::addEdge(*(this + 12), a2, a3, v9, a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_231B6A26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SINetworkScoreNetwork(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    SI::MutableNetwork::score(v2, a2);
  }
}

void SI::MutableNetwork::score(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 80;
  std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(a1 + 72, *(a1 + 80));
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 - 8) = v4;
  if (SI::Network::updateKPathScores(*(v4 + 16), 2u, a2, 0.1))
  {
    v5 = *(a1 + 96);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2SI14MutableNetwork5scoreEU13block_pointerFvPbE_block_invoke;
    v6[3] = &__block_descriptor_tmp_1;
    v6[4] = a1;
    SI::Network::enumerateKPathScoresUsingBlock(v5, v6);
    SI::Network::clear(*(a1 + 96));
  }
}

double SINetworkGetScoreForIdentifier(uint64_t a1, char *a2, int *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    return SI::MutableNetwork::kPathScoreForIdentifier(v3, a2, a3);
  }

  else
  {
    return 0.0;
  }
}

double SI::MutableNetwork::kPathScoreForIdentifier(SI::MutableNetwork *this, char *a2, int *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = SI::MutableNetwork::indexOfIdentifier(this, __p);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = this + 80;
    v7 = *(this + 10);
    v8 = 0.0;
    if (!v7)
    {
      goto LABEL_10;
    }

    v9 = this + 80;
    v10 = *(this + 10);
    do
    {
      v11 = *(v10 + 8);
      v12 = v11 >= v5;
      v13 = v11 < v5;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *&v10[8 * v13];
    }

    while (v10);
    if (v9 == v6 || v5 < *(v9 + 8))
    {
LABEL_10:
      v14 = -1;
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v16 = this + 80;
    do
    {
      v17 = *(v7 + 8);
      v12 = v17 >= v5;
      v18 = v17 < v5;
      if (v12)
      {
        v16 = v7;
      }

      v7 = *&v7[8 * v18];
    }

    while (v7);
    if (v16 == v6 || v5 < *(v16 + 8))
    {
      v16 = this + 80;
    }

    v8 = *(v16 + 5);
    v14 = *(*(this + 6) + 4 * v5);
    if (a3)
    {
LABEL_11:
      *a3 = v14;
    }
  }

LABEL_13:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_231B6A478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SINetworkClear(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    SI::MutableNetwork::clear(v1);
  }
}

void SI::MutableNetwork::clear(SI::Network **this)
{
  v1 = this;
  SI::Network::clear(this[12]);
  std::vector<std::string>::clear[abi:ne200100](v1);
  v2 = *(v1 + 10);
  v1 = (v1 + 80);
  std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
  *(v1 - 3) = *(v1 - 4);
}

void SINetworkSampleUsingBlock(unsigned int a1, uint64_t a2, double a3)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  for (i = 1; i <= a1; ++i)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](&__p, &i);
  }

  SI::shuffle(&__p, a3);
  LOBYTE(i) = 0;
  v6 = __p;
  v7 = v12;
  if (__p != v12)
  {
    v8 = __p + 4;
    do
    {
      (*(a2 + 16))(a2, *(v8 - 1), &i);
      if (i)
      {
        break;
      }

      v9 = v8 == v7;
      v8 += 4;
    }

    while (!v9);
    v6 = __p;
  }

  if (v6)
  {
    v12 = v6;
    operator delete(v6);
  }
}

void sub_231B6A5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void SI::shuffle(uint64_t *a1, double a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (v2)
  {
    v14.__padding_ = 0;
    std::random_device::random_device[abi:ne200100](&v14);
    bzero(&v13, 0x9C0uLL);
    if (a2 == 0.0)
    {
      a2 = MEMORY[0x2383775F0](&v14);
    }

    v5 = a2;
    v13.__x_[0] = a2;
    for (i = 1; i != 624; ++i)
    {
      v5 = i + 1812433253 * (v5 ^ (v5 >> 30));
      v13.__x_[i] = v5;
    }

    v13.__i_ = 0;
    if (v2 != 1)
    {
      v7 = 4 * (v2 - 1);
      v8 = v2 - 2;
      do
      {
        v12[0] = 0;
        v12[1] = v8;
        v9 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v12, &v13, v12);
        v10 = *a1;
        v11 = *(*a1 + v7);
        *(v10 + v7) = *(*a1 + 4 * v9);
        *(v10 + 4 * v9) = v11;
        v7 -= 4;
        --v8;
      }

      while (v8 != -1);
    }

    std::random_device::~random_device(&v14);
  }
}

void MutableNetworkWrapper::~MutableNetworkWrapper(MutableNetworkWrapper *this)
{
  MutableNetworkWrapper::~MutableNetworkWrapper(this);

  JUMPOUT(0x238377640);
}

{
  *this = &unk_2846CB8F0;
  v1 = *(this + 1);
  if (v1)
  {
    SI::MutableNetwork::~MutableNetwork(v1);
    MEMORY[0x238377640]();
  }
}

void SI::MutableNetwork::~MutableNetwork(SI::MutableNetwork *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(this + 72, *(this + 10));
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void SI::MutableNetwork::MutableNetwork(SI::MutableNetwork *this)
{
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  operator new();
}

void sub_231B6AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::destroy(v12, *(v10 + 80));
  v14 = *(v10 + 48);
  if (v14)
  {
    *(v10 + 56) = v14;
    operator delete(v14);
  }

  a10 = (v10 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_ptr_emplace<SI::Network>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2846CB958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x238377640);
}

void SI::Network::~Network(SI::Network *this)
{
  v4 = (this + 80);
  std::vector<std::map<unsigned int,std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 56);
  std::vector<std::map<unsigned int,std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void std::vector<std::map<unsigned int,std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t SI::MutableNetwork::indexOfIdentifier(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *(a1 + 24);
    while (1)
    {
      v8 = *(v7 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 8);
      }

      if (v8 == v5)
      {
        v10 = v9 >= 0 ? v7 : *v7;
        if (!memcmp(v10, v6, v5))
        {
          break;
        }
      }

      v7 += 24;
      if (v7 == v3)
      {
        v7 = v3;
        break;
      }
    }
  }

  if (v3 == v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return -1431655765 * ((v7 - v2) >> 3);
  }
}

void SI::Network::addVertex(SI::Network *this)
{
  v2 = (this + 8);
  LODWORD(v21) = (*(this + 2) - *(this + 1)) >> 2;
  std::vector<unsigned int>::push_back[abi:ne200100](this + 1, &v21);
  v4 = v2[4];
  v3 = v2[5];
  if (v4 >= v3)
  {
    v6 = v2[3];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((v2 + 3), v12);
    }

    v13 = v8;
    v14 = (8 * v8);
    v15 = &v14[-v13];
    *v14 = 0;
    v5 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 4);
    *(this + 4) = v15;
    *(this + 5) = v5;
    *(this + 6) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = 0;
    v5 = v4 + 8;
  }

  *(this + 5) = v5;
  v22 = 0;
  v23 = 0;
  v21 = &v22;
  v17 = *(this + 8);
  if (v17 >= *(this + 9))
  {
    v18 = std::vector<std::map<unsigned int,std::vector<unsigned int>>>::__emplace_back_slow_path<std::map<unsigned int,std::vector<unsigned int>>>(this + 7, &v21);
  }

  else
  {
    *v17 = &v22;
    v17[1] = v22;
    v17[2] = 0;
    *v17 = v17 + 1;
    v18 = (v17 + 3);
  }

  *(this + 8) = v18;
  std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(&v21, v22);
  v22 = 0;
  v23 = 0;
  v21 = &v22;
  v19 = *(this + 11);
  if (v19 >= *(this + 12))
  {
    v20 = std::vector<std::map<unsigned int,std::vector<double>>>::__emplace_back_slow_path<std::map<unsigned int,std::vector<double>>>(this + 10, &v21);
  }

  else
  {
    *v19 = &v22;
    v19[1] = v22;
    v19[2] = 0;
    *v19 = v19 + 1;
    v20 = (v19 + 3);
  }

  *(this + 11) = v20;
  std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(&v21, v22);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27893C5B0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::map<unsigned int,std::vector<unsigned int>>>::__emplace_back_slow_path<std::map<unsigned int,std::vector<unsigned int>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v19 = 0;
  v20 = v7;
  v8 = *a2;
  *&v21 = 0;
  *v7 = v8;
  v9 = a2 + 1;
  v10 = a2[1];
  *(&v21 + 1) = 0;
  *(24 * v2 + 8) = v10;
  v11 = 24 * v2 + 8;
  v12 = a2[2];
  *(v7 + 16) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *a2 = v9;
    *v9 = 0;
    a2[2] = 0;
  }

  else
  {
    *v7 = v11;
  }

  *&v21 = v7 + 24;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::~__split_buffer(&v19);
  return v18;
}

void sub_231B6B358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v14 = 0;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t std::vector<std::map<unsigned int,std::vector<double>>>::__emplace_back_slow_path<std::map<unsigned int,std::vector<double>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v19 = 0;
  v20 = v7;
  v8 = *a2;
  *&v21 = 0;
  *v7 = v8;
  v9 = a2 + 1;
  v10 = a2[1];
  *(&v21 + 1) = 0;
  *(24 * v2 + 8) = v10;
  v11 = 24 * v2 + 8;
  v12 = a2[2];
  *(v7 + 16) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *a2 = v9;
    *v9 = 0;
    a2[2] = 0;
  }

  else
  {
    *v7 = v11;
  }

  *&v21 = v7 + 24;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<double>>>,std::map<unsigned int,std::vector<double>>*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::~__split_buffer(&v19);
  return v18;
}

void sub_231B6B6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<unsigned int,std::vector<unsigned int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<unsigned int,std::vector<double>>>,std::map<unsigned int,std::vector<double>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v14 = 0;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<double>>>,std::map<unsigned int,std::vector<double>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<double>>>,std::map<unsigned int,std::vector<double>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<unsigned int,std::vector<unsigned int>>>,std::map<unsigned int,std::vector<unsigned int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
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

    while (v5 != a2);
  }
}

uint64_t SI::MutableNetwork::indexOfEdge(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v7 = *a1;
  }

  else
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *a1;
    while (1)
    {
      v8 = *(v7 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 8);
      }

      if (v8 == v5)
      {
        v10 = v9 >= 0 ? v7 : *v7;
        if (!memcmp(v10, v6, v5))
        {
          break;
        }
      }

      v7 += 24;
      if (v7 == v3)
      {
        v7 = v3;
        break;
      }
    }
  }

  if (v3 == v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return -1431655765 * ((v7 - v2) >> 3);
  }
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void SI::Network::setEdge(SI::Network *this, unsigned int a2, unsigned int a3, unsigned int a4, double a5)
{
  v34 = a3;
  v5 = (*(this + 5) - *(this + 4)) >> 3;
  if (v5 > a2 && v5 > a3)
  {
    v9 = a2;
    v33 = a5;
    v10 = *(this + 7) + 24 * a2;
    v11 = *(v10 + 8);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v10 + 8;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= a4;
      v15 = v13 < a4;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 == v10 + 8 || *(v12 + 32) > a4)
    {
LABEL_14:
      LODWORD(v29) = a4;
      v31 = 0;
      v32 = 0;
      __p = 0;
      std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::__emplace_unique_impl<std::pair<int,std::vector<unsigned int>>>();
    }

    v17 = 3 * a2;
    v18 = *(this + 10) + 24 * a2;
    v28 = a4;
    v29 = &v28;
    v19 = std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v18, &v28)[5];
    v20 = *(this + 10) + 24 * v9;
    v28 = a4;
    v29 = &v28;
    if (v19 == std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v20, &v28)[6])
    {
      v21 = 2.22507386e-308;
    }

    else
    {
      v21 = 2.22507386e-308;
      do
      {
        v22 = *v19++;
        v23 = v22;
        if (v22 > v21)
        {
          v21 = v23;
        }

        v24 = *(this + 10) + 24 * v9;
        v28 = a4;
        v29 = &v28;
      }

      while (v19 != std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v24, &v28)[6]);
    }

    if (v33 > v21)
    {
      v25 = *(this + 10) + 24 * v9;
      v28 = a4;
      v29 = &v28;
      v26 = std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v25, &v28);
      v26[6] = v26[5];
      v27 = *(this + 10) + 8 * v17;
      v28 = a4;
      v29 = &v28;
      v16 = std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v27, &v28);
      std::vector<double>::push_back[abi:ne200100](v16 + 5, &v33);
    }
  }
}

void sub_231B6BCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::vector<unsigned int>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void SI::Network::addEdge(SI::Network *this, unsigned int a2, unsigned int a3, unsigned int a4, double a5)
{
  v28 = a3;
  v27 = a5;
  v5 = (*(this + 5) - *(this + 4)) >> 3;
  if (v5 > a2 && v5 > a3)
  {
    v9 = a2;
    v10 = *(this + 7);
    v11 = v10 + 24 * a2;
    v14 = *(v11 + 8);
    v12 = v11 + 8;
    v13 = v14;
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v12;
    do
    {
      v16 = *(v13 + 32);
      v17 = v16 >= a4;
      v18 = v16 < a4;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 == v12 || *(v15 + 32) > a4)
    {
LABEL_14:
      LODWORD(v23) = a4;
      v25 = 0;
      v26 = 0;
      __p = 0;
      std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::__emplace_unique_impl<std::pair<int,std::vector<unsigned int>>>();
    }

    v22 = a4;
    v23 = &v22;
    v19 = std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v10 + 24 * a2, &v22);
    std::vector<unsigned int>::push_back[abi:ne200100](v19 + 5, &v28);
    v20 = *(this + 10) + 24 * v9;
    v22 = a4;
    v23 = &v22;
    v21 = std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v20, &v22);
    std::vector<double>::push_back[abi:ne200100](v21 + 5, &v27);
    ++*this;
  }
}

void sub_231B6C764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SI::Network::updateKPathScores(void *a1, unsigned int a2, uint64_t a3, double a4)
{
  v112 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SINework - running k-path", buf, 2u);
  }

  v8 = a1[4];
  v9 = a1[5] - v8;
  v10 = v9 >> 3;
  v11 = *a1;
  v12 = (v9 >> 3) < 2 || v11 == 0;
  if (!v12)
  {
    if (fabs(a4) <= 0.5)
    {
      v22 = a4;
    }

    else
    {
      v22 = 0.0;
    }

    if (a2 - 1 >= v10)
    {
      v23 = log((v11 + v10));
      a2 = v23;
      if (v23 - v23 >= 0.5)
      {
        ++a2;
      }
    }

    v107 = 0;
    v106 = 0u;
    memset(v105, 0, sizeof(v105));
    v103 = 0;
    v104 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    *buf = 0;
    v93 = buf;
    v94 = 0x4002000000;
    v95 = __Block_byref_object_copy__9;
    v96 = __Block_byref_object_dispose__9;
    __p = 0;
    v98 = 0;
    v99 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2000000000;
    v91 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x2000000000;
    v87 = 0;
    v80 = 0;
    v81 = &v80;
    v82 = 0x2000000000;
    v83 = 0;
    time(&v104);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v110) = 134217984;
      *(&v110 + 4) = v104;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SINework - starting k-path: %ld", &v110, 0xCu);
    }

    v24 = pow(v10, v22 * -2.0 + 1.0) * (2 * a2 * a2);
    v76 = (log(v10) * v24);
    v107 = 0;
    do
    {
      LODWORD(v110) = 0;
      std::vector<unsigned int>::push_back[abi:ne200100](v93 + 5, &v110);
      *(a1[4] + 8 * v107) = 0;
      std::vector<unsigned int>::push_back[abi:ne200100](&v100, &v107);
      ++v107;
    }

    while (v107 < v10);
    (*(a3 + 16))(a3, v81 + 3);
    if ((v81[3] & 1) == 0)
    {
      SI::shuffle(&v100, 0.0);
      v74 = v9;
      v75 = a2;
      if (v76 == -1)
      {
LABEL_59:
        time(&v103);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v110) = 134217984;
          *(&v110 + 4) = v103;
          _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SINework - ending k-path: %ld", &v110, 0xCu);
        }

        v40 = 0;
        v41 = (v74 >> 3);
        v42 = 1.79769313e308;
        v43 = 2.22507386e-308;
        do
        {
          v44 = a1[4];
          v45 = *(v44 + 8 * v40) * v75 * v10 / (v76 + 1);
          *(v44 + 8 * v40) = v45;
          *(a1[1] + 4 * v40) = v40;
          (*(a3 + 16))(a3, v81 + 3);
          if (v45 < v43 || v43 == 2.22507386e-308)
          {
            v43 = v45;
          }

          if (v45 > v42 || v42 == 1.79769313e308)
          {
            v42 = v45;
          }

          if (v81[3])
          {
            break;
          }

          v12 = v41 - 1 == v40++;
        }

        while (!v12);
        v48 = 0;
        v110 = 0u;
        v111 = 0u;
        do
        {
          v49 = a1[4];
          v50 = *(v49 + 8 * v48);
          if (v50 != 0.0)
          {
            v50 = (v50 - v43) / (v42 - v43);
            *(v49 + 8 * v48) = v50;
          }

          v51 = *(&v110 + 1);
          if (*(&v110 + 1) >= v111)
          {
            v53 = (*(&v110 + 1) - v110) >> 4;
            v54 = v53 + 1;
            if ((v53 + 1) >> 60)
            {
              std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
            }

            v55 = v111 - v110;
            if ((v111 - v110) >> 3 > v54)
            {
              v54 = v55 >> 3;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFF0)
            {
              v56 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<SI::Node>>(&v110, v56);
            }

            v57 = 16 * v53;
            *v57 = v48;
            *(v57 + 4) = 0;
            *(v57 + 8) = v50;
            v59 = *(&v110 + 1);
            v58 = v110;
            v60 = 16 * v53 + v110 - *(&v110 + 1);
            if (v110 != *(&v110 + 1))
            {
              v61 = (v57 + v110 - *(&v110 + 1));
              do
              {
                v62 = *v58++;
                *v61++ = v62;
              }

              while (v58 != v59);
              v58 = v110;
            }

            v52 = v57 + 16;
            *&v110 = v60;
            *(&v110 + 1) = v57 + 16;
            *&v111 = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            **(&v110 + 1) = v48;
            *(v51 + 4) = 0;
            v52 = v51 + 16;
            *(v51 + 8) = v50;
          }

          *(&v110 + 1) = v52;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SI::Network::updateKPathScores(double,unsigned int,void({block_pointer})(BOOL *))::{lambda(SI::Node,SI::Node)#1} &,std::__wrap_iter<SI::Node*>>(v110, v52, &v109, (v52 - v110) >> 4);
          (*(a3 + 16))(a3, v81 + 3);
          v63 = *(v81 + 24);
          if (v63)
          {
            break;
          }

          ++v48;
        }

        while (v48 != v41);
        v65 = *(&v110 + 1);
        v64 = v110;
        if (v110 == *(&v110 + 1))
        {
LABEL_110:
          v21 = v63 ^ 1u;
          if (!v64)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v66 = 0;
          while (1)
          {
            *(a1[1] + 4 * *v64) = v66;
            v67 = (v65 - v64) >> 4;
            if (v67 >= 2)
            {
              v68 = 0;
              v109 = *v64;
              v69 = v64;
              do
              {
                v70 = v69;
                v69 += 16 * v68 + 16;
                v71 = 2 * v68;
                v68 = (2 * v68) | 1;
                v72 = v71 + 2;
                if (v72 < v67 && *(v69 + 1) < *(v69 + 3))
                {
                  v69 += 16;
                  v68 = v72;
                }

                *v70 = *v69;
              }

              while (v68 <= ((v67 - 2) >> 1));
              v73 = (v65 - 16);
              if (v69 == v73)
              {
                *v69 = v109;
              }

              else
              {
                *v69 = *v73;
                *v73 = v109;
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SI::Network::updateKPathScores(double,unsigned int,void({block_pointer})(BOOL *))::{lambda(SI::Node,SI::Node)#1} &,std::__wrap_iter<SI::Node*>>(v64, (v69 + 16), &v108, (v69 + 16 - v64) >> 4);
              }

              v65 = *(&v110 + 1);
            }

            *(&v110 + 1) = v65 - 16;
            (*(a3 + 16))(a3, v81 + 3);
            v63 = *(v81 + 24);
            v64 = v110;
            if (v63)
            {
              break;
            }

            ++v66;
            v65 = *(&v110 + 1);
            if (v110 == *(&v110 + 1))
            {
              goto LABEL_110;
            }
          }

          v21 = 0;
          if (!v110)
          {
            goto LABEL_30;
          }
        }

        *(&v110 + 1) = v64;
        operator delete(v64);
LABEL_30:
        _Block_object_dispose(&v80, 8);
        _Block_object_dispose(&v84, 8);
        _Block_object_dispose(&v88, 8);
        _Block_object_dispose(buf, 8);
        if (__p)
        {
          v98 = __p;
          operator delete(__p);
        }

        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        std::deque<double>::~deque[abi:ne200100](v105);
        goto LABEL_35;
      }

      v27 = 0;
      v77 = 0;
      v28 = a2;
      while (1)
      {
        do
        {
          LODWORD(v30) = *(v100 + v27);
          v29 = a1[7];
          v31 = *(v29 + 24 * v30 + 16);
          ++v27;
        }

        while (v27 < v10 && !*(v29 + 24 * v30 + 16));
        if (v27 >= v10 || !*(v29 + 24 * v30 + 16))
        {
          SI::shuffle(&v100, 0.0);
          v27 = 0;
        }

        *(*(v93 + 5) + 4 * v30) = 1;
        *&v110 = v30;
        std::deque<double>::push_back(v105, &v110);
        v32 = (vcvtd_n_f64_s32(rand(), 0x1FuLL) * v28);
        v107 = 0;
        v33 = v32 + 1;
        if (v32 != -1)
        {
          break;
        }

LABEL_44:
        while (*(&v106 + 1))
        {
          v34 = *(&v106 + 1) - 1;
          v35 = *(*(v105[1] + (((v106 + v34) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v106 + v34) & 0x1FF));
          *(*(v93 + 5) + 4 * v35) = 0;
          *(&v106 + 1) = v34;
          std::deque<double>::__maybe_remove_back_spare[abi:ne200100](v105, 1);
          if (v107 < v33)
          {
            *(a1[4] + 8 * v35) = *(a1[4] + 8 * v35) + -1.0;
          }

          (*(a3 + 16))(a3, v81 + 3);
          v36 = v81;
          if (*(v81 + 24) == 1)
          {
            goto LABEL_56;
          }
        }

        v36 = v81;
LABEL_56:
        (*(a3 + 16))(a3, v36 + 3);
        if (v81[3])
        {
          goto LABEL_29;
        }

        v12 = v77++ == v76;
        if (v12)
        {
          goto LABEL_59;
        }
      }

      v37 = MEMORY[0x277D85DD0];
      while (1)
      {
        v89[3] = 0.0;
        v79[0] = v37;
        v79[1] = 0x40000000;
        v79[2] = ___ZN2SI7Network17updateKPathScoresEdjU13block_pointerFvPbE_block_invoke;
        v79[3] = &unk_27893DAF8;
        v79[6] = buf;
        v79[7] = &v88;
        v79[4] = a3;
        v79[5] = &v84;
        v79[8] = &v80;
        SI::Network::enumerateTargetAtIndexUsingBlock(a1, v30, v79);
        if (v89[3] == 0.0)
        {
          goto LABEL_44;
        }

        (*(a3 + 16))(a3, v81 + 3);
        if (v81[3])
        {
          break;
        }

        v38 = vcvtd_n_f64_s32(rand(), 0x1FuLL) * v89[3];
        v89[3] = 0.0;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 0x40000000;
        v78[2] = ___ZN2SI7Network17updateKPathScoresEdjU13block_pointerFvPbE_block_invoke_2;
        v78[3] = &unk_27893DB20;
        v78[6] = buf;
        v78[7] = &v88;
        *&v78[9] = v38;
        v78[4] = a3;
        v78[5] = &v84;
        v78[8] = &v80;
        SI::Network::enumerateTargetAtIndexUsingBlock(a1, v30, v78);
        v30 = *(v85 + 6);
        *(*(v93 + 5) + 4 * v30) = 1;
        *(a1[4] + 8 * v30) = *(a1[4] + 8 * v30) + 1.0;
        *&v110 = v30;
        v39 = std::deque<double>::push_back(v105, &v110);
        (*(a3 + 16))(a3, v81 + 3, v39);
        if (v81[3])
        {
          break;
        }

        if (++v107 >= v33)
        {
          goto LABEL_44;
        }
      }
    }

LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  if (v10)
  {
    v13 = 0.0;
    if (v10 == 1)
    {
      v13 = 1.0;
    }

    v14 = (v9 >> 3);
    v15 = (v14 + 1) & 0x1FFFFFFFELL;
    v16 = vdupq_n_s64(v14 - 1);
    v17 = xmmword_231C225C0;
    v18 = (v8 + 8);
    v19 = vdupq_n_s64(2uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v16, v17));
      if (v20.i8[0])
      {
        *(v18 - 1) = v13;
      }

      if (v20.i8[4])
      {
        *v18 = v13;
      }

      v17 = vaddq_s64(v17, v19);
      v18 += 2;
      v15 -= 2;
    }

    while (v15);
  }

  v21 = 1;
LABEL_35:
  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_231B6D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  std::deque<double>::~deque[abi:ne200100](&a61);
  _Unwind_Resume(a1);
}

uint64_t SI::Network::enumerateKPathScoresUsingBlock(uint64_t result, uint64_t a2)
{
  v8 = 0;
  v2 = *(result + 40) - *(result + 32);
  if ((v2 & 0x7FFFFFFF8) != 0)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 3) - 1;
    do
    {
      result = (*(a2 + 16))(a2, v5, *(*(v4 + 8) + 4 * v5), &v8, *(*(v4 + 32) + 8 * v5));
      if (v8)
      {
        break;
      }
    }

    while (v6 != v5++);
  }

  return result;
}

uint64_t *___ZN2SI14MutableNetwork5scoreEU13block_pointerFvPbE_block_invoke(uint64_t a1, unsigned int a2, std::vector<int>::value_type a3, double a4)
{
  __x = a3;
  v10 = a2;
  v5 = *(a1 + 32);
  begin = v5[2].__begin_;
  v5 += 2;
  v7.__i_ = &begin[a2];
  std::vector<int>::insert(v5, v7, &__x);
  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v5[1], &v10);
  *(result + 5) = a4;
  return result;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int const&>(&v26, __x);
    v16.__i_ = v27;
    memcpy(v28, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v27;
    *&v28 = v28 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v23 = v9 <= __x || i > __x;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *i = __x[v24];
  }

  return i;
}

void sub_231B6D524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SI::Network::clear(SI::Network *this)
{
  *(this + 2) = *(this + 1);
  *(this + 5) = *(this + 4);
  v3 = *(this + 7);
  v2 = *(this + 8);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(v2 - 24, *(v2 - 16));
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 8) = v3;
  v6 = *(this + 10);
  v5 = *(this + 11);
  if (v5 != v6)
  {
    do
    {
      v7 = v5 - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<double>>>>::destroy(v5 - 24, *(v5 - 16));
      v5 = v7;
    }

    while (v7 != v6);
  }

  *(this + 11) = v6;
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__9(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *SI::Network::enumerateTargetAtIndexUsingBlock(void *result, unsigned int a2, uint64_t a3)
{
  v5 = result[7];
  if (0xAAAAAAAAAAAAAAABLL * ((result[8] - v5) >> 3) > a2)
  {
    v24 = v3;
    v25 = v4;
    v23 = 0;
    v6 = (v5 + 24 * a2);
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      v11 = (result[10] + 24 * a2 + 8);
      do
      {
        v12 = *v11;
        if (!*v11)
        {
          goto LABEL_12;
        }

        v13 = *(v8 + 8);
        v14 = v11;
        do
        {
          v15 = *(v12 + 32);
          v16 = v15 >= v13;
          v17 = v15 < v13;
          if (v16)
          {
            v14 = v12;
          }

          v12 = *(v12 + 8 * v17);
        }

        while (v12);
        if (v14 == v11 || v13 < *(v14 + 8))
        {
LABEL_12:
          v14 = v11;
        }

        v18 = (v8[6] - v8[5]) >> 2;
        if (v18 >= 1)
        {
          for (i = 0; i < v18; ++i)
          {
            result = (*(a3 + 16))(a3, *(v8[5] + 4 * i), &v23, *(v14[5] + 8 * i));
            if (v23)
            {
              break;
            }
          }

          if (v23)
          {
            break;
          }
        }

        v20 = v8[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v8[2];
            v22 = *v21 == v8;
            v8 = v21;
          }

          while (!v22);
        }

        v8 = v21;
      }

      while (v21 != v7);
    }
  }

  return result;
}

uint64_t ___ZN2SI7Network17updateKPathScoresEdjU13block_pointerFvPbE_block_invoke(void *a1, int a2, _BYTE *a3, double a4)
{
  *(*(a1[5] + 8) + 24) = a2;
  if (a4 != 0.0 && !*(*(*(a1[6] + 8) + 40) + 4 * *(*(a1[5] + 8) + 24)))
  {
    *(*(a1[7] + 8) + 24) = 1.0 / a4 + *(*(a1[7] + 8) + 24);
  }

  v6 = a1[4];
  v7 = *(a1[8] + 8);
  result = (*(a1[4] + 16))();
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZN2SI7Network17updateKPathScoresEdjU13block_pointerFvPbE_block_invoke_2(uint64_t a1, int a2, _BYTE *a3, double a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a4 != 0.0 && !*(*(*(*(a1 + 48) + 8) + 40) + 4 * *(*(*(a1 + 40) + 8) + 24)))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1.0 / a4 + *(*(*(a1 + 56) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24) > *(a1 + 72))
    {
      *a3 = 1;
    }
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 64) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

double std::deque<double>::push_back(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    std::deque<double>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void *std::deque<double>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<double *>::emplace_back<double *&>(a1, &v10);
}

void sub_231B6DAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<double *>::emplace_back<double *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<double *>::emplace_front<double *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<double *>::emplace_back<double *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<double *>::emplace_front<double *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<double>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SI::Node>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SI::Network::updateKPathScores(double,unsigned int,void({block_pointer})(BOOL *))::{lambda(SI::Node,SI::Node)#1} &,std::__wrap_iter<SI::Node*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v8;
      *(v7 + 8) = v6;
    }
  }

  return result;
}

uint64_t std::deque<double>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<double *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<double *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__split_buffer<int>::emplace_back<int const&>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_231B6E3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(int a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void sub_231B6EE8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B6F210(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B704B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B707C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SKGGraph;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_231B71480(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B71598(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B716B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B717C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B718E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B719F8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B71FEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B720CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B721E4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B722FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B72414(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_231B72B98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_231B72F90(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B73C5C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B74134(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B7460C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B74AE4(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B74FBC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B75494(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B7596C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B75D98(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B76270(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B76748(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B76C20(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B770F8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B775D0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_231B79094(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_231B7A314(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_231B7A958(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_231B7AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231B7B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231B7B4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231B7F530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_231B807C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_231B82A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 168), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_231B83ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id configureKeyphraseDescriptor(void *a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [SKDPipelineSetDescription alloc];
  v3 = [v1 versionForPipeline:@"Keyphrase"];

  v4 = [(SKDPipelineSetDescription *)v2 initWithName:@"Keyphrase" version:v3];
  [(SKDPipelineSetDescription *)v4 setExcludedBundles:&unk_2846E8070];
  v5 = *MEMORY[0x277CC2DD0];
  v13[0] = *MEMORY[0x277CC31A0];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [(SKDPipelineSetDescription *)v4 setRequiredAttributes:v6];

  v7 = *MEMORY[0x277CC2AD8];
  v12[0] = *MEMORY[0x277CC2A90];
  v12[1] = v7;
  v12[2] = @"kMDItemKeyphraseLabels";
  v12[3] = @"kMDItemKeyphraseConfidences";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [(SKDPipelineSetDescription *)v4 setProcessedAttributes:v8];

  [(SKDPipelineSetDescription *)v4 setEnabled:1];
  v9 = [SKDPipelineDescriptor descriptorFromSetDescription:v4 processorNames:&unk_2846E8088];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id configureMockDescriptor(uint64_t a1, int a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = [[SKDPipelineSetDescription alloc] initWithName:@"MockTest" version:&unk_2846E7998];
  [(SKDPipelineSetDescription *)v3 setExcludedBundles:&unk_2846E80A0];
  v4 = *MEMORY[0x277CC31A0];
  v11[0] = *MEMORY[0x277CC31F0];
  v11[1] = v4;
  v5 = *MEMORY[0x277CC3118];
  v11[2] = *MEMORY[0x277CC2760];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [(SKDPipelineSetDescription *)v3 setRequiredAttributes:v6];

  [(SKDPipelineSetDescription *)v3 setEnabled:1];
  if (a2)
  {
    v7 = &unk_2846E80B8;
  }

  else
  {
    v7 = &unk_2846E80D0;
  }

  v8 = [SKDPipelineDescriptor descriptorFromSetDescription:v3 processorNames:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id getSystemDefinedDescriptors(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([v1 pipelineEnabled] & 1) != 0 || objc_msgSend(v1, "pipelineKeyphrasesEnabled"))
  {
    v3 = configureKeyphraseDescriptor(v1);
    [v2 addObject:v3];
  }

  v4 = [v1 pipelineDebugEnabled];
  if (v4)
  {
    v5 = configureMockDescriptor(v4, 1);
    [v2 addObject:v5];
  }

  return v2;
}

void __getAnalyticsAliases_block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"pipeline";
  v3[1] = @"bundleID";
  v4[0] = @"pipeline";
  v4[1] = @"bundleID";
  v3[2] = @"protectionClass";
  v3[3] = @"textContentLanguage";
  v4[2] = @"protectionClass";
  v4[3] = @"language";
  v3[4] = @"textContentLength";
  v4[4] = @"textSize";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = getAnalyticsAliases_sAnalyticsAliases;
  getAnalyticsAliases_sAnalyticsAliases = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __getAnalyticsKeys_block_invoke()
{
  v4[14] = *MEMORY[0x277D85DE8];
  v3[0] = @"event";
  objc_opt_class();
  v4[0] = objc_opt_class();
  v3[1] = @"domain";
  objc_opt_class();
  v4[1] = objc_opt_class();
  v3[2] = @"bundleID";
  objc_opt_class();
  v4[2] = objc_opt_class();
  v3[3] = @"protectionClass";
  objc_opt_class();
  v4[3] = objc_opt_class();
  v3[4] = @"pipeline";
  objc_opt_class();
  v4[4] = objc_opt_class();
  v3[5] = @"textSize";
  objc_opt_class();
  v4[5] = objc_opt_class();
  v3[6] = @"language";
  objc_opt_class();
  v4[6] = objc_opt_class();
  v3[7] = @"batchCount";
  objc_opt_class();
  v4[7] = objc_opt_class();
  v3[8] = @"processedCount";
  objc_opt_class();
  v4[8] = objc_opt_class();
  v3[9] = @"ignoredCount";
  objc_opt_class();
  v4[9] = objc_opt_class();
  v3[10] = @"erroredCount";
  objc_opt_class();
  v4[10] = objc_opt_class();
  v3[11] = @"duration";
  objc_opt_class();
  v4[11] = objc_opt_class();
  v3[12] = @"errorDomain";
  objc_opt_class();
  v4[12] = objc_opt_class();
  v3[13] = @"errorCode";
  objc_opt_class();
  v4[13] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:14];
  v1 = getAnalyticsKeys_sAnalyticsKeys;
  getAnalyticsKeys_sAnalyticsKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

__CFString *messageForEventType(unsigned int a1)
{
  if (a1 <= 7)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return messageForEventType_sEventTypeMap[v1];
}

__CFString *messageForEventStatus(unsigned int a1)
{
  if (a1 <= 4)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return messageForEventStatus_sEventStatusMap[v1];
}

void sub_231B8DCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __enumerateKeyphraseInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, _BYTE *a7)
{
  v13 = objc_autoreleasePoolPush();
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (*(a1 + 40))
  {
    v14 = *(*(a1 + 72) + 8);
    if (*(v14 + 32) != -1)
    {
      if (!a6)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    if (a6)
    {
LABEL_6:
      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      (*(*(a1 + 40) + 16))();
      *(*(*(a1 + 72) + 8) + 32) = xmmword_231C220E0;
    }
  }

LABEL_7:
  if (*(a1 + 48) && (v34[3] & 1) == 0 && a4[5])
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(a4[4] + 8 * v19);
      v21 = [MEMORY[0x277CCACA8] stringWithCharacters:a4[2] + 2 * *(a4[3] + v18) length:*(a4[3] + v18 + 8)];
      (*(*(a1 + 48) + 16))();

      ++v19;
      v18 += 16;
    }

    while (v19 < a4[5]);
  }

  if (*(a1 + 56) && (v34[3] & 1) == 0)
  {
    v22 = *(a1 + 88);
    v23 = *(a1 + 32);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __enumerateKeyphraseInfo_block_invoke_2;
    v25[3] = &unk_27893E388;
    v32 = *(a1 + 96);
    v31 = a4;
    v26 = v23;
    v27 = *(a1 + 56);
    v29 = &v33;
    v30 = *(a1 + 80);
    v28 = *(a1 + 64);
    *(*(*(a1 + 80) + 8) + 24) = MEMORY[0x2383771F0](v22, v26, a4, v25);
  }

  v24 = *(*(a1 + 80) + 8);
  if (!*(v24 + 24) || (v34[3] & 1) != 0)
  {
    goto LABEL_19;
  }

  if ((*(*(a1 + 64) + 16))())
  {
    v24 = *(*(a1 + 80) + 8);
LABEL_19:
    *(v24 + 24) = 0;
    *a7 = 1;
  }

  _Block_object_dispose(&v33, 8);
  objc_autoreleasePoolPop(v13);
}