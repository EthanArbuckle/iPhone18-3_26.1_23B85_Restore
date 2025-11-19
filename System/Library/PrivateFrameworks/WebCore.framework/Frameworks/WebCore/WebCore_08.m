void webrtc::BlockFramer::BlockFramer(webrtc::BlockFramer *this, uint64_t a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  operator new();
}

unint64_t *webrtc::BlockFramer::InsertBlockAndExtractSubFrame(unint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = result;
    if (result[1])
    {
      v7 = 0;
      v8 = 1;
      while (!v8)
      {
LABEL_4:
        if (++v7 >= v3)
        {
          return result;
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = v4[2];
        if (0xAAAAAAAAAAAAAAABLL * ((v4[3] - v12) >> 3) <= v7)
        {
          break;
        }

        v13 = (v12 + 24 * v7);
        v14 = *v13;
        if (0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3) <= v11)
        {
          break;
        }

        v15 = *a3;
        v16 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        if (v16 <= v7)
        {
          break;
        }

        v17 = *(v15 + 24 * v7);
        if (v11 >= (*(v15 + 24 * v7 + 8) - v17) >> 4)
        {
          break;
        }

        v18 = v14 + v10;
        v19 = *(v18 + 8);
        v20 = v19 - *v18;
        if (v19 != *v18)
        {
          result = memmove(*(v17 + v9), *v18, v19 - *v18);
          v15 = *a3;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        }

        if (v16 <= v7)
        {
          break;
        }

        v21 = (v15 + 24 * v7);
        v22 = *v21;
        if (v11 >= (v21[1] - *v21) >> 4)
        {
          break;
        }

        v23 = v4[2];
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v4[3] - v23) >> 3);
        if (v24 <= v7)
        {
          break;
        }

        v25 = *(v23 + 24 * v7);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v23 + 24 * v7 + 8) - v25) >> 3) <= v11)
        {
          break;
        }

        v26 = v20 << 30;
        v27 = (0x5000000000 - (v20 << 30)) >> 30;
        if (v26 != 0x5000000000)
        {
          result = memmove((*(v22 + v9) + *(v25 + v10 + 8) - *(v25 + v10)), (*(a2 + 8) + 4 * ((v11 + v7 * *(a2 + 4)) << 6)), v27);
          v23 = v4[2];
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v4[3] - v23) >> 3);
        }

        if (v24 <= v7)
        {
          break;
        }

        v29 = (v23 + 24 * v7);
        v28 = *v29;
        if (0xAAAAAAAAAAAAAAABLL * ((v29[1] - *v29) >> 3) <= v11)
        {
          break;
        }

        v30 = v28 + v10;
        v31 = *(v28 + v10);
        *(v30 + 8) = v31;
        v32 = *(a2 + 8) + 4 * ((v11 + v7 * *(a2 + 4)) << 6);
        result = std::vector<float>::__insert_with_size[abi:sn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v30, v31, (v32 + v27), (v32 + 256), (256 - v27) >> 2);
        ++v11;
        v8 = v4[1];
        v10 += 24;
        v9 += 16;
        if (v11 >= v8)
        {
          v3 = *v4;
          goto LABEL_4;
        }
      }

      __break(1u);
    }
  }

  return result;
}

char *std::vector<float>::__insert_with_size[abi:sn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t a1, char *__dst, int *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 > (v6 - v7) >> 2)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 2);
    if (!(v9 >> 62))
    {
      v10 = v6 - v8;
      if (v10 >> 1 > v9)
      {
        v9 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (!(v11 >> 62))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v45 = 4 * ((__dst - v8) >> 2);
      v46 = 4 * a5;
      v47 = v45 + 4 * a5;
      v48 = v45;
      do
      {
        if (!v48)
        {
          goto LABEL_56;
        }

        v49 = *__src++;
        *v48++ = v49;
        v46 -= 4;
      }

      while (v46);
      v50 = *(a1 + 8) - __dst;
      memcpy((v45 + 4 * a5), __dst, v50);
      v52 = v47 + v50;
      *(a1 + 8) = v5;
      v53 = *a1;
      v54 = &v5[-*a1];
      v55 = v45 - v54;
      memcpy((v45 - v54), *a1, v54);
      *a1 = v55;
      *(a1 + 8) = v52;
      *(a1 + 16) = 0;
      if (v53)
      {
        operator delete(v53);
      }

      return v45;
    }

LABEL_57:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = v7 - __dst;
  v13 = (v7 - __dst) >> 2;
  if (v13 >= a5)
  {
    v12 = 4 * a5;
    v32 = &__dst[4 * a5];
    v33 = (v7 - 4 * a5);
    if (v33 >= v7)
    {
      v37 = *(a1 + 8);
    }

    else
    {
      v34 = v33 + 1;
      if (v7 > (v33 + 1))
      {
        v34 = *(a1 + 8);
      }

      v35 = v34 + v12 + ~v7;
      v36 = v35 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v37 = *(a1 + 8);
      if (v36)
      {
        goto LABEL_61;
      }

      v38 = (v35 >> 2) + 1;
      v39 = 4 * (v38 & 0x7FFFFFFFFFFFFFF8);
      v33 = (v33 + v39);
      v37 = (v7 + v39);
      v40 = (v7 + 16);
      v41 = (v7 + 16 - v12);
      v42 = v38 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v43 = *v41;
        *(v40 - 1) = *(v41 - 1);
        *v40 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 8;
      }

      while (v42);
      if (v38 != (v38 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_61:
        do
        {
          v44 = *v33++;
          *v37++ = v44;
        }

        while (v33 < v7);
      }
    }

    *(a1 + 8) = v37;
    if (v7 != v32)
    {
      v57 = __src;
      memmove(v32, __dst, v7 - v32);
      __src = v57;
    }

    v58 = v5;
    v59 = __src;
    goto LABEL_55;
  }

  v14 = __src + v12;
  v15 = *(a1 + 8);
  v16 = v15;
  if (__src + v12 != a4)
  {
    while (v16)
    {
      v17 = *v14;
      v14 += 4;
      *v16 = v17;
      v16 += 4;
      v15 += 4;
      if (v14 == a4)
      {
        goto LABEL_16;
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_16:
  *(a1 + 8) = v15;
  if (v13 < 1)
  {
    return v5;
  }

  v18 = a5;
  v19 = &__dst[4 * a5];
  v20 = (v15 - 4 * a5);
  if (v20 >= v7)
  {
    v23 = __src;
    v24 = v15;
  }

  else
  {
    v21 = v20 + 1;
    if (v7 > (v20 + 1))
    {
      v21 = v7;
    }

    v22 = &v21[v18] + ~v15;
    v23 = __src;
    v24 = v15;
    if (v22 < 0x1C)
    {
      goto LABEL_62;
    }

    if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
    {
      goto LABEL_62;
    }

    v25 = (v22 >> 2) + 1;
    v26 = 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
    v20 = (v20 + v26);
    v24 = (v15 + v26);
    v27 = (v15 + 16);
    v28 = (v15 + 16 - v18 * 4);
    v29 = v25 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v30 = *v28;
      *(v27 - 1) = *(v28 - 1);
      *v27 = v30;
      v27 += 2;
      v28 += 2;
      v29 -= 8;
    }

    while (v29);
    if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_62:
      do
      {
        v31 = *v20++;
        *v24++ = v31;
      }

      while (v20 < v7);
    }
  }

  *(a1 + 8) = v24;
  if (v16 != v19)
  {
    memmove(&__dst[4 * a5], __dst, v15 - v19);
  }

  if (v7 == v5)
  {
    return v5;
  }

  v58 = v5;
  v59 = v23;
LABEL_55:
  memmove(v58, v59, v12);
  return v5;
}

void webrtc::anonymous namespace::BlockProcessorImpl::~BlockProcessorImpl(webrtc::_anonymous_namespace_::BlockProcessorImpl *this)
{
  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 81);
  *(this + 81) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  *(this + 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    MEMORY[0x2743DA540](v5, 0xC400A2AC0F1);
  }
}

{
  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 81);
  *(this + 81) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  *(this + 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    MEMORY[0x2743DA540](v5, 0xC400A2AC0F1);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::BlockProcessorImpl::GetMetrics(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 656) + 16))(*(a1 + 656));
  result = (*(**(a1 + 640) + 64))(*(a1 + 640));
  *(a2 + 16) = 4 * result;
  return result;
}

uint64_t webrtc::anonymous namespace::BlockProcessorImpl::ProcessCapture(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ++*(result + 688);
  if (*(a5 + 16) == *(a5 + 8))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v5 = result;
  if (*(result + 625) == 1)
  {
    LODWORD(v9) = a2;
    if ((*(result + 624) & 1) == 0)
    {
      *(result + 624) = 1;
      (*(**(result + 640) + 16))(*(result + 640));
      v10 = *(v5 + 648);
      if (v10)
      {
        (*(*v10 + 16))(v10, 1);
      }
    }

    v11 = v9;
    v9 = v9;
    if (*(v5 + 684) == 2)
    {
      v9 = v9;
      if (*(v5 + 625) == 1)
      {
        v9 = v9 | 0x100000000;
        v12 = *(v5 + 648);
        if (v12)
        {
          (*(*v12 + 16))(v12, 1);
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/block_processor.cc");
        }
      }
    }

    *(v5 + 684) = 0;
    result = (*(**(v5 + 640) + 32))(*(v5 + 640));
    if (result == 1)
    {
      result = *(v5 + 648);
      if (result)
      {
        result = (*(*result + 16))(result, 0);
      }
    }

    if (*(a5 + 16) != *(a5 + 8))
    {
      if (*(v5 + 100))
      {
        (*(**(v5 + 640) + 56))(*(v5 + 640));
        if (!(*(**(v5 + 640) + 104))(*(v5 + 640)))
        {
          return webrtc::BlockProcessorMetrics::UpdateCapture(v5 + 664, 0);
        }

        v20 = 0;
LABEL_34:
        v35 = *(v5 + 656);
        v36 = (*(**(v5 + 640) + 80))(*(v5 + 640));
        (*(*v35 + 24))(v35, v9, v20, a3, v5 + 696, v36, a4, a5);
        return webrtc::BlockProcessorMetrics::UpdateCapture(v5 + 664, 0);
      }

      v22 = *(v5 + 648);
      v23 = (*(**(v5 + 640) + 88))(*(v5 + 640));
      v24 = (*(**(v5 + 640) + 64))(*(v5 + 640));
      (*(*v22 + 32))(v37, v22, v23, v24, a5);
      v25 = v37[1];
      *(v5 + 696) = v37[0];
      *(v5 + 712) = v25;
      v26 = v38;
      *(v5 + 728) = v38;
      if (v26 != 1 || (result = (*(**(v5 + 640) + 48))(*(v5 + 640), *(v5 + 704)), !result))
      {
LABEL_33:
        v20 = (*(**(v5 + 648) + 40))(*(v5 + 648));
        goto LABEL_34;
      }

      if (*(v5 + 101))
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      {
LABEL_32:
        v9 = v11 | 0x200000000;
        goto LABEL_33;
      }

      if (*(v5 + 728))
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/block_processor.cc");
        goto LABEL_32;
      }
    }

    goto LABEL_36;
  }

  v21 = *(**(result + 640) + 40);

  return v21();
}

void **webrtc::anonymous namespace::BlockProcessorImpl::BufferRender(void **result, uint64_t a2)
{
  if (*(a2 + 16) == *(a2 + 8))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = (*(*result[80] + 24))(result[80]);
    *(v2 + 171) = v3;
    ++*(v2 + 170);
    if (v3)
    {
      ++*(v2 + 169);
    }

    *(v2 + 625) = 1;
    result = v2[81];
    if (result)
    {
      v4 = (*result)[3];

      return v4();
    }
  }

  return result;
}

uint64_t webrtc::BlockProcessorMetrics::UpdateCapture(uint64_t this, int a2)
{
  v2 = *this + 1;
  *this = v2;
  if (a2)
  {
    ++*(this + 8);
  }

  if (v2 == 2500)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *this = 0;
    *(this + 4) = 1;
  }

  else
  {
    *(this + 4) = 0;
  }

  return this;
}

void webrtc::BoringSSLCertificate::Generate(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v87[23] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, *a2, *(a2 + 8));
  }

  else
  {
    v66 = *a2;
  }

  *v67 = *(a2 + 24);
  *&v67[12] = *(a2 + 36);
  size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v66.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = *a1;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  memset(buf, 0, sizeof(buf));
  v87[0] = 0;
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v45, v46, v47, v48, v65);
    webrtc::BoringSSLCertificate::FromPEMString(v62, v63, v64);
    return;
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  *&v66.__r_.__value_.__l.__data_ = *buf;
  v66.__r_.__value_.__r.__words[2] = v87[0];
  v8 = *a1;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
LABEL_8:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_certificate.cc");
  }

LABEL_9:
  v80 = 0;
  v81 = 0;
  v79 = 0;
  *buf = 0u;
  memset(v87, 0, 32);
  v16 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v16)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_70;
  }

  *v16 = 64;
  buf[8] = 0;
  *buf = 0;
  v87[0] = v16 + 1;
  *&v87[1] = xmmword_273B8F050;
  LOBYTE(v87[3]) = v87[3] & 0xFC | 1;
  {
LABEL_70:
    if (!buf[8] && (v87[3] & 1) != 0 && v87[0])
    {
      v50 = v87[0] - 8;
      v49 = *(v87[0] - 1);
      if (v49 != -8)
      {
        bzero(v50, v49 + 8);
      }

      free(v50);
    }

    goto LABEL_76;
  }

  v21 = v81;
  memset(&ctx, 0, sizeof(ctx));
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  if (!CBB_init(buf, v80))
  {
    goto LABEL_84;
  }

  if (!CBB_add_asn1(buf, v78, 536870928))
  {
    goto LABEL_84;
  }

  v23 = v80;
  v22 = v81;
  __dst = 0;
  if (!CBB_add_space(v78, &__dst, v80))
  {
    goto LABEL_84;
  }

  if (v23)
  {
    memcpy(__dst, v22, v23);
  }

  {
    goto LABEL_84;
  }

  if (!CBB_add_asn1(v78, &__dst, 3))
  {
    goto LABEL_84;
  }

  v85 = 0;
  if (!CBB_add_space(&__dst, &v85, 1))
  {
    goto LABEL_84;
  }

  *v85 = 0;
  v24 = EVP_sha256();
  if (!do_sigver_init(&ctx, 0, v24, 0, v8, 0) || !EVP_DigestSign(&ctx, 0, &v70, v81, v80) || !CBB_reserve(&__dst, &v71, v70))
  {
    goto LABEL_84;
  }

  v25 = 0;
  if (!EVP_DigestSign(&ctx, v71, &v70, v81, v80))
  {
    goto LABEL_85;
  }

  v26 = &v76;
  if (v74)
  {
    v26 = (v75 + 8);
  }

  v27 = *v26 + v70;
  v28 = __CFADD__(*v26, v70);
  if (__dst || v28)
  {
    goto LABEL_85;
  }

  v29 = v74 ? (v75 + 16) : &v77;
  if (v27 <= *v29 && (*v26 = v27, CBB_finish(buf, &v69, &v68)))
  {
    v30 = v69;
    v31 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if ((v31 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_certificate.cc");
    }

    v40 = v68;
    v39 = v69;
    BufferPool = webrtc::openssl::GetBufferPool(v31);
    v25 = crypto_buffer_new(v39, v40, 0, BufferPool);
    if (v30)
    {
      v43 = *(v30 - 1);
      v42 = (v30 - 1);
      v44 = v43 + 8;
      if (v43 != -8)
      {
        bzero(v42, v44);
      }

      free(v42);
    }
  }

  else
  {
LABEL_84:
    v25 = 0;
  }

LABEL_85:
  EVP_MD_CTX_cleanup(&ctx);
  if (v21)
  {
    v60 = *(v21 - 8);
    v59 = (v21 - 8);
    v61 = v60 + 8;
    if (v60 != -8)
    {
      bzero(v59, v61);
    }

    free(v59);
  }

  CBB_cleanup(buf);
  if (v25)
  {
    operator new();
  }

LABEL_76:
  v84[0] = "Generating certificate";
  v84[1] = 22;
  for (i = ERR_get_error(); i; i = ERR_get_error())
  {
    ERR_error_string_n(i, buf, 0xC8uLL);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | 0x78B;
      webrtc::webrtc_logging_impl::Log("\r\v\t\t\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_utility.cc");
    }
  }

  *a3 = 0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }
}

void webrtc::BoringSSLCertificate::FromPEMString(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (!webrtc::SSLIdentity::PemToDer("CERTIFICATE", 0xBuLL, a1, a2, &__p))
  {
    *a3 = 0;
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(__p);
    return;
  }

  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v11 >= 0)
  {
    v5 = HIBYTE(v11);
  }

  else
  {
    v5 = v10;
  }

  {
    v7 = v5;
    v8 = p_p;
    v5 = v7;
    p_p = v8;
    if (v6)
    {
      webrtc::openssl::GetBufferPool(void)::instance = CRYPTO_BUFFER_POOL_new();
      v5 = v7;
      p_p = v8;
    }
  }

  if (crypto_buffer_new(p_p, v5, 0, webrtc::openssl::GetBufferPool(void)::instance))
  {
    operator new();
  }

  *a3 = 0;
  if (SHIBYTE(v11) < 0)
  {
    goto LABEL_14;
  }
}

