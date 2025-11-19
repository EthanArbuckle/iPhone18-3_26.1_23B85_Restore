void *WTF::Detail::CallableWrapper<WebCore::SocketStreamHandleImpl::SocketStreamHandleImpl(WTF::URL const&,WebCore::SocketStreamHandleClient &,PAL::SessionID,WTF::String const&,WebCore::SourceApplicationAuditToken &&,WebCore::StorageSessionProvider const*,BOOL)::$_0,void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B1A0;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    if (atomic_fetch_add((v1 + 8), 0xFFFFFFFF) == 1)
    {
      v3 = result;
      atomic_store(1u, v2);
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F472B1C8;
      v4[1] = v2;
      v5 = v4;
      WTF::ensureOnMainThread();
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::SocketStreamHandleImpl::SocketStreamHandleImpl(WTF::URL const&,WebCore::SocketStreamHandleClient &,PAL::SessionID,WTF::String const&,WebCore::SourceApplicationAuditToken &&,WebCore::StorageSessionProvider const*,BOOL)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B1A0;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
    return WTF::fastFree(a1, a2);
  }

  v3 = (v2 + 8);
  if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) != 1)
  {
    return WTF::fastFree(a1, a2);
  }

  atomic_store(1u, v3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F472B1C8;
  v6[1] = v3;
  v8 = v6;
  WTF::ensureOnMainThread();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return WTF::fastFree(a1, v7);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebCore::SocketStreamHandleImpl::SocketStreamHandleImpl(WTF::URL const&,WebCore::SocketStreamHandleClient &,PAL::SessionID,WTF::String const&,WebCore::SourceApplicationAuditToken &&,WebCore::StorageSessionProvider const*,BOOL)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 56);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v3 = v8;
  LODWORD(v8) = 0;
  v4 = *(v1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v9 = v4;
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v10 = v3;
  v11 = 0;
  (*(*v2 + 56))(v2, v1, &v8);
  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v9;
  v9 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v3, v5);
    }
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebCore::SocketStreamHandleImpl::pacExecutionCallback(void *,__CFArray const*,__CFError *)::$_0,void>::call(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (!*(v2 + 64))
  {
    WebCore::SocketStreamHandleImpl::chooseProxyFromArray(v2, **(a1 + 16));
    WebCore::SocketStreamHandleImpl::createStreams(**(a1 + 8));
    v4 = **(a1 + 8);

    WebCore::SocketStreamHandleImpl::scheduleStreams(v4);
  }
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(unint64_t result, unsigned int a2, int a3, int8x16_t *a4, size_t a5, uint64_t a6)
{
  v10 = result;
  v11 = a2;
  if (!a3)
  {
    if (a2 > 0x7FFFFFEF)
    {
      goto LABEL_8;
    }

    result = WTF::tryFastCompactMalloc((2 * a2 + 20));
    v12 = v91;
    if (!v91)
    {
      goto LABEL_9;
    }

    v14 = v91 + 20;
    *v91 = 2;
    *(v91 + 4) = a2;
    *(v91 + 8) = v91 + 20;
    *(v91 + 16) = 0;
    v15 = v91 + 20 + 2 * a5;
    if (a5 < 0x40)
    {
      v16 = v91 + 20;
      if (v14 == v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = v14 + 2 * (a5 & 0x7FFFFFFFFFFFFFC0);
      v17 = 0uLL;
      v18 = (v91 + 20);
      do
      {
        v92.val[0] = *a4;
        v19 = a4[1];
        v94.val[0] = a4[2];
        v20 = a4[3];
        a4 += 4;
        v21 = v20;
        v94.val[1] = 0uLL;
        v96.val[0] = v19;
        v92.val[1] = 0uLL;
        v22 = v18;
        vst2q_s8(v22, v92);
        v22 += 32;
        v96.val[1] = 0uLL;
        vst2q_s8(v22, v96);
        v23 = v18 + 64;
        vst2q_s8(v23, v94);
        v24 = v18 + 96;
        vst2q_s8(v24, *(&v17 - 1));
        v18 += 128;
      }

      while (v18 != v16);
      if (v16 == v15)
      {
LABEL_27:
        if (a5 > v11)
        {
          goto LABEL_97;
        }

        if (!a6)
        {
          goto LABEL_9;
        }

        result = v14 + 2 * a5;
        v32 = *(a6 + 8);
        v33 = *(a6 + 4);
        if ((*(a6 + 16) & 4) == 0)
        {
          if (v33)
          {
            if (v33 != 1)
            {
              v34 = 2 * v33;
              goto LABEL_67;
            }

            *result = *v32;
          }

LABEL_9:
          *v10 = v12;
          return result;
        }

        v42 = (result + 2 * v33);
        if (v33 >= 0x40)
        {
          v43 = result + 2 * (v33 & 0xFFFFFFC0);
          v44 = 0uLL;
          do
          {
            v93.val[0] = *v32;
            v45 = *(v32 + 16);
            v95.val[0] = *(v32 + 32);
            v46 = *(v32 + 48);
            v32 += 64;
            v47 = v46;
            v95.val[1] = 0uLL;
            v97.val[0] = v45;
            v93.val[1] = 0uLL;
            v48 = result;
            vst2q_s8(v48, v93);
            v48 += 32;
            v97.val[1] = 0uLL;
            vst2q_s8(v48, v97);
            v49 = (result + 64);
            vst2q_s8(v49, v95);
            v50 = (result + 96);
            vst2q_s8(v50, *(&v44 - 1));
            result += 128;
          }

          while (result != v43);
          result = v43;
        }

        if (result == v42)
        {
          goto LABEL_9;
        }

        v51 = v91 + 2 * (a5 + v33) - result + 18;
        if (v51 < 0xE || result < v32 + (v51 >> 1) + 1 && v32 < (v51 & 0xFFFFFFFFFFFFFFFELL) + result + 2)
        {
          v52 = v32;
          v53 = result;
          goto LABEL_61;
        }

        v68 = (v51 >> 1) + 1;
        if (v51 >= 0x3E)
        {
          v69 = v68 & 0xFFFFFFFFFFFFFFE0;
          v81 = (result + 32);
          v82 = (v32 + 16);
          v83 = v68 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v84 = *v82[-2].i8;
            v85 = vmovl_u8(*v82);
            v86 = vmovl_high_u8(*v82->i8);
            v81[-2] = vmovl_u8(*v84.i8);
            v81[-1] = vmovl_high_u8(v84);
            *v81 = v85;
            v81[1] = v86;
            v81 += 4;
            v82 += 4;
            v83 -= 32;
          }

          while (v83);
          if (v68 == v69)
          {
            goto LABEL_9;
          }

          if ((v68 & 0x18) == 0)
          {
            v53 = (result + 2 * v69);
            v52 = (v32 + v69);
            do
            {
LABEL_61:
              v54 = *v52++;
              *v53++ = v54;
            }

            while (v53 != v42);
            goto LABEL_9;
          }
        }

        else
        {
          v69 = 0;
        }

        v52 = (v32 + (v68 & 0xFFFFFFFFFFFFFFF8));
        v53 = (result + 2 * (v68 & 0xFFFFFFFFFFFFFFF8));
        v87 = (result + 2 * v69);
        v88 = (v32 + v69);
        v89 = v69 - (v68 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v90 = *v88++;
          *v87++ = vmovl_u8(v90);
          v89 += 8;
        }

        while (v89);
        if (v68 == (v68 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_9;
        }

        goto LABEL_61;
      }
    }

    v25 = v91 + 2 * a5 - v16 + 18;
    if (v25 < 0xE || (v16 < a4->u64 + (v25 >> 1) + 1 ? (v26 = a4 >= (v25 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2) : (v26 = 1), !v26))
    {
      v29 = a4;
      v30 = v16;
      goto LABEL_26;
    }

    v27 = (v25 >> 1) + 1;
    if (v25 >= 0x3E)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFE0;
      v58 = (v16 + 32);
      v59 = &a4[1];
      v60 = v27 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v61 = *v59[-2].i8;
        v62 = vmovl_u8(*v59);
        v63 = vmovl_high_u8(*v59->i8);
        v58[-2] = vmovl_u8(*v61.i8);
        v58[-1] = vmovl_high_u8(v61);
        *v58 = v62;
        v58[1] = v63;
        v58 += 4;
        v59 += 4;
        v60 -= 32;
      }

      while (v60);
      if (v27 == v28)
      {
        goto LABEL_27;
      }

      if ((v27 & 0x18) == 0)
      {
        v30 = (v16 + 2 * v28);
        v29 = (a4 + v28);
        goto LABEL_26;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = (a4 + (v27 & 0xFFFFFFFFFFFFFFF8));
    v30 = (v16 + 2 * (v27 & 0xFFFFFFFFFFFFFFF8));
    v64 = (v16 + 2 * v28);
    v65 = &a4->i8[v28];
    v66 = v28 - (v27 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v67 = *v65++;
      *v64++ = vmovl_u8(v67);
      v66 += 8;
    }

    while (v66);
    if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v31 = v29->u8[0];
      v29 = (v29 + 1);
      *v30++ = v31;
    }

    while (v30 != v15);
    goto LABEL_27;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  result = WTF::tryFastCompactMalloc((a2 + 20));
  v12 = v91;
  if (!v91)
  {
    goto LABEL_9;
  }

  v13 = (v91 + 20);
  *v91 = 2;
  *(v91 + 4) = a2;
  *(v91 + 8) = v91 + 20;
  *(v91 + 16) = 4;
  if (a5)
  {
    if (a5 == 1)
    {
      *v13 = a4->i8[0];
    }

    else
    {
      result = memcpy((v91 + 20), a4, a5);
    }
  }

  if (a5 <= v11)
  {
    if (a6)
    {
      result = &v13[a5];
      v32 = *(a6 + 8);
      v34 = *(a6 + 4);
      if ((*(a6 + 16) & 4) == 0)
      {
        v35 = (result + v34);
        if (v34 >= 0x10)
        {
          v36 = result + (v34 & 0xFFFFFFF0);
          do
          {
            v37 = vld2q_s8(v32);
            v32 += 32;
            *result = v37;
            result += 16;
          }

          while (result != v36);
        }

        if (result == v35)
        {
          goto LABEL_9;
        }

        v38 = v91 + v34 + a5;
        v39 = v38 - result + 20;
        if (v39 < 4 || (result < v32 - 2 * result + 2 * v38 + 40 ? (v40 = v32 >= v38 + 20) : (v40 = 1), !v40))
        {
          v55 = result;
          v56 = v32;
          goto LABEL_64;
        }

        if (v39 >= 0x20)
        {
          v41 = v39 & 0xFFFFFFFFFFFFFFE0;
          v70 = (v32 + 32);
          v71 = (result + 16);
          v72 = v39 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v74 = v70[-2];
            v73 = v70[-1];
            v76 = *v70;
            v75 = v70[1];
            v70 += 4;
            v71[-1] = vuzp1q_s8(v74, v73);
            *v71 = vuzp1q_s8(v76, v75);
            v71 += 2;
            v72 -= 32;
          }

          while (v72);
          if (v39 == v41)
          {
            goto LABEL_9;
          }

          if ((v39 & 0x1C) == 0)
          {
            v56 = (v32 + 2 * v41);
            v55 = (result + v41);
            do
            {
LABEL_64:
              v57 = *v56;
              v56 += 2;
              *v55++ = v57;
            }

            while (v55 != v35);
            goto LABEL_9;
          }
        }

        else
        {
          v41 = 0;
        }

        v55 = (result + (v39 & 0xFFFFFFFFFFFFFFFCLL));
        v56 = (v32 + 2 * (v39 & 0xFFFFFFFFFFFFFFFCLL));
        v77 = (v32 + 2 * v41);
        v78 = (result + v41);
        v79 = v41 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v80 = *v77++;
          *v78++ = vuzp1_s8(v80, v80).u32[0];
          v79 += 4;
        }

        while (v79);
        if (v39 == (v39 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_9;
        }

        goto LABEL_64;
      }

      if (v34)
      {
        if (v34 == 1)
        {
          *result = *v32;
          goto LABEL_9;
        }

LABEL_67:
        result = memcpy(result, v32, v34);
        goto LABEL_9;
      }
    }

    goto LABEL_9;
  }

LABEL_97:
  __break(1u);
  return result;
}

void WTF::Detail::CallableWrapper<WebCore::SocketStreamHandleImpl::readStreamCallback(__CFReadStream *,unsigned long,void *)::$_0,void>::call(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = *(*v2 + 120);
  if (!v4)
  {
    return;
  }

  v5 = **(a1 + 16);
  switch(v5)
  {
    case 16:

      WebCore::SocketStreamHandleImpl::platformClose(v3);
      break;
    case 8:
      v11 = CFReadStreamCopyError(v4);
      WebCore::SocketStreamHandleImpl::reportErrorToClient(v3, v11);
      if (v11)
      {

        CFRelease(v11);
      }

      break;
    case 2:
      v6 = *(v3 + 80);
      if (v6 == 2)
      {
        return;
      }

      if (v6 != 3)
      {
        goto LABEL_27;
      }

      if (*(v3 + 84) != 3)
      {
LABEL_24:
        v12 = *(MEMORY[0x1E69E24B0] + 32);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C79C0000, v12, OS_LOG_TYPE_DEFAULT, "SocketStreamHandleImpl::readStreamCallback - m_connectionSubState is Connected", buf, 2u);
        }

        *(v3 + 80) = 4;
        *(v3 + 64) = 1;
        (*(**(v3 + 56) + 16))(*(v3 + 56), v3);
LABEL_27:
        if (*(v3 + 64) != 3)
        {
          numBytesRead = 0;
          Buffer = CFReadStreamGetBuffer(*(v3 + 120), 0, &numBytesRead);
          if (Buffer)
          {
            v14 = Buffer;
            v15 = numBytesRead;
          }

          else
          {
            v14 = buf;
            v15 = CFReadStreamRead(*(v3 + 120), buf, 1024);
            numBytesRead = v15;
          }

          if (v15)
          {
            if (v15 == -1)
            {
              (*(**(v3 + 56) + 40))(*(v3 + 56), v3);
            }

            else
            {
              (*(**(v3 + 56) + 32))(*(v3 + 56), v3, v14);
            }
          }
        }

        return;
      }

      v7 = CFReadStreamCopyProperty(v4, *MEMORY[0x1E695AE38]);
      if (v7)
      {
        v8 = v7;
        v9 = CFGetTypeID(v7);
        if (v9 != CFHTTPMessageGetTypeID())
        {
          __break(0xC471u);
          return;
        }

        _CFHTTPMessageSetResponseURL();
        ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v8);
        if (ResponseStatusCode != 200)
        {
          if (ResponseStatusCode == 407)
          {
            WebCore::SocketStreamHandleImpl::addCONNECTCredentials(v3, v8);
          }

          else
          {
            v16 = *(v3 + 56);
            v17 = ResponseStatusCode;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v18 = *buf;
            *buf = v17;
            v19 = *(v3 + 16);
            if (v19)
            {
              atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
            }

            v24 = v19;
            if (v18)
            {
              atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            }

            v25 = v18;
            v26 = 0;
            (*(*v16 + 56))(v16, v3, buf);
            WebCore::SocketStreamError::~SocketStreamError(buf, v20);
            if (v18)
            {
              if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v18, v21);
              }
            }

            WebCore::SocketStreamHandleImpl::platformClose(v3);
          }

          CFRelease(v8);
          return;
        }

        CFRelease(v8);
        goto LABEL_24;
      }

      _CFHTTPMessageSetResponseURL();
      break;
    default:
      return;
  }
}

