uint64_t AriFramer::init(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x29C258610](a3 == 0, "msg_cb == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", 17);
  strlcpy((a1 + 96), a2, 0x40uLL);
  *(a1 + 160) = AriFramer::IpcDataCb;
  *(a1 + 168) = a5;
  *(a1 + 176) = 1;
  *(a1 + 184) = a1;
  result = AriOsa::IpcInit(a1);
  if (!result)
  {
    *(a1 + 32968) = a4;
    *(a1 + 32976) = a3;
  }

  return result;
}

void AriFramer::IpcDataCb(AriFramer *this, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29C258610](a3 == 0, "cbCtx == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", 38);
  LogLevels = Ari::GetLogLevels(v7);
  if ((LogLevels & 4) == 0)
  {
    goto LABEL_7;
  }

  OsLog = AriOsa::GetOsLog(LogLevels);
  if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
  {
    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "IpcDataCb", v10);
    v25 = v31 >= 0 ? __p : __p[0];
    *buf = 136316418;
    *&buf[4] = "ari";
    v33 = 2080;
    v34 = v25;
    v35 = 1024;
    v36 = 40;
    v37 = 2048;
    v38 = a3;
    v39 = 2048;
    v40 = this;
    v41 = 2048;
    v42 = a2;
    _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Owner(%p) data(%p) size(%zu)", buf, 0x3Au);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

  AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "IpcDataCb", v10);
  v12 = v35 >= 0 ? buf : *buf;
  AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Owner(%p) data(%p) size(%zu)", v11, v12, 40, a3, this, a2);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(*buf);
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_7:
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  v13 = *(a3 + 32968);
  if (!v13)
  {
    v18 = AriFramer::fmrMsgCb(a3, this, a2);
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v14 = *(a3 + 48);
  v27[2] = *(a3 + 32);
  v27[3] = v14;
  v27[4] = *(a3 + 64);
  v15 = *(a3 + 16);
  v27[0] = *a3;
  v27[1] = v15;
  v16 = *(a3 + 88);
  v28 = *(a3 + 80);
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = v13(this, a2, v27);
  v18 = object;
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
LABEL_16:
    v19 = Ari::GetLogLevels(v18);
    if ((v19 & 8) != 0)
    {
      v20 = AriOsa::GetOsLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "IpcDataCb", v21);
        v26 = v31 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v33 = 2080;
        v34 = v26;
        v35 = 1024;
        v36 = 54;
        _os_log_error_impl(&dword_2962B3000, v20, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Not able to handle ARI_RT_IPC_DATA", buf, 0x1Cu);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "IpcDataCb", v21);
      if (v35 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Not able to handle ARI_RT_IPC_DATA", v22, v23, 54);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_2962B3DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  if (*(v26 - 121) < 0)
  {
    operator delete(*(v26 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriFramer::fmrMsgCb(AriFramer *this, unsigned __int8 *a2, size_t a3)
{
  v113 = *MEMORY[0x29EDCA608];
  v4 = this + 0x8000;
  v5 = *(this + 4122);
  LogLevels = Ari::GetLogLevels(this);
  if (!v5)
  {
    v69 = a2;
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v71);
        v90 = v99 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v101 = 2080;
        v102 = v90;
        v103 = 1024;
        v104 = 66;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) clientAriMsgCB is NULL", buf, 0x1Cu);
        if (v99 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v71);
      if (v103 >= 0)
      {
        v73 = buf;
      }

      else
      {
        v73 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) clientAriMsgCB is NULL", v72, v73, 66);
      v69 = a2;
      if (SHIBYTE(v103) < 0)
      {
        operator delete(*buf);
      }
    }

    if (!v69 || *(this + 176) != 1)
    {
      goto LABEL_119;
    }

    v74 = v69;
LABEL_118:
    free(v74);
LABEL_119:
    result = 0xFFFFFFFFLL;
    goto LABEL_132;
  }

  if ((LogLevels & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = AriOsa::GetOsLog(LogLevels);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v8);
    v88 = v99 >= 0 ? __p : __p[0];
    v89 = *(v4 + 24);
    *buf = 136316162;
    *&buf[4] = "ari";
    v101 = 2080;
    v102 = v88;
    v103 = 1024;
    v104 = 85;
    v105 = 2048;
    v106 = v89;
    v107 = 2048;
    v108 = a2;
    _os_log_debug_impl(&dword_2962B3000, v7, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) entering with cachedSize(%zu) data(%p)", buf, 0x30u);
    if (v99 < 0)
    {
      operator delete(__p[0]);
    }
  }

  AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v8);
  v10 = v103 >= 0 ? buf : *buf;
  AriOsa::LogToDefaultStringLogger(4, "(%s:%d) entering with cachedSize(%zu) data(%p)", v9, v10, 85, *(v4 + 24), a2);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(*buf);
    if (a3)
    {
LABEL_9:
      v11 = 0;
      v12 = this + 192;
      while (1)
      {
        v13 = MEMORY[0x29C258610]((*(v4 + 24) & 0xFFFFFFFFFFFF8000) != 0, "sizeof(scratchBuffer) < cachedSize", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", 90);
        v14 = 0x7FFFLL - *(v4 + 24);
        if (a3 >= v14)
        {
          v15 = 0x7FFFLL - *(v4 + 24);
        }

        else
        {
          v15 = a3;
        }

        v16 = Ari::GetLogLevels(v13);
        if ((v16 & 4) != 0)
        {
          v17 = AriOsa::GetOsLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v18);
            v60 = __p;
            if (v99 < 0)
            {
              v60 = __p[0];
            }

            v61 = *(v4 + 24);
            *buf = 136316674;
            *&buf[4] = "ari";
            v101 = 2080;
            v102 = v60;
            v103 = 1024;
            v104 = 97;
            v105 = 2048;
            v106 = a3;
            v107 = 2048;
            v108 = v11;
            v109 = 2048;
            v110 = v61;
            v111 = 2048;
            v112 = v15;
            _os_log_debug_impl(&dword_2962B3000, v17, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) TOP newDataSizeRemains(%zu) newDataSizeConsumed(%zu) cachedSize(%zu) newDataToConsume(%zu)", buf, 0x44u);
            if (v99 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v18);
          v20 = buf;
          if (v103 < 0)
          {
            v20 = *buf;
          }

          v16 = AriOsa::LogToDefaultStringLogger(4, "(%s:%d) TOP newDataSizeRemains(%zu) newDataSizeConsumed(%zu) cachedSize(%zu) newDataToConsume(%zu)", v19, v20, 97, a3, v11, *(v4 + 24), v15);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(*buf);
          }
        }

        if (a2)
        {
          memcpy(&v12[*(v4 + 24)], &v11[a2], v15);
        }

        else
        {
          v21 = Ari::GetLogLevels(v16);
          if ((v21 & 8) != 0)
          {
            v22 = AriOsa::GetOsLog(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v23);
              v66 = __p;
              if (v99 < 0)
              {
                v66 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = "ari";
              v101 = 2080;
              v102 = v66;
              v103 = 1024;
              v104 = 104;
              v105 = 2048;
              v106 = v15;
              _os_log_error_impl(&dword_2962B3000, v22, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Data is NULL, but IpcRead also fails for size (%zu)", buf, 0x26u);
              if (v99 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v23);
            v25 = buf;
            if (v103 < 0)
            {
              v25 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Data is NULL, but IpcRead also fails for size (%zu)", v24, v25, 104, v15);
            if (SHIBYTE(v103) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v26 = a3 - v15;
        v27 = a3 <= v14 ? 0 : a3 - v15;
        v28 = *(v4 + 24) + v15;
        v97 = -1;
        v96 = -1;
        v29 = AriFramer_HeaderMagicScan(v12, v28, &v97, &v96);
        v30 = 0;
        v31 = this + 192;
        if (v29)
        {
          break;
        }

LABEL_45:
        if (v97 < 0)
        {
LABEL_60:
          v46 = Ari::GetLogLevels(v29);
          if ((v46 & 4) != 0)
          {
            v51 = AriOsa::GetOsLog(v46);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v52);
              v64 = __p;
              if (v99 < 0)
              {
                v64 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "ari";
              v101 = 2080;
              v102 = v64;
              v103 = 1024;
              v104 = 160;
              _os_log_debug_impl(&dword_2962B3000, v51, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) No unfinished data, resetting cache", buf, 0x1Cu);
              if (v99 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v52);
            v54 = buf;
            if (v103 < 0)
            {
              v54 = *buf;
            }

            v46 = AriOsa::LogToDefaultStringLogger(4, "(%s:%d) No unfinished data, resetting cache", v53, v54, 160);
            if (SHIBYTE(v103) < 0)
            {
              operator delete(*buf);
            }
          }

          *(v4 + 24) = 0;
        }

        else
        {
          v39 = Ari::GetLogLevels(v29);
          if ((v39 & 4) != 0)
          {
            v40 = AriOsa::GetOsLog(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v41);
              v65 = __p;
              if (v99 < 0)
              {
                v65 = __p[0];
              }

              *buf = 136316162;
              *&buf[4] = "ari";
              v101 = 2080;
              v102 = v65;
              v103 = 1024;
              v104 = 154;
              v105 = 2048;
              v106 = v30 + v97;
              v107 = 2048;
              v108 = (v28 - v106);
              _os_log_debug_impl(&dword_2962B3000, v40, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Cache unfinished message @ index(%zu) and sz(%zu)", buf, 0x30u);
              if (v99 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v41);
            v43 = buf;
            if (v103 < 0)
            {
              v43 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Cache unfinished message @ index(%zu) and sz(%zu)", v42, v43, 154, v30 + v97, v28 - (v30 + v97));
            if (SHIBYTE(v103) < 0)
            {
              operator delete(*buf);
            }
          }

          v44 = v97;
          v45 = v28 - v97 - v30;
          *(v4 + 24) = v45;
          v46 = memmove(v12, &v31[v44], v45);
        }

        v55 = Ari::GetLogLevels(v46);
        v11 += v15;
        if ((v55 & 4) != 0)
        {
          v56 = AriOsa::GetOsLog(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v57);
            v62 = __p;
            if (v99 < 0)
            {
              v62 = __p[0];
            }

            v63 = *(v4 + 24);
            *buf = 136316418;
            *&buf[4] = "ari";
            v101 = 2080;
            v102 = v62;
            v103 = 1024;
            v104 = 164;
            v105 = 2048;
            v106 = v27;
            v107 = 2048;
            v108 = v11;
            v109 = 2048;
            v110 = v63;
            _os_log_debug_impl(&dword_2962B3000, v56, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) BOTTOM newDataSizeRemains(%zu) newDataSizeConsumed(%zu) cachedSize(%zu)", buf, 0x3Au);
            if (v99 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v57);
          v59 = buf;
          if (v103 < 0)
          {
            v59 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) BOTTOM newDataSizeRemains(%zu) newDataSizeConsumed(%zu) cachedSize(%zu)", v58, v59, 164, v27, v11, *(v4 + 24));
          if (SHIBYTE(v103) < 0)
          {
            operator delete(*buf);
          }
        }

        a3 = v26;
        if (!v27)
        {
          goto LABEL_121;
        }
      }

      while (1)
      {
        v32 = v30 + v97 + v96 > 0x7FFE;
        v29 = Ari::GetLogLevels(v29);
        if (v32)
        {
          if ((v29 & 8) != 0)
          {
            v47 = AriOsa::GetOsLog(v29);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v48);
              v67 = __p;
              if (v99 < 0)
              {
                v67 = __p[0];
              }

              v68 = *(v4 + 24);
              *buf = 136316162;
              *&buf[4] = "ari";
              v101 = 2080;
              v102 = v67;
              v103 = 1024;
              v104 = 130;
              v105 = 2048;
              v106 = v96;
              v107 = 2048;
              v108 = v68;
              _os_log_error_impl(&dword_2962B3000, v47, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Illegal message len(%zu), resetting cachedSize(%zu)", buf, 0x30u);
              if (v99 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v48);
            v50 = buf;
            if (v103 < 0)
            {
              v50 = *buf;
            }

            v29 = AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Illegal message len(%zu), resetting cachedSize(%zu)", v49, v50, 130, v96, *(v4 + 24));
            if (SHIBYTE(v103) < 0)
            {
              operator delete(*buf);
            }
          }

          v97 = -1;
          goto LABEL_60;
        }

        if ((v29 & 4) != 0)
        {
          v33 = AriOsa::GetOsLog(v29);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v34);
            v38 = __p;
            if (v99 < 0)
            {
              v38 = __p[0];
            }

            *buf = 136316162;
            *&buf[4] = "ari";
            v101 = 2080;
            v102 = v38;
            v103 = 1024;
            v104 = 136;
            v105 = 2048;
            v106 = v30 + v97;
            v107 = 2048;
            v108 = v96;
            _os_log_debug_impl(&dword_2962B3000, v33, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Got message @ index(%zu) and sz(%zu)", buf, 0x30u);
            if (v99 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v34);
          v36 = buf;
          if (v103 < 0)
          {
            v36 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Got message @ index(%zu) and sz(%zu)", v35, v36, 136, v30 + v97, v96);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(*buf);
          }
        }

        v37 = (*(v4 + 26))(&v31[v97], v96);
        if (v37)
        {
          break;
        }

        v30 += v97 + v96;
        v97 = -1;
        v31 = &v12[v30];
        v29 = AriFramer_HeaderMagicScan(&v12[v30], v28 - v30, &v97, &v96);
        if ((v29 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v75 = Ari::GetLogLevels(v37);
      if ((v75 & 8) != 0)
      {
        v76 = AriOsa::GetOsLog(v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v77);
          v91 = v99 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v101 = 2080;
          v102 = v91;
          v103 = 1024;
          v104 = 141;
          _os_log_error_impl(&dword_2962B3000, v76, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Not able to process ARI message due to internal error", buf, 0x1Cu);
          if (v99 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v77);
        if (v103 >= 0)
        {
          v79 = buf;
        }

        else
        {
          v79 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Not able to process ARI message due to internal error", v78, v79, 141);
        if (SHIBYTE(v103) < 0)
        {
          operator delete(*buf);
        }
      }

      v74 = a2;
      if (!a2 || *(this + 176) != 1)
      {
        goto LABEL_119;
      }

      goto LABEL_118;
    }
  }

  else
  {
LABEL_8:
    if (a3)
    {
      goto LABEL_9;
    }
  }

LABEL_121:
  v81 = a2;
  if (a2 && *(this + 176) == 1)
  {
    free(a2);
  }

  v82 = Ari::GetLogLevels(v81);
  if ((v82 & 4) != 0)
  {
    v83 = AriOsa::GetOsLog(v82);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v84);
      v92 = v99 >= 0 ? __p : __p[0];
      v93 = *(v4 + 24);
      *buf = 136315906;
      *&buf[4] = "ari";
      v101 = 2080;
      v102 = v92;
      v103 = 1024;
      v104 = 180;
      v105 = 2048;
      v106 = v93;
      _os_log_debug_impl(&dword_2962B3000, v83, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) exiting with cachedSize(%zu)", buf, 0x26u);
      if (v99 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_fmr.cpp", "fmrMsgCb", v84);
    if (v103 >= 0)
    {
      v86 = buf;
    }

    else
    {
      v86 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) exiting with cachedSize(%zu)", v85, v86, 180, *(v4 + 24));
    if (SHIBYTE(v103) < 0)
    {
      operator delete(*buf);
    }
  }

  result = 0;
LABEL_132:
  v87 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962B4CDC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriClientProxy::AriClientProxyDebugDump(Ari *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v16, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "AriClientProxyDebugDump", v8);
      v13 = v16[0];
      if (v17 >= 0)
      {
        v13 = v16;
      }

      v14 = (*a3 + 16);
      if (*(*a3 + 39) < 0)
      {
        v14 = *v14;
      }

      v15 = *(*a3 + 8);
      *__p = 136316674;
      *&__p[4] = "ari";
      v19 = 2080;
      v20 = v13;
      v21 = 1024;
      v22 = 28;
      v23 = 1024;
      v24 = a1;
      v25 = 2080;
      v26 = v14;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = a2;
      _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) #%03d Client(%s-%d) ts(%u)", __p, 0x38u);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "AriClientProxyDebugDump", v8);
    if (v21 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = *__p;
    }

    v11 = (*a3 + 16);
    if (*(*a3 + 39) < 0)
    {
      v11 = *v11;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) #%03d Client(%s-%d) ts(%u)", v9, v10, 28, a1, v11, *(*a3 + 8), a2);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*__p);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_2962B4F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Ari::AriClientGcdProxy *Ari::AriClientGcdProxy::AriClientGcdProxy(Ari::AriClientGcdProxy *this, char *a2, NSObject *a3)
{
  *this = &unk_2A1D46380;
  std::string::basic_string[abi:ne200100]<0>(this + 16, a2);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_2A1D46180;
  *(this + 7) = a3;
  *(this + 8) = 0;
  *(this + 9) = 0;
  dispatch_retain(a3);
  v5 = dlopen("/usr/lib/libARI.dylib", 1);
  *(this + 12) = v5;
  MEMORY[0x29C258610](v5 == 0, "hostlibHandle == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 54);
  v6 = dlsym(*(this + 12), "AriClientResponseCallback");
  *(this + 8) = v6;
  MEMORY[0x29C258610](v6 == 0, "clientResponseCallback == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 57);
  v7 = dlsym(*(this + 12), "AriClientIndicationCallback");
  *(this + 9) = v7;
  MEMORY[0x29C258610](v7 == 0, "clientIndicationCallback == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 60);
  v8 = dlsym(*(this + 12), "AriClientNotifyEventCallback");
  *(this + 10) = v8;
  MEMORY[0x29C258610](v8 == 0, "clientNotifyEventCallback == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 63);
  v9 = dlsym(*(this + 12), "AriClientCancelTrxCallback");
  *(this + 11) = v9;
  MEMORY[0x29C258610](v9 == 0, "clientCancelTrxCallback == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 66);
  return this;
}

void sub_2962B50C4(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *v1 = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriClientGcdProxy::~AriClientGcdProxy(Ari::AriClientGcdProxy *this)
{
  *this = &unk_2A1D46180;
  dispatch_release(*(this + 7));
  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  dlclose(*(this + 12));
  *(this + 12) = 0;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1D46380;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  Ari::AriClientGcdProxy::~AriClientGcdProxy(this);

  JUMPOUT(0x29C2589F0);
}

uint64_t Ari::AriClientGcdProxy::getConnectDescription@<X0>(Ari::AriClientGcdProxy *this@<X0>, std::string *a2@<X8>)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v4;
  v25[8] = v4;
  v25[5] = v4;
  v25[6] = v4;
  v25[3] = v4;
  v25[4] = v4;
  v25[1] = v4;
  v25[2] = v4;
  v24 = v4;
  v25[0] = v4;
  *v22 = v4;
  v23 = v4;
  v21[1] = v4;
  v21[2] = v4;
  v20 = v4;
  v21[0] = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v5 = v20;
  *(&v21[-1] + *(v20 - 24) + 8) |= 0x200u;
  *(&v21[-1] + *(v5 - 24) + 8) = *(&v21[-1] + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x29C2588E0](&v20, *(this + 7));
  memset(a2, 170, sizeof(std::string));
  label = dispatch_queue_get_label(*(this + 7));
  std::string::basic_string[abi:ne200100]<0>(&v16, label);
  v7 = std::string::insert(&v16, 0, "dispq(", 6uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 64);
  v18 = v17;
  memset(&v17, 0, sizeof(v17));
  std::ostringstream::str[abi:ne200100](__p, &v20);
  if ((v15 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v18, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v19, 41);
  *a2 = v19;
  memset(&v19, 0, sizeof(v19));
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  *&v20 = *MEMORY[0x29EDC9538];
  *(&v21[-1] + *(v20 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v20 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  *(&v20 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x29C2589B0](v25);
}

void sub_2962B54E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::ostringstream::~ostringstream(&a42);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_2962B56B8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2589B0](v1);
  _Unwind_Resume(a1);
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

_BYTE *std::ostringstream::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 104);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 56);
    if (v5 < v6)
    {
      *(a2 + 96) = v6;
      v5 = v6;
    }

    v7 = (a2 + 48);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 24);
    v5 = *(a2 + 40);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C2589B0](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t Ari::AriClientGcdProxy::forwardResponse(uint64_t a1, AriMsg ***a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (!v3 || (v5 = *(a1 + 40), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  MEMORY[0x29C258610](*(a1 + 56) == 0, "conn == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 102);
  BufCtx = AriMsg::GetBufCtx(**a2, ((*a2)[1] - **a2));
  LogLevels = Ari::GetLogLevels(BufCtx);
  if ((LogLevels & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardResponse", v11);
      if (v34 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v23 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v23 = *v23;
      }

      v25 = **a2;
      v24 = (*a2)[1];
      (*(*a1 + 24))(v31, a1);
      v26 = v31;
      if (v32 < 0)
      {
        v26 = v31[0];
      }

      *buf = 136316674;
      *&buf[4] = "ari";
      v36 = 2080;
      v37 = v22;
      v38 = 1024;
      v39 = 106;
      v40 = 2080;
      v41 = v23;
      v42 = 2048;
      v43 = v24 - v25;
      v44 = 2080;
      v45 = v26;
      v46 = 1024;
      v47 = BufCtx;
      _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Msg for client(%s) Type(GCD) size(%zu) %s ctx(0x%08X)", buf, 0x40u);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = buf;
    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardResponse", v11);
    if (v38 < 0)
    {
      v12 = *buf;
    }

    v13 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v13 = *v13;
    }

    v15 = **a2;
    v14 = (*a2)[1];
    (*(*a1 + 24))(__p, a1);
    if (v34 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Msg for client(%s) Type(GCD) size(%zu) %s ctx(0x%08X)", v16, v12, 106, v13, v14 - v15, v17, BufCtx);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(*buf);
    }
  }

  v18 = *(a1 + 56);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3Ari17AriClientGcdProxy15forwardResponseENSt3__110shared_ptrINS1_6vectorIhNS1_9allocatorIhEEEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = a1;
  block[5] = v5;
  v28 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = a2[1];
  v29 = *a2;
  v30 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v18, block);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  std::__shared_weak_count::__release_weak(v7);
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962B5D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void ___ZN3Ari17AriClientGcdProxy15forwardResponseENSt3__110shared_ptrINS1_6vectorIhNS1_9allocatorIhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        (*(v3 + 64))(**(a1 + 56), *(*(a1 + 56) + 8) - **(a1 + 56));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void *__copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3Ari17AriClientGcdProxyEEE56c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3Ari17AriClientGcdProxyEEE56c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t Ari::AriClientGcdProxy::forwardIndication(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (!v3 || (v5 = *(a1 + 40), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  MEMORY[0x29C258610](*(a1 + 56) == 0, "conn == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 123);
  BufGmid = AriMsg::GetBufGmid(**a2, (*(*a2 + 8) - **a2));
  LogLevels = Ari::GetLogLevels(BufGmid);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardIndication", v11);
      if (v32 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = *(*a2 + 8) - **a2;
      v15 = *(a1 + 56);
      label = dispatch_queue_get_label(v15);
      *buf = 136316930;
      *&buf[4] = "ari";
      v34 = 2080;
      v35 = v12;
      v36 = 1024;
      v37 = 127;
      v38 = 1024;
      v39 = BufGmid;
      v40 = 2080;
      v41 = v13;
      v42 = 2048;
      v43 = v14;
      v44 = 2080;
      v45 = label;
      v46 = 2048;
      v47 = v15;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Indication(0x%08x) for client(%s) Type(GCD) size(%zu) dispq(%s:%p)", buf, 0x4Au);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardIndication", v11);
    if (v36 >= 0)
    {
      v17 = buf;
    }

    else
    {
      v17 = *buf;
    }

    v18 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v18 = *v18;
    }

    v19 = *(*a2 + 8) - **a2;
    v20 = *(a1 + 56);
    v21 = dispatch_queue_get_label(v20);
    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Indication(0x%08x) for client(%s) Type(GCD) size(%zu) dispq(%s:%p)", v22, v17, 127, BufGmid, v18, v19, v21, v20);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(*buf);
    }
  }

  v23 = *(a1 + 56);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3Ari17AriClientGcdProxy17forwardIndicationENSt3__110shared_ptrINS1_6vectorIhNS1_9allocatorIhEEEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  block[5] = v5;
  v28 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = *(a2 + 8);
  v29 = *a2;
  v30 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v23, block);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  std::__shared_weak_count::__release_weak(v7);
  v25 = *MEMORY[0x29EDCA608];
  return 0;
}

void ___ZN3Ari17AriClientGcdProxy17forwardIndicationENSt3__110shared_ptrINS1_6vectorIhNS1_9allocatorIhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        (*(v3 + 72))(**(a1 + 56), *(*(a1 + 56) + 8) - **(a1 + 56));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t Ari::AriClientXpcProxy::AriClientXpcProxy(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = *a2;
  if (*(*a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v6 + 32), *(v6 + 40));
  }

  else
  {
    __p = *(v6 + 32);
  }

  *a1 = &unk_2A1D46380;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 16) = __p;
  }

  *a1 = &unk_2A1D46230;
  v7 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v8;
  }

  return a1;
}

void sub_2962B63D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v18 = *(v14 + 48);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *v14 = v16;
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriXpcServerConnection::getConnectDescription(Ari::AriXpcServerConnection *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void Ari::AriClientXpcProxy::~AriClientXpcProxy(void **this)
{
  *this = &unk_2A1D46230;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_2A1D46380;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  Ari::AriClientXpcProxy::~AriClientXpcProxy(this);

  JUMPOUT(0x29C2589F0);
}

void Ari::AriClientXpcProxy::getConnectDescription(Ari::AriClientXpcProxy *this@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v13, "] ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(this + 2);
  v7 = this + 16;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  v12 = std::string::append(&v14, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_2962B65C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpcProxy::forwardResponse(uint64_t a1, AriMsg ***a2)
{
  v35 = *MEMORY[0x29EDCA608];
  BufCtx = AriMsg::GetBufCtx(**a2, ((*a2)[1] - **a2));
  LogLevels = Ari::GetLogLevels(BufCtx);
  if ((LogLevels & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(v18, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardResponse", v7);
      v14 = v18[0];
      if (v19 >= 0)
      {
        v14 = v18;
      }

      v15 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v15 = *v15;
      }

      v16 = *(a1 + 8);
      v17 = (*a2)[1] - **a2;
      *__p = 136316930;
      *&__p[4] = "ari";
      v21 = 2080;
      v22 = v14;
      v23 = 1024;
      v24 = 178;
      v25 = 2080;
      v26 = v15;
      v27 = 2080;
      v28 = "XPC";
      v29 = 1024;
      v30 = v16;
      v31 = 2048;
      v32 = v17;
      v33 = 1024;
      v34 = BufCtx;
      _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Msg for client(%s) Type(%s) cid(0x%x) size(%zu) ctx(0x%08x)", __p, 0x46u);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardResponse", v7);
    if (v23 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    v10 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v10 = *v10;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Msg for client(%s) Type(%s) cid(0x%x) size(%zu) ctx(0x%08x)", v8, v9, 178, v10, "XPC", *(a1 + 8), (*a2)[1] - **a2, BufCtx);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*__p);
    }
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "AriCmd", 0x2001uLL);
  xpc_dictionary_set_data(v11, "AriMsg", **a2, (*a2)[1] - **a2);
  xpc_connection_send_message(*(*(a1 + 40) + 16), v11);
  xpc_release(v11);
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962B685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpcProxy::forwardIndication(uint64_t a1, AriMsg ***a2)
{
  v39 = *MEMORY[0x29EDCA608];
  BufGmid = AriMsg::GetBufGmid(**a2, ((*a2)[1] - **a2));
  LogLevels = Ari::GetLogLevels(BufGmid);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardIndication", v7);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v9 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v9 = *v9;
      }

      v11 = **a2;
      v10 = (*a2)[1];
      v12 = *(a1 + 40);
      if (*(v12 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(v12 + 32), *(v12 + 40));
      }

      else
      {
        v24 = *(v12 + 32);
      }

      v13 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v24.__r_.__value_.__r.__words[0];
      }

      *buf = 136316674;
      *&buf[4] = "ari";
      v27 = 2080;
      v28 = p_p;
      v29 = 1024;
      v30 = 193;
      v31 = 1024;
      v32 = BufGmid;
      v33 = 2080;
      v34 = v9;
      v35 = 2048;
      v36 = v10 - v11;
      v37 = 2080;
      v38 = v13;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Indication(0x%08x) for client(%s) Type(XPC) size(%zu) conn(%s)", buf, 0x40u);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = buf;
    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "forwardIndication", v7);
    if (v29 < 0)
    {
      v14 = *buf;
    }

    v16 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v16 = *v16;
    }

    v18 = **a2;
    v17 = (*a2)[1];
    v19 = *(a1 + 40);
    if (*(v19 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v19 + 32), *(v19 + 40));
    }

    else
    {
      __p = *(v19 + 32);
    }

    v20 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Indication(0x%08x) for client(%s) Type(XPC) size(%zu) conn(%s)", v15, v14, 193, BufGmid, v16, v17 - v18, v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v21, "AriCmd", 0x2002uLL);
  xpc_dictionary_set_data(v21, "AriMsg", **a2, (*a2)[1] - **a2);
  xpc_connection_send_message(*(*(a1 + 40) + 16), v21);
  xpc_release(v21);
  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962B6B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpcProxy::notifyEvent(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(v23, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "notifyEvent", v8);
      v18 = v24;
      v19 = v23[0];
      v20 = *(a1 + 8);
      v21 = asString();
      v22 = v23;
      *__p = 136316162;
      *&__p[4] = "ari";
      if (v18 < 0)
      {
        v22 = v19;
      }

      v26 = 2080;
      v27 = v22;
      v28 = 1024;
      v29 = 206;
      v30 = 1024;
      v31 = v20;
      v32 = 2080;
      v33 = v21;
      _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Notifying ARI event for cid 0x%x event %s", __p, 0x2Cu);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "notifyEvent", v8);
    v9 = SHIBYTE(v28);
    v10 = *__p;
    v11 = *(a1 + 8);
    v12 = asString();
    v14 = __p;
    if (v9 < 0)
    {
      v14 = v10;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Notifying ARI event for cid 0x%x event %s", v13, v14, 206, v11, v12);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*__p);
    }
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v15, "AriCmd", 0x2003uLL);
  xpc_dictionary_set_uint64(v15, "AriEvent", a2);
  xpc_dictionary_set_uint64(v15, "AriCid", *(a1 + 8));
  xpc_dictionary_set_uint64(v15, "AriToken", a3);
  xpc_connection_send_message(*(*(a1 + 40) + 16), v15);
  xpc_release(v15);
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962B6DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpcProxy::cancelTransaction(Ari::AriClientXpcProxy *this, uint64_t a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(this);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "cancelTransaction", v10);
      v11 = v24;
      v12 = __p[0];
      v13 = asString();
      v14 = __p;
      *buf = 136316418;
      *&buf[4] = "ari";
      if (v11 < 0)
      {
        v14 = v12;
      }

      v26 = 2080;
      v27 = v14;
      v28 = 1024;
      v29 = 221;
      v30 = 1024;
      v31 = a2;
      v32 = 1024;
      v33 = a3;
      v34 = 2080;
      v35 = v13;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Canceling transaction 0x%04x gmid 0x%x reason(%s)", buf, 0x32u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "cancelTransaction", v10);
    v15 = SHIBYTE(v28);
    v16 = *buf;
    v17 = asString();
    v19 = buf;
    if (v15 < 0)
    {
      v19 = v16;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Canceling transaction 0x%04x gmid 0x%x reason(%s)", v18, v19, 221, a2, a3, v17);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v20, "AriCmd", 0x2004uLL);
  xpc_dictionary_set_uint64(v20, "context_id", a2);
  xpc_dictionary_set_uint64(v20, "AriGmid", a3);
  xpc_dictionary_set_int64(v20, "AriResult", a4);
  xpc_connection_send_message(*(*(this + 5) + 16), v20);
  xpc_release(v20);
  v21 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962B704C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriXpcServer::init(Ari::AriXpcServer *this)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = getprogname();
  v3 = strncmp(v2, "CommCenter", 0x10uLL);
  if (!v3 || (v4 = getprogname(), v3 = strncmp(v4, "CommCenter-asan", 0x10uLL), !v3) || (v5 = getprogname(), v3 = strncmp(v5, "basebandd", 0x10uLL), !v3))
  {
    LogLevels = Ari::GetLogLevels(v3);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init", v8);
        v9 = v20 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v9;
        *&buf[22] = 1024;
        v22 = 260;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) XPC Listener: setting up connection", buf, 0x1Cu);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init", v8);
      if (buf[23] >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) XPC Listener: setting up connection", v10, v11, 260);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v13 = dispatch_queue_create("AriHostRt", v12);
    *(this + 2) = v13;
    MEMORY[0x29C258610](v13 == 0, "listenQueue == nullptr", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 262);
    mach_service = xpc_connection_create_mach_service("com.apple.commcenter.ari.rt.xpc", *(this + 2), 1uLL);
    *(this + 3) = mach_service;
    MEMORY[0x29C258610](mach_service == 0, "serverConn == nullptr", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 264);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LOBYTE(v22) = 0;
    v15 = *(this + 3);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN3Ari12AriXpcServer4initEv_block_invoke;
    handler[3] = &unk_29EE30D30;
    handler[4] = buf;
    handler[5] = this;
    xpc_connection_set_event_handler(v15, handler);
    xpc_connection_resume(*(this + 3));
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ARI_SERVER_READY_NOTIFICATION", 0, 0, 1u);
    _Block_object_dispose(buf, 8);
  }

  v17 = *MEMORY[0x29EDCA608];
}

void sub_2962B740C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

double Ari::AriXpcServer::AriXpcServer(Ari::AriXpcServer *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = 1065353216;
  return result;
}

{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = 1065353216;
  return result;
}

void Ari::AriXpcServer::~AriXpcServer(Ari::AriXpcServer *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void ___ZN3Ari12AriXpcServer4initEv_block_invoke(Ari *a1, void *a2)
{
  v73 = *MEMORY[0x29EDCA608];
  if (*(*(*(a1 + 4) + 8) + 24) == 1)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 0x20) == 0)
    {
      goto LABEL_69;
    }

    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(v63, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v5);
      v6 = v64;
      v7 = v63[0];
      asString(__p, a2);
      v8 = v63;
      if (v6 < 0)
      {
        v8 = v7;
      }

      if (v62 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v67 = 2080;
      v68 = v8;
      v69 = 1024;
      v70 = 273;
      v71 = 2080;
      v72 = v9;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Skipping event due to termination imminent: %s", buf, 0x26u);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }

      if (v64 < 0)
      {
        operator delete(v63[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v5);
    v10 = SHIBYTE(v69);
    v11 = *buf;
    asString(v63, a2);
    v13 = buf;
    if (v10 < 0)
    {
      v13 = v11;
    }

    if (v64 >= 0)
    {
      v14 = v63;
    }

    else
    {
      v14 = v63[0];
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Skipping event due to termination imminent: %s", v12, v13, 273, v14);
    goto LABEL_29;
  }

  v16 = *(a1 + 5);
  v17 = MEMORY[0x29C258DC0](a2);
  if (v17 == MEMORY[0x29EDCAA18])
  {
    v28 = Ari::GetLogLevels(v17);
    if ((v28 & 8) != 0)
    {
      v29 = AriOsa::GetOsLog(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v63, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v30);
        v57 = v64;
        v58 = v63[0];
        asString(__p, a2);
        v59 = v63;
        if (v57 < 0)
        {
          v59 = v58;
        }

        if (v62 >= 0)
        {
          v60 = __p;
        }

        else
        {
          v60 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "ari";
        v67 = 2080;
        v68 = v59;
        v69 = 1024;
        v70 = 280;
        v71 = 2080;
        v72 = v60;
        _os_log_error_impl(&dword_2962B3000, v29, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Connection error: %s", buf, 0x26u);
        if (v62 < 0)
        {
          operator delete(__p[0]);
        }

        if (v64 < 0)
        {
          operator delete(v63[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v30);
      v31 = SHIBYTE(v69);
      v32 = *buf;
      asString(v63, a2);
      v34 = buf;
      if (v31 < 0)
      {
        v34 = v32;
      }

      if (v64 >= 0)
      {
        v35 = v63;
      }

      else
      {
        v35 = v63[0];
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Connection error: %s", v33, v34, 280, v35);
      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      if (SHIBYTE(v69) < 0)
      {
        operator delete(*buf);
      }
    }

    if (a2 == MEMORY[0x29EDCA9D0])
    {
      *(*(*(a1 + 4) + 8) + 24) = 1;
    }
  }

  else
  {
    v18 = v17;
    v19 = MEMORY[0x29EDCA9F0];
    v20 = Ari::GetLogLevels(v17);
    if (v18 == v19)
    {
      if ((v20 & 0x20) != 0)
      {
        v36 = AriOsa::GetOsLog(v20);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(v63, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v37);
          v38 = v64;
          v39 = v63[0];
          asString(__p, a2);
          v40 = v63;
          if (v38 < 0)
          {
            v40 = v39;
          }

          if (v62 >= 0)
          {
            v41 = __p;
          }

          else
          {
            v41 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "ari";
          v67 = 2080;
          v68 = v40;
          v69 = 1024;
          v70 = 292;
          v71 = 2080;
          v72 = v41;
          _os_log_impl(&dword_2962B3000, v36, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) New xpc connection: %s", buf, 0x26u);
          if (v62 < 0)
          {
            operator delete(__p[0]);
          }

          if (v64 < 0)
          {
            operator delete(v63[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v37);
        v42 = SHIBYTE(v69);
        v43 = *buf;
        asString(v63, a2);
        v45 = buf;
        if (v42 < 0)
        {
          v45 = v43;
        }

        if (v64 >= 0)
        {
          v46 = v63;
        }

        else
        {
          v46 = v63[0];
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) New xpc connection: %s", v44, v45, 292, v46);
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (SHIBYTE(v69) < 0)
        {
          operator delete(*buf);
        }
      }

      v47 = v16[1];
      if (v47)
      {
        v48 = *v16;
        v49 = std::__shared_weak_count::lock(v47);
        if (v49)
        {
          v50 = v49;
          p_shared_weak_owners = &v49->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v49->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v65[0] = &unk_2A1D46420;
          v65[1] = v48;
          v65[2] = v50;
          v65[3] = v65;
          Ari::AriXpcServerConnection::create();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    if ((v20 & 8) != 0)
    {
      v21 = AriOsa::GetOsLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v63, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v22);
        v53 = v64;
        v54 = v63[0];
        asString(__p, a2);
        v55 = v63;
        if (v53 < 0)
        {
          v55 = v54;
        }

        if (v62 >= 0)
        {
          v56 = __p;
        }

        else
        {
          v56 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "ari";
        v67 = 2080;
        v68 = v55;
        v69 = 1024;
        v70 = 288;
        v71 = 2080;
        v72 = v56;
        _os_log_error_impl(&dword_2962B3000, v21, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unknown xpc event: %s", buf, 0x26u);
        if (v62 < 0)
        {
          operator delete(__p[0]);
        }

        if (v64 < 0)
        {
          operator delete(v63[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v22);
      v23 = SHIBYTE(v69);
      v24 = *buf;
      asString(v63, a2);
      v26 = buf;
      if (v23 < 0)
      {
        v26 = v24;
      }

      if (v64 >= 0)
      {
        v27 = v63;
      }

      else
      {
        v27 = v63[0];
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unknown xpc event: %s", v25, v26, 288, v27);
LABEL_29:
      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      if (SHIBYTE(v69) < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_69:
  v52 = *MEMORY[0x29EDCA608];
}

void sub_2962B7FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriXpcServer::dumpState(Ari::AriXpcServer *this)
{
  v22 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(this);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "dumpState", v4);
      v5 = v14 >= 0 ? __p : __p[0];
      v6 = *(this + 7);
      *buf = 136315906;
      *&buf[4] = "ari";
      v16 = 2080;
      v17 = v5;
      v18 = 1024;
      v19 = 316;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) XPC Server has %zu active connections:", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "dumpState", v4);
    if (v18 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) XPC Server has %zu active connections:", v7, v8, 316, *(this + 7));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }
  }

  for (i = *(this + 6); i; i = *i)
  {
    v10 = i[2];
    v11 = i[3];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Ari::AriXpcServerConnection::dumpState(v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_2962B83D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriXpcServerConnection::dumpState(Ari::AriXpcServerConnection *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v7 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3Ari22AriXpcServerConnection9dumpStateEv_block_invoke;
  block[3] = &__block_descriptor_tmp_89;
  block[4] = this;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  dispatch_async(v7, block);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v5);
}

uint64_t Ari::AriXpcServerConnection::AriXpcServerConnection(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  asString(a2);
  *(a1 + 64) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  std::__function::__value_func<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>::__value_func[abi:ne200100](a1 + 104, a3);
  xpc_retain(*(a1 + 16));
  *(a1 + 24) = dispatch_queue_create("ConnectionQueue (multiple instances)", 0);
  return a1;
}

void sub_2962B856C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>::~__value_func[abi:ne200100](v2 + 40);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void Ari::AriXpcServerConnection::~AriXpcServerConnection(Ari::AriXpcServerConnection *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    xpc_release(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
    *(this + 3) = 0;
  }

  std::__function::__value_func<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>::~__value_func[abi:ne200100](this + 104);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 64);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void Ari::AriXpcServerConnection::init(Ari::AriXpcServerConnection *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  xpc_connection_set_target_queue(*(this + 2), *(this + 3));
  v7 = *(this + 2);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN3Ari22AriXpcServerConnection4initEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_57_0;
  handler[4] = this;
  handler[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  xpc_connection_set_event_handler(v7, handler);
  xpc_connection_resume(*(this + 2));
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_2962B8710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void ___ZN3Ari22AriXpcServerConnection4initEv_block_invoke(void *a1, void *a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (v8)
      {
        v9 = MEMORY[0x29C258DC0](a2);
        if (v9 == MEMORY[0x29EDCAA00])
        {
          Ari::AriXpcServerConnection::handleClientMessage(v5, a2);
        }

        else
        {
          LogLevels = Ari::GetLogLevels(v9);
          if ((LogLevels & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(LogLevels);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v12);
              v45 = v57;
              v46 = __p[0];
              asString(v54, a2);
              v47 = __p;
              if (v45 < 0)
              {
                v47 = v46;
              }

              if (v55 >= 0)
              {
                v48 = v54;
              }

              else
              {
                v48 = v54[0];
              }

              *buf = 136315906;
              *&buf[4] = "ari";
              v59 = 2080;
              v60 = v47;
              v61 = 1024;
              v62 = 372;
              v63 = 2080;
              v64 = v48;
              _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) %s", buf, 0x26u);
              if (v55 < 0)
              {
                operator delete(v54[0]);
              }

              if (v57 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v12);
            v13 = SHIBYTE(v61);
            v14 = *buf;
            asString(__p, a2);
            v16 = buf;
            if (v13 < 0)
            {
              v16 = v14;
            }

            if (v57 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            LogLevels = AriOsa::LogToDefaultStringLogger(8, "(%s:%d) %s", v15, v16, 372, v17);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v61) < 0)
            {
              operator delete(*buf);
            }
          }

          v18 = Ari::GetLogLevels(LogLevels);
          if ((v18 & 8) != 0)
          {
            v19 = AriOsa::GetOsLog(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v20);
              v49 = __p[0];
              if (v57 >= 0)
              {
                v49 = __p;
              }

              v50 = (v5 + 32);
              if (*(v5 + 55) < 0)
              {
                v50 = *v50;
              }

              *buf = 136315906;
              *&buf[4] = "ari";
              v59 = 2080;
              v60 = v49;
              v61 = 1024;
              v62 = 375;
              v63 = 2080;
              v64 = v50;
              _os_log_error_impl(&dword_2962B3000, v19, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Terminating conn(%s)", buf, 0x26u);
              if (v57 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v20);
            if (v61 >= 0)
            {
              v22 = buf;
            }

            else
            {
              v22 = *buf;
            }

            v23 = (v5 + 32);
            if (*(v5 + 55) < 0)
            {
              v23 = *v23;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Terminating conn(%s)", v21, v22, 375, v23);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(*buf);
            }
          }

          xpc_connection_cancel(*(v5 + 16));
          v51 = v8;
          for (i = *(v5 + 80); i; i = *i)
          {
            v25 = *(i + 4);
            v26 = AriHostRt::DeregisterClient(v25);
            if (v26)
            {
              v27 = Ari::GetLogLevels(v26);
              if ((v27 & 8) != 0)
              {
                v28 = AriOsa::GetOsLog(v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v29);
                  v38 = __p;
                  if (v57 < 0)
                  {
                    v38 = __p[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = "ari";
                  v59 = 2080;
                  v60 = v38;
                  v61 = 1024;
                  v62 = 386;
                  v63 = 1024;
                  LODWORD(v64) = v25;
                  _os_log_error_impl(&dword_2962B3000, v28, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to deregister cid 0x%x", buf, 0x22u);
                  if (v57 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v29);
                if (v61 >= 0)
                {
                  v31 = buf;
                }

                else
                {
                  v31 = *buf;
                }

                AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to deregister cid 0x%x", v30, v31, 386, v25);
LABEL_43:
                if (SHIBYTE(v61) < 0)
                {
                  operator delete(*buf);
                }
              }
            }

            else
            {
              v32 = Ari::GetLogLevels(v26);
              if ((v32 & 0x20) != 0)
              {
                v33 = AriOsa::GetOsLog(v32);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v34);
                  v35 = __p;
                  if (v57 < 0)
                  {
                    v35 = __p[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = "ari";
                  v59 = 2080;
                  v60 = v35;
                  v61 = 1024;
                  v62 = 382;
                  v63 = 1024;
                  LODWORD(v64) = v25;
                  _os_log_impl(&dword_2962B3000, v33, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Deregistered cid 0x%x", buf, 0x22u);
                  if (v57 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "init_block_invoke", v34);
                if (v61 >= 0)
                {
                  v37 = buf;
                }

                else
                {
                  v37 = *buf;
                }

                AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Deregistered cid 0x%x", v36, v37, 382, v25);
                goto LABEL_43;
              }
            }
          }

          if (*(v5 + 88))
          {
            v39 = *(v5 + 80);
            if (v39)
            {
              do
              {
                v40 = *v39;
                operator delete(v39);
                v39 = v40;
              }

              while (v40);
            }

            *(v5 + 80) = 0;
            v41 = *(v5 + 72);
            if (v41)
            {
              for (j = 0; j != v41; ++j)
              {
                *(*(v5 + 64) + 8 * j) = 0;
              }
            }

            *(v5 + 88) = 0;
          }

          v52 = v51;
          v53 = v7;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v43 = *(v5 + 128);
          if (!v43)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v43 + 48))(v43, &v52);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v44 = *MEMORY[0x29EDCA608];
}

void sub_2962B8D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

uint64_t Ari::AriXpcServerConnection::handleClientMessage(Ari::AriXpcServerConnection *this, void *a2)
{
  v3 = *(this + 1);
  if (!v3 || (v5 = *this, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  v8 = MEMORY[0x29C258DC0](a2) != MEMORY[0x29EDCAA00];
  MEMORY[0x29C258610](v8, "xpc_get_type(dictionary) != XPC_TYPE_DICTIONARY", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", 499);
  xpc_retain(a2);
  v9 = *(this + 3);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN3Ari22AriXpcServerConnection19handleClientMessageEPv_block_invoke;
  v11[3] = &__block_descriptor_tmp_85_0;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = a2;
  dispatch_async(v9, v11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
  return 0;
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__18weak_ptrIN3Ari22AriXpcServerConnectionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c53_ZTSNSt3__18weak_ptrIN3Ari22AriXpcServerConnectionEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t Ari::AriXpcServerConnection::handleRegistration(Ari::AriXpcServerConnection *this, xpc_object_t xdict)
{
  v66 = *MEMORY[0x29EDCA608];
  string = xpc_dictionary_get_string(xdict, "AriCheckin");
  LogLevels = Ari::GetLogLevels(string);
  if (string)
  {
    if ((LogLevels & 4) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo(value_4, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v7);
        v47 = v56 >= 0 ? value_4 : value_4[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v58 = 2080;
        v59 = v47;
        v60 = 1024;
        v61 = 421;
        v62 = 2080;
        v63 = string;
        _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Received checkin from client %s", __p, 0x26u);
        if (v56 < 0)
        {
          operator delete(value_4[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v7);
      if (v60 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Received checkin from client %s", v8, v9, 421, string);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(*__p);
      }
    }

    if ((*(this + 56) & 1) == 0)
    {
      v10 = (qword_2A18CA728 ? std::function<BOOL ()(void *)>::operator()(&checkerFunction, xdict) : 1);
      *(this + 56) = v10;
      v15 = Ari::GetLogLevels(v10);
      if ((v15 & 4) != 0)
      {
        v16 = AriOsa::GetOsLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          AriOsa::LogSrcInfo(value_4, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v17);
          v49 = v56 >= 0 ? value_4 : value_4[0];
          v50 = *(this + 56) ? "yes" : "no";
          *__p = 136316162;
          *&__p[4] = "ari";
          v58 = 2080;
          v59 = v49;
          v60 = 1024;
          v61 = 426;
          v62 = 2080;
          v63 = string;
          v64 = 2080;
          v65 = v50;
          _os_log_debug_impl(&dword_2962B3000, v16, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Entitlement check; Client: %s Entitled: %s", __p, 0x30u);
          if (v56 < 0)
          {
            operator delete(value_4[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v17);
        if (v60 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = *__p;
        }

        if (*(this + 56))
        {
          v20 = "yes";
        }

        else
        {
          v20 = "no";
        }

        AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Entitlement check; Client: %s Entitled: %s", v18, v19, 426, string, v20);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(*__p);
        }
      }
    }

    if (*(this + 56) == 1)
    {
      value = 0;
      v21 = *(this + 1);
      v53[0] = *this;
      if (!v21 || (v22 = std::__shared_weak_count::lock(v21), (v53[1] = v22) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v23 = v22;
      std::string::basic_string[abi:ne200100]<0>(__p, string);
      v24 = AriHostRt::RegisterClient(v53, __p, &value);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(*__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      v26 = Ari::GetLogLevels(v25);
      if (!v24)
      {
        if ((v26 & 4) != 0)
        {
          v33 = AriOsa::GetOsLog(v26);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(value_4, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v34);
            if (v56 >= 0)
            {
              v52 = value_4;
            }

            else
            {
              v52 = value_4[0];
            }

            v35 = value;
            *__p = 136315906;
            *&__p[4] = "ari";
            v58 = 2080;
            v59 = v52;
            v60 = 1024;
            v61 = 435;
            v62 = 1024;
            LODWORD(v63) = value;
            _os_log_debug_impl(&dword_2962B3000, v33, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Sending XPC ARI registration reply with cid 0x%04x", __p, 0x22u);
            if (v56 < 0)
            {
              operator delete(value_4[0]);
            }
          }

          else
          {
            v35 = value;
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v34);
          if (v60 >= 0)
          {
            v37 = __p;
          }

          else
          {
            v37 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Sending XPC ARI registration reply with cid 0x%04x", v36, v37, 435, v35);
          if (SHIBYTE(v60) < 0)
          {
            operator delete(*__p);
          }
        }

        if (xpc_dictionary_get_BOOL(xdict, "ExpectsReply"))
        {
          reply = xpc_dictionary_create_reply(xdict);
        }

        else
        {
          reply = xpc_dictionary_create(0, 0, 0);
        }

        v39 = reply;
        xpc_dictionary_set_uint64(reply, "AriCmd", 0xA010uLL);
        v40 = value;
        xpc_dictionary_set_uint64(v39, "AriCid", value);
        xpc_connection_send_message(*(this + 2), v39);
        xpc_release(v39);
        v41 = *(this + 9);
        if (!v41)
        {
          goto LABEL_73;
        }

        v42 = vcnt_s8(v41);
        v42.i16[0] = vaddlv_u8(v42);
        if (v42.u32[0] > 1uLL)
        {
          v43 = v40;
          if (v41 <= v40)
          {
            v43 = v40 % v41;
          }
        }

        else
        {
          v43 = (v41 - 1) & v40;
        }

        v44 = *(*(this + 8) + 8 * v43);
        if (!v44 || (v45 = *v44) == 0)
        {
LABEL_73:
          operator new();
        }

        while (1)
        {
          v46 = v45[1];
          if (v46 == v40)
          {
            if (*(v45 + 4) == v40)
            {
              result = 0;
              goto LABEL_44;
            }
          }

          else
          {
            if (v42.u32[0] > 1uLL)
            {
              if (v46 >= v41)
              {
                v46 %= v41;
              }
            }

            else
            {
              v46 &= v41 - 1;
            }

            if (v46 != v43)
            {
              goto LABEL_73;
            }
          }

          v45 = *v45;
          if (!v45)
          {
            goto LABEL_73;
          }
        }
      }

      if ((v26 & 8) != 0)
      {
        v27 = AriOsa::GetOsLog(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(value_4, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v28);
          v51 = v56 >= 0 ? value_4 : value_4[0];
          *__p = 136315906;
          *&__p[4] = "ari";
          v58 = 2080;
          v59 = v51;
          v60 = 1024;
          v61 = 458;
          v62 = 2080;
          v63 = string;
          _os_log_error_impl(&dword_2962B3000, v27, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Error registering ARI client %s", __p, 0x26u);
          if (v56 < 0)
          {
            operator delete(value_4[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v28);
        if (v60 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Error registering ARI client %s", v29, v30, 458, string);
LABEL_41:
        if (SHIBYTE(v60) < 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

  else if ((LogLevels & 8) != 0)
  {
    v11 = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(value_4, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v12);
      v48 = v56 >= 0 ? value_4 : value_4[0];
      *__p = 136315650;
      *&__p[4] = "ari";
      v58 = 2080;
      v59 = v48;
      v60 = 1024;
      v61 = 464;
      _os_log_error_impl(&dword_2962B3000, v11, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Received invalid check-in name in client registration request", __p, 0x1Cu);
      if (v56 < 0)
      {
        operator delete(value_4[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleRegistration", v12);
    if (v60 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Received invalid check-in name in client registration request", v13, v14, 464);
    goto LABEL_41;
  }

  result = 0xFFFFFFFFLL;
LABEL_44:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962B9A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriXpcServerConnection::handleDeregistration(int8x8_t *this, xpc_object_t xdict)
{
  v50 = *MEMORY[0x29EDCA608];
  uint64 = xpc_dictionary_get_uint64(xdict, "AriCid");
  v4 = uint64;
  if (!uint64)
  {
    LogLevels = Ari::GetLogLevels(uint64);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleDeregistration", v14);
        v35 = v42 >= 0 ? v41 : v41[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v44 = 2080;
        v45 = v35;
        v46 = 1024;
        v47 = 488;
        v48 = 1024;
        v49 = 0;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Attempt to de-register cid 0x%x", __p, 0x22u);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleDeregistration", v14);
      if (v46 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Attempt to de-register cid 0x%x", v15, v16, 488, 0);
      goto LABEL_15;
    }

LABEL_17:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v5 = AriHostRt::DeregisterClient(uint64);
  v6 = v5;
  v7 = Ari::GetLogLevels(v5);
  if (v6)
  {
    if ((v7 & 8) != 0)
    {
      v8 = AriOsa::GetOsLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleDeregistration", v9);
        v34 = v42 >= 0 ? v41 : v41[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v44 = 2080;
        v45 = v34;
        v46 = 1024;
        v47 = 483;
        v48 = 1024;
        v49 = v4;
        _os_log_error_impl(&dword_2962B3000, v8, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to deregister cid 0x%x", __p, 0x22u);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleDeregistration", v9);
      if (v46 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to deregister cid 0x%x", v10, v11, 483, v4);
LABEL_15:
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ((v7 & 0x20) != 0)
  {
    v20 = AriOsa::GetOsLog(v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleDeregistration", v21);
      v22 = v42 >= 0 ? v41 : v41[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v44 = 2080;
      v45 = v22;
      v46 = 1024;
      v47 = 477;
      v48 = 1024;
      v49 = v4;
      _os_log_impl(&dword_2962B3000, v20, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Deregistered cid 0x%x", __p, 0x22u);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleDeregistration", v21);
    if (v46 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Deregistered cid 0x%x", v23, v24, 477, v4);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(*__p);
    }
  }

  v25 = this[9];
  if (!*&v25)
  {
    goto LABEL_87;
  }

  v26 = v4;
  v27 = vcnt_s8(v25);
  v27.i16[0] = vaddlv_u8(v27);
  if (v27.u32[0] > 1uLL)
  {
    v28 = v4;
    if (*&v25 <= v4)
    {
      v28 = v4 % *&v25;
    }
  }

  else
  {
    v28 = (*&v25 - 1) & v4;
  }

  v29 = this[8];
  v17 = *(*&v29 + 8 * v28);
  if (v17)
  {
    v30 = *v17;
    if (!*v17)
    {
      goto LABEL_87;
    }

    v31 = *&v25 - 1;
    do
    {
      v32 = v30[1];
      if (v32 == v4)
      {
        if (v30[2].i32[0] == v4)
        {
          v33 = *v30;
          if (v27.u32[0] > 1uLL)
          {
            if (v4 >= *&v25)
            {
              v26 = v4 % *&v25;
            }
          }

          else
          {
            v26 = v4 & v31;
          }

          v36 = *(*&v29 + 8 * v26);
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36 != v30);
          if (v37 == &this[10])
          {
            goto LABEL_76;
          }

          v38 = v37[1];
          if (v27.u32[0] > 1uLL)
          {
            if (v38 >= *&v25)
            {
              v38 %= *&v25;
            }
          }

          else
          {
            v38 &= v31;
          }

          if (v38 == v26)
          {
LABEL_78:
            if (v33)
            {
              v39 = *(*&v33 + 8);
              goto LABEL_80;
            }
          }

          else
          {
LABEL_76:
            if (!*&v33)
            {
              goto LABEL_77;
            }

            v39 = *(*&v33 + 8);
            if (v27.u32[0] > 1uLL)
            {
              v40 = *(*&v33 + 8);
              if (v39 >= *&v25)
              {
                v40 = v39 % *&v25;
              }
            }

            else
            {
              v40 = v39 & v31;
            }

            if (v40 != v26)
            {
LABEL_77:
              *(*&v29 + 8 * v26) = 0;
              v33 = *v30;
              goto LABEL_78;
            }

LABEL_80:
            if (v27.u32[0] > 1uLL)
            {
              if (v39 >= *&v25)
              {
                v39 %= *&v25;
              }
            }

            else
            {
              v39 &= v31;
            }

            if (v39 != v26)
            {
              *(*&this[8] + 8 * v39) = v37;
              v33 = *v30;
            }
          }

          *v37 = v33;
          *v30 = 0;
          --*&this[11];
          operator delete(v30);
LABEL_87:
          v17 = 0;
          break;
        }
      }

      else
      {
        if (v27.u32[0] > 1uLL)
        {
          if (v32 >= *&v25)
          {
            v32 %= *&v25;
          }
        }

        else
        {
          v32 &= v31;
        }

        if (v32 != v28)
        {
          goto LABEL_87;
        }
      }

      v17 = 0;
      v30 = *v30;
    }

    while (v30);
  }

LABEL_18:
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_2962BA054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3Ari22AriXpcServerConnection19handleClientMessageEPv_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_7:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_8;
      }

      uint64 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCmd");
      v7 = uint64;
      if (uint64 == 4112)
      {
        Ari::AriXpcServerConnection::handleRegistration(v3, *(a1 + 56));
        goto LABEL_6;
      }

      if (*(v3 + 56) == 1)
      {
        if (uint64 > 4115)
        {
          if (uint64 <= 4117)
          {
            if (uint64 == 4116)
            {
              v32 = xpc_dictionary_get_uint64(*(a1 + 56), "AriEvent");
              v33 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCid");
              v34 = xpc_dictionary_get_uint64(*(a1 + 56), "AriToken");
              LogLevels = Ari::GetLogLevels(v34);
              if ((LogLevels & 4) != 0)
              {
                OsLog = AriOsa::GetOsLog(LogLevels);
                if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
                {
                  AriOsa::LogSrcInfo(v72, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke_2", v37);
                  v64 = v73;
                  v65 = v72[0];
                  v66 = asString();
                  v67 = v72;
                  LODWORD(__p.__r_.__value_.__l.__data_) = 136316418;
                  *(__p.__r_.__value_.__r.__words + 4) = "ari";
                  if (v64 < 0)
                  {
                    v67 = v65;
                  }

                  WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
                  *(&__p.__r_.__value_.__r.__words[1] + 6) = v67;
                  HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
                  *v76 = 578;
                  *&v76[4] = 1024;
                  *&v76[6] = v33;
                  *&v76[10] = 2080;
                  *&v76[12] = v66;
                  *&v76[20] = 2048;
                  *&v76[22] = v34;
                  _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Received notify ACK from cid 0x%x for event %s token %llu", &__p, 0x36u);
                  if (v73 < 0)
                  {
                    operator delete(v72[0]);
                  }
                }

                AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v37);
                v38 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                v39 = __p.__r_.__value_.__r.__words[0];
                v40 = asString();
                p_p = &__p;
                if (v38 < 0)
                {
                  p_p = v39;
                }

                AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Received notify ACK from cid 0x%x for event %s token %llu", v41, p_p, 578, v33, v40, v34);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              AriHostRt::ProcessClientNotifyAck(v33, v32, v34);
              goto LABEL_6;
            }

            v14 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCid");
            memset(&__p, 170, sizeof(__p));
            string = xpc_dictionary_get_string(*(a1 + 56), "ErrorReason");
            std::string::basic_string[abi:ne200100]<0>(&__p, string);
            v16 = xpc_dictionary_get_uint64(*(a1 + 56), "ErrorType");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v70, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v70 = __p;
            }

            AriHostRt::ProcessClientError(v14, v16, &v70);
            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v70.__r_.__value_.__l.__data_);
            }

            goto LABEL_21;
          }

          if (uint64 == 4118)
          {
            v45 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCid");
            AriHostRt::RegAllIndications(v45);
            goto LABEL_6;
          }

          if (uint64 == 4119)
          {
            v19 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCid");
            array = xpc_dictionary_get_array(*(a1 + 56), "AriGmidList");
            __p.__r_.__value_.__r.__words[0] = 0;
            __p.__r_.__value_.__l.__size_ = &__p;
            __p.__r_.__value_.__r.__words[2] = 0x4002000000;
            *v76 = __Block_byref_object_copy_;
            *&v76[8] = __Block_byref_object_dispose_;
            *&v76[16] = &v76[16];
            *&v76[24] = &v76[16];
            v77 = 0;
            applier[0] = MEMORY[0x29EDCA5F8];
            applier[1] = 0x40000000;
            applier[2] = ___ZN3Ari22AriXpcServerConnection19handleClientMessageEPv_block_invoke_74;
            applier[3] = &unk_29EE30D58;
            applier[4] = &__p;
            xpc_array_apply(array, applier);
            AriHostRt::PushAllIndications(v19, __p.__r_.__value_.__l.__size_ + 40);
            _Block_object_dispose(&__p, 8);
            std::__list_imp<unsigned int>::clear(&v76[16]);
            goto LABEL_6;
          }

          goto LABEL_57;
        }

        if (uint64 > 4113)
        {
          if (uint64 == 4114)
          {
            v43 = xpc_dictionary_get_uint64(*(a1 + 56), "AriGmid");
            v44 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCid");
            AriHostRt::RegIndication(v43, v44);
          }

          else
          {
            v17 = xpc_dictionary_get_uint64(*(a1 + 56), "AriGmid");
            v18 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCid");
            AriHostRt::DeregIndication(v17, v18);
          }

          goto LABEL_6;
        }

        if (uint64 != 4097)
        {
          if (uint64 == 4113)
          {
            Ari::AriXpcServerConnection::handleDeregistration(v3, *(a1 + 56));
            goto LABEL_6;
          }

LABEL_57:
          v46 = Ari::GetLogLevels(uint64);
          if ((v46 & 8) == 0)
          {
            goto LABEL_6;
          }

          v47 = AriOsa::GetOsLog(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v72, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v48);
            v60 = v73;
            v61 = v72[0];
            v62 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCmd");
            *(__p.__r_.__value_.__r.__words + 4) = "ari";
            v63 = v72;
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315906;
            if (v60 < 0)
            {
              v63 = v61;
            }

            WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v63;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
            *v76 = 592;
            *&v76[4] = 2048;
            *&v76[6] = v62;
            _os_log_error_impl(&dword_2962B3000, v47, OS_LOG_TYPE_ERROR, "%s: (%s:%d) received unknown xpc command 0x%llx", &__p, 0x26u);
            if (v73 < 0)
            {
              operator delete(v72[0]);
            }
          }

          AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v48);
          v49 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v50 = __p.__r_.__value_.__r.__words[0];
          v51 = xpc_dictionary_get_uint64(*(a1 + 56), "AriCmd");
          v53 = &__p;
          if (v49 < 0)
          {
            v53 = v50;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) received unknown xpc command 0x%llx", v52, v53, 592, v51);
          goto LABEL_21;
        }

        length = 0xAAAAAAAAAAAAAAAALL;
        v21 = xpc_dictionary_get_uint64(*(a1 + 56), "context_id");
        v22 = xpc_dictionary_get_uint64(*(a1 + 56), "AriMsgTO");
        data = xpc_dictionary_get_data(*(a1 + 56), "AriMsg", &length);
        v24 = data;
        if (v21 && length && data)
        {
          v25 = Ari::GetLogLevels(data);
          if ((v25 & 4) != 0)
          {
            v27 = AriOsa::GetOsLog(v25);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo(v72, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v28);
              v69 = v73 >= 0 ? v72 : v72[0];
              LODWORD(__p.__r_.__value_.__l.__data_) = 136316162;
              *(__p.__r_.__value_.__r.__words + 4) = "ari";
              WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = v69;
              HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
              *v76 = 530;
              *&v76[4] = 1024;
              *&v76[6] = v21;
              *&v76[10] = 1024;
              *&v76[12] = v22;
              _os_log_debug_impl(&dword_2962B3000, v27, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) message received for ctx 0x%08x to(%d)", &__p, 0x28u);
              if (v73 < 0)
              {
                operator delete(v72[0]);
              }
            }

            AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v28);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &__p;
            }

            else
            {
              v30 = __p.__r_.__value_.__r.__words[0];
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) message received for ctx 0x%08x to(%d)", v29, v30, 530, v21, v22);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v26);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &__p;
          }

          else
          {
            v31 = __p.__r_.__value_.__r.__words[0];
          }

          Ari::LogBuf("msg", v31, 0x213, v24, length);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          AriHostRt::SendRaw(v24, length, v22);
          goto LABEL_6;
        }

        v54 = Ari::GetLogLevels(data);
        if ((v54 & 8) == 0)
        {
LABEL_6:
          xpc_release(*(a1 + 56));
          goto LABEL_7;
        }

        v55 = AriOsa::GetOsLog(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v72, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v56);
          v68 = v73 >= 0 ? v72 : v72[0];
          LODWORD(__p.__r_.__value_.__l.__data_) = 136316418;
          *(__p.__r_.__value_.__r.__words + 4) = "ari";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v68;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
          *v76 = 526;
          *&v76[4] = 1024;
          *&v76[6] = v21;
          *&v76[10] = 2048;
          *&v76[12] = length;
          *&v76[20] = 2048;
          *&v76[22] = v24;
          _os_log_error_impl(&dword_2962B3000, v55, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Received invalid message from XPC client id(%u) size(%lu), msg(%p)\n", &__p, 0x36u);
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }
        }

        AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v56);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &__p;
        }

        else
        {
          v58 = __p.__r_.__value_.__r.__words[0];
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Received invalid message from XPC client id(%u) size(%lu), msg(%p)\n", v57, v58, 526, v21, length, v24);
      }

      else
      {
        v9 = Ari::GetLogLevels(uint64);
        if ((v9 & 8) == 0)
        {
          goto LABEL_6;
        }

        v10 = AriOsa::GetOsLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v72, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v11);
          v59 = v73 >= 0 ? v72 : v72[0];
          LODWORD(__p.__r_.__value_.__l.__data_) = 136315906;
          *(__p.__r_.__value_.__r.__words + 4) = "ari";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v59;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
          *v76 = 598;
          *&v76[4] = 1024;
          *&v76[6] = v7;
          _os_log_error_impl(&dword_2962B3000, v10, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Entitlement check failed for client; ignoring xpc command 0x%x", &__p, 0x22u);
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }
        }

        AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "handleClientMessage_block_invoke", v11);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Entitlement check failed for client; ignoring xpc command 0x%x", v12, v13, 598, v7);
      }

LABEL_21:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_6;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[5] = result + 5;
  result[6] = result + 5;
  result[7] = 0;
  v2 = a2[7];
  if (v2)
  {
    v4 = a2[5];
    v3 = a2[6];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[5];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[5] = v4;
    *(v4 + 8) = result + 5;
    result[7] = v2;
    a2[7] = 0;
  }

  return result;
}

void ___ZN3Ari22AriXpcServerConnection19handleClientMessageEPv_block_invoke_74(uint64_t a1, int a2, xpc_object_t xuint)
{
  v3 = *(*(a1 + 32) + 8);
  xpc_uint64_get_value(xuint);
  operator new();
}

void ___ZNK3Ari22AriXpcServerConnection9dumpStateEv_block_invoke(void *a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        LogLevels = Ari::GetLogLevels(v4);
        if ((LogLevels & 0x20) != 0)
        {
          OsLog = AriOsa::GetOsLog(LogLevels);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "dumpState_block_invoke", v8);
            if (v39 >= 0)
            {
              v9 = __p;
            }

            else
            {
              v9 = *__p;
            }

            v10 = *(v3 + 88);
            v11 = (v3 + 32);
            if (*(v3 + 55) < 0)
            {
              v11 = *v11;
            }

            *buf = 136316162;
            *&buf[4] = "ari";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            *&buf[22] = 1024;
            *&buf[24] = 626;
            *&buf[28] = 2048;
            *&buf[30] = v10;
            *&buf[38] = 2080;
            *&buf[40] = v11;
            _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %zu registered clients on connection %s", buf, 0x30u);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(*__p);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "dumpState_block_invoke", v8);
          if (buf[23] >= 0)
          {
            v13 = buf;
          }

          else
          {
            v13 = *buf;
          }

          v14 = (v3 + 32);
          if (*(v3 + 55) < 0)
          {
            v14 = *v14;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %zu registered clients on connection %s", v12, v13, 626, *(v3 + 88), v14);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v49 = 0xAAAAAAAAAAAAAAAALL;
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v48[7] = v15;
        v48[8] = v15;
        v48[5] = v15;
        v48[6] = v15;
        v48[3] = v15;
        v48[4] = v15;
        v48[1] = v15;
        v48[2] = v15;
        v47 = v15;
        v48[0] = v15;
        *v45 = v15;
        v46 = v15;
        *&buf[32] = v15;
        v44 = v15;
        *buf = v15;
        *&buf[16] = v15;
        v16 = std::ostringstream::basic_ostringstream[abi:ne200100](buf);
        v17 = (v3 + 80);
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            break;
          }

          v18 = MEMORY[0x29C2588D0](buf, *(v17 + 4));
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
        }

        v19 = Ari::GetLogLevels(v16);
        if ((v19 & 0x20) != 0)
        {
          v20 = AriOsa::GetOsLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(v34, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "dumpState_block_invoke", v21);
            v22 = v35;
            v23 = v34[0];
            std::ostringstream::str[abi:ne200100](__dst, buf);
            v24 = v34;
            if (v22 < 0)
            {
              v24 = v23;
            }

            if (v33 >= 0)
            {
              v25 = __dst;
            }

            else
            {
              v25 = __dst[0];
            }

            *__p = 136315906;
            *&__p[4] = "ari";
            v37 = 2080;
            v38 = v24;
            v39 = 1024;
            v40 = 634;
            v41 = 2080;
            v42 = v25;
            _os_log_impl(&dword_2962B3000, v20, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Associated cids: %s", __p, 0x26u);
            if (v33 < 0)
            {
              operator delete(__dst[0]);
            }

            if (v35 < 0)
            {
              operator delete(v34[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "dumpState_block_invoke", v21);
          v26 = SHIBYTE(v39);
          v27 = *__p;
          std::ostringstream::str[abi:ne200100](v34, buf);
          v29 = __p;
          if (v26 < 0)
          {
            v29 = v27;
          }

          if (v35 >= 0)
          {
            v30 = v34;
          }

          else
          {
            v30 = v34[0];
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Associated cids: %s", v28, v29, 634, v30);
          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(*__p);
          }
        }

        *buf = *MEMORY[0x29EDC9538];
        *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
        *&buf[8] = MEMORY[0x29EDC9570] + 16;
        if (SHIBYTE(v46) < 0)
        {
          operator delete(v45[1]);
        }

        *&buf[8] = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(&buf[16]);
        std::ostream::~ostream();
        MEMORY[0x29C2589B0](v48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_2962BB128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a31);
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIKN3Ari22AriXpcServerConnectionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIKN3Ari22AriXpcServerConnectionEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE30D08, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE30D10, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
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

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *std::__list_imp<unsigned int>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C258960](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2962BB5B8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<Ari::AriXpcServer::create(void)::AriXpcServerNoPrivate,std::allocator<Ari::AriXpcServer::create(void)::AriXpcServerNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D463D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

void *_ZNSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEED1Ev(void *a1)
{
  *a1 = &unk_2A1D46420;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEED0Ev(void *a1)
{
  *a1 = &unk_2A1D46420;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x29C2589F0);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEE7__cloneEPNS0_6__baseISA_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D46420;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEEclEOS9_(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(v8 + 16);
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 1174405120;
        v11[2] = ___ZZZN3Ari12AriXpcServer4initEvEUb_ENK3__0clENSt3__110shared_ptrINS_22AriXpcServerConnectionEEE_block_invoke;
        v11[3] = &__block_descriptor_tmp_112;
        v10 = *(a1 + 16);
        v11[4] = v8;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = v4;
        v14 = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        dispatch_async(v9, v11);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN3Ari12AriXpcServer4initEvEUb_E3__0NS_9allocatorIS4_EEFvNS_10shared_ptrINS2_22AriXpcServerConnectionEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3Ari12AriXpcServer4initEvEUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZZN3Ari12AriXpcServer4initEvEUb_ENK3__0clENSt3__110shared_ptrINS_22AriXpcServerConnectionEEE_block_invoke(void *a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  if (!v2)
  {
    goto LABEL_78;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_78;
  }

  v4 = v3;
  v5 = a1[4];
  if (!v5)
  {
    goto LABEL_77;
  }

  LogLevels = Ari::GetLogLevels(v3);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      AriOsa::LogSrcInfo(&__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "operator()_block_invoke", v8);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v10 = a1[6];
      if (*(v10 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, *(v10 + 32), *(v10 + 40));
      }

      else
      {
        v36 = *(v10 + 32);
      }

      v11 = &v36;
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v36.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v39 = 2080;
      v40 = p_p;
      v41 = 1024;
      v42 = 302;
      v43 = 2080;
      v44 = v11;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Removing connection %s", buf, 0x26u);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v12 = buf;
    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_server.cpp", "operator()_block_invoke", v8);
    if (v41 < 0)
    {
      v12 = *buf;
    }

    v14 = a1[6];
    if (*(v14 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v14 + 32), *(v14 + 40));
    }

    else
    {
      __p = *(v14 + 32);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Removing connection %s", v13, v12, 302, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(*buf);
    }
  }

  v16 = v5[5];
  if (!*&v16)
  {
    goto LABEL_77;
  }

  v17 = a1[6];
  v18 = 0x9DDFEA08EB382D69 * ((8 * (v17 & 0x1FFFFFFF) + 8) ^ HIDWORD(v17));
  v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v18 >> 47) ^ v18);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
  v21 = vcnt_s8(v16);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = v20;
    if (v20 >= *&v16)
    {
      v22 = v20 % *&v16;
    }
  }

  else
  {
    v22 = v20 & (*&v16 - 1);
  }

  v23 = v5[4];
  v24 = *(v23 + 8 * v22);
  if (!v24)
  {
    goto LABEL_77;
  }

  v25 = *v24;
  if (!*v24)
  {
    goto LABEL_77;
  }

  v26 = *&v16 - 1;
  while (1)
  {
    v27 = v25[1];
    if (v27 == v20)
    {
      break;
    }

    if (v21.u32[0] > 1uLL)
    {
      if (v27 >= *&v16)
      {
        v27 %= *&v16;
      }
    }

    else
    {
      v27 &= v26;
    }

    if (v27 != v22)
    {
      goto LABEL_77;
    }

LABEL_45:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_77;
    }
  }

  if (v25[2] != v17)
  {
    goto LABEL_45;
  }

  v28 = *v25;
  if (v21.u32[0] > 1uLL)
  {
    if (v20 >= *&v16)
    {
      v20 %= *&v16;
    }
  }

  else
  {
    v20 &= v26;
  }

  v29 = *(v23 + 8 * v20);
  do
  {
    v30 = v29;
    v29 = *v29;
  }

  while (v29 != v25);
  if (v30 == v5 + 6)
  {
    goto LABEL_64;
  }

  v31 = v30[1];
  if (v21.u32[0] > 1uLL)
  {
    if (v31 >= *&v16)
    {
      v31 %= *&v16;
    }
  }

  else
  {
    v31 &= v26;
  }

  if (v31 == v20)
  {
LABEL_66:
    if (v28)
    {
      v32 = v28[1];
      goto LABEL_68;
    }
  }

  else
  {
LABEL_64:
    if (!v28)
    {
      goto LABEL_65;
    }

    v32 = v28[1];
    if (v21.u32[0] > 1uLL)
    {
      v33 = v28[1];
      if (v32 >= *&v16)
      {
        v33 = v32 % *&v16;
      }
    }

    else
    {
      v33 = v32 & v26;
    }

    if (v33 != v20)
    {
LABEL_65:
      *(v23 + 8 * v20) = 0;
      v28 = *v25;
      goto LABEL_66;
    }

LABEL_68:
    if (v21.u32[0] > 1uLL)
    {
      if (v32 >= *&v16)
      {
        v32 %= *&v16;
      }
    }

    else
    {
      v32 &= v26;
    }

    if (v32 != v20)
    {
      *(v5[4] + 8 * v32) = v30;
      v28 = *v25;
    }
  }

  *v30 = v28;
  *v25 = 0;
  --v5[7];
  v34 = v25[3];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  operator delete(v25);
LABEL_77:
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
LABEL_78:
  v35 = *MEMORY[0x29EDCA608];
}

void sub_2962BBF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrIN3Ari12AriXpcServerEEE48c56_ZTSNSt3__110shared_ptrIN3Ari22AriXpcServerConnectionEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrIN3Ari12AriXpcServerEEE48c56_ZTSNSt3__110shared_ptrIN3Ari22AriXpcServerConnectionEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<Ari::AriXpcServerConnection>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void std::__shared_ptr_emplace<Ari::AriXpcServerConnection::create(_xpc_connection_s *,std::function<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>)::AriXpcServerConnectionNoPrivate,std::allocator<Ari::AriXpcServerConnection::create(_xpc_connection_s *,std::function<void ()(std::shared_ptr<Ari::AriXpcServerConnection>)>)::AriXpcServerConnectionNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D464E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C2588A0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2588B0](v13);
  return a1;
}

void sub_2962BC44C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2588B0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2962BC42CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2]) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2962BC68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriAdaptiveTimer::initialize(AriAdaptiveTimer *this)
{
  ctu::FirstBootAfterUpdate::create();
  v1 = 0;
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_2962BC860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void AriAdaptiveTimer::AriAdaptiveTimer(AriAdaptiveTimer *this)
{
  *this = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
}

void AriAdaptiveTimer::~AriAdaptiveTimer(AriAdaptiveTimer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *AriAdaptiveTimer::getTimerService@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<AriAdaptiveTimer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D46530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2589F0);
}

void std::__shared_ptr_emplace<AriAdaptiveTimer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

AriSdk::MsgBase *AriSdk::MsgBase::MsgBase(AriSdk::MsgBase *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D46580;
  *(this + 6) = 0;
  *(this + 7) = 0;
  MEMORY[0x29C258610](1, "1", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_sdk_msg_null.cpp", 39);
  return this;
}

void sub_2962BCAD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

AriSdk::MsgBase *AriSdk::MsgBase::MsgBase(AriSdk::MsgBase *this, const unsigned __int8 *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D46580;
  *(this + 6) = 0;
  *(this + 7) = 0;
  MEMORY[0x29C258610](1, "1", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_sdk_msg_null.cpp", 53);
  return this;
}

void sub_2962BCB5C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::MsgBase::~MsgBase(AriSdk::MsgBase *this)
{
  *this = &unk_2A1D46580;
  MEMORY[0x29C258610](1, "1", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_sdk_msg_null.cpp", 67);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AriOsa::IpcInit(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit", v4);
      v5 = v31 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v5;
      *&buf[22] = 1024;
      *&buf[24] = 39;
      *&buf[28] = 2080;
      *&buf[30] = a1 + 96;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Using transport device %s", buf, 0x26u);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit", v4);
    if (buf[23] >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Using transport device %s", v6, v7, 39, a1 + 96);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v8 = strcmp("ABMRT/PCIe/ARI", (a1 + 96));
  if (v8)
  {
    v9 = Ari::GetLogLevels(v8);
    if ((v9 & 8) != 0)
    {
      v10 = AriOsa::GetOsLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit", v11);
        v28 = v31 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v28;
        *&buf[22] = 1024;
        *&buf[24] = 144;
        _os_log_error_impl(&dword_2962B3000, v10, OS_LOG_TYPE_ERROR, "%s: (%s:%d) SocketTransport unavailable on this build", buf, 0x1Cu);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit", v11);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) SocketTransport unavailable on this build", v12, v13, 144);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    result = 4294967204;
  }

  else
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v15;
    v34 = v15;
    *&buf[16] = v15;
    *&buf[32] = v15;
    *buf = v15;
    TelephonyBasebandPCITransportInitParameters();
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("ariIpcReadQueue", v16);
    v18 = *(a1 + 88);
    *(a1 + 88) = v17;
    if (v18)
    {
      dispatch_release(v18);
      v17 = *(a1 + 88);
    }

    *&buf[8] = v17;
    LODWORD(v35) = 25;
    *&buf[32] |= 5u;
    *buf = 8;
    v19 = pthread_mutex_lock(&ctu::Singleton<AriAdaptiveTimer,AriAdaptiveTimer,ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>>::sInstance);
    v20 = off_2A18C23E0;
    if (!off_2A18C23E0)
    {
      AriAdaptiveTimer::create_default_global(v19);
    }

    v21 = *(&off_2A18C23E0 + 1);
    if (*(&off_2A18C23E0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18C23E0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<AriAdaptiveTimer,AriAdaptiveTimer,ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>>::sInstance);
    v22 = *v20;
    v23 = v20[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v25 = ScaledTime;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    *&buf[24] = v25 / 1000;
    *&buf[36] = 0x100000000004;
    *&buf[16] = &__block_literal_global;
    if (capabilities::pci::supportsRxIOPool(ScaledTime))
    {
      v26 = 0;
      *&buf[32] |= 8u;
      *&buf[44] = 8;
    }

    else
    {
      v26 = 1;
    }

    *(a1 + 176) = v26;
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 0x40000000;
    v29[2] = ___ZN6AriOsa7IpcInitEPNS_13IpcDescriptorE_block_invoke_2;
    v29[3] = &__block_descriptor_tmp_11;
    v29[4] = a1;
    *&v34 = 0;
    v33 = v29;
    if (TelephonyBasebandPCITransportCreate())
    {
      result = 0;
    }

    else
    {
      result = 4294967204;
    }
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN6AriOsa7IpcInitEPNS_13IpcDescriptorE_block_invoke(Ari *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  LogLevels = Ari::GetLogLevels(a1);
  if (a2)
  {
    if (a2 == 1)
    {
      if ((LogLevels & 8) == 0)
      {
        goto LABEL_23;
      }

      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v24, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v9);
        v21 = v25 >= 0 ? v24 : v24[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v27 = 2080;
        v28 = v21;
        v29 = 1024;
        v30 = 62;
        v31 = 2048;
        *v32 = a3;
        *&v32[8] = 2048;
        *&v32[10] = a4;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) PCITransportStatusError reported from PCITransport library (%p, %p)", __p, 0x30u);
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v9);
      if (v29 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) PCITransportStatusError reported from PCITransport library (%p, %p)", v10, v11, 62, a3, a4);
    }

    else
    {
      if ((LogLevels & 8) == 0)
      {
        goto LABEL_23;
      }

      v16 = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v24, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v17);
        v23 = v25 >= 0 ? v24 : v24[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v27 = 2080;
        v28 = v23;
        v29 = 1024;
        v30 = 68;
        v31 = 1024;
        *v32 = a2;
        *&v32[4] = 2048;
        *&v32[6] = a3;
        *&v32[14] = 2048;
        *&v32[16] = a4;
        _os_log_error_impl(&dword_2962B3000, v16, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unrecognized status reported by PCITransport library: status=0x%08x (%p, %p)", __p, 0x36u);
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v17);
      if (v29 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unrecognized status reported by PCITransport library: status=0x%08x (%p, %p)", v18, v19, 68, a2, a3, a4);
    }
  }

  else
  {
    if ((LogLevels & 8) == 0)
    {
      goto LABEL_23;
    }

    v12 = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v24, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v13);
      v22 = v25 >= 0 ? v24 : v24[0];
      *__p = 136316162;
      *&__p[4] = "ari";
      v27 = 2080;
      v28 = v22;
      v29 = 1024;
      v30 = 65;
      v31 = 2048;
      *v32 = a3;
      *&v32[8] = 2048;
      *&v32[10] = a4;
      _os_log_error_impl(&dword_2962B3000, v12, OS_LOG_TYPE_ERROR, "%s: (%s:%d) PCITransportStatusNotReady reported from PCITransport library (%p, %p)", __p, 0x30u);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v13);
    if (v29 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) PCITransportStatusNotReady reported from PCITransport library (%p, %p)", v14, v15, 65, a3, a4);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*__p);
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_2962BD4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6AriOsa7IpcInitEPNS_13IpcDescriptorE_block_invoke_2(Ari *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v18, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke_2", v8);
        v17 = v19 >= 0 ? v18 : v18[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v21 = 2080;
        v22 = v17;
        v23 = 1024;
        v24 = 95;
        v25 = 1024;
        v26 = a2;
        v27 = 1024;
        v28 = a4;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) PCITransportStatusError Async read error 0x%08x sz(%u)", __p, 0x28u);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcInit_block_invoke", v8);
      if (v23 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) PCITransportStatusError Async read error 0x%08x sz(%u)", v9, v10, 95, a2, a4);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*__p);
      }
    }

    v11 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v12 = *(a1 + 4);
    v13 = *(v12 + 160);
    v14 = *MEMORY[0x29EDCA608];
    v16 = *(v12 + 184);

    v13(a3, a4, v16);
  }
}

void sub_2962BD6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriOsa::IpcWrite(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v8 = MEMORY[0x29C258610](v7, "(ipc_desc == NULL) || (pBuf == NULL)", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", 153);
  v20 = 0;
  if (*a1)
  {
    v8 = (*a1)(a1, a2, a3, &v20, 1, 2000, 0);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  LogLevels = Ari::GetLogLevels(v8);
  if ((LogLevels & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(v18, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcWrite", v12);
      v17 = v19 >= 0 ? v18 : v18[0];
      *__p = 136316162;
      *&__p[4] = "ari";
      v22 = 2080;
      v23 = v17;
      v24 = 1024;
      v25 = 169;
      v26 = 1024;
      v27 = a3;
      v28 = 1024;
      v29 = v9;
      _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Write(size=%u) completed with status %u", __p, 0x28u);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_ios_libtu_ipc.cpp", "IpcWrite", v12);
    if (v24 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Write(size=%u) completed with status %u", v13, v14, 169, a3, v9);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(*__p);
    }
  }

  if (v9)
  {
    result = 0;
  }

  else
  {
    result = 4294967204;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962BD8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriOsa::IpcFreeBuf(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 176) == 1)
  {
    free(a2);
  }

  return 0;
}

uint64_t ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>::~PthreadMutexGuardPolicy, &ctu::Singleton<AriAdaptiveTimer,AriAdaptiveTimer,ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>>::sInstance, &dword_2962B3000);
  }

  return result;
}

std::chrono::system_clock::time_point *AriHostRt::RtTransaction::RtTransaction(std::chrono::system_clock::time_point *a1, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *a2, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *a3, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a4, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a5)
{
  a1->__d_.__rep_ = 0;
  a1[1].__d_.__rep_ = 0;
  v6 = a2[1];
  a1[2].__d_.__rep_ = *a2;
  a1[3].__d_.__rep_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  a1[4].__d_.__rep_ = *a3;
  a1[5].__d_.__rep_ = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6].__d_.__rep_ = a5;
  a1[7].__d_.__rep_ = 0;
  a1[8].__d_.__rep_ = a4;
  a1[9].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[10].__d_.__rep_ = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  return a1;
}

void sub_2962BDA8C(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  v1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(exception_object);
}

void AriHostRt::RtTransaction::~RtTransaction(AriHostRt::RtTransaction *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void AriHostRt::RtTransaction::create(const unsigned __int8 *a1, unsigned int a2)
{
  MEMORY[0x29C258610](a2 < 0xC, "msgSz < sizeof(ARI_IPC_HEADER_t)", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 62);
  make_shared_buffer(a1);
  operator new();
}

void sub_2962BDD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v14);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AriHostRt::RtTransaction::cancel(AriHostRt::RtTransaction *this, uint64_t a2)
{
  v4 = *(this + 7);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    v5 = *(this + 7);
    *(this + 7) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *(this + 4);
  BufCtx = AriMsg::GetBufCtx(**(this + 2), (*(*(this + 2) + 8) - **(this + 2)));
  BufGmid = AriMsg::GetBufGmid(**(this + 2), (*(*(this + 2) + 8) - **(this + 2)));
  v9 = *(*v6 + 56);

  return v9(v6, BufCtx, BufGmid, a2);
}

uint64_t AriHostRt::RtTransaction::startTimeoutCountDown(dispatch_object_t *this)
{
  AriHostRt::GetInstance(this);
  v2 = pthread_mutex_lock(&ctu::Singleton<AriAdaptiveTimer,AriAdaptiveTimer,ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>>::sInstance);
  v3 = off_2A18C23E0;
  if (!off_2A18C23E0)
  {
    AriAdaptiveTimer::create_default_global(v2);
  }

  v4 = *(&off_2A18C23E0 + 1);
  if (*(&off_2A18C23E0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18C23E0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AriAdaptiveTimer,AriAdaptiveTimer,ctu::PthreadMutexGuardPolicy<AriAdaptiveTimer>>::sInstance);
  v6 = *v3;
  v5 = v3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = this[1];
  if (!v7 || (v8 = *this, (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  std::string::basic_string[abi:ne200100]<0>(__p, "ari_rt_tx");
  v11 = this[6];
  v12 = this[8];
  if (v12)
  {
    dispatch_retain(this[8]);
  }

  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 1174405120;
  v18[2] = ___ZN9AriHostRt13RtTransaction21startTimeoutCountDownEv_block_invoke;
  v18[3] = &__block_descriptor_tmp_1;
  v18[4] = this;
  v18[5] = v8;
  v19 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v20 = &AriHostRt::GetInstance(void)::instance;
  v13 = _Block_copy(v18);
  v26 = *__p;
  v27 = v22;
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  aBlock = v13;
  object = v12;
  (*(*v6 + 16))(&v23, v6, &v26, 0, 1000 * v11, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  v14 = v23;
  v23 = 0;
  v15 = this[7];
  this[7] = v14;
  if (v15)
  {
    (*(v15->isa + 1))(v15);
    v16 = v23;
    v23 = 0;
    if (v16)
    {
      (*(v16->isa + 1))(v16);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::__release_weak(v10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 0;
}

void *AriHostRt::GetInstance(AriHostRt *this)
{
  {
    AriHostRt::AriHostRt(&AriHostRt::GetInstance(void)::instance);
    __cxa_atexit(AriHostRt::~AriHostRt, &AriHostRt::GetInstance(void)::instance, &dword_2962B3000);
  }

  return &AriHostRt::GetInstance(void)::instance;
}

void ___ZN9AriHostRt13RtTransaction21startTimeoutCountDownEv_block_invoke(void *a1)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6)
      {
        v7 = a1[7];
        BufCtx = AriMsg::GetBufCtx(**(v3 + 16), (*(*(v3 + 16) + 8) - **(v3 + 16)));
        v9 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>((v7 + 33328), BufCtx);
        if (v9)
        {
          LogLevels = Ari::GetLogLevels(v9);
          if ((LogLevels & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(LogLevels);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              v27 = __p;
              AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "startTimeoutCountDown_block_invoke", v12);
              if (v39 < 0)
              {
                v27 = __p[0];
              }

              AriHostRt::RtTransaction::asString(v36, v3);
              v28 = v37;
              v29 = v36[0];
              v30 = *(v3 + 48);
              v31 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              v32 = v36;
              if (v28 < 0)
              {
                v32 = v29;
              }

              v33 = v31 - *(v3 + 80);
              *buf = 136316418;
              *&buf[4] = "ari";
              v41 = 2080;
              v42 = v27;
              v43 = 1024;
              v44 = 101;
              v45 = 2080;
              v46 = v32;
              v47 = 2048;
              v48 = v30;
              v49 = 2048;
              v50 = v33 / 0xF4240;
              _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Transaction(%s) timeout after %llu msec (%llu msec actual)", buf, 0x3Au);
              if (v37 < 0)
              {
                operator delete(v36[0]);
              }

              if (v39 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v13 = buf;
            AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "startTimeoutCountDown_block_invoke", v12);
            if (v43 < 0)
            {
              v13 = *buf;
            }

            AriHostRt::RtTransaction::asString(__p, v3);
            v14 = v39;
            v15 = __p[0];
            v16 = *(v3 + 48);
            v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
            if (v14 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = v15;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Transaction(%s) timeout after %llu msec (%llu msec actual)", v18, v13, 101, v19, v16, (v17 - *(v3 + 80)) / 0xF4240);
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(*buf);
            }
          }

          AriHostRt::RtTransaction::cancel(v6, 4294967212);
          v20 = a1[7];
          v21 = AriMsg::GetBufCtx(**(v3 + 16), (*(*(v3 + 16) + 8) - **(v3 + 16)));
          std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::__erase_unique<int>((v20 + 33328), v21);
          v22 = a1[7];
          if (*(v22 + 33520))
          {
            AriHostRt::RtTransaction::asString(buf, v3);
            if (v43 >= 0)
            {
              v23 = buf;
            }

            else
            {
              v23 = *buf;
            }

            std::string::basic_string[abi:ne200100]<0>(v34, v23);
            v24 = AriMsg::GetBufCtx(**(v3 + 16), (*(*(v3 + 16) + 8) - **(v3 + 16)));
            BufGmid = AriMsg::GetBufGmid(**(v3 + 16), (*(*(v3 + 16) + 8) - **(v3 + 16)));
            std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(*(v22 + 33520), 1, v34, v24, BufGmid);
            if (v35 < 0)
            {
              operator delete(v34[0]);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_2962BE594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  _Unwind_Resume(a1);
}

uint64_t AriHostRt::RtTransaction::asString(AriHostRt::RtTransaction *this)
{
  v1 = *(this + 2);
  v2 = *v1;
  v3 = *(v1 + 8) - *v1;
  v4 = (*(**(this + 4) + 16))(*(this + 4));
  if (*(v4 + 23) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  return GetBufDigest(v2, v3, v5);
}

uint64_t std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::operator()(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v8 = a2;
  v6 = a5;
  v7 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v8, a3, &v7, &v6);
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__18weak_ptrIN9AriHostRt13RtTransactionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__18weak_ptrIN9AriHostRt13RtTransactionEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t AriHostRt::RtTransaction::getClientProxy@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 40);
  *a2 = *(this + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AriHostRt::ClientTransitionTracker::ClientTransitionTracker(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 40, a2);
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

void AriHostRt::ClientTransitionTracker::~ClientTransitionTracker(AriHostRt::ClientTransitionTracker *this)
{
  std::mutex::~mutex((this + 72));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::~__hash_table(this);
}

{
  std::mutex::~mutex((this + 72));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::~__hash_table(this);
}

uint64_t AriHostRt::ClientTransitionTracker::trackClient(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  add = atomic_fetch_add(&AriHostRt::ClientTransitionTracker::tokenGenerator, 1uLL);
  LogLevels = Ari::GetLogLevels(a1);
  if ((LogLevels & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "trackClient", v9);
      v27 = v35;
      v28 = __p[0];
      v29 = *(*a2 + 8);
      (*(**a2 + 24))(v32);
      v30 = __p;
      if (v27 < 0)
      {
        v30 = v28;
      }

      if (v33 >= 0)
      {
        v31 = v32;
      }

      else
      {
        v31 = v32[0];
      }

      *buf = 136316418;
      *&buf[4] = "ari";
      v37 = 2080;
      v38 = v30;
      v39 = 1024;
      v40 = 170;
      v41 = 1024;
      v42 = v29;
      v43 = 2048;
      v44 = add;
      v45 = 2080;
      v46 = v31;
      _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) tracking client 0x%x with token %llu for transition: %s", buf, 0x36u);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "trackClient", v9);
    v10 = SHIBYTE(v39);
    v11 = *buf;
    v12 = *(*a2 + 8);
    (*(**a2 + 24))(__p);
    v14 = buf;
    if (v10 < 0)
    {
      v14 = v11;
    }

    if (v35 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) tracking client 0x%x with token %llu for transition: %s", v13, v14, 170, v12, add, v15);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
    }
  }

  std::mutex::lock((a1 + 72));
  v16 = *(a1 + 8);
  if (!*&v16)
  {
    goto LABEL_29;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = add;
    if (*&v16 <= add)
    {
      v18 = add % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & add;
  }

  v19 = *(*a1 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == add)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_29;
    }

LABEL_28:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  if (v20[2] != add)
  {
    goto LABEL_28;
  }

  v23 = *a2;
  v22 = a2[1];
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = v20[4];
  v20[3] = v23;
  v20[4] = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::mutex::unlock((a1 + 72));
  result = (*(**a2 + 48))(*a2, a3, add);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962BEF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHostRt::ClientTransitionTracker::removeClient(AriHostRt::ClientTransitionTracker *this, uint64_t a2, unint64_t a3)
{
  v50 = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 72));
  v7 = *(this + 8);
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = a3;
    if (*&v7 <= a3)
    {
      v9 = a3 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & a3;
  }

  v10 = *(*this + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    LogLevels = Ari::GetLogLevels(v6);
    if ((LogLevels & 8) == 0)
    {
      goto LABEL_25;
    }

    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v15);
      v37 = v42 >= 0 ? v41 : v41[0];
      *__p = 136316162;
      *&__p[4] = "ari";
      v44 = 2080;
      v45 = v37;
      v46 = 1024;
      v47 = 204;
      v48 = 2048;
      *v49 = a3;
      *&v49[8] = 1024;
      *&v49[10] = a2;
      _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) attempted ack of stale token %llu for cid 0x%x", __p, 0x2Cu);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v15);
    if (v46 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) attempted ack of stale token %llu for cid 0x%x", v16, v17, 204, a3, a2);
    goto LABEL_23;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == a3)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != a3)
  {
    goto LABEL_16;
  }

  if (*(v11[3] + 8) == a2)
  {
    v19 = Ari::GetLogLevels(v6);
    if ((v19 & 4) != 0)
    {
      v20 = AriOsa::GetOsLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v21);
        v38 = v42 >= 0 ? v41 : v41[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v44 = 2080;
        v45 = v38;
        v46 = 1024;
        v47 = 188;
        v48 = 1024;
        *v49 = a2;
        *&v49[4] = 2048;
        *&v49[6] = a3;
        _os_log_debug_impl(&dword_2962B3000, v20, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) no longer tracking client 0x%x with token %llu", __p, 0x2Cu);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v21);
      if (v46 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) no longer tracking client 0x%x with token %llu", v22, v23, 188, a2, a3);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*__p);
      }
    }

    v24 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::erase(this, v11);
    if (!*(this + 3))
    {
      v25 = Ari::GetLogLevels(v24);
      if ((v25 & 0x20) != 0)
      {
        v26 = AriOsa::GetOsLog(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v27);
          v28 = v42 >= 0 ? v41 : v41[0];
          *__p = 136315650;
          *&__p[4] = "ari";
          v44 = 2080;
          v45 = v28;
          v46 = 1024;
          v47 = 192;
          _os_log_impl(&dword_2962B3000, v26, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) All transitions are complete.  Executing post-transition action", __p, 0x1Cu);
          if (v42 < 0)
          {
            operator delete(v41[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v27);
        if (v46 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) All transitions are complete.  Executing post-transition action", v29, v30, 192);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(*__p);
        }
      }

      v31 = *(this + 8);
      if (!v31)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v31 + 48))(v31);
    }

    goto LABEL_25;
  }

  v32 = Ari::GetLogLevels(v6);
  if ((v32 & 8) == 0)
  {
    goto LABEL_25;
  }

  v33 = AriOsa::GetOsLog(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    AriOsa::LogSrcInfo(v41, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v34);
    v39 = v42 >= 0 ? v41 : v41[0];
    v40 = *(v11[3] + 8);
    *__p = 136316418;
    *&__p[4] = "ari";
    v44 = 2080;
    v45 = v39;
    v46 = 1024;
    v47 = 199;
    v48 = 1024;
    *v49 = v40;
    *&v49[4] = 1024;
    *&v49[6] = a2;
    *&v49[10] = 2048;
    *&v49[12] = a3;
    _os_log_error_impl(&dword_2962B3000, v33, OS_LOG_TYPE_ERROR, "%s: (%s:%d) mismatched cid, expected 0x%x, received ack for cid 0x%x with token %llu", __p, 0x32u);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }
  }

  AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeClient", v34);
  if (v46 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = *__p;
  }

  AriOsa::LogToDefaultStringLogger(8, "(%s:%d) mismatched cid, expected 0x%x, received ack for cid 0x%x with token %llu", v35, v36, 199, *(v11[3] + 8), a2, a3);
LABEL_23:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(*__p);
  }

LABEL_25:
  std::mutex::unlock((this + 72));
  v18 = *MEMORY[0x29EDCA608];
}

void AriHostRt::ClientTransitionTracker::removeAllTracking(AriHostRt::ClientTransitionTracker *this, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 72));
  if (*(this + 3))
  {
    v5 = *(this + 2);
    if (v5)
    {
      do
      {
        while (*(v5[3] + 8) != a2)
        {
          v5 = *v5;
          if (!v5)
          {
            goto LABEL_18;
          }
        }

        LogLevels = Ari::GetLogLevels(v4);
        if ((LogLevels & 0x20) != 0)
        {
          OsLog = AriOsa::GetOsLog(LogLevels);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeAllTracking", v8);
            v9 = __p;
            if (v22 < 0)
            {
              v9 = __p[0];
            }

            v10 = v5[2];
            *buf = 136316162;
            *&buf[4] = "ari";
            v24 = 2080;
            v25 = v9;
            v26 = 1024;
            v27 = 219;
            v28 = 1024;
            v29 = a2;
            v30 = 2048;
            v31 = v10;
            _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Removing active transition tracking for cid 0x%x token %llu", buf, 0x2Cu);
            if (v22 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeAllTracking", v8);
          if (v26 >= 0)
          {
            v12 = buf;
          }

          else
          {
            v12 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Removing active transition tracking for cid 0x%x token %llu", v11, v12, 219, a2, v5[2]);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(*buf);
          }
        }

        v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<Ari::AriClientProxy>>>>::erase(this, v5);
        v5 = v4;
      }

      while (v4);
LABEL_18:
      if (!*(this + 3))
      {
        v13 = Ari::GetLogLevels(v4);
        if ((v13 & 0x20) != 0)
        {
          v14 = AriOsa::GetOsLog(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeAllTracking", v15);
            v16 = v22 >= 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "ari";
            v24 = 2080;
            v25 = v16;
            v26 = 1024;
            v27 = 229;
            _os_log_impl(&dword_2962B3000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) All transitions are complete.  Executing post-transition action", buf, 0x1Cu);
            if (v22 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "removeAllTracking", v15);
          if (v26 >= 0)
          {
            v18 = buf;
          }

          else
          {
            v18 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) All transitions are complete.  Executing post-transition action", v17, v18, 229);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(*buf);
          }
        }

        v19 = *(this + 8);
        if (!v19)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v19 + 48))(v19);
      }
    }
  }

  std::mutex::unlock((this + 72));
  v20 = *MEMORY[0x29EDCA608];
}

void AriHostRt::ClientTransitionTracker::logRemainingClients(AriHostRt::ClientTransitionTracker *this@<X0>, std::string *a2@<X8>)
{
  v48 = *MEMORY[0x29EDCA608];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 3))
  {
    std::mutex::lock((this + 72));
    for (i = *(this + 2); i; i = *i)
    {
      LogLevels = Ari::GetLogLevels(v4);
      if ((LogLevels & 8) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "logRemainingClients", v8);
          v24 = v39;
          v25 = __p[0];
          v27 = i[2];
          v26 = i[3];
          v28 = v26[2];
          (*(*v26 + 24))(v36);
          v29 = __p;
          if (v24 < 0)
          {
            v29 = v25;
          }

          v30 = v36;
          if (v37 < 0)
          {
            v30 = v36[0];
          }

          *buf = 136316418;
          *&buf[4] = "ari";
          *&buf[12] = 2080;
          *&buf[14] = v29;
          *&buf[22] = 1024;
          v41 = 244;
          v42 = 1024;
          v43 = v28;
          v44 = 2048;
          v45 = v27;
          v46 = 2080;
          v47 = v30;
          _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Pending transition for cid 0x%x token %llu client %s", buf, 0x36u);
          if (v37 < 0)
          {
            operator delete(v36[0]);
          }

          if (v39 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "logRemainingClients", v8);
        v9 = buf[23];
        v10 = *buf;
        v12 = i[2];
        v11 = i[3];
        v13 = v11[2];
        (*(*v11 + 24))(__p);
        if (v9 >= 0)
        {
          v15 = buf;
        }

        else
        {
          v15 = v10;
        }

        v16 = __p;
        if (v39 < 0)
        {
          v16 = __p[0];
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Pending transition for cid 0x%x token %llu client %s", v14, v15, 244, v13, v12, v16);
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      v17 = (*(*i[3] + 16))(i[3]);
      v18 = v17;
      if (*(v17 + 23) >= 0)
      {
        v19 = *(v17 + 23);
      }

      else
      {
        v19 = *(v17 + 8);
      }

      memset(buf, 170, sizeof(buf));
      std::string::basic_string[abi:ne200100](buf, v19 + 1);
      if ((buf[23] & 0x80u) == 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      if (v19)
      {
        if (v18[23] >= 0)
        {
          v21 = v18;
        }

        else
        {
          v21 = *v18;
        }

        memmove(v20, v21, v19);
      }

      *&v20[v19] = 44;
      if ((buf[23] & 0x80u) == 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v23 = buf[23];
      }

      else
      {
        v23 = *&buf[8];
      }

      v4 = std::string::append(a2, v22, v23);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v31 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v31 < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
      if (size)
      {
        v33 = a2->__r_.__value_.__r.__words[0];
        v32 = a2->__r_.__value_.__r.__words[0] + size;
        goto LABEL_48;
      }
    }

    else if (*(&a2->__r_.__value_.__s + 23))
    {
      v32 = a2 + v31;
      v33 = a2;
LABEL_48:
      std::string::erase(a2, ~v33 + v32, 1uLL);
    }

    std::mutex::unlock((this + 72));
  }

  v35 = *MEMORY[0x29EDCA608];
}

void sub_2962BFCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::mutex::unlock((a18 + 72));
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(a1);
}

void AriHostRt::AriHostRt(AriHostRt *this)
{
  v11 = *MEMORY[0x29EDCA608];
  *this = -1;
  v2 = this + 0x8000;
  *(this + 2) = 0;
  *(this + 1) = 0x80000000001;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4128) = 0;
  *(this + 4129) = 0;
  *(this + 4127) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v9[0] = &unk_2A1D46950;
  v9[1] = Ari::AriClientProxy::AriClientProxyDebugDump;
  v10 = v9;
  *(this + 2065) = 0u;
  *(this + 2066) = 0u;
  *(this + 8268) = 1065353216;
  MEMORY[0x29C2586C0](this + 33080, 1, 127);
  *(v2 + 46) = 0;
  v2[376] = 0;
  v3 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  if (v10 != v9)
  {
    v3 = (*(*v10 + 16))();
LABEL_4:
    *(v2 + 51) = v3;
    goto LABEL_6;
  }

  *(v2 + 51) = this + 33152;
  (*(*v3 + 24))(v3, this + 33152);
LABEL_6:
  MEMORY[0x29C258610](0, "max >= INVALID_RES_ID", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 138);
  if (!AriOsa::OsMutexCreate((v2 + 368), v4))
  {
    v2[376] = 1;
  }

  std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](v9);
  v8 = 0;
  *(this + 2074) = 0u;
  *(this + 2075) = 0u;
  *(v2 + 112) = 1065353216;
  MEMORY[0x29C2586C0](this + 33224, 1, 0xFFFFLL);
  *(v2 + 64) = 0;
  v2[520] = 0;
  *(v2 + 69) = 0;
  MEMORY[0x29C258610](0, "max >= INVALID_RES_ID", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 138);
  if (!AriOsa::OsMutexCreate((v2 + 512), v5))
  {
    v2[520] = 1;
  }

  std::__function::__value_func<void ()(int,unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](v7);
  *(this + 2084) = 0u;
  *(this + 2083) = 0u;
  *(v2 + 148) = 1065353216;
  *(this + 33368) = 0u;
  *(this + 33384) = 0u;
  *(v2 + 158) = 1065353216;
  *(this + 2088) = 0u;
  *(this + 2089) = 0u;
  *(this + 2090) = 0u;
  *(this + 2091) = 0u;
  *(this + 2092) = 0u;
  *(this + 33488) = 0;
  *(this + 4191) = 0;
  *(this + 4192) = 0;
  *(this + 4190) = 0;
  v6 = *MEMORY[0x29EDCA608];
}

void sub_2962C0020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IDMgr::~IDMgr((v6 + v8));
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::~__hash_table(v6 + v7);
  std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::~__value_func[abi:ne200100](va);
  v10 = *(v6 + 144);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(v6 + 48);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void AriHostRt::~AriHostRt(AriHostRt *this)
{
  v2 = this + 0x8000;
  std::__function::__value_func<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~__value_func[abi:ne200100](this + 33496);
  v3 = *(v2 + 87);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v2 + 85);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(v2 + 83);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v2 + 81);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::~__hash_table(this + 33368);
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::~__hash_table(this + 33328);
  if (*(v2 + 55))
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::__deallocate_node(*(v2 + 54));
    *(v2 + 54) = 0;
    v8 = *(v2 + 53);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        *(*(v2 + 52) + 8 * i) = 0;
      }
    }

    *(v2 + 55) = 0;
  }

  v10 = *(v2 + 64);
  if (v10)
  {
    AriOsa::OsMutexFree(v10, v7);
  }

  std::__function::__value_func<void ()(int,unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](this + 33296);
  std::__tree<IDMgr::Range>::destroy(*(v2 + 62));
  std::__tree<IDMgr::Range>::destroy(*(v2 + 59));
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::list<std::shared_ptr<Ari::AriClientProxy>>>>>>::~__hash_table((v2 + 416));
  ResMgr<std::shared_ptr<Ari::AriClientProxy>>::~ResMgr(this + 33040, v11);
  v12 = *(this + 18);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

uint64_t AriHostRt::Init(AriHostRt *this)
{
  if (AriHostRt::Init(void)::pred != -1)
  {
    dispatch_once(&AriHostRt::Init(void)::pred, &__block_literal_global_0);
  }

  AriHostRt::GetInstance(this);
  v1 = atomic_load(&AriHostRt::GetInstance(void)::instance);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void ___ZN9AriHostRt4InitEv_block_invoke()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("AriHostRt", v0);
  AriHostRt::GetInstance(v1);
  qword_2A18C2418 = v1;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("AriHostRt", v2);
  Instance = AriHostRt::GetInstance(v3);
  qword_2A18C2420 = v3;
  AriHostRt::GetInstance(Instance);
  v5 = MEMORY[0x29C258610](qword_2A18C2418 == 0, "GetInstance().hostRtQueue == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 304);
  AriHostRt::GetInstance(v5);
  v6 = MEMORY[0x29C258610](qword_2A18C2420 == 0, "GetInstance().lpmQueue == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 305);
  Ari::AriXpcServer::create(v6);
}

void sub_2962C046C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::Init(AriHostRt *this, const char *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -1;
  if (!a2)
  {
    LogLevels = Ari::GetLogLevels(this);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init", v8);
        v21 = v25 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v31 = 2080;
        v32 = v21;
        v33 = 1024;
        v34 = 328;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Host RT invalid msgTimeoutMultiplier param: must be > 0", buf, 0x1Cu);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init", v8);
      if (v33 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Host RT invalid msgTimeoutMultiplier param: must be > 0", v9, v10, 328);
      goto LABEL_21;
    }

LABEL_23:
    v5 = *(v27 + 6);
    goto LABEL_24;
  }

  v2 = a2;
  v4 = AriHostRt::Init(this);
  if (!v4)
  {
    AriHostRt::GetInstance(v4);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt4InitEPKcj_block_invoke;
    block[3] = &unk_29EE30DE0;
    v23 = v2;
    block[4] = &v26;
    block[5] = this;
    dispatch_sync(qword_2A18C2418, block);
    v12 = AriHostRt::SendSensitiveLoggingInfo(v11);
    v13 = Ari::GetLogLevels(v12);
    if ((v13 & 0x20) != 0)
    {
      v14 = AriOsa::GetOsLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init", v15);
        v16 = v25 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v31 = 2080;
        v32 = v16;
        v33 = 1024;
        v34 = 361;
        _os_log_impl(&dword_2962B3000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Init complete", buf, 0x1Cu);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init", v15);
      if (v33 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Init complete", v17, v18, 361);
LABEL_21:
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v5 = 0xFFFFFFFFLL;
LABEL_24:
  _Block_object_dispose(&v26, 8);
  v19 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_2962C07AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN9AriHostRt4InitEPKcj_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  Instance = AriHostRt::GetInstance(a1);
  dword_2A18C2408 = v2;
  LogLevels = Ari::GetLogLevels(Instance);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init_block_invoke", v6);
      v8 = v35;
      v9 = __p[0];
      AriHostRt::GetInstance(v7);
      v10 = __p;
      if (v8 < 0)
      {
        v10 = v9;
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v37 = 2080;
      v38 = v10;
      v39 = 1024;
      v40 = 337;
      v41 = 1024;
      v42 = dword_2A18C2408;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Host RT msgTimeoutMultiplier: (%d)", buf, 0x22u);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init_block_invoke", v6);
    v12 = SHIBYTE(v39);
    v13 = *buf;
    AriHostRt::GetInstance(v11);
    v15 = buf;
    if (v12 < 0)
    {
      v15 = v13;
    }

    LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Host RT msgTimeoutMultiplier: (%d)", v14, v15, 337, dword_2A18C2408);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
    }
  }

  v16 = AriHostRt::GetInstance(LogLevels);
  v17 = atomic_load(&AriHostRt::GetInstance(void)::instance);
  if (v17 == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    AriHostRt::GetInstance(v16);
    v18 = AriFramer::init(qword_2A18C2438, *(a1 + 40), AriHostRt::InboundMsgCB, 0, 0);
    *(*(*(a1 + 32) + 8) + 24) = v18;
    v19 = *(*(*(a1 + 32) + 8) + 24) == 0;
    v20 = Ari::GetLogLevels(v18);
    if (v19)
    {
      if ((v20 & 0x20) != 0)
      {
        v25 = AriOsa::GetOsLog(v20);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init_block_invoke", v26);
          v27 = v35 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v37 = 2080;
          v38 = v27;
          v39 = 1024;
          v40 = 348;
          _os_log_impl(&dword_2962B3000, v25, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Host RT framer success", buf, 0x1Cu);
          if (v35 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init_block_invoke", v26);
        if (v39 >= 0)
        {
          v29 = buf;
        }

        else
        {
          v29 = *buf;
        }

        v20 = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Host RT framer success", v28, v29, 348);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(*buf);
        }
      }

      v30 = AriHostRt::GetInstance(v20);
      atomic_store(2u, &AriHostRt::GetInstance(void)::instance);
      v31 = AriHostRt::GetInstance(v30);
      *(*(*(a1 + 32) + 8) + 24) = AriHostRt::sendBootStateRequest_nl(v31);
    }

    else if ((v20 & 8) != 0)
    {
      v21 = AriOsa::GetOsLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init_block_invoke", v22);
        v33 = v35 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v37 = 2080;
        v38 = v33;
        v39 = 1024;
        v40 = 354;
        _os_log_error_impl(&dword_2962B3000, v21, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ** FAILED TO INIT ARI FRAMER / TRANSPORT **", buf, 0x1Cu);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Init_block_invoke", v22);
      if (v39 >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ** FAILED TO INIT ARI FRAMER / TRANSPORT **", v23, v24, 354);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v32 = *MEMORY[0x29EDCA608];
}

void sub_2962C0C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::InboundMsgCB(AriHostRt *this, unsigned __int8 *a2)
{
  BufCtx = AriMsg::GetBufCtx(this, a2);
  v4 = BufCtx;
  if ((Ari::GetLogLevels(BufCtx) & 4) != 0)
  {
    Ari::LogHeader(this, v5);
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  shared_buffer = make_shared_buffer(this);
  AriHostRt::GetInstance(shared_buffer);
  v7 = qword_2A18C2418;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN9AriHostRt12InboundMsgCBEPhm_block_invoke;
  block[3] = &__block_descriptor_tmp_91;
  block[4] = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  v11 = v4;
  dispatch_async(v7, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 0;
}

void sub_2962C0D68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::sendBootStateRequest_nl(AriHostRt *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v1;
  v24[3] = v1;
  v24[0] = v1;
  v24[1] = v1;
  MEMORY[0x29C258730](v24, 75923456);
  v23 = 0;
  EncodedBuf = AriMsg::getEncodedBuf(v24, &v23);
  v3 = EncodedBuf;
  if (EncodedBuf)
  {
    *(EncodedBuf + 2) = *(EncodedBuf + 2) & 0x1FFFF | 0xFE020000;
    LogLevels = Ari::GetLogLevels(EncodedBuf);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendBootStateRequest_nl", v6);
        v7 = v22 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "ari";
        v27 = 2080;
        v28 = v7;
        v29 = 1024;
        v30 = 459;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) sending RT boot state request...", buf, 0x1Cu);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendBootStateRequest_nl", v6);
      if (v29 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      LogLevels = AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) sending RT boot state request...", v8, v9, 459);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }
    }

    v10 = AriHostRt::sendRawInternal_nl(LogLevels, v3, v23);
    v12 = v10;
    if (v10)
    {
      v13 = Ari::GetLogLevels(v10);
      if ((v13 & 8) != 0)
      {
        v14 = AriOsa::GetOsLog(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendBootStateRequest_nl", v15);
          v20 = v22 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v27 = 2080;
          v28 = v20;
          v29 = 1024;
          v30 = 462;
          _os_log_error_impl(&dword_2962B3000, v14, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Could not send boot state request", buf, 0x1Cu);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendBootStateRequest_nl", v15);
        if (v29 >= 0)
        {
          v17 = buf;
        }

        else
        {
          v17 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Could not send boot state request", v16, v17, 462);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    AriMsg::ReleaseEncodedMessage(v3, v11);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  AriMsg::~AriMsg(v24);
  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_2962C1060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AriMsg::~AriMsg(va);
  _Unwind_Resume(a1);
}

uint64_t AriHostRt::SendSensitiveLoggingInfo(AriHostRt *this)
{
  v1 = capabilities::radio::vendor(this);
  if (v1 != 3)
  {
    return 0;
  }

  Instance = AriHostRt::GetInstance(v1);
  v3 = 0xFFFFFFFFLL;
  if (!AriHostRt::Init(Instance))
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = -1;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___ZN9AriHostRt24SendSensitiveLoggingInfoEv_block_invoke;
    v5[3] = &unk_29EE31040;
    v5[4] = &v6;
    v5[5] = &AriHostRt::GetInstance(void)::instance;
    dispatch_sync(qword_2A18C2418, v5);
    v3 = *(v7 + 6);
    _Block_object_dispose(&v6, 8);
  }

  return v3;
}

uint64_t AriHostRt::Init(AriHostRt *a1, const void *a2, NSObject *a3, const char *a4)
{
  AriHostRt::GetInstance(a1);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  MEMORY[0x29C258610](v9, "startedCallback == nullptr || startedCallbackQueue == nullptr", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 369);
  if (qword_2A18CA6F8)
  {
    _Block_release(qword_2A18CA6F8);
  }

  if (qword_2A18CA700)
  {
    dispatch_release(qword_2A18CA700);
  }

  v10 = _Block_copy(a2);
  dispatch_retain(a3);
  *(&byte_2A18C2405 + 33523) = v10;
  *(&byte_2A18C2405 + 33531) = a3;
  byte_2A18C2405 = 0;

  return AriHostRt::Init(a1, a4);
}

uint64_t AriHostRt::Shutdown(AriHostRt *this)
{
  v18 = *MEMORY[0x29EDCA608];
  AriHostRt::GetInstance(this);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN9AriHostRt8ShutdownEv_block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = &AriHostRt::GetInstance(void)::instance;
  dispatch_sync(qword_2A18C2418, block);
  LogLevels = Ari::GetLogLevels(v1);
  if ((LogLevels & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Shutdown", v4);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = 404;
      _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Done", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "Shutdown", v4);
    if (v16 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Done", v6, v7, 404);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962C1404(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

double ___ZN9AriHostRt8ShutdownEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  TelephonyUtilTransportFree();
  atomic_store(4u, *(a1 + 32));
  v3 = *(a1 + 32);
  *(v3 + 4) = 0;
  *(v3 + 12) = 2048;
  v4 = *(v3 + 33528);
  if (v4)
  {
    _Block_release(v4);
    v3 = *(a1 + 32);
  }

  v5 = *(v3 + 33536);
  if (v5)
  {
    dispatch_release(v5);
    v3 = *(a1 + 32);
  }

  result = 0.0;
  *(v3 + 33528) = 0u;
  return result;
}

uint64_t AriHostRt::ProcessClientNotifyAck(AriHostRt *a1, int a2, uint64_t a3)
{
  v40 = *MEMORY[0x29EDCA608];
  Instance = AriHostRt::GetInstance(a1);
  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v25[0] = MEMORY[0x29EDCA5F8];
      v25[1] = 0x40000000;
      v25[2] = ___ZN9AriHostRt22ProcessClientNotifyAckEi18ARI_XPC_NOTIFY_IDSy_block_invoke_3;
      v25[3] = &__block_descriptor_tmp_30;
      v26 = a1;
      v25[4] = &AriHostRt::GetInstance(void)::instance;
      v25[5] = a3;
      dispatch_sync(qword_2A18C2418, v25);
      goto LABEL_8;
    }

    if (a2 != 8)
    {
      goto LABEL_10;
    }

LABEL_6:
    v7 = qword_2A18C2418;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt22ProcessClientNotifyAckEi18ARI_XPC_NOTIFY_IDSy_block_invoke;
    block[3] = &__block_descriptor_tmp_28;
    v30 = a1;
    block[4] = &AriHostRt::GetInstance(void)::instance;
    block[5] = a3;
    v8 = block;
    goto LABEL_7;
  }

  if ((a2 - 3) < 3)
  {
    v7 = qword_2A18C2418;
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 0x40000000;
    v27[2] = ___ZN9AriHostRt22ProcessClientNotifyAckEi18ARI_XPC_NOTIFY_IDSy_block_invoke_2;
    v27[3] = &__block_descriptor_tmp_29;
    v28 = a1;
    v27[4] = &AriHostRt::GetInstance(void)::instance;
    v27[5] = a3;
    v8 = v27;
LABEL_7:
    dispatch_async(v7, v8);
    goto LABEL_8;
  }

  if (a2 == 2)
  {
    goto LABEL_6;
  }

LABEL_10:
  LogLevels = Ari::GetLogLevels(Instance);
  if ((LogLevels & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "ProcessClientNotifyAck", v13);
      v19 = v24;
      v20 = __p[0];
      v21 = asString();
      *buf = 136316162;
      *&buf[4] = "ari";
      v22 = __p;
      v32 = 2080;
      if (v19 < 0)
      {
        v22 = v20;
      }

      v33 = v22;
      v34 = 1024;
      v35 = 444;
      v36 = 1024;
      v37 = a1;
      v38 = 2080;
      v39 = v21;
      _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) received notify ack from cid 0x%x for event %s", buf, 0x2Cu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "ProcessClientNotifyAck", v13);
    v14 = SHIBYTE(v34);
    v15 = *buf;
    v16 = asString();
    v18 = buf;
    if (v14 < 0)
    {
      v18 = v15;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) received notify ack from cid 0x%x for event %s", v17, v18, 444, a1, v16);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962C179C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9AriHostRt22ProcessClientNotifyAckEi18ARI_XPC_NOTIFY_IDSy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 0x8000;
  v4 = *(v2 + 33432);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 656);
      if (v7)
      {
        AriHostRt::ClientTransitionTracker::removeClient(v7, *(a1 + 48), *(a1 + 40));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN9AriHostRt22ProcessClientNotifyAckEi18ARI_XPC_NOTIFY_IDSy_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 0x8000;
  v4 = *(v2 + 33448);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 672);
      if (v7)
      {
        AriHostRt::ClientTransitionTracker::removeClient(v7, *(a1 + 48), *(a1 + 40));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void ___ZN9AriHostRt22ProcessClientNotifyAckEi18ARI_XPC_NOTIFY_IDSy_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 0x8000;
  v4 = *(v2 + 33464);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 688);
      if (v7)
      {
        AriHostRt::ClientTransitionTracker::removeClient(v7, *(a1 + 48), *(a1 + 40));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t AriHostRt::sendRawInternal_nl(AriHostRt *this, AriMsg *a2, unsigned __int8 *a3)
{
  v86[2] = *MEMORY[0x29EDCA608];
  v5 = a3;
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  BufGmid = AriMsg::GetBufGmid(a2, v5);
  memset(&v76, 0, sizeof(v76));
  if (((BufCtx >> 8) & 0x7F) == 0x7F)
  {
    *(&v76.__r_.__value_.__s + 23) = 21;
    qmemcpy(&v76, "arirt_internal_client", 21);
    v8 = &v76;
  }

  else
  {
    AriHostRt::GetInstance(BufGmid);
    BufGmid = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(qword_2A18CA510);
    if (BufGmid)
    {
      AriHostRt::GetInstance(BufGmid);
      v9 = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::operator[](qword_2A18CA510, (BufCtx >> 8) & 0x7F);
      v10 = (*(**v9 + 16))(*v9);
      BufGmid = std::string::operator=(&v76, v10);
      goto LABEL_10;
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      v76.__r_.__value_.__l.__size_ = 21;
      v8 = v76.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v76.__r_.__value_.__s + 23) = 21;
      v8 = &v76;
    }

    qmemcpy(v8, "client_not_registered", 21);
  }

  v8->__r_.__value_.__s.__data_[21] = 0;
LABEL_10:
  Instance = AriHostRt::GetInstance(BufGmid);
  v12 = atomic_load(&AriHostRt::GetInstance(void)::instance);
  if (v12 == 2)
  {
    v13 = AriHostRt::GetInstance(Instance);
    v14 = qword_2A18CA6C0;
    if (!qword_2A18CA6C0)
    {
      goto LABEL_24;
    }

    LogLevels = Ari::GetLogLevels(v13);
    if ((LogLevels & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendRawInternal_nl", v17);
        v19 = v78;
        v20 = __p[0];
        AriHostRt::GetInstance(v18);
        v21 = v19 >= 0 ? __p : v20;
        label = dispatch_queue_get_label(qword_2A18CA6C8);
        *buf = 136316418;
        *&buf[4] = "ari";
        v80 = 2080;
        v81 = v21;
        v82 = 1024;
        v83 = 743;
        v84 = 1024;
        *v85 = a3;
        *&v85[4] = 1024;
        *&v85[6] = BufCtx;
        LOWORD(v86[0]) = 2080;
        *(v86 + 2) = label;
        _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Outbound Msg sz%d ctx(0x%08X) for sniffer (%s) ", buf, 0x32u);
        if (v78 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v23 = AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendRawInternal_nl", v17);
      v24 = SHIBYTE(v82);
      v25 = *buf;
      AriHostRt::GetInstance(v23);
      if (v24 >= 0)
      {
        v25 = buf;
      }

      v26 = dispatch_queue_get_label(qword_2A18CA6C8);
      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Outbound Msg sz%d ctx(0x%08X) for sniffer (%s) ", v27, v25, 743, a3, BufCtx, v26);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(*buf);
      }
    }

    v28 = malloc_type_malloc(v5, 0x100004077774924uLL);
    MEMORY[0x29C258610](v28 == 0, "_msg == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 747);
    v29 = memcpy(v28, a2, v5);
    AriHostRt::GetInstance(v29);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN9AriHostRt18sendRawInternal_nlEPhj_block_invoke;
    block[3] = &__block_descriptor_tmp_57;
    block[4] = v14;
    block[5] = v28;
    v73 = a3;
    dispatch_async(qword_2A18CA6C8, block);
    v13 = AriHostRt::GetInstance(v30);
    if (byte_2A18CA6D0)
    {
LABEL_24:
      AriHostRt::GetInstance(v13);
      v31 = dword_2A18C2410;
      v32 = AriMsg::SetBufSeq(a2, v5);
      AriHostRt::GetInstance(v32);
      v33 = AriOsa::IpcWrite(qword_2A18C2438, a2, v5);
      v34 = v33;
      if (v33)
      {
        v35 = Ari::GetLogLevels(v33);
        if ((v35 & 8) != 0)
        {
          v36 = AriOsa::GetOsLog(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_fmr.h", "write", v37);
            v64 = v78 >= 0 ? __p : __p[0];
            *buf = 136316162;
            *&buf[4] = "ari";
            v80 = 2080;
            v81 = v64;
            v82 = 1024;
            v83 = 82;
            v84 = 2048;
            *v85 = a2;
            *&v85[8] = 2048;
            v86[0] = v5;
            _os_log_error_impl(&dword_2962B3000, v36, OS_LOG_TYPE_ERROR, "%s: (%s:%d) IPC write failure on buffer(%p) sz(%zu)", buf, 0x30u);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_fmr.h", "write", v37);
          if (v82 >= 0)
          {
            v39 = buf;
          }

          else
          {
            v39 = *buf;
          }

          v35 = AriOsa::LogToDefaultStringLogger(8, "(%s:%d) IPC write failure on buffer(%p) sz(%zu)", v38, v39, 82, a2, v5);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(*buf);
          }
        }

        v40 = Ari::GetLogLevels(v35);
        if ((v40 & 8) != 0)
        {
          v41 = AriOsa::GetOsLog(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v65 = __p;
            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendRawInternal_nl", v42);
            if (v78 < 0)
            {
              v65 = __p[0];
            }

            if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = &v76;
            }

            else
            {
              v66 = v76.__r_.__value_.__r.__words[0];
            }

            BufDigest = GetBufDigest(a2, v5, v66);
            v68 = v75;
            v69 = v74[0];
            AriHostRt::GetInstance(BufDigest);
            v70 = v74;
            if (v68 < 0)
            {
              v70 = v69;
            }

            *buf = 136316162;
            *&buf[4] = "ari";
            v80 = 2080;
            v81 = v65;
            v82 = 1024;
            v83 = 771;
            v84 = 2080;
            *v85 = v70;
            *&v85[8] = 1024;
            LODWORD(v86[0]) = dword_2A18C2410;
            _os_log_error_impl(&dword_2962B3000, v41, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed write to framer with (%s) AP.SEQ(%d) not advanced", buf, 0x2Cu);
            if (v75 < 0)
            {
              operator delete(v74[0]);
            }

            if (v78 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v43 = buf;
          AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendRawInternal_nl", v42);
          if (v82 < 0)
          {
            v43 = *buf;
          }

          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &v76;
          }

          else
          {
            v44 = v76.__r_.__value_.__r.__words[0];
          }

          v45 = GetBufDigest(a2, v5, v44);
          v46 = v78;
          v47 = __p[0];
          AriHostRt::GetInstance(v45);
          v49 = __p;
          if (v46 < 0)
          {
            v49 = v47;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed write to framer with (%s) AP.SEQ(%d) not advanced", v48, v43, 771, v49, dword_2A18C2410);
          if (v78 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v82) < 0)
          {
            operator delete(*buf);
          }
        }

        goto LABEL_67;
      }

      AriHostRt::GetInstance(v33);
      dword_2A18C2410 = v31 + 1;
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
      }

      else
      {
        v71 = v76;
      }

      Ari::LogTransportBuf();
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }
    }

    v34 = 0;
    goto LABEL_67;
  }

  v50 = Ari::GetLogLevels(Instance);
  if ((v50 & 8) != 0)
  {
    v51 = AriOsa::GetOsLog(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendRawInternal_nl", v52);
      if (v78 >= 0)
      {
        v60 = __p;
      }

      else
      {
        v60 = __p[0];
      }

      v61 = asString();
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v76;
      }

      else
      {
        v62 = v76.__r_.__value_.__r.__words[0];
      }

      GetBufDigest(a2, v5, v62);
      if (v75 >= 0)
      {
        v63 = v74;
      }

      else
      {
        v63 = v74[0];
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v80 = 2080;
      v81 = v60;
      v82 = 1024;
      v83 = 735;
      v84 = 2080;
      *v85 = v61;
      *&v85[8] = 2080;
      v86[0] = v63;
      _os_log_error_impl(&dword_2962B3000, v51, OS_LOG_TYPE_ERROR, "%s: (%s:%d) AriHostRt in state(%s) unsuitable for sendRawInternal(%s)", buf, 0x30u);
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (v78 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "sendRawInternal_nl", v52);
    if (v82 >= 0)
    {
      v53 = buf;
    }

    else
    {
      v53 = *buf;
    }

    v54 = asString();
    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v76;
    }

    else
    {
      v55 = v76.__r_.__value_.__r.__words[0];
    }

    GetBufDigest(a2, v5, v55);
    if (v78 >= 0)
    {
      v57 = __p;
    }

    else
    {
      v57 = __p[0];
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) AriHostRt in state(%s) unsuitable for sendRawInternal(%s)", v56, v53, 735, v54, v57);
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(*buf);
    }
  }

  v34 = 4294967206;
LABEL_67:
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v58 = *MEMORY[0x29EDCA608];
  return v34;
}

void sub_2962C2284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::setMsgAttrib_nl(unsigned int *a1, unsigned int *a2)
{
  v75 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C258610](a2 == 0, "param == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 470);
  v4 = atomic_load(a1);
  if (v4 == 2)
  {
    v57 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v56[2] = v5;
    v56[3] = v5;
    v56[0] = v5;
    v56[1] = v5;
    MEMORY[0x29C258730](v56, 67665920);
    v6 = AriMsg::pack(v56, 1, a2);
    if (!v6)
    {
      v55 = 0;
      EncodedBuf = AriMsg::getEncodedBuf(v56, &v55);
      v8 = EncodedBuf;
      if (EncodedBuf)
      {
        *(EncodedBuf + 2) = *(EncodedBuf + 2) & 0x1FFFF | 0xFE020000;
        LogLevels = Ari::GetLogLevels(EncodedBuf);
        if ((LogLevels & 4) != 0)
        {
          OsLog = AriOsa::GetOsLog(LogLevels);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(v53, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setMsgAttrib_nl", v11);
            v37 = v54 >= 0 ? v53 : v53[0];
            v38 = *a2;
            v39 = asString();
            v40 = a2[1];
            v41 = asString();
            v43 = a2[2];
            v42 = a2[3];
            v44 = asString();
            *__p = 136317186;
            *&__p[4] = "ari";
            v59 = 2080;
            v60 = v37;
            v61 = 1024;
            v62 = 490;
            v63 = 2080;
            v64 = v39;
            v65 = 2080;
            v66 = v41;
            v67 = 1024;
            v68 = v43 >> 26;
            v69 = 1024;
            v70 = (v43 >> 15) & 0x3FF;
            v71 = 1024;
            v72 = v42;
            v73 = 2080;
            v74 = v44;
            _os_log_debug_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) sending RT AriMsgAttribReq %s %s on msg(%d-0x%03x) val(0x%x-%s)...", __p, 0x4Cu);
            if (v54 < 0)
            {
              operator delete(v53[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setMsgAttrib_nl", v11);
          if (v61 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = *__p;
          }

          v13 = *a2;
          v14 = asString();
          v15 = a2[1];
          v16 = asString();
          v18 = a2[2];
          v17 = a2[3];
          v19 = asString();
          LogLevels = AriOsa::LogToDefaultStringLogger(4, "(%s:%d) sending RT AriMsgAttribReq %s %s on msg(%d-0x%03x) val(0x%x-%s)...", v20, v12, 490, v14, v16, v18 >> 26, (v18 >> 15) & 0x3FF, v17, v19);
          if (SHIBYTE(v61) < 0)
          {
            operator delete(*__p);
          }
        }

        v21 = AriHostRt::sendRawInternal_nl(LogLevels, v8, v55);
        v6 = v21;
        if (v21)
        {
          v23 = Ari::GetLogLevels(v21);
          if ((v23 & 8) != 0)
          {
            v24 = AriOsa::GetOsLog(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo(v53, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setMsgAttrib_nl", v25);
              v45 = v54 >= 0 ? v53 : v53[0];
              v46 = *a2;
              v47 = asString();
              v48 = a2[1];
              v49 = asString();
              v51 = a2[2];
              v50 = a2[3];
              v52 = asString();
              *__p = 136317186;
              *&__p[4] = "ari";
              v59 = 2080;
              v60 = v45;
              v61 = 1024;
              v62 = 496;
              v63 = 2080;
              v64 = v47;
              v65 = 2080;
              v66 = v49;
              v67 = 1024;
              v68 = v51 >> 26;
              v69 = 1024;
              v70 = (v51 >> 15) & 0x3FF;
              v71 = 1024;
              v72 = v50;
              v73 = 2080;
              v74 = v52;
              _os_log_error_impl(&dword_2962B3000, v24, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Could not send AriMsgAttribReq %s %s on msg(%d-0x%03x) val(0x%x-%s)...", __p, 0x4Cu);
              if (v54 < 0)
              {
                operator delete(v53[0]);
              }
            }

            AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "setMsgAttrib_nl", v25);
            if (v61 >= 0)
            {
              v26 = __p;
            }

            else
            {
              v26 = *__p;
            }

            v27 = *a2;
            v28 = asString();
            v29 = a2[1];
            v30 = asString();
            v32 = a2[2];
            v31 = a2[3];
            v33 = asString();
            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Could not send AriMsgAttribReq %s %s on msg(%d-0x%03x) val(0x%x-%s)...", v34, v26, 496, v28, v30, v32 >> 26, (v32 >> 15) & 0x3FF, v31, v33);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(*__p);
            }
          }
        }

        AriMsg::ReleaseEncodedMessage(v8, v22);
      }

      else
      {
        v6 = 0xFFFFFFFFLL;
      }
    }

    AriMsg::~AriMsg(v56);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v35 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t AriHostRt::RegisterClient(AriHostRt *this, char *a2, unsigned int *a3, dispatch_queue_s *a4)
{
  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = MEMORY[0x29C258610](v8, "(cid == NULL) || (dq == NULL)", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", 504);
  v10 = AriHostRt::Init(v9);
  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  AriHostRt::GetInstance(v10);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN9AriHostRt14RegisterClientEPKcPjP16dispatch_queue_s_block_invoke;
  block[3] = &unk_29EE30E88;
  block[5] = this;
  block[6] = a3;
  block[4] = &v13;
  dispatch_sync(qword_2A18C2418, block);
  *a2 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return 0;
}

void sub_2962C2958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2962C2AF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t ResMgr<std::shared_ptr<Ari::AriClientProxy>>::alloc(uint64_t *a1)
{
  v39 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C258610](byte_2A18CA578 == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 204);
  v2 = AriOsa::OsMutexTake(qword_2A18CA570, 0xFFFFFFFFLL) == -1;
  MEMORY[0x29C258610](v2, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 205);
  v30 = -1431655766;
  v3 = IDMgr::allocate(&unk_2A18CA538, &v30);
  if (v3)
  {
    v4 = AriOsa::OsTimeStamp(v3);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *__p = &v30;
    v7 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<Ari::AriClientProxy>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(qword_2A18CA510, v30);
    *(v7 + 6) = v4;
    v9 = v7[5];
    v7[4] = v6;
    v7[5] = v5;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v30 = 0x7FFFFFFF;
    LogLevels = Ari::GetLogLevels(v3);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v28, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "alloc", v12);
        v27 = v29 >= 0 ? v28 : v28[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v32 = 2080;
        v33 = v27;
        v34 = 1024;
        v35 = 210;
        v36 = 2048;
        *v37 = qword_2A18CA510;
        *&v37[8] = 2048;
        v38 = qword_2A18CA528;
        _os_log_error_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ResMgr(%p) dump total entries: %zu", __p, 0x30u);
        if (v29 < 0)
        {
          operator delete(v28[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "alloc", v12);
      if (v34 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ResMgr(%p) dump total entries: %zu", v13, v14, 210, qword_2A18CA510, qword_2A18CA528);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    for (i = qword_2A18CA520; i; i = *i)
    {
      if (qword_2A18CA598)
      {
        std::function<void ()(int,unsigned int,std::shared_ptr<Ari::AriClientProxy> &)>::operator()(qword_2A18CA598, *(i + 16), *(i + 24));
      }

      else
      {
        v16 = Ari::GetLogLevels(0);
        if ((v16 & 8) != 0)
        {
          v17 = AriOsa::GetOsLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo(v28, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "alloc", v18);
            v21 = v28;
            if (v29 < 0)
            {
              v21 = v28[0];
            }

            v22 = *(i + 16);
            v23 = *(i + 24);
            *__p = 136316418;
            *&__p[4] = "ari";
            v32 = 2080;
            v33 = v21;
            v34 = 1024;
            v35 = 220;
            v36 = 1024;
            *v37 = v22;
            *&v37[4] = 1024;
            *&v37[6] = v22;
            LOWORD(v38) = 1024;
            *(&v38 + 2) = v23;
            _os_log_error_impl(&dword_2962B3000, v17, OS_LOG_TYPE_ERROR, "%s: (%s:%d) id(%08d-0x%08x) ts:%d", __p, 0x2Eu);
            if (v29 < 0)
            {
              operator delete(v28[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", "alloc", v18);
          if (v34 >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) id(%08d-0x%08x) ts:%d", v19, v20, 220, *(i + 16), *(i + 16), *(i + 24));
          if (SHIBYTE(v34) < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v24 = AriOsa::OsMutexGive(qword_2A18CA570, v8) == -1;
  MEMORY[0x29C258610](v24, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 227);
  result = v30;
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962C2F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHostRt::RegisterClient(AriHostRt *a1, uint64_t a2, _DWORD *a3)
{
  v6 = AriHostRt::Init(a1);
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  AriHostRt::GetInstance(v6);
  v8 = qword_2A18C2418;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN9AriHostRt14RegisterClientENSt3__110shared_ptrIN3Ari22AriXpcServerConnectionEEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPj_block_invoke;
  v10[3] = &unk_2A1D46630;
  v9 = *(a1 + 1);
  v10[5] = *a1;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2;
  v10[4] = &v13;
  dispatch_sync(v8, v10);
  *a3 = *(v14 + 6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Block_object_dispose(&v13, 8);
  return 0;
}

void sub_2962C3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2962C31F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c56_ZTSNSt3__110shared_ptrIN3Ari22AriXpcServerConnectionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c56_ZTSNSt3__110shared_ptrIN3Ari22AriXpcServerConnectionEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AriHostRt::RegisterEntitlementChecker(uint64_t a1)
{
  v9[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (!v2)
  {
    v8 = 0;
    v4 = qword_2A18CA728;
    if (qword_2A18CA728 != &checkerFunction)
    {
      v3 = 0;
LABEL_9:
      v8 = v4;
      qword_2A18CA728 = v3;
      goto LABEL_15;
    }

LABEL_10:
    (*(checkerFunction + 24))();
    (*(*qword_2A18CA728 + 32))(qword_2A18CA728);
    qword_2A18CA728 = v8;
    v8 = v7;
    goto LABEL_15;
  }

  if (v2 == a1)
  {
    v8 = v7;
    (*(*v2 + 24))(v2, v7);
    v3 = v8;
  }

  else
  {
    v3 = (*(*v2 + 16))(v2);
    v8 = v3;
  }

  v4 = qword_2A18CA728;
  if (v3 != v7)
  {
    if (qword_2A18CA728 != &checkerFunction)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (qword_2A18CA728 == &checkerFunction)
  {
    memset(v9, 170, 24);
    (*(*v3 + 24))(v3, v9);
    (*(*v8 + 32))(v8);
    v8 = 0;
    (*(*qword_2A18CA728 + 24))(qword_2A18CA728, v7);
    (*(*qword_2A18CA728 + 32))(qword_2A18CA728);
    qword_2A18CA728 = 0;
    v8 = v7;
    (*(v9[0] + 24))(v9, &checkerFunction);
    (*(v9[0] + 32))(v9);
  }

  else
  {
    (*(*v3 + 24))(v3, &checkerFunction);
    (*(*v8 + 32))(v8);
    v8 = qword_2A18CA728;
  }

  qword_2A18CA728 = &checkerFunction;
LABEL_15:
  result = std::__function::__value_func<BOOL ()(void *)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962C356C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AriHostRt::HasEntitlement(AriHostRt *this, void *a2)
{
  if (qword_2A18CA728)
  {
    return std::function<BOOL ()(void *)>::operator()(&checkerFunction, this);
  }

  else
  {
    return 1;
  }
}

uint64_t std::function<BOOL ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t AriHostRt::DeregisterClient(AriHostRt *this)
{
  v1 = this;
  AriHostRt::GetInstance(this);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -1;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN9AriHostRt16DeregisterClientEj_block_invoke;
  block[3] = &unk_29EE30EB0;
  v5 = v1;
  block[4] = &v6;
  block[5] = &AriHostRt::GetInstance(void)::instance;
  dispatch_sync(qword_2A18C2418, block);
  v2 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void ___ZN9AriHostRt16DeregisterClientEj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(*(a1 + 40));
  if (v2 != -1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40) + 0x8000;
    v73 = &unk_2A1D46AA0;
    v74 = v3;
    v75 = &v73;
    MEMORY[0x29C258610](*(v4 + 520) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 333);
    v5 = AriOsa::OsMutexTake(*(v4 + 512), 0xFFFFFFFFLL) == -1;
    MEMORY[0x29C258610](v5, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 336);
    for (i = *(v4 + 432); i; i = *i)
    {
      *buf = *(i + 4);
      if (!v75)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v75 + 6))(v75, buf, i + 4))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(1uLL);
      }
    }

    v21 = AriOsa::OsMutexGive(*(v4 + 512), v6) == -1;
    MEMORY[0x29C258610](v21, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 346);
    std::__function::__value_func<int ()(int,std::list<std::shared_ptr<Ari::AriClientProxy>> &)>::~__value_func[abi:ne200100](&v73);
    v22 = *(a1 + 40);
    memset(v70, 0, sizeof(v70));
    AriHostRt::checkShouldDeregIndication_nl(v22, v70);
    v23 = *(a1 + 40);
    v24 = v23 + 0x8000;
    v25 = *(v23 + 33448);
    if (v25)
    {
      v26 = std::__shared_weak_count::lock(v25);
      if (v26)
      {
        v27 = v26;
        v28 = *(v24 + 672);
        if (v28)
        {
          AriHostRt::ClientTransitionTracker::removeAllTracking(v28, *(a1 + 48));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    v29 = *(a1 + 40);
    v30 = v29 + 0x8000;
    v31 = *(v29 + 33432);
    if (v31)
    {
      v32 = std::__shared_weak_count::lock(v31);
      if (v32)
      {
        v33 = v32;
        v34 = *(v30 + 656);
        if (v34)
        {
          AriHostRt::ClientTransitionTracker::removeAllTracking(v34, *(a1 + 48));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }
    }

    v35 = *(a1 + 40);
    v36 = v35 + 0x8000;
    v37 = *(v35 + 33464);
    if (v37)
    {
      v38 = std::__shared_weak_count::lock(v37);
      if (v38)
      {
        v39 = v38;
        v40 = *(v36 + 688);
        if (v40)
        {
          AriHostRt::ClientTransitionTracker::removeAllTracking(v40, *(a1 + 48));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }
    }

    v41 = *(a1 + 48);
    isAlloc = ResMgr<std::shared_ptr<Ari::AriClientProxy>>::isAlloc(*(a1 + 40) + 33040);
    if (!isAlloc)
    {
      LogLevels = Ari::GetLogLevels(isAlloc);
      if ((LogLevels & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregisterClient_block_invoke", v55);
          v56 = v72 >= 0 ? __p : __p[0];
          v57 = *(a1 + 48);
          *buf = 136315906;
          *&buf[4] = "ari";
          v77 = 2080;
          v78 = v56;
          v79 = 1024;
          v80 = 615;
          v81 = 1024;
          LODWORD(v82) = v57;
          _os_log_impl(&dword_2962B3000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Attempt to de-reg an non-existant CID(%x)", buf, 0x22u);
          if (v72 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregisterClient_block_invoke", v55);
        if (v79 >= 0)
        {
          v59 = buf;
        }

        else
        {
          v59 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Attempt to de-reg an non-existant CID(%x)", v58, v59, 615, *(a1 + 48));
        if (SHIBYTE(v79) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_76;
    }

    v43 = *(a1 + 40);
    v44 = *(a1 + 48);
    MEMORY[0x29C258610](*(v43 + 33144) == 0, "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 235);
    v45 = AriOsa::OsMutexTake(*(v43 + 33136), 0xFFFFFFFFLL) == -1;
    MEMORY[0x29C258610](v45, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 236);
    v46 = IDMgr::free((v43 + 33080));
    ResMgr<std::shared_ptr<Ari::AriClientProxy>>::sw_dbug_trap(v43 + 33040, v46 ^ 1);
    v47 = std::__hash_table<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<AriHostRt::RtTransaction>>>>::find<int>((v43 + 33040), v44);
    v48 = v47;
    v49 = *(v43 + 33048);
    v50 = *v47;
    v51 = v47[1];
    v52 = vcnt_s8(v49);
    v52.i16[0] = vaddlv_u8(v52);
    if (v52.u32[0] > 1uLL)
    {
      if (v51 >= *&v49)
      {
        v51 %= *&v49;
      }
    }

    else
    {
      v51 &= *&v49 - 1;
    }

    v60 = *(v43 + 33040);
    v61 = *(v60 + 8 * v51);
    do
    {
      v62 = v61;
      v61 = *v61;
    }

    while (v61 != v47);
    if (v62 == (v43 + 33056))
    {
      goto LABEL_63;
    }

    v63 = v62[1];
    if (v52.u32[0] > 1uLL)
    {
      if (v63 >= *&v49)
      {
        v63 %= *&v49;
      }
    }

    else
    {
      v63 &= *&v49 - 1;
    }

    if (v63 != v51)
    {
LABEL_63:
      if (v50)
      {
        v64 = *(v50 + 8);
        if (v52.u32[0] > 1uLL)
        {
          v65 = *(v50 + 8);
          if (v64 >= *&v49)
          {
            v65 = v64 % *&v49;
          }
        }

        else
        {
          v65 = v64 & (*&v49 - 1);
        }

        if (v65 == v51)
        {
          goto LABEL_67;
        }
      }

      *(v60 + 8 * v51) = 0;
      v50 = *v47;
    }

    if (!v50)
    {
LABEL_73:
      *v62 = v50;
      *v47 = 0;
      --*(v43 + 33064);
      v66 = v47[5];
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      operator delete(v48);
      v68 = AriOsa::OsMutexGive(*(v43 + 33136), v67) == -1;
      MEMORY[0x29C258610](v68, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 241);
LABEL_76:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_77;
    }

    v64 = *(v50 + 8);
LABEL_67:
    if (v52.u32[0] > 1uLL)
    {
      if (v64 >= *&v49)
      {
        v64 %= *&v49;
      }
    }

    else
    {
      v64 &= *&v49 - 1;
    }

    if (v64 != v51)
    {
      *(*(v43 + 33040) + 8 * v64) = v62;
      v50 = *v47;
    }

    goto LABEL_73;
  }

  v8 = Ari::GetLogLevels(a1);
  if ((v8 & 0x10) != 0)
  {
    v9 = AriOsa::GetOsLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregisterClient_block_invoke", v10);
      v11 = v72;
      v12 = __p[0];
      atomic_load(*(a1 + 40));
      v13 = asString();
      v14 = __p;
      v15 = *(a1 + 48);
      if (v11 < 0)
      {
        v14 = v12;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v77 = 2080;
      v78 = v14;
      v79 = 1024;
      v80 = 580;
      v81 = 2080;
      v82 = v13;
      v83 = 1024;
      v84 = v15;
      _os_log_impl(&dword_2962B3000, v9, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) AriHostRt in state(%s) unsuitable for DeregisterClient on cid %u", buf, 0x2Cu);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_rt.cpp", "DeregisterClient_block_invoke", v10);
    v16 = SHIBYTE(v79);
    v17 = *buf;
    atomic_load(*(a1 + 40));
    v18 = asString();
    v20 = buf;
    if (v16 < 0)
    {
      v20 = v17;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) AriHostRt in state(%s) unsuitable for DeregisterClient on cid %u", v19, v20, 580, v18, *(a1 + 48));
    if (SHIBYTE(v79) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_77:
  v69 = *MEMORY[0x29EDCA608];
}