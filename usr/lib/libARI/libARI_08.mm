void sub_2961399CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::packParam(AriMsg *this, uint64_t a2, char *a3, size_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (!result)
  {
    if (a3)
    {
      v10 = Ari::TlvDefById(*this, *(this + 1), a2, 0);
      if (v10)
      {
        v11 = v10;
        v12 = **(v10 + 2) * *(*(v10 + 2) + 32);
        v13 = v10[2];
        if (v12 + v13 <= a4)
        {
          if ((DefaultLogLevel & 4) != 0)
          {
            OsLog = AriOsa::GetOsLog(v10);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", v36);
              v32 = v37 >= 0 ? v36 : v36[0];
              v33 = *(v11 + 3);
              v34 = *v11;
              v35 = v11[2];
              *__p = 136316930;
              *&__p[4] = "ari";
              v39 = 2080;
              v40 = v32;
              v41 = 1024;
              v42 = 788;
              v43 = 2080;
              *v44 = v33;
              *&v44[8] = 1024;
              *v45 = v34;
              *&v45[4] = 2048;
              *&v45[6] = v12;
              *&v45[14] = 1024;
              *&v45[16] = v35;
              v46 = 2048;
              v47 = a3;
              _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Pack tlv(%s) with tid(%d) len(%zu) with offset(%d) within param(%p)", __p, 0x46u);
              if (v37 < 0)
              {
                operator delete(v36[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", __p);
            if (v41 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Pack tlv(%s) with tid(%d) len(%zu) with offset(%d) within param(%p)", v24, v25, 788, *(v11 + 3), *v11, v12, v11[2], a3);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(*__p);
            }

            v13 = v11[2];
          }

          result = AriMsg::pack(this, a2, &a3[v13], v12, 0);
        }

        else
        {
          if ((DefaultLogLevel & 8) != 0)
          {
            v14 = AriOsa::GetOsLog(v10);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", v36);
              v30 = v37 >= 0 ? v36 : v36[0];
              v31 = v11[2];
              *__p = 136316674;
              *&__p[4] = "ari";
              v39 = 2080;
              v40 = v30;
              v41 = 1024;
              v42 = 778;
              v43 = 1024;
              *v44 = a2;
              *&v44[4] = 1024;
              *&v44[6] = v31;
              *v45 = 2048;
              *&v45[2] = v12;
              *&v45[10] = 2048;
              *&v45[12] = a4;
              _os_log_error_impl(&dword_296048000, v14, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid(%d) has offset(%d) and len(%zu) outside of param with sz(%zu)", __p, 0x3Cu);
              if (v37 < 0)
              {
                operator delete(v36[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", __p);
            if (v41 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid(%d) has offset(%d) and len(%zu) outside of param with sz(%zu)", v15, v16, 778, a2, v11[2], v12, a4);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(*__p);
            }
          }

          result = 4294967216;
        }
      }

      else
      {
        if ((DefaultLogLevel & 8) != 0)
        {
          v20 = AriOsa::GetOsLog(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", v36);
            v27 = v37 >= 0 ? v36 : v36[0];
            v28 = *this;
            v29 = *(this + 1);
            *__p = 136316418;
            *&__p[4] = "ari";
            v39 = 2080;
            v40 = v27;
            v41 = 1024;
            v42 = 771;
            v43 = 1024;
            *v44 = a2;
            *&v44[4] = 1024;
            *&v44[6] = v28;
            *v45 = 1024;
            *&v45[2] = v29;
            _os_log_error_impl(&dword_296048000, v20, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid (%d) is not found under gid(%d) mid(0x%x)", __p, 0x2Eu);
            if (v37 < 0)
            {
              operator delete(v36[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", __p);
          if (v41 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid (%d) is not found under gid(%d) mid(0x%x)", v21, v22, 771, a2, *this, *(this + 1));
          if (SHIBYTE(v41) < 0)
          {
            operator delete(*__p);
          }
        }

        result = 4294967220;
      }
    }

    else
    {
      if ((DefaultLogLevel & 8) != 0)
      {
        v17 = AriOsa::GetOsLog(result);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", v36);
          v26 = v37 >= 0 ? v36 : v36[0];
          *__p = 136315906;
          *&__p[4] = "ari";
          v39 = 2080;
          v40 = v26;
          v41 = 1024;
          v42 = 764;
          v43 = 2048;
          *v44 = 0;
          _os_log_error_impl(&dword_296048000, v17, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid msg or input value v(%p)!", __p, 0x26u);
          if (v37 < 0)
          {
            operator delete(v36[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "packParam", __p);
        if (v41 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid msg or input value v(%p)!", v18, v19, 764, 0);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(*__p);
        }
      }

      result = 4294967221;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296139FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *AriMsg::getEncodedBuf(AriMsg *this, unsigned int *a2)
{
  v89 = *MEMORY[0x29EDCA608];
  if (*(this + 17) || (*this - 64) < 0xFFFFFFC1 || ((v4 = *(this + 1)) != 0 ? (v5 = a2 == 0) : (v5 = 1), v5 || v4 >= 0x400))
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
        v23 = v70 >= 0 ? v69 : v69[0];
        *__p = 136315650;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v23;
        v74 = 1024;
        v75 = 807;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid msg ID definitions!", __p, 0x1Cu);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
      if (v74 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid msg ID definitions!", v18, v19, 807);
      goto LABEL_27;
    }

LABEL_29:
    v20 = 0;
    goto LABEL_30;
  }

  *a2 = 0;
  v6 = *(this + 7);
  if (v6)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    v10 = *(this + 7);
    do
    {
      if (!*v10 || *v10 > 0xFFFu || (v11 = *(v10 + 16), v12 = *(v11 + 8), v13 = *(v10 + 32) / *v11 * v12, v13 >= 0x4000))
      {
        if ((DefaultLogLevel & 8) == 0)
        {
          goto LABEL_29;
        }

        v24 = AriOsa::GetOsLog(this);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
          v54 = v70 >= 0 ? v69 : v69[0];
          v55 = *(this + 6);
          *__p = 136315906;
          *&__p[4] = "ari";
          v72 = 2080;
          v73 = v54;
          v74 = 1024;
          v75 = 834;
          v76 = 2080;
          v77 = v55;
          _os_log_error_impl(&dword_296048000, v24, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid tlv value found for msg(%s)!", __p, 0x26u);
          if (v70 < 0)
          {
            operator delete(v69[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
        if (v74 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid tlv value found for msg(%s)!", v25, v26, 834, *(this + 6));
        goto LABEL_27;
      }

      v7 = (v7 + 1);
      v8 = (v8 + *(v11 + 32) * v12 + 4);
      v9 = (v9 + v13 + 4);
      v10 = *(v10 + 48);
    }

    while (v10);
    if (v9 < 0x8000)
    {
      goto LABEL_43;
    }

    if ((DefaultLogLevel & 8) != 0)
    {
      v14 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
        v64 = v70 >= 0 ? v69 : v69[0];
        v65 = *(this + 6);
        *__p = 136316418;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v64;
        v74 = 1024;
        v75 = 849;
        v76 = 2080;
        v77 = v65;
        v78 = 1024;
        v79 = v9;
        v80 = 1024;
        v81 = 0x7FFF;
        _os_log_error_impl(&dword_296048000, v14, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Message(%s) size (%d) is larger than max (%d)", __p, 0x32u);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
      if (v74 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Message(%s) size (%d) is larger than max (%d)", v15, v16, 849, *(this + 6), v9, 0x7FFFLL);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_43:
  v27 = *(this + 2);
  if (v27)
  {
    v28 = *v27;
    if (*v27)
    {
      v29 = *(this + 2);
      while (1)
      {
        v30 = *(this + 7);
        if (!v6)
        {
          break;
        }

        while (*v30 != v28)
        {
          v30 = *(v30 + 48);
          if (!v30)
          {
            v27 = v29;
            goto LABEL_76;
          }
        }

        v31 = v29[1];
        ++v29;
        v28 = v31;
        if (!v31)
        {
          goto LABEL_51;
        }
      }

LABEL_76:
      if ((DefaultLogLevel & 8) == 0)
      {
        goto LABEL_29;
      }

      v48 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
        v60 = v70 >= 0 ? v69 : v69[0];
        v61 = *(this + 6);
        v62 = *v27;
        *__p = 136316162;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v60;
        v74 = 1024;
        v75 = 872;
        v76 = 2080;
        v77 = v61;
        v78 = 1024;
        v79 = v62;
        _os_log_error_impl(&dword_296048000, v48, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Message(%s)'s mandatory TLV (%d) not packed!", __p, 0x2Cu);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
      if (v74 >= 0)
      {
        v50 = __p;
      }

      else
      {
        v50 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Message(%s)'s mandatory TLV (%d) not packed!", v49, v50, 872, *(this + 6), *v27);
      goto LABEL_27;
    }
  }

LABEL_51:
  v32 = v9 + 12;
  v33 = AriOsa::MemAlloc(1, v9 + 12);
  if (!v33)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v51 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
        v63 = v70 >= 0 ? v69 : v69[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v72 = 2080;
        v73 = v63;
        v74 = 1024;
        v75 = 887;
        v76 = 2048;
        v77 = (v9 + 12);
        _os_log_error_impl(&dword_296048000, v51, OS_LOG_TYPE_ERROR, "%s: (%s:%d) MemAlloc failed for buffer sz (%zu)", __p, 0x26u);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
      if (v74 >= 0)
      {
        v53 = __p;
      }

      else
      {
        v53 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) MemAlloc failed for buffer sz (%zu)", v52, v53, 887, v9 + 12);
LABEL_27:
      if (SHIBYTE(v74) < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v20 = v33;
  v33[2] = 0;
  *v33 = 2877210846;
  v34 = ((*this & 0x3F) << 35) | 0xAB7EC0DE;
  *v33 = v34;
  v35 = (*(this + 1) & 0x3FF) << 6;
  v33[2] = v35;
  *v33 = v34 | (v9 << 49);
  v33[2] = v35 | (*(this + 16) << 17);
  if ((DefaultLogLevel & 4) != 0)
  {
    v36 = AriOsa::GetOsLog(v33);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
      v56 = v70 >= 0 ? v69 : v69[0];
      v57 = *(this + 6);
      v58 = *this;
      v59 = *(this + 1);
      *__p = 136317442;
      *&__p[4] = "ari";
      v72 = 2080;
      v73 = v56;
      v74 = 1024;
      v75 = 903;
      v76 = 2080;
      v77 = v57;
      v78 = 1024;
      v79 = v58;
      v80 = 1024;
      v81 = v59;
      v82 = 2048;
      *v83 = v9 + 12;
      *&v83[8] = 2048;
      v84 = v20;
      v85 = 1024;
      v86 = v7;
      v87 = 2048;
      v88 = this;
      _os_log_debug_impl(&dword_296048000, v36, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Encode  %s(%d-0x%03x) len(%zu) buf(%p) tlv(%d) obj(%p)", __p, 0x56u);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
    if (v74 >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Encode  %s(%d-0x%03x) len(%zu) buf(%p) tlv(%d) obj(%p)", v37, v38, 903, *(this + 6), *this, *(this + 1), v9 + 12, v20, v7, this);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(*__p);
    }
  }

  if (v8 != v9 && (DefaultLogLevel & 4) != 0)
  {
    v39 = AriOsa::GetOsLog(v33);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", v69);
      v66 = v70 >= 0 ? v69 : v69[0];
      v67 = *this;
      v68 = *(this + 1);
      *__p = 136316930;
      *&__p[4] = "ari";
      v72 = 2080;
      v73 = v66;
      v74 = 1024;
      v75 = 913;
      v76 = 2048;
      v77 = this;
      v78 = 1024;
      v79 = v67;
      v80 = 1024;
      v81 = v68;
      v82 = 1024;
      *v83 = v8;
      *&v83[4] = 1024;
      *&v83[6] = v9;
      _os_log_debug_impl(&dword_296048000, v39, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) msg(%p) with g(%d) m(0x%03x) msg-size def(%d) actual(%d)", __p, 0x3Eu);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
    if (v74 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) msg(%p) with g(%d) m(0x%03x) msg-size def(%d) actual(%d)", v40, v41, 913, this, *this, *(this + 1), v8, v9);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(*__p);
    }
  }

  v42 = *(this + 7);
  if (v42)
  {
    v43 = v20 + 3;
    while (1)
    {
      v44 = *(v42 + 2);
      v45 = *(v44 + 16);
      LODWORD(v44) = *(v42 + 4) / *v44 * *(v44 + 8);
      *v43 = 0;
      v46 = *v42;
      *v43 = 2 * (*v42 & 0xFFF);
      *v43 = (v44 << 18) | ((v42[1] & 7) << 13) | (2 * (v46 & 0xFFF));
      if (v45(v43 + 1, *(v42 + 5)))
      {
        break;
      }

      v43 = (v43 + (*v43 >> 18) + 4);
      v42 = *(v42 + 6);
      if (!v42)
      {
        goto LABEL_71;
      }
    }

    free(v20);
    goto LABEL_29;
  }

LABEL_71:
  *a2 = v32;
  AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "getEncodedBuf", __p);
  if (v74 >= 0)
  {
    v47 = __p;
  }

  else
  {
    v47 = *__p;
  }

  Ari::LogBuf("mhdr", v47, 0x3AF, v20, *a2, 0xA0u);
  if (SHIBYTE(v74) < 0)
  {
    operator delete(*__p);
  }

LABEL_30:
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_29613AAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriMsg::ReleaseEncodedMessage(AriMsg *this, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "ReleaseEncodedMessage", v8);
      v7 = v9 >= 0 ? v8 : v8[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v11 = 2080;
      v12 = v7;
      v13 = 1024;
      v14 = 950;
      v15 = 2048;
      v16 = this;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) freed as (%p)", __p, 0x26u);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "ReleaseEncodedMessage", __p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) freed as (%p)", v4, v5, 950, this);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*__p);
    }
  }

  if (this)
  {
    free(this);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29613ACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::unpack(AriMsg *this, uint64_t a2, void *a3, uint64_t a4, BOOL *a5, unint64_t *a6)
{
  v97 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (result)
  {
    goto LABEL_2;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a3)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(result);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
        v53 = v84 >= 0 ? v83 : v83[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v86 = 2080;
        v87 = v53;
        v88 = 1024;
        v89 = 975;
        v90 = 2048;
        *v91 = 0;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) AriMsg::unpack invalid Msg or input buff (%p)!", __p, 0x26u);
        if (v84 < 0)
        {
          operator delete(v83[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
      if (v88 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) AriMsg::unpack invalid Msg or input buff (%p)!", v19, v20, 975, 0);
      if (SHIBYTE(v88) < 0)
      {
        operator delete(*__p);
      }
    }

    result = 4294967217;
    goto LABEL_2;
  }

  v14 = Ari::TlvDefById(*this, *(this + 1), a2, a4);
  if (!v14)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v21 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
        v54 = v84 >= 0 ? v83 : v83[0];
        v55 = *this;
        v56 = *(this + 1);
        *__p = 136316674;
        *&__p[4] = "ari";
        v86 = 2080;
        v87 = v54;
        v88 = 1024;
        v89 = 983;
        v90 = 1024;
        *v91 = a2;
        *&v91[4] = 1024;
        *&v91[6] = v55;
        *v92 = 1024;
        *&v92[2] = v56;
        *&v92[6] = 2048;
        *&v92[8] = a4;
        _os_log_error_impl(&dword_296048000, v21, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid (%d) is not found under gid(%d) mid (0x%03x) with defined sz(%zu)", __p, 0x38u);
        if (v84 < 0)
        {
          operator delete(v83[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
      if (v88 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid (%d) is not found under gid(%d) mid (0x%03x) with defined sz(%zu)", v22, v23, 983, a2, *this, *(this + 1), a4);
      if (SHIBYTE(v88) < 0)
      {
        operator delete(*__p);
      }
    }

    result = 4294967218;
    goto LABEL_2;
  }

  v15 = v14;
  v16 = *(this + 7);
  if (!v16)
  {
LABEL_12:
    if (!a5)
    {
      if ((DefaultLogLevel & 8) != 0)
      {
        v34 = AriOsa::GetOsLog(v14);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
          v60 = v84 >= 0 ? v83 : v83[0];
          v61 = *v15;
          v62 = *(v15 + 4);
          *__p = 136316162;
          *&__p[4] = "ari";
          v86 = 2080;
          v87 = v60;
          v88 = 1024;
          v89 = 1064;
          v90 = 1024;
          *v91 = v61;
          *&v91[4] = 1024;
          *&v91[6] = v62;
          _os_log_error_impl(&dword_296048000, v34, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Mandatory tlv with tid(%d) v(%d) is missing", __p, 0x28u);
          if (v84 < 0)
          {
            operator delete(v83[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
        if (v88 >= 0)
        {
          v36 = __p;
        }

        else
        {
          v36 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Mandatory tlv with tid(%d) v(%d) is missing", v35, v36, 1064, *v15, *(v15 + 4));
        if (SHIBYTE(v88) < 0)
        {
          operator delete(*__p);
        }
      }

      result = 4294967215;
      goto LABEL_2;
    }

    v17 = 0;
    goto LABEL_14;
  }

  while (*v16 != *v14)
  {
    v16 = *(v16 + 48);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v24 = *(v16 + 32);
  v25 = *(v16 + 16);
  v26 = v25[1];
  v27 = v26 * *(v25 + 8);
  if (v24 > v27)
  {
    if (!*(this + 17))
    {
      v41 = *(this + 2);
      if (v41)
      {
        v42 = *v41;
        if (*v41)
        {
          v43 = v41 + 1;
          while (v42 != a2)
          {
            v44 = *v43++;
            v42 = v44;
            if (!v44)
            {
              goto LABEL_33;
            }
          }

          if ((DefaultLogLevel & 8) != 0)
          {
            v57 = AriOsa::GetOsLog(v14);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
              v75 = v84 >= 0 ? v83 : v83[0];
              v76 = *(v15 + 3);
              v77 = *(this + 6);
              *__p = 136316674;
              *&__p[4] = "ari";
              v86 = 2080;
              v87 = v75;
              v88 = 1024;
              v89 = 1008;
              v90 = 2080;
              *v91 = v76;
              *&v91[8] = 2080;
              *v92 = v77;
              *&v92[8] = 2048;
              *&v92[10] = v24;
              *&v92[18] = 2048;
              *&v92[20] = v27;
              _os_log_error_impl(&dword_296048000, v57, OS_LOG_TYPE_ERROR, "%s: (%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", __p, 0x44u);
              if (v84 < 0)
              {
                operator delete(v83[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
            if (v88 >= 0)
            {
              v59 = __p;
            }

            else
            {
              v59 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", v58, v59, 1008, *(v15 + 3), *(this + 6), v24, v27);
            if (SHIBYTE(v88) < 0)
            {
              operator delete(*__p);
            }
          }

          result = 4294967216;
          goto LABEL_2;
        }
      }
    }

LABEL_33:
    if ((DefaultLogLevel & 0x10) != 0)
    {
      v28 = AriOsa::GetOsLog(v14);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
        v29 = v84 >= 0 ? v83 : v83[0];
        v30 = *(v15 + 3);
        v31 = *(this + 6);
        *__p = 136316674;
        *&__p[4] = "ari";
        v86 = 2080;
        v87 = v29;
        v88 = 1024;
        v89 = 1015;
        v90 = 2080;
        *v91 = v30;
        *&v91[8] = 2080;
        *v92 = v31;
        *&v92[8] = 2048;
        *&v92[10] = v24;
        *&v92[18] = 2048;
        *&v92[20] = v27;
        _os_log_impl(&dword_296048000, v28, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", __p, 0x44u);
        if (v84 < 0)
        {
          operator delete(v83[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
      if (v88 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) > defined max encoded size(%zu)", v32, v33, 1015, *(v15 + 3), *(this + 6), v24, v27);
LABEL_60:
      if (SHIBYTE(v88) < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_62;
    }

    goto LABEL_62;
  }

  v37 = v24 / v26;
  if (!(v24 % v26))
  {
    v82 = *v25;
    v45 = v25[3];
    if ((DefaultLogLevel & 4) != 0)
    {
      v81 = v25[3];
      v46 = AriOsa::GetOsLog(v14);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
        v69 = v83;
        if (v84 < 0)
        {
          v69 = v83[0];
        }

        v70 = *(v16 + 24);
        v71 = *v15;
        v72 = *(v16 + 40);
        v73 = *this;
        v74 = *(this + 1);
        *__p = 136317442;
        *&__p[4] = "ari";
        v86 = 2080;
        v87 = v69;
        v88 = 1024;
        v89 = 1043;
        v90 = 2080;
        *v91 = v70;
        *&v91[8] = 1024;
        *v92 = v71;
        *&v92[4] = 2048;
        *&v92[6] = v72;
        *&v92[14] = 2048;
        *&v92[16] = v24;
        *&v92[24] = 2048;
        *&v92[26] = v37 * v82;
        v93 = 1024;
        v94 = v73;
        v95 = 1024;
        v96 = v74;
        _os_log_debug_impl(&dword_296048000, v46, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Unpack tlv(%s) with tid(%d) raw(%p) len(%zu) into origLen(%zu) for g(%d) m(0x%03x)", __p, 0x56u);
        if (v84 < 0)
        {
          operator delete(v83[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
      if (v88 >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Unpack tlv(%s) with tid(%d) raw(%p) len(%zu) into origLen(%zu) for g(%d) m(0x%03x)", v47, v48, 1043, *(v16 + 24), *v15, *(v16 + 40), v24, v37 * v82, *this, *(this + 1));
      v45 = v81;
      if (SHIBYTE(v88) < 0)
      {
        operator delete(*__p);
      }
    }

    result = v45(a3, *(v16 + 40), v26, v24 / v26);
    if (result)
    {
      goto LABEL_2;
    }

    if (a6)
    {
      *a6 = v37 * v82;
    }

    if (!a5)
    {
      goto LABEL_62;
    }

    v17 = 1;
LABEL_14:
    result = 0;
    *a5 = v17;
    goto LABEL_2;
  }

  if (*(this + 17) || (v49 = *(this + 2)) == 0 || (v50 = *v49) == 0)
  {
LABEL_54:
    if ((DefaultLogLevel & 8) != 0)
    {
      v38 = AriOsa::GetOsLog(v14);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
        v66 = v84 >= 0 ? v83 : v83[0];
        v67 = *(v15 + 3);
        v68 = *(this + 6);
        *__p = 136316674;
        *&__p[4] = "ari";
        v86 = 2080;
        v87 = v66;
        v88 = 1024;
        v89 = 1031;
        v90 = 2080;
        *v91 = v67;
        *&v91[8] = 2080;
        *v92 = v68;
        *&v92[8] = 2048;
        *&v92[10] = v24;
        *&v92[18] = 2048;
        *&v92[20] = v26;
        _os_log_error_impl(&dword_296048000, v38, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", __p, 0x44u);
        if (v84 < 0)
        {
          operator delete(v83[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
      if (v88 >= 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Dropping optional TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", v39, v40, 1031, *(v15 + 3), *(this + 6), v24, v26);
      goto LABEL_60;
    }

LABEL_62:
    result = 0;
    goto LABEL_2;
  }

  v51 = v49 + 1;
  while (v50 != a2)
  {
    v52 = *v51++;
    v50 = v52;
    if (!v52)
    {
      goto LABEL_54;
    }
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v63 = AriOsa::GetOsLog(v14);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", v83);
      v78 = v84 >= 0 ? v83 : v83[0];
      v79 = *(v15 + 3);
      v80 = *(this + 6);
      *__p = 136316674;
      *&__p[4] = "ari";
      v86 = 2080;
      v87 = v78;
      v88 = 1024;
      v89 = 1024;
      v90 = 2080;
      *v91 = v79;
      *&v91[8] = 2080;
      *v92 = v80;
      *&v92[8] = 2048;
      *&v92[10] = v24;
      *&v92[18] = 2048;
      *&v92[20] = v26;
      _os_log_error_impl(&dword_296048000, v63, OS_LOG_TYPE_ERROR, "%s: (%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", __p, 0x44u);
      if (v84 < 0)
      {
        operator delete(v83[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unpack", __p);
    if (v88 >= 0)
    {
      v65 = __p;
    }

    else
    {
      v65 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) trying to unpack mandatory TLV(%s) for MSG(%s) with packed sz(%zu) not multiple of element encoded size(%zu)", v64, v65, 1024, *(v15 + 3), *(this + 6), v24, v26);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(*__p);
    }
  }

  result = 4294967213;
LABEL_2:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29613B8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AriMsg::isTlvMandatory(AriMsg *this, int a2)
{
  if (*(this + 17))
  {
    return 0;
  }

  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v5 = v3 + 1;
  do
  {
    result = v4 == a2;
    if (v4 == a2)
    {
      break;
    }

    v6 = *v5++;
    v4 = v6;
  }

  while (v6);
  return result;
}

uint64_t AriMsg::unparam(AriMsg *this, uint64_t a2, char *a3, unint64_t a4)
{
  v54 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (result)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    v7 = *(this + 7);
    if (!v7)
    {
LABEL_20:
      result = 0;
      goto LABEL_37;
    }

    while (1)
    {
      if (*(v7 + 5) == a2)
      {
        v10 = *(v7 + 2);
        v11 = *(v10 + 8);
        v12 = *v10;
        v13 = v7[2];
        v14 = v12 * v11;
        if (v12 * v11 + v13 > a4)
        {
          if ((DefaultLogLevel & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(result);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam", v38);
              v33 = v39 >= 0 ? v38 : v38[0];
              v34 = *this;
              v35 = *(this + 1);
              v36 = *v7;
              v37 = v7[2];
              *__p = 136317698;
              *&__p[4] = "ari";
              v41 = 2080;
              v42 = v33;
              v43 = 1024;
              v44 = 1115;
              v45 = 1024;
              *v46 = v34;
              *&v46[4] = 1024;
              *&v46[6] = v35;
              *v47 = 1024;
              *&v47[2] = a2;
              *&v47[6] = 1024;
              *&v47[8] = v36;
              *v48 = 1024;
              *&v48[2] = v37;
              *v49 = 2048;
              *&v49[2] = v12;
              v50 = 1024;
              *v51 = v11;
              *&v51[4] = 2048;
              *&v51[6] = a4;
              _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Grp(%d) m(0x%03x) pos(%d) tid(%d) with offset(%d) + len(%zu)*dim(%d), but param sz is only (%zu)", __p, 0x54u);
              if (v39 < 0)
              {
                operator delete(v38[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam", __p);
            if (v43 >= 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = *__p;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Grp(%d) m(0x%03x) pos(%d) tid(%d) with offset(%d) + len(%zu)*dim(%d), but param sz is only (%zu)", v29, v30, 1115, *this, *(this + 1), a2, *v7, v7[2], v12, v11, a4);
            if (SHIBYTE(v43) < 0)
            {
              operator delete(*__p);
            }
          }

          result = 4294967216;
          goto LABEL_37;
        }

        if ((DefaultLogLevel & 4) != 0)
        {
          v15 = AriOsa::GetOsLog(result);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam", v38);
            v18 = v38;
            if (v39 < 0)
            {
              v18 = v38[0];
            }

            v19 = *this;
            v20 = *(this + 1);
            v21 = *v7;
            v22 = v7[2];
            v23 = *(v7 + 3);
            v24 = *(v7 + 4);
            *__p = 136317954;
            *&__p[4] = "ari";
            v41 = 2080;
            v42 = v18;
            v43 = 1024;
            v44 = 1130;
            v45 = 2080;
            *v46 = v23;
            *&v46[8] = 1024;
            *v47 = v19;
            *&v47[4] = 1024;
            *&v47[6] = v20;
            *&v47[10] = 1024;
            *v48 = a2;
            *&v48[4] = 1024;
            *v49 = v21;
            *&v49[4] = 1024;
            *&v49[6] = v22;
            v50 = 2048;
            *v51 = v24;
            *&v51[8] = 2048;
            *&v51[10] = v14;
            v52 = 2048;
            v53 = a4;
            _os_log_debug_impl(&dword_296048000, v15, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Tlv(%s) Grp(%d) m(0x%03x) pos(%d) tid(%d) w/ offset(%d) rawlen(%zu) into max origLen(%zu) param sz(%zu)", __p, 0x62u);
            if (v39 < 0)
            {
              operator delete(v38[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam", __p);
          v17 = __p;
          if (v43 < 0)
          {
            v17 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Tlv(%s) Grp(%d) m(0x%03x) pos(%d) tid(%d) w/ offset(%d) rawlen(%zu) into max origLen(%zu) param sz(%zu)", v16, v17, 1130, *(v7 + 3), *this, *(this + 1), a2, *v7, v7[2], *(v7 + 4), v14, a4);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(*__p);
          }

          v13 = v7[2];
        }

        result = AriMsg::unpack(this, *v7, &a3[v13], v14, 0, 0);
        if (result)
        {
          goto LABEL_37;
        }
      }

      v7 = *(v7 + 6);
      if (!v7)
      {
        goto LABEL_20;
      }
    }
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v25 = AriOsa::GetOsLog(result);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam", v38);
      v32 = v39 >= 0 ? v38 : v38[0];
      *__p = 136316162;
      *&__p[4] = "ari";
      v41 = 2080;
      v42 = v32;
      v43 = 1024;
      v44 = 1091;
      v45 = 2048;
      *v46 = this;
      *&v46[8] = 2048;
      *v47 = 0;
      _os_log_error_impl(&dword_296048000, v25, OS_LOG_TYPE_ERROR, "%s: (%s:%d) AriMsg::unparam invalid input AriMsg (%p) or  bufferr (%p)!", __p, 0x30u);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "unparam", __p);
    if (v43 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) AriMsg::unparam invalid input AriMsg (%p) or  bufferr (%p)!", v26, v27, 1091, this, 0);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(*__p);
    }
  }

  result = 4294967217;
LABEL_37:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29613BE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::extractCtx(AriMsg *this, int *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(this + 17) == -74)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "extractCtx", v9);
        v8 = v10 >= 0 ? v9 : v9[0];
        *__p = 136315650;
        *&__p[4] = "ari";
        v12 = 2080;
        v13 = v8;
        v14 = 1024;
        v15 = 1167;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Corrupt or invalid message - cannot extract context id", __p, 0x1Cu);
        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "extractCtx", __p);
      if (v14 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Corrupt or invalid message - cannot extract context id", v3, v4, 1167);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v5 = *(this + 16);
    if (v5 != 0x8000)
    {
      result = 0;
      *a2 = v5;
      goto LABEL_12;
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29613C048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::updateCtx(AriMsg *this, int a2)
{
  result = *(this + 17);
  if (!result)
  {
    *(this + 16) = a2;
  }

  return result;
}

const char *Ari::MsgNameById(Ari *this)
{
  v1 = Ari::MsgDefById((this >> 26), (this >> 15) & 0x3FF);
  result = "Unknown";
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

uint64_t Ari::MsgDefByName(Ari *this, const char *a2)
{
  v3 = 1;
  while (!ARIMSGDEF_GROUPS[v3])
  {
LABEL_8:
    if (++v3 == 64)
    {
      return 0;
    }
  }

  v4 = 0;
  while (1)
  {
    v5 = Ari::MsgDefById(v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + 48);
      v8 = strlen(v7);
      if (!strncmp(v7, this, v8) && v8 == strlen(this))
      {
        return v6;
      }
    }

    if (++v4 == 1023)
    {
      goto LABEL_8;
    }
  }
}

uint64_t Ari::TlvDefByName(Ari *this, const char *a2, const char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = Ari::MsgDefByName(this, a2);
  if (!v5)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_20;
  }

  if (!*v6)
  {
LABEL_7:
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(v5);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefByName", __p);
        v10 = v16 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v18 = 2080;
        v19 = v10;
        v20 = 1024;
        v21 = 1288;
        v22 = 2080;
        v23 = a2;
        v24 = 2080;
        v25 = this;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) tlv(%s) not found under msg(%s)", buf, 0x30u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefByName", buf);
      if (v20 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) tlv(%s) not found under msg(%s)", v11, v12, 1288, a2, this);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_19;
  }

  v7 = strlen(a2);
  while (1)
  {
    v5 = strncmp(*(v6 + 24), a2, v7);
    if (!v5)
    {
      break;
    }

    v8 = *(v6 + 32);
    v6 += 32;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_29613C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Ari::LogHeader(Ari *this, const unsigned __int8 *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  AriOsa::SWTrap((this == 0), "buf == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", 0x50E);
  v3 = Ari::MsgDefById(((*this >> 35) & 0x3FLL), *(this + 2) >> 6);
  if (v3)
  {
    v4 = *(v3 + 6);
  }

  else
  {
    v4 = " (NOT FOUND IN SDK)";
  }

  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(v3);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", __p);
      v6 = v36 >= 0 ? __p : __p[0];
      v7 = *this;
      *buf = 136315906;
      *&buf[4] = "ari";
      v38 = 2080;
      v39 = v6;
      v40 = 1024;
      v41 = 1305;
      v42 = 1024;
      v43 = v7;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->magic   = 0X%08X", buf, 0x22u);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", buf);
    if (v40 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->magic   = 0X%08X", v8, v9, 1305, *this);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(*buf);
    }

    if ((DefaultLogLevel & 0x20) != 0)
    {
      v11 = AriOsa::GetOsLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", __p);
        v12 = v36 >= 0 ? __p : __p[0];
        v13 = (*this >> 35) & 0x3FLL;
        *buf = 136315906;
        *&buf[4] = "ari";
        v38 = 2080;
        v39 = v12;
        v40 = 1024;
        v41 = 1306;
        v42 = 1024;
        v43 = v13;
        _os_log_impl(&dword_296048000, v11, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->groupId = 0X%04X", buf, 0x22u);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", buf);
      if (v40 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->groupId = 0X%04X", v14, v15, 1306, (*this >> 35) & 0x3FLL);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(*buf);
      }

      if ((DefaultLogLevel & 0x20) != 0)
      {
        v17 = AriOsa::GetOsLog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", __p);
          v18 = v36 >= 0 ? __p : __p[0];
          v19 = *(this + 2) >> 6;
          *buf = 136316162;
          *&buf[4] = "ari";
          v38 = 2080;
          v39 = v18;
          v40 = 1024;
          v41 = 1307;
          v42 = 1024;
          v43 = v19;
          v44 = 2080;
          v45 = v4;
          _os_log_impl(&dword_296048000, v17, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->msgId   = 0X%04X (%s)", buf, 0x2Cu);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", buf);
        if (v40 >= 0)
        {
          v21 = buf;
        }

        else
        {
          v21 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->msgId   = 0X%04X (%s)", v20, v21, 1307, *(this + 2) >> 6, v4);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(*buf);
        }

        if ((DefaultLogLevel & 0x20) != 0)
        {
          v23 = AriOsa::GetOsLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", __p);
            v24 = v36 >= 0 ? __p : __p[0];
            v25 = *this >> 49;
            *buf = 136315906;
            *&buf[4] = "ari";
            v38 = 2080;
            v39 = v24;
            v40 = 1024;
            v41 = 1308;
            v42 = 1024;
            v43 = v25;
            _os_log_impl(&dword_296048000, v23, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->length  = 0X%03d", buf, 0x22u);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", buf);
          if (v40 >= 0)
          {
            v27 = buf;
          }

          else
          {
            v27 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->length  = 0X%03d", v26, v27, 1308, *this >> 49);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*buf);
          }

          if ((DefaultLogLevel & 0x20) != 0)
          {
            v29 = AriOsa::GetOsLog(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", __p);
              v30 = v36 >= 0 ? __p : __p[0];
              v31 = *(this + 2) >> 17;
              *buf = 136315906;
              *&buf[4] = "ari";
              v38 = 2080;
              v39 = v30;
              v40 = 1024;
              v41 = 1309;
              v42 = 1024;
              v43 = v31;
              _os_log_impl(&dword_296048000, v29, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) hdr->ctx     = 0X%04X", buf, 0x22u);
              if (v36 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "LogHeader", buf);
            if (v40 >= 0)
            {
              v33 = buf;
            }

            else
            {
              v33 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) hdr->ctx     = 0X%04X", v32, v33, 1309, *(this + 2) >> 17);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29613C9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICbsConfigReq_SDK::ARI_IBICbsConfigReq_SDK(AriSdk::ARI_IBICbsConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 343965696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 343965696, 0);
}

void AriSdk::ARI_IBICbsConfigReq_SDK::ARI_IBICbsConfigReq_SDK(AriSdk::ARI_IBICbsConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsConfigReq_SDK::~ARI_IBICbsConfigReq_SDK(AriSdk::ARI_IBICbsConfigReq_SDK *this)
{
  *this = &unk_2A1D30C18;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4095AA964ELL);
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
  AriSdk::ARI_IBICbsConfigReq_SDK::~ARI_IBICbsConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsConfigReq_SDK::pack(AriSdk::ARI_IBICbsConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x192uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 2uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
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

void sub_29613D84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICdmaLanguage,64ul>::operator=(AriOsa *a1, __int128 *a2)
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
      v12 = (*(a2 + 1) - *a2) >> 2;
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
      v25 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 2, 64);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29613DB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICbsCdmaServiceCategoryFields,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x201uLL)
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
      v25 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 64);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29613DD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICbsConfigRspCb_SDK::ARI_IBICbsConfigRspCb_SDK(AriSdk::ARI_IBICbsConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 352354304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 352354304, 0);
}

void AriSdk::ARI_IBICbsConfigRspCb_SDK::ARI_IBICbsConfigRspCb_SDK(AriSdk::ARI_IBICbsConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsConfigRspCb_SDK::~ARI_IBICbsConfigRspCb_SDK(AriSdk::ARI_IBICbsConfigRspCb_SDK *this)
{
  *this = &unk_2A1D30C50;
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
  AriSdk::ARI_IBICbsConfigRspCb_SDK::~ARI_IBICbsConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsConfigRspCb_SDK::pack(AriSdk::ARI_IBICbsConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICbsGetConfigReq_SDK::ARI_IBICbsGetConfigReq_SDK(AriSdk::ARI_IBICbsGetConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 343998464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 343998464, 0);
}

void AriSdk::ARI_IBICbsGetConfigReq_SDK::ARI_IBICbsGetConfigReq_SDK(AriSdk::ARI_IBICbsGetConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsGetConfigReq_SDK::~ARI_IBICbsGetConfigReq_SDK(AriSdk::ARI_IBICbsGetConfigReq_SDK *this)
{
  *this = &unk_2A1D30C88;
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
  AriSdk::ARI_IBICbsGetConfigReq_SDK::~ARI_IBICbsGetConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsGetConfigReq_SDK::pack(AriSdk::ARI_IBICbsGetConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICbsGetConfigRspCb_SDK::ARI_IBICbsGetConfigRspCb_SDK(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 352387072, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 352387072, 0);
}

void AriSdk::ARI_IBICbsGetConfigRspCb_SDK::ARI_IBICbsGetConfigRspCb_SDK(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsGetConfigRspCb_SDK::~ARI_IBICbsGetConfigRspCb_SDK(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this)
{
  *this = &unk_2A1D30CC0;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4095AA964ELL);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsGetConfigRspCb_SDK::~ARI_IBICbsGetConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsGetConfigRspCb_SDK::pack(AriSdk::ARI_IBICbsGetConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x192uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 7, v10, v11 - v10, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 2uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 10, v14, v15 - v14, 0), !result))
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

  return result;
}

void sub_29613EED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICbsMsgIndCb_SDK::ARI_IBICbsMsgIndCb_SDK(AriSdk::ARI_IBICbsMsgIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 360841216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 360841216, 0);
}

void AriSdk::ARI_IBICbsMsgIndCb_SDK::ARI_IBICbsMsgIndCb_SDK(AriSdk::ARI_IBICbsMsgIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsMsgIndCb_SDK::~ARI_IBICbsMsgIndCb_SDK(AriSdk::ARI_IBICbsMsgIndCb_SDK *this)
{
  *this = &unk_2A1D30CF8;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  *(this + 13) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40BDFB0063);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 9);
  *(this + 9) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICbsMsgIndCb_SDK::~ARI_IBICbsMsgIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsMsgIndCb_SDK::pack(AriSdk::ARI_IBICbsMsgIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 7, v11, v12 - v11, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 8, v13, 4uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 4uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 2uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (v18 = *(this + 22), v17 == v18) || (result = AriMsg::pack(*(this + 6), 12, v17, v18 - v17, 0), !result))
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

  return result;
}

void sub_29613FA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1252ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x4E5)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 1252;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1252);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29613FCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1245ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x4DE)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 1245;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1245);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29613FEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::ARI_IBICbsMsgServiceReadyIndCb_SDK(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 360873984, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 360873984, 0);
}

void AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::ARI_IBICbsMsgServiceReadyIndCb_SDK(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::~ARI_IBICbsMsgServiceReadyIndCb_SDK(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this)
{
  *this = &unk_2A1D30D30;
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
  AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::~ARI_IBICbsMsgServiceReadyIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK::pack(AriSdk::ARI_IBICbsMsgServiceReadyIndCb_SDK *this, AriMsg **a2)
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

void std::vector<IBICdmaLanguage>::__init_with_size[abi:ne200100]<IBICdmaLanguage*,IBICdmaLanguage*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961402E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICbsCdmaServiceCategoryFields>::__init_with_size[abi:ne200100]<IBICbsCdmaServiceCategoryFields*,IBICbsCdmaServiceCategoryFields*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29614038C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimAccessApduCmdReq_SDK::ARI_IBISimAccessApduCmdReq_SDK(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746618880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746618880, 0);
}

void AriSdk::ARI_IBISimAccessApduCmdReq_SDK::ARI_IBISimAccessApduCmdReq_SDK(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessApduCmdReq_SDK::~ARI_IBISimAccessApduCmdReq_SDK(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this)
{
  *this = &unk_2A1D30DF8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4019D8AA6FLL);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimAccessApduCmdReq_SDK::~ARI_IBISimAccessApduCmdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessApduCmdReq_SDK::pack(AriSdk::ARI_IBISimAccessApduCmdReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xAuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x110uLL, 0), !result))
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

void AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::ARI_IBISimAccessApduCmdRspCb_SDK(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755007488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755007488, 0);
}

void AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::ARI_IBISimAccessApduCmdRspCb_SDK(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::~ARI_IBISimAccessApduCmdRspCb_SDK(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this)
{
  *this = &unk_2A1D30E30;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4015B00A97);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::~ARI_IBISimAccessApduCmdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK::pack(AriSdk::ARI_IBISimAccessApduCmdRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x314uLL, 0), !result))
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

void AriSdk::ARI_IBISimAccessFcpReq_SDK::ARI_IBISimAccessFcpReq_SDK(AriSdk::ARI_IBISimAccessFcpReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746782720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746782720, 0);
}

void AriSdk::ARI_IBISimAccessFcpReq_SDK::ARI_IBISimAccessFcpReq_SDK(AriSdk::ARI_IBISimAccessFcpReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessFcpReq_SDK::~ARI_IBISimAccessFcpReq_SDK(AriSdk::ARI_IBISimAccessFcpReq_SDK *this)
{
  *this = &unk_2A1D30E68;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4080B1215BLL);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimAccessFcpReq_SDK::~ARI_IBISimAccessFcpReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessFcpReq_SDK::pack(AriSdk::ARI_IBISimAccessFcpReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 4uLL, 0), !result))
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

void AriSdk::ARI_IBISimAccessFcpRspCb_SDK::ARI_IBISimAccessFcpRspCb_SDK(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755171328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755171328, 0);
}

void AriSdk::ARI_IBISimAccessFcpRspCb_SDK::ARI_IBISimAccessFcpRspCb_SDK(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessFcpRspCb_SDK::~ARI_IBISimAccessFcpRspCb_SDK(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this)
{
  *this = &unk_2A1D30EA0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40C8F101BCLL);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4092CEF755);
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimAccessFcpRspCb_SDK::~ARI_IBISimAccessFcpRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessFcpRspCb_SDK::pack(AriSdk::ARI_IBISimAccessFcpRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 9, v9, 0x6DCuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 10, v10, 0x1FEuLL, 0), !result))
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

void AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746651648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746651648, 0);
}

void AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::~ARI_IBISimAccessGetSimDataReq_SDK(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this)
{
  *this = &unk_2A1D30ED8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::~ARI_IBISimAccessGetSimDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::pack(AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755040256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755040256, 0);
}

void AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::~ARI_IBISimAccessGetSimDataRspCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this)
{
  *this = &unk_2A1D30F10;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4078998D37);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40ACC164F2);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::~ARI_IBISimAccessGetSimDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::pack(AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 13, v8, 0x234uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 17, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 19, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 21, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 27, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 28, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 29, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 30, v15, 0x54uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 31, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (v18 = *(this + 21), v17 == v18) || (result = AriMsg::pack(*(this + 6), 32, v17, v18 - v17, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 33, v19, 2uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (v21 = *(this + 25), v20 == v21) || (result = AriMsg::pack(*(this + 6), 34, v20, v21 - v20, 0), !result))
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

  return result;
}

void sub_2961430E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,10ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xB)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 10;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 10);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29614348C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,33ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x22)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 33;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 33);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29614367C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::ARI_IBISimAccessGetSimDataIndCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763625472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763625472, 0);
}

void AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::ARI_IBISimAccessGetSimDataIndCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::~ARI_IBISimAccessGetSimDataIndCb_SDK(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this)
{
  *this = &unk_2A1D30F48;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4078998D37);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40ACC164F2);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::~ARI_IBISimAccessGetSimDataIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK::pack(AriSdk::ARI_IBISimAccessGetSimDataIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 7, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 15, v9, 0x234uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 18, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 20, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 26, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 27, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 28, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 29, v15, 0x54uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 30, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (v18 = *(this + 21), v17 == v18) || (result = AriMsg::pack(*(this + 6), 31, v17, v18 - v17, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 32, v19, 2uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (v21 = *(this + 25), v20 == v21) || (result = AriMsg::pack(*(this + 6), 33, v20, v21 - v20, 0), !result))
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

  return result;
}

void sub_296144328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimAccessReadRecordReq_SDK::ARI_IBISimAccessReadRecordReq_SDK(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747110400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747110400, 0);
}

void AriSdk::ARI_IBISimAccessReadRecordReq_SDK::ARI_IBISimAccessReadRecordReq_SDK(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessReadRecordReq_SDK::~ARI_IBISimAccessReadRecordReq_SDK(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this)
{
  *this = &unk_2A1D30F80;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40D7A84E51);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessReadRecordReq_SDK::~ARI_IBISimAccessReadRecordReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessReadRecordReq_SDK::pack(AriSdk::ARI_IBISimAccessReadRecordReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 0xCuLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::ARI_IBISimAccessReadRecordRspCb_SDK(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755499008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755499008, 0);
}

void AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::ARI_IBISimAccessReadRecordRspCb_SDK(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::~ARI_IBISimAccessReadRecordRspCb_SDK(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this)
{
  *this = &unk_2A1D30FB8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40178720E3);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::~ARI_IBISimAccessReadRecordRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK::pack(AriSdk::ARI_IBISimAccessReadRecordRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 9, v9, 0x106uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimApplicationReq_SDK::ARI_IBISimApplicationReq_SDK(AriSdk::ARI_IBISimApplicationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746749952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746749952, 0);
}

void AriSdk::ARI_IBISimApplicationReq_SDK::ARI_IBISimApplicationReq_SDK(AriSdk::ARI_IBISimApplicationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimApplicationReq_SDK::~ARI_IBISimApplicationReq_SDK(AriSdk::ARI_IBISimApplicationReq_SDK *this)
{
  *this = &unk_2A1D30FF0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4075806E5BLL);
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
  AriSdk::ARI_IBISimApplicationReq_SDK::~ARI_IBISimApplicationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimApplicationReq_SDK::pack(AriSdk::ARI_IBISimApplicationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x11uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimApplicationRspCb_SDK::ARI_IBISimApplicationRspCb_SDK(AriSdk::ARI_IBISimApplicationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755138560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755138560, 0);
}

void AriSdk::ARI_IBISimApplicationRspCb_SDK::ARI_IBISimApplicationRspCb_SDK(AriSdk::ARI_IBISimApplicationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimApplicationRspCb_SDK::~ARI_IBISimApplicationRspCb_SDK(AriSdk::ARI_IBISimApplicationRspCb_SDK *this)
{
  *this = &unk_2A1D31028;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimApplicationRspCb_SDK::~ARI_IBISimApplicationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimApplicationRspCb_SDK::pack(AriSdk::ARI_IBISimApplicationRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::ARI_IBISimCdmaFullAccessIndCb_SDK(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763723776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763723776, 0);
}

void AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::ARI_IBISimCdmaFullAccessIndCb_SDK(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::~ARI_IBISimCdmaFullAccessIndCb_SDK(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this)
{
  *this = &unk_2A1D31060;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::~ARI_IBISimCdmaFullAccessIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK::pack(AriSdk::ARI_IBISimCdmaFullAccessIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimEccListIndCb_SDK::ARI_IBISimEccListIndCb_SDK(AriSdk::ARI_IBISimEccListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763559936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763559936, 0);
}

void AriSdk::ARI_IBISimEccListIndCb_SDK::ARI_IBISimEccListIndCb_SDK(AriSdk::ARI_IBISimEccListIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimEccListIndCb_SDK::~ARI_IBISimEccListIndCb_SDK(AriSdk::ARI_IBISimEccListIndCb_SDK *this)
{
  *this = &unk_2A1D31098;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimEccListIndCb_SDK::~ARI_IBISimEccListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimEccListIndCb_SDK::pack(AriSdk::ARI_IBISimEccListIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 1uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 5, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 6, v13, 1uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 7, v14, v15 - v14, 0), !result))
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

  return result;
}

void sub_296146520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<IBIEmergencyNumber,20ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xA1)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 20;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 3, 20);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296146790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<IBIEmergencyNumber,10ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x51)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 10;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 3, 10);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296146988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<IBIEmergencyNumber,30ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xF1)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 30;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 3, 30);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296146B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::ARI_IBISimFileGetCdmaAuxInfoReq_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747274240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747274240, 0);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::ARI_IBISimFileGetCdmaAuxInfoReq_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::~ARI_IBISimFileGetCdmaAuxInfoReq_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this)
{
  *this = &unk_2A1D310D0;
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
  AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::~ARI_IBISimFileGetCdmaAuxInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK::pack(AriSdk::ARI_IBISimFileGetCdmaAuxInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755662848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755662848, 0);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::~ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this)
{
  *this = &unk_2A1D31108;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40F3A072B0);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40F3A072B0);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40C903D563);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40C903D563);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4080B1215BLL);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::~ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK::pack(AriSdk::ARI_IBISimFileGetCdmaAuxInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0xAuLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x491uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x491uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x49uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x49uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 2uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBISimFileReadBinaryReq_SDK::ARI_IBISimFileReadBinaryReq_SDK(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747175936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747175936, 0);
}

void AriSdk::ARI_IBISimFileReadBinaryReq_SDK::ARI_IBISimFileReadBinaryReq_SDK(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileReadBinaryReq_SDK::~ARI_IBISimFileReadBinaryReq_SDK(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this)
{
  *this = &unk_2A1D31140;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileReadBinaryReq_SDK::~ARI_IBISimFileReadBinaryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileReadBinaryReq_SDK::pack(AriSdk::ARI_IBISimFileReadBinaryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::ARI_IBISimFileReadBinaryRspCb_SDK(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755564544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755564544, 0);
}

void AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::ARI_IBISimFileReadBinaryRspCb_SDK(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::~ARI_IBISimFileReadBinaryRspCb_SDK(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this)
{
  *this = &unk_2A1D31178;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40E2063AD4);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B705F878);
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
  AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::~ARI_IBISimFileReadBinaryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK::pack(AriSdk::ARI_IBISimFileReadBinaryRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0xE04uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileSearchRecordReq_SDK::ARI_IBISimFileSearchRecordReq_SDK(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747307008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747307008, 0);
}

void AriSdk::ARI_IBISimFileSearchRecordReq_SDK::ARI_IBISimFileSearchRecordReq_SDK(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileSearchRecordReq_SDK::~ARI_IBISimFileSearchRecordReq_SDK(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this)
{
  *this = &unk_2A1D311B0;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4080B1215BLL);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40BDFB0063);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileSearchRecordReq_SDK::~ARI_IBISimFileSearchRecordReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileSearchRecordReq_SDK::pack(AriSdk::ARI_IBISimFileSearchRecordReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xAuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 1uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (v15 = *(this + 18), v14 == v15) || (result = AriMsg::pack(*(this + 6), 11, v14, v15 - v14, 0), !result))
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

  return result;
}

void sub_296148DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,255ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x100)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 255;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 255);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296149050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::ARI_IBISimFileSearchRecordRspCb_SDK(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755695616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755695616, 0);
}

void AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::ARI_IBISimFileSearchRecordRspCb_SDK(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::~ARI_IBISimFileSearchRecordRspCb_SDK(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this)
{
  *this = &unk_2A1D311E8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402DF8315BLL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B705F878);
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
  AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::~ARI_IBISimFileSearchRecordRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK::pack(AriSdk::ARI_IBISimFileSearchRecordRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x101uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::ARI_IBISimFileUpdateBinaryReq_SDK(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747208704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747208704, 0);
}

void AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::ARI_IBISimFileUpdateBinaryReq_SDK(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::~ARI_IBISimFileUpdateBinaryReq_SDK(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this)
{
  *this = &unk_2A1D31220;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40E2063AD4);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4080B1215BLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::~ARI_IBISimFileUpdateBinaryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK::pack(AriSdk::ARI_IBISimFileUpdateBinaryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0xAuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 0xE04uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::ARI_IBISimFileUpdateBinaryRspCb_SDK(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755597312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755597312, 0);
}

void AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::ARI_IBISimFileUpdateBinaryRspCb_SDK(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::~ARI_IBISimFileUpdateBinaryRspCb_SDK(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this)
{
  *this = &unk_2A1D31258;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B705F878);
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
  AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::~ARI_IBISimFileUpdateBinaryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK::pack(AriSdk::ARI_IBISimFileUpdateBinaryRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimFullAccessIndCb_SDK::ARI_IBISimFullAccessIndCb_SDK(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763461632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763461632, 0);
}

void AriSdk::ARI_IBISimFullAccessIndCb_SDK::ARI_IBISimFullAccessIndCb_SDK(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimFullAccessIndCb_SDK::~ARI_IBISimFullAccessIndCb_SDK(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this)
{
  *this = &unk_2A1D31290;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimFullAccessIndCb_SDK::~ARI_IBISimFullAccessIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimFullAccessIndCb_SDK::pack(AriSdk::ARI_IBISimFullAccessIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetEccListReq_SDK::ARI_IBISimGetEccListReq_SDK(AriSdk::ARI_IBISimGetEccListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746881024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746881024, 0);
}

void AriSdk::ARI_IBISimGetEccListReq_SDK::ARI_IBISimGetEccListReq_SDK(AriSdk::ARI_IBISimGetEccListReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetEccListReq_SDK::~ARI_IBISimGetEccListReq_SDK(AriSdk::ARI_IBISimGetEccListReq_SDK *this)
{
  *this = &unk_2A1D312C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetEccListReq_SDK::~ARI_IBISimGetEccListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetEccListReq_SDK::pack(AriSdk::ARI_IBISimGetEccListReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetEccListRspCb_SDK::ARI_IBISimGetEccListRspCb_SDK(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755269632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755269632, 0);
}

void AriSdk::ARI_IBISimGetEccListRspCb_SDK::ARI_IBISimGetEccListRspCb_SDK(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetEccListRspCb_SDK::~ARI_IBISimGetEccListRspCb_SDK(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this)
{
  *this = &unk_2A1D31300;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetEccListRspCb_SDK::~ARI_IBISimGetEccListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetEccListRspCb_SDK::pack(AriSdk::ARI_IBISimGetEccListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 1uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 6, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 7, v13, 1uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 8, v14, v15 - v14, 0), !result))
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

  return result;
}

void sub_29614ACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::ARI_IBISimGetFullAccessStatusReq_SDK(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746913792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746913792, 0);
}

void AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::ARI_IBISimGetFullAccessStatusReq_SDK(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::~ARI_IBISimGetFullAccessStatusReq_SDK(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this)
{
  *this = &unk_2A1D31338;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::~ARI_IBISimGetFullAccessStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK::pack(AriSdk::ARI_IBISimGetFullAccessStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::ARI_IBISimGetFullAccessStatusRspCb_SDK(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755302400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755302400, 0);
}

void AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::ARI_IBISimGetFullAccessStatusRspCb_SDK(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::~ARI_IBISimGetFullAccessStatusRspCb_SDK(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this)
{
  *this = &unk_2A1D31370;
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
  AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::~ARI_IBISimGetFullAccessStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK::pack(AriSdk::ARI_IBISimGetFullAccessStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::ARI_IBISimGetPhoneNumMetaInfoReq_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747339776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747339776, 0);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::ARI_IBISimGetPhoneNumMetaInfoReq_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::~ARI_IBISimGetPhoneNumMetaInfoReq_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this)
{
  *this = &unk_2A1D313A8;
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
  AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::~ARI_IBISimGetPhoneNumMetaInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK::pack(AriSdk::ARI_IBISimGetPhoneNumMetaInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755728384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755728384, 0);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this)
{
  *this = &unk_2A1D313E0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK::pack(AriSdk::ARI_IBISimGetPhoneNumMetaInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763756544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763756544, 0);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this)
{
  *this = &unk_2A1D31418;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::~ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK::pack(AriSdk::ARI_IBISimGetPhoneNumMetaInfoIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::ARI_IBISimGetPlmnModeBitReq_SDK(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747241472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747241472, 0);
}

void AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::ARI_IBISimGetPlmnModeBitReq_SDK(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::~ARI_IBISimGetPlmnModeBitReq_SDK(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this)
{
  *this = &unk_2A1D31450;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::~ARI_IBISimGetPlmnModeBitReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK::pack(AriSdk::ARI_IBISimGetPlmnModeBitReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::ARI_IBISimGetPlmnModeBitRspCb_SDK(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755630080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755630080, 0);
}

void AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::ARI_IBISimGetPlmnModeBitRspCb_SDK(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::~ARI_IBISimGetPlmnModeBitRspCb_SDK(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this)
{
  *this = &unk_2A1D31488;
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
  AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::~ARI_IBISimGetPlmnModeBitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK::pack(AriSdk::ARI_IBISimGetPlmnModeBitRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimHwEventIndCb_SDK::ARI_IBISimHwEventIndCb_SDK(AriSdk::ARI_IBISimHwEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763691008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763691008, 0);
}

void AriSdk::ARI_IBISimHwEventIndCb_SDK::ARI_IBISimHwEventIndCb_SDK(AriSdk::ARI_IBISimHwEventIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimHwEventIndCb_SDK::~ARI_IBISimHwEventIndCb_SDK(AriSdk::ARI_IBISimHwEventIndCb_SDK *this)
{
  *this = &unk_2A1D314C0;
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
  AriSdk::ARI_IBISimHwEventIndCb_SDK::~ARI_IBISimHwEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimHwEventIndCb_SDK::pack(AriSdk::ARI_IBISimHwEventIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::ARI_IBISimPlmnModeBitIndCb_SDK(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 763658240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 763658240, 0);
}

void AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::ARI_IBISimPlmnModeBitIndCb_SDK(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::~ARI_IBISimPlmnModeBitIndCb_SDK(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this)
{
  *this = &unk_2A1D314F8;
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
  AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::~ARI_IBISimPlmnModeBitIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK::pack(AriSdk::ARI_IBISimPlmnModeBitIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimReadPhoneNumReq_SDK::ARI_IBISimReadPhoneNumReq_SDK(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747372544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747372544, 0);
}

void AriSdk::ARI_IBISimReadPhoneNumReq_SDK::ARI_IBISimReadPhoneNumReq_SDK(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimReadPhoneNumReq_SDK::~ARI_IBISimReadPhoneNumReq_SDK(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this)
{
  *this = &unk_2A1D31530;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBISimReadPhoneNumReq_SDK::~ARI_IBISimReadPhoneNumReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimReadPhoneNumReq_SDK::pack(AriSdk::ARI_IBISimReadPhoneNumReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::ARI_IBISimReadPhoneNumRspCb_SDK(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755761152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755761152, 0);
}

void AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::ARI_IBISimReadPhoneNumRspCb_SDK(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::~ARI_IBISimReadPhoneNumRspCb_SDK(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this)
{
  *this = &unk_2A1D31568;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4013417087);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4050308C2ALL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::~ARI_IBISimReadPhoneNumRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK::pack(AriSdk::ARI_IBISimReadPhoneNumRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x16uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF3uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTestReq_SDK::ARI_IBISimTestReq_SDK(AriSdk::ARI_IBISimTestReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 746815488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 746815488, 0);
}

void AriSdk::ARI_IBISimTestReq_SDK::ARI_IBISimTestReq_SDK(AriSdk::ARI_IBISimTestReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTestReq_SDK::~ARI_IBISimTestReq_SDK(AriSdk::ARI_IBISimTestReq_SDK *this)
{
  *this = &unk_2A1D315A0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimTestReq_SDK::~ARI_IBISimTestReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTestReq_SDK::pack(AriSdk::ARI_IBISimTestReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTestReq_SDK::unpack(AriSdk::ARI_IBISimTestReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29614E1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void AriSdk::ARI_IBISimTestRspCb_SDK::ARI_IBISimTestRspCb_SDK(AriSdk::ARI_IBISimTestRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755204096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755204096, 0);
}

void AriSdk::ARI_IBISimTestRspCb_SDK::ARI_IBISimTestRspCb_SDK(AriSdk::ARI_IBISimTestRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTestRspCb_SDK::~ARI_IBISimTestRspCb_SDK(AriSdk::ARI_IBISimTestRspCb_SDK *this)
{
  *this = &unk_2A1D315D8;
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
    MEMORY[0x29C257E70](v3, 0x1000C402DF8315BLL);
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
  AriSdk::ARI_IBISimTestRspCb_SDK::~ARI_IBISimTestRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTestRspCb_SDK::pack(AriSdk::ARI_IBISimTestRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x101uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
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

void AriSdk::ARI_IBISimTrayStatusReq_SDK::ARI_IBISimTrayStatusReq_SDK(AriSdk::ARI_IBISimTrayStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747438080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747438080, 0);
}

void AriSdk::ARI_IBISimTrayStatusReq_SDK::ARI_IBISimTrayStatusReq_SDK(AriSdk::ARI_IBISimTrayStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTrayStatusReq_SDK::~ARI_IBISimTrayStatusReq_SDK(AriSdk::ARI_IBISimTrayStatusReq_SDK *this)
{
  *this = &unk_2A1D31610;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTrayStatusReq_SDK::~ARI_IBISimTrayStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTrayStatusReq_SDK::pack(AriSdk::ARI_IBISimTrayStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimTrayStatusRspCb_SDK::ARI_IBISimTrayStatusRspCb_SDK(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755826688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755826688, 0);
}

void AriSdk::ARI_IBISimTrayStatusRspCb_SDK::ARI_IBISimTrayStatusRspCb_SDK(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTrayStatusRspCb_SDK::~ARI_IBISimTrayStatusRspCb_SDK(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this)
{
  *this = &unk_2A1D31648;
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
  AriSdk::ARI_IBISimTrayStatusRspCb_SDK::~ARI_IBISimTrayStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTrayStatusRspCb_SDK::pack(AriSdk::ARI_IBISimTrayStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimWritePhoneNumReq_SDK::ARI_IBISimWritePhoneNumReq_SDK(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 747405312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 747405312, 0);
}

void AriSdk::ARI_IBISimWritePhoneNumReq_SDK::ARI_IBISimWritePhoneNumReq_SDK(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimWritePhoneNumReq_SDK::~ARI_IBISimWritePhoneNumReq_SDK(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this)
{
  *this = &unk_2A1D31680;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4013417087);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4050308C2ALL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimWritePhoneNumReq_SDK::~ARI_IBISimWritePhoneNumReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimWritePhoneNumReq_SDK::pack(AriSdk::ARI_IBISimWritePhoneNumReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x16uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF3uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::ARI_IBISimWritePhoneNumRspCb_SDK(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 755793920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 755793920, 0);
}

void AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::ARI_IBISimWritePhoneNumRspCb_SDK(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::~ARI_IBISimWritePhoneNumRspCb_SDK(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this)
{
  *this = &unk_2A1D316B8;
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
  AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::~ARI_IBISimWritePhoneNumRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK::pack(AriSdk::ARI_IBISimWritePhoneNumRspCb_SDK *this, AriMsg **a2)
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

void std::vector<IBIEmergencyNumber>::__init_with_size[abi:ne200100]<IBIEmergencyNumber*,IBIEmergencyNumber*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29614F9F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::ARI_IBIConfiguredSimInfoReq_SDK(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930480128, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930480128, 0);
}

void AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::ARI_IBIConfiguredSimInfoReq_SDK(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::~ARI_IBIConfiguredSimInfoReq_SDK(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIConfiguredSimInfoReq_SDK::pack(AriSdk::ARI_IBIConfiguredSimInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::ARI_IBIConfiguredSimInfoRspCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922091520, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922091520, 0);
}

void AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::ARI_IBIConfiguredSimInfoRspCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::~ARI_IBIConfiguredSimInfoRspCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this)
{
  *this = &unk_2A1D31B00;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::~ARI_IBIConfiguredSimInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK::pack(AriSdk::ARI_IBIConfiguredSimInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 4, v9, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBISimInfoStruct,5ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 6)
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
      v25 = 5;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 5);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296150254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::ARI_IBIConfiguredSimInfoIndCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914194432, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914194432, 0);
}

void AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::ARI_IBIConfiguredSimInfoIndCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::~ARI_IBIConfiguredSimInfoIndCb_SDK(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this)
{
  *this = &unk_2A1D31B38;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::~ARI_IBIConfiguredSimInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK::pack(AriSdk::ARI_IBIConfiguredSimInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIEnableVirtualSimReq_SDK::ARI_IBIEnableVirtualSimReq_SDK(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930414592, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930414592, 0);
}

void AriSdk::ARI_IBIEnableVirtualSimReq_SDK::ARI_IBIEnableVirtualSimReq_SDK(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEnableVirtualSimReq_SDK::~ARI_IBIEnableVirtualSimReq_SDK(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this)
{
  *this = &unk_2A1D31B70;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEnableVirtualSimReq_SDK::~ARI_IBIEnableVirtualSimReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEnableVirtualSimReq_SDK::pack(AriSdk::ARI_IBIEnableVirtualSimReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::ARI_IBIEnableVirtualSimRspCb_SDK(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922025984, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922025984, 0);
}

void AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::ARI_IBIEnableVirtualSimRspCb_SDK(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::~ARI_IBIEnableVirtualSimRspCb_SDK(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this)
{
  *this = &unk_2A1D31BA8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::~ARI_IBIEnableVirtualSimRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK::pack(AriSdk::ARI_IBIEnableVirtualSimRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::ARI_IBIEnableVirtualSimIndCb_SDK(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914128896, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914128896, 0);
}

void AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::ARI_IBIEnableVirtualSimIndCb_SDK(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::~ARI_IBIEnableVirtualSimIndCb_SDK(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this)
{
  *this = &unk_2A1D31BE0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::~ARI_IBIEnableVirtualSimIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK::pack(AriSdk::ARI_IBIEnableVirtualSimIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEosStatusReq_SDK::ARI_IBIEosStatusReq_SDK(AriSdk::ARI_IBIEosStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930578432, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930578432, 0);
}

void AriSdk::ARI_IBIEosStatusReq_SDK::ARI_IBIEosStatusReq_SDK(AriSdk::ARI_IBIEosStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEosStatusReq_SDK::~ARI_IBIEosStatusReq_SDK(AriSdk::ARI_IBIEosStatusReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEosStatusReq_SDK::pack(AriSdk::ARI_IBIEosStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIEosStatusRspCb_SDK::ARI_IBIEosStatusRspCb_SDK(AriSdk::ARI_IBIEosStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922189824, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922189824, 0);
}

void AriSdk::ARI_IBIEosStatusRspCb_SDK::ARI_IBIEosStatusRspCb_SDK(AriSdk::ARI_IBIEosStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEosStatusRspCb_SDK::~ARI_IBIEosStatusRspCb_SDK(AriSdk::ARI_IBIEosStatusRspCb_SDK *this)
{
  *this = &unk_2A1D31C50;
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
  AriSdk::ARI_IBIEosStatusRspCb_SDK::~ARI_IBIEosStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEosStatusRspCb_SDK::pack(AriSdk::ARI_IBIEosStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIEosStatusIndCb_SDK::ARI_IBIEosStatusIndCb_SDK(AriSdk::ARI_IBIEosStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914259968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914259968, 0);
}

void AriSdk::ARI_IBIEosStatusIndCb_SDK::ARI_IBIEosStatusIndCb_SDK(AriSdk::ARI_IBIEosStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEosStatusIndCb_SDK::~ARI_IBIEosStatusIndCb_SDK(AriSdk::ARI_IBIEosStatusIndCb_SDK *this)
{
  *this = &unk_2A1D31C88;
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
  AriSdk::ARI_IBIEosStatusIndCb_SDK::~ARI_IBIEosStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEosStatusIndCb_SDK::pack(AriSdk::ARI_IBIEosStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::ARI_IBIMapModemInstanceToSimReq_SDK(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930447360, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930447360, 0);
}

void AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::ARI_IBIMapModemInstanceToSimReq_SDK(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::~ARI_IBIMapModemInstanceToSimReq_SDK(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this)
{
  *this = &unk_2A1D31CC0;
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
  AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::~ARI_IBIMapModemInstanceToSimReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK::pack(AriSdk::ARI_IBIMapModemInstanceToSimReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::ARI_IBIMapModemInstanceToSimRspCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922058752, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922058752, 0);
}

void AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::ARI_IBIMapModemInstanceToSimRspCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::~ARI_IBIMapModemInstanceToSimRspCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this)
{
  *this = &unk_2A1D31CF8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::~ARI_IBIMapModemInstanceToSimRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK::pack(AriSdk::ARI_IBIMapModemInstanceToSimRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::ARI_IBIMapModemInstanceToSimIndCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914161664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914161664, 0);
}

void AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::ARI_IBIMapModemInstanceToSimIndCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::~ARI_IBIMapModemInstanceToSimIndCb_SDK(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this)
{
  *this = &unk_2A1D31D30;
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
  AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::~ARI_IBIMapModemInstanceToSimIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK::pack(AriSdk::ARI_IBIMapModemInstanceToSimIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylATCResultReq_SDK::ARI_IBIVinylATCResultReq_SDK(AriSdk::ARI_IBIVinylATCResultReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930349056, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930349056, 0);
}

void AriSdk::ARI_IBIVinylATCResultReq_SDK::ARI_IBIVinylATCResultReq_SDK(AriSdk::ARI_IBIVinylATCResultReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylATCResultReq_SDK::~ARI_IBIVinylATCResultReq_SDK(AriSdk::ARI_IBIVinylATCResultReq_SDK *this)
{
  *this = &unk_2A1D31D68;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylATCResultReq_SDK::~ARI_IBIVinylATCResultReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylATCResultReq_SDK::pack(AriSdk::ARI_IBIVinylATCResultReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 5, v10, v11 - v10, 0), !result))
        {
          v12 = *(this + 16);
          if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 1uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBIVinylProfilesInfoStruct,15ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2)) < 0x10)
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
      v25 = 15;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2), 15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296152BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylATCResultRspCb_SDK::ARI_IBIVinylATCResultRspCb_SDK(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -921960448, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -921960448, 0);
}

void AriSdk::ARI_IBIVinylATCResultRspCb_SDK::ARI_IBIVinylATCResultRspCb_SDK(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylATCResultRspCb_SDK::~ARI_IBIVinylATCResultRspCb_SDK(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this)
{
  *this = &unk_2A1D31DA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylATCResultRspCb_SDK::~ARI_IBIVinylATCResultRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylATCResultRspCb_SDK::pack(AriSdk::ARI_IBIVinylATCResultRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 1uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::ARI_IBIVinylATcmdIndCb_SDK(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914063360, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914063360, 0);
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::ARI_IBIVinylATcmdIndCb_SDK(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::~ARI_IBIVinylATcmdIndCb_SDK(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this)
{
  *this = &unk_2A1D31DD8;
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylATcmdIndCb_SDK::~ARI_IBIVinylATcmdIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylATcmdIndCb_SDK::pack(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      v10 = *(this + 13);
      v11 = !v9 || v9 == v10;
      if (v11 || (result = AriMsg::pack(*(this + 6), 3, v9, v10 - v9, 0), !result))
      {
        v12 = *(this + 15);
        if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 4, v12, v13 - v12, 0), !result))
        {
          v14 = *(this + 18);
          if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 5, v14, v15 - v14, 0), !result))
          {
            v16 = *(this + 21);
            if (!v16 || (v17 = *(this + 22), v16 == v17) || (result = AriMsg::pack(*(this + 6), 6, v16, v17 - v16, 0), !result))
            {
              v18 = *(this + 24);
              if (!v18 || (result = AriMsg::pack(*(this + 6), 7, v18, 1uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBIVinylATcmdIndCb_SDK::unpack(AriSdk::ARI_IBIVinylATcmdIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930938880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930938880, 0);
}

void AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylAuthPsoReq_SDK::~ARI_IBIVinylAuthPsoReq_SDK(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this)
{
  *this = &unk_2A1D31E10;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylAuthPsoReq_SDK::~ARI_IBIVinylAuthPsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylAuthPsoReq_SDK::pack(AriSdk::ARI_IBIVinylAuthPsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_296153F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,3584ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xE01)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 3584;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 3584);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961541B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922550272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922550272, 0);
}

void AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::~ARI_IBIVinylAuthPsoRspCb_SDK(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this)
{
  *this = &unk_2A1D31E48;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::~ARI_IBIVinylAuthPsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_2961547AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930906112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930906112, 0);
}

void AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::~ARI_IBIVinylFinalizePsoReq_SDK(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this)
{
  *this = &unk_2A1D31E80;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::~ARI_IBIVinylFinalizePsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::pack(AriSdk::ARI_IBIVinylFinalizePsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_296154E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922517504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922517504, 0);
}

void AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::~ARI_IBIVinylFinalizePsoRspCb_SDK(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this)
{
  *this = &unk_2A1D31EB8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::~ARI_IBIVinylFinalizePsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(AriSdk::ARI_IBIVinylGetDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -931069952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -931069952, 0);
}

void AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(AriSdk::ARI_IBIVinylGetDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetDataReq_SDK::~ARI_IBIVinylGetDataReq_SDK(AriSdk::ARI_IBIVinylGetDataReq_SDK *this)
{
  *this = &unk_2A1D31EF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
  AriSdk::ARI_IBIVinylGetDataReq_SDK::~ARI_IBIVinylGetDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetDataReq_SDK::pack(AriSdk::ARI_IBIVinylGetDataReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922681344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922681344, 0);
}

void AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetDataRspCb_SDK::~ARI_IBIVinylGetDataRspCb_SDK(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this)
{
  *this = &unk_2A1D31F28;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  v3 = *(this + 62);
  *(this + 62) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 61);
  *(this + 61) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 60);
  *(this + 60) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 59);
  *(this + 59) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 56);
  if (v7)
  {
    *(this + 57) = v7;
    operator delete(v7);
  }

  v8 = *(this + 53);
  if (v8)
  {
    *(this + 54) = v8;
    operator delete(v8);
  }

  v9 = *(this + 50);
  if (v9)
  {
    *(this + 51) = v9;
    operator delete(v9);
  }

  v10 = *(this + 49);
  *(this + 49) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40BDFB0063);
  }

  v11 = *(this + 46);
  if (v11)
  {
    *(this + 47) = v11;
    operator delete(v11);
  }

  v12 = *(this + 43);
  if (v12)
  {
    *(this + 44) = v12;
    operator delete(v12);
  }

  v13 = *(this + 40);
  if (v13)
  {
    *(this + 41) = v13;
    operator delete(v13);
  }

  v14 = *(this + 37);
  if (v14)
  {
    *(this + 38) = v14;
    operator delete(v14);
  }

  v15 = *(this + 34);
  if (v15)
  {
    *(this + 35) = v15;
    operator delete(v15);
  }

  v16 = *(this + 31);
  if (v16)
  {
    *(this + 32) = v16;
    operator delete(v16);
  }

  v17 = *(this + 28);
  if (v17)
  {
    *(this + 29) = v17;
    operator delete(v17);
  }

  v18 = *(this + 25);
  if (v18)
  {
    *(this + 26) = v18;
    operator delete(v18);
  }

  v19 = *(this + 22);
  if (v19)
  {
    *(this + 23) = v19;
    operator delete(v19);
  }

  v20 = *(this + 19);
  if (v20)
  {
    *(this + 20) = v20;
    operator delete(v20);
  }

  v21 = *(this + 16);
  if (v21)
  {
    *(this + 17) = v21;
    operator delete(v21);
  }

  v22 = *(this + 15);
  *(this + 15) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4077774924);
  }

  v23 = *(this + 12);
  if (v23)
  {
    *(this + 13) = v23;
    operator delete(v23);
  }

  v24 = *(this + 11);
  *(this + 11) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C40BDFB0063);
  }

  v25 = *(this + 10);
  *(this + 10) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4077774924);
  }

  v26 = *(this + 9);
  *(this + 9) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 8);
  *(this + 8) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylGetDataRspCb_SDK::~ARI_IBIVinylGetDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetDataRspCb_SDK::pack(AriSdk::ARI_IBIVinylGetDataRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (v13 = *(this + 17), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
              {
                v14 = *(this + 19);
                if (!v14 || (v15 = *(this + 20), v14 == v15) || (result = AriMsg::pack(*(this + 6), 9, v14, v15 - v14, 0), !result))
                {
                  v16 = *(this + 22);
                  if (!v16 || (v17 = *(this + 23), v16 == v17) || (result = AriMsg::pack(*(this + 6), 10, v16, v17 - v16, 0), !result))
                  {
                    v18 = *(this + 25);
                    if (!v18 || (v19 = *(this + 26), v18 == v19) || (result = AriMsg::pack(*(this + 6), 11, v18, v19 - v18, 0), !result))
                    {
                      v20 = *(this + 28);
                      if (!v20 || (v21 = *(this + 29), v20 == v21) || (result = AriMsg::pack(*(this + 6), 12, v20, v21 - v20, 0), !result))
                      {
                        v22 = *(this + 31);
                        if (!v22 || (v23 = *(this + 32), v22 == v23) || (result = AriMsg::pack(*(this + 6), 13, v22, v23 - v22, 0), !result))
                        {
                          v24 = *(this + 34);
                          if (!v24 || (v25 = *(this + 35), v24 == v25) || (result = AriMsg::pack(*(this + 6), 14, v24, v25 - v24, 0), !result))
                          {
                            v26 = *(this + 37);
                            if (!v26 || (v27 = *(this + 38), v26 == v27) || (result = AriMsg::pack(*(this + 6), 15, v26, v27 - v26, 0), !result))
                            {
                              v28 = *(this + 40);
                              if (!v28 || (v29 = *(this + 41), v28 == v29) || (result = AriMsg::pack(*(this + 6), 16, v28, v29 - v28, 0), !result))
                              {
                                v30 = *(this + 43);
                                if (!v30 || (v31 = *(this + 44), v30 == v31) || (result = AriMsg::pack(*(this + 6), 17, v30, v31 - v30, 0), !result))
                                {
                                  v32 = *(this + 46);
                                  if (!v32 || (v33 = *(this + 47), v32 == v33) || (result = AriMsg::pack(*(this + 6), 18, v32, v33 - v32, 0), !result))
                                  {
                                    v34 = *(this + 49);
                                    if (!v34 || (result = AriMsg::pack(*(this + 6), 19, v34, 2uLL, 0), !result))
                                    {
                                      v35 = *(this + 50);
                                      if (!v35 || (v36 = *(this + 51), v35 == v36) || (result = AriMsg::pack(*(this + 6), 20, v35, v36 - v35, 0), !result))
                                      {
                                        v37 = *(this + 53);
                                        if (!v37 || (v38 = *(this + 54), v37 == v38) || (result = AriMsg::pack(*(this + 6), 21, v37, v38 - v37, 0), !result))
                                        {
                                          v39 = *(this + 56);
                                          if (!v39 || (v40 = *(this + 57), v39 == v40) || (result = AriMsg::pack(*(this + 6), 22, v39, v40 - v39, 0), !result))
                                          {
                                            v41 = *(this + 59);
                                            if (!v41 || (result = AriMsg::pack(*(this + 6), 23, v41, 2uLL, 0), !result))
                                            {
                                              v42 = *(this + 60);
                                              if (!v42 || (result = AriMsg::pack(*(this + 6), 24, v42, 2uLL, 0), !result))
                                              {
                                                v43 = *(this + 61);
                                                if (!v43 || (result = AriMsg::pack(*(this + 6), 25, v43, 1uLL, 0), !result))
                                                {
                                                  v44 = *(this + 62);
                                                  if (!v44 || (result = AriMsg::pack(*(this + 6), 26, v44, 2uLL, 0), !result))
                                                  {
                                                    v45 = *(this + 63);
                                                    if (!v45 || (v46 = *(this + 64), v45 == v46) || (result = AriMsg::pack(*(this + 6), 27, v45, v46 - v45, 0), !result))
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

  return result;
}

void sub_296156D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,8ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 9)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 8);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29615709C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,1000ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x3E9)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 1000;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1000);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29615728C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylGetEidReq_SDK::ARI_IBIVinylGetEidReq_SDK(AriSdk::ARI_IBIVinylGetEidReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -931102720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -931102720, 0);
}

void AriSdk::ARI_IBIVinylGetEidReq_SDK::ARI_IBIVinylGetEidReq_SDK(AriSdk::ARI_IBIVinylGetEidReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetEidReq_SDK::~ARI_IBIVinylGetEidReq_SDK(AriSdk::ARI_IBIVinylGetEidReq_SDK *this)
{
  *this = &unk_2A1D31F60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylGetEidReq_SDK::~ARI_IBIVinylGetEidReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetEidReq_SDK::pack(AriSdk::ARI_IBIVinylGetEidReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922714112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922714112, 0);
}

void AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylGetEidRspCb_SDK::~ARI_IBIVinylGetEidRspCb_SDK(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this)
{
  *this = &unk_2A1D31F98;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
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
  AriSdk::ARI_IBIVinylGetEidRspCb_SDK::~ARI_IBIVinylGetEidRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylGetEidRspCb_SDK::pack(AriSdk::ARI_IBIVinylGetEidRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_2961579F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930512896, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930512896, 0);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::~ARI_IBIVinylHwIdSimConfigReq_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::pack(AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922124288, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922124288, 0);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::~ARI_IBIVinylHwIdSimConfigRspCb_SDK(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this)
{
  *this = &unk_2A1D32008;
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
  AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::~ARI_IBIVinylHwIdSimConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::pack(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::unpack(AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296158148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  MEMORY[0x29C257E50](v25, v24);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930971648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930971648, 0);
}

void AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInitPsoReq_SDK::~ARI_IBIVinylInitPsoReq_SDK(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this)
{
  *this = &unk_2A1D32040;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylInitPsoReq_SDK::~ARI_IBIVinylInitPsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInitPsoReq_SDK::pack(AriSdk::ARI_IBIVinylInitPsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void sub_2961587A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922583040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922583040, 0);
}

void AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::~ARI_IBIVinylInitPsoRspCb_SDK(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this)
{
  *this = &unk_2A1D32078;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::~ARI_IBIVinylInitPsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}