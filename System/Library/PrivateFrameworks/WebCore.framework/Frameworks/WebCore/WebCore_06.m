void absl::str_format_internal::FormatRawSinkImpl::Flush<absl::strings_internal::StringifySink>(std::string *a1, const std::string::value_type *__src, size_t __len)
{
  if (!__src && __len)
  {
    goto LABEL_20;
  }

  v5 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    v6 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - size < __len)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = 22;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (22 - v5 < __len)
    {
LABEL_5:
      v8 = __len - v6 + size;

      std::string::__grow_by_and_replace(a1, v6, v8, size, size, 0, __len, __src);
      return;
    }
  }

  if (!__len)
  {
    return;
  }

  v9 = a1;
  if ((v5 & 0x80000000) != 0)
  {
    v9 = a1->__r_.__value_.__r.__words[0];
  }

  if ((__len & 0x8000000000000000) != 0 || v9 + size <= __src && v9 + size + __len > __src)
  {
LABEL_20:
    __break(1u);
    return;
  }

  memmove(v9 + size, __src, __len);
  v11 = size + __len;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    a1->__r_.__value_.__l.__size_ = v11;
  }

  else
  {
    *(&a1->__r_.__value_.__s + 23) = v11 & 0x7F;
  }

  v9->__r_.__value_.__s.__data_[v11] = 0;
}

uint64_t webrtc::internal::AudioState::AudioState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28828EB28;
  v4 = *a2;
  *(a1 + 16) = *a2;
  if (v4)
  {
    (**v4)(v4);
  }

  v5 = *(a2 + 8);
  *(a1 + 24) = v5;
  if (v5)
  {
    (**v5)(v5);
  }

  v6 = *(a2 + 16);
  *(a1 + 32) = v6;
  if (v6)
  {
    (**v6)(v6);
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = v7;
  if (v7)
  {
    (**v7)(v7);
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 48) = 257;
  webrtc::AudioTransportImpl::AudioTransportImpl(a1 + 56, *(a1 + 16), *(a1 + 24), v8);
  *(a1 + 15904) = 0u;
  *(a1 + 15864) = 0u;
  *(a1 + 15880) = 0u;
  *(a1 + 15896) = a1 + 15904;
  return a1;
}

uint64_t webrtc::internal::AudioState::SetPlayout(webrtc::internal::AudioState *this, int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_state.cc");
  }

  v11 = *(this + 4);
  if (a2)
  {
    if (*(this + 1984) != *(this + 1985) && ((*(*v11 + 200))(*(this + 4)) & 1) == 0 && !(*(*v11 + 144))(v11))
    {
      (*(*v11 + 184))(v11);
    }
  }

  else
  {
    (*(*v11 + 192))(*(this + 4));
  }

  *(this + 49) = a2;

  return webrtc::internal::AudioState::UpdateNullAudioPollerState(this, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t webrtc::internal::AudioState::UpdateNullAudioPollerState(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 15872) == *(this + 15880) || (*(this + 49) & 1) != 0)
  {
    v8 = *(this + 15864);
    if (v8)
    {
      *(v8 + 4) = 0;
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        v9 = this;
        MEMORY[0x2743DA540](v8, 0x1000C4090D0E795);
        this = v9;
      }

      *(this + 15864) = 0;
    }
  }

  else if (!*(this + 15864))
  {
    {
      operator new();
    }

    webrtc::RepeatingTaskHandle::Start();
  }

  return this;
}

uint64_t webrtc::internal::AudioState::AddReceivingStream(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 15872);
  v5 = *(a1 + 15880);
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v8 = *(a1 + 15880);
  }

  else
  {
    v7 = v6 >> 3;
    v8 = *(a1 + 15872);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[8 * (v7 >> 1)];
      v12 = *v10;
      v11 = v10 + 8;
      v7 += ~(v7 >> 1);
      if (v12 < a2)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
    if (v5 != v8 && *v8 <= a2)
    {
      goto LABEL_36;
    }
  }

  v13 = *(a1 + 15888);
  if (v5 < v13)
  {
    if (v8 != v5)
    {
      v14 = v8 + 8;
      if (v5 < 8)
      {
        *(a1 + 15880) = v5;
        if (v5 == v14)
        {
LABEL_35:
          *v8 = a2;
          goto LABEL_36;
        }
      }

      else
      {
        *v5 = *(v5 - 1);
        *(a1 + 15880) = v5 + 8;
        if (v5 == v14)
        {
          goto LABEL_35;
        }
      }

      memmove(v8 + 8, v8, v5 - v14);
      goto LABEL_35;
    }

    if (v4)
    {
      *v5 = a2;
      *(a1 + 15880) = v5 + 8;
      goto LABEL_36;
    }

    goto LABEL_47;
  }

  v15 = (v6 >> 3) + 1;
  if (v15 >> 61)
  {
    goto LABEL_48;
  }

  v16 = v13 - v4;
  v17 = (v13 - v4) >> 2;
  if (v17 > v15)
  {
    v15 = v17;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    v18 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = v15;
  }

  if (v18)
  {
    if (!(v18 >> 61))
    {
      operator new();
    }

    goto LABEL_49;
  }

  v19 = v8 - v4;
  v20 = (v8 - v4) >> 3;
  v21 = (8 * v20);
  if (!v20)
  {
    if (v19 < 1)
    {
      v38 = v19 >> 2;
      if (v8 == v4)
      {
        v38 = 1;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

LABEL_49:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v21 = (v21 - (((v19 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
  }

  if (!v21)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v21 = a2;
  v22 = *(a1 + 15880) - v8;
  memcpy(v21 + 1, v8, v22);
  *(a1 + 15880) = v8;
  v23 = *(a1 + 15872);
  v24 = v8 - v23;
  v25 = v21 - (v8 - v23);
  memcpy(v25, v23, v24);
  v26 = *(a1 + 15872);
  *(a1 + 15872) = v25;
  *(a1 + 15880) = v21 + v22 + 8;
  *(a1 + 15888) = 0;
  if (v26)
  {
    operator delete(v26);
  }

LABEL_36:
  v27 = *(a1 + 16);
  v28 = (*(*a2 + 144))(a2);
  (*(*v27 + 32))(v27, v28);
  if (*(a1 + 49) == 1)
  {
    v36 = *(a1 + 32);
    if (((*(*v36 + 200))(v36) & 1) == 0 && !(*(*v36 + 144))(v36))
    {
      (*(*v36 + 184))(v36);
    }
  }

  return webrtc::internal::AudioState::UpdateNullAudioPollerState(a1, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t webrtc::internal::AudioState::RemoveReceivingStream(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = *(result + 15872);
  v4 = *(result + 15880);
  if (v4 == v3)
  {
    v3 = *(result + 15880);
    v10 = v3;
  }

  else
  {
    v5 = (v4 - v3) >> 3;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    v10 = v3;
    if (v4 != v3)
    {
      v10 = v3 + 8;
      if (*v3 > a2)
      {
        v10 = v3;
      }
    }
  }

  v11 = v10 >= v3;
  v12 = v10 - v3;
  if (v11)
  {
    if (v12)
    {
      v13 = &v3[v12];
      v14 = v4 - v13;
      if (v4 != v13)
      {
        v15 = a2;
        memmove(v3, v13, v4 - v13);
        a2 = v15;
      }

      *(v2 + 15880) = &v3[v14];
    }

    v16 = *(v2 + 16);
    v17 = (*(*a2 + 144))(a2);
    (*(*v16 + 40))(v16, v17);
    if (*(v2 + 15872) == *(v2 + 15880))
    {
      (*(**(v2 + 32) + 192))(*(v2 + 32));
      v25 = v2;
    }

    else
    {
      v25 = v2;
    }

    return webrtc::internal::AudioState::UpdateNullAudioPollerState(v25, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void webrtc::internal::AudioState::SetRecording(webrtc::internal::AudioState *this, int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_state.cc");
  }

  v11 = *(this + 4);
  if (a2)
  {
    if (!*(this + 1989) || ((*(*v11 + 224))(*(this + 4)) & 1) != 0 || (*(*v11 + 168))(v11))
    {
      *(this + 48) = a2;
    }

    else
    {
      (*(*v11 + 208))(v11);
      *(this + 48) = a2;
    }
  }

  else
  {
    (*(*v11 + 216))(*(this + 4));
    *(this + 48) = 0;
  }
}

uint64_t webrtc::internal::AudioState::AddSendingStream(webrtc::internal::AudioState *this, unint64_t a2, int a3, uint64_t a4)
{
  v5 = *(this + 1988);
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
      v7 = v5[4];
      if (v7 <= a2)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  *(v6 + 10) = a3;
  v6[6] = a4;
  result = webrtc::internal::AudioState::UpdateAudioTransportWithSendingStreams(this);
  if (*(this + 48) == 1)
  {
    v9 = *(this + 4);
    result = (*(*v9 + 224))(v9);
    if ((result & 1) == 0)
    {
      result = (*(*v9 + 168))(v9);
      if (!result)
      {
        v10 = *(*v9 + 208);

        return v10(v9);
      }
    }
  }

  return result;
}

uint64_t webrtc::internal::AudioState::UpdateAudioTransportWithSendingStreams(webrtc::internal::AudioState *this)
{
  if (*(this + 1987) != (this + 15904))
  {
    operator new();
  }

  pthread_mutex_lock((this + 80));
  v1 = *(this + 18);
  if (v1)
  {
    *(this + 19) = v1;
    operator delete(v1);
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 42) = 8000;
  *(this + 22) = 1;

  return pthread_mutex_unlock((this + 80));
}

uint64_t webrtc::internal::AudioState::RemoveSendingStream(webrtc::internal::AudioState *this, unint64_t a2)
{
  v3 = *(this + 1988);
  if (v3)
  {
    v4 = (this + 15904);
    v5 = v3;
    do
    {
      v6 = v5[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v4 = v5;
      }

      v5 = v5[v8];
    }

    while (v5);
    if (v4 != (this + 15904) && v4[4] <= a2)
    {
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        v11 = v4;
        do
        {
          v10 = v11[2];
          v12 = *v10 == v11;
          v11 = v10;
        }

        while (!v12);
      }

      if (*(this + 1987) == v4)
      {
        *(this + 1987) = v10;
      }

      --*(this + 1989);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v4);
      operator delete(v4);
    }
  }

  result = webrtc::internal::AudioState::UpdateAudioTransportWithSendingStreams(this);
  if (!*(this + 1989))
  {
    v14 = *(**(this + 4) + 216);

    return v14();
  }

  return result;
}

uint64_t webrtc::internal::AudioState::SetStereoChannelSwapping(webrtc::internal::AudioState *this, char a2)
{
  pthread_mutex_lock((this + 80));
  *(this + 184) = a2;

  return pthread_mutex_unlock((this + 80));
}

void std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::internal::AudioState::UpdateNullAudioPollerState(void)::$_0 &>(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  (*(*v1 + 16))(v1, 480, 2, 1, 48000, v6, &v5, &v4, &v3);
  return 10000;
}

BOOL webrtc::RefCountedObject<webrtc::internal::AudioState>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 3980, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::internal::AudioState>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28828EB28;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a1 + 15904));
  v2 = *(a1 + 15872);
  if (v2)
  {
    *(a1 + 15880) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 15864);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::AudioTransportImpl::~AudioTransportImpl((a1 + 56));
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::internal::AudioState>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28828EB28;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a1 + 15904));
  v2 = *(a1 + 15872);
  if (v2)
  {
    *(a1 + 15880) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 15864);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::AudioTransportImpl::~AudioTransportImpl((a1 + 56));
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioTrack::AudioTrack(uint64_t a1, _BYTE *a2, size_t a3, void (****a4)(void, const void *))
{
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  *a1 = &unk_28828ECD0;
  *(a1 + 8) = &unk_28828ED60;
  *(a1 + 40) = 1;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_14:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v6 = (a1 + 48);
  *(a1 + 71) = a3;
  v7 = (a1 + 48 + a3);
  if (a1 + 48 <= a2 && v7 > a2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a3)
  {
    memmove(v6, a2, a3);
  }

  *v7 = 0;
  *(a1 + 72) = 0;
  *a1 = &unk_28828EBE0;
  *(a1 + 8) = &unk_28828EC78;
  v8 = *a4;
  *(a1 + 80) = &unk_28828ECA8;
  *(a1 + 88) = v8;
  if (v8)
  {
    (**v8)(v8, a2);
    v9 = *(a1 + 88);
    if (v9)
    {
      (**(v9 + 8))();
      (*(*a1 + 128))(a1);
    }
  }

  return a1;
}

void webrtc::AudioTrack::~AudioTrack(webrtc::AudioTrack *this)
{
  *this = &unk_28828EBE0;
  *(this + 1) = &unk_28828EC78;
  *(this + 10) = &unk_28828ECA8;
  v2 = *(this + 18);
  *(this + 18) = 1;
  if (v2 != 1)
  {
    webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(this);
  }

  v3 = *(this + 11);
  if (v3)
  {
    (*(*(v3 + 8) + 8))();
    v4 = *(this + 11);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *this = &unk_28828ECD0;
  *(this + 1) = &unk_28828ED60;
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_28828ED90;
  *(this + 1) = &unk_28828EE20;
  if (*(this + 4))
  {
    v5 = *(this + 3);
    v6 = *(*(this + 2) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 4) = 0;
    if (v5 != (this + 16))
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != (this + 16));
    }
  }
}

void webrtc::AudioTrack::kind(unint64_t a1@<X8>)
{
  *(a1 + 23) = 5;
  if (a1 <= "audio" && a1 + 5 > "audio")
  {
    __break(1u);
  }

  else
  {
    *a1 = *"audio";
    *(a1 + 4) = webrtc::kMediaTypeAudio[4];
  }
}

uint64_t webrtc::AudioTrack::AddSink(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t webrtc::AudioTrack::RemoveSink(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t webrtc::AudioTrack::OnChanged(webrtc::AudioTrack *this)
{
  result = (*(**(this + 11) + 32))(*(this + 11));
  v3 = *(this + 18);
  if (result == 2)
  {
    *(this + 18) = 1;
    if (v3 == 1)
    {
      return result;
    }
  }

  else
  {
    *(this + 18) = 0;
    if (!v3)
    {
      return result;
    }
  }

  return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(this);
}

uint64_t non-virtual thunk towebrtc::AudioTrack::OnChanged(webrtc::AudioTrack *this)
{
  result = (*(**(this + 1) + 32))(*(this + 1));
  v3 = *(this - 2);
  if (result == 2)
  {
    *(this - 2) = 1;
    if (v3 == 1)
    {
      return result;
    }
  }

  else
  {
    *(this - 2) = 0;
    if (!v3)
    {
      return result;
    }
  }

  return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(this - 80);
}

void webrtc::MediaStreamTrack<webrtc::AudioTrackInterface>::id(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 48);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 64);
  }
}

BOOL webrtc::MediaStreamTrack<webrtc::AudioTrackInterface>::set_enabled(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = a2;
  if (v3 != a2)
  {
    webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(a1);
  }

  return v3 != a2;
}

void webrtc::Notifier<webrtc::AudioTrackInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2 != a1 + 2)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 2)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[4];
    operator delete(v2);
  }
}

void non-virtual thunk towebrtc::Notifier<webrtc::AudioTrackInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 != a1 + 1)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 1)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[3];
    operator delete(v2);
  }
}

BOOL webrtc::RefCountedObject<webrtc::AudioTrack>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 25, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::AudioTrack>::~RefCountedObject(webrtc::AudioTrack *a1)
{
  webrtc::AudioTrack::~AudioTrack(a1);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioTrack>::~RefCountedObject(uint64_t a1)
{
  webrtc::AudioTrack::~AudioTrack((a1 - 8));
}

{
  webrtc::AudioTrack::~AudioTrack((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::AudioTrack::~AudioTrack((a1 - 80));
}

{
  webrtc::AudioTrack::~AudioTrack((a1 - 80));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioTransportImpl::AudioTransportImpl(uint64_t a1, void (***a2)(void), uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28828EF48;
  *(a1 + 8) = a3;
  if (a4)
  {
    v8[0] = &unk_28828EF88;
    v8[1] = a1;
    v8[3] = v8;
    webrtc::AsyncAudioProcessing::Factory::CreateAsyncAudioProcessing(a4);
  }

  *(a1 + 16) = 0;
  pthread_mutexattr_init(&v9);
  pthread_mutexattr_setpolicy_np(&v9, 3);
  pthread_mutex_init((a1 + 24), &v9);
  pthread_mutexattr_destroy(&v9);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 8000;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v6 = 0uLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  if (a2)
  {
    (**a2)(a2);
    v6 = 0uLL;
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 264) = -1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x200000004;
  *(a1 + 304) = v6;
  *(a1 + 15680) = 1;
  *(a1 + 15684) = 0;
  *(a1 + 15688) = 0;
  *(a1 + 15696) = 0;
  *(a1 + 15752) = 0;
  *(a1 + 15760) = v6;
  *(a1 + 15776) = 0;
  *(a1 + 15784) = v6;
  *(a1 + 15800) = 0;
  *(a1 + 15704) = v6;
  *(a1 + 15720) = v6;
  *(a1 + 15732) = v6;
  return a1;
}

void webrtc::AudioTransportImpl::~AudioTransportImpl(webrtc::AudioTransportImpl *this)
{
  *this = &unk_28828EF48;
  v2 = *(this + 1973);
  if (v2)
  {
    v3 = *(this + 1974);
    v4 = *(this + 1973);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1973);
    }

    *(this + 1974) = v2;
    operator delete(v4);
  }

  v7 = *(this + 1964);
  *(this + 1964) = 0;
  if (v7)
  {
    MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
  }

  v8 = *(this + 1963);
  *(this + 1963) = 0;
  if (v8)
  {
    MEMORY[0x2743DA520](v8, 0x1000C80BDFB0063);
  }

  v9 = *(this + 39);
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = *(v9 + 16);
      v12 = *(v9 + 8);
      if (v11 != v10)
      {
        do
        {
          v13 = *(v11 - 96);
          if (v13)
          {
            *(v11 - 88) = v13;
            operator delete(v13);
          }

          v11 -= 104;
        }

        while (v11 != v10);
        v12 = *(v9 + 8);
      }

      *(v9 + 16) = v10;
      operator delete(v12);
    }

    MEMORY[0x2743DA540](v9, 0x1020C40E72D6CFBLL);
  }

  v14 = *(this + 30);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 27);
  if (v15)
  {
    v16 = *(this + 28);
    v17 = *(this + 27);
    if (v16 != v15)
    {
      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          (*(*v18 + 8))(v18);
        }
      }

      while (v16 != v15);
      v17 = *(this + 27);
    }

    *(this + 28) = v15;
    operator delete(v17);
  }

  v20 = *(this + 18);
  *(this + 18) = 0;
  if (v20)
  {
    MEMORY[0x2743DA520](v20, 0x1000C80BDFB0063);
  }

  v21 = *(this + 17);
  *(this + 17) = 0;
  if (v21)
  {
    MEMORY[0x2743DA520](v21, 0x1000C80BDFB0063);
  }

  v22 = *(this + 11);
  if (v22)
  {
    *(this + 12) = v22;
    operator delete(v22);
  }

  pthread_mutex_destroy((this + 24));
  v23 = *(this + 2);
  *(this + 2) = 0;
  if (v23)
  {
    webrtc::AsyncAudioProcessing::~AsyncAudioProcessing(v23);
    MEMORY[0x2743DA540]();
  }
}

