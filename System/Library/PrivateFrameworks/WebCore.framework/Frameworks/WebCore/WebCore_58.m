BOOL webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace::SatisfiesIceRestart(webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace *this, const webrtc::SessionDescriptionInterface *a2)
{
  v3 = (*(*a2 + 32))(a2);
  v4 = *(v3 + 24);
  v24 = *(v3 + 32);
  if (v4 == v24)
  {
    return 1;
  }

  v5 = (this + 8);
  while (2)
  {
    if ((*(v4 + 71) & 0x80000000) == 0)
    {
      v25 = *(v4 + 48);
      if ((*(v4 + 95) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_8:
      std::string::__init_copy_ctor_external(&__p, *(v4 + 72), *(v4 + 80));
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      goto LABEL_9;
    }

    std::string::__init_copy_ctor_external(&v25, *(v4 + 48), *(v4 + 56));
    if (*(v4 + 95) < 0)
    {
      goto LABEL_8;
    }

LABEL_5:
    __p = *(v4 + 72);
    v6 = *v5;
    if (!*v5)
    {
      break;
    }

LABEL_9:
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v25;
    }

    else
    {
      v7 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v11 = v5;
    do
    {
      while (1)
      {
        v12 = *(v6 + 55);
        v13 = v12 >= 0 ? v6 + 4 : v6[4];
        v14 = v12 >= 0 ? *(v6 + 55) : v6[5];
        v15 = size >= v14 ? v14 : size;
        v16 = memcmp(v13, v7, v15);
        if (!v16)
        {
          break;
        }

LABEL_33:
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

LABEL_22:
        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_50;
        }
      }

      v17 = v14 >= size;
      if (v14 == size)
      {
        v18 = *(v6 + 79);
        if (v18 >= 0)
        {
          v19 = v6 + 7;
        }

        else
        {
          v19 = v6[7];
        }

        if (v18 >= 0)
        {
          v20 = *(v6 + 79);
        }

        else
        {
          v20 = v6[8];
        }

        if (v10 >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v10;
        }

        v16 = memcmp(v19, p_p, v21);
        if (v16)
        {
          goto LABEL_33;
        }

        v17 = v20 >= v10;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

LABEL_49:
      v11 = v6;
      v6 = *v6;
    }

    while (v6);
LABEL_50:
    if (v11 != v5 && (std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(&v25, v11 + 4) & 0x80) == 0)
    {
      v22 = v11 == v5;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_57:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_58:
      operator delete(v25.__r_.__value_.__l.__data_);
      if (v11 != v5)
      {
        return v22;
      }

LABEL_59:
      v4 += 112;
      if (v4 == v24)
      {
        return v22;
      }

      continue;
    }

    break;
  }

  v11 = v5;
  v22 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_53:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  if (v11 == v5)
  {
    goto LABEL_59;
  }

  return v22;
}

void webrtc::SdpOfferAnswerHandler::SetRemoteDescription(uint64_t a1, void (***a2)(void))
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 424);
  if (!v4 || atomic_load_explicit((v4 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v5 = *(a1 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v5 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v5, 0x1000C404A09149ALL);
    }

    if (a2)
    {
      goto LABEL_8;
    }
  }

  else if (a2)
  {
LABEL_8:
    (**a2)(a2);
  }

  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::SdpOfferAnswerHandler::SetRemoteDescription(uint64_t a1, void *a2, void (****a3)(void))
{
  v5 = *(a1 + 136);
  v6 = *(a1 + 424);
  if (!v6 || atomic_load_explicit((v6 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v7 = *(a1 + 424);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v7 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v7 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v7, 0x1000C404A09149ALL);
    }

    v8 = *a3;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *a3;
    if (*a3)
    {
LABEL_8:
      (**v8)(v8);
    }
  }

  *a2 = 0;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::SdpOfferAnswerHandler::ApplyRemoteDescriptionUpdateTransceiverState(uint64_t a1)
{
  if (*(*(a1 + 16) + 96))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    (*(**(a1 + 8) + 64))(*(a1 + 8));
    v2 = (*(**(a1 + 8) + 64))(*(a1 + 8));
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    if (v4 != v3)
    {
      if (((v4 - v3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    (*(**(a1 + 8) + 144))(*(a1 + 8));
  }
}

uint64_t webrtc::SdpOfferAnswerHandler::RemoveStoppedTransceivers(webrtc::SdpOfferAnswerHandler *this)
{
  result = (*(**(this + 1) + 192))(*(this + 1));
  if (result)
  {
    if (*(*(this + 2) + 96))
    {
      (*(**(this + 1) + 64))(*(this + 1));
      v3 = (*(**(this + 1) + 64))(*(this + 1));
      v4 = *(v3 + 48);
      v5 = *(v3 + 56);
      result = v5 - v4;
      if (v5 != v4)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }
  }

  return result;
}

uint64_t webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SignalCompletion(webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation *this, uint64_t a2, char *a3)
{
  result = *(this + 3);
  if (!result)
  {
    return result;
  }

  v5 = this + 64;
  v6 = *(this + 16);
  if (v6)
  {
    a3 = *(this + 32);
    if (a3 != -1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, a3, v5, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v20;
      }

      else
      {
        v12 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      if (size < 0x7FFFFFFFFFFFFFF8)
      {
        if (size > 0x16)
        {
          operator new();
        }

        HIBYTE(v22) = size;
        v14 = (&v21 + size);
        if (&v21 > v12 || v14 <= v12)
        {
          if (size)
          {
            memmove(&v21, v12, size);
          }

          v14->__r_.__value_.__s.__data_[0] = 0;
          if (*(this + 95) < 0)
          {
            operator delete(*(this + 9));
            *(this + 72) = v21;
            *(this + 11) = v22;
            if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            *(this + 72) = v21;
            *(this + 11) = v22;
            if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_24:
              result = *(this + 3);
              v6 = *(this + 16);
              goto LABEL_25;
            }
          }

          operator delete(v20.__r_.__value_.__l.__data_);
          goto LABEL_24;
        }

        __break(1u);
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_25:
  v17 = v6;
  if (*(this + 95) < 0)
  {
    v16 = result;
    std::string::__init_copy_ctor_external(&__p, *(this + 9), *(this + 10));
    result = v16;
  }

  else
  {
    __p = *(this + 3);
  }

  v19[0] = *(this + 24);
  *(v19 + 3) = *(this + 99);
  (*(*result + 32))(result, &v17, a3, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = 0;
  return result;
}

void webrtc::SdpOfferAnswerHandler::SetAssociatedRemoteStreams(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (a3 != a4)
  {
    v9 = (*(**(a1 + 104) + 48))(*(a1 + 104), a3);
    __p[0] = v9;
    if (v9)
    {
      (**v9)(v9);
      std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(&v22);
    }

    {
      {
        operator new();
      }
    }

    pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
    operator new();
  }

  v10 = (*(*a1 + 32))(a1);
  if ((*((*(*v10 + 32))(v10) + 72) & 1) == 0)
  {
    if (*(a1 + 248))
    {
      std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(&v22);
    }

    {
      operator new();
    }

    pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
    webrtc::CreateRandomUuid(__p);
  }

  (*(**a2 + 56))(__p);
  (*(**a2 + 224))(*a2, &v22);
  webrtc::SdpOfferAnswerHandler::RemoveRemoteStreamsIfEmpty(a1, __p[0], __p[1], a6);
  v11 = __p[0];
  if (__p[0])
  {
    v12 = __p[1];
    v13 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v15 = *(v12 - 1);
        v12 -= 8;
        v14 = v15;
        if (v15)
        {
          (*(*v14 + 8))(v14);
        }
      }

      while (v12 != v11);
      v13 = __p[0];
    }

    __p[1] = v11;
    operator delete(v13);
  }

  v16 = v22;
  if (v22)
  {
    v17 = v23;
    v18 = v22;
    if (v23 != v22)
    {
      do
      {
        v20 = *(v17 - 1);
        v17 -= 8;
        v19 = v20;
        if (v20)
        {
          (*(*v19 + 8))(v19);
        }
      }

      while (v17 != v16);
      v18 = v22;
    }

    v23 = v16;
    operator delete(v18);
  }
}

void webrtc::SdpOfferAnswerHandler::UpdateRemoteSendersList(uint64_t a1, unint64_t *a2, int a3, int a4)
{
  v6 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v107 = a4;
  v7 = 144;
  if (!a4)
  {
    v7 = 120;
  }

  v8 = (v6 + v7);
  v9 = *(v6 + v7);
  if (v9 != *(v6 + v7 + 8))
  {
    v11 = &v115 <= "default" && v115.__r_.__value_.__r.__words + 7 > "default";
    v12 = 7;
    do
    {
      v14 = *a2;
      v13 = a2[1];
      if (*a2 != v13)
      {
        v15 = *(v14 + 24);
        v16 = *(v14 + 32);
        if (v15 != v16)
        {
          goto LABEL_19;
        }

LABEL_17:
        while (1)
        {
          v14 += 144;
          if (v14 == v13)
          {
            break;
          }

          v15 = *(v14 + 24);
          v16 = *(v14 + 32);
          if (v15 != v16)
          {
LABEL_19:
            while (*v15 != *(v9 + 48))
            {
              if (++v15 == v16)
              {
                goto LABEL_17;
              }
            }

            if (v15 != v16)
            {
              goto LABEL_22;
            }
          }
        }

LABEL_32:
        v23 = 0;
        memset(&__p, 0, sizeof(__p));
        goto LABEL_71;
      }

LABEL_22:
      if (v14 == v13)
      {
        goto LABEL_32;
      }

      memset(&__p, 0, sizeof(__p));
      if (!v14)
      {
LABEL_70:
        v23 = 0;
        goto LABEL_71;
      }

      v17 = *(v14 + 96);
      if (v17 == *(v14 + 104))
      {
        *(&v114.__r_.__value_.__s + 23) = 0;
        v114.__r_.__value_.__s.__data_[0] = 0;
        v20 = 0;
      }

      else if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v114, *v17, *(v17 + 1));
        size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        v20 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v114.__r_.__value_.__l.__size_;
        }

        if (size)
        {
LABEL_29:
          v21 = *(v14 + 96);
          if (v21 == *(v14 + 104))
          {
            *(&v115.__r_.__value_.__s + 23) = 0;
            v115.__r_.__value_.__s.__data_[0] = 0;
          }

          else if (*(v21 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v115, *v21, *(v21 + 1));
            v20 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v22 = *v21;
            v115.__r_.__value_.__r.__words[2] = *(v21 + 2);
            *&v115.__r_.__value_.__l.__data_ = v22;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v18 = *v17;
        v114.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&v114.__r_.__value_.__l.__data_ = v18;
        v19 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        v20 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = *(&v18 + 1);
        }

        if (v19)
        {
          goto LABEL_29;
        }
      }

      *(&v115.__r_.__value_.__s + 23) = 7;
      if (v11)
      {
        goto LABEL_249;
      }

      strcpy(&v115, "default");
LABEL_42:
      __p = v115;
      *(&v115.__r_.__value_.__s + 23) = 0;
      v115.__r_.__value_.__s.__data_[0] = 0;
      if (v20 < 0)
      {
        operator delete(v114.__r_.__value_.__l.__data_);
      }

      v25 = *(v14 + 23);
      if (v25 >= 0)
      {
        v26 = *(v14 + 23);
      }

      else
      {
        v26 = *(v14 + 8);
      }

      v27 = *(v9 + 47);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v9 + 32);
      }

      if (v26 != v27)
      {
        goto LABEL_70;
      }

      v29 = v25 >= 0 ? v14 : *v14;
      v30 = v28 >= 0 ? (v9 + 24) : *(v9 + 24);
      if (memcmp(v29, v30, v26))
      {
        goto LABEL_70;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = __p.__r_.__value_.__l.__size_;
      }

      v32 = *(v9 + 23);
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v9 + 8);
      }

      if (v31 != v32)
      {
        goto LABEL_70;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v33 >= 0)
      {
        v35 = v9;
      }

      else
      {
        v35 = *v9;
      }

      v23 = memcmp(p_p, v35, v31) == 0;
LABEL_71:
      v36 = *(v9 + 23);
      if (v36 < 0)
      {
        if (*(v9 + 8) != 7)
        {
LABEL_91:
          if (v23)
          {
            goto LABEL_92;
          }

          goto LABEL_83;
        }

        v37 = *v9;
      }

      else
      {
        v37 = v9;
        if (v36 != 7)
        {
          goto LABEL_91;
        }
      }

      v38 = *v37;
      v39 = *(v37 + 3);
      v41 = v38 == 1634100580 && v39 == 1953264993;
      if ((v41 & a3 | v23))
      {
LABEL_92:
        v9 += 56;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          continue;
        }

        goto LABEL_11;
      }

LABEL_83:
      v42 = (*(**(a1 + 8) + 64))(*(a1 + 8));
      v43 = (*(**(a1 + 104) + 48))(*(a1 + 104), v9);
      webrtc::RtpTransmissionManager::OnRemoteSenderRemoved(v42, v9, v43, v107);
      v44 = v8[1];
      if (v44 == v9)
      {
        goto LABEL_249;
      }

      if ((v9 + 56) != v44)
      {
        v45 = v9;
        do
        {
          if (*(v45 + 23) < 0)
          {
            operator delete(*v45);
          }

          *v45 = *(v45 + 56);
          *(v45 + 16) = *(v45 + 72);
          *(v45 + 79) = 0;
          *(v45 + 56) = 0;
          if (*(v45 + 47) < 0)
          {
            operator delete(*(v45 + 24));
          }

          *(v45 + 24) = *(v45 + 80);
          *(v45 + 40) = *(v45 + 96);
          *(v45 + 103) = 0;
          *(v45 + 80) = 0;
          *(v45 + 48) = *(v45 + 104);
          v46 = (v45 + 56);
          v47 = (v45 + 112);
          v45 += 56;
        }

        while (v47 != v44);
        v44 = v8[1];
        if (v44 == v46)
        {
          goto LABEL_103;
        }

        while (1)
        {
LABEL_100:
          if (*(v44 - 9) < 0)
          {
            operator delete(*(v44 - 4));
            v48 = v44 - 7;
            if ((*(v44 - 33) & 0x80000000) == 0)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v48 = v44 - 7;
            if ((*(v44 - 33) & 0x80000000) == 0)
            {
LABEL_99:
              v44 = v48;
              if (v48 == v46)
              {
                goto LABEL_103;
              }

              continue;
            }
          }

          operator delete(*v48);
          v44 = v48;
          if (v48 == v46)
          {
            goto LABEL_103;
          }
        }
      }

      v46 = v9;
      if (v44 != v9)
      {
        goto LABEL_100;
      }

LABEL_103:
      v8[1] = v46;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_11:
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    while (v9 != v8[1]);
  }

  v12 = *a2;
  v106 = a2[1];
  if (*a2 != v106)
  {
    v50 = &v115 <= "default" && v115.__r_.__value_.__r.__words + 7 > "default";
    v105 = v50;
    v109 = v8;
    while (1)
    {
      if (*(v12 + 24) == *(v12 + 32))
      {
        goto LABEL_188;
      }

      v51 = *(v12 + 96);
      if (v51 == *(v12 + 104))
      {
        break;
      }

      if (*(v51 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v51, *(v51 + 1));
        v61 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v61 = __p.__r_.__value_.__l.__size_;
        }

        if (!v61)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v52 = *v51;
        __p.__r_.__value_.__r.__words[2] = *(v51 + 2);
        *&__p.__r_.__value_.__l.__data_ = v52;
        v53 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v53 = *(&v52 + 1);
        }

        if (!v53)
        {
          goto LABEL_125;
        }
      }

      v55 = *(v12 + 96);
      if (v55 == *(v12 + 104))
      {
        *(&v115.__r_.__value_.__s + 23) = 0;
        v115.__r_.__value_.__s.__data_[0] = 0;
        if (v54 < 0)
        {
          goto LABEL_127;
        }
      }

      else
      {
        if ((*(v55 + 23) & 0x80000000) == 0)
        {
          v56 = *v55;
          v115.__r_.__value_.__r.__words[2] = *(v55 + 2);
          *&v115.__r_.__value_.__l.__data_ = v56;
          if ((v54 & 0x80) == 0)
          {
            goto LABEL_128;
          }

LABEL_127:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_128;
        }

        std::string::__init_copy_ctor_external(&v115, *v55, *(v55 + 1));
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_127;
        }
      }

LABEL_128:
      v57 = *(v12 + 24);
      if (v57 == *(v12 + 32))
      {
        v58 = 0;
      }

      else
      {
        v58 = *v57;
      }

      v59 = (*(**(a1 + 104) + 48))(*(a1 + 104), &v115);
      if (!v59)
      {
        {
          operator new();
        }

        pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
        operator new();
      }

      v60 = v59;
      (**v59)(v59);
      (*(**(a1 + 8) + 64))(*(a1 + 8));
      v62 = *v109;
      v63 = v109[1];
      v64 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      if (*v109 != v63)
      {
        if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v115.__r_.__value_.__l.__size_;
        }

        if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v115;
        }

        else
        {
          v66 = v115.__r_.__value_.__r.__words[0];
        }

        v67 = *(v12 + 23);
        if (v67 >= 0)
        {
          v68 = *(v12 + 23);
        }

        else
        {
          v68 = *(v12 + 8);
        }

        if (v67 >= 0)
        {
          v69 = v12;
        }

        else
        {
          v69 = *v12;
        }

        do
        {
          v70 = *(v62 + 23);
          v71 = v70;
          if ((v70 & 0x80u) != 0)
          {
            v70 = *(v62 + 8);
          }

          if (v70 == v65)
          {
            v72 = v71 >= 0 ? v62 : *v62;
            if (!memcmp(v72, v66, v65))
            {
              v73 = *(v62 + 47);
              v74 = v73;
              if ((v73 & 0x80u) != 0)
              {
                v73 = *(v62 + 32);
              }

              if (v73 == v68)
              {
                v75 = v74 >= 0 ? (v62 + 24) : *(v62 + 24);
                if (!memcmp(v75, v69, v68))
                {
                  goto LABEL_183;
                }
              }
            }
          }

          v62 += 56;
        }

        while (v62 != v63);
      }

      if (v64 < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
        if (*(v12 + 23) < 0)
        {
LABEL_179:
          std::string::__init_copy_ctor_external(&v112, *v12, *(v12 + 8));
          v113 = v58;
          v77 = v109;
          v78 = v109[1];
          if (v78 >= v109[2])
          {
LABEL_180:
            std::vector<webrtc::RtpSenderInfo>::__emplace_back_slow_path<webrtc::RtpSenderInfo>(v77);
          }

          goto LABEL_175;
        }
      }

      else
      {
        __p = v115;
        if (*(v12 + 23) < 0)
        {
          goto LABEL_179;
        }
      }

      v76 = *v12;
      v112.__r_.__value_.__r.__words[2] = *(v12 + 16);
      *&v112.__r_.__value_.__l.__data_ = v76;
      v113 = v58;
      v77 = v109;
      v78 = v109[1];
      if (v78 >= v109[2])
      {
        goto LABEL_180;
      }

LABEL_175:
      if (!v78)
      {
        goto LABEL_249;
      }

      v79 = *&__p.__r_.__value_.__l.__data_;
      *(v78 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v78 = v79;
      memset(&__p, 0, sizeof(__p));
      v80 = v112.__r_.__value_.__r.__words[2];
      *(v78 + 24) = *&v112.__r_.__value_.__l.__data_;
      *(v78 + 40) = v80;
      memset(&v112, 0, sizeof(v112));
      *(v78 + 48) = v113;
      v77[1] = v78 + 56;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v81 = (*(**(a1 + 8) + 64))(*(a1 + 8));
      v82 = v77[1];
      if (*v77 == v82)
      {
        goto LABEL_249;
      }

      webrtc::RtpTransmissionManager::OnRemoteSenderAdded(v81, v82 - 56, v60, v107);
LABEL_183:
      (*v60)[1](v60);
      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      v12 += 144;
      v8 = v109;
      if (v12 == v106)
      {
        goto LABEL_187;
      }
    }

    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v54 = 0;
LABEL_125:
    *(&v115.__r_.__value_.__s + 23) = 7;
    if (v105)
    {
      goto LABEL_249;
    }

    strcpy(&v115, "default");
    if (v54 < 0)
    {
      goto LABEL_127;
    }

    goto LABEL_128;
  }

LABEL_187:
  if (a3)
  {
LABEL_188:
    v83 = *(a1 + 104);
    *(&__p.__r_.__value_.__s + 23) = 7;
    v12 = "default";
    if (&__p <= "default" && __p.__r_.__value_.__r.__words + 7 > "default")
    {
      goto LABEL_249;
    }

    strcpy(&__p, "default");
    v84 = (*(*v83 + 48))(v83, &__p);
    v85 = v84;
    if (v84)
    {
      (**v84)(v84);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v85)
      {
        goto LABEL_196;
      }
    }

    else if (!v85)
    {
LABEL_196:
      {
        goto LABEL_250;
      }

      while (1)
      {
        pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
        *(&__p.__r_.__value_.__s + 23) = 7;
        if (&__p > v12 || __p.__r_.__value_.__r.__words + 7 <= v12)
        {
          strcpy(&__p, "default");
          operator new();
        }

LABEL_249:
        __break(1u);
LABEL_250:
        {
          operator new();
        }
      }
    }

    v86 = "defaultv0";
    if (!v107)
    {
      v86 = "defaulta0";
    }

    *(&v115.__r_.__value_.__s + 23) = 9;
    if (&v115 <= v86 && &v115.__r_.__value_.__r.__words[1] + 1 > v86)
    {
      goto LABEL_249;
    }

    v115.__r_.__value_.__r.__words[0] = *v86;
    LOWORD(v115.__r_.__value_.__r.__words[1]) = *(v86 + 8);
    (*(**(a1 + 8) + 64))(*(a1 + 8));
    *(&__p.__r_.__value_.__s + 23) = 7;
    if (&__p <= "default" && __p.__r_.__value_.__r.__words + 7 > "default")
    {
      goto LABEL_249;
    }

    strcpy(&__p, "default");
    v88 = *v8;
    v87 = v8[1];
    if (*v8 != v87)
    {
      v89 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v115.__r_.__value_.__l.__size_;
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v115;
      }

      else
      {
        v91 = v115.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v92 = *(v88 + 23);
        v93 = v92;
        if ((v92 & 0x80u) != 0)
        {
          v92 = *(v88 + 8);
        }

        if (v92 == 7)
        {
          v94 = v93 >= 0 ? v88 : *v88;
          v95 = *v94;
          v96 = *(v94 + 3);
          if (v95 == LODWORD(__p.__r_.__value_.__l.__data_) && v96 == *(__p.__r_.__value_.__r.__words + 3))
          {
            v98 = *(v88 + 47);
            v99 = v98;
            if ((v98 & 0x80u) != 0)
            {
              v98 = *(v88 + 32);
            }

            if (v98 == v90)
            {
              v100 = v99 >= 0 ? (v88 + 24) : *(v88 + 24);
              if (!memcmp(v100, v91, v90))
              {
                break;
              }
            }
          }
        }

        v88 += 56;
        if (v88 == v87)
        {
          goto LABEL_235;
        }
      }

      if ((v89 & 0x80) == 0)
      {
        goto LABEL_233;
      }

LABEL_248:
      operator delete(v115.__r_.__value_.__l.__data_);
LABEL_233:
      (*v85)[1](v85);
      return;
    }

LABEL_235:
    *(&v114.__r_.__value_.__s + 23) = 7;
    if (&v114 <= "default" && v114.__r_.__value_.__r.__words + 7 > "default")
    {
      goto LABEL_249;
    }

    strcpy(&v114, "default");
    __p = v114;
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v112, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
      v87 = v8[1];
      v113 = 0;
      if (v87 < v8[2])
      {
LABEL_239:
        if (!v87)
        {
          goto LABEL_249;
        }

        v101 = *&__p.__r_.__value_.__l.__data_;
        *(v87 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v87 = v101;
        memset(&__p, 0, sizeof(__p));
        v102 = v112.__r_.__value_.__r.__words[2];
        *(v87 + 24) = *&v112.__r_.__value_.__l.__data_;
        *(v87 + 40) = v102;
        memset(&v112, 0, sizeof(v112));
        *(v87 + 48) = v113;
        v8[1] = v87 + 56;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_246;
          }
        }

        else if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_246:
          v103 = (*(**(a1 + 8) + 64))(*(a1 + 8));
          v104 = v8[1];
          if (*v8 == v104)
          {
            goto LABEL_249;
          }

          webrtc::RtpTransmissionManager::OnRemoteSenderAdded(v103, v104 - 56, v85, v107);
          if ((*(&v115.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_233;
          }

          goto LABEL_248;
        }

        operator delete(v114.__r_.__value_.__l.__data_);
        goto LABEL_246;
      }
    }

    else
    {
      v112 = v115;
      v113 = 0;
      if (v87 < v8[2])
      {
        goto LABEL_239;
      }
    }

    std::vector<webrtc::RtpSenderInfo>::__emplace_back_slow_path<webrtc::RtpSenderInfo>(v8);
  }
}

void webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v338 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    return;
  }

  v5 = a1;
  if (!*a2)
  {
    v321 = 10;
    operator new();
  }

  if (!*(a1 + 256))
  {
    if ((*(**a2 + 56))(*a2) == 3)
    {
      v25 = (*(**(v5 + 8) + 192))(*(v5 + 8));
      v26 = *a3;
      if (!v25)
      {
        v311 = 1;
        operator new();
      }

      v27 = (*(**a2 + 56))();
      webrtc::SdpOfferAnswerHandler::Rollback(v312, v5, v27);
      (*(*v26 + 32))(v26, v312);
      if (v314 < 0)
      {
        operator delete(v313);
      }

      return;
    }

    v28 = (*(**a2 + 24))();
    webrtc::SdpOfferAnswerHandler::ValidateSessionDescription(&v306, v5, *a2, 0, v310);
    if (v306)
    {
      v29 = (*(**a2 + 56))();
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      v37 = *a3;
      v38 = SHIBYTE(v336[1]);
      if ((SHIBYTE(v336[1]) & 0x8000000000000000) != 0)
      {
        p_src = __src;
        v38 = v336[0];
        v300 = v306;
        if (v336[0] > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_403;
        }

        if (v336[0] <= 0x16)
        {
LABEL_33:
          v302 = v38;
          v40 = (&v301 + v38);
          if (&v301 > p_src || v40 <= p_src)
          {
            if (v38)
            {
              memmove(&v301, p_src, v38);
            }

            *v40 = 0;
            v303 = 0;
            v304 = 0;
            v305 = 0;
            (*(*v37 + 32))(v37, &v300);
            if (v302 < 0)
            {
              operator delete(v301);
            }

            if ((SHIBYTE(v336[1]) & 0x80000000) == 0)
            {
              goto LABEL_186;
            }

            v68 = __src;
            goto LABEL_185;
          }

          goto LABEL_398;
        }
      }

      else
      {
        v300 = v306;
        p_src = &__src;
        if (SHIBYTE(v336[1]) <= 0x16)
        {
          goto LABEL_33;
        }
      }

      operator new();
    }

    v41 = (*(**a2 + 56))();
    v42 = 72;
    if (!v41)
    {
      v42 = 64;
    }

    v43 = *(v5 + v42);
    (*(*v5 + 24))(v5);
    v46 = webrtc::DetermineSdpMungingType(*a2, v43, v44);
    if (*(v5 + 402))
    {
LABEL_39:
      v282 = v46;
      v283 = a3;
      v296 = 0;
      v297 = 0;
      v298 = 0;
      v286 = v5;
      if (v43)
      {
        v47 = (*(*v43 + 24))(v43);
        v48 = v47[1] - *v47;
        v49 = (*(**a2 + 24))();
        if (v48 == v49[1] - *v49)
        {
          v50 = 0;
          v3 = 0x12F684BDA12F684;
          v284 = v43;
          v285 = a2;
          while (1)
          {
            v51 = (*(**a2 + 24))();
            if (v50 >= 0xCCCCCCCCCCCCCCCDLL * ((v51[1] - *v51) >> 3))
            {
              goto LABEL_52;
            }

            v52 = (*(*v43 + 24))(v43);
            if (0xCCCCCCCCCCCCCCCDLL * ((v52[1] - *v52) >> 3) <= v50)
            {
              goto LABEL_398;
            }

            v53 = *(*v52 + 40 * v50 + 32);
            v55 = *(v53 + 280);
            v54 = *(v53 + 288);
            if (v54 != v55)
            {
              break;
            }

            v56 = (*(**a2 + 24))();
            if (0xCCCCCCCCCCCCCCCDLL * ((v56[1] - *v56) >> 3) <= v50)
            {
              goto LABEL_398;
            }

            v57 = *(*v56 + 40 * v50 + 32);
            v59 = *(v57 + 280);
            v58 = *(v57 + 288);
            if (v58 != v59)
            {
              if (0x84BDA12F684BDA13 * ((v58 - v59) >> 3) <= 0x12F684BDA12F684)
              {
                operator new();
              }

LABEL_402:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            ++v50;
          }

          if (0x84BDA12F684BDA13 * ((v54 - v55) >> 3) <= 0x12F684BDA12F684)
          {
            operator new();
          }

          goto LABEL_402;
        }
      }

LABEL_52:
      v284 = (*(**a2 + 56))();
      v60 = *a2;
      *a2 = 0;
      (*(**(v5 + 8) + 280))();
      v61 = (*(*v5 + 24))(v5);
      v62 = (*(*v60 + 56))(v60);
      v63 = *(v5 + 40);
      if (v62 == 2)
      {
        v64 = 40;
        if (!v63)
        {
          v64 = 32;
        }

        v63 = *(v5 + v64);
        *(v5 + v64) = 0;
        v65 = *(v5 + 32);
        *(v5 + 32) = v60;
        if (v65)
        {
          (*(*v65 + 8))(v65);
        }

        v66 = *(v5 + 40);
        *(v5 + 40) = 0;
        if (v66)
        {
          (*(*v66 + 8))(v66);
        }

        v67 = *(v5 + 48);
        *(v5 + 48) = *(v5 + 56);
        *(v5 + 56) = 0;
        if (v67)
        {
          (*(*v67 + 8))(v67);
        }
      }

      else
      {
        *(v5 + 40) = v60;
      }

      if ((*(v5 + 401) & 1) == 0)
      {
        *(v5 + 400) = v62 == 0;
        *(v5 + 401) = 1;
      }

      if ((*(v5 + 89) & 1) == 0)
      {
        if ((*(*v5 + 32))(v5))
        {
          v77 = 256;
        }

        else
        {
          v77 = 257;
        }

        *(v5 + 88) = v77;
      }

      v78 = (*(*v5 + 24))(v5);
      v79 = (*(*v5 + 32))(v5);
      v80 = (*(**(v5 + 8) + 104))(*(v5 + 8));
      v81 = (*(*v78 + 32))(v78);
      if (v79)
      {
        v82 = (*(*v79 + 32))(v79);
      }

      else
      {
        v82 = 0;
      }

      v3 = &v325;
      webrtc::JsepTransportController::SetLocalDescription(v80, v62, v81, v82, &__src);
      if (__src)
      {
        LODWORD(v333.__r_.__value_.__l.__data_) = __src;
        *&v333.__r_.__value_.__r.__words[1] = *v336;
        *v334 = v336[2];
        memset(v336, 0, sizeof(v336));
        *&v334[8] = v337[0];
        *&v334[11] = *(v337 + 3);
        v83 = v283;
        v84 = v282;
        goto LABEL_140;
      }

      v285 = v63;
      if ((*(**(v5 + 8) + 192))(*(v5 + 8)))
      {
        v85 = (*(*v5 + 24))(v5);
        v86 = (*(*v5 + 32))(v5);
        webrtc::SdpOfferAnswerHandler::UpdateTransceiversAndDataChannels(&v333, v5, 0, v85, v61, v86, v310);
        data = v333.__r_.__value_.__l.__data_;
        LODWORD(__src) = v333.__r_.__value_.__l.__data_;
        if (SHIBYTE(v336[2]) < 0)
        {
          operator delete(v336[0]);
          data = __src;
        }

        *v336 = *&v333.__r_.__value_.__r.__words[1];
        v336[2] = *v334;
        v337[0] = *&v334[8];
        *(v337 + 3) = *&v334[11];
        if (data)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
LABEL_137:
            webrtc::webrtc_logging_impl::Log("\r\t\t\t\t", v88, v89, v90, v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

LABEL_138:
          LODWORD(v333.__r_.__value_.__l.__data_) = __src;
          *&v333.__r_.__value_.__r.__words[1] = *v336;
          *v334 = v336[2];
          memset(v336, 0, sizeof(v336));
          *&v334[8] = v337[0];
          *&v334[11] = *(v337 + 3);
          goto LABEL_139;
        }

        if (*(*(v5 + 16) + 96))
        {
          v331 = 0;
          v330 = 0;
          v332 = 0;
          v328 = 0uLL;
          v329 = 0;
          (*(**(v5 + 8) + 64))(*(v5 + 8));
          v110 = (*(**(v5 + 8) + 64))(*(v5 + 8));
          v111 = *(v110 + 48);
          v112 = *(v110 + 56);
          if (v112 != v111)
          {
            if (((v112 - v111) & 0x8000000000000000) == 0)
            {
              operator new();
            }

LABEL_405:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v154 = (*(**(v5 + 8) + 144))(*(v5 + 8));
          v155 = v330;
          v156 = v331;
          while (v155 != v156)
          {
            (*(**v155 + 56))(&v327);
            (*(*v154 + 152))(v154, &v327);
            if (v327)
            {
              (*(*v327 + 8))(v327);
            }

            v155 += 8;
          }

          v157 = *(&v328 + 1);
          v158 = v328;
          if (v328 == *(&v328 + 1))
          {
            if (!v328)
            {
              goto LABEL_219;
            }
          }

          else
          {
            v159 = v328;
            do
            {
              v160 = *v159;
              v326 = v160;
              if (v160)
              {
                (**v160)(v160);
              }

              (*(*v154 + 32))(v154, &v326);
              if (v326)
              {
                (*v326)[1](v326);
              }

              ++v159;
            }

            while (v159 != v157);
            if (!v158)
            {
              goto LABEL_219;
            }

            do
            {
              v162 = *--v157;
              v161 = v162;
              if (v162)
              {
                (*(*v161 + 8))(v161);
              }
            }

            while (v157 != v158);
          }

          operator delete(v158);
LABEL_219:
          v163 = v330;
          if (v330)
          {
            v164 = v331;
            v165 = v330;
            if (v331 != v330)
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
              v165 = v330;
            }

            v331 = v163;
            operator delete(v165);
          }
        }
      }

      else
      {
        if (!v62)
        {
          v113 = (*(*v5 + 24))(v5);
          v114 = (*(*v113 + 32))(v113);
          webrtc::SdpOfferAnswerHandler::CreateChannels(&v333, v5, v114);
          v115 = v333.__r_.__value_.__l.__data_;
          LODWORD(__src) = v333.__r_.__value_.__l.__data_;
          if (SHIBYTE(v336[2]) < 0)
          {
            operator delete(v336[0]);
            v115 = __src;
          }

          *v336 = *&v333.__r_.__value_.__r.__words[1];
          v336[2] = *v334;
          v337[0] = *&v334[8];
          *(v337 + 3) = *&v334[11];
          if (v115)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              goto LABEL_137;
            }

            goto LABEL_138;
          }
        }

        v96 = (*(*v5 + 24))(v5);
        v97 = (*(*v96 + 32))(v96);
        webrtc::SdpOfferAnswerHandler::RemoveUnusedChannels(v5, v97);
      }

      v98 = (*(*v5 + 24))(v5);
      (*(*v98 + 32))(v98);
      webrtc::SdpOfferAnswerHandler::UpdateSessionState(&v333, v5, v62, 0, v310);
      v99 = v333.__r_.__value_.__l.__data_;
      LODWORD(__src) = v333.__r_.__value_.__l.__data_;
      if (SHIBYTE(v336[2]) < 0)
      {
        operator delete(v336[0]);
        v99 = __src;
      }

      *v336 = *&v333.__r_.__value_.__r.__words[1];
      v336[2] = *v334;
      v337[0] = *&v334[8];
      *(v337 + 3) = *&v334[11];
      if (v99)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          goto LABEL_137;
        }

        goto LABEL_138;
      }

      webrtc::SdpOfferAnswerHandler::UseCandidatesInRemoteDescription(v5);
      std::__tree<webrtc::SocketAddress>::destroy(v5 + 200, *(v5 + 208));
      *(v5 + 208) = 0;
      *(v5 + 216) = 0;
      *(v5 + 200) = v5 + 208;
      if (*(v5 + 256))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&v333, v5);
          v330 = "INTERNAL_ERROR";
          v331 = 14;
          webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v100, v101, v102, v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v333.__r_.__value_.__l.__data_);
          }
        }

        webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&v330, v5);
        v107 = SHIBYTE(v332);
        if ((SHIBYTE(v332) & 0x8000000000000000) != 0)
        {
          v108 = v330;
          v109 = v331;
          LODWORD(v333.__r_.__value_.__l.__data_) = 10;
          if (v331 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_403;
          }
        }

        else
        {
          LODWORD(v333.__r_.__value_.__l.__data_) = 10;
          v108 = &v330;
          v109 = SHIBYTE(v332);
        }

        if (v109 > 0x16)
        {
          operator new();
        }

        v334[7] = v109;
        v153 = (&v333.__r_.__value_.__r.__words[1] + v109);
        if (&v333.__r_.__value_.__r.__words[1] <= v108 && v153 > v108)
        {
          goto LABEL_398;
        }

        if (v109)
        {
          memmove(&v333.__r_.__value_.__r.__words[1], v108, v109);
        }

        *v153 = 0;
        *&v334[8] = 0;
        v334[12] = 0;
        v334[14] = 0;
        if (v107 < 0)
        {
          operator delete(v330);
        }