void WTF::Detail::CallableWrapper<WebCore::SocketStreamHandleImpl::writeStreamCallback(__CFWriteStream *,unsigned long,void *)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = *(*v2 + 128);
  if (!v4)
  {
    return;
  }

  v5 = **(a1 + 16);
  if (v5 == 8)
  {
    v35 = CFWriteStreamCopyError(v4);
    WebCore::SocketStreamHandleImpl::reportErrorToClient(v3, v35);
    if (v35)
    {

      CFRelease(v35);
    }
  }

  else
  {
    if (v5 != 4)
    {
      return;
    }

    if (!CFWriteStreamCanAcceptBytes(v4))
    {
      return;
    }

    v7 = *(v3 + 80);
    if (v7 == 2)
    {
      return;
    }

    if (v7 == 3)
    {
      if (*(v3 + 84) == 3)
      {
        v8 = CFReadStreamCopyProperty(*(v3 + 120), *MEMORY[0x1E695AE38]);
        if (!v8)
        {

          _CFHTTPMessageSetResponseURL();
          return;
        }

        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 != CFHTTPMessageGetTypeID())
        {
          __break(0xC471u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        _CFHTTPMessageSetResponseURL();
        ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v9);
        CFRelease(v9);
        if (ResponseStatusCode != 200)
        {
          return;
        }
      }

      *(v3 + 80) = 4;
      *(v3 + 64) = 1;
      (*(**(v3 + 56) + 16))(*(v3 + 56), v3);
    }

    v12 = *(v3 + 64);
    if ((v12 - 1) > 1)
    {
      return;
    }

    if (*(v3 + 168))
    {
      v13 = *(v3 + 208);
      v14 = *(v3 + 184);
      while (1)
      {
        if (v14 >= v13)
        {
          goto LABEL_54;
        }

        v15 = *(*(v3 + 200) + 8 * v14);
        v16 = *(v3 + 176);
        v17 = *(v15 + 3);
        v18 = v17 - v16;
        if (v17 <= v16)
        {
          break;
        }

        v19 = *(v3 + 128);
        if (v19 && (v20 = *v15, CFWriteStreamCanAcceptBytes(v19)))
        {
          v21 = CFWriteStreamWrite(*(v3 + 128), (v20 + v16), v18);
          if (v21 == -1)
          {
            return;
          }

          v22 = v21 & 0xFFFFFFFFFFFFFF00;
          v23 = v21;
        }

        else
        {
          v23 = 0;
          v22 = 0;
        }

        v24 = v22 | v23;
        if (!(v22 | v23))
        {
          return;
        }

        v25 = *(v3 + 168);
        if (!v25)
        {
          goto LABEL_46;
        }

        v13 = *(v3 + 208);
        v14 = *(v3 + 184);
        if (v14 >= v13)
        {
          goto LABEL_54;
        }

        v26 = *(v3 + 200);
        v27 = *(v26 + 8 * v14);
        v28 = *(v27 + 3);
        v29 = *(v3 + 176);
        v30 = v28 - v29;
        v31 = v29 + v24;
        v32 = v25 - v24;
        *(v3 + 168) = v25 - v24;
        *(v3 + 176) = v31;
        if (v31 >= v28)
        {
          *(v3 + 176) = 0;
          if (v14 == *(v3 + 192))
          {
            __break(0xC471u);
            JUMPOUT(0x1C79F90C4);
          }

          *(v26 + 8 * v14) = 0;
          v33 = *v27;
          if (*v27)
          {
            *v27 = 0;
            *(v27 + 2) = 0;
            WTF::fastFree(v33, v6);
          }

          WTF::fastFree(v27, v6);
          v34 = *(v3 + 184);
          v13 = *(v3 + 208);
          v32 = *(v3 + 168);
          if (v34 == v13 - 1)
          {
            v14 = 0;
          }

          else
          {
            v14 = v34 + 1;
          }

          *(v3 + 184) = v14;
        }

        if (v24 != v30 || !v32)
        {
LABEL_46:
          v37 = *(**(v3 + 56) + 48);

          v37();
          return;
        }
      }

      __break(0xC471u);
LABEL_55:
      JUMPOUT(0x1C79F90A4);
    }

    if (v12 != 1)
    {
      v36 = (v3 + 8);
      atomic_fetch_add((v3 + 8), 1u);
      (*(*v3 + 40))(v3);
      *(v3 + 64) = 3;
      if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v36);
        v38 = WTF::fastMalloc(0x10);
        *v38 = &unk_1F472B1C8;
        v38[1] = v36;
        v39 = v38;
        WTF::ensureOnMainThread();
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }
    }
  }
}

uint64_t *WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v52 = 0;
    v12 = v5;
    do
    {
      v14 = (v4 + 24 * v11);
      v8 = *v14;
      if (*v14 != -1)
      {
        if (v8)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v53 = -1640531527;
          v54 = 0;
          v55 = 0;
          v24 = v14[1];
          WebCore::add(&v53, v8);
          WebCore::add(&v53, v24);
          v25 = v53;
          if (v55 == 1)
          {
            v26 = (v53 + v54) ^ ((v53 + v54) << 11);
            v25 = v26 + (v26 >> 17);
          }

          v27 = 0;
          v28 = (v25 ^ (8 * v25)) + ((v25 ^ (8 * v25)) >> 5);
          v29 = (v28 ^ (4 * v28)) + ((v28 ^ (4 * v28)) >> 15);
          if (v29 == v29 << 10)
          {
            v30 = 0x800000;
          }

          else
          {
            v30 = (v29 << 10) ^ v29;
          }

          do
          {
            v31 = v30 & v21;
            v32 = (v20 + 24 * v31);
            v30 = ++v27 + v31;
          }

          while (*v32);
          v33 = v32[2];
          if (v33)
          {
            v34 = *(v33 - 4);
            if (v34)
            {
              v35 = v32[2];
              do
              {
                v36 = *v35;
                if (*v35 != -1)
                {
                  v37 = *(v35 + 8);
                  if (v37)
                  {
                    *(v35 + 8) = 0;
                    *(v35 + 16) = 0;
                    WTF::fastFree(v37, v8);
                    v36 = *v35;
                  }

                  *v35 = 0;
                  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v36, v8);
                  }
                }

                v35 += 24;
                --v34;
              }

              while (v34);
            }

            WTF::fastFree((v33 - 16), v8);
          }

          v38 = v32[1];
          v32[1] = 0;
          if (v38)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v38, v8);
          }

          v39 = *v32;
          *v32 = 0;
          if (v39)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v39, v8);
          }

          v40 = *v14;
          *v14 = 0;
          *v32 = v40;
          v32[2] = 0;
          v41 = *(v14 + 1);
          v14[1] = 0;
          v14[2] = 0;
          *(v32 + 1) = v41;
          v42 = v14[2];
          if (v42)
          {
            v43 = *(v42 - 4);
            if (v43)
            {
              v44 = v14[2];
              do
              {
                v45 = *v44;
                if (*v44 != -1)
                {
                  v46 = *(v44 + 8);
                  if (v46)
                  {
                    *(v44 + 8) = 0;
                    *(v44 + 16) = 0;
                    WTF::fastFree(v46, v8);
                    v45 = *v44;
                  }

                  *v44 = 0;
                  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v45, v8);
                  }
                }

                v44 += 24;
                --v43;
              }

              while (v43);
            }

            WTF::fastFree((v42 - 16), v8);
          }

          v47 = v14[1];
          v14[1] = 0;
          if (v47)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v47, v8);
          }

          v48 = *v14;
          *v14 = 0;
          if (v48)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v48, v8);
          }

          v13 = v52;
          if (v14 == a3)
          {
            v13 = v32;
          }

          v52 = v13;
        }

        else
        {
          v15 = v14[2];
          if (v15)
          {
            v16 = *(v15 - 4);
            if (v16)
            {
              v17 = v14[2];
              do
              {
                v18 = *v17;
                if (*v17 != -1)
                {
                  v19 = *(v17 + 8);
                  if (v19)
                  {
                    *(v17 + 8) = 0;
                    *(v17 + 16) = 0;
                    WTF::fastFree(v19, v8);
                    v18 = *v17;
                  }

                  *v17 = 0;
                  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v18, v8);
                  }
                }

                v17 += 24;
                --v16;
              }

              while (v16);
            }

            WTF::fastFree((v15 - 16), v8);
          }

          v22 = v14[1];
          v14[1] = 0;
          if (v22)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v22, v8);
          }

          v23 = *v14;
          *v14 = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v23, v8);
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else
  {
    v52 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v52;
}