uint64_t webrtc::BoringSSLCertificate::GetSignatureDigestAlgorithm(uint64_t a1, uint64_t *a2)
{
  if (webrtc::openssl::ParseCertificate(*(a1 + 8), &v32, 0))
  {
    if (v33 <= 7)
    {
      if (v33 != 5)
      {
        if (v33 != 7)
        {
          goto LABEL_73;
        }

        if ((*v32 != -834107862 || *(v32 + 3) != 17055182) && (*v32 != -834107862 || *(v32 + 3) != 50608334))
        {
          goto LABEL_73;
        }

LABEL_67:
        if (*(a2 + 23) < 0)
        {
          a2[1] = 5;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 5;
        }

        strcpy(a2, "sha-1");
        return 1;
      }

      if (*v32 != 33754667 || *(v32 + 4) != 3)
      {
        if (*v32 == 33754667 && *(v32 + 4) == 27)
        {
          goto LABEL_67;
        }

        if (*v32 == 33754667 && *(v32 + 4) == 29)
        {
          goto LABEL_67;
        }

LABEL_73:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_certificate.cc");
        }

        result = 0;
        if (*(a2 + 23) < 0)
        {
          **a2 = 0;
          a2[1] = 0;
        }

        else
        {
          *a2 = 0;
          *(a2 + 23) = 0;
        }

        return result;
      }

LABEL_77:
      if (*(a2 + 23) < 0)
      {
        a2[1] = 3;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 3;
      }

      *a2 = webrtc::DIGEST_MD5;
      *(a2 + 2) = 53;
      *(a2 + 3) = 0;
      return 1;
    }

    if (v33 == 8)
    {
      if (*v32 != 0x103043DCE48862ALL)
      {
        if (*v32 != 0x203043DCE48862ALL)
        {
          if (*v32 != 0x303043DCE48862ALL)
          {
            if (*v32 != 0x403043DCE48862ALL)
            {
              goto LABEL_73;
            }

LABEL_96:
            if (*(a2 + 23) < 0)
            {
              a2[1] = 7;
              a2 = *a2;
            }

            else
            {
              *(a2 + 23) = 7;
            }

            v31 = "sha-512";
LABEL_91:
            *a2 = *v31;
            *(a2 + 3) = *(v31 + 3);
            *(a2 + 7) = 0;
            return 1;
          }

LABEL_92:
          if (*(a2 + 23) < 0)
          {
            a2[1] = 7;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 7;
          }

          v31 = "sha-384";
          goto LABEL_91;
        }

LABEL_84:
        if (*(a2 + 23) < 0)
        {
          a2[1] = 7;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        v31 = "sha-256";
        goto LABEL_91;
      }
    }

    else
    {
      if (v33 != 9)
      {
        goto LABEL_73;
      }

      if (*v32 == 0x1010DF78648862ALL && *(v32 + 8) == 4)
      {
        goto LABEL_77;
      }

      if (*v32 == 0x1010DF78648862ALL && *(v32 + 8) == 5)
      {
        goto LABEL_67;
      }

      if ((*v32 != 0x1010DF78648862ALL || *(v32 + 8) != 14) && (*v32 != 0x304036501488660 || *(v32 + 8) != 1))
      {
        if ((*v32 != 0x1010DF78648862ALL || *(v32 + 8) != 11) && (*v32 != 0x304036501488660 || *(v32 + 8) != 2))
        {
          if (*v32 != 0x1010DF78648862ALL || *(v32 + 8) != 12)
          {
            if (*v32 != 0x1010DF78648862ALL || *(v32 + 8) != 13)
            {
              goto LABEL_73;
            }

            goto LABEL_96;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }
    }

    if (*(a2 + 23) < 0)
    {
      a2[1] = 7;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 7;
    }

    v31 = "sha-224";
    goto LABEL_91;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_certificate.cc");
  }

  return 0;
}

uint64_t webrtc::BoringSSLCertificate::ComputeDigest(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  type = 0;
  size = 0;
  result = webrtc::OpenSSLDigest::GetDigestEVP(a2, a3, &type);
  if (result)
  {
    if (*(a4 + 8) >= type->pkey_type)
    {
      result = EVP_Digest(*(*(a1 + 8) + 8), *(*(a1 + 8) + 16), *(a4 + 16), &size, type, 0);
      if (result)
      {
        if (*(a4 + 8) < size)
        {
          operator new[]();
        }

        *a4 = size;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void webrtc::BoringSSLCertificate::~BoringSSLCertificate(webrtc::BoringSSLCertificate *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    CRYPTO_BUFFER_free(v1);
  }
}

{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    CRYPTO_BUFFER_free(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BoringSSLCertificate::Clone(webrtc::BoringSSLCertificate *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = atomic_load((v1 + 24));
    if (v2 != -1)
    {
      for (i = v2; i != -1; v2 = i)
      {
        atomic_compare_exchange_strong((v1 + 24), &i, v2 + 1);
        if (i == v2)
        {
          break;
        }
      }
    }
  }

  operator new();
}

void *webrtc::BoringSSLCertificate::ToDER(void *result, uint64_t a2)
{
  v2 = result[1];
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  *a2 = 0;
  if (v3)
  {
    if (*(a2 + 8) < v3)
    {
      operator new[]();
    }

    result = memcpy(*(a2 + 16), v4, v3);
    *a2 = v3;
  }

  return result;
}

uint64_t webrtc::BoringSSLCertificate::CertificateExpirationTime(webrtc::BoringSSLCertificate *this)
{
  v9 = 0;
  if (webrtc::openssl::ParseCertificate(*(this + 1), 0, &v9))
  {
    return v9;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_certificate.cc");
  }

  return -1;
}

uint64_t webrtc::anonymous namespace::AddSHA256SignatureAlgorithm(uint64_t *a1, int a2)
{
  result = CBB_add_asn1(a1, v8, 536870928);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1(v8, v7, 6);
  if (!result)
  {
    return result;
  }

  if (a2 == 1)
  {
    v6[0] = 0;
    result = CBB_add_space(v7, v6, 8);
    if (!result)
    {
      return result;
    }

    *v6[0] = 0x203043DCE48862ALL;
    return CBB_flush(a1) != 0;
  }

  if (a2)
  {
    return 0;
  }

  v6[0] = 0;
  result = CBB_add_space(v7, v6, 9);
  if (result)
  {
    v5 = v6[0];
    *(v6[0] + 8) = 11;
    *v5 = 0x1010DF78648862ALL;
    result = CBB_add_asn1(v8, v6, 5);
    if (result)
    {
      return CBB_flush(a1) != 0;
    }
  }

  return result;
}

uint64_t webrtc::anonymous namespace::AddCommonName(uint64_t *a1, const void *a2, size_t a3)
{
  if (a3)
  {
    result = CBB_add_asn1(a1, v19, 536870928);
    if (result)
    {
      result = CBB_add_asn1(v19, v18, 536870929);
      if (result)
      {
        result = CBB_add_asn1(v18, v17, 536870928);
        if (result)
        {
          result = CBB_add_asn1(v17, v16, 6);
          if (result)
          {
            v15[0] = 0;
            result = CBB_add_space(v16, v15, 3);
            if (result)
            {
              v7 = v15[0];
              *(v15[0] + 2) = 3;
              *v7 = 1109;
              result = CBB_add_asn1(v17, v15, 12);
              if (result)
              {
                v20 = 0;
                result = CBB_add_space(v15, &v20, a3);
                if (result)
                {
                  memcpy(v20, a2, a3);
                  return CBB_flush(a1) != 0;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_certificate.cc");
    }

    return 0;
  }

  return result;
}

BOOL webrtc::anonymous namespace::AddTime(uint64_t *a1, uint64_t a2)
{
  v20[0] = 0;
  v4 = ASN1_item_ex_new(v20, &ASN1_TIME_it);
  v5 = v20[0];
  if (v4)
  {
    v6 = v20[0] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  if (OPENSSL_posix_to_tm(a2, v20))
  {
    if ((v21 - 150) >= 0xFFFFFF9C)
    {
      if (!ASN1_UTCTIME_adj(v5, a2, 0, 0))
      {
        goto LABEL_21;
      }
    }

    else if (!ASN1_GENERALIZEDTIME_adj(v5, a2, 0, 0))
    {
      goto LABEL_21;
    }

    type = v5->type;
    if ((type - 23) <= 1)
    {
      if (CBB_add_asn1(a1, v20, type))
      {
        data = v5->data;
        length = v5->length;
        v22 = 0;
        if (CBB_add_space(v20, &v22, length))
        {
          if (length)
          {
            memcpy(v22, data, length);
          }

          v9 = CBB_flush(a1) != 0;
          v10 = v5->data;
          if (!v10)
          {
            goto LABEL_25;
          }

          goto LABEL_22;
        }
      }
    }

LABEL_21:
    v9 = 0;
    v10 = v5->data;
    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  ERR_put_error(12, 0, 113, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_time.cc", 53);
  v9 = 0;
  v10 = v5->data;
  if (v10)
  {
LABEL_22:
    v15 = *(v10 - 1);
    v14 = v10 - 8;
    v16 = v15 + 8;
    if (v15 != -8)
    {
      bzero(v14, v16);
    }

    free(v14);
  }

LABEL_25:
  flags = v5[-1].flags;
  p_flags = &v5[-1].flags;
  v19 = flags + 8;
  if (flags != -8)
  {
    bzero(p_flags, v19);
  }

  free(p_flags);
  return v9;
}

void webrtc::BoringSSLIdentity::BoringSSLIdentity(void *a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = &unk_2882900A0;
  a1[1] = v3;
  a1[2] = 0;
  *a3 = 0;
  operator new();
}

void webrtc::BoringSSLIdentity::~BoringSSLIdentity(webrtc::BoringSSLIdentity *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            (*(*v6 + 8))(v6);
          }
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x20C40960023A9);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = atomic_load(v9);
      if (v10 != -1)
      {
        while (1)
        {
          if (!v10)
          {
            abort();
          }

          v11 = v10;
          atomic_compare_exchange_strong(v9, &v11, v10 - 1);
          if (v11 == v10)
          {
            break;
          }

          v10 = v11;
          if (v11 == -1)
          {
            goto LABEL_25;
          }
        }

        if (v10 == 1)
        {
          v12 = *(v9 + 16);
          v13 = v8;
          if (v12)
          {
            v14 = *(v12 + 160);
            if (v14)
            {
              v14(v9);
              *(v9 + 8) = 0;
              *(v9 + 4) = 0;
            }
          }

          v16 = *(v9 - 8);
          v15 = (v9 - 8);
          v17 = v16 + 8;
          if (v16 != -8)
          {
            bzero(v15, v17);
          }

          free(v15);
          v8 = v13;
        }
      }
    }

LABEL_25:
    MEMORY[0x2743DA540](v8, 0x20C4093837F09);
  }
}

{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            (*(*v6 + 8))(v6);
          }
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x20C40960023A9);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = atomic_load(v9);
      if (v10 != -1)
      {
        while (1)
        {
          if (!v10)
          {
            abort();
          }

          v11 = v10;
          atomic_compare_exchange_strong(v9, &v11, v10 - 1);
          if (v11 == v10)
          {
            break;
          }

          v10 = v11;
          if (v11 == -1)
          {
            goto LABEL_25;
          }
        }

        if (v10 == 1)
        {
          v12 = *(v9 + 16);
          v13 = v8;
          if (v12)
          {
            v14 = *(v12 + 160);
            if (v14)
            {
              v14(v9);
              *(v9 + 8) = 0;
              *(v9 + 4) = 0;
            }
          }

          v16 = *(v9 - 8);
          v15 = (v9 - 8);
          v17 = v16 + 8;
          if (v16 != -8)
          {
            bzero(v15, v17);
          }

          free(v15);
          v8 = v13;
        }
      }
    }

LABEL_25:
    MEMORY[0x2743DA540](v8, 0x20C4093837F09);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BoringSSLIdentity::CreateInternal(uint64_t a1@<X0>, void *a2@<X8>)
{
  webrtc::OpenSSLKeyPair::Generate((a1 + 40), &v21);
  v4 = v21;
  if (v21)
  {
    webrtc::BoringSSLCertificate::Generate(v21, a1, &v20);
    if (v20)
    {
      operator new();
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_identity.cc");
  }

  *a2 = 0;
  v21 = 0;
  if (v4)
  {
    v12 = *v4;
    if (*v4)
    {
      v13 = atomic_load(v12);
      if (v13 != -1)
      {
        while (1)
        {
          if (!v13)
          {
            abort();
          }

          v14 = v13;
          atomic_compare_exchange_strong(v12, &v14, v13 - 1);
          if (v14 == v13)
          {
            break;
          }

          v13 = v14;
          if (v14 == -1)
          {
            goto LABEL_20;
          }
        }

        if (v13 == 1)
        {
          v15 = *(v12 + 16);
          if (v15)
          {
            v16 = *(v15 + 160);
            if (v16)
            {
              v16(v12);
              *(v12 + 8) = 0;
              *(v12 + 4) = 0;
            }
          }

          v18 = *(v12 - 8);
          v17 = (v12 - 8);
          v19 = v18 + 8;
          if (v18 != -8)
          {
            bzero(v17, v19);
          }

          free(v17);
        }
      }
    }

LABEL_20:
    MEMORY[0x2743DA540](v4, 0x20C4093837F09);
  }
}

void webrtc::BoringSSLIdentity::CreateWithExpiration(__int128 *__src@<X0>, size_t __len@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_16:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v10) = __len;
  v7 = (&v9 + __len);
  if (&v9 <= __src && v7 > __src)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (__len)
  {
    memmove(&v9, __src, __len);
  }

  *v7 = 0;
  *__p = v9;
  v12 = v10;
  v8 = time(0);
  v13 = v8 - 86400;
  v14 = v8 + a4;
  if (a4 >= -86400)
  {
    webrtc::BoringSSLIdentity::CreateInternal(__p, a5);
    if (SHIBYTE(v12) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }
  }

  else
  {
    *a5 = 0;
    if (SHIBYTE(v12) < 0)
    {
      goto LABEL_14;
    }
  }
}

void webrtc::BoringSSLIdentity::CreateFromPEMStrings(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  webrtc::BoringSSLCertificate::FromPEMString(a3, a4, &v24);
  if (v24)
  {
    webrtc::OpenSSLKeyPair::FromPrivateKeyPEMString(a1, a2, &v23);
    if (v23)
    {
      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_identity.cc");
    }

    *a5 = 0;
    if (v24)
    {
      v22 = *(v24 + 8);
      *(v24 + 8) = 0;
      if (v22)
      {
        CRYPTO_BUFFER_free(v22);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/boringssl_identity.cc");
    }

    *a5 = 0;
  }
}

uint64_t webrtc::BoringSSLIdentity::certificate(uint64_t this)
{
  v1 = **(this + 16);
  if (*(*(this + 16) + 8) != v1)
  {
    return *v1;
  }

  __break(1u);
  return this;
}

void webrtc::BoringSSLIdentity::ConfigureIdentity(webrtc::BoringSSLIdentity *this, ssl_ctx_st *a2)
{
  if (*(*(this + 2) + 8) != **(this + 2))
  {
    operator new();
  }

  __break(1u);
  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::BroadcastResourceListener::~BroadcastResourceListener(webrtc::BroadcastResourceListener *this)
{
  *this = &unk_2882900E8;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  pthread_mutex_destroy((this + 16));
  v7 = *(this + 1);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

{
  *this = &unk_2882900E8;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  pthread_mutex_destroy((this + 16));
  v7 = *(this + 1);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BroadcastResourceListener::CreateAdapterResource(webrtc::BroadcastResourceListener *this)
{
  v10 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 16));
  (*(**(this + 1) + 32))(&v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = 22;
  }

  else
  {
    v2 = (v8.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  if (v2 - size >= 7)
  {
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v8;
    }

    else
    {
      v4 = v8.__r_.__value_.__r.__words[0];
    }

    v5 = (v4 + size);
    if (v4 + size <= "Adapter" && v4->__r_.__value_.__r.__words + size + 7 > "Adapter")
    {
      __break(1u);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(v5 + 3) = 1919251568;
    *v5 = 1885430849;
    v7 = size + 7;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      v8.__r_.__value_.__l.__size_ = size + 7;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = v7 & 0x7F;
    }

    v4->__r_.__value_.__s.__data_[v7] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v8, v2, size - v2 + 7, size, size, 0, 7uLL, "Adapter");
  }

  __p = v8;
  memset(&v8, 0, sizeof(v8));
  operator new();
}

uint64_t webrtc::BroadcastResourceListener::RemoveAdapterResource(uint64_t a1, void *a2)
{
  result = pthread_mutex_lock((a1 + 16));
  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v6 != v5)
  {
    while (*v6 != *a2)
    {
      if (++v6 == v5)
      {
        v6 = *(a1 + 96);
        break;
      }
    }
  }

  if (v5 == v6)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 + 1;
    if (v6 + 1 != v5)
    {
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *v7;
        *v7 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = *(a1 + 96);
      v6 = v7 - 1;
    }

    while (v5 != v6)
    {
      v10 = *--v5;
      v9 = v10;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    *(a1 + 96) = v6;

    return pthread_mutex_unlock((a1 + 16));
  }

  return result;
}

uint64_t webrtc::BroadcastResourceListener::OnResourceUsageStateMeasured(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 16));
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  while (v5 != v6)
  {
    v7 = *v5;
    pthread_mutex_lock((*v5 + 32));
    v8 = *(v7 + 96);
    if (v8)
    {
      v10 = v7;
      (**v7)(v7);
      (*(*v8 + 16))(v8, &v10, a3);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    pthread_mutex_unlock((v7 + 32));
    ++v5;
  }

  return pthread_mutex_unlock((a1 + 16));
}

BOOL webrtc::RefCountedObject<webrtc::BroadcastResourceListener::AdapterResource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 26, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::BroadcastResourceListener::AdapterResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288290158;
  pthread_mutex_destroy((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::BroadcastResourceListener::AdapterResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288290158;
  pthread_mutex_destroy((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BroadcastResourceListener::AdapterResource::Name(webrtc::BroadcastResourceListener::AdapterResource *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

uint64_t webrtc::BroadcastResourceListener::AdapterResource::SetResourceListener(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 32));
  *(a1 + 96) = a2;

  return pthread_mutex_unlock((a1 + 32));
}

double webrtc::BufferLevelFilter::Reset(webrtc::BufferLevelFilter *this)
{
  *&result = 253;
  *(this + 1) = 253;
  return result;
}

uint64_t webrtc::BufferLevelFilter::Update(uint64_t this, uint64_t a2, int a3)
{
  v3 = (256 - *(this + 8)) * a2 - (a3 << 8) + ((*(this + 12) * *(this + 8)) >> 8);
  v4 = v3 & ~(v3 >> 63);
  if (v4 >= 0x7FFFFFFF)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  *(this + 12) = v4;
  return this;
}

webrtc::webrtc_checks_impl *webrtc::BufferLevelFilter::SetFilteredBufferLevel(webrtc::webrtc_checks_impl *this, int a2)
{
  v2 = (a2 < -8388608) | (2 * (a2 >= 0x800000));
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
    }

    *(this + 3) = 0x7FFFFFFF;
  }

  else
  {
    if (v2)
    {
      v3 = 0x80000000;
    }

    else
    {
      v3 = a2 << 8;
    }

    *(this + 3) = v3;
  }

  return this;
}

uint64_t webrtc::BufferLevelFilter::SetTargetBufferLevel(uint64_t this, int a2)
{
  if (a2 > 20)
  {
    if (a2 > 0x3C)
    {
      if (a2 > 0x8C)
      {
        *(this + 8) = 254;
      }

      else
      {
        *(this + 8) = 253;
      }
    }

    else
    {
      *(this + 8) = 252;
    }
  }

  else
  {
    *(this + 8) = 251;
  }

  return this;
}

void webrtc::BufferQueue::~BufferQueue(webrtc::BufferQueue *this)
{
  v2 = *(this + 3);
  if (*(this + 4) != v2)
  {
    v3 = *(this + 6);
    v4 = (v2 + 8 * (v3 >> 9));
    v5 = *v4;
    v6 = &(*v4)[8 * (v3 & 0x1FF)];
    v7 = *(v2 + (((*(this + 7) + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 7) + v3) & 0x1FF);
    while (v6 != v7)
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = *(v8 + 16);
        *(v8 + 16) = 0;
        if (v9)
        {
          MEMORY[0x2743DA520](v9, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v8, 0x1010C40A79CA2DELL);
        v5 = *v4;
      }

      if (++v6 - v5 == 4096)
      {
        v10 = v4[1];
        ++v4;
        v5 = v10;
        v6 = v10;
      }
    }
  }

  v11 = *(this + 8);
  v12 = *(this + 9);
  if (v11 == v12)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  do
  {
    v21 = *v11;
    if (*v11)
    {
      v22 = *(v21 + 16);
      *(v21 + 16) = 0;
      if (v22)
      {
        MEMORY[0x2743DA520](v22, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v21, 0x1010C40A79CA2DELL);
    }

    ++v11;
  }

  while (v11 != v12);
  v11 = *(this + 8);
  if (v11)
  {
LABEL_12:
    *(this + 9) = v11;
    operator delete(v11);
  }

LABEL_13:
  v13 = *(this + 3);
  v14 = *(this + 4);
  if (v14 == v13)
  {
    v15 = (this + 56);
  }

  else
  {
    v15 = (this + 56);
    v16 = *(this + 6);
    v17 = &v13[v16 >> 9];
    v18 = *v17;
    v19 = *v17 + 8 * (v16 & 0x1FF);
    while (v19 != *(v13 + (((*(this + 7) + v16) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 7) + v16) & 0x1FF))
    {
      if (!v19)
      {
        __break(1u);
        return;
      }

      v19 += 8;
      if (v19 - v18 == 4096)
      {
        v20 = v17[1];
        ++v17;
        v18 = v20;
        v19 = v20;
      }
    }
  }

  *v15 = 0;
  v23 = v14 - v13;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v13);
      v14 = *(this + 4);
      v13 = (*(this + 3) + 8);
      *(this + 3) = v13;
      v23 = v14 - v13;
    }

    while (v23 > 2);
  }

  if (v23 == 1)
  {
    v24 = 256;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_34;
    }

    v24 = 512;
  }

  *(this + 6) = v24;
LABEL_34:
  if (v13 != v14)
  {
    do
    {
      v25 = *v13++;
      operator delete(v25);
    }

    while (v13 != v14);
    v27 = *(this + 3);
    v26 = *(this + 4);
    if (v26 != v27)
    {
      *(this + 4) = v26 + ((v27 - v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v28 = *(this + 2);
  if (v28)
  {
    operator delete(v28);
  }
}

void *std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 3) + 1;
    if (v5 >> 61)
    {
      goto LABEL_13;
    }

    v6 = v2 - *result;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5)
    {
      v7 = (v4 >> 3) + 1;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

BOOL webrtc::BufferQueue::WriteBack(webrtc::BufferQueue *this, const void *a2, size_t __n, unint64_t *a4)
{
  v4 = *(this + 7);
  v5 = *this;
  if (v4 != *this)
  {
    v9 = *(this + 9);
    if (*(this + 8) == v9)
    {
      operator new();
    }

    v10 = *(v9 - 8);
    *(this + 9) = v9 - 8;
    *v10 = 0;
    if (__n)
    {
      if (*(v10 + 8) < __n)
      {
        operator new[]();
      }

      memcpy(*(v10 + 16), a2, __n);
      *v10 = __n;
    }

    if (a4)
    {
      *a4 = __n;
    }

    v11 = *(this + 3);
    v12 = *(this + 4);
    if (v12 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = ((v12 - v11) << 6) - 1;
    }

    v15 = *(this + 6);
    v14 = *(this + 7);
    if (v13 == v14 + v15)
    {
      if (v15 < 0x200)
      {
        v16 = *(this + 5);
        v17 = *(this + 2);
        if (v12 - v11 < (v16 - v17))
        {
          operator new();
        }

        if (v16 == v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v16 - v17) >> 2;
        }

        if (!(v18 >> 61))
        {
          operator new();
        }

        goto LABEL_29;
      }

      *(this + 6) = v15 - 512;
      v22 = *v11;
      *(this + 3) = v11 + 8;
      std::__split_buffer<webrtc::BufferT<unsigned char,false> **,std::allocator<webrtc::BufferT<unsigned char,false> **>>::emplace_back<webrtc::BufferT<unsigned char,false> **&>(this + 2, &v22);
      v14 = *(this + 7);
      v11 = *(this + 3);
      v12 = *(this + 4);
    }

    if (v12 != v11)
    {
      v19 = *(this + 6) + v14;
      v20 = *&v11[(v19 >> 6) & 0x3FFFFFFFFFFFFF8];
      if (v20)
      {
        *(v20 + 8 * (v19 & 0x1FF)) = v10;
        *(this + 7) = v14 + 1;
        return v4 != v5;
      }
    }

    __break(1u);
LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return v4 != v5;
}

void *std::__split_buffer<webrtc::BufferT<unsigned char,false> **,std::allocator<webrtc::BufferT<unsigned char,false> **>>::emplace_back<webrtc::BufferT<unsigned char,false> **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

LABEL_13:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void webrtc::BufferedFrameDecryptor::~BufferedFrameDecryptor(webrtc::BufferedFrameDecryptor *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v3 == v2)
  {
    v3 = *(this + 5);
    *(this + 9) = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v4 = *(this + 8);
  v5 = &v2[v4 >> 9];
  v6 = *v5;
  v7 = (*v5 + 8 * (v4 & 0x1FF));
  v8 = *(v2 + (((*(this + 9) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 9) + v4) & 0x1FF);
  if (v7 == v8)
  {
LABEL_11:
    *(this + 9) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 6);
        v2 = (*(this + 5) + 8);
        *(this + 5) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }

LABEL_13:
    if (v11 == 1)
    {
      v12 = 256;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_19;
      }

      v12 = 512;
    }

    *(this + 8) = v12;
LABEL_19:
    if (v2 != v3)
    {
      do
      {
        v13 = *v2++;
        operator delete(v13);
      }

      while (v2 != v3);
      v15 = *(this + 5);
      v14 = *(this + 6);
      if (v14 != v15)
      {
        *(this + 6) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v16 = *(this + 4);
    if (v16)
    {
      operator delete(v16);
    }

    v17 = *(this + 1);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    return;
  }

  while (v7)
  {
    v9 = *v7;
    *v7 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v6 = *v5;
    }

    if (++v7 - v6 == 4096)
    {
      v10 = v5[1];
      ++v5;
      v6 = v10;
      v7 = v10;
    }

    if (v7 == v8)
    {
      v2 = *(this + 5);
      v3 = *(this + 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void webrtc::BufferedFrameDecryptor::ManageEncryptedFrame(uint64_t a1, webrtc::RtpFrameObject **a2)
{
  v4 = webrtc::BufferedFrameDecryptor::DecryptFrame(a1, *a2);
  if (v4 != 1)
  {
    if (v4)
    {
      return;
    }

    v5 = *(a1 + 72);
    if (v5 <= 0x17)
    {
      v17 = *(a1 + 64);
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/buffered_frame_decryptor.cc");
      }

      v13 = *(a1 + 72);
      if (!v13)
      {
        goto LABEL_65;
      }

      v14 = *(a1 + 64);
      v15 = *(*(a1 + 40) + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8));
      if (!v15)
      {
        goto LABEL_65;
      }

      v16 = *(v15 + 8 * (*(a1 + 64) & 0x1FFLL));
      *(v15 + 8 * (*(a1 + 64) & 0x1FFLL)) = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v14 = *(a1 + 64);
        v13 = *(a1 + 72);
      }

      v5 = v13 - 1;
      v17 = v14 + 1;
      *(a1 + 64) = v17;
      *(a1 + 72) = v5;
      if (v17 >= 0x400)
      {
        operator delete(**(a1 + 40));
        *(a1 + 40) += 8;
        v5 = *(a1 + 72);
        v17 = *(a1 + 64) - 512;
        *(a1 + 64) = v17;
      }
    }

    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v37 = ((v36 - v35) << 6) - 1;
    if (v36 == v35)
    {
      v37 = 0;
    }

    if (v37 == v17 + v5)
    {
      if (v17 < 0x200)
      {
        v51 = *(a1 + 56);
        v52 = *(a1 + 32);
        if (v36 - v35 < (v51 - v52))
        {
          if (v51 != v36)
          {
            operator new();
          }

          operator new();
        }

        if (v51 == v52)
        {
          v54 = 1;
        }

        else
        {
          v54 = (v51 - v52) >> 2;
        }

        if (!(v54 >> 61))
        {
          operator new();
        }

LABEL_66:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      *(a1 + 64) = v17 - 512;
      v59 = *v35;
      *(a1 + 40) = v35 + 8;
      std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((a1 + 32), &v59);
      v5 = *(a1 + 72);
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
    }

    if (v36 != v35)
    {
      v55 = *(a1 + 64) + v5;
      v56 = *&v35[(v55 >> 6) & 0x3FFFFFFFFFFFFF8];
      if (v56)
      {
        v57 = *a2;
        *a2 = 0;
        *(v56 + 8 * (v55 & 0x1FF)) = v57;
        *(a1 + 72) = v5 + 1;
        return;
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 72) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/buffered_frame_decryptor.cc");
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  if (v26 == v25)
  {
    v26 = *(a1 + 40);
    goto LABEL_41;
  }

  v27 = *(a1 + 64);
  v28 = &v25[v27 >> 9];
  v29 = (*v28 + 8 * (v27 & 0x1FF));
  v30 = *(v25 + (((*(a1 + 72) + v27) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 72) + v27) & 0x1FF);
  if (v29 == v30)
  {
    if (v26 == v25)
    {
      goto LABEL_41;
    }
  }

  else
  {
    do
    {
      if (webrtc::BufferedFrameDecryptor::DecryptFrame(a1, *v29) == 1)
      {
        v31 = *(a1 + 16);
        v32 = *v29;
        *v29 = 0;
        v59 = v32;
        (*(*v31 + 16))(v31, &v59);
        v33 = v59;
        v59 = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }
      }

      if (++v29 - *v28 == 4096)
      {
        v34 = v28[1];
        ++v28;
        v29 = v34;
      }
    }

    while (v29 != v30);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    if (v26 == v25)
    {
LABEL_41:
      *(a1 + 72) = 0;
      v45 = v26 - v25;
      if (v45 < 3)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  v38 = *(a1 + 64);
  v39 = &v25[v38 >> 9];
  v40 = *v39;
  v41 = (*v39 + 8 * (v38 & 0x1FF));
  v42 = *(v25 + (((*(a1 + 72) + v38) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 72) + v38) & 0x1FF);
  if (v41 == v42)
  {
    goto LABEL_41;
  }

  do
  {
    if (!v41)
    {
      goto LABEL_65;
    }

    v43 = *v41;
    *v41 = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
      v40 = *v39;
    }

    if (++v41 - v40 == 4096)
    {
      v44 = v39[1];
      ++v39;
      v40 = v44;
      v41 = v44;
    }
  }

  while (v41 != v42);
  v25 = *(a1 + 40);
  v53 = *(a1 + 48);
  *(a1 + 72) = 0;
  v45 = (v53 - v25) >> 3;
  if (v45 >= 3)
  {
    do
    {
LABEL_42:
      operator delete(*v25);
      v46 = *(a1 + 48);
      v25 = (*(a1 + 40) + 8);
      *(a1 + 40) = v25;
      v45 = (v46 - v25) >> 3;
    }

    while (v45 > 2);
  }

LABEL_43:
  if (v45 == 1)
  {
    v47 = 256;
  }

  else
  {
    if (v45 != 2)
    {
      goto LABEL_48;
    }

    v47 = 512;
  }

  *(a1 + 64) = v47;
LABEL_48:
  v48 = *(a1 + 16);
  v49 = *a2;
  *a2 = 0;
  v58 = v49;
  (*(*v48 + 16))(v48, &v58);
  v50 = v58;
  v58 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }
}

const void **webrtc::BufferedFrameDecryptor::DecryptFrame(webrtc::BufferedFrameDecryptor *this, webrtc::RtpFrameObject *a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/buffered_frame_decryptor.cc");
    }

    return 0;
  }

  v6 = (*(*v4 + 40))(v4, 1, *(a2 + 19));
  v11 = v6;
  if (v6 > *(a2 + 19))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/buffered_frame_decryptor.cc", 78, "max_plaintext_byte_size <= frame->size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v7, v8, v9, v10, v6);
  }

  else
  {
    (*(**(a2 + 313) + 40))(*(a2 + 313));
    if (*this == 1)
    {
      webrtc::RtpDescriptorAuthentication(a2 + 314, &__p);
      v13 = __p;
      v12 = v37;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v22 = *(this + 1);
    __p = 0;
    v37 = 0;
    v38 = 0;
    v23 = v12 - v13;
    if (v12 == v13)
    {
      v24 = 0;
    }

    else
    {
      v24 = v13;
    }

    v25 = *(a2 + 18);
    if (v25)
    {
      v25 = (*(*v25 + 40))(v25);
    }

    if (*(a2 + 19))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v31 = (*(*v22 + 32))(v22, 1, &__p, v24, v23, v26);
    v2 = v32;
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (*(this + 1) != v31)
    {
      *(this + 1) = v31;
      (*(**(this + 3) + 16))(*(this + 3), v31);
    }

    if (v31)
    {
      if (*(this + 1))
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }

LABEL_28:
      if (v13)
      {
        operator delete(v13);
      }

      return v21;
    }

    if (v2 <= v11)
    {
      *(a2 + 19) = v2;
      v21 = 1;
      if ((*(this + 1) & 1) == 0)
      {
        *(this + 1) = 1;
      }

      goto LABEL_28;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/buffered_frame_decryptor.cc", 105, "decrypt_result.bytes_written <= max_plaintext_byte_size", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v27, v28, v29, v30, v2);
  return std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>(v34, v35);
}

const void **std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

BOOL webrtc::RefCountedObject<webrtc::audio_decoder_factory_template_impl::AudioDecoderFactoryT<webrtc::AudioDecoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderMultiChannelOpus>,webrtc::AudioDecoderG722,webrtc::AudioDecoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderL16>>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 2, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::audio_decoder_factory_template_impl::AudioDecoderFactoryT<webrtc::AudioDecoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderMultiChannelOpus>,webrtc::AudioDecoderG722,webrtc::AudioDecoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderL16>>::GetSupportedDecoders(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  webrtc::AudioDecoderOpus::AppendSupportedDecoders(a1);
  webrtc::AudioDecoderG722::AppendSupportedDecoders(a1);

  webrtc::AudioDecoderG711::AppendSupportedDecoders(a1);
}

uint64_t webrtc::audio_decoder_factory_template_impl::AudioDecoderFactoryT<webrtc::AudioDecoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderMultiChannelOpus>,webrtc::AudioDecoderG722,webrtc::AudioDecoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderL16>>::IsSupportedDecoder(uint64_t a1, uint64_t a2)
{
  webrtc::AudioDecoderOpus::SdpToConfig(a2);
  if ((v3 & 0x100000000) != 0)
  {
    return 1;
  }

  webrtc::AudioDecoderMultiChannelOpusImpl::SdpToConfig(a2, &v21);
  if (v24)
  {
    goto LABEL_34;
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4 == 4)
  {
    v6 = *v5;
    if (v6 == 71)
    {
      goto LABEL_13;
    }

    if ((v6 - 65) < 0x1A)
    {
      LOBYTE(v6) = v6 + 32;
    }

    if (v6 == 103)
    {
LABEL_13:
      v7 = v5[1];
      if (v7 == 55)
      {
        goto LABEL_20;
      }

      if ((v7 - 65) < 0x1A)
      {
        LOBYTE(v7) = v7 + 32;
      }

      if (v7 == 55)
      {
LABEL_20:
        v8 = v5[2];
        if (v8 == 50)
        {
          goto LABEL_21;
        }

        if ((v8 - 65) < 0x1A)
        {
          LOBYTE(v8) = v8 + 32;
        }

        if (v8 == 50)
        {
LABEL_21:
          v9 = v5[3];
          if (v9 == 50)
          {
            if (*(a2 + 24) != 8000)
            {
              goto LABEL_33;
            }

LABEL_32:
            if ((*(a2 + 32) - 3) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

          if ((v9 - 65) < 0x1A)
          {
            LOBYTE(v9) = v9 + 32;
          }

          if (v9 == 50 && *(a2 + 24) == 8000)
          {
            goto LABEL_32;
          }
        }
      }
    }
  }

LABEL_33:
  webrtc::AudioDecoderG711::SdpToConfig(a2);
  if ((v12 & 1) == 0)
  {
    webrtc::AudioDecoderL16::SdpToConfig(a2, v12, v13, v14, v15, v16, v17, v18);
    v19 = v20;
    if (v24 != 1)
    {
      return v19 & 1;
    }

    goto LABEL_37;
  }

LABEL_34:
  v19 = 1;
  if (v24 != 1)
  {
    return v19 & 1;
  }

LABEL_37:
  if (!__p)
  {
    return v19 & 1;
  }

  v23 = __p;
  operator delete(__p);
  return v19 & 1;
}

void webrtc::audio_decoder_factory_template_impl::AudioDecoderFactoryT<webrtc::AudioDecoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderMultiChannelOpus>,webrtc::AudioDecoderG722,webrtc::AudioDecoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioDecoderL16>>::Create(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = webrtc::AudioDecoderOpus::SdpToConfig(a2);
  if ((v7 & 0x100000000) == 0)
  {
    webrtc::AudioDecoderMultiChannelOpusImpl::SdpToConfig(a2, &v29);
    if (v33 == 1)
    {
      v39[1] = v29;
      v40 = v30;
      if (v32 != v31)
      {
        if (((v32 - v31) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v34 = v29;
      v35 = v30;
      v37 = 0;
      v38 = 0;
      __p = 0;
      webrtc::AudioDecoderMultiChannelOpusImpl::MakeAudioDecoder(&v34, v39);
      *a3 = v39[0];
      v39[0] = 0;
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      goto LABEL_58;
    }

    v8 = *(a2 + 23);
    if ((v8 & 0x80u) == 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (v8 == 4)
    {
      v10 = *v9;
      if (v10 == 71)
      {
        goto LABEL_19;
      }

      if ((v10 - 65) < 0x1A)
      {
        LOBYTE(v10) = v10 + 32;
      }

      if (v10 == 103)
      {
LABEL_19:
        v11 = v9[1];
        if (v11 == 55)
        {
          goto LABEL_26;
        }

        if ((v11 - 65) < 0x1A)
        {
          LOBYTE(v11) = v11 + 32;
        }

        if (v11 == 55)
        {
LABEL_26:
          v12 = v9[2];
          if (v12 == 50)
          {
            goto LABEL_27;
          }

          if ((v12 - 65) < 0x1A)
          {
            LOBYTE(v12) = v12 + 32;
          }

          if (v12 == 50)
          {
LABEL_27:
            v13 = v9[3];
            if (v13 == 50)
            {
              if (*(a2 + 24) != 8000)
              {
                goto LABEL_43;
              }
            }

            else
            {
              if ((v13 - 65) < 0x1A)
              {
                LOBYTE(v13) = v13 + 32;
              }

              if (v13 != 50 || *(a2 + 24) != 8000)
              {
                goto LABEL_43;
              }
            }

            v15 = *(a2 + 32);
            v16 = v15 - 1;
            v17 = v15 | 0x100000000;
            if (v16 >= 2)
            {
              v17 = 0;
            }

            if ((v17 & 0x100000000) != 0)
            {
              webrtc::AudioDecoderG722::MakeAudioDecoder(v17, a3);
              goto LABEL_58;
            }
          }
        }
      }
    }

LABEL_43:
    v18 = webrtc::AudioDecoderG711::SdpToConfig(a2);
    if (v19)
    {
      if (v18 <= 1 && (HIDWORD(v18) - 1) <= 0x17)
      {
        operator new();
      }

      goto LABEL_57;
    }

    v26 = webrtc::AudioDecoderL16::SdpToConfig(a2, v19, v20, v21, v22, v23, v24, v25);
    if ((v27 & 1) == 0)
    {
LABEL_57:
      *a3 = 0;
      goto LABEL_58;
    }

    if (v26 > 31999)
    {
      if (v26 != 48000)
      {
        v28 = 32000;
LABEL_53:
        if (v26 != v28)
        {
          *a3 = 0;
LABEL_58:
          if (v33 == 1 && v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          return;
        }
      }
    }

    else if (v26 != 8000)
    {
      v28 = 16000;
      goto LABEL_53;
    }

    if ((HIDWORD(v26) - 1) <= 0x17)
    {
      operator new();
    }

    goto LABEL_57;
  }

  webrtc::AudioDecoderOpus::MakeAudioDecoder(a1, v6, v7, a3);
}

BOOL webrtc::RefCountedObject<webrtc::audio_encoder_factory_template_impl::AudioEncoderFactoryT<webrtc::AudioEncoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderMultiChannelOpus>,webrtc::AudioEncoderG722,webrtc::AudioEncoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderL16>>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 2, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::audio_encoder_factory_template_impl::AudioEncoderFactoryT<webrtc::AudioEncoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderMultiChannelOpus>,webrtc::AudioEncoderG722,webrtc::AudioEncoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderL16>>::GetSupportedEncoders(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  webrtc::AudioEncoderOpusImpl::AppendSupportedEncoders(a1);
  webrtc::AudioEncoderG722::AppendSupportedEncoders(a1, v2, v3, v4, v5, v6, v7, v8);

  webrtc::AudioEncoderG711::AppendSupportedEncoders(a1);
}

void webrtc::audio_encoder_factory_template_impl::AudioEncoderFactoryT<webrtc::AudioEncoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderMultiChannelOpus>,webrtc::AudioEncoderG722,webrtc::AudioEncoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderL16>>::QueryAudioEncoder(webrtc::AudioEncoderOpusImpl *this@<X1>, uint64_t a2@<X8>)
{
  webrtc::AudioEncoderOpusImpl::SdpToConfig(this, v26);
  if (v33 != 1)
  {
    webrtc::AudioEncoderMultiChannelOpusImpl::SdpToConfig(this, v34);
    if (v41)
    {
      v13 = v35;
      v14 = v36;
      *a2 = 48000;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
      *(a2 + 20) = 0x7C83000001770;
      *(a2 + 28) = 0;
      *(a2 + 32) = 1;
LABEL_15:
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

LABEL_19:
      if ((v33 & 1) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    v15 = webrtc::AudioEncoderG722::SdpToConfig(this, v6, v7, v8, v9, v10, v11, v12);
    if (v16)
    {
      v17 = HIDWORD(v15);
      v18 = v15 >> 32;
      v19 = 16000;
    }

    else
    {
      v20 = webrtc::AudioEncoderG711::SdpToConfig(this, v16);
      if ((v21 & 0x100000000) == 0)
      {
        v22 = webrtc::AudioEncoderL16::SdpToConfig(this, v21);
        if ((v23 & 0x100000000) == 0)
        {
          v24 = 0;
          *a2 = 0;
          goto LABEL_14;
        }

        *a2 = v22;
        *(a2 + 8) = v22 >> 32;
        v25 = 16 * v22 * HIDWORD(v22);
LABEL_13:
        *(a2 + 16) = v25;
        *(a2 + 20) = v25;
        *(a2 + 24) = v25;
        v24 = 1;
        *(a2 + 28) = 1;
LABEL_14:
        *(a2 + 32) = v24;
        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v17 = HIDWORD(v20);
      v18 = v20 >> 32;
      v19 = 8000;
    }

    *a2 = v19;
    *(a2 + 8) = v18;
    v25 = 64000 * v17;
    goto LABEL_13;
  }

  if ((v30 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v4 = v28;
  v5 = v29;
  *a2 = v27;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0x7C83000001770;
  *(a2 + 28) = 256;
  *(a2 + 32) = 1;
LABEL_20:
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void webrtc::audio_encoder_factory_template_impl::AudioEncoderFactoryT<webrtc::AudioEncoderOpus,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderMultiChannelOpus>,webrtc::AudioEncoderG722,webrtc::AudioEncoderG711,webrtc::anonymous namespace::NotAdvertised<webrtc::AudioEncoderL16>>::Create(webrtc::AudioEncoderOpusImpl *this@<X2>, int *a2@<X3>, void *a3@<X8>)
{
  webrtc::AudioEncoderOpusImpl::SdpToConfig(this, &v23);
  if (v34 == 1)
  {
    v6 = v23 >= 1 && v23 % 0xA == 0;
    if (v6 && (HIDWORD(v23) == 48000 || HIDWORD(v23) == 16000) && v24 <= 0x18 && v27 == 1 && (v26 - 6000) <= 0x7B0C0 && HIDWORD(v28) <= 0xA && v29 <= 0xA)
    {
      operator new();
    }

    *a3 = 0;
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    return;
  }

  webrtc::AudioEncoderMultiChannelOpusImpl::SdpToConfig(this, &v23);
  if (v35 == 1)
  {
    if (webrtc::AudioEncoderMultiChannelOpusConfig::IsOk(&v23))
    {
      operator new();
    }

    *a3 = 0;
    if (v35)
    {
      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }

    return;
  }

  v14 = webrtc::AudioEncoderG722::SdpToConfig(this, v7, v8, v9, v10, v11, v12, v13);
  v23 = v14;
  LOBYTE(v24) = v15;
  if ((v15 & 1) == 0)
  {
    v23 = webrtc::AudioEncoderG711::SdpToConfig(this, v15);
    LODWORD(v24) = v17;
    BYTE4(v24) = BYTE4(v17);
    if ((v17 & 0x100000000) != 0)
    {
      webrtc::AudioEncoderG711::MakeAudioEncoder(&v23, *a2, a3);
      return;
    }

    v18 = webrtc::AudioEncoderL16::SdpToConfig(this, v17);
    if ((v19 & 0x100000000) == 0)
    {
      *a3 = 0;
      return;
    }

    v20 = *a2;
    v24 = v18 >> 32;
    LODWORD(v23) = v19;
    v25 = v20;
    v26 = v18;
    if (v18 > 31999)
    {
      if (v18 == 48000)
      {
        goto LABEL_44;
      }

      v21 = 32000;
    }

    else
    {
      if (v18 == 8000)
      {
        goto LABEL_44;
      }

      v21 = 16000;
    }

    if (v18 != v21)
    {
LABEL_48:
      *a3 = 0;
      return;
    }

LABEL_44:
    HIDWORD(v22) = -858993459 * v19;
    LODWORD(v22) = HIDWORD(v22);
    if ((v22 >> 1) <= 0x19999999 && (v19 - 1) <= 0x77 && (HIDWORD(v18) - 1) <= 0x17)
    {
      operator new();
    }

    goto LABEL_48;
  }

  if (v14 >= 1 && !(v14 % 0xA) && (HIDWORD(v14) - 1) <= 0x17)
  {
    operator new();
  }

  *a3 = 0;
}

void webrtc::BuiltinAudioProcessingBuilder::~BuiltinAudioProcessingBuilder(webrtc::BuiltinAudioProcessingBuilder *this)
{
  webrtc::BuiltinAudioProcessingBuilder::~BuiltinAudioProcessingBuilder(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_288290280;
  v2 = *(this + 27);
  *(this + 27) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 25);
  *(this + 25) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 23);
  *(this + 23) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

BOOL webrtc::RefCountedObject<webrtc::AudioProcessingImpl>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 444, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::AudioProcessingImpl>::~RefCountedObject(webrtc::AudioProcessingImpl *a1)
{
  webrtc::AudioProcessingImpl::~AudioProcessingImpl(a1);

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::BuiltinVideoBitrateAllocatorFactory::Create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if ((*a3 & 0xFFFFFFFE) == 2)
  {
    v4 = v3 != 0;
    v5 = v3 == 1;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  if (v5 || !v4)
  {
    operator new();
  }

  operator new();
}

void webrtc::rtcp::Bye::~Bye(void **this)
{
  *this = &unk_288290400;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_288290400;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

std::vector<int> *webrtc::rtcp::Bye::Parse(std::vector<int> *this, uint64_t a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 4);
  if (v3 < 4 * v2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/bye.cc");
    }

    return 0;
  }

  v11 = *(a2 + 8);
  if (v3 <= 4 * v2)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = LOBYTE(v11[*(a2 + 1)]);
    if (v3 - 4 * *(a2 + 1) <= v12)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/bye.cc");
      }

      return 0;
    }
  }

  if (!*(a2 + 1))
  {
    LODWORD(this->__end_) = 0;
    this[1].__begin_ = this->__end_cap_.__value_;
LABEL_37:
    if (v3 <= 4 * v2)
    {
      if (SHIBYTE(this[2].__end_) < 0)
      {
        *this[1].__end_cap_.__value_ = 0;
        this[2].__begin_ = 0;
      }

      else
      {
        LOBYTE(this[1].__end_cap_.__value_) = 0;
        HIBYTE(this[2].__end_) = 0;
      }
    }

    else
    {
      std::string::__assign_external(&this[1].__end_cap_, v11 + ((4 * v2) | 1u), v12);
    }

    return 1;
  }

  value = this->__end_cap_.__value_;
  LODWORD(this->__end_) = bswap32(*v11);
  v21 = (v2 - 1);
  v22 = this[1].__begin_ - value;
  if (v21 <= v22)
  {
    if (v21 < v22)
    {
      this[1].__begin_ = &value[v21];
    }
  }

  else
  {
    v23 = this;
    std::vector<float>::__append(&this->__end_cap_, v21 - v22);
    this = v23;
  }

  if (v2 == 1)
  {
    goto LABEL_37;
  }

  v24 = this->__end_cap_.__value_;
  v25 = this[1].__begin_ - v24;
  v26 = v2 - 2;
  if (v25 >= v2 - 2)
  {
    v27 = v2 - 2;
  }

  else
  {
    v27 = this[1].__begin_ - v24;
  }

  v28 = v27 + 1;
  if (v28 < 0x11)
  {
    goto LABEL_33;
  }

  if (v25 < v26)
  {
    v26 = this[1].__begin_ - v24;
  }

  v29 = v26;
  if (v24 >= &v11[v29 + 2] || v11 >= &v24[v29])
  {
    v31 = v28 & 0xF;
    if ((v28 & 0xF) == 0)
    {
      v31 = 16;
    }

    v32 = v28 - v31;
    v33 = v32 + 1;
    v34 = (v11 + 1);
    v35 = this->__end_cap_.__value_;
    do
    {
      v41 = vld4q_s8(v34);
      v34 += 64;
      v35[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[0], xmmword_273B8E7B0), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v41.val[1], xmmword_273B8E7B0), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[2], xmmword_273B8E7B0), 8uLL), vqtbl1q_s8(v41.val[3], xmmword_273B8E7B0)));
      v35[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[0], xmmword_273B8E7A0), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v41.val[1], xmmword_273B8E7A0), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[2], xmmword_273B8E7A0), 8uLL), vqtbl1q_s8(v41.val[3], xmmword_273B8E7A0)));
      *v35 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[0], xmmword_273B8E7D0), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v41.val[1], xmmword_273B8E7D0), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[2], xmmword_273B8E7D0), 8uLL), vqtbl1q_s8(v41.val[3], xmmword_273B8E7D0)));
      v35[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[0], xmmword_273B8E7C0), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v41.val[1], xmmword_273B8E7C0), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v41.val[2], xmmword_273B8E7C0), 8uLL), vqtbl1q_s8(v41.val[3], xmmword_273B8E7C0)));
      v35 += 4;
      v32 -= 16;
    }

    while (v32);
  }

  else
  {
LABEL_33:
    v33 = 1;
  }

  v36 = v25 - v33 + 1;
  v37 = v2 - v33;
  v38 = v33;
  v39 = &v24[v38 - 1];
  v40 = &v11[v38] + 1;
  while (v36)
  {
    *v39++ = bswap32(*(v40 - 1));
    --v36;
    v40 += 4;
    if (!--v37)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  return this;
}