LABEL_139:
        v83 = v283;
        v84 = v282;
        v63 = v285;
        goto LABEL_140;
      }

      webrtc::SdpOfferAnswerHandler::AllocateSctpSids(v5);
      v63 = v285;
      if (*(*(v5 + 16) + 96))
      {
        v332 = 0;
        v331 = 0;
        v330 = &v331;
        v116 = (*(*v5 + 24))(v5);
        v117 = (*(*v116 + 32))(v116);
        v118 = *v117;
        v280 = v117[1];
        if (*v117 != v280)
        {
          while (1)
          {
            v119 = *(v118 + 32);
            v5 = *(v119 + 96);
            v281 = *(v119 + 104);
            if (v5 != v281)
            {
              break;
            }

LABEL_131:
            v118 += 40;
            if (v118 == v280)
            {
              goto LABEL_132;
            }
          }

          while (1)
          {
            v120 = *(v5 + 24);
            if (v120 != *(v5 + 32))
            {
              break;
            }

            v5 += 144;
            v3 = &v325;
            if (v5 == v281)
            {
              goto LABEL_131;
            }
          }

          v121 = *v120;
          v122 = v331;
          if (!v331)
          {
LABEL_129:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v123 = v122;
              v124 = *(v122 + 28);
              if (v121 >= v124)
              {
                break;
              }

              v122 = *v123;
              if (!*v123)
              {
                goto LABEL_129;
              }
            }

            if (v124 >= v121)
            {
              break;
            }

            v122 = v123[1];
            if (!v122)
            {
              goto LABEL_129;
            }
          }

          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
          {
            v5 = v286;
            v3 = &v325;
            goto LABEL_334;
          }

          v324.__r_.__value_.__r.__words[2] = 0x1600000000000000;
          *&v324.__r_.__value_.__l.__data_ = 0uLL;
          v213 = absl::numbers_internal::FastIntToBuffer(v121, &v324, v209);
          v219 = v213 - &v324;
          v3 = &v325;
          if ((SHIBYTE(v324.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (v324.__r_.__value_.__l.__size_ < v219)
            {
              goto LABEL_406;
            }

            v220 = v324.__r_.__value_.__r.__words[0];
            v324.__r_.__value_.__l.__size_ = v213 - &v324;
          }

          else
          {
            if (v219 > SHIBYTE(v324.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_406;
            }

            *(&v324.__r_.__value_.__s + 23) = v213 - &v324;
            v220 = &v324;
          }

          v220->__r_.__value_.__s.__data_[v219] = 0;
          if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v324.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v324.__r_.__value_.__l.__size_;
          }

          if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v235 = 22;
          }

          else
          {
            v235 = (v324.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if (v235 - size >= 0xF)
          {
            if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v236 = &v324;
            }

            else
            {
              v236 = v324.__r_.__value_.__r.__words[0];
            }

            v237 = "Duplicate ssrc ";
            if (size)
            {
              if ((size & 0x8000000000000000) != 0)
              {
                goto LABEL_398;
              }

              v238 = v236 + size <= "Duplicate ssrc " || v236 > "Duplicate ssrc ";
              v239 = 15;
              if (v238)
              {
                v239 = 0;
              }

              v237 = &aDuplicateSsrc[v239];
              v240 = &v324;
              if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v240 = v324.__r_.__value_.__r.__words[0];
              }

              memmove(&v240->__r_.__value_.__r.__words[1] + 7, v236, size);
            }

            v236->__r_.__value_.__r.__words[0] = *v237;
            *(v236->__r_.__value_.__r.__words + 7) = *(v237 + 7);
            v241 = size + 15;
            if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
            {
              v324.__r_.__value_.__l.__size_ = size + 15;
            }

            else
            {
              *(&v324.__r_.__value_.__s + 23) = v241 & 0x7F;
            }

            v236->__r_.__value_.__s.__data_[v241] = 0;
            v3 = &v325;
          }

          else
          {
            std::string::__grow_by_and_replace(&v324, v235, size - v235 + 15, size, 0, 0, 0xFuLL, "Duplicate ssrc ");
          }

          v242 = v324.__r_.__value_.__r.__words[2];
          v325 = v324;
          memset(&v324, 0, sizeof(v324));
          v243 = HIBYTE(v242);
          v244 = SHIBYTE(v242);
          v245 = (v242 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v244 >= 0)
          {
            v246 = 22;
          }

          else
          {
            v246 = v245;
          }

          if (v244 >= 0)
          {
            v247 = v243;
          }

          else
          {
            v247 = v325.__r_.__value_.__l.__size_;
          }

          if (v246 - v247 >= 0xF)
          {
            v248 = v244 < 0;
            v249 = &v325;
            if (v248)
            {
              v249 = v325.__r_.__value_.__r.__words[0];
            }

            v250 = v249 + v247;
            if (v249 + v247 <= " is not allowed" && v250 + 15 > " is not allowed")
            {
              goto LABEL_398;
            }

            qmemcpy(v250, " is not allowed", 15);
            v251 = v247 + 15;
            if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
            {
              v325.__r_.__value_.__l.__size_ = v247 + 15;
            }

            else
            {
              *(&v325.__r_.__value_.__s + 23) = v251 & 0x7F;
            }

            v249->__r_.__value_.__s.__data_[v251] = 0;
            v5 = v286;
            v3 = &v325;
          }

          else
          {
            std::string::__grow_by_and_replace(&v325, v246, v247 - v246 + 15, v247, v247, 0, 0xFuLL, " is not allowed");
            v5 = v286;
          }

          v328 = *&v325.__r_.__value_.__l.__data_;
          v329 = v325.__r_.__value_.__r.__words[2];
          memset(&v325, 0, sizeof(v325));
          v322 = "INVALID_PARAMETER";
          v323 = 17;
          webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v246, v214, v247, v215, v216, v217, v218, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          if (SHIBYTE(v329) < 0)
          {
            operator delete(v328);
            if ((SHIBYTE(v325.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_333:
              if ((SHIBYTE(v324.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_334;
              }

LABEL_365:
              operator delete(v324.__r_.__value_.__l.__data_);
LABEL_334:
              v324.__r_.__value_.__r.__words[2] = 0x1600000000000000;
              *&v324.__r_.__value_.__l.__data_ = 0uLL;
              v252 = absl::numbers_internal::FastIntToBuffer(v121, &v324, v209);
              v253 = v252 - &v324;
              if ((SHIBYTE(v324.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                if (v324.__r_.__value_.__l.__size_ >= v253)
                {
                  v254 = v324.__r_.__value_.__r.__words[0];
                  v324.__r_.__value_.__l.__size_ = v252 - &v324;
                  goto LABEL_339;
                }
              }

              else if (v253 <= SHIBYTE(v324.__r_.__value_.__r.__words[2]))
              {
                *(&v324.__r_.__value_.__s + 23) = v252 - &v324;
                v254 = &v324;
LABEL_339:
                v254->__r_.__value_.__s.__data_[v253] = 0;
                if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v255 = HIBYTE(v324.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v255 = v324.__r_.__value_.__l.__size_;
                }

                if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v256 = 22;
                }

                else
                {
                  v256 = (v324.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if (v256 - v255 >= 0xF)
                {
                  if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v257 = &v324;
                  }

                  else
                  {
                    v257 = v324.__r_.__value_.__r.__words[0];
                  }

                  v258 = "Duplicate ssrc ";
                  if (v255)
                  {
                    if ((v255 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_398;
                    }

                    v259 = v257 + v255 <= "Duplicate ssrc " || v257 > "Duplicate ssrc ";
                    v260 = 15;
                    if (v259)
                    {
                      v260 = 0;
                    }

                    v258 = &aDuplicateSsrc[v260];
                    v261 = &v324;
                    if ((v324.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v261 = v324.__r_.__value_.__r.__words[0];
                    }

                    memmove(&v261->__r_.__value_.__r.__words[1] + 7, v257, v255);
                  }

                  v257->__r_.__value_.__r.__words[0] = *v258;
                  *(v257->__r_.__value_.__r.__words + 7) = *(v258 + 7);
                  v262 = v255 + 15;
                  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v324.__r_.__value_.__l.__size_ = v255 + 15;
                  }

                  else
                  {
                    *(&v324.__r_.__value_.__s + 23) = v262 & 0x7F;
                  }

                  v257->__r_.__value_.__s.__data_[v262] = 0;
                }

                else
                {
                  std::string::__grow_by_and_replace(&v324, v256, v255 - v256 + 15, v255, 0, 0, 0xFuLL, "Duplicate ssrc ");
                }

                v263 = v324.__r_.__value_.__r.__words[2];
                v325 = v324;
                memset(&v324, 0, sizeof(v324));
                v264 = HIBYTE(v263);
                v265 = SHIBYTE(v263);
                v266 = (v263 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v265 >= 0)
                {
                  v267 = 22;
                }

                else
                {
                  v267 = v266;
                }

                if (v265 >= 0)
                {
                  v268 = v264;
                }

                else
                {
                  v268 = v325.__r_.__value_.__l.__size_;
                }

                if (v267 - v268 >= 0xF)
                {
                  v248 = v265 < 0;
                  v269 = &v325;
                  if (v248)
                  {
                    v269 = v325.__r_.__value_.__r.__words[0];
                  }

                  v270 = v269 + v268;
                  if (v269 + v268 <= " is not allowed" && v270 + 15 > " is not allowed")
                  {
                    goto LABEL_398;
                  }

                  qmemcpy(v270, " is not allowed", 15);
                  v271 = v268 + 15;
                  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v325.__r_.__value_.__l.__size_ = v268 + 15;
                  }

                  else
                  {
                    *(&v325.__r_.__value_.__s + 23) = v271 & 0x7F;
                  }

                  v269->__r_.__value_.__s.__data_[v271] = 0;
                }

                else
                {
                  std::string::__grow_by_and_replace(&v325, v267, v268 - v267 + 15, v268, v268, 0, 0xFuLL, " is not allowed");
                }

                v329 = v325.__r_.__value_.__r.__words[2];
                v328 = *&v325.__r_.__value_.__l.__data_;
                memset(&v325, 0, sizeof(v325));
                v272 = SHIBYTE(v329);
                if ((SHIBYTE(v329) & 0x8000000000000000) != 0)
                {
                  v274 = *(&v328 + 1);
                  v273 = v328;
                  LODWORD(v333.__r_.__value_.__l.__data_) = 3;
                  if (*(&v328 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  LODWORD(v333.__r_.__value_.__l.__data_) = 3;
                  v273 = &v328;
                  v274 = SHIBYTE(v329);
                }

                if (v274 > 0x16)
                {
                  operator new();
                }

                v334[7] = v274;
                v275 = (&v333.__r_.__value_.__r.__words[1] + v274);
                if (&v333.__r_.__value_.__r.__words[1] > v273 || v275 <= v273)
                {
                  if (v274)
                  {
                    memmove(&v333.__r_.__value_.__r.__words[1], v273, v274);
                  }

                  v275->__r_.__value_.__s.__data_[0] = 0;
                  *&v334[8] = 0;
                  v334[12] = 0;
                  v334[14] = 0;
                  if ((v272 & 0x80000000) == 0)
                  {
                    v83 = v283;
                    v84 = v282;
                    if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_400;
                    }

                    goto LABEL_396;
                  }

LABEL_399:
                  operator delete(v328);
                  v83 = v283;
                  v84 = v282;
                  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_400:
                    operator delete(v325.__r_.__value_.__l.__data_);
                    v63 = v285;
                    if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_401;
                    }

                    goto LABEL_397;
                  }

LABEL_396:
                  v63 = v285;
                  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_401:
                    operator delete(v324.__r_.__value_.__l.__data_);
                  }

LABEL_397:
                  std::__tree<sigslot::_signal_base_interface *>::destroy(&v330, v331);
                  goto LABEL_140;
                }

LABEL_398:
                __break(1u);
                goto LABEL_399;
              }

LABEL_406:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }
          }

          else if ((SHIBYTE(v325.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_333;
          }

          operator delete(v325.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v324.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_334;
          }

          goto LABEL_365;
        }

LABEL_132:
        std::__tree<sigslot::_signal_base_interface *>::destroy(&v330, v331);
        v5 = v286;
      }

      if ((*(**(v5 + 8) + 192))(*(v5 + 8)))
      {
        if (*(*(v5 + 16) + 96))
        {
          v125 = webrtc::SdpOfferAnswerHandler::transceivers(v5);
          std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>::vector[abi:sn200100](&v330, v125);
          v126 = v330;
          v127 = v331;
          if (v330 != v331)
          {
            do
            {
              v168 = *(*v126 + 16);
              if (((*(*v168 + 64))(v168) & 1) == 0)
              {
                v169 = (*(*v5 + 24))(v5);
                MediaSectionForTransceiver = webrtc::SdpOfferAnswerHandler::FindMediaSectionForTransceiver(*(v5 + 8), v168, v169);
                if (MediaSectionForTransceiver)
                {
                  if ((*(MediaSectionForTransceiver + 4) & 1) != 0 || (v175 = *(v168 + 20)) == 0 || (v176 = (*(*v175 + 152))(*(v168 + 20)), *v176 == v176[1]))
                  {
                    v187 = *(v168 + 4);
                    if (*(v168 + 5) - v187 != 8)
                    {
                      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 460, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v171, v172, v173, v174, 1);
                      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 466, "1u == receivers_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v276, v277, v278, v279, 1);
                      goto LABEL_405;
                    }

                    v188 = *(*v187 + 24);
                    if (v188)
                    {
                      (**v188)(v188);
                    }

                    (*(*v188 + 200))(v188, 0);
                    (*(*v188 + 8))(v188);
                  }

                  else
                  {
                    v177 = (*(*v175 + 152))(v175);
                    webrtc::RtpTransceiver::sender_internal(v168, v178, v179, v180, v181, &v325);
                    if (v177[1] == *v177)
                    {
                      goto LABEL_398;
                    }

                    v182 = v325.__r_.__value_.__r.__words[0];
                    webrtc::StreamParams::stream_ids(*v177, &v328);
                    (*(*v182 + 208))(v182, &v328);
                    v183 = v328;
                    if (v328)
                    {
                      v184 = *(&v328 + 1);
                      v185 = v328;
                      if (*(&v328 + 1) != v328)
                      {
                        do
                        {
                          v186 = *(v184 - 1);
                          v184 -= 3;
                          if (v186 < 0)
                          {
                            operator delete(*v184);
                          }
                        }

                        while (v184 != v183);
                        v185 = v328;
                      }

                      *(&v328 + 1) = v183;
                      operator delete(v185);
                      v3 = &v325;
                    }

                    (*(*v182 + 8))(v182);
                    webrtc::RtpTransceiver::sender_internal(v168, v189, v190, v191, v192, &v325);
                    v193 = v325.__r_.__value_.__r.__words[0];
                    (*(*v325.__r_.__value_.__l.__data_ + 96))(&v328, v325.__r_.__value_.__r.__words[0]);
                    (*(*v193 + 8))(v193);
                    webrtc::RtpTransceiver::sender_internal(v168, v194, v195, v196, v197, &v325);
                    v198 = *v177;
                    if (v177[1] == *v177)
                    {
                      goto LABEL_398;
                    }

                    v199 = *(v198 + 24);
                    if (v199 == *(v198 + 32))
                    {
                      v200 = 0;
                    }

                    else
                    {
                      v200 = *v199;
                    }

                    v201 = v325.__r_.__value_.__r.__words[0];
                    (*(*v325.__r_.__value_.__l.__data_ + 200))(v325.__r_.__value_.__r.__words[0], v200);
                    (*(*v201 + 8))(v201);
                    v202 = v328;
                    if (v328 != *(&v328 + 1))
                    {
                      v203 = webrtc::SdpOfferAnswerHandler::transceivers(v5);
                      v204 = *v126;
                      v324.__r_.__value_.__r.__words[0] = v204;
                      if (v204)
                      {
                        (**v204)(v204);
                        v205 = v324.__r_.__value_.__r.__words[0];
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v325.__r_.__value_.__r.__words[0] = &v324;
                      v206 = std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::__emplace_unique_key_args<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::piecewise_construct_t const&,std::tuple<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>> const&>,std::tuple<>>(v203 + 24, v205);
                      webrtc::TransceiverStableState::SetInitSendEncodings((v206 + 5), &v328);
                      if (v324.__r_.__value_.__r.__words[0])
                      {
                        (*(*v324.__r_.__value_.__l.__data_ + 8))(v324.__r_.__value_.__r.__words[0]);
                      }

                      v202 = v328;
                    }

                    if (v202)
                    {
                      v207 = *(&v328 + 1);
                      v208 = v202;
                      if (*(&v328 + 1) != v202)
                      {
                        do
                        {
                          webrtc::RtpEncodingParameters::~RtpEncodingParameters((v207 - 272));
                        }

                        while (v207 != v202);
                        v208 = v328;
                      }

                      *(&v328 + 1) = v202;
                      operator delete(v208);
                    }
                  }

                  v63 = v285;
                }
              }

              v126 += 8;
            }

            while (v126 != v127);
          }

          std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>::~vector[abi:sn200100](&v330);
        }
      }

      else
      {
        v210 = (*(*v5 + 24))(v5);
        v211 = (*(*v210 + 32))(v210);
        FirstAudioContent = webrtc::GetFirstAudioContent(v211);
        if (FirstAudioContent)
        {
          if (*(FirstAudioContent + 4) == 1)
          {
            webrtc::SdpOfferAnswerHandler::RemoveSenders(v5, 0);
          }

          else
          {
            v221 = *(FirstAudioContent + 32);
            v222 = v221 + 12;
            v223 = (*(*v221 + 2))(v221);
            webrtc::SdpOfferAnswerHandler::UpdateLocalSenders(v5, v222, v223);
          }
        }

        v224 = (*(*v5 + 24))(v5);
        v225 = (*(*v224 + 32))(v224);
        FirstVideoContent = webrtc::GetFirstVideoContent(v225);
        if (FirstVideoContent)
        {
          if (*(FirstVideoContent + 4) == 1)
          {
            webrtc::SdpOfferAnswerHandler::RemoveSenders(v5, 1);
          }

          else
          {
            v227 = *(FirstVideoContent + 32);
            v228 = v227 + 12;
            v229 = (*(*v227 + 2))(v227);
            webrtc::SdpOfferAnswerHandler::UpdateLocalSenders(v5, v228, v229);
          }
        }
      }

      if (v62 == 2 && webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace::SatisfiesIceRestart(*(v5 + 224), *(v5 + 32)))
      {
        v230 = *(v5 + 224);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v230, v230[1]);
        *v230 = v230 + 1;
        v230[2] = 0;
        v230[1] = 0;
        v63 = v285;
      }

      v83 = v283;
      v84 = v282;
      if ((*(**(v5 + 8) + 192))(*(v5 + 8)))
      {
        v231 = (*(*v5 + 24))(v5);
        v232 = (*(*v231 + 32))(v231);
        if ((*(**(v5 + 8) + 64))(*(v5 + 8)))
        {
          v233 = ((*(**(v5 + 8) + 64))(*(v5 + 8)) + 48);
        }

        else
        {
          v233 = 0;
        }

        webrtc::UpdateRtpHeaderExtensionPreferencesFromSdpMunging(*v232, v232[1], v233);
      }

      LODWORD(v333.__r_.__value_.__l.__data_) = 0;
      v334[14] = 0;
      *v334 = 0;
      *&v333.__r_.__value_.__r.__words[1] = 0uLL;
      *&v334[5] = 0;
LABEL_140:
      if (SHIBYTE(v336[2]) < 0)
      {
        operator delete(v336[0]);
      }

      if (v63)
      {
        (*(*v63 + 8))(v63);
      }

      v128 = v333.__r_.__value_.__l.__data_;
      v306 = v333.__r_.__value_.__l.__data_;
      if (SHIBYTE(v308) < 0)
      {
        operator delete(v307);
        v128 = v306;
      }

      v307 = *(v3 + 120);
      v308 = *v334;
      v309[0] = *&v334[8];
      *(v309 + 3) = *(v3 + 147);
      if (!v128)
      {
        v141 = (*(**(v5 + 408) + 24))(*(v5 + 408));
        std::vector<std::pair<webrtc::Codec,webrtc::Codec>>::vector[abi:sn200100](v292, &v296);
        webrtc::CodecVendor::ModifyVideoCodecs(v141, v292);
        std::vector<std::pair<webrtc::Codec,webrtc::Codec>>::~vector[abi:sn200100](v292);
        v142 = (*(*v5 + 24))(v5);
        if ((*(*v142 + 56))(v142) == 2)
        {
          webrtc::SdpOfferAnswerHandler::RemoveStoppedTransceivers(v5);
          v143 = *(*(v5 + 16) + 24);
          __src = v5;
          (*(*v143 + 96))(v143, &__src, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_0>, &v333);
        }

        v144 = *(v5 + 64);
        *(v5 + 64) = 0;
        if (v144)
        {
          (*(*v144 + 8))(v144);
        }

        v145 = *(v5 + 72);
        *(v5 + 72) = 0;
        if (v145)
        {
          (*(*v145 + 8))(v145);
        }

        *(v5 + 80) = v84;
        v146 = (*(*v5 + 24))(v5);
        (*(*v146 + 56))(v146);
        v147 = *v83;
        v287 = 0;
        v291 = 0;
        v289 = 0;
        memset(v290, 0, sizeof(v290));
        v288 = 0;
        (*(*v147 + 32))(v147, &v287);
        if ((v290[7] & 0x80000000) != 0)
        {
          operator delete(v288);
        }

        (*(**(v5 + 8) + 176))(*(v5 + 8), 32);
        if ((*(**(v5 + 8) + 192))(*(v5 + 8)))
        {
          v148 = *(v5 + 233);
          webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v5);
          if (!(*(*v5 + 16))(v5) && v148 && *(v5 + 233) == 1)
          {
            v149 = (*(**(v5 + 8) + 144))(*(v5 + 8));
            (*(*v149 + 48))(v149);
            webrtc::SdpOfferAnswerHandler::GenerateNegotiationNeededEvent(v5);
          }
        }

        v150 = (*(**(v5 + 8) + 104))(*(v5 + 8));
        webrtc::JsepTransportController::MaybeStartGathering(v150);
        v140 = v296;
        if (!v296)
        {
          goto LABEL_186;
        }

LABEL_181:
        v151 = v297;
        if (v297 != v140)
        {
          do
          {
            v152 = (v151 - 432);
            webrtc::Codec::~Codec((v151 - 216));
            webrtc::Codec::~Codec(v152);
            v151 = v152;
          }

          while (v152 != v140);
          v140 = v296;
        }

        v68 = v140;
LABEL_185:
        operator delete(v68);
        goto LABEL_186;
      }

      if (v308 >= 0)
      {
        v129 = &v307;
      }

      else
      {
        v129 = v307;
      }

      std::string::basic_string[abi:sn200100]<0>(&__src, v129);
      webrtc::SdpOfferAnswerHandler::SetSessionError(v5, &__src);
      if (SHIBYTE(v336[1]) < 0)
      {
        operator delete(__src);
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v130, v131, v132, v133, v134, v135, v136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      v137 = *v83;
      if (SHIBYTE(v336[1]) >= 0)
      {
        v138 = &__src;
      }

      else
      {
        v138 = __src;
      }

      if (SHIBYTE(v336[1]) >= 0)
      {
        v139 = HIBYTE(v336[1]);
      }

      else
      {
        v139 = v336[0];
      }

      webrtc::RTCError::RTCError(v293, 10, v138, v139);
      (*(*v137 + 32))(v137, v293);
      if (v295 < 0)
      {
        operator delete(v294);
        if ((SHIBYTE(v336[1]) & 0x80000000) == 0)
        {
LABEL_162:
          v140 = v296;
          if (!v296)
          {
            goto LABEL_186;
          }

          goto LABEL_181;
        }
      }

      else if ((SHIBYTE(v336[1]) & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(__src);
      v140 = v296;
      if (!v296)
      {
LABEL_186:
        if (SHIBYTE(v308) < 0)
        {
          operator delete(v307);
        }

        std::__tree<webrtc::SocketAddress>::destroy(v310, v310[1]);
        return;
      }

      goto LABEL_181;
    }

    if (webrtc::HasUfragSdpMunging(*a2, v43, v45))
    {
      *(v5 + 416) = 1;
      v69 = (*(**(v5 + 8) + 272))(*(v5 + 8));
      if (!webrtc::FieldTrialsView::IsEnabled(v69))
      {
        goto LABEL_39;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v70, v71, v72, v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }
    }

    else
    {
      if (v46 != 4)
      {
        goto LABEL_39;
      }

      v95 = (*(**(v5 + 8) + 272))(*(v5 + 8));
      if (webrtc::FieldTrialsView::IsDisabled(v95))
      {
        goto LABEL_39;
      }
    }

    v299 = 7;
    operator new();
  }

  webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&__src, a1);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }

  v14 = *a3;
  v15 = SHIBYTE(v336[1]);
  if ((SHIBYTE(v336[1]) & 0x8000000000000000) != 0)
  {
    v16 = __src;
    v15 = v336[0];
    v315 = 10;
    if (v336[0] <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v336[0] <= 0x16)
      {
        goto LABEL_8;
      }

LABEL_19:
      operator new();
    }

LABEL_403:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v315 = 10;
  v16 = &__src;
  if (SHIBYTE(v336[1]) > 0x16)
  {
    goto LABEL_19;
  }

LABEL_8:
  v317 = v15;
  v17 = (&v316 + v15);
  if (&v316 <= v16 && v17 > v16)
  {
    goto LABEL_398;
  }

  if (v15)
  {
    memmove(&v316, v16, v15);
  }

  *v17 = 0;
  v318 = 0;
  v319 = 0;
  v320 = 0;
  (*(*v14 + 32))(v14, &v315);
  if (v317 < 0)
  {
    operator delete(v316);
    if (SHIBYTE(v336[1]) < 0)
    {
LABEL_27:
      operator delete(__src);
    }
  }

  else if (SHIBYTE(v336[1]) < 0)
  {
    goto LABEL_27;
  }
}

void webrtc::SdpOfferAnswerHandler::Rollback(uint64_t a1, void **a2, int a3)
{
  if ((((*a2)[2])(a2) & 0xFFFFFFFD) != 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      operator new();
    }

    operator new();
  }

  v118 = 0;
  v119 = 0;
  v120 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  if ((*(*a2[1] + 64))(a2[1]))
  {
    v10 = (*(*a2[1] + 64))(a2[1]) + 48;
  }

  else
  {
    v10 = 0;
  }

  v89 = a3;
  v11 = *(v10 + 24);
  v90 = (v10 + 32);
  v91 = a2;
  if (v11 != (v10 + 32))
  {
    while (1)
    {
      v12 = v11[4];
      if (v12)
      {
        (**v12)(v11[4]);
      }

      __src.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v104) = 0;
      if (*(v11 + 64) == 1)
      {
        if (*(v11 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__src, v11[5], v11[6]);
        }

        else
        {
          __src = *(v11 + 5);
        }

        LOBYTE(v104) = 1;
      }

      v105 = *(v11 + 9);
      LOBYTE(v106) = 0;
      v109 = 0;
      if (*(v11 + 112) == 1)
      {
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v13 = v11[11];
        v14 = v11[12];
        if (v14 != v13)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_198;
        }

        v109 = 1;
      }

      LOBYTE(v110) = 0;
      v113 = 0;
      if (*(v11 + 144) == 1)
      {
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v15 = v11[15];
        v16 = v11[16];
        if (v16 != v15)
        {
          if (0xF0F0F0F0F0F0F0F1 * ((v16 - v15) >> 4) <= 0xF0F0F0F0F0F0F0)
          {
            operator new();
          }

          goto LABEL_199;
        }

        v113 = 1;
      }

      *&v114[5] = *(v11 + 157);
      *v114 = v11[19];
      if (v114[12] == 1)
      {
        if (((*(*v12 + 112))(v12) & 0x100000000) != 0)
        {
          v18 = (*(*v12 + 112))(v12);
          if ((v18 & 0x100000000) == 0)
          {
            __break(1u);
LABEL_195:
            std::__throw_bad_optional_access[abi:sn200100]();
LABEL_196:
            webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 466, "1u == receivers_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v6, v7, v8, v9, 1);
LABEL_197:
            webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 460, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v31, v32, v33, v34, 1);
LABEL_198:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v17 = (v18 & 0xFFFFFFFD) == 0;
        }

        else
        {
          v17 = 0;
        }

        if ((v114[12] & 1) == 0)
        {
          goto LABEL_195;
        }

        if ((*&v114[4] & 0x100000000) != 0)
        {
          if ((*&v114[4] & 0xFFFFFFFD) != 0)
          {
            v17 = 1;
          }

          if (!v17)
          {
            (**v12)(v12);
            operator new();
          }
        }

        if ((v114[12] & 1) == 0)
        {
          goto LABEL_195;
        }

        v19 = v12[2];
        v20 = v114[8];
        *(v19 + 96) = *&v114[4];
        *(v19 + 100) = v20;
      }

      if (v109 != 1)
      {
        goto LABEL_63;
      }

      if (v107 != v106)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 3) <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_198;
      }

      memset(&__p, 0, sizeof(__p));
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v21 = *(v12[2] + 56);
      if (*(v12[2] + 64) - v21 != 8)
      {
        goto LABEL_196;
      }

      v22 = *(*v21 + 32);
      v99 = v22;
      if (v22)
      {
        (**v22)(v22);
      }

      if (v109 != 1)
      {
        goto LABEL_195;
      }

      if (v107 != v106)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 3) <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_198;
      }

      webrtc::SdpOfferAnswerHandler::SetAssociatedRemoteStreams(v91, &v99, 0, 0, &__p, &v100);
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      size = __p.__r_.__value_.__l.__size_;
      v24 = __p.__r_.__value_.__r.__words[0];
      std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>,std::__wrap_iter<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>>(&v118, v119, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
      v26 = v100;
      v25 = v101;
      std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>,std::__wrap_iter<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>>(&v115, v116, v100, v101, v101 - v100);
      if ((v114[0] & 1) != 0 || v114[1] == 1)
      {
        break;
      }

      if (v26)
      {
        while (v25 != v26)
        {
          v43 = *--v25;
          v42 = v43;
          if (v43)
          {
            (*(*v42 + 8))(v42);
          }
        }

        operator delete(v26);
        if (!v24)
        {
          goto LABEL_126;
        }

LABEL_102:
        while (size != v24)
        {
          v45 = *(size - 8);
          size -= 8;
          v44 = v45;
          if (v45)
          {
            (*(*v44 + 8))(v44);
          }
        }

        operator delete(v24);
        goto LABEL_126;
      }

      if (v24)
      {
        goto LABEL_102;
      }

LABEL_126:
      if (v113 == 1)
      {
        v53 = v110;
        if (v110)
        {
          v54 = v111;
          v55 = v110;
          if (v111 != v110)
          {
            do
            {
              webrtc::RtpEncodingParameters::~RtpEncodingParameters((v54 - 272));
            }

            while (v54 != v53);
            v55 = v110;
          }

          v111 = v53;
          operator delete(v55);
        }
      }

      if (v109 == 1)
      {
        v56 = v106;
        if (v106)
        {
          v57 = v107;
          v58 = v106;
          if (v107 != v106)
          {
            do
            {
              v59 = *(v57 - 1);
              v57 -= 3;
              if (v59 < 0)
              {
                operator delete(*v57);
              }
            }

            while (v57 != v56);
            v58 = v106;
          }

          v107 = v56;
          operator delete(v58);
        }
      }

      if (v104 == 1 && SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v60 = v11[1];
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = v11[2];
          v62 = *v61 == v11;
          v11 = v61;
        }

        while (!v62);
      }

      v11 = v61;
      if (v61 == v90)
      {
        goto LABEL_152;
      }
    }

    if (v26)
    {
      while (v25 != v26)
      {
        v28 = *--v25;
        v27 = v28;
        if (v28)
        {
          (*(*v27 + 8))(v27);
        }
      }

      operator delete(v26);
    }

    if (v24)
    {
      while (size != v24)
      {
        v30 = *(size - 8);
        size -= 8;
        v29 = v30;
        if (v30)
        {
          (*(*v29 + 8))(v29);
        }
      }

      operator delete(v24);
    }

LABEL_63:
    webrtc::RtpTransceiver::ClearChannel(v12[2]);
    if ((*(*v91 + 16))(v91) == 3)
    {
      (*(*v12 + 56))(&__p, v12);
      if (__p.__r_.__value_.__r.__words[0])
      {
        (*(*__p.__r_.__value_.__l.__data_ + 8))(__p.__r_.__value_.__r.__words[0]);
        (*(*v12 + 56))(&__p, v12);
        operator new();
      }
    }

    if (v114[1] == 1)
    {
      v35 = v12[2];
      if (*(v35 + 153) != 1)
      {
        webrtc::RtpTransceiver::StopTransceiverProcedure(v35);
        if ((*(**(v91 + 8) + 64))(*(v91 + 8)))
        {
          v41 = ((*(**(v91 + 8) + 64))(*(v91 + 8)) + 48);
        }

        else
        {
          v41 = 0;
        }

        v98 = v12;
        (**v12)(v12);
        webrtc::TransceiverList::Remove(v41, &v98);
        (*(*v12 + 8))(v12);
        if (v113 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_106;
      }

      *(v35 + 152) = 1;
    }

    if (v113 == 1)
    {
LABEL_70:
      if (v111 != v110)
      {
        if (0xF0F0F0F0F0F0F0F1 * ((v111 - v110) >> 4) <= 0xF0F0F0F0F0F0F0)
        {
          operator new();
        }

        goto LABEL_199;
      }

      v36 = *(v12[2] + 32);
      if (*(v12[2] + 40) - v36 != 8)
      {
        goto LABEL_197;
      }

      v37 = *(*v36 + 24);
      if (v37)
      {
        (**v37)(v37);
      }

      __p.__r_.__value_.__s.__data_[0] = 0;
      v97 = 0;
      if (v113 != 1)
      {
        goto LABEL_195;
      }

      memset(&__p, 0, sizeof(__p));
      if (v111 != v110)
      {
        if (0xF0F0F0F0F0F0F0F1 * ((v111 - v110) >> 4) <= 0xF0F0F0F0F0F0F0)
        {
          operator new();
        }

LABEL_199:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v97 = 1;
      (*(*v37 + 216))(v37, &__p);
      if (v97 == 1)
      {
        v38 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          v39 = __p.__r_.__value_.__l.__size_;
          v40 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
          {
            do
            {
              webrtc::RtpEncodingParameters::~RtpEncodingParameters((v39 - 272));
            }

            while (v39 != v38);
            v40 = __p.__r_.__value_.__r.__words[0];
          }

          __p.__r_.__value_.__l.__size_ = v38;
          operator delete(v40);
        }
      }

      (*(*v37 + 8))(v37);
    }

LABEL_106:
    v46 = *(v12[2] + 32);
    if (*(v12[2] + 40) - v46 != 8)
    {
      goto LABEL_197;
    }

    v47 = *(*v46 + 24);
    if (v47)
    {
      (**v47)(v47);
    }

    v95 = 0;
    (*(*v47 + 224))(v47, &v95);
    if (v95)
    {
      (*(*v95 + 8))(v95);
    }

    (*(*v47 + 8))(v47);
    v48 = *(v12[2] + 56);
    if (*(v12[2] + 64) - v48 != 8)
    {
      goto LABEL_196;
    }

    v49 = *(*v48 + 32);
    if (v49)
    {
      (**v49)(v49);
    }

    v94 = 0;
    (*(*v49 + 192))(v49, &v94);
    if (v94)
    {
      (*(*v94 + 8))(v94);
    }

    (*(*v49 + 8))(v49);
    if (v114[0] == 1)
    {
      v50 = v12[2];
      __p.__r_.__value_.__s.__data_[0] = 0;
      v97 = 0;
      if (v104 == 1)
      {
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __src;
        }

        v97 = 1;
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v50 + 104, &__p);
      if (v97 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v51 = v12[2];
      v52 = BYTE8(v105);
      *(v51 + 136) = v105;
      *(v51 + 144) = v52;
    }

    goto LABEL_126;
  }

LABEL_152:
  v63 = (*(**(v91 + 8) + 104))(*(v91 + 8));
  webrtc::JsepTransportController::RollbackTransports(&__src, v63);
  if (LODWORD(__src.__r_.__value_.__l.__data_))
  {
    *a1 = __src.__r_.__value_.__l.__data_;
    *(a1 + 8) = *&__src.__r_.__value_.__r.__words[1];
    *(a1 + 24) = v104;
    *(a1 + 32) = v105;
    *(a1 + 35) = *(&v105 + 3);
  }

  else
  {
    if ((*(**(v91 + 8) + 64))(*(v91 + 8)))
    {
      v64 = (*(**(v91 + 8) + 64))(*(v91 + 8)) + 48;
    }

    else
    {
      v64 = 0;
    }

    v66 = *(v64 + 32);
    v65 = (v64 + 32);
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::destroy((v65 - 1), v66);
    *v65 = 0;
    v65[1] = 0;
    *(v65 - 1) = v65;
    v67 = *(v91 + 40);
    *(v91 + 40) = 0;
    if (v67)
    {
      (*(*v67 + 8))(v67);
    }

    v68 = *(v91 + 56);
    *(v91 + 56) = 0;
    if (v68)
    {
      (*(*v68 + 8))(v68);
    }

    webrtc::SdpOfferAnswerHandler::ChangeSignalingState(v91, 0);
    v69 = v118;
    v70 = v119;
    while (v69 != v70)
    {
      v71 = (*(**(v91 + 8) + 144))(*(v91 + 8));
      v72 = *v69;
      v93 = v72;
      if (v72)
      {
        v73 = v71;
        (**v72)(v72);
        v71 = v73;
      }

      (*(*v71 + 24))(v71, &v93);
      if (v93)
      {
        (*v93)[1](v93);
      }

      v69 += 8;
    }

    v74 = v115;
    v75 = v116;
    while (v74 != v75)
    {
      v76 = (*(**(v91 + 8) + 144))(*(v91 + 8));
      v77 = *v74;
      v92 = v77;
      if (v77)
      {
        v78 = v76;
        (**v77)(v77);
        v76 = v78;
      }

      (*(*v76 + 32))(v76, &v92);
      if (v92)
      {
        (*v92)[1](v92);
      }

      v74 += 8;
    }

    if (v89 == 3)
    {
      webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v91);
      if (*(v91 + 233) == 1)
      {
        v79 = (*(**(v91 + 8) + 144))(*(v91 + 8));
        (*(*v79 + 48))(v79);
        ++*(v91 + 236);
        v80 = (*(**(v91 + 8) + 144))(*(v91 + 8));
        (*(*v80 + 56))(v80, *(v91 + 236));
      }
    }

    *a1 = 0;
    *(a1 + 38) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    if (SHIBYTE(v104) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__size_);
    }
  }

  v81 = v115;
  if (v115)
  {
    for (i = v116; i != v81; i -= 8)
    {
      v84 = *(i - 1);
      v83 = v84;
      if (v84)
      {
        (*(*v83 + 8))(v83);
      }
    }

    operator delete(v81);
  }

  v85 = v118;
  if (v118)
  {
    for (j = v119; j != v85; j -= 8)
    {
      v88 = *(j - 1);
      v87 = v88;
      if (v88)
      {
        (*(*v87 + 8))(v87);
      }
    }

    operator delete(v85);
  }
}