mpark *WebCore::add(mpark *result, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(a2 + 32);
  }

  v5 = v4 & 0x7FFF800 ^ ((*result + v4) << 16) ^ (*result + v4);
  v6 = (v4 >> 37) & 0x7FFF800 ^ ((v5 + WORD2(v4) + (v5 >> 11)) << 16) ^ (v5 + WORD2(v4) + (v5 >> 11));
  v7 = v6 + (v6 >> 11);
  *result = v7;
  if (v3 == 255)
  {
    mpark::throw_bad_variant_access(result);
  }

  if (v3)
  {
    v8 = *(a2 + 8);
    v9 = (v8 >> 5) & 0x7FFF800 ^ ((v7 + v8) << 16) ^ (v7 + v8);
    LODWORD(v8) = (v8 >> 37) & 0x7FFF800 ^ ((v9 + WORD2(v8) + (v9 >> 11)) << 16) ^ (v9 + WORD2(v8) + (v9 >> 11));
    LODWORD(v8) = v8 + (v8 >> 11);
    *result = v8;
    v10 = *(a2 + 16);
    LODWORD(v8) = (v10 >> 5) & 0x7FFF800 ^ ((v8 + v10) << 16) ^ (v8 + v10);
    LODWORD(v8) = v8 + WORD2(v10) + (v8 >> 11);
    LODWORD(v10) = (v10 >> 37) & 0x7FFF800 ^ (v8 << 16);
    *result = (v10 ^ v8) + ((v10 ^ v8) >> 11);
  }

  else
  {
    v12 = (a2 + 8);

    return WTF::add<WTF::String,WTF::String,std::optional<unsigned short>>(result, v12, (a2 + 16), (a2 + 24));
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v7 + 4);
  v7[2] = a2 - 1;
  v7[3] = a2;
  *v7 = 0;
  v7[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5;
    while (1)
    {
      v12 = v4 + 24 * v9;
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
            v17 = *(v13 + 4);
            if (v17 >= 0x100)
            {
              goto LABEL_18;
            }

LABEL_20:
            v18 = WTF::StringImpl::hashSlowCase(v13);
          }

          else
          {
            v16 = 0;
            v17 = *(v13 + 4);
            if (v17 < 0x100)
            {
              goto LABEL_20;
            }

LABEL_18:
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v15 + 24 * (v18 & v16);
            v18 = ++v19 + (v18 & v16);
          }

          while (*v20);
          v21 = *(v20 + 8);
          if (v21)
          {
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
            WTF::fastFree(v21, v8);
            v22 = *v20;
            *v20 = 0;
            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v8);
            }
          }

          else
          {
            *v20 = 0;
          }

          v23 = *v12;
          *v12 = 0;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          v24 = *(v12 + 8);
          *(v12 + 8) = 0;
          *v20 = v23;
          *(v20 + 8) = v24;
          LODWORD(v23) = *(v12 + 16);
          *(v12 + 16) = 0;
          *(v20 + 16) = v23;
          LODWORD(v23) = *(v12 + 20);
          *(v12 + 20) = 0;
          *(v20 + 20) = v23;
          v25 = *(v12 + 8);
          if (v25)
          {
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            WTF::fastFree(v25, v8);
          }

          v26 = *v12;
          *v12 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v8);
          }

          if (v12 == a3)
          {
            v10 = v20;
          }

          goto LABEL_8;
        }

        v14 = *(v12 + 8);
        if (v14)
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          WTF::fastFree(v14, v8);
          v13 = *v12;
        }

        *v12 = 0;
        if (v13)
        {
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v8);
          }
        }
      }

LABEL_8:
      if (++v9 == v11)
      {
        goto LABEL_34;
      }
    }
  }

  v10 = 0;
  result = 0;
  if (v4)
  {
LABEL_34:
    WTF::fastFree((v4 - 16), v8);
    return v10;
  }

  return result;
}

unint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  v7 = *a1 + 8 * v6;
  if (*a1 > a3 || v7 <= a3)
  {
    v9 = *(a1 + 8);
    if (v9 + (v9 >> 1) <= v9 + 1)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 + (v9 >> 1);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (!(v10 >> 29))
    {
      if (v10 <= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v10;
      }

      v12 = WTF::fastMalloc((8 * v11));
      *(a1 + 8) = v11;
      *a1 = v12;
      if (!v6)
      {
        goto LABEL_38;
      }

      v14 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v14 < 3)
      {
        v15 = v5;
      }

      else
      {
        v15 = v5;
        if ((v12 - v5) >= 0x20)
        {
          v16 = v14 + 1;
          v17 = v16 & 0x3FFFFFFFFFFFFFFCLL;
          v18 = &v12[v17];
          v15 = (v5 + v17 * 8);
          v19 = (v5 + 16);
          v20 = v12 + 2;
          v21 = v16 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 4;
          }

          while (v21);
          v12 = v18;
          if (v16 == (v16 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_38;
          }
        }
      }

      do
      {
        v37 = *v15;
        v15 = (v15 + 8);
        *v12++ = v37;
      }

      while (v15 != v7);
LABEL_38:
      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v13);
      }

      return a3;
    }

LABEL_50:
    __break(0xC471u);
    JUMPOUT(0x1C79F99B0);
  }

  v23 = *(a1 + 8);
  if (v23 + (v23 >> 1) <= v23 + 1)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v23 + (v23 >> 1);
  }

  if (v24 <= a2)
  {
    v24 = a2;
  }

  if (v24 >> 29)
  {
    goto LABEL_50;
  }

  if (v24 <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = v24;
  }

  v26 = WTF::fastMalloc((8 * v25));
  *(a1 + 8) = v25;
  *a1 = v26;
  v28 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v28 < 3)
  {
    v29 = v5;
  }

  else
  {
    v29 = v5;
    if ((v26 - v5) >= 0x20)
    {
      v30 = v28 + 1;
      v31 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      v32 = &v26[v31];
      v29 = (v5 + v31 * 8);
      v33 = (v5 + 16);
      v34 = v26 + 2;
      v35 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      v26 = v32;
      if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_45;
      }
    }
  }

  do
  {
    v39 = *v29;
    v29 = (v29 + 8);
    *v26++ = v39;
  }

  while (v29 != v7);
LABEL_45:
  v40 = a3 - v5;
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v27);
  }

  return *a1 + v40;
}

WebCore::SecurityOrigin **WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>>,(WTF::ShouldValidateKey)1,WebCore::PartitionedSecurityOrigin>(uint64_t *a1, const WebCore::SecurityOrigin **a2)
{
  v3 = *a2;
  if (v3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79F9AF8);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v17 = -1640531527;
  v18 = 0;
  v19 = 0;
  v6 = a2[1];
  WebCore::add(&v17, v3);
  WebCore::add(&v17, v6);
  v7 = v17;
  if (v19 == 1)
  {
    v8 = (v17 + v18) ^ ((v17 + v18) << 11);
    v7 = v8 + (v8 >> 17);
  }

  v9 = 0;
  v10 = (v7 ^ (8 * v7)) + ((v7 ^ (8 * v7)) >> 5);
  v11 = (v10 ^ (4 * v10)) + ((v10 ^ (4 * v10)) >> 15);
  if (v11 == v11 << 10)
  {
    v12 = 0x800000;
  }

  else
  {
    v12 = (v11 << 10) ^ v11;
  }

  while (1)
  {
    v13 = v12 & v5;
    v14 = (v4 + 24 * (v12 & v5));
    v15 = *v14;
    if (*v14 != -1)
    {
      if (!v15)
      {
        return 0;
      }

      if (WebCore::SecurityOrigin::isSameOriginAs(v15, *a2) && (WebCore::SecurityOrigin::isSameOriginAs(v14[1], a2[1]) & 1) != 0)
      {
        break;
      }
    }

    v12 = ++v9 + v13;
  }

  return v14;
}

void *WTF::Detail::CallableWrapper<WebBroadcastChannelRegistry::postMessage(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *result, void *a2)
{
  v2 = result[1];
  *result = &unk_1F472B268;
  result[1] = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = result;
    atomic_store(1u, v2);
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 8) = 0;
      (*(*v4 + 16))(v4);
      (*(*v4 + 8))(v4);
      v5 = *(v2 + 8);
      *(v2 + 8) = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebBroadcastChannelRegistry::postMessage(WebCore::PartitionedSecurityOrigin const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F472B268;
  *(a1 + 1) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v4 = a1;
    atomic_store(1u, v2);
    v5 = *(v2 + 8);
    if (v5)
    {
      *(v2 + 8) = 0;
      (*(*v5 + 16))(v5);
      (*(*v5 + 8))(v5);
      v6 = *(v2 + 8);
      *(v2 + 8) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    WTF::fastFree(v2, a2);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>>,WTF::StringHash,WTF::HashMap<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>,WTF::StringHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 == -1)
      {
        goto LABEL_6;
      }

      if (v11)
      {
        v15 = *a1;
        if (*a1)
        {
          v16 = *(v15 - 8);
          v17 = v11[4];
          if (v17 >= 0x100)
          {
            goto LABEL_17;
          }

LABEL_19:
          v18 = WTF::StringImpl::hashSlowCase(v11);
        }

        else
        {
          v16 = 0;
          v17 = v11[4];
          if (v17 < 0x100)
          {
            goto LABEL_19;
          }

LABEL_17:
          v18 = v17 >> 8;
        }

        v19 = 0;
        do
        {
          v20 = v18 & v16;
          v18 = ++v19 + v20;
        }

        while (*(v15 + 16 * v20));
        v21 = (v15 + 16 * v20);
        v22 = v21[1];
        v21[1] = 0;
        if (v22)
        {
          WebResourceLoadScheduler::HostInformation::~HostInformation(v22, v8);
          if (!*(v23 + 8))
          {
            bmalloc::api::tzoneFree(v23, v8);
            goto LABEL_25;
          }

          *(v23 + 192) = 0;
          *(v23 + 160) = 0u;
          *(v23 + 176) = 0u;
          *(v23 + 128) = 0u;
          *(v23 + 144) = 0u;
          *(v23 + 96) = 0u;
          *(v23 + 112) = 0u;
          *(v23 + 64) = 0u;
          *(v23 + 80) = 0u;
          *(v23 + 32) = 0u;
          *(v23 + 48) = 0u;
          *v23 = 0u;
          *(v23 + 16) = 0u;
          v24 = *v21;
          *v21 = 0;
          if (!v24)
          {
LABEL_28:
            v25 = *v10;
            *v10 = 0;
            *(v10 + 1) = 0;
            *v21 = v25;
            v26 = *(v10 + 1);
            *(v10 + 1) = 0;
            if (v26)
            {
              WebResourceLoadScheduler::HostInformation::~HostInformation(v26, v8);
              if (!*(v27 + 8))
              {
                bmalloc::api::tzoneFree(v27, v8);
                goto LABEL_31;
              }

              *(v27 + 192) = 0;
              *(v27 + 160) = 0u;
              *(v27 + 176) = 0u;
              *(v27 + 128) = 0u;
              *(v27 + 144) = 0u;
              *(v27 + 96) = 0u;
              *(v27 + 112) = 0u;
              *(v27 + 64) = 0u;
              *(v27 + 80) = 0u;
              *(v27 + 32) = 0u;
              *(v27 + 48) = 0u;
              *v27 = 0u;
              *(v27 + 16) = 0u;
              v14 = *v10;
              *v10 = 0;
              if (!v14)
              {
                goto LABEL_6;
              }
            }

            else
            {
LABEL_31:
              v14 = *v10;
              *v10 = 0;
              if (!v14)
              {
                goto LABEL_6;
              }
            }

            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_6;
            }

LABEL_14:
            WTF::StringImpl::destroy(v14, v8);
            goto LABEL_6;
          }
        }

        else
        {
LABEL_25:
          v24 = *v21;
          *v21 = 0;
          if (!v24)
          {
            goto LABEL_28;
          }
        }

        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v8);
        }

        goto LABEL_28;
      }

      v12 = *(v10 + 1);
      *(v10 + 1) = 0;
      if (!v12)
      {
        goto LABEL_12;
      }

      WebResourceLoadScheduler::HostInformation::~HostInformation(v12, v8);
      if (!*(v13 + 8))
      {
        break;
      }

      *(v13 + 192) = 0;
      *(v13 + 160) = 0u;
      *(v13 + 176) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0u;
      *v13 = 0u;
      *(v13 + 16) = 0u;
      v14 = *v10;
      *v10 = 0;
      if (!v14)
      {
        goto LABEL_6;
      }