uint64_t webrtc::rtcp::Bye::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = *a3;
    v14 = (*(*a1 + 16))(a1);
    v15 = (*(a1 + 24) - *(a1 + 16)) >> 2;
    v16 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = (v15 + 1) | 0x80;
    *(a2 + *a3 + 1) = -53;
    *(a2 + *a3 + 2) = (v16 - 4) >> 10;
    *(a2 + *a3 + 3) = (v16 - 4) >> 2;
    v17 = *a3 + 4;
    *a3 = v17;
    *(a2 + v17) = bswap32(*(a1 + 8));
    v18 = *a3 + 4;
    *a3 = v18;
    v19 = *(a1 + 16);
    for (i = *(a1 + 24); v19 != i; *a3 = v18)
    {
      v21 = *v19++;
      *(a2 + v18) = bswap32(v21);
      v18 = *a3 + 4;
    }

    v22 = *(a1 + 63);
    if (v22 < 0)
    {
      v22 = *(a1 + 48);
      if (!v22)
      {
        return 1;
      }
    }

    else if (!*(a1 + 63))
    {
      return 1;
    }

    v23 = v14 + v13;
    v24 = (a1 + 40);
    *a3 = v18 + 1;
    *(a2 + v18) = v22;
    if (*(a1 + 63) < 0)
    {
      v24 = *v24;
    }

    v25 = v22;
    memcpy((a2 + *a3), v24, v22);
    v26 = *a3 + v25;
    *a3 = v26;
    v27 = v23 - v26;
    if (v23 != v26)
    {
      bzero((a2 + v26), v23 - v26);
      *a3 += v27;
    }

    return 1;
  }

  while (*a3)
  {
    a6(a5, a2);
    *a3 = 0;
    if ((*(*a1 + 16))(a1) <= a4)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

unint64_t webrtc::rtcp::Bye::BlockLength(webrtc::rtcp::Bye *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  v3 = *(this + 63);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(this + 6);
    if (!v3)
    {
      return 4 * (v3 + ((v1 - v2) >> 2)) + 8;
    }
  }

  else if (!*(this + 63))
  {
    v3 = 0;
    return 4 * (v3 + ((v1 - v2) >> 2)) + 8;
  }

  return 4 * ((v3 >> 2) + 1 + ((v1 - v2) >> 2)) + 8;
}