void webrtc::anonymous namespace::GetBundleGroupsByMid(void *a1, uint64_t a2)
{
  v12 = 6;
  if (__p <= "BUNDLE" && __p + 6 > "BUNDLE")
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  strcpy(__p, "BUNDLE");
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v5)
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = a1 + 1;
  }

  else
  {
    do
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = *(v4 + 23);
      }

      else
      {
        v7 = *(v4 + 8);
      }

      v8 = v12;
      if (v12 < 0)
      {
        v8 = __p[1];
      }

      if (v7 == v8)
      {
        v9 = v6 >= 0 ? v4 : *v4;
        v10 = v12 >= 0 ? __p : __p[0];
        if (!memcmp(v9, v10, v7))
        {
          operator new();
        }
      }

      v4 += 48;
    }

    while (v4 != v5);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    a1[1] = 0;
    a1[2] = 0;
    *a1 = a1 + 1;
  }
}

void webrtc::SdpOfferAnswerHandler::ValidateSessionDescription(uint64_t a1, std::string *a2, uint64_t a3, int a4, unint64_t a5)
{
  if (!a3 || (v9 = a3, !(*(*a3 + 32))(a3)))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
      __src.__r_.__value_.__l.__size_ = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    *a1 = 3;
    operator new();
  }

  p_src = &__src;
  v12 = (*(*v9 + 56))(v9);
  v13 = (*(a2->__r_.__value_.__r.__words[0] + 16))(a2);
  if (a4)
  {
    if (v12)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    if (v13 != (v12 != 0) && v13 != v14)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v71 = v13 < 2;
    if (v12)
    {
      v71 = (v13 & 0xFFFFFFFE) == 2;
    }

    if (!v71)
    {
LABEL_87:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        operator new();
      }

      operator new();
    }
  }

  v278 = a4;
  v279 = v12;
  v16 = (*(*v9 + 32))(v9);
  v17 = *v16;
  v18 = v16[1];
  *&__src.__r_.__value_.__r.__words[1] = 0uLL;
  __src.__r_.__value_.__r.__words[0] = &__src.__r_.__value_.__l.__size_;
  if (v17 == v18)
  {
LABEL_20:
    LODWORD(v287.__r_.__value_.__l.__data_) = 0;
    v288[14] = 0;
    *v288 = 0;
    *&v287.__r_.__value_.__r.__words[1] = 0uLL;
    *&v288[5] = 0;
    std::__tree<webrtc::SocketAddress>::destroy(&__src, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    while (1)
    {
      v19 = *(v17 + 31);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = *(v17 + 16);
        if (!v19)
        {
LABEL_89:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            v289.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
            v289.__r_.__value_.__l.__size_ = 17;
            webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

          LODWORD(v287.__r_.__value_.__l.__data_) = 3;
          operator new();
        }
      }

      else if (!*(v17 + 31))
      {
        goto LABEL_89;
      }

      if (v19 >= 0x11)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          v289.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
          v289.__r_.__value_.__l.__size_ = 17;
          webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v118, v119, v120, v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
        }

        LODWORD(v287.__r_.__value_.__l.__data_) = 3;
        operator new();
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&__src, (v17 + 8));
      if ((v20 & 1) == 0)
      {
        break;
      }

      v17 += 40;
      if (v17 == v18)
      {
        goto LABEL_20;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      std::operator+<char>();
      if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v130 = 22;
      }

      else
      {
        v130 = (v287.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v287.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v287.__r_.__value_.__l.__size_;
      }

      if (v130 - size >= 2)
      {
        if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v108 = &v287;
        }

        else
        {
          v108 = v287.__r_.__value_.__r.__words[0];
        }

        v175 = (v108 + size);
        if (v108 + size <= "'." && v175 + 1 > "'.")
        {
          goto LABEL_484;
        }

        *v175 = 11815;
        v176 = size + 2;
        if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
        {
          v287.__r_.__value_.__l.__size_ = size + 2;
        }

        else
        {
          *(&v287.__r_.__value_.__s + 23) = v176 & 0x7F;
        }

        *(v108 + v176) = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v287, v130, size - v130 + 2, size, size, 0, 2uLL, "'.");
      }

      v289 = v287;
      memset(&v287, 0, sizeof(v287));
      v285.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
      v285.__r_.__value_.__l.__size_ = 17;
      webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v130, v125, size, v126, v127, v128, v129, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v289.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v287.__r_.__value_.__l.__data_);
      }
    }

    std::operator+<char>();
    if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v180 = 22;
    }

    else
    {
      v180 = (v285.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v181 = v285.__r_.__value_.__l.__size_;
    }

    if (v180 - v181 >= 2)
    {
      if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &v285;
      }

      else
      {
        v108 = v285.__r_.__value_.__r.__words[0];
      }

      v182 = (v108 + v181);
      if (v108 + v181 <= "'." && v182 + 1 > "'.")
      {
        goto LABEL_484;
      }

      *v182 = 11815;
      v183 = v181 + 2;
      if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
      {
        v285.__r_.__value_.__l.__size_ = v181 + 2;
      }

      else
      {
        *(&v285.__r_.__value_.__s + 23) = v183 & 0x7F;
      }

      *(v108 + v183) = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v285, v180, v181 - v180 + 2, v181, v181, 0, 2uLL, "'.");
    }

    v289 = v285;
    memset(&v285, 0, sizeof(v285));
    v184 = SHIBYTE(v289.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v289.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_src = v289.__r_.__value_.__l.__size_;
      v185 = v289.__r_.__value_.__r.__words[0];
      LODWORD(v287.__r_.__value_.__l.__data_) = 3;
      if (v289.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_517;
      }
    }

    else
    {
      LODWORD(v287.__r_.__value_.__l.__data_) = 3;
      v185 = &v289;
      p_src = SHIBYTE(v289.__r_.__value_.__r.__words[2]);
    }

    if (p_src > 0x16)
    {
      operator new();
    }

    v108 = &v287;
    v288[7] = p_src;
    v186 = (&v287.__r_.__value_.__r.__words[1] + p_src);
    if (&v287.__r_.__value_.__r.__words[1] <= v185 && v186 > v185)
    {
      goto LABEL_484;
    }

    if (p_src)
    {
      memmove(&v287.__r_.__value_.__r.__words[1], v185, p_src);
    }

    v186->__r_.__value_.__s.__data_[0] = 0;
    *&v288[8] = 0;
    v288[12] = 0;
    v288[14] = 0;
    if (v184 < 0)
    {
      operator delete(v289.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v285.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_323:
        std::__tree<webrtc::SocketAddress>::destroy(&__src, __src.__r_.__value_.__l.__size_);
        data = v287.__r_.__value_.__l.__data_;
        if (LODWORD(v287.__r_.__value_.__l.__data_))
        {
LABEL_324:
          *a1 = data;
          *(a1 + 8) = *&v287.__r_.__value_.__r.__words[1];
          *(a1 + 24) = *v288;
          *&v287.__r_.__value_.__r.__words[1] = 0uLL;
          *v288 = 0;
          *(a1 + 32) = *&v288[8];
          v188 = *&v288[11];
          goto LABEL_467;
        }

        goto LABEL_21;
      }
    }

    else if ((SHIBYTE(v285.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_323;
    }

    operator delete(v285.__r_.__value_.__l.__data_);
    std::__tree<webrtc::SocketAddress>::destroy(&__src, __src.__r_.__value_.__l.__size_);
    data = v287.__r_.__value_.__l.__data_;
    if (LODWORD(v287.__r_.__value_.__l.__data_))
    {
      goto LABEL_324;
    }
  }

LABEL_21:
  v277 = a2;
  v283 = v9;
  if ((*(*a2->__r_.__value_.__l.__size_ + 80))(a2->__r_.__value_.__l.__size_))
  {
    v21 = (*(*v9 + 32))(v9);
    v276 = (*(*a2->__r_.__value_.__l.__size_ + 80))(a2->__r_.__value_.__l.__size_);
    v22 = *v21;
    v23 = v21[1];
    v281 = v21;
    if (*v21 != v23)
    {
      v282 = a5 + 8;
      p_src = "Invalid session description.";
      v280 = v21[1];
      do
      {
        if ((*(v22 + 4) & 1) == 0)
        {
          if (*(v22 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&__src, *(v22 + 8), *(v22 + 16));
            v32 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a5, &__src.__r_.__value_.__l.__data_);
            if (v282 == v32)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v31 = *(v22 + 8);
            __src.__r_.__value_.__r.__words[2] = *(v22 + 24);
            *&__src.__r_.__value_.__l.__data_ = v31;
            v32 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a5, &__src.__r_.__value_.__l.__data_);
            if (v282 == v32)
            {
              goto LABEL_53;
            }
          }

          v33 = v32[7];
          if (!v33)
          {
            goto LABEL_53;
          }

          if (*(v33 + 24) == *(v33 + 32))
          {
            v34 = 0;
          }

          else
          {
            v34 = *(v33 + 24);
          }

          v35 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = __src.__r_.__value_.__l.__size_;
          }

          v37 = *(v34 + 23);
          v38 = v37;
          if ((v37 & 0x80u) != 0)
          {
            v37 = *(v34 + 8);
          }

          if (v36 == v37)
          {
            v39 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
            v40 = v38 >= 0 ? v34 : *v34;
            if (!memcmp(v39, v40, v36))
            {
LABEL_53:
              v41 = a1;
              v42 = a5;
              a2 = v281[3];
              v43 = v281[4];
              if (a2 == v43)
              {
                goto LABEL_73;
              }

              v44 = *(v22 + 32);
              v45 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
              v46 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__src.__r_.__value_.__r.__words[2]) : __src.__r_.__value_.__l.__size_;
              v5 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
              while (1)
              {
                v47 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
                v48 = v47;
                if ((v47 & 0x80u) != 0)
                {
                  v47 = a2->__r_.__value_.__l.__size_;
                }

                if (v47 == v46)
                {
                  v49 = v48 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
                  if (!memcmp(v49, v5, v46))
                  {
                    break;
                  }
                }

                a2 = (a2 + 112);
                if (a2 == v43)
                {
                  goto LABEL_73;
                }
              }

              if (!v44)
              {
LABEL_73:
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                {
                  v289.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
                  v289.__r_.__value_.__l.__size_ = 17;
                  webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
                }

                *v41 = 3;
                operator new();
              }

              if (!v276)
              {
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                {
                  v289.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
                  v289.__r_.__value_.__l.__size_ = 17;
                  webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
                }

                *v41 = 3;
                operator new();
              }

              a5 = v42;
              if (!a2[4].__r_.__value_.__l.__size_)
              {
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                {
                  v289.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
                  v289.__r_.__value_.__l.__size_ = 17;
                  webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
                }

                *v41 = 3;
                operator new();
              }

              a1 = v41;
              v23 = v280;
              if ((v45 & 0x80) == 0)
              {
                goto LABEL_28;
              }

LABEL_76:
              operator delete(__src.__r_.__value_.__l.__data_);
              goto LABEL_28;
            }
          }

          if (v35 < 0)
          {
            goto LABEL_76;
          }
        }

LABEL_28:
        v22 += 40;
      }

      while (v22 != v23);
    }

    *a1 = 0;
    *(a1 + 38) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    v9 = v283;
  }

  v284 = a5;
  v79 = (*(*v9 + 32))(v9);
  v80 = *v79;
  a5 = v79[1];
  if (*v79 != a5)
  {
    v81 = v79;
    v5 = (v284 + 8);
    while ((*(v80 + 4) & 1) != 0)
    {
LABEL_95:
      v80 += 40;
      if (v80 == a5)
      {
        goto LABEL_153;
      }
    }

    if (*(v80 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__src, *(v80 + 8), *(v80 + 16));
      v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v284, &__src.__r_.__value_.__l.__data_);
      if (v5 == v83)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v82 = *(v80 + 8);
      __src.__r_.__value_.__r.__words[2] = *(v80 + 24);
      *&__src.__r_.__value_.__l.__data_ = v82;
      v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v284, &__src.__r_.__value_.__l.__data_);
      if (v5 == v83)
      {
        goto LABEL_120;
      }
    }

    v84 = v83[7];
    if (v84)
    {
      if (*(v84 + 24) == *(v84 + 32))
      {
        v85 = 0;
      }

      else
      {
        v85 = *(v84 + 24);
      }

      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v86 = __src.__r_.__value_.__l.__size_;
      }

      v87 = *(v85 + 23);
      v88 = v87;
      if (v87 < 0)
      {
        v87 = v85[1];
      }

      if (v86 != v87 || ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v89 = &__src) : (v89 = __src.__r_.__value_.__r.__words[0]), v88 >= 0 ? (v90 = v85) : (v90 = *v85), memcmp(v89, v90, v86)))
      {
        v91 = 3;
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_148;
        }

LABEL_147:
        operator delete(__src.__r_.__value_.__l.__data_);
        goto LABEL_148;
      }
    }

LABEL_120:
    v92 = v81[3];
    v93 = v81[4];
    if (v92 == v93)
    {
LABEL_143:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        goto LABEL_146;
      }

      p_src = p_src & 0xFFFFFFFF00000000 | 0xC13;
    }

    else
    {
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v94 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v94 = __src.__r_.__value_.__l.__size_;
      }

      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        a2 = &__src;
      }

      else
      {
        a2 = __src.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v95 = *(v92 + 23);
        v96 = v95;
        if ((v95 & 0x80u) != 0)
        {
          v95 = *(v92 + 8);
        }

        if (v95 == v94)
        {
          v97 = v96 >= 0 ? v92 : *v92;
          if (!memcmp(v97, a2, v94))
          {
            break;
          }
        }

        v92 += 112;
        if (v92 == v93)
        {
          goto LABEL_143;
        }
      }

      v98 = *(v92 + 71);
      if (v98 < 0)
      {
        v98 = *(v92 + 56);
      }

      if (v98)
      {
        v99 = *(v92 + 95);
        if (v99 < 0)
        {
          v99 = *(v92 + 80);
        }

        if (v99)
        {
          v91 = 0;
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_147;
          }

LABEL_148:
          if (v91 != 3 && v91)
          {
            v167 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
            if ((v167 & 1) == 0)
            {
              __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
              __src.__r_.__value_.__l.__size_ = 17;
              webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v168, v169, v170, v171, v172, v173, v174, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
            }

            *a1 = 3;
            operator new();
          }

          goto LABEL_95;
        }
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        goto LABEL_146;
      }

      v282 = v282 & 0xFFFFFFFF00000000 | 0xC3B;
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v100, v101, v102, v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
LABEL_146:
    v91 = 1;
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

LABEL_153:
  v107 = (*(*v283 + 32))(v283);
  *(&__src.__r_.__value_.__s + 23) = 6;
  v108 = &__src;
  if (&__src <= "BUNDLE" && __src.__r_.__value_.__r.__words + 6 > "BUNDLE")
  {
    goto LABEL_484;
  }

  a5 = *"BUNDLE";
  strcpy(&__src, "BUNDLE");
  v110 = *"LE";
  v111 = *(v107 + 48);
  v112 = *(v107 + 56);
  if (v111 != v112)
  {
    do
    {
      v113 = *(v111 + 23);
      if (v113 >= 0)
      {
        v114 = *(v111 + 23);
      }

      else
      {
        v114 = *(v111 + 8);
      }

      v115 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v115 = __src.__r_.__value_.__l.__size_;
      }

      if (v114 == v115)
      {
        v116 = v113 >= 0 ? v111 : *v111;
        v117 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
        if (!memcmp(v116, v117, v114))
        {
          operator new();
        }
      }

      v111 += 48;
    }

    while (v111 != v112);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    a5 = *"BUNDLE";
    v110 = *"LE";
  }

  LODWORD(v285.__r_.__value_.__l.__data_) = 0;
  v286[14] = 0;
  *v286 = 0;
  *&v285.__r_.__value_.__r.__words[1] = 0uLL;
  *&v286[5] = 0;
  v132 = v283;
  LODWORD(v287.__r_.__value_.__l.__data_) = 0;
  v5 = &v287;
  if ((v288[7] & 0x80000000) != 0)
  {
    operator delete(v287.__r_.__value_.__l.__size_);
  }

  *&v287.__r_.__value_.__r.__words[1] = *&v285.__r_.__value_.__r.__words[1];
  *v288 = *v286;
  *&v288[8] = *&v286[8];
  *&v288[11] = *&v286[11];
  v133 = (*(*v283 + 32))(v283);
  *(&__src.__r_.__value_.__s + 23) = 6;
  if (&__src <= "BUNDLE")
  {
    v108 = __src.__r_.__value_.__r.__words + 6;
    if (__src.__r_.__value_.__r.__words + 6 > "BUNDLE")
    {
      goto LABEL_484;
    }
  }

  LODWORD(__src.__r_.__value_.__l.__data_) = *"BUNDLE";
  WORD2(__src.__r_.__value_.__r.__words[0]) = v110;
  __src.__r_.__value_.__s.__data_[6] = 0;
  v134 = *(v133 + 48);
  a5 = *(v133 + 56);
  if (v134 != a5)
  {
    do
    {
      v135 = *(v134 + 23);
      if (v135 >= 0)
      {
        v136 = *(v134 + 23);
      }

      else
      {
        v136 = *(v134 + 8);
      }

      v137 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v137 = __src.__r_.__value_.__l.__size_;
      }

      if (v136 == v137)
      {
        v138 = v135 >= 0 ? v134 : *v134;
        v139 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
        if (!memcmp(v138, v139, v136))
        {
          operator new();
        }
      }

      v134 += 48;
    }

    while (v134 != a5);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v132 = v283;
    v5 = &v287;
  }

  LODWORD(v289.__r_.__value_.__l.__data_) = 0;
  v290[14] = 0;
  *v290 = 0;
  *&v289.__r_.__value_.__r.__words[1] = 0uLL;
  *&v290[5] = 0;
  a2 = v277;
  v140 = 0;
  LODWORD(v287.__r_.__value_.__l.__data_) = 0;
  if ((v288[7] & 0x80000000) != 0)
  {
    operator delete(v287.__r_.__value_.__l.__size_);
    v140 = v287.__r_.__value_.__l.__data_;
  }

  *&v287.__r_.__value_.__r.__words[1] = *&v289.__r_.__value_.__r.__words[1];
  *v288 = *v290;
  *&v288[8] = *&v290[8];
  *&v288[11] = *&v290[11];
  if (v140)
  {
    goto LABEL_466;
  }

  v141 = (*(*v132 + 32))(v132);
  v143 = *v141;
  v142 = v141[1];
  if (*v141 == v142)
  {
LABEL_269:
    v140 = 0;
    LODWORD(__src.__r_.__value_.__l.__data_) = 0;
    v292[14] = 0;
    *v292 = 0;
    *&__src.__r_.__value_.__r.__words[1] = 0uLL;
    a5 = &__src;
    *&v292[5] = 0;
    goto LABEL_463;
  }

  while (1)
  {
    if (!*v143)
    {
      v144 = *(v143 + 32);
      v145 = *(v144 + 96);
      v146 = *(v144 + 104);
      if (v145 != v146)
      {
        break;
      }
    }

LABEL_218:
    v143 += 40;
    if (v143 == v142)
    {
      goto LABEL_269;
    }
  }

LABEL_223:
  for (i = *(v145 + 48); ; i += 24)
  {
    if (i == *(v145 + 56))
    {
      v145 += 144;
      v132 = v283;
      if (v145 == v146)
      {
        goto LABEL_218;
      }

      goto LABEL_223;
    }

    v148 = *(i + 23);
    if ((*(i + 23) & 0x80000000) == 0)
    {
      break;
    }

    v151 = *(i + 1);
    if (v151 == 3)
    {
      v150 = *i;
      goto LABEL_232;
    }

LABEL_240:
    if (v151 != 6)
    {
      goto LABEL_252;
    }

    v149 = *i;
LABEL_242:
    v155 = *v149;
    v156 = v149[2];
    v157 = v155 == *"FEC-FR" && v156 == *"FR";
    if (v157 && *(i + 4) - *(i + 3) != 8)
    {
      goto LABEL_260;
    }

    if ((v148 & 0x80) != 0)
    {
      v151 = *(i + 1);
LABEL_252:
      if (v151 != 3)
      {
        continue;
      }

      v158 = *i;
      goto LABEL_254;
    }

LABEL_249:
    v158 = i;
    if (v148 != 3)
    {
      continue;
    }

LABEL_254:
    v159 = *v158;
    v160 = *(v158 + 2);
    v161 = v159 == *"SIM" && v160 == webrtc::kSimSsrcGroupSemantics[2];
    if (v161 && *(i + 4) - *(i + 3) >= 0xDuLL)
    {
      goto LABEL_260;
    }

LABEL_224:
    ;
  }

  v149 = i;
  if (v148 == 6)
  {
    goto LABEL_242;
  }

  v150 = i;
  if (v148 != 3)
  {
    goto LABEL_224;
  }

LABEL_232:
  v152 = *v150;
  v153 = *(v150 + 2);
  v154 = v152 == *"FID" && v153 == webrtc::kFidSsrcGroupSemantics[2];
  if (!v154 || *(i + 4) - *(i + 3) == 8)
  {
    if ((v148 & 0x80) == 0)
    {
      goto LABEL_249;
    }

    v151 = *(i + 1);
    goto LABEL_240;
  }