LABEL_13:
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_14;
      }

LABEL_6:
      if (++v9 == v5)
      {
        goto LABEL_41;
      }
    }

    bmalloc::api::tzoneFree(v13, v8);
LABEL_12:
    v14 = *v10;
    *v10 = 0;
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (v4)
  {
LABEL_41:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebResourceLoadScheduler,WebResourceLoadScheduler>(WebResourceLoadScheduler &,void (WebResourceLoadScheduler::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++*(v2 + 8);
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  v6 = *(v2 + 8);
  if (v6)
  {
    *(v2 + 8) = v6 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebResourceLoadScheduler::loadResource(WebCore::LocalFrame &,WebCore::CachedResource &,WebCore::ResourceRequest &&,WebCore::ResourceLoaderOptions const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B2B8;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebResourceLoadScheduler::loadResource(WebCore::LocalFrame &,WebCore::CachedResource &,WebCore::ResourceRequest &&,WebCore::ResourceLoaderOptions const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B2B8;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebResourceLoadScheduler::loadResource(WebCore::LocalFrame &,WebCore::CachedResource &,WebCore::ResourceRequest &&,WebCore::ResourceLoaderOptions const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0,void,WTF::RefPtr<WebCore::SubresourceLoader,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>>::call(uint64_t a1, WebCore::ResourceLoader **a2)
{
  v4 = *a2;
  if (v4 && (WebResourceLoadScheduler::scheduleLoad(*(a1 + 8), v4), *a2) && *(*a2 + 760) != 1)
  {
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v7 + 16))(v7, a2);
    v8 = *(*v7 + 8);

    return v8(v7);
  }

  else
  {
    v9 = 0;
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v5 + 16))(v5, &v9);
    (*(*v5 + 8))(v5);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (result[4] == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --result[4];
      }
    }
  }

  return result;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>>,WTF::StringHash,WTF::HashMap<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>,WTF::StringHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl **a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a2[1];
  a2[1] = 0;
  if (v5)
  {
    WebResourceLoadScheduler::HostInformation::~HostInformation(v5, a2);
    if (*(v6 + 8))
    {
      *(v6 + 192) = 0;
      *(v6 + 160) = 0u;
      *(v6 + 176) = 0u;
      *(v6 + 128) = 0u;
      *(v6 + 144) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 112) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *v6 = 0u;
      *(v6 + 16) = 0u;
    }

    else
    {
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  v8 = *a1;
  v9 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v8 - 16) = v9;
  v10 = *(v8 - 4);
  if (6 * v9.i32[1] < v10 && v10 >= 9)
  {

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>>>,WTF::StringHash,WTF::HashMap<WTF::String,std::unique_ptr<WebResourceLoadScheduler::HostInformation>,WTF::StringHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebResourceLoadScheduler::HostInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v10 >> 1);
  }
}

_DWORD *WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(_DWORD *result, uint64_t *a2, void *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79FA618);
  }

  v5 = result;
  v6 = *a2;
  if (!*a2)
  {
    v7 = a3;
    result = WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v7;
    v6 = *a2;
    v3 = *v7;
  }

  v8 = *(v6 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v6 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v17 = v6 + 8 * *(v6 - 4);
        *v5 = v13;
        *(v5 + 1) = v17;
        *(v5 + 16) = 0;
        return result;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v6 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      v6 = *a2;
      --*(*a2 - 16);
      v3 = *a3;
      v13 = v15;
    }
  }

  *a3 = 0;
  result = *v13;
  *v13 = v3;
  if (result)
  {
    if (result[4] == 1)
    {
      result = (*(*result + 8))(result);
      v6 = *a2;
    }

    else
    {
      --result[4];
    }
  }

  v18 = *(v6 - 16);
  v19 = *(v6 - 12) + 1;
  *(v6 - 12) = v19;
  v20 = (v18 + v19);
  v21 = *(v6 - 4);
  if (v21 > 0x400)
  {
    if (v21 > 2 * v20)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (3 * v21 <= 4 * v20)
  {
    if (!v21)
    {
      result = WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(a2, 8u, v13);
      v13 = result;
      v6 = *a2;
      if (!*a2)
      {
LABEL_22:
        v21 = 0;
        goto LABEL_26;
      }

LABEL_25:
      v21 = *(v6 - 4);
      goto LABEL_26;
    }

LABEL_24:
    result = WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(a2, v21 << (6 * v19 >= (2 * v21)), v13);
    v13 = result;
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_26:
  *v5 = v13;
  *(v5 + 1) = v6 + 8 * v21;
  *(v5 + 16) = 1;
  return result;
}

void *WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 8 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 8 * v22);
          *v13 = 0;
          *v24 = v14;
          v25 = *v13;
          *v13 = 0;
          if (v25)
          {
            if (v25[4] == 1)
            {
              (*(*v25 + 8))(v25);
            }

            else
            {
              --v25[4];
            }
          }

          if (v13 == a3)
          {
            v12 = v24;
          }
        }

        else
        {
          *v13 = 0;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

unint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3)
  {
    v6 = *(a1 + 12);
    if (v5 + v6 > a3)
    {
      v7 = *(a1 + 8);
      if (v7 + (v7 >> 1) <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7 + (v7 >> 1);
      }

      if (v8 <= a2)
      {
        v8 = a2;
      }

      if (!HIDWORD(v8))
      {
        v9 = a3 - v5;
        if (v8 <= 0x10)
        {
          v10 = 16;
        }

        else
        {
          v10 = v8;
        }

        v11 = WTF::fastMalloc(v10);
        *(a1 + 8) = v10;
        *a1 = v11;
        memcpy(v11, v5, v6);
        if (v5)
        {
          if (*a1 == v5)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
          }

          WTF::fastFree(v5, v12);
        }

        return *a1 + v9;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x1C79FA930);
    }
  }

  v14 = *(a1 + 8);
  if (v14 + (v14 >> 1) <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14 + (v14 >> 1);
  }

  if (v15 <= a2)
  {
    v15 = a2;
  }

  if (HIDWORD(v15))
  {
    goto LABEL_31;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 12);
  v18 = WTF::fastMalloc(v16);
  *(a1 + 8) = v16;
  *a1 = v18;
  memcpy(v18, v5, v17);
  if (!v5)
  {
    return v3;
  }

  if (*a1 == v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v5, v19);
  return v3;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebCore::WebSocketChannel,WebCore::WebSocketChannel>(WebCore::WebSocketChannel &,void (WebCore::WebSocketChannel::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++*(v2 + 2);
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v1))();
    v6 = *(v2 + 2) - 1;
    if (*(v2 + 2) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = v1(v4);
    v6 = *(v2 + 2) - 1;
    if (*(v2 + 2) != 1)
    {
LABEL_3:
      *(v2 + 2) = v6;
      return result;
    }
  }

  WebCore::WebSocketChannel::~WebSocketChannel(v2);

  return bmalloc::api::tzoneFree(v7, v8);
}

uint64_t WTF::VectorDestructor<true,std::unique_ptr<WebCore::WebSocketChannel::QueuedFrame>>::destruct(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        break;
      }

LABEL_5:
      if (++v3 == a2)
      {
        return result;
      }
    }

    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
        v6 = *(v4 + 16);
        if (!v6)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      --v5[4];
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
LABEL_12:
      v7 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v7)
      {
        if (*v7 == 1)
        {
          WTF::fastFree(v7, a2);
        }

        else
        {
          --*v7;
        }
      }

      result = WTF::fastFree(v4, a2);
      goto LABEL_5;
    }