uint64_t webrtc::ByteBufferReader::ReadUVarint(webrtc::ByteBufferReader *this, unint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v3 == v2)
  {
    return 0;
  }

  v5 = *this;
  v6 = *(*this + v2);
  v7 = v2 + 1;
  *(this + 2) = v2 + 1;
  v8 = v6 & 0x7F;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v7)
  {
    return 0;
  }

  v9 = *(v5 + v7);
  v10 = v2 + 2;
  *(this + 2) = v2 + 2;
  v8 |= (v9 & 0x7F) << 7;
  if ((v9 & 0x80000000) == 0)
  {
LABEL_5:
    *a2 = v8;
    return 1;
  }

  if (v3 == v10)
  {
    return 0;
  }

  v11 = *(v5 + v10);
  v12 = v2 + 3;
  *(this + 2) = v2 + 3;
  v8 |= (v11 & 0x7F) << 14;
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v12)
  {
    return 0;
  }

  v13 = *(v5 + v12);
  v14 = v2 + 4;
  *(this + 2) = v2 + 4;
  v8 |= (v13 & 0x7F) << 21;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v14)
  {
    return 0;
  }

  v15 = *(v5 + v14);
  v16 = v2 + 5;
  *(this + 2) = v2 + 5;
  v8 |= (v15 & 0x7F) << 28;
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v16)
  {
    return 0;
  }

  v17 = *(v5 + v16);
  v18 = v2 + 6;
  *(this + 2) = v2 + 6;
  v8 |= (v17 & 0x7F) << 35;
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v18)
  {
    return 0;
  }

  v19 = *(v5 + v18);
  v20 = v2 + 7;
  *(this + 2) = v2 + 7;
  v8 |= (v19 & 0x7F) << 42;
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v20)
  {
    return 0;
  }

  v21 = *(v5 + v20);
  v22 = v2 + 8;
  *(this + 2) = v2 + 8;
  v8 |= (v21 & 0x7F) << 49;
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v22)
  {
    return 0;
  }

  v23 = *(v5 + v22);
  v24 = v2 + 9;
  *(this + 2) = v2 + 9;
  v8 |= (v23 & 0x7F) << 56;
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v3 == v24)
  {
    return 0;
  }

  v25 = v2 + 10;
  v26 = *(v5 + v24);
  *(this + 2) = v25;
  if ((v26 & 0x80) != 0)
  {
    return 0;
  }

  *a2 = v8 | (v26 << 63);
  return 1;
}

uint64_t webrtc::ByteBufferReader::ReadString(uint64_t result, std::string *this, std::string::size_type __n_add)
{
  if (!this)
  {
    return 0;
  }

  v3 = *(result + 16);
  if (*(result + 24) - v3 < __n_add)
  {
    return 0;
  }

  v4 = *result;
  if (!__n_add || v4)
  {
    v5 = (v4 + v3);
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v6 < 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v7 - size < __n_add)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 22;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if (22 - v6 < __n_add)
      {
LABEL_8:
        v9 = __n_add;
        v10 = result;
        std::string::__grow_by_and_replace(this, v7, __n_add - v7 + size, size, size, 0, __n_add, v5);
        result = v10;
        __n_add = v9;
LABEL_20:
        *(result + 16) += __n_add;
        return 1;
      }
    }

    if (!__n_add)
    {
      goto LABEL_20;
    }

    v11 = this;
    if ((v6 & 0x80000000) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    if ((__n_add & 0x8000000000000000) == 0)
    {
      v13 = result;
      result = v11 + size;
      if (v11 + size > v5 || result + __n_add <= v5)
      {
        v14 = __n_add;
        memmove(result, v5, __n_add);
        __n_add = v14;
        v15 = size + v14;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v15;
        }

        else
        {
          *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
        }

        result = v13;
        v11->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t webrtc::Call::Stats::ToString@<X0>(webrtc::Call::Stats *this@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  __s = v24;
  strcpy(v24, "Call stats: ");
  v22 = xmmword_273B8F080;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", a2);
  if (v22 + ~*(&v22 + 1) >= 3uLL)
  {
    v5 = 3;
  }

  else
  {
    v5 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", {", v5);
  *(&v22 + 1) += v5;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 0xDuLL)
  {
    v6 = 13;
  }

  else
  {
    v6 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], "send_bw_bps: ", v6);
  *(&v22 + 1) += v6;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *this);
  if (v22 + ~*(&v22 + 1) >= 2uLL)
  {
    v7 = 2;
  }

  else
  {
    v7 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", ", v7);
  *(&v22 + 1) += v7;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 0xDuLL)
  {
    v8 = 13;
  }

  else
  {
    v8 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], "recv_bw_bps: ", v8);
  *(&v22 + 1) += v8;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 2));
  if (v22 + ~*(&v22 + 1) >= 2uLL)
  {
    v9 = 2;
  }

  else
  {
    v9 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", ", v9);
  *(&v22 + 1) += v9;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 0xDuLL)
  {
    v10 = 13;
  }

  else
  {
    v10 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], "max_pad_bps: ", v10);
  *(&v22 + 1) += v10;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 1));
  if (v22 + ~*(&v22 + 1) >= 2uLL)
  {
    v11 = 2;
  }

  else
  {
    v11 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", ", v11);
  *(&v22 + 1) += v11;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 0x10uLL)
  {
    v12 = 16;
  }

  else
  {
    v12 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], "pacer_delay_ms: ", v12);
  *(&v22 + 1) += v12;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(this + 2));
  if (v22 + ~*(&v22 + 1) >= 2uLL)
  {
    v13 = 2;
  }

  else
  {
    v13 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], ", ", v13);
  *(&v22 + 1) += v13;
  __s[*(&v22 + 1)] = 0;
  if (v22 + ~*(&v22 + 1) >= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = v22 + ~*(&v22 + 1);
  }

  memcpy(&__s[*(&v22 + 1)], "rtt_ms: ", v14);
  *(&v22 + 1) += v14;
  __s[*(&v22 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(this + 3));
  __src = 125;
  v15 = v22;
  v16 = *(&v22 + 1) + 1;
  memcpy(&__s[*(&v22 + 1)], &__src, v22 != *(&v22 + 1) + 1);
  v17 = *(&v22 + 1);
  if (v15 != v16)
  {
    v17 = *(&v22 + 1) + 1;
  }

  *(&v22 + 1) = v17;
  __s[v17] = 0;
  v18 = __s;
  if (!__s)
  {
    goto LABEL_43;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_44;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a3[23] = result;
  v20 = &a3[result];
  if (a3 <= v18 && v20 > v18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a3, v18, result);
  }

  *v20 = 0;
  return result;
}