{
  webrtc::AudioTransportImpl::~AudioTransportImpl(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::AudioTransportImpl::RecordedDataIsAvailable(uint64_t a1)
{
  pthread_mutex_lock((a1 + 24));
  pthread_mutex_unlock((a1 + 24));
  operator new();
}

uint64_t webrtc::AudioTransportImpl::SendProcessedData(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 96);
  v5 = *(a1 + 88);
  if (v5 != v4)
  {
    if (v5 + 1 != v4)
    {
      operator new();
    }

    v6 = *v5;
    v7 = *a2;
    *a2 = 0;
    v16 = v7;
    (**v6)(v6, &v16);
    v8 = v16;
    v16 = 0;
    if (v8)
    {
      v9 = *(v8 + 64);
      if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        v10 = v8;
        v11 = *(v9 + 8);
        if (v11)
        {
          v12 = *(v9 + 16);
          v13 = *(v9 + 8);
          if (v12 != v11)
          {
            do
            {
              v14 = *(v12 - 96);
              if (v14)
              {
                *(v12 - 88) = v14;
                operator delete(v14);
              }

              v12 -= 104;
            }

            while (v12 != v11);
            v13 = *(v9 + 8);
          }

          *(v9 + 16) = v11;
          operator delete(v13);
        }

        MEMORY[0x2743DA540](v9, 0x1020C40E72D6CFBLL);
        v8 = v10;
      }

      MEMORY[0x2743DA540](v8, 0x1020C40C39A3FA5);
    }
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t webrtc::AudioTransportImpl::NeedMorePlayData(webrtc::AudioTransportImpl *this, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  (*(**(this + 30) + 48))(*(this + 30), a4, this + 248);
  *a8 = *(this + 32);
  *a9 = *(this + 33);
  v21 = *(this + 1);
  if (v21)
  {
    webrtc::ProcessReverseAudioFrame(v21, this + 248);
  }

  v22 = a4 * a2;
  v23 = *(this + 36);
  if (a4 * a2 != v23 * (a5 / 0x64uLL))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_transport_impl.cc", 91, "destination.data().size() == frame.num_channels_ * target_number_of_samples_per_channel", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v17, v18, v19, v20, a4 * a2);
    goto LABEL_15;
  }

  if (*(this + 15680) == 1)
  {
    a5 = &unk_280905000;
    {
LABEL_6:
      v24 = a5[257];
      v23 = *(this + 36);
      goto LABEL_8;
    }

LABEL_15:
    {
      operator new[]();
    }

    goto LABEL_6;
  }

  v24 = this + 320;
LABEL_8:
  if (v22)
  {
    v25 = a6;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(this + 34);
  v30[0] = v23;
  v30[1] = v26;
  v27 = v23 * v26;
  if (!v27)
  {
    v24 = 0;
  }

  v30[2] = v24;
  v30[3] = v27;
  v29[0] = a4;
  v29[1] = a2;
  v29[2] = v25;
  v29[3] = a4 * a2;
  webrtc::PushResampler<short>::Resample(this + 15704, v30, v29, v16, v17, v18, v19, v20);
  *a7 = v22;
  return 0;
}

unint64_t webrtc::AudioTransportImpl::PullRenderData(webrtc::AudioTransportImpl *this, int a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  (*(**(this + 30) + 48))(*(this + 30), a4, this + 248);
  *a7 = *(this + 32);
  *a8 = *(this + 33);
  v20 = *(this + 36);
  if (a5 * a4 != v20 * (a3 / 0x64uLL))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_transport_impl.cc", 91, "destination.data().size() == frame.num_channels_ * target_number_of_samples_per_channel", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, a5 * a4);
    goto LABEL_13;
  }

  if (*(this + 15680) == 1)
  {
    a3 = &unk_280905000;
    {
LABEL_4:
      v21 = a3[257];
      v20 = *(this + 36);
      goto LABEL_6;
    }

LABEL_13:
    {
      operator new[]();
    }

    goto LABEL_4;
  }

  v21 = this + 320;
LABEL_6:
  if (a5 * a4)
  {
    v22 = a6;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(this + 34);
  v27[0] = v20;
  v27[1] = v23;
  v24 = v20 * v23;
  if (!v24)
  {
    v21 = 0;
  }

  v27[2] = v21;
  v27[3] = v24;
  v26[0] = a4;
  v26[1] = a5;
  v26[2] = v22;
  v26[3] = a5 * a4;
  return webrtc::PushResampler<short>::Resample(this + 15704, v27, v26, v15, v16, v17, v18, v19);
}

uint64_t std::__function::__func<webrtc::AudioTransportImpl::AudioTransportImpl(webrtc::AudioMixer *,webrtc::AudioProcessing *,webrtc::AsyncAudioProcessing::Factory *)::$_0,std::allocator<webrtc::AudioTransportImpl::AudioTransportImpl(webrtc::AudioMixer *,webrtc::AudioProcessing *,webrtc::AsyncAudioProcessing::Factory *)::$_0>,void ()(std::unique_ptr<webrtc::AudioFrame>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828EF88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::AudioTransportImpl::AudioTransportImpl(webrtc::AudioMixer *,webrtc::AudioProcessing *,webrtc::AsyncAudioProcessing::Factory *)::$_0,std::allocator<webrtc::AudioTransportImpl::AudioTransportImpl(webrtc::AudioMixer *,webrtc::AudioProcessing *,webrtc::AsyncAudioProcessing::Factory *)::$_0>,void ()(std::unique_ptr<webrtc::AudioFrame>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  v10 = v3;
  webrtc::AudioTransportImpl::SendProcessedData(v2, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    v5 = *(result + 64);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *(v5 + 16);
        v8 = *(v5 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v5 + 8);
        }

        *(v5 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

const void **webrtc::AudioVector::CopyTo(const void **result, void **a2)
{
  v3 = result;
  if (a2[1] <= (result[3] + result[1] - result[2]) % result[1])
  {
    operator new[]();
  }

  v4 = result[2];
  v5 = result[1];
  v6 = (result[3] + v5 - v4) % v5;
  if (v6)
  {
    v7 = *a2;
    v8 = v4 % v5;
    v9 = v5 - v8;
    if (v5 - v8 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5 - v8;
    }

    result = memcpy(*a2, *result + 2 * v8, 2 * v10);
    if (v6 > v9)
    {
      result = memcpy(&v7[2 * v10], *v3, 2 * (v6 - v10));
    }
  }

  a2[2] = 0;
  a2[3] = ((v3[3] + v3[1] - v3[2]) % v3[1]);
  return result;
}

void *webrtc::AudioVector::PushBack(void *this, const webrtc::AudioVector *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = this;
    if (this[1] <= (this[1] + this[3] - this[2]) % this[1] + a3)
    {
      operator new[]();
    }

    v7 = *(a2 + 1);
    v8 = (*(a2 + 2) + a4) % v7;
    v9 = v7 - v8;
    if (v7 - v8 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v7 - v8;
    }

    this = webrtc::AudioVector::PushBack(this, (*a2 + 2 * v8), v10);
    if (v9 < a3)
    {
      v11 = *a2;

      return webrtc::AudioVector::PushBack(v6, v11, a3 - v10);
    }
  }

  return this;
}

void *webrtc::AudioVector::PushBack(void *this, const __int16 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = this[1];
    if (v6 <= (v6 + this[3] - this[2]) % v6 + a3)
    {
      operator new[]();
    }

    v7 = this[3];
    if (v6 - v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v6 - v7;
    }

    this = memcpy((*this + 2 * v7), __src, 2 * v8);
    if (v6 - v7 < a3)
    {
      this = memcpy(*v5, &__src[v8], 2 * (a3 - v8));
    }

    *(v5 + 24) = (*(v5 + 24) + a3) % *(v5 + 8);
  }

  return this;
}

void webrtc::AudioVector::InsertZerosByPushBack(webrtc::AudioVector *this, unint64_t a2, uint64_t a3)
{
  v6 = *(this + 3);
  v7 = *(this + 1);
  v8 = (v7 + v6 - *(this + 2)) % v7;
  v9 = v8 - a3;
  v12 = v8;
  if (v8 != a3)
  {
    operator new[]();
  }

  if (v7 <= v8 + a2)
  {
    operator new[]();
  }

  v10 = v7 - v6;
  if (v7 - v6 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v7 - v6;
  }

  bzero((*this + 2 * v6), 2 * v11);
  if (v10 < a2)
  {
    bzero(*this, 2 * (a2 - v11));
  }

  *(this + 3) = (*(this + 3) + a2) % *(this + 1);
  if (v12 != a3)
  {
    webrtc::AudioVector::PushBack(this, 0, v9);
  }
}

void webrtc::AudioVector::InsertZerosByPushFront(webrtc::AudioVector *this, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    operator new[]();
  }

  v5 = *(this + 2);
  if (*(this + 1) <= a2 + (*(this + 1) + *(this + 3) - v5) % *(this + 1))
  {
    operator new[]();
  }

  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(this + 2);
  }

  bzero((*this + 2 * (v5 - v6)), 2 * v6);
  if (v5 < a2)
  {
    bzero((*this + 2 * (*(this + 1) - (a2 - v6))), 2 * (a2 - v6));
  }

  *(this + 2) = (*(this + 2) - a2 + *(this + 1)) % *(this + 1);
}

void *webrtc::AudioVector::OverwriteAt(void *this, const webrtc::AudioVector *a2, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v6 = this;
    v7 = this[1];
    v8 = v7 + this[3] - this[2];
    if (v8 % v7 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v8 % v7;
    }

    if (v9 + a3 >= v7)
    {
      operator new[]();
    }

    v10 = *(a2 + 2);
    v11 = *(a2 + 1) - v10;
    if (v11 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = *(a2 + 1) - v10;
    }

    this = webrtc::AudioVector::OverwriteAt(this, (*a2 + 2 * v10), v12, v9);
    if (v11 < a3)
    {
      v13 = *a2;

      return webrtc::AudioVector::OverwriteAt(v6, v13, a3 - v12, v12 + v9);
    }
  }

  return this;
}

void *webrtc::AudioVector::OverwriteAt(void *this, const __int16 *__src, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v6 = this;
    v7 = this[2];
    v8 = this[1];
    v9 = v8 + this[3] - v7;
    if (v9 % v8 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v9 % v8;
    }

    if (v9 % v8 <= v10 + a3)
    {
      v11 = v10 + a3;
    }

    else
    {
      v11 = v9 % v8;
    }

    if (v10 + a3 >= v8)
    {
      operator new[]();
    }

    v12 = (v7 + v10) % v8;
    v13 = v8 - v12;
    if (v8 - v12 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v8 - v12;
    }

    this = memcpy((*this + 2 * v12), __src, 2 * v14);
    if (v13 < a3)
    {
      this = memcpy(*v6, &__src[v14], 2 * (a3 - v14));
    }

    *(v6 + 24) = (*(v6 + 16) + v11) % *(v6 + 8);
  }

  return this;
}

uint64_t WebRtcSpl_AutoCorrelation(int16x8_t *a1, unint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v10 = WebRtcSpl_MaxAbsValueW16(a1, a2);
  if (v10)
  {
    v11 = 32 - __clz(a2);
    v12 = __clz(v10 * v10) - 1;
    if (v12 <= v11)
    {
      v13 = v11 - v12;
    }

    else
    {
      v13 = 0;
    }

    result = a3 + 1;
    if (a3 != -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    result = a3 + 1;
    if (a3 != -1)
    {
LABEL_9:
      v15 = 0;
      v16 = 0;
      v17 = -4;
      v18 = 7;
      v19 = vnegq_s32(vdupq_n_s32(v13));
      v20 = a2;
      while (1)
      {
        if (a2 <= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = a2;
        }

        v23 = v16 + 7;
        if (a2 > v16 + 7)
        {
          v23 = a2;
        }

        if (v16 + 3 >= a2)
        {
          v26 = 0;
          v25 = 0;
          goto LABEL_25;
        }

        v24 = v23 - v16 - 4;
        if (v24 <= 0x3B)
        {
          break;
        }

        v27 = (((v22 + v17) >> 2) + 1) & 0x7FFFFFFFFFFFFFF0;
        v28 = (v24 >> 2) + 1;
        v26 = 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = 0uLL;
        v30 = a1;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        do
        {
          v34 = v30;
          v55 = vld4q_s16(v34);
          v35 = &v34[v15 / 2];
          i16 = v30[4].i16;
          v56 = vld4q_s16(i16);
          v57 = vld4q_s16(v35);
          v35 += 32;
          v58 = vld4q_s16(v35);
          v31 = vaddq_s32(vaddq_s32(vaddq_s32(vshlq_s32(vmull_high_s16(v57.val[0], v55.val[0]), v19), v31), vaddq_s32(vshlq_s32(vmull_high_s16(v57.val[1], v55.val[1]), v19), vshlq_s32(vmull_high_s16(v57.val[2], v55.val[2]), v19))), vshlq_s32(vmull_high_s16(v57.val[3], v55.val[3]), v19));
          v29 = vaddq_s32(vaddq_s32(vaddq_s32(vshlq_s32(vmull_s16(*v57.val[0].i8, *v55.val[0].i8), v19), v29), vaddq_s32(vshlq_s32(vmull_s16(*v57.val[1].i8, *v55.val[1].i8), v19), vshlq_s32(vmull_s16(*v57.val[2].i8, *v55.val[2].i8), v19))), vshlq_s32(vmull_s16(*v57.val[3].i8, *v55.val[3].i8), v19));
          v33 = vaddq_s32(vaddq_s32(vaddq_s32(vshlq_s32(vmull_high_s16(v58.val[0], v56.val[0]), v19), v33), vaddq_s32(vshlq_s32(vmull_high_s16(v58.val[1], v56.val[1]), v19), vshlq_s32(vmull_high_s16(v58.val[2], v56.val[2]), v19))), vshlq_s32(vmull_high_s16(v58.val[3], v56.val[3]), v19));
          v32 = vaddq_s32(vaddq_s32(vaddq_s32(vshlq_s32(vmull_s16(*v58.val[0].i8, *v56.val[0].i8), v19), v32), vaddq_s32(vshlq_s32(vmull_s16(*v58.val[1].i8, *v56.val[1].i8), v19), vshlq_s32(vmull_s16(*v58.val[2].i8, *v56.val[2].i8), v19))), vshlq_s32(vmull_s16(*v58.val[3].i8, *v56.val[3].i8), v19));
          v30 += 8;
          v27 -= 16;
        }

        while (v27);
        v25 = vaddvq_s32(vaddq_s32(vaddq_s32(v32, v29), vaddq_s32(v33, v31)));
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_23;
        }

LABEL_25:
        if (v26 < a2 - v16)
        {
          v38 = a2 - (v16 + v26);
          if (v38 < 4)
          {
            v39 = v26;
            goto LABEL_39;
          }

          if (v38 >= 0x10)
          {
            v40 = v38 & 0xFFFFFFFFFFFFFFF0;
            v41 = v25;
            v42 = 0uLL;
            v43 = (v20 - v26) & 0xFFFFFFFFFFFFFFF0;
            v44 = (a1 + 2 * v26);
            v45 = 0uLL;
            v46 = 0uLL;
            do
            {
              v47 = v44[1];
              v48 = *(v44 + v15);
              v49 = *(&v44[1] + v15);
              v42 = vaddq_s32(vshlq_s32(vmull_high_s16(v48, *v44), v19), v42);
              v41 = vaddq_s32(vshlq_s32(vmull_s16(*v48.i8, *v44->i8), v19), v41);
              v46 = vaddq_s32(vshlq_s32(vmull_high_s16(v49, v47), v19), v46);
              v45 = vaddq_s32(vshlq_s32(vmull_s16(*v49.i8, *v47.i8), v19), v45);
              v44 += 2;
              v43 -= 16;
            }

            while (v43);
            v25 = vaddvq_s32(vaddq_s32(vaddq_s32(v45, v41), vaddq_s32(v46, v42)));
            if (v38 == v40)
            {
              goto LABEL_10;
            }

            if ((v38 & 0xC) == 0)
            {
              v39 = v26 + v40;
              do
              {
LABEL_39:
                v25 += (a1->i16[v39 + v15 / 2] * a1->i16[v39]) >> v13;
                ++v39;
              }

              while (v39 < a2 - v16);
              goto LABEL_10;
            }
          }

          else
          {
            v40 = 0;
          }

          v50 = v25;
          v39 = v26 + (v38 & 0xFFFFFFFFFFFFFFFCLL);
          v51 = v40 - ((v20 - v26) & 0xFFFFFFFFFFFFFFFCLL);
          v52 = (a1 + 2 * v26 + 2 * v40);
          do
          {
            v53 = *(v52 + v15);
            v54 = *v52++;
            v50 = vaddq_s32(vshlq_s32(vmull_s16(v53, v54), v19), v50);
            v51 += 4;
          }

          while (v51);
          v25 = vaddvq_s32(v50);
          if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_10;
          }

          goto LABEL_39;
        }

LABEL_10:
        *a4++ = v25;
        v15 += 2;
        ++v18;
        --v17;
        --v20;
        if (v16++ == a3)
        {
          goto LABEL_8;
        }
      }

      v25 = 0;
      v26 = 0;
LABEL_23:
      v37 = (a1 + 2 * v26);
      do
      {
        v25 += vaddvq_s32(vshlq_s32(vmull_s16(*(v37 + v15), *v37), v19));
        v26 += 4;
        ++v37;
      }

      while (v16 + v26 + 3 < a2);
      goto LABEL_25;
    }
  }

LABEL_8:
  *a5 = v13;
  return result;
}

void webrtc::rnn_vad::AutoCorrelationCalculator::AutoCorrelationCalculator(webrtc::rnn_vad::AutoCorrelationCalculator *this)
{
  *this = 512;
  *(this + 2) = 0;
  *(this + 2) = pffft_new_setup(512, 0);
  v2 = malloc_type_malloc(4 * (*this << (*(this + 2) != 0)) + 64, 0xC0F571D9uLL);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFC0) + 64;
    *((v2 & 0xFFFFFFFFFFFFFFC0) + 0x38) = v2;
  }

  else
  {
    v3 = 0;
  }

  *(this + 3) = v3;
  operator new();
}

void webrtc::rnn_vad::AutoCorrelationCalculator::~AutoCorrelationCalculator(webrtc::rnn_vad::AutoCorrelationCalculator *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      free(*(v3 - 8));
    }

    MEMORY[0x2743DA540](v2, 0x10C0C4003E0BC0ALL);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      free(*(v5 - 8));
    }

    MEMORY[0x2743DA540](v4, 0x10C0C4003E0BC0ALL);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      free(*(v7 - 8));
    }

    MEMORY[0x2743DA540](v6, 0x10C0C4003E0BC0ALL);
  }

  v8 = *(this + 2);
  v9 = v8[9];
  if (v9)
  {
    free(*(v9 - 8));
  }

  free(v8);
  v10 = *(this + 3);
  if (v10)
  {
    free(*(v10 - 8));
  }
}