LABEL_260:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    goto LABEL_373;
  }

  std::operator+<char>();
  v108 = v293[1].__r_.__value_.__r.__words[2];
  if ((v293[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v165 = 22;
  }

  else
  {
    v165 = (v293[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v293[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v166 = HIBYTE(v293[1].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v166 = v293[1].__r_.__value_.__l.__size_;
  }

  if (v165 - v166 < 0x22)
  {
    std::string::__grow_by_and_replace(&v293[1], v165, v166 - v165 + 34, v166, v166, 0, 0x22uLL, "' has a ssrc-group with semantics ");
    goto LABEL_330;
  }

  if ((v293[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v177 = &v293[1];
  }

  else
  {
    v177 = v293[1].__r_.__value_.__l.__data_;
  }

  v178 = v177 + v166;
  if (v177 + v166 <= "' has a ssrc-group with semantics " && v178 + 34 > "' has a ssrc-group with semantics ")
  {
    goto LABEL_484;
  }

  qmemcpy(v178, "' has a ssrc-group with semantics ", 34);
  v179 = v166 + 34;
  if ((v108 & 0x8000000000000000) != 0)
  {
    v293[1].__r_.__value_.__l.__size_ = v166 + 34;
  }

  else
  {
    *(&v293[1].__r_.__value_.__s + 23) = v179 & 0x7F;
  }

  v177->__r_.__value_.__s.__data_[v179] = 0;
LABEL_330:
  v285 = v293[1];
  memset(&v293[1], 0, sizeof(std::string));
  v189 = *(i + 23);
  if ((v189 & 0x8000000000000000) != 0)
  {
    v190 = *i;
    v189 = *(i + 1);
    v108 = v189 == 0;
    if (*i || !v189)
    {
      goto LABEL_334;
    }

    goto LABEL_484;
  }

  LOBYTE(v108) = v189 == 0;
  v190 = i;
LABEL_334:
  if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v191 = 22;
  }

  else
  {
    v191 = (v285.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v192 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v192 = v285.__r_.__value_.__l.__size_;
  }

  if (v191 - v192 < v189)
  {
    std::string::__grow_by_and_replace(&v285, v191, v192 + v189 - v191, v192, v192, 0, v189, v190);
    goto LABEL_353;
  }

  if ((v108 & 1) == 0)
  {
    v108 = v285.__r_.__value_.__r.__words[0];
    if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v193 = &v285;
    }

    else
    {
      v193 = v285.__r_.__value_.__r.__words[0];
    }

    if ((v189 & 0x8000000000000000) == 0)
    {
      v194 = v193 + v192;
      if (v193 + v192 > v190 || (v108 = &v194[v189], &v194[v189] <= v190))
      {
        v195 = v189;
        memmove(v194, v190, v189);
        v196 = v192 + v195;
        if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
        {
          v285.__r_.__value_.__l.__size_ = v192 + v195;
        }

        else
        {
          *(&v285.__r_.__value_.__s + 23) = v196 & 0x7F;
        }

        v193->__r_.__value_.__s.__data_[v196] = 0;
        goto LABEL_353;
      }
    }

LABEL_484:
    __break(1u);
LABEL_485:
    v239 = (*(v108 + 24))(a2);
    v240 = a2->__r_.__value_.__r.__words[0];
    if (v239)
    {
      v241 = (*(v240 + 24))(a2);
      v242 = (*(*v241 + 32))(v241);
      if ((*(a2->__r_.__value_.__r.__words[0] + 32))(a2))
      {
        v243 = (*(a2->__r_.__value_.__r.__words[0] + 32))(a2);
        v244 = (*(*v243 + 32))(v243);
LABEL_497:
        if (v242)
        {
          v256 = (*(*v283 + 32))(v283);
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
              __src.__r_.__value_.__l.__size_ = 17;
              webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v262, v263, v264, v265, v266, v267, v268, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
            }

            webrtc::RTCError::RTCError(a1, 3, "The order of m-lines in subsequent offer doesn't match order from previous offer/answer.", 0x58uLL);
            goto LABEL_468;
          }
        }

LABEL_499:
        if (!(*(*a2->__r_.__value_.__l.__size_ + 192))(a2->__r_.__value_.__l.__size_))
        {
          goto LABEL_510;
        }

        v257 = (*(*v283 + 32))(v283);
        v258 = *v257;
        v259 = v257[1];
        if (*v257 != v259)
        {
          while (1)
          {
            v260 = *(v258 + 32);
            if ((!(*(*v260 + 16))(v260) || (*(*v260 + 16))(v260) == 1) && 0x8E38E38E38E38E39 * ((v260[13] - v260[12]) >> 4) >= 2)
            {
              break;
            }

            v258 += 40;
            if (v258 == v259)
            {
              goto LABEL_507;
            }
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
            __src.__r_.__value_.__l.__size_ = 17;
            webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v269, v270, v271, v272, v273, v274, v275, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

          webrtc::RTCError::RTCError(a1, 3, "Media section has more than one track specified with a=ssrc lines which is not supported with Unified Plan.", 0x6BuLL);
          goto LABEL_468;
        }

LABEL_507:
        v261 = (*(*v283 + 32))(v283);
        v140 = __src.__r_.__value_.__l.__data_;
        LODWORD(v287.__r_.__value_.__l.__data_) = __src.__r_.__value_.__l.__data_;
        if ((v288[7] & 0x80000000) != 0)
        {
          operator delete(v287.__r_.__value_.__l.__size_);
          v140 = v287.__r_.__value_.__l.__data_;
        }

        *&v5->__r_.__value_.__r.__words[1] = *(a5 + 8);
        v5[1].__r_.__value_.__r.__words[0] = *v292;
        LODWORD(v5[1].__r_.__value_.__r.__words[1]) = *&v292[8];
        *(&v5[1].__r_.__value_.__r.__words[1] + 3) = *(a5 + 35);
        if (!v140)
        {
LABEL_510:
          *a1 = 0;
          *(a1 + 38) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 8) = 0;
          *(a1 + 29) = 0;
          goto LABEL_468;
        }

LABEL_466:
        *a1 = v140;
        *(a1 + 8) = *&v5->__r_.__value_.__r.__words[1];
        *(a1 + 24) = v5[1].__r_.__value_.__l.__data_;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5[1].__r_.__value_.__r.__words[0] = 0;
        *(a1 + 32) = v5[1].__r_.__value_.__r.__words[1];
        v188 = *(&v5[1].__r_.__value_.__r.__words[1] + 3);
LABEL_467:
        *(a1 + 35) = v188;
        goto LABEL_468;
      }
    }

    else
    {
      if (!(*(v240 + 32))(a2))
      {
        goto LABEL_499;
      }

      v255 = (*(a2->__r_.__value_.__r.__words[0] + 32))(a2);
      v242 = (*(*v255 + 32))(v255);
    }

    v244 = 0;
    goto LABEL_497;
  }

LABEL_353:
  v108 = v285.__r_.__value_.__r.__words[2];
  v289 = v285;
  memset(&v285, 0, sizeof(v285));
  if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v197 = 22;
  }

  else
  {
    v197 = (v289.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v198 = HIBYTE(v289.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v198 = v289.__r_.__value_.__l.__size_;
  }

  if (v197 - v198 >= 0x23)
  {
    v199 = &v289;
    if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v199 = v289.__r_.__value_.__r.__words[0];
    }

    v200 = v199 + v198;
    if (v199 + v198 <= " and an unexpected number of SSRCs." && v200 + 35 > " and an unexpected number of SSRCs.")
    {
      goto LABEL_484;
    }

    qmemcpy(v200, " and an unexpected number of SSRCs.", 35);
    v201 = v198 + 35;
    if ((v108 & 0x8000000000000000) != 0)
    {
      v289.__r_.__value_.__l.__size_ = v198 + 35;
    }

    else
    {
      *(&v289.__r_.__value_.__s + 23) = v201 & 0x7F;
    }

    v199->__r_.__value_.__s.__data_[v201] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v289, v197, v198 - v197 + 35, v198, v198, 0, 0x23uLL, " and an unexpected number of SSRCs.");
  }

  __src = v289;
  memset(&v289, 0, sizeof(v289));
  v293[0].__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
  v293[0].__r_.__value_.__l.__size_ = 17;
  webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v197, v162, v198, v163, v164, v189, v190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v289.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_371;
    }

LABEL_404:
    operator delete(v289.__r_.__value_.__l.__data_);
    if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_405;
    }

LABEL_372:
    if ((SHIBYTE(v293[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_373;
    }

LABEL_406:
    operator delete(v293[1].__r_.__value_.__l.__data_);
    goto LABEL_373;
  }

  operator delete(__src.__r_.__value_.__l.__data_);
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_404;
  }

LABEL_371:
  if ((SHIBYTE(v285.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_372;
  }

LABEL_405:
  operator delete(v285.__r_.__value_.__l.__data_);
  if (SHIBYTE(v293[1].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_406;
  }

LABEL_373:
  if (*(v143 + 31) >= 0)
  {
    v202 = *(v143 + 31);
  }

  else
  {
    v202 = *(v143 + 16);
  }

  a5 = v202 + 28;
  if (v202 + 28 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_517;
  }

  if (a5 > 0x16)
  {
    operator new();
  }

  memset(v293, 0, 24);
  v108 = v293;
  *(&v293[0].__r_.__value_.__s + 23) = v202 + 28;
  if (v293 <= "The media section with MID='" && v293[1].__r_.__value_.__r.__words + 4 > "The media section with MID='")
  {
    goto LABEL_484;
  }

  qmemcpy(v293, "The media section with MID='", 28);
  v108 = *(v143 + 31);
  v203 = (v108 & 0x80000000) == 0 ? (v143 + 8) : *(v143 + 8);
  if ((v202 & 0x8000000000000000) != 0)
  {
    goto LABEL_484;
  }

  v204 = v293[1].__r_.__value_.__r.__words + v202 + 4;
  if (v203 >= &v293[1].__r_.__value_.__s.__data_[4] && v204 > v203)
  {
    goto LABEL_484;
  }

  if (v202)
  {
    memmove(v293[1].__r_.__value_.__r.__words + 4, v203, v202);
  }

  *v204 = 0;
  v108 = v293[0].__r_.__value_.__r.__words[2];
  if ((v293[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v205 = 22;
  }

  else
  {
    v205 = (v293[0].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v293[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v206 = HIBYTE(v293[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v206 = v293[0].__r_.__value_.__l.__size_;
  }

  if (v205 - v206 >= 0x22)
  {
    v207 = v293;
    if ((v293[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v207 = v293[0].__r_.__value_.__r.__words[0];
    }

    v208 = v207 + v206;
    if (v207 + v206 <= "' has a ssrc-group with semantics " && v208 + 34 > "' has a ssrc-group with semantics ")
    {
      goto LABEL_484;
    }

    qmemcpy(v208, "' has a ssrc-group with semantics ", 34);
    v209 = v206 + 34;
    if ((v108 & 0x8000000000000000) != 0)
    {
      v293[0].__r_.__value_.__l.__size_ = v206 + 34;
    }

    else
    {
      *(&v293[0].__r_.__value_.__s + 23) = v209 & 0x7F;
    }

    v207->__r_.__value_.__s.__data_[v209] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v293, v205, v206 - v205 + 34, v206, v206, 0, 0x22uLL, "' has a ssrc-group with semantics ");
  }

  v293[1] = v293[0];
  memset(v293, 0, 24);
  v210 = *(i + 23);
  if ((v210 & 0x8000000000000000) != 0)
  {
    v211 = *i;
    v210 = *(i + 1);
    v108 = v210 == 0;
    if (!*i && v210)
    {
      goto LABEL_484;
    }
  }

  else
  {
    LOBYTE(v108) = v210 == 0;
    v211 = i;
  }

  if ((v293[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v212 = 22;
  }

  else
  {
    v212 = (v293[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v293[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v213 = HIBYTE(v293[1].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v213 = v293[1].__r_.__value_.__l.__size_;
  }

  if (v212 - v213 >= v210)
  {
    if ((v108 & 1) == 0)
    {
      v108 = v293[1].__r_.__value_.__r.__words[0];
      if ((v293[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v214 = &v293[1];
      }

      else
      {
        v214 = v293[1].__r_.__value_.__l.__data_;
      }

      if ((v210 & 0x8000000000000000) != 0)
      {
        goto LABEL_484;
      }

      v215 = v214 + v213;
      if (v214 + v213 <= v211)
      {
        v108 = &v215[v210];
        if (&v215[v210] > v211)
        {
          goto LABEL_484;
        }
      }

      v216 = v210;
      memmove(v215, v211, v210);
      v217 = v213 + v216;
      if (SHIBYTE(v293[1].__r_.__value_.__r.__words[2]) < 0)
      {
        v293[1].__r_.__value_.__l.__size_ = v213 + v216;
      }

      else
      {
        *(&v293[1].__r_.__value_.__s + 23) = v217 & 0x7F;
      }

      v214->__r_.__value_.__s.__data_[v217] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v293[1], v212, v213 + v210 - v212, v213, v213, 0, v210, v211);
  }

  v285 = v293[1];
  v108 = v293[1].__r_.__value_.__r.__words[2];
  memset(&v293[1], 0, sizeof(std::string));
  if ((v108 & 0x8000000000000000) == 0)
  {
    v218 = 22;
  }

  else
  {
    v218 = (v108 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v108 & 0x8000000000000000) == 0)
  {
    v219 = HIBYTE(v108);
  }

  else
  {
    v219 = v285.__r_.__value_.__l.__size_;
  }

  if (v218 - v219 >= 0x23)
  {
    v220 = &v285;
    if ((v108 & 0x8000000000000000) != 0)
    {
      v220 = v285.__r_.__value_.__r.__words[0];
    }

    v221 = v220 + v219;
    if (v220 + v219 <= " and an unexpected number of SSRCs." && v221 + 35 > " and an unexpected number of SSRCs.")
    {
      goto LABEL_484;
    }

    qmemcpy(v221, " and an unexpected number of SSRCs.", 35);
    v222 = v219 + 35;
    if ((v108 & 0x8000000000000000) != 0)
    {
      v285.__r_.__value_.__l.__size_ = v219 + 35;
    }

    else
    {
      *(&v285.__r_.__value_.__s + 23) = v222 & 0x7F;
    }

    v220->__r_.__value_.__s.__data_[v222] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v285, v218, v219 - v218 + 35, v219, v219, 0, 0x23uLL, " and an unexpected number of SSRCs.");
  }

  v289 = v285;
  memset(&v285, 0, sizeof(v285));
  v223 = SHIBYTE(v289.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v289.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    LODWORD(__src.__r_.__value_.__l.__data_) = 3;
    v224 = &v289;
    v225 = SHIBYTE(v289.__r_.__value_.__r.__words[2]);
    goto LABEL_451;
  }

  v225 = v289.__r_.__value_.__l.__size_;
  v224 = v289.__r_.__value_.__r.__words[0];
  LODWORD(__src.__r_.__value_.__l.__data_) = 3;
  if (v289.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_517:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_451:
  if (v225 > 0x16)
  {
    operator new();
  }

  v108 = &__src;
  v292[7] = v225;
  v226 = (&__src.__r_.__value_.__r.__words[1] + v225);
  if (&__src.__r_.__value_.__r.__words[1] <= v224 && v226 > v224)
  {
    goto LABEL_484;
  }

  if (v225)
  {
    memmove(&__src.__r_.__value_.__r.__words[1], v224, v225);
  }

  v226->__r_.__value_.__s.__data_[0] = 0;
  *&v292[8] = 0;
  v292[12] = 0;
  v292[14] = 0;
  if ((v223 & 0x80000000) == 0)
  {
    a5 = &__src;
    if ((SHIBYTE(v285.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_460;
    }

LABEL_478:
    operator delete(v285.__r_.__value_.__l.__data_);
    v132 = v283;
    if (SHIBYTE(v293[1].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_479;
    }

LABEL_461:
    if ((SHIBYTE(v293[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_462;
    }

LABEL_480:
    operator delete(v293[0].__r_.__value_.__l.__data_);
    goto LABEL_462;
  }

  operator delete(v289.__r_.__value_.__l.__data_);
  a5 = &__src;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_478;
  }

LABEL_460:
  v132 = v283;
  if ((SHIBYTE(v293[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_461;
  }

LABEL_479:
  operator delete(v293[1].__r_.__value_.__l.__data_);
  if (SHIBYTE(v293[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_480;
  }

LABEL_462:
  v140 = __src.__r_.__value_.__l.__data_;
LABEL_463:
  LODWORD(v287.__r_.__value_.__l.__data_) = v140;
  if ((v288[7] & 0x80000000) != 0)
  {
    operator delete(v287.__r_.__value_.__l.__size_);
    v140 = v287.__r_.__value_.__l.__data_;
  }

  *&v287.__r_.__value_.__r.__words[1] = *&__src.__r_.__value_.__r.__words[1];
  *v288 = *v292;
  *&v288[8] = *&v292[8];
  *&v288[11] = *&v292[11];
  if (v140)
  {
    goto LABEL_466;
  }

  v227 = v277->__r_.__value_.__l.__size_;
  v228 = (*(*v132 + 32))(v132);
  if (((*(*v227 + 200))(v227, v228, v284) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
      __src.__r_.__value_.__l.__size_ = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v232, v233, v234, v235, v236, v237, v238, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    webrtc::RTCError::RTCError(a1, 3, "rtcp-mux must be enabled when BUNDLE is enabled.", 0x30uLL);
    goto LABEL_468;
  }

  v229 = (*(*v132 + 32))(v132);
  v140 = __src.__r_.__value_.__l.__data_;
  LODWORD(v287.__r_.__value_.__l.__data_) = __src.__r_.__value_.__l.__data_;
  if ((v288[7] & 0x80000000) != 0)
  {
    operator delete(v287.__r_.__value_.__l.__size_);
    v140 = v287.__r_.__value_.__l.__data_;
  }

  *&v287.__r_.__value_.__r.__words[1] = *&__src.__r_.__value_.__r.__words[1];
  *v288 = *v292;
  *&v288[8] = *&v292[8];
  *&v288[11] = *&v292[11];
  if (v140)
  {
    goto LABEL_466;
  }

  v230 = v277->__r_.__value_.__r.__words[0];
  v108 = v277->__r_.__value_.__r.__words[0];
  if ((v279 - 1) > 1)
  {
    goto LABEL_485;
  }

  if (v278)
  {
    v231 = (*(v230 + 24))(v277);
  }

  else
  {
    v231 = (*(v230 + 32))(v277);
  }

  v245 = (*(*v231 + 32))(v231);
  v246 = (*(*v132 + 32))(v132);
  if (v245[1] - *v245 == v246[1] - *v246)
  {
    v247 = (*(*v283 + 32))(v283);
    {
      goto LABEL_499;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
    __src.__r_.__value_.__l.__size_ = 17;
    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v248, v249, v250, v251, v252, v253, v254, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }

  webrtc::RTCError::RTCError(a1, 3, "The order of m-lines in answer doesn't match order in offer. Rejecting answer.", 0x4EuLL);
LABEL_468:
  if ((v288[7] & 0x80000000) != 0)
  {
    operator delete(v287.__r_.__value_.__l.__size_);
  }
}

void webrtc::anonymous namespace::GetSetDescriptionErrorMessage(std::string *a1, int a2, unsigned int a3, uint64_t a4)
{
  *&v38.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v38 <= "Failed to set " && &v38.__r_.__value_.__r.__words[1] + 6 > "Failed to set ")
  {
    goto LABEL_92;
  }

  qmemcpy(&v38, "Failed to set ", 14);
  *(&v38.__r_.__value_.__s + 23) = 14;
  if (a2)
  {
    v8 = "remote";
  }

  else
  {
    v8 = "local";
  }

  v9 = 19;
  if (a2)
  {
    v9 = 20;
  }

  if (&v38.__r_.__value_.__r.__words[1] + 6 <= v8 && &v38 + v9 > v8)
  {
    goto LABEL_92;
  }

  if (a2)
  {
    v10 = 6;
  }

  else
  {
    v10 = 5;
  }

  memcpy(&v38.__r_.__value_.__r.__words[1] + 6, v8, v10);
  v11 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    v38.__r_.__value_.__l.__size_ = v10 + 14;
    size = v10 + 14;
  }

  else
  {
    *(&v38.__r_.__value_.__s + 23) = v10 + 14;
    size = v38.__r_.__value_.__l.__size_;
    v11 = v10 + 14;
  }

  v38.__r_.__value_.__s.__data_[v10 + 14] = 0;
  if ((v11 & 0x80u) == 0)
  {
    v13 = 22;
  }

  else
  {
    v13 = (v38.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v11 & 0x80u) == 0)
  {
    size = v11;
  }

  if (v13 == size)
  {
    std::string::__grow_by_and_replace(&v38, v13, 1uLL, v13, v13, 0, 1uLL, " ");
    if (a3 <= 3)
    {
LABEL_25:
      v14 = off_279E95270[a3];
      goto LABEL_33;
    }
  }

  else
  {
    v15 = 0x742064656C696146;
    if ((v11 & 0x80u) == 0)
    {
      v15 = &v38;
    }

    v16 = (v15 + size);
    if (v15 + size <= " " && v16 + 1 > " ")
    {
      goto LABEL_92;
    }

    *v16 = 32;
    v17 = size + 1;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v38.__r_.__value_.__l.__size_ = v17;
      *(v15 + v17) = 0;
      if (a3 <= 3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(&v38.__r_.__value_.__s + 23) = v17 & 0x7F;
      *(v15 + v17) = 0;
      if (a3 <= 3)
      {
        goto LABEL_25;
      }
    }
  }

  v14 = &str_65;
LABEL_33:
  v18 = strlen(v14);
  v19 = v18;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v38.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v38.__r_.__value_.__l.__size_;
  }

  if (v20 - v21 >= v18)
  {
    if (v18)
    {
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v38;
      }

      else
      {
        v22 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      v23 = v22 + v21;
      if (v22 + v21 <= v14 && &v23[v19] > v14)
      {
        goto LABEL_92;
      }

      memcpy(v23, v14, v19);
      v24 = v21 + v19;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        v38.__r_.__value_.__l.__size_ = v21 + v19;
      }

      else
      {
        *(&v38.__r_.__value_.__s + 23) = v24 & 0x7F;
      }

      v22->__r_.__value_.__s.__data_[v24] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v38, v20, v21 + v18 - v20, v21, v21, 0, v18, v14);
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = 22;
  }

  else
  {
    v25 = (v38.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v38.__r_.__value_.__l.__size_;
  }

  if (v25 - v26 >= 6)
  {
    v28 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v38.__r_.__value_.__r.__words[0];
    }

    v29 = v28 + v26;
    if (v28 + v26 <= " sdp: " && v29 + 6 > " sdp: ")
    {
      goto LABEL_92;
    }

    *(v29 + 2) = 8250;
    *v29 = 1885631264;
    v30 = v26 + 6;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v38.__r_.__value_.__l.__size_ = v26 + 6;
      v28->__r_.__value_.__s.__data_[v30] = 0;
      v27 = (a4 + 8);
      if (*(a4 + 31) < 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *(&v38.__r_.__value_.__s + 23) = v30 & 0x7F;
      v28->__r_.__value_.__s.__data_[v30] = 0;
      v27 = (a4 + 8);
      if (*(a4 + 31) < 0)
      {
LABEL_71:
        v27 = *v27;
        if (!v27)
        {
          goto LABEL_92;
        }
      }
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v38, v25, v26 - v25 + 6, v26, v26, 0, 6uLL, " sdp: ");
    v27 = (a4 + 8);
    if (*(a4 + 31) < 0)
    {
      goto LABEL_71;
    }
  }

  v31 = strlen(v27);
  v32 = v31;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = 22;
  }

  else
  {
    v33 = (v38.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v38.__r_.__value_.__l.__size_;
  }

  if (v33 - v34 < v31)
  {
    std::string::__grow_by_and_replace(&v38, v33, v34 + v31 - v33, v34, v34, 0, v31, v27);
LABEL_91:
    *a1 = v38;
    return;
  }

  if (!v31)
  {
    goto LABEL_91;
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v38;
  }

  else
  {
    v35 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v36 = v35 + v34;
    if (v35 + v34 > v27 || &v36[v32] <= v27)
    {
      memmove(v36, v27, v32);
      v37 = v34 + v32;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        v38.__r_.__value_.__l.__size_ = v34 + v32;
      }

      else
      {
        *(&v38.__r_.__value_.__s + 23) = v37 & 0x7F;
      }

      v35->__r_.__value_.__s.__data_[v37] = 0;
      goto LABEL_91;
    }
  }

LABEL_92:
  __break(1u);
}

BOOL webrtc::FieldTrialsView::IsDisabled(uint64_t a1)
{
  (*(*a1 + 16))(__p);
  v1 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  if (v1 >= 8)
  {
    v3 = __p[0];
    if ((v6 & 0x80u) == 0)
    {
      v3 = __p;
    }

    v2 = *v3 == 0x64656C6261736944;
    if (v6 < 0)
    {
      goto LABEL_10;
    }

    return v2;
  }

  v2 = 0;
  if ((v6 & 0x80000000) == 0)
  {
    return v2;
  }

LABEL_10:
  operator delete(__p[0]);
  return v2;
}

std::string *webrtc::SdpOfferAnswerHandler::SetSessionError(std::string *result, std::string *a2)
{
  if (LODWORD(result[10].__r_.__value_.__r.__words[2]) != 1)
  {
    v2 = result;
    LODWORD(result[10].__r_.__value_.__r.__words[2]) = 1;
    result += 11;
    if (result != a2)
    {
      if (SHIBYTE(v2[11].__r_.__value_.__r.__words[2]) < 0)
      {
        size = a2->__r_.__value_.__l.__size_;
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          a2 = a2->__r_.__value_.__r.__words[0];
          v5 = size;
        }

        return std::string::__assign_no_alias<false>(result, a2, v5);
      }

      else if ((*(&a2->__r_.__value_.__s + 23) & 0x80) != 0)
      {
        return std::string::__assign_no_alias<true>(result, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        v3 = *&a2->__r_.__value_.__l.__data_;
        result->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
        *&result->__r_.__value_.__l.__data_ = v3;
      }
    }
  }

  return result;
}

webrtc::Codec **std::vector<std::pair<webrtc::Codec,webrtc::Codec>>::~vector[abi:sn200100](webrtc::Codec **a1)
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
        v5 = (v3 - 432);
        webrtc::Codec::~Codec((v3 - 216));
        webrtc::Codec::~Codec(v5);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t webrtc::SdpOfferAnswerHandler::GenerateNegotiationNeededEvent(webrtc::SdpOfferAnswerHandler *this)
{
  ++*(this + 59);
  v1 = *(*(*(**(this + 1) + 144))(*(this + 1)) + 56);

  return v1();
}

void webrtc::SdpOfferAnswerHandler::DoCreateOffer(uint64_t a1, int *a2, void (****a3)(void))
{
  v45 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    if ((*(**(a1 + 8) + 184))(*(a1 + 8)))
    {
      operator new();
    }

    if (*(a1 + 256))
    {
      webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&__src, a1);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      v20 = (*(**(a1 + 8) + 56))(*(a1 + 8));
      v21 = *a3;
      size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __src.__r_.__value_.__l.__size_;
        p_src = __src.__r_.__value_.__r.__words[0];
        LODWORD(v38) = 10;
        if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (__src.__r_.__value_.__l.__size_ <= 0x16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        LODWORD(v38) = 10;
        p_src = &__src;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) <= 0x16)
        {
LABEL_11:
          v40 = size;
          v24 = (&v39 + size);
          if (&v39 > p_src || v24 <= p_src)
          {
            if (size)
            {
              memmove(&v39, p_src, size);
            }

            v24->__r_.__value_.__s.__data_[0] = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            webrtc::PeerConnectionMessageHandler::PostCreateSessionDescriptionFailure(v20, v21, &v38);
          }

          goto LABEL_47;
        }
      }

      operator new();
    }

    if ((a2[1] + 1) > 2 || (*a2 + 1) >= 3)
    {
      operator new();
    }

    if (!(*(**(a1 + 8) + 192))(*(a1 + 8)))
    {
LABEL_44:
      v35[23] = 16;
      if (v35 > "DefaultRtcpCname" || &v35[16] <= "DefaultRtcpCname")
      {
        strcpy(v35, "DefaultRtcpCname");
        v36 = 16842753;
        v37 = 0;
        operator new();
      }

LABEL_47:
      __break(1u);
    }

    v26 = a2[1];
    if (v26 == 1)
    {
      webrtc::SdpOfferAnswerHandler::AddUpToOneReceivingTransceiverOfType(a1, 0);
    }

    else if (v26)
    {
      if (v26 >= 2)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          goto LABEL_43;
        }

        __src.__r_.__value_.__r.__words[0] = "UNSUPPORTED_PARAMETER";
        __src.__r_.__value_.__l.__size_ = 21;
        goto LABEL_42;
      }
    }

    else
    {
      webrtc::SdpOfferAnswerHandler::RemoveRecvDirectionFromReceivingTransceiversOfType(a1, 0);
    }

    v34 = *a2;
    if (*a2 == 1)
    {
      webrtc::SdpOfferAnswerHandler::AddUpToOneReceivingTransceiverOfType(a1, 1);
      goto LABEL_44;
    }

    if (!v34)
    {
      webrtc::SdpOfferAnswerHandler::RemoveRecvDirectionFromReceivingTransceiversOfType(a1, 1);
      goto LABEL_44;
    }

    if (v34 < 2)
    {
      goto LABEL_44;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
LABEL_43:
      operator new();
    }

    __src.__r_.__value_.__r.__words[0] = "UNSUPPORTED_PARAMETER";
    __src.__r_.__value_.__l.__size_ = 21;
LABEL_42:
    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    goto LABEL_43;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }
}

void webrtc::SdpOfferAnswerHandler::CreateAnswer(uint64_t a1, void (***a2)(void))
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 424);
  if (!v4 || atomic_load_explicit((v4 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v5 = *(a1 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v5 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v5, 0x1000C404A09149ALL);
    }

    if (a2)
    {
      goto LABEL_8;
    }
  }

  else if (a2)
  {
LABEL_8:
    (**a2)(a2);
  }

  if (v3)
  {
    atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::SdpOfferAnswerHandler::DoCreateAnswer(uint64_t a1, _DWORD *a2, void (****a3)(void))
{
  v62 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    if (!*(a1 + 256))
    {
      if ((*(a1 + 84) & 0xFFFFFFFE) != 2)
      {
        operator new();
      }

      LODWORD(v15) = (*(**(a1 + 8) + 192))(*(a1 + 8));
      if (v15)
      {
        v25 = a2;
        if (a2[1] != -1)
        {
          LODWORD(v15) = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
          v25 = a2;
          if ((v15 & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
            v25 = a2;
          }
        }

        if (*v25 != -1)
        {
          LODWORD(v15) = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
          if ((v15 & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }
        }
      }

      v47[23] = 16;
      if (v47 > "DefaultRtcpCname" || &v47[16] <= "DefaultRtcpCname")
      {
        strcpy(v47, "DefaultRtcpCname");
        v48 = 16842753;
        v49 = 0;
        operator new();
      }

      goto LABEL_33;
    }

    webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&__src, a1);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    v12 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    v13 = *a3;
    size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __src.__r_.__value_.__l.__size_;
      p_src = __src.__r_.__value_.__r.__words[0];
      LODWORD(v50) = 10;
      if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }

      v15 = &v51;
      if (__src.__r_.__value_.__l.__size_ <= 0x16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LODWORD(v50) = 10;
      v15 = &v51;
      p_src = &__src;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) <= 0x16)
      {
LABEL_7:
        v52 = size;
        v40 = (&v51 + size);
        if (&v51 > p_src || v40 <= p_src)
        {
          if (size)
          {
            memmove(&v51, p_src, size);
          }

          v40->__r_.__value_.__s.__data_[0] = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          webrtc::PeerConnectionMessageHandler::PostCreateSessionDescriptionFailure(v12, v13, &v50);
        }

LABEL_33:
        __break(1u);
        v42 = v15;
        webrtc::webrtc_checks_impl::MakeVal<webrtc::MediaType,(void *)0>(&__src, 2);
        webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&__p, &__src);
        v57 = &v59;
        webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&__src.__r_.__value_.__l.__data_);
        webrtc::webrtc_checks_impl::MakeVal<webrtc::MediaType,(void *)0>(&v58, v42);
        webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&__src, &v58);
        p_p = &__p;
        webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v58);
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc", 4711, "MediaType::DATA == media_type", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v43, v44, v45, v46, p_p);
LABEL_34:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }
}

void webrtc::SdpOfferAnswerHandler::DoSetRemoteDescription(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(*a2 + 64))
  {
    return;
  }

  if (*(*v3 + 64))
  {
    webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&__src, *v3);
    webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SetError(v3, 10, &__src);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
      if (*(v3 + 16))
      {
        return;
      }
    }

    else if (*(v3 + 16))
    {
      return;
    }

    v3 = *a2;
  }

  v6 = *(v3 + 32);
  if (v6 == 3)
  {
    if (*(v3 + 132) != 1)
    {
      operator new();
    }

    webrtc::SdpOfferAnswerHandler::Rollback(&v170, *v3, 3);
    *(v3 + 16) = v170;
    if (*(v3 + 95) < 0)
    {
      operator delete(v3[9]);
    }

    *(v3 + 9) = v171;
    v3[11] = v172;
    *(v3 + 24) = v173[0];
    *(v3 + 99) = *(v173 + 3);
    return;
  }

  if (!v6 && *(v3 + 132) == 1 && *((*(*(*v3)[1] + 40))((*v3)[1]) + 312) == 1 && ((**v3)[2])() == 1)
  {
    webrtc::SdpOfferAnswerHandler::Rollback(&__src, *v3, *(v3 + 32));
    if (SHIBYTE(v178) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__size_);
    }
  }

  v7 = *a2;
  if ((*(*a2 + 128) | 2) == 2)
  {
    (*(**(*v7 + 8) + 48))(*(*v7 + 8), v7[1]);
    v7 = *a2;
  }

  v8 = (*(*v7[1] + 24))(v7[1]);
  v170 = 0;
  v171 = 0uLL;
  if ((*(*a1 + 24))(a1))
  {
    v9 = (*(*a1 + 24))(a1);
    v167 = (*(*v9 + 32))(v9);
  }

  else
  {
    v167 = &v170;
  }

  v169 = a1;
  v165 = a2;
  if (!(*(*a1 + 32))(a1))
  {
    v166 = &v170;
    v12 = *v8;
    v11 = v8[1];
    if (v11 == *v8)
    {
      goto LABEL_120;
    }

    goto LABEL_29;
  }

  v10 = (*(*a1 + 32))(a1);
  v166 = (*(*v10 + 32))(v10);
  v12 = *v8;
  v11 = v8[1];
  if (v11 != *v8)
  {
LABEL_29:
    v13 = 0;
    v14 = 0;
    v15 = 16;
    do
    {
      v16 = v12 + v15;
      if ((*(v12 + v15 + 15) & 0x8000000000000000) != 0)
      {
        if (!*(v12 + v15))
        {
LABEL_36:
          memset(&__p, 0, sizeof(__p));
          v174 = 0;
          v175 = 0;
          if ((*(**(a1 + 8) + 192))(*(a1 + 8)))
          {
            v24 = *v167;
            if (v14 >= 0xCCCCCCCCCCCCCCCDLL * ((v167[1] - *v167) >> 3))
            {
              v30 = *v166;
              if (v14 >= 0xCCCCCCCCCCCCCCCDLL * ((v166[1] - *v166) >> 3))
              {
                webrtc::UniqueNumberGenerator<unsigned int>::GenerateNumber((a1 + 168), v17, v18, v19, v20, v21, v22, v23);
              }

              v31 = (v30 + v15 - 8);
              if (v31 != &__p)
              {
                v32 = *(v30 + v15 + 15);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  v43 = *(v30 + v15);
                  if ((v32 & 0x80u) == 0)
                  {
                    v44 = v31;
                  }

                  else
                  {
                    v44 = v31->__r_.__value_.__r.__words[0];
                  }

                  if ((v32 & 0x80u) == 0)
                  {
                    v45 = v32;
                  }

                  else
                  {
                    v45 = v43;
                  }

                  std::string::__assign_no_alias<false>(&__p, v44, v45);
                }

                else if ((v32 & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(&__p, v31->__r_.__value_.__l.__data_, *(v30 + v15));
                }

                else
                {
                  v33 = *&v31->__r_.__value_.__l.__data_;
                  __p.__r_.__value_.__r.__words[2] = *(v30 + v15 + 8);
                  *&__p.__r_.__value_.__l.__data_ = v33;
                }
              }

              v174 = "from the matching previous remote media section";
              v175 = 47;
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v25 = (v24 + v15 - 8);
              if (v25 != &__p)
              {
                v26 = *(v24 + v15 + 15);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  v38 = *(v24 + v15);
                  if ((v26 & 0x80u) == 0)
                  {
                    v39 = v25;
                  }

                  else
                  {
                    v39 = v25->__r_.__value_.__r.__words[0];
                  }

                  if ((v26 & 0x80u) == 0)
                  {
                    v40 = v26;
                  }

                  else
                  {
                    v40 = v38;
                  }

                  std::string::__assign_no_alias<false>(&__p, v39, v40);
                }

                else if ((v26 & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(&__p, v25->__r_.__value_.__l.__data_, *(v24 + v15));
                }

                else
                {
                  v27 = *&v25->__r_.__value_.__l.__data_;
                  __p.__r_.__value_.__r.__words[2] = *(v24 + v15 + 8);
                  *&__p.__r_.__value_.__l.__data_ = v27;
                }
              }

              v174 = "from the matching local media section";
              v175 = 37;
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
              {
LABEL_81:
                p_p = &__p;
                if (size > 0x16)
                {
                  goto LABEL_95;
                }

                goto LABEL_82;
              }
            }

LABEL_93:
            size = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_278:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__l.__size_ > 0x16)
            {
LABEL_95:
              operator new();
            }

LABEL_82:
            *(&__src.__r_.__value_.__s + 23) = size;
            v42 = (&__src + size);
            if (&__src <= p_p && v42 > p_p)
            {
              goto LABEL_272;
            }

            if (size)
            {
              memmove(&__src, p_p, size);
            }

            v46 = (v16 - 8);
            v42->__r_.__value_.__s.__data_[0] = 0;
            if (*(v16 + 15) < 0)
            {
              operator delete(*v46);
            }

            v47 = *&__src.__r_.__value_.__l.__data_;
            *(v16 + 8) = *(&__src.__r_.__value_.__l + 2);
            *v46 = v47;
            v48 = v8[3];
            if (0x6DB6DB6DB6DB6DB7 * ((v8[4] - v48) >> 4) <= v14)
            {
LABEL_272:
              __break(1u);
              goto LABEL_273;
            }

            v49 = (v13 + v48);
            if ((v13 + v48) != &__p)
            {
              if ((SHIBYTE(v49->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v49, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
                  {
                    goto LABEL_116;
                  }
                }

                else
                {
                  v50 = *&__p.__r_.__value_.__l.__data_;
                  v49->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
                  *&v49->__r_.__value_.__l.__data_ = v50;
                  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
                  {
                    goto LABEL_116;
                  }
                }

LABEL_115:
                v2 = v2 & 0xFFFFFFFF00000000 | 0x8551;
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
LABEL_116:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v12 = *v8;
                v11 = v8[1];
                goto LABEL_31;
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = &__p;
              }

              else
              {
                v58 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v59 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v59 = __p.__r_.__value_.__l.__size_;
              }

              std::string::__assign_no_alias<false>(v49, v58, v59);
            }

            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              goto LABEL_115;
            }

            goto LABEL_116;
          }

          v28 = (*(**(v12 + v15 + 16) + 16))(*(v12 + v15 + 16));
          if (v28 > 1)
          {
            if (v28 != 2)
            {
              if (v28 != 3)
              {
                goto LABEL_56;
              }

              v34 = 13;
              v29 = "not supported";
              *(&__src.__r_.__value_.__s + 23) = 13;
              p_src = (&__src.__r_.__value_.__r.__words[1] + 5);
              if (&__src > "not supported")
              {
LABEL_66:
                if (v34)
                {
                  memmove(&__src, v29, v34);
                }

                p_src->__r_.__value_.__s.__data_[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                __p = __src;
                v174 = "to match pre-existing behavior";
                v175 = 30;
                size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_93;
              }

LABEL_65:
              if (p_src > v29)
              {
                goto LABEL_272;
              }

              goto LABEL_66;
            }

            v29 = "data";
          }

          else
          {
            if (v28)
            {
              if (v28 == 1)
              {
                v29 = "video";
                goto LABEL_60;
              }

LABEL_56:
              v34 = 0;
              v29 = "";
              *(&__src.__r_.__value_.__s + 23) = 0;
              p_src = &__src;
              if (&__src > "")
              {
                goto LABEL_66;
              }

              goto LABEL_65;
            }

            v29 = "audio";
          }

LABEL_60:
          v36 = strlen(v29);
          if (v36 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_278;
          }

          v34 = v36;
          if (v36 > 0x16)
          {
            operator new();
          }

          *(&__src.__r_.__value_.__s + 23) = v36;
          p_src = (&__src + v36);
          if (&__src > v29)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }

      else if (!*(v12 + v15 + 15))
      {
        goto LABEL_36;
      }

LABEL_31:
      ++v14;
      v15 += 40;
      v13 = (v13 + 112);
    }

    while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 3));
  }

LABEL_120:
  v60 = *v165;
  v61 = (*(**(*v165 + 8) + 24))(*(*v165 + 8));
  v62 = v60 + 112;
  std::__tree<webrtc::SocketAddress>::destroy(v60 + 104, *(v60 + 112));
  v63 = __src.__r_.__value_.__l.__size_;
  *(v60 + 104) = __src.__r_.__value_.__r.__words[0];
  *(v60 + 112) = v63;
  v64 = __src.__r_.__value_.__r.__words[2];
  *(v60 + 120) = *(&__src.__r_.__value_.__l + 2);
  if (v64)
  {
    *(v63 + 16) = v62;
    __src.__r_.__value_.__r.__words[0] = &__src.__r_.__value_.__l.__size_;
    *&__src.__r_.__value_.__r.__words[1] = 0uLL;
    v63 = 0;
  }

  else
  {
    *(v60 + 104) = v62;
  }

  std::__tree<webrtc::SocketAddress>::destroy(&__src, v63);
  webrtc::SdpOfferAnswerHandler::ValidateSessionDescription(&__src, *v60, *(v60 + 8), 1, v60 + 104);
  data = __src.__r_.__value_.__l.__data_;
  *(v60 + 64) = __src.__r_.__value_.__l.__data_;
  v13 = v169;
  if (*(v60 + 95) < 0)
  {
    operator delete(*(v60 + 72));
    data = *(v60 + 64);
  }

  *(v60 + 72) = *&__src.__r_.__value_.__r.__words[1];
  *(v60 + 88) = v178;
  *(v60 + 96) = v179[0];
  *(v60 + 99) = *(v179 + 3);
  if (data)
  {
    return;
  }

  v66 = *v165;
  *v165 = 0;
  (*(**(v169 + 1) + 280))(*(v169 + 1));
  v68 = *v66;
  v67 = v66[1];
  v66[1] = 0;
  v69 = *(v66 + 32);
  v70 = v68[7];
  if (v69 == 2)
  {
    v103 = v70 == 0;
    v71 = 7;
    if (v103)
    {
      v71 = 6;
    }

    v72 = v68[v71];
    v68[v71] = 0;
    v73 = v66[2];
    v66[2] = v72;
    if (v73)
    {
      (*(*v73 + 8))(v73);
    }

    v74 = v68[6];
    v68[6] = v67;
    if (v74)
    {
      (*(*v74 + 8))(v74);
    }

    v75 = v68[7];
    v68[7] = 0;
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }

    v76 = v68[4];
    v68[4] = v68[5];
    v68[5] = 0;
    if (!v76)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v68[7] = 0;
    v77 = v66[2];
    v66[2] = v70;
    if (v77)
    {
      (*(*v77 + 8))(v77);
    }

    v76 = v68[7];
    v68[7] = v67;
    if (!v76)
    {
      goto LABEL_142;
    }
  }

  (*(*v76 + 8))(v76);
LABEL_142:
  v78 = ((*v68)[4])(v68);
  v79 = (*(*v78 + 32))(v78);
  v80 = ((*v68)[3])(v68);
  v81 = (*(*v68[1] + 104))(v68[1]);
  if (v80)
  {
    v82 = v81;
    v83 = (*(*v80 + 32))(v80);
    v81 = v82;
  }

  else
  {
    v83 = 0;
  }

  webrtc::JsepTransportController::SetRemoteDescription(v81, v69, v83, v79, &__src);
  v84 = __src.__r_.__value_.__l.__data_;
  *(v66 + 16) = __src.__r_.__value_.__l.__data_;
  if (*(v66 + 95) < 0)
  {
    operator delete(v66[9]);
    v84 = *(v66 + 16);
  }

  *(v66 + 9) = *&__src.__r_.__value_.__r.__words[1];
  v66[11] = v178;
  *(v66 + 24) = v179[0];
  v85 = v66 + 12;
  *(v66 + 99) = *(v179 + 3);
  if (v84)
  {
    webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SetAsSessionError(v66);
    if (*(v66 + 16))
    {
      goto LABEL_162;
    }
  }

  v88 = (*(**v66 + 32))();
  v89 = (*(*v88 + 32))(v88);
  if (*(v66 + 132) == 1)
  {
    v90 = *v66;
    v91 = (*(**v66 + 24))(*v66);
    v92 = v66[2];
    if (*(v66 + 32) != 2 && !v92)
    {
      v92 = (*(**v66 + 48))();
    }

    webrtc::SdpOfferAnswerHandler::UpdateTransceiversAndDataChannels(&__src, v90, 1, v88, v91, v92, (v66 + 13));
    *(v66 + 16) = __src.__r_.__value_.__l.__data_;
    if (*(v66 + 95) < 0)
    {
      operator delete(v66[9]);
    }

    *(v66 + 9) = *&__src.__r_.__value_.__r.__words[1];
    v66[11] = v178;
    *v85 = v179[0];
    *(v66 + 99) = *(v179 + 3);
  }

  else
  {
    v93 = v89;
    if (!*(v66 + 32))
    {
      webrtc::SdpOfferAnswerHandler::CreateChannels(&__src, *v66, v89);
      *(v66 + 16) = __src.__r_.__value_.__l.__data_;
      if (*(v66 + 95) < 0)
      {
        operator delete(v66[9]);
      }

      *(v66 + 9) = *&__src.__r_.__value_.__r.__words[1];
      v66[11] = v178;
      *v85 = v179[0];
      *(v66 + 99) = *(v179 + 3);
    }

    webrtc::SdpOfferAnswerHandler::RemoveUnusedChannels(*v66, v93);
  }

  if (*(v66 + 16))
  {
    goto LABEL_162;
  }

  v94 = *v66;
  v95 = *(v66 + 32);
  v96 = (*(**v66 + 32))(*v66);
  (*(*v96 + 32))(v96);
  webrtc::SdpOfferAnswerHandler::UpdateSessionState(&__src, v94, v95, 1, (v66 + 13));
  v97 = __src.__r_.__value_.__l.__data_;
  *(v66 + 16) = __src.__r_.__value_.__l.__data_;
  if (*(v66 + 95) < 0)
  {
    operator delete(v66[9]);
    v97 = *(v66 + 16);
  }

  *(v66 + 9) = *&__src.__r_.__value_.__r.__words[1];
  v66[11] = v178;
  *v85 = v179[0];
  *(v66 + 99) = *(v179 + 3);
  if (v97)
  {
    webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SetAsSessionError(v66);
    if (*(v66 + 16))
    {
      goto LABEL_162;
    }
  }

  if ((*(**v66 + 24))() && (webrtc::SdpOfferAnswerHandler::UseCandidatesInRemoteDescription(*v66) & 1) == 0)
  {
    operator new();
  }

  if (*(v66 + 16))
  {
    goto LABEL_162;
  }

  v98 = v66[2];
  if (*(v66 + 32) != 2 && !v98)
  {
    v98 = (*(**v66 + 48))();
  }

  if (!v98)
  {
    goto LABEL_253;
  }

  v99 = v66[2];
  if (*(v66 + 32) != 2 && !v99)
  {
    v99 = (*(**v66 + 48))();
  }

  v100 = (*(*v99 + 32))(v99);
  v101 = *v100;
  v168 = v100[1];
  if (*v100 == v168)
  {
    goto LABEL_253;
  }

  do
  {
    v102 = v66[2];
    v103 = *(v66 + 32) != 2 && v102 == 0;
    if (v103)
    {
      v102 = (*(**v66 + 48))();
    }

    v104 = v13;
    v105 = (*(*v13 + 32))(v13);
    if (!v102)
    {
      goto LABEL_243;
    }

    v106 = (*(*v105 + 32))(v105);
    v107 = (*(*v102 + 32))(v102);
    v108 = *(v101 + 31);
    v109 = v108 >= 0 ? (v101 + 8) : *(v101 + 8);
    v110 = v108 >= 0 ? *(v101 + 31) : *(v101 + 16);
    v112 = *v106;
    v111 = v106[1];
    if (*v106 == v111)
    {
      goto LABEL_243;
    }

    v113 = v107;
    while (1)
    {
      v114 = *(v112 + 31);
      if (v114 < 0)
      {
        break;
      }

      v115 = (v112 + 8);
      if (v110 == v114)
      {
        goto LABEL_199;
      }

LABEL_194:
      v112 += 40;
      if (v112 == v111)
      {
        goto LABEL_243;
      }
    }

    v115 = *(v112 + 8);
    if (v110 != *(v112 + 16))
    {
      goto LABEL_194;
    }

LABEL_199:
    if (memcmp(v109, v115, v110))
    {
      goto LABEL_194;
    }

    if ((*(v112 + 4) & 1) == 0)
    {
      v117 = v106[3];
      v116 = v106[4];
      while (v117 != v116)
      {
        v118 = *(v117 + 23);
        v119 = v118;
        if ((v118 & 0x80u) != 0)
        {
          v118 = *(v117 + 8);
        }

        if (v118 == v110)
        {
          v120 = v119 >= 0 ? v117 : *v117;
          if (!memcmp(v120, v109, v110))
          {
            goto LABEL_213;
          }
        }

        v117 += 112;
      }

      v117 = 0;
LABEL_213:
      v121 = *(v113 + 24);
      v122 = *(v113 + 32);
      if (v121 != v122)
      {
        v123 = v121 + 95;
        while (1)
        {
          v125 = *(v123 - 72);
          v126 = v125;
          if ((v125 & 0x80u) != 0)
          {
            v125 = *(v123 - 87);
          }

          if (v125 == v110)
          {
            v127 = v126 >= 0 ? v123 - 95 : *(v123 - 95);
            if (!memcmp(v127, v109, v110))
            {
              break;
            }
          }

          v124 = v123 + 17;
          v123 += 112;
          if (v124 == v122)
          {
            goto LABEL_243;
          }
        }

        if (v117)
        {
          v128 = *(v123 - 24);
          if ((v128 & 0x8000000000000000) != 0)
          {
            v129 = *(v123 - 47);
            v128 = *(v123 - 39);
          }

          else
          {
            v129 = v123 - 47;
          }

          v130 = v123 - 23;
          v131 = *v123;
          if ((v131 & 0x8000000000000000) != 0)
          {
            v130 = *(v123 - 23);
            v131 = *(v123 - 15);
          }

          v132 = *(v117 + 71);
          if (v132 < 0)
          {
            v133 = *(v117 + 48);
            v132 = *(v117 + 56);
          }

          else
          {
            v133 = (v117 + 48);
          }

          v134 = *(v117 + 95);
          if (v134 < 0)
          {
            v135 = *(v117 + 72);
            v134 = *(v117 + 80);
          }

          else
          {
            v135 = (v117 + 72);
          }

          if (v128 != v132 || memcmp(v129, v133, v128) || v131 != v134 || memcmp(v130, v135, v131))
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log("\r\t\n\t", v136, v87, v137, v138, v139, v140, v141, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
            }

            v13 = v104;
            if (!*(v66 + 32))
            {
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v104 + 200, (v101 + 8));
            }

            goto LABEL_252;
          }
        }
      }
    }

LABEL_243:
    v142 = v66[2];
    if (*(v66 + 32) != 2 && v142 == 0)
    {
      v142 = (*(**v66 + 48))();
    }

    v13 = v104;
    v144 = *(v104 + 7);
    if (!v144)
    {
      v144 = *(v104 + 6);
    }

    webrtc::WebRtcSessionDescriptionFactory::CopyCandidatesFromSessionDescription(v142, (v101 + 8), v144);
LABEL_252:
    v101 += 40;
  }

  while (v101 != v168);
LABEL_253:
  v86 = *v66;
  if (*(*v66 + 256))
  {
    webrtc::SdpOfferAnswerHandler::GetSessionErrorMsg(&__src, v86);
    webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SetError(v66, 10, &__src);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  if (*(v66 + 16))
  {
    goto LABEL_162;
  }

  v145 = (*(*v13 + 32))(v13);
  if ((*(*v145 + 56))(v145))
  {
    v146 = (*(*v13 + 32))(v13);
    if ((*(*v146 + 88))(v146))
    {
      if (!(*(**(v13 + 1) + 160))(*(v13 + 1)))
      {
        (*(**(v13 + 1) + 168))(*(v13 + 1), 1);
      }
    }
  }

  webrtc::SdpOfferAnswerHandler::AllocateSctpSids(v13);
  if (*(v66 + 132) == 1)
  {
    webrtc::SdpOfferAnswerHandler::ApplyRemoteDescriptionUpdateTransceiverState(v13);
  }

  v147 = (*(*v13 + 32))(v13);
  *(v13 + 232) = *((*(*v147 + 32))(v147) + 72) != 0;
  if ((*(v66 + 132) & 1) == 0)
  {
LABEL_273:
    v154 = (*(*v13 + 32))(v13);
    v155 = (*(*v154 + 32))(v154);
    webrtc::GetFirstAudioContent(v155);
    v156 = (*(*v13 + 32))(v13);
    v157 = (*(*v156 + 32))(v156);
    webrtc::GetFirstAudioContentDescription(v157);
    v158 = (*(*v13 + 32))(v13);
    v159 = (*(*v158 + 32))(v158);
    webrtc::GetFirstVideoContent(v159);
    v160 = (*(*v13 + 32))(v13);
    v161 = (*(*v160 + 32))(v160);
    webrtc::GetFirstVideoContentDescription(v161);
    webrtc::SdpOfferAnswerHandler::PlanBUpdateSendersAndReceivers();
  }

  if (*(v66 + 32) == 2)
  {
    if (webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace::SatisfiesIceRestart(*(v13 + 28), *(v13 + 4)))
    {
      v162 = *(v13 + 28);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v162, v162[1]);
      *v162 = v162 + 1;
      v162[2] = 0;
      v162[1] = 0;
    }

    webrtc::SdpOfferAnswerHandler::RemoveStoppedTransceivers(v13);
    webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SignalCompletion(v66, v163, v164);
    if (*(v66 + 32) == 2)
    {
LABEL_266:
      v150 = *(*(v13 + 2) + 24);
      __src.__r_.__value_.__r.__words[0] = v13;
      (*(*v150 + 96))(v150, &__src, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::SetRemoteDescriptionPostProcess(BOOL)::$_0>, &v170);
    }
  }

  else
  {
    webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SignalCompletion(v66, v148, v149);
    if (*(v66 + 32) == 2)
    {
      goto LABEL_266;
    }
  }

  (*(**(v13 + 1) + 176))(*(v13 + 1), 64);
  if ((*(**(v13 + 1) + 192))(*(v13 + 1)))
  {
    v151 = *(v13 + 233);
    webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v13);
    if (!(*(*v13 + 16))(v13))
    {
      if (v151)
      {
        if (*(v13 + 233) == 1)
        {
          v152 = (*(**(v13 + 1) + 144))(*(v13 + 1));
          (*(*v152 + 48))(v152);
          ++*(v13 + 59);
          v153 = (*(**(v13 + 1) + 144))(*(v13 + 1));
          (*(*v153 + 56))(v153, *(v13 + 59));
        }
      }
    }
  }

LABEL_162:
  webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::~RemoteDescriptionOperation(v66, v86, v87);
  MEMORY[0x2743DA540]();
}

void webrtc::StreamCollection::AddStream(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  for (i = a1[2]; v4 != i; i = a1[2])
  {
    (*(**v4 + 32))(__p);
    (*(**a2 + 32))(v22);
    v6 = v23;
    v8 = v22[0];
    v7 = v22[1];
    v9 = v25;
    v10 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v9 = __p[1];
      v11 = __p[0];
    }

    if (v23 < 0)
    {
      v12 = v22[0];
    }

    else
    {
      v7 = v23;
      v12 = v22;
    }

    if (v7 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v7;
    }

    v14 = v7 == v9;
    if (memcmp(v11, v12, v13))
    {
      v14 = 0;
    }

    if (v6 < 0)
    {
      operator delete(v8);
      if ((v25 & 0x80) != 0)
      {
LABEL_18:
        operator delete(__p[0]);
        if (v14)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else if ((v10 & 0x80) != 0)
    {
      goto LABEL_18;
    }

    if (v14)
    {
      return;
    }

LABEL_19:
    ++v4;
  }

  v15 = a1[3];
  if (i >= v15)
  {
    v17 = a1[1];
    v18 = ((i - v17) >> 3) + 1;
    if (v18 >> 61)
    {
      goto LABEL_33;
    }

    v19 = v15 - v17;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
    v21 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      v21 = v18;
    }

    if (v21)
    {
      if (!(v21 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_32:
    __break(1u);
LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!i)
  {
    goto LABEL_32;
  }

  v16 = *a2;
  *a2 = 0;
  *i = v16;
  a1[2] = i + 1;
}

void webrtc::SdpOfferAnswerHandler::RemoveRemoteStreamsIfEmpty(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; ++i)
    {
      (*(**i + 40))(&v22);
      v8 = v22;
      if (v22 == v23)
      {
        (*(**i + 48))(&__p);
        v10 = __p;
        v11 = v21;
        v9 = __p == v21;
        if (__p)
        {
          v12 = __p;
          if (__p != v21)
          {
            do
            {
              v14 = *(v11 - 1);
              v11 -= 8;
              v13 = v14;
              if (v14)
              {
                (*(*v13 + 8))(v13);
              }
            }

            while (v11 != v10);
            v12 = __p;
          }

          v21 = v10;
          operator delete(v12);
        }

        v8 = v22;
        if (!v22)
        {
LABEL_7:
          if (!v9)
          {
            continue;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v9 = 0;
        if (!v22)
        {
          goto LABEL_7;
        }
      }

      v15 = v23;
      if (v23 == v8)
      {
        v23 = v8;
        operator delete(v8);
        if (!v9)
        {
          continue;
        }
      }

      else
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 8;
          v16 = v17;
          if (v17)
          {
            (*(*v16 + 8))(v16);
          }
        }

        while (v15 != v8);
        v23 = v8;
        operator delete(v22);
        if (!v9)
        {
          continue;
        }
      }

LABEL_25:
      webrtc::StreamCollection::RemoveStream(*(a1 + 104), *i);
      v18 = a4[1];
      if (v18 >= a4[2])
      {
        std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(a4);
      }

      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = *i;
      *v18 = *i;
      if (v19)
      {
        (**v19)(v19);
      }

      a4[1] = v18 + 1;
    }
  }
}

uint64_t webrtc::SdpOfferAnswerHandler::AddIceCandidateInternal(webrtc::SdpOfferAnswerHandler *this, const webrtc::IceCandidateInterface *a2)
{
  if ((*(**(this + 1) + 184))(*(this + 1)))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    return 1;
  }

  if ((*(*this + 32))(this))
  {
    if (a2)
    {
      v43 = 0;
      v12 = webrtc::SdpOfferAnswerHandler::ReadyToUseRemoteCandidate(this, a2, 0, &v43);
      if (!v43)
      {
        return 4;
      }

      v13 = v12;
      v14 = *(this + 7);
      if (v14)
      {
        if ((*(*v14 + 72))(v14, a2))
        {
          goto LABEL_10;
        }
      }

      else if ((*(**(this + 6) + 72))(*(this + 6), a2))
      {
LABEL_10:
        if (v13)
        {
          if (webrtc::SdpOfferAnswerHandler::UseCandidate(this, a2))
          {
            (*(**(this + 1) + 176))(*(this + 1), 256);
            return 0;
          }

          else
          {
            return 7;
          }
        }

        else
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
          }

          return 5;
        }
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      return 6;
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      return 3;
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    return 2;
  }
}

uint64_t webrtc::SdpOfferAnswerHandler::ReadyToUseRemoteCandidate(webrtc::SdpOfferAnswerHandler *this, const webrtc::IceCandidateInterface *a2, const webrtc::SessionDescriptionInterface *a3, BOOL *a4)
{
  *a4 = 1;
  if (!a3)
  {
    result = (*(*this + 32))(this);
    a3 = result;
    if (!result)
    {
      return result;
    }
  }

  webrtc::SdpOfferAnswerHandler::FindContentInfo(&v95, a3, a2);
  if (v95)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    }

    result = 0;
    *a4 = 0;
    if (v97 < 0)
    {
      goto LABEL_149;
    }

    return result;
  }

  if (*(this + 416) != 1)
  {
    goto LABEL_148;
  }

  v15 = (*(**(this + 1) + 272))(*(this + 1));
  (*(*v15 + 16))(v93);
  v16 = (*(*a2 + 32))(a2);
  std::to_string(&v92, *(v16 + 136));
  v17 = (*(*a2 + 32))(a2);
  webrtc::SocketAddress::HostAsURIString((v17 + 80), &v91);
  if ((v94 & 0x80u) == 0)
  {
    v18 = v93;
  }

  else
  {
    v18 = v93[0];
  }

  if ((v94 & 0x80u) == 0)
  {
    v19 = v94;
  }

  else
  {
    v19 = v93[1];
  }

  if (!v18)
  {
    goto LABEL_145;
  }

  v20 = v18;
  if (v19)
  {
    v21 = memchr(v18, 124, v19);
    v22 = 0;
    if (v21)
    {
      v23 = v21 - v18;
      v24 = v19;
      if (v21 - v18 != -1)
      {
        if (v19 < v23)
        {
LABEL_166:
          abort();
        }

        v22 = v19 != v23;
        v24 = v21 - v18;
      }
    }

    else
    {
      v24 = v19;
    }
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  v89 = a4;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = v19 == v24;
  v29 = v22 + v24;
  do
  {
    __src = v27;
    v30 = v25;
    v31 = &v99;
    v32 = 1;
    while (1)
    {
      *(v31 - 1) = v20;
      *v31 = v24;
      if (v28 == 1)
      {
        break;
      }

      if (v19 <= v29)
      {
        v34 = 0;
        v36 = v19;
      }

      else
      {
        v33 = memchr(v18 + v29, 124, v19 - v29);
        v34 = 0;
        if (!v33)
        {
          v36 = v19;
          v37 = v19 - v29;
          if (v19 < v29)
          {
            goto LABEL_166;
          }

          goto LABEL_35;
        }

        v35 = v33 - v18;
        v36 = v19;
        if (v33 - v18 != -1)
        {
          if (v19 < v35)
          {
            goto LABEL_166;
          }

          v34 = v19 != v35;
          v36 = v33 - v18;
          v37 = v19 - v29;
          if (v19 < v29)
          {
            goto LABEL_166;
          }

          goto LABEL_35;
        }
      }

      v37 = v19 - v29;
      if (v19 < v29)
      {
        goto LABEL_166;
      }

LABEL_35:
      if (v19 == v36)
      {
        v28 = 1;
      }

      v20 = (v18 + v29);
      v38 = v36 - v29;
      if (v37 >= v38)
      {
        v24 = v38;
      }

      else
      {
        v24 = v37;
      }

      v29 += v34 + v24;
      ++v32;
      v31 += 2;
      if (v32 == 17)
      {
        v32 = 16;
        v25 = v30;
        if ((v30 - v26) >> 4 >= 16)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }
    }

    v28 = 2;
    v25 = v30;
    if (v32 <= (v30 - v26) >> 4)
    {
LABEL_55:
      v43 = v98;
      v27 = __src;
      while (v26)
      {
        v44 = *(v43 + 1);
        if (v44 < 0)
        {
          break;
        }

        if (!*v43 && v44 != 0)
        {
          break;
        }

        *v26 = *v43;
        *(v26 + 1) = v44;
        v26 += 16;
        v43 += 16;
        if (v43 == &v98[16 * v32])
        {
          goto LABEL_24;
        }
      }

LABEL_75:
      __break(1u);
      break;
    }

LABEL_45:
    v39 = v26 - __src;
    v40 = (v26 - __src) >> 4;
    v41 = v32 + v40;
    if ((v32 + v40) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((v25 - __src) >> 3 > v41)
    {
      v41 = (v25 - __src) >> 3;
    }

    if ((v25 - __src) >= 0x7FFFFFFFFFFFFFF0)
    {
      v42 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v41;
    }

    if (v42)
    {
      if (!(v42 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v27 = 0;
    v46 = (16 * v40);
    v25 = 0;
    v26 = (16 * v40 + 16 * v32);
    v47 = v98;
    do
    {
      if (!v46)
      {
        goto LABEL_75;
      }

      v48 = v47[1];
      if (v48 < 0)
      {
        goto LABEL_75;
      }

      if (!*v47 && v48 != 0)
      {
        goto LABEL_75;
      }

      *v46 = *v47;
      *(v46 + 1) = v48;
      v46 += 16;
      v47 += 2;
    }

    while (v46 != v26);
    memcpy(0, __src, v39);
LABEL_24:
    ;
  }

  while (v28 != 2);
  if (v27 == v26)
  {
LABEL_145:
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_147:
        if ((v94 & 0x80000000) == 0)
        {
          goto LABEL_148;
        }

LABEL_153:
        operator delete(v93[0]);
        result = 1;
        if (v97 < 0)
        {
          goto LABEL_149;
        }

        return result;
      }
    }

    else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    operator delete(v92.__r_.__value_.__l.__data_);
    if (v94 < 0)
    {
      goto LABEL_153;
    }

LABEL_148:
    result = 1;
    if (v97 < 0)
    {
      goto LABEL_149;
    }

    return result;
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v92.__r_.__value_.__l.__size_;
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v92;
  }

  else
  {
    v51 = v92.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v91;
  }

  else
  {
    v52 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v91.__r_.__value_.__l.__size_;
  }

  while (1)
  {
    v54 = *v27;
    if (!*v27)
    {
      v67 = 0;
      v68 = 0;
      v63 = 0;
      if (!size)
      {
        goto LABEL_114;
      }

      goto LABEL_115;
    }

    v55 = v27[1];
    if (!v55 || ((v56 = memchr(*v27, 58, v27[1]), v57 = v56 - v54, v56) ? (v58 = v57 == -1) : (v58 = 1), v58))
    {
      v59 = 0;
      v60 = &v54[v55];
LABEL_99:
      v61 = 0;
      v62 = v60 - v54;
      if (v55 >= v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v55;
      }

      v64 = v63 + v59;
      v65 = v54;
      v66 = v63;
      goto LABEL_103;
    }

    if (v55 < v57)
    {
      goto LABEL_166;
    }

    v59 = v55 != v57;
    v60 = v56;
    if (v55 == v57)
    {
      goto LABEL_99;
    }

    v63 = v55 >= v57 ? v56 - v54 : v55;
    v75 = v63 + v59;
    if (v55 <= v63 + v59 || ((v76 = memchr(&v54[v75], 58, v55 - (v63 + v59)), v77 = v76 - v54, v76) ? (v78 = v77 == -1) : (v78 = 1), v78))
    {
      v79 = 0;
      v77 = v55;
      v66 = v55 - v75;
      if (v55 < v75)
      {
        goto LABEL_166;
      }
    }

    else
    {
      if (v55 < v77)
      {
        goto LABEL_166;
      }

      v79 = v55 != v77;
      v66 = v55 - v75;
      if (v55 < v75)
      {
        goto LABEL_166;
      }
    }

    v65 = &v54[v75];
    v80 = v77 - v75;
    if (v66 >= v80)
    {
      v66 = v80;
    }

    v64 = v79 + v75 + v66;
    v61 = 1;
LABEL_103:
    if (v64 != v55)
    {
      v61 = 1;
    }

    if (v61)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    if (v61)
    {
      v68 = v65;
    }

    else
    {
      v68 = 0;
    }

    if (v67 == size)
    {
LABEL_114:
      if (!memcmp(v68, v51, size))
      {
        goto LABEL_117;
      }
    }

LABEL_115:
    if (v67 != 1 || *v68 != 42)
    {
      goto LABEL_90;
    }

LABEL_117:
    if (v63 >= v53)
    {
      v69 = v53;
    }

    else
    {
      v69 = v63;
    }

    if (!v69)
    {
LABEL_89:
      if (v53 == v63)
      {
        break;
      }

      goto LABEL_90;
    }

    v70 = v52;
    while (1)
    {
      v72 = v70->__r_.__value_.__s.__data_[0];
      v70 = (v70 + 1);
      v71 = v72;
      v74 = *v54++;
      v73 = v74;
      if (v71 != v74)
      {
        break;
      }

      if (!--v69)
      {
        goto LABEL_89;
      }
    }

    if (v73 == 42)
    {
      break;
    }

LABEL_90:
    v27 += 2;
    if (v27 == v26)
    {
      goto LABEL_145;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v82, v83, v84, v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }

  *v89 = 0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_163;
    }

LABEL_159:
    if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_164:
    operator delete(v93[0]);
    result = 0;
    if (v97 < 0)
    {
LABEL_149:
      v81 = result;
      operator delete(__p);
      return v81;
    }
  }

  else
  {
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

LABEL_163:
    operator delete(v92.__r_.__value_.__l.__data_);
    if (v94 < 0)
    {
      goto LABEL_164;
    }

LABEL_160:
    result = 0;
    if (v97 < 0)
    {
      goto LABEL_149;
    }
  }

  return result;
}

BOOL webrtc::SdpOfferAnswerHandler::UseCandidate(webrtc::SdpOfferAnswerHandler *this, const webrtc::IceCandidateInterface *a2)
{
  v4 = &unk_280905000;
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = pthread_getspecific(*(v4[403] + 88));
    v5 = *(v4 + 217);
    *(v4 + 217) = 0;
    v6 = (*(*this + 32))(this);
    webrtc::SdpOfferAnswerHandler::FindContentInfo(&v22, v6, a2);
    v7 = v22;
    if (v22)
    {
      goto LABEL_13;
    }

    a2 = (*(*a2 + 32))(a2);
    webrtc::VerifyCandidate(a2, &v19);
    if (v19)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::Candidate::ToStringInternal(a2, 0, &__p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_12;
    }

    if (v26)
    {
      break;
    }

    __break(1u);
LABEL_19:
    {
      operator new();
    }
  }

  v15 = *(v25 + 31);
  if (v15 < 0)
  {
    v16 = *(v25 + 8);
    v15 = *(v25 + 16);
  }

  else
  {
    v16 = v25 + 8;
  }

  (*(**(this + 1) + 232))(*(this + 1), v16, v15, a2);
LABEL_12:
  if ((v21 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(v20);
  if (v24 < 0)
  {
LABEL_14:
    operator delete(v23);
  }

LABEL_15:
  result = v7 == 0;
  *(v4 + 217) = v5;
  return result;
}

void webrtc::SdpOfferAnswerHandler::AddIceCandidate(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 136);
  v6 = *(a1 + 424);
  if (!v6 || atomic_load_explicit((v6 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v7 = *(a1 + 424);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v7 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v7 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v7, 0x1000C404A09149ALL);
    }
  }

  *a2 = 0;
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      v10 = v9;
      (*(*v8 + 24))(v8, v9);
      if (!v5)
      {
LABEL_13:
        operator new();
      }
    }

    else
    {
      v10 = *(a3 + 24);
      *(a3 + 24) = 0;
      if (!v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v10 = 0;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  goto LABEL_13;
}

uint64_t webrtc::SdpOfferAnswerHandler::RemoveIceCandidates(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 8) + 184))(*(a1 + 8)))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_22:
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    return 0;
  }

  if (!(*(*a1 + 32))(a1))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (*a2 == *(a2 + 8))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_22;
  }

  v12 = *(a1 + 56);
  if (!v12)
  {
    v12 = *(a1 + 48);
  }

  if ((*(*v12 + 80))(v12, a2) != 0x84BDA12F684BDA13 * ((*(a2 + 8) - *a2) >> 4) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }

  v20 = (*(**(a1 + 8) + 104))(*(a1 + 8));
  webrtc::JsepTransportController::RemoveRemoteCandidates(v20, a2, v28);
  if (*v28 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

uint64_t webrtc::SdpOfferAnswerHandler::local_description(webrtc::SdpOfferAnswerHandler *this)
{
  result = *(this + 5);
  if (!result)
  {
    return *(this + 4);
  }

  return result;
}

uint64_t webrtc::SdpOfferAnswerHandler::remote_description(webrtc::SdpOfferAnswerHandler *this)
{
  result = *(this + 7);
  if (!result)
  {
    return *(this + 6);
  }

  return result;
}

uint64_t webrtc::SdpOfferAnswerHandler::AddStream(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 8) + 192))(*(a1 + 8)))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc", 3194, "!IsUnifiedPlan()", "\t", v4, v5, v6, v7, "AddStream is not available with Unified Plan SdpSemantics. Please use AddTrack instead.");
  }

  if ((*(**(a1 + 8) + 184))(*(a1 + 8)))
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v9 = *(a1 + 96);
    if (v9)
    {
      (*(*a2 + 32))(&v21, a2);
      v10 = (*(*v9 + 48))(v9, &v21);
      v11 = v10;
      if (v22 < 0)
      {
        operator delete(v21);
        if (v11)
        {
LABEL_9:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            (*(*a2 + 32))(&v21, a2);
            webrtc::webrtc_logging_impl::Log("\r\t\n\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
            if (v22 < 0)
            {
              operator delete(v21);
            }
          }

          return 0;
        }
      }

      else if (v10)
      {
        goto LABEL_9;
      }

      v19 = *(a1 + 96);
      v20 = a2;
      (**a2)(a2);
      webrtc::StreamCollection::AddStream(v19, &v20);
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      operator new();
    }
  }

  return result;
}