LABEL_11:
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    WTF::fastFree(v6, a2);
    goto LABEL_12;
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  while (1)
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v2 = *result;
    atomic_compare_exchange_strong_explicit(result, &v2, v1 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      if (v1 == 3)
      {
        v3 = result;
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F472B308;
        v4[1] = v3;
        v6 = v4;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(v5);
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(uint64_t this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x1CCA63990](this);
    v7 = *(v1 + 8);
    v4 = v7 - 1;
    *(v1 + 8) = v7 - 1;
    if (v7 != 1)
    {
LABEL_3:
      v5 = 0;
      v6 = 1;
      atomic_compare_exchange_strong_explicit(v1, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = WTF::Lock::unlockSlow(v1);
      if (v4)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(this + 8);
    v4 = v3 - 1;
    *(this + 8) = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = *(v1 + 24);
  ++*(v1 + 16);
  *(v1 + 24) = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v4)
  {
    return this;
  }

LABEL_9:
  v9 = WTF::fastMalloc(0x18);
  *v9 = &unk_1F472B330;
  v9[1] = v1;
  v9[2] = v5;
  v10 = v9;
  WTF::ensureOnMainThread();
  this = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    v6 = *(v3 + 16) - 1;
    *(v3 + 16) = v6;
    atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    result = WTF::Lock::unlockSlow(v3);
    if (v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = MEMORY[0x1CCA63990](v3);
  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v6)
  {
    return result;
  }

LABEL_9:

  return WTF::fastFree(v3, a2);
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    if (*(result + 12))
    {
      *(result + 12) = 0;
    }

    v2 = *result;
    if (*result)
    {
      *result = 0;
      *(result + 8) = 0;
      return WTF::fastFree(v2, a2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_0,WTF::String,WTF::URL const&>::~CallableWrapper(void *result, void *a2)
{
  v2 = result[1];
  *result = &unk_1F472B358;
  result[1] = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      v3 = result;
      WebCore::EventListenerMap::~EventListenerMap((v2 + 4), a2);
      WTF::fastFree(v2, v4);
      return v3;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_0,WTF::String,WTF::URL const&>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_1F472B358;
  *(a1 + 1) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v4 = a1;
    WebCore::EventListenerMap::~EventListenerMap((v2 + 4), a2);
    WTF::fastFree(v2, v5);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_0,WTF::String,WTF::URL const&>::call@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 552);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = *(v5 + 24);
          if (v6)
          {
            v7 = *(v6 + 8);
            if (v7)
            {
              return MEMORY[0x1EEE5E420](*(v7 + 808));
            }
          }
        }
      }
    }
  }

  *a2 = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_1,void,BOOL,BOOL>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B380;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    if (*(v1 + 2) == 1)
    {
      v2 = result;
      WebCore::WebSocketChannel::~WebSocketChannel(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_1,void,BOOL,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B380;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*(v2 + 2) != 1)
  {
    --*(v2 + 2);
    goto LABEL_4;
  }

  v4 = a1;
  WebCore::WebSocketChannel::~WebSocketChannel(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::didOpenSocketStream(WebCore::SocketStreamHandle &)::$_1,void,BOOL,BOOL>::call(WTF::StringImpl *result, char a2, int a3)
{
  v4 = *(result + 1);
  if ((a2 & 1) == 0)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(v4, &v8);
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (a3)
  {
    v6 = *(v4 + 48);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        *(v7 + 304) = 1;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_0,void,BOOL>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B3A8;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    if (*(v1 + 2) == 1)
    {
      v2 = result;
      WebCore::WebSocketChannel::~WebSocketChannel(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_0,void,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B3A8;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*(v2 + 2) != 1)
  {
    --*(v2 + 2);
    goto LABEL_4;
  }

  v4 = a1;
  WebCore::WebSocketChannel::~WebSocketChannel(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_0,void,BOOL>::call(WTF::StringImpl *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(v2, &v4);
    result = v4;
    v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_1,void,BOOL>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B3D0;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    if (*(v1 + 2) == 1)
    {
      v2 = result;
      WebCore::WebSocketChannel::~WebSocketChannel(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_1,void,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B3D0;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*(v2 + 2) != 1)
  {
    --*(v2 + 2);
    goto LABEL_4;
  }

  v4 = a1;
  WebCore::WebSocketChannel::~WebSocketChannel(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_1,void,BOOL>::call(WTF::StringImpl *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(v2, &v4);
    result = v4;
    v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_2,void,BOOL>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B3F8;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    if (*(v1 + 2) == 1)
    {
      v2 = result;
      WebCore::WebSocketChannel::~WebSocketChannel(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_2,void,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B3F8;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*(v2 + 2) != 1)
  {
    --*(v2 + 2);
    goto LABEL_4;
  }

  v4 = a1;
  WebCore::WebSocketChannel::~WebSocketChannel(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebCore::WebSocketChannel::processOutgoingFrameQueue(void)::$_2,void,BOOL>::call(WTF::StringImpl *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebCore::WebSocketChannel::fail(v2, &v4);
    result = v4;
    v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

uint64_t kitClass(WebCore::Node *a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = v3 >> 12;
  if (v3 >> 12 <= 6)
  {
    if (v3 >> 12 > 2)
    {
      if (v4 != 3 && v4 != 4)
      {
        return v2;
      }

      goto LABEL_45;
    }

    if (v4 != 1)
    {
      if (v4 == 2)
      {
        goto LABEL_45;
      }

      return v2;
    }

    if ((v3 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    *(a1 + 7) += 2;
    v2 = objc_opt_class();
    if (!elementClassMap)
    {
      v5 = WTF::fastMalloc(8);
      *v5 = 0;
      elementClassMap = v5;
      v6 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AA0];
      v98 = v6;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v7 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D30];
      v98 = v7;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v8 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B90];
      v98 = v8;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v9 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B98];
      v98 = v9;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v10 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2860];
      v98 = v10;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v11 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BA0];
      v98 = v11;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v12 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AB8];
      v98 = v12;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v13 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D38];
      v98 = v13;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v14 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D40];
      v98 = v14;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v15 = objc_opt_class();
      v97 = *MEMORY[0x1E69E27B8];
      v98 = v15;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v16 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B38];
      v98 = v16;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v17 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2890];
      v98 = v17;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v18 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B40];
      v98 = v18;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v19 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B48];
      v98 = v19;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v20 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B50];
      v98 = v20;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v21 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AC0];
      v98 = v21;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v22 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2C50];
      v98 = v22;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v23 = objc_opt_class();
      v97 = *MEMORY[0x1E69E28C8];
      v98 = v23;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v24 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BB0];
      v98 = v24;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v25 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BC0];
      v98 = v25;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v26 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2C60];
      v98 = v26;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v27 = objc_opt_class();
      v97 = *MEMORY[0x1E69E28D0];
      v98 = v27;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v28 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AC8];
      v98 = v28;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v29 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AD0];
      v98 = v29;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v30 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AD8];
      v98 = v30;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v31 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AE0];
      v98 = v31;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v32 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AE8];
      v98 = v32;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v33 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AF0];
      v98 = v33;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v34 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BC8];
      v98 = v34;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v35 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AF8];
      v98 = v35;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v36 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BD0];
      v98 = v36;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v37 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D78];
      v98 = v37;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v38 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B60];
      v98 = v38;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v39 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2C70];
      v98 = v39;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v40 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B68];
      v98 = v40;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v41 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2C78];
      v98 = v41;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v42 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D90];
      v98 = v42;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v43 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B00];
      v98 = v43;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v44 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BD8];
      v98 = v44;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v45 = objc_opt_class();
      v97 = *MEMORY[0x1E69E27E0];
      v98 = v45;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v46 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B70];
      v98 = v46;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v47 = objc_opt_class();
      v97 = *MEMORY[0x1E69E27F0];
      v98 = v47;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v48 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BE8];
      v98 = v48;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v49 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2BF0];
      v98 = v49;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v50 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2DB0];
      v98 = v50;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v51 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B08];
      v98 = v51;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v52 = objc_opt_class();
      v97 = *MEMORY[0x1E69E28E8];
      v98 = v52;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v53 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2DB8];
      v98 = v53;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v54 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AA8];
      v98 = v54;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v55 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2CA0];
      v98 = v55;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v56 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B78];
      v98 = v56;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v57 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2AB0];
      v98 = v57;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v58 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2DD0];
      v98 = v58;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v59 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2DD8];
      v98 = v59;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v60 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2CD0];
      v98 = v60;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v61 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2CD8];
      v98 = v61;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v62 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2CE0];
      v98 = v62;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v63 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B10];
      v98 = v63;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v64 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2910];
      v98 = v64;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v65 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2CF0];
      v98 = v65;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v66 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B18];
      v98 = v66;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v67 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2CF8];
      v98 = v67;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v68 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D00];
      v98 = v68;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v69 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B20];
      v98 = v69;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v70 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B28];
      v98 = v70;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v71 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2D10];
      v98 = v71;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
      v72 = objc_opt_class();
      v97 = *MEMORY[0x1E69E2B80];
      v98 = v72;
      WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(&v96, elementClassMap, &v97, &v98);
    }

    v73 = *(a1 + 13);
    if (*(v73 + 16))
    {
      v74 = elementClassMap;
      MEMORY[0x1CCA64900](&v96, MEMORY[0x1E696EB90], v73 + 24, v73 + 32);
      v75 = v96;
      if (v96 != -1)
      {
        if (!v96)
        {
          __break(0xC471u);
          JUMPOUT(0x1C79FC734);
        }

        v76 = *v74;
        if (*v74)
        {
          v77 = *(v76 - 8);
          v78 = (~(v96 << 32) + v96) ^ ((~(v96 << 32) + v96) >> 22);
          v79 = 9 * ((v78 + ~(v78 << 13)) ^ ((v78 + ~(v78 << 13)) >> 8));
          v80 = (v79 ^ (v79 >> 15)) + ~((v79 ^ (v79 >> 15)) << 27);
          v81 = v77 & ((v80 >> 31) ^ v80);
          v82 = *(v76 + 16 * v81);
          if (v82 == v96)
          {
LABEL_28:
            v84 = *(v76 + 16 * v81 + 8);
            goto LABEL_42;
          }

          v83 = 1;
          while (v82)
          {
            v81 = (v81 + v83) & v77;
            v82 = *(v76 + 16 * v81);
            ++v83;
            if (v82 == v96)
            {
              goto LABEL_28;
            }
          }
        }

        v84 = 0;
LABEL_42:
        *&v96 = 0;
        if (v75)
        {
          if (*v75 == 1)
          {
            v94 = MEMORY[0x1CCA648F0]();
            WTF::fastFree(v94, v95);
          }

          else
          {
            --*v75;
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v73 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79FC754);
      }

      if (v73)
      {
        v85 = *elementClassMap;
        if (!*elementClassMap)
        {
LABEL_52:
          if (*(a1 + 7) == 2)
          {
            WebCore::Node::removedLastRef(a1);
          }

          else
          {
            *(a1 + 7) -= 2;
          }

          return v2;
        }

        v86 = *(v85 - 8);
        v87 = (~(v73 << 32) + v73) ^ ((~(v73 << 32) + v73) >> 22);
        v88 = 9 * ((v87 + ~(v87 << 13)) ^ ((v87 + ~(v87 << 13)) >> 8));
        v89 = (v88 ^ (v88 >> 15)) + ~((v88 ^ (v88 >> 15)) << 27);
        v90 = v86 & ((v89 >> 31) ^ v89);
        v91 = *(v85 + 16 * v90);
        if (v91 == v73)
        {
LABEL_40:
          v84 = *(v85 + 16 * v90 + 8);
        }

        else
        {
          v92 = 1;
          while (v91)
          {
            v90 = (v90 + v92) & v86;
            v91 = *(v85 + 16 * v90);
            ++v92;
            if (v91 == v73)
            {
              goto LABEL_40;
            }
          }

          v84 = 0;
        }

LABEL_50:
        if (v84)
        {
          v2 = v84;
        }

        goto LABEL_52;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x1C79FC714);
  }

  if (v3 >> 12 > 8)
  {
    if (v4 == 9 || v4 == 10 || v4 == 11)
    {
      goto LABEL_45;
    }

    return v2;
  }

  if (v4 != 7 && v4 != 8)
  {
    return v2;
  }

LABEL_45:

  return objc_opt_class();
}

void sub_1C79FC778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v1);
    _Unwind_Resume(exception_object);
  }

  *(v1 + 7) -= 2;
  _Unwind_Resume(exception_object);
}

void sub_1C79FC9F8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FCC0C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (!a9)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::fastFree(a9, a2);
  _Unwind_Resume(exception_object);
}

void sub_1C79FCD58(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FCE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FD004(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FD188(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FD6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      _Unwind_Resume(exception_object);
    }

    *(a9 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FD7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      _Unwind_Resume(exception_object);
    }

    *(a9 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FD968(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  v15 = a13;
  if (!a13)
  {
    WebCore::SimpleRange::~SimpleRange(&a9);
    _Unwind_Resume(a1);
  }

  a13 = 0;
  a14 = 0;
  WTF::fastFree(v15, a2);
  WebCore::SimpleRange::~SimpleRange(&a9);
  _Unwind_Resume(a1);
}

void WebCore::SimpleRange::~SimpleRange(WebCore::SimpleRange *this)
{
  v1 = *(this + 2);
  *(this + 2) = 0;
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      v2 = *this;
      *this = 0;
      if (!v2)
      {
        return;
      }

      goto LABEL_5;
    }

    *(v1 + 7) -= 2;
  }

  v2 = *this;
  *this = 0;
  if (!v2)
  {
    return;
  }

LABEL_5:
  if (*(v2 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v2);
  }

  else
  {
    *(v2 + 7) -= 2;
  }
}

void sub_1C79FDE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WebCore::TextIndicator *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a16)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C79FE020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WebCore::SimpleRange::~SimpleRange(va);
  _Unwind_Resume(a1);
}

void sub_1C79FE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WebCore::SimpleRange::~SimpleRange(va);
  _Unwind_Resume(a1);
}

void sub_1C79FE048(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  WebCore::SimpleRange::~SimpleRange(&a13);
  _Unwind_Resume(a1);
}

void sub_1C79FE1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, char a11)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
    WebCore::SimpleRange::~SimpleRange(&a11);
    _Unwind_Resume(a1);
  }

  --v11[4];
  WebCore::SimpleRange::~SimpleRange(&a11);
  _Unwind_Resume(a1);
}