void *webrtc::rnn_vad::AutoCorrelationCalculator::ComputeOnPitchBuffer(uint64_t a1, int32x4_t *a2, void *a3)
{
  v6 = *(a1 + 32);
  v8 = *v6;
  v7 = v6[1];
  if (*v6)
  {
    v9 = v6[1];
  }

  else
  {
    v9 = 0;
  }

  if (&a2[108] <= v9 || &a2[48] >= v9 + 960)
  {
    v11 = a2 + 107;
    v12 = (v9 + 16);
    v13 = 240;
    do
    {
      v14 = vrev64q_s32(*v11);
      v15 = vrev64q_s32(v11[-1]);
      v12[-1] = vextq_s8(v14, v14, 8uLL);
      *v12 = vextq_s8(v15, v15, 8uLL);
      v11 -= 2;
      v12 += 2;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v16 = 431;
    v17 = v9;
    do
    {
      *v17++ = a2->i32[v16--];
    }

    while (v16 != 191);
  }

  v18 = 4 * v8;
  if (v8 >= 241)
  {
    bzero((v9 + 960), v18 - 960);
  }

  pffft_transform_internal(*(a1 + 16), v7, *(*(a1 + 48) + 8));
  memmove(v9, a2, 0x60CuLL);
  if (v8 >= 388)
  {
    bzero((v9 + 1548), v18 - 1548);
  }

  pffft_transform_internal(*(a1 + 16), *(*(a1 + 32) + 8), *(*(a1 + 40) + 8));
  if (v18 >= 1)
  {
    bzero(v9, v18);
  }

  pffft_zconvolve_accumulate(*(a1 + 16), *(*(a1 + 40) + 8), *(*(a1 + 48) + 8), *(*(a1 + 32) + 8), 1.65436159e-24);
  pffft_transform_internal(*(a1 + 16), *(*(a1 + 32) + 8), *(*(a1 + 32) + 8));

  return memmove(a3, (v9 + 956), 0x24CuLL);
}

uint64_t webrtc::ParseSdpForAV1Profile(uint64_t result)
{
  v12 = 7;
  if (__p <= "profile" && __p + 7 > "profile")
  {
    __break(1u);
    return result;
  }

  v2 = result;
  strcpy(__p, "profile");
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(result, __p);
  v4 = v3;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((v2 + 8) != v4)
    {
      goto LABEL_7;
    }

    return 0x100000000;
  }

  if ((v2 + 8) == v3)
  {
    return 0x100000000;
  }

LABEL_7:
  v5 = *(v4 + 79);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = v4[7];
    v5 = v4[8];
  }

  else
  {
    v6 = (v4 + 7);
  }

  v7 = webrtc::string_to_number_internal::ParseSigned(v6, v5, 0xAuLL);
  if ((v8 & ((v7 + 0x80000000) >> 32 == 0)) != 0)
  {
    v9 = v7 | 0x100000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | 0x100000000;
  if (v9 >= 3)
  {
    v10 = 0;
  }

  if (HIDWORD(v9))
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::SetAv1SvcConfig(webrtc *this, webrtc::VideoCodec *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = *MEMORY[0x277D85DE8];
  v9 = *(this + 186);
  if ((v9 & 0x100) == 0)
  {
    v11 = a2;
    v73 = __s;
    strcpy(__s, "L");
    v74 = xmmword_273B8EBB0;
    webrtc::SimpleStringBuilder::AppendFormat(&v73, "%d", a3);
    v12 = v74;
    v13 = *(&v74 + 1) + 1;
    memcpy(&v73[*(&v74 + 1)], "T", v74 != *(&v74 + 1) + 1);
    v14 = *(&v74 + 1);
    if (v12 != v13)
    {
      v14 = *(&v74 + 1) + 1;
    }

    *(&v74 + 1) = v14;
    v73[v14] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v73, "%d", v11);
    if (a3 >= 2)
    {
      if (v74 + ~*(&v74 + 1) >= 4uLL)
      {
        v15 = 4;
      }

      else
      {
        v15 = v74 + ~*(&v74 + 1);
      }

      memcpy(&v73[*(&v74 + 1)], "_KEY", v15);
      *(&v74 + 1) += v15;
      v73[*(&v74 + 1)] = 0;
    }

    v16 = strlen(__s);
    v17 = &qword_279E94B78;
    v18 = 1632;
    while (*v17 != v16 || memcmp(*(v17 - 1), __s, v16))
    {
      v17 += 6;
      v18 -= 48;
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    LOBYTE(v9) = *(v17 - 16);
  }

  if (v9 >= 0x22u)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v9);
LABEL_16:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/av1_svc_config.cc");
    }

    LOBYTE(v9) = 0;
  }

  v27 = *(this + 2);
  v28 = *(this + 3);
  if (v27 >= v28)
  {
    v29 = 240.0;
  }

  else
  {
    v29 = 135.0;
  }

  if (v27 >= v28)
  {
    v30 = 135.0;
  }

  else
  {
    v30 = 240.0;
  }

  v31 = vcvtms_s32_f32(fmaxf(log2f(v27 / v29), 0.0) + 1.0);
  v32 = vcvtms_s32_f32(fmaxf(log2f(v28 / v30), 0.0) + 1.0);
  if (v32 >= v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = (webrtc::LimitNumSpatialLayers)(v9, v33);
  if (v9 == v34)
  {
    LOBYTE(v35) = v9;
  }

  else
  {
    v35 = v34;
    v36 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((v36 & 1) == 0)
    {
      v44 = qword_273B8EBD0[v9];
      v73 = off_279E93910[v9];
      *&v74 = v44;
      if (v35 >= 0x22)
      {
        webrtc::webrtc_checks_impl::UnreachableCodeReached(v36);
      }

      v45 = qword_273B8EBD0[v35];
      *__s = off_279E93910[v35];
      v77 = v45;
      webrtc::webrtc_logging_impl::Log("\r\t\v\t\v", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/av1_svc_config.cc");
    }
  }

  if (v35 >= 0x22u)
  {
    *__s = 0;
  }

  else
  {
    (*(*(&off_279E93800 + v35) + 1))(__s);
    v46 = *__s;
    if (*__s)
    {
      *(this + 186) = v35 | 0x100;
      (*(*v46 + 16))(&v73);
      v47 = v73;
      if (v73 < 1)
      {
        if (v26 != 1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v48 = this + 144;
        v49 = *(this + 2);
        v50 = &v75;
        v51 = *(this + 3);
        v52 = *(this + 5);
        v53 = BYTE4(v73);
        v54 = v73;
        do
        {
          v55 = *(v50 - 4);
          v56 = *v50++;
          *v48 = v55 * v49 / v56;
          *(v48 + 1) = v55 * v51 / v56;
          *(v48 + 2) = v52;
          v48[12] = v53;
          v48[32] = 1;
          v48 += 36;
          --v54;
        }

        while (v54);
        if (v26 != 1)
        {
          v57 = (this + 168);
          do
          {
            v58 = (*(v57 - 5) * *(v57 - 6));
            v59 = ((sqrt(v58) * 480.0 + -95000.0) / 1000.0);
            if (v59 <= 20)
            {
              v59 = 20;
            }

            *v57 = v59;
            v60 = (v58 * 1.6 / 1000.0) + 50;
            *(v57 - 2) = v60;
            *(v57 - 1) = (v59 + v60) >> 1;
            v57 += 9;
            --v47;
          }

          while (v47);
LABEL_53:
          v68 = 1;
          v69 = *__s;
          *__s = 0;
          if (!v69)
          {
            return v68;
          }

          goto LABEL_49;
        }
      }

      v72 = *(this + 3);
      v71 = *(this + 4);
      *(this + 42) = v71;
      *(this + 40) = v72;
      *(this + 41) = (v72 + v71) >> 1;
      goto LABEL_53;
    }
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    v68 = 0;
    v69 = *__s;
    *__s = 0;
    if (!v69)
    {
      return v68;
    }

    goto LABEL_49;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v61, v62, v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/av1_svc_config.cc");
  v68 = 0;
  v69 = *__s;
  *__s = 0;
  if (v69)
  {
LABEL_49:
    (*(*v69 + 8))(v69);
  }

  return v68;
}

void webrtc::BackgroundNoise::~BackgroundNoise(webrtc::BackgroundNoise *this)
{
  *this = &unk_28828EFD0;
  v1 = *(this + 2);
  *(this + 2) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8021716A34);
  }
}

{
  *this = &unk_28828EFD0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8021716A34);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::BackgroundNoise::Update(webrtc::BackgroundNoise *this, const webrtc::AudioMultiVector *a2)
{
  v134 = *MEMORY[0x277D85DE8];
  if (*(this + 1))
  {
    v100 = 0;
    v3 = 0;
    v103 = WebRtcSpl_CrossCorrelation;
    for (i = 54; ; i += 56)
    {
      v5 = *(this + 2);
      bzero(&v105, 0x210uLL);
      v6 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v3 >= (v7 - v6) >> 3 || v7 == v6)
      {
        __break(1u);
      }

      v8 = *(v6 + 8 * v3);
      v9 = *(v8 + 16);
      v10 = *(v8 + 8);
      v11 = (*(*v6 + 8) + *(*v6 + 24) - *(*v6 + 16)) % *(*v6 + 8) - 256;
      if ((v10 + *(v8 + 24) - v9) % v10 - v11 >= 0x100)
      {
        v12 = 256;
      }

      else
      {
        v12 = (v10 + *(v8 + 24) - v9) % v10 - v11;
      }

      v13 = (v9 + v11) % v10;
      v14 = v10 - v13;
      if (v10 - v13 >= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v10 - v13;
      }

      memcpy(&v106, (*v8 + 2 * v13), 2 * v15);
      if (v12 > v14)
      {
        memcpy(&v106 + 2 * v15, *v8, 2 * (v12 - v15));
      }

      v16 = vminq_s16(*&v129[112], vminq_s16(*&v129[80], vminq_s16(*&v129[48], vminq_s16(*&v129[16], vminq_s16(v128, vminq_s16(v126, vminq_s16(v124, vminq_s16(v122, vminq_s16(v120, vminq_s16(v118, vminq_s16(v116, vminq_s16(v114, vminq_s16(v112, vminq_s16(v110, vminq_s16(v108, v106)))))))))))))));
      v17 = vmaxq_s16(*&v129[112], vmaxq_s16(*&v129[80], vmaxq_s16(*&v129[48], vmaxq_s16(*&v129[16], vmaxq_s16(v128, vmaxq_s16(v126, vmaxq_s16(v124, vmaxq_s16(v122, vmaxq_s16(v120, vmaxq_s16(v118, vmaxq_s16(v116, vmaxq_s16(v114, vmaxq_s16(v112, vmaxq_s16(v110, vmaxq_s16(v108, v106)))))))))))))));
      v18 = vmaxvq_s16(vmaxq_s16(v17, vmaxq_s16(*&v129[128], vmaxq_s16(*&v129[96], vmaxq_s16(*&v129[64], vmaxq_s16(*&v129[32], vmaxq_s16(*v129, vmaxq_s16(v127, vmaxq_s16(v125, vmaxq_s16(v123, vmaxq_s16(v121, vmaxq_s16(v119, vmaxq_s16(v117, vmaxq_s16(v115, vmaxq_s16(v113, vmaxq_s16(v111, vmaxq_s16(v109, v107)))))))))))))))));
      v19 = vminvq_s16(vminq_s16(v16, vminq_s16(*&v129[128], vminq_s16(*&v129[96], vminq_s16(*&v129[64], vminq_s16(*&v129[32], vminq_s16(*v129, vminq_s16(v127, vminq_s16(v125, vminq_s16(v123, vminq_s16(v121, vminq_s16(v119, vminq_s16(v117, vminq_s16(v115, vminq_s16(v113, vminq_s16(v111, vminq_s16(v109, v107)))))))))))))))));
      v20 = vminq_s16(vminq_s16(*&v129[96], vminq_s16(*&v129[64], vminq_s16(*&v129[32], vminq_s16(*v129, vminq_s16(v127, vminq_s16(v125, vminq_s16(v123, vminq_s16(v121, vminq_s16(v119, vminq_s16(v117, vminq_s16(v115, vminq_s16(v113, vminq_s16(v111, vminq_s16(v109, vminq_s16(v107, v105))))))))))))))), v16);
      v20.i16[0] = vminvq_s16(v20);
      v21 = vmaxq_s16(vmaxq_s16(*&v129[96], vmaxq_s16(*&v129[64], vmaxq_s16(*&v129[32], vmaxq_s16(*v129, vmaxq_s16(v127, vmaxq_s16(v125, vmaxq_s16(v123, vmaxq_s16(v121, vmaxq_s16(v119, vmaxq_s16(v117, vmaxq_s16(v115, vmaxq_s16(v113, vmaxq_s16(v111, vmaxq_s16(v109, vmaxq_s16(v107, v105))))))))))))))), v17);
      v21.i16[0] = vmaxvq_s16(v21);
      v22 = vmaxvq_s16(vmaxq_s16(*&v129[128], vdupq_lane_s16(*v21.i8, 0)));
      v23 = vminvq_s16(vminq_s16(*&v129[128], vdupq_lane_s16(*v20.i8, 0)));
      if (v19 < -v18 || v19 == v18)
      {
        LOWORD(v18) = v19;
      }

      if (v23 < -v22 || v23 == v22)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 * v18;
      if (v27 < 0)
      {
        v27 = -v27;
      }

      v28 = 32 - __clz(v27 >> 23);
      if (v27 >= 0x800000)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v103(v133, &v106, &v106, 0x100uLL, 9, v29, -1);
      v30 = v133[0].i32[0] >> (8 - v29);
      if (v30 >= *(v5 + i - 46))
      {
        v93 = *(this + 2) + i;
        v94 = *(v93 - 46);
        v95 = *(v93 - 42) + ((229 * *(v93 - 42)) >> 16) + 229 * v94 + 58624 * BYTE1(v94);
        v96 = v94 + 229 * (v94 >> 16) + (v95 >> 16);
        *(v93 - 46) = v96;
        *(v93 - 42) = v95;
        v97 = *(v93 - 50) - (*(v93 - 50) >> 10);
        if (v97 <= v30)
        {
          v97 = v30;
        }

        *(v93 - 50) = v97;
        v98 = (v97 + 0x80000) >> 20;
        if (v98 > v96)
        {
          *(v93 - 46) = v98;
        }
      }

      else
      {
        if (v133[0].i32[0] < 1)
        {
          return v100 & 1;
        }

        v31 = v30 <= 1 ? 1 : v30;
        *(v5 + i - 46) = v31;
        *(v5 + i - 42) = 0;
        if (WebRtcSpl_LevinsonDurbin(v133, &v130, v132, 8uLL) != 1)
        {
          return v100 & 1;
        }

        v32 = vdupq_n_s32(v131);
        v33 = vdupq_n_s32(SHIWORD(v130));
        v34 = vdupq_n_s32(SWORD6(v130));
        v35 = vdupq_n_s32(SWORD5(v130));
        v36 = vdupq_n_s32(SWORD4(v130));
        v37 = vdupq_n_s32(SWORD3(v130));
        v38 = vdupq_n_s32(SWORD2(v130));
        v39 = vdupq_n_s32(SWORD1(v130));
        v40 = vdupq_n_s32(v130);
        v41 = vmovl_high_s16(*&v129[16]);
        v42 = vmovl_s16(*&v129[16]);
        v43.i64[0] = 0xF8000000F8000000;
        v43.i64[1] = 0xF8000000F8000000;
        v44.i64[0] = 0xF8000000F8000000;
        v44.i64[1] = 0xF8000000F8000000;
        v45 = vdupq_n_s32(0x7FFF7FFu);
        v46 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v41), v39, vmovl_high_s16(*&v129[14])), v38, vmovl_high_s16(*&v129[12])), v37, vmovl_high_s16(*&v129[10])), v36, vmovl_high_s16(*&v129[8])), v35, vmovl_high_s16(*&v129[6])), v34, vmovl_high_s16(*&v129[4])), v33, vmovl_high_s16(*&v129[2])), v32, vmovl_high_s16(*v129)), v43), v45), 0xCuLL);
        v47 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v42), v39, vmovl_s16(*&v129[14])), v38, vmovl_s16(*&v129[12])), v37, vmovl_s16(*&v129[10])), v36, vmovl_s16(*&v129[8])), v35, vmovl_s16(*&v129[6])), v34, vmovl_s16(*&v129[4])), v33, vmovl_s16(*&v129[2])), v32, vmovl_s16(*v129)), v43), v45), 0xCuLL);
        v48 = vmovl_high_s16(*&v129[32]);
        v49 = vmovl_s16(*&v129[32]);
        v50 = vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v48), v39, vmovl_high_s16(*&v129[30])), v38, vmovl_high_s16(*&v129[28])), v37, vmovl_high_s16(*&v129[26])), v36, vmovl_high_s16(*&v129[24])), v35, vmovl_high_s16(*&v129[22])), v34, vmovl_high_s16(*&v129[20])), v33, vmovl_high_s16(*&v129[18])), v32, v41), v44);
        v51 = vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v49), v39, vmovl_s16(*&v129[30])), v38, vmovl_s16(*&v129[28])), v37, vmovl_s16(*&v129[26])), v36, vmovl_s16(*&v129[24])), v35, vmovl_s16(*&v129[22])), v34, vmovl_s16(*&v129[20])), v33, vmovl_s16(*&v129[18])), v32, v42), v44);
        v52 = vmovl_high_s16(*&v129[48]);
        v53 = vmovl_s16(*&v129[48]);
        v54 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v53), v39, vmovl_s16(*&v129[46])), v38, vmovl_s16(*&v129[44])), v37, vmovl_s16(*&v129[42])), v36, vmovl_s16(*&v129[40])), v35, vmovl_s16(*&v129[38])), v34, vmovl_s16(*&v129[36])), v33, vmovl_s16(*&v129[34])), v32, v49);
        v55 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v52), v39, vmovl_high_s16(*&v129[46])), v38, vmovl_high_s16(*&v129[44])), v37, vmovl_high_s16(*&v129[42])), v36, vmovl_high_s16(*&v129[40])), v35, vmovl_high_s16(*&v129[38])), v34, vmovl_high_s16(*&v129[36])), v33, vmovl_high_s16(*&v129[34])), v32, v48);
        v56 = vmovl_high_s16(*&v129[64]);
        v57 = vmovl_s16(*&v129[64]);
        v102 = v32;
        v58 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v57), v39, vmovl_s16(*&v129[62])), v38, vmovl_s16(*&v129[60])), v37, vmovl_s16(*&v129[58])), v36, vmovl_s16(*&v129[56])), v35, vmovl_s16(*&v129[54])), v34, vmovl_s16(*&v129[52])), v33, vmovl_s16(*&v129[50])), v32, v53);
        v59 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v56), v39, vmovl_high_s16(*&v129[62])), v38, vmovl_high_s16(*&v129[60])), v37, vmovl_high_s16(*&v129[58])), v36, vmovl_high_s16(*&v129[56])), v35, vmovl_high_s16(*&v129[54])), v34, vmovl_high_s16(*&v129[52])), v33, vmovl_high_s16(*&v129[50])), v32, v52);
        v101 = vmovl_high_s16(*&v129[80]);
        v60 = vmovl_s16(*&v129[80]);
        v61 = vminq_s32(v51, v45);
        *v51.i8 = vrshrn_n_s32(vminq_s32(v50, v45), 0xCuLL);
        v62 = (v47.i16[1] * v47.i16[1] + v47.i16[0] * v47.i16[0]);
        v63 = (v47.i16[2] * v47.i16[2]) + (v47.i16[3] * v47.i16[3]);
        *v61.i8 = vrshrn_n_s32(v61, 0xCuLL);
        v64.i64[0] = 0xF8000000F8000000;
        v64.i64[1] = 0xF8000000F8000000;
        v32.i64[0] = 0xF8000000F8000000;
        v32.i64[1] = 0xF8000000F8000000;
        v65 = vminq_s32(vmaxq_s32(v54, v64), v45);
        *v54.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(v55, v64), v45), 0xCuLL);
        v66 = vrshrn_n_s32(v65, 0xCuLL);
        *v55.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(v58, v32), v45), 0xCuLL);
        v67 = v33;
        *v59.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(v59, v32), v45), 0xCuLL);
        v68 = v62 + v63 + (v46.i16[0] * v46.i16[0]) + (v46.i16[1] * v46.i16[1]) + (v46.i16[2] * v46.i16[2]) + (v46.i16[3] * v46.i16[3]) + (v61.i16[0] * v61.i16[0]) + (v61.i16[1] * v61.i16[1]) + (v61.i16[2] * v61.i16[2]) + (v61.i16[3] * v61.i16[3]) + (v51.i16[0] * v51.i16[0]) + (v51.i16[1] * v51.i16[1]) + (v51.i16[2] * v51.i16[2]) + (v51.i16[3] * v51.i16[3]) + (v66.i16[0] * v66.i16[0]) + (v66.i16[1] * v66.i16[1]) + (v66.i16[2] * v66.i16[2]) + (v66.i16[3] * v66.i16[3]) + (v54.i16[0] * v54.i16[0]) + (v54.i16[1] * v54.i16[1]) + (v54.i16[2] * v54.i16[2]) + (v54.i16[3] * v54.i16[3]) + (v55.i16[0] * v55.i16[0]) + (v55.i16[1] * v55.i16[1]) + (v55.i16[2] * v55.i16[2]) + (v55.i16[3] * v55.i16[3]);
        v69 = vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v60), v39, vmovl_s16(*&v129[78])), v38, vmovl_s16(*&v129[76])), v37, vmovl_s16(*&v129[74])), v36, vmovl_s16(*&v129[72])), v35, vmovl_s16(*&v129[70])), v34, vmovl_s16(*&v129[68])), v33, vmovl_s16(*&v129[66])), v102, v57), v32);
        v33.i64[0] = 0xF8000000F8000000;
        v33.i64[1] = 0xF8000000F8000000;
        *v65.i8 = vrshrn_n_s32(vminq_s32(v69, v45), 0xCuLL);
        v70 = vmovl_high_s16(*&v129[96]);
        v71 = vmovl_s16(*&v129[96]);
        *v56.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v101), v39, vmovl_high_s16(*&v129[78])), v38, vmovl_high_s16(*&v129[76])), v37, vmovl_high_s16(*&v129[74])), v36, vmovl_high_s16(*&v129[72])), v35, vmovl_high_s16(*&v129[70])), v34, vmovl_high_s16(*&v129[68])), v67, vmovl_high_s16(*&v129[66])), v102, v56), v33), v45), 0xCuLL);
        *v50.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v71), v39, vmovl_s16(*&v129[94])), v38, vmovl_s16(*&v129[92])), v37, vmovl_s16(*&v129[90])), v36, vmovl_s16(*&v129[88])), v35, vmovl_s16(*&v129[86])), v34, vmovl_s16(*&v129[84])), v67, vmovl_s16(*&v129[82])), v102, v60), v33), v45), 0xCuLL);
        v72 = v67;
        v73 = (v56.i16[1] * v56.i16[1]) + (v56.i16[2] * v56.i16[2]) + (v56.i16[3] * v56.i16[3]) + (v50.i16[0] * v50.i16[0]) + (v50.i16[1] * v50.i16[1]) + (v50.i16[2] * v50.i16[2]);
        v74 = v50.i16[3];
        *v50.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v70), v39, vmovl_high_s16(*&v129[94])), v38, vmovl_high_s16(*&v129[92])), v37, vmovl_high_s16(*&v129[90])), v36, vmovl_high_s16(*&v129[88])), v35, vmovl_high_s16(*&v129[86])), v34, vmovl_high_s16(*&v129[84])), v67, vmovl_high_s16(*&v129[82])), v102, v101), v33), v45), 0xCuLL);
        v75 = vmovl_s16(*&v129[112]);
        v76 = v68 + (v59.i16[0] * v59.i16[0]) + (v59.i16[1] * v59.i16[1]) + (v59.i16[2] * v59.i16[2]) + (v59.i16[3] * v59.i16[3]) + (v65.i16[0] * v65.i16[0]) + (v65.i16[1] * v65.i16[1]) + (v65.i16[2] * v65.i16[2]) + (v65.i16[3] * v65.i16[3]) + (v56.i16[0] * v56.i16[0]) + v73 + (v74 * v74) + (v50.i16[0] * v50.i16[0]) + (v50.i16[1] * v50.i16[1]) + (v50.i16[2] * v50.i16[2]);
        LODWORD(v73) = v50.i16[3];
        v77 = vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v75), v39, vmovl_s16(*&v129[110])), v38, vmovl_s16(*&v129[108])), v37, vmovl_s16(*&v129[106])), v36, vmovl_s16(*&v129[104])), v35, vmovl_s16(*&v129[102])), v34, vmovl_s16(*&v129[100])), v67, vmovl_s16(*&v129[98])), v102, v71), v33);
        v67.i64[0] = 0xF8000000F8000000;
        v67.i64[1] = 0xF8000000F8000000;
        *v77.i8 = vrshrn_n_s32(vminq_s32(v77, v45), 0xCuLL);
        v78 = vmovl_high_s16(*&v129[112]);
        v79 = (v73 * v73) + (v77.i16[0] * v77.i16[0]) + (v77.i16[1] * v77.i16[1]) + (v77.i16[2] * v77.i16[2]);
        v80 = v77.i16[3];
        *v77.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, v78), v39, vmovl_high_s16(*&v129[110])), v38, vmovl_high_s16(*&v129[108])), v37, vmovl_high_s16(*&v129[106])), v36, vmovl_high_s16(*&v129[104])), v35, vmovl_high_s16(*&v129[102])), v34, vmovl_high_s16(*&v129[100])), v72, vmovl_high_s16(*&v129[98])), v102, v70), v67), v45), 0xCuLL);
        *v75.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, vmovl_s16(*&v129[128])), v39, vmovl_s16(*&v129[126])), v38, vmovl_s16(*&v129[124])), v37, vmovl_s16(*&v129[122])), v36, vmovl_s16(*&v129[120])), v35, vmovl_s16(*&v129[118])), v34, vmovl_s16(*&v129[116])), v72, vmovl_s16(*&v129[114])), v102, v75), v67), v45), 0xCuLL);
        *v32.i8 = vrshrn_n_s32(vminq_s32(vmaxq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v40, vmovl_high_s16(*&v129[128])), v39, vmovl_high_s16(*&v129[126])), v38, vmovl_high_s16(*&v129[124])), v37, vmovl_high_s16(*&v129[122])), v36, vmovl_high_s16(*&v129[120])), v35, vmovl_high_s16(*&v129[118])), v34, vmovl_high_s16(*&v129[116])), v72, vmovl_high_s16(*&v129[114])), v102, v78), v67), v45), 0xCuLL);
        v81 = v76 + v79 + (v80 * v80) + (v77.i16[0] * v77.i16[0]) + (v77.i16[1] * v77.i16[1]) + (v77.i16[2] * v77.i16[2]) + (v77.i16[3] * v77.i16[3]) + (v75.i16[0] * v75.i16[0]) + (v75.i16[1] * v75.i16[1]) + (v75.i16[2] * v75.i16[2]) + (v75.i16[3] * v75.i16[3]) + (v32.i16[0] * v32.i16[0]) + (v32.i16[1] * v32.i16[1]) + (v32.i16[2] * v32.i16[2]) + (v32.i16[3] * v32.i16[3]);
        v82 = 0x7FFFFFFFLL;
        if (v81 < 0x7FFFFFFF)
        {
          v82 = v81;
        }

        if (v30 >= 1 && 5 * v82 >= 16 * v30)
        {
          v83 = (*(this + 2) + i);
          v84 = v130;
          *(v83 - 3) = v131;
          *(v83 - 11) = v84;
          *(v83 - 19) = *&v129[128];
          *(v83 - 27) = v30;
          *(v83 - 23) = v30;
          *(v83 - 21) = 0;
          v85 = __clz(v82) - 1;
          if (v81)
          {
            v86 = v85;
          }

          else
          {
            v86 = 0;
          }

          v87 = v86 - 1;
          v88 = v86 - 2;
          if (v87)
          {
            v89 = v88;
          }

          else
          {
            v89 = v87;
          }

          v90 = v82 << v89;
          v91 = v82 >> -v89;
          if (v89 >= 0)
          {
            v92 = v90;
          }

          else
          {
            v92 = v91;
          }

          *(v83 - 1) = WebRtcSpl_SqrtFloor(v92);
          *v83 = ((v89 + 6) >> 1) + 13;
          v100 = 1;
          *(this + 24) = 1;
        }
      }

      if (++v3 >= *(this + 1))
      {
        return v100 & 1;
      }
    }
  }

  v100 = 0;
  return v100 & 1;
}