void webrtc::SdpOfferAnswerHandler::RemoveStream(webrtc::SdpOfferAnswerHandler *a1, uint64_t a2)
{
  if ((*(**(a1 + 1) + 192))(*(a1 + 1)))
  {
    goto LABEL_103;
  }

  if (!(*(**(a1 + 1) + 184))(*(a1 + 1)))
  {
    (*(*a2 + 40))(&__p, a2);
    v8 = __p;
    v9 = v62;
    if (__p != v62)
    {
      do
      {
        v10 = (*(**(a1 + 1) + 64))(*(a1 + 1));
        v11 = *v8++;
        webrtc::RtpTransmissionManager::RemoveAudioTrack(v10, v11);
      }

      while (v8 != v9);
      v8 = __p;
    }

    if (v8)
    {
      v12 = v62;
      v13 = v8;
      if (v62 != v8)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          if (v15)
          {
            (*(*v14 + 8))(v14);
          }
        }

        while (v12 != v8);
        v13 = __p;
      }

      v62 = v8;
      operator delete(v13);
    }

    (*(*a2 + 48))(&__p, a2);
    v16 = __p;
    v17 = v62;
    if (__p != v62)
    {
      do
      {
        v18 = (*(**(a1 + 1) + 64))(*(a1 + 1));
        v19 = *v16++;
        webrtc::RtpTransmissionManager::RemoveVideoTrack(v18, v19);
      }

      while (v16 != v17);
      v16 = __p;
    }

    if (v16)
    {
      v20 = v62;
      v21 = v16;
      if (v62 != v16)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          if (v23)
          {
            (*(*v22 + 8))(v22);
          }
        }

        while (v20 != v16);
        v21 = __p;
      }

      v62 = v16;
      operator delete(v21);
    }
  }

  webrtc::StreamCollection::RemoveStream(*(a1 + 12), a2);
  v25 = *(a1 + 14);
  v24 = *(a1 + 15);
  v57 = a1;
  if (v25 == v24)
  {
    v26 = *(a1 + 14);
  }

  else
  {
    v26 = *(a1 + 15);
    while (1)
    {
      (*(**(*v25 + 8) + 32))(&__p);
      (*(*a2 + 32))(&v58, a2);
      v27 = v60;
      v28 = v58;
      v29 = v63;
      v30 = (v63 & 0x80u) == 0 ? v63 : v62;
      v31 = (v63 & 0x80u) == 0 ? &__p : __p;
      v32 = v60 >= 0 ? v60 : v59;
      v33 = v60 >= 0 ? &v58 : v58;
      v34 = (v32 >= v30 ? v30 : v32);
      v35 = memcmp(v31, v33, v34);
      if (v27 < 0)
      {
        break;
      }

      if ((v29 & 0x80) != 0)
      {
        goto LABEL_51;
      }

LABEL_44:
      if (v32 == v30 && v35 == 0)
      {
        goto LABEL_58;
      }

LABEL_55:
      if (++v25 == v24)
      {
        goto LABEL_92;
      }
    }

    operator delete(v28);
    if ((v63 & 0x80) == 0)
    {
      goto LABEL_44;
    }

LABEL_51:
    operator delete(__p);
    if (v32 != v30 || v35 != 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    if (v25 != v24)
    {
      v38 = v25 + 1;
      v26 = v25;
      while (v38 != v24)
      {
        (*(**(*v38 + 8) + 32))(&__p);
        (*(*a2 + 32))(&v58, a2);
        v39 = v60;
        v40 = v58;
        v41 = v63;
        if ((v63 & 0x80u) == 0)
        {
          v42 = v63;
        }

        else
        {
          v42 = v62;
        }

        if ((v63 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v60 >= 0)
        {
          v44 = v60;
        }

        else
        {
          v44 = v59;
        }

        if (v60 >= 0)
        {
          v45 = &v58;
        }

        else
        {
          v45 = v58;
        }

        if (v44 >= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v44;
        }

        v47 = memcmp(p_p, v45, v46);
        if (v39 < 0)
        {
          operator delete(v40);
          if ((v63 & 0x80) != 0)
          {
LABEL_86:
            operator delete(__p);
            if (v44 == v42 && v47 == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_90;
          }
        }

        else if ((v41 & 0x80) != 0)
        {
          goto LABEL_86;
        }

        if (v44 == v42 && v47 == 0)
        {
          goto LABEL_61;
        }

LABEL_90:
        v50 = *v38;
        *v38 = 0;
        v51 = *v26;
        *v26 = v50;
        if (v51)
        {
          (*(*v51 + 16))(v51);
        }

        ++v26;
LABEL_61:
        ++v38;
      }
    }
  }

LABEL_92:
  v52 = *(v57 + 15);
  if (v26 > v52)
  {
    __break(1u);
LABEL_103:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc", 3242, "!IsUnifiedPlan()", "\t", v4, v5, v6, v7, "RemoveStream is not available with Unified Plan SdpSemantics. Please use RemoveTrack instead.");
    webrtc::StreamCollection::RemoveStream(v55, v56);
    return;
  }

  if (v26 != v52)
  {
    while (v52 != v26)
    {
      v54 = *--v52;
      v53 = v54;
      *v52 = 0;
      if (v54)
      {
        (*(*v53 + 16))(v53);
      }
    }

    *(v57 + 15) = v26;
  }

  if (((*(**(v57 + 1) + 184))(*(v57 + 1)) & 1) == 0)
  {
    webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v57);
  }
}

void webrtc::StreamCollection::RemoveStream(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    return;
  }

  for (i = -v2; ; i -= 8)
  {
    (*(**v2 + 32))(__p);
    (*(*a2 + 32))(v21, a2);
    v6 = v22;
    v8 = v21[0];
    v7 = v21[1];
    v9 = v24;
    v10 = v24;
    if ((v24 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v9 = __p[1];
      v11 = __p[0];
    }

    if (v22 < 0)
    {
      v12 = v21[0];
    }

    else
    {
      v7 = v22;
      v12 = v21;
    }

    if (v7 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v7;
    }

    v14 = v7 == v9;
    if (memcmp(v11, v12, v13))
    {
      v14 = 0;
    }

    if (v6 < 0)
    {
      break;
    }

    if ((v10 & 0x80) != 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_20:
    v2 += 8;
    if (v2 == *(a1 + 16))
    {
      return;
    }
  }

  operator delete(v8);
  if ((v24 & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  operator delete(__p[0]);
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_22:
  v15 = *(a1 + 16);
  if (v2 == v15)
  {
    __break(1u);
  }

  else
  {
    v16 = -i;
    v17 = (8 - i);
    if (v17 != v15)
    {
      do
      {
        v18 = *(v17 - 1);
        *(v17 - 1) = *v17;
        *v17 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        ++v17;
        v16 += 8;
      }

      while (v17 != v15);
      v15 = *(a1 + 16);
    }

    while (v15 != v16)
    {
      v20 = *--v15;
      v19 = v20;
      if (v20)
      {
        (*(*v19 + 8))(v19);
      }
    }

    *(a1 + 16) = v16;
  }
}

void *webrtc::TransceiverList::Remove(void *result, void *a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    while (*v3 != *a2)
    {
      if (++v3 == v4)
      {
        return result;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 1;
      if (v3 + 1 != v4)
      {
        do
        {
          v7 = *v6;
          if (*v6 != *a2)
          {
            *v6 = 0;
            result = *v3;
            *v3 = v7;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v3;
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = v2[1];
      }
    }
  }

  if (v3 > v4)
  {
    __break(1u);
  }

  else if (v3 != v4)
  {
    while (v4 != v3)
    {
      v8 = *--v4;
      result = v8;
      if (v8)
      {
        result = (*(*result + 8))(result);
      }
    }

    v2[1] = v3;
  }

  return result;
}

BOOL webrtc::SdpOfferAnswerHandler::IceRestartPending(uint64_t a1, const void **a2)
{
  v2 = (a1 + 208);
  v3 = *(a1 + 208);
  if (!v3)
  {
LABEL_36:
    v7 = v2;
    return v2 != v7;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 208);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    goto LABEL_36;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (!v17)
  {
    if (v6 >= v15)
    {
      return v2 != v7;
    }

    goto LABEL_36;
  }

  if (v17 < 0)
  {
    goto LABEL_36;
  }

  return v2 != v7;
}

void *webrtc::anonymous namespace::FindTransceiverMSection(webrtc::_anonymous_namespace_ *this, webrtc::RtpTransceiver *a2, const webrtc::SessionDescriptionInterface *a3)
{
  (*(*this + 40))(&__p);
  if (v20 != 1)
  {
    return 0;
  }

  v5 = (*(*a2 + 32))(a2);
  v6 = v15;
  result = (*(*this + 40))(v15, this);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = v16;
  v9 = v15[0];
  if ((v16 & 0x80u) == 0)
  {
    v10 = v16;
  }

  else
  {
    v6 = v15[0];
    v10 = v15[1];
  }

  v11 = *v5;
  v12 = v5[1];
  while (v11 != v12)
  {
    v13 = *(v11 + 31);
    if (v13 < 0)
    {
      v14 = *(v11 + 8);
      if (v10 != *(v11 + 16))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = (v11 + 8);
      if (v10 != v13)
      {
        goto LABEL_7;
      }
    }

    if (!memcmp(v6, v14, v10))
    {
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_7:
    v11 += 40;
  }

  v11 = 0;
  if ((v8 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v20 & 1) == 0)
    {
      return v11;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v9);
  if ((v20 & 1) == 0)
  {
    return v11;
  }

LABEL_20:
  if (v19 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void webrtc::anonymous namespace::ValidatePayloadTypes(webrtc::_anonymous_namespace_ *this, const webrtc::SessionDescription *a2, const webrtc::SessionDescription *a3)
{
  if (a2 == a3)
  {
LABEL_14:
    *this = 0;
    *(this + 38) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 1) = 0;
    *(this + 29) = 0;
    return;
  }

  v5 = a2;
  while (1)
  {
    if (!*v5 && (*(v5 + 4) & 1) == 0)
    {
      v6 = *(v5 + 4);
      if (v6)
      {
        if ((*(*v6 + 96))(*(v5 + 4)))
        {
          if ((*(*v6 + 16))(v6) <= 1)
          {
            v8 = *(v6 + 280);
            v7 = *(v6 + 288);
            if (v8 != v7)
            {
              break;
            }
          }
        }
      }
    }

LABEL_3:
    v5 = (v5 + 40);
    if (v5 == a3)
    {
      goto LABEL_14;
    }
  }

  while ((*(v6 + 32) ^ 1) & 1 | ((*(v8 + 12) & 0xE0) != 64) && (*(v8 + 12) & 0x80) == 0)
  {
    v8 += 216;
    if (v8 == v7)
    {
      goto LABEL_3;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    std::operator+<char>();
    v10 = v134.__r_.__value_.__r.__words[2];
    if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = 22;
    }

    else
    {
      v11 = (v134.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v134.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v134.__r_.__value_.__l.__size_;
    }

    if (v11 - size >= 0x1F)
    {
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v134;
      }

      else
      {
        v13 = v134.__r_.__value_.__r.__words[0];
      }

      v14 = v13 + size;
      if (v13 + size <= "' used an invalid payload type " && v14 + 31 > "' used an invalid payload type ")
      {
        goto LABEL_308;
      }

      qmemcpy(v14, "' used an invalid payload type ", 31);
      v15 = size + 31;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v134.__r_.__value_.__l.__size_ = size + 31;
      }

      else
      {
        *(&v134.__r_.__value_.__s + 23) = v15 & 0x7F;
      }

      v13->__r_.__value_.__s.__data_[v15] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v134, v11, size - v11 + 31, size, size, 0, 0x1FuLL, "' used an invalid payload type ");
    }

    v135 = v134;
    v16 = *(v8 + 12);
    __len = 0x1600000000000000;
    memset(&v134, 0, sizeof(v134));
    __src = 0;
    v132 = 0;
    v17 = absl::numbers_internal::FastIntToBuffer(v16, &__src, v9);
    v18 = v17 - &__src;
    if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
    {
      if (v132 < v18)
      {
        goto LABEL_309;
      }

      v132 = v17 - &__src;
      __src[v18] = 0;
      v19 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v18 > SHIBYTE(__len))
      {
        goto LABEL_309;
      }

      HIBYTE(__len) = v17 - &__src;
      *v17 = 0;
      v19 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
      {
LABEL_37:
        v20 = v19 == 0;
        p_src = &__src;
        goto LABEL_42;
      }
    }

    p_src = __src;
    v19 = v132;
    v20 = v132 == 0;
    if (!__src && v132)
    {
      goto LABEL_308;
    }

LABEL_42:
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = 22;
    }

    else
    {
      v22 = (v135.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v135.__r_.__value_.__l.__size_;
    }

    if (v22 - v23 >= v19)
    {
      if (!v20)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v135;
        }

        else
        {
          v24 = v135.__r_.__value_.__r.__words[0];
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_308;
        }

        v25 = v24 + v23;
        if (v24 + v23 <= p_src && &v25[v19] > p_src)
        {
          goto LABEL_308;
        }

        v26 = v19;
        memmove(v25, p_src, v19);
        v27 = v23 + v26;
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          v135.__r_.__value_.__l.__size_ = v23 + v26;
        }

        else
        {
          *(&v135.__r_.__value_.__s + 23) = v27 & 0x7F;
        }

        v24->__r_.__value_.__s.__data_[v27] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v135, v22, v23 + v19 - v22, v23, v23, 0, v19, p_src);
    }

    v136 = v135;
    memset(&v135, 0, sizeof(v135));
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = 22;
    }

    else
    {
      v28 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v136.__r_.__value_.__l.__size_;
    }

    if (v28 - v29 >= 0xC)
    {
      v30 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v136.__r_.__value_.__r.__words[0];
      }

      v31 = v30 + v29;
      if (v30 + v29 <= " for codec '" && v31 + 12 > " for codec '")
      {
        goto LABEL_308;
      }

      *(v31 + 2) = 656434021;
      *v31 = *" for codec '";
      v32 = v29 + 12;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        v136.__r_.__value_.__l.__size_ = v29 + 12;
      }

      else
      {
        *(&v136.__r_.__value_.__s + 23) = v32 & 0x7F;
      }

      v30->__r_.__value_.__s.__data_[v32] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v136, v28, v29 - v28 + 12, v29, v29, 0, 0xCuLL, " for codec '");
    }

    v137 = v136;
    memset(&v136, 0, sizeof(v136));
    v33 = *(v8 + 39);
    if ((v33 & 0x8000000000000000) != 0)
    {
      v34 = *(v8 + 16);
      v33 = *(v8 + 24);
      v35 = v33 == 0;
      if (!v34 && v33)
      {
        goto LABEL_308;
      }
    }

    else
    {
      v34 = (v8 + 16);
      v35 = v33 == 0;
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = 22;
    }

    else
    {
      v36 = (v137.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v137.__r_.__value_.__l.__size_;
    }

    if (v36 - v37 >= v33)
    {
      if (!v35)
      {
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v137;
        }

        else
        {
          v38 = v137.__r_.__value_.__r.__words[0];
        }

        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_308;
        }

        v39 = v38 + v37;
        if (v38 + v37 <= v34 && &v39[v33] > v34)
        {
          goto LABEL_308;
        }

        v40 = v33;
        memmove(v39, v34, v33);
        v41 = v37 + v40;
        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          v137.__r_.__value_.__l.__size_ = v37 + v40;
        }

        else
        {
          *(&v137.__r_.__value_.__s + 23) = v41 & 0x7F;
        }

        v38->__r_.__value_.__s.__data_[v41] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v137, v36, v37 + v33 - v36, v37, v37, 0, v33, v34);
    }

    v42 = v137.__r_.__value_.__r.__words[2];
    v138 = v137;
    memset(&v137, 0, sizeof(v137));
    v43 = HIBYTE(v42);
    v44 = SHIBYTE(v42);
    v45 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v44 >= 0)
    {
      v46 = 22;
    }

    else
    {
      v46 = v45;
    }

    if (v44 >= 0)
    {
      v47 = v43;
    }

    else
    {
      v47 = v138.__r_.__value_.__l.__size_;
    }

    if (v46 - v47 >= 0xB)
    {
      v48 = v44 < 0;
      v49 = &v138;
      if (v48)
      {
        v49 = v138.__r_.__value_.__r.__words[0];
      }

      v50 = v49 + v47;
      if (v49 + v47 <= ", rtcp-mux:" && v50 + 11 > ", rtcp-mux:")
      {
        goto LABEL_308;
      }

      *(v50 + 7) = 980972909;
      *v50 = *", rtcp-mux:";
      v51 = v47 + 11;
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        v138.__r_.__value_.__l.__size_ = v47 + 11;
      }

      else
      {
        *(&v138.__r_.__value_.__s + 23) = v51 & 0x7F;
      }

      v49->__r_.__value_.__s.__data_[v51] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v138, v46, v47 - v46 + 11, v47, v47, 0, 0xBuLL, ", rtcp-mux:");
    }

    v52 = v138.__r_.__value_.__r.__words[2];
    v139 = v138;
    memset(&v138, 0, sizeof(v138));
    if (*(v6 + 32))
    {
      v53 = "enabled";
    }

    else
    {
      v53 = "disabled";
    }

    if (*(v6 + 32))
    {
      v54 = 7;
    }

    else
    {
      v54 = 8;
    }

    v55 = HIBYTE(v52);
    v56 = SHIBYTE(v52);
    v57 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v56 >= 0)
    {
      v58 = 22;
    }

    else
    {
      v58 = v57;
    }

    if (v56 >= 0)
    {
      v59 = v55;
    }

    else
    {
      v59 = v139.__r_.__value_.__l.__size_;
    }

    if (v58 - v59 >= v54)
    {
      if (v56 >= 0)
      {
        v67 = &v139;
      }

      else
      {
        v67 = v139.__r_.__value_.__r.__words[0];
      }

      v68 = v67 + v59;
      v69 = 7;
      if (!*(v6 + 32))
      {
        v69 = 8;
      }

      if (v68 <= v53 && &v68[v69] > v53)
      {
        goto LABEL_308;
      }

      memcpy(v68, v53, v54);
      v70 = v59 + v54;
      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        v139.__r_.__value_.__l.__size_ = v59 + v54;
      }

      else
      {
        *(&v139.__r_.__value_.__s + 23) = v70 & 0x7F;
      }

      v67->__r_.__value_.__s.__data_[v70] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v139, v58, v59 + v54 - v58, v59, v59, 0, v54, v53);
    }

    v140 = v139;
    memset(&v139, 0, sizeof(v139));
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_143:
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_193;
      }
    }

    else if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    operator delete(v139.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_144:
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_194;
    }