void sub_1C79FE38C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12)
{
  if (!a9)
  {
    WebCore::SimpleRange::~SimpleRange(&a12);
    _Unwind_Resume(a1);
  }

  WTF::fastFree(a9, a2);
  WebCore::SimpleRange::~SimpleRange(&a12);
  _Unwind_Resume(a1);
}

void sub_1C79FE8A4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  if (v11)
  {
    if (v11[4] == 1)
    {
      (*(*v11 + 8))(v11);
    }

    else
    {
      --v11[4];
    }
  }

  if (v10)
  {
    WTF::RefCounted<WebCore::FontCascadeFonts>::deref(v10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD **WTF::Ref<WebCore::Font const,WTF::RawPtrTraits<WebCore::Font const>,WTF::DefaultRefDerefTraits<WebCore::Font const>>::~Ref(_DWORD **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      v3 = MEMORY[0x1CCA66FC0](v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

void sub_1C79FEA94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  v13 = *(v11 - 40);
  *(v11 - 40) = 0;
  if (v13)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *kit(DOMObjectInternal *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMNodeFilter alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*(a1 + 4);
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMCSSRuleList alloc] _init];
    v3[2] = a1;
    (**a1)(a1);
    v6 = 0;
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMCSSStyleDeclaration alloc] _init];
    v3[2] = a1;
    (**a1)(a1);
    v6 = 0;
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (!DOMWrapper)
  {
    v6 = [objc_alloc(kitClass()) _init];
    v3 = v6;
    if (v6)
    {
      v7 = 0;
      *(v6 + 16) = a1;
      ++*(a1 + 4);
      v12 = v6;
      v11 = a1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        MEMORY[0x1CCA63990](wrapperCacheLock);
      }

      {
        wrapperCache(void)::map = 0;
      }

      WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v11, &v12, v10);
      v8 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != 1)
      {
        WTF::Lock::unlockSlow(wrapperCacheLock);
      }

      goto LABEL_13;
    }

    return v3;
  }

  v3 = DOMWrapper;
  v4 = DOMWrapper;
LABEL_13:
  v9 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMMediaError alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMNodeList alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*(a1 + 4);
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMRect alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (!DOMWrapper)
  {
    v6 = [objc_alloc(kitClass(a1)) _init];
    v3 = v6;
    if (v6)
    {
      v7 = 0;
      *(v6 + 16) = a1;
      ++*(a1 + 2);
      v12 = v6;
      v11 = a1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        MEMORY[0x1CCA63990](wrapperCacheLock);
      }

      {
        wrapperCache(void)::map = 0;
      }

      WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v11, &v12, v10);
      v8 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != 1)
      {
        WTF::Lock::unlockSlow(wrapperCacheLock);
      }

      goto LABEL_13;
    }

    return v3;
  }

  v3 = DOMWrapper;
  v4 = DOMWrapper;
LABEL_13:
  v9 = v3;
  return v3;
}

void sub_1C79FEEB4(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void sub_1C79FF150(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);
  _Unwind_Resume(exception_object);
}

void *kit(WebCore::LocalDOMWindow *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = WebCore::LocalDOMWindow::frame(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  DOMWrapper = getDOMWrapper(v1);
  if (DOMWrapper)
  {
    v4 = DOMWrapper;
    v5 = DOMWrapper;
  }

  else
  {
    v4 = [(WebScriptObject *)[DOMAbstractView alloc] _init];
    v7 = 0;
    v4[2] = v2;
    v12 = v4;
    v11 = v2;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v11, &v12, v10);
    v8 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v9 = v4;
  return v4;
}

void sub_1C79FF2A8(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void *kit(WebCore::WindowProxy *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = WebCore::WindowProxy::window(a1);
  if (!v1 || (*(v1 + 56) & 1) != 0)
  {
    return 0;
  }

  return kit(v1);
}

void sub_1C79FFB84(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C79FFB98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10)
{
  if (a9)
  {
  }

  if ((v11 & 1) == 0 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C79FFD3C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C79FFE78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A001EC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A00200(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::Blob *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMBlob alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*(a1 + 4);
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

void sub_1C7A00380(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

uint64_t kitClass(uint64_t a1)
{
  (*(*a1 + 112))(a1);

  return objc_opt_class();
}

uint64_t kitClass(WebCore::CSSRule *a1)
{
  if ((*(*a1 + 16))(a1) - 1 > 5)
  {
  }

  return objc_opt_class();
}

uint64_t kitClass(WebCore::DeprecatedCSSOMValue *a1)
{
  WebCore::DeprecatedCSSOMValue::cssValueType(a1);

  return objc_opt_class();
}

_OWORD *WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *&>(_OWORD *result, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A018E8);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v8 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v24 = v8 + 16 * *(v8 - 4);
        *v7 = v15;
        *(v7 + 1) = v24;
        *(v7 + 16) = 0;
        v15[1] = *a4;
        return result;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v8 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v15[1] = *a4;
  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v23 > 2 * v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(a2, 8u, v15);
      v15 = result;
      v19 = *a2;
      if (!*a2)
      {
LABEL_18:
        v23 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v23 = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v15);
    v15 = result;
    v19 = *a2;
    if (!*a2)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *v7 = v15;
  *(v7 + 1) = v19 + 16 * v23;
  *(v7 + 16) = 1;
  return result;
}

_OWORD *WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      if ((*v13 + 1) >= 2)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = (~(*v13 << 32) + *v13) ^ ((~(*v13 << 32) + *v13) >> 22);
        v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
        v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
        v19 = v15 & ((v18 >> 31) ^ v18);
        v20 = 1;
        do
        {
          v21 = v19;
          v22 = *(v14 + 16 * v19);
          v19 = (v19 + v20++) & v15;
        }

        while (v22);
        v23 = (v14 + 16 * v21);
        *v23 = *v13;
        if (v13 == a3)
        {
          v12 = v23;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

_DWORD *WTF::RefCounted<WebCore::FontCascadeFonts>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x1CCA65700](result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WebCore::JSMainThreadNullState *WebCore::JSMainThreadNullState::JSMainThreadNullState(WebCore::JSMainThreadNullState *this)
{
  v1 = this;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 736);
  if (!v3 || (this = *(v3 + 96)) == 0)
  {
    this = WebCore::threadGlobalDataSlow(this);
  }

  v4 = *(this + 8);
  *(v1 + 1) = v1 + 24;
  *v1 = v4;
  *(v1 + 2) = 4;
  v5 = MEMORY[0x1E69E26D0];
  *(v1 + 56) = 0;
  *(v1 + 8) = *v5;
  *(v1 + 9) = v4;
  *v5 = v1 + 8;
  v6 = *(StatusReg + 736);
  if (!v6 || (this = *(v6 + 96)) == 0)
  {
    this = WebCore::threadGlobalDataSlow(this);
  }

  *(this + 8) = 0;
  return v1;
}

void sub_1C7A01B24(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 20))
  {
    WebCore::CustomElementQueue::processQueue();
  }

  *v4 = *(v2 + 64);
  WebCore::CustomElementQueue::~CustomElementQueue(v3, a2);
  _Unwind_Resume(a1);
}

void WebCore::CustomElementQueue::~CustomElementQueue(WTF **this, void *a2)
{
  v3 = *(this + 3);
  v4 = *this;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        if (*(v6 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v6);
        }

        else
        {
          *(v6 + 7) -= 2;
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *this;
  }

  if (this + 2 != v4 && v4 != 0)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v4, a2);
  }
}

void WebCore::JSMainThreadNullState::~JSMainThreadNullState(WebCore::JSMainThreadNullState *this, void *a2)
{
  v2 = this;
  v3 = *this;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 736);
  if (!v4 || (this = *(v4 + 96)) == 0)
  {
    this = WebCore::threadGlobalDataSlow(this);
  }

  *(this + 8) = v3;
  if (!*(v2 + 5))
  {
    *MEMORY[0x1E69E26D0] = *(v2 + 8);
LABEL_6:
    v5 = *(v2 + 1);
    goto LABEL_7;
  }

  WebCore::CustomElementQueue::processQueue();
  v7 = *(v2 + 5);
  *MEMORY[0x1E69E26D0] = *(v2 + 8);
  v5 = *(v2 + 1);
  if (v7)
  {
    v8 = 8 * v7;
    do
    {
      v9 = *v5;
      *v5 = 0;
      if (v9)
      {
        if (*(v9 + 7) == 2)
        {
          v10 = v5;
          WebCore::Node::removedLastRef(v9);
          v5 = v10;
        }

        else
        {
          *(v9 + 7) -= 2;
        }
      }

      v5 = (v5 + 8);
      v8 -= 8;
    }

    while (v8);
    goto LABEL_6;
  }

LABEL_7:
  if ((v2 + 24) != v5 && v5 != 0)
  {
    *(v2 + 1) = 0;
    *(v2 + 4) = 0;
    WTF::fastFree(v5, a2);
  }
}

void sub_1C7A01D08(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 20))
  {
    WebCore::CustomElementQueue::processQueue();
  }

  *MEMORY[0x1E69E26D0] = *(v2 + 64);
  WebCore::CustomElementQueue::~CustomElementQueue((v2 + 8), a2);
  _Unwind_Resume(a1);
}

WebCore::TextIndicator *WTF::RefCounted<WebCore::TextIndicator>::deref(WebCore::TextIndicator *result)
{
  if (*result == 1)
  {
    WebCore::TextIndicator::~TextIndicator(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref(uint64_t *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(uint64_t result, void *a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(result, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v11 = result;
    MEMORY[0x1CCA63990]();
    result = v11;
    v12 = *(v11 + 8);
    v4 = v12 - 1;
    *(v11 + 8) = v12 - 1;
    if (v12 != 1)
    {
LABEL_3:
      v5 = 0;
      v6 = 1;
      atomic_compare_exchange_strong_explicit(result, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(result + 8);
    v4 = v3 - 1;
    *(result + 8) = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = *(result + 24);
  ++*(result + 16);
  *(result + 24) = 0;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(result, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 == 1)
  {
LABEL_4:
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_13:
  v14 = result;
  WTF::Lock::unlockSlow(result);
  result = v14;
  if (v4)
  {
    return result;
  }

LABEL_5:
  if (v5)
  {
    v7 = result;
    (*(*v5 + 8))(v5);
    result = v7;
  }

  v8 = 0;
  v9 = 1;
  atomic_compare_exchange_strong_explicit(result, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (!v8)
  {
    v10 = *(result + 16) - 1;
    *(result + 16) = v10;
    atomic_compare_exchange_strong_explicit(result, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v16 = result;
    WTF::Lock::unlockSlow(result);
    result = v16;
    if (v10)
    {
      return result;
    }

    goto LABEL_17;
  }

  v15 = result;
  MEMORY[0x1CCA63990]();
  result = v15;
  v10 = *(v15 + 16) - 1;
  *(v15 + 16) = v10;
  atomic_compare_exchange_strong_explicit(v15, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v10)
  {
    return result;
  }

LABEL_17:

  return WTF::fastFree(result, a2);
}

void sub_1C7A0201C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0238C(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(wrapperCacheLock);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1C7A024A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A02598(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A026E4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A027E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A029E4(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(wrapperCacheLock);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1C7A02B68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A02BA0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A02BF8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A02C2C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A02D90(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(&a9, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
  _Unwind_Resume(a1);
}

void sub_1C7A02E0C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ExceptionOr<WTF::String>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) != 255)
  {
    if (*(result + 16))
    {
      v2 = *(result + 8);
      *(result + 8) = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v2 = *result;
      *result = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      result = v3;
    }
  }

LABEL_8:
  *(result + 16) = -1;
  return result;
}

void sub_1C7A02FFC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  if (a11 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::DeprecatedCSSOMCounter,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMCounter>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMCounter>>,WebCore::Exception>,(mpark::detail::Trait)1> &>(&a9, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a17, v21);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a17, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0318C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::DeprecatedCSSOMRect,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMRect>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMRect>>>::~ExceptionOr(&a9, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
  _Unwind_Resume(a1);
}

void sub_1C7A031D4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A03310(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::DeprecatedCSSOMRect,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMRect>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMRect>>>::~ExceptionOr(&a9, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
  _Unwind_Resume(a1);
}

void sub_1C7A03358(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A03578(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A036AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::CSSRule *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (!DOMWrapper)
  {
    v6 = [objc_alloc(kitClass(a1)) _init];
    v3 = v6;
    if (v6)
    {
      v7 = 0;
      *(v6 + 16) = a1;
      ++*(a1 + 4);
      v12 = v6;
      v11 = a1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        MEMORY[0x1CCA63990](wrapperCacheLock);
      }

      {
        wrapperCache(void)::map = 0;
      }

      WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v11, &v12, v10);
      v8 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != 1)
      {
        WTF::Lock::unlockSlow(wrapperCacheLock);
      }

      goto LABEL_13;
    }

    return v3;
  }

  v3 = DOMWrapper;
  v4 = DOMWrapper;
LABEL_13:
  v9 = v3;
  return v3;
}

void sub_1C7A0395C(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void sub_1C7A03CC8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A03E1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A040F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, char a13)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A04280(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 8) == 1)
    {
      WebCore::DeprecatedCSSOMValue::operator delete();
    }

    else
    {
      --*(a10 + 8);
    }
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A044A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(&a11, a2);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v16);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
  _Unwind_Resume(a1);
}

void sub_1C7A04690(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, char a13)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0487C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A04A64(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A04C1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, char a13)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A04D70(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A04E98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A04F9C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ExceptionOr<unsigned int>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16))
  {
    if (*(result + 16) != 255)
    {
      v2 = *(result + 8);
      *(result + 8) = 0;
      if (v2)
      {
        if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v3 = result;
          WTF::StringImpl::destroy(v2, a2);
          result = v3;
        }
      }
    }
  }

  *(result + 16) = -1;
  return result;
}

uint64_t mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::DeprecatedCSSOMCounter,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMCounter>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMCounter>>,WebCore::Exception>,(mpark::detail::Trait)1> &>(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16))
  {
    v2 = result;
    result = *(result + 8);
    *(v2 + 8) = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(result, a2);
    }
  }

  else
  {
    v3 = *result;
    *result = 0;
    if (v3)
    {
      if (*v3 == 1)
      {
        v4 = *(v3 + 3);
        *(v3 + 3) = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }

        v5 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v3 + 1);
        *(v3 + 1) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        if (*v3 == 1)
        {

          return WTF::fastFree(v3, a2);
        }

        else
        {
          result = 191;
          __break(0xC471u);
        }
      }

      else
      {
        --*v3;
      }
    }
  }

  return result;
}