void webrtc::BackgroundNoise::GenerateBackgroundNoise(uint64_t a1, int16x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  *&v71[1484] = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    v8 = 56 * a4;
    *a8 = *(*(a1 + 16) + 56 * a4 + 16);
    v9 = *(a1 + 16);
    v10 = *(v9 + 56 * a4 + 54);
    if (v10 <= 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 1 << (v10 - 1);
    }

    if (!a7)
    {
      goto LABEL_29;
    }

    v12 = *(v9 + 56 * a4 + 52);
    if (a7 < 4)
    {
      v13 = 0;
      goto LABEL_20;
    }

    v14 = vdupq_n_s32(v11);
    v15 = vdupq_n_s32(v10);
    if (a7 >= 0x10)
    {
      v13 = a7 & 0xFFFFFFFFFFFFFFF0;
      v16 = a2 + 2;
      v17 = v71;
      v18 = vdupq_n_s16(v12);
      v19 = vnegq_s32(v15);
      v20 = a7 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v21 = *v16[-2].i8;
        v22 = vmlal_s16(v14, *v18.i8, *v21.i8);
        v23 = vmlal_high_s16(v14, v18, v21);
        v24 = vuzp1q_s16(vshlq_s32(vmlal_s16(v14, *v18.i8, *v16), v19), vshlq_s32(vmlal_high_s16(v14, v18, *v16->i8), v19));
        v17[-1] = vuzp1q_s16(vshlq_s32(v22, v19), vshlq_s32(v23, v19));
        *v17 = v24;
        v16 += 4;
        v17 += 2;
        v20 -= 16;
      }

      while (v20);
      if (v13 == a7)
      {
        goto LABEL_22;
      }

      if ((a7 & 0xC) == 0)
      {
LABEL_20:
        v32 = a7 - v13;
        v33 = 2 * v13;
        v34 = &v70[v13];
        v35 = (a2 + v33);
        do
        {
          v36 = v35->i16[0];
          v35 = (v35 + 2);
          *v34++ = (v36 * v12 + v11) >> v10;
          --v32;
        }

        while (v32);
        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
    }

    v25 = v13;
    v13 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = (a2 + 2 * v25);
    v27 = &v70[v25];
    v28 = v25 - (a7 & 0xFFFFFFFFFFFFFFFCLL);
    v29 = vdup_n_s16(v12);
    v30 = vnegq_s32(v15);
    do
    {
      v31 = *v26++;
      *v27++ = vmovn_s32(vshlq_s32(vmlal_s16(v14, v29, v31), v30));
      v28 += 4;
    }

    while (v28);
    if (v13 != a7)
    {
      goto LABEL_20;
    }

LABEL_22:
    v37 = (v9 + 56 * a4);
    v38 = v37[16];
    v39 = v37[24];
    v40 = v37[23];
    v41 = v37[22];
    v42 = v37[21];
    v43 = v37[20];
    v44 = v37[19];
    v45 = v37[18];
    v46 = v37[17];
    v47 = (a8 + 8);
    v48 = v70;
    LOWORD(v49) = *(a8 + 14);
    v50 = a7;
    v51 = (a8 + 8);
    do
    {
      v52 = v51[1];
      ++v51;
      v53 = *(v47 - 4) * v39 + *(v47 - 3) * v40 + *(v47 - 2) * v41 + *(v47 - 1) * v42 + *v47 * v43 + v52 * v44 + v47[2] * v45 + v49 * v46;
      v54 = *v48++;
      v55 = v54 * v38 - v53;
      if (v55 <= -134217728)
      {
        v55 = -134217728;
      }

      if (v55 >= 134215679)
      {
        v55 = 134215679;
      }

      v49 = (v55 + 2048) >> 12;
      v47[4] = v49;
      v47 = v51;
      --v50;
    }

    while (v50);
    v9 = *(a1 + 16);
LABEL_29:
    *(v9 + v8 + 16) = *(a8 + 2 * a7);
    v56 = *(a1 + 16);
    v57 = *(v56 + v8 + 50);
    if (v57 >= 0x4000 || a7 == 0)
    {
      goto LABEL_47;
    }

    if (a7 < 4)
    {
      v59 = 0;
LABEL_44:
      v68 = a7 - v59;
      v69 = (a8 + 2 * v59 + 16);
      do
      {
        *v69 = (*v69 * v57 + 0x2000) >> 14;
        ++v69;
        --v68;
      }

      while (v68);
LABEL_46:
      v56 = *(a1 + 16);
LABEL_47:
      *(v56 + 56 * a4 + 50) = v57;
      return;
    }

    if (a7 >= 0x10)
    {
      v59 = a7 & 0xFFFFFFFFFFFFFFF0;
      v60 = (a8 + 32);
      v61 = vdupq_n_s16(v57);
      v62 = a7 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v61.i8, *v60), 0xEuLL), vmull_high_s16(v61, *v60->i8), 0xEuLL);
        *v60[-2].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v61.i8, v60[-2]), 0xEuLL), vmull_high_s16(v61, *v60[-2].i8), 0xEuLL);
        *v60->i8 = v63;
        v60 += 4;
        v62 -= 16;
      }

      while (v62);
      if (v59 == a7)
      {
        goto LABEL_46;
      }

      if ((a7 & 0xC) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v59 = 0;
    }

    v64 = v59;
    v59 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v65 = (a8 + 2 * v64 + 16);
    v66 = v64 - (a7 & 0xFFFFFFFFFFFFFFFCLL);
    v67 = vdup_n_s16(v57);
    do
    {
      *v65 = vrshrn_n_s32(vmull_s16(v67, *v65), 0xEuLL);
      ++v65;
      v66 += 4;
    }

    while (v66);
    if (v59 == a7)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  bzero((a8 + 16), 2 * a7);
}

void webrtc::BalancedConstraint::IsAdaptationUpAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 40) + 16))(*(a1 + 40)) == 3)
  {
    if ((*(a2 + 4) & 0x100000000) == 0)
    {
LABEL_44:
      v22 = std::__throw_bad_optional_access[abi:sn200100]();
      webrtc::BalancedConstraint::~BalancedConstraint(v22);
      return;
    }

    v8 = *(a2 + 24);
    if ((v8 & 0x100000000) == 0)
    {
      LODWORD(v8) = *(a2 + 4);
    }

    v9 = *(a2 + 16);
    v10 = *(a1 + 12);
    if (v10 == 1)
    {
      v11 = *(a1 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 16);
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 24) - v12) >> 3);
    if (v13 != 1)
    {
      v14 = (v12 + 232);
      v15 = -1;
      v16 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 24) - v12) >> 3);
      while (1)
      {
        if (!v16)
        {
          goto LABEL_43;
        }

        if (*(v14 - 58) >= v8)
        {
          break;
        }

        --v15;
        v14 += 30;
        if (--v16 == 1)
        {
          goto LABEL_14;
        }
      }

      if (v13 <= -v15)
      {
        goto LABEL_43;
      }

      v20 = *(v14 - 26);
      if (v9 > 2)
      {
        switch(v9)
        {
          case 3:
            v14 -= 5;
            break;
          case 4:
            v14 -= 10;
            break;
          case 5:
LABEL_32:
            v14 -= 15;
            break;
          default:
            goto LABEL_39;
        }
      }

      else
      {
        if (!v9)
        {
          goto LABEL_38;
        }

        if (v9 != 1)
        {
          if (v9 != 2)
          {
LABEL_39:
            v21 = v20;
            if (v20 < 1)
            {
              goto LABEL_14;
            }

LABEL_40:
            if (!v11 || 1000 * v21 <= v11)
            {
              goto LABEL_14;
            }

            return;
          }

          goto LABEL_32;
        }

        v14 -= 20;
      }

LABEL_38:
      v21 = *v14;
      if (v21 > 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_14:
    if ((*(a3 + 8) & 1) != 0 && ((*(a4 + 8) & 1) == 0 || *a4 > *a3) && v13 != 1)
    {
      v17 = v12 + 236;
      v18 = -1;
      v19 = v13;
      while (v19)
      {
        if (*(v17 - 236) >= v8)
        {
          if (v13 <= -v18)
          {
            break;
          }

          return;
        }

        --v18;
        v17 += 120;
        if (--v19 == 1)
        {
          return;
        }
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }
}

void webrtc::BalancedConstraint::~BalancedConstraint(webrtc::BalancedConstraint *this)
{
  *this = &unk_28828EFF0;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28828EFF0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BalancedConstraint::Name(char *a1@<X8>)
{
  a1[23] = 18;
  if (a1 <= "BalancedConstraint" && a1 + 18 > "BalancedConstraint")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "BalancedConstraint");
  }
}

void webrtc::BalancedDegradationSettings::BalancedDegradationSettings(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t webrtc::FieldTrialStructList<webrtc::BalancedDegradationSettings::Config>::~FieldTrialStructList(uint64_t a1)
{
  *a1 = &unk_28828F020;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293760;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
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
      v5 = *(a1 + 64);
    }

    *(a1 + 72) = v3;
    operator delete(v5);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  return a1;
}

int **webrtc::BalancedDegradationSettings::GetQpThresholds(int **result, int a2, int a3)
{
  v4 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    while (*v4 < a3)
    {
      v4 += 30;
      if (v4 == v3)
      {
        v4 = v3 - 30;
        break;
      }
    }

    v5 = 0;
    if (a2 > 2)
    {
      if ((a2 - 4) >= 2)
      {
        v6 = 0;
        if (a2 != 3)
        {
          return (v6 | v5);
        }

        v7 = v4 + 21;
        v8 = v4 + 20;
      }

      else
      {
        v7 = v4 + 16;
        v8 = v4 + 15;
      }
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        v6 = 0;
        if (a2 == 2)
        {
          v7 = v4 + 11;
          v8 = v4 + 10;
          goto LABEL_16;
        }

        return (v6 | v5);
      }

      v8 = v4 + 5;
      v7 = v4 + 6;
    }

    else
    {
      v7 = v4 + 26;
      v8 = v4 + 25;
    }

LABEL_16:
    v5 = 0;
    v9 = *v7;
    v10 = *v8;
    if (*v7 >= 1)
    {
      v11 = v9 & 0xFFFFFF00;
    }

    else
    {
      v11 = 0;
    }

    if (v10 >= 1)
    {
      v12 = *v8 & 0xFFFFFF00;
    }

    else
    {
      v12 = 0;
    }

    v6 = 0;
    if (v10 >= 1 && v9 >= 1)
    {
      v13 = v12 & 0xFFFFFF00 | (v10 & ~(v10 >> 31));
      v14 = v11 & 0xFFFFFF00 | (v9 & ~(v9 >> 31));
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/balanced_degradation_settings.cc");
      }

      v6 = v13 & 0x7FFFFF00 | (v14 << 32);
      v5 = v13;
    }

    return (v6 | v5);
  }

  __break(1u);
  return result;
}

uint64_t webrtc::anonymous namespace::IsValidConfig(int32x2_t *a1)
{
  v1 = vcgtz_s32(*a1);
  if (v1.i32[0] != v1.i32[1])
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v9 = vorr_s8(vand_s8((*a1 & 0xFFFFFF00FFFFFF00), v1), vand_s8(vmax_s32(*a1, 0), 0xFF000000FFLL));
  if (v1.i32[0] & v1.i32[1] & vcge_s32(v9, vdup_lane_s32(v9, 1)).u32[0])
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = a1[1].i32[0];
  if (v10 >= 1 && (v10 & 0x7FFFFFFFu) - 101 <= 0xFFFFFF9B)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_10:
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/balanced_degradation_settings.cc");
    }

    return 0;
  }

  return 1;
}

void webrtc::FieldTrialStructList<webrtc::BalancedDegradationSettings::Config>::~FieldTrialStructList(uint64_t a1)
{
  *a1 = &unk_28828F020;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293760;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
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
      v5 = *(a1 + 64);
    }

    *(a1 + 72) = v3;
    operator delete(v5);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::FieldTrialStructList<webrtc::BalancedDegradationSettings::Config>::ParseDone(void *a1)
{
  v1 = a1[8];
  v2 = a1[9];
  if (v1 != v2)
  {
    v4 = -1;
    while ((*((*(**v1 + 24))() + 57) & 1) == 0)
    {
      if (*((*(**v1 + 24))() + 58) == 1)
      {
        v5 = (*(**v1 + 24))();
        v6 = (*(*v5 + 32))(v5);
        if (v4 == -1)
        {
          v4 = v6;
        }

        else if (v4 != v6)
        {
          return;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        if (v4 != -1)
        {
          if (v4)
          {
            if ((v4 & 0x80000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v7 = a1[8];
          v8 = a1[9];
          while (v7 != v8)
          {
            v9 = *v7++;
            (*(*v9 + 24))(v9);
          }

          v10 = a1[11];
          a1[11] = 0;
          a1[12] = 0;
          a1[13] = 0;
          if (v10)
          {

            operator delete(v10);
          }
        }

        return;
      }
    }
  }
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_0,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_0>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_0)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_0,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_0>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_0)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F050;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<int>::~TypedFieldTrialListWrapper(uint64_t a1)
{
  *a1 = &unk_28828F098;
  v2 = a1 + 96;
  v3 = *(a1 + 120);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 8) = &unk_28828F0C8;
    v4 = *(a1 + 72);
    if (v4)
    {
LABEL_5:
      *(a1 + 80) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 8) = &unk_28828F0C8;
    v4 = *(a1 + 72);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  *(a1 + 8) = &unk_288293910;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

void webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<int>::~TypedFieldTrialListWrapper(uint64_t a1)
{
  *a1 = &unk_28828F098;
  v2 = a1 + 96;
  v3 = *(a1 + 120);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 8) = &unk_28828F0C8;
    v4 = *(a1 + 72);
    if (v4)
    {
LABEL_5:
      *(a1 + 80) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 8) = &unk_28828F0C8;
    v4 = *(a1 + 72);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  *(a1 + 8) = &unk_288293910;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<int>::WriteElement(void *a1, uint64_t a2, int a3)
{
  v3 = a1[9];
  if (a3 >= ((a1[10] - v3) >> 2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 4 * a3);
    v9 = a2;
    v8 = v4;
    v5 = a1[15];
    if (v5)
    {
      return (*(*v5 + 48))(v5, &v9, &v8);
    }
  }

  v7 = std::__throw_bad_function_call[abi:sn200100]();
  return webrtc::field_trial_list_impl::TypedFieldTrialListWrapper<int>::GetList(v7);
}

uint64_t webrtc::FieldTrialList<int>::~FieldTrialList(uint64_t a1)
{
  *a1 = &unk_28828F0C8;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void webrtc::FieldTrialList<int>::~FieldTrialList(uint64_t a1)
{
  *a1 = &unk_28828F0C8;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialList<int>::Parse(uint64_t a1, uint64_t *a2)
{
  *(a1 + 58) = 1;
  if (a2[3])
  {
    v2 = a2;
    v3 = *(a2 + 23);
    if (v3 < 0)
    {
      v2 = *a2;
      v3 = a2[1];
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else if (!*(a2 + 23))
    {
      goto LABEL_11;
    }

    v4 = 0;
    do
    {
      if (*(v2 + v4) == 124)
      {
        operator new();
      }

      ++v4;
    }

    while (v4 != v3);
LABEL_11:
    operator new();
  }

  *(a1 + 72) = *(a1 + 64);
  return 1;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_1,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_1>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_1)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_1,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_1>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_1)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F100;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_2,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_2>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_2)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_2,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_2>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_2)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F148;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_3,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_3>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_3)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_3,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_3>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_3)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F190;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_4,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_4>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_4)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_4,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_4>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_4)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F1D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_5,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_5>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_5)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_5,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_5>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_5)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F220;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_6,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_6>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_6)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_6,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_6>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_6)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F268;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_7,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_7>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_7)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_7,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_7>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_7)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F2B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_8,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_8>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_8)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_8,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_8>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_8)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F2F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_9,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_9>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_9)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_9,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_9>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_9)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F340;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_10,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_10>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_10)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_10,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_10>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_10)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F388;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_11,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_11>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_11)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_11,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_11>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_11)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F3D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_12,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_12>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_12)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_12,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_12>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_12)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F418;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_13,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_13>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_13)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_13,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_13>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_13)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F460;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_14,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_14>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_14)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_14,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_14>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_14)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F4A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_15,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_15>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_15)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_15,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_15>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_15)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F4F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_16,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_16>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_16)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_16,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_16>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_16)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F538;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_17,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_17>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_17)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_17,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_17>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_17)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F580;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_18,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_18>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_18)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_18,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_18>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_18)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F5C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_19,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_19>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_19)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_19,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_19>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_19)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F610;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_20,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_20>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_20)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_20,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_20>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_20)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F658;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_21,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_21>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_21)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_21,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_21>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_21)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F6A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_22,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_22>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_22)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_22,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_22>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_22)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F6E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_23,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_23>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_23)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_23,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_23>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_23)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F730;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_24,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_24>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_24)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_24,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_24>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_24)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F778;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_25,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_25>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_25)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_25,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_25>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_25)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F7C0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_26,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_26>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_26)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_26,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_26>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_26)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F808;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_27,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_27>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_27)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_27,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_27>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_27)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F850;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_28,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_28>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_28)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_28,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_28>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_28)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F898;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_29,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_29>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_29)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_29,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_29>>(std::string_view,webrtc::BalancedDegradationSettings::BalancedDegradationSettings(webrtc::FieldTrialsView const&)::$_29)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28828F8E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void webrtc::BandwidthQualityScaler::StartCheckForBitrate(webrtc::BandwidthQualityScaler *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 17);
  if (!v9 || atomic_load_explicit((v9 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v10 = *(this + 17);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v10 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v10 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v10, 0x1000C404A09149ALL);
    }
  }

  operator new();
}

void webrtc::BandwidthQualityScaler::~BandwidthQualityScaler(webrtc::BandwidthQualityScaler *this)
{
  *this = &unk_28828F928;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  *(this + 18) = 0;
  v3 = *(this + 17);
  if (v3)
  {
    *v3 = 0;
    if (atomic_fetch_add((v3 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 17) = 0;
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 4);
}

{
  *this = &unk_28828F928;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  *(this + 18) = 0;
  v3 = *(this + 17);
  if (v3)
  {
    *v3 = 0;
    if (atomic_fetch_add((v3 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 17) = 0;
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 4);

  JUMPOUT(0x2743DA540);
}

char *webrtc::BandwidthQualityScaler::SetResolutionBitrateLimits(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v5)
  {
    operator new();
  }

  result = (a1 + 152);
  if ((a1 + 152) != a2)
  {

    return std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits>::__assign_with_size[abi:sn200100]<webrtc::VideoEncoder::ResolutionBitrateLimits*,webrtc::VideoEncoder::ResolutionBitrateLimits*>(result, v4, v5, (v5 - v4) >> 4);
  }

  return result;
}

char *std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits>::__assign_with_size[abi:sn200100]<webrtc::VideoEncoder::ResolutionBitrateLimits*,webrtc::VideoEncoder::ResolutionBitrateLimits*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v12 = 0xFFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 60))
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::BandwidthQualityScaler::StartCheckForBitrate(void)::$_0 &&>(void **result)
{
  v3 = *result;
  v4 = **result;
  if (v4)
  {
    if (*v4 == 1 && v3[1] != 0)
    {
      v15 = v1;
      v16 = v2;
      v6 = v3[2];
      if (*(v6 + 132) != 1)
      {
        return webrtc::BandwidthQualityScaler::StartCheckForBitrate(v6);
      }

      if (*(v6 + 24) != 1)
      {
        return webrtc::BandwidthQualityScaler::StartCheckForBitrate(v6);
      }

      v7 = webrtc::RateStatistics::Rate((v6 + 4), v6[2]);
      if ((v9 & 1) == 0)
      {
        return webrtc::BandwidthQualityScaler::StartCheckForBitrate(v6);
      }

      v10 = v7;
      webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(v6[16], v6 + 19, v11, v8);
      if (v14 != 1)
      {
        return webrtc::BandwidthQualityScaler::StartCheckForBitrate(v6);
      }

      if ((v13 * 0.95) >= v10)
      {
        if ((v12 * 0.8) <= v10)
        {
          return webrtc::BandwidthQualityScaler::StartCheckForBitrate(v6);
        }

        (*(*v6[1] + 16))(v6[1]);
      }

      else
      {
        (*(*v6[1] + 24))(v6[1]);
      }

      if (*(v6 + 132) == 1)
      {
        *(v6 + 132) = 0;
      }

      return webrtc::BandwidthQualityScaler::StartCheckForBitrate(v6);
    }
  }

  return result;
}

uint64_t *absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::BandwidthQualityScaler::StartCheckForBitrate(void)::$_0>(char a1, uint64_t **a2, uint64_t **a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v6 = *result;
      if (*result && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v6, 0x1000C404A09149ALL);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t webrtc::BandwidthQualityScalerResource::OnReportUsageBandwidthHigh(webrtc::BandwidthQualityScalerResource *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this + 13);
  if (v2)
  {
    v4 = this;
    (**this)(this);
    (*(*v2 + 16))(v2, &v4, 0);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t non-virtual thunk towebrtc::BandwidthQualityScalerResource::OnReportUsageBandwidthHigh(webrtc::BandwidthQualityScalerResource *this)
{
  v2 = (this - 104);
  pthread_mutex_lock((this - 104));
  v3 = this;
  v4 = *(this - 1);
  if (v4)
  {
    v5 = *(v3 - 14);
    v7 = v3 - 112;
    (*v5)();
    (*(*v4 + 16))(v4, &v7, 0);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t webrtc::BandwidthQualityScalerResource::OnReportUsageBandwidthLow(webrtc::BandwidthQualityScalerResource *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this + 13);
  if (v2)
  {
    v4 = this;
    (**this)(this);
    (*(*v2 + 16))(v2, &v4, 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t non-virtual thunk towebrtc::BandwidthQualityScalerResource::OnReportUsageBandwidthLow(webrtc::BandwidthQualityScalerResource *this)
{
  v2 = (this - 104);
  pthread_mutex_lock((this - 104));
  v3 = this;
  v4 = *(this - 1);
  if (v4)
  {
    v5 = *(v3 - 14);
    v7 = v3 - 112;
    (*v5)();
    (*(*v4 + 16))(v4, &v7, 1);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return pthread_mutex_unlock(v2);
}

BOOL webrtc::RefCountedObject<webrtc::BandwidthQualityScalerResource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 32, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::BandwidthQualityScalerResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28828F948;
  v2 = *(a1 + 120);
  *(a1 + 112) = &unk_28828F998;
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2882A3350;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  pthread_mutex_destroy((a1 + 8));
  return a1;
}

void webrtc::RefCountedObject<webrtc::BandwidthQualityScalerResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28828F948;
  v2 = *(a1 + 120);
  *(a1 + 112) = &unk_28828F998;
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2882A3350;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  pthread_mutex_destroy((a1 + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::RefCountedObject<webrtc::BandwidthQualityScalerResource>::~RefCountedObject(void *a1)
{
  *(a1 - 14) = &unk_28828F948;
  v2 = a1[1];
  *a1 = &unk_28828F998;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 - 14) = &unk_2882A3350;
  if (*(a1 - 17) < 0)
  {
    operator delete(*(a1 - 5));
    v3 = (a1 - 13);
  }

  else
  {
    v3 = (a1 - 13);
  }

  return pthread_mutex_destroy(v3);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::BandwidthQualityScalerResource>::~RefCountedObject(void *a1)
{
  *(a1 - 14) = &unk_28828F948;
  v2 = a1[1];
  *a1 = &unk_28828F998;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 - 14) = &unk_2882A3350;
  if (*(a1 - 17) < 0)
  {
    operator delete(*(a1 - 5));
  }

  pthread_mutex_destroy((a1 - 13));

  JUMPOUT(0x2743DA540);
}

void webrtc::BasicAsyncDnsResolverFactory::CreateAndResolve()
{
  operator new();
}

{
  operator new();
}

uint64_t webrtc::BasicIceController::BasicIceController(uint64_t a1, void *a2)
{
  *a1 = &unk_28828FA88;
  v4 = a1 + 8;
  v5 = a2[3];
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 32) = v4;
      (*(*a2[3] + 24))(a2[3]);
      v6 = a2[7];
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 32) = (*(*v5 + 16))(v5, v4);
      v6 = a2[7];
      if (!v6)
      {
LABEL_10:
        *(a1 + 64) = 0;
        v7 = a2[11];
        if (v7)
        {
          goto LABEL_11;
        }

LABEL_14:
        *(a1 + 96) = 0;
        goto LABEL_16;
      }
    }
  }

  else
  {
    *(a1 + 32) = 0;
    v6 = a2[7];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 != a2 + 4)
  {
    *(a1 + 64) = (*(*v6 + 16))(v6);
    v7 = a2[11];
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  *(a1 + 64) = a1 + 40;
  (*(*a2[7] + 24))(a2[7]);
  v7 = a2[11];
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7 == a2 + 8)
  {
    *(a1 + 96) = a1 + 72;
    (*(*a2[11] + 24))(a2[11]);
  }

  else
  {
    *(a1 + 96) = (*(*v7 + 16))(v7);
  }

LABEL_16:
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 2;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = a2[12];
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = a1 + 280;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 320) = 0;
  return a1;
}

void webrtc::BasicIceController::~BasicIceController(webrtc::BasicIceController *this)
{
  *this = &unk_28828FA88;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 38));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 35));
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3 == (this + 72))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 8);
    if (v4 != (this + 40))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 8);
    if (v4 != (this + 40))
    {
LABEL_7:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = *(this + 4);
      if (v5 != (this + 8))
      {
        goto LABEL_10;
      }

LABEL_15:
      (*(*v5 + 32))(v5);
      return;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = *(this + 4);
  if (v5 == (this + 8))
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }
}