LABEL_193:
    operator delete(v138.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_145:
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_195;
    }

LABEL_194:
    operator delete(v137.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_146:
      if ((SHIBYTE(__len) & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_196;
    }

LABEL_195:
    operator delete(v136.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__len) & 0x80000000) == 0)
    {
LABEL_147:
      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_197;
    }

LABEL_196:
    operator delete(__src);
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_148:
      if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_149;
      }

LABEL_198:
      operator delete(v134.__r_.__value_.__l.__data_);
      goto LABEL_149;
    }

LABEL_197:
    operator delete(v135.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_198;
  }

LABEL_149:
  std::operator+<char>();
  v72 = v134.__r_.__value_.__r.__words[2];
  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = 22;
  }

  else
  {
    v73 = (v134.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v134.__r_.__value_.__l.__size_;
  }

  if (v73 - v74 >= 0x1F)
  {
    if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v134;
    }

    else
    {
      v75 = v134.__r_.__value_.__r.__words[0];
    }

    v76 = v75 + v74;
    if (v75 + v74 <= "' used an invalid payload type " && v76 + 31 > "' used an invalid payload type ")
    {
      goto LABEL_308;
    }

    qmemcpy(v76, "' used an invalid payload type ", 31);
    v77 = v74 + 31;
    if ((v72 & 0x8000000000000000) != 0)
    {
      v134.__r_.__value_.__l.__size_ = v74 + 31;
    }

    else
    {
      *(&v134.__r_.__value_.__s + 23) = v77 & 0x7F;
    }

    v75->__r_.__value_.__s.__data_[v77] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v134, v73, v74 - v73 + 31, v74, v74, 0, 0x1FuLL, "' used an invalid payload type ");
  }

  v135 = v134;
  v78 = *(v8 + 12);
  __len = 0x1600000000000000;
  memset(&v134, 0, sizeof(v134));
  __src = 0;
  v132 = 0;
  v79 = absl::numbers_internal::FastIntToBuffer(v78, &__src, v71);
  v80 = v79 - &__src;
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    if (v132 < v80)
    {
      goto LABEL_309;
    }

    v132 = v79 - &__src;
    __src[v80] = 0;
    v81 = SHIBYTE(__len);
    if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
    {
      goto LABEL_169;
    }
  }

  else
  {
    if (v80 > SHIBYTE(__len))
    {
      goto LABEL_309;
    }

    HIBYTE(__len) = v79 - &__src;
    *v79 = 0;
    v81 = SHIBYTE(__len);
    if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
    {
LABEL_169:
      v82 = v81 == 0;
      v83 = &__src;
      goto LABEL_174;
    }
  }

  v83 = __src;
  v81 = v132;
  v82 = v132 == 0;
  if (!__src && v132)
  {
    goto LABEL_308;
  }

