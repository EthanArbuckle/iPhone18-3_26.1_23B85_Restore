AriOsa *AriSdk::TlvArray<IBITdsCellInfoT,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 2)) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 2), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C97F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBITdsNeighborCellInfoT,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x101uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C9A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINetCdma1xCellInfo,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C9C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINetCdmaEvdoCellInfo,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2)) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C9EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICdma1xNeighborCellInfo,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x101uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CA0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICdmaEvdoNeighborCellInfo,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 1) < 0x21)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 1);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 1), 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CA324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteCellInfoV1T,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 2) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 2), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CA570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteNeighborCellInfoV1T,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 2) < 0x21)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 2), 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CA7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteCellInfoR15,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 2) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x8E38E38E38E38E39 * ((*(a2 + 1) - *a2) >> 2), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CAA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINrCellInfoT,2ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2)) < 3)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2), 2);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CAC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINrNeighborCellInfoT,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 0x21)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CAEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteCellInfoR15_V2,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2)) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CB0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteNeighborCellInfoV2T,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 0x21)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CB338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINrCellInfoT_V2,2ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 2) < 3)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 2), 2);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CB584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINrNeighborCellInfoT_V2,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x401uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 5;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 5, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CB7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINrCellInfoT_V3,2ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xF0F0F0F0F0F0F0F1 * ((*(a2 + 1) - *a2) >> 2) < 3)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 1) - *a2) >> 2), 2);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CB9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINrCellInfoT_V4,2ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1) - *a2) >> 2) < 3)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1) - *a2) >> 2), 2);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961CBC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK::ARI_IBINetGetCellInfoIndCbV1_SDK(AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629407744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629407744, 0);
}

void AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK::ARI_IBINetGetCellInfoIndCbV1_SDK(AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK::~ARI_IBINetGetCellInfoIndCbV1_SDK(AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK *this)
{
  *this = &unk_2A1D3A5D0;
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  v3 = *(this + 48);
  if (v3)
  {
    *(this + 49) = v3;
    operator delete(v3);
  }

  v4 = *(this + 45);
  if (v4)
  {
    *(this + 46) = v4;
    operator delete(v4);
  }

  v5 = *(this + 42);
  if (v5)
  {
    *(this + 43) = v5;
    operator delete(v5);
  }

  v6 = *(this + 41);
  *(this + 41) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 38);
  if (v7)
  {
    *(this + 39) = v7;
    operator delete(v7);
  }

  v8 = *(this + 37);
  *(this + 37) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 36);
  *(this + 36) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4043B73165);
  }

  v10 = *(this + 35);
  *(this + 35) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C403DD497D7);
  }

  v11 = *(this + 32);
  if (v11)
  {
    *(this + 33) = v11;
    operator delete(v11);
  }

  v12 = *(this + 31);
  *(this + 31) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 30);
  *(this + 30) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4053384F6BLL);
  }

  v14 = *(this + 29);
  *(this + 29) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 26);
  if (v15)
  {
    *(this + 27) = v15;
    operator delete(v15);
  }

  v16 = *(this + 25);
  *(this + 25) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 22);
  if (v17)
  {
    *(this + 23) = v17;
    operator delete(v17);
  }

  v18 = *(this + 21);
  *(this + 21) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 18);
  if (v19)
  {
    *(this + 19) = v19;
    operator delete(v19);
  }

  v20 = *(this + 17);
  *(this + 17) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 16);
  *(this + 16) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4011F4EB07);
  }

  v22 = *(this + 15);
  *(this + 15) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 14);
  *(this + 14) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C400618A0D7);
  }

  v24 = *(this + 13);
  *(this + 13) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 12);
  *(this + 12) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4053384F6BLL);
  }

  v26 = *(this + 11);
  *(this + 11) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 10);
  *(this + 10) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 9);
  *(this + 9) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4077774924);
  }

  v29 = *(this + 8);
  *(this + 8) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK::~ARI_IBINetGetCellInfoIndCbV1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK::pack(AriSdk::ARI_IBINetGetCellInfoIndCbV1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x1CuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x18uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 0x20uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (v16 = *(this + 19), v15 == v16) || (result = AriMsg::pack(*(this + 6), 11, v15, v16 - v15, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 4uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (v19 = *(this + 23), v18 == v19) || (result = AriMsg::pack(*(this + 6), 13, v18, v19 - v18, 0), !result))
                          {
                            v20 = *(this + 25);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 14, v20, 4uLL, 0), !result))
                            {
                              v21 = *(this + 26);
                              if (!v21 || (v22 = *(this + 27), v21 == v22) || (result = AriMsg::pack(*(this + 6), 15, v21, v22 - v21, 0), !result))
                              {
                                v23 = *(this + 29);
                                if (!v23 || (result = AriMsg::pack(*(this + 6), 16, v23, 4uLL, 0), !result))
                                {
                                  v24 = *(this + 30);
                                  if (!v24 || (result = AriMsg::pack(*(this + 6), 17, v24, 0x1CuLL, 0), !result))
                                  {
                                    v25 = *(this + 31);
                                    if (!v25 || (result = AriMsg::pack(*(this + 6), 18, v25, 4uLL, 0), !result))
                                    {
                                      v26 = *(this + 32);
                                      if (!v26 || (v27 = *(this + 33), v26 == v27) || (result = AriMsg::pack(*(this + 6), 19, v26, v27 - v26, 0), !result))
                                      {
                                        v28 = *(this + 35);
                                        if (!v28 || (result = AriMsg::pack(*(this + 6), 20, v28, 0x30uLL, 0), !result))
                                        {
                                          v29 = *(this + 36);
                                          if (!v29 || (result = AriMsg::pack(*(this + 6), 21, v29, 0x34uLL, 0), !result))
                                          {
                                            v30 = *(this + 37);
                                            if (!v30 || (result = AriMsg::pack(*(this + 6), 22, v30, 4uLL, 0), !result))
                                            {
                                              v31 = *(this + 38);
                                              if (!v31 || (v32 = *(this + 39), v31 == v32) || (result = AriMsg::pack(*(this + 6), 23, v31, v32 - v31, 0), !result))
                                              {
                                                v33 = *(this + 41);
                                                if (!v33 || (result = AriMsg::pack(*(this + 6), 24, v33, 4uLL, 0), !result))
                                                {
                                                  v34 = *(this + 42);
                                                  if (!v34 || (v35 = *(this + 43), v34 == v35) || (result = AriMsg::pack(*(this + 6), 25, v34, v35 - v34, 0), !result))
                                                  {
                                                    v36 = *(this + 45);
                                                    if (!v36 || (v37 = *(this + 46), v36 == v37) || (result = AriMsg::pack(*(this + 6), 26, v36, v37 - v36, 0), !result))
                                                    {
                                                      v38 = *(this + 48);
                                                      if (!v38 || (v39 = *(this + 49), v38 == v39) || (result = AriMsg::pack(*(this + 6), 27, v38, v39 - v38, 0), !result))
                                                      {
                                                        v40 = *(this + 51);
                                                        if (!v40 || (v41 = *(this + 52), v40 == v41) || (result = AriMsg::pack(*(this + 6), 28, v40, v41 - v40, 0), !result))
                                                        {
                                                          result = 0;
                                                          *a2 = *(this + 6);
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
    }
  }

  return result;
}

void sub_2961CD4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBINetGetCellInfoReq_SDK::ARI_IBINetGetCellInfoReq_SDK(AriSdk::ARI_IBINetGetCellInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 612597760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 612597760, 0);
}

void AriSdk::ARI_IBINetGetCellInfoReq_SDK::ARI_IBINetGetCellInfoReq_SDK(AriSdk::ARI_IBINetGetCellInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCellInfoReq_SDK::~ARI_IBINetGetCellInfoReq_SDK(AriSdk::ARI_IBINetGetCellInfoReq_SDK *this)
{
  *this = &unk_2A1D3A608;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCellInfoReq_SDK::~ARI_IBINetGetCellInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCellInfoReq_SDK::pack(AriSdk::ARI_IBINetGetCellInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetGetCellInfoRespCb_SDK::ARI_IBINetGetCellInfoRespCb_SDK(AriSdk::ARI_IBINetGetCellInfoRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 620986368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 620986368, 0);
}

void AriSdk::ARI_IBINetGetCellInfoRespCb_SDK::ARI_IBINetGetCellInfoRespCb_SDK(AriSdk::ARI_IBINetGetCellInfoRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCellInfoRespCb_SDK::~ARI_IBINetGetCellInfoRespCb_SDK(AriSdk::ARI_IBINetGetCellInfoRespCb_SDK *this)
{
  *this = &unk_2A1D3A640;
  v2 = *(this + 106);
  if (v2)
  {
    *(this + 107) = v2;
    operator delete(v2);
  }

  v3 = *(this + 103);
  if (v3)
  {
    *(this + 104) = v3;
    operator delete(v3);
  }

  v4 = *(this + 100);
  if (v4)
  {
    *(this + 101) = v4;
    operator delete(v4);
  }

  v5 = *(this + 97);
  if (v5)
  {
    *(this + 98) = v5;
    operator delete(v5);
  }

  v6 = *(this + 94);
  if (v6)
  {
    *(this + 95) = v6;
    operator delete(v6);
  }

  v7 = *(this + 91);
  if (v7)
  {
    *(this + 92) = v7;
    operator delete(v7);
  }

  v8 = *(this + 88);
  if (v8)
  {
    *(this + 89) = v8;
    operator delete(v8);
  }

  v9 = *(this + 87);
  *(this + 87) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 84);
  if (v10)
  {
    *(this + 85) = v10;
    operator delete(v10);
  }

  v11 = *(this + 83);
  *(this + 83) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 80);
  if (v12)
  {
    *(this + 81) = v12;
    operator delete(v12);
  }

  v13 = *(this + 77);
  if (v13)
  {
    *(this + 78) = v13;
    operator delete(v13);
  }

  v14 = *(this + 74);
  if (v14)
  {
    *(this + 75) = v14;
    operator delete(v14);
  }

  v15 = *(this + 71);
  if (v15)
  {
    *(this + 72) = v15;
    operator delete(v15);
  }

  v16 = *(this + 70);
  *(this + 70) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 69);
  *(this + 69) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 66);
  if (v18)
  {
    *(this + 67) = v18;
    operator delete(v18);
  }

  v19 = *(this + 65);
  *(this + 65) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 64);
  *(this + 64) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4077774924);
  }

  v21 = *(this + 61);
  if (v21)
  {
    *(this + 62) = v21;
    operator delete(v21);
  }

  v22 = *(this + 60);
  *(this + 60) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 59);
  *(this + 59) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4077774924);
  }

  v24 = *(this + 56);
  if (v24)
  {
    *(this + 57) = v24;
    operator delete(v24);
  }

  v25 = *(this + 55);
  *(this + 55) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 54);
  *(this + 54) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4077774924);
  }

  v27 = *(this + 51);
  if (v27)
  {
    *(this + 52) = v27;
    operator delete(v27);
  }

  v28 = *(this + 50);
  *(this + 50) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 49);
  *(this + 49) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4077774924);
  }

  v30 = *(this + 46);
  if (v30)
  {
    *(this + 47) = v30;
    operator delete(v30);
  }

  v31 = *(this + 45);
  *(this + 45) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4052888210);
  }

  v32 = *(this + 44);
  *(this + 44) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4077774924);
  }

  v33 = *(this + 41);
  if (v33)
  {
    *(this + 42) = v33;
    operator delete(v33);
  }

  v34 = *(this + 40);
  *(this + 40) = 0;
  if (v34)
  {
    MEMORY[0x29C257E70](v34, 0x1000C4052888210);
  }

  v35 = *(this + 39);
  *(this + 39) = 0;
  if (v35)
  {
    MEMORY[0x29C257E70](v35, 0x1000C4077774924);
  }

  v36 = *(this + 36);
  if (v36)
  {
    *(this + 37) = v36;
    operator delete(v36);
  }

  v37 = *(this + 35);
  *(this + 35) = 0;
  if (v37)
  {
    MEMORY[0x29C257E70](v37, 0x1000C4052888210);
  }

  v38 = *(this + 34);
  *(this + 34) = 0;
  if (v38)
  {
    MEMORY[0x29C257E70](v38, 0x1000C4077774924);
  }

  v39 = *(this + 31);
  if (v39)
  {
    *(this + 32) = v39;
    operator delete(v39);
  }

  v40 = *(this + 30);
  *(this + 30) = 0;
  if (v40)
  {
    MEMORY[0x29C257E70](v40, 0x1000C4052888210);
  }

  v41 = *(this + 29);
  *(this + 29) = 0;
  if (v41)
  {
    MEMORY[0x29C257E70](v41, 0x1000C4077774924);
  }

  v42 = *(this + 26);
  if (v42)
  {
    *(this + 27) = v42;
    operator delete(v42);
  }

  v43 = *(this + 25);
  *(this + 25) = 0;
  if (v43)
  {
    MEMORY[0x29C257E70](v43, 0x1000C4052888210);
  }

  v44 = *(this + 24);
  *(this + 24) = 0;
  if (v44)
  {
    MEMORY[0x29C257E70](v44, 0x1000C4077774924);
  }

  v45 = *(this + 21);
  if (v45)
  {
    *(this + 22) = v45;
    operator delete(v45);
  }

  v46 = *(this + 20);
  *(this + 20) = 0;
  if (v46)
  {
    MEMORY[0x29C257E70](v46, 0x1000C4052888210);
  }

  v47 = *(this + 19);
  *(this + 19) = 0;
  if (v47)
  {
    MEMORY[0x29C257E70](v47, 0x1000C4077774924);
  }

  v48 = *(this + 16);
  if (v48)
  {
    *(this + 17) = v48;
    operator delete(v48);
  }

  v49 = *(this + 15);
  *(this + 15) = 0;
  if (v49)
  {
    MEMORY[0x29C257E70](v49, 0x1000C4052888210);
  }

  v50 = *(this + 14);
  *(this + 14) = 0;
  if (v50)
  {
    MEMORY[0x29C257E70](v50, 0x1000C4077774924);
  }

  v51 = *(this + 13);
  *(this + 13) = 0;
  if (v51)
  {
    MEMORY[0x29C257E70](v51, 0x1000C4052888210);
  }

  v52 = *(this + 12);
  *(this + 12) = 0;
  if (v52)
  {
    MEMORY[0x29C257E70](v52, 0x1000C4077774924);
  }

  v53 = *(this + 11);
  *(this + 11) = 0;
  if (v53)
  {
    MEMORY[0x29C257E70](v53, 0x1000C4077774924);
  }

  v54 = *(this + 10);
  *(this + 10) = 0;
  if (v54)
  {
    MEMORY[0x29C257E70](v54, 0x1000C4077774924);
  }

  v55 = *(this + 9);
  *(this + 9) = 0;
  if (v55)
  {
    MEMORY[0x29C257E70](v55, 0x1000C4000313F17);
  }

  v56 = *(this + 8);
  *(this + 8) = 0;
  if (v56)
  {
    MEMORY[0x29C257E70](v56, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCellInfoRespCb_SDK::~ARI_IBINetGetCellInfoRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCellInfoRespCb_SDK::pack(AriSdk::ARI_IBINetGetCellInfoRespCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (v14 = *(this + 17), v13 == v14) || (result = AriMsg::pack(*(this + 6), 10, v13, v14 - v13, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 1uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 4uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (v18 = *(this + 22), v17 == v18) || (result = AriMsg::pack(*(this + 6), 13, v17, v18 - v17, 0), !result))
                        {
                          v19 = *(this + 24);
                          if (!v19 || (result = AriMsg::pack(*(this + 6), 14, v19, 1uLL, 0), !result))
                          {
                            v20 = *(this + 25);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 15, v20, 4uLL, 0), !result))
                            {
                              v21 = *(this + 26);
                              if (!v21 || (v22 = *(this + 27), v21 == v22) || (result = AriMsg::pack(*(this + 6), 16, v21, v22 - v21, 0), !result))
                              {
                                v23 = *(this + 29);
                                if (!v23 || (result = AriMsg::pack(*(this + 6), 17, v23, 1uLL, 0), !result))
                                {
                                  v24 = *(this + 30);
                                  if (!v24 || (result = AriMsg::pack(*(this + 6), 18, v24, 4uLL, 0), !result))
                                  {
                                    v25 = *(this + 31);
                                    if (!v25 || (v26 = *(this + 32), v25 == v26) || (result = AriMsg::pack(*(this + 6), 19, v25, v26 - v25, 0), !result))
                                    {
                                      v27 = *(this + 34);
                                      if (!v27 || (result = AriMsg::pack(*(this + 6), 20, v27, 1uLL, 0), !result))
                                      {
                                        v28 = *(this + 35);
                                        if (!v28 || (result = AriMsg::pack(*(this + 6), 21, v28, 4uLL, 0), !result))
                                        {
                                          v29 = *(this + 36);
                                          if (!v29 || (v30 = *(this + 37), v29 == v30) || (result = AriMsg::pack(*(this + 6), 22, v29, v30 - v29, 0), !result))
                                          {
                                            v31 = *(this + 39);
                                            if (!v31 || (result = AriMsg::pack(*(this + 6), 23, v31, 1uLL, 0), !result))
                                            {
                                              v32 = *(this + 40);
                                              if (!v32 || (result = AriMsg::pack(*(this + 6), 24, v32, 4uLL, 0), !result))
                                              {
                                                v33 = *(this + 41);
                                                if (!v33 || (v34 = *(this + 42), v33 == v34) || (result = AriMsg::pack(*(this + 6), 25, v33, v34 - v33, 0), !result))
                                                {
                                                  v35 = *(this + 44);
                                                  if (!v35 || (result = AriMsg::pack(*(this + 6), 26, v35, 1uLL, 0), !result))
                                                  {
                                                    v36 = *(this + 45);
                                                    if (!v36 || (result = AriMsg::pack(*(this + 6), 27, v36, 4uLL, 0), !result))
                                                    {
                                                      v37 = *(this + 46);
                                                      if (!v37 || (v38 = *(this + 47), v37 == v38) || (result = AriMsg::pack(*(this + 6), 28, v37, v38 - v37, 0), !result))
                                                      {
                                                        v39 = *(this + 49);
                                                        if (!v39 || (result = AriMsg::pack(*(this + 6), 29, v39, 1uLL, 0), !result))
                                                        {
                                                          v40 = *(this + 50);
                                                          if (!v40 || (result = AriMsg::pack(*(this + 6), 30, v40, 4uLL, 0), !result))
                                                          {
                                                            v41 = *(this + 51);
                                                            if (!v41 || (v42 = *(this + 52), v41 == v42) || (result = AriMsg::pack(*(this + 6), 31, v41, v42 - v41, 0), !result))
                                                            {
                                                              v43 = *(this + 54);
                                                              if (!v43 || (result = AriMsg::pack(*(this + 6), 32, v43, 1uLL, 0), !result))
                                                              {
                                                                v44 = *(this + 55);
                                                                if (!v44 || (result = AriMsg::pack(*(this + 6), 33, v44, 4uLL, 0), !result))
                                                                {
                                                                  v45 = *(this + 56);
                                                                  if (!v45 || (v46 = *(this + 57), v45 == v46) || (result = AriMsg::pack(*(this + 6), 34, v45, v46 - v45, 0), !result))
                                                                  {
                                                                    v47 = *(this + 59);
                                                                    if (!v47 || (result = AriMsg::pack(*(this + 6), 35, v47, 1uLL, 0), !result))
                                                                    {
                                                                      v48 = *(this + 60);
                                                                      if (!v48 || (result = AriMsg::pack(*(this + 6), 36, v48, 4uLL, 0), !result))
                                                                      {
                                                                        v49 = *(this + 61);
                                                                        if (!v49 || (v50 = *(this + 62), v49 == v50) || (result = AriMsg::pack(*(this + 6), 37, v49, v50 - v49, 0), !result))
                                                                        {
                                                                          v51 = *(this + 64);
                                                                          if (!v51 || (result = AriMsg::pack(*(this + 6), 38, v51, 1uLL, 0), !result))
                                                                          {
                                                                            v52 = *(this + 65);
                                                                            if (!v52 || (result = AriMsg::pack(*(this + 6), 39, v52, 4uLL, 0), !result))
                                                                            {
                                                                              v53 = *(this + 66);
                                                                              if (!v53 || (v54 = *(this + 67), v53 == v54) || (result = AriMsg::pack(*(this + 6), 40, v53, v54 - v53, 0), !result))
                                                                              {
                                                                                v55 = *(this + 69);
                                                                                if (!v55 || (result = AriMsg::pack(*(this + 6), 41, v55, 1uLL, 0), !result))
                                                                                {
                                                                                  v56 = *(this + 70);
                                                                                  if (!v56 || (result = AriMsg::pack(*(this + 6), 48, v56, 4uLL, 0), !result))
                                                                                  {
                                                                                    v57 = *(this + 71);
                                                                                    if (!v57 || (v58 = *(this + 72), v57 == v58) || (result = AriMsg::pack(*(this + 6), 49, v57, v58 - v57, 0), !result))
                                                                                    {
                                                                                      v59 = *(this + 74);
                                                                                      if (!v59 || (v60 = *(this + 75), v59 == v60) || (result = AriMsg::pack(*(this + 6), 50, v59, v60 - v59, 0), !result))
                                                                                      {
                                                                                        v61 = *(this + 77);
                                                                                        if (!v61 || (v62 = *(this + 78), v61 == v62) || (result = AriMsg::pack(*(this + 6), 51, v61, v62 - v61, 0), !result))
                                                                                        {
                                                                                          v63 = *(this + 80);
                                                                                          if (!v63 || (v64 = *(this + 81), v63 == v64) || (result = AriMsg::pack(*(this + 6), 52, v63, v64 - v63, 0), !result))
                                                                                          {
                                                                                            v65 = *(this + 83);
                                                                                            if (!v65 || (result = AriMsg::pack(*(this + 6), 53, v65, 4uLL, 0), !result))
                                                                                            {
                                                                                              v66 = *(this + 84);
                                                                                              if (!v66 || (v67 = *(this + 85), v66 == v67) || (result = AriMsg::pack(*(this + 6), 54, v66, v67 - v66, 0), !result))
                                                                                              {
                                                                                                v68 = *(this + 87);
                                                                                                if (!v68 || (result = AriMsg::pack(*(this + 6), 55, v68, 4uLL, 0), !result))
                                                                                                {
                                                                                                  v69 = *(this + 88);
                                                                                                  if (!v69 || (v70 = *(this + 89), v69 == v70) || (result = AriMsg::pack(*(this + 6), 56, v69, v70 - v69, 0), !result))
                                                                                                  {
                                                                                                    v71 = *(this + 91);
                                                                                                    if (!v71 || (v72 = *(this + 92), v71 == v72) || (result = AriMsg::pack(*(this + 6), 57, v71, v72 - v71, 0), !result))
                                                                                                    {
                                                                                                      v73 = *(this + 94);
                                                                                                      if (!v73 || (v74 = *(this + 95), v73 == v74) || (result = AriMsg::pack(*(this + 6), 58, v73, v74 - v73, 0), !result))
                                                                                                      {
                                                                                                        v75 = *(this + 97);
                                                                                                        if (!v75 || (v76 = *(this + 98), v75 == v76) || (result = AriMsg::pack(*(this + 6), 59, v75, v76 - v75, 0), !result))
                                                                                                        {
                                                                                                          v77 = *(this + 100);
                                                                                                          if (!v77 || (v78 = *(this + 101), v77 == v78) || (result = AriMsg::pack(*(this + 6), 60, v77, v78 - v77, 0), !result))
                                                                                                          {
                                                                                                            v79 = *(this + 103);
                                                                                                            if (!v79 || (v80 = *(this + 104), v79 == v80) || (result = AriMsg::pack(*(this + 6), 61, v79, v80 - v79, 0), !result))
                                                                                                            {
                                                                                                              v81 = *(this + 106);
                                                                                                              if (!v81 || (v82 = *(this + 107), v81 == v82) || (result = AriMsg::pack(*(this + 6), 62, v81, v82 - v81, 0), !result))
                                                                                                              {
                                                                                                                result = 0;
                                                                                                                *a2 = *(this + 6);
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
      }
    }
  }

  return result;
}

void sub_2961D0898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBINetGetCellInfoReqV1_SDK::ARI_IBINetGetCellInfoReqV1_SDK(AriSdk::ARI_IBINetGetCellInfoReqV1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 612663296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 612663296, 0);
}

void AriSdk::ARI_IBINetGetCellInfoReqV1_SDK::ARI_IBINetGetCellInfoReqV1_SDK(AriSdk::ARI_IBINetGetCellInfoReqV1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCellInfoReqV1_SDK::~ARI_IBINetGetCellInfoReqV1_SDK(AriSdk::ARI_IBINetGetCellInfoReqV1_SDK *this)
{
  *this = &unk_2A1D3A678;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCellInfoReqV1_SDK::~ARI_IBINetGetCellInfoReqV1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCellInfoReqV1_SDK::pack(AriSdk::ARI_IBINetGetCellInfoReqV1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK::ARI_IBINetGetCellInfoRespCbV1_SDK(AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621051904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621051904, 0);
}

void AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK::ARI_IBINetGetCellInfoRespCbV1_SDK(AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK::~ARI_IBINetGetCellInfoRespCbV1_SDK(AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK *this)
{
  *this = &unk_2A1D3A6B0;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    *(this + 50) = v3;
    operator delete(v3);
  }

  v4 = *(this + 46);
  if (v4)
  {
    *(this + 47) = v4;
    operator delete(v4);
  }

  v5 = *(this + 43);
  if (v5)
  {
    *(this + 44) = v5;
    operator delete(v5);
  }

  v6 = *(this + 42);
  *(this + 42) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 39);
  if (v7)
  {
    *(this + 40) = v7;
    operator delete(v7);
  }

  v8 = *(this + 38);
  *(this + 38) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 37);
  *(this + 37) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4043B73165);
  }

  v10 = *(this + 36);
  *(this + 36) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C403DD497D7);
  }

  v11 = *(this + 33);
  if (v11)
  {
    *(this + 34) = v11;
    operator delete(v11);
  }

  v12 = *(this + 32);
  *(this + 32) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 31);
  *(this + 31) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4053384F6BLL);
  }

  v14 = *(this + 30);
  *(this + 30) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 27);
  if (v15)
  {
    *(this + 28) = v15;
    operator delete(v15);
  }

  v16 = *(this + 26);
  *(this + 26) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 23);
  if (v17)
  {
    *(this + 24) = v17;
    operator delete(v17);
  }

  v18 = *(this + 22);
  *(this + 22) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 19);
  if (v19)
  {
    *(this + 20) = v19;
    operator delete(v19);
  }

  v20 = *(this + 18);
  *(this + 18) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 17);
  *(this + 17) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4011F4EB07);
  }

  v22 = *(this + 16);
  *(this + 16) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 15);
  *(this + 15) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C400618A0D7);
  }

  v24 = *(this + 14);
  *(this + 14) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 13);
  *(this + 13) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4053384F6BLL);
  }

  v26 = *(this + 12);
  *(this + 12) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 11);
  *(this + 11) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 10);
  *(this + 10) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4077774924);
  }

  v29 = *(this + 9);
  *(this + 9) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4000313F17);
  }

  v30 = *(this + 8);
  *(this + 8) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK::~ARI_IBINetGetCellInfoRespCbV1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK::pack(AriSdk::ARI_IBINetGetCellInfoRespCbV1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x1CuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x18uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 0x20uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (v17 = *(this + 20), v16 == v17) || (result = AriMsg::pack(*(this + 6), 13, v16, v17 - v16, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 14, v18, 4uLL, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (v20 = *(this + 24), v19 == v20) || (result = AriMsg::pack(*(this + 6), 15, v19, v20 - v19, 0), !result))
                            {
                              v21 = *(this + 26);
                              if (!v21 || (result = AriMsg::pack(*(this + 6), 16, v21, 4uLL, 0), !result))
                              {
                                v22 = *(this + 27);
                                if (!v22 || (v23 = *(this + 28), v22 == v23) || (result = AriMsg::pack(*(this + 6), 17, v22, v23 - v22, 0), !result))
                                {
                                  v24 = *(this + 30);
                                  if (!v24 || (result = AriMsg::pack(*(this + 6), 18, v24, 4uLL, 0), !result))
                                  {
                                    v25 = *(this + 31);
                                    if (!v25 || (result = AriMsg::pack(*(this + 6), 19, v25, 0x1CuLL, 0), !result))
                                    {
                                      v26 = *(this + 32);
                                      if (!v26 || (result = AriMsg::pack(*(this + 6), 20, v26, 4uLL, 0), !result))
                                      {
                                        v27 = *(this + 33);
                                        if (!v27 || (v28 = *(this + 34), v27 == v28) || (result = AriMsg::pack(*(this + 6), 21, v27, v28 - v27, 0), !result))
                                        {
                                          v29 = *(this + 36);
                                          if (!v29 || (result = AriMsg::pack(*(this + 6), 22, v29, 0x30uLL, 0), !result))
                                          {
                                            v30 = *(this + 37);
                                            if (!v30 || (result = AriMsg::pack(*(this + 6), 23, v30, 0x34uLL, 0), !result))
                                            {
                                              v31 = *(this + 38);
                                              if (!v31 || (result = AriMsg::pack(*(this + 6), 24, v31, 4uLL, 0), !result))
                                              {
                                                v32 = *(this + 39);
                                                if (!v32 || (v33 = *(this + 40), v32 == v33) || (result = AriMsg::pack(*(this + 6), 25, v32, v33 - v32, 0), !result))
                                                {
                                                  v34 = *(this + 42);
                                                  if (!v34 || (result = AriMsg::pack(*(this + 6), 26, v34, 4uLL, 0), !result))
                                                  {
                                                    v35 = *(this + 43);
                                                    if (!v35 || (v36 = *(this + 44), v35 == v36) || (result = AriMsg::pack(*(this + 6), 27, v35, v36 - v35, 0), !result))
                                                    {
                                                      v37 = *(this + 46);
                                                      if (!v37 || (v38 = *(this + 47), v37 == v38) || (result = AriMsg::pack(*(this + 6), 28, v37, v38 - v37, 0), !result))
                                                      {
                                                        v39 = *(this + 49);
                                                        if (!v39 || (v40 = *(this + 50), v39 == v40) || (result = AriMsg::pack(*(this + 6), 29, v39, v40 - v39, 0), !result))
                                                        {
                                                          v41 = *(this + 52);
                                                          if (!v41 || (v42 = *(this + 53), v41 == v42) || (result = AriMsg::pack(*(this + 6), 30, v41, v42 - v41, 0), !result))
                                                          {
                                                            result = 0;
                                                            *a2 = *(this + 6);
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
      }
    }
  }

  return result;
}

void sub_2961D2814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK::ARI_IBINetGetCurrCellInfoReq_SDK(AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 612630528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 612630528, 0);
}

void AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK::ARI_IBINetGetCurrCellInfoReq_SDK(AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK::~ARI_IBINetGetCurrCellInfoReq_SDK(AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK *this)
{
  *this = &unk_2A1D3A6E8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK::~ARI_IBINetGetCurrCellInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK::pack(AriSdk::ARI_IBINetGetCurrCellInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK::ARI_IBINetGetCurrCellInfoRspCb_SDK(AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621019136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621019136, 0);
}

void AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK::ARI_IBINetGetCurrCellInfoRspCb_SDK(AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK::~ARI_IBINetGetCurrCellInfoRspCb_SDK(AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK *this)
{
  *this = &unk_2A1D3A720;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BD32EBF2);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40B2B1FC38);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4000313F17);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 10);
  *(this + 10) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40471BE06ALL);
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 8);
  *(this + 8) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK::~ARI_IBINetGetCurrCellInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK::pack(AriSdk::ARI_IBINetGetCurrCellInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x44uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 8uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x10uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 16, v13, 0x18uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 17, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 18, v15, 8uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 19, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 20, v17, 4uLL, 0), !result))
                          {
                            result = 0;
                            *a2 = *(this + 6);
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

  return result;
}

void AriSdk::ARI_IBINetGetEmergencyCellReq_SDK::ARI_IBINetGetEmergencyCellReq_SDK(AriSdk::ARI_IBINetGetEmergencyCellReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613515264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613515264, 0);
}

void AriSdk::ARI_IBINetGetEmergencyCellReq_SDK::ARI_IBINetGetEmergencyCellReq_SDK(AriSdk::ARI_IBINetGetEmergencyCellReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetEmergencyCellReq_SDK::~ARI_IBINetGetEmergencyCellReq_SDK(AriSdk::ARI_IBINetGetEmergencyCellReq_SDK *this)
{
  *this = &unk_2A1D3A758;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40D567C9E3);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetEmergencyCellReq_SDK::~ARI_IBINetGetEmergencyCellReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetEmergencyCellReq_SDK::pack(AriSdk::ARI_IBINetGetEmergencyCellReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x2CuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK::ARI_IBINetGetEmergencyCellRspCb_SDK(AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621903872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621903872, 0);
}

void AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK::ARI_IBINetGetEmergencyCellRspCb_SDK(AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK::~ARI_IBINetGetEmergencyCellRspCb_SDK(AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK *this)
{
  *this = &unk_2A1D3A790;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK::~ARI_IBINetGetEmergencyCellRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK::pack(AriSdk::ARI_IBINetGetEmergencyCellRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK::ARI_IBINetGetEmergencyCellIndCb_SDK(AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630292480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630292480, 0);
}

void AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK::ARI_IBINetGetEmergencyCellIndCb_SDK(AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK::~ARI_IBINetGetEmergencyCellIndCb_SDK(AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK *this)
{
  *this = &unk_2A1D3A7C8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK::~ARI_IBINetGetEmergencyCellIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK::pack(AriSdk::ARI_IBINetGetEmergencyCellIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK::ARI_IBINetNasProcFailedImsRejectIndCb_SDK(AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629702656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629702656, 0);
}

void AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK::ARI_IBINetNasProcFailedImsRejectIndCb_SDK(AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK::~ARI_IBINetNasProcFailedImsRejectIndCb_SDK(AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK *this)
{
  *this = &unk_2A1D3A800;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK::~ARI_IBINetNasProcFailedImsRejectIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK::pack(AriSdk::ARI_IBINetNasProcFailedImsRejectIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetRadioConnectionStateReq_SDK::ARI_IBINetRadioConnectionStateReq_SDK(AriSdk::ARI_IBINetRadioConnectionStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613711872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613711872, 0);
}

void AriSdk::ARI_IBINetRadioConnectionStateReq_SDK::ARI_IBINetRadioConnectionStateReq_SDK(AriSdk::ARI_IBINetRadioConnectionStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRadioConnectionStateReq_SDK::~ARI_IBINetRadioConnectionStateReq_SDK(AriSdk::ARI_IBINetRadioConnectionStateReq_SDK *this)
{
  *this = &unk_2A1D3A838;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRadioConnectionStateReq_SDK::~ARI_IBINetRadioConnectionStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRadioConnectionStateReq_SDK::pack(AriSdk::ARI_IBINetRadioConnectionStateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK::ARI_IBINetRadioConnectionStateRespCb_SDK(AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 622100480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 622100480, 0);
}

void AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK::ARI_IBINetRadioConnectionStateRespCb_SDK(AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK::~ARI_IBINetRadioConnectionStateRespCb_SDK(AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK *this)
{
  *this = &unk_2A1D3A870;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK::~ARI_IBINetRadioConnectionStateRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK::pack(AriSdk::ARI_IBINetRadioConnectionStateRespCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK::ARI_IBINetRadioConnectionStateIndCb_SDK(AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630489088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630489088, 0);
}

void AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK::ARI_IBINetRadioConnectionStateIndCb_SDK(AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK::~ARI_IBINetRadioConnectionStateIndCb_SDK(AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK *this)
{
  *this = &unk_2A1D3A8A8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK::~ARI_IBINetRadioConnectionStateIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK::pack(AriSdk::ARI_IBINetRadioConnectionStateIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetRadioSignalIndCb_SDK::ARI_IBINetRadioSignalIndCb_SDK(AriSdk::ARI_IBINetRadioSignalIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629276672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629276672, 0);
}

void AriSdk::ARI_IBINetRadioSignalIndCb_SDK::ARI_IBINetRadioSignalIndCb_SDK(AriSdk::ARI_IBINetRadioSignalIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRadioSignalIndCb_SDK::~ARI_IBINetRadioSignalIndCb_SDK(AriSdk::ARI_IBINetRadioSignalIndCb_SDK *this)
{
  *this = &unk_2A1D3A8E0;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B93A95EALL);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C403A177FC2);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C402750FA65);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40B7066DD3);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRadioSignalIndCb_SDK::~ARI_IBINetRadioSignalIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRadioSignalIndCb_SDK::pack(AriSdk::ARI_IBINetRadioSignalIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x34uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x48uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 0x34uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 0x408uLL, 0), !result))
                      {
                        result = 0;
                        *a2 = *(this + 6);
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

  return result;
}

void AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK::ARI_IBINetRrcConnectionRejectIndCb_SDK(AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630456320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630456320, 0);
}

void AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK::ARI_IBINetRrcConnectionRejectIndCb_SDK(AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK::~ARI_IBINetRrcConnectionRejectIndCb_SDK(AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK *this)
{
  *this = &unk_2A1D3A918;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK::~ARI_IBINetRrcConnectionRejectIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK::pack(AriSdk::ARI_IBINetRrcConnectionRejectIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetSetRadioSignalReporting_SDK::ARI_IBINetSetRadioSignalReporting_SDK(AriSdk::ARI_IBINetSetRadioSignalReporting_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 612433920, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 612433920, 1);
}

void AriSdk::ARI_IBINetSetRadioSignalReporting_SDK::ARI_IBINetSetRadioSignalReporting_SDK(AriSdk::ARI_IBINetSetRadioSignalReporting_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetRadioSignalReporting_SDK::~ARI_IBINetSetRadioSignalReporting_SDK(AriSdk::ARI_IBINetSetRadioSignalReporting_SDK *this)
{
  *this = &unk_2A1D3A950;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetSetRadioSignalReporting_SDK::~ARI_IBINetSetRadioSignalReporting_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetRadioSignalReporting_SDK::pack(AriSdk::ARI_IBINetSetRadioSignalReporting_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK::ARI_IBINetSetRadioSignalReportingConfiguration_SDK(AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 612401152, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 612401152, 1);
}

void AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK::ARI_IBINetSetRadioSignalReportingConfiguration_SDK(AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK::~ARI_IBINetSetRadioSignalReportingConfiguration_SDK(AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK *this)
{
  *this = &unk_2A1D3A988;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B6B52C08);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B888B256);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40B888B256);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40B6B52C08);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4045C79CCFLL);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40EF768F96);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK::~ARI_IBINetSetRadioSignalReportingConfiguration_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK::pack(AriSdk::ARI_IBINetSetRadioSignalReportingConfiguration_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x14uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x20uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x2CuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 0x2CuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x2CuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 0x2CuLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK::ARI_IBINetSingleShotRadioSignalReportingReq_SDK(AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 612466688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 612466688, 0);
}

void AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK::ARI_IBINetSingleShotRadioSignalReportingReq_SDK(AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK::~ARI_IBINetSingleShotRadioSignalReportingReq_SDK(AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK *this)
{
  *this = &unk_2A1D3A9C0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK::~ARI_IBINetSingleShotRadioSignalReportingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK::pack(AriSdk::ARI_IBINetSingleShotRadioSignalReportingReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK(AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 620855296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 620855296, 0);
}

void AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK(AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK::~ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK(AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK *this)
{
  *this = &unk_2A1D3A9F8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403207AF5FLL);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4094AF71AFLL);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40B454D1E3);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C407686E5EELL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40EC481F20);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077F4DC47);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4054B1E74FLL);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK::~ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK::pack(AriSdk::ARI_IBINetSingleShotRadioSignalReportingRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x244uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x484uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x604uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x34uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x38uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x584uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x604uLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetTimerInfoIndCb_SDK::ARI_IBINetTimerInfoIndCb_SDK(AriSdk::ARI_IBINetTimerInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630390784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630390784, 0);
}

void AriSdk::ARI_IBINetTimerInfoIndCb_SDK::ARI_IBINetTimerInfoIndCb_SDK(AriSdk::ARI_IBINetTimerInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetTimerInfoIndCb_SDK::~ARI_IBINetTimerInfoIndCb_SDK(AriSdk::ARI_IBINetTimerInfoIndCb_SDK *this)
{
  *this = &unk_2A1D3AA30;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetTimerInfoIndCb_SDK::~ARI_IBINetTimerInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetTimerInfoIndCb_SDK::pack(AriSdk::ARI_IBINetTimerInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::ARI_IBISetDeviceRegionCodeReq_SDK(AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613613568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613613568, 0);
}

void AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::ARI_IBISetDeviceRegionCodeReq_SDK(AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::~ARI_IBISetDeviceRegionCodeReq_SDK(AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK *this)
{
  *this = &unk_2A1D3AA68;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::~ARI_IBISetDeviceRegionCodeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::pack(AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 1uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::unpack(AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2961D8968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  MEMORY[0x29C257E50](v29, v28);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::ARI_IBISetDeviceRegionCodeRspCb_SDK(AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 622002176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 622002176, 0);
}

void AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::ARI_IBISetDeviceRegionCodeRspCb_SDK(AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::~ARI_IBISetDeviceRegionCodeRspCb_SDK(AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK *this)
{
  *this = &unk_2A1D3AAA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::~ARI_IBISetDeviceRegionCodeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::pack(AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void std::vector<IBIUmtsCellInfoT>::__init_with_size[abi:ne200100]<IBIUmtsCellInfoT*,IBIUmtsCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D8D4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIGsmCellInfoT>::__init_with_size[abi:ne200100]<IBIGsmCellInfoT*,IBIGsmCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D8DF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteCellInfoT>::__init_with_size[abi:ne200100]<IBILteCellInfoT*,IBILteCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D8E9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIUmtsNeighborCellInfoT>::__init_with_size[abi:ne200100]<IBIUmtsNeighborCellInfoT*,IBIUmtsNeighborCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D8F40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIGsmNeighborCellInfoT>::__init_with_size[abi:ne200100]<IBIGsmNeighborCellInfoT*,IBIGsmNeighborCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D8FE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteNeighborCellInfoT>::__init_with_size[abi:ne200100]<IBILteNeighborCellInfoT*,IBILteNeighborCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBITdsCellInfoT>::__init_with_size[abi:ne200100]<IBITdsCellInfoT*,IBITdsCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBITdsNeighborCellInfoT>::__init_with_size[abi:ne200100]<IBITdsNeighborCellInfoT*,IBITdsNeighborCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D91D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINetCdma1xCellInfo>::__init_with_size[abi:ne200100]<IBINetCdma1xCellInfo*,IBINetCdma1xCellInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9284(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINetCdmaEvdoCellInfo>::__init_with_size[abi:ne200100]<IBINetCdmaEvdoCellInfo*,IBINetCdmaEvdoCellInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICdma1xNeighborCellInfo>::__init_with_size[abi:ne200100]<IBICdma1xNeighborCellInfo*,IBICdma1xNeighborCellInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D93D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICdmaEvdoNeighborCellInfo>::__init_with_size[abi:ne200100]<IBICdmaEvdoNeighborCellInfo*,IBICdmaEvdoNeighborCellInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteCellInfoV1T>::__init_with_size[abi:ne200100]<IBILteCellInfoV1T*,IBILteCellInfoV1T*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D952C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteNeighborCellInfoV1T>::__init_with_size[abi:ne200100]<IBILteNeighborCellInfoV1T*,IBILteNeighborCellInfoV1T*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D95D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteCellInfoR15>::__init_with_size[abi:ne200100]<IBILteCellInfoR15*,IBILteCellInfoR15*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9684(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINrCellInfoT>::__init_with_size[abi:ne200100]<IBINrCellInfoT*,IBINrCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9730(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINrNeighborCellInfoT>::__init_with_size[abi:ne200100]<IBINrNeighborCellInfoT*,IBINrNeighborCellInfoT*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D97DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteCellInfoR15_V2>::__init_with_size[abi:ne200100]<IBILteCellInfoR15_V2*,IBILteCellInfoR15_V2*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILteNeighborCellInfoV2T>::__init_with_size[abi:ne200100]<IBILteNeighborCellInfoV2T*,IBILteNeighborCellInfoV2T*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINrCellInfoT_V2>::__init_with_size[abi:ne200100]<IBINrCellInfoT_V2*,IBINrCellInfoT_V2*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D99E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINrNeighborCellInfoT_V2>::__init_with_size[abi:ne200100]<IBINrNeighborCellInfoT_V2*,IBINrNeighborCellInfoT_V2*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9A84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINrCellInfoT_V3>::__init_with_size[abi:ne200100]<IBINrCellInfoT_V3*,IBINrCellInfoT_V3*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9B30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINrCellInfoT_V4>::__init_with_size[abi:ne200100]<IBINrCellInfoT_V4*,IBINrCellInfoT_V4*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961D9BDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2961D9CE8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void Ari::ClientOutboundMessage::ClientOutboundMessage(Ari::ClientOutboundMessage *this, unsigned __int8 *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0xAAAAAAAAAAAAAAAALL;
  *(this + 3) = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
}

void sub_2961D9D98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void Ari::ClientOutboundMessage::~ClientOutboundMessage(Ari::ClientOutboundMessage *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t Ari::ClientOutboundMessage::flush(Ari::ClientOutboundMessage *this)
{
  v2 = *(AriHost::GetInstance(this) + 608);
  v3 = *(*(this + 2) + 8) - **(this + 2);
  v4 = *(this + 10);
  v5 = *(*v2 + 40);

  return v5();
}

BOOL Ari::ClientOutboundMessage::isLowPriority(Ari::ClientOutboundMessage *this)
{
  v1 = *(this + 9);
  if (v1 >> 26 != 51)
  {
    return 0;
  }

  v2 = (v1 >> 15) & 0x3FF;
  if (v2 == 401)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v5 = &dword_29EE11D74;
    do
    {
      ++v3;
      v6 = *v5;
      v5 += 14;
    }

    while (v6 != v2);
  }

  return ARIMSGDEF_GROUP51_ice_awds[56 * v3 + 8] == 0;
}

uint64_t Ari::ClientWorkQueue::ClientWorkQueue(uint64_t a1, __int128 *a2, char a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v4;
  }

  return a1;
}

void Ari::ClientWorkQueue::~ClientWorkQueue(void **this)
{
  v25 = *MEMORY[0x29EDCA608];
  if (this[5] && (DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "~ClientWorkQueue", v12);
      v8 = v12[0];
      if (v13 >= 0)
      {
        v8 = v12;
      }

      v9 = this + 7;
      if (*(this + 79) < 0)
      {
        v9 = *v9;
      }

      if (*(this + 48))
      {
        v10 = "stalled";
      }

      else
      {
        v10 = "not stalled";
      }

      v11 = this[5];
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v8;
      v17 = 1024;
      v18 = 104;
      v19 = 2080;
      v20 = v9;
      v21 = 2080;
      v22 = v10;
      v23 = 1024;
      v24 = v11;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Destroying non-empty AriHost [%s] (%s)! %u items remain", __p, 0x36u);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "~ClientWorkQueue", __p);
    if (v17 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    v5 = this + 7;
    if (*(this + 79) < 0)
    {
      v5 = *v5;
    }

    if (*(this + 48))
    {
      v6 = "stalled";
    }

    else
    {
      v6 = "not stalled";
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Destroying non-empty AriHost [%s] (%s)! %u items remain", v3, v4, 104, v5, v6, this[5]);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  std::deque<std::shared_ptr<Ari::ClientOutboundMessage>>::~deque[abi:ne200100](this);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_2961DA1C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Ari::ClientWorkQueue::add(uint64_t a1, Ari::ClientOutboundMessage **a2)
{
  v55 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  v4 = *a2;
  if (v3 == 1)
  {
    *buf = *(v4 + 9);
    v6 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(ARIHOST_GMID_DISALLOWED_DURING_STALL, buf);
    if (v6)
    {
      if ((DefaultLogLevel & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(v6);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "add", v44);
          v8 = v45;
          v9 = v44[0];
          GetBufDigest(**(*a2 + 2), 0, (*(*(*a2 + 2) + 8) - **(*a2 + 2)), __p);
          if (v8 >= 0)
          {
            v10 = v44;
          }

          else
          {
            v10 = v9;
          }

          v11 = __p[0];
          if (v43 >= 0)
          {
            v11 = __p;
          }

          v12 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v12 = *v12;
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v47 = 2080;
          v48 = v10;
          v49 = 1024;
          v50 = 120;
          v51 = 2080;
          v52 = v11;
          v53 = 2080;
          v54 = v12;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) REQ(%s) not allowed during stall [%s]", buf, 0x30u);
          if (v43 < 0)
          {
            operator delete(__p[0]);
          }

          if (v45 < 0)
          {
            operator delete(v44[0]);
          }
        }

        v13 = buf;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "add", buf);
        if (v49 < 0)
        {
          v13 = *buf;
        }

        GetBufDigest(**(*a2 + 2), 0, (*(*(*a2 + 2) + 8) - **(*a2 + 2)), v44);
        if (v45 >= 0)
        {
          v15 = v44;
        }

        else
        {
          v15 = v44[0];
        }

        v16 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v16 = *v16;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) REQ(%s) not allowed during stall [%s]", v14, v13, 120, v15, v16);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(*buf);
        }
      }

      result = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v21 = *(a1 + 8);
      if (v20 == v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = 32 * (v20 - v21) - 1;
      }

      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v25 = v23 + v24;
      if (v22 == v23 + v24)
      {
        if (v24 < 0x100)
        {
          v26 = *(a1 + 24);
          v27 = v26 - *a1;
          if (v20 - v21 < v27)
          {
            operator new();
          }

          v28 = v27 >> 2;
          if (v26 == *a1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v28;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Ari::ClientOutboundMessage> *>>(v29);
        }

        *(a1 + 32) = v24 - 256;
        *buf = *v21;
        *(a1 + 8) = v21 + 8;
        v6 = std::__split_buffer<std::shared_ptr<Ari::ClientOutboundMessage> *,std::allocator<std::shared_ptr<Ari::ClientOutboundMessage> *>>::emplace_back<std::shared_ptr<Ari::ClientOutboundMessage> *&>(a1, buf);
        v21 = *(a1 + 8);
        v23 = *(a1 + 40);
        v25 = v23 + *(a1 + 32);
      }

      v30 = *a2;
      *(*&v21[(v25 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v25) = *a2;
      if (*(&v30 + 1))
      {
        atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
        v23 = *(a1 + 40);
      }

      *(a1 + 40) = v23 + 1;
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v31 = AriOsa::GetOsLog(v6);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "add", v44);
          v32 = v45;
          v33 = v44[0];
          GetBufDigest(**(*a2 + 2), 0, (*(*(*a2 + 2) + 8) - **(*a2 + 2)), __p);
          if (v32 >= 0)
          {
            v34 = v44;
          }

          else
          {
            v34 = v33;
          }

          v35 = __p[0];
          if (v43 >= 0)
          {
            v35 = __p;
          }

          v36 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v36 = *v36;
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v47 = 2080;
          v48 = v34;
          v49 = 1024;
          v50 = 115;
          v51 = 2080;
          v52 = v35;
          v53 = 2080;
          v54 = v36;
          _os_log_impl(&dword_296048000, v31, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) REQ(%s) added in [%s]", buf, 0x30u);
          if (v43 < 0)
          {
            operator delete(__p[0]);
          }

          if (v45 < 0)
          {
            operator delete(v44[0]);
          }
        }

        v37 = buf;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "add", buf);
        if (v49 < 0)
        {
          v37 = *buf;
        }

        GetBufDigest(**(*a2 + 2), 0, (*(*(*a2 + 2) + 8) - **(*a2 + 2)), v44);
        if (v45 >= 0)
        {
          v39 = v44;
        }

        else
        {
          v39 = v44[0];
        }

        v40 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v40 = *v40;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) REQ(%s) added in [%s]", v38, v37, 115, v39, v40);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(*buf);
        }
      }

      result = 0;
    }

    v41 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v18 = *MEMORY[0x29EDCA608];

    return Ari::ClientOutboundMessage::flush(v4);
  }

  return result;
}

void sub_2961DAA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v28);
  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t Ari::ClientWorkQueue::flush(Ari::ClientWorkQueue *this)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (v2)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "flush", __p);
        v4 = __p[0];
        if (v29 >= 0)
        {
          v4 = __p;
        }

        v5 = (this + 56);
        if (*(this + 79) < 0)
        {
          v5 = *v5;
        }

        *buf = 136316162;
        *&buf[4] = "ari";
        v31 = 2080;
        v32 = v4;
        v33 = 1024;
        v34 = 139;
        v35 = 2048;
        v36 = v2;
        v37 = 2080;
        v38 = v5;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) flushing %zu items [%s]", buf, 0x30u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "flush", buf);
      if (v33 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      v8 = (this + 56);
      if (*(this + 79) < 0)
      {
        v8 = *v8;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) flushing %zu items [%s]", v6, v7, 139, v2, v8);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v10 == v9)
    {
      v10 = *(this + 1);
    }

    else
    {
      v11 = *(this + 4);
      v12 = &v9[v11 >> 8];
      v13 = (*v12 + 16 * v11);
      v14 = *(v9 + (((*(this + 5) + v11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 40) + v11);
      if (v13 != v14)
      {
        do
        {
          Ari::ClientOutboundMessage::flush(*v13);
          v13 += 2;
          if (v13 - *v12 == 4096)
          {
            v15 = v12[1];
            ++v12;
            v13 = v15;
          }
        }

        while (v13 != v14);
        v9 = *(this + 1);
        v10 = *(this + 2);
      }

      if (v10 != v9)
      {
        v16 = *(this + 4);
        v17 = &v9[v16 >> 8];
        v18 = *v17;
        v19 = *v17 + 16 * v16;
        v20 = *(v9 + (((*(this + 5) + v16) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 40) + v16);
        if (v19 != v20)
        {
          do
          {
            v21 = *(v19 + 8);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              v18 = *v17;
            }

            v19 += 16;
            if (v19 - v18 == 4096)
            {
              v22 = v17[1];
              ++v17;
              v18 = v22;
              v19 = v22;
            }
          }

          while (v19 != v20);
          v9 = *(this + 1);
          v10 = *(this + 2);
        }
      }
    }

    *(this + 5) = 0;
    v23 = v10 - v9;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v9);
        v24 = *(this + 2);
        v9 = (*(this + 1) + 8);
        *(this + 1) = v9;
        v23 = (v24 - v9) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 128;
      goto LABEL_38;
    }

    if (v23 == 2)
    {
      v25 = 256;
LABEL_38:
      *(this + 4) = v25;
    }
  }

  *(this + 48) = 0;
  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2961DADE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::ClientWorkQueue::cancel(Ari::ClientWorkQueue *this)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (v2)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "cancel", __p);
        v4 = __p[0];
        if (v29 >= 0)
        {
          v4 = __p;
        }

        v5 = (this + 56);
        if (*(this + 79) < 0)
        {
          v5 = *v5;
        }

        *buf = 136316162;
        *&buf[4] = "ari";
        v31 = 2080;
        v32 = v4;
        v33 = 1024;
        v34 = 154;
        v35 = 2048;
        v36 = v2;
        v37 = 2080;
        v38 = v5;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) cancelling %zu items [%s]", buf, 0x30u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "cancel", buf);
      if (v33 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      v8 = (this + 56);
      if (*(this + 79) < 0)
      {
        v8 = *v8;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) cancelling %zu items [%s]", v6, v7, 154, v2, v8);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v10 == v9)
    {
      v10 = *(this + 1);
    }

    else
    {
      v11 = *(this + 4);
      v12 = &v9[v11 >> 8];
      v13 = *v12 + 16 * v11;
      v14 = *(v9 + (((*(this + 5) + v11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 40) + v11);
      if (v13 != v14)
      {
        do
        {
          AriHost::CancelTrx(*(*v13 + 32), *(*v13 + 36), -85);
          v13 += 16;
          if (v13 - *v12 == 4096)
          {
            v15 = v12[1];
            ++v12;
            v13 = v15;
          }
        }

        while (v13 != v14);
        v9 = *(this + 1);
        v10 = *(this + 2);
      }

      if (v10 != v9)
      {
        v16 = *(this + 4);
        v17 = &v9[v16 >> 8];
        v18 = *v17;
        v19 = *v17 + 16 * v16;
        v20 = *(v9 + (((*(this + 5) + v16) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 40) + v16);
        if (v19 != v20)
        {
          do
          {
            v21 = *(v19 + 8);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              v18 = *v17;
            }

            v19 += 16;
            if (v19 - v18 == 4096)
            {
              v22 = v17[1];
              ++v17;
              v18 = v22;
              v19 = v22;
            }
          }

          while (v19 != v20);
          v9 = *(this + 1);
          v10 = *(this + 2);
        }
      }
    }

    *(this + 5) = 0;
    v23 = v10 - v9;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v9);
        v24 = *(this + 2);
        v9 = (*(this + 1) + 8);
        *(this + 1) = v9;
        v23 = (v24 - v9) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 128;
      goto LABEL_38;
    }

    if (v23 == 2)
    {
      v25 = 256;
LABEL_38:
      *(this + 4) = v25;
    }
  }

  *(this + 48) = 1;
  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2961DB0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::ClientWorkQueue::abort(Ari::ClientWorkQueue *this, int a2)
{
  v87 = *MEMORY[0x29EDCA608];
  v76 = *(this + 5);
  if (v76)
  {
    v3 = this;
    v4 = *(this + 4);
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = &v5[v4 >> 8];
    if (v6 == v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7 + 16 * v4;
    }

    v9 = 0x2A1390000uLL;
LABEL_6:
    v10 = -v8;
    while (1)
    {
      v11 = v6 == v5 ? 0 : (*(v5 + (((v3[2].i64[1] + v4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v3[2].i8[8] + v4));
      if (v8 == v11)
      {
        break;
      }

      v12 = *v8;
      this = *(*v8 + 32);
      if (((this >> 8) & 0x7F) == a2)
      {
        if ((*(v9 + 3592) & 0x20) != 0)
        {
          OsLog = AriOsa::GetOsLog(this);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "abort", v79);
            v15 = v80;
            v16 = v79[0];
            GetBufDigest(**(*v8 + 16), 0, (*(*(*v8 + 16) + 8) - **(*v8 + 16)), __p);
            v17 = v79;
            if (v15 < 0)
            {
              v17 = v16;
            }

            v18 = __p;
            if (v78 < 0)
            {
              v18 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "ari";
            *&buf[12] = 2080;
            *&buf[14] = v17;
            *&buf[22] = 1024;
            v82 = 177;
            v83 = 2080;
            v84 = v18;
            _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) aborting %s", buf, 0x26u);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            if (v80 < 0)
            {
              operator delete(v79[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "abort", buf);
          v19 = buf[23];
          v20 = *buf;
          GetBufDigest(**(*v8 + 16), 0, (*(*(*v8 + 16) + 8) - **(*v8 + 16)), v79);
          v22 = buf;
          if (v19 < 0)
          {
            v22 = v20;
          }

          if (v80 >= 0)
          {
            v23 = v79;
          }

          else
          {
            v23 = v79[0];
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) aborting %s", v21, v22, 177, v23);
          if (v80 < 0)
          {
            operator delete(v79[0]);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          v12 = *v8;
          this = *(*v8 + 32);
        }

        AriHost::CancelTrx(this, *(v12 + 36), -85);
        v24 = v3[2].u64[0];
        v25 = v3->i64[1];
        v26 = (v25 + 8 * (v24 >> 8));
        if (v3[1].i64[0] == v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = *v26 + 16 * v24;
        }

        v75 = v3[1].i64[0];
        if (v27 + v10)
        {
          v28 = (-(*v7 + v10) >> 4) + 32 * (v7 - v26) - ((v27 - *v26) >> 4);
        }

        else
        {
          v28 = 0;
        }

        v29 = std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage>*,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage>**,long,256l>::operator+[abi:ne200100]((v25 + 8 * (v24 >> 8)), v27, v28);
        v30 = v29;
        v32 = v31;
        v33 = v3[2].i64[1];
        v34 = *v29;
        v35 = (v32 - *v29) >> 4;
        if (v28 <= (v33 - 1) >> 1)
        {
          if (v35 < 0)
          {
            v47 = 254 - v35;
            v39 = v29 - (v47 >> 8);
            v40 = *v39 + 16 * ~v47;
          }

          else
          {
            v38 = v35 + 1;
            v39 = v29 + (v38 >> 8);
            v40 = *v39 + 16 * v38;
          }

          if (v29 == v26)
          {
            v48 = v27;
            v49 = v32;
          }

          else
          {
            memset(buf, 170, sizeof(buf));
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(buf, v34, v32, v39, v40);
            v40 = *&buf[16];
            v39 = *&buf[8];
            v50 = v30 - 1;
            while (v50 != v26)
            {
              v51 = *v50--;
              memset(buf, 170, sizeof(buf));
              std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(buf, v51, v51 + 4096, v39, v40);
              v40 = *&buf[16];
              v39 = *&buf[8];
            }

            v49 = *v50 + 4096;
            v48 = v27;
          }

          std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(buf, v48, v49, v39, v40);
          v52 = *(v27 + 8);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          v53 = vaddq_s64(v3[2], xmmword_296246300);
          v3[2] = v53;
          v4 = v53.i64[0];
          v5 = v3->i64[1];
          if (v53.i64[0] >= 0x200uLL)
          {
            operator delete(*v5);
            v5 = (v3->i64[1] + 8);
            v3->i64[1] = v5;
            v4 = v3[2].i64[0] - 256;
            v3[2].i64[0] = v4;
          }
        }

        else
        {
          if (v35 < 0)
          {
            v41 = 254 - v35;
            v36 = ~v41;
            v37 = v29 - (v41 >> 8);
          }

          else
          {
            v36 = v35 + 1;
            v37 = v29 + ((v35 + 1) >> 8);
          }

          v42 = *v37;
          v43 = &(*v37)[v36];
          v44 = v33 + v24;
          v45 = (v25 + 8 * (v44 >> 8));
          if (v75 == v25)
          {
            v46 = 0;
          }

          else
          {
            v46 = &(*v45)[v44];
          }

          if (v37 == v45)
          {
            memset(buf, 170, sizeof(buf));
            v58 = v46;
            v54 = v29;
            v55 = v32;
          }

          else
          {
            memset(buf, 170, sizeof(buf));
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(buf, v43, v42 + 256, v29, v32);
            v55 = *&buf[16];
            v54 = *&buf[8];
            v56 = v37 + 1;
            while (v56 != v45)
            {
              v57 = *v56++;
              memset(buf, 170, sizeof(buf));
              std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(buf, v57, v57 + 256, v54, v55);
              v55 = *&buf[16];
              v54 = *&buf[8];
            }

            v43 = *v56;
            memset(buf, 170, sizeof(buf));
            v58 = v46;
          }

          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(buf, v43, v58, v54, v55);
          v59 = *(*&buf[16] + 8);
          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          v5 = v3->i64[1];
          v60 = v3[1].i64[0];
          v4 = v3[2].u64[0];
          v61 = v3[2].i64[1];
          v3[2].i64[1] = v61 - 1;
          v62 = 32 * (v60 - v5) - 1;
          if (v60 == v5)
          {
            v62 = 0;
          }

          if (v62 - (v61 + v4) - 511 <= 0xFFFFFFFFFFFFFDFFLL)
          {
            operator delete(*(v60 - 1));
            v5 = v3->i64[1];
            v3[1].i64[0] -= 8;
            v4 = v3[2].u64[0];
          }
        }

        v63 = &v5[v4 >> 8];
        v6 = v3[1].i64[0];
        if (v6 == v5)
        {
          v64 = 0;
        }

        else
        {
          v64 = *v63 + 16 * v4;
        }

        this = std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage>*,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage>**,long,256l>::operator+[abi:ne200100](v63, v64, v28);
        v7 = this;
        v8 = v65;
        v9 = 0x2A1390000;
        goto LABEL_6;
      }

      v8 += 16;
      v10 -= 16;
      if (-4096 - *v7 == v10)
      {
        v13 = *(v7 + 1);
        v7 = (v7 + 8);
        v8 = v13;
        goto LABEL_6;
      }
    }

    if ((*(v9 + 3592) & 0x20) != 0)
    {
      v66 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "abort", v79);
        if (v80 >= 0)
        {
          v67 = v79;
        }

        else
        {
          v67 = v79[0];
        }

        v68 = (v76 - v3[2].i64[1]);
        v69 = &v3[3].i64[1];
        if (v3[4].i8[15] < 0)
        {
          v69 = *v69;
        }

        *buf = 136316162;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v67;
        *&buf[22] = 1024;
        v82 = 186;
        v83 = 2048;
        v84 = v68;
        v85 = 2080;
        v86 = v69;
        _os_log_impl(&dword_296048000, v66, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) aborted %zu items [%s]", buf, 0x30u);
        if (v80 < 0)
        {
          operator delete(v79[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "abort", buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v71 = buf;
      }

      else
      {
        v71 = *buf;
      }

      v72 = &v3[3].i64[1];
      if (v3[4].i8[15] < 0)
      {
        v72 = *v72;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) aborted %zu items [%s]", v70, v71, 186, v76 - v3[2].i64[1], v72);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v73 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2961DB854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL Ari::ClientWorkQueue::containsCtx(Ari::ClientWorkQueue *this, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if ((*(this + 48) & 1) == 0 && (DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "containsCtx", v22);
      v20 = v22[0];
      if (v23 >= 0)
      {
        v20 = v22;
      }

      v21 = (this + 56);
      if (*(this + 79) < 0)
      {
        v21 = *v21;
      }

      *__p = 136316162;
      *&__p[4] = "ari";
      v25 = 2080;
      v26 = v20;
      v27 = 1024;
      v28 = 194;
      v29 = 1024;
      v30 = a2;
      v31 = 2080;
      v32 = v21;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Checking for item 0x%x in queue when not stalled! [%s]", __p, 0x2Cu);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_queue.cpp", "containsCtx", __p);
    if (v27 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    v7 = (this + 56);
    if (*(this + 79) < 0)
    {
      v7 = *v7;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Checking for item 0x%x in queue when not stalled! [%s]", v5, v6, 194, a2, v7);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*__p);
    }
  }

  v8 = *(this + 1);
  if (*(this + 2) == v8)
  {
    v10 = 0;
    v13 = 0;
  }

  else
  {
    v9 = *(this + 4);
    v10 = *(v8 + (((*(this + 5) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 40) + v9);
    v11 = (v8 + 8 * (v9 >> 8));
    v12 = *v11;
    v13 = &(*v11)[16 * v9];
    while (v13 != v10)
    {
      v15 = *v13;
      v14 = *(v13 + 1);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *(v15 + 32);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (v16 == a2)
        {
          goto LABEL_22;
        }

        v12 = *v11;
      }

      else if (*(v15 + 32) == a2)
      {
        goto LABEL_22;
      }

      v13 += 16;
      if (v13 - v12 == 4096)
      {
        v17 = v11[1];
        ++v11;
        v12 = v17;
        v13 = v17;
      }
    }

    v13 = v10;
  }

LABEL_22:
  result = v10 != v13;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2961DBB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<Ari::ClientOutboundMessage::Create(unsigned char *,unsigned int,unsigned int)::ClientOutBoundMessageNoPrivate,std::allocator<Ari::ClientOutboundMessage::Create(unsigned char *,unsigned int,unsigned int)::ClientOutBoundMessageNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D3AF28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

uint64_t std::deque<std::shared_ptr<Ari::ClientOutboundMessage>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::shared_ptr<Ari::ClientOutboundMessage> *,std::allocator<std::shared_ptr<Ari::ClientOutboundMessage> *>>::emplace_back<std::shared_ptr<Ari::ClientOutboundMessage> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Ari::ClientOutboundMessage> *>>(v11);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Ari::ClientOutboundMessage> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage>*,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage>**,long,256l>::operator+[abi:ne200100](uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 4);
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
      v5 = *result;
    }

    else
    {
      result += v3 >> 8;
      v4 = *result;
    }
  }

  return result;
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a2) >> 4;
      }

      if (v13)
      {
        v14 = (v11 - 16);
        v15 = -16 * v13;
        do
        {
          v16 = *v14;
          *v14 = 0;
          *(v14 + 1) = 0;
          v17 = *(a5 - 8);
          *(a5 - 16) = v16;
          a5 -= 16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          --v14;
          v15 += 16;
        }

        while (v15);
      }

      v11 -= 16 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = v18 + 4096;
    }

    if (*v6 + 4096 == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = a5;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Ari::ClientOutboundMessage> *,std::__deque_iterator<std::shared_ptr<Ari::ClientOutboundMessage>,std::shared_ptr<Ari::ClientOutboundMessage> *,std::shared_ptr<Ari::ClientOutboundMessage>&,std::shared_ptr<Ari::ClientOutboundMessage> **,long,256l>,0>(__int128 **a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v14 = a2;
    goto LABEL_17;
  }

  v10 = *a4;
  while (1)
  {
    v11 = v10 - a5 + 4096;
    v12 = a3 - v7 >= v11 >> 4 ? v11 >> 4 : a3 - v7;
    if (v12)
    {
      break;
    }

LABEL_13:
    v17 = *(v6 + 1);
    v6 = (v6 + 8);
    v10 = v17;
    a5 = v17;
  }

  v13 = 16 * v12;
  v14 = &v7[v12];
  do
  {
    v15 = *v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    v16 = *(a5 + 8);
    *a5 = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    ++v7;
    a5 += 16;
    v13 -= 16;
  }

  while (v13);
  if (v14 != a3)
  {
    v7 = v14;
    goto LABEL_13;
  }

  if (a5 == *v6 + 4096)
  {
    v18 = *(v6 + 1);
    v6 = (v6 + 8);
    a5 = v18;
  }

LABEL_17:
  *a1 = v14;
  a1[1] = v6;
  a1[2] = a5;
}

void AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK::ARI_CsiBspGetCalibrationStatusReq_SDK(AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125763584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125763584, 0);
}

void AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK::ARI_CsiBspGetCalibrationStatusReq_SDK(AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK::~ARI_CsiBspGetCalibrationStatusReq_SDK(AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK::pack(AriSdk::ARI_CsiBspGetCalibrationStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::ARI_CsiBspGetCalibrationStatusRspCb_SDK(AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117374976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117374976, 0);
}

void AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::ARI_CsiBspGetCalibrationStatusRspCb_SDK(AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::~ARI_CsiBspGetCalibrationStatusRspCb_SDK(AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK *this)
{
  *this = &unk_2A1D3C2A0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::~ARI_CsiBspGetCalibrationStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::pack(AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK::ARI_CsiBspNvmGroupEnumListReq_SDK(AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125009920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125009920, 0);
}

void AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK::ARI_CsiBspNvmGroupEnumListReq_SDK(AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK::~ARI_CsiBspNvmGroupEnumListReq_SDK(AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK::pack(AriSdk::ARI_CsiBspNvmGroupEnumListReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK::ARI_CsiBspNvmGroupEnumListRespCb_SDK(AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116621312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116621312, 0);
}

void AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK::ARI_CsiBspNvmGroupEnumListRespCb_SDK(AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK::~ARI_CsiBspNvmGroupEnumListRespCb_SDK(AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK *this)
{
  *this = &unk_2A1D3C310;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40DA9895E1);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK::~ARI_CsiBspNvmGroupEnumListRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK::pack(AriSdk::ARI_CsiBspNvmGroupEnumListRespCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xDB0uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiBspNvmReadGroupReq_SDK::ARI_CsiBspNvmReadGroupReq_SDK(AriSdk::ARI_CsiBspNvmReadGroupReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124977152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124977152, 0);
}

void AriSdk::ARI_CsiBspNvmReadGroupReq_SDK::ARI_CsiBspNvmReadGroupReq_SDK(AriSdk::ARI_CsiBspNvmReadGroupReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspNvmReadGroupReq_SDK::~ARI_CsiBspNvmReadGroupReq_SDK(AriSdk::ARI_CsiBspNvmReadGroupReq_SDK *this)
{
  *this = &unk_2A1D3C348;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspNvmReadGroupReq_SDK::~ARI_CsiBspNvmReadGroupReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspNvmReadGroupReq_SDK::pack(AriSdk::ARI_CsiBspNvmReadGroupReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK::ARI_CsiBspNvmReadGroupRespCb_SDK(AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116588544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116588544, 0);
}

void AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK::ARI_CsiBspNvmReadGroupRespCb_SDK(AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK::~ARI_CsiBspNvmReadGroupRespCb_SDK(AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK *this)
{
  *this = &unk_2A1D3C380;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK::~ARI_CsiBspNvmReadGroupRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK::pack(AriSdk::ARI_CsiBspNvmReadGroupRespCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK::ARI_CsiBspNvmReadGroupBlockReq_SDK(AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124944384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124944384, 0);
}

void AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK::ARI_CsiBspNvmReadGroupBlockReq_SDK(AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK::~ARI_CsiBspNvmReadGroupBlockReq_SDK(AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK *this)
{
  *this = &unk_2A1D3C3B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK::~ARI_CsiBspNvmReadGroupBlockReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK::pack(AriSdk::ARI_CsiBspNvmReadGroupBlockReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK::ARI_CsiBspNvmReadGroupBlockRespCb_SDK(AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116555776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116555776, 0);
}

void AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK::ARI_CsiBspNvmReadGroupBlockRespCb_SDK(AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK::~ARI_CsiBspNvmReadGroupBlockRespCb_SDK(AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK *this)
{
  *this = &unk_2A1D3C3F0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40DA9895E1);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK::~ARI_CsiBspNvmReadGroupBlockRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK::pack(AriSdk::ARI_CsiBspNvmReadGroupBlockRespCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xDB0uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK::ARI_CsiBspSetNvItemsToStateReq_SDK(AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125796352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125796352, 0);
}

void AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK::ARI_CsiBspSetNvItemsToStateReq_SDK(AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK::~ARI_CsiBspSetNvItemsToStateReq_SDK(AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK *this)
{
  *this = &unk_2A1D3C428;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK::~ARI_CsiBspSetNvItemsToStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK::pack(AriSdk::ARI_CsiBspSetNvItemsToStateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK::ARI_CsiBspSetNvItemsToStateRspCb_SDK(AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117407744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117407744, 0);
}

void AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK::ARI_CsiBspSetNvItemsToStateRspCb_SDK(AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK::~ARI_CsiBspSetNvItemsToStateRspCb_SDK(AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK *this)
{
  *this = &unk_2A1D3C460;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK::~ARI_CsiBspSetNvItemsToStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK::pack(AriSdk::ARI_CsiBspSetNvItemsToStateRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspShutdownReq_SDK::ARI_CsiBspShutdownReq_SDK(AriSdk::ARI_CsiBspShutdownReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125403136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125403136, 0);
}

void AriSdk::ARI_CsiBspShutdownReq_SDK::ARI_CsiBspShutdownReq_SDK(AriSdk::ARI_CsiBspShutdownReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspShutdownReq_SDK::~ARI_CsiBspShutdownReq_SDK(AriSdk::ARI_CsiBspShutdownReq_SDK *this)
{
  *this = &unk_2A1D3C498;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspShutdownReq_SDK::~ARI_CsiBspShutdownReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspShutdownReq_SDK::pack(AriSdk::ARI_CsiBspShutdownReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspShutdownRspCb_SDK::ARI_CsiBspShutdownRspCb_SDK(AriSdk::ARI_CsiBspShutdownRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117014528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117014528, 0);
}

void AriSdk::ARI_CsiBspShutdownRspCb_SDK::ARI_CsiBspShutdownRspCb_SDK(AriSdk::ARI_CsiBspShutdownRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspShutdownRspCb_SDK::~ARI_CsiBspShutdownRspCb_SDK(AriSdk::ARI_CsiBspShutdownRspCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspShutdownRspCb_SDK::pack(AriSdk::ARI_CsiBspShutdownRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspShutdownEndReq_SDK::ARI_CsiBspShutdownEndReq_SDK(AriSdk::ARI_CsiBspShutdownEndReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124485632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124485632, 0);
}

void AriSdk::ARI_CsiBspShutdownEndReq_SDK::ARI_CsiBspShutdownEndReq_SDK(AriSdk::ARI_CsiBspShutdownEndReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspShutdownEndReq_SDK::~ARI_CsiBspShutdownEndReq_SDK(AriSdk::ARI_CsiBspShutdownEndReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspShutdownEndReq_SDK::pack(AriSdk::ARI_CsiBspShutdownEndReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspShutdownEndRspCb_SDK::ARI_CsiBspShutdownEndRspCb_SDK(AriSdk::ARI_CsiBspShutdownEndRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116097024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116097024, 0);
}

void AriSdk::ARI_CsiBspShutdownEndRspCb_SDK::ARI_CsiBspShutdownEndRspCb_SDK(AriSdk::ARI_CsiBspShutdownEndRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspShutdownEndRspCb_SDK::~ARI_CsiBspShutdownEndRspCb_SDK(AriSdk::ARI_CsiBspShutdownEndRspCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspShutdownEndRspCb_SDK::pack(AriSdk::ARI_CsiBspShutdownEndRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspSwTrapReq_SDK::ARI_CsiBspSwTrapReq_SDK(AriSdk::ARI_CsiBspSwTrapReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125370368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125370368, 0);
}

void AriSdk::ARI_CsiBspSwTrapReq_SDK::ARI_CsiBspSwTrapReq_SDK(AriSdk::ARI_CsiBspSwTrapReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSwTrapReq_SDK::~ARI_CsiBspSwTrapReq_SDK(AriSdk::ARI_CsiBspSwTrapReq_SDK *this)
{
  *this = &unk_2A1D3C578;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspSwTrapReq_SDK::~ARI_CsiBspSwTrapReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSwTrapReq_SDK::pack(AriSdk::ARI_CsiBspSwTrapReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBspSwTrapRspCb_SDK::ARI_CsiBspSwTrapRspCb_SDK(AriSdk::ARI_CsiBspSwTrapRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116981760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116981760, 0);
}

void AriSdk::ARI_CsiBspSwTrapRspCb_SDK::ARI_CsiBspSwTrapRspCb_SDK(AriSdk::ARI_CsiBspSwTrapRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSwTrapRspCb_SDK::~ARI_CsiBspSwTrapRspCb_SDK(AriSdk::ARI_CsiBspSwTrapRspCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSwTrapRspCb_SDK::pack(AriSdk::ARI_CsiBspSwTrapRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspSwTrapReq_v2_SDK::ARI_CsiBspSwTrapReq_v2_SDK(AriSdk::ARI_CsiBspSwTrapReq_v2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124911616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124911616, 0);
}

void AriSdk::ARI_CsiBspSwTrapReq_v2_SDK::ARI_CsiBspSwTrapReq_v2_SDK(AriSdk::ARI_CsiBspSwTrapReq_v2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSwTrapReq_v2_SDK::~ARI_CsiBspSwTrapReq_v2_SDK(AriSdk::ARI_CsiBspSwTrapReq_v2_SDK *this)
{
  *this = &unk_2A1D3C5E8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspSwTrapReq_v2_SDK::~ARI_CsiBspSwTrapReq_v2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSwTrapReq_v2_SDK::pack(AriSdk::ARI_CsiBspSwTrapReq_v2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK::ARI_CsiBspSwTrapRspCb_v2_SDK(AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116523008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116523008, 0);
}

void AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK::ARI_CsiBspSwTrapRspCb_v2_SDK(AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK::~ARI_CsiBspSwTrapRspCb_v2_SDK(AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK::pack(AriSdk::ARI_CsiBspSwTrapRspCb_v2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::ARI_CsiBspSwTrapReq_v3_SDK(AriSdk::ARI_CsiBspSwTrapReq_v3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124878848, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, -124878848, 1);
}

void AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::ARI_CsiBspSwTrapReq_v3_SDK(AriSdk::ARI_CsiBspSwTrapReq_v3_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::~ARI_CsiBspSwTrapReq_v3_SDK(AriSdk::ARI_CsiBspSwTrapReq_v3_SDK *this)
{
  *this = &unk_2A1D3C658;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::~ARI_CsiBspSwTrapReq_v3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::pack(AriSdk::ARI_CsiBspSwTrapReq_v3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 4uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::unpack(AriSdk::ARI_CsiBspSwTrapReq_v3_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void AriSdk::ARI_CsiCddGetDebugLogReq_SDK::ARI_CsiCddGetDebugLogReq_SDK(AriSdk::ARI_CsiCddGetDebugLogReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125304832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125304832, 0);
}

void AriSdk::ARI_CsiCddGetDebugLogReq_SDK::ARI_CsiCddGetDebugLogReq_SDK(AriSdk::ARI_CsiCddGetDebugLogReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiCddGetDebugLogReq_SDK::~ARI_CsiCddGetDebugLogReq_SDK(AriSdk::ARI_CsiCddGetDebugLogReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiCddGetDebugLogReq_SDK::pack(AriSdk::ARI_CsiCddGetDebugLogReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK::ARI_CsiCddGetDebugLogRspCb_SDK(AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116916224, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116916224, 0);
}

void AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK::ARI_CsiCddGetDebugLogRspCb_SDK(AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK::~ARI_CsiCddGetDebugLogRspCb_SDK(AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK *this)
{
  *this = &unk_2A1D3C6C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK::~ARI_CsiCddGetDebugLogRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK::pack(AriSdk::ARI_CsiCddGetDebugLogRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiCddGetParamDumpReq_SDK::ARI_CsiCddGetParamDumpReq_SDK(AriSdk::ARI_CsiCddGetParamDumpReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125272064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125272064, 0);
}

void AriSdk::ARI_CsiCddGetParamDumpReq_SDK::ARI_CsiCddGetParamDumpReq_SDK(AriSdk::ARI_CsiCddGetParamDumpReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiCddGetParamDumpReq_SDK::~ARI_CsiCddGetParamDumpReq_SDK(AriSdk::ARI_CsiCddGetParamDumpReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiCddGetParamDumpReq_SDK::pack(AriSdk::ARI_CsiCddGetParamDumpReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK::ARI_CsiCddGetParamDumpRspCb_SDK(AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116883456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116883456, 0);
}

void AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK::ARI_CsiCddGetParamDumpRspCb_SDK(AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK::~ARI_CsiCddGetParamDumpRspCb_SDK(AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK *this)
{
  *this = &unk_2A1D3C738;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK::~ARI_CsiCddGetParamDumpRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK::pack(AriSdk::ARI_CsiCddGetParamDumpRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK::ARI_CsiFactGetTestReadyStateReq_SDK(AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125042688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125042688, 0);
}

void AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK::ARI_CsiFactGetTestReadyStateReq_SDK(AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK::~ARI_CsiFactGetTestReadyStateReq_SDK(AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK::pack(AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::ARI_CsiFactGetTestReadyStateRspCb_SDK(AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116654080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116654080, 0);
}

void AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::ARI_CsiFactGetTestReadyStateRspCb_SDK(AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::~ARI_CsiFactGetTestReadyStateRspCb_SDK(AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK *this)
{
  *this = &unk_2A1D3C7A8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::~ARI_CsiFactGetTestReadyStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::pack(AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpGetStatus_SDK::ARI_CsiFpGetStatus_SDK(AriSdk::ARI_CsiFpGetStatus_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125501440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125501440, 0);
}

void AriSdk::ARI_CsiFpGetStatus_SDK::ARI_CsiFpGetStatus_SDK(AriSdk::ARI_CsiFpGetStatus_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpGetStatus_SDK::~ARI_CsiFpGetStatus_SDK(AriSdk::ARI_CsiFpGetStatus_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpGetStatus_SDK::pack(AriSdk::ARI_CsiFpGetStatus_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiFpGetStatusRsp_SDK::ARI_CsiFpGetStatusRsp_SDK(AriSdk::ARI_CsiFpGetStatusRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117112832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117112832, 0);
}

void AriSdk::ARI_CsiFpGetStatusRsp_SDK::ARI_CsiFpGetStatusRsp_SDK(AriSdk::ARI_CsiFpGetStatusRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpGetStatusRsp_SDK::~ARI_CsiFpGetStatusRsp_SDK(AriSdk::ARI_CsiFpGetStatusRsp_SDK *this)
{
  *this = &unk_2A1D3C818;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40FF89C88ELL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpGetStatusRsp_SDK::~ARI_CsiFpGetStatusRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpGetStatusRsp_SDK::pack(AriSdk::ARI_CsiFpGetStatusRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x48uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpGetStatusV2_SDK::ARI_CsiFpGetStatusV2_SDK(AriSdk::ARI_CsiFpGetStatusV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125337600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125337600, 0);
}

void AriSdk::ARI_CsiFpGetStatusV2_SDK::ARI_CsiFpGetStatusV2_SDK(AriSdk::ARI_CsiFpGetStatusV2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpGetStatusV2_SDK::~ARI_CsiFpGetStatusV2_SDK(AriSdk::ARI_CsiFpGetStatusV2_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpGetStatusV2_SDK::pack(AriSdk::ARI_CsiFpGetStatusV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiFpGetStatusRspV2_SDK::ARI_CsiFpGetStatusRspV2_SDK(AriSdk::ARI_CsiFpGetStatusRspV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116948992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116948992, 0);
}

void AriSdk::ARI_CsiFpGetStatusRspV2_SDK::ARI_CsiFpGetStatusRspV2_SDK(AriSdk::ARI_CsiFpGetStatusRspV2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpGetStatusRspV2_SDK::~ARI_CsiFpGetStatusRspV2_SDK(AriSdk::ARI_CsiFpGetStatusRspV2_SDK *this)
{
  *this = &unk_2A1D3C888;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40FF89C88ELL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpGetStatusRspV2_SDK::~ARI_CsiFpGetStatusRspV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpGetStatusRspV2_SDK::pack(AriSdk::ARI_CsiFpGetStatusRspV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x48uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::ARI_CsiFpPrioSyncReqInd_SDK(AriSdk::ARI_CsiFpPrioSyncReqInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -108265472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -108265472, 0);
}

void AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::ARI_CsiFpPrioSyncReqInd_SDK(AriSdk::ARI_CsiFpPrioSyncReqInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::~ARI_CsiFpPrioSyncReqInd_SDK(AriSdk::ARI_CsiFpPrioSyncReqInd_SDK *this)
{
  *this = &unk_2A1D3C8C0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::~ARI_CsiFpPrioSyncReqInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::pack(AriSdk::ARI_CsiFpPrioSyncReqInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpRegister_SDK::ARI_CsiFpRegister_SDK(AriSdk::ARI_CsiFpRegister_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125632512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125632512, 0);
}

void AriSdk::ARI_CsiFpRegister_SDK::ARI_CsiFpRegister_SDK(AriSdk::ARI_CsiFpRegister_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpRegister_SDK::~ARI_CsiFpRegister_SDK(AriSdk::ARI_CsiFpRegister_SDK *this)
{
  *this = &unk_2A1D3C8F8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpRegister_SDK::~ARI_CsiFpRegister_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpRegister_SDK::pack(AriSdk::ARI_CsiFpRegister_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiFpRegisterRsp_SDK::ARI_CsiFpRegisterRsp_SDK(AriSdk::ARI_CsiFpRegisterRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117243904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117243904, 0);
}

void AriSdk::ARI_CsiFpRegisterRsp_SDK::ARI_CsiFpRegisterRsp_SDK(AriSdk::ARI_CsiFpRegisterRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpRegisterRsp_SDK::~ARI_CsiFpRegisterRsp_SDK(AriSdk::ARI_CsiFpRegisterRsp_SDK *this)
{
  *this = &unk_2A1D3C930;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpRegisterRsp_SDK::~ARI_CsiFpRegisterRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpRegisterRsp_SDK::pack(AriSdk::ARI_CsiFpRegisterRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiFpSnapshot_SDK::ARI_CsiFpSnapshot_SDK(AriSdk::ARI_CsiFpSnapshot_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125599744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125599744, 0);
}

void AriSdk::ARI_CsiFpSnapshot_SDK::ARI_CsiFpSnapshot_SDK(AriSdk::ARI_CsiFpSnapshot_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpSnapshot_SDK::~ARI_CsiFpSnapshot_SDK(AriSdk::ARI_CsiFpSnapshot_SDK *this)
{
  *this = &unk_2A1D3C968;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpSnapshot_SDK::~ARI_CsiFpSnapshot_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpSnapshot_SDK::pack(AriSdk::ARI_CsiFpSnapshot_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpSnapshotRsp_SDK::ARI_CsiFpSnapshotRsp_SDK(AriSdk::ARI_CsiFpSnapshotRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117211136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117211136, 0);
}

void AriSdk::ARI_CsiFpSnapshotRsp_SDK::ARI_CsiFpSnapshotRsp_SDK(AriSdk::ARI_CsiFpSnapshotRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpSnapshotRsp_SDK::~ARI_CsiFpSnapshotRsp_SDK(AriSdk::ARI_CsiFpSnapshotRsp_SDK *this)
{
  *this = &unk_2A1D3C9A0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpSnapshotRsp_SDK::~ARI_CsiFpSnapshotRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpSnapshotRsp_SDK::pack(AriSdk::ARI_CsiFpSnapshotRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpUpdateAck_SDK::ARI_CsiFpUpdateAck_SDK(AriSdk::ARI_CsiFpUpdateAck_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125566976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125566976, 0);
}

void AriSdk::ARI_CsiFpUpdateAck_SDK::ARI_CsiFpUpdateAck_SDK(AriSdk::ARI_CsiFpUpdateAck_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpUpdateAck_SDK::~ARI_CsiFpUpdateAck_SDK(AriSdk::ARI_CsiFpUpdateAck_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpUpdateAck_SDK::pack(AriSdk::ARI_CsiFpUpdateAck_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiFpUpdateAckRsp_SDK::ARI_CsiFpUpdateAckRsp_SDK(AriSdk::ARI_CsiFpUpdateAckRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117178368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117178368, 0);
}

void AriSdk::ARI_CsiFpUpdateAckRsp_SDK::ARI_CsiFpUpdateAckRsp_SDK(AriSdk::ARI_CsiFpUpdateAckRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpUpdateAckRsp_SDK::~ARI_CsiFpUpdateAckRsp_SDK(AriSdk::ARI_CsiFpUpdateAckRsp_SDK *this)
{
  *this = &unk_2A1D3CA10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpUpdateAckRsp_SDK::~ARI_CsiFpUpdateAckRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpUpdateAckRsp_SDK::pack(AriSdk::ARI_CsiFpUpdateAckRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiFpUpdateHeader_SDK::ARI_CsiFpUpdateHeader_SDK(AriSdk::ARI_CsiFpUpdateHeader_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125534208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125534208, 0);
}

void AriSdk::ARI_CsiFpUpdateHeader_SDK::ARI_CsiFpUpdateHeader_SDK(AriSdk::ARI_CsiFpUpdateHeader_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpUpdateHeader_SDK::~ARI_CsiFpUpdateHeader_SDK(AriSdk::ARI_CsiFpUpdateHeader_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpUpdateHeader_SDK::pack(AriSdk::ARI_CsiFpUpdateHeader_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiFpUpdateHeaderData_SDK::ARI_CsiFpUpdateHeaderData_SDK(AriSdk::ARI_CsiFpUpdateHeaderData_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117145600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117145600, 0);
}

void AriSdk::ARI_CsiFpUpdateHeaderData_SDK::ARI_CsiFpUpdateHeaderData_SDK(AriSdk::ARI_CsiFpUpdateHeaderData_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiFpUpdateHeaderData_SDK::~ARI_CsiFpUpdateHeaderData_SDK(AriSdk::ARI_CsiFpUpdateHeaderData_SDK *this)
{
  *this = &unk_2A1D3CA80;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C404247E4FDLL);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiFpUpdateHeaderData_SDK::~ARI_CsiFpUpdateHeaderData_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiFpUpdateHeaderData_SDK::pack(AriSdk::ARI_CsiFpUpdateHeaderData_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x50uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAtReq_SDK::ARI_CsiIceAtReq_SDK(AriSdk::ARI_CsiIceAtReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125468672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125468672, 0);
}

void AriSdk::ARI_CsiIceAtReq_SDK::ARI_CsiIceAtReq_SDK(AriSdk::ARI_CsiIceAtReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAtReq_SDK::~ARI_CsiIceAtReq_SDK(AriSdk::ARI_CsiIceAtReq_SDK *this)
{
  *this = &unk_2A1D3CAB8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402633B4A5);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAtReq_SDK::~ARI_CsiIceAtReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAtReq_SDK::pack(AriSdk::ARI_CsiIceAtReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xC04uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAtRsp_SDK::ARI_CsiIceAtRsp_SDK(AriSdk::ARI_CsiIceAtRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117080064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117080064, 0);
}

void AriSdk::ARI_CsiIceAtRsp_SDK::ARI_CsiIceAtRsp_SDK(AriSdk::ARI_CsiIceAtRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAtRsp_SDK::~ARI_CsiIceAtRsp_SDK(AriSdk::ARI_CsiIceAtRsp_SDK *this)
{
  *this = &unk_2A1D3CAF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402633B4A5);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAtRsp_SDK::~ARI_CsiIceAtRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAtRsp_SDK::pack(AriSdk::ARI_CsiIceAtRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xC04uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAtExtReq_SDK::ARI_CsiIceAtExtReq_SDK(AriSdk::ARI_CsiIceAtExtReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125140992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125140992, 0);
}

void AriSdk::ARI_CsiIceAtExtReq_SDK::ARI_CsiIceAtExtReq_SDK(AriSdk::ARI_CsiIceAtExtReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAtExtReq_SDK::~ARI_CsiIceAtExtReq_SDK(AriSdk::ARI_CsiIceAtExtReq_SDK *this)
{
  *this = &unk_2A1D3CB28;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4026944624);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAtExtReq_SDK::~ARI_CsiIceAtExtReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAtExtReq_SDK::pack(AriSdk::ARI_CsiIceAtExtReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xC0CuLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAtExtRsp_SDK::ARI_CsiIceAtExtRsp_SDK(AriSdk::ARI_CsiIceAtExtRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116752384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116752384, 0);
}

void AriSdk::ARI_CsiIceAtExtRsp_SDK::ARI_CsiIceAtExtRsp_SDK(AriSdk::ARI_CsiIceAtExtRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAtExtRsp_SDK::~ARI_CsiIceAtExtRsp_SDK(AriSdk::ARI_CsiIceAtExtRsp_SDK *this)
{
  *this = &unk_2A1D3CB60;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4026944624);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAtExtRsp_SDK::~ARI_CsiIceAtExtRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAtExtRsp_SDK::pack(AriSdk::ARI_CsiIceAtExtRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xC0CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAtExtInd_SDK::ARI_CsiIceAtExtInd_SDK(AriSdk::ARI_CsiIceAtExtInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -108363776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -108363776, 0);
}

void AriSdk::ARI_CsiIceAtExtInd_SDK::ARI_CsiIceAtExtInd_SDK(AriSdk::ARI_CsiIceAtExtInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAtExtInd_SDK::~ARI_CsiIceAtExtInd_SDK(AriSdk::ARI_CsiIceAtExtInd_SDK *this)
{
  *this = &unk_2A1D3CB98;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4026944624);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAtExtInd_SDK::~ARI_CsiIceAtExtInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAtExtInd_SDK::pack(AriSdk::ARI_CsiIceAtExtInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xC0CuLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK::ARI_CsiIceBspSetApWakeIntervalReq_SDK(AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125108224, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125108224, 0);
}

void AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK::ARI_CsiIceBspSetApWakeIntervalReq_SDK(AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK::~ARI_CsiIceBspSetApWakeIntervalReq_SDK(AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK *this)
{
  *this = &unk_2A1D3CBD0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK::~ARI_CsiIceBspSetApWakeIntervalReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK::pack(AriSdk::ARI_CsiIceBspSetApWakeIntervalReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK(AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116719616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116719616, 0);
}

void AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK(AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK::~ARI_CsiIceBspSetApWakeIntervalRspCb_SDK(AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK *this)
{
  *this = &unk_2A1D3CC08;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK::~ARI_CsiIceBspSetApWakeIntervalRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK::pack(AriSdk::ARI_CsiIceBspSetApWakeIntervalRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceBspShutdownInd_SDK::ARI_CsiIceBspShutdownInd_SDK(AriSdk::ARI_CsiIceBspShutdownInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -108232704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -108232704, 0);
}

void AriSdk::ARI_CsiIceBspShutdownInd_SDK::ARI_CsiIceBspShutdownInd_SDK(AriSdk::ARI_CsiIceBspShutdownInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBspShutdownInd_SDK::~ARI_CsiIceBspShutdownInd_SDK(AriSdk::ARI_CsiIceBspShutdownInd_SDK *this)
{
  *this = &unk_2A1D3CC40;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBspShutdownInd_SDK::~ARI_CsiIceBspShutdownInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBspShutdownInd_SDK::pack(AriSdk::ARI_CsiIceBspShutdownInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceBspWakeInd_SDK::ARI_CsiIceBspWakeInd_SDK(AriSdk::ARI_CsiIceBspWakeInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -108298240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -108298240, 0);
}

void AriSdk::ARI_CsiIceBspWakeInd_SDK::ARI_CsiIceBspWakeInd_SDK(AriSdk::ARI_CsiIceBspWakeInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBspWakeInd_SDK::~ARI_CsiIceBspWakeInd_SDK(AriSdk::ARI_CsiIceBspWakeInd_SDK *this)
{
  *this = &unk_2A1D3CC78;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBspWakeInd_SDK::~ARI_CsiIceBspWakeInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBspWakeInd_SDK::pack(AriSdk::ARI_CsiIceBspWakeInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceFilerReadReq_SDK::ARI_CsiIceFilerReadReq_SDK(AriSdk::ARI_CsiIceFilerReadReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125698048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125698048, 0);
}

void AriSdk::ARI_CsiIceFilerReadReq_SDK::ARI_CsiIceFilerReadReq_SDK(AriSdk::ARI_CsiIceFilerReadReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceFilerReadReq_SDK::~ARI_CsiIceFilerReadReq_SDK(AriSdk::ARI_CsiIceFilerReadReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceFilerReadReq_SDK::pack(AriSdk::ARI_CsiIceFilerReadReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiIceFilerReadRspCb_SDK::ARI_CsiIceFilerReadRspCb_SDK(AriSdk::ARI_CsiIceFilerReadRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117309440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117309440, 0);
}

void AriSdk::ARI_CsiIceFilerReadRspCb_SDK::ARI_CsiIceFilerReadRspCb_SDK(AriSdk::ARI_CsiIceFilerReadRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceFilerReadRspCb_SDK::~ARI_CsiIceFilerReadRspCb_SDK(AriSdk::ARI_CsiIceFilerReadRspCb_SDK *this)
{
  *this = &unk_2A1D3CCE8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BD1F2613);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceFilerReadRspCb_SDK::~ARI_CsiIceFilerReadRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceFilerReadRspCb_SDK::pack(AriSdk::ARI_CsiIceFilerReadRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0xC00uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceFilerWriteReq_SDK::ARI_CsiIceFilerWriteReq_SDK(AriSdk::ARI_CsiIceFilerWriteReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125665280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125665280, 0);
}

void AriSdk::ARI_CsiIceFilerWriteReq_SDK::ARI_CsiIceFilerWriteReq_SDK(AriSdk::ARI_CsiIceFilerWriteReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceFilerWriteReq_SDK::~ARI_CsiIceFilerWriteReq_SDK(AriSdk::ARI_CsiIceFilerWriteReq_SDK *this)
{
  *this = &unk_2A1D3CD20;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BD1F2613);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceFilerWriteReq_SDK::~ARI_CsiIceFilerWriteReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceFilerWriteReq_SDK::pack(AriSdk::ARI_CsiIceFilerWriteReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xC00uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceFilerWriteRspCb_SDK::ARI_CsiIceFilerWriteRspCb_SDK(AriSdk::ARI_CsiIceFilerWriteRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117276672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117276672, 0);
}

void AriSdk::ARI_CsiIceFilerWriteRspCb_SDK::ARI_CsiIceFilerWriteRspCb_SDK(AriSdk::ARI_CsiIceFilerWriteRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceFilerWriteRspCb_SDK::~ARI_CsiIceFilerWriteRspCb_SDK(AriSdk::ARI_CsiIceFilerWriteRspCb_SDK *this)
{
  *this = &unk_2A1D3CD58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceFilerWriteRspCb_SDK::~ARI_CsiIceFilerWriteRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceFilerWriteRspCb_SDK::pack(AriSdk::ARI_CsiIceFilerWriteRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiMonMemoryStatusReq_SDK::ARI_CsiMonMemoryStatusReq_SDK(AriSdk::ARI_CsiMonMemoryStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125435904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125435904, 0);
}

void AriSdk::ARI_CsiMonMemoryStatusReq_SDK::ARI_CsiMonMemoryStatusReq_SDK(AriSdk::ARI_CsiMonMemoryStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMonMemoryStatusReq_SDK::~ARI_CsiMonMemoryStatusReq_SDK(AriSdk::ARI_CsiMonMemoryStatusReq_SDK *this)
{
  *this = &unk_2A1D3CD90;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMonMemoryStatusReq_SDK::~ARI_CsiMonMemoryStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMonMemoryStatusReq_SDK::pack(AriSdk::ARI_CsiMonMemoryStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK::ARI_CsiMonMemoryStatusRspCb_SDK(AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117047296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117047296, 0);
}

void AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK::ARI_CsiMonMemoryStatusRspCb_SDK(AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK::~ARI_CsiMonMemoryStatusRspCb_SDK(AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK *this)
{
  *this = &unk_2A1D3CDC8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40504FFAC1);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK::~ARI_CsiMonMemoryStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK::pack(AriSdk::ARI_CsiMonMemoryStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x18uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK::ARI_CsiSahClearExceptionStoreReq_SDK(AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125206528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125206528, 0);
}

void AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK::ARI_CsiSahClearExceptionStoreReq_SDK(AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK::~ARI_CsiSahClearExceptionStoreReq_SDK(AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK::pack(AriSdk::ARI_CsiSahClearExceptionStoreReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK::ARI_CsiSahClearCrashResportRspCb_SDK(AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116817920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116817920, 0);
}

void AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK::ARI_CsiSahClearCrashResportRspCb_SDK(AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK::~ARI_CsiSahClearCrashResportRspCb_SDK(AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK *this)
{
  *this = &unk_2A1D3CE38;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK::~ARI_CsiSahClearCrashResportRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK::pack(AriSdk::ARI_CsiSahClearCrashResportRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSahGetCrashReportReq_SDK::ARI_CsiSahGetCrashReportReq_SDK(AriSdk::ARI_CsiSahGetCrashReportReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125239296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125239296, 0);
}

void AriSdk::ARI_CsiSahGetCrashReportReq_SDK::ARI_CsiSahGetCrashReportReq_SDK(AriSdk::ARI_CsiSahGetCrashReportReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahGetCrashReportReq_SDK::~ARI_CsiSahGetCrashReportReq_SDK(AriSdk::ARI_CsiSahGetCrashReportReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahGetCrashReportReq_SDK::pack(AriSdk::ARI_CsiSahGetCrashReportReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK::ARI_CsiSahGetCrashReportRspCb_SDK(AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116850688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116850688, 0);
}

void AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK::ARI_CsiSahGetCrashReportRspCb_SDK(AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK::~ARI_CsiSahGetCrashReportRspCb_SDK(AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK *this)
{
  *this = &unk_2A1D3CEA8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK::~ARI_CsiSahGetCrashReportRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK::pack(AriSdk::ARI_CsiSahGetCrashReportRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSahGetDebugLogReq_SDK::ARI_CsiSahGetDebugLogReq_SDK(AriSdk::ARI_CsiSahGetDebugLogReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125173760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125173760, 0);
}

void AriSdk::ARI_CsiSahGetDebugLogReq_SDK::ARI_CsiSahGetDebugLogReq_SDK(AriSdk::ARI_CsiSahGetDebugLogReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahGetDebugLogReq_SDK::~ARI_CsiSahGetDebugLogReq_SDK(AriSdk::ARI_CsiSahGetDebugLogReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahGetDebugLogReq_SDK::pack(AriSdk::ARI_CsiSahGetDebugLogReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK::ARI_CsiSahGetDebugLogRspCb_SDK(AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116785152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116785152, 0);
}

void AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK::ARI_CsiSahGetDebugLogRspCb_SDK(AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK::~ARI_CsiSahGetDebugLogRspCb_SDK(AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK *this)
{
  *this = &unk_2A1D3CF18;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B74A6528);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK::~ARI_CsiSahGetDebugLogRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK::pack(AriSdk::ARI_CsiSahGetDebugLogRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x1008uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124551168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124551168, 0);
}

void AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::~ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK *this)
{
  *this = &unk_2A1D3CF50;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::~ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::pack(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116162560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116162560, 0);
}

void AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::~ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK *this)
{
  *this = &unk_2A1D3CF88;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::~ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::pack(AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::ARI_FactoryGetNvItemsSettingReq_SDK(AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125730816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125730816, 0);
}

void AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::ARI_FactoryGetNvItemsSettingReq_SDK(AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::~ARI_FactoryGetNvItemsSettingReq_SDK(AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::pack(AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -117342208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -117342208, 0);
}

void AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::~ARI_FactoryGetNvItemsSettingRspCb_SDK(AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK *this)
{
  *this = &unk_2A1D3CFF8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::~ARI_FactoryGetNvItemsSettingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::pack(AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_FactorySetNvItemsSettingReq_SDK::ARI_FactorySetNvItemsSettingReq_SDK(AriSdk::ARI_FactorySetNvItemsSettingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -125075456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -125075456, 0);
}

void AriSdk::ARI_FactorySetNvItemsSettingReq_SDK::ARI_FactorySetNvItemsSettingReq_SDK(AriSdk::ARI_FactorySetNvItemsSettingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}