void webrtc::Call::Create(atomic_uint **a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = a1[15];
  if (v2)
  {
    v3 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(*a1 + 2, 1u, memory_order_relaxed);
    }

    (*(*v2 + 16))(v4);
    v4[0] = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 8))(v3);
      }
    }

    operator new();
  }

  v4[0] = &unk_2882905F8;
  if (*a1)
  {
    atomic_fetch_add_explicit(*a1 + 2, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::internal::Call::~Call(webrtc::internal::Call *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 107))
  {
    goto LABEL_234;
  }

  if (*(this + 110))
  {
LABEL_235:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc", 783, "video_send_ssrcs_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v184);
    goto LABEL_236;
  }

  if (*(this + 113))
  {
LABEL_236:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc", 784, "video_send_streams_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v184);
    goto LABEL_237;
  }

  if (*(this + 45))
  {
LABEL_237:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc", 785, "audio_receive_streams_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v184);
    goto LABEL_238;
  }

  if (*(this + 48))
  {
LABEL_238:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc", 786, "video_receive_streams_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v184);
    goto LABEL_239;
  }

  v9 = *(this + 313);
  if (v9)
  {
    *(v9 + 4) = 0;
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 313) = 0;
  }

  v10 = *(this + 314);
  if (v10)
  {
    *(v10 + 4) = 0;
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 314) = 0;
  }

  v11 = *(this + 13);
  *&v189 = this + 1648;
  std::list<webrtc::CallStatsObserver *>::remove((v11 + 96), &v189);
  *(this + 203) = (*(**(this + 331) + 152))(*(this + 331));
  *(this + 1632) = v12;
  explicit = atomic_load_explicit(&qword_28100B908, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v14 = 0, atomic_compare_exchange_strong(&qword_28100B908, &v14, explicit), explicit))
  {
    v15 = (*(**(this + 6) + 16))(*(this + 6));
    v16 = *(this + 317);
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0x8000000000000000;
    v19 = v15 == 0x7FFFFFFFFFFFFFFFLL || v16 == 0x8000000000000000;
    if (!v19 && (v15 != 0x8000000000000000 ? (v20 = v16 == 0x7FFFFFFFFFFFFFFFLL) : (v20 = 1), v20 || (v18 = v15 - v16, v17 = v15 - v16, v15 - v16 < 0)))
    {
      v22 = -v18;
      v23 = v22 / 0xF4240;
      if (v22 % 0xF4240 <= 0x7A120)
      {
        v24 = 0;
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 - v23;
    }

    else if (v17 % 0xF4240 <= 0x7A11F)
    {
      v21 = v17 / 0xF4240;
    }

    else
    {
      v21 = v17 / 0xF4240 + 1;
    }

    webrtc::metrics::HistogramAdd(explicit, v21);
  }

  v25 = *(this + 331);
  *(this + 331) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 322);
  *(this + 322) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 318);
  *(v27 + 4) = 0;
  if (atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v28 = *(this + 316);
  *(this + 316) = 0;
  if (v28)
  {
    webrtc::SendDelayStats::~SendDelayStats(v28);
    MEMORY[0x2743DA540]();
  }

  v29 = *(this + 315);
  *(this + 315) = 0;
  if (v29)
  {
    webrtc::ReceiveTimeCalculatorConfig::~ReceiveTimeCalculatorConfig((v29 + 56));
    MEMORY[0x2743DA540](v29, 0x1092C40273EB4E6);
  }

  v30 = *(this + 314);
  if (v30 && atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v31 = *(this + 313);
  if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::ReceiveSideCongestionController::~ReceiveSideCongestionController((this + 1648));
  if (*(this + 1632) == 1)
  {
    v32 = (*(**(this + 179) + 16))(*(this + 179));
    if ((*(this + 1632) & 1) == 0)
    {
      goto LABEL_233;
    }

    v33 = 0x7FFFFFFFFFFFFFFFLL;
    if (v32 == 0x7FFFFFFFFFFFFFFFLL || (v34 = *(this + 203), v34 == 0x8000000000000000) || v32 != 0x8000000000000000 && v34 != 0x7FFFFFFFFFFFFFFFLL && (v33 = v32 - v34, ((v32 - v34) & 0x8000000000000000) == 0))
    {
      v35 = v33 % 0xF4240 <= 0x7A11F ? v33 / 0xF4240 : v33 / 0xF4240 + 1;
      if (v35 >= 0xA)
      {
        if (*(this + 187) != -1)
        {
          webrtc::StatsCounter::TryProcess((this + 1440));
        }

        v36 = *(this + 183);
        v39 = *(v36 + 16);
        v37 = (v36 + 16);
        v38 = v39;
        if (v39)
        {
          *(*(this + 183) + 32) = (*(*(this + 183) + 8) + v38 / 2) / v38;
        }

        v189 = *v37;
        v190 = *(v37 + 2);
        if (v189 >= 6)
        {
          CountsLinear = atomic_load_explicit(&qword_28100B8F8, memory_order_acquire);
          if (CountsLinear || (CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear(), v41 = 0, atomic_compare_exchange_strong(&qword_28100B8F8, &v41, CountsLinear), CountsLinear))
          {
            webrtc::metrics::HistogramAdd(CountsLinear, v190);
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::AggregatedStats::ToStringWithMultiplier(&v189, 1, v42, &__p);
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (*(this + 198) != -1)
        {
          webrtc::StatsCounter::TryProcess((this + 1528));
        }

        v50 = *(this + 194);
        v53 = *(v50 + 16);
        v51 = (v50 + 16);
        v52 = v53;
        if (v53)
        {
          *(*(this + 194) + 32) = (*(*(this + 194) + 8) + v52 / 2) / v52;
        }

        __p = *v51;
        if (__p.__r_.__value_.__l.__data_ >= 6)
        {
          v54 = atomic_load_explicit(&qword_28100B900, memory_order_acquire);
          if (v54 || (v54 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v55 = 0, atomic_compare_exchange_strong(&qword_28100B900, &v55, v54), v54))
          {
            webrtc::metrics::HistogramAdd(v54, __p.__r_.__value_.__r.__words[2]);
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::AggregatedStats::ToStringWithMultiplier(&__p, 1, v56, &v187);
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
            if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v187.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

  *(this + 191) = &unk_2882A00F0;
  v64 = *(this + 197);
  *(this + 197) = 0;
  if (v64)
  {
    (*(*v64 + 16))(v64);
  }

  v65 = *(this + 195);
  *(this + 195) = 0;
  if (v65)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v65 + 8, *(v65 + 16));
    MEMORY[0x2743DA540](v65, 0x1020C40C0D28DD2);
  }

  v66 = *(this + 194);
  *(this + 194) = 0;
  if (v66)
  {
    MEMORY[0x2743DA540](v66, 0x1000C407607B2BCLL);
  }

  *(this + 180) = &unk_2882A00F0;
  v67 = *(this + 186);
  *(this + 186) = 0;
  if (v67)
  {
    (*(*v67 + 16))(v67);
  }

  v68 = *(this + 184);
  *(this + 184) = 0;
  if (v68)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v68 + 8, *(v68 + 16));
    MEMORY[0x2743DA540](v68, 0x1020C40C0D28DD2);
  }

  v69 = *(this + 183);
  *(this + 183) = 0;
  if (v69)
  {
    MEMORY[0x2743DA540](v69, 0x1000C407607B2BCLL);
  }

  if (*(this + 1376) == 1)
  {
    v70 = atomic_load_explicit(&_MergedGlobals_8, memory_order_acquire);
    if (v70 || (v70 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v71 = 0, atomic_compare_exchange_strong(&_MergedGlobals_8, &v71, v70), v70))
    {
      if (*(this + 1392) & 1) != 0 && (*(this + 1376))
      {
        v72 = *(this + 173);
        v73 = 0x7FFFFFFFFFFFFFFFLL;
        if (v72 != 0x7FFFFFFFFFFFFFFFLL && (v74 = *(this + 171), v75 = 0x8000000000000000, v74 != 0x8000000000000000) && (v72 == 0x8000000000000000 || v74 == 0x7FFFFFFFFFFFFFFFLL || (v75 = v72 - v74, v73 = v72 - v74, v72 - v74 < 0)))
        {
          v77 = -v75;
          v78 = v77 / 0xF4240;
          if (v77 % 0xF4240 <= 0x7A120)
          {
            v79 = 0;
          }

          else
          {
            v79 = -1;
          }

          LODWORD(v76) = v79 - v78;
        }

        else if (v73 % 0xF4240 <= 0x7A11F)
        {
          v76 = v73 / 0xF4240;
        }

        else
        {
          LODWORD(v76) = v73 / 0xF4240 + 1;
        }

        webrtc::metrics::HistogramAdd(v70, v76);
        goto LABEL_112;
      }

LABEL_233:
      __break(1u);
LABEL_234:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc", 782, "audio_send_ssrcs_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v184);
      goto LABEL_235;
    }
  }

LABEL_112:
  if (*(this + 1408) != 1)
  {
    goto LABEL_130;
  }

  v80 = atomic_load_explicit(&qword_28100B8D0, memory_order_acquire);
  if (!v80)
  {
    v80 = webrtc::metrics::HistogramFactoryGetCountsLinear();
    v81 = 0;
    atomic_compare_exchange_strong(&qword_28100B8D0, &v81, v80);
    if (!v80)
    {
      goto LABEL_130;
    }
  }

  if ((*(this + 1424) & 1) == 0 || (*(this + 1408) & 1) == 0)
  {
    goto LABEL_233;
  }

  v82 = *(this + 177);
  v83 = 0x7FFFFFFFFFFFFFFFLL;
  if (v82 != 0x7FFFFFFFFFFFFFFFLL && (v84 = *(this + 175), v85 = 0x8000000000000000, v84 != 0x8000000000000000) && (v82 == 0x8000000000000000 || v84 == 0x7FFFFFFFFFFFFFFFLL || (v85 = v82 - v84, v83 = v82 - v84, v82 - v84 < 0)))
  {
    v87 = -v85;
    v88 = v87 / 0xF4240;
    if (v87 % 0xF4240 <= 0x7A120)
    {
      v89 = 0;
    }

    else
    {
      v89 = -1;
    }

    LODWORD(v86) = v89 - v88;
  }

  else if (v83 % 0xF4240 <= 0x7A11F)
  {
    v86 = v83 / 0xF4240;
  }

  else
  {
    LODWORD(v86) = v83 / 0xF4240 + 1;
  }

  webrtc::metrics::HistogramAdd(v80, v86);
LABEL_130:
  v90 = *(this + 152);
  v93 = *(v90 + 16);
  v91 = (v90 + 16);
  v92 = v93;
  if (v93)
  {
    *(*(this + 152) + 32) = (*(*(this + 152) + 8) + v92 / 2) / v92;
  }

  v189 = *v91;
  v190 = *(v91 + 2);
  if (v189 >= 6)
  {
    v94 = atomic_load_explicit(&qword_28100B8D8, memory_order_acquire);
    if (v94 || (v94 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v95 = 0, atomic_compare_exchange_strong(&qword_28100B8D8, &v95, v94), v94))
    {
      webrtc::metrics::HistogramAdd(v94, v190 / 125);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::AggregatedStats::ToStringWithMultiplier(&v189, 8, v96, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v97, v98, v99, v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v104 = *(this + 141);
  v107 = *(v104 + 16);
  v105 = (v104 + 16);
  v106 = v107;
  if (v107)
  {
    *(*(this + 141) + 32) = (*(*(this + 141) + 8) + v106 / 2) / v106;
  }

  __p = *v105;
  if (__p.__r_.__value_.__l.__data_ >= 6)
  {
    v108 = atomic_load_explicit(&qword_28100B8E0, memory_order_acquire);
    if (v108 || (v108 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v109 = 0, atomic_compare_exchange_strong(&qword_28100B8E0, &v109, v108), v108))
    {
      webrtc::metrics::HistogramAdd(v108, SLODWORD(__p.__r_.__value_.__r.__words[2]) / 125);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::AggregatedStats::ToStringWithMultiplier(&__p, 8, v110, &v187);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v111, v112, v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v187.__r_.__value_.__l.__data_);
      }
    }
  }

  v118 = *(this + 163);
  v121 = *(v118 + 16);
  v119 = (v118 + 16);
  v120 = v121;
  if (v121)
  {
    *(*(this + 163) + 32) = (*(*(this + 163) + 8) + v120 / 2) / v120;
  }

  v187 = *v119;
  if (v187.__r_.__value_.__l.__data_ >= 6)
  {
    v122 = atomic_load_explicit(&qword_28100B8E8, memory_order_acquire);
    if (v122 || (v122 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v123 = 0, atomic_compare_exchange_strong(&qword_28100B8E8, &v123, v122), v122))
    {
      webrtc::metrics::HistogramAdd(v122, 8 * LODWORD(v187.__r_.__value_.__r.__words[2]));
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::AggregatedStats::ToStringWithMultiplier(&v187, 8, v124, &v186);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v125, v126, v127, v128, v129, v130, v131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
      if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v186.__r_.__value_.__l.__data_);
      }
    }
  }

  v132 = *(this + 130);
  v135 = *(v132 + 16);
  v133 = (v132 + 16);
  v134 = v135;
  if (v135)
  {
    *(*(this + 130) + 32) = (*(*(this + 130) + 8) + v134 / 2) / v134;
  }

  v186 = *v133;
  if (v186.__r_.__value_.__l.__data_ >= 6)
  {
    v136 = atomic_load_explicit(&qword_28100B8F0, memory_order_acquire);
    if (v136 || (v136 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v137 = 0, atomic_compare_exchange_strong(&qword_28100B8F0, &v137, v136), v136))
    {
      webrtc::metrics::HistogramAdd(v136, SLODWORD(v186.__r_.__value_.__r.__words[2]) / 125);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::AggregatedStats::ToStringWithMultiplier(&v186, 8, v138, &v185);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v139, v140, v141, v142, v143, v144, v145, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
      if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v185.__r_.__value_.__l.__data_);
      }
    }
  }

  *(this + 160) = &unk_2882A00F0;
  v146 = *(this + 166);
  *(this + 166) = 0;
  if (v146)
  {
    (*(*v146 + 16))(v146);
  }

  v147 = *(this + 164);
  *(this + 164) = 0;
  if (v147)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v147 + 8, *(v147 + 16));
    MEMORY[0x2743DA540](v147, 0x1020C40C0D28DD2);
  }

  v148 = *(this + 163);
  *(this + 163) = 0;
  if (v148)
  {
    MEMORY[0x2743DA540](v148, 0x1000C407607B2BCLL);
  }

  *(this + 149) = &unk_2882A00F0;
  v149 = *(this + 155);
  *(this + 155) = 0;
  if (v149)
  {
    (*(*v149 + 16))(v149);
  }

  v150 = *(this + 153);
  *(this + 153) = 0;
  if (v150)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v150 + 8, *(v150 + 16));
    MEMORY[0x2743DA540](v150, 0x1020C40C0D28DD2);
  }

  v151 = *(this + 152);
  *(this + 152) = 0;
  if (v151)
  {
    MEMORY[0x2743DA540](v151, 0x1000C407607B2BCLL);
  }

  *(this + 138) = &unk_2882A00F0;
  v152 = *(this + 144);
  *(this + 144) = 0;
  if (v152)
  {
    (*(*v152 + 16))(v152);
  }

  v153 = *(this + 142);
  *(this + 142) = 0;
  if (v153)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v153 + 8, *(v153 + 16));
    MEMORY[0x2743DA540](v153, 0x1020C40C0D28DD2);
  }

  v154 = *(this + 141);
  *(this + 141) = 0;
  if (v154)
  {
    MEMORY[0x2743DA540](v154, 0x1000C407607B2BCLL);
  }

  *(this + 127) = &unk_2882A00F0;
  v155 = *(this + 133);
  *(this + 133) = 0;
  if (v155)
  {
    (*(*v155 + 16))(v155);
  }

  v156 = *(this + 131);
  *(this + 131) = 0;
  if (v156)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v156 + 8, *(v156 + 16));
    MEMORY[0x2743DA540](v156, 0x1020C40C0D28DD2);
  }

  v157 = *(this + 130);
  *(this + 130) = 0;
  if (v157)
  {
    MEMORY[0x2743DA540](v157, 0x1000C407607B2BCLL);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 992, *(this + 125));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 968, *(this + 122));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 944, *(this + 119));
  v158 = *(this + 115);
  if (v158)
  {
    v159 = *(this + 116);
    v160 = *(this + 115);
    if (v159 != v158)
    {
      do
      {
        v162 = *--v159;
        v161 = v162;
        *v159 = 0;
        if (v162)
        {
          pthread_mutex_lock((v161 + 16));
          (*(**(v161 + 8) + 40))(*(v161 + 8), 0);
          *(v161 + 80) = 0;
          pthread_mutex_unlock((v161 + 16));
          std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(*(v161 + 120));
          *v161 = &unk_2882900E8;
          v163 = *(v161 + 88);
          if (v163)
          {
            v164 = *(v161 + 96);
            v165 = *(v161 + 88);
            if (v164 != v163)
            {
              do
              {
                v167 = *(v164 - 8);
                v164 -= 8;
                v166 = v167;
                if (v167)
                {
                  (*(*v166 + 8))(v166);
                }
              }

              while (v164 != v163);
              v165 = *(v161 + 88);
            }

            *(v161 + 96) = v163;
            operator delete(v165);
          }

          pthread_mutex_destroy((v161 + 16));
          v168 = *(v161 + 8);
          if (v168)
          {
            (*(*v168 + 8))(v168);
          }

          MEMORY[0x2743DA540](v161, 0x10A0C4099F1F9CDLL);
        }
      }

      while (v159 != v158);
      v160 = *(this + 115);
    }

    *(this + 116) = v158;
    operator delete(v160);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 112));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 109));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 106));
  *(this + 77) = &unk_28829D418;
  *(this + 78) = &unk_28829D448;
  webrtc::RtpDemuxer::~RtpDemuxer((this + 640));
  *(this + 49) = &unk_28829D418;
  *(this + 50) = &unk_28829D448;
  webrtc::RtpDemuxer::~RtpDemuxer((this + 416));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 47));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 44));
  v173 = *(this + 40);
  if (v173)
  {
    *(this + 41) = v173;
    operator delete(v173);
  }

  v174 = *(this + 39);
  if (v174 && atomic_fetch_add(v174, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v175 = *(this + 26);
  *(this + 26) = 0;
  if (v175)
  {
    (*(*v175 + 8))(v175);
  }

  v176 = *(this + 22);
  if (v176)
  {
    (*(*v176 + 8))(v176);
  }

  v177 = *(this + 15);
  if (v177 && atomic_fetch_add(v177 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v177 + 8))(v177);
  }

  v178 = *(this + 14);
  *(this + 14) = 0;
  if (v178)
  {
    (*(*v178 + 32))(v178);
  }

  v179 = *(this + 13);
  *(this + 13) = 0;
  if (v179)
  {
    webrtc::internal::CallStats::~CallStats(v179);
    MEMORY[0x2743DA540]();
  }

  v180 = *(this + 11);
  *(this + 11) = 0;
  if (!v180)
  {
    goto LABEL_229;
  }

  if (*(v180 + 48))
  {
LABEL_239:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/decode_synchronizer.cc", 120, "schedulers_.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v169, v170, v171, v172, v184);
    webrtc::internal::Call::~Call(v183);
    return;
  }

  v181 = *(v180 + 64);
  *(v181 + 4) = 0;
  if (atomic_fetch_add(v181, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(v180 + 32, *(v180 + 40));
  MEMORY[0x2743DA540](v180, 0x1060C40C1612B2ALL);
LABEL_229:
  v182 = *(this + 4);
  if (v182)
  {
    if (atomic_fetch_add(v182 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v182 + 8))(v182);
    }
  }
}

{
  webrtc::internal::Call::~Call(this, a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::internal::Call::~Call(webrtc::internal::Call *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  webrtc::internal::Call::~Call((this - 8), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::internal::Call::~Call((this - 16), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::internal::Call::~Call((this - 24), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::internal::Call::~Call((this - 8), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::Call::~Call((this - 16), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::Call::~Call((this - 24), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

void webrtc::internal::Call::CreateAudioSendStream(webrtc::internal::Call *this, const webrtc::AudioSendStream::Config *a2)
{
  if ((*(this + 2560) & 1) == 0)
  {
    *(this + 2560) = 1;
    webrtc::internal::CallStats::EnsureStarted(*(this + 13));
  }

    ;
  }

  operator new();
}

uint64_t webrtc::internal::Call::UpdateAggregateNetworkState(webrtc::internal::Call *this)
{
  if (!*(this + 107))
  {
    v2 = *(this + 45) != 0;
    if (!*(this + 110))
    {
      goto LABEL_5;
    }

LABEL_6:
    v3 = *(this + 73);
    v4 = v3 == 0;
    if (!v3 || !v2)
    {
LABEL_9:
      if (*(this + 296) == v4)
      {
        goto LABEL_10;
      }

LABEL_14:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_8:
    v4 = *(this + 72) == 0;
    goto LABEL_9;
  }

  v2 = 1;
  if (*(this + 110))
  {
    goto LABEL_6;
  }

LABEL_5:
  if (*(this + 48))
  {
    goto LABEL_6;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  LOBYTE(v4) = 0;
  if (*(this + 296))
  {
    goto LABEL_14;
  }

LABEL_10:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    goto LABEL_16;
  }

LABEL_15:
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
LABEL_16:
  *(this + 296) = v4;
  v12 = *(**(this + 331) + 128);

  return v12();
}

uint64_t webrtc::internal::Call::DestroyAudioSendStream(webrtc::internal::Call *a1, void **a2)
{
  ((*a2)[6])(a2);
  v4 = *((*a2)[3])(a2);
  (*(*a2[96] + 184))(v20);
  v5 = *(a1 + 119);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 8);
      if (v4 >= v7)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= v4)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = v20[1];
  *(v6 + 5) = v20[0];
  *(v6 + 7) = v8;
  *(v6 + 72) = v21;
  v9 = *(a1 + 106);
  if (v9)
  {
    v10 = (a1 + 848);
    v11 = *(a1 + 106);
    do
    {
      v12 = *(v11 + 32);
      v13 = v12 >= v4;
      v14 = v12 < v4;
      if (v13)
      {
        v10 = v11;
      }

      v11 = *(v11 + 8 * v14);
    }

    while (v11);
    if (v10 != (a1 + 848) && v4 >= *(v10 + 8))
    {
      v15 = v10[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        v17 = v10;
        do
        {
          v16 = v17[2];
          v18 = *v16 == v17;
          v17 = v16;
        }

        while (!v18);
      }

      if (*(a1 + 105) == v10)
      {
        *(a1 + 105) = v16;
      }

      --*(a1 + 107);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v9, v10);
      operator delete(v10);
    }
  }

  webrtc::internal::Call::UpdateAggregateNetworkState(a1);
  return ((*a2)[2])(a2);
}

void webrtc::internal::Call::CreateAudioReceiveStream(webrtc::internal::Call *this, const webrtc::AudioReceiveStreamInterface::Config *a2)
{
  if ((*(this + 2560) & 1) == 0)
  {
    *(this + 2560) = 1;
    webrtc::internal::CallStats::EnsureStarted(*(this + 13));
  }

  operator new();
}

uint64_t webrtc::internal::Call::ConfigureSync(uint64_t result, void *__s1, size_t __n)
{
  v5 = result;
  if (__n && (v6 = *(result + 344), v7 = (result + 352), v6 != (result + 352)))
  {
    while (1)
    {
      v8 = v6[4];
      v21 = *(v8 + 95);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v8 + 80);
      }

      if (__n == v21)
      {
        v23 = v22 >= 0 ? (v8 + 72) : *(v8 + 72);
        result = memcmp(__s1, v23, __n);
        if (!result)
        {
          break;
        }
      }

      v24 = v6[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v6[2];
          v20 = *v25 == v6;
          v6 = v25;
        }

        while (!v20);
      }

      v6 = v25;
      if (v25 == v7)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v8 = 0;
  }

  v9 = *(v5 + 368);
  v10 = (v5 + 376);
  if (v9 != v10)
  {
    v11 = 0;
    if (v8)
    {
      v12 = v8 + 16;
    }

    else
    {
      v12 = 0;
    }

    do
    {
      v13 = v9[4];
      v14 = *(v13 + 295);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v13 + 280);
      }

      if (__n == v14 && (v15 >= 0 ? (v16 = (v13 + 272)) : (v16 = *(v13 + 272)), result = memcmp(__s1, v16, __n), !result))
      {
        if (v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = v12;
        }

        result = webrtc::internal::RtpStreamsSynchronizer::ConfigureSync(v13 + 4048, v19);
        ++v11;
        v17 = v9[1];
        if (!v17)
        {
          do
          {
LABEL_23:
            v18 = v9[2];
            v20 = *v18 == v9;
            v9 = v18;
          }

          while (!v20);
          goto LABEL_8;
        }
      }

      else
      {
        v17 = v9[1];
        if (!v17)
        {
          goto LABEL_23;
        }
      }

      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
LABEL_8:
      v9 = v18;
    }

    while (v18 != v10);
  }

  return result;
}

void webrtc::internal::Call::DestroyAudioReceiveStream(uint64_t a1, unint64_t a2)
{
  v4 = *(a2 + 216);
  *(a2 + 216) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a2 + 24);
  pthread_mutex_lock((a1 + 2424));
  (*(**(a1 + 2488) + 32))(*(a1 + 2488), v5);
  pthread_mutex_unlock((a1 + 2424));
  v6 = *(a1 + 352);
  if (v6)
  {
    v7 = (a1 + 352);
    v8 = *(a1 + 352);
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 != (a1 + 352) && v7[4] <= a2)
    {
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v14 = v7;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (*(a1 + 344) == v7)
      {
        *(a1 + 344) = v13;
      }

      --*(a1 + 360);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v6, v7);
      operator delete(v7);
    }
  }

  v16 = *(a2 + 95);
  if (v16 >= 0)
  {
    v17 = (a2 + 72);
  }

  else
  {
    v17 = *(a2 + 72);
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 95);
  }

  else
  {
    v18 = *(a2 + 80);
  }

  webrtc::internal::Call::ConfigureSync(a1, v17, v18);
  webrtc::internal::Call::UpdateAggregateNetworkState(a1);
  webrtc::AudioReceiveStreamImpl::~AudioReceiveStreamImpl(a2);

  JUMPOUT(0x2743DA540);
}