LABEL_174:
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = 22;
  }

  else
  {
    v84 = (v135.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v135.__r_.__value_.__l.__size_;
  }

  if (v84 - v85 >= v81)
  {
    if (!v82)
    {
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &v135;
      }

      else
      {
        v86 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_308;
      }

      v87 = v86 + v85;
      if (v86 + v85 <= v83 && &v87[v81] > v83)
      {
        goto LABEL_308;
      }

      v88 = v81;
      memmove(v87, v83, v81);
      v89 = v85 + v88;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        v135.__r_.__value_.__l.__size_ = v85 + v88;
      }

      else
      {
        *(&v135.__r_.__value_.__s + 23) = v89 & 0x7F;
      }

      v86->__r_.__value_.__s.__data_[v89] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v135, v84, v85 + v81 - v84, v85, v85, 0, v81, v83);
  }

  v136 = v135;
  memset(&v135, 0, sizeof(v135));
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = 22;
  }

  else
  {
    v90 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v136.__r_.__value_.__l.__size_;
  }

  if (v90 - v91 >= 0xC)
  {
    v92 = &v136;
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v92 = v136.__r_.__value_.__r.__words[0];
    }

    v93 = v92 + v91;
    if (v92 + v91 <= " for codec '" && v93 + 12 > " for codec '")
    {
      goto LABEL_308;
    }

    *(v93 + 2) = 656434021;
    *v93 = *" for codec '";
    v94 = v91 + 12;
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      v136.__r_.__value_.__l.__size_ = v91 + 12;
    }

    else
    {
      *(&v136.__r_.__value_.__s + 23) = v94 & 0x7F;
    }

    v92->__r_.__value_.__s.__data_[v94] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v136, v90, v91 - v90 + 12, v91, v91, 0, 0xCuLL, " for codec '");
  }

  v137 = v136;
  memset(&v136, 0, sizeof(v136));
  v95 = *(v8 + 39);
  if ((v95 & 0x8000000000000000) != 0)
  {
    v96 = *(v8 + 16);
    v95 = *(v8 + 24);
    v97 = v95 == 0;
    if (!v96 && v95)
    {
      goto LABEL_308;
    }
  }

  else
  {
    v96 = (v8 + 16);
    v97 = v95 == 0;
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = 22;
  }

  else
  {
    v98 = (v137.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v99 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v99 = v137.__r_.__value_.__l.__size_;
  }

  if (v98 - v99 >= v95)
  {
    if (!v97)
    {
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = &v137;
      }

      else
      {
        v100 = v137.__r_.__value_.__r.__words[0];
      }

      if ((v95 & 0x8000000000000000) != 0)
      {
        goto LABEL_308;
      }

      v101 = v100 + v99;
      if (v100 + v99 <= v96 && &v101[v95] > v96)
      {
        goto LABEL_308;
      }

      v102 = v95;
      memmove(v101, v96, v95);
      v103 = v99 + v102;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        v137.__r_.__value_.__l.__size_ = v99 + v102;
      }

      else
      {
        *(&v137.__r_.__value_.__s + 23) = v103 & 0x7F;
      }

      v100->__r_.__value_.__s.__data_[v103] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v137, v98, v99 + v95 - v98, v99, v99, 0, v95, v96);
  }

  v104 = v137.__r_.__value_.__r.__words[2];
  v138 = v137;
  memset(&v137, 0, sizeof(v137));
  v105 = HIBYTE(v104);
  v106 = SHIBYTE(v104);
  v107 = (v104 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v106 >= 0)
  {
    v108 = 22;
  }

  else
  {
    v108 = v107;
  }

  if (v106 >= 0)
  {
    v109 = v105;
  }

  else
  {
    v109 = v138.__r_.__value_.__l.__size_;
  }

  if (v108 - v109 >= 0xB)
  {
    v48 = v106 < 0;
    v110 = &v138;
    if (v48)
    {
      v110 = v138.__r_.__value_.__r.__words[0];
    }

    v111 = v110 + v109;
    if (v110 + v109 <= ", rtcp-mux:" && v111 + 11 > ", rtcp-mux:")
    {
      goto LABEL_308;
    }

    *(v111 + 7) = 980972909;
    *v111 = *", rtcp-mux:";
    v112 = v109 + 11;
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      v138.__r_.__value_.__l.__size_ = v109 + 11;
    }

    else
    {
      *(&v138.__r_.__value_.__s + 23) = v112 & 0x7F;
    }

    v110->__r_.__value_.__s.__data_[v112] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v138, v108, v109 - v108 + 11, v109, v109, 0, 0xBuLL, ", rtcp-mux:");
  }

  v113 = v138.__r_.__value_.__r.__words[2];
  v139 = v138;
  memset(&v138, 0, sizeof(v138));
  v114 = *(v6 + 32);
  if (*(v6 + 32))
  {
    v115 = "enabled";
  }

  else
  {
    v115 = "disabled";
  }

  if (*(v6 + 32))
  {
    v116 = 7;
  }

  else
  {
    v116 = 8;
  }

  v117 = HIBYTE(v113);
  v118 = SHIBYTE(v113);
  v119 = (v113 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v118 >= 0)
  {
    v120 = 22;
  }

  else
  {
    v120 = v119;
  }

  if (v118 >= 0)
  {
    v121 = v117;
  }

  else
  {
    v121 = v139.__r_.__value_.__l.__size_;
  }

  if (v120 - v121 >= v116)
  {
    if (v118 >= 0)
    {
      v122 = &v139;
    }

    else
    {
      v122 = v139.__r_.__value_.__r.__words[0];
    }

    v123 = v122 + v121;
    v124 = v114 == 0;
    v125 = 7;
    if (v124)
    {
      v125 = 8;
    }

    if (v123 <= v115 && &v123[v125] > v115)
    {
      goto LABEL_308;
    }

    memcpy(v123, v115, v116);
    v126 = v121 + v116;
    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      v139.__r_.__value_.__l.__size_ = v121 + v116;
    }

    else
    {
      *(&v139.__r_.__value_.__s + 23) = v126 & 0x7F;
    }

    v122->__r_.__value_.__s.__data_[v126] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v139, v120, v121 + v116 - v120, v121, v121, 0, v116, v115);
  }

  v140 = v139;
  memset(&v139, 0, sizeof(v139));
  v127 = SHIBYTE(v140.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v129 = v140.__r_.__value_.__l.__size_;
    v128 = v140.__r_.__value_.__r.__words[0];
    *this = 3;
    if (v129 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    *this = 3;
    v128 = &v140;
    v129 = v127;
  }

  if (v129 > 0x16)
  {
    operator new();
  }

  *(this + 31) = v129;
  v130 = (this + v129 + 8);
  if (this + 8 <= v128 && v130 > v128)
  {
LABEL_308:
    __break(1u);
LABEL_309:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v129)
  {
    memmove(this + 8, v128, v129);
  }

  v130->__r_.__value_.__s.__data_[0] = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 38) = 0;
  if ((v127 & 0x80000000) != 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_293:
      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_294;
      }

      goto LABEL_302;
    }
  }

  else if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_293;
  }

  operator delete(v139.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_294:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_303;
  }

LABEL_302:
  operator delete(v138.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_295:
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_304;
  }

LABEL_303:
  operator delete(v137.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_296:
    if ((SHIBYTE(__len) & 0x80000000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_305;
  }

LABEL_304:
  operator delete(v136.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__len) & 0x80000000) == 0)
  {
LABEL_297:
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_306;
  }

LABEL_305:
  operator delete(__src);
  if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_298:
    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_307;
    }

    return;
  }

LABEL_306:
  operator delete(v135.__r_.__value_.__l.__data_);
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_307:
    operator delete(v134.__r_.__value_.__l.__data_);
  }
}