{
  webrtc::BasicIceController::~BasicIceController(this);

  JUMPOUT(0x2743DA540);
}

__n128 webrtc::BasicIceController::SetIceConfig(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 152) = a2[3];
  *(a1 + 136) = v4;
  *(a1 + 120) = v3;
  *(a1 + 104) = v2;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 213) = *(a2 + 109);
  *(a1 + 200) = v7;
  *(a1 + 184) = v6;
  *(a1 + 168) = result;
  return result;
}

void *webrtc::BasicIceController::AddConnection(webrtc::BasicIceController *this, const webrtc::Connection *a2)
{
  v8 = a2;
  result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](this + 31, &v8);
  v5 = *(this + 38);
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
      v7 = v5[4];
      if (v7 <= a2)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= a2)
    {
      return result;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }
}

void *std::vector<webrtc::Connection const*>::push_back[abi:sn200100](void *result, void *a2)
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

void webrtc::BasicIceController::OnConnectionDestroyed(webrtc::BasicIceController *this, const Connection *a2)
{
  v4 = *(this + 35);
  if (v4)
  {
    v5 = (this + 280);
    v6 = v4;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != (this + 280) && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*(this + 34) == v5)
      {
        *(this + 34) = v11;
      }

      --*(this + 36);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v4, v5);
      operator delete(v5);
    }
  }

  v14 = *(this + 38);
  if (v14)
  {
    v15 = (this + 304);
    v16 = *(this + 38);
    do
    {
      v17 = *(v16 + 32);
      v8 = v17 >= a2;
      v18 = v17 < a2;
      if (v8)
      {
        v15 = v16;
      }

      v16 = *(v16 + 8 * v18);
    }

    while (v16);
    if (v15 != (this + 304) && v15[4] <= a2)
    {
      v19 = v15[1];
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
        v21 = v15;
        do
        {
          v20 = v21[2];
          v13 = *v20 == v21;
          v21 = v20;
        }

        while (!v13);
      }

      if (*(this + 37) == v15)
      {
        *(this + 37) = v20;
      }

      --*(this + 39);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v14, v15);
      operator delete(v15);
    }
  }

  v23 = *(this + 31);
  v22 = *(this + 32);
  if (v23 == v22)
  {
    goto LABEL_39;
  }

  do
  {
    if (*v23 == a2)
    {
      goto LABEL_39;
    }

    ++v23;
  }

  while (v23 != v22);
  do
  {
    __break(1u);
LABEL_39:
    ;
  }

  while (v22 == v23);
  v24 = v22 - (v23 + 1);
  if (v22 != v23 + 1)
  {
    memmove(v23, v23 + 1, v22 - (v23 + 1));
  }

  *(this + 32) = v23 + v24;
  if (*(this + 30) == a2)
  {
    *(this + 30) = 0;
  }
}

uint64_t webrtc::BasicIceController::HasPingableConnection(webrtc::BasicIceController *this)
{
  if (!webrtc::g_clock)
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v2 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    v3 = *(this + 31);
    v4 = *(this + 32);
    if (v3 != v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  v3 = *(this + 31);
  v4 = *(this + 32);
  if (v3 == v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v2 / 1000000;
  v6 = v3 + 8;
  do
  {
    result = webrtc::BasicIceController::IsPingable(this, *(v6 - 8), v5);
    if (result)
    {
      break;
    }

    v8 = v6 == v4;
    v6 += 8;
  }

  while (!v8);
  return result;
}

uint64_t webrtc::BasicIceController::SelectConnectionToPing@<X0>(webrtc::BasicIceController *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = *(this + 31); i != *(this + 32); i += 8)
  {
    if (*(*i + 2328) != 3 && *(*i + 2592) < 3)
    {
      v7 = 0;
      v8 = *(this + 30);
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  v7 = 1;
  v8 = *(this + 30);
  if (!v8)
  {
LABEL_14:
    v12 = &webrtc::WEAK_PING_INTERVAL;
    v10 = 172;
    v11 = 168;
    goto LABEL_15;
  }

LABEL_9:
  if (*(v8 + 2328) || *(v8 + 2332) != 1)
  {
    goto LABEL_14;
  }

  v9 = (v7 & *(v8 + 2333));
  v10 = 172;
  v11 = 168;
  if (v9 == 1)
  {
    v11 = 160;
    v10 = 164;
    v12 = &webrtc::STRONG_PING_INTERVAL;
  }

  else
  {
    v12 = &webrtc::WEAK_PING_INTERVAL;
  }

LABEL_15:
  v13 = (this + v11);
  if (*(this + v10))
  {
    v12 = v13;
  }

  v14 = *v12;
  if (*(this + 180) == 1)
  {
    if (v14 <= *(this + 44))
    {
      v15 = *(this + 44);
    }

    else
    {
      v15 = v14;
    }

    v16 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
LABEL_22:
      result = (*(*v16 + 16))(v16);
      goto LABEL_30;
    }
  }

  else
  {
    if (v14 <= -1)
    {
      v15 = -1;
    }

    else
    {
      v15 = v14;
    }

    v16 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
      goto LABEL_22;
    }
  }

  if (!dword_28100D8E4)
  {
    mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
  }

  result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
LABEL_30:
  if (result / 1000000 >= a2 + v15)
  {
    result = (*(*this + 88))(this);
    v20 = (this + 104);
    if (!*(this + 108))
    {
      v20 = &webrtc::RECEIVING_TIMEOUT;
    }

    v19 = *v20;
    if (result)
    {
      *a3 = result;
      v21 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    v18 = (this + 104);
    if (!*(this + 108))
    {
      v18 = &webrtc::RECEIVING_TIMEOUT;
    }

    v19 = *v18;
  }

  v21 = 0;
  *a3 = 0;
LABEL_39:
  v22 = v19 / 10;
  if (v22 <= 50)
  {
    v22 = 50;
  }

  if (v22 >= v15)
  {
    v22 = v15;
  }

  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  return result;
}

uint64_t webrtc::BasicIceController::MarkConnectionPinged(uint64_t this, const webrtc::Connection *a2)
{
  if (a2)
  {
    v2 = *(this + 280);
    if (!v2)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = v2[4];
        if (v4 <= a2)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 >= a2)
      {
        break;
      }

      v2 = v3[1];
      if (!v2)
      {
        goto LABEL_8;
      }
    }
  }

  return this;
}

const Connection *webrtc::BasicIceController::FindNextPingableConnection(webrtc::BasicIceController *this)
{
  if (webrtc::g_clock)
  {
    v4 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v4 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v9 = v4 / 1000000;
  v10 = *(this + 30);
  if (v10)
  {
    v11 = *(v10 + 2333);
    v12 = *(v10 + 582);
    if (v11 == 1)
    {
      if (!v12)
      {
        if (*(v10 + 648) > 2)
        {
          v16 = (this + 128);
          if (!*(this + 132))
          {
            v16 = &webrtc::STRONG_AND_STABLE_WRITABLE_CONNECTION_PING_INTERVAL;
          }

          v17 = *v16;
          if (*v16 >= 900)
          {
            v14 = 900;
          }

          else
          {
            v14 = *v16;
          }

          if (*(v10 + 2332) == 1 && *(v10 + 605) >= 5)
          {
            v18 = *(v10 + 310);
            if (v18 == *(v10 + 311) || v9 - *(v18 + 24) <= 2 * *(v10 + 604))
            {
              v14 = v17;
            }
          }
        }

        else
        {
          v13 = (this + 168);
          if (!*(this + 172))
          {
            v13 = &webrtc::WEAK_PING_INTERVAL;
          }

          v14 = *v13;
          if (*(this + 180) == 1)
          {
            v15 = *(this + 44);
          }

          else
          {
            v15 = -1;
          }

          if (v14 <= v15)
          {
            v14 = v15;
          }
        }

        if (*(v10 + 305) + v14 <= v9)
        {
          return v10;
        }

LABEL_30:
        if (*(v10 + 2332) & v11)
        {
          goto LABEL_46;
        }
      }
    }

    else if (!v12)
    {
      goto LABEL_30;
    }
  }

  v80 = v4 / 1000000;
  webrtc::BasicIceController::GetBestConnectionByNetwork(&v81, this);
  v19 = v81.__r_.__value_.__r.__words[0];
  if (v81.__r_.__value_.__l.__data_ == &v81.__r_.__value_.__r.__words[1])
  {
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v81.__r_.__value_.__l.__size_);
    v9 = v80;
  }

  else
  {
    v1 = 0;
    v9 = v80;
    do
    {
      size = v19[1].__words[2];
      if (!*(size + 2328) && *(size + 2333) == 1)
      {
        operator new();
      }

      v20 = v19->__words[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = v20->__r_.__value_.__r.__words[0];
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v19->__words[2];
          v54 = v21->__r_.__value_.__r.__words[0] == v19;
          v19 = v21;
        }

        while (!v54);
      }

      v19 = v21;
    }

    while (v21 != &v81.__r_.__value_.__r.__words[1]);
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v81.__r_.__value_.__l.__size_);
  }

LABEL_46:
  v23 = *(this + 31);
  v24 = *(this + 32);
  if (v23 == v24)
  {
    if (*(this + 39) + *(this + 36))
    {
LABEL_118:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc", 201, "connections_.size() == pinged_connections_.size() + unpinged_connections_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v5, v6, v7, v8, v79);
LABEL_119:
      v55 = v9;
      while (1)
      {
        v56 = *v55;
        v57 = *v1;
        if (*v55 != *v1)
        {
          break;
        }

LABEL_122:
        if (++v1 == size)
        {
          goto LABEL_114;
        }
      }

      v58 = *v55;
      if (*(this + 124) != 1)
      {
        goto LABEL_135;
      }

      v59 = *((*(*v56 + 16))(*v55) + 208) == 3 && *((*(*v56 + 24))(v56) + 208) == 3;
      if (*((*(*v57 + 16))(v57) + 208) == 3)
      {
        v60 = *((*(*v57 + 24))(v57) + 208) == 3;
        v61 = !v59;
        if (!v59)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v60 = 0;
        v61 = !v59;
        if (!v59)
        {
          goto LABEL_133;
        }
      }

      if (!v60)
      {
        goto LABEL_120;
      }

LABEL_133:
      v62 = !v60;
      if (((v62 | v59) & 1) == 0)
      {
LABEL_166:
        v58 = v57;
        goto LABEL_120;
      }

      if ((v61 | v62))
      {
LABEL_135:
        v63 = *(v56 + 305);
        v64 = *(v57 + 305);
        if (v63 >= v64)
        {
          v58 = v57;
          if (v63 <= v64)
          {
            if ((*(this + 32) - *(this + 31)) >= 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

        goto LABEL_120;
      }

      v65 = (*(*v56 + 16))(v56);
      v66 = (v65 + 56);
      v67 = *(v65 + 79);
      if (v67 < 0)
      {
        if (*(v65 + 64) != 3)
        {
LABEL_150:
          v71 = 1;
          goto LABEL_151;
        }

        v66 = *v66;
      }

      else if (v67 != 3)
      {
        goto LABEL_150;
      }

      v68 = *v66;
      v69 = *(v66 + 2);
      v71 = v68 != webrtc::UDP_PROTOCOL_NAME || v69 != 112;
LABEL_151:
      v72 = (*(*v57 + 16))(v57);
      v73 = (v72 + 56);
      v74 = *(v72 + 79);
      if (v74 < 0)
      {
        if (*(v72 + 64) != 3)
        {
          goto LABEL_164;
        }

        v73 = *v73;
      }

      else if (v74 != 3)
      {
LABEL_164:
        LOBYTE(v78) = 0;
        if (!v71)
        {
          goto LABEL_120;
        }

LABEL_165:
        if (v71 || !v78)
        {
          goto LABEL_135;
        }

        goto LABEL_166;
      }

      v75 = *v73;
      v76 = *(v73 + 2);
      v78 = v75 == webrtc::UDP_PROTOCOL_NAME && v76 == 112;
      if (!v71 && !v78)
      {
LABEL_120:
        if (v58 == v57)
        {
          v55 = v1;
        }

        goto LABEL_122;
      }

      goto LABEL_165;
    }

LABEL_61:
    v35 = *(this + 37);
    v36 = this + 304;
    if (v35 == this + 304)
    {
LABEL_62:
      v37 = *(this + 34);
      v38 = this + 280;
      if (v37 != this + 280)
      {
        do
        {
          v39 = *(this + 38);
          v40 = (this + 304);
          if (*(this + 37) == v36)
          {
            goto LABEL_71;
          }

          v41 = *(this + 38);
          v42 = this + 304;
          if (v39)
          {
            do
            {
              v40 = v41;
              v41 = v41[1];
            }

            while (v41);
          }

          else
          {
            do
            {
              v40 = *(v42 + 2);
              v54 = *v40 == v42;
              v42 = v40;
            }

            while (v54);
          }

          v43 = *(v37 + 4);
          if (v40[4] < v43)
          {
LABEL_71:
            if (v39)
            {
              v44 = v40 + 1;
            }

            else
            {
              v44 = (this + 304);
            }

            if (!*v44)
            {
LABEL_82:
              operator new();
            }
          }

          else
          {
            if (!v39)
            {
              goto LABEL_82;
            }

            while (1)
            {
              while (1)
              {
                v45 = v39;
                v46 = v39[4];
                if (v46 <= v43)
                {
                  break;
                }

                v39 = *v45;
                if (!*v45)
                {
                  goto LABEL_82;
                }
              }

              if (v46 >= v43)
              {
                break;
              }

              v39 = v45[1];
              if (!v39)
              {
                goto LABEL_82;
              }
            }
          }

          v47 = *(v37 + 1);
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = *(v37 + 2);
              v54 = *v48 == v37;
              v37 = v48;
            }

            while (!v54);
          }

          v37 = v48;
        }

        while (v48 != v38);
      }

      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 35));
      *(this + 35) = 0;
      *(this + 36) = 0;
      *(this + 34) = v38;
    }

    else
    {
      while ((webrtc::BasicIceController::IsPingable(this, *(v35 + 4), v9) & 1) == 0)
      {
        v49 = *(v35 + 1);
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = *(v35 + 2);
            v54 = *v50 == v35;
            v35 = v50;
          }

          while (!v54);
        }

        v35 = v50;
        if (v50 == v36)
        {
          goto LABEL_62;
        }
      }
    }

    memset(&v81, 0, sizeof(v81));
    v51 = *(this + 37);
    if (v51 == v36)
    {
      return 0;
    }

    do
    {
      if (webrtc::BasicIceController::IsPingable(this, *(v51 + 4), v9))
      {
        std::vector<webrtc::Connection const*>::push_back[abi:sn200100](&v81, v51 + 4);
      }

      v52 = *(v51 + 1);
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = *(v51 + 2);
          v54 = *v53 == v51;
          v51 = v53;
        }

        while (!v54);
      }

      v51 = v53;
    }

    while (v53 != v36);
    size = v81.__r_.__value_.__l.__size_;
    v9 = v81.__r_.__value_.__r.__words[0];
    v1 = (v81.__r_.__value_.__r.__words[0] + 8);
    v54 = v81.__r_.__value_.__r.__words[0] == v81.__r_.__value_.__l.__size_ || v1 == v81.__r_.__value_.__l.__size_;
    v55 = v81.__r_.__value_.__r.__words[0];
    if (v54)
    {
LABEL_114:
      if (v55 == size)
      {
        v10 = 0;
        if (!v9)
        {
          return v10;
        }
      }

      else
      {
        v10 = *v55;
        if (!v9)
        {
          return v10;
        }
      }

      v34 = v9;
      goto LABEL_169;
    }

    goto LABEL_119;
  }

  v10 = 0;
  do
  {
    v25 = *v23;
    if (webrtc::BasicIceController::IsPingable(this, *v23, v9))
    {
      if (*(v25 + 582))
      {
        v26 = *(v25 + 306);
        if (v26 > *(v25 + 305) && (!v10 || v26 < *(v10 + 306)))
        {
          v10 = v25;
        }
      }
    }

    ++v23;
  }

  while (v23 != v24);
  if (!v10)
  {
    if (*(this + 39) + *(this + 36) != (*(this + 32) - *(this + 31)) >> 3)
    {
      goto LABEL_118;
    }

    goto LABEL_61;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::Connection::ToString(v10, &v81);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc");
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v81.__r_.__value_.__r.__words[0];
LABEL_169:
      operator delete(v34);
    }
  }

  return v10;
}

BOOL webrtc::BasicIceController::WritableConnectionPastPingInterval(webrtc::BasicIceController *this, const Connection *a2, uint64_t a3)
{
  if (*(a2 + 648) > 2)
  {
    v6 = (this + 128);
    if (!*(this + 132))
    {
      v6 = &webrtc::STRONG_AND_STABLE_WRITABLE_CONNECTION_PING_INTERVAL;
    }

    v7 = *v6;
    if (*v6 >= 900)
    {
      v8 = 900;
    }

    else
    {
      v8 = *v6;
    }

    v9 = *(this + 30);
    if (v9 && !*(v9 + 2328) && *(v9 + 2332) == 1 && *(v9 + 2333) == 1 && *(a2 + 605) >= 5 && ((v11 = *(a2 + 310), v11 == *(a2 + 311)) || a3 - *(v11 + 24) <= 2 * *(a2 + 604)))
    {
      return *(a2 + 305) + v7 <= a3;
    }

    else
    {
      return *(a2 + 305) + v8 <= a3;
    }
  }

  else
  {
    v3 = (this + 168);
    if (!*(this + 172))
    {
      v3 = &webrtc::WEAK_PING_INTERVAL;
    }

    v4 = *v3;
    if (*(this + 180) == 1)
    {
      v5 = *(this + 44);
    }

    else
    {
      v5 = -1;
    }

    if (v4 <= v5)
    {
      v4 = v5;
    }

    return *(a2 + 305) + v4 <= a3;
  }
}

uint64_t webrtc::BasicIceController::IsPingable(webrtc::BasicIceController *this, const Connection *a2, uint64_t a3)
{
  v6 = (*(*a2 + 24))(a2);
  v7 = *(v6 + 183);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 168);
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 + 207);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v6 + 192);
  }

  if (!v8 || *(a2 + 640) == 3 || (*(a2 + 2333) & 1) == 0 && *(a2 + 582))
  {
    return 0;
  }

  v9 = *(this + 29);
  if (*(v9 + 8) == 1 && *(v9 + 4) <= (-858993459 * ((*(a2 + 311) - *(a2 + 310)) >> 3)))
  {
    return 0;
  }

  v10 = *(this + 30);
  if (!v10 || *(v10 + 2328) || *(v10 + 2332) != 1 || *(v10 + 2333) != 1)
  {
    return 1;
  }

  v11 = *(this + 4);
  if (!v11)
  {
    v15 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::BasicIceController::GetBestConnectionByNetwork(v15);
  }

  if ((*(*v11 + 48))(v11) != 2 || *(this + 30) == a2 || *(a2 + 582) == 3)
  {
    v12 = *(a2 + 582);
    if (v12 != 3)
    {
      if (!v12)
      {

        return webrtc::BasicIceController::WritableConnectionPastPingInterval(this, a2, a3);
      }

      return 1;
    }

    return 0;
  }

  if (!*(a2 + 605))
  {
    return 1;
  }

  v14 = (this + 112);
  if (!*(this + 116))
  {
    v14 = &webrtc::BACKUP_CONNECTION_PING_INTERVAL;
  }

  return *(a2 + 308) + *v14 <= a3;
}

void *webrtc::BasicIceController::GetBestConnectionByNetwork(void *this, void *a2)
{
  this[1] = 0;
  v3 = this + 1;
  this[2] = 0;
  *this = this + 1;
  v4 = a2[30];
  if (v4)
  {
    this = (*(*v4 + 32))(a2[30]);
    v5 = *v3;
    if (!*v3)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = v5[4];
        if (this >= v7)
        {
          break;
        }

        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= this)
      {
        break;
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v6[5] = v4;
  }

  v8 = a2[31];
  v9 = a2[32];
  while (v8 != v9)
  {
    this = (*(**v8 + 32))(*v8);
    v10 = *v3;
    if (!*v3)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = v10[4];
        if (this >= v12)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_19;
        }
      }

      if (v12 >= this)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    ++v8;
  }

  return this;
}