void webrtc::internal::Call::CreateVideoSendStream(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 2560) & 1) == 0)
  {
    *(a1 + 2560) = 1;
    webrtc::internal::CallStats::EnsureStarted(*(a1 + 104));
  }

  webrtc::SendDelayStats::AddSsrcs(*(a1 + 2528), a2);
  if (*(a2 + 8) != *a2)
  {
    operator new();
  }

  operator new();
}

void webrtc::internal::Call::CreateVideoSendStream(uint64_t a1, uint64_t a2, int *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(a1 + 192))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc");
    }

    v13 = *(a1 + 192);
    if (v13)
    {
      (*(*v13 + 16))(&v42);
      webrtc::RtpConfig::RtpConfig(v30, a2);
      v14 = *(a2 + 344);
      v33 = *(a2 + 328);
      v34 = v14;
      v15 = *(a2 + 312);
      v31 = *(a2 + 296);
      v32 = v15;
      v35 = *(a2 + 360);
      v16 = *(a2 + 368);
      *(a2 + 368) = 0;
      v36 = v16;
      v37 = *(a2 + 384);
      v38 = *(a2 + 388);
      __p = *(a2 + 392);
      *(a2 + 392) = 0;
      *(a2 + 400) = 0;
      v17 = *(a2 + 408);
      v18 = *(a2 + 416);
      *(a2 + 408) = 0;
      *(a2 + 416) = 0;
      v40 = v17;
      v41 = v18;
      v43 = *a3;
      v44 = *(a3 + 2);
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      v19 = *(a3 + 3);
      v20 = *(a3 + 4);
      *(a3 + 3) = 0;
      v45 = v19;
      v46 = v20;
      v21 = a3 + 10;
      v22 = *(a3 + 5);
      v23 = *(a3 + 6);
      v47[0] = v22;
      v47[1] = v23;
      if (v23)
      {
        *(v22 + 16) = v47;
        *(a3 + 4) = v21;
        *v21 = 0;
        *(a3 + 6) = 0;
      }

      else
      {
        v46 = v47;
      }

      v24 = *(a3 + 7);
      v25 = *(a3 + 5);
      v48 = *(a3 + 4);
      v49 = v25;
      v26 = *(a3 + 12);
      v47[2] = v24;
      v50 = v26;
      *(a3 + 7) = 0;
      v27 = *(a3 + 26);
      *(a3 + 13) = 0;
      *(a3 + 14) = 0;
      v51 = v27;
      v52 = *(a3 + 30);
      *(a3 + 15) = 0;
      *(a3 + 16) = 0;
      LODWORD(v24) = a3[34];
      v54 = *(a3 + 140);
      v53 = v24;
      v28 = *(a3 + 18);
      *(a3 + 18) = 0;
      v56 = *(a3 + 38);
      v57 = *(a3 + 42);
      v29 = *(a3 + 23);
      v55 = v28;
      v58 = v29;
      *(a3 + 21) = 0;
      *(a3 + 22) = 0;
      *(a3 + 23) = 0;
      v59 = *(a3 + 12);
      v42 = 0;
      webrtc::internal::Call::CreateVideoSendStream(a1, v30);
    }
  }

  operator new();
}

void webrtc::internal::Call::DestroyVideoSendStream(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 864);
  v5 = (a1 + 872);
  if (v4 == (a1 + 872))
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    do
    {
      v7 = v4[5];
      v8 = v4[1];
      if (v7 == a2)
      {
        v11 = v4[1];
        v12 = v4;
        if (v8)
        {
          do
          {
            v9 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v9 = v12[2];
            v13 = *v9 == v12;
            v12 = v9;
          }

          while (!v13);
        }

        v14 = v4;
        if (v8)
        {
          do
          {
            v15 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v13 = *v15 == v14;
            v14 = v15;
          }

          while (!v13);
        }

        if (*(a1 + 864) == v4)
        {
          *(a1 + 864) = v15;
        }

        --*(a1 + 880);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 872), v4);
        operator delete(v4);
        v6 = v7;
      }

      else if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = v4;
          v4 = v4[2];
        }

        while (*v4 != v10);
        v9 = v4;
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  v16 = *(a1 + 920);
  v17 = *(a1 + 928);
  while (v16 != v17)
  {
    v18 = *v16;
    v19 = *(*v16 + 120);
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = (*v16 + 120);
    do
    {
      v21 = v19[4];
      v22 = v21 >= v6;
      v23 = v21 < v6;
      if (v22)
      {
        v20 = v19;
      }

      v19 = v19[v23];
    }

    while (v19);
    if (v20 == (*v16 + 120) || v20[4] > v6)
    {
LABEL_35:
      v20 = (*v16 + 120);
    }

    v24 = v20[5];
    v59 = v24;
    if (v24)
    {
      (**v24)(v24);
      webrtc::BroadcastResourceListener::RemoveAdapterResource(v18, &v59);
      ((*v24)[1])(v24);
      v25 = v20[1];
      v26 = v20;
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    else
    {
      webrtc::BroadcastResourceListener::RemoveAdapterResource(v18, &v59);
      v25 = v20[1];
      v26 = v20;
      if (!v25)
      {
        do
        {
LABEL_42:
          v27 = v26[2];
          v13 = *v27 == v26;
          v26 = v27;
        }

        while (!v13);
        goto LABEL_44;
      }
    }

    do
    {
      v27 = v25;
      v25 = *v25;
    }

    while (v25);
LABEL_44:
    if (v18[14] == v20)
    {
      v18[14] = v27;
    }

    v28 = v18[15];
    --v18[16];
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v28, v20);
    v29 = v20[5];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    operator delete(v20);
    v16 += 8;
  }

  v30 = *(a1 + 896);
  if (v30)
  {
    v31 = (a1 + 896);
    v32 = *(a1 + 896);
    do
    {
      v33 = v32[4];
      v22 = v33 >= v6;
      v34 = v33 < v6;
      if (v22)
      {
        v31 = v32;
      }

      v32 = v32[v34];
    }

    while (v32);
    if (v31 != (a1 + 896) && v6 >= v31[4])
    {
      v35 = v31[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        v37 = v31;
        do
        {
          v36 = v37[2];
          v13 = *v36 == v37;
          v37 = v36;
        }

        while (!v13);
      }

      if (*(a1 + 888) == v31)
      {
        *(a1 + 888) = v36;
      }

      --*(a1 + 904);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v30, v31);
      operator delete(v31);
    }
  }

  if (!*(a1 + 904))
  {
    *(a1 + 912) = 1;
  }

  v60[0] = 0;
  v60[1] = 0;
  v58[1] = 0;
  v59 = v60;
  v57 = v58;
  v58[0] = 0;
  webrtc::internal::VideoSendStreamImpl::StopPermanentlyAndGetRtpStates(v6, &v59, &v57);
  v38 = v59;
  if (v59 != v60)
  {
    v39 = (a1 + 976);
    do
    {
      v40 = *v39;
      if (!*v39)
      {
LABEL_76:
        operator new();
      }

      v41 = *(v38 + 8);
      while (1)
      {
        while (1)
        {
          v42 = v40;
          v43 = *(v40 + 8);
          if (v41 >= v43)
          {
            break;
          }

          v40 = *v42;
          if (!*v42)
          {
            goto LABEL_76;
          }
        }

        if (v43 >= v41)
        {
          break;
        }

        v40 = v42[1];
        if (!v40)
        {
          goto LABEL_76;
        }
      }

      v44 = *(v38 + 5);
      v45 = *(v38 + 7);
      *(v42 + 72) = *(v38 + 72);
      *(v42 + 7) = v45;
      *(v42 + 5) = v44;
      v46 = v38[1];
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = v38[2];
          v13 = *v47 == v38;
          v38 = v47;
        }

        while (!v13);
      }

      v38 = v47;
    }

    while (v47 != v60);
  }

  v48 = v57;
  if (v57 != v58)
  {
    v49 = (a1 + 1000);
    do
    {
      v50 = *v49;
      if (!*v49)
      {
LABEL_92:
        operator new();
      }

      v51 = *(v48 + 8);
      while (1)
      {
        while (1)
        {
          v52 = v50;
          v53 = *(v50 + 8);
          if (v51 >= v53)
          {
            break;
          }

          v50 = *v52;
          if (!*v52)
          {
            goto LABEL_92;
          }
        }

        if (v53 >= v51)
        {
          break;
        }

        v50 = v52[1];
        if (!v50)
        {
          goto LABEL_92;
        }
      }

      v54 = *(v48 + 5);
      v52[7] = v48[7];
      *(v52 + 5) = v54;
      v55 = v48[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v48[2];
          v13 = *v56 == v48;
          v48 = v56;
        }

        while (!v13);
      }

      v48 = v56;
    }

    while (v56 != v58);
  }

  webrtc::internal::Call::UpdateAggregateNetworkState(a1);
  if (v6)
  {
    (*(*v6 + 96))(v6);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(&v57, v58[0]);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v59, v60[0]);
}

void webrtc::internal::Call::CreateVideoReceiveStream(uint64_t a1)
{
  if ((*(a1 + 2560) & 1) == 0)
  {
    *(a1 + 2560) = 1;
    webrtc::internal::CallStats::EnsureStarted(*(a1 + 104));
  }

  operator new();
}

uint64_t webrtc::internal::Call::DestroyVideoReceiveStream(uint64_t a1, unint64_t a2)
{
  v4 = *(a2 + 4288);
  *(a2 + 4288) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a2 + 4312);
  *(a2 + 4312) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a2 + 4280) = 0;
  v6 = *(a1 + 376);
  if (v6)
  {
    v7 = (a1 + 376);
    v8 = *(a1 + 376);
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 != (a1 + 376) && v7[4] <= a2)
    {
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v14 = v7;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (*(a1 + 368) == v7)
      {
        *(a1 + 368) = v13;
      }

      --*(a1 + 384);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v6, v7);
      operator delete(v7);
    }
  }

  v16 = *(a2 + 295);
  if (v16 >= 0)
  {
    v17 = (a2 + 272);
  }

  else
  {
    v17 = *(a2 + 272);
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 295);
  }

  else
  {
    v18 = *(a2 + 280);
  }

  webrtc::internal::Call::ConfigureSync(a1, v17, v18);
  v19 = *(a2 + 152);
  pthread_mutex_lock((a1 + 2424));
  (*(**(a1 + 2488) + 32))(*(a1 + 2488), v19);
  pthread_mutex_unlock((a1 + 2424));
  webrtc::internal::Call::UpdateAggregateNetworkState(a1);
  v20 = *(*a2 + 8);

  return v20(a2);
}

uint64_t webrtc::internal::Call::DestroyFlexfecReceiveStream(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1464);
  *(a2 + 1464) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a2 + 16);
  pthread_mutex_lock((a1 + 2424));
  (*(**(a1 + 2488) + 32))(*(a1 + 2488), v5);
  pthread_mutex_unlock((a1 + 2424));
  v6 = *(*a2 + 8);

  return v6(a2);
}

uint64_t webrtc::internal::Call::GetPayloadTypeSuggester(webrtc::internal::Call *this)
{
  result = *(this + 321);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t webrtc::internal::Call::SetPayloadTypeSuggester(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2568))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/call.cc", 1148, "!pt_suggester_", "\t", a5, a6, a7, a8, "SetPayloadTypeSuggester can be called only once");
    return webrtc::internal::Call::GetStats(v8);
  }

  else
  {
    *(result + 2568) = a2;
  }

  return result;
}

uint64_t webrtc::internal::Call::GetStats@<X0>(webrtc::internal::Call *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  if (*(this + 296) == 1)
  {
    v4 = (*(**(this + 331) + 144))(*(this + 331));
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(this + 13) + 40);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  pthread_mutex_lock((this + 2424));
  v6 = (*(**(this + 311) + 40))(*(this + 311));
  result = pthread_mutex_unlock((this + 2424));
  *a2 = *(this + 410);
  *(a2 + 4) = *(this + 411);
  *(a2 + 8) = v6;
  return result;
}

uint64_t webrtc::internal::Call::SignalChannelNetworkState(webrtc::internal::Call *this, int a2, int a3)
{
  if (*(this + 10) != *(this + 9))
  {
    v4 = *(this + 318);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    }

    operator new();
  }

  if (!a2)
  {
    *(this + 72) = a3;
    result = webrtc::internal::Call::UpdateAggregateNetworkState(this);
    v6 = *(this + 46);
    v7 = this + 376;
    if (v6 == this + 376)
    {
      return result;
    }

    while (1)
    {
LABEL_12:
      v8 = *(v6 + 4);
      if (*(this + 73))
      {
        result = webrtc::RTCPSender::SetRTCPStatus(*(v8 + 2952) + 72, 0);
        v9 = *(v6 + 1);
        if (v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = webrtc::RTCPSender::SetRTCPStatus(*(v8 + 2952) + 72, *(*(v8 + 2568) + 44));
        v9 = *(v6 + 1);
        if (v9)
        {
          do
          {
LABEL_16:
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *(v6 + 2);
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
LABEL_11:
      v6 = v10;
      if (v10 == v7)
      {
        return result;
      }
    }
  }

  *(this + 73) = a3;
  result = webrtc::internal::Call::UpdateAggregateNetworkState(this);
  v6 = *(this + 46);
  v7 = this + 376;
  if (v6 != this + 376)
  {
    goto LABEL_12;
  }

  return result;
}

void webrtc::internal::Call::OnAudioTransportOverheadChanged(webrtc::internal::Call *this)
{
  v1 = *(this + 318);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::internal::Call::OnLocalSsrcUpdated(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 156) != a3)
  {
    *(a2 + 156) = a3;
    v3 = *(a2 + 2952);
    v4 = *(v3 + 824);
    if (v4 <= 1)
    {
      __break(1u);
    }

    else
    {
      v5 = (v3 + 832);
      if (v4)
      {
        v5 = *v5;
      }

      *v5 = a3;
      pthread_mutex_lock((v3 + 184));
      *(v3 + 116) = a3;

      pthread_mutex_unlock((v3 + 184));
    }
  }
}

{
  v4 = *(a2 + 864);
  if (v4 <= 1)
  {
    __break(1u);
  }

  else
  {
    v5 = (a2 + 872);
    if (v4)
    {
      v5 = *v5;
    }

    if (*v5 != a3)
    {
      *v5 = a3;
      pthread_mutex_lock((a2 + 224));
      *(a2 + 156) = a3;

      pthread_mutex_unlock((a2 + 224));
    }
  }
}

uint64_t webrtc::internal::Call::OnUpdateSyncGroup(uint64_t a1, uint64_t a2, __int128 *__s1, size_t __n)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__n > 0x16)
  {
    operator new();
  }

  HIBYTE(v11) = __n;
  v8 = (&v10 + __n);
  if (&v10 <= __s1 && v8 > __s1)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__n)
  {
    memmove(&v10, __s1, __n);
  }

  *v8 = 0;
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v10;
  *(a2 + 88) = v11;

  return webrtc::internal::Call::ConfigureSync(a1, __s1, __n);
}

uint64_t webrtc::internal::Call::OnSentPacket(uint64_t this, const webrtc::SentPacketInfo *a2)
{
  v2 = this;
  v3 = (this + 2584);
  if (*(this + 2640) != 1)
  {
    *v3 = *a2;
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    *(this + 2632) = *(a2 + 6);
    *(this + 2600) = v5;
    *(this + 2616) = v6;
    *(this + 2640) = 1;
LABEL_11:
    v10 = *(this + 2528);
    v11 = *a2;
    v12.var0 = (*(**(this + 48) + 16))(*(this + 48));
    webrtc::SendDelayStats::OnSentPacket(v10, v11, v12);
    v13 = *(**(v2 + 2648) + 168);

    return v13();
  }

  v4 = *v3 != -1 && *v3 == *a2;
  if (!v4 || *(this + 2592) != *(a2 + 1))
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    *(this + 2632) = *(a2 + 6);
    *(this + 2600) = v8;
    *(this + 2616) = v9;
    *v3 = v7;
    goto LABEL_11;
  }

  return this;
}

unint64_t webrtc::internal::Call::OnTargetTransferRate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = llround(v4 * 0.05);
  if (v5 >= 2177)
  {
    *&v20[0] = 0x206CC800uLL / v5;
    v7 = v5 > 0x2A80;
    v6 = v20;
    if (v7)
    {
    }
  }

  else
  {
  }

  v8 = *v6;
  pthread_mutex_lock((a1 + 1888));
  *(a1 + 2024) = v8;
  pthread_mutex_unlock((a1 + 1888));
  v9 = *(a1 + 112);
  v10 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v10;
  v21 = *(a2 + 64);
  v11 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v11;
  webrtc::BitrateAllocator::OnNetworkEstimateChanged(v9, v20);
  *(a1 + 1640) = v4;
  if (v4 && (*(a1 + 912) & 1) == 0)
  {
    webrtc::StatsCounter::Add((a1 + 1440), v4 / 0x3E8);
    v18 = *(a1 + 1616);
    if (v18 <= v4)
    {
      v18 = v4;
    }

    return webrtc::StatsCounter::Add((a1 + 1528), v18 / 0x3E8);
  }

  else
  {
    if (*(a1 + 1496) != -1)
    {
      webrtc::StatsCounter::TryProcess((a1 + 1440));
    }

    *(a1 + 1504) = 1;
    v12 = (*(**(a1 + 1480) + 16))(*(a1 + 1480));
    v13 = v12 / 0x3E8uLL;
    if (v12 % 0x3E8uLL > 0x1F3)
    {
      ++v13;
    }

    if (-v12 % 0x3E8uLL <= 0x1F4)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 - -v12 / 0x3E8uLL;
    if (v12 < 0)
    {
      v13 = v15;
    }

    *(a1 + 1512) = v13;
    if (*(a1 + 1584) != -1)
    {
      webrtc::StatsCounter::TryProcess((a1 + 1528));
    }

    *(a1 + 1592) = 1;
    result = (*(**(a1 + 1568) + 16))(*(a1 + 1568));
    if ((result & 0x8000000000000000) != 0)
    {
      if (-result % 0x3E8uLL <= 0x1F4)
      {
        v19 = 0;
      }

      else
      {
        v19 = -1;
      }

      *(a1 + 1600) = v19 - -result / 0x3E8uLL;
    }

    else
    {
      v17 = result / 0x3E8;
      if (result % 0x3E8 > 0x1F3)
      {
        ++v17;
      }

      *(a1 + 1600) = v17;
    }
  }

  return result;
}

uint64_t webrtc::internal::Call::OnAllocationLimitsChanged(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 2552);
  v6 = *a2;
  v7 = *(a2 + 2);
  result = (*(*v4 + 72))(v4, &v6);
  *(a1 + 1616) = *a2;
  *(a1 + 1644) = *(a2 + 4);
  return result;
}

uint64_t non-virtual thunk towebrtc::internal::Call::OnAllocationLimitsChanged(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 2528);
  v6 = *a2;
  v7 = *(a2 + 2);
  result = (*(*v4 + 72))(v4, &v6);
  *(a1 + 1592) = *a2;
  *(a1 + 1620) = *(a2 + 4);
  return result;
}