uint64_t WebCore::ExceptionOr<WTF::Ref<WebCore::DeprecatedCSSOMRect,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMRect>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMRect>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  if (*(result + 16))
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 16) = -1;
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
LABEL_6:
      *(result + 16) = -1;
      return result;
    }

    if (*v2 != 1)
    {
      --*v2;
      goto LABEL_6;
    }

    v5 = result;
    WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(v2);
    WTF::fastFree(v6, v7);
    result = v5;
    *(v5 + 16) = -1;
  }

  return result;
}

uint64_t WTF::Ref<WebCore::DeprecatedCSSOMCounter,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMCounter>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMCounter>>::~Ref(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      v4 = *(v2 + 3);
      *(v2 + 3) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = *(v2 + 2);
      *(v2 + 2) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v2 + 1);
      *(v2 + 1) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      if (*v2 == 1)
      {
        WTF::fastFree(v2, a2);
        return v3;
      }

      else
      {
        result = 191;
        __break(0xC471u);
      }
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

WebCore::DeprecatedCSSOMRGBColor **WTF::Ref<WebCore::DeprecatedCSSOMRGBColor,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMRGBColor>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMRGBColor>>::~Ref(WebCore::DeprecatedCSSOMRGBColor **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

void WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(WebCore::DeprecatedCSSOMRGBColor *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    if (*(v2 + 8) == 1)
    {
      WebCore::DeprecatedCSSOMValue::operator delete();
      v3 = *(this + 3);
      *(this + 3) = 0;
      if (!v3)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    --*(v2 + 8);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v3 + 8) == 1)
  {
    WebCore::DeprecatedCSSOMValue::operator delete();
  }

  else
  {
    --*(v3 + 8);
  }

LABEL_10:
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (*(v4 + 8) != 1)
  {
    --*(v4 + 8);
LABEL_13:
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  WebCore::DeprecatedCSSOMValue::operator delete();
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
LABEL_14:
    if (*(v5 + 8) == 1)
    {
      WebCore::DeprecatedCSSOMValue::operator delete();
    }

    else
    {
      --*(v5 + 8);
    }
  }

LABEL_19:
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void sub_1C7A055B4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 8))(a4);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A05698(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 8))(a4);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A057C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A058BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A05A38(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a12, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A05B54(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A05D24(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A05E0C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

NSObject *kit(WebCore::DeprecatedCSSOMValue *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
    v5 = v3;
    return v3;
  }

  v8 = [objc_alloc(kitClass(a1)) _init];
  v7 = v8;
  if (!v8)
  {
    return v7;
  }

  v8[2].isa = a1;
  ++*(a1 + 2);
  addDOMWrapper(v8, a1);
  v9 = v7;
  return v7;
}

void sub_1C7A060C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A060D4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A061A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06484(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(&a9, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
  _Unwind_Resume(a1);
}

void sub_1C7A06500(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06594(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0669C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A067C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A068F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06A00(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06C64(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06C78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06DAC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06DC0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06EF4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A06F08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

NSObject *kit(DOMObjectInternal *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMCounter alloc] _init];
    v3[2].isa = a1;
    ++*a1;
    addDOMWrapper(v3, a1);
  }

  v5 = v3;
  return v3;
}

void DOMCustomXPathNSResolver::~DOMCustomXPathNSResolver(DOMCustomXPathNSResolver *this)
{
  WebCore::XPathNSResolver::~XPathNSResolver(this);

  WTF::fastFree(v1, v2);
}

uint64_t *DOMCustomXPathNSResolver::lookupNamespaceURI@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
  }

  v7 = [v4 lookupNamespaceURI:v13];
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    v10 = v7;

    v7 = v10;
  }

  return WTF::AtomStringImpl::add(a3, v7, v8);
}

void sub_1C7A070EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    ReportBlockedObjCException(v10);
    objc_end_catch();
    JUMPOUT(0x1C7A070BCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A07320(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v7);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0742C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07440(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07574(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07588(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07698(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A078C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A079C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07BD4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07D0C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07D20(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07DF4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07EF4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A07FE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08108(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08268(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A083A4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0855C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(&a9, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
  _Unwind_Resume(a1);
}

void sub_1C7A085D8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0869C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08874(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }

    *(a9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08A0C(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08B24(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08C3C(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08D54(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08E6C(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A08FC0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A09148(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v7);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A09200(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A09310(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A09464(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v7);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A095F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A09734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(v2 - 24);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A09750(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0982C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(v2 - 24);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A09848(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::DocumentFullscreen::webkitFullscreenElement(WebCore::DocumentFullscreen *this, WebCore::Document *a2)
{
  WebCore::Document::protectedFullscreen(&v10, this);
  v3 = WebCore::DocumentFullscreen::fullscreenElement(v10);
  v4 = v3;
  if (v3)
  {
    *(v3 + 7) += 2;
  }

  result = WebCore::TreeScope::ancestorElementInThisScope((this + 104), v3);
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v7 = result;
      WebCore::Node::removedLastRef(v4);
      result = v7;
      v6 = v10;
      v10 = 0;
      if (!v6)
      {
        return result;
      }

      goto LABEL_9;
    }

    *(v4 + 7) -= 2;
  }

  v6 = v10;
  v10 = 0;
  if (!v6)
  {
    return result;
  }

LABEL_9:
  v8 = *(*(v6 + 1) + 8);
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      v9 = result;
      WebCore::Node::removedLastRef(v8);
      return v9;
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void sub_1C7A099C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(&a10);
      _Unwind_Resume(a1);
    }

    *(v10 + 7) -= 2;
    WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(&a10);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

void sub_1C7A09AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(v2 - 24);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A09AE0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A09DC8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A09F54(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0A264(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  if (*(result + 16))
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 16) = -1;
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
LABEL_6:
      *(result + 16) = -1;
      return result;
    }

    if (*(v2 + 7) != 2)
    {
      *(v2 + 7) -= 2;
      goto LABEL_6;
    }

    v5 = result;
    WebCore::Node::removedLastRef(v2);
    result = v5;
    *(v5 + 16) = -1;
  }

  return result;
}

void sub_1C7A0A434(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0A550(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0A688(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0A858(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A0AA8C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A0ACB4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A0AE68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, char a12)
{
  if (a11)
  {
    if (a11[4] == 1)
    {
      (*(*a11 + 8))(a11);
    }

    else
    {
      --a11[4];
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0B0D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  mpark::variant<BOOL,WebCore::ImportNodeOptions>::~variant(&a9);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A0B140(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0B2FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A0B56C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A0B780(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, _DWORD *a11, char a12)
{
  if (a11)
  {
    if (a11[4] == 1)
    {
      (*(*a11 + 8))(a11);
    }

    else
    {
      --a11[4];
    }
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0B96C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A0B9CC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0B9E0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0BB90(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Event,WTF::RawPtrTraits<WebCore::Event>,WTF::DefaultRefDerefTraits<WebCore::Event>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void *kit(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (!DOMWrapper)
  {
    v6 = *(a1 + 30) & 0x7F;
    if (v6 > 0x56)
    {
      if ((*(a1 + 30) & 0x7Fu) > 0x62)
      {
        if (v6 != 99 && v6 != 100)
        {
          goto LABEL_24;
        }
      }

      else if (v6 != 87 && v6 != 96)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((*(a1 + 30) & 0x7Fu) <= 0x4D)
      {
        if (v6 == 74 || v6 == 77)
        {
          goto LABEL_25;
        }

LABEL_24:
        (*(*a1 + 128))(a1);
        goto LABEL_25;
      }

      if (v6 != 78 && v6 != 81)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v7 = [objc_alloc(objc_opt_class()) _init];
    v3 = v7;
    if (v7)
    {
      v8 = 0;
      *(v7 + 16) = a1;
      ++*(a1 + 24);
      v13 = v7;
      v12 = a1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 1u, memory_order_acquire, memory_order_acquire);
      if (v8)
      {
        MEMORY[0x1CCA63990](wrapperCacheLock);
      }

      {
        wrapperCache(void)::map = 0;
      }

      WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v12, &v13, v11);
      v9 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != 1)
      {
        WTF::Lock::unlockSlow(wrapperCacheLock);
      }

      goto LABEL_32;
    }

    return v3;
  }

  v3 = DOMWrapper;
  v4 = DOMWrapper;
LABEL_32:
  v10 = v3;
  return v3;
}

void sub_1C7A0BE70(_Unwind_Exception *a1)
{
  v3 = v1;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void sub_1C7A0BF4C(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[2] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[2];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0C1E8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, char a11)
{
  WTF::fastFree(v11, a2);
  if (a10)
  {
    if (a10[2] == 1)
    {
      (*(*a10 + 8))(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v14);
      _Unwind_Resume(a1);
    }

    --a10[2];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
  _Unwind_Resume(a1);
}

void sub_1C7A0C684(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, char a11)
{
  WTF::fastFree(v11, a2);
  if (a10)
  {
    if (a10[2] == 1)
    {
      (*(*a10 + 8))(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v14);
      _Unwind_Resume(a1);
    }

    --a10[2];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
  _Unwind_Resume(a1);
}

void sub_1C7A0CA60(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, WTF::StringImpl *a10, char a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::XPathExpression,WTF::RawPtrTraits<WebCore::XPathExpression>,WTF::DefaultRefDerefTraits<WebCore::XPathExpression>>>::~ExceptionOr(&a11, a2);
  if (a9)
  {
    if (a9[2] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[2];
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v20);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
  _Unwind_Resume(a1);
}

void sub_1C7A0CBE4(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[2] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[2];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0CEE8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, WTF::StringImpl *a10, char a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::XPathResult,WTF::RawPtrTraits<WebCore::XPathResult>,WTF::DefaultRefDerefTraits<WebCore::XPathResult>>>::~ExceptionOr(&a11, a2);
  if (a9)
  {
    if (a9[2] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[2];
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v20);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
  _Unwind_Resume(a1);
}

void sub_1C7A0D0AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::String,WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>>,(mpark::detail::Trait)1>::~destructor(&a9, a2);
  v17 = a11;
  a11 = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
  _Unwind_Resume(a1);
}

void sub_1C7A0D1DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0D2E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0D3F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0D500(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0D684(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A0D6D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0D80C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, char a12)
{
  if (a11)
  {
    if (a11[4] == 1)
    {
      (*(*a11 + 8))(a11);
    }

    else
    {
      --a11[4];
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0D940(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0DA54(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[2] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[2];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0DB58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 8))(a4);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0DCC4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t core(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if ((*(result + 32) & 8) == 0)
    {
      result = 96;
      __break(0xC471u);
    }
  }

  return result;
}

{
  if (result)
  {
    result = *(result + 16);
    if ((*(result + 32) & 0x10) == 0 || *(*(result + 104) + 24) != *(*MEMORY[0x1E69E2910] + 24))
    {
      result = 96;
      __break(0xC471u);
    }
  }

  return result;
}

void sub_1C7A0DEA8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0E014(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, char a12)
{
  if (a11)
  {
    if (a11[4] == 1)
    {
      (*(*a11 + 8))(a11);
    }

    else
    {
      --a11[4];
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0E1C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(v2 - 24);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A0E1E0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0E31C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebCore::Node *a11, char a12)
{
  if (a11)
  {
    if (*(a11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a11);
    }

    else
    {
      *(a11 + 7) -= 2;
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0E490(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A0E6A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::NodeList,WTF::RawPtrTraits<WebCore::NodeList>,WTF::DefaultRefDerefTraits<WebCore::NodeList>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ExceptionOr<WTF::Ref<WebCore::NodeList,WTF::RawPtrTraits<WebCore::NodeList>,WTF::DefaultRefDerefTraits<WebCore::NodeList>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  if (*(result + 16))
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 16) = -1;
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
LABEL_6:
      *(result + 16) = -1;
      return result;
    }

    if (v2[4] != 1)
    {
      --v2[4];
      goto LABEL_6;
    }

    v5 = result;
    (*(*v2 + 8))(v2);
    result = v5;
    *(v5 + 16) = -1;
  }

  return result;
}

void sub_1C7A0E908(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0EB48(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0EB5C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0EC90(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A0EEA8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::NodeList,WTF::RawPtrTraits<WebCore::NodeList>,WTF::DefaultRefDerefTraits<WebCore::NodeList>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A0F018(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F02C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F144(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F158(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F260(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F274(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F34C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0F4DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A0FF40(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1009C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A101E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if (a14)
  {
    v20 = a13;
    a13 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }
  }

  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v21);
  _Unwind_Resume(a1);
}

void sub_1C7A10250(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10368(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A104B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if (a14)
  {
    v20 = a13;
    a13 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }
  }

  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v21);
  _Unwind_Resume(a1);
}

void sub_1C7A1051C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10618(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10738(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10914(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10A80(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10BA0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A10DD0(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A111D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, void *a11, char a12)
{
  if (a11)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11378(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A114E4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11620(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebCore::Node *a11, char a12)
{
  if (a11)
  {
    if (*(a11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a11);
    }

    else
    {
      *(a11 + 7) -= 2;
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A117EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A1184C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11860(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A119CC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A11A2C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11A40(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11B5C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12)
{
  v13 = v12;
  if (v13)
  {
    v15 = v13;
    v16 = v13[4] - 1;
    if (!v16)
    {
      (*(*v15 + 8))(v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v17);
      _Unwind_Resume(a1);
    }

    v15[4] = v16;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11D6C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, void *a11, char a12)
{
  if (a11)
  {
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A11F78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12150(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12314(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, char a12)
{
  v13 = v12;
  if (v13)
  {
    v15 = v13;
    v16 = v13[4] - 1;
    if (!v16)
    {
      (*(*v15 + 8))(v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v17);
      _Unwind_Resume(a1);
    }

    v15[4] = v16;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12520(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WebCore::Node *a11, char a12)
{
  if (a11)
  {
    if (*(a11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a11);
    }

    else
    {
      *(a11 + 7) -= 2;
    }
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12714(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A12774(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12788(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12854(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12998(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12AA8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12D84(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12)
{
  v13 = v12;
  if (v13)
  {
    v15 = v13;
    v16 = v13[4] - 1;
    if (!v16)
    {
      (*(*v15 + 8))(v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v17);
      _Unwind_Resume(a1);
    }

    v15[4] = v16;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A12F20(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A130BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A13228(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A13444(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A135D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A13818(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::NodeList,WTF::RawPtrTraits<WebCore::NodeList>,WTF::DefaultRefDerefTraits<WebCore::NodeList>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A13A68(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A13A7C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A13D74(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1415C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Ref<WebCore::DocumentFullscreen,WTF::RawPtrTraits<WebCore::DocumentFullscreen>,WTF::DefaultRefDerefTraits<WebCore::DocumentFullscreen>>::~Ref(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(*(v1 + 8) + 8);
    if (v2)
    {
      if (*(v2 + 7) == 2)
      {
        v3 = result;
        WebCore::Node::removedLastRef(v2);
        return v3;
      }

      else
      {
        *(v2 + 7) -= 2;
      }
    }

    else
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t mpark::variant<BOOL,WebCore::ImportNodeOptions>::~variant(uint64_t result)
{
  if (!*(result + 16))
  {
    goto LABEL_6;
  }

  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  v1 = *(result + 8);
  *(result + 8) = 0;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1[4] != 1)
  {
    --v1[4];
LABEL_6:
    *(result + 16) = -1;
    return result;
  }

  v2 = result;
  (*(*v1 + 16))(v1);
  result = v2;
  *(v2 + 16) = -1;
  return result;
}

uint64_t WebCore::ExceptionOr<WTF::Ref<WebCore::Event,WTF::RawPtrTraits<WebCore::Event>,WTF::DefaultRefDerefTraits<WebCore::Event>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  if (*(result + 16))
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 16) = -1;
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
LABEL_6:
      *(result + 16) = -1;
      return result;
    }

    if (v2[6] != 1)
    {
      --v2[6];
      goto LABEL_6;
    }

    v5 = result;
    (*(*v2 + 8))(v2);
    result = v5;
    *(v5 + 16) = -1;
  }

  return result;
}

uint64_t WebCore::ExceptionOr<WTF::Ref<WebCore::XPathExpression,WTF::RawPtrTraits<WebCore::XPathExpression>,WTF::DefaultRefDerefTraits<WebCore::XPathExpression>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  if (*(result + 16))
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 16) = -1;
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
LABEL_6:
      *(result + 16) = -1;
      return result;
    }

    if (*v2 != 1)
    {
      --*v2;
      goto LABEL_6;
    }

    v5 = result;
    WebCore::XPathExpression::~XPathExpression(v2);
    WTF::fastFree(v6, v7);
    result = v5;
    *(v5 + 16) = -1;
  }

  return result;
}

uint64_t WebCore::ExceptionOr<WTF::Ref<WebCore::XPathResult,WTF::RawPtrTraits<WebCore::XPathResult>,WTF::DefaultRefDerefTraits<WebCore::XPathResult>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 255)
  {
    goto LABEL_6;
  }

  if (*(result + 16))
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 16) = -1;
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
LABEL_6:
      *(result + 16) = -1;
      return result;
    }

    if (*v2 != 1)
    {
      --*v2;
      goto LABEL_6;
    }

    v5 = result;
    v6 = MEMORY[0x1CCA64260](v2);
    WTF::fastFree(v6, v7);
    result = v5;
    *(v5 + 16) = -1;
  }

  return result;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::String,WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>>,(mpark::detail::Trait)1>::~destructor(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 8);
  if (v2 == 255)
  {
    goto LABEL_6;
  }

  v3 = *result;
  *result = 0;
  if (v2)
  {
    if (!v3)
    {
LABEL_6:
      *(result + 8) = -1;
      return result;
    }

    if (v3[2] != 1)
    {
      --v3[2];
      goto LABEL_6;
    }

    v5 = *(v3 + 2);
    *(v3 + 2) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v6 = result;
      v7 = v3;
      WTF::StringImpl::destroy(v5, a2);
      v3 = v7;
      result = v6;
    }

    if (v3[2] == 1)
    {
      v8 = result;
      if (*v3)
      {
        *(*v3 + 8) = 3;
        *v3 = 0;
      }

      bmalloc::api::tzoneFree(v3, a2);
      result = v8;
      *(v8 + 8) = -1;
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    if (!v3 || atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_6;
    }

    v4 = result;
    WTF::StringImpl::destroy(v3, a2);
    result = v4;
    *(v4 + 8) = -1;
  }

  return result;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 8);
  if (v2 == 255)
  {
    goto LABEL_9;
  }

  v3 = *result;
  *result = 0;
  if (v2)
  {
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v4 = result;
      WTF::StringImpl::destroy(v3, a2);
      result = v4;
      *(v4 + 8) = -1;
      return result;
    }

    goto LABEL_9;
  }

  if (!v3)
  {
LABEL_9:
    *(result + 8) = -1;
    return result;
  }

  if (*(v3 + 8) != 1)
  {
    --*(v3 + 8);
    goto LABEL_9;
  }

  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v6 = result;
    v7 = v3;
    WTF::StringImpl::destroy(v5, a2);
    v3 = v7;
    result = v6;
  }

  if (*(v3 + 8) == 1)
  {
    v8 = result;
    if (*v3)
    {
      *(*v3 + 8) = 3;
      *v3 = 0;
    }

    bmalloc::api::tzoneFree(v3, a2);
    result = v8;
    *(v8 + 8) = -1;
  }

  else
  {
    result = 191;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::Ref<WebCore::TreeWalker,WTF::RawPtrTraits<WebCore::TreeWalker>,WTF::DefaultRefDerefTraits<WebCore::TreeWalker>>::~Ref(uint64_t result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (!v2)
  {
    return result;
  }

  if (*(v2 + 2) != 1)
  {
    --*(v2 + 2);
    return result;
  }

  v3 = *(v2 + 5);
  *(v2 + 5) = 0;
  v4 = result;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v3);
      v5 = *(v2 + 3);
      *(v2 + 3) = 0;
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    *(v3 + 7) -= 2;
  }

  v5 = *(v2 + 3);
  *(v2 + 3) = 0;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v5[4] == 1)
  {
    (*(*v5 + 16))(v5);
  }

  else
  {
    --v5[4];
  }

LABEL_12:
  v6 = *(v2 + 2);
  *(v2 + 2) = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
      if (*(v2 + 2) == 1)
      {
        goto LABEL_16;
      }

LABEL_22:
      result = 191;
      __break(0xC471u);
      return result;
    }

    *(v6 + 7) -= 2;
  }

  if (*(v2 + 2) != 1)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (*v2)
  {
    *(*v2 + 8) = 3;
    *v2 = 0;
  }

  bmalloc::api::tzoneFree(v2, a2);
  return v4;
}