void webrtc::BasicIceController::ShouldSwitchConnection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (!a3 || (v6 = *(a3 + 582), v6 >= 2) && (v6 != 2 || *(a1 + 136) != 1 || (v13 = a4, v14 = a2, v15 = (*(*a3 + 16))(a3), a4 = v13, *(v15 + 208) != 3) || (v16 = (*(*a3 + 24))(a3), LODWORD(a2) = v14, a4 = v13, *(v16 + 208) != 3) && (v17 = (*(*a3 + 24))(a3, v14), LODWORD(a2) = v14, a4 = v13, *(v17 + 208) != 2)) || (v7 = *(a1 + 240), v7 == a3))
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
LABEL_15:
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 32) = 0;
    return;
  }

  if (!v7)
  {
    v18 = *(a1 + 232);
    if ((*(v18 + 16) & 1) == 0 && (*(v18 + 24) & 1) == 0)
    {
      v41 = 0;
      *a4 = a3;
      *(a4 + 8) = 1;
      *(a4 + 16) = 0;
      goto LABEL_73;
    }

    v19 = a4;
    if (webrtc::g_clock)
    {
      v20 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v20 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v28 = v20 / 1000000;
    v29 = *(a1 + 232);
    if (a3[306] >= 1 && (*(v29 + 24) & 1) != 0)
    {
      v30 = 20;
    }

    else
    {
      if (*(v29 + 16) != 1)
      {
        v31 = 0;
        v32 = *(a1 + 320);
        if (v32)
        {
          v42 = *(a1 + 320);
        }

        else
        {
          v42 = v20 / 1000000;
        }

        if (v28 < v42)
        {
LABEL_59:
          if (v32)
          {
            if (*(v29 + 16) != 1)
            {
              goto LABEL_61;
            }
          }

          else
          {
            *(a1 + 320) = v28;
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc");
            }

            v29 = *(a1 + 232);
            if (*(v29 + 16) != 1)
            {
LABEL_61:
              if (*(v29 + 24) != 1)
              {
                goto LABEL_62;
              }

              goto LABEL_81;
            }
          }

          v57 = *(v29 + 12);
          if (v57 >= v31)
          {
            v31 = v31;
          }

          else
          {
            v31 = v57;
          }

          if (*(v29 + 24) != 1)
          {
LABEL_62:
            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
            {
LABEL_64:
              a4 = v19;
              *v19 = 0;
              *(v19 + 8) = 0;
              *(v19 + 16) = (v31 << 32) | 0xA;
              v41 = 1;
LABEL_73:
              *(a4 + 24) = v41;
              goto LABEL_15;
            }

LABEL_63:
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc");
            goto LABEL_64;
          }

LABEL_81:
          v58 = *(v29 + 20);
          if (v58 >= v31)
          {
            v31 = v31;
          }

          else
          {
            v31 = v58;
          }

          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_69:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc");
        }

        v41 = 0;
        *(a1 + 320) = 0;
        a4 = v19;
        *v19 = a3;
        *(v19 + 8) = 1;
        *(v19 + 16) = 0;
        goto LABEL_73;
      }

      v30 = 12;
    }

    v31 = *(v29 + v30);
    v32 = *(a1 + 320);
    if (v32)
    {
      v33 = *(a1 + 320);
    }

    else
    {
      v33 = v20 / 1000000;
    }

    if (v28 < v33 + v31)
    {
      goto LABEL_59;
    }

    goto LABEL_69;
  }

  v8 = a2;
  v9 = a4;
  if (webrtc::BasicIceController::CompareCandidatePairNetworks(a1, a3, v7) == -1 && (*(a3 + 2332) & 1) == 0)
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    goto LABEL_45;
  }

  v59 = 0;
  if (webrtc::g_clock)
  {
    v10 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v10 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  if (*(a1 + 152))
  {
    v21 = (a1 + 148);
  }

  else
  {
    v21 = &webrtc::RECEIVING_SWITCHING_DELAY;
  }

  v22 = webrtc::BasicIceController::CompareConnections(a1, *(a1 + 240), a3, v10 / 1000000 - *v21, 1, &v59, v11, v12);
  if (v59 == 1)
  {
    if (*(a1 + 152))
    {
      v24 = (a1 + 148);
    }

    else
    {
      v24 = &webrtc::RECEIVING_SWITCHING_DELAY;
    }

    v23 = *v24;
    v25 = v8;
    if (!*v24)
    {
      v25 = 0;
    }

    if (v23)
    {
      v26 = v8 & 0xFFFFFF00;
    }

    else
    {
      v26 = 0;
    }

    v27 = v23 != 0;
    if (!v23)
    {
      v23 = 0;
    }

    if (v22 < 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (v22 < 0)
    {
LABEL_43:
      v27 = 0;
      *v9 = a3;
      *(v9 + 8) = 1;
      *(v9 + 16) = 0;
      goto LABEL_44;
    }
  }

  if (!v22 && *(a3 + 604) <= *(*(a1 + 240) + 2416) - 10)
  {
    goto LABEL_43;
  }

  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = v26 | v25;
  *(v9 + 20) = v23;
LABEL_44:
  *(v9 + 24) = v27;
LABEL_45:
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
}

uint64_t webrtc::BasicIceController::CompareCandidatePairNetworks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 216);
  if (*((*(*a2 + 32))(a2) + 272) == v6)
  {
    v7 = BYTE4(v6) & 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*a3 + 32))(a3);
  v9 = v7 ^ 1;
  if (*(v8 + 272) == v6)
  {
    v9 = 1;
  }

  v10 = BYTE4(v6) & 1 ^ v7;
  if (*(v8 + 272) != v6)
  {
    v10 = 0;
  }

  v11 = v10 << 31 >> 31;
  if (v9)
  {
    result = v11;
  }

  else
  {
    result = 1;
  }

  if (!result)
  {
    v13 = *((*(*a2 + 32))(a2) + 272);
    v14 = *((*(*a3 + 32))(a3) + 272);
    v15 = *(a1 + 224);
    if (v15 > 2)
    {
      if (v15 == 4)
      {
LABEL_29:
        if (v13 == 8 && v14 != 8)
        {
          return 0xFFFFFFFFLL;
        }

        if (v13 == 8 || v14 != 8)
        {
          goto LABEL_38;
        }

        return 1;
      }

      if (v15 != 3)
      {
LABEL_38:
        v20 = *(a2 + 1098) + (*(**(a2 + 256) + 312))(*(a2 + 256));
        v21 = *(a3 + 1098) + (*(**(a3 + 256) + 312))();
        v22 = v20 >= v21;
        if (v20 <= v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = -1;
        }

        if (v22)
        {
          return v23;
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v15 != 1)
    {
      if (v15 != 2)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v13 != 8 || v14 == 8)
    {
      if (v13 == 8 || v14 != 8)
      {
        goto LABEL_38;
      }

      return 0xFFFFFFFFLL;
    }

    return 1;
  }

  return result;
}

uint64_t webrtc::BasicIceController::CompareConnections(uint64_t a1, const Connection *a2, const Connection *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc", 727, "a != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v32);
    goto LABEL_58;
  }

  if (!a3)
  {
LABEL_58:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc", 728, "b != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v32);
    goto LABEL_59;
  }

  v10 = *(a2 + 582);
  if (!v10)
  {
    v15 = 1;
    v16 = *(a3 + 582);
    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  if (v10 != 2 || *(a1 + 136) != 1)
  {
    v15 = 0;
    v16 = *(a3 + 582);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_20:
    LOBYTE(v21) = 1;
    goto LABEL_21;
  }

  v11 = a5;
  v12 = a4;
  v13 = a6;
  v14 = a1;
  if (*((*(*a2 + 16))(a2) + 208) == 3)
  {
    if (*((*(*a2 + 24))(a2) + 208) == 3)
    {
      v15 = 1;
      a1 = v14;
      a6 = v13;
      a4 = v12;
      LOBYTE(a5) = v11;
      v16 = *(a3 + 582);
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = *((*(*a2 + 24))(a2) + 208) == 2;
      a1 = v14;
      a6 = v13;
      a4 = v12;
      LOBYTE(a5) = v11;
      v16 = *(a3 + 582);
      if (!v16)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v15 = 0;
    a1 = v14;
    a6 = v13;
    a4 = v12;
    LOBYTE(a5) = v11;
    v16 = *(a3 + 582);
    if (!v16)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  if (v16 == 2 && *(a1 + 136) == 1)
  {
    v17 = a5;
    v18 = a4;
    v19 = a6;
    v20 = a1;
    if (*((*(*a3 + 16))(a3) + 208) == 3)
    {
      if (*((*(*a3 + 24))(a3) + 208) == 3)
      {
        LOBYTE(v21) = 1;
        a1 = v20;
        a6 = v19;
        a4 = v18;
        LOBYTE(a5) = v17;
        goto LABEL_21;
      }

      v21 = *((*(*a3 + 24))(a3) + 208) == 2;
      a1 = v20;
      a6 = v19;
      a4 = v18;
      LOBYTE(a5) = v17;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 0;
      a1 = v20;
      a6 = v19;
      a4 = v18;
      LOBYTE(a5) = v17;
      if (!v15)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v21 = 0;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  if (!v21)
  {
    return 1;
  }

LABEL_21:
  if (!v15 && v21)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = *(a2 + 582);
  v23 = *(a3 + 582);
  if (v22 < v23)
  {
    return 1;
  }

  if (v23 < v22)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 2332) == 1)
  {
    if ((*(a3 + 2332) & 1) == 0)
    {
      return 1;
    }
  }

  else if (*(a3 + 2332))
  {
    if ((a5 & 1) == 0 || *(a2 + 309) <= a4 && *(a3 + 309) <= a4)
    {
      return 0xFFFFFFFFLL;
    }

    *a6 = 1;
  }

  if (v23 | v22)
  {
    goto LABEL_39;
  }

  if (*(a2 + 2333) != 1)
  {
    if ((*(a3 + 2333) & 1) == 0)
    {
      goto LABEL_39;
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(a3 + 2333) & 1) == 0)
  {
    return 1;
  }

LABEL_39:
  v25 = a1;
  v26 = *(a1 + 64);
  if (!v26)
  {
LABEL_59:
    v31 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::BasicIceController::SortAndSwitchConnection(v31);
  }

  if ((*(*v26 + 48))(v26) == 1)
  {
    v27 = *(a2 + 587);
    v28 = *(a3 + 587);
    if (v27 > v28)
    {
      return 1;
    }

    if (v27 < v28)
    {
      return 0xFFFFFFFFLL;
    }

    v29 = *(a2 + 307);
    v30 = *(a3 + 307);
    if (v29 > v30)
    {
      return 1;
    }

    if (v29 < v30)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return webrtc::BasicIceController::CompareConnectionCandidates(v25, a2, a3);
}

uint64_t webrtc::BasicIceController::SortAndSwitchConnection(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[31];
  v12 = a1[32];
  __p.__r_.__value_.__r.__words[0] = a1;
  if (v12 - v11 < 129)
  {
    v16 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(v11, v12, &__p, v12 - v11, 0, v16, a7, a8);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = MEMORY[0x277D826F0];
    v14 = v12 - v11;
    while (1)
    {
      v15 = operator new(8 * v14, v13);
      if (v15)
      {
        break;
      }

      v16 = v14 >> 1;
      v17 = v14 > 1;
      v14 >>= 1;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v18 = v15;
    std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(v11, v12, &__p, v12 - v11, v15, v14, a7, a8);
    operator delete(v18);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      goto LABEL_11;
    }
  }

  webrtc::IceSwitchReasonToString(a2, &__p);
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v26 = a1[31];
    v27 = a1[32];
    if (v27 != v26)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_11:
  v26 = a1[31];
  v27 = a1[32];
  if (v27 != v26)
  {
LABEL_12:
    v28 = 0;
    do
    {
      result = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>();
      if ((result & 1) == 0)
      {
        v30 = a1[31];
        if (v28 >= (a1[32] - v30) >> 3)
        {
          __break(1u);
          return result;
        }

        v8 = v8 & 0xFFFFFFFF00000000 | 0x11F8;
        webrtc::Connection::ToString(*(v30 + 8 * v28), &__p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_ice_controller.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ++v28;
      v26 = a1[31];
      v27 = a1[32];
    }

    while (v28 < v27 - v26);
  }

LABEL_19:
  if (v26 == v27)
  {
    v38 = 0;
  }

  else
  {
    v38 = *v26;
  }

  return (*(*a1 + 104))(a1, a2, v38);
}

uint64_t webrtc::BasicIceController::CompareConnectionCandidates(webrtc::BasicIceController *this, const Connection *a2, const Connection *a3)
{
  result = webrtc::BasicIceController::CompareCandidatePairNetworks(this, a2, a3);
  if (result)
  {
    return result;
  }

  v7 = (*(*a2 + 48))(a2);
  if (v7 > (*(*a3 + 48))(a3))
  {
    return 1;
  }

  v8 = (*(*a2 + 48))(a2);
  if (v8 < (*(*a3 + 48))(a3))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *((*(*a2 + 24))(a2) + 248);
  v10 = (*(*a2 + 40))(a2);
  v11 = *((*(*a3 + 24))(a3) + 248);
  v12 = v11 + (*(*a3 + 40))(a3);
  result = (v10 + v9 - v12);
  if (v10 + v9 == v12)
  {
    v18 = a2;
    v13 = *(this + 12);
    if (!v13 || (v14 = (*(*v13 + 48))(v13, &v18), v18 = a3, (v15 = *(this + 12)) == 0))
    {
      v17 = std::__throw_bad_function_call[abi:sn200100]();
      return webrtc::BasicIceController::PruneConnections(v17);
    }

    v16 = (*(*v15 + 48))(v15, &v18) ^ 1;
    if ((v14 | v16))
    {
      return ((v14 & v16) << 31 >> 31);
    }

    return 1;
  }

  return result;
}

void webrtc::BasicIceController::PruneConnections(webrtc::BasicIceController *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  webrtc::BasicIceController::GetBestConnectionByNetwork(&v21, this);
  v3 = *(this + 31);
  v4 = *(this + 32);
  while (v3 != v4)
  {
    v5 = *v3;
    v20 = v5;
    v6 = *(this + 30);
    v7 = (*(*v5 + 32))(v5);
    webrtc::Network::GetBestIP(v7, v16);
    if (v17 == 2)
    {
      if (v18)
      {
        goto LABEL_17;
      }
    }

    else if (v17 != 30 || ((v24 = *MEMORY[0x277D85EE8], v18 == v24) ? (v8 = v19 == *(&v24 + 1)) : (v8 = 0), !v8 && ((v23 = webrtc::kV4MappedPrefix, v18 == webrtc::kV4MappedPrefix) ? (v9 = v19 == *(&webrtc::kV4MappedPrefix + 1)) : (v9 = 0), !v9)))
    {
LABEL_17:
      v10 = (*(*v5 + 32))(v5);
      v11 = v22;
      if (!v22)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v12 = v11;
          v13 = v11[4];
          if (v10 >= v13)
          {
            break;
          }

          v11 = *v12;
          if (!*v12)
          {
            goto LABEL_23;
          }
        }

        if (v13 >= v10)
        {
          break;
        }

        v11 = v12[1];
        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v6 = v12[5];
    }

    if (v6)
    {
      v14 = v5 == v6;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && !*(v6 + 2328) && *(v6 + 2332) == 1 && *(v6 + 2333) == 1 && (webrtc::BasicIceController::CompareConnectionCandidates(this, v6, v5) & 0x80000000) == 0)
    {
      std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a2, &v20);
    }

    ++v3;
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v22);
}

uint64_t webrtc::BasicIceController::GetUseCandidateAttr(const Connection **a1, Connection *a2, int a3, int a4)
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      if (a4 != 1)
      {
        return 1;
      }

      v4 = *(*a1 + 10);

      return v4();
    }

    return 0;
  }

  v6 = a1[30];
  if (a4 == 1)
  {
    if (v6 == a2)
    {
      return *(a2 + 582) == 0;
    }

    return 0;
  }

  if (v6 && !*(v6 + 582))
  {
    v8 = a2;
    v9 = webrtc::BasicIceController::CompareConnectionCandidates(a1, a1[30], a2);
    a2 = v8;
    v7 = v9 >> 31;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return (v6 == a2) | v7 & 1;
}

uint64_t webrtc::BasicIceController::GetConnections(webrtc::BasicIceController *this)
{
  if (*(this + 32) == *(this + 31))
  {
    return 0;
  }

  else
  {
    return *(this + 31);
  }
}

uint64_t webrtc::BasicIceController::connections(webrtc::BasicIceController *this)
{
  if (*(this + 32) == *(this + 31))
  {
    return 0;
  }

  else
  {
    return *(this + 31);
  }
}

__n128 std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(const Connection **a1, const Connection **a2, uint64_t *a3, unint64_t a4, const Connection **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 2)
  {
    return result;
  }

  v10 = a1;
  if (a4 != 2)
  {
    if (a4 <= 128)
    {
      if (a1 == a2)
      {
        return result;
      }

      v15 = a1 + 1;
      if (a1 + 1 == a2)
      {
        return result;
      }

      v16 = 0;
      v17 = a1;
LABEL_13:
      v18 = v17;
      v17 = v15;
      v19 = *v15;
      v20 = *v18;
      v21 = webrtc::BasicIceController::CompareConnections(*a3, *v15, *v18, 0, 0, 0, a7, a8);
      if (v21)
      {
        if (v21 <= 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v19 + 604) >= *(v20 + 604))
      {
        goto LABEL_12;
      }

      v22 = *v17;
      *v17 = *v18;
      if (v18 == v10)
      {
LABEL_10:
        v18 = v10;
        goto LABEL_11;
      }

      v23 = v16;
      while (1)
      {
        v24 = *(v10 + v23 - 8);
        v25 = webrtc::BasicIceController::CompareConnections(*a3, v22, v24, 0, 0, 0, a7, a8);
        if (v25)
        {
          if (v25 <= 0)
          {
            goto LABEL_11;
          }
        }

        else if (*(v22 + 604) >= *(v24 + 604))
        {
          v18 = (v10 + v23);
LABEL_11:
          *v18 = v22;
LABEL_12:
          v15 = v17 + 1;
          v16 += 8;
          if (v17 + 1 == a2)
          {
            return result;
          }

          goto LABEL_13;
        }

        --v18;
        *(v10 + v23) = *(v10 + v23 - 8);
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_10;
        }
      }
    }

    v26 = a5;
    v27 = a4 >> 1;
    v28 = &a1[a4 >> 1];
    v29 = a4 - (a4 >> 1);
    if (a4 > a6)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(a1, v28, a3, a4 >> 1, a5, a6);
      std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(v28, a2, a3, v29, v26, a6);

      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(v10, v28, a2, a3, v27, v29, v26, a6).n128_u64[0];
      return result;
    }

    std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(a1, v28, a3, a4 >> 1, a5, a6, a7, a8);
    v33 = &v26[v27];
    std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(v28, a2, a3, v29, v33, v34, v35, v36);
    v39 = &v26[a4];
    v40 = v33;
    v41 = v10;
    while (1)
    {
      if (v40 == v39)
      {
        if (v26 == v33)
        {
          return result;
        }

        v50 = v33 - v26 - 8;
        if (v50 >= 0x38)
        {
          if ((v10 - v26) >= 0x20)
          {
            v52 = (v41 + 2);
            v53 = (v50 >> 3) + 1;
            v54 = v53 & 0x3FFFFFFFFFFFFFFCLL;
            v51 = &v26[v54];
            v41 = (v41 + v54 * 8);
            v55 = (v26 + 2);
            v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v55[-1];
              v57 = *v55;
              v52[-1] = result;
              *v52 = v57;
              v52 += 2;
              v55 += 2;
              v56 -= 4;
            }

            while (v56);
            if (v53 == (v53 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v51 = v26;
          }
        }

        else
        {
          v51 = v26;
        }

        do
        {
          v58 = *v51++;
          *v41++ = v58;
        }

        while (v51 != v33);
        return result;
      }

      v43 = *v40;
      v44 = *v26;
      v45 = webrtc::BasicIceController::CompareConnections(*a3, *v40, *v26, 0, 0, 0, v37, v38);
      if (v45)
      {
        if (v45 <= 0)
        {
          goto LABEL_33;
        }

LABEL_39:
        v46 = *v40++;
        *v41++ = v46;
        ++v10;
        if (v26 == v33)
        {
LABEL_40:
          if (v40 == v39)
          {
            return result;
          }

          v47 = v39 - v40 - 8;
          if (v47 <= 0x47 || (v10 - v40) < 0x20)
          {
            v48 = v40;
            do
            {
LABEL_44:
              v49 = *v48++;
              *v41++ = v49;
            }

            while (v48 != v39);
            return result;
          }

          v59 = (v41 + 2);
          v60 = (v47 >> 3) + 1;
          v61 = v60 & 0x3FFFFFFFFFFFFFFCLL;
          v48 = &v40[v61];
          v41 = (v41 + v61 * 8);
          v62 = (v40 + 2);
          v63 = v60 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            result = v62[-1];
            v64 = *v62;
            v59[-1] = result;
            *v59 = v64;
            v59 += 2;
            v62 += 2;
            v63 -= 4;
          }

          while (v63);
          if (v60 != (v60 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_44;
          }

          return result;
        }
      }

      else
      {
        if (*(v43 + 604) < *(v44 + 604))
        {
          goto LABEL_39;
        }

LABEL_33:
        v42 = *v26++;
        *v41++ = v42;
        ++v10;
        if (v26 == v33)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v11 = *(a2 - 1);
  v12 = *a1;
  v13 = webrtc::BasicIceController::CompareConnections(*a3, v11, *a1, 0, 0, 0, a7, a8);
  if (v13)
  {
    if (v13 <= 0)
    {
      return result;
    }
  }

  else if (*(v11 + 604) >= *(v12 + 604))
  {
    return result;
  }

  v31 = *v10;
  *v10 = *(a2 - 1);
  *(a2 - 1) = v31;
  return result;
}

const Connection **std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(const Connection **result, const Connection **a2, uint64_t *a3, uint64_t a4, const Connection **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return result;
  }

  v8 = a5;
  v10 = a2;
  v11 = result;
  if (a4 == 2)
  {
    v13 = a2 - 1;
    v12 = *(a2 - 1);
    v14 = *result;
    result = webrtc::BasicIceController::CompareConnections(*a3, v12, *result, 0, 0, 0, a7, a8);
    if (result)
    {
      if (result > 0)
      {
LABEL_8:
        if (!v8)
        {
          goto LABEL_60;
        }

        v15 = v13;
LABEL_50:
        *v8++ = *v15;
        goto LABEL_51;
      }
    }

    else if (*(v12 + 604) < *(v14 + 604))
    {
      goto LABEL_8;
    }

    if (!v8)
    {
      goto LABEL_60;
    }

    v15 = v11;
    v11 = v13;
    goto LABEL_50;
  }

  if (a4 == 1)
  {
    if (!a5)
    {
      goto LABEL_60;
    }

LABEL_51:
    *v8 = *v11;
    return result;
  }

  if (a4 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    if (a5)
    {
      v16 = result + 1;
      *a5 = *result;
      if (result + 1 == a2)
      {
        return result;
      }

      v17 = 0;
      v18 = a5;
LABEL_18:
      v21 = v18;
      v23 = *v18++;
      v22 = v23;
      v24 = *v16;
      result = webrtc::BasicIceController::CompareConnections(*a3, *v16, v23, 0, 0, 0, a7, a8);
      if (result)
      {
        v19 = v18;
        if (result <= 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v18;
        if (*(v24 + 604) >= *(v22 + 604))
        {
          goto LABEL_17;
        }
      }

      v21[1] = *v21;
      v19 = v8;
      if (v21 == v8)
      {
        goto LABEL_17;
      }

      v25 = v17;
      while (1)
      {
        v26 = *v16;
        v27 = *(v8 + v25 - 8);
        result = webrtc::BasicIceController::CompareConnections(*a3, *v16, v27, 0, 0, 0, a7, a8);
        if (result)
        {
          if (result <= 0)
          {
            v19 = v21;
            goto LABEL_16;
          }
        }

        else if (*(v26 + 604) >= *(v27 + 604))
        {
          v19 = (v8 + v25);
LABEL_16:
          v10 = a2;
LABEL_17:
          v20 = *v16++;
          *v19 = v20;
          v17 += 8;
          if (v16 == v10)
          {
            return result;
          }

          goto LABEL_18;
        }

        --v21;
        *(v8 + v25) = *(v8 + v25 - 8);
        v25 -= 8;
        if (!v25)
        {
          v19 = v8;
          goto LABEL_16;
        }
      }
    }

LABEL_60:
    __break(1u);
    return result;
  }

  v28 = a4 >> 1;
  v29 = a4 >> 1;
  v30 = &result[v29];
  std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(result, &result[v29], a3, v28, a5, v28);
  result = std::__stable_sort<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(&v11[v29], v10, a3, a4 - v28, &v8[v29], a4 - v28);
  v34 = -v8;
  v35 = &v11[v29];
  do
  {
    while (1)
    {
      if (v35 == v10)
      {
        while (v11 != v30)
        {
          if (!v8)
          {
            goto LABEL_60;
          }

          v42 = *v11++;
          *v8++ = v42;
        }

        return result;
      }

      v37 = *v35;
      v38 = *v11;
      result = webrtc::BasicIceController::CompareConnections(*a3, *v35, *v11, 0, 0, 0, v32, v33);
      if (result)
      {
        break;
      }

      if (*(v37 + 604) >= *(v38 + 604))
      {
        goto LABEL_38;
      }

LABEL_31:
      if (!v8)
      {
        goto LABEL_60;
      }

      v36 = *v35++;
      *v8++ = v36;
      v34 -= 8;
      if (v11 == v30)
      {
        goto LABEL_40;
      }
    }

    if (result > 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    if (!v8)
    {
      goto LABEL_60;
    }

    v39 = *v11++;
    *v8++ = v39;
    v34 -= 8;
  }

  while (v11 != v30);
LABEL_40:
  if (v35 == v10)
  {
    return result;
  }

  v40 = v10 - v35 - 8;
  if (v40 < 0x48)
  {
    v41 = v35;
    goto LABEL_58;
  }

  if ((-v35 - v34) < 0x20)
  {
    v41 = v35;
    do
    {
LABEL_58:
      v49 = *v41++;
      *v8++ = v49;
    }

    while (v41 != v10);
    return result;
  }

  v43 = v8 + 2;
  v44 = (v40 >> 3) + 1;
  v45 = v44 & 0x3FFFFFFFFFFFFFFCLL;
  v8 = (v8 + v45 * 8);
  v41 = &v35[v45];
  v46 = (v35 + 2);
  v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v48 = *v46;
    *(v43 - 1) = *(v46 - 1);
    *v43 = v48;
    v46 += 2;
    v43 += 2;
    v47 -= 4;
  }

  while (v47);
  if (v44 != (v44 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(const Connection **a1, const Connection **a2, const Connection **a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v120 = a6;
  if (!a6)
  {
    return result;
  }

  v8 = a7;
  while (2)
  {
    while (2)
    {
      if (a5 <= a8 || v120 <= a8)
      {
        if (a5 > v120)
        {
          if (a2 == a3)
          {
            return result;
          }

          v70 = a3 - a2 - 8;
          if (v70 < 0x18)
          {
            v71 = v8;
            v72 = a2;
          }

          else
          {
            v71 = v8;
            v72 = a2;
            if ((v8 - a2) > 0x1F)
            {
              v73 = (v70 >> 3) + 1;
              v74 = v73 & 0x3FFFFFFFFFFFFFFCLL;
              v71 = &v8[v74 * 8];
              v72 = &a2[v74];
              v75 = (a2 + 2);
              v76 = (v8 + 16);
              v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                result = v75[-1];
                v78 = *v75;
                v76[-1] = result;
                *v76 = v78;
                v75 += 2;
                v76 += 2;
                v77 -= 4;
              }

              while (v77);
              if (v73 == (v73 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_93;
              }
            }
          }

          do
          {
            v95 = *v72++;
            *v71 = v95;
            v71 += 8;
          }

          while (v72 != a3);
LABEL_93:
          for (i = a3; ; --i)
          {
            if (a2 == a1)
            {
              if (v71 != v8)
              {
                v103 = v71 - v8 - 8;
                if (v103 < 0x48 || (v71 - i) < 0x20)
                {
                  v104 = v71;
                  goto LABEL_106;
                }

                v107 = (a3 - 2);
                v108 = (v103 >> 3) + 1;
                v109 = 8 * (v108 & 0x3FFFFFFFFFFFFFFCLL);
                v104 = &v71[-v109];
                a3 = (a3 - v109);
                v110 = (v71 - 16);
                v111 = v108 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  result = *v110;
                  v107[-1] = v110[-1];
                  *v107 = result;
                  v107 -= 2;
                  v110 -= 2;
                  v111 -= 4;
                }

                while (v111);
                if (v108 != (v108 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_106:
                  v105 = a3 - 1;
                  do
                  {
                    v106 = *(v104 - 1);
                    v104 -= 8;
                    *v105-- = v106;
                  }

                  while (v104 != v8);
                }
              }

              return result;
            }

            v98 = v8;
            v99 = a3;
            v122 = a2;
            v97 = a2 - 1;
            v100 = *(a2 - 1);
            v101 = *(v71 - 1);
            v102 = webrtc::BasicIceController::CompareConnections(*a4, v101, v100, 0, 0, 0, a7, a8);
            if (v102)
            {
              a2 = v97;
              if (v102 > 0)
              {
                goto LABEL_95;
              }
            }

            else
            {
              a2 = v97;
              if (*(v101 + 604) < *(v100 + 604))
              {
                goto LABEL_95;
              }
            }

            v97 = (v71 - 8);
            a2 = v122;
            v71 -= 8;
LABEL_95:
            *(v99 - 1) = *v97;
            a3 = v99 - 1;
            v8 = v98;
            if (v71 == v98)
            {
              return result;
            }
          }
        }

        if (a2 == a1)
        {
          return result;
        }

        v79 = a2 - a1 - 8;
        v80 = v8;
        v81 = a1;
        if (v79 < 0x18)
        {
          goto LABEL_115;
        }

        v80 = v8;
        v81 = a1;
        if ((v8 - a1) <= 0x1F)
        {
          goto LABEL_115;
        }

        v82 = (v79 >> 3) + 1;
        v83 = v82 & 0x3FFFFFFFFFFFFFFCLL;
        v80 = &v8[v83 * 8];
        v81 = &a1[v83];
        v84 = (a1 + 2);
        v85 = v8 + 16;
        v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v87 = *v84;
          *(v85 - 1) = *(v84 - 1);
          *v85 = v87;
          v84 += 2;
          v85 += 2;
          v86 -= 4;
        }

        while (v86);
        if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_115:
          do
          {
            v88 = *v81++;
            *v80 = v88;
            v80 += 8;
          }

          while (v81 != a2);
        }

        while (1)
        {
          if (a2 == a3)
          {

            memmove(a1, v8, v80 - v8);
            return result;
          }

          v90 = a2;
          v91 = *a2;
          v92 = *v8;
          v93 = webrtc::BasicIceController::CompareConnections(*a4, *a2, *v8, 0, 0, 0, a7, a8);
          if (v93)
          {
            if (v93 <= 0)
            {
              goto LABEL_79;
            }

LABEL_85:
            a2 = v90 + 1;
            *a1++ = *v90;
            if (v8 == v80)
            {
              return result;
            }
          }

          else
          {
            if (*(v91 + 604) < *(v92 + 604))
            {
              goto LABEL_85;
            }

LABEL_79:
            v89 = *v8;
            v8 += 8;
            *a1++ = v89;
            a2 = v90;
            if (v8 == v80)
            {
              return result;
            }
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v15 = a2;
        v16 = *a2;
        v17 = a1[v12 / 8];
        v18 = webrtc::BasicIceController::CompareConnections(*a4, *a2, v17, 0, 0, 0, a7, a8);
        if (!v18)
        {
          if (*(v16 + 604) < *(v17 + 604))
          {
            break;
          }

          goto LABEL_8;
        }

        if (v18 > 0)
        {
          break;
        }

LABEL_8:
        v12 += 8;
        v14 = __CFADD__(v13++, 1);
        a2 = v15;
        if (v14)
        {
          return result;
        }
      }

      v20 = -v13;
      v21 = v120;
      v22 = v15;
      v123 = a4;
      v117 = &a1[v12 / 8];
      v118 = a1;
      if (-v13 >= v120)
      {
        if (v13 == -1)
        {
          v94 = a1[v12 / 8];
          a1[v12 / 8] = *v15;
          *v15 = v94;
          return result;
        }

        v112 = v20 / 2;
        v24 = (&a1[v20 / 2] + v12);
        v23 = v15;
        if (v15 == a3)
        {
LABEL_35:
          v40 = v23 - v22;
          v39 = v112;
          v41 = v23;
          v42 = v22 - v24;
          if (v22 == v24)
          {
            goto LABEL_58;
          }

          goto LABEL_36;
        }

        v114 = a3;
        v116 = v8;
        v121 = *v123;
        v32 = a3 - v15;
        v23 = v15;
        while (1)
        {
          v33 = v32 >> 1;
          v34 = &v23[v32 >> 1];
          v35 = *v34;
          v36 = v24;
          v37 = *v24;
          v38 = webrtc::BasicIceController::CompareConnections(v121, *v34, *v24, 0, 0, 0, a7, a8);
          if (v38)
          {
            if (v38 <= 0)
            {
              goto LABEL_25;
            }
          }

          else if (*(v35 + 604) >= *(v37 + 604))
          {
            goto LABEL_25;
          }

          v23 = v34 + 1;
          v33 = v32 + ~v33;
LABEL_25:
          v32 = v33;
          v24 = v36;
          if (!v33)
          {
            a3 = v114;
            v8 = v116;
            v22 = v15;
            v21 = v120;
            goto LABEL_35;
          }
        }
      }

      v23 = &v15[v120 / 2];
      v24 = v15;
      if (v15 - a1 == v12)
      {
        goto LABEL_32;
      }

      v113 = a3;
      v115 = v8;
      v25 = (v15 - a1 - v12) >> 3;
      v24 = &a1[v12 / 8];
      while (2)
      {
        v26 = v25 >> 1;
        v27 = v24;
        v28 = &v24[v25 >> 1];
        v29 = *v23;
        v30 = *v28;
        v31 = webrtc::BasicIceController::CompareConnections(*v123, *v23, *v28, 0, 0, 0, a7, a8);
        if (v31)
        {
          v24 = v27;
          if (v31 <= 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v24 = v27;
          if (*(v29 + 604) >= *(v30 + 604))
          {
LABEL_14:
            v24 = v28 + 1;
            v26 = v25 + ~v26;
          }
        }

        v25 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }

      a3 = v113;
      v8 = v115;
      v22 = v15;
      v21 = v120;
LABEL_32:
      v39 = (v24 - v118 - v12) >> 3;
      v40 = v120 / 2;
      v41 = v23;
      v42 = v22 - v24;
      if (v22 != v24)
      {
LABEL_36:
        v41 = v24;
        if (v22 != v23)
        {
          if (v24 + 1 == v22)
          {
            v43 = *v24;
            v44 = v23 - v22;
            v45 = v24;
            memmove(v24, v22, v23 - v22);
            v24 = v45;
            v41 = (v45 + v44);
            *v41 = v43;
            v21 = v120;
          }

          else if (v22 + 1 == v23)
          {
            v46 = *(v23 - 1);
            v41 = v24 + 1;
            if (v23 - 1 != v24)
            {
              v47 = v24;
              memmove(v24 + 1, v24, (v23 - 1) - v24);
              v24 = v47;
            }

            *v24 = v46;
            v21 = v120;
          }

          else
          {
            v48 = v42 >> 3;
            v49 = v23 - v22;
            if (v42 >> 3 == v49)
            {
              v50 = v24 + 1;
              v51 = v22 + 1;
              do
              {
                v52 = *(v50 - 1);
                *(v50 - 1) = *(v51 - 1);
                *(v51 - 1) = v52;
                if (v50 == v22)
                {
                  break;
                }

                ++v50;
              }

              while (v51++ != v23);
              v41 = v22;
            }

            else
            {
              v54 = v42 >> 3;
              do
              {
                v55 = v54;
                v54 = v49;
                v49 = v55 % v49;
              }

              while (v49);
              v56 = &v24[v54];
              do
              {
                v58 = *--v56;
                v57 = v58;
                v59 = (v56 + v42);
                v60 = v56;
                do
                {
                  v61 = v59;
                  *v60 = *v59;
                  v62 = v23 - v59;
                  v63 = __OFSUB__(v48, v62);
                  v65 = v48 - v62;
                  v64 = (v65 < 0) ^ v63;
                  v59 = &v24[v65];
                  if (v64)
                  {
                    v59 = &v61[v48];
                  }

                  v60 = v61;
                }

                while (v59 != v56);
                *v61 = v57;
              }

              while (v56 != v24);
              v41 = (v24 + v23 - v22);
            }
          }
        }
      }

LABEL_58:
      v66 = v21 - v40;
      if (v39 + v40 < v21 - (v39 + v40) - v13)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(&v118[v12 / 8], v24, v41, v123, v39, v40, v8, a8);
        a5 = -(v39 + v13);
        a1 = v41;
        a2 = v23;
        a4 = v123;
        v120 = v66;
        if (!v66)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v67 = v23;
    a4 = v123;
    v68 = v24;
    std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::BasicIceController::SortAndSwitchConnection(webrtc::IceSwitchReason)::$_0 &,std::__wrap_iter<webrtc::Connection const**>>(v41, v67, a3, v123, -(v39 + v13), v21 - v40, v8, a8);
    a2 = v68;
    v69 = v40;
    a5 = v39;
    a3 = v41;
    a1 = v117;
    v120 = v69;
    if (v69)
    {
      continue;
    }

    return result;
  }
}

void *webrtc::BasicPacketSocketFactory::BasicPacketSocketFactory(void *result, uint64_t a2)
{
  *result = &unk_28828FB18;
  result[1] = a2;
  return result;
}

uint64_t webrtc::BasicPacketSocketFactory::CreateUdpSocket(webrtc::BasicPacketSocketFactory *this, const webrtc::SocketAddress *a2, unsigned int a3, unsigned int a4)
{
  result = (*(**(this + 1) + 16))(*(this + 1), *(a2 + 8), 2);
  if (result)
  {
    v8 = result;
    if (a4 | a3)
    {
      if (a3 <= a4)
      {
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          v20 = 0;
          v21 = &unk_28828CE50;
          v9 = *(a2 + 8);
          v26 = 0;
          v22 = v9;
          v23 = *(a2 + 36);
          v25 = 0;
          v24 = a3;
          v10 = (*(*v8 + 32))(v8, __p);
          if (SHIBYTE(v20) < 0)
          {
            v11 = v10;
            operator delete(__p[0]);
            v10 = v11;
          }

          if (a3 >= a4)
          {
            break;
          }

          ++a3;
        }

        while (v10 < 0);
        if ((v10 & 0x80000000) == 0)
        {
LABEL_9:
          operator new();
        }
      }
    }

    else if (((*(*result + 32))(result, a2) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      (*(*v8 + 112))(v8);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
    }

    (*(*v8 + 8))(v8);
    return 0;
  }

  return result;
}

uint64_t webrtc::BasicPacketSocketFactory::CreateServerTcpSocket(webrtc::BasicPacketSocketFactory *this, const webrtc::SocketAddress *a2, unsigned int a3, unsigned int a4, char a5)
{
  if ((a5 & 2) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (a5)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_14:
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
    }

    return 0;
  }

  result = (*(**(this + 1) + 16))(*(this + 1), *(a2 + 8), 1);
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (a4 | a3)
  {
    if (a3 > a4)
    {
LABEL_21:
      if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        (*(*v10 + 112))(v10);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
      }

      (*(*v10 + 8))(v10);
      return 0;
    }

    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      v35 = &unk_28828CE50;
      v11 = *(a2 + 8);
      v40 = 0;
      v36 = v11;
      v37 = *(a2 + 36);
      v39 = 0;
      v38 = a3;
      v12 = (*(*v10 + 32))(v10, __p);
      if (SHIBYTE(v34) < 0)
      {
        v17 = v12;
        operator delete(__p[0]);
        v12 = v17;
      }

      if (a3 >= a4)
      {
        break;
      }

      ++a3;
    }

    while (v12 < 0);
  }

  else
  {
    v12 = (*(*result + 32))(result, a2);
  }

  if (v12 < 0)
  {
    goto LABEL_21;
  }

  if ((a5 & 4) == 0)
  {
    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc", 87, "!(opts & PacketSocketFactory::OPT_STUN)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v13, v14, v15, v16, v32);
  return webrtc::BasicPacketSocketFactory::CreateClientTcpSocket();
}

uint64_t webrtc::BasicPacketSocketFactory::CreateClientTcpSocket(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a2 + 32), 1);
  if (result)
  {
    v8 = result;
    if (((*(*result + 32))(result, a2) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(*v8 + 144))(v8, 3, 1) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*(*v8 + 112))(v8);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
      }

      if ((*a4 & 0xA) != 0)
      {
        operator new();
      }

      if (*a4)
      {
        operator new();
      }

      v26 = (*(*v8 + 40))(v8, a3);
      if ((v26 & 0x80000000) == 0)
      {
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*(*v8 + 112))(v8);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
      }

      v34 = *(*v8 + 8);
      v35 = v8;
LABEL_34:
      v34(v35);
      return 0;
    }

    v16 = *(a2 + 32);
    if (v16 == 2)
    {
      if (*(a2 + 36))
      {
LABEL_31:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          (*(*v8 + 112))(v8);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
        }

        v34 = *(*v8 + 8);
        v35 = v8;
        goto LABEL_34;
      }
    }

    else
    {
      if (v16 != 30)
      {
        goto LABEL_31;
      }

      if ((*(a2 + 36) != *MEMORY[0x277D85EE8] || *(a2 + 44) != *(MEMORY[0x277D85EE8] + 8)) && (*(a2 + 36) != webrtc::kV4MappedPrefix || *(a2 + 44) != *(&webrtc::kV4MappedPrefix + 1)))
      {
        goto LABEL_31;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      (*(*v8 + 112))(v8);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/basic_packet_socket_factory.cc");
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t webrtc::BasicPortAllocator::BasicPortAllocator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = webrtc::PortAllocator::PortAllocator(a1);
  *v12 = &unk_28828FB58;
  v17 = *a2;
  *(v12 + 37) = *a2;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
  }

  v18 = *(a2 + 3);
  *(a1 + 304) = *(a2 + 1);
  *(a1 + 320) = v18;
  *(a1 + 336) = a3;
  *(a1 + 344) = a4;
  *(a1 + 352) = 16;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  *(a1 + 368) = a6;
  if (a4)
  {
    v30[0] = 0;
    v30[1] = 0;
    v28 = 0;
    v29 = v30;
    __p = 0;
    v27 = 0;
    LOBYTE(v24) = 0;
    v25 = 0;
    webrtc::PortAllocator::SetConfiguration(a1, &v29, &__p, 0, 0, a5, &v24);
    v19 = __p;
    if (__p)
    {
      v20 = v27;
      v21 = __p;
      if (v27 != __p)
      {
        do
        {
          webrtc::RelayServerConfig::~RelayServerConfig(v20 - 20);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v27 = v19;
      operator delete(v21);
    }

    std::__tree<webrtc::SocketAddress>::destroy(&v29, v30[0]);
    return a1;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc", 190, "socket_factory_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v13, v14, v15, v16, v23);
    return webrtc::BasicPortAllocator::BasicPortAllocator();
  }
}

void webrtc::BasicPortAllocator::~BasicPortAllocator(webrtc::BasicPortAllocator *this)
{
  *this = &unk_28828FB58;
  v2 = *(this + 29);
  v3 = *(this + 30);
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(this + 30) = v2;
  v6 = *(this + 45);
  *(this + 45) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 37);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  webrtc::PortAllocator::~PortAllocator(this);
}