uint64_t webrtc::internal::Call::DeliverRtcpPacket(uint64_t result, void *a2)
{
  v3 = result;
  if (*(result + 1072) != -1)
  {
    v4 = *(a2 + 4);
    webrtc::StatsCounter::Add((result + 1016), v4);
    result = webrtc::StatsCounter::Add((v3 + 160), v4);
  }

  v5 = v3[46];
  if (v5 != v3 + 47)
  {
    v6 = 0;
    while (1)
    {
      if (*a2)
      {
        result = webrtc::RtpVideoStreamReceiver2::DeliverRtcp((v5[4] + 2456), (*(*a2 + 16) + a2[1]), a2[2]);
        v7 = v5[1];
        if (v7)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = webrtc::RtpVideoStreamReceiver2::DeliverRtcp((v5[4] + 2456), 0, a2[2]);
        v7 = v5[1];
        if (v7)
        {
          do
          {
LABEL_10:
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_5;
        }
      }

      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
LABEL_5:
      v6 |= result;
      v5 = v8;
      if (v8 == v3 + 47)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = 0;
LABEL_16:
  v10 = v3[43];
  if (v10 == v3 + 44)
  {
    v11 = v3[111];
    v12 = v3 + 112;
    if (v11 == v3 + 112)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  do
  {
    if (*a2)
    {
      v13 = *(*a2 + 16) + a2[1];
    }

    else
    {
      v13 = 0;
    }

    result = (*(**(v10[4] + 200) + 64))(*(v10[4] + 200), v13, a2[2]);
    v14 = v10[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v10[2];
        v9 = *v15 == v10;
        v10 = v15;
      }

      while (!v9);
    }

    v10 = v15;
  }

  while (v15 != v3 + 44);
  v6 = 1;
  v11 = v3[111];
  v12 = v3 + 112;
  if (v11 != v3 + 112)
  {
    do
    {
LABEL_34:
      if (*a2)
      {
        v18 = *(*a2 + 16) + a2[1];
      }

      else
      {
        v18 = 0;
      }

      (*(**(v11[4] + 1704) + 72))(*(v11[4] + 1704), v18, a2[2]);
      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v9 = *v20 == v11;
          v11 = v20;
        }

        while (!v9);
      }

      v11 = v20;
    }

    while (v20 != v12);
    v16 = v3[105];
    v17 = v3 + 106;
    if (v16 == v3 + 106)
    {
      goto LABEL_44;
    }

    while (1)
    {
LABEL_46:
      if (*a2)
      {
        webrtc::internal::AudioSendStream::DeliverRtcp(v16[5], (*(*a2 + 16) + a2[1]));
        v21 = v16[1];
        if (v21)
        {
          goto LABEL_50;
        }
      }

      else
      {
        webrtc::internal::AudioSendStream::DeliverRtcp(v16[5], 0);
        v21 = v16[1];
        if (v21)
        {
          do
          {
LABEL_50:
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
          goto LABEL_45;
        }
      }

      do
      {
        v22 = v16[2];
        v9 = *v22 == v16;
        v16 = v22;
      }

      while (!v9);
LABEL_45:
      v16 = v22;
      if (v22 == v17)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_30:
  v16 = v3[105];
  v17 = v3 + 106;
  if (v16 != v3 + 106)
  {
    goto LABEL_46;
  }

  if (v6)
  {
LABEL_44:
    operator new();
  }

  return result;
}

void webrtc::internal::Call::DeliverRtpPacket(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 2520);
  v7 = *(a3 + 112);
  if (v6)
  {
    if (webrtc::g_clock)
    {
      v8 = (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
    }

    else
    {
      gettimeofday(&v14, 0);
      v8 = v14.tv_usec + 1000000 * v14.tv_sec;
    }

    v9 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = webrtc::ReceiveTimeCalculator::ReconcileReceiveTimes(v6, v7, v8, v9);
    *(a3 + 112) = v7;
  }

  v10 = *(a3 + 24);
  *&v14.tv_usec = v7;
  v15 = v10;
  v14.tv_sec = 0x8000000000000000;
  if (*(a3 + 37))
  {
    v11 = *(a3 + 56);
    v12 = *(a3 + 64);
    if (v11 != v12)
    {
      while (*v11 != *(a3 + 37))
      {
        v11 += 4;
        if (v11 == v12)
        {
          goto LABEL_15;
        }
      }

      v13 = *(a3 + 88);
      if (v13)
      {
        v13 = *(v13 + 16) + *(a3 + 96);
      }

      if (v11[1] == 3)
      {
        v14.tv_sec = (1000000 * ((*(v13 + *(v11 + 1)) << 16) | (*(v13 + *(v11 + 1) + 1) << 8) | *(v13 + *(v11 + 1) + 2))) >> 18;
      }
    }
  }

LABEL_15:
  (*(**(a1 + 2648) + 176))(*(a1 + 2648), &v14);
  webrtc::ReceiveSideCongestionController::OnReceivedPacket(a1 + 1648, a3, a2);
  operator new();
}

void webrtc::ReceiveSideCongestionController::~ReceiveSideCongestionController(webrtc::ReceiveSideCongestionController *this)
{
  *this = &unk_28829A0F8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  pthread_mutex_destroy((this + 776));
  webrtc::CongestionControlFeedbackGenerator::~CongestionControlFeedbackGenerator((this + 392));
  *(this + 24) = &unk_2882A1358;
  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8000313F17);
  }

  pthread_mutex_destroy((this + 240));
  v4 = *(this + 28);
  if (v4 == (this + 200))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 6) = &unk_28829A4C0;
  pthread_mutex_destroy((this + 96));
  v5 = *(this + 10);
  if (v5 == (this + 56))
  {
    (*(*v5 + 32))(v5);
    v6 = *(this + 1);
    if (!v6)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
LABEL_15:
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }
}

{
  webrtc::ReceiveSideCongestionController::~ReceiveSideCongestionController(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::CongestionControlFeedbackGenerator::~CongestionControlFeedbackGenerator(webrtc::CongestionControlFeedbackGenerator *this)
{
  *this = &unk_2882914E0;
  std::__tree<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>>>::destroy(this + 320, *(this + 41));
  *(this + 29) = &unk_288293910;
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  *(this + 20) = &unk_288293910;
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  *(this + 11) = &unk_288293910;
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5 == (this + 56))
  {
    (*(*v5 + 32))(v5);
    v6 = *(this + 1);
    if (!v6)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
LABEL_19:
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }
}

{
  webrtc::CongestionControlFeedbackGenerator::~CongestionControlFeedbackGenerator(this);

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::CongestionControlFeedbackTracker>>>::destroy(a1, a2[1]);
    v4 = a2[9];
    if (v4)
    {
      a2[10] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

void webrtc::anonymous namespace::PayloadTypeSuggesterForTests::~PayloadTypeSuggesterForTests(webrtc::_anonymous_namespace_::PayloadTypeSuggesterForTests *this)
{
  *this = &unk_288290620;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 224;
        webrtc::Codec::~Codec((v3 - 216));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_288290620;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 224;
        webrtc::Codec::~Codec((v3 - 216));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::PayloadTypeSuggesterForTests::SuggestPayloadType(webrtc::Codec *a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5[27] = *MEMORY[0x277D85DE8];
  webrtc::Codec::Codec(v5, a1);
  webrtc::PayloadTypePicker::SuggestMapping(v5, a2 + 8, 0, a3);
  webrtc::Codec::~Codec(v5);
}

void webrtc::anonymous namespace::PayloadTypeSuggesterForTests::AddLocalMapping(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

__n128 std::__function::__func<std::__bind_front_t<void (webrtc::PacketRouter::*)(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>),webrtc::PacketRouter*>,std::allocator<std::__bind_front_t<void (webrtc::PacketRouter::*)(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>),webrtc::PacketRouter*>>,void ()(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288290650;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::__bind_front_t<void (webrtc::PacketRouter::*)(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>),webrtc::PacketRouter*>,std::allocator<std::__bind_front_t<void (webrtc::PacketRouter::*)(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>),webrtc::PacketRouter*>>,void ()(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>)>::operator()(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v14 = v2;
  v15 = v3;
  *__p = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5(v6, __p);
  v7 = __p[0];
  if (__p[0])
  {
    v8 = __p[1];
    v9 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = __p[0];
    }

    __p[1] = v7;
    operator delete(v9);
  }
}

__n128 std::__function::__func<std::__bind_front_t<void (webrtc::PacketRouter::*)(long long,std::vector<unsigned int>),webrtc::PacketRouter*>,std::allocator<std::__bind_front_t<void (webrtc::PacketRouter::*)(long long,std::vector<unsigned int>),webrtc::PacketRouter*>>,void ()(long long,std::vector<unsigned int>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288290698;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::__bind_front_t<void (webrtc::PacketRouter::*)(long long,std::vector<unsigned int>),webrtc::PacketRouter*>,std::allocator<std::__bind_front_t<void (webrtc::PacketRouter::*)(long long,std::vector<unsigned int>),webrtc::PacketRouter*>>,void ()(long long,std::vector<unsigned int>)>::operator()(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[2];
  v6 = a1[1];
  v7 = (a1[3] + (v5 >> 1));
  if (v5)
  {
    v6 = *(*v7 + v6);
  }

  v11 = v3;
  v12 = v4;
  v8 = *a2;
  *__p = *a3;
  v10 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6(v7, v8, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::internal::Call::Call(webrtc::CallConfig,std::unique_ptr<webrtc::RtpTransportControllerSendInterface>)::$_1 &>(uint64_t a1)
{
  v1 = *(*a1 + 112);
  if (!v1)
  {
    return 25000;
  }

  if (webrtc::BitrateAllocator::RecomputeAllocationIfNeeded(v1))
  {
    return 25000;
  }

  return 300000;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::internal::Call::SignalChannelNetworkState(webrtc::MediaType,webrtc::NetworkState)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 3);
  if (!*(a1 + 2))
  {
    *(v1 + 288) = v2;
    result = webrtc::internal::Call::UpdateAggregateNetworkState(v1);
    v4 = *(v1 + 368);
    v5 = (v1 + 376);
    if (v4 == (v1 + 376))
    {
      return result;
    }

    while (1)
    {
LABEL_7:
      v6 = v4[4];
      if (*(v1 + 292))
      {
        result = webrtc::RTCPSender::SetRTCPStatus(*(v6 + 2952) + 72, 0);
        v7 = v4[1];
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = webrtc::RTCPSender::SetRTCPStatus(*(v6 + 2952) + 72, *(*(v6 + 2568) + 44));
        v7 = v4[1];
        if (v7)
        {
          do
          {
LABEL_11:
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_6;
        }
      }

      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
LABEL_6:
      v4 = v8;
      if (v8 == v5)
      {
        return result;
      }
    }
  }

  *(v1 + 292) = v2;
  result = webrtc::internal::Call::UpdateAggregateNetworkState(v1);
  v4 = *(v1 + 368);
  v5 = (v1 + 376);
  if (v4 != (v1 + 376))
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::internal::Call::OnAudioTransportOverheadChanged(int)::$_0 &&>(uint64_t result)
{
  v1 = *(*result + 840);
  v2 = *result + 848;
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      result = webrtc::internal::AudioSendStream::SetTransportOverhead(v1[5], *(v3 + 8));
      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }

  return result;
}

void webrtc::internal::CallStats::~CallStats(webrtc::internal::CallStats *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 3) = 0;
  }

  webrtc::internal::CallStats::UpdateHistograms(this);
  v3 = *(this + 16);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  if (*(this + 14))
  {
    v4 = *(this + 13);
    v5 = *(*(this + 12) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 14) = 0;
    if (v4 != (this + 96))
    {
      do
      {
        v7 = *(v4 + 1);
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (this + 96));
    }
  }

  if (*(this + 11))
  {
    v8 = *(this + 10);
    v9 = *(*(this + 9) + 8);
    v10 = *v8;
    *(v10 + 8) = v9;
    *v9 = v10;
    *(this + 11) = 0;
    if (v8 != (this + 72))
    {
      do
      {
        v11 = *(v8 + 1);
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != (this + 72));
    }
  }

  v12 = *(this + 3);
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }
}

unint64_t webrtc::internal::CallStats::UpdateHistograms(unint64_t this)
{
  if (*(this + 64) != -1)
  {
    v1 = this;
    if (*(this + 56) >= 1)
    {
      this = (*(**(this + 16) + 16))(*(this + 16));
      v2 = this / 0x3E8;
      if (this % 0x3E8 > 0x1F3)
      {
        ++v2;
      }

      if (-this % 0x3E8uLL <= 0x1F4)
      {
        v3 = 0;
      }

      else
      {
        v3 = -1;
      }

      if ((this & 0x8000000000000000) != 0)
      {
        v2 = v3 - -this / 0x3E8uLL;
      }

      if ((v2 - v1[8]) >= 10000)
      {
        v5 = v1[6];
        v4 = v1[7];
        this = atomic_load_explicit(&webrtc::internal::CallStats::UpdateHistograms(void)::atomic_histogram_pointer, memory_order_acquire);
        if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v6 = 0, atomic_compare_exchange_strong(&webrtc::internal::CallStats::UpdateHistograms(void)::atomic_histogram_pointer, &v6, this), this))
        {

          return webrtc::metrics::HistogramAdd(this, (v5 + v4 / 2) / v4);
        }
      }
    }
  }

  return this;
}

void webrtc::internal::CallStats::EnsureStarted(webrtc::internal::CallStats *this)
{
  {
    {
      operator new();
    }
  }

  webrtc::RepeatingTaskHandle::DelayedStart();
}

unint64_t webrtc::internal::CallStats::UpdateAndReport(webrtc::internal::CallStats *this)
{
  result = (*(**(this + 2) + 16))(*(this + 2));
  v3 = result / 0x3E8;
  if (result % 0x3E8 > 0x1F3)
  {
    ++v3;
  }

  if (-result % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v3 = v4 - -result / 0x3E8uLL;
  }

  v5 = (this + 72);
  v41 = &v41;
  __p = &v41;
  v6 = *(this + 10);
  if (v6 != (this + 72))
  {
    v7 = v3 - 1500;
    if (&v41 != v5)
    {
      v8 = 0;
      v9 = &v41;
      while (1)
      {
        v10 = v6[1];
        if (v6[3] < v7)
        {
          if (v10 == v5)
          {
            v11 = 1;
            if (v6 != v10)
            {
              goto LABEL_20;
            }
          }

          else
          {
            do
            {
              v11 = v10[3] < v7;
              if (v10[3] >= v7)
              {
                break;
              }

              v10 = v10[1];
            }

            while (v10 != v5);
            if (v6 != v10)
            {
LABEL_20:
              v9 = *v10;
              v12 = 1;
              if (*v10 != v6)
              {
                v13 = v6;
                do
                {
                  v13 = v13[1];
                  ++v12;
                }

                while (v13 != v9);
              }

              *(this + 11) -= v12;
              v8 += v12;
              v14 = v9[1];
              v15 = *v6;
              *(v15 + 8) = v14;
              *v14 = v15;
              v16 = v41;
              v41[1] = v6;
              *v6 = v16;
              v41 = v9;
              v9[1] = &v41;
              if (v11)
              {
                goto LABEL_11;
              }

LABEL_24:
              v10 = v10[1];
              goto LABEL_11;
            }
          }

          if (!v11)
          {
            goto LABEL_24;
          }
        }

LABEL_11:
        v6 = v10;
        if (v10 == v5)
        {
          if (v8)
          {
            result = __p;
            v17 = v9[1];
            v18 = *__p;
            *(v18 + 8) = v17;
            *v17 = v18;
            v43 = 0;
            if (result != &v41)
            {
              do
              {
                v19 = *(result + 8);
                operator delete(result);
                result = v19;
              }

              while (v19 != &v41);
            }
          }

          goto LABEL_28;
        }
      }
    }

    while (1)
    {
      v33 = v6[1];
      if (v6[3] < v7)
      {
        break;
      }

LABEL_44:
      v6 = v33;
      if (v33 == &v41)
      {
        goto LABEL_28;
      }
    }

    if (v33 == &v41)
    {
      v34 = 1;
    }

    else
    {
      if (v33[3] >= v7)
      {
        v34 = 0;
        if (v6 == v33)
        {
LABEL_54:
          if (!v34)
          {
            v33 = v33[1];
          }

          goto LABEL_44;
        }

LABEL_53:
        v35 = *v33;
        v36 = *(*v33 + 8);
        v37 = *v6;
        *(v37 + 8) = v36;
        *v36 = v37;
        v38 = v41;
        v41[1] = v6;
        *v6 = v38;
        v41 = v35;
        v35[1] = &v41;
        goto LABEL_54;
      }

      do
      {
        v33 = v33[1];
        v34 = v33 == &v41;
      }

      while (v33 != &v41 && v33[3] < v7);
    }

    if (v6 == v33)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_28:
  v20 = *(this + 10);
  v21 = -1;
  if (v20 == v5)
  {
    *(this + 4) = -1;
    v25 = (this + 32);
    v27 = (this + 40);
    v26 = *(this + 5);
    v32 = *(this + 11);
    if (!v32)
    {
      *v27 = -1;
      return result;
    }

    v31 = 0 / v32;
    if (v26 == -1)
    {
      goto LABEL_41;
    }

LABEL_40:
    v31 = ((v31 * 0.3) + (v26 * 0.7));
    goto LABEL_41;
  }

  v22 = *(this + 10);
  do
  {
    v24 = v22 + 1;
    v22 = v22[1];
    v23 = v24[1];
    if (v23 > v21)
    {
      v21 = v23;
    }
  }

  while (v22 != v5);
  *(this + 4) = v21;
  v25 = (this + 32);
  v27 = (this + 40);
  v26 = *(this + 5);
  v28 = *(this + 11);
  if (!v28)
  {
    v31 = -1;
    *v27 = -1;
    if (v21 < 0)
    {
      return result;
    }

    goto LABEL_59;
  }

  v29 = 0;
  do
  {
    v30 = v20 + 1;
    v20 = v20[1];
    v29 += v30[1];
  }

  while (v20 != v5);
  v31 = v29 / v28;
  if (v26 != -1)
  {
    goto LABEL_40;
  }

LABEL_41:
  *v27 = v31;
  if (v21 < 0)
  {
    return result;
  }

LABEL_59:
  v39 = *(this + 13);
  if (v39 != (this + 96))
  {
    do
    {
      result = (***(v39 + 16))(*(v39 + 16), *v27, *v25);
      v39 = *(v39 + 8);
    }

    while (v39 != (this + 96));
    v31 = *v27;
  }

  v40 = vdupq_n_s64(1uLL);
  v40.i64[0] = v31;
  *(this + 3) = vaddq_s64(*(this + 3), v40);
  return result;
}

uint64_t std::list<webrtc::CallStatsObserver *>::remove(void *a1, uint64_t *a2)
{
  v24 = &v24;
  __p = &v24;
  v2 = a1[1];
  if (v2 == a1)
  {
    return 0;
  }

  v3 = *a2;
  if (&v24 == a1)
  {
    do
    {
      v18 = v2[1];
      if (v2[2] == v3)
      {
        if (v18 == a1)
        {
          v19 = 1;
        }

        else if (v18[2] == v3)
        {
          do
          {
            v18 = v18[1];
            v19 = v18 == a1;
          }

          while (v18 != a1 && v18[2] == v3);
        }

        else
        {
          v19 = 0;
        }

        if (v2 != v18)
        {
          v20 = *v18;
          v21 = *(*v18 + 8);
          v22 = *v2;
          *(v22 + 8) = v21;
          *v21 = v22;
          v23 = v24;
          v24[1] = v2;
          *v2 = v23;
          v24 = v20;
          v20[1] = &v24;
        }

        if (!v19)
        {
          v18 = v18[1];
        }
      }

      v2 = v18;
    }

    while (v18 != a1);
    return 0;
  }

  v4 = 0;
  v5 = &v24;
  do
  {
    v6 = v2[1];
    if (v2[2] != v3)
    {
      goto LABEL_4;
    }

    if (v6 == a1)
    {
      v7 = 1;
      if (v2 == v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      do
      {
        v7 = v6[2] == v3;
        if (v6[2] != v3)
        {
          break;
        }

        v6 = v6[1];
      }

      while (v6 != a1);
      if (v2 == v6)
      {
LABEL_16:
        if (v7)
        {
          goto LABEL_4;
        }

LABEL_17:
        v6 = v6[1];
        goto LABEL_4;
      }
    }

    v5 = *v6;
    v8 = 1;
    if (*v6 != v2)
    {
      v9 = v2;
      do
      {
        v9 = v9[1];
        ++v8;
      }

      while (v9 != v5);
    }

    a1[2] -= v8;
    v4 += v8;
    v10 = v5[1];
    v11 = *v2;
    *(v11 + 8) = v10;
    *v10 = v11;
    v12 = v24;
    v24[1] = v2;
    *v2 = v12;
    v24 = v5;
    v5[1] = &v24;
    if (!v7)
    {
      goto LABEL_17;
    }

LABEL_4:
    v2 = v6;
  }

  while (v6 != a1);
  if (v4)
  {
    v13 = __p;
    v14 = v5[1];
    v15 = *__p;
    *(v15 + 8) = v14;
    *v14 = v15;
    v26 = 0;
    if (v13 != &v24)
    {
      do
      {
        v16 = v13[1];
        operator delete(v13);
        v13 = v16;
      }

      while (v16 != &v24);
    }
  }

  return v4;
}

void webrtc::internal::CallStats::RtcpRttStatsImpl::OnRttUpdate(webrtc::internal::CallStats::RtcpRttStatsImpl *this, uint64_t a2)
{
  v3 = *(this + 1);
  v4 = (*(**(v3 + 16) + 16))(*(v3 + 16));
  v12 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v12;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v4 < 0)
  {
    v14 = v13 - -v4 / 0x3E8uLL;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(v3 + 120);
  {
    v16 = *(v3 + 128);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
    }

    v17 = operator new(0x18uLL);
    *v17 = v3;
    v17[1] = a2;
    v17[2] = v14;
    operator new();
  }

  operator new();
}

__n128 absl::internal_any_invocable::RemoteManagerTrivial(char a1, void **a2, _OWORD *a3)
{
  if (a1)
  {
    operator delete(*a2);
  }

  else
  {
    result = *a2;
    *a3 = *a2;
  }

  return result;
}

uint64_t dcsctp::CallbackDeferrer::TriggerDeferred(uint64_t this)
{
  *(this + 16) = 0;
  if (*(this + 24) != *(this + 32))
  {
    v13 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v2;
    v22 = v1;
    v23 = v11;
    v24 = v12;
    operator new();
  }

  return this;
}

uint64_t dcsctp::CallbackDeferrer::SendPacketWithStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!a3)
  {
    a2 = 0;
  }

  return (*(*v3 + 24))(v3, a2);
}

void *dcsctp::CallbackDeferrer::OnMessageReceived(void *result, uint64_t a2)
{
  v2 = result[4];
  v3 = result[5];
  if (v2 >= v3)
  {
    v4 = result[3];
    v5 = ((v2 - v4) >> 6) + 1;
    if (v5 >> 58)
    {
      goto LABEL_13;
    }

    v6 = v3 - v4;
    if (v6 >> 5 > v5)
    {
      v5 = v6 >> 5;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFC0)
    {
      v5 = 0x3FFFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (!(v5 >> 58))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  *v2 = dcsctp::CallbackDeferrer::OnMessageReceived(dcsctp::DcSctpMessage)::$_0::__invoke;
  *(v2 + 8) = *a2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = *(a2 + 8);
  *(v2 + 32) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v2 + 56) = 1;
  result[4] = v2 + 64;
  return result;
}

void *dcsctp::CallbackDeferrer::OnMessageReady(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 >= this[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(this + 3);
  }

  if (v2)
  {
    *v2 = dcsctp::CallbackDeferrer::OnMessageReady(void)::$_0::__invoke;
    *(v2 + 56) = 0;
    this = (v2 + 64);
    v1[4] = v2 + 64;
  }

  else
  {
    __break(1u);
  }

  return this;
}

double dcsctp::CallbackDeferrer::OnError(void *a1, int a2, void **__src, size_t __len)
{
  v12 = dcsctp::CallbackDeferrer::OnError(dcsctp::ErrorKind,std::string_view)::$_0::__invoke;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_14:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v11) = __len;
  v5 = (__p + __len);
  if (__p <= __src && v5 > __src)
  {
    goto LABEL_13;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v5 = 0;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::Error>(a1 + 3);
  }

  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *v6 = dcsctp::CallbackDeferrer::OnError(dcsctp::ErrorKind,std::string_view)::$_0::__invoke;
  *(v6 + 8) = a2;
  v7 = v11;
  result = *__p;
  *(v6 + 16) = *__p;
  *(v6 + 32) = v7;
  *(v6 + 56) = 2;
  a1[4] = v6 + 64;
  return result;
}

double dcsctp::CallbackDeferrer::OnAborted(void *a1, int a2, void **__src, size_t __len)
{
  v12 = dcsctp::CallbackDeferrer::OnAborted(dcsctp::ErrorKind,std::string_view)::$_0::__invoke;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_14:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v11) = __len;
  v5 = (__p + __len);
  if (__p <= __src && v5 > __src)
  {
    goto LABEL_13;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v5 = 0;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::Error>(a1 + 3);
  }

  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *v6 = dcsctp::CallbackDeferrer::OnAborted(dcsctp::ErrorKind,std::string_view)::$_0::__invoke;
  *(v6 + 8) = a2;
  v7 = v11;
  result = *__p;
  *(v6 + 16) = *__p;
  *(v6 + 32) = v7;
  *(v6 + 56) = 2;
  a1[4] = v6 + 64;
  return result;
}

void *dcsctp::CallbackDeferrer::OnConnected(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 >= this[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(this + 3);
  }

  if (v2)
  {
    *v2 = dcsctp::CallbackDeferrer::OnConnected(void)::$_0::__invoke;
    *(v2 + 56) = 0;
    this = (v2 + 64);
    v1[4] = v2 + 64;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void *dcsctp::CallbackDeferrer::OnClosed(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 >= this[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(this + 3);
  }

  if (v2)
  {
    *v2 = dcsctp::CallbackDeferrer::OnClosed(void)::$_0::__invoke;
    *(v2 + 56) = 0;
    this = (v2 + 64);
    v1[4] = v2 + 64;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void *dcsctp::CallbackDeferrer::OnConnectionRestarted(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 >= this[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(this + 3);
  }

  if (v2)
  {
    *v2 = dcsctp::CallbackDeferrer::OnConnectionRestarted(void)::$_0::__invoke;
    *(v2 + 56) = 0;
    this = (v2 + 64);
    v1[4] = v2 + 64;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void dcsctp::CallbackDeferrer::OnStreamsResetFailed(void *a1, int a2, uint64_t a3, void **__src, size_t __len)
{
  v11 = dcsctp::CallbackDeferrer::OnStreamsResetFailed(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>,std::string_view)::$_0::__invoke;
  if (a3)
  {
    if (((2 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_17:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v10) = __len;
  v6 = (__p + __len);
  if (__p <= __src && v6 > __src)
  {
    goto LABEL_16;
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v6 = 0;
  v7 = a1[4];
  if (v7 >= a1[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::StreamReset>(a1 + 3);
  }

  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *v7 = dcsctp::CallbackDeferrer::OnStreamsResetFailed(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>,std::string_view)::$_0::__invoke;
  *(v7 + 8) = 0uLL;
  *(v7 + 24) = 0;
  v8 = v10;
  *(v7 + 32) = *__p;
  *(v7 + 48) = v8;
  __p[1] = 0;
  v10 = 0;
  __p[0] = 0;
  *(v7 + 56) = 3;
  a1[4] = v7 + 64;
}

uint64_t dcsctp::CallbackDeferrer::OnStreamsResetPerformed(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (((2 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_9:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = a1[4];
  if (v4 >= a1[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::StreamReset>(a1 + 3);
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v4 = dcsctp::CallbackDeferrer::OnStreamsResetPerformed(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>)::$_0::__invoke;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = 3;
  a1[4] = v4 + 64;
  return 0;
}

uint64_t dcsctp::CallbackDeferrer::OnIncomingStreamsReset(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (((2 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_9:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = a1[4];
  if (v4 >= a1[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::StreamReset>(a1 + 3);
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v4 = dcsctp::CallbackDeferrer::OnIncomingStreamsReset(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>)::$_0::__invoke;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = 3;
  a1[4] = v4 + 64;
  return 0;
}

void *dcsctp::CallbackDeferrer::OnBufferedAmountLow(void *result, __int16 a2)
{
  v2 = result[4];
  v3 = result[5];
  if (v2 >= v3)
  {
    v4 = result[3];
    v5 = ((v2 - v4) >> 6) + 1;
    if (v5 >> 58)
    {
      goto LABEL_13;
    }

    v6 = v3 - v4;
    if (v6 >> 5 > v5)
    {
      v5 = v6 >> 5;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFC0)
    {
      v5 = 0x3FFFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (!(v5 >> 58))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  *v2 = dcsctp::CallbackDeferrer::OnBufferedAmountLow(webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>)::$_0::__invoke;
  *(v2 + 8) = a2;
  *(v2 + 56) = 4;
  result[4] = v2 + 64;
  return result;
}

void *dcsctp::CallbackDeferrer::OnTotalBufferedAmountLow(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 >= this[5])
  {
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(this + 3);
  }

  if (v2)
  {
    *v2 = dcsctp::CallbackDeferrer::OnTotalBufferedAmountLow(void)::$_0::__invoke;
    *(v2 + 56) = 0;
    this = (v2 + 64);
    v1[4] = v2 + 64;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void dcsctp::CallbackDeferrer::~CallbackDeferrer(dcsctp::CallbackDeferrer *this)
{
  *this = &unk_288290710;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = *(this + 3);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 != -1)
        {
          (off_2882907E0[v5])(&v6, v3 - 56);
        }

        *(v3 - 8) = -1;
        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *(this + 3);
    }

    *(this + 4) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_288290710;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = *(this + 3);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 != -1)
        {
          (off_2882907E0[v5])(&v6, v3 - 56);
        }

        *(v3 - 8) = -1;
        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *(this + 3);
    }

    *(this + 4) = v2;
    operator delete(v4);
  }

  MEMORY[0x2743DA540](this, 0x10A1C4047FDC6BCLL);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6dcsctp13DcSctpMessageENS9_16CallbackDeferrer5ErrorENSB_11StreamResetEN6webrtc11StrongAliasINS9_11StreamIDTagEtEEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_SA_SC_SD_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *(a2 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6dcsctp13DcSctpMessageENS9_16CallbackDeferrer5ErrorENSB_11StreamResetEN6webrtc11StrongAliasINS9_11StreamIDTagEtEEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_SA_SC_SD_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6dcsctp13DcSctpMessageENS9_16CallbackDeferrer5ErrorENSB_11StreamResetEN6webrtc11StrongAliasINS9_11StreamIDTagEtEEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_SA_SC_SD_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
    v3 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  else
  {
    v3 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  *(a2 + 8) = v3;

  operator delete(v3);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>> &&>(void *result)
{
  if (!*result)
  {
    __break(1u);
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>> &&>(void **result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *v2 = *a2;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0;
    *(v2 + 1) = *(a2 + 8);
    v2[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *v2 = *a2;
    v3 = *(a2 + 8);
    *(v2 + 24) = *(a2 + 24);
    *(v2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = *a2;
    *(v2 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3 = *(a2 + 24);
    *(v2 + 40) = *(a2 + 40);
    *(v2 + 24) = v3;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_WORD **std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::__generic_construct[abi:sn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>> &&>(_WORD **result, _WORD *a2)
{
  if (*result)
  {
    **result = *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void dcsctp::CallbackDeferrer::OnMessageReceived(dcsctp::DcSctpMessage)::$_0::__invoke(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 12) != 1)
  {
    v2 = std::__throw_bad_variant_access[abi:sn200100]();
    std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(v2);
  }

  v3 = *a1;
  *__p = *(a1 + 1);
  v5 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  (*(*a2 + 80))(a2, &v3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::monostate>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 6) + 1;
  if (!(v1 >> 58))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 5 > v1)
    {
      v1 = v2 >> 5;
    }

    v3 = v2 >= 0x7FFFFFFFFFFFFFC0;
    v4 = 0x3FFFFFFFFFFFFFFLL;
    if (!v3)
    {
      v4 = v1;
    }

    if (v4)
    {
      if (!(v4 >> 58))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::Error>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 6) + 1;
  if (!(v1 >> 58))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 5 > v1)
    {
      v1 = v2 >> 5;
    }

    v3 = v2 >= 0x7FFFFFFFFFFFFFC0;
    v4 = 0x3FFFFFFFFFFFFFFLL;
    if (!v3)
    {
      v4 = v1;
    }

    if (v4)
    {
      if (!(v4 >> 58))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void dcsctp::CallbackDeferrer::OnError(dcsctp::ErrorKind,std::string_view)::$_0::__invoke(unsigned int *a1, uint64_t a2)
{
  if (a1[12] == 2)
  {
    v2 = *a1;
    v9 = *(a1 + 3);
    v3 = v9;
    *__p = *(a1 + 2);
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    v4 = HIBYTE(v3);
    if (v4 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v4 >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = __p[1];
    }

    (*(*a2 + 96))(a2, v2, v5, v6);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = std::__throw_bad_variant_access[abi:sn200100]();
    dcsctp::CallbackDeferrer::OnAborted(dcsctp::ErrorKind,std::string_view)::$_0::__invoke(v7);
  }
}

void dcsctp::CallbackDeferrer::OnAborted(dcsctp::ErrorKind,std::string_view)::$_0::__invoke(unsigned int *a1, uint64_t a2)
{
  if (a1[12] == 2)
  {
    v2 = *a1;
    v10 = *(a1 + 3);
    v3 = v10;
    *__p = *(a1 + 2);
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    v4 = HIBYTE(v3);
    if (v4 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v4 >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = __p[1];
    }

    (*(*a2 + 104))(a2, v2, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = std::__throw_bad_variant_access[abi:sn200100]();
    dcsctp::CallbackDeferrer::OnConnected(void)::$_0::__invoke(v7, v8);
  }
}

void std::vector<std::pair<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>>::__emplace_back_slow_path<void (*)(std::variant<std::monostate,dcsctp::DcSctpMessage,dcsctp::CallbackDeferrer::Error,dcsctp::CallbackDeferrer::StreamReset,webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,dcsctp::DcSctpSocketCallbacks &),dcsctp::CallbackDeferrer::StreamReset>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 6) + 1;
  if (!(v1 >> 58))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 5 > v1)
    {
      v1 = v2 >> 5;
    }

    v3 = v2 >= 0x7FFFFFFFFFFFFFC0;
    v4 = 0x3FFFFFFFFFFFFFFLL;
    if (!v3)
    {
      v4 = v1;
    }

    if (v4)
    {
      if (!(v4 >> 58))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void dcsctp::CallbackDeferrer::OnStreamsResetFailed(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>,std::string_view)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 3)
  {
    v8 = *a1;
    v2 = *a1;
    v3 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v10 = *(a1 + 40);
    *__p = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v4 = (v3 - v2) >> 1;
    if (v3 == v2)
    {
      v2 = 0;
    }

    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    (*(*a2 + 136))(a2, v2, v4, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v7 = std::__throw_bad_variant_access[abi:sn200100]();
    dcsctp::CallbackDeferrer::OnStreamsResetPerformed(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>)::$_0::__invoke(v7);
  }
}

void dcsctp::CallbackDeferrer::OnStreamsResetPerformed(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 3)
  {
    v9 = std::__throw_bad_variant_access[abi:sn200100]();
    dcsctp::CallbackDeferrer::OnIncomingStreamsReset(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>)::$_0::__invoke(v9);
    return;
  }

  v3 = *a1;
  v2 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = *(a1 + 47);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = v2 - v3;
  v7 = v6 >> 1;
  if (v6)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  (*(*a2 + 144))(a2, v8, v7);
  if (v5 < 0)
  {
    operator delete(v4);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  operator delete(v3);
}

void dcsctp::CallbackDeferrer::OnIncomingStreamsReset(webrtc::ArrayView<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short> const,-4711l>)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 3)
  {
    v9 = std::__throw_bad_variant_access[abi:sn200100]();
    dcsctp::CallbackDeferrer::OnBufferedAmountLow(webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>)::$_0::__invoke(v9);
    return;
  }

  v3 = *a1;
  v2 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = *(a1 + 47);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = v2 - v3;
  v7 = v6 >> 1;
  if (v6)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  (*(*a2 + 152))(a2, v8, v7);
  if (v5 < 0)
  {
    operator delete(v4);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  operator delete(v3);
}

uint64_t dcsctp::CallbackDeferrer::OnBufferedAmountLow(webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>)::$_0::__invoke(unsigned __int16 *a1, uint64_t a2)
{
  if (*(a1 + 12) == 4)
  {
    v3 = *a1;
    v4 = *(*a2 + 160);

    return v4(a2, v3);
  }

  else
  {
    v6 = std::__throw_bad_variant_access[abi:sn200100]();
    return dcsctp::CallbackDeferrer::OnTotalBufferedAmountLow(void)::$_0::__invoke(v6, v7);
  }
}

__n128 webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::TrivialUntypedFunctionArgs<1ul>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/callback_list.h", 39, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v10);
  }

  v10 = a2;
  v11.n128_u64[0] = a3;
  v13 = a4;
  v14 = 0;
  v8 = *(a1 + 8);
  if (v8 >= *(a1 + 16))
  {
    std::vector<webrtc::callback_list_impl::CallbackListReceivers::Callback>::__emplace_back_slow_path<webrtc::callback_list_impl::CallbackListReceivers::Callback>(a1);
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v8 = a2;
  result = v11;
  *(v8 + 24) = v12;
  *(v8 + 8) = result;
  *(v8 + 40) = a4;
  *(v8 + 48) = 0;
  *(a1 + 8) = v8 + 56;
  return result;
}

__n128 webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::NontrivialUntypedFunctionArgs>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/callback_list.h", 39, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v12);
  }

  v8 = a3[1];
  v9 = a3[2];
  v12 = a2;
  v13.n128_u64[0] = *a3;
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 8);
  if (v10 >= *(a1 + 16))
  {
    std::vector<webrtc::callback_list_impl::CallbackListReceivers::Callback>::__emplace_back_slow_path<webrtc::callback_list_impl::CallbackListReceivers::Callback>(a1);
  }

  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v10 = a2;
  result = v13;
  *(v10 + 24) = v14;
  *(v10 + 8) = result;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  *(a1 + 8) = v10 + 56;
  return result;
}

__n128 webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::TrivialUntypedFunctionArgs<1ul>>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/callback_list.h", 46, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v10);
  }

  v10 = 0;
  v11.n128_u64[0] = a2;
  v13 = a3;
  v14 = 0;
  v8 = *(a1 + 8);
  if (v8 >= *(a1 + 16))
  {
    std::vector<webrtc::callback_list_impl::CallbackListReceivers::Callback>::__emplace_back_slow_path<webrtc::callback_list_impl::CallbackListReceivers::Callback>(a1);
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v8 = 0;
  result = v11;
  *(v8 + 24) = v12;
  *(v8 + 8) = result;
  *(v8 + 40) = a3;
  *(v8 + 48) = 0;
  *(a1 + 8) = v8 + 56;
  return result;
}

__n128 webrtc::callback_list_impl::CallbackListReceivers::AddReceiver<webrtc::UntypedFunction::NontrivialUntypedFunctionArgs>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/callback_list.h", 46, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v12);
  }

  v8 = a2[1];
  v9 = a2[2];
  v12 = 0;
  v13.n128_u64[0] = *a2;
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 8);
  if (v10 >= *(a1 + 16))
  {
    std::vector<webrtc::callback_list_impl::CallbackListReceivers::Callback>::__emplace_back_slow_path<webrtc::callback_list_impl::CallbackListReceivers::Callback>(a1);
  }

  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v10 = 0;
  result = v13;
  *(v10 + 24) = v14;
  *(v10 + 8) = result;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  *(a1 + 8) = v10 + 56;
  return result;
}

uint64_t webrtc::callback_list_impl::CallbackListReceivers::CallbackListReceivers(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t *webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(uint64_t *this, const void *a2)
{
  v2 = this;
  v3 = (this[1] - *this) >> 3;
  v4 = 0x6DB6DB6DB6DB6DB7 * v3;
  if (this[1] != *this)
  {
    v5 = 0;
    v6 = this + 3;
    while (1)
    {
      v7 = *this;
      v8 = 0x6DB6DB6DB6DB6DB7 * ((this[1] - *this) >> 3);
      if (v8 <= v5)
      {
LABEL_38:
        __break(1u);
      }

      v9 = v7 + 56 * v5;
      v10 = *v9;
      if (*v9 == a2)
      {
        if (v8 <= v4 - 1)
        {
          goto LABEL_38;
        }

        v11 = v7 + 56 * (v4 - 1);
        if (*v11 == a2)
        {
          if (*v6)
          {
            *v11 = v6;
          }

          goto LABEL_13;
        }

        if ((*v6 & 1) == 0)
        {
          v12 = *(v9 + 24);
          v13 = *(v9 + 8);
          *v9 = *v11;
          v14 = *(v9 + 40);
          *(v9 + 48) = 0;
          v15 = *(v11 + 24);
          *(v9 + 8) = *(v11 + 8);
          *(v9 + 24) = v15;
          *(v9 + 40) = *(v11 + 40);
          *v11 = v10;
          *(v11 + 8) = v13;
          *(v11 + 24) = v12;
          *(v11 + 40) = v14;
          ++v5;
LABEL_13:
          --v4;
        }
      }

      else
      {
        ++v5;
      }

      if (v5 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v5 = 0x6DB6DB6DB6DB6DB7 * v3;
LABEL_15:
  if ((this[3] & 1) == 0)
  {
    v16 = *this;
    v17 = this[1];
    v18 = v17 - *this;
    v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3);
    v20 = v5 - v19;
    if (v5 <= v19)
    {
      if (v5 < v19)
      {
        v25 = v16 + 56 * v5;
        while (v17 != v25)
        {
          v26 = *(v17 - 8);
          if (v26)
          {
            this = v26(v17 - 48, a2);
          }

          v17 -= 56;
        }

        *(v2 + 8) = v25;
      }
    }

    else
    {
      v21 = this[2];
      if (0x6DB6DB6DB6DB6DB7 * ((v21 - v17) >> 3) < v20)
      {
        if (v5 <= 0x492492492492492)
        {
          v22 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v16) >> 3);
          v23 = 2 * v22;
          if (2 * v22 <= v5)
          {
            v23 = v5;
          }

          if (v22 >= 0x249249249249249)
          {
            v24 = 0x492492492492492;
          }

          else
          {
            v24 = v23;
          }

          if (v24 <= 0x492492492492492)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v27 = v17 + 56 * v20;
      v28 = 56 * v5 - 8 * (v18 >> 3);
      do
      {
        if (!v17)
        {
          goto LABEL_38;
        }

        *(v17 + 48) = 0;
        *(v17 + 16) = 0uLL;
        *(v17 + 32) = 0uLL;
        *v17 = 0uLL;
        v17 += 56;
        v28 -= 56;
      }

      while (v28);
      this[1] = v27;
    }
  }

  return this;
}