{
  *this = &unk_28828FB58;
  v2 = *(this + 29);
  v3 = *(this + 30);
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(this + 30) = v2;
  v6 = *(this + 45);
  *(this + 45) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 37);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  webrtc::PortAllocator::~PortAllocator(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::BasicPortAllocatorSession::~BasicPortAllocatorSession(webrtc::BasicPortAllocatorSession *this)
{
  *this = &unk_28828FBB8;
  (*(**(*(this + 68) + 336) + 40))(*(*(this + 68) + 336));
  v2 = *(this + 75);
  v3 = *(this + 76) - v2;
  if (v3)
  {
    v4 = v3 >> 3;
    if (v4 <= 1 || (v4 ? (v5 = (v4 - 1) >> 32 == 0) : (v5 = 0), !v5))
    {
      v6 = 0;
      v7 = 0;
LABEL_8:
      v8 = v7 + 1;
      do
      {
        v9 = *(v2 + 8 * v6);
        v9[13] = 0;
        v9[15] = v9[14];
        v6 = v8++;
      }

      while (v4 > v6);
      goto LABEL_10;
    }

    v6 = v4 & 0x1FFFFFFFELL;
    v7 = v4 & 0xFFFFFFFE;
    v38 = (v2 + 8);
    v39 = v4 & 0x1FFFFFFFELL;
    do
    {
      v40 = *(v38 - 1);
      v41 = *v38;
      v40[13] = 0;
      v41[13] = 0;
      v42 = v41[14];
      v40[15] = v40[14];
      v41[15] = v42;
      v38 += 2;
      v39 -= 2;
    }

    while (v39);
    if (v4 != v6)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v10 = *(this + 78);
  v11 = *(this + 79);
  while (v10 != v11)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
      v11 = *(this + 79);
    }

    v10 += 3;
  }

  v12 = *(this + 73);
  v13 = *(this + 72);
  while (v12 != v13)
  {
    v15 = *--v12;
    v14 = v15;
    *v12 = 0;
    if (v15)
    {
      std::default_delete<webrtc::PortConfiguration>::operator()[abi:sn200100](v14);
    }
  }

  *(this + 73) = v13;
  v16 = *(this + 76);
  v17 = *(this + 75);
  if (v16 != v17)
  {
    v18 = 0;
    v19 = 1;
    while (1)
    {
      v20 = *(v17 + 8 * v18);
      if (v20)
      {
        break;
      }

LABEL_22:
      v18 = v19++;
      if (v18 >= (v16 - v17) >> 3)
      {
        goto LABEL_37;
      }
    }

    v21 = v20[23];
    *(v21 + 4) = 0;
    if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    v22 = v20[21];
    if (v22 == v20 + 18)
    {
      (*(*v22 + 32))(v22);
      v23 = v20[14];
      if (!v23)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      v23 = v20[14];
      if (!v23)
      {
        goto LABEL_31;
      }
    }

    v20[15] = v23;
    operator delete(v23);
LABEL_31:
    v24 = v20[12];
    v20[12] = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v20[9];
    if (v25)
    {
      v20[10] = v25;
      operator delete(v25);
    }

    MEMORY[0x2743DA540](v20, 0x10F0C40F5186CF0);
    v16 = *(this + 76);
    v17 = *(this + 75);
    goto LABEL_22;
  }

LABEL_37:
  v26 = *(this + 86);
  *(v26 + 4) = 0;
  if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v27 = *(this + 81);
  if (v27)
  {
    v28 = *(this + 82);
    v29 = *(this + 81);
    if (v28 == v27)
    {
LABEL_51:
      *(this + 82) = v27;
      operator delete(v29);
      goto LABEL_52;
    }

    while (1)
    {
      if (*(v28 - 1) < 0)
      {
        operator delete(*(v28 - 3));
        if ((*(v28 - 33) & 0x80000000) == 0)
        {
LABEL_45:
          v30 = v28 - 11;
          if (*(v28 - 65) < 0)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }
      }

      else if ((*(v28 - 33) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      operator delete(*(v28 - 7));
      v30 = v28 - 11;
      if (*(v28 - 65) < 0)
      {
LABEL_49:
        operator delete(*v30);
      }

LABEL_42:
      v28 = v30;
      if (v30 == v27)
      {
        v29 = *(this + 81);
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  v31 = *(this + 78);
  if (v31)
  {
    *(this + 79) = v31;
    operator delete(v31);
  }

  v32 = *(this + 75);
  if (v32)
  {
    *(this + 76) = v32;
    operator delete(v32);
  }

  v33 = *(this + 72);
  if (v33)
  {
    v34 = *(this + 73);
    v35 = *(this + 72);
    if (v34 != v33)
    {
      do
      {
        v37 = *--v34;
        v36 = v37;
        *v34 = 0;
        if (v37)
        {
          std::default_delete<webrtc::PortConfiguration>::operator()[abi:sn200100](v36);
        }
      }

      while (v34 != v33);
      v35 = *(this + 72);
    }

    *(this + 73) = v33;
    operator delete(v35);
  }

  webrtc::PortAllocatorSession::~PortAllocatorSession(this);
}

{
  webrtc::BasicPortAllocatorSession::~BasicPortAllocatorSession(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::BasicPortAllocatorSession::SetCandidateFilter(uint64_t this, int a2)
{
  v2 = *(this + 672);
  v59 = a2;
  if (v2 != a2)
  {
    v3 = this;
    *(this + 672) = a2;
    v4 = *(this + 624);
    v5 = *(this + 632);
    if (v4 != v5)
    {
      v60 = v2;
      v56 = *(this + 632);
      do
      {
        v6 = *(v4 + 5);
        if ((v6 & 0xFFFFFFFE) == 2)
        {
          goto LABEL_6;
        }

        v7 = *v4;
        this = (*(**v4 + 136))(*v4);
        v8 = *this;
        v9 = *(this + 8);
        if (*this == v9)
        {
          *(v4 + 5) = v6;
LABEL_5:
          *(v4 + 16) = 0;
          goto LABEL_6;
        }

        v57 = v6;
        v58 = 0;
        v10 = 0;
        v11 = v7 + 38;
        do
        {
          if ((*(*v3 + 64))(v3))
          {
            goto LABEL_13;
          }

          v17 = *(v8 + 112);
          if (v17 == 2)
          {
            if (!*(v8 + 116))
            {
              goto LABEL_13;
            }
          }

          else if (v17 == 30)
          {
            if (*(v8 + 116) == *MEMORY[0x277D85EE8] && *(v8 + 124) == *(MEMORY[0x277D85EE8] + 8))
            {
              goto LABEL_142;
            }

            if (*(v8 + 116) == webrtc::kV4MappedPrefix && *(v8 + 124) == *(&webrtc::kV4MappedPrefix + 1))
            {
              goto LABEL_142;
            }
          }

          v25 = *(v8 + 208);
          if (v25)
          {
            if (v25 == 1)
            {
              if ((v60 & 2) != 0)
              {
                goto LABEL_13;
              }
            }

            else if (v25 == 3 && (v60 & 4) != 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if ((v60 & 2) != 0)
            {
              if (v17 == 2)
              {
                LODWORD(v35) = *(v8 + 116);
                v36 = 1;
                if (v35 != 65193 && *(v8 + 116) != 127)
                {
                  v39 = bswap32(v35);
                  if ((v39 & 0xFFFF0000) != 0xC0A80000 && (v39 & 0xFF000000) != 0xA000000 && (v39 & 0xFFF00000) != 0xAC100000)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                if (v17 != 30)
                {
                  LODWORD(v35) = *(v8 + 116);
                  goto LABEL_132;
                }

                v35 = *(v8 + 116);
                if ((v35 & 0xC0FF) == 0x80FE)
                {
                  v36 = 1;
                  goto LABEL_138;
                }

                v41 = *(v8 + 116) != *MEMORY[0x277D85EF0] || *(v8 + 124) != *(MEMORY[0x277D85EF0] + 8);
                v36 = 1;
                if (*(v8 + 116) != 253 && v41)
                {
LABEL_132:
                  v42 = v35 & 0xC0FF;
                  v36 = v17 == 2 && v42 == 16484;
                }
              }

LABEL_138:
              if ((v60 & 1) != 0 || !v36)
              {
                goto LABEL_13;
              }

              goto LABEL_140;
            }

            if (v60)
            {
              goto LABEL_13;
            }
          }

LABEL_140:
          if (v17 == 2)
          {
            if (!*(v8 + 116))
            {
              goto LABEL_13;
            }

            goto LABEL_153;
          }

          if (v17 != 30)
          {
            goto LABEL_153;
          }

LABEL_142:
          if (*(v8 + 116) == *MEMORY[0x277D85EE8] && *(v8 + 124) == *(MEMORY[0x277D85EE8] + 8))
          {
            goto LABEL_13;
          }

          if (*(v8 + 116) == webrtc::kV4MappedPrefix && *(v8 + 124) == *(&webrtc::kV4MappedPrefix + 1))
          {
            goto LABEL_13;
          }

LABEL_153:
          v46 = *(v8 + 208);
          if (v46)
          {
            if (v46 == 1)
            {
              if ((v59 & 2) == 0)
              {
                goto LABEL_13;
              }
            }

            else if (v46 != 3 || (v59 & 4) == 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if ((v59 & 2) != 0)
            {
              if (v17 == 2)
              {
                LODWORD(v47) = *(v8 + 116);
                v48 = 1;
                if (v47 != 65193 && *(v8 + 116) != 127)
                {
                  v49 = bswap32(v47);
                  if ((v49 & 0xFFFF0000) != 0xC0A80000 && (v49 & 0xFF000000) != 0xA000000 && (v49 & 0xFFF00000) != 0xAC100000)
                  {
                    goto LABEL_182;
                  }
                }
              }

              else
              {
                if (v17 != 30)
                {
                  LODWORD(v47) = *(v8 + 116);
                  goto LABEL_182;
                }

                v47 = *(v8 + 116);
                if ((v47 & 0xC0FF) == 0x80FE)
                {
                  v48 = 1;
                  goto LABEL_188;
                }

                v51 = *(v8 + 116) != *MEMORY[0x277D85EF0] || *(v8 + 124) != *(MEMORY[0x277D85EF0] + 8);
                v48 = 1;
                if (*(v8 + 116) != 253 && v51)
                {
LABEL_182:
                  v48 = v17 == 2 && (v47 & 0xC0FF) == 16484;
                }
              }

LABEL_188:
              if ((v59 & 1) == 0 && v48)
              {
                goto LABEL_13;
              }

              goto LABEL_190;
            }

            if ((v59 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

LABEL_190:
          if ((v58 & 1) == 0)
          {
            *(v4 + 5) = 0;
          }

          v53 = v7[39];
          for (v7[41] = v53; v53 != v11; v53 = v7[41])
          {
            v55 = v53[2];
            v54 = v53 + 2;
            v7[41] = *(v54 - 1);
            v55(v54, v7, v8);
          }

          v58 = 1;
LABEL_13:
          v13 = v3[168];
          v14 = *(v8 + 112);
          if (v14 == 2)
          {
            if (!*(v8 + 116))
            {
              LOBYTE(v12) = 0;
LABEL_85:
              v24 = 1;
              this = (*(*v7 + 64))(v7);
              if (this)
              {
                goto LABEL_83;
              }

              goto LABEL_86;
            }
          }

          else if (v14 == 30)
          {
            v15 = *(v8 + 116) == *MEMORY[0x277D85EE8] && *(v8 + 124) == *(MEMORY[0x277D85EE8] + 8);
            if (v15 || (*(v8 + 116) == webrtc::kV4MappedPrefix ? (v16 = *(v8 + 124) == *(&webrtc::kV4MappedPrefix + 1)) : (v16 = 0), v16))
            {
              LOBYTE(v12) = 0;
              goto LABEL_72;
            }
          }

          v20 = *(v8 + 208);
          if (v20)
          {
            v21 = (v13 >> 1) & 1;
            v22 = (v13 >> 2) & 1;
            if (v20 != 3)
            {
              LOBYTE(v22) = 0;
            }

            if (v20 == 1)
            {
              LOBYTE(v12) = v21;
            }

            else
            {
              LOBYTE(v12) = v22;
            }
          }

          else
          {
            if ((v13 & 2) == 0)
            {
              goto LABEL_45;
            }

            if (v14 == 2)
            {
              v37 = *(v8 + 116);
              if (v37 == 65193)
              {
                goto LABEL_45;
              }

              if (*(v8 + 116) == 127)
              {
                goto LABEL_45;
              }

              v38 = bswap32(v37);
              if ((v38 & 0xFFFF0000) == 0xC0A80000)
              {
                goto LABEL_45;
              }

              if ((v38 & 0xFF000000) == 0xA000000)
              {
                goto LABEL_45;
              }

              if ((v38 & 0xFFF00000) == 0xAC100000)
              {
                goto LABEL_45;
              }

              LOBYTE(v12) = 1;
              if ((*(v8 + 116) & 0xC0FF) == 0x4064)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v14 == 30)
              {
                if ((*(v8 + 116) & 0xC0FFLL) != 0x80FE)
                {
                  v26 = *(v8 + 116) == *MEMORY[0x277D85EF0] && *(v8 + 124) == *(MEMORY[0x277D85EF0] + 8);
                  v27 = !v26;
                  if (*(v8 + 116) != 253 && v27)
                  {
                    LOBYTE(v12) = 1;
                    goto LABEL_72;
                  }
                }

LABEL_45:
                LOBYTE(v12) = v13 & 1;
                goto LABEL_46;
              }

              LOBYTE(v12) = 1;
            }
          }

LABEL_46:
          if (v14 != 30)
          {
            if (v14 != 2)
            {
              v24 = 0;
              this = (*(*v7 + 64))(v7);
              if (this)
              {
                goto LABEL_83;
              }

              goto LABEL_86;
            }

            v23 = *(v8 + 116) == 0;
            goto LABEL_79;
          }

LABEL_72:
          if (*(v8 + 116) == *MEMORY[0x277D85EE8] && *(v8 + 124) == *(MEMORY[0x277D85EE8] + 8))
          {
            goto LABEL_85;
          }

          v23 = *(v8 + 116) == webrtc::kV4MappedPrefix && *(v8 + 124) == *(&webrtc::kV4MappedPrefix + 1);
LABEL_79:
          v24 = v23;
          this = (*(*v7 + 64))(v7);
          if (this)
          {
LABEL_83:
            v29 = 1;
            if (!(v12 & 1 | ((v24 & 1) == 0)))
            {
              goto LABEL_10;
            }

            goto LABEL_11;
          }

LABEL_86:
          v30 = (v8 + 32);
          v31 = *(v8 + 55);
          if (v31 < 0)
          {
            if (*(v8 + 40) != 3)
            {
LABEL_99:
              v29 = 0;
              if (!(v12 & 1 | ((v24 & 1) == 0)))
              {
                goto LABEL_10;
              }

              goto LABEL_11;
            }

            v30 = *v30;
          }

          else if (v31 != 3)
          {
            goto LABEL_99;
          }

          v32 = *v30;
          v33 = *(v30 + 2);
          v29 = v32 == webrtc::TCP_PROTOCOL_NAME && v33 == 112;
          if (!(v12 & 1 | ((v24 & 1) == 0)))
          {
LABEL_10:
            v12 = v29 & v3[168];
          }

LABEL_11:
          v10 |= v12;
          v8 += 432;
        }

        while (v8 != v9);
        *(v4 + 5) = v57;
        v5 = v56;
        if ((v10 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_6:
        v4 += 3;
      }

      while (v4 != v5);
    }
  }

  return this;
}

void webrtc::BasicPortAllocatorSession::StartGettingPorts(webrtc::BasicPortAllocatorSession *this)
{
  *(this + 170) = 0;
  v1 = *(this + 86);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t webrtc::BasicPortAllocatorSession::StopGettingPorts(webrtc::BasicPortAllocatorSession *this)
{
  result = (*(*this + 48))(this);
  *(this + 170) = 2;
  return result;
}

void webrtc::BasicPortAllocatorSession::ClearGettingPorts(webrtc::BasicPortAllocatorSession *this)
{
  ++*(this + 171);
  v1 = *(this + 75);
  v2 = *(this + 76) - v1;
  if (v2)
  {
    v3 = v2 >> 3;
    v4 = 1;
    do
    {
      v6 = *v1;
      if (*(*v1 + 64) == 1)
      {
        *(v6 + 64) = 2;
        ++*(v6 + 176);
      }

      ++v1;
    }

    while (v3 > v4++);
  }

  v7 = *(this + 86);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  }

  operator new();
}

void webrtc::BasicPortAllocatorSession::GetNetworks(webrtc::BasicPortAllocatorSession *this, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v5 = *(*(a2 + 544) + 336);
  v6 = (*(*v5 + 56))(v5);
  v7 = *(a2 + 448);
  if (v6 == 1)
  {
    *(a2 + 448) = v7 | 0x400;
  }

  else if ((v7 & 0x400) == 0)
  {
    (*(*v5 + 48))(&v32, v5);
    v8 = v32.__r_.__value_.__r.__words[2];
    v9 = *&v32.__r_.__value_.__l.__data_;
    *this = *&v32.__r_.__value_.__l.__data_;
    *(this + 2) = v8;
    v10 = *(&v9 + 1);
    if (v9 == *(&v9 + 1) || (*(a2 + 449) & 0x80) != 0)
    {
      (*(*v5 + 64))(&v32, v5);
      std::vector<webrtc::Network const*>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::Network const**>,std::__wrap_iter<webrtc::Network const**>>(this, v10, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_, (v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0]) >> 3);
      if (v32.__r_.__value_.__r.__words[0])
      {
        v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v11 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    v19 = *this;
    v20 = *(this + 1);
    if ((v11 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    }

    for (; v19 != v20; ++v19)
    {
      v21 = *v19;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v2 = v2 & 0xFFFFFFFF00000000 | 0x15E9;
        webrtc::Network::ToString(v21, &v32);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }
    }

LABEL_17:
    if (*(a2 + 450))
    {
      v31[0] = &unk_28828FCB8;
      v31[3] = v31;
    }

    v30[0] = &unk_28828FD00;
    v30[1] = a2;
    v30[3] = v30;
  }

  (*(*v5 + 64))(&v32, v5);
  v29 = v32.__r_.__value_.__r.__words[2];
  *this = *&v32.__r_.__value_.__l.__data_;
  *(this + 2) = v29;
  goto LABEL_17;
}

void webrtc::BasicPortAllocatorSession::PrunePortsAndRemoveCandidates(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    *(v3 + 20) = 3;
    v4 = *v3;
    if (*v3)
    {
      *(v4 + 187) = 2;
      webrtc::Port::PostDestroyIfDead(v4);
    }

    operator new();
  }
}

void webrtc::BasicPortAllocatorSession::GetCandidateStatsFromReadyPorts(uint64_t a1)
{
  (*(*a1 + 96))(&v5);
  v1 = v5;
  v4 = v6;
  if (v5 != v6)
  {
    do
    {
      v2 = (*(**v1 + 136))();
      v3 = v2[1] - *v2;
      if (v3)
      {
        if (0x84BDA12F684BDA13 * (v3 >> 4) < 0x97B425ED097B43)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v1 += 8;
    }

    while (v1 != v4);
    v1 = v5;
  }

  if (v1)
  {
    v6 = v1;
    operator delete(v1);
  }
}

void webrtc::BasicPortAllocatorSession::SetStunKeepaliveIntervalForReadyPorts(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 96))(&v7);
  v3 = v7;
  v4 = v8;
  if (v7 != v8)
  {
    do
    {
      v6 = *v3;
      if ((*(**v3 + 16))(*v3) == 1 || !(*(*v6 + 16))(v6) && !(*(*v6 + 128))(v6))
      {
        if (*(a2 + 4))
        {
          v5 = *a2;
        }

        else
        {
          v5 = 10000;
        }

        v6[245] = v5;
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = v7;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

uint64_t webrtc::BasicPortAllocatorSession::ReadyPorts@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 624);
  v3 = *(this + 632);
  if (v2 != v3)
  {
    do
    {
      if (*(v2 + 16) == 1 && (*(v2 + 20) - 4) <= 0xFFFFFFFD)
      {
        if (!a2[2])
        {
          operator new();
        }

        *a2 = 0;
        __break(1u);
        *a2 = 0;
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v2 += 24;
    }

    while (v2 != v3);
    *a2 = 0;
  }

  return this;
}

void webrtc::BasicPortAllocatorSession::ReadyCandidates(webrtc::BasicPortAllocatorSession *this@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v7 = *(this + 78);
  for (i = *(this + 79); v7 != i; v7 += 24)
  {
    if (*(v7 + 16) == 1 && (*(v7 + 20) - 4) <= 0xFFFFFFFD)
    {
      webrtc::BasicPortAllocatorSession::GetCandidatesFromPort(this, *v7, a7, a2, a3, a4, a5, a6);
    }
  }
}

void webrtc::BasicPortAllocatorSession::GetCandidatesFromPort(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = (*(*a2 + 136))(a2);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 != v12)
    {
      while (1)
      {
        v13 = *(a1 + 672);
        v14 = *(v11 + 112);
        if (v14 == 2)
        {
          if (!*(v11 + 116))
          {
            goto LABEL_5;
          }
        }

        else if (v14 == 30)
        {
          v35 = *MEMORY[0x277D85EE8];
          if (*(v11 + 116) == v35 && *(v11 + 124) == *(&v35 + 1))
          {
            goto LABEL_5;
          }

          v36 = webrtc::kV4MappedPrefix;
          if (*(v11 + 116) == webrtc::kV4MappedPrefix && *(v11 + 124) == *(&webrtc::kV4MappedPrefix + 1))
          {
            goto LABEL_5;
          }
        }

        v17 = *(v11 + 208);
        if (!v17)
        {
          break;
        }

        if (v17 == 1)
        {
          if ((v13 & 2) == 0)
          {
            goto LABEL_5;
          }
        }

        else if (v17 != 3 || (v13 & 4) == 0)
        {
          goto LABEL_5;
        }

        v18 = 0;
        v19 = *(a1 + 544);
        if ((~*(v19 + 116) & 0xC00) == 0)
        {
          goto LABEL_57;
        }

LABEL_56:
        if (*(v19 + 140))
        {
          v26 = (*(*v19 + 72))(v19);
          goto LABEL_59;
        }

LABEL_57:
        v26 = 1;
LABEL_59:
        v27 = *(v19 + 140);
        v28 = (*(*v19 + 72))(v19);
        v29 = *(v11 + 208);
        if (v29 == 1 && (v26 & 1) != 0 || v29 == 3 && (v27 & 2) == 0)
        {
          v30 = 1;
        }

        else
        {
          v30 = (v29 == 2) & v28;
        }

        webrtc::Candidate::ToSanitizedCopy(v11, v18, v30, 0, &v34);
        v31 = a3[1];
        if (v31 >= a3[2])
        {
          std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(a3);
        }

        if (!v31)
        {
          __break(1u);
          goto LABEL_70;
        }

        a3[1] = webrtc::Candidate::Candidate(v31, &v34) + 18;
        webrtc::Candidate::~Candidate(&v34);
LABEL_5:
        v11 += 432;
        if (v11 == v12)
        {
          return;
        }
      }

      if ((v13 & 2) == 0)
      {
LABEL_54:
        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_55:
        v19 = *(a1 + 544);
        v18 = (*(*v19 + 72))(v19);
        if ((~*(v19 + 116) & 0xC00) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if (v14 == 2)
      {
        LODWORD(v20) = *(v11 + 116);
        v21 = 1;
        if (v20 == 65193)
        {
          goto LABEL_53;
        }

        if (*(v11 + 116) == 127)
        {
          goto LABEL_53;
        }

        v22 = bswap32(v20);
        if (HIWORD(v22) == 49320 || (v22 & 0xFF000000) == 0xA000000 || (v22 & 0xFFF00000) == 0xAC100000)
        {
          goto LABEL_53;
        }
      }

      else if (v14 == 30)
      {
        v20 = *(v11 + 116);
        if ((v20 & 0xC0FF) == 0x80FE)
        {
          v21 = 1;
          goto LABEL_53;
        }

        v35 = *MEMORY[0x277D85EF0];
        v24 = *(v11 + 116) != v35 || *(v11 + 124) != *(&v35 + 1);
        v21 = 1;
        if (v20 == 253 || !v24)
        {
LABEL_53:
          if (!v21)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      else
      {
        LODWORD(v20) = *(v11 + 116);
      }

      v21 = v14 == 2 && (v20 & 0xC0FF) == 16484;
      goto LABEL_53;
    }
  }

  else
  {
LABEL_70:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc", 537, "candidates != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v33);
    webrtc::BasicPortAllocator::MdnsObfuscationEnabled(v32);
  }
}

BOOL webrtc::BasicPortAllocatorSession::CandidatesAllocationDone(webrtc::BasicPortAllocatorSession *this)
{
  if (*(this + 570) != 1)
  {
    return 0;
  }

  v1 = *(this + 75);
  v2 = *(this + 76);
  if (v1 != v2)
  {
    while (*(*v1 + 64) != 1)
    {
      v1 += 8;
      if (v1 == v2)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v3 = *(this + 78);
  v4 = *(this + 79);
  if (v3 == v4)
  {
    return 1;
  }

  v5 = v3 + 24;
  do
  {
    v6 = *(v5 - 4);
    result = v6 != 0;
    if (v6)
    {
      v8 = v5 == v4;
    }

    else
    {
      v8 = 1;
    }

    v5 += 24;
  }

  while (!v8);
  return result;
}

void webrtc::BasicPortAllocatorSession::UpdateIceParametersInternal(webrtc::BasicPortAllocatorSession *this)
{
  v1 = *(this + 78);
  v2 = *(this + 79);
  if (v1 != v2)
  {
    v4 = (this + 456);
    v5 = (this + 488);
    v6 = (this + 512);
    while (1)
    {
      v7 = *v1;
      if (*(this + 479) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 57), *(this + 58));
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
LABEL_9:
          size = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_29;
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ > 0x16)
          {
LABEL_11:
            operator new();
          }

          goto LABEL_7;
        }
      }

      else
      {
        __p = *v4;
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      p_p = &__p;
      if (size > 0x16)
      {
        goto LABEL_11;
      }

LABEL_7:
      HIBYTE(v20) = size;
      v10 = (&v19 + size);
      if (&v19 <= p_p && v10 > p_p)
      {
        __break(1u);
LABEL_29:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (size)
      {
        memmove(&v19, p_p, size);
      }

      v10->__r_.__value_.__s.__data_[0] = 0;
      v12 = (v7 + 592);
      if (*(v7 + 615) < 0)
      {
        operator delete(*v12);
        *v12 = v19;
        *(v7 + 608) = v20;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_24;
        }

LABEL_20:
        v13 = *v1;
        v14 = *(this + 120);
        v15 = *(this + 511);
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_25:
        v16 = *(this + 61);
        v15 = *(this + 62);
        v17 = *(this + 535);
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_3;
        }

LABEL_26:
        webrtc::Port::SetIceParameters(v13, v14, v16, v15, *(this + 64), *(this + 65));
        v1 += 3;
        if (v1 == v2)
        {
          return;
        }
      }

      else
      {
        *v12 = v19;
        *(v7 + 608) = v20;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        operator delete(__p.__r_.__value_.__l.__data_);
        v13 = *v1;
        v14 = *(this + 120);
        v15 = *(this + 511);
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

LABEL_21:
        v16 = v5;
        v17 = *(this + 535);
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

LABEL_3:
        webrtc::Port::SetIceParameters(v13, v14, v16, v15, v6, v17);
        v1 += 3;
        if (v1 == v2)
        {
          return;
        }
      }
    }
